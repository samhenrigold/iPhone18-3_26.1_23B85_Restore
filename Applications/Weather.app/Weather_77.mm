void *sub_1008267CC()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  sub_100006F14(v0 + 27);
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 37);
  sub_100006F14(v0 + 42);
  sub_100006F14(v0 + 47);
  sub_100006F14(v0 + 52);
  sub_100006F14(v0 + 57);
  sub_100006F14(v0 + 62);
  sub_100006F14(v0 + 67);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 77);
  sub_100006F14(v0 + 82);
  sub_100006F14(v0 + 87);
  sub_100006F14(v0 + 92);
  return v0;
}

uint64_t sub_10082687C()
{
  sub_1008267CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1008268C0(uint64_t a1, char a2, double a3)
{
  *(v3 + 66) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = type metadata accessor for DispatchAction(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_100826990, v5, v4);
}

uint64_t sub_100826990()
{
  v18 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 66);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = v5 & 1;
    *(v0 + 65) = v5 & 1;
    v9 = String.init<A>(describing:)();
    v11 = sub_100078694(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adjusting sidebar state: %s", v6, 0xCu);
    sub_100006F14(v7);
  }

  else
  {

    v8 = v5 & 1;
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 80);
  *v12 = v8 ^ 1;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + 128) = type metadata accessor for MainAction(0);
  swift_storeEnumTagMultiPayload();
  v12[*(v13 + 20)] = 0;
  *(v0 + 136) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100826BA8, v15, v14);
}

uint64_t sub_100826BA8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v3 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v5 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  sub_10004F14C(v2, v6 + v5);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = v6;
  *(v0 + 64) = 0;
  sub_10004F1B0(v0 + 16, v4);
  sub_100826DF4(v0 + 16);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  return _swift_task_switch(sub_100826CE0, v7, v8);
}

uint64_t sub_100826CE0()
{
  v1 = *(v0 + 88);

  sub_100826E5C(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100826D58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000926F8;

  return sub_1008268C0(a1, v4, v6);
}

uint64_t sub_100826DF4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3510, &unk_100A2D540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100826E5C(uint64_t a1, double a2)
{
  v3 = type metadata accessor for DispatchAction(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_100826EB8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100826F98()
{
  result = qword_100CDC958;
  if (!qword_100CDC958)
  {
    result = swift_getWitnessTable(byte_100A8B338, &type metadata for Sidebar.State, v0, v1);
    atomic_store(result, &qword_100CDC958);
  }

  return result;
}

uint64_t sub_100826FF0(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100827064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000100AE0430 == a2)
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

uint64_t sub_100827138(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x616470557473616CLL;
  }
}

uint64_t sub_10082717C(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)())
  {
    v4 = type metadata accessor for WeatherDataRelevancy(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1008271D0(void *a1)
{
  v3 = sub_10022C350(&qword_100CDCA00, &qword_100A8B448);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100827764();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for Date();
  sub_10005B714(&qword_100CA39B8, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WeatherDataRelevancy(0);
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100827368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = type metadata accessor for Date();
  sub_1000037C4();
  v22 = v4;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CDC9F0, &qword_100A8B440);
  sub_1000037C4();
  v23 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for WeatherDataRelevancy(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100827764();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v20 = v12;
  v13 = v22;
  v27 = 0;
  sub_10005B714(&qword_100CA3998, &protocol conformance descriptor for Date);
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v20;
  (*(v13 + 32))(v20, v7, v14);
  v26 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = sub_10001CE8C();
  v18(v17);
  *(v15 + *(v10 + 20)) = v16 & 1;
  sub_1008277B8(v15, v21);
  sub_100006F14(a1);
  return sub_10082781C(v15);
}

uint64_t sub_100827660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100827064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100827688(uint64_t a1)
{
  v2 = sub_100827764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008276C4(uint64_t a1)
{
  v2 = sub_100827764();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100827764()
{
  result = qword_100CDC9F8;
  if (!qword_100CDC9F8)
  {
    result = swift_getWitnessTable(byte_100A8B514, &type metadata for WeatherDataRelevancy.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDC9F8);
  }

  return result;
}

uint64_t sub_1008277B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRelevancy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10082781C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataRelevancy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataRelevancy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100827958()
{
  result = qword_100CDCA08;
  if (!qword_100CDCA08)
  {
    result = swift_getWitnessTable(byte_100A8B4EC, &type metadata for WeatherDataRelevancy.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDCA08);
  }

  return result;
}

unint64_t sub_1008279B0()
{
  result = qword_100CDCA10;
  if (!qword_100CDCA10)
  {
    result = swift_getWitnessTable(byte_100A8B45C, &type metadata for WeatherDataRelevancy.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDCA10);
  }

  return result;
}

unint64_t sub_100827A08()
{
  result = qword_100CDCA18;
  if (!qword_100CDCA18)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for WeatherDataRelevancy.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDCA18);
  }

  return result;
}

uint64_t type metadata accessor for LocationFooterButtonStyleModifier(uint64_t a1)
{
  result = qword_100CDCA78;
  if (!qword_100CDCA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100827AFC@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = sub_10022C350(&qword_100CDCAB0, &qword_100A8B6B0);
  return sub_100827B6C(a2, a3 & 1, a4 + *(v7 + 44));
}

uint64_t sub_100827B6C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v48 = a2;
  v54 = a3;
  v55 = type metadata accessor for LabelStyleConfiguration.Icon();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v43 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10022C350(&qword_100CDCAB8, &qword_100A8B6B8);
  __chkstk_darwin(v49);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  LabelStyleConfiguration.title.getter();
  v18 = *(v11 + 104);
  v18(v13, enum case for Font.TextStyle.subheadline(_:), v10);
  static Font.Weight.semibold.getter();
  v47 = static Font.system(_:weight:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v18(v13, enum case for Font.TextStyle.footnote(_:), v10);
  static Font.Weight.bold.getter();
  v20 = static Font.system(_:weight:)();
  v19(v13, v10);
  if ((v48 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v44 + 8))(v9, v45);
    LOBYTE(a1) = v57;
  }

  v22 = &v17[*(sub_10022C350(&qword_100CDCAC0, &qword_100A8B6C0) + 36)];
  v23 = type metadata accessor for FontWithSmallVariantModifier(0);
  v24 = *(v23 + 24);
  v25 = enum case for Font.Leading.tight(_:);
  v26 = type metadata accessor for Font.Leading();
  (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
  sub_10001B350(v22 + v24, 0, 1, v26);
  *v22 = v47;
  v22[1] = v20;
  *(v22 + *(v23 + 28)) = a1 & 1;
  KeyPath = swift_getKeyPath();
  v28 = *(v49 + 36);
  v46 = v17;
  v29 = &v17[v28];
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = v51;
  LabelStyleConfiguration.icon.getter();
  v31 = v17;
  v32 = v50;
  sub_100278D5C(v31, v50, &qword_100CDCAB8, &qword_100A8B6B8);
  v56 = 1;
  v33 = v52;
  v34 = v53;
  v35 = *(v52 + 16);
  v36 = v55;
  v35(v53, v30, v55);
  v37 = v54;
  sub_100278D5C(v32, v54, &qword_100CDCAB8, &qword_100A8B6B8);
  v38 = sub_10022C350(&qword_100CDCAC8, &qword_100A8B6F8);
  v39 = v37 + *(v38 + 48);
  v40 = v56;
  *v39 = 0;
  *(v39 + 8) = v40;
  v35((v37 + *(v38 + 64)), v34, v36);
  v41 = *(v33 + 8);
  v41(v30, v36);
  sub_100828AE0(v46);
  v41(v34, v36);
  return sub_100828AE0(v32);
}

uint64_t sub_1008280BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationFooterButtonStyleModifier(0);
  sub_100278D5C(v1 + *(v13 + 20), v12, &qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003A9C();
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

uint64_t sub_1008282B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v43 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v42 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v41 = v5 - v4;
  type metadata accessor for BlendMode();
  sub_1000037C4();
  v50 = v7;
  v51 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v49 = v9 - v8;
  v10 = type metadata accessor for BorderlessButtonStyle();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v44 = sub_10022C350(&qword_100CDCAD0, &qword_100A8B700);
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  sub_10022C350(&qword_100CDCAD8, &qword_100A8B708);
  sub_1000037C4();
  v47 = v23;
  v48 = v22;
  __chkstk_darwin(v22);
  v25 = &v41 - v24;
  BorderlessButtonStyle.init()();
  v26 = sub_10022C350(&qword_100CDCAE0, &qword_100A8B710);
  v27 = sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0, &qword_100A8B710, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v28 = sub_100276188();
  View.buttonStyle<A>(_:)();
  (*(v12 + 8))(v16, v10);
  Solarium.init()();
  v29 = v46;
  v54 = v46;
  v53 = v46;
  sub_10022C350(&qword_100CDCAF0, &unk_100A8B718);
  v55 = v26;
  v56 = v10;
  v57 = v27;
  v58 = v28;
  swift_getOpaqueTypeConformance2();
  sub_100828BA8();
  v30 = v44;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v18 + 8))(v21, v30);
  v31 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v41;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v42 + 8))(v34, v43);
    if (v55)
    {
      goto LABEL_3;
    }

LABEL_5:
    v32 = &enum case for BlendMode.plusLighter(_:);
    goto LABEL_6;
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v32 = &enum case for BlendMode.normal(_:);
LABEL_6:
  v36 = v49;
  v35 = v50;
  v37 = v51;
  (*(v50 + 104))(v49, *v32, v51);
  v38 = sub_10022C350(&qword_100CDCB00, &unk_100A8B728);
  v39 = v52;
  (*(v35 + 32))(v52 + *(v38 + 36), v36, v37);
  return (*(v47 + 32))(v39, v25, v48);
}

uint64_t sub_1008287C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  type metadata accessor for ColorSchemeContrast();
  sub_1000037C4();
  v35 = v8;
  v36 = v7;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = *a2;
  if (*(a2 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = static HierarchicalShapeStyle.secondary.getter();
    goto LABEL_8;
  }

  v33 = v17;

  static os_log_type_t.fault.getter();
  v28 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v21, 0);
  (*(v15 + 8))(v20, v33);
  if (v37 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1008280BC(v13);
  v23 = v35;
  v22 = v36;
  (*(v35 + 104))(v10, enum case for ColorSchemeContrast.increased(_:), v36);
  v24 = static ColorSchemeContrast.== infix(_:_:)();
  v25 = *(v23 + 8);
  v25(v10, v22);
  v26 = (v25)(v13, v22);
  if (v24)
  {
    v27 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v27 = v34(v26);
  }

LABEL_8:
  v29 = v27;
  sub_10022C350(&qword_100CDCAD0, &qword_100A8B700);
  sub_100003A9C();
  (*(v30 + 16))(a4, a1);
  result = sub_10022C350(&qword_100CDCAF0, &unk_100A8B718);
  *(a4 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_100828AE0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDCAB8, &qword_100A8B6B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100828BA8()
{
  result = qword_100CDCAF8;
  if (!qword_100CDCAF8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CDCAF0, &unk_100A8B718);
    v4[2] = sub_10022E824(&qword_100CDCAE0, &qword_100A8B710);
    v4[3] = type metadata accessor for BorderlessButtonStyle();
    v4[4] = sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0, &qword_100A8B710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[5] = sub_100276188();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8, &qword_100A2DF80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDCAF8);
  }

  return result;
}

unint64_t sub_100828CF0()
{
  result = qword_100CDCB18;
  if (!qword_100CDCB18)
  {
    v9 = v0;
    v10 = v1;
    v3 = sub_10022E824(&qword_100CDCB00, &unk_100A8B728);
    v4 = sub_10022E824(&qword_100CDCAD0, &qword_100A8B700);
    v5 = sub_10022E824(&qword_100CDCAF0, &unk_100A8B718);
    sub_10022E824(&qword_100CDCAE0, &qword_100A8B710);
    type metadata accessor for BorderlessButtonStyle();
    sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0, &qword_100A8B710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100276188();
    v6[2] = v4;
    v6[3] = &type metadata for Solarium;
    v6[4] = v5;
    v6[5] = v5;
    v6[6] = swift_getOpaqueTypeConformance2();
    v6[7] = &protocol witness table for Solarium;
    v7 = sub_100828BA8();
    v8 = v7;
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CDCB18);
  }

  return result;
}

uint64_t sub_100828EA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for TemperatureAveragesDetailInput(0);
  __chkstk_darwin(v5 - 8);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  __chkstk_darwin(v9 - 8);
  sub_1000037D8();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AveragesDetailInput.Content(0);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = (v15 - v14);
  sub_10082961C(a1, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100829680(v16, v12, type metadata accessor for PrecipitationAveragesDetailInput);
      sub_1000161C0(v2 + 2, v2[5]);
      v24 = *(type metadata accessor for AveragesDetailInput(0) + 24);
      v27 = sub_100795578(v12);
      sub_1008296DC(v12, type metadata accessor for PrecipitationAveragesDetailInput);
      v26 = *(sub_10022C350(&qword_100CC3380, &unk_100A5C2B0) + 48);
      *a2 = v27;
      goto LABEL_6;
    case 2u:
      sub_100829680(v16, v8, type metadata accessor for TemperatureAveragesDetailInput);
      sub_1000161C0(v2 + 7, v2[10]);
      v24 = *(type metadata accessor for AveragesDetailInput(0) + 24);
      v25 = sub_10045E8E8(v8);
      sub_1008296DC(v8, type metadata accessor for TemperatureAveragesDetailInput);
      v26 = *(sub_10022C350(&qword_100CC3380, &unk_100A5C2B0) + 48);
      *a2 = v25 | 0x8000000000000000;
LABEL_6:
      type metadata accessor for Location();
      sub_100003A9C();
      (*(v28 + 16))(&a2[v26], a1 + v24);
      type metadata accessor for AveragesDetailViewModel(0);
      sub_100003E0C();
      break;
    case 3u:
    case 4u:
      v21 = *(sub_10022C350(&qword_100CC3388, &qword_100A66B30) + 48);
      v22 = type metadata accessor for AveragesDetailInput(0);
      sub_100010CE8(v22);
      sub_100003A9C();
      (*(v23 + 16))(&a2[v21], v8 + a1);
      type metadata accessor for AveragesDetailViewModel(0);
      sub_100003E0C();
      break;
    default:
      sub_10082926C(*v16, __src);
      v17 = *(sub_10022C350(&qword_100CC3378, &unk_100A66C40) + 64);
      memcpy(a2, __src, 0x60uLL);
      v18 = type metadata accessor for AveragesDetailInput(0);
      a2[96] = *(a1 + *(v18 + 20));
      v19 = *(v18 + 24);
      type metadata accessor for Location();
      sub_100003A9C();
      (*(v20 + 16))(&a2[v17], a1 + v19);
      type metadata accessor for AveragesDetailViewModel(0);
      sub_100003E0C();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10082926C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v21 = 0x8000000100AE04E0;
      v22 = objc_opt_self();
      v23 = [v22 mainBundle];
      v24._countAndFlagsBits = 0xD000000000000018;
      v39._object = 0x8000000100AE0520;
      v24._object = 0x8000000100AE0500;
      v39._countAndFlagsBits = 0xD000000000000053;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v39);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;

      v11 = [v22 mainBundle];
      v40._object = 0x8000000100AE05D0;
      v27._countAndFlagsBits = 0xD00000000000004ALL;
      v27._object = 0x8000000100AE0580;
      v40._countAndFlagsBits = 0xD000000000000055;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v11, v28, v40);
      v3 = 0xD00000000000001BLL;
      goto LABEL_7;
    }

    v3 = 0x616C732E69666977;
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x8000000100AE0650;
    v6._object = 0x8000000100AE0630;
    v37._countAndFlagsBits = 0xD00000000000005DLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v37);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;

    v11 = [v4 mainBundle];
    v36 = 0x8000000100AE06F0;
    v12 = 0x8000000100AE06B0;
    v13 = 0xD00000000000005FLL;
  }

  else
  {
    v3 = 0x616C732E69666977;
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v16._countAndFlagsBits = 0xD000000000000014;
    v38._object = 0x8000000100AE0770;
    v16._object = 0x8000000100AE0750;
    v38._countAndFlagsBits = 0xD000000000000051;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v38);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;

    v11 = [v14 mainBundle];
    v36 = 0x8000000100AE07D0;
    v12 = 0x8000000100AE06B0;
    v13 = 0xD000000000000053;
  }

  v19 = 0xD000000000000037;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v12 - 1), 0, v11, v20, *&v13);
  v21 = 0xEA00000000006873;
LABEL_7:

  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  static Color.blue.getter();
  v32 = Color.hex.getter();
  v34 = v33;

  *a2 = 1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v21;
  *(a2 + 24) = countAndFlagsBits;
  *(a2 + 32) = object;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v32;
  *(a2 + 88) = v34;
  return result;
}

uint64_t sub_10082961C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailInput.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100829680(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1008296DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10082973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a3;
  v79 = a2;
  v90 = a1;
  v85 = a6;
  v89 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v103 = v8;
  __chkstk_darwin(v9);
  v82 = &v76 - v10;
  v80 = sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  sub_1000037C4();
  v81 = v11;
  __chkstk_darwin(v12);
  v77 = &v76 - v13;
  v14 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v88 = v18;
  type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v105 = v19;
  v106 = v20;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v22 = v21;
  v23 = [objc_opt_self() mainBundle];
  v107._object = 0x8000000100AE08A0;
  v24._object = 0x8000000100AE0830;
  v107._countAndFlagsBits = 0x1000000000000181;
  v24._countAndFlagsBits = 0x100000000000006FLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v107);
  countAndFlagsBits = v26._countAndFlagsBits;
  object = v26._object;

  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v27 = type metadata accessor for WeatherDescription.Argument();
  v96 = v27;
  v29 = *(v27 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v87 = *(v29 + 72);
  v28 = v87;
  v31 = swift_allocObject();
  v78 = v31;
  *(v31 + 16) = xmmword_100A3B030;
  v32 = (v31 + v30);
  v93 = v31 + v30;
  *v32 = a4;
  v32[1] = a5;
  v104 = *(v29 + 104);
  v95 = v29 + 104;
  (v104)(v31 + v30, enum case for WeatherDescription.Argument.string(_:), v27);
  v33 = (v32 + v28);

  v34 = v22;
  static WeatherFormatStyle<>.weather.getter();
  v101 = enum case for WeatherFormatPlaceholder.none(_:);
  v91 = *(v16 + 104);
  v102 = v16 + 104;
  v35 = v88;
  v91(v88);
  v92 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v100 = sub_100114168();
  v36 = v105;
  v37 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v39 = v38;

  v40 = *(v16 + 8);
  v98 = v16 + 8;
  v99 = v40;
  v40(v35, v14);
  v41 = *(v106 + 8);
  v106 += 8;
  v97 = v41;
  v42 = v34;
  v41(v34, v36);
  *v33 = v37;
  v33[1] = v39;
  v94 = enum case for WeatherDescription.Argument.measurement(_:);
  v43 = v96;
  v104(v33);
  v44 = v87;
  v45 = (v93 + 2 * v87);
  v76 = v42;
  static WeatherFormatStyle<>.weather.getter();
  v46 = v88;
  v86 = v14;
  (v91)(v88, v101, v14);
  static UnitManager.standard.getter();
  v47 = v46;
  v48 = v105;
  v49 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v51 = v50;

  v99(v47, v14);
  v52 = v76;
  v97(v76, v48);
  *v45 = v49;
  v45[1] = v51;
  (v104)(v45, v94, v43);
  v53 = (v93 + 3 * v44);
  v79 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  v54 = v77;
  Trend.baseline.getter();
  v55 = v82;
  v56 = v80;
  TrendBaseline.value.getter();
  v81[1](v54, v56);
  static WeatherFormatStyle<>.weather.getter();
  v57 = v86;
  (v91)(v47, v101, v86);
  static UnitManager.standard.getter();
  v58 = v52;
  v59 = v47;
  v60 = v89;
  v61 = v105;
  v62 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v64 = v63;

  v99(v59, v57);
  v97(v58, v61);
  v65 = *(v103 + 8);
  v103 += 8;
  v81 = v65;
  v66 = v60;
  (v65)(v55, v60);
  *v53 = v62;
  v53[1] = v64;
  (v104)(v53, v94, v96);
  v67 = (v93 + 4 * v87);
  v68 = v55;
  Trend.currentValue.getter();
  static WeatherFormatStyle<>.weather.getter();
  v69 = v86;
  (v91)(v59, v101, v86);
  static UnitManager.standard.getter();
  v70 = v66;
  v71 = v105;
  v72 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v74 = v73;

  v99(v59, v69);
  v97(v58, v71);
  (v81)(v68, v70);
  *v67 = v72;
  v67[1] = v74;
  (v104)(v67, v94, v96);
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_100829FF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityInvertColors.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10082A044(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

void *sub_10082A10C()
{
  sub_100006F14(v0 + 2);

  sub_100006F14(v0 + 8);

  sub_100006F14(v0 + 15);

  sub_100006F14(v0 + 21);
  return v0;
}

uint64_t sub_10082A164()
{
  sub_10082A10C();

  return swift_deallocClassInstance();
}

uint64_t sub_10082A198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10022C350(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100060DE0(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void sub_10082A28C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100007760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10082A328(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PeakUpperMarkModel(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000085DC();
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = *v12 == *v13 && v10 == v11;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_1000085DC();
  if (v15)
  {
    if (v16)
    {
      v19 = *v17 == *v18 && v15 == v16;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10082A46C(uint64_t a1)
{
  result = type metadata accessor for PeakUpperMarkModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10082A518@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  type metadata accessor for AnnotationOverflowResolution.Boundary();
  sub_1000037C4();
  v56 = v3;
  v57 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v54 = v5 - v4;
  sub_1000038CC();
  v6 = type metadata accessor for AnnotationOverflowResolution.Strategy();
  __chkstk_darwin(v6 - 8);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v43 - v9;
  sub_1000038CC();
  type metadata accessor for AnnotationOverflowResolution();
  sub_1000037C4();
  v60 = v11;
  v61 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v53 = v13 - v12;
  sub_1000038CC();
  type metadata accessor for AnnotationPosition();
  sub_1000037C4();
  v58 = v15;
  v59 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v50 = v17 - v16;
  v18 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v18 - 8);
  v44 = type metadata accessor for PointMark();
  sub_1000037C4();
  v45 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v47 = sub_10022C350(&qword_100CCDD38, &unk_100A707B0);
  sub_1000037C4();
  v48 = v24;
  __chkstk_darwin(v25);
  v27 = &v43 - v26;
  v49 = sub_10022C350(&qword_100CCDD30, &unk_100A6E9D0);
  sub_1000037C4();
  v51 = v28;
  __chkstk_darwin(v29);
  v43 = &v43 - v30;
  v31 = sub_1000038CC();
  type metadata accessor for PeakUpperMark(v31);
  v46 = v1;
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();
  PointMark.init<A>(x:y:)();
  v32 = v44;
  ChartContent.symbolSize(_:)();
  (*(v45 + 8))(v23, v32);
  v68 = static Color.clear.getter();
  v64 = v32;
  v65 = &protocol witness table for PointMark;
  sub_100010D0C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v43;
  v35 = v47;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v48 + 8))(v27, v35);
  v36 = v50;
  static AnnotationPosition.bottomTrailing.getter();
  v37 = v54;
  static AnnotationOverflowResolution.Boundary.plot.getter();
  static AnnotationOverflowResolution.Strategy.fit(to:)();
  v38 = v57;
  v39 = *(v56 + 8);
  v39(v37, v57);
  static AnnotationOverflowResolution.Boundary.plot.getter();
  static AnnotationOverflowResolution.Strategy.fit(to:)();
  v39(v37, v38);
  v40 = v53;
  AnnotationOverflowResolution.init(x:y:)();
  v63 = v46;
  static Alignment.center.getter();
  sub_10022C350(&qword_100CDCEA0, &qword_100A8BAE8);
  v64 = v35;
  v65 = &type metadata for Color;
  v66 = OpaqueTypeConformance2;
  v67 = &protocol witness table for Color;
  sub_10001CEBC();
  swift_getOpaqueTypeConformance2();
  sub_10082B218();
  v41 = v49;
  ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)();
  (*(v60 + 8))(v40, v61);
  (*(v58 + 8))(v36, v59);
  return (*(v51 + 8))(v34, v41);
}

double sub_10082AB78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v11 = 0;
  sub_10082AC8C(a1, __src);
  memcpy(__dst, __src, 0x89uLL);
  memcpy(v13, __src, 0x89uLL);
  sub_100060DE0(__dst, &v8, &qword_100CDCED0, &qword_100A8BB00);
  sub_10003FDF4(v13, &qword_100CDCED0, &qword_100A8BB00);
  memcpy(&v10[7], __dst, 0x89uLL);
  v5 = v11;
  v6 = *(a1 + *(type metadata accessor for PeakUpperMark(0) + 24));
  LOBYTE(a1) = static Edge.Set.all.getter();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v10, 0x90uLL);
  *(a2 + 168) = a1;
  *(a2 + 176) = 0x4020000000000000;
  *(a2 + 184) = v6;
  result = 0.0;
  *(a2 + 192) = xmmword_100A5B9E0;
  *(a2 + 208) = 0;
  *(a2 + 209) = 1;
  return result;
}

uint64_t sub_10082AC8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v74 = type metadata accessor for Text.Scale();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeakUpperMarkModel(0);
  v6 = v5[8];
  v75 = a1;
  v7 = (a1 + v6);
  v8 = v7[1];
  if (v8)
  {
    __src[0] = *v7;
    __src[1] = v8;
    sub_10002D5A4();

    v9 = Text.init<A>(_:)();
    v70 = v11;
    v71 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    static Font.caption.getter();
    static Font.Weight.medium.getter();
    v15 = Font.weight(_:)();

    v16 = swift_getKeyPath();
    v17 = v13 & 1;
    LOBYTE(__src[0]) = v13 & 1;
    LOBYTE(v81[0]) = 0;
    v8 = *(v75 + *(type metadata accessor for PeakUpperMark(0) + 20));
    v18 = swift_getKeyPath();
    __src[0] = v9;
    __src[1] = v71;
    LOBYTE(__src[2]) = v17;
    __src[3] = v70;
    __src[4] = KeyPath;
    __src[5] = 1;
    LOBYTE(__src[6]) = 0;
    __src[7] = v16;
    __src[8] = v15;
  }

  else
  {
    v18 = 0;
    memset(__src, 0, 72);
  }

  __src[9] = v18;
  __src[10] = v8;
  v19 = (v75 + v5[7]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = (v75 + v5[6]);
    v23 = v22[1];
    v81[0] = *v22;
    v81[1] = v23;
    sub_10002D5A4();

    v24 = Text.init<A>(_:)();
    v70 = v25;
    v71 = v24;
    v27 = v26;
    v69 = v28;
    v81[0] = v21;
    v81[1] = v20;
    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    static Text.Scale.secondary.getter();
    v34 = Text.textScale(_:isEnabled:)();
    v68 = v35;
    HIDWORD(v67) = v36;
    sub_10010CD64(v29, v31, v33 & 1);

    (*(v72 + 8))(v4, v74);
    v38 = v70;
    v37 = v71;
    v39 = v68;
    v72 = static Text.+ infix(_:_:)();
    v41 = v40;
    LODWORD(v74) = v42;
    v44 = v43;
    sub_10010CD64(v34, v39, BYTE4(v67) & 1);

    sub_10010CD64(v37, v38, v27 & 1);
  }

  else
  {
    v45 = (v75 + v5[6]);
    v46 = v45[1];
    v81[0] = *v45;
    v81[1] = v46;
    sub_10002D5A4();

    v72 = Text.init<A>(_:)();
    v41 = v47;
    LODWORD(v74) = v48;
    v44 = v49;
  }

  v70 = v41;
  v71 = v44;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = v72;
  v51 = Text.font(_:)();
  v53 = v52;
  v55 = v54;

  type metadata accessor for PeakUpperMark(0);
  v56 = Text.foregroundColor(_:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_10010CD64(v51, v53, v55 & 1);

  v63 = swift_getKeyPath();
  memcpy(v79, __src, sizeof(v79));
  v78 = v60 & 1;
  memcpy(v80, __src, sizeof(v80));
  v77 = v60 & 1;
  v76 = 0;
  v64 = v50;
  v65 = v73;
  memcpy(v73, __src, 0x58uLL);
  v65[11] = v56;
  v65[12] = v58;
  *(v65 + 104) = v60 & 1;
  v65[14] = v62;
  v65[15] = v63;
  v65[16] = 1;
  *(v65 + 136) = 0;
  sub_100060DE0(__src, v81, qword_100CDCED8, &qword_100A8BB38);
  sub_100060DE0(v80, v81, qword_100CDCED8, &qword_100A8BB38);
  sub_10010CD54(v56, v58, v60 & 1);

  sub_10010CD64(v64, v70, v74 & 1);

  sub_10003FDF4(__src, qword_100CDCED8, &qword_100A8BB38);
  sub_10010CD64(v56, v58, v78);

  memcpy(v81, v79, sizeof(v81));
  return sub_10003FDF4(v81, qword_100CDCED8, &qword_100A8BB38);
}

unint64_t sub_10082B218()
{
  result = qword_100CDCEA8;
  if (!qword_100CDCEA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDCEA0, &qword_100A8BAE8);
    v4[0] = sub_10082B2A4();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDCEA8);
  }

  return result;
}

unint64_t sub_10082B2A4()
{
  result = qword_100CDCEB0;
  if (!qword_100CDCEB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDCEB8, &qword_100A8BAF0);
    v4[0] = sub_10082B330();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDCEB0);
  }

  return result;
}

unint64_t sub_10082B330()
{
  result = qword_100CDCEC0;
  if (!qword_100CDCEC0)
  {
    v3 = sub_10022E824(&qword_100CDCEC8, &qword_100A8BAF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDCEC0);
  }

  return result;
}

void sub_10082B394(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_10082B788();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int16 *sub_10082B42C(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return sub_100024D10(result, v5, v4);
  }

  v16 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_10082B594(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) = a2 + 1;
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_10082B788()
{
  if (!qword_100CDCF60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDCF60);
    }
  }
}

double sub_10082B81C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(v5 + *(a1 + 40) + 16))
  {
    Width = CGRectGetWidth(*&a2);
  }

  else
  {
    static Alignment.bottomLeading.getter();
    if (static Alignment.== infix(_:_:)())
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      Width = CGRectGetWidth(v14);
      v11 = 0.25;
      return Width * v11;
    }

    static Alignment.bottomTrailing.getter();
    v12 = static Alignment.== infix(_:_:)();
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    Width = CGRectGetWidth(v15);
    if (v12)
    {
      v11 = 0.75;
      return Width * v11;
    }
  }

  v11 = 0.5;
  return Width * v11;
}

double sub_10082B8EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = type metadata accessor for RoundedCornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &MinY - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10082B81C(a1, a3, a4, a5, a6);
  MinY = *(v6 + *(a1 + 36));
  v25 = v17;
  sub_10082C778(a3, a4, a5, a6, MinY * 3.0 * 0.5, 0.0);
  (*(v14 + 104))(v16, enum case for RoundedCornerStyle.continuous(_:), v13);
  Path.init(roundedRect:cornerRadius:style:)();
  v18 = v25;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGRectGetMinY(v29);
  Path.move(to:)();
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMinY(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinY(v32);
  Path.addCurve(to:control1:control2:)();
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  v19 = CGRectGetMinY(v33);
  v20 = *(v6 + *(a1 + 36)) * 3.0;
  MinY = v19 + v20 * 0.5;
  v25 = v18 - v20 / 6.0;
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinY(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMinY(v35);
  Path.addCurve(to:control1:control2:)();
  Path.addLine(to:)();
  v21 = v28;
  result = *&v26;
  v23 = v27;
  *a2 = v26;
  *(a2 + 16) = v23;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_10082BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_10022E824(&qword_100CDCF68, &qword_100A8BC20);
  v3 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v26 = v4;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v27 = v9;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v25 = &v25 - v14;
  sub_10082BFCC(a1, v31);
  sub_10022C350(&qword_100CDCF70, &qword_100A8BC28);
  v15 = *(a1 + 24);
  sub_10082C598();
  j___s7SwiftUI9AlignmentV6centerACvgZ(v16);
  View.background<A>(_:alignment:)();
  v33[0] = v31[0];
  v33[1] = v31[1];
  v34[0] = v32[0];
  *(v34 + 10) = *(v32 + 10);
  sub_10003FDF4(v33, &qword_100CDCF70, &qword_100A8BC28);
  static Edge.Set.top.getter();
  sub_100004724();
  v19 = sub_100006F64(v17, &qword_100CDCF68, &qword_100A8BC20, v18);
  v30[0] = v15;
  v30[1] = v19;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v30);
  View.padding(_:_:)();
  (*(v26 + 8))(v7, v3);
  v29[0] = WitnessTable;
  v29[1] = &protocol witness table for _PaddingLayout;
  v21 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v29);
  v22 = v25;
  sub_1000833D8(v12, v8, v21);
  v23 = *(v27 + 8);
  v23(v12, v8);
  sub_1000833D8(v22, v8, v21);
  return (v23)(v22, v8);
}

void sub_10082BFCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000037C4();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v11 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, v2, a1, v10);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v6 + 32))(v13 + v12, v11, a1);
  LOBYTE(v11) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *a2 = sub_10082C6DC;
  *(a2 + 8) = v13;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = 0;
}

uint64_t sub_10082C120@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a4;
  v38 = sub_10022C350(&qword_100CDCFA8, &qword_100A8BC40);
  __chkstk_darwin(v38);
  v8 = &v35 - v7;
  v36 = sub_10022C350(&qword_100CDCFB0, &qword_100A8BC48);
  __chkstk_darwin(v36);
  v10 = &v35 - v9;
  v11 = type metadata accessor for LocalCoordinateSpace();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10022C350(&qword_100CDCFB8, &qword_100A8BC50);
  __chkstk_darwin(v37);
  v16 = &v35 - v15;
  v18 = type metadata accessor for UpArrowPopoverBackgroundView(0, a2, a3, v17);
  LODWORD(a3) = *(a1 + *(v18 + 44));
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v12 + 8))(v14, v11);
  sub_10082B8EC(v18, &v40, v20, v22, v24, v26);
  if (a3 == 1)
  {
    v27 = v37;
    static Material.thick.getter();
    static Color.black.getter();
    Color.opacity(_:)();

    sub_10022C350(&qword_100CDCFD0, &qword_100A8BC58);
    static ShadowStyle.drop(color:radius:x:y:)();

    v28 = v41;
    *v16 = v40;
    *(v16 + 1) = v28;
    v16[32] = v42;
    *&v16[*(v27 + 56)] = 256;
    v29 = &qword_100CDCFB8;
    v30 = &qword_100A8BC50;
    sub_100060DE0(v16, v10, &qword_100CDCFB8, &qword_100A8BC50);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDCFC0, &qword_100CDCFB8, &qword_100A8BC50, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100006F64(&qword_100CDCFC8, &qword_100CDCFA8, &qword_100A8BC40, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
    v31 = v16;
  }

  else
  {
    v32 = v38;
    static Material.thick.getter();
    v33 = v41;
    *v8 = v40;
    *(v8 + 1) = v33;
    v8[32] = v42;
    *&v8[*(v32 + 56)] = 256;
    v29 = &qword_100CDCFA8;
    v30 = &qword_100A8BC40;
    sub_100060DE0(v8, v10, &qword_100CDCFA8, &qword_100A8BC40);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDCFC0, &qword_100CDCFB8, &qword_100A8BC50, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100006F64(&qword_100CDCFC8, &qword_100CDCFA8, &qword_100A8BC40, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
    v31 = v8;
  }

  return sub_10003FDF4(v31, v29, v30);
}

unint64_t sub_10082C598()
{
  result = qword_100CDCF78;
  if (!qword_100CDCF78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDCF70, &qword_100A8BC28);
    v4[0] = sub_10082C624();
    v4[1] = &protocol witness table for _BackdropGroupEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDCF78);
  }

  return result;
}

unint64_t sub_10082C624()
{
  result = qword_100CDCF80;
  if (!qword_100CDCF80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDCF88, &qword_100A8BC30);
    v4[0] = sub_100006F64(&qword_100CDCF90, &qword_100CDCF98, &qword_100A8BC38, &protocol conformance descriptor for GeometryReader<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDCF80);
  }

  return result;
}

uint64_t sub_10082C6DC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for UpArrowPopoverBackgroundView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_10082C120(v7, v4, v5, a2);
}

uint64_t sub_10082C798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100ABE5C0 == a2)
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

uint64_t sub_10082C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10082C798(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10082C864(uint64_t a1)
{
  v2 = sub_10082CF00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10082C8A0(uint64_t a1)
{
  v2 = sub_10082CF00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10082C8DC(void *a1)
{
  v2 = sub_10022C350(&qword_100CDD088, &unk_100A8BDA0);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10082CF00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for AppConfiguration();
  sub_10001F9C8();
  sub_10082D01C(v8, v9, &protocol conformance descriptor for AppConfiguration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10082CA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v22 = v5;
  __chkstk_darwin(v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDD070, &qword_100A8BD98);
  sub_1000037C4();
  v23 = v9;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10082CF00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_10001F9C8();
    sub_10082D01C(v18, v19, &protocol conformance descriptor for AppConfiguration);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_10082CF54(v15, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10082CCCC@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100ABE5C0;
  v4 = type metadata accessor for AppConfiguration();
  *(inited + 72) = v4;
  v5 = sub_100042FB0((inited + 48));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDD090, &qword_100A8BDB0);
  a1[4] = sub_10082CFB8();
  sub_100042FB0(a1);
  type metadata accessor for AppConfigurationState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10082CE1C(uint64_t a1)
{
  sub_10082D01C(&qword_100CDD0A0, type metadata accessor for AppConfigurationState, byte_100A8BCF0);

  return ShortDescribable.description.getter();
}

unint64_t sub_10082CF00()
{
  result = qword_100CDD078;
  if (!qword_100CDD078)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for AppConfigurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDD078);
  }

  return result;
}

uint64_t sub_10082CF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfigurationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10082CFB8()
{
  result = qword_100CDD098;
  if (!qword_100CDD098)
  {
    v3 = sub_10022E824(&qword_100CDD090, &qword_100A8BDB0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDD098);
  }

  return result;
}

uint64_t sub_10082D01C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for AppConfigurationState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10082D114()
{
  result = qword_100CDD0A8;
  if (!qword_100CDD0A8)
  {
    result = swift_getWitnessTable(byte_100A8BE54, &type metadata for AppConfigurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDD0A8);
  }

  return result;
}

unint64_t sub_10082D16C()
{
  result = qword_100CDD0B0;
  if (!qword_100CDD0B0)
  {
    result = swift_getWitnessTable(byte_100A8BDC4, &type metadata for AppConfigurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDD0B0);
  }

  return result;
}

unint64_t sub_10082D1C4()
{
  result = qword_100CDD0B8;
  if (!qword_100CDD0B8)
  {
    result = swift_getWitnessTable(byte_100A8BDEC, &type metadata for AppConfigurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDD0B8);
  }

  return result;
}

uint64_t sub_10082D228(uint64_t a1, uint64_t *a2)
{
  v66 = a2;
  v3 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  v57 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &qword_100CAC4D8;
  v65 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  __chkstk_darwin(v65);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v52 - v8;
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v58 = a1;

  v17 = 0;
  v53 = v16;
  v54 = a1 + 64;
  v55 = v11;
  if (v15)
  {
LABEL_8:
    while (1)
    {
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = v58;
      v21 = *(v58 + 48);
      v22 = type metadata accessor for Date();
      v62 = *(v22 - 8);
      v60 = v62[9];
      v23 = v62[2];
      v67 = v22;
      v61 = v23;
      v59 = v62 + 2;
      (v23)(v11, v21 + v60 * v19);
      v24 = *(v20 + 56);
      v63 = *(v57 + 72);
      v25 = v65;
      sub_100835D98(v24 + v63 * v19, &v11[*(v65 + 48)]);
      sub_100035AD0(v11, v68, v5, &unk_100A3B420);
      v26 = v11;
      v27 = v64;
      v28 = v5;
      sub_100035AD0(v26, v64, v5, &unk_100A3B420);
      v29 = v56;
      sub_100835520(v27 + *(v25 + 48), v56);
      v30 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v30;
      v69 = v32;
      sub_100237FB4();
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      v39 = v34;
      sub_10022C350(&qword_100CA3AE0, &qword_100A8BF40);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
      {
        sub_100237FB4();
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_22;
        }

        v38 = v40;
      }

      v42 = v28;
      v43 = v69;
      v11 = v55;
      if (v39)
      {
        sub_100835CF8(v29, v69[7] + v38 * v63);
      }

      else
      {
        v69[(v38 >> 6) + 8] |= 1 << v38;
        v61(v43[6] + v38 * v60, v68, v67);
        sub_100835520(v29, v43[7] + v38 * v63);
        v44 = v43[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_21;
        }

        v43[2] = v46;
      }

      v15 &= v15 - 1;
      v47 = *(v65 + 48);
      *v66 = v43;
      v48 = v62[1];
      v50 = v67;
      v49 = v68;
      v48(v68, v67);
      v48(v64, v50);
      sub_10083559C(v49 + v47, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
      v5 = v42;
      sub_1000180EC(v11, v42, &unk_100A3B420);
      v16 = v53;
      v12 = v54;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10082D708(uint64_t *a1)
{
  v2 = *(sub_10022C350(&qword_100CAC4D8, &unk_100A3B420) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309228();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100834344(v6);
  *a1 = v3;
}

uint64_t sub_10082D7BC@<X0>(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  v35 = type metadata accessor for DateComponents();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for Calendar();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v34 = a1;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v12 + 8))(v16, v10);
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  sub_1000038D8();
  v24 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v26 = v25;
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100A2C3F0;
  (*(v26 + 104))(v28 + v27, enum case for Calendar.Component.year(_:), v24);
  sub_10004BCB0(v28);
  Calendar.dateComponents(_:from:)();

  v29 = DateComponents.year.getter();
  if (v30)
  {
    sub_100835408();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
  }

  else
  {
    sub_10082DABC(v34, v29, x8_0);
  }

  (*(v5 + 8))(v9, v35);
  return (*(v19 + 8))(v23, v17);
}

uint64_t sub_10082DABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for MaxDaylight(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  result = sub_10082DD00(a1, a2);
  if (!v3)
  {
    v18 = result;
    Location.timeZone.getter();
    v24 = sub_10082F064();
    v23 = a3;
    v19 = *(v11 + 8);
    v19(v16, v10);
    Location.timeZone.getter();
    sub_10082F140(v18, v13, v9);
    v19(v13, v10);

    v20 = type metadata accessor for DaylightData(0);
    v21 = v23;
    result = sub_100835520(v9, v23 + *(v20 + 20));
    *v21 = v24;
  }

  return result;
}

char *sub_10082DD00(uint64_t a1, uint64_t *a2)
{
  v145 = a2;
  v133 = sub_10022C350(&qword_100CDD0D0, &unk_100A8BF48);
  __chkstk_darwin(v133);
  v134 = &v118 - v3;
  v4 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v4 - 8);
  v129 = &v118 - v5;
  v6 = type metadata accessor for Calendar.Component();
  v139 = *(v6 - 8);
  v149 = v139;
  v150 = v6;
  __chkstk_darwin(v6);
  v130 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v118 - v9;
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v128 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v118 - v13;
  __chkstk_darwin(v14);
  v135 = &v118 - v15;
  __chkstk_darwin(v16);
  v142 = &v118 - v17;
  v18 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v18 - 8);
  v153 = &v118 - v19;
  v154 = type metadata accessor for Date();
  v141 = *(v154 - 8);
  __chkstk_darwin(v154);
  v126 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v118 - v22;
  __chkstk_darwin(v23);
  v146 = &v118 - v24;
  __chkstk_darwin(v25);
  v147 = &v118 - v26;
  __chkstk_darwin(v27);
  v140 = &v118 - v28;
  v152 = type metadata accessor for DateComponents();
  v127 = *(v152 - 8);
  __chkstk_darwin(v152);
  v143 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v118 - v31;
  v33 = type metadata accessor for TimeZone();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Calendar();
  v125 = *(v151 - 8);
  __chkstk_darwin(v151);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v138 = *(v34 + 8);
  v138(v36, v33);
  v123 = a1;
  Location.timeZone.getter();
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v39 = v149;
  v40 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100A2C3F0;
  v42 = *(v39 + 104);
  v121 = enum case for Calendar.Component.year(_:);
  v122 = (v39 + 104);
  v120 = v42;
  v42(v41 + v40);
  sub_10004BCB0(v41);
  v43 = v140;
  static WeatherClock.date.getter();
  Calendar.dateComponents(_:from:)();

  v44 = v43;
  v45 = v153;
  v46 = v154;
  v136 = *(v141 + 8);
  v137 = v141 + 8;
  v136(v44, v154);
  (*(v34 + 16))(v45, v36, v33);
  sub_10001B350(v45, 0, 1, v33);
  DateComponents.timeZone.setter();
  DateComponents.year.setter();
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.hour.setter();
  DateComponents.second.setter();
  v144 = v33;
  v47 = v33;
  v48 = v142;
  v138(v36, v47);
  Calendar.date(from:)();
  if (sub_100024D10(v48, 1, v46) == 1)
  {
    sub_1000180EC(v48, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_100835408();
    v49 = swift_allocError();
    *v50 = 0;
    v148 = v49;
    swift_willThrow();
    v51 = v152;
LABEL_5:
    (*(v127 + 8))(v32, v51);
    return (*(v125 + 8))(v38, v151);
  }

  v119 = v32;
  v52 = v147;
  v138 = *(v141 + 32);
  v139 = v141 + 32;
  (v138)(v147, v48, v46);
  v53 = v124;
  v54 = v150;
  v55 = v120;
  v120(v124, enum case for Calendar.Component.month(_:), v150);
  v56 = v130;
  v55(v130, v121, v54);
  v142 = v38;
  v145 = Calendar.range(of:in:for:)();
  v58 = v57;
  v60 = v59;
  v62 = v149 + 8;
  v61 = *(v149 + 8);
  v61(v56, v54);
  v61(v53, v54);
  v63 = v141;
  if (v60)
  {
    sub_100835408();
    v64 = swift_allocError();
    *v65 = 0;
    v148 = v64;
    swift_willThrow();
    v136(v52, v154);
    v51 = v152;
    v38 = v142;
    v32 = v119;
    goto LABEL_5;
  }

  v67 = __OFSUB__(v58, v145);
  v68 = (v58 - v145);
  if (v67)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_10022C350(&qword_100CDD0D8, &unk_100A8BF58);
  sub_10005B714(&qword_100CA39C8, &protocol conformance descriptor for Date);
  v69 = Dictionary.init(dictionaryLiteral:)();
  if ((v68 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v124 = v69;
  if (!v68)
  {
    v72 = v151;
LABEL_48:
    v136(v147, v154);
    (*(v127 + 8))(v119, v152);
    (*(v125 + 8))(v142, v72);
    return v124;
  }

  v145 = (v127 + 8);
  v130 = (v63 + 16);
  v70 = 0;
  v62 = v129;
  v71 = v135;
  v72 = v151;
  v73 = v144;
  v140 = v68;
  while (1)
  {
    if (v70 >= v68)
    {
      goto LABEL_50;
    }

    v67 = __OFADD__(v70, 1);
    v74 = v70 + 1;
    if (v67)
    {
      goto LABEL_51;
    }

    sub_10001B350(v62, 1, 1, v72);
    sub_10001B350(v45, 1, 1, v73);
    v75 = v73;
    v76 = v143;
    v150 = v74;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v77 = v75;
    v78 = v142;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v149 = *v145;
    (v149)(v76, v152);
    if (sub_100024D10(v71, 1, v154) != 1)
    {
      break;
    }

    sub_1000180EC(v71, &unk_100CB2CF0, &unk_100A2D7F0);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000703C(v79, qword_100D90B68);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v82 = os_log_type_enabled(v80, v81);
    v70 = v150;
    v72 = v151;
    v73 = v144;
    if (v82)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Failed to create beginningOfTheNextMonth", v83, 2u);
    }

LABEL_24:
    v45 = v153;
LABEL_45:
    v68 = v140;
    if (v70 == v140)
    {
      goto LABEL_48;
    }
  }

  (v138)(v146, v71, v154);
  sub_10001B350(v62, 1, 1, v151);
  sub_10001B350(v153, 1, 1, v77);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v84 = v132;
  Calendar.date(byAdding:to:wrappingComponents:)();
  (v149)(v76, v152);
  if (sub_100024D10(v84, 1, v154) == 1)
  {
    sub_1000180EC(v84, &unk_100CB2CF0, &unk_100A2D7F0);
    v70 = v150;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_10000703C(v85, qword_100D90B68);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = os_log_type_enabled(v86, v87);
    v72 = v151;
    v73 = v144;
    v71 = v135;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to create beginningOfTheMonth", v89, 2u);
    }

    v136(v146, v154);
    goto LABEL_24;
  }

  v90 = v154;
  (v138)(v131, v84, v154);
  v91 = v151;
  sub_10001B350(v62, 1, 1, v151);
  sub_10001B350(v153, 1, 1, v77);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v62 = v128;
  Calendar.date(byAdding:to:wrappingComponents:)();
  (v149)(v76, v152);
  if (sub_100024D10(v62, 1, v90) == 1)
  {
    v92 = v91;
    sub_1000180EC(v62, &unk_100CB2CF0, &unk_100A2D7F0);
    v70 = v150;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000703C(v93, qword_100D90B68);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    v96 = os_log_type_enabled(v94, v95);
    v62 = v129;
    v71 = v135;
    v72 = v92;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to create endingOfThePreviousMonth", v97, 2u);
    }

    v98 = v154;
    v99 = v136;
    v136(v131, v154);
    v99(v146, v98);
    v45 = v153;
LABEL_44:
    v73 = v144;
    goto LABEL_45;
  }

  v100 = v126;
  (v138)(v126, v62, v154);
  v122 = objc_autoreleasePoolPush();
  v101 = sub_100832648(v123, v100, v146, v78);
  v155 = &_swiftEmptyDictionarySingleton;
  v102 = v101 + 64;
  v103 = 1 << v101[32];
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  else
  {
    v104 = -1;
  }

  v105 = v104 & *(v101 + 8);
  v106 = (v103 + 63) >> 6;
  v149 = v101;

  v107 = 0;
  if (!v105)
  {
LABEL_36:
    while (1)
    {
      v109 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        break;
      }

      if (v109 >= v106)
      {

        v114 = v124;
        swift_isUniquelyReferenced_nonNull_native();
        v155 = v114;
        v115 = v131;
        sub_100238CAC();
        v124 = v155;
        objc_autoreleasePoolPop(v122);
        v116 = v154;
        v117 = v136;
        v136(v126, v154);
        v117(v115, v116);
        v117(v146, v116);
        v62 = v129;
        v71 = v135;
        v45 = v153;
        v70 = v150;
        v72 = v151;
        goto LABEL_44;
      }

      v105 = *&v102[8 * v109];
      ++v107;
      if (v105)
      {
        v108 = v148;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
    v108 = v148;
    v109 = v107;
LABEL_40:
    v110 = __clz(__rbit64(v105)) | (v109 << 6);
    v111 = v149;
    v62 = v134;
    (*(v141 + 16))(v134, *(v149 + 48) + *(v141 + 72) * v110, v154);
    v112 = *(v111 + 56);
    v113 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v113 - 8) + 16))(v62 + *(v133 + 48), v112 + *(*(v113 - 8) + 72) * v110, v113);
    sub_100832FDC(&v155, v62);
    v148 = v108;
    if (v108)
    {
      break;
    }

    v105 &= v105 - 1;
    sub_1000180EC(v62, &qword_100CDD0D0, &unk_100A8BF48);
    v107 = v109;
    if (!v105)
    {
      goto LABEL_36;
    }
  }

LABEL_54:

  sub_1000180EC(v62, &qword_100CDD0D0, &unk_100A8BF48);

  __break(1u);
  return result;
}

uint64_t sub_10082F064()
{
  type metadata accessor for Date();
  type metadata accessor for MonthSunAverage(0);
  sub_10005B714(&qword_100CA39C8, &protocol conformance descriptor for Date);
  v2 = Dictionary.init(dictionaryLiteral:)();
  sub_10051AA34();
  if (v0)
  {
  }

  return v2;
}

uint64_t sub_10082F140@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v154 = a2;
  v127 = a3;
  v121 = type metadata accessor for EdgeSunEvents(0);
  __chkstk_darwin(v121);
  v122 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange(0);
  __chkstk_darwin(v147);
  v140 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Date();
  v8 = *(v160 - 8);
  __chkstk_darwin(v160);
  v120 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v120 - v11;
  __chkstk_darwin(v12);
  v126 = &v120 - v13;
  __chkstk_darwin(v14);
  v125 = &v120 - v15;
  __chkstk_darwin(v16);
  v139 = &v120 - v17;
  v18 = sub_10022C350(&qword_100CDD0C8, &qword_100A8BF38);
  __chkstk_darwin(v18 - 8);
  v130 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v153 = &v120 - v21;
  v148 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v148);
  v123 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v143 = &v120 - v24;
  __chkstk_darwin(v25);
  v128 = &v120 - v26;
  __chkstk_darwin(v27);
  v129 = &v120 - v28;
  __chkstk_darwin(v29);
  v138 = &v120 - v30;
  __chkstk_darwin(v31);
  v137 = &v120 - v32;
  __chkstk_darwin(v33);
  v151 = &v120 - v34;
  __chkstk_darwin(v35);
  v152 = &v120 - v36;
  __chkstk_darwin(v37);
  v150 = &v120 - v38;
  v142 = type metadata accessor for Calendar();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v155 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10022C350(&qword_100CC37A0, &qword_100A5C588);
  __chkstk_darwin(v157);
  v41 = &v120 - v40;
  v43 = a1 + 64;
  v42 = *(a1 + 64);
  v159 = &_swiftEmptyDictionarySingleton;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42;
  v47 = (v44 + 63) >> 6;
  v158 = v8;
  v156 = v8 + 16;
  v48 = a1;

  v49 = 0;
  if (v46)
  {
    while (1)
    {
      v50 = v4;
      v51 = v49;
LABEL_9:
      v52 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v53 = v52 | (v51 << 6);
      (*(v158 + 16))(v41, *(v48 + 48) + *(v158 + 72) * v53, v160);
      *&v41[*(v157 + 48)] = *(*(v48 + 56) + 8 * v53);

      sub_10082D228(v54, &v159);
      v4 = v50;
      sub_1000180EC(v41, &qword_100CC37A0, &qword_100A5C588);
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v51 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v51);
    ++v49;
    if (v46)
    {
      v50 = v4;
      v49 = v51;
      goto LABEL_9;
    }
  }

  v55 = sub_1003072A8(v159);

  v159 = v55;
  sub_10082D708(&v159);
  v133 = v4;
  if (v4)
  {
LABEL_32:

    __break(1u);
    return result;
  }

  v132 = v159;
  static Calendar.currentCalendar(with:)();
  v157 = swift_allocBox();
  v146 = v56;
  v57 = v160;
  sub_10001B350(v56, 1, 1, v160);
  v156 = swift_allocBox();
  v145 = v58;
  sub_10001B350(v58, 1, 1, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v149 = swift_allocBox();
  v144 = v60;
  sub_10001B350(v60, 1, 1, v57);
  v148 = swift_allocBox();
  v134 = v61;
  sub_10001B350(v61, 1, 1, v57);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = (v62 + 16);
  v64 = v150;
  sub_10001B350(v150, 1, 1, v57);
  v65 = v153;
  sub_10001B350(v153, 1, 1, v147);
  v66 = v152;
  sub_10001B350(v152, 1, 1, v57);
  v67 = v151;
  sub_10001B350(v151, 1, 1, v57);
  v131 = objc_autoreleasePoolPush();
  __chkstk_darwin(v131);
  v68 = v154;
  *(&v120 - 12) = v157;
  *(&v120 - 11) = v68;
  *(&v120 - 10) = v156;
  *(&v120 - 9) = v59;
  v136 = v59;
  v135 = v62;
  v69 = v149;
  *(&v120 - 8) = v62;
  *(&v120 - 7) = v69;
  *(&v120 - 6) = v148;
  *(&v120 - 5) = v66;
  *(&v120 - 4) = v155;
  *(&v120 - 3) = v67;
  *(&v120 - 2) = v65;
  *(&v120 - 1) = v64;
  v70 = v133;
  sub_10051AC1C();
  v71 = v70;

  objc_autoreleasePoolPop(v131);
  swift_beginAccess();
  v72 = (v59 + 16);
  v73 = *(v59 + 16);
  swift_beginAccess();
  v74 = v137;
  if (*v63 < v73)
  {
    v75 = v146;
    swift_beginAccess();
    sub_100035AD0(v75, v74, &unk_100CB2CF0, &unk_100A2D7F0);
    v76 = v144;
    swift_beginAccess();
    sub_10019F6D8(v74, v76);
    v77 = v145;
    swift_beginAccess();
    v71 = v70;
    sub_100035AD0(v77, v74, &unk_100CB2CF0, &unk_100A2D7F0);
    v78 = v134;
    swift_beginAccess();
    sub_10019F6D8(v74, v78);
    *v63 = v73;
  }

  v79 = v160;
  sub_10001B350(v74, 1, 1, v160);
  v80 = v146;
  swift_beginAccess();
  sub_10019F6D8(v74, v80);
  sub_10001B350(v74, 1, 1, v79);
  v81 = v145;
  swift_beginAccess();
  sub_10019F6D8(v74, v81);
  *v72 = 0;
  v82 = [objc_allocWithZone(NSDateFormatter) init];
  [v82 setDateStyle:1];
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v82 setTimeZone:isa];

  v84 = v144;
  swift_beginAccess();
  v85 = v84;
  v86 = v138;
  sub_100035AD0(v85, v138, &unk_100CB2CF0, &unk_100A2D7F0);
  v87 = sub_100024D10(v86, 1, v79);
  v88 = v143;
  v89 = v139;
  if (v87 == 1)
  {
    v90 = v86;
    v91 = v140;
    v92 = v158;
    v93 = v150;
    goto LABEL_18;
  }

  v154 = v71;
  v92 = v158;
  v94 = *(v158 + 32);
  v94(v139, v86, v79);
  v95 = v134;
  swift_beginAccess();
  v96 = v95;
  v97 = v129;
  sub_100035AD0(v96, v129, &unk_100CB2CF0, &unk_100A2D7F0);
  v98 = sub_100024D10(v97, 1, v79);
  v91 = v140;
  if (v98 == 1)
  {
    (*(v92 + 8))(v89, v79);
    v93 = v150;
    v90 = v97;
    v71 = v154;
    v88 = v143;
LABEL_18:
    sub_1000180EC(v90, &unk_100CB2CF0, &unk_100A2D7F0);
    v99 = v130;
    sub_100035AD0(v153, v130, &qword_100CDD0C8, &qword_100A8BF38);
    if (sub_100024D10(v99, 1, v147) == 1)
    {
      v100 = &qword_100CDD0C8;
      v101 = &qword_100A8BF38;
      goto LABEL_22;
    }

    sub_100835520(v99, v91);
    v99 = v128;
    sub_100035AD0(v93, v128, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(v99, 1, v79) == 1)
    {
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
      v101 = &unk_100A2D7F0;
LABEL_22:
      v102 = v99;
LABEL_23:
      sub_1000180EC(v102, v100, v101);
      sub_100835408();
      swift_allocError();
      *v103 = 2;
      swift_willThrow();

      sub_1000180EC(v151, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v152, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v153, &qword_100CDD0C8, &qword_100A8BF38);
      sub_1000180EC(v93, &unk_100CB2CF0, &unk_100A2D7F0);

      return (*(v141 + 8))(v155, v142);
    }

    v154 = v71;
    v108 = *(v92 + 32);
    v109 = v126;
    v108(v126, v99, v79);
    sub_100035AD0(v152, v88, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(v88, 1, v79) == 1)
    {
      (*(v92 + 8))(v109, v79);
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
      v101 = &unk_100A2D7F0;
      v102 = v88;
      goto LABEL_23;
    }

    v108(v124, v88, v79);
    v110 = v123;
    sub_100035AD0(v151, v123, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(v110, 1, v79) == 1)
    {
      v111 = *(v92 + 8);
      v111(v124, v79);
      v111(v126, v79);
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
      v101 = &unk_100A2D7F0;
      v102 = v110;
      goto LABEL_23;
    }

    v112 = v120;
    v108(v120, v110, v79);
    v113 = v122;
    v108(v122, v124, v79);
    v108((v113 + *(v121 + 20)), v112, v79);
    v114 = sub_10022C350(&qword_100CD0278, &qword_100A74C30);
    v115 = v114[12];
    v116 = v91;
    v117 = v114[16];
    v118 = v114[20];
    v119 = v127;
    v108(v127, v126, v79);
    v108(&v119[v115], v116, v79);
    v108(&v119[v117], v116 + *(v147 + 20), v79);
    sub_100835520(v113, &v119[v118]);
  }

  else
  {

    v105 = v125;
    v94(v125, v97, v79);
    v106 = *(sub_10022C350(&qword_100CD0268, &unk_100A74C08) + 48);
    v107 = v127;
    v94(v127, v89, v79);
    v94(&v107[v106], v105, v79);
  }

  type metadata accessor for MaxDaylight(0);
  swift_storeEnumTagMultiPayload();
  sub_1000180EC(v151, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v152, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v153, &qword_100CDD0C8, &qword_100A8BF38);
  sub_1000180EC(v150, &unk_100CB2CF0, &unk_100A2D7F0);

  return (*(v141 + 8))(v155, v142);
}

void sub_100830390(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v182 = a6;
  v180 = a7;
  v181 = a8;
  v184 = a5;
  v185 = a4;
  v163 = a3;
  v187 = a2;
  v165 = a13;
  v173 = a12;
  v168 = a11;
  v171 = a10;
  v167 = a9;
  v14 = sub_10022C350(&qword_100CDD0C8, &qword_100A8BF38);
  __chkstk_darwin(v14 - 8);
  v169 = &v160 - v15;
  v170 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange(0);
  __chkstk_darwin(v170);
  v164 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v172 = &v160 - v18;
  v19 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  __chkstk_darwin(v19);
  v175 = &v160 - v20;
  v21 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v21 - 8);
  v166 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v160 - v24;
  __chkstk_darwin(v26);
  v186 = &v160 - v27;
  __chkstk_darwin(v28);
  v30 = &v160 - v29;
  v183 = type metadata accessor for Date();
  v179 = *(v183 - 8);
  __chkstk_darwin(v183);
  v162 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v160 - v33;
  __chkstk_darwin(v35);
  v177 = &v160 - v36;
  __chkstk_darwin(v37);
  v178 = &v160 - v38;
  __chkstk_darwin(v39);
  v41 = &v160 - v40;
  v42 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  __chkstk_darwin(v42);
  v44 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = swift_projectBox();
  v185 = swift_projectBox();
  v174 = v19;
  v45 = *(v19 + 48);
  v176 = a1;
  sub_100835D98(a1 + v45, v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
      v74 = *(v179 + 1);
      v75 = v183;
      v74(&v44[*(v73 + 48)], v183);
      v76 = v44;
      v47 = v75;
      v74(v76, v75);
      goto LABEL_9;
    case 2u:
    case 3u:
      v46 = v44;
      v47 = v183;
      (*(v179 + 1))(v46, v183);
LABEL_9:
      v77 = swift_projectBox();
      v78 = swift_projectBox();
      v50 = v184;
      swift_beginAccess();
      v79 = *(v50 + 16);
      v80 = v182;
      swift_beginAccess();
      v82 = v185;
      v81 = v186;
      if (*(v80 + 16) < v79)
      {
        v83 = v50;
        v84 = v187;
        swift_beginAccess();
        v85 = v84;
        v50 = v83;
        sub_100035AD0(v85, v81, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v81, v77);
        swift_beginAccess();
        sub_100035AD0(v82, v81, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v81, v78);
        swift_beginAccess();
        v86 = *(v83 + 16);
        swift_beginAccess();
        *(v80 + 16) = v86;
      }

      sub_10001B350(v81, 1, 1, v47);
      v87 = v187;
      swift_beginAccess();
      sub_10019F6D8(v81, v87);
      sub_10001B350(v81, 1, 1, v47);
      swift_beginAccess();
      v59 = v81;
      v60 = v82;
      goto LABEL_29;
    case 4u:
      v48 = swift_projectBox();
      v49 = swift_projectBox();
      v50 = v184;
      swift_beginAccess();
      v51 = *(v50 + 16);
      v52 = v182;
      swift_beginAccess();
      v54 = v185;
      v53 = v186;
      if (*(v52 + 16) < v51)
      {
        v55 = v187;
        swift_beginAccess();
        sub_100035AD0(v55, v53, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v53, v48);
        swift_beginAccess();
        sub_100035AD0(v54, v53, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v53, v49);
        swift_beginAccess();
        v56 = *(v50 + 16);
        swift_beginAccess();
        *(v52 + 16) = v56;
      }

      v57 = v183;
      sub_10001B350(v53, 1, 1, v183);
      v58 = v187;
      swift_beginAccess();
      sub_10019F6D8(v53, v58);
      sub_10001B350(v53, 1, 1, v57);
      swift_beginAccess();
      v59 = v53;
      v60 = v54;
      goto LABEL_29;
    case 5u:
      v88 = v187;
      swift_beginAccess();
      sub_100035AD0(v88, v30, &unk_100CB2CF0, &unk_100A2D7F0);
      v89 = v183;
      if (sub_100024D10(v30, 1, v183) == 1)
      {
        sub_1000180EC(v30, &unk_100CB2CF0, &unk_100A2D7F0);
        v90 = v175;
        v91 = v176;
        sub_100035AD0(v176, v175, &qword_100CAC4D8, &unk_100A3B420);
        v92 = v174;
        v182 = *(v174 + 48);
        v93 = *(v179 + 4);
        v94 = v186;
        v93(v186, v90, v89);
        sub_10001B350(v94, 0, 1, v89);
        swift_beginAccess();
        sub_10019F6D8(v94, v88);
        sub_10083559C(v90 + v182, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
        sub_100035AD0(v91, v90, &qword_100CAC4D8, &unk_100A3B420);
        v95 = v90 + *(v92 + 48);
        v93(v94, v90, v89);
        sub_10001B350(v94, 0, 1, v89);
      }

      else
      {
        v136 = v179;
        v137 = v89;
        v138 = *(v179 + 4);
        v138(v41, v30, v137);
        v139 = v176;
        v140 = Date.isSameMonth(as:timeZone:)();
        v136[1](v41, v137);
        v94 = v186;
        if (v140)
        {
          v141 = v175;
          sub_100035AD0(v139, v175, &qword_100CAC4D8, &unk_100A3B420);
          v95 = v141 + *(v174 + 48);
          v138(v94, v141, v137);
          sub_10001B350(v94, 0, 1, v137);
        }

        else
        {
          v179 = v138;
          v142 = swift_projectBox();
          v143 = swift_projectBox();
          v144 = v184;
          swift_beginAccess();
          v145 = *(v144 + 16);
          v146 = v182;
          swift_beginAccess();
          if (*(v146 + 16) < v145)
          {
            v147 = v187;
            swift_beginAccess();
            sub_100035AD0(v147, v94, &unk_100CB2CF0, &unk_100A2D7F0);
            swift_beginAccess();
            sub_10019F6D8(v94, v142);
            v148 = v185;
            swift_beginAccess();
            sub_100035AD0(v148, v94, &unk_100CB2CF0, &unk_100A2D7F0);
            swift_beginAccess();
            sub_10019F6D8(v94, v143);
            swift_beginAccess();
            v149 = *(v144 + 16);
            swift_beginAccess();
            *(v146 + 16) = v149;
          }

          v150 = v183;
          sub_10001B350(v94, 1, 1, v183);
          v151 = v187;
          swift_beginAccess();
          sub_10019F6D8(v94, v151);
          sub_10001B350(v94, 1, 1, v150);
          v152 = v185;
          swift_beginAccess();
          sub_10019F6D8(v94, v152);
          swift_beginAccess();
          *(v144 + 16) = 0;
          v153 = v175;
          sub_100035AD0(v139, v175, &qword_100CAC4D8, &unk_100A3B420);
          v154 = v174;
          v155 = *(v174 + 48);
          v156 = v179;
          v179(v94, v153, v150);
          sub_10001B350(v94, 0, 1, v150);
          swift_beginAccess();
          sub_10019F6D8(v94, v151);
          sub_10083559C(v153 + v155, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          sub_100035AD0(v176, v153, &qword_100CAC4D8, &unk_100A3B420);
          v95 = v153 + *(v154 + 48);
          v156(v94, v153, v150);
          sub_10001B350(v94, 0, 1, v150);
        }
      }

      v50 = v184;
      v157 = v185;
      swift_beginAccess();
      sub_10019F6D8(v94, v157);
      sub_10083559C(v95, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
      swift_beginAccess();
      v158 = *(v50 + 16);
      v159 = __OFADD__(v158, 1);
      v135 = v158 + 1;
      if (!v159)
      {
        goto LABEL_30;
      }

      __break(1u);
      return;
    default:
      v61 = *(sub_10022C350(&qword_100CD0298, &qword_100A74C68) + 48);
      v62 = v179;
      v64 = v179 + 32;
      v63 = *(v179 + 4);
      v65 = v183;
      v63(v178, v44, v183);
      v66 = &v44[v61];
      v67 = v65;
      v63(v177, v66, v65);
      v68 = v167;
      sub_100035AD0(v167, v25, &unk_100CB2CF0, &unk_100A2D7F0);
      v69 = sub_100024D10(v25, 1, v65);
      v163 = v64;
      v161 = v63;
      if (v69 == 1)
      {
        v70 = v62;
        sub_1000180EC(v25, &unk_100CB2CF0, &unk_100A2D7F0);
        v71 = v172;
        v72 = v178;
      }

      else
      {
        v63(v34, v25, v65);
        v96 = v178;
        v97 = Date.hourAndMinuteIsLater(than:calendar:)();
        v70 = v62;
        v62[1](v34, v67);
        v71 = v172;
        v72 = v96;
        if (v97)
        {
          goto LABEL_16;
        }
      }

      sub_1000180EC(v68, &unk_100CB2CF0, &unk_100A2D7F0);
      (v70[2])(v68, v72, v67);
      sub_10001B350(v68, 0, 1, v67);
LABEL_16:
      v98 = v168;
      v99 = v166;
      sub_100035AD0(v168, v166, &unk_100CB2CF0, &unk_100A2D7F0);
      if (sub_100024D10(v99, 1, v67) == 1)
      {
        sub_1000180EC(v99, &unk_100CB2CF0, &unk_100A2D7F0);
        v100 = v70;
      }

      else
      {
        v101 = v162;
        v161(v162, v99, v67);
        v102 = Date.hourAndMinuteIsLater(than:calendar:)();
        v100 = v70;
        v70[1](v101, v67);
        if (v102)
        {
          v103 = v70[2];
          v104 = v177;
          (v103)(v71, v72, v67);
          goto LABEL_21;
        }
      }

      sub_1000180EC(v98, &unk_100CB2CF0, &unk_100A2D7F0);
      v103 = v100[2];
      v104 = v177;
      (v103)(v98, v177, v67);
      sub_10001B350(v98, 0, 1, v67);
      (v103)(v71, v72, v67);
LABEL_21:
      v105 = v71;
      v106 = v170;
      (v103)(v105 + *(v170 + 20), v104, v67);
      v107 = v169;
      sub_100035AD0(v173, v169, &qword_100CDD0C8, &qword_100A8BF38);
      if (sub_100024D10(v107, 1, v106) == 1)
      {
        v108 = v100[1];
        v108(v104, v67);
        v108(v178, v67);
        sub_1000180EC(v107, &qword_100CDD0C8, &qword_100A8BF38);
        v50 = v184;
        v109 = v182;
        v110 = v176;
      }

      else
      {
        v111 = v107;
        v112 = v164;
        sub_100835520(v111, v164);
        Date.timeIntervalSince(_:)();
        v114 = v113;
        Date.timeIntervalSince(_:)();
        v116 = v115;
        sub_10083559C(v112, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
        v117 = v100[1];
        v117(v104, v67);
        v117(v178, v67);
        v50 = v184;
        v109 = v182;
        v110 = v176;
        if (v116 < v114)
        {
          v118 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange;
          v119 = v105;
          goto LABEL_26;
        }
      }

      v120 = v173;
      sub_1000180EC(v173, &qword_100CDD0C8, &qword_100A8BF38);
      sub_100835520(v105, v120);
      sub_10001B350(v120, 0, 1, v106);
      v121 = v165;
      sub_1000180EC(v165, &unk_100CB2CF0, &unk_100A2D7F0);
      v122 = v50;
      v123 = v175;
      sub_100035AD0(v110, v175, &qword_100CAC4D8, &unk_100A3B420);
      v124 = *(v174 + 48);
      v161(v121, v123, v67);
      sub_10001B350(v121, 0, 1, v67);
      v118 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity;
      v119 = v123 + v124;
      v50 = v122;
LABEL_26:
      sub_10083559C(v119, v118);
      v125 = swift_projectBox();
      v126 = swift_projectBox();
      swift_beginAccess();
      v127 = *(v50 + 16);
      swift_beginAccess();
      v128 = v185;
      if (*(v109 + 16) < v127)
      {
        v129 = v187;
        swift_beginAccess();
        v130 = v129;
        v131 = v186;
        sub_100035AD0(v130, v186, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v131, v125);
        swift_beginAccess();
        sub_100035AD0(v128, v131, &unk_100CB2CF0, &unk_100A2D7F0);
        swift_beginAccess();
        sub_10019F6D8(v131, v126);
        swift_beginAccess();
        v132 = *(v50 + 16);
        swift_beginAccess();
        *(v109 + 16) = v132;
      }

      v133 = v186;
      sub_10001B350(v186, 1, 1, v67);
      v134 = v187;
      swift_beginAccess();
      sub_10019F6D8(v133, v134);
      sub_10001B350(v133, 1, 1, v67);
      swift_beginAccess();
      v59 = v133;
      v60 = v128;
LABEL_29:
      sub_10019F6D8(v59, v60);
      swift_beginAccess();
      v135 = 0;
LABEL_30:
      *(v50 + 16) = v135;
      return;
  }
}

void sub_100831738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a2;
  v5 = sub_10022C350(&qword_100CB6C60, &unk_100A4A690);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for MonthSunAverage(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CC37A0, &qword_100A5C588);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  v18 = objc_autoreleasePoolPush();
  sub_100035AD0(a1, v13, &qword_100CC37A0, &qword_100A5C588);
  v14 = sub_1008355F4(*&v13[*(v11 + 48)]);

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v13, v15);
  sub_1008319B8(a1, v14, v17, v10);

  if (!v3)
  {
    sub_100035AD0(a1, v13, &qword_100CC37A0, &qword_100A5C588);

    sub_100835D98(v10, v7);
    sub_10001B350(v7, 0, 1, v8);
    sub_100403C40();
    sub_10083559C(v10, type metadata accessor for MonthSunAverage);
  }

  objc_autoreleasePoolPop(v18);
}

uint64_t sub_1008319B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v70 = type metadata accessor for Date();
  v61 = *(v70 - 8);
  __chkstk_darwin(v70);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v55 - v10;
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = &v55 - v14;
  __chkstk_darwin(v15);
  v67 = &v55 - v16;
  __chkstk_darwin(v17);
  v68 = &v55 - v18;
  v19 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v55 - v20;
  v22 = type metadata accessor for DateComponents();
  v65 = *(v22 - 8);
  v66 = v22;
  __chkstk_darwin(v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a3;
  static Calendar.currentCalendar(with:)();
  v81 = 0;
  v80 = 0uLL;
  v78 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v72 = &v79;
  v73 = v28;
  v74 = &v78;
  v75 = &v81;
  v76 = &v80 + 8;
  v77 = &v80;
  sub_10051ABCC(sub_100835DF4, v71, a2);
  v29 = v80;
  if (v80 != 0 || v81)
  {
    if (v81 < 1)
    {
      v44 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
      if (v29 >= *(&v29 + 1))
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      sub_10001B350(a4, v45, 2, v44);
    }

    else
    {
      v55 = v4;
      v56 = a4;
      v57 = v26;
      v58 = v25;
      sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
      v31 = type metadata accessor for Calendar.Component();
      v32 = *(v31 - 8);
      v33 = *(v32 + 72);
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100A3BBA0;
      v36 = v35 + v34;
      v37 = *(v32 + 104);
      v37(v36, enum case for Calendar.Component.year(_:), v31);
      v37(v36 + v33, enum case for Calendar.Component.month(_:), v31);
      v37(v36 + 2 * v33, enum case for Calendar.Component.day(_:), v31);
      sub_10004BCB0(v35);
      Calendar.dateComponents(_:from:)();

      v38 = type metadata accessor for TimeZone();
      (*(*(v38 - 8) + 16))(v21, v63, v38);
      sub_10001B350(v21, 0, 1, v38);
      DateComponents.timeZone.setter();
      sub_1008325F4(v79);
      DateComponents.hour.setter();
      DateComponents.minute.setter();
      v39 = v68;
      Calendar.date(from:)();
      sub_1008325F4(v78);
      DateComponents.hour.setter();
      DateComponents.minute.setter();
      v40 = v67;
      Calendar.date(from:)();
      v41 = v64;
      sub_100035AD0(v39, v64, &unk_100CB2CF0, &unk_100A2D7F0);
      v42 = v70;
      if (sub_100024D10(v41, 1, v70) == 1)
      {
        v43 = v41;
        v25 = v58;
        v26 = v57;
      }

      else
      {
        v46 = v61;
        v47 = *(v61 + 32);
        v47(v69, v41, v42);
        v48 = v60;
        sub_100035AD0(v40, v60, &unk_100CB2CF0, &unk_100A2D7F0);
        if (sub_100024D10(v48, 1, v42) != 1)
        {
          sub_1000180EC(v40, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_1000180EC(v39, &unk_100CB2CF0, &unk_100A2D7F0);
          (*(v65 + 8))(v24, v66);
          v50 = v59;
          v47(v59, v48, v42);
          v51 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
          v52 = *(v51 + 48);
          v53 = v56;
          v47(v56, v69, v42);
          v47((v53 + v52), v50, v42);
          sub_10001B350(v53, 0, 2, v51);
          v25 = v58;
          v26 = v57;
          goto LABEL_15;
        }

        (*(v46 + 8))(v69, v42);
        v25 = v58;
        v26 = v57;
        v43 = v48;
      }

      sub_1000180EC(v43, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_100835408();
      swift_allocError();
      *v49 = 1;
      swift_willThrow();
      sub_1000180EC(v40, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v39, &unk_100CB2CF0, &unk_100A2D7F0);
      (*(v65 + 8))(v24, v66);
    }
  }

  else
  {
    sub_100835408();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

LABEL_15:

  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_100832248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v40[0] = a6;
  v40[1] = a3;
  v41 = a5;
  v42 = a4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v40 - v15;
  v17 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  __chkstk_darwin(v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  sub_100835D98(a1 + *(v20 + 48), v19);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      goto LABEL_8;
    case 2:
    case 3:
      return (*(v11 + 8))(v19, v10);
    case 4:
      if (__OFADD__(*a7, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
      }

      else
      {
        ++*a7;
      }

      break;
    case 5:
      sub_10051A9C0();
      v35 = *(*a2 + 16);
      sub_100278A60(v35);
      v36 = *a2;
      *(v36 + 16) = v35 + 1;
      *(v36 + 8 * v35 + 32) = 0;
      v37 = v42;
      sub_10051A9C0();
      v38 = *(*v37 + 16);
      result = sub_100278A60(v38);
      v39 = *v37;
      *(v39 + 16) = v38 + 1;
      *(v39 + 8 * v38 + 32) = 86400;
      v31 = v40[0];
      v32 = *v40[0] + 1;
      if (!__OFADD__(*v40[0], 1))
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    default:
      v22 = *(sub_10022C350(&qword_100CD0298, &qword_100A74C68) + 48);
      v23 = *(v11 + 32);
      v23(v16, v19, v10);
      v23(v13, &v19[v22], v10);
      v24 = Date.secondsSinceMidnight(calendar:)();
      sub_10051A9C0();
      v25 = *(*a2 + 16);
      sub_100278A60(v25);
      v26 = *a2;
      *(v26 + 16) = v25 + 1;
      *(v26 + 8 * v25 + 32) = v24;
      v19 = Date.secondsSinceMidnight(calendar:)();
      v27 = v42;
      sub_10051A9C0();
      v28 = *(*v27 + 16);
      sub_100278A60(v28);
      v29 = *(v11 + 8);
      v11 += 8;
      v29(v13, v10);
      result = (v29)(v16, v10);
      v30 = *v27;
      *(v30 + 16) = v28 + 1;
      *(v30 + 8 * v28 + 32) = v19;
      v31 = v41;
      v32 = *v41 + 1;
      if (__OFADD__(*v41, 1))
      {
        __break(1u);
LABEL_8:
        v33 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
        v34 = *(v11 + 8);
        v34(&v19[*(v33 + 48)], v10);
        result = (v34)(v19, v10);
      }

      else
      {
LABEL_10:
        *v31 = v32;
      }

      break;
  }

  return result;
}

uint64_t sub_1008325F4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return v1 / 3600;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = *(result + 32 + 8 * v2);
    v5 = __OFADD__(v3, v4);
    v3 += v4;
    if (v5)
    {
      break;
    }

    if (v1 == ++v2)
    {
      v1 = v3 / v1;
      return v1 / 3600;
    }
  }

  __break(1u);
  return result;
}

char *sub_100832648(uint64_t a1, uint64_t a2, void (*a3)(void, void), char *a4)
{
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v74 = a1;
  v4 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v58 - v8;
  v9 = type metadata accessor for Date();
  v58 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v58 - v12;
  v68 = type metadata accessor for Calendar.SearchDirection();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v59 = *(v76 - 8);
  v14 = v59;
  __chkstk_darwin(v76);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar.MatchingPolicy();
  v60 = v16;
  v61 = *(v16 - 8);
  v17 = v61;
  __chkstk_darwin(v16);
  v62 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DateComponents();
  v64 = *(v65 - 1);
  __chkstk_darwin(v65);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for TimeZone();
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B714(&qword_100CA39C8, &protocol conformance descriptor for Date);
  v77 = v9;
  v80 = v4;
  v23 = Dictionary.init(dictionaryLiteral:)();
  Location.timeZone.getter();
  v85 = _swiftEmptyArrayStorage;
  sub_1009FBBFC(v22);
  v24 = v62;
  (*(v17 + 104))(v62, enum case for Calendar.MatchingPolicy.strict(_:), v16);
  v25 = v63;
  (*(v14 + 104))(v63, enum case for Calendar.RepeatedTimePolicy.first(_:), v76);
  v82 = v69;
  v83 = v70;
  v84 = &v85;
  v26 = v67;
  v27 = v66;
  v28 = v68;
  (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v68);
  Calendar.enumerateDates(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:using:)();
  (*(v26 + 8))(v27, v28);
  (*(v59 + 8))(v25, v76);
  (*(v61 + 8))(v24, v60);
  (*(v64 + 8))(v20, v65);
  v70 = *(v75 + 8);
  v71 = v22;
  v75 += 8;
  v70(v22, v73);
  v29 = v85;
  v69 = *(v85 + 2);
  if (v69)
  {
    v30 = 0;
    v31 = v58;
    v68 = &v85[(*(v31 + 80) + 32) & ~*(v31 + 80)];
    v76 = v58 + 16;
    v67 = v58 + 32;
    v66 = (v5 + 16);
    v62 = (v5 + 32);
    v65 = (v58 + 8);
    v64 = v5 + 8;
    v61 = v5 + 40;
    v63 = v85;
    while (v30 < *(v29 + 2))
    {
      v32 = v5;
      v33 = *(v31 + 72);
      v34 = *(v31 + 16);
      v35 = v72;
      v36 = v77;
      v34(v72, v68 + v33 * v30, v77);
      Location.coordinate.getter();
      v37 = v71;
      Location.timeZone.getter();
      v38 = v78;
      CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)();
      v70(v37, v73);
      v39 = v31;
      (*(v31 + 32))(v81, v35, v36);
      (*v66)(v79, v38, v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v23;
      sub_100237FB4();
      v43 = *(v23 + 2);
      v44 = (v42 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_15;
      }

      v46 = v41;
      v47 = v42;
      sub_10022C350(&qword_100CDD0E0, &qword_100A8BF68);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
      {
        sub_100237FB4();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_17;
        }

        v46 = v48;
      }

      v23 = v85;
      if (v47)
      {
        v5 = v32;
        v50 = v80;
        (*(v32 + 40))(*(v85 + 7) + *(v32 + 72) * v46, v79, v80);
        (*v65)(v81, v77);
        (*(v32 + 8))(v78, v50);
      }

      else
      {
        *&v85[8 * (v46 >> 6) + 64] |= 1 << v46;
        v51 = v81;
        v52 = v77;
        v34((*(v23 + 6) + v46 * v33), v81, v77);
        v5 = v32;
        v53 = v80;
        (*(v32 + 32))(*(v23 + 7) + *(v32 + 72) * v46, v79, v80);
        (*v65)(v51, v52);
        (*(v32 + 8))(v78, v53);
        v54 = *(v23 + 2);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_16;
        }

        *(v23 + 2) = v56;
      }

      ++v30;
      v31 = v39;
      v29 = v63;
      if (v69 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_13:

    return v23;
  }

  return result;
}

uint64_t sub_100832FDC(uint64_t a1, uint64_t a2)
{
  v167 = a1;
  v3 = sub_10022C350(&qword_100CB6C58, &unk_100A4A680);
  __chkstk_darwin(v3 - 8);
  v150 = v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v162 = v146 - v6;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v155 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = v146 - v10;
  __chkstk_darwin(v11);
  v159 = v146 - v12;
  __chkstk_darwin(v13);
  v164 = v146 - v14;
  __chkstk_darwin(v15);
  v169 = (v146 - v16);
  __chkstk_darwin(v17);
  v19 = v146 - v18;
  v20 = sub_10022C350(&qword_100CDD0D0, &unk_100A8BF48);
  __chkstk_darwin(v20);
  v156 = v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v154 = v146 - v23;
  __chkstk_darwin(v24);
  v160 = v146 - v25;
  __chkstk_darwin(v26);
  v157 = v146 - v27;
  __chkstk_darwin(v28);
  v163 = v146 - v29;
  __chkstk_darwin(v30);
  v166 = v146 - v31;
  __chkstk_darwin(v32);
  v34 = v146 - v33;
  __chkstk_darwin(v35);
  v37 = v146 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v149 = v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v153 = v146 - v42;
  __chkstk_darwin(v43);
  v151 = v146 - v44;
  __chkstk_darwin(v45);
  v158 = v146 - v46;
  __chkstk_darwin(v47);
  v152 = v146 - v48;
  __chkstk_darwin(v49);
  v168 = v146 - v50;
  sub_100035AD0(a2, v37, &qword_100CDD0D0, &unk_100A8BF48);
  v51 = *(v20 + 48);
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  v171 = v38;
  v52 = sub_100024D10(v19, 1, v38);
  v170 = v20;
  v165 = v39;
  if (v52 == 1)
  {
    sub_1000180EC(v19, &unk_100CB2CF0, &unk_100A2D7F0);
    v53 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v53 - 8) + 8))(&v37[v51], v53);
    v54 = *(v39 + 8);
    v55 = v171;
    (v54)(v37, v171);
    v56 = v39;
    v57 = v55;
  }

  else
  {
    v58 = v171;
    v146[0] = *(v39 + 32);
    (v146[0])(v168, v19, v171);
    v59 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v60 = *(v59 - 8);
    v61 = *(v60 + 8);
    v148 = v59;
    v147 = v61;
    v146[1] = v60 + 8;
    (v61)(&v37[v51]);
    v62 = v39;
    v57 = v58;
    v54 = *(v62 + 8);
    (v54)(v37, v57);
    sub_100035AD0(a2, v34, &qword_100CDD0D0, &unk_100A8BF48);
    v63 = *(v20 + 48);
    v64 = v169;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    if (sub_100024D10(v64, 1, v57) == 1)
    {
      (v54)(v168, v57);
      sub_1000180EC(v64, &unk_100CB2CF0, &unk_100A2D7F0);
      v147(&v34[v63], v148);
      v65 = v34;
    }

    else
    {
      v66 = v152;
      (v146[0])(v152, v64, v57);
      v147(&v34[v63], v148);
      (v54)(v34, v57);
      if (static Date.> infix(_:_:)())
      {
        v67 = v166;
        sub_100035AD0(a2, v166, &qword_100CDD0D0, &unk_100A8BF48);
        v170 = *(v170 + 48);
        v68 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
        v169 = v54;
        v69 = *(v68 + 48);
        v70 = v66;
        v71 = *(v165 + 16);
        v72 = v162;
        v73 = v168;
        v71(v162, v168, v57);
        v71((v72 + v69), v70, v57);
        v74 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v72, 0, 1, v74);
        sub_100403A88();
        v75 = v169;
        v169(v70, v57);
        v75(v73, v57);
        return (v147)(v67 + v170, v148);
      }

      (v54)(v66, v57);
      v65 = v168;
    }

    (v54)(v65, v57);
    v56 = v165;
  }

  v77 = v163;
  sub_100035AD0(a2, v163, &qword_100CDD0D0, &unk_100A8BF48);
  v78 = v170;
  v79 = *(v170 + 48);
  v80 = v164;
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  v81 = sub_100024D10(v80, 1, v57);
  v169 = v54;
  if (v81 == 1)
  {
    sub_1000180EC(v80, &unk_100CB2CF0, &unk_100A2D7F0);
    v82 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v82 - 8) + 8))(v77 + v79, v82);
    (v54)(v77, v57);
  }

  else
  {
    v83 = v80;
    v84 = v54;
    v85 = a2;
    v86 = v158;
    v148 = *(v56 + 32);
    v148(v158, v83, v57);
    v87 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v88 = *(v87 - 8);
    v89 = *(v88 + 8);
    v168 = v87;
    v164 = v89;
    v152 = (v88 + 8);
    (v89)(v77 + v79);
    (v54)(v77, v57);
    v163 = v85;
    v90 = v157;
    sub_100035AD0(v85, v157, &qword_100CDD0D0, &unk_100A8BF48);
    v91 = *(v78 + 48);
    v92 = v159;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    v93 = v92;
    if (sub_100024D10(v92, 1, v57) == 1)
    {
      v57 = v171;
      v84(v86, v171);
      sub_1000180EC(v92, &unk_100CB2CF0, &unk_100A2D7F0);
      (v164)(v90 + v91, v168);
      v84(v90, v57);
    }

    else
    {
      v94 = v151;
      v95 = v93;
      v96 = v171;
      v148(v151, v95, v171);
      (v164)(v90 + v91, v168);
      v84(v90, v96);
      sub_10005B714(&qword_100CA7020, &protocol conformance descriptor for Date);
      v97 = v84;
      v98 = v86;
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        v139 = v166;
        sub_100035AD0(v163, v166, &qword_100CDD0D0, &unk_100A8BF48);
        v170 = *(v170 + 48);
        v140 = *(sub_10022C350(&qword_100CD0298, &qword_100A74C68) + 48);
        v141 = *(v165 + 16);
        v142 = v162;
        v143 = v171;
        v141(v162, v98, v171);
        v141((v142 + v140), v94, v143);
        v144 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v142, 0, 1, v144);
        sub_100403A88();
        v145 = v169;
        v169(v94, v143);
        v145(v98, v143);
        return (v164)(v139 + v170, v168);
      }

      v57 = v171;
      v97(v94, v171);
      v97(v86, v57);
    }

    a2 = v163;
    v78 = v170;
    v56 = v165;
  }

  v99 = v160;
  sub_100035AD0(a2, v160, &qword_100CDD0D0, &unk_100A8BF48);
  v100 = *(v78 + 48);
  v101 = v161;
  CLLocationCoordinate2D.SolarEvents.sunrise.getter();
  if (sub_100024D10(v101, 1, v57) == 1)
  {
    sub_1000180EC(v101, &unk_100CB2CF0, &unk_100A2D7F0);
    v102 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v103 = *(v102 - 8);
    v104 = v102;
    v171 = *(v103 + 8);
    v168 = (v103 + 8);
    v171(v99 + v100);
    v105 = v99;
    v106 = v56;
    v164 = (v56 + 8);
    v169(v105, v57);
    v107 = v154;
    sub_100035AD0(a2, v154, &qword_100CDD0D0, &unk_100A8BF48);
    v108 = *(v78 + 48);
    v109 = v155;
    CLLocationCoordinate2D.SolarEvents.sunset.getter();
    v110 = v109;
    v111 = sub_100024D10(v109, 1, v57);
    v163 = v104;
    if (v111 == 1)
    {
      sub_1000180EC(v109, &unk_100CB2CF0, &unk_100A2D7F0);
      v112 = v171;
      (v171)(v107 + v108, v104);
      v113 = v169;
      v169(v107, v57);
      sub_100035AD0(a2, v156, &qword_100CDD0D0, &unk_100A8BF48);
      v114 = a2;
      v115 = v78;
      v116 = v166;
      sub_100035AD0(v114, v166, &qword_100CDD0D0, &unk_100A8BF48);
      v117 = *(v115 + 48);
      CLLocationCoordinate2D.SolarEvents.isDaylight.getter();
      v112(v116 + v117, v104);
      v113(v116, v57);
      v118 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      v119 = v150;
      swift_storeEnumTagMultiPayload();
      v120 = *(v115 + 48);
      sub_10001B350(v119, 0, 1, v118);
      v121 = v156;
      sub_100403A88();
      return (v112)(v121 + v120, v163);
    }

    else
    {
      v133 = v149;
      (*(v106 + 32))(v149, v110, v57);
      (v171)(v107 + v108, v104);
      v134 = v169;
      v169(v107, v57);
      v135 = a2;
      v136 = v166;
      sub_100035AD0(v135, v166, &qword_100CDD0D0, &unk_100A8BF48);
      v170 = *(v78 + 48);
      v137 = v162;
      (*(v106 + 16))(v162, v133, v57);
      v138 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v137, 0, 1, v138);
      sub_100403A88();
      v134(v133, v57);
      return (v171)(v136 + v170, v163);
    }
  }

  else
  {
    v122 = v153;
    (*(v56 + 32))(v153, v101, v57);
    v123 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    v124 = *(v123 - 8);
    v125 = v56;
    v126 = *(v124 + 8);
    v171 = (v124 + 8);
    v126(v99 + v100, v123);
    v127 = v99;
    v128 = v169;
    v169(v127, v57);
    v129 = a2;
    v130 = v166;
    sub_100035AD0(v129, v166, &qword_100CDD0D0, &unk_100A8BF48);
    v170 = *(v78 + 48);
    v131 = v162;
    (*(v125 + 16))(v162, v122, v57);
    v132 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v131, 0, 1, v132);
    sub_100403A88();
    v128(v122, v57);
    return (v126)(v130 + v170, v123);
  }
}

uint64_t sub_1008340B0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v22 = a3;
  v23 = a6;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_100035AD0(a1, v9, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    return sub_1000180EC(v9, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  v18 = *(v11 + 32);
  v18(v16, v9, v10);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    return (*(v11 + 8))(v16, v10);
  }

  if (static Date.< infix(_:_:)())
  {
    (*(v11 + 16))(v13, v16, v10);
    v19 = v23;
    sub_10051A948();
    v20 = *(*v19 + 16);
    sub_1002789E8(v20);
    (*(v11 + 8))(v16, v10);
    v21 = *v19;
    *(v21 + 16) = v20 + 1;
    return (v18)(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v13, v10);
  }

  else
  {
    result = (*(v11 + 8))(v16, v10);
    *v22 = 1;
  }

  return result;
}

void sub_100834344(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10022C350(&qword_100CAC4D8, &unk_100A3B420) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1008346C4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10083448C(0, v2, 1, a1);
  }
}

void sub_10083448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        sub_100035AD0(v21, v15, &qword_100CAC4D8, &unk_100A3B420);
        sub_100035AD0(v18, v11, &qword_100CAC4D8, &unk_100A3B420);
        v22 = static Date.< infix(_:_:)();
        sub_1000180EC(v11, &qword_100CAC4D8, &unk_100A3B420);
        sub_1000180EC(v15, &qword_100CAC4D8, &unk_100A3B420);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        v23 = v33;
        sub_100835C88(v21, v33);
        swift_arrayInitWithTakeFrontToBack();
        sub_100835C88(v23, v18);
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1008346C4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v125 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  v120 = *(v125 - 8);
  __chkstk_darwin(v125);
  v115 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v109 - v10;
  __chkstk_darwin(v11);
  v127 = &v109 - v12;
  __chkstk_darwin(v13);
  v126 = &v109 - v14;
  v121 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_99:
    v127 = *v112;
    if (!v127)
    {
      goto LABEL_140;
    }

    v16 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v101 = v17 + 16;
      v102 = *(v17 + 2);
      while (v102 >= 2)
      {
        if (!*v121)
        {
          goto LABEL_137;
        }

        v103 = v17;
        v104 = &v17[16 * v102];
        v105 = *v104;
        v106 = &v101[2 * v102];
        v107 = *(v106 + 1);
        sub_100834F80(*v121 + *(v120 + 72) * *v104, *v121 + *(v120 + 72) * *v106, *v121 + *(v120 + 72) * v107, v127);
        if (v16)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_125;
        }

        if (v102 - 2 >= *v101)
        {
          goto LABEL_126;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        v108 = *v101 - v102;
        if (*v101 < v102)
        {
          goto LABEL_127;
        }

        v102 = *v101 - 1;
        sub_1003090FC(v106 + 16, v108, v106);
        *v101 = v102;
        v17 = v103;
      }

LABEL_109:

      return;
    }

LABEL_134:
    v17 = sub_100308E24();
    goto LABEL_101;
  }

  v109 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v111 = v17;
      v122 = v5;
      v19 = *v121;
      v20 = *(v120 + 72);
      v21 = v18;
      v22 = *v121 + v20 * v16;
      v23 = v126;
      v119 = v15;
      sub_100035AD0(v22, v126, &qword_100CAC4D8, &unk_100A3B420);
      v24 = v127;
      sub_100035AD0(v19 + v20 * v21, v127, &qword_100CAC4D8, &unk_100A3B420);
      LODWORD(v118) = static Date.< infix(_:_:)();
      sub_1000180EC(v24, &qword_100CAC4D8, &unk_100A3B420);
      sub_1000180EC(v23, &qword_100CAC4D8, &unk_100A3B420);
      v25 = v119;
      v110 = v21;
      v26 = v21 + 2;
      v123 = v20;
      v27 = v19 + v20 * (v21 + 2);
      while (1)
      {
        v28 = v26;
        if (++v16 >= v25)
        {
          break;
        }

        v29 = v126;
        sub_100035AD0(v27, v126, &qword_100CAC4D8, &unk_100A3B420);
        v30 = v127;
        sub_100035AD0(v22, v127, &qword_100CAC4D8, &unk_100A3B420);
        v31 = static Date.< infix(_:_:)() & 1;
        sub_1000180EC(v30, &qword_100CAC4D8, &unk_100A3B420);
        sub_1000180EC(v29, &qword_100CAC4D8, &unk_100A3B420);
        v27 += v123;
        v22 += v123;
        v26 = v28 + 1;
        v25 = v119;
        if ((v118 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v16 = v25;
LABEL_9:
      v5 = v122;
      v17 = v111;
      if ((v118 & 1) == 0)
      {
        goto LABEL_29;
      }

      v18 = v110;
      if (v16 < v110)
      {
        goto LABEL_131;
      }

      if (v110 < v16)
      {
        if (v25 >= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v25;
        }

        v33 = v123 * (v32 - 1);
        v34 = v123 * v32;
        v35 = v110 * v123;
        v119 = v16;
        v36 = v16;
        v37 = v110;
        do
        {
          if (v37 != --v36)
          {
            v38 = *v121;
            if (!*v121)
            {
              goto LABEL_138;
            }

            sub_100835C88(v38 + v35, v115);
            v39 = v35 < v33 || v38 + v35 >= v38 + v34;
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100835C88(v115, v38 + v33);
          }

          ++v37;
          v33 -= v123;
          v34 -= v123;
          v35 += v123;
        }

        while (v37 < v36);
        v5 = v122;
        v17 = v111;
        v16 = v119;
LABEL_29:
        v18 = v110;
      }
    }

    v40 = v121[1];
    if (v16 < v40)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_130;
      }

      if (v16 - v18 < v109)
      {
        break;
      }
    }

LABEL_46:
    if (v16 < v18)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v17 = v99;
    }

    v54 = *(v17 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v17 + 3) >> 1)
    {
      sub_10011E564();
      v17 = v100;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    *v57 = v18;
    *(v57 + 1) = v16;
    v123 = *v112;
    if (!v123)
    {
      goto LABEL_139;
    }

    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        v59 = &v56[16 * v55 - 16];
        v60 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v61 = *(v17 + 4);
          v62 = *(v17 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_66:
          if (v64)
          {
            goto LABEL_116;
          }

          v76 = *v60;
          v75 = *(v60 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_119;
          }

          v80 = *(v59 + 1);
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_124;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v55 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v55 < 2)
        {
          goto LABEL_118;
        }

        v83 = *v60;
        v82 = *(v60 + 1);
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_81:
        if (v79)
        {
          goto LABEL_121;
        }

        v85 = *v59;
        v84 = *(v59 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_123;
        }

        if (v86 < v78)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v121)
        {
          goto LABEL_136;
        }

        v90 = &v56[16 * v58 - 16];
        v91 = *v90;
        v92 = v58;
        v93 = &v56[16 * v58];
        v94 = *(v93 + 1);
        v95 = v122;
        sub_100834F80(*v121 + *(v120 + 72) * *v90, *v121 + *(v120 + 72) * *v93, *v121 + *(v120 + 72) * v94, v123);
        v122 = v95;
        if (v95)
        {
          goto LABEL_109;
        }

        if (v94 < v91)
        {
          goto LABEL_111;
        }

        v96 = v16;
        v16 = v17;
        v97 = *(v17 + 2);
        if (v92 > v97)
        {
          goto LABEL_112;
        }

        *v90 = v91;
        *(v90 + 1) = v94;
        if (v92 >= v97)
        {
          goto LABEL_113;
        }

        v55 = v97 - 1;
        sub_1003090FC(v93 + 16, v97 - 1 - v92, v93);
        *(v16 + 16) = v97 - 1;
        v98 = v97 > 2;
        v17 = v16;
        v16 = v96;
        if (!v98)
        {
          goto LABEL_95;
        }
      }

      v65 = &v56[16 * v55];
      v66 = *(v65 - 8);
      v67 = *(v65 - 7);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_114;
      }

      v70 = *(v65 - 6);
      v69 = *(v65 - 5);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_115;
      }

      v72 = *(v60 + 1);
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_117;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_120;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = *(v59 + 1);
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_128;
        }

        if (v63 < v89)
        {
          v58 = v55 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v5 = v122;
    v15 = v121[1];
    if (v16 >= v15)
    {
      goto LABEL_99;
    }
  }

  v41 = v18 + v109;
  if (__OFADD__(v18, v109))
  {
    goto LABEL_132;
  }

  if (v41 >= v40)
  {
    v41 = v121[1];
  }

  if (v41 < v18)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v16 == v41)
  {
    goto LABEL_46;
  }

  v110 = v18;
  v111 = v17;
  v122 = v5;
  v42 = *v121;
  v43 = *(v120 + 72);
  v44 = *v121 + v43 * (v16 - 1);
  v45 = v16;
  v46 = -v43;
  v47 = v18 - v45;
  v119 = v45;
  v123 = v42;
  v113 = v43;
  v114 = v41;
  v48 = v42 + v45 * v43;
LABEL_39:
  v116 = v48;
  v117 = v47;
  v118 = v44;
  while (1)
  {
    v49 = v126;
    sub_100035AD0(v48, v126, &qword_100CAC4D8, &unk_100A3B420);
    v50 = v127;
    sub_100035AD0(v44, v127, &qword_100CAC4D8, &unk_100A3B420);
    v51 = static Date.< infix(_:_:)();
    sub_1000180EC(v50, &qword_100CAC4D8, &unk_100A3B420);
    sub_1000180EC(v49, &qword_100CAC4D8, &unk_100A3B420);
    if ((v51 & 1) == 0)
    {
LABEL_44:
      v44 = v118 + v113;
      v47 = v117 - 1;
      v48 = v116 + v113;
      if (++v119 == v114)
      {
        v16 = v114;
        v5 = v122;
        v18 = v110;
        v17 = v111;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v123)
    {
      break;
    }

    v52 = v124;
    sub_100835C88(v48, v124);
    swift_arrayInitWithTakeFrontToBack();
    sub_100835C88(v52, v44);
    v44 += v46;
    v48 += v46;
    v39 = __CFADD__(v47++, 1);
    if (v39)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_100834F80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  __chkstk_darwin(v51);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v56 = a1;
  v55 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1006A06E4(a2, v15 / v12, a4);
    v50 = a4;
    v26 = a4 + v18 * v12;
    v27 = -v12;
    v28 = v26;
    v46 = a1;
    v47 = -v12;
LABEL_37:
    v29 = a2 + v27;
    v30 = a3;
    v44 = v28;
    v31 = v28;
    v48 = a2 + v27;
    v49 = a2;
    while (1)
    {
      if (v26 <= v50)
      {
        v56 = a2;
        v54 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v31;
      v32 = v30 + v27;
      v33 = v26 + v27;
      v34 = v26 + v27;
      v35 = v52;
      sub_100035AD0(v34, v52, &qword_100CAC4D8, &unk_100A3B420);
      v36 = v29;
      v37 = v53;
      sub_100035AD0(v36, v53, &qword_100CAC4D8, &unk_100A3B420);
      v38 = static Date.< infix(_:_:)();
      sub_1000180EC(v37, &qword_100CAC4D8, &unk_100A3B420);
      sub_1000180EC(v35, &qword_100CAC4D8, &unk_100A3B420);
      if (v38)
      {
        v40 = v30 < v49 || v32 >= v49;
        a3 = v32;
        if (v40)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v47;
          v28 = v45;
          a1 = v46;
        }

        else
        {
          v41 = v45;
          v28 = v45;
          v27 = v47;
          v42 = v48;
          a2 = v48;
          a1 = v46;
          if (v30 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v28 = v41;
          }
        }

        goto LABEL_37;
      }

      if (v30 < v26 || v32 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v26 = v33;
        v31 = v33;
        a1 = v46;
        v27 = v47;
        v29 = v48;
        a2 = v49;
      }

      else
      {
        v31 = v33;
        v14 = v26 == v30;
        v30 = v32;
        v26 = v33;
        a1 = v46;
        v27 = v47;
        v29 = v48;
        a2 = v49;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v32;
          v26 = v33;
          v31 = v33;
        }
      }
    }

    v56 = a2;
    v54 = v44;
  }

  else
  {
    sub_1006A06E4(a1, v13 / v12, a4);
    v49 = a3;
    v50 = a4 + v17 * v12;
    v54 = v50;
    while (a4 < v50 && a2 < a3)
    {
      v20 = v12;
      v21 = v52;
      sub_100035AD0(a2, v52, &qword_100CAC4D8, &unk_100A3B420);
      v22 = v53;
      sub_100035AD0(a4, v53, &qword_100CAC4D8, &unk_100A3B420);
      v23 = static Date.< infix(_:_:)();
      sub_1000180EC(v22, &qword_100CAC4D8, &unk_100A3B420);
      sub_1000180EC(v21, &qword_100CAC4D8, &unk_100A3B420);
      v12 = v20;
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v56 = a1;
      a3 = v49;
    }
  }

LABEL_59:
  sub_100308E3C(&v56, &v55, &v54);
}

unint64_t sub_100835408()
{
  result = qword_100CDD0C0;
  if (!qword_100CDD0C0)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for CalculatorError, v0, v1);
    atomic_store(result, &qword_100CDD0C0);
  }

  return result;
}

uint64_t sub_100835520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10083559C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1008355F4(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_100835C10(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1006A76B8(0, v4, v5);
  sub_100835758(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_100835758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[1] = a2;
  v45 = a1;
  v57 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  __chkstk_darwin(v57);
  v56 = v44 - v4;
  v5 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = v44 - v9;
  v10 = type metadata accessor for Date();
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v15 = 0;
  v58 = a3;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v22;
  v50 = v11 + 16;
  v52 = v11;
  v53 = v7;
  v51 = v14;
  v48 = (v11 + 8);
  while (2)
  {
    if (v21)
    {
      v23 = __clz(__rbit64(v21));
      v59 = (v21 - 1) & v21;
LABEL_11:
      v26 = v23 | (v15 << 6);
      v27 = v58;
      v28 = *(v52 + 16);
      v28(v14, *(v58 + 48) + *(v52 + 72) * v26, v10, v12);
      v29 = *(v27 + 56);
      v30 = *(v54 + 72);
      v47 = v26;
      v31 = v29 + v30 * v26;
      v32 = v60;
      sub_100835D98(v31, v60);
      v33 = v56;
      (v28)(v56, v14, v10);
      v34 = *(v57 + 48);
      sub_100835D98(v32, v33 + v34);
      v35 = v33 + v34;
      v36 = v53;
      sub_100835D98(v35, v53);
      sub_1000180EC(v33, &qword_100CAC4D8, &unk_100A3B420);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v48;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v40 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
          v39 = *v38;
          (*v38)(v36 + *(v40 + 48), v10);
          v39(v36, v10);
          goto LABEL_14;
        case 2:
        case 3:
          v39 = *v48;
          (*v48)(v36, v10);
LABEL_14:
          v14 = v51;
          sub_10083559C(v60, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          v39(v14, v10);
          v22 = v49;
          v21 = v59;
          continue;
        case 4:
        case 5:
          goto LABEL_16;
        default:
          v41 = sub_10022C350(&qword_100CD0298, &qword_100A74C68);
          v42 = *v38;
          (*v38)(v36 + *(v41 + 48), v10);
          v42(v36, v10);
LABEL_16:
          sub_10083559C(v60, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          v14 = v51;
          (*v38)(v51, v10);
          *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          v43 = __OFADD__(v46++, 1);
          v22 = v49;
          v21 = v59;
          if (!v43)
          {
            continue;
          }

          __break(1u);
          break;
      }

LABEL_19:
      sub_1006738CC();
    }

    else
    {
      v24 = v15;
      while (1)
      {
        v15 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v15 >= v22)
        {
          goto LABEL_19;
        }

        v25 = *(v17 + 8 * v15);
        ++v24;
        if (v25)
        {
          v23 = __clz(__rbit64(v25));
          v59 = (v25 - 1) & v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    break;
  }
}

void *sub_100835C10(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100835758(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_100835C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100835CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100835D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_100835E24(uint64_t a1)
{
  sub_100836374(319, &qword_100CDD168, "sunrise sunset ");
  if (v1 <= 0x3F)
  {
    sub_100835ECC(319, &qword_100CDD170);
    if (v2 <= 0x3F)
    {
      sub_100835ECC(319, &unk_100CDD178);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100835ECC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Date();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CalculatorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100836040(uint64_t a1)
{
  sub_100836374(319, &qword_100CDD168, "sunrise sunset ");
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1008360D0(uint64_t a1)
{
  sub_100836154(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MaxDaylight(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100836154(uint64_t a1)
{
  if (!qword_100CDD340)
  {
    type metadata accessor for Date();
    type metadata accessor for MonthSunAverage(255);
    sub_10005B714(&qword_100CA39C8, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDD340);
    }
  }
}

void sub_1008361EC(uint64_t a1)
{
  sub_100836270(319);
  if (v1 <= 0x3F)
  {
    sub_100836374(319, &unk_100CDD3F8, "start end ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100836270(uint64_t a1)
{
  if (!qword_100CDD3F0)
  {
    __chkstk_darwin(0);
    type metadata accessor for Date();
    type metadata accessor for EdgeSunEvents(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100CDD3F0);
    }
  }
}

void sub_100836374(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100836404(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100836474()
{
  result = qword_100CDD4B8;
  if (!qword_100CDD4B8)
  {
    result = swift_getWitnessTable(byte_100A8C010, &type metadata for CalculatorError, v0, v1);
    atomic_store(result, &qword_100CDD4B8);
  }

  return result;
}

double sub_1008364CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for InteractiveMapView(0);
  v14 = v13[8];
  type metadata accessor for WeatherMapDisplayMode();
  sub_1000037E8();
  v16 = *(v15 + 16);
  v29 = v4[1];
  v30 = v29;
  v31 = *(v4 + 40);
  v34 = *(v4 + 56);
  v16(a4 + v14, a1);
  sub_100035B30(v4 + 72, a4 + v13[9]);
  v17 = type metadata accessor for WeatherMapPerformanceTestConditions();
  sub_10001B350(v12, 1, 1, v17);
  sub_1003416A8(v12, v9);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  State.init(wrappedValue:)();
  sub_100836974(v12);
  v18 = (a4 + v13[12]);
  type metadata accessor for ObservableResolver();
  sub_100139100();
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = v13[13];
  *(a4 + v20) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v21 = a4 + v13[14];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a4 + v13[15];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(a4 + v13[16]) = 0x3FE3333333333333;
  v23 = v13[17];
  *(a4 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3B70, qword_100A8C1C0);
  swift_storeEnumTagMultiPayload();
  *a4 = v29;
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4AF0, &qword_100A2EDC0);
  sub_1008369DC();
  *(a4 + 16) = ObservedObject.init(wrappedValue:)();
  *(a4 + 24) = v24;
  v25 = v34;
  *(a4 + 32) = v31;
  *(a4 + 48) = v25;
  v26 = (a4 + v13[10]);
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;

  return result;
}

void *sub_1008367AC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006F14((v0 + 72));
  return v0;
}

uint64_t sub_1008367EC()
{
  sub_1008367AC();

  return swift_deallocClassInstance();
}

uint64_t sub_100836844()
{
  v0 = type metadata accessor for WeatherMapDisplayMode();
  sub_100007074(v0, qword_100D90EF8);
  v1 = sub_10000703C(v0, qword_100D90EF8);
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  [v2 ts_settlingDuration];
  v4 = v3;

  *v1 = v4;
  v5 = enum case for WeatherMapDisplayMode.SnapshotTransition.animated(_:);
  type metadata accessor for WeatherMapDisplayMode.SnapshotTransition();
  sub_1000037E8();
  (*(v6 + 104))(v1, v5);
  v7 = enum case for WeatherMapDisplayMode.interactive(_:);
  v8 = *(*(v0 - 8) + 104);

  return v8(v1, v7, v0);
}

uint64_t sub_100836974(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008369DC()
{
  result = qword_100CA4AF8;
  if (!qword_100CA4AF8)
  {
    v3 = sub_10022E824(&qword_100CA4AF0, &qword_100A2EDC0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4AF8);
  }

  return result;
}

uint64_t sub_100836AE0@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CDD610, &qword_100A8C290);
  return sub_100836B34(v2, a2 + *(v4 + 44));
}

uint64_t sub_100836B34@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = *(type metadata accessor for WindComponentViewModel(0) + 68);
  v12 = *(v5 + 28);
  v13 = type metadata accessor for WindComponentCompassViewModel();
  (*(*(v13 - 8) + 16))(&v10[v12], &a1[v11], v13);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v15 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v15;
  v16 = static Axis.Set.vertical.getter();
  *(inited + 33) = v16;
  v17 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    v17 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v17 = Axis.Set.init(rawValue:)();
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 17);
  v21 = *(a1 + 18);
  v20 = *(a1 + 19);
  KeyPath = swift_getKeyPath();
  swift_bridgeObjectRetain_n();

  sub_100837534(v10, v7);
  sub_100837534(v7, a2);
  v23 = a2 + *(sub_10022C350(&qword_100CDD618, &qword_100A8C2F8) + 48);
  *v23 = v17;
  *(v23 + 8) = v19;
  *(v23 + 16) = v18;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;
  *(v23 + 40) = KeyPath;
  *(v23 + 48) = 0x3FE0000000000000;

  sub_100837598(v10);

  return sub_100837598(v7);
}

void *sub_100836DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIDWORD(__src[0]) = HIDWORD(a1);
  __src[1] = a2;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.subheadline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  LODWORD(__src[0]) = static HierarchicalShapeStyle.primary.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  LOBYTE(v4) = v16;
  v18 = v17;
  sub_10010CD64(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v31[7], __src, 0x70uLL);
  *a3 = v30;
  *(a3 + 8) = v15;
  *(a3 + 16) = v4 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = 0;
  return memcpy((a3 + 97), v31, 0x77uLL);
}

uint64_t sub_100836FDC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v2 - 8);
  v55 = &v47 - v3;
  v4 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for WindComponentCompassViewModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v26 = *(v20 + 16);
  v27 = v1 + *(v25 + 20);
  v52 = v24;
  v26(v24, v27, v18);
  v28 = *v1;
  v29 = *(v1 + 8);
  v53 = v11;
  v51 = v13;
  if (v29 == 1)
  {
    v50 = v28;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    (*(v13 + 8))(v17, v11);
    v50 = v58;
  }

  v31 = *(v6 + 104);
  v31(v10, enum case for Font.TextStyle.title3(_:), v4);
  static Font.Weight.bold.getter();
  v49 = static Font.system(_:weight:)();
  v32 = *(v6 + 8);
  v32(v10, v4);
  v31(v10, enum case for Font.TextStyle.title2(_:), v4);
  static Font.Weight.bold.getter();
  v48 = static Font.system(_:weight:)();
  v32(v10, v4);
  if (v29)
  {
    v33 = v28;
    v34 = v51;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    v34 = v51;
    (*(v51 + 8))(v17, v53);
    v33 = v57;
  }

  v36 = enum case for Font.Leading.tight(_:);
  v37 = type metadata accessor for Font.Leading();
  v38 = *(*(v37 - 8) + 104);
  v39 = v55;
  v38(v55, v36, v37);
  sub_10001B350(v39, 0, 1, v37);
  v40 = sub_1001C987C(v49, v48, v33 & 1, v39);
  v49 = static Font.subheadline.getter();
  v41 = static Font.footnote.getter();
  if (!v29)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    v48 = v40;
    v43 = v34;
    v44 = v42;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v28, 0);
    (*(v43 + 8))(v17, v53);
    LOBYTE(v28) = v56;
  }

  v45 = v55;
  v38(v55, v36, v37);
  sub_10001B350(v45, 0, 1, v37);
  sub_1001C987C(v49, v41, v28 & 1, v45);
  return WindComponentCompassContainerView.init(model:showCircleOutline:primaryLabelFont:secondaryLabelFont:)();
}

uint64_t sub_100837534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100837598(uint64_t a1)
{
  v2 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10083762C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WindComponentCompassViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1008376E8()
{
  result = qword_100CDD6C0;
  if (!qword_100CDD6C0)
  {
    v3 = type metadata accessor for WindComponentCompassContainerView();
    result = swift_getWitnessTable(&protocol conformance descriptor for WindComponentCompassContainerView, v3, v0, v1);
    atomic_store(result, &qword_100CDD6C0);
  }

  return result;
}

uint64_t type metadata accessor for DetailChartConditionInfo(uint64_t a1)
{
  result = qword_100CDD720;
  if (!qword_100CDD720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008377B4(uint64_t a1)
{
  result = type metadata accessor for DetailCondition();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100837878(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DetailChartConditionInfo(0);

  return static DetailCondition.== infix(_:_:)();
}

uint64_t sub_1008378F4(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for DetailChartConditionInfo(0);
  type metadata accessor for DetailCondition();
  sub_10001F9E0();
  sub_100837AC0(v1, v2, &protocol conformance descriptor for DetailCondition);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100837974()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for DetailChartConditionInfo(0);
  type metadata accessor for DetailCondition();
  sub_10001F9E0();
  sub_100837AC0(v0, v1, &protocol conformance descriptor for DetailCondition);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100837A1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for DetailCondition();
  sub_100837AC0(&qword_100CDD760, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100837AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100837B08()
{
  sub_10022C350(&qword_100CBE1B8, &qword_100A55880);
  swift_allocObject();
  return URLHandlerManager.init()();
}

void *sub_100837B4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NanoWeatherUserActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDD800, &qword_100A8C538);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherUserActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDD818, &qword_100A8C540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v25)
  {
    v7 = sub_10002D7F8(v24, v25);
    v8 = __chkstk_darwin(v7);
    v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for WeatherStaticConfigurationActivityHandler();
    v23[3] = v13;
    v23[4] = &off_100C698C8;
    v23[0] = v12;
    v14 = type metadata accessor for ContinueUserActivityHandlerManager();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v23, v13);
    v17 = __chkstk_darwin(v16);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[12] = v13;
    v15[13] = &off_100C698C8;
    v15[9] = v21;
    v15[2] = v5;
    sub_100013188(&v26, (v15 + 3));
    v15[8] = v6;
    sub_100006F14(v23);
    result = sub_100006F14(v24);
    a2[3] = v14;
    a2[4] = &off_100C5E238;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_100837E48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v25;
  if (v25)
  {
    v7 = v26;
    v8 = sub_10002D7F8(v27, v28);
    v23[1] = v23;
    v9 = __chkstk_darwin(v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for AppContinuationBridge(0);
    v24[3] = v14;
    v24[4] = &off_100C50230;
    v24[0] = v13;
    v15 = type metadata accessor for WeatherIntentUserActivityHandler();
    v16 = swift_allocObject();
    v17 = sub_10002D7F8(v24, v14);
    v18 = __chkstk_darwin(v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_100C50230;
    v16[2] = v22;
    v16[7] = v5;
    v16[8] = v6;
    v16[9] = v7;
    sub_100006F14(v24);
    sub_100006F14(v27);
    a2[3] = v15;
    result = sub_10083A9D0(&qword_100CDD838, type metadata accessor for WeatherIntentUserActivityHandler, aI_8);
    a2[4] = result;
    *a2 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100838140()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for WeatherFeatureFlags;
  v10[4] = sub_1000032E4();
  LOBYTE(v10[0]) = 1;
  v4 = isFeatureEnabled(_:)();
  sub_100006F14(v10);
  if (v4)
  {
    type metadata accessor for LocationURLHandlerLink();
  }

  else
  {
    type metadata accessor for LocationURLHandler();
  }

  RegistrationContainer.register<A>(_:name:factory:)();
  v5 = enum case for Scope.singleton(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  v7 = *(v1 + 8);
  v7(v3, v0);
  type metadata accessor for NanoWeatherUserActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherUserActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDD818, &qword_100A8C540);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for CoordinateActivityHandler();
  RegistrationContainer.register<A>(_:name:factory:)();
  v6(v3, v5, v0);
  Definition.inScope(_:)();

  v7(v3, v0);
  type metadata accessor for ShortcutItemHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB9780, &qword_100A4E228);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10083851C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = a1[3];
  sub_10001930C(a1, v12);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v13 = result;
    sub_10002D7F8(v19, v20);
    sub_100007FD0();
    __chkstk_darwin(v14);
    sub_1000037D8();
    v16 = sub_100004C14(v15);
    v17(v16);
    v18 = sub_10083A758(a2, v11, a3, v11, *v12, v13, a4, a5);
    sub_100006F14(v19);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100838720(void *a1, uint64_t (*a2)(void))
{
  sub_10001930C(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v5 = a1[3];
    sub_10001930C(a1, v5);
    type metadata accessor for CoordinateActivityHandler();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v6 = result;
      sub_10002D7F8(v20, v21);
      sub_100007FD0();
      __chkstk_darwin(v7);
      sub_1000037D8();
      v9 = sub_1000090CC(v8);
      v10(v9);
      v11 = *v5;
      v12 = type metadata accessor for AppContinuationBridge(0);
      v19[3] = v12;
      v19[4] = &off_100C50230;
      v19[0] = v11;
      a2(0);
      v13 = swift_allocObject();
      sub_10002D7F8(v19, v12);
      sub_100007FD0();
      __chkstk_darwin(v14);
      sub_1000037D8();
      v16 = sub_1000090CC(v15);
      v17(v16);
      v18 = *v11;
      v13[5] = v12;
      v13[6] = &off_100C50230;
      v13[2] = v18;
      v13[7] = v6;
      sub_100006F14(v19);
      sub_100006F14(v20);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100838934@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for AppContinuationBridge(0);
    v19[3] = v10;
    v19[4] = &off_100C50230;
    v19[0] = v9;
    v11 = type metadata accessor for WeatherStaticConfigurationActivityHandler();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v19, v10);
    v14 = __chkstk_darwin(v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_100C50230;
    v12[2] = v18;
    sub_100006F14(v19);
    result = sub_100006F14(v20);
    a2[3] = v11;
    a2[4] = &off_100C698C8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100838B58(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v66)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798, &unk_100A4E240);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v65)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718, &unk_100A4FE10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  v3 = type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v61[3] = v3;
  v61[4] = &off_100C74090;
  v61[0] = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v60)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  v48 = v67;
  v49 = v66;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  v47 = v4;

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v58)
  {
    v5 = sub_10002D7F8(v64, v65);
    v46[5] = v46;
    v6 = __chkstk_darwin(v5);
    v8 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v61, v3);
    v46[4] = v46;
    v11 = __chkstk_darwin(v10);
    v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v59, v60);
    v46[3] = v46;
    v16 = __chkstk_darwin(v15);
    v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v8;
    v21 = *v13;
    v22 = *v18;
    v23 = type metadata accessor for LocationFinder();
    v56[3] = v23;
    v56[4] = &off_100C5EE88;
    v55 = &off_100C74090;
    v56[0] = v20;
    v54 = v3;
    v53[0] = v21;
    v24 = type metadata accessor for AppContinuationBridge(0);
    v51 = v24;
    v52 = &off_100C50230;
    v50[0] = v22;
    type metadata accessor for CoordinateActivityHandler();
    v25 = swift_allocObject();
    v26 = sub_10002D7F8(v56, v23);
    v46[2] = v46;
    v27 = __chkstk_darwin(v26);
    v29 = (v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = sub_10002D7F8(v53, v54);
    v46[1] = v46;
    v32 = __chkstk_darwin(v31);
    v34 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = sub_10002D7F8(v50, v51);
    v37 = __chkstk_darwin(v36);
    v39 = (v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39, v37);
    v41 = *v29;
    v42 = *v34;
    v43 = *v39;
    v25[7] = v23;
    v25[8] = &off_100C5EE88;
    v25[4] = v41;
    v25[17] = v3;
    v25[18] = &off_100C74090;
    v25[14] = v42;
    v25[22] = v24;
    v25[23] = &off_100C50230;
    v25[19] = v43;
    v44 = v48;
    v25[2] = v49;
    v25[3] = v44;
    sub_100013188(&v62, (v25 + 9));
    v45 = v47;
    v25[24] = sub_10083AA1C;
    v25[25] = v45;
    v25[26] = sub_10083AA18;
    v25[27] = v45;
    sub_100013188(&v57, (v25 + 28));
    sub_100006F14(v50);
    sub_100006F14(v53);
    sub_100006F14(v56);
    sub_100006F14(v59);
    sub_100006F14(v61);
    sub_100006F14(v64);
    return v25;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1008392BC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for CoordinateActivityHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1908, &qword_100A76D00);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v12)
    {
      v4 = sub_10002D7F8(v11, v12);
      v5 = __chkstk_darwin(v4);
      v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = sub_10083A8A0(v3, *v7);
      sub_100006F14(v11);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100839428@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RootViewControllerResolver();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C50220;
  *a1 = result;
  return result;
}

uint64_t sub_100839470(uint64_t a1, void *a2)
{
  v8[3] = &type metadata for WeatherFeatureFlags;
  v8[4] = sub_1000032E4();
  LOBYTE(v8[0]) = 1;
  v3 = isFeatureEnabled(_:)();
  sub_100006F14(v8);
  sub_1000161C0(a2, a2[3]);
  if (v3)
  {
    type metadata accessor for LocationURLHandlerLink();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v8[0] = result;
      v5 = &unk_100CBC728;
      v6 = type metadata accessor for LocationURLHandlerLink;
      v7 = &unk_100A53428;
LABEL_6:
      sub_10083A9D0(v5, v6, v7);
      URLHandlerManager.add<A>(handler:)();
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for LocationURLHandler();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v8[0] = result;
      v5 = &qword_100CDD810;
      v6 = type metadata accessor for LocationURLHandler;
      v7 = byte_100A96CD4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008395C8(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  v2 = type metadata accessor for ShortcutItemHandler();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_10083A9D0(&qword_100CDD808, type metadata accessor for ShortcutItemHandler, aU_22);
    v5[0] = v4;
    ShortcutItemHandlerManager.add(_:)();
    return sub_100006F14(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100839690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for AppContinuationBridge(0);
  v10 = &off_100C50230;
  *&v8 = a2;
  sub_10022C350(&qword_100CDD830, &qword_100A8C558);
  type metadata accessor for ShortcutItemHandlerPattern();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  ShortcutItemHandlerPattern.init(predicate:)();
  *(a3 + 16) = v6;
  *(a3 + 24) = a1;
  sub_100013188(&v8, a3 + 32);
  return a3;
}

void *sub_1008397A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v131 = a6;
  v130 = a4;
  v126 = a7;
  v129 = a3;
  v128 = a2;
  v127 = a1;
  v125 = *a7;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v9 = *(ParameterKey - 8);
  __chkstk_darwin(ParameterKey);
  v124 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v122 = &v114 - v12;
  __chkstk_darwin(v13);
  v120 = &v114 - v14;
  __chkstk_darwin(v15);
  v119 = &v114 - v16;
  __chkstk_darwin(v17);
  v118 = &v114 - v18;
  __chkstk_darwin(v19);
  v117 = &v114 - v20;
  __chkstk_darwin(v21);
  v116 = &v114 - v22;
  __chkstk_darwin(v23);
  v115 = &v114 - v24;
  __chkstk_darwin(v25);
  v27 = &v114 - v26;
  v143 = type metadata accessor for AppContinuationBridge(0);
  v144 = &off_100C50230;
  *&v142 = a5;
  sub_10022C350(&qword_100CA3DA8, &unk_100A3F3C0);
  inited = swift_initStackObject();
  v123 = inited;
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = xmmword_100A8C4F0;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  sub_10022C350(&qword_100CDD820, &qword_100A8C548);
  v141 = type metadata accessor for URLHandlerPattern.Param();
  v29 = *(v141 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  v121 = v32;
  *(v32 + 16) = xmmword_100A41BA0;
  v33 = (v32 + v31);
  v34 = v9;
  v35 = *(v9 + 104);
  v137 = v9 + 104;
  v35(v27, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey);
  v134 = v35;
  Parameter = WeatherQueryParameterKey.rawValue.getter();
  v38 = v37;
  v39 = *(v34 + 8);
  v136 = v34 + 8;
  v138 = v39;
  v40 = v27;
  v41 = ParameterKey;
  v39(v40, ParameterKey);
  *v33 = Parameter;
  v33[1] = v38;
  v42 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v133 = *(v29 + 104);
  v139 = v29 + 104;
  v140 = v33;
  v135 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v43 = v141;
  v133(v33, enum case for URLHandlerPattern.Param.optionalExists(_:), v141);
  v132 = v30;
  v44 = (v33 + v30);
  v45 = v115;
  v46 = v41;
  v35(v115, enum case for WeatherQueryParameterKey.long(_:), v41);
  v47 = v45;
  v48 = WeatherQueryParameterKey.rawValue.getter();
  v50 = v49;
  v51 = v138;
  v138(v47, v46);
  *v44 = v48;
  v44[1] = v50;
  v52 = v42;
  v53 = v133;
  v133(v44, v52, v43);
  v54 = (v140 + 2 * v30);
  v55 = v116;
  v56 = v134;
  v134(v116, enum case for WeatherQueryParameterKey.lng(_:), v46);
  v57 = WeatherQueryParameterKey.rawValue.getter();
  v59 = v58;
  v60 = v46;
  v51(v55, v46);
  *v54 = v57;
  v54[1] = v59;
  v61 = v135;
  v53(v54, v135, v141);
  v62 = v132;
  v63 = (v140 + 3 * v132);
  v64 = v117;
  v56(v117, enum case for WeatherQueryParameterKey.city(_:), v46);
  v65 = WeatherQueryParameterKey.rawValue.getter();
  v67 = v66;
  v68 = v138;
  v138(v64, v60);
  *v63 = v65;
  v63[1] = v67;
  v69 = v61;
  v70 = v133;
  v133(v63, v69, v141);
  v71 = (v140 + 4 * v62);
  v72 = v118;
  v56(v118, enum case for WeatherQueryParameterKey.isLocal(_:), v60);
  v73 = v56;
  v74 = v72;
  v75 = WeatherQueryParameterKey.rawValue.getter();
  v77 = v76;
  v68(v74, v60);
  *v71 = v75;
  v71[1] = v77;
  v78 = v135;
  v79 = v141;
  v70(v71, v135, v141);
  v80 = v140;
  v81 = (v140 + 5 * v62);
  v82 = v119;
  v73(v119, enum case for WeatherQueryParameterKey.date(_:), v60);
  v83 = WeatherQueryParameterKey.rawValue.getter();
  v85 = v84;
  v138(v82, v60);
  *v81 = v83;
  v81[1] = v85;
  v86 = v78;
  v87 = v133;
  v133((v80 + 5 * v62), v86, v79);
  v88 = (v80 + 6 * v62);
  v89 = v120;
  v134(v120, enum case for WeatherQueryParameterKey.position(_:), v60);
  v90 = WeatherQueryParameterKey.rawValue.getter();
  v92 = v91;
  v138(v89, v60);
  *v88 = v90;
  v88[1] = v92;
  v93 = v135;
  v87(v88, v135, v141);
  v94 = (v140 + 7 * v62);
  v95 = v122;
  v96 = v60;
  v97 = v134;
  v134(v122, enum case for WeatherQueryParameterKey.temperature(_:), v60);
  v98 = WeatherQueryParameterKey.rawValue.getter();
  v100 = v99;
  v101 = v138;
  v138(v95, v96);
  *v94 = v98;
  v94[1] = v100;
  v102 = v141;
  v87(v94, v93, v141);
  v103 = &v140[v132];
  v104 = v124;
  v97(v124, enum case for WeatherQueryParameterKey.fromAdd(_:), v96);
  v105 = WeatherQueryParameterKey.rawValue.getter();
  v107 = v106;
  v101(v104, v96);
  *v103 = v105;
  v103[1] = v107;
  v87(v103, v135, v102);
  sub_10022C350(&qword_100CDD828, &qword_100A8C550);
  Dictionary.init(dictionaryLiteral:)();
  sub_10047A9BC(v123, 0, 0);
  v109 = v108;

  swift_setDeallocating();
  sub_10015A594();
  v110 = v126;
  v126[12] = v109;
  v111 = v128;
  v110[2] = v127;
  v110[3] = v111;
  v112 = v130;
  v110[4] = v129;
  v110[5] = v112;
  sub_100013188(&v142, (v110 + 6));
  v110[11] = v131;
  return v110;
}

void *sub_10083A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v74 = a7;
  v75 = a4;
  v76 = a6;
  v72 = a2;
  v73 = a3;
  v71 = a1;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v9 = *(ParameterKey - 8);
  __chkstk_darwin(ParameterKey);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  __chkstk_darwin(v13);
  v67 = &v64 - v14;
  __chkstk_darwin(v15);
  v66 = &v64 - v16;
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  v87 = type metadata accessor for AppContinuationBridge(0);
  v88 = &off_100C50230;
  *&v86 = a5;
  sub_10022C350(&qword_100CDD820, &qword_100A8C548);
  v20 = type metadata accessor for URLHandlerPattern.Param();
  v21 = *(v20 - 8);
  v80 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v70 = v23;
  *(v23 + 16) = xmmword_100A3B030;
  v24 = (v23 + v22);
  v25 = *(v9 + 104);
  v79 = v9 + 104;
  v25(v19, enum case for WeatherQueryParameterKey.lat(_:), ParameterKey);
  v78 = v25;
  Parameter = WeatherQueryParameterKey.rawValue.getter();
  v28 = v27;
  v65 = *(v9 + 8);
  v85 = v9 + 8;
  v65(v19, ParameterKey);
  v77 = v24;
  *v24 = Parameter;
  v24[1] = v28;
  v84 = enum case for URLHandlerPattern.Param.optionalExists(_:);
  v29 = *(v21 + 104);
  v82 = v20;
  v83 = v29;
  v81 = v21 + 104;
  (v29)(v24);
  v30 = v80;
  v31 = (v24 + v80);
  v32 = v66;
  v25(v66, enum case for WeatherQueryParameterKey.long(_:), ParameterKey);
  v33 = WeatherQueryParameterKey.rawValue.getter();
  v35 = v34;
  v36 = ParameterKey;
  v37 = v65;
  v65(v32, ParameterKey);
  *v31 = v33;
  v31[1] = v35;
  v38 = v84;
  v39 = v83;
  v83(v31, v84, v20);
  v40 = v77;
  v41 = (v77 + 2 * v30);
  v42 = v67;
  v43 = v78;
  v78(v67, enum case for WeatherQueryParameterKey.lng(_:), v36);
  v44 = WeatherQueryParameterKey.rawValue.getter();
  v46 = v45;
  v37(v42, v36);
  *v41 = v44;
  v41[1] = v46;
  v39(v41, v38, v82);
  v47 = v80;
  v48 = (v40 + 3 * v80);
  v49 = v68;
  v43(v68, enum case for WeatherQueryParameterKey.city(_:), v36);
  v50 = WeatherQueryParameterKey.rawValue.getter();
  v52 = v51;
  v37(v49, v36);
  *v48 = v50;
  v48[1] = v52;
  v53 = v82;
  v83(v48, v84, v82);
  v54 = (v77 + 4 * v47);
  v55 = v69;
  v78(v69, enum case for WeatherQueryParameterKey.isLocal(_:), v36);
  v56 = WeatherQueryParameterKey.rawValue.getter();
  v58 = v57;
  v37(v55, v36);
  *v54 = v56;
  v54[1] = v58;
  v83(v54, v84, v53);
  sub_10022C350(&qword_100CDD828, &qword_100A8C550);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CB5260, &unk_100A48A20);
  type metadata accessor for URLHandlerPattern();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100A3BBA0;

  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();

  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();
  URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();
  v60 = v74;
  v74[12] = v59;
  v61 = v72;
  v60[2] = v71;
  v60[3] = v61;
  v62 = v75;
  v60[4] = v73;
  v60[5] = v62;
  sub_100013188(&v86, (v60 + 6));
  v60[11] = v76;
  return v60;
}

uint64_t sub_10083A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v24 = type metadata accessor for AppContinuationBridge(0);
  v25 = &off_100C50230;
  v23[0] = a5;
  a7(0);
  v16 = swift_allocObject();
  sub_10002D7F8(v23, v24);
  sub_100007FD0();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v19 = sub_100004C14(v18);
  v20(v19);
  v21 = a8(a1, a2, a3, a4, *a5, a6, v16);
  sub_100006F14(v23);
  return v21;
}

uint64_t sub_10083A8A0(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C50230;
  v12[0] = a2;
  type metadata accessor for ShortcutItemHandler();
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_100839690(a1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

uint64_t sub_10083A9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10083AA68()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2A38 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();
}

uint64_t sub_10083AB00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for HourlyForecastComponentView(0);
  sub_1000302D8(v1 + *(v13 + 28), v12, &qword_100CA71B0, &qword_100A32330);
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

uint64_t sub_10083ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v57 = a2;
  v2 = type metadata accessor for EnvironmentValues();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridItem.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10022C350(&qword_100CDDAC0, &unk_100A8C6B8);
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v53 = sub_10022C350(&qword_100CDDAB0, &qword_100A8C6B0);
  __chkstk_darwin(v53);
  v54 = &v46 - v13;
  v14 = sub_1001BD204();
  sub_10022C350(&qword_100CAD610, &qword_100A3CA00);
  type metadata accessor for GridItem();
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  v50 = xmmword_100A3C980;
  *v9 = xmmword_100A3C980;
  v15 = enum case for GridItem.Size.flexible(_:);
  v16 = *(v7 + 104);
  v16(v9, enum case for GridItem.Size.flexible(_:), v6);
  GridItem.init(_:spacing:alignment:)();
  *v9 = v14;
  v16(v9, enum case for GridItem.Size.fixed(_:), v6);
  GridItem.init(_:spacing:alignment:)();
  *v9 = v50;
  v16(v9, v15, v6);
  GridItem.init(_:spacing:alignment:)();
  v17 = v51;
  v58 = v51;
  static VerticalAlignment.center.getter();
  v59[0] = 0;
  sub_1001C8078(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022C350(&qword_100CDDAE8, &qword_100A8C6D0);
  sub_10083D7A8();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v18 = static Edge.Set.horizontal.getter();
  v19 = v17 + *(type metadata accessor for HourlyForecastComponentView(0) + 20);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v22 = v47;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v20, 0);
    (*(v48 + 8))(v22, v49);
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v54;
  (*(v55 + 32))(v54, v12, v56);
  v32 = &v31[*(v53 + 36)];
  *v32 = v18;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v31;
  v43 = v57;
  sub_10011C0F0(v42, v57, &qword_100CDDAB0, &qword_100A8C6B0);
  result = sub_10022C350(&qword_100CDDA98, &qword_100A8C6A8);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v35;
  *(v45 + 16) = v37;
  *(v45 + 24) = v39;
  *(v45 + 32) = v41;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_10083B324(uint64_t a1)
{
  v2 = type metadata accessor for HourlyForecastComponentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + *(type metadata accessor for HourlyForecastComponentViewModel(0) + 20));
  sub_1001C7690(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HourlyForecastComponentView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C7944(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_10022C350(&qword_100CCB4B0, &qword_100A6A540);
  sub_10022C350(&qword_100CDDB00, &qword_100A8C6D8);
  sub_100006F64(&qword_100CDDB38, &qword_100CCB4B0, &qword_100A6A540, &protocol conformance descriptor for [A]);
  sub_10083D82C();
  sub_1001C8078(&qword_100CDDB40, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, byte_100A6A478);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10083B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v19 = 0xD00000000000001ALL;
  v20 = 0x8000000100AE0C00;
  sub_1000302D8(a2, v8, &qword_100CC2B20, &unk_100A6A1C0);
  v9 = type metadata accessor for UUID();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CC2B20, &unk_100A6A1C0);
    v10 = 0xE500000000000000;
    v11 = 0x5445534E55;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v10 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13._countAndFlagsBits = v11;
  v13._object = v10;
  String.append(_:)(v13);

  v14 = v19;
  v15 = v20;
  v16 = sub_10022C350(&qword_100CDDA90, &qword_100A8C6A0);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = sub_10022C350(&qword_100CDDAD0, &qword_100A8C6C8);
  v18 = (a3 + *(result + 52));
  *v18 = v14;
  v18[1] = v15;
  return result;
}

uint64_t sub_10083B71C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v67 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v67);
  v68 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for AccessibilityTraits();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_10022C350(&qword_100CDDB28, &unk_100A8C6F0);
  __chkstk_darwin(v81);
  inited = &v64 - v11;
  v73 = sub_10022C350(&qword_100CDDB48, &unk_100A8C700);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v82 = &v64 - v13;
  v75 = sub_10022C350(&qword_100CDDB20, &qword_100A8C6E8);
  __chkstk_darwin(v75);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v64 - v17;
  __chkstk_darwin(v18);
  v74 = &v64 - v19;
  __chkstk_darwin(v20);
  v79 = &v64 - v21;
  v65 = sub_10022C350(&qword_100CDDB10, &qword_100A8C6E0);
  __chkstk_darwin(v65);
  v66 = &v64 - v22;
  LOBYTE(v23) = 1;
  v24 = 1;
  if ((sub_1001C80C0() & 1) == 0)
  {
    if (qword_100CA28D0 != -1)
    {
LABEL_23:
      swift_once();
    }

    v24 = byte_100CDD9E0;
  }

  *inited = 0;
  inited[8] = v23;
  v25 = &inited[*(v81 + 36)];
  v80 = a2;
  sub_10083C0B8(a2, a1, v24, v25);
  static AccessibilityChildBehavior.ignore.getter();
  a2 = &unk_100A8C6F0;
  v70 = sub_100006F64(&qword_100CDDB30, &qword_100CDDB28, &unk_100A8C6F0, &protocol conformance descriptor for GridRow<A>);
  View.accessibilityElement(children:)();
  v26 = *(v8 + 8);
  v8 += 8;
  v26(v10, v7);
  sub_1000180EC(inited, &qword_100CDDB28, &unk_100A8C6F0);
  sub_10022C350(&qword_100CA3DA8, &unk_100A3F3C0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_100A3B020;
  sub_1001C905C();
  *(inited + 4) = v27;
  *(inited + 5) = v28;
  v29 = sub_1001C81B4();
  v31 = v30;
  v32 = 0;
  v33 = 0;
  *(inited + 6) = v29;
  *(inited + 7) = v31;
  if (v24)
  {
    v32 = sub_1005FAC18();
  }

  *(inited + 8) = v32;
  *(inited + 9) = v33;
  LOBYTE(v23) = a1;
  v10 = 0;
  *(inited + 10) = sub_1001C9480();
  *(inited + 11) = v34;
  v7 = _swiftEmptyArrayStorage;
LABEL_7:
  v35 = 16 * v10 + 40;
  while (v10 != 4)
  {
    if (v10 > 3)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = (v10 + 1);
    v36 = v35 + 16;
    v23 = *&inited[v35];
    v35 += 16;
    if (v23)
    {
      a2 = *&inited[v36 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v7 = v38;
      }

      v8 = v7[2];
      if (v8 >= v7[3] >> 1)
      {
        sub_100109810();
        v7 = v39;
      }

      v7[2] = v8 + 1;
      v37 = &v7[2 * v8];
      v37[4] = a2;
      v37[5] = v23;
      goto LABEL_7;
    }
  }

  swift_setDeallocating();
  sub_10015A594();
  v85 = v7;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v85 = v40;
  v86 = v42;
  v83 = v81;
  v84 = v70;
  swift_getOpaqueTypeConformance2();
  inited = sub_10002D5A4();
  v43 = v73;
  v23 = v82;
  View.accessibilityLabel<A>(_:)();

  (*(v72 + 8))(v23, v43);
  v44 = v71;
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  v7 = &qword_100CDDB20;
  v10 = &qword_100A8C6E8;
  sub_1000180EC(v15, &qword_100CDDB20, &qword_100A8C6E8);
  v45 = v76;
  static AccessibilityTraits.isButton.getter();
  v15 = v74;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v77 + 8))(v45, v78);
  sub_1000180EC(v44, &qword_100CDDB20, &qword_100A8C6E8);
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  a2 = swift_allocObject();
  a2[1] = xmmword_100A2C3F0;
  sub_1001C905C();
  *(a2 + 4) = v46;
  *(a2 + 5) = v47;
  v8 = v79;
  LOBYTE(v23) = v15;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_1000180EC(v15, &qword_100CDDB20, &qword_100A8C6E8);
  v85 = 0x5F72756F68;
  v86 = 0xE500000000000000;
  v48 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1001C79A8(a1, *(v80 + *(v48 + 20)));
  if (v50)
  {
    v51 = -1;
  }

  else
  {
    v51 = v49;
  }

  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    goto LABEL_22;
  }

  v83 = v53;
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55 = v86;
  v56 = v68;
  *v68 = v85;
  *(v56 + 8) = v55;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v57 = v66;
  v58 = &v66[*(v65 + 36)];
  v59 = type metadata accessor for AutomationInfoProperty(0);
  sub_1001C7690(v56, &v58[*(v59 + 24)], type metadata accessor for AutomationInfo);
  sub_1001C9E84(v56);
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  *(v58 + 2) = swift_getKeyPath();
  v58[24] = 0;
  sub_10011C0F0(v8, v57, &qword_100CDDB20, &qword_100A8C6E8);
  KeyPath = swift_getKeyPath();
  v61 = v69;
  sub_10011C0F0(v57, v69, &qword_100CDDB10, &qword_100A8C6E0);
  result = sub_10022C350(&qword_100CDDB00, &qword_100A8C6D8);
  v63 = (v61 + *(result + 36));
  *v63 = KeyPath;
  v63[1] = 0x3FE999999999999ALL;
  return result;
}

uint64_t sub_10083C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v88 = a4;
  v7 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v7 - 8);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v73 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v74 = *(v11 - 8);
  v75 = v11;
  __chkstk_darwin(v11);
  v73 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  v20 = sub_10022C350(&qword_100CB66D8, &qword_100A8C770);
  __chkstk_darwin(v20 - 8);
  v87 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v85 = &v73 - v23;
  v24 = sub_10022C350(&qword_100CDDB50, &qword_100A8C778);
  __chkstk_darwin(v24 - 8);
  v86 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  v29 = sub_10022C350(&qword_100CDDB58, &qword_100A8C780);
  __chkstk_darwin(v29 - 8);
  v84 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v81 = &v73 - v32;
  sub_1001C76EC(a2, &v73 - v32);
  *v28 = static HorizontalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v33 = *(sub_10022C350(&qword_100CDDB60, &qword_100A8C788) + 44);
  v83 = v28;
  v34 = a1;
  sub_10083C8A8(a2, a1, v4, &v28[v33]);
  v89 = sub_1001C9480();
  v90 = v35;
  sub_10002D5A4();
  v36 = Text.init<A>(_:)();
  v77 = v37;
  v78 = v36;
  v39 = v38;
  v79 = v40;
  v41 = *(v14 + 104);
  v41(v19, enum case for Font.TextStyle.title3(_:), v13);
  static Font.Weight.medium.getter();
  v76 = static Font.system(_:weight:)();
  v42 = *(v14 + 8);
  v42(v19, v13);
  v43 = sub_1001C82B4();
  v44 = &enum case for Font.TextStyle.footnote(_:);
  if ((v43 & 1) == 0)
  {
    v44 = &enum case for Font.TextStyle.body(_:);
  }

  v41(v16, *v44, v13);
  static Font.Weight.bold.getter();
  v45 = static Font.system(_:weight:)();
  v42(v16, v13);
  v46 = v34 + *(type metadata accessor for HourlyForecastComponentView(0) + 20);
  v47 = *v46;
  if (*(v46 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v49 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v47, 0);
    (*(v74 + 8))(v49, v75);
    LOBYTE(v47) = v89;
  }

  v50 = enum case for Font.Leading.tight(_:);
  v51 = type metadata accessor for Font.Leading();
  v52 = v80;
  (*(*(v51 - 8) + 104))(v80, v50, v51);
  sub_10001B350(v52, 0, 1, v51);
  v53 = v82;
  sub_1000302D8(v52, v82, &qword_100CACFF0, &unk_100A48000);
  v54 = v76;

  sub_1001C987C(v54, v45, v47 & 1, v53);
  v55 = v78;
  v56 = v39;
  v57 = v77;
  v58 = Text.font(_:)();
  v60 = v59;
  LODWORD(v75) = v61;
  v82 = v62;

  sub_10010CD64(v55, v57, v56 & 1);

  sub_1000180EC(v52, &qword_100CACFF0, &unk_100A48000);
  v89 = v58;
  v90 = v60;
  v63 = v75 & 1;
  v91 = v75 & 1;
  v92 = v82;
  v64 = v85;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v58, v60, v63);

  v65 = v81;
  v66 = v84;
  sub_1000302D8(v81, v84, &qword_100CDDB58, &qword_100A8C780);
  v67 = v83;
  v68 = v86;
  sub_1000302D8(v83, v86, &qword_100CDDB50, &qword_100A8C778);
  v69 = v87;
  sub_1000302D8(v64, v87, &qword_100CB66D8, &qword_100A8C770);
  v70 = v88;
  sub_1000302D8(v66, v88, &qword_100CDDB58, &qword_100A8C780);
  v71 = sub_10022C350(&qword_100CDDB68, &qword_100A8C790);
  sub_1000302D8(v68, v70 + *(v71 + 48), &qword_100CDDB50, &qword_100A8C778);
  sub_1000302D8(v69, v70 + *(v71 + 64), &qword_100CB66D8, &qword_100A8C770);
  sub_1000180EC(v64, &qword_100CB66D8, &qword_100A8C770);
  sub_1000180EC(v67, &qword_100CDDB50, &qword_100A8C778);
  sub_1000180EC(v65, &qword_100CDDB58, &qword_100A8C780);
  sub_1000180EC(v69, &qword_100CB66D8, &qword_100A8C770);
  sub_1000180EC(v68, &qword_100CDDB50, &qword_100A8C778);
  return sub_1000180EC(v66, &qword_100CDDB58, &qword_100A8C780);
}

uint64_t sub_10083C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v127) = a3;
  v132 = a2;
  v129 = a4;
  v5 = sub_10022C350(&qword_100CB66D8, &qword_100A8C770);
  __chkstk_darwin(v5 - 8);
  v114 = &v101 - v6;
  v134 = sub_10022C350(&qword_100CDDB70, &qword_100A8C798);
  __chkstk_darwin(v134);
  v113 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v101 - v9;
  v10 = sub_10022C350(&qword_100CDDB78, &qword_100A8C7A0);
  __chkstk_darwin(v10 - 8);
  v128 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v124 = sub_10022C350(&qword_100CDDB80, &qword_100A8C7A8);
  __chkstk_darwin(v124);
  v125 = &v101 - v15;
  v16 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v122 = *(v16 - 8);
  v123 = v16;
  __chkstk_darwin(v16);
  v121 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for EnvironmentValues();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ColorSchemeContrast();
  v130 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v25 - 8);
  v27 = &v101 - v26;
  v117 = sub_10022C350(&qword_100CBB910, &qword_100A5B450);
  __chkstk_darwin(v117);
  v115 = (&v101 - v28);
  v120 = sub_10022C350(&qword_100CDDB88, &qword_100A8C7B0);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - v29;
  v30 = sub_10022C350(&qword_100CDDB90, &qword_100A8C7B8);
  __chkstk_darwin(v30);
  v119 = &v101 - v31;
  v32 = sub_10022C350(&qword_100CDDB98, &qword_100A8C7C0);
  __chkstk_darwin(v32 - 8);
  v126 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v101 - v35;
  v37 = a1;
  v38 = sub_1001C9B04();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v133 = v14;
  v131 = v36;
  v111 = v21;
  v110 = v24;
  v109 = v19;
  if (v41)
  {
    v104 = v30;
    v105 = v37;
    sub_1001C9B04();
    Image.init(systemName:)();
    v42 = v132;
    sub_10083AB00(v24);
    v43 = v130;
    (*(v130 + 104))(v21, enum case for ColorSchemeContrast.increased(_:), v19);
    v44 = static ColorSchemeContrast.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v21, v19);
    v45(v24, v19);
    v46 = type metadata accessor for Image.TemplateRenderingMode();
    v47 = &enum case for Image.TemplateRenderingMode.template(_:);
    if ((v44 & 1) == 0)
    {
      v47 = &enum case for Image.TemplateRenderingMode.original(_:);
    }

    (*(*(v46 - 8) + 104))(v27, *v47, v46);
    sub_10001B350(v27, 0, 1, v46);
    v103 = Image.renderingMode(_:)();

    sub_1000180EC(v27, &qword_100CBB908, &unk_100A511B0);
    v102 = static Font.title3.getter();
    if (sub_1001C82B4())
    {
      v48 = static Font.footnote.getter();
    }

    else
    {
      v48 = static Font.body.getter();
    }

    v50 = v48;
    v51 = v42 + *(type metadata accessor for HourlyForecastComponentView(0) + 20);
    v52 = *v51;
    v53 = v125;
    if (*(v51 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v55 = v50;
      v56 = v106;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v52, 0);
      v57 = v56;
      v50 = v55;
      (*(v107 + 8))(v57, v108);
      LOBYTE(v52) = v135;
    }

    v58 = v117;
    v59 = v115;
    v60 = (v115 + *(v117 + 36));
    v61 = type metadata accessor for FontWithSmallVariantModifier(0);
    v62 = *(v61 + 24);
    v63 = enum case for Font.Leading.tight(_:);
    v64 = type metadata accessor for Font.Leading();
    (*(*(v64 - 8) + 104))(v60 + v62, v63, v64);
    sub_10001B350(v60 + v62, 0, 1, v64);
    *v60 = v102;
    v60[1] = v50;
    *(v60 + *(v61 + 28)) = v52 & 1;
    *v59 = v103;
    v65 = v121;
    static TypesettingLanguageAwareLineHeightRatio.disable.getter();
    v66 = sub_1001CAB0C();
    v67 = v116;
    View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
    (*(v122 + 8))(v65, v123);
    sub_1000180EC(v59, &qword_100CBB910, &qword_100A5B450);
    v135 = v58;
    v136 = v66;
    swift_getOpaqueTypeConformance2();
    v69 = v119;
    v68 = v120;
    View.accessibilityHidden(_:)();
    (*(v118 + 8))(v67, v68);
    sub_1000302D8(v69, v53, &qword_100CDDB90, &qword_100A8C7B8);
    swift_storeEnumTagMultiPayload();
    sub_10083DBD8();
    v36 = v131;
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v69, &qword_100CDDB90, &qword_100A8C7B8);
    v14 = v133;
    v49 = v134;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10083DBD8();
    _ConditionalContent<>.init(storage:)();
    v49 = v134;
  }

  v70 = 1;
  if (v127)
  {
    sub_1005FAAFC();
    v71 = Double.formattedPercent(roundToNearestPercent:)(1);
    v125 = sub_1001BD510(v71._countAndFlagsBits, v71._object);
    v73 = v72;
    v75 = v74;
    v127 = v76;

    v77 = v110;
    sub_10083AB00(v110);
    v78 = v130;
    v79 = v111;
    v80 = v109;
    (*(v130 + 104))(v111, enum case for ColorSchemeContrast.increased(_:), v109);
    v81 = static ColorSchemeContrast.== infix(_:_:)();
    v82 = *(v78 + 8);
    v82(v79, v80);
    v82(v77, v80);
    if (v81)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.cyan.getter();
    }

    v83 = v125;
    v84 = Text.foregroundColor(_:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    sub_10010CD64(v83, v73, v75 & 1);

    v135 = v84;
    v136 = v86;
    v137 = v88 & 1;
    v138 = v90;
    v91 = v114;
    View.accessibilityHidden(_:)();
    sub_10010CD64(v84, v86, v88 & 1);

    v92 = v91;
    v93 = v113;
    sub_10011C0F0(v92, v113, &qword_100CB66D8, &qword_100A8C770);
    v49 = v134;
    *(v93 + *(v134 + 36)) = 1;
    v94 = v112;
    sub_10011C0F0(v93, v112, &qword_100CDDB70, &qword_100A8C798);
    v14 = v133;
    sub_10011C0F0(v94, v133, &qword_100CDDB70, &qword_100A8C798);
    v70 = 0;
    v36 = v131;
  }

  sub_10001B350(v14, v70, 1, v49);
  v95 = v126;
  sub_1000302D8(v36, v126, &qword_100CDDB98, &qword_100A8C7C0);
  v96 = v128;
  sub_1000302D8(v14, v128, &qword_100CDDB78, &qword_100A8C7A0);
  v97 = v129;
  *v129 = 0;
  *(v97 + 8) = 1;
  v98 = sub_10022C350(&qword_100CDDBB0, &qword_100A8C7C8);
  sub_1000302D8(v95, v97 + v98[12], &qword_100CDDB98, &qword_100A8C7C0);
  sub_1000302D8(v96, v97 + v98[16], &qword_100CDDB78, &qword_100A8C7A0);
  v99 = v97 + v98[20];
  *v99 = 0;
  v99[8] = 1;
  sub_1000180EC(v14, &qword_100CDDB78, &qword_100A8C7A0);
  sub_1000180EC(v36, &qword_100CDDB98, &qword_100A8C7C0);
  sub_1000180EC(v96, &qword_100CDDB78, &qword_100A8C7A0);
  return sub_1000180EC(v95, &qword_100CDDB98, &qword_100A8C7C0);
}

unint64_t sub_10083D600()
{
  result = qword_100CDDAA0;
  if (!qword_100CDDAA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDDA98, &qword_100A8C6A8);
    v4[0] = sub_10083D68C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDAA0);
  }

  return result;
}

unint64_t sub_10083D68C()
{
  result = qword_100CDDAA8;
  if (!qword_100CDDAA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDDAB0, &qword_100A8C6B0);
    v4[0] = sub_100006F64(&qword_100CDDAB8, &qword_100CDDAC0, &unk_100A8C6B8, &protocol conformance descriptor for LazyHGrid<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDAA8);
  }

  return result;
}

unint64_t sub_10083D74C()
{
  result = qword_100CDDAD8;
  if (!qword_100CDDAD8)
  {
    result = swift_getWitnessTable(byte_100A8C854, &type metadata for EnableHourlyForecastComponentRenderingWorkaroundViewInputPredicate, v0, v1);
    atomic_store(result, &qword_100CDDAD8);
  }

  return result;
}

unint64_t sub_10083D7A8()
{
  result = qword_100CDDAF0;
  if (!qword_100CDDAF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDDAE8, &qword_100A8C6D0);
    v4[0] = sub_10083D82C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CDDAF0);
  }

  return result;
}

unint64_t sub_10083D82C()
{
  result = qword_100CDDAF8;
  if (!qword_100CDDAF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDDB00, &qword_100A8C6D8);
    v4[0] = sub_10083D8E4();
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDAF8);
  }

  return result;
}

unint64_t sub_10083D8E4()
{
  result = qword_100CDDB08;
  if (!qword_100CDDB08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDDB10, &qword_100A8C6E0);
    v4[0] = sub_10083D9A0();
    v4[1] = sub_1001C8078(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDB08);
  }

  return result;
}

unint64_t sub_10083D9A0()
{
  result = qword_100CDDB18;
  if (!qword_100CDDB18)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CDDB20, &qword_100A8C6E8);
    v4[2] = sub_10022E824(&qword_100CDDB28, &unk_100A8C6F0);
    v4[3] = sub_100006F64(&qword_100CDDB30, &qword_100CDDB28, &unk_100A8C6F0, &protocol conformance descriptor for GridRow<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1001C8078(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDB18);
  }

  return result;
}

uint64_t sub_10083DACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HourlyForecastComponentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10083B71C(a1, v6, a2);
}

uint64_t sub_10083DB4C()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29C0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  return v1;
}

unint64_t sub_10083DBD8()
{
  result = qword_100CDDBA8;
  if (!qword_100CDDBA8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CDDB90, &qword_100A8C7B8);
    v4[2] = sub_10022E824(&qword_100CBB910, &qword_100A5B450);
    v4[3] = sub_1001CAB0C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1001C8078(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDBA8);
  }

  return result;
}

unint64_t sub_10083DCD0()
{
  result = qword_100CDDBC0;
  if (!qword_100CDDBC0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CDDBB8, &qword_100A8C7D0);
    v4[2] = &type metadata for Text;
    v4[3] = &protocol witness table for Text;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDDBC0);
  }

  return result;
}

void *sub_10083DDC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC70, &qword_100A8C8F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D70, &unk_100A8C940);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for SunriseSunsetDetailInteractor();
      v21[3] = v12;
      v21[4] = &off_100C4E5F8;
      v21[0] = v11;
      v13 = type metadata accessor for SunriseSunsetDetailModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C4E5F8;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C5D560;
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

uint64_t sub_10083E050()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CDDC68, &qword_100A8C8F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC70, &qword_100A8C8F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC78, &qword_100A8C900);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC80, &qword_100A8C908);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC88, &qword_100A8C910);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDC90, &qword_100A8C918);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SunriseSunsetDetailDataProcessor();
  RegistrationContainer.register<A>(_:name:factory:)();
  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_10022C350(&qword_100CDDC98, &qword_100A8C920);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCA0, &qword_100A8C928);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCA8, &qword_100A8C930);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDDCB0, &qword_100A8C938);
  RegistrationContainer.register<A>(_:name:factory:)();
  v5(v3, v4, v0);
  Definition.inScope(_:)();

  v6(v3, v0);
  sub_10022C350(&qword_100CA4D70, &unk_100A8C940);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10083E4A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918, &unk_100A2EC30);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for SunriseSunsetDetailTracker;
      a2[4] = &off_100C751B8;
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

void *sub_10083E5EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v40)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC68, &qword_100A8C8F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v39)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC60, &qword_100A8C8E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC90, &qword_100A8C918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v35)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v41;
  v28 = v40;
  v29 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v30;
  if (v30)
  {
    v7 = v32;
    v6 = v33;
    v8 = v31;
    v9 = sub_10002D7F8(v38, v39);
    v26 = &v26;
    v10 = __chkstk_darwin(v9);
    v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = sub_10002D7F8(v36, v37);
    v15 = __chkstk_darwin(v14);
    v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_10002D7F8(v34, v35);
    v20 = __chkstk_darwin(v19);
    v22 = (&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = sub_10083FEF8(v28, v27, v12, *v17, *v22, v5, v8, v7, v6);
    sub_100006F14(v34);
    sub_100006F14(v36);
    sub_100006F14(v38);
    result = type metadata accessor for SunriseSunsetDetailInteractor();
    v25 = v29;
    v29[3] = result;
    v25[4] = &off_100C4E5F8;
    *v25 = v24;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_10083EA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SunriseSunsetEventCalculator();
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v63 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetEventCalculator.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC98, &qword_100A8C920);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v86)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB0, &qword_100A8C938);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v84)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC90, &qword_100A8C918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v82)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC88, &qword_100A8C910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v80)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8, &qword_100A8C950);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v78)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCE0, &unk_100A8C960);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v76)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  SunriseSunsetPolarSunEventStringBuilder.init()();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908, &unk_100A2EC20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v74)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = v8;
  v59 = v7;
  v60 = v5;
  v61 = v4;
  v62 = a2;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v57 = v72;
  if (v72 != 2)
  {
    v11 = sub_10002D7F8(v83, v84);
    v56[5] = v56;
    v12 = __chkstk_darwin(v11);
    v14 = (v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = sub_10002D7F8(v81, v82);
    v56[4] = v56;
    v17 = __chkstk_darwin(v16);
    v19 = (v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = sub_10002D7F8(v73, v74);
    v56[3] = v56;
    v22 = __chkstk_darwin(v21);
    v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v14;
    v27 = *v19;
    v28 = *v24;
    v29 = type metadata accessor for SunriseSunsetDetailViewDataCache();
    v71[3] = v29;
    v71[4] = &off_100C5E7A8;
    v71[0] = v26;
    v30 = type metadata accessor for SunriseSunsetDetailDataProcessor();
    v69 = v30;
    v70 = &off_100C49710;
    v68[0] = v27;
    v31 = type metadata accessor for NewsArticleComponentViewModelFactory();
    v66 = v31;
    v67 = &off_100C60578;
    v65[0] = v28;
    v32 = type metadata accessor for SunriseSunsetDetailViewModelFactory(0);
    v33 = swift_allocObject();
    v34 = sub_10002D7F8(v71, v29);
    v56[2] = v56;
    v35 = __chkstk_darwin(v34);
    v37 = (v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37, v35);
    v39 = sub_10002D7F8(v68, v69);
    v56[1] = v56;
    v40 = __chkstk_darwin(v39);
    v42 = (v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42, v40);
    v44 = sub_10002D7F8(v65, v66);
    v56[0] = v56;
    v45 = __chkstk_darwin(v44);
    v47 = (v56 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47, v45);
    v49 = *v37;
    v50 = *v42;
    v51 = *v47;
    v52 = (v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_viewDataCache);
    v52[3] = v29;
    v52[4] = &off_100C5E7A8;
    *v52 = v49;
    v53 = (v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider);
    v53[3] = v30;
    v53[4] = &off_100C49710;
    *v53 = v50;
    v54 = (v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory);
    v54[3] = v31;
    v54[4] = &off_100C60578;
    *v54 = v51;
    (*(v64 + 32))(v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetEventCalculator, v63, v58);
    sub_100013188(&v85, v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
    sub_100013188(&v79, v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder);
    sub_100013188(&v77, v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator);
    sub_100013188(&v75, v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory);
    (*(v60 + 32))(v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder, v59, v61);
    *(v33 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_isDemoPresetActive) = v57 & 1;
    sub_100006F14(v65);
    sub_100006F14(v68);
    sub_100006F14(v71);
    sub_100006F14(v73);
    sub_100006F14(v81);
    result = sub_100006F14(v83);
    v55 = v62;
    v62[3] = v32;
    v55[4] = &off_100C716B8;
    *v55 = v33;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10083F3B4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for DaylightStringBuilder();
  a1[4] = sub_100840488(&qword_100CDDCD8, &type metadata accessor for DaylightStringBuilder, &protocol conformance descriptor for DaylightStringBuilder);
  sub_100042FB0(a1);
  return DaylightStringBuilder.init()();
}

uint64_t sub_10083F434@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for SunriseSunsetDetailDataProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10083F4A4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCA8, &qword_100A8C930);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8, &qword_100A8C950);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB0, &qword_100A8C938);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v3 = sub_10002D7F8(v19, v20);
    v4 = __chkstk_darwin(v3);
    v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v6, v4);
    v8 = sub_10002D7F8(v15, v16);
    v9 = __chkstk_darwin(v8);
    v11 = (&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_10084026C(v6, &v17, *v11);
    sub_100006F14(v15);
    sub_100006F14(v19);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10083F718@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8, &qword_100A8C950);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CDDCA0, &qword_100A8C928);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for SunriseSunsetDetailChartViewModelFactory();
      swift_allocObject();
      result = SunriseSunsetDetailChartViewModelFactory.init(sunElevationCalculator:chartBackgroundFactory:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for SunriseSunsetDetailChartViewModelFactory;
      *a2 = result;
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

uint64_t sub_10083F818@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SunriseSunsetChartBackgroundModelFactory(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC7Weather40SunriseSunsetChartBackgroundModelFactory____lazy_storage___listAnimationKind;
  v5 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(v3 + v4, 1, 1, v5);
  a1[3] = v2;
  result = sub_100840488(&qword_100CDDCC0, type metadata accessor for SunriseSunsetChartBackgroundModelFactory, asc_100A5F1AC);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void *sub_10083F8C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDCB8, &qword_100A8C950);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for SunriseSunsetMonthlyViewModelFactory;
    a2[4] = &off_100C65670;
    v4 = swift_allocObject();
    *a2 = v4;
    *(v4 + 80) = &type metadata for SunriseSunsetDaylightCalculator;
    *(v4 + 88) = &off_100C704A8;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10083F984@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SunriseSunsetDetailViewDataCache();
  swift_allocObject();
  result = sub_100579590();
  a1[3] = v2;
  a1[4] = &off_100C5E7A8;
  *a1 = result;
  return result;
}

void *sub_10083F9DC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC78, &qword_100A8C900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for SunriseSunsetDetailInputFactory();
  v16 = &off_100C592B0;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10083FD4C;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDDC80, &qword_100A8C908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    v15 = type metadata accessor for SunriseSunsetDetailViewModelFactory(0);
    v16 = &off_100C716B8;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10083FD54;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4D70, &unk_100A8C940);
    swift_allocObject();
    return sub_10024BEB8(v3, v6, v5, v4, sub_100266DE8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10083FD5C(const void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v13 = &type metadata for SunriseSunsetMonthlyViewModelFactory;
  v14 = &off_100C65670;
  *&v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x50uLL);
  v10 = type metadata accessor for SunriseSunsetDetailViewDataCache();
  v11 = &off_100C5E7A8;
  *&v9 = a3;
  sub_100046E64();
  *(a4 + 136) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for SunriseSunsetDetailPreprocessedDataModel(0);
  sub_100840488(&qword_100CDDCC8, type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey, byte_100A2FC70);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CDDCD0, &qword_100A8C958);
  swift_allocObject();
  *(a4 + 144) = Cache.init(_:)();
  sub_100013188(&v9, a4 + 96);
  sub_100013188(a2, a4 + 56);
  sub_100013188(&v12, a4 + 16);
  return a4;
}

void *sub_10083FEF8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a7;
  v45 = a8;
  v41 = a2;
  v42 = a9;
  v43 = a6;
  v50[3] = &type metadata for SunriseSunsetDetailTracker;
  v50[4] = &off_100C751B8;
  v13 = swift_allocObject();
  v50[0] = v13;
  v14 = a3[1];
  v13[1] = *a3;
  v13[2] = v14;
  v13[3] = a3[2];
  v15 = type metadata accessor for SunriseSunsetDetailDataProcessor();
  v49[3] = v15;
  v49[4] = &off_100C49728;
  v49[0] = a4;
  v47 = v15;
  v48 = &off_100C49710;
  v46[0] = a5;
  type metadata accessor for SunriseSunsetDetailInteractor();
  v16 = swift_allocObject();
  v17 = sub_10002D7F8(v50, &type metadata for SunriseSunsetDetailTracker);
  v18 = __chkstk_darwin(v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = sub_10002D7F8(v49, v15);
  v23 = __chkstk_darwin(v22);
  v25 = (&v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = sub_10002D7F8(v46, v47);
  v28 = __chkstk_darwin(v27);
  v30 = (&v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = *v25;
  v33 = *v30;
  v16[7] = &type metadata for SunriseSunsetDetailTracker;
  v16[8] = &off_100C751B8;
  v34 = swift_allocObject();
  v16[4] = v34;
  v35 = v20[1];
  v34[1] = *v20;
  v34[2] = v35;
  v34[3] = v20[2];
  v16[12] = v15;
  v16[13] = &off_100C49728;
  v16[9] = v32;
  v16[17] = v15;
  v16[18] = &off_100C49710;
  v16[14] = v33;
  sub_100046E64();
  v36 = OS_os_log.init(subsystem:category:)();
  v37 = v41;
  v16[2] = a1;
  v16[3] = v37;
  v38 = v44;
  v16[19] = v43;
  v16[20] = v38;
  v16[21] = v45;
  v16[22] = v42;
  v16[23] = v36;
  sub_100006F14(v46);
  sub_100006F14(v49);
  sub_100006F14(v50);
  return v16;
}

uint64_t sub_10084026C(const void *a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a3;
  v21[3] = &type metadata for SunriseSunsetMonthlyViewModelFactory;
  v21[4] = &off_100C65670;
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), a1, 0x50uLL);
  v20[3] = v6;
  v20[4] = &off_100C5E7A8;
  v20[0] = a3;
  type metadata accessor for SunriseSunsetDetailDataProcessor();
  v7 = swift_allocObject();
  v8 = sub_10002D7F8(v21, &type metadata for SunriseSunsetMonthlyViewModelFactory);
  v9 = __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_10002D7F8(v20, v6);
  v14 = __chkstk_darwin(v13);
  v16 = (v20 - v15);
  (*(v17 + 16))(v20 - v15, v14);
  v18 = sub_10083FD5C(v11, a2, *v16, v7);
  sub_100006F14(v20);
  sub_100006F14(v21);
  return v18;
}

uint64_t sub_100840488(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008404D0@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));
  v3 = *(v1 + 64);

  sub_10022C350(&qword_100CA49A0, &qword_100A41EE0);
  sub_100840574();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  a1[7] = v3;
  return result;
}

unint64_t sub_100840574()
{
  result = qword_100CA49A8;
  if (!qword_100CA49A8)
  {
    v3 = sub_10022E824(&qword_100CA49A0, &qword_100A41EE0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA49A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiagnosticGatheringMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008406B4()
{
  result = qword_100CDDD98[0];
  if (!qword_100CDDD98[0])
  {
    result = swift_getWitnessTable(a5_2, &type metadata for DiagnosticGatheringMode, v0, v1);
    atomic_store(result, qword_100CDDD98);
  }

  return result;
}

unint64_t sub_100840708(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_100840738@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100840708(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100840764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100840718(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100840790(uint64_t a1)
{
  v2 = sub_1004B53C0();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for Int);
}

uint64_t sub_1008407E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B53C0();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100840840(uint64_t a1)
{
  v2 = sub_1004B53C0();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for Int);
}

double sub_100840898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:a1 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, a7, a7}];
  v9 = [v8 CGPath];
  Path.init(_:)();

  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

double sub_100840964@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_100840898(*(v5 + 8), v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1008409C4(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_100840A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100841938();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100840A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100841938();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100840B00(uint64_t a1)
{
  v2 = sub_100841938();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100840B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v41 = a3;
  v34 = a2[2];
  v6 = v34;
  __chkstk_darwin(a1);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for EnvironmentValues();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v32 = a2[4];
  v33 = v10;
  v11 = type metadata accessor for OverlayValueViewModifier(0, v6, v10, v32);
  v39 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v30 = &v30 - v13;
  swift_getWitnessTable(byte_100A8CD38, a2, v12);
  v14 = type metadata accessor for _ViewModifier_Content();
  v15 = type metadata accessor for ModifiedContent();
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v31 = &v30 - v19;
  v20 = *v4;
  v21 = v4[1];
  sub_1009E9560();
  v22 = v36;
  swift_getAtKeyPath();
  (*(v35 + 8))(v9, v37);
  v23 = v30;
  sub_100840F24(v20, v21, v22, v4[3], v4[4], v34, v33, v32, v30);

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v14);
  View.modifier<A>(_:)();
  (*(v39 + 8))(v23, v11);
  v25 = swift_getWitnessTable(byte_100A8CB70, v11);
  v42[0] = WitnessTable;
  v42[1] = v25;
  v26 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v42);
  v27 = v31;
  sub_1000833D8(v17, v15, v26);
  v28 = *(v38 + 8);
  v28(v17, v15);
  sub_1000833D8(v27, v15, v26);
  return (v28)(v27, v15);
}