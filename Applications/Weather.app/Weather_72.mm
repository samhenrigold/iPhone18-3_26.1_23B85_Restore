_BYTE *storeEnumTagSinglePayload for DiagnosticSummary.Environment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1007A8A28(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[7])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007A8A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1007A8ABC()
{
  result = qword_100CD7A38;
  if (!qword_100CD7A38)
  {
    result = swift_getWitnessTable(byte_100A81044, &type metadata for DiagnosticSummary.Environment.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A38);
  }

  return result;
}

unint64_t sub_1007A8B14()
{
  result = qword_100CD7A40;
  if (!qword_100CD7A40)
  {
    result = swift_getWitnessTable(byte_100A810FC, &type metadata for DiagnosticSummary.WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A40);
  }

  return result;
}

unint64_t sub_1007A8B6C()
{
  result = qword_100CD7A48;
  if (!qword_100CD7A48)
  {
    result = swift_getWitnessTable(aU_71, &type metadata for DiagnosticSummary.WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A48);
  }

  return result;
}

unint64_t sub_1007A8BC4()
{
  result = qword_100CD7A50;
  if (!qword_100CD7A50)
  {
    result = swift_getWitnessTable(asc_100A81094, &type metadata for DiagnosticSummary.WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A50);
  }

  return result;
}

unint64_t sub_1007A8C1C()
{
  result = qword_100CD7A58;
  if (!qword_100CD7A58)
  {
    result = swift_getWitnessTable(asc_100A80FB4, &type metadata for DiagnosticSummary.Environment.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A58);
  }

  return result;
}

unint64_t sub_1007A8C74()
{
  result = qword_100CD7A60;
  if (!qword_100CD7A60)
  {
    result = swift_getWitnessTable(byte_100A80FDC, &type metadata for DiagnosticSummary.Environment.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A60);
  }

  return result;
}

unint64_t sub_1007A8CC8()
{
  result = qword_100CD7A70;
  if (!qword_100CD7A70)
  {
    result = swift_getWitnessTable(byte_100A813F4, &type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A70);
  }

  return result;
}

unint64_t sub_1007A8D1C()
{
  result = qword_100CD7A78;
  if (!qword_100CD7A78)
  {
    result = swift_getWitnessTable(byte_100A813CC, &unk_100C6B578, v0, v1);
    atomic_store(result, &qword_100CD7A78);
  }

  return result;
}

unint64_t sub_1007A8D70()
{
  result = qword_100CD7A88;
  if (!qword_100CD7A88)
  {
    result = swift_getWitnessTable("ͤ\x1B", &unk_100C6B578, v0, v1);
    atomic_store(result, &qword_100CD7A88);
  }

  return result;
}

_BYTE *sub_1007A8DC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1007A8EA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007A8F7C()
{
  result = qword_100CD7A90;
  if (!qword_100CD7A90)
  {
    result = swift_getWitnessTable(asc_100A812C4, &unk_100C6B578, v0, v1);
    atomic_store(result, &qword_100CD7A90);
  }

  return result;
}

unint64_t sub_1007A8FD4()
{
  result = qword_100CD7A98;
  if (!qword_100CD7A98)
  {
    result = swift_getWitnessTable(byte_100A8137C, &type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A98);
  }

  return result;
}

unint64_t sub_1007A902C()
{
  result = qword_100CD7AA0;
  if (!qword_100CD7AA0)
  {
    result = swift_getWitnessTable(byte_100A812EC, &type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7AA0);
  }

  return result;
}

unint64_t sub_1007A9084()
{
  result = qword_100CD7AA8;
  if (!qword_100CD7AA8)
  {
    result = swift_getWitnessTable(byte_100A81314, &type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7AA8);
  }

  return result;
}

unint64_t sub_1007A90D8()
{
  result = qword_100CD7AB0;
  if (!qword_100CD7AB0)
  {
    result = swift_getWitnessTable("Ţ\x1B", &unk_100C6B578, v0, v1);
    atomic_store(result, &qword_100CD7AB0);
  }

  return result;
}

uint64_t sub_1007A918C()
{
  type metadata accessor for VisibilityStateHolder();
  sub_10001F794();
  v2 = sub_10006748C(v0, v1, a1_6);
  sub_10001CCF8(v2);
  sub_100010AE8();
}

uint64_t sub_1007A9280()
{

  sub_10003BCD8();

  return swift_deallocObject();
}

void *sub_1007A92EC()
{
  sub_100006F14(v0 + 2);

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 11);

  sub_100006F14(v0 + 17);
  return v0;
}

uint64_t sub_1007A933C()
{
  sub_1007A92EC();

  return swift_deallocClassInstance();
}

void *sub_1007A939C@<X0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  sub_1007A9418(__src);
  memcpy(&v5[7], __src, 0x50uLL);
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  result = memcpy((a2 + 17), v5, 0x57uLL);
  *(a2 + 104) = 1;
  return result;
}

void sub_1007A9418(uint64_t a2@<X8>)
{
  static UnitPoint.trailing.getter();
  v4 = v3;
  v6 = v5;
  static UnitPoint.leading.getter();
  v8 = v7;
  v10 = v9;
  static UnitPoint.leading.getter();
  v12 = v11;
  v14 = v13;
  static UnitPoint.trailing.getter();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
}

unint64_t sub_1007A94B4()
{
  result = qword_100CD7C88;
  if (!qword_100CD7C88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7C90, &qword_100A81728);
    v4[0] = sub_100006F64(&qword_100CD7C98, &qword_100CD7CA0, qword_100A81730, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_1006F40E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7C88);
  }

  return result;
}

uint64_t sub_1007A9588@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2D320;
  *(v6 + 32) = static Color.clear.getter();
  *(v6 + 40) = static Color.white.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[6] = v15;
  *&v11[22] = v16;
  *&v11[38] = v17;
  v7 = *(sub_10022C350(&qword_100CD7CA8, &qword_100A81790) + 36);
  v8 = enum case for BlendMode.destinationOut(_:);
  v9 = type metadata accessor for BlendMode();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v12;
  *(a1 + 24) = v14;
  *(a1 + 8) = v13;
  *(a1 + 40) = 0;
  *(a1 + 42) = *v11;
  *(a1 + 58) = *&v11[16];
  *(a1 + 74) = *&v11[32];
  *(a1 + 88) = *(&v17 + 1);
  result = sub_10022C350(&qword_100CD7CB0, &qword_100A81798);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1007A9730()
{
  result = qword_100CD7CB8;
  if (!qword_100CD7CB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7CB0, &qword_100A81798);
    v4[0] = sub_1007A97BC();
    v4[1] = &protocol witness table for _AllowsHitTestingModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7CB8);
  }

  return result;
}

unint64_t sub_1007A97BC()
{
  result = qword_100CD7CC0;
  if (!qword_100CD7CC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7CA8, &qword_100A81790);
    v4[0] = sub_1007A9848();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7CC0);
  }

  return result;
}

unint64_t sub_1007A9848()
{
  result = qword_100CD7CC8;
  if (!qword_100CD7CC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7CD0, &unk_100A817A0);
    v4[0] = sub_100006F64(&qword_100CD7CD8, &qword_100CD7CE0, &qword_100A88090, &protocol conformance descriptor for _ShapeView<A, B>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7CC8);
  }

  return result;
}

void sub_1007A9900()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedApplication];
  v14 = UIApplication.maybeWindow.getter();

  sub_1007A9C3C();
  v5 = sub_1007A9B54(0xD00000000000001CLL, 0x8000000100AD53D0);
  if (v5)
  {
    if (v14)
    {
      v13 = v5;
      v6 = [v14 rootViewController];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1007A9BC4(v6);
        if (v8)
        {
          v9 = v8;
          [v13 setPresentingViewController:v8];
          [v13 setDarkMode:1];
          [v13 present];
        }

        else
        {
        }
      }

      v5 = v14;
    }
  }

  else
  {
    static Logger.privacy.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find privacy bundle for Weather", v12, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }
}

id sub_1007A9B54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() presenterForPrivacySplashWithIdentifier:v2];

  return v3;
}

void *sub_1007A9BC4(void *a1)
{
  v1 = a1;
  v2 = [a1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v1 = sub_1007A9BC4(v2);
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

unint64_t sub_1007A9C3C()
{
  result = qword_100CD7D80;
  if (!qword_100CD7D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CD7D80);
  }

  return result;
}

NSObject *sub_1007A9C90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v61 = v3;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v59 - v8);
  v10 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PastDataComparisonTextContext(0);
  v23 = *(v18 + 16);
  v24 = a1 + v22[9];
  v62 = v21;
  v23(v21, v24, v16);
  sub_1004075F8(a1 + v22[12], v15);
  v25 = type metadata accessor for ExtremaResult();
  if (sub_100024D10(v15, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  v59 = v18;
  v60 = v16;
  ExtremaResult.maxValue.getter();
  v26 = *(*(v25 - 8) + 8);
  v26(v15, v25);
  sub_1004075F8(a1 + v22[10], v12);
  if (sub_100024D10(v12, 1, v25) == 1)
  {
    v15 = v12;
    v18 = v59;
    v16 = v60;
LABEL_4:
    sub_100407668(v15);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000703C(v27, qword_100D90B68);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing extrema values for building temperature comparison text", v30, 2u);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v58 = 256;
    v57 = 0;
    sub_10001C138();
    v38 = 0;
    goto LABEL_9;
  }

  ExtremaResult.maxValue.getter();
  v26(v12, v25);
  ConditionUnits.temperature.getter();
  sub_10000F868();
  Measurement.init(value:unit:)();
  v40 = objc_opt_self();
  v41 = [v40 fahrenheit];
  Measurement<>.converted(to:)();

  v42 = *(v61 + 8);
  v42(v6, v2);
  Measurement.value.getter();
  v44 = v43;
  v42(v9, v2);
  ConditionUnits.temperature.getter();
  Measurement.init(value:unit:)();
  v45 = [v40 fahrenheit];
  Measurement<>.converted(to:)();

  v42(v6, v2);
  v28 = v9;
  Measurement.value.getter();
  v47 = v46;
  v42(v9, v2);
  v48 = round(v47) - round(v44);
  if (v48 >= 5.0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    sub_10001C138();
    Text.init(_:tableName:bundle:comment:)(v49, v50, v51, v52, v53, v54, v55, v56, 140, 0);
    sub_10001CD1C();
    v18 = v59;
    v16 = v60;
    goto LABEL_10;
  }

  v18 = v59;
  v16 = v60;
  if (v48 <= -5.0)
  {
    sub_100005AA8();
    v58 = 0;
    v57 = 139;
  }

  else
  {
    sub_100005AA8();
    v58 = 0;
    v57 = 126;
  }

  sub_10001C138();
LABEL_9:
  Text.init(_:tableName:bundle:comment:)(v31, v32, v33, v34, v35, v36, v37, v38, v57, v58);
  sub_10001CD1C();
LABEL_10:
  (*(v18 + 8))(v62, v16);
  return v28;
}

double sub_1007AA26C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2670 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2680 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2678 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2668 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2660 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1007AA3D8(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_1007AA26C(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007AAA5C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v127 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v131 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v17 + v18, v16 + v13, v19);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v20;
    *(v12 + 48) = v21;
    v22 = sub_100013600();
    sub_100003E18(v22);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v22 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v22);
    *(v12 + 64) = v23;
    *(v12 + 72) = v24;
    v25 = sub_100013600();
    sub_100003E18(v25);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v25 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v25);
    *(v12 + 88) = v26;
    *(v12 + 96) = v27;
    v28 = sub_100013600();
    sub_100003E18(v28);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v28 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v28);
    *(v12 + 112) = v29;
    *(v12 + 120) = v30;
    v128 = v13 + 2 * v14;
    v129 = v14;
    v31 = v14;
    v32 = v15;
    v33 = swift_allocObject();
    v34 = sub_10001361C(v33, xmmword_100A2D320) + v13;
    v35 = a1;
    v36 = *(a1 + 16);
    v37 = v35;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v36 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v34[v31], v7);
    *(v12 + 128) = sub_1001B38A0(v33);
    *(v12 + 136) = v38;
    *(v12 + 144) = v39;
    v130 = v32;
    v40 = swift_allocObject();
    sub_1000056EC(v40);
    v42 = v41 + v13;
    v43 = *(v37 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v43 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v129[v42], v7);
    *(v12 + 152) = sub_1001B38A0(v33);
    *(v12 + 160) = v44;
    *(v12 + 168) = v45;
    v46 = swift_allocObject();
    sub_1000056EC(v46);
    v48 = v47 + v13;
    v49 = v131;
    v50 = *(v131 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v51 = v129;
    sub_10031694C(v50 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v129[v48], v7);
    *(v12 + 176) = sub_1001B38A0(v33);
    *(v12 + 184) = v52;
    *(v12 + 192) = v53;
    v54 = sub_10000C998();
    sub_1000056EC(v54);
    v56 = v55 + v13;
    v57 = *(v49 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v58 = v56 + v51;
    v59 = v51;
    sub_10031694C(v57 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v58, v7);
    *(v12 + 200) = sub_1001B38A0(v33);
    *(v12 + 208) = v60;
    *(v12 + 216) = v61;
    v62 = sub_10000C998();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v49 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v59, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v74 + v75, v73 + v69, v76);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(v9, v86 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    v130 = v71;
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v73 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v92 = v69 + 2 * v70;
    v93 = v70;
    sub_1000167B0();
    v94 = swift_allocObject();
    v95 = sub_10001361C(v94, xmmword_100A2D320);
    v129 = v9;
    v96 = v95 + v69;
    v97 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v127[0] = v93;
    sub_10031694C(v97 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v96[v93], v7);
    *(v12 + 152) = sub_1001B38A0(v94);
    *(v12 + 160) = v98;
    *(v12 + 168) = v99;
    v127[1] = v92;
    v100 = swift_allocObject();
    sub_100003E18(v100);
    v102 = v101 + v69;
    v103 = v131;
    v104 = *(v131 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v104 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v102 + v93, v7);
    *(v12 + 176) = sub_1001B38A0(v100);
    *(v12 + 184) = v105;
    *(v12 + 192) = v106;
    sub_1000167B0();
    v128 = v72;
    v107 = swift_allocObject();
    sub_100003E18(v107);
    v109 = v108 + v69;
    v110 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v111 = v127[0];
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v109 + v127[0], v7);
    *(v12 + 200) = sub_1001B38A0(v107);
    *(v12 + 208) = v112;
    *(v12 + 216) = v113;
    sub_1000167B0();
    v114 = swift_allocObject();
    sub_100003E18(v114);
    v116 = v115 + v69;
    v117 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v116 + v111, v7);
    *(v12 + 224) = sub_1001B38A0(v114);
    *(v12 + 232) = v118;
    *(v12 + 240) = v119;
    v120 = swift_allocObject();
    sub_100003E18(v120);
    v122 = v121 + v69;
    v123 = *(v131 + 16);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v121 + v69, v7);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v122 + v111, v7);
    *(v12 + 248) = sub_1001B38A0(v120);
    *(v12 + 256) = v124;
    *(v12 + 264) = v125;
    sub_1003169AC(v129, v7);
  }

  return v12;
}

void sub_1007AB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC60;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A4C530;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC10;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC30;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D909D8 = v8;
}

void sub_1007AB420()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3F970;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BC50;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D909E0 = v0;
}

void sub_1007AB538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A3BC40;
  v27[0] = xmmword_100A3BC40;
  v27[1] = xmmword_100A3BB80;
  v29 = v28;
  v30 = v27;
  v24 = xmmword_100A3BB70;
  v25 = 1;
  v26 = 4;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC50;
  v31 = &v24;
  v32 = v23;
  v20 = 0;
  v21 = xmmword_100A3F980;
  v22 = 1;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v33 = &v20;
  v34 = v19;
  v15[1] = xmmword_100A3BC50;
  v16 = xmmword_100A2D320;
  v17 = 1;
  v18 = 3;
  v14[1] = xmmword_100A3BB80;
  v15[0] = xmmword_100A3BBB0;
  v35 = &v16;
  v36 = v15;
  v13[1] = xmmword_100A3BC50;
  v14[0] = xmmword_100A3BBD0;
  v37 = v14;
  v38 = v13;
  v11[1] = xmmword_100A3BC60;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v11[0] = xmmword_100A2C3F0;
  v39 = v12;
  v40 = v11;
  v9[1] = xmmword_100A3BB80;
  v10[0] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v41 = v10;
  v42 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 1);
  qword_100D909E8 = v8;
}

void sub_1007AB668()
{
  v16[0] = 2;
  v16[1] = 4;
  v17 = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v18 = v16;
  v19 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3F970;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC60;
  v20 = v14;
  v21 = v13;
  v10 = 0;
  v11 = xmmword_100A3F980;
  v12 = 1;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC50;
  v22 = &v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC60;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBD0;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v28 = v4;
  v29 = v3;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2C3F0;
  v1[1] = xmmword_100A3BC60;
  v30 = v2;
  v31 = v1;
  sub_100552E50();
  qword_100D909F0 = v0;
}

void sub_1007AB794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2D320;
  v22[1] = xmmword_100A2C3F0;
  v21[0] = xmmword_100A3BC50;
  v21[1] = xmmword_100A3BC60;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BC80;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BC40;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BC90;
  v12[1] = xmmword_100A3BBD0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D909F8 = v8;
}

uint64_t sub_1007AB8AC(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v34 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LocationViewComponent(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v31 - v23;

  sub_1005D71C4(v25, a2);
  v32 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather31LocationMinorAlertConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008, &unk_100A2F7B0);
  v27 = v33;
  sub_10031694C(v13, v33, type metadata accessor for LocationComponentContainerViewModel);
  v28 = v34;
  sub_10031694C(v2, v34, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for MinorAlertContent._Storage(0);
  swift_allocObject();
  v29 = sub_1002D28D8(v32, v21, v27, v28);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008, &unk_100A2F7B0);
  return v29;
}

_BYTE *storeEnumTagSinglePayload for UnitsConfigurationViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007ABCC8()
{
  result = qword_100CD7D88;
  if (!qword_100CD7D88)
  {
    result = swift_getWitnessTable(byte_100A818F0, &type metadata for UnitsConfigurationViewAction, v0, v1);
    atomic_store(result, &qword_100CD7D88);
  }

  return result;
}

uint64_t sub_1007ABD1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CD7D98, &unk_100A81970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1007ABF50();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

uint64_t sub_1007ABEBC(uint64_t a1)
{
  sub_1007ABFB4();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007ABEFC()
{
  result = qword_100CD7D90;
  if (!qword_100CD7D90)
  {
    result = swift_getWitnessTable(byte_100A81918, &type metadata for UnitsConfigurationViewAction, v0, v1);
    atomic_store(result, &qword_100CD7D90);
  }

  return result;
}

unint64_t sub_1007ABF50()
{
  result = qword_100CD7DA0;
  if (!qword_100CD7DA0)
  {
    v3 = sub_10022E824(&qword_100CD7D98, &unk_100A81970);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD7DA0);
  }

  return result;
}

unint64_t sub_1007ABFB4()
{
  result = qword_100CD7DA8[0];
  if (!qword_100CD7DA8[0])
  {
    result = swift_getWitnessTable(a9_27, &type metadata for UnitsConfigurationViewAction, v0, v1);
    atomic_store(result, qword_100CD7DA8);
  }

  return result;
}

uint64_t *sub_1007AC008()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_1007AC0D4()
{
  sub_1007AC008();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElevationData(uint64_t a1)
{
  result = qword_100CD7EA8;
  if (!qword_100CD7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007AC1A0(uint64_t a1)
{
  result = type metadata accessor for Elevation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1007AC22C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v37 = a1[7];
  v38 = a1[6];
  v36 = a1[8];
  v35 = a1[9];
  v31 = a1[11];
  v32 = a1[10];
  v27 = a1[13];
  v28 = a1[12];
  v23 = a1[15];
  v24 = a1[14];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v33 = a2[9];
  v34 = a2[8];
  v29 = a2[11];
  v30 = a2[10];
  v25 = a2[13];
  v26 = a2[12];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v21 = a2[15];
  v22 = a2[14];
  result = 0;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = v2 == v6 && v4 == v7;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v14 = v3 == v8 && v5 == v9;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v15 = v38 == v10 && v37 == v11;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v16 = v36 == v34 && v35 == v33;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v17 = v32 == v30 && v31 == v29;
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v18 = v28 == v26 && v27 == v25;
              if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v19 = v24 == v22 && v23 == v21;
                if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_1007AC420@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = sub_10022C350(&qword_100CD7EE8, &qword_100A81B88);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v13[-v8 - 8];
  sub_1000161C0(a1, a1[3]);
  sub_1007AC92C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v10 = v15;
  sub_1007AC980();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v4);
  memcpy(v13, v14, sizeof(v13));
  sub_100006F14(a1);
  return memcpy(v10, v13, 0x80uLL);
}

uint64_t sub_1007AC5C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2)
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

uint64_t sub_1007AC664(void *a1)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CD7F00, &qword_100A81B90);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8 - 8];
  sub_1000161C0(a1, a1[3]);
  sub_1007AC92C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v2, sizeof(v13));
  sub_1007AC9D4(v2, v12);
  sub_1007ACA0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v12, v13, sizeof(v12));
  sub_100428554(v12);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1007AC7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007AC5C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007AC810(uint64_t a1)
{
  v2 = sub_1007AC92C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007AC84C(uint64_t a1)
{
  v2 = sub_1007AC92C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007AC888@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007AC420(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x80uLL);
  }

  return result;
}

unint64_t sub_1007AC92C()
{
  result = qword_100CD7EF0;
  if (!qword_100CD7EF0)
  {
    result = swift_getWitnessTable(byte_100A81C5C, &type metadata for PrecipitationTotalComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7EF0);
  }

  return result;
}

unint64_t sub_1007AC980()
{
  result = qword_100CD7EF8;
  if (!qword_100CD7EF8)
  {
    result = swift_getWitnessTable(byte_100A4CAD4, &type metadata for PrecipitationTotalComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CD7EF8);
  }

  return result;
}

unint64_t sub_1007ACA0C()
{
  result = qword_100CD7F08;
  if (!qword_100CD7F08)
  {
    result = swift_getWitnessTable(byte_100A4CAAC, &type metadata for PrecipitationTotalComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CD7F08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationTotalComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007ACB10()
{
  result = qword_100CD7F10;
  if (!qword_100CD7F10)
  {
    result = swift_getWitnessTable("͘\x1B", &type metadata for PrecipitationTotalComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7F10);
  }

  return result;
}

unint64_t sub_1007ACB68()
{
  result = qword_100CD7F18;
  if (!qword_100CD7F18)
  {
    result = swift_getWitnessTable(asc_100A81BA4, &type metadata for PrecipitationTotalComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7F18);
  }

  return result;
}

unint64_t sub_1007ACBC0()
{
  result = qword_100CD7F20;
  if (!qword_100CD7F20)
  {
    result = swift_getWitnessTable(byte_100A81BCC, &type metadata for PrecipitationTotalComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7F20);
  }

  return result;
}

double sub_1007ACC40@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  v7 = *v1;
  v29 = *v1;
  if (v30 != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v29, &qword_100CB91B8, &qword_100A4DA50);
    (*(v4 + 8))(v6, v3);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = v1[2];
    v15 = v1[3];
    v16 = v1[4];
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = 0x4028000000000000;
    v25 = 0;
    sub_1007ACE90();
    sub_1007ACEE4();

    goto LABEL_8;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];

  v11 = static Solarium.isEnabled.getter();
  v12 = 0x4026000000000000;
  if (v11)
  {
    v12 = 0x402E000000000000;
  }

  v21 = v9;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = 1;
  sub_1007ACE90();
  sub_1007ACEE4();
LABEL_8:
  _ConditionalContent<>.init(storage:)();
  result = *&v26;
  v18 = v27;
  v19 = v28;
  *a1 = v26;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

unint64_t sub_1007ACE90()
{
  result = qword_100CD7F28;
  if (!qword_100CD7F28)
  {
    result = swift_getWitnessTable(byte_100A81E68, &type metadata for AirPollutantTableStackView, v0, v1);
    atomic_store(result, &qword_100CD7F28);
  }

  return result;
}

unint64_t sub_1007ACEE4()
{
  result = qword_100CD7F30;
  if (!qword_100CD7F30)
  {
    result = swift_getWitnessTable(aI_61, &type metadata for AirPollutantTableGridView, v0, v1);
    atomic_store(result, &qword_100CD7F30);
  }

  return result;
}

unint64_t sub_1007ACF58()
{
  result = qword_100CD7F38;
  if (!qword_100CD7F38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7F40, &qword_100A81E10);
    v4[0] = sub_1007ACE90();
    v4[1] = sub_1007ACEE4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7F38);
  }

  return result;
}

void *sub_1007AD000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v19 = a4;
  v9 = sub_10022C350(&qword_100CD7F80, &qword_100A81F08);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = static HorizontalAlignment.leading.getter();
  v13 = static VerticalAlignment.firstTextBaseline.getter();
  *v11 = v12;
  *(v11 + 1) = v13;
  *(v11 + 2) = 0x4030000000000000;
  v11[24] = 0;
  *(v11 + 4) = a5;
  v11[40] = 0;
  sub_10022C350(&qword_100CD7F88, &qword_100A81F10);
  __src[0] = a3;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a5;
  swift_bridgeObjectRetain_n();

  sub_10022C350(&qword_100CD7F50, &qword_100A81EE0);
  sub_10022C350(&qword_100CD7F90, &qword_100A81F18);
  sub_100006F64(&qword_100CD7F60, &qword_100CD7F50, &qword_100A81EE0, &protocol conformance descriptor for [A]);
  sub_1007AE90C();
  sub_100006F64(&qword_100CD7F98, &qword_100CD7F90, &qword_100A81F18, &protocol conformance descriptor for TupleView<A>);
  ForEach<>.init(_:id:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = v19;
  sub_10002F758(v11, v19, &qword_100CD7F80, &qword_100A81F08);
  v16 = sub_10022C350(&qword_100CD7FA0, &qword_100A81F20);
  return memcpy((v15 + *(v16 + 36)), __src, 0x70uLL);
}

uint64_t sub_1007AD2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v59 = a2;
  v64 = a3;
  v61 = sub_10022C350(&qword_100CD7FA8, &qword_100A81F28);
  __chkstk_darwin(v61);
  v55 = v50 - v4;
  v5 = sub_10022C350(&qword_100CD7FB0, &qword_100A81F30);
  __chkstk_darwin(v5 - 8);
  v63 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = v50 - v8;
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10022C350(&qword_100CD7FB8, &qword_100A81F38);
  __chkstk_darwin(v10);
  v12 = v50 - v11;
  v13 = sub_10022C350(&qword_100CD7FC0, &qword_100A81F40);
  __chkstk_darwin(v13 - 8);
  v60 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v50 - v16;
  v18 = *(a1 + 1);
  v70 = *a1;
  *v71 = v18;
  v54 = a1[4];
  *&v71[16] = v54;
  v19 = a1[1];
  v53 = *a1;
  v52 = v19;
  v20 = a1[3];
  v51 = a1[2];
  v50[1] = v20;
  *v12 = 0;
  v12[8] = 1;
  sub_1007AD888(&v70._countAndFlagsBits, &v12[*(v10 + 36)]);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  object = v70._object;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v70);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v56 = *&v71[16];
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v71[8]);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
  v24 = LocalizedStringKey.init(stringInterpolation:)();
  v28 = Text.init(_:tableName:bundle:comment:)(v24, v26, v25 & 1, v27, 0, 0, 0, 0, 0, 256);
  v30 = v29;
  v32 = v31;
  sub_100006F64(&qword_100CD7FC8, &qword_100CD7FB8, &qword_100A81F38, &protocol conformance descriptor for GridRow<A>);
  v58 = v17;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v28, v30, v32 & 1);

  sub_1000180EC(v12, &qword_100CD7FB8, &qword_100A81F38);
  v33 = *v71;
  sub_1002F55B8(v59, &v65);
  v34 = v65;
  v35 = v67;
  if (!v66)
  {

    v41 = v33;

    sub_1007AE960(v53, v52, v51);
    sub_1007AE960(v34, 0, v35);
    goto LABEL_5;
  }

  v72[0] = v65;
  v72[1] = v66;
  v72[2] = v67;
  v72[3] = v68;
  v72[4] = v69;

  v36 = v33;

  v37 = sub_1004CF548(&v70._countAndFlagsBits, v72);

  if ((v37 & 1) == 0)
  {
LABEL_5:
    v42 = v55;
    Divider.init()();
    v43 = static Axis.Set.horizontal.getter();
    v39 = v61;
    v40 = v62;
    *(v42 + *(v61 + 36)) = v43;
    sub_10002F758(v42, v40, &qword_100CD7FA8, &qword_100A81F28);
    v38 = 0;
    goto LABEL_6;
  }

  v38 = 1;
  v39 = v61;
  v40 = v62;
LABEL_6:
  sub_10001B350(v40, v38, 1, v39);
  v44 = v58;
  v45 = v60;
  sub_1000955E0(v58, v60, &qword_100CD7FC0, &qword_100A81F40);
  v46 = v63;
  sub_1000955E0(v40, v63, &qword_100CD7FB0, &qword_100A81F30);
  v47 = v64;
  sub_1000955E0(v45, v64, &qword_100CD7FC0, &qword_100A81F40);
  v48 = sub_10022C350(&qword_100CD7FD0, &qword_100A81F48);
  sub_1000955E0(v46, v47 + *(v48 + 48), &qword_100CD7FB0, &qword_100A81F30);
  sub_1000180EC(v40, &qword_100CD7FB0, &qword_100A81F30);
  sub_1000180EC(v44, &qword_100CD7FC0, &qword_100A81F40);
  sub_1000180EC(v46, &qword_100CD7FB0, &qword_100A81F30);
  return sub_1000180EC(v45, &qword_100CD7FC0, &qword_100A81F40);
}

uint64_t sub_1007AD888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_10022C350(&qword_100CD7FD8, &unk_100A81F50);
  __chkstk_darwin(v3 - 8);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v52 - v6;
  v7 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_10022C350(&qword_100CD7FE0, &qword_100A81F60);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = sub_10022C350(&qword_100CD7FE8, &qword_100A81F68);
  __chkstk_darwin(v13 - 8);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v55 = objc_opt_self();
  v18 = [v55 secondaryLabelColor];
  v62 = sub_100100664();
  v59 = v18;
  NSAttributedString.addingAttribute(_:value:)();
  sub_100006F14(&v59);
  v19 = type metadata accessor for AttributedString();
  sub_10001B350(v9, 1, 1, v19);
  AttributedText.init(_:accessibilityAttributedText:onInteraction:)();
  *(v12 + *(v10 + 36)) = static HorizontalAlignment.leading.getter();
  sub_1007AE9BC();
  v53 = v17;
  View.accessibilityHidden(_:)();
  sub_1000180EC(v12, &qword_100CD7FE0, &qword_100A81F60);
  v20 = static VerticalAlignment.center.getter();
  sub_1007ADE58(a1, &v59);
  v21 = v59;
  v22 = v60;
  LOBYTE(v18) = v61;
  v23 = v62;
  v24 = v63;
  v70 = 1;
  v69 = v61;
  v68 = v64;
  v59 = v20;
  v60 = 0;
  v61 = 1;
  v62 = v21;
  v63 = v22;
  v64 = v69;
  v65 = v23;
  v66 = v24;
  v67 = v68;
  sub_10022C350(&qword_100CD8000, &qword_100A81F70);
  sub_100006F64(&qword_100CD8008, &qword_100CD8000, &qword_100A81F70, &protocol conformance descriptor for HStack<A>);
  View.accessibilityHidden(_:)();
  sub_10010CD64(v21, v22, v18);

  v25 = a1[3];
  v26 = a1[4];
  v59 = v25;
  v60 = v26;
  sub_10002D5A4();

  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v12) = v30;
  static Font.body.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v18) = v34;

  sub_10010CD64(v27, v29, v12 & 1);

  v35 = [v55 secondaryLabelColor];
  v59 = Color.init(_:)();
  v36 = Text.foregroundStyle<A>(_:)();
  v38 = v37;
  LODWORD(v55) = v39;
  v41 = v40;
  sub_10010CD64(v31, v33, v18 & 1);

  v52 = static HorizontalAlignment.trailing.getter();
  v42 = v17;
  v43 = v58;
  sub_1000955E0(v42, v58, &qword_100CD7FE8, &qword_100A81F68);
  v44 = v54;
  v45 = v56;
  sub_1000955E0(v54, v56, &qword_100CD7FD8, &unk_100A81F50);
  v46 = v43;
  v47 = v57;
  sub_1000955E0(v46, v57, &qword_100CD7FE8, &qword_100A81F68);
  v48 = sub_10022C350(&qword_100CD8010, &qword_100A81F78);
  sub_1000955E0(v45, v47 + *(v48 + 48), &qword_100CD7FD8, &unk_100A81F50);
  v49 = v47 + *(v48 + 64);
  *v49 = v36;
  *(v49 + 8) = v38;
  LOBYTE(v48) = v55 & 1;
  *(v49 + 16) = v55 & 1;
  v50 = v52;
  *(v49 + 24) = v41;
  *(v49 + 32) = v50;
  sub_10010CD54(v36, v38, v48);

  sub_1000180EC(v44, &qword_100CD7FD8, &unk_100A81F50);
  sub_1000180EC(v53, &qword_100CD7FE8, &qword_100A81F68);
  sub_10010CD64(v36, v38, v48);

  sub_1000180EC(v45, &qword_100CD7FD8, &unk_100A81F50);
  return sub_1000180EC(v58, &qword_100CD7FE8, &qword_100A81F68);
}

uint64_t sub_1007ADE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v22[2] = v8;
  v22[3] = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.body(_:), v4);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v15 = Text.font(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  v20 = v19;

  sub_10010CD64(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_10010CD54(v15, v17, v5 & 1);

  sub_10010CD64(v15, v17, v5 & 1);
}

uint64_t sub_1007AE060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = static HorizontalAlignment.leading.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_10022C350(&qword_100CD7F48, &unk_100A81EB8);
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a5;
  swift_bridgeObjectRetain_n();

  sub_10022C350(&qword_100CD7F50, &qword_100A81EE0);
  sub_10022C350(&qword_100CD7F58, &qword_100A81EE8);
  sub_100006F64(&qword_100CD7F60, &qword_100CD7F50, &qword_100A81EE0, &protocol conformance descriptor for [A]);
  sub_1007AE90C();
  sub_100006F64(&qword_100CD7F70, &qword_100CD7F58, &qword_100A81EE8, &protocol conformance descriptor for TupleView<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1007AE208@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v73 = a2;
  v77 = sub_10022C350(&qword_100CA6430, &unk_100A81EF0);
  __chkstk_darwin(v77);
  v68 = &v63 - v6;
  v7 = sub_10022C350(&qword_100CA6480, &qword_100A9F970);
  __chkstk_darwin(v7 - 8);
  v79 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v63 - v10;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v86 = *a1;
  *v87 = v15;
  v67 = *(a1 + 4);
  *&v87[16] = v67;
  v16 = *(a1 + 1);
  v66 = *a1;
  v65 = v16;
  v17 = *(a1 + 3);
  v64 = *(a1 + 2);
  v63 = v17;
  v93 = v86;
  v88 = *a1;
  sub_10002D5A4();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  (*(v12 + 104))(v14, enum case for Font.TextStyle.body(_:), v11);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v12 + 8))(v14, v11);
  v76 = Text.font(_:)();
  v75 = v23;
  v74 = v24;
  v80 = v25;

  sub_10010CD64(v18, v20, v22 & 1);

  v92 = *&v87[8];
  v88 = *&v87[8];

  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(a1) = v29;
  static Font.body.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v20) = v33;

  sub_10010CD64(v26, v28, a1 & 1);

  v34 = [objc_opt_self() secondaryLabelColor];
  *&v88 = Color.init(_:)();
  v71 = Text.foregroundStyle<A>(_:)();
  v70 = v35;
  v69 = v36;
  v72 = v37;
  sub_10010CD64(v30, v32, v20 & 1);

  v38 = *v87;
  sub_1002F55B8(v73, &v82);
  v39 = v82;
  v40 = v83;
  if (!*(&v82 + 1))
  {
    sub_100358150(&v93, &v88);
    sub_100358150(&v92, &v88);
    v46 = v38;
    sub_1007AE960(v66, v65, v64);
    sub_1007AE960(v39, 0, v40);
    goto LABEL_5;
  }

  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  sub_100358150(&v93, v81);
  sub_100358150(&v92, v81);
  v41 = v38;
  v42 = sub_1004CF548(&v86, &v88);

  sub_1002ED110(&v93);

  sub_1002ED110(&v92);
  if ((v42 & 1) == 0)
  {
LABEL_5:
    v47 = v68;
    Divider.init()();
    v48 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v45 = v77;
    v49 = v47 + *(v77 + 36);
    *v49 = v48;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51;
    *(v49 + 24) = v52;
    *(v49 + 32) = v53;
    *(v49 + 40) = 0;
    v44 = v78;
    sub_10002F758(v47, v78, &qword_100CA6430, &unk_100A81EF0);
    v43 = 0;
    goto LABEL_6;
  }

  v43 = 1;
  v44 = v78;
  v45 = v77;
LABEL_6:
  sub_10001B350(v44, v43, 1, v45);
  v54 = v74 & 1;
  v81[0] = v74 & 1;
  v55 = v79;
  sub_1000955E0(v44, v79, &qword_100CA6480, &qword_100A9F970);
  v56 = v76;
  v57 = v75;
  *a3 = v76;
  *(a3 + 8) = v57;
  *(a3 + 16) = v54;
  v58 = v71;
  *(a3 + 24) = v80;
  *(a3 + 32) = v58;
  v59 = v70;
  *(a3 + 40) = v70;
  v60 = v69 & 1;
  *(a3 + 48) = v69 & 1;
  *(a3 + 56) = v72;
  v61 = sub_10022C350(&qword_100CD7F78, &qword_100A81F00);
  sub_1000955E0(v55, a3 + *(v61 + 64), &qword_100CA6480, &qword_100A9F970);
  sub_10010CD54(v56, v57, v54);

  sub_10010CD54(v58, v59, v60);

  sub_1000180EC(v44, &qword_100CA6480, &qword_100A9F970);
  sub_1000180EC(v55, &qword_100CA6480, &qword_100A9F970);
  sub_10010CD64(v58, v59, v60);

  sub_10010CD64(v56, v57, v81[0]);
}

unint64_t sub_1007AE90C()
{
  result = qword_100CD7F68;
  if (!qword_100CD7F68)
  {
    result = swift_getWitnessTable(byte_100A57D4C, &type metadata for AirPollutantTableViewModel.Row, v0, v1);
    atomic_store(result, &qword_100CD7F68);
  }

  return result;
}

uint64_t sub_1007AE960(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1007AE9BC()
{
  result = qword_100CD7FF0;
  if (!qword_100CD7FF0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CD7FE0, &qword_100A81F60);
    v5[0] = sub_1007AEA48(v4);
    v5[1] = sub_1007AEAA0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CD7FF0);
  }

  return result;
}

unint64_t sub_1007AEA48(double a1)
{
  result = qword_100CB8BB0;
  if (!qword_100CB8BB0)
  {
    v4 = type metadata accessor for AttributedText();
    result = swift_getWitnessTable(&protocol conformance descriptor for AttributedText, v4, v1, v2);
    atomic_store(result, &qword_100CB8BB0);
  }

  return result;
}

unint64_t sub_1007AEAA0()
{
  result = qword_100CD7FF8;
  if (!qword_100CD7FF8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _GridAlignmentModifier, &type metadata for _GridAlignmentModifier, v0, v1);
    atomic_store(result, &qword_100CD7FF8);
  }

  return result;
}

unint64_t sub_1007AEAF4()
{
  result = qword_100CD8028;
  if (!qword_100CD8028)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7FA0, &qword_100A81F20);
    v4[0] = sub_100006F64(&unk_100CD8030, &qword_100CD7F80, &qword_100A81F08, &protocol conformance descriptor for Grid<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8028);
  }

  return result;
}

void sub_1007AEBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1007AEC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, double a6)
{
  *(v6 + 32) = 5033;
  type metadata accessor for MockServer();
  *(v6 + 40) = static MockServer.shared.getter();
  *(v6 + 64) = xmmword_100A81F90;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2240 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  *(v6 + 120) = v13;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  sub_10003E2A0(a5, v6 + 80);
  return v6;
}

void sub_1007AED24(char a1)
{
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v80 = v2;
  v81 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v82 = v5 - v4;
  v6 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for ConditionCode();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  type metadata accessor for Logger();
  sub_1000037C4();
  v83 = v16;
  v84 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  static Logger.automation.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v79 = v11;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v85 = v23;
    *v22 = 136446210;
    v24 = a1;
    v25 = sub_100381434(a1);
    v27 = sub_100078694(v25, v26, &v85);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Run test %{public}s", v22, 0xCu);
    sub_100006F14(v23);
    sub_100003884(v23);
    v28 = v22;
    v11 = v79;
    sub_100003884(v28);
  }

  else
  {
    v24 = a1;
  }

  (*(v83 + 8))(v19, v84);
  switch(v24)
  {
    case 1:
      v54 = sub_10001F7AC();
      v55(v54);
      v39 = 1;
      goto LABEL_27;
    case 2:
      v46 = sub_10001F7AC();
      v47(v46);
      v39 = 2;
      goto LABEL_27;
    case 3:
      v50 = sub_10001F7AC();
      v51(v50);
      v39 = 3;
      goto LABEL_27;
    case 4:
      v37 = sub_10001F7AC();
      v38(v37);
      v39 = 4;
      goto LABEL_27;
    case 5:
      v60 = sub_10001F7AC();
      v61(v60);
      v39 = 5;
      goto LABEL_27;
    case 6:
      v64 = sub_10001F7AC();
      v65(v64);
      v39 = 6;
LABEL_27:
      sub_1007AFDB0(v39, v21);
      goto LABEL_34;
    case 7:
      v52 = sub_10001F7AC();
      v53(v52);
      v36 = 7;
      goto LABEL_33;
    case 8:
      v70 = sub_10001F7AC();
      v71(v70);
      v36 = 8;
      goto LABEL_33;
    case 9:
      v42 = sub_10001F7AC();
      v43(v42);
      v36 = 9;
      goto LABEL_33;
    case 10:
      v68 = sub_10001F7AC();
      v69(v68);
      v36 = 10;
      goto LABEL_33;
    case 11:
      v34 = sub_10001F7AC();
      v35(v34);
      v36 = 11;
      goto LABEL_33;
    case 12:
      v40 = sub_10001F7AC();
      v41(v40);
      v36 = 12;
LABEL_33:
      sub_1007B04A0(v36, v21);
LABEL_34:
      (*(v13 + 8))(v21, v11);
      return;
    case 13:
      v62 = sub_100010B0C();
      v63(v62);
      v31 = 13;
      goto LABEL_29;
    case 14:
      v32 = sub_100010B0C();
      v33(v32);
      v31 = 14;
      goto LABEL_29;
    case 15:
      v48 = sub_100010B0C();
      v49(v48);
      v31 = 15;
      goto LABEL_29;
    case 16:
      v29 = sub_100010B0C();
      v30(v29);
      v31 = 16;
      goto LABEL_29;
    case 17:
      v56 = sub_100010B0C();
      v57(v56);
      v31 = 17;
      goto LABEL_29;
    case 18:
      v66 = sub_100010B0C();
      v67(v66);
      v31 = 18;
LABEL_29:
      sub_1007B0B90(v31, v10);
      (*(v20 + 8))(v10, v6);
      return;
    case 19:
      v58 = 19;
      v59 = 0;
      goto LABEL_39;
    case 20:
      v58 = 20;
      v59 = 1;
LABEL_39:
      sub_1007B18DC(v58, v59);
      return;
    case 21:
      sub_1007B1098(21);
      return;
    case 22:
      v44 = 22;
      v45 = 0;
      goto LABEL_41;
    case 23:
      v44 = 23;
      v45 = 1;
      goto LABEL_41;
    case 24:
      v44 = 24;
      v45 = 2;
      goto LABEL_41;
    case 25:
      v44 = 25;
      v45 = 3;
LABEL_41:
      sub_1007B11F0(v44, v45);
      return;
    case 26:
      sub_1007B1350(26);
      return;
    case 27:
      sub_1007B160C(27);
      return;
    case 28:
      v75 = sub_10000EDA4();
      v76(v75);
      v74 = 28;
      goto LABEL_43;
    case 29:
      v77 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_1000037E8();
      (*(v78 + 104))(v82, v77);
      (*(v81 + 104))(v82, enum case for WeatherMapOverlayKind.precipitation(_:), v80);
      sub_1007B27E0(29, v82);
      (*(v81 + 8))(v82, v80);
      return;
    case 30:
      v72 = sub_10000EDA4();
      v73(v72);
      v74 = 30;
LABEL_43:
      sub_1007B27E0(v74, v20);
      (*(v21 + 8))(v20, v6);
      break;
    case 31:
      sub_1007B2CC4(31);
      break;
    case 32:
      sub_1007B2DE4(32);
      break;
    default:
      sub_1007AF4A4(0);
      break;
  }
}

void sub_1007AF4A4(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v51 = *(v59 - 8);
  __chkstk_darwin(v59);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v43 - v8;
  v47 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v47);
  v48 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v10 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ConditionCode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100381434(v2);
  v21 = v20;
  if ([objc_opt_self() isRecapAvailable])
  {
    v45 = v21;
    v46 = v2;
    v57 = v1;
    v44 = v3;
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2238 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v22 = &enum case for ConditionCode.clear(_:);
    v23 = 0;
    switch(aBlock)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v22 = &enum case for ConditionCode.cloudy(_:);
        goto LABEL_11;
      case 3:
        v22 = &enum case for ConditionCode.mostlyCloudy(_:);
        goto LABEL_11;
      case 4:
        v22 = &enum case for ConditionCode.rain(_:);
        goto LABEL_11;
      case 5:
        v22 = &enum case for ConditionCode.thunderstorms(_:);
        goto LABEL_11;
      case 6:
        v22 = &enum case for ConditionCode.strongStorms(_:);
LABEL_11:
        (*(v17 + 104))(v19, *v22, v16);
        StubPPTWeatherDataManager.setupStubData(for:)();
        (*(v17 + 8))(v19, v16);
        v23 = 1;
        break;
      default:
        break;
    }

    v24 = v23;
    static SettingReader.shared.getter();
    static Settings.VFX.animatedBackgrounds.getter();
    Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

    SettingReader.read<A>(_:)();

    static Settings.VFX.animatedBackgrounds.getter();
    v25 = dispatch thunk of SettingGroup.isEnabled.getter();

    v26 = v60;
    (*(v10 + 104))(v12, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v60);
    v27 = sub_1001497E4(v15, v12);
    v28 = *(v10 + 8);
    v28(v12, v26);
    if (v27 & 1) != 0 && (v25)
    {
      v29 = [objc_opt_self() standardUserDefaults];
      LOBYTE(aBlock) = 0;
      NSUserDefaults.set<A>(_:for:)();

      v30 = v57;
      v31 = *(v57 + 16);
      v32 = *(v57 + 24);
      v43 = v28;
      v33 = v48;
      *v48 = 1;
      type metadata accessor for PerformanceTestAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v63 = 0;
      aBlock = 0u;
      v62 = 0u;
      sub_10004F034(v33, &aBlock, v31, v32);
      sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
      sub_10004FB48(v33, type metadata accessor for MainAction);
      sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
      v48 = static OS_dispatch_queue.main.getter();
      v34 = v49;
      static DispatchTime.now()();
      v35 = v50;
      + infix(_:_:)();
      v51 = *(v51 + 8);
      (v51)(v34, v59);
      v36 = swift_allocObject();
      *(v36 + 16) = v30;
      *(v36 + 24) = v24;
      *(v36 + 25) = v46;
      v37 = v45;
      *(v36 + 32) = v58;
      *(v36 + 40) = v37;
      *(v36 + 48) = 1;
      v63 = sub_1007B9D48;
      v64 = v36;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v62 = sub_1000742F0;
      *(&v62 + 1) = &unk_100C6BDF8;
      v38 = _Block_copy(&aBlock);

      v39 = v52;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_1000743E8();
      v40 = v54;
      v41 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v42 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v38);

      (*(v56 + 8))(v40, v41);
      (*(v53 + 8))(v39, v55);
      (v51)(v35, v59);
      v43(v15, v60);
    }

    else
    {
      sub_1007B367C(0, 0, v57, v24, v46, v58, v45);

      v28(v15, v26);
    }
  }

  else
  {

    sub_1007B3490(v2, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007AFDB0(int a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v40 - v12;
  v43 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v43);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  StubPPTWeatherDataManager.setupStubData(for:)();
  sub_1008A5EC4(1, 1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v22 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v16 + 104))(v18, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v15);
  v23 = sub_1001497E4(v21, v18);
  v24 = *(v16 + 8);
  v24(v18, v15);
  if (v23 & 1) != 0 && (v22)
  {
    v25 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v42 = v15;
    v26 = *(v3 + 16);
    v27 = *(v3 + 24);
    type metadata accessor for PerformanceTestAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v56 = 0;
    aBlock = 0u;
    v55 = 0u;
    sub_10004F034(v14, &aBlock, v26, v27);
    sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
    sub_10004FB48(v14, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v41 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v53 + 8);
    v53 += 8;
    v43 = v28;
    v28(v10, v52);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = v50;
    *(v29 + 25) = 1;
    v56 = sub_1007B9E98;
    v57 = v29;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_1000742F0;
    *(&v55 + 1) = &unk_100C6BF60;
    v30 = _Block_copy(&aBlock);

    v31 = v44;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v32 = v21;
    v33 = v24;
    v34 = v46;
    v35 = v49;
    v36 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v51;
    v38 = v41;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v48 + 8))(v34, v35);
    (*(v45 + 8))(v31, v47);
    v43(v37, v52);
    return v33(v32, v36);
  }

  else
  {
    sub_1007B4590(0, 0, v3, v50, 6u, &unk_100C6BFC0, sub_1007B9EA8, &unk_100C6BFD8);
    return (v24)(v21, v15);
  }
}

uint64_t sub_1007B04A0(int a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v40 - v12;
  v43 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v43);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  StubPPTWeatherDataManager.setupStubData(for:)();
  sub_1008A5EC4(1, 1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v22 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v16 + 104))(v18, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v15);
  v23 = sub_1001497E4(v21, v18);
  v24 = *(v16 + 8);
  v24(v18, v15);
  if (v23 & 1) != 0 && (v22)
  {
    v25 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v42 = v15;
    v26 = *(v3 + 16);
    v27 = *(v3 + 24);
    type metadata accessor for PerformanceTestAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v56 = 0;
    aBlock = 0u;
    v55 = 0u;
    sub_10004F034(v14, &aBlock, v26, v27);
    sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
    sub_10004FB48(v14, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v41 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v53 + 8);
    v53 += 8;
    v43 = v28;
    v28(v10, v52);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = v50;
    *(v29 + 25) = 1;
    v56 = sub_1007B9EF8;
    v57 = v29;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_1000742F0;
    *(&v55 + 1) = &unk_100C6C0A0;
    v30 = _Block_copy(&aBlock);

    v31 = v44;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v32 = v21;
    v33 = v24;
    v34 = v46;
    v35 = v49;
    v36 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v51;
    v38 = v41;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v48 + 8))(v34, v35);
    (*(v45 + 8))(v31, v47);
    v43(v37, v52);
    return v33(v32, v36);
  }

  else
  {
    sub_1007B4590(0, 0, v3, v50, 7u, &unk_100C6C100, sub_1007B9F08, &unk_100C6C118);
    return (v24)(v21, v15);
  }
}

uint64_t sub_1007B0B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v32 = a1;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v34 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v31[-v14];
  v16 = type metadata accessor for MainAction(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1007B3490(v5, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_, v17);
  v20 = *(v3 + 16);
  v21 = *(v3 + 24);
  v22 = type metadata accessor for WeatherCondition();
  (*(*(v22 - 8) + 16))(v19, a2, v22);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v42 = 0;
  aBlock = 0u;
  v41 = 0u;
  sub_10004F034(v19, &aBlock, v20, v21);
  sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v19, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v10 + 8);
  v33 = v10 + 8;
  v24(v12, v9);
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v32;
  v42 = sub_1007BA3C8;
  v43 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v41 = sub_1000742F0;
  *(&v41 + 1) = &unk_100C6C320;
  v26 = _Block_copy(&aBlock);

  v27 = v34;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v29 = v35;
  v28 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v39 + 8))(v29, v28);
  (*(v37 + 8))(v27, v38);
  return (v24)(v15, v9);
}

void sub_1007B1098(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for MainAction(0);
  v4 = __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007B3490(v2, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_, v4);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v6, v9, v7, v8);
  sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v6, type metadata accessor for MainAction);
  sub_1007B3490(v2, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);
}

void sub_1007B11F0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = type metadata accessor for MainAction(0);
  v6 = __chkstk_darwin(v5);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007B3490(v4, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_, v6);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  *v8 = a2;
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v8, v11, v9, v10);
  sub_1000180EC(v11, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v8, type metadata accessor for MainAction);
  sub_1007B3490(v4, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);
}

void sub_1007B1350(uint64_t a1)
{
  v1 = a1;
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v2 = sub_100381434(v1);
  v4 = v3;
  v5 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v20, v21);
  dispatch thunk of WindowType.bounds.getter();
  v6 = CGRectGetHeight(v24) * 0.7;
  sub_100006F14(v20);
  v7 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
  v8 = sub_1007B9C24(40.0, v6, 300.0, 10.0, v2, v4, 5, 6, 0, 0);
  v9 = objc_opt_self();
  v10 = sub_100381434(v1);
  v12 = v11;
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3BD20;
  *(v13 + 32) = v8;
  v14 = v8;
  sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v1;
  v22 = sub_1007BA3C4;
  v23 = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000742F0;
  v21 = &unk_100C6C370;
  v18 = _Block_copy(v20);

  v19 = sub_1007B9DC4(v10, v12, isa, v18, v9);
  _Block_release(v18);

  [objc_opt_self() runTestWithParameters:v19];
}

void sub_1007B160C(uint64_t a1)
{
  v1 = a1;
  sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v23, v24);
  dispatch thunk of WindowType.bounds.getter();
  v28 = CGRectInset(v27, 10.0, 90.0);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  sub_100006F14(v23);
  v7 = sub_100381434(v1);
  v9 = v8;
  v10 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
  v11 = sub_1007B9C24(x, y, width, height, v7, v9, 3, 3, 0, 0);
  v12 = objc_opt_self();
  v13 = sub_100381434(v1);
  v15 = v14;
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100A3BD20;
  *(v16 + 32) = v11;
  v17 = v11;
  sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v1;
  v25 = sub_1007BA3C4;
  v26 = v20;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000742F0;
  v24 = &unk_100C6C3C0;
  v21 = _Block_copy(v23);

  v22 = sub_1007B9DC4(v13, v15, isa, v21, v12);
  _Block_release(v21);

  [objc_opt_self() runTestWithParameters:v22];
}

void sub_1007B18DC(uint64_t a1, int a2)
{
  LODWORD(v144) = a2;
  v3 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v138 = *(v4 - 8);
  v139 = v4;
  __chkstk_darwin(v4);
  v136 = &v116[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = type metadata accessor for DispatchQoS();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = type metadata accessor for DispatchTime();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v116[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v131 = &v116[-v9];
  v145 = type metadata accessor for ConditionCode();
  v149 = *(v145 - 8);
  __chkstk_darwin(v145);
  v129 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Location.Identifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v128 = &v116[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v141 = &v116[-v15];
  __chkstk_darwin(v16);
  v142 = &v116[-v17];
  __chkstk_darwin(v18);
  v20 = &v116[-v19];
  v21 = type metadata accessor for SavedLocation();
  v143 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v127 = &v116[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v140 = &v116[-v24];
  __chkstk_darwin(v25);
  v27 = &v116[-v26];
  v29 = __chkstk_darwin(v28);
  v31 = &v116[-v30];
  sub_1007B3490(v3, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_, v29);
  sub_1000161C0(v2 + 10, v2[13]);
  v32 = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  if (*(v32 + 16) < 5uLL)
  {

    sub_1007B3490(v3, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
    return;
  }

  v122 = v3;
  v123 = v2;
  v121 = v2[6];
  sub_10022C350(&qword_100CD81F0, &qword_100A82090);
  v33 = sub_10022C350(&qword_100CD81F8, &unk_100A82098);
  v34 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
  v147 = *(*(v33 - 8) + 72);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100A3B020;
  v120 = v35;
  v36 = v35 + v34;
  v148 = v33;
  v37 = *(v33 + 48);
  v38 = v143;
  v125 = v32 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  sub_1001A30C4(v125, v31);
  SavedLocation.identifier.getter();
  sub_10004FB48(v31, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v40 = v39;
  v42 = v41;
  v43 = *(v12 + 8);
  v146 = v11;
  v126 = v43;
  v43(v20, v11);
  sub_1007B4424(v40, v42);
  v44 = *(v149 + 104);
  v45 = v12 + 8;
  v124 = v149 + 104;
  if (v144)
  {
    v46 = enum case for ConditionCode.clear(_:);
    v47 = v145;
    (v44)(v36 + v37, enum case for ConditionCode.clear(_:), v145);
    if (*(v32 + 16) >= 2uLL)
    {
      v117 = v46;
      v119 = v44;
      v48 = v36 + v147;
      v118 = *(v148 + 48);
      v49 = v45;
      v50 = *(v38 + 72);
      v51 = v125;
      v144 = v50;
      sub_1001A30C4(v125 + v50, v27);
      v52 = v142;
      SavedLocation.identifier.getter();
      sub_10004FB48(v27, &type metadata accessor for SavedLocation);
      Location.Identifier.coordinate.getter();
      v54 = v53;
      v56 = v55;
      v143 = v49;
      v126(v52, v146);
      sub_1007B4424(v54, v56);
      v57 = v48 + v118;
      v58 = v119;
      (v119)(v57, enum case for ConditionCode.snow(_:), v47);
      if (*(v32 + 16) >= 3uLL)
      {
        v59 = v36 + 2 * v147;
        v60 = *(v148 + 48);
        v61 = v140;
        sub_1001A30C4(v51 + 2 * v144, v140);
        v62 = v141;
        SavedLocation.identifier.getter();
        sub_10004FB48(v61, &type metadata accessor for SavedLocation);
        Location.Identifier.coordinate.getter();
        v64 = v63;
        v66 = v65;
        v67 = v62;
        v68 = v126;
        v126(v67, v146);
        sub_1007B4424(v64, v66);
        v58(v59 + v60, enum case for ConditionCode.thunderstorms(_:), v47);
        if (*(v32 + 16) >= 4uLL)
        {
          v69 = v36 + 3 * v147;
          v70 = *(v148 + 48);
          v71 = v127;
          sub_1001A30C4(v51 + 3 * v144, v127);

          v72 = v128;
          SavedLocation.identifier.getter();
          sub_10004FB48(v71, &type metadata accessor for SavedLocation);
          Location.Identifier.coordinate.getter();
          v74 = v73;
          v76 = v75;
          v68(v72, v146);
          sub_1007B4424(v74, v76);
          v58(v69 + v70, enum case for ConditionCode.strongStorms(_:), v47);
          type metadata accessor for StubPPTWeatherDataManager.CoordinateString();
          sub_1000674D4(&unk_100CD8200, &type metadata accessor for StubPPTWeatherDataManager.CoordinateString, &protocol conformance descriptor for StubPPTWeatherDataManager.CoordinateString);
          Dictionary.init(dictionaryLiteral:)();
          v77 = v117;
LABEL_12:
          v105 = v129;
          v58(v129, v77, v47);
          StubPPTWeatherDataManager.setupStubData(for:defaultCondition:)();

          (*(v149 + 8))(v105, v47);
          v106 = v123;
          sub_1008A5EC4(1, 1);
          sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
          v107 = static OS_dispatch_queue.main.getter();
          v108 = v130;
          static DispatchTime.now()();
          v109 = v131;
          + infix(_:_:)();
          v149 = *(v132 + 8);
          v110 = v133;
          (v149)(v108, v133);
          v111 = swift_allocObject();
          *(v111 + 16) = v106;
          *(v111 + 24) = v122;
          aBlock[4] = sub_1007BA01C;
          aBlock[5] = v111;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000742F0;
          aBlock[3] = &unk_100C6C410;
          v112 = _Block_copy(aBlock);

          v113 = v134;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
          sub_1000743E8();
          v114 = v136;
          v115 = v139;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v112);

          (*(v138 + 8))(v114, v115);
          (*(v135 + 8))(v113, v137);
          (v149)(v109, v110);
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(v144) = enum case for ConditionCode.cloudy(_:);
  v47 = v145;
  (v44)(v36 + v37);
  if (*(v32 + 16) < 2uLL)
  {
    goto LABEL_14;
  }

  v78 = v36 + v147;
  v119 = *(v148 + 48);
  v143 = *(v38 + 72);
  sub_1001A30C4(v125 + v143, v27);
  v79 = v142;
  SavedLocation.identifier.getter();
  sub_10004FB48(v27, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v81 = v80;
  v83 = v82;
  v126(v79, v146);
  sub_1007B4424(v81, v83);
  v84 = &v119[v78];
  v85 = v44;
  (v44)(v84, v144, v47);
  if (*(v32 + 16) < 3uLL)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v86 = v36 + 2 * v147;
  v87 = *(v148 + 48);
  v88 = v140;
  sub_1001A30C4(v125 + 2 * v143, v140);
  v89 = v141;
  SavedLocation.identifier.getter();
  sub_10004FB48(v88, &type metadata accessor for SavedLocation);
  Location.Identifier.coordinate.getter();
  v91 = v90;
  v93 = v92;
  v94 = v89;
  v95 = v146;
  v96 = v126;
  v126(v94, v146);
  sub_1007B4424(v91, v93);
  v85(v86 + v87, v144, v47);
  if (*(v32 + 16) >= 4uLL)
  {
    v97 = v36 + 3 * v147;
    v98 = *(v148 + 48);
    v99 = v127;
    sub_1001A30C4(v125 + 3 * v143, v127);

    v100 = v128;
    SavedLocation.identifier.getter();
    sub_10004FB48(v99, &type metadata accessor for SavedLocation);
    Location.Identifier.coordinate.getter();
    v102 = v101;
    v104 = v103;
    v96(v100, v95);
    sub_1007B4424(v102, v104);
    v58 = v85;
    v85(v97 + v98, enum case for ConditionCode.partlyCloudy(_:), v47);
    type metadata accessor for StubPPTWeatherDataManager.CoordinateString();
    sub_1000674D4(&unk_100CD8200, &type metadata accessor for StubPPTWeatherDataManager.CoordinateString, &protocol conformance descriptor for StubPPTWeatherDataManager.CoordinateString);
    Dictionary.init(dictionaryLiteral:)();
    v77 = enum case for ConditionCode.clear(_:);
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

void sub_1007B27E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  if ([v9 isRecapAvailable])
  {
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = sub_10022C350(&unk_100CD8210, &unk_100A9E5D0);
    v44 = v9;
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    *v8 = 2;
    v15 = type metadata accessor for WeatherMapOverlayKind();
    (*(*(v15 - 8) + 16))(&v8[v13], a2, v15);
    v8[v14] = 1;
    type metadata accessor for PerformanceTestAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v47 = 0;
    aBlock = 0u;
    v46 = 0u;
    sub_10004F034(v8, &aBlock, v10, v11);
    sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
    sub_10004FB48(v8, type metadata accessor for MainAction);
    v16 = sub_100381434(v5);
    v18 = v17;
    v19 = objc_opt_self();
    v20 = [v19 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(&aBlock, *(&v46 + 1));
    dispatch thunk of WindowType.bounds.getter();
    v21 = CGRectGetHeight(v49) * 0.7;
    sub_100006F14(&aBlock);
    v22 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v23 = sub_1007B9C24(40.0, v21, 300.0, 10.0, v16, v18, 3, 6, 0, 0);
    v24 = sub_100381434(v5);
    v26 = v25;
    v27 = [v19 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(&aBlock, *(&v46 + 1));
    dispatch thunk of WindowType.bounds.getter();
    v28 = CGRectGetHeight(v50) * 0.7;
    sub_100006F14(&aBlock);
    v29 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v30 = sub_1007B9C24(40.0, v28, 300.0, 10.0, v24, v26, 6, 5, 0, 0);
    v31 = objc_opt_self();
    v32 = sub_100381434(v5);
    v34 = v33;
    sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100A81FA0;
    *(v35 + 32) = v23;
    *(v35 + 40) = v30;
    *(v35 + 48) = v23;
    v36 = v23;
    v37 = v30;
    sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v5;
    v47 = sub_1007BA05C;
    v48 = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_1000742F0;
    *(&v46 + 1) = &unk_100C6C460;
    v41 = _Block_copy(&aBlock);

    v42 = sub_1007B9DC4(v32, v34, isa, v41, v31);
    _Block_release(v41);

    [v44 runTestWithParameters:v42];
  }

  else
  {
    sub_1007B3490(v5, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007B2CC4(char a1)
{
  v2 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_10001B350(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v7 + 40) = a1;
  sub_1007B6A20(v4, &unk_100A820B0, v7);

  return sub_1000180EC(v4, &qword_100CA3538, &qword_100A2D560);
}

uint64_t sub_1007B2DE4(int a1)
{
  v2 = v1;
  LODWORD(v46) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchTime();
  v39 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v36 - v9;
  v37 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  sub_1008A5EC4(1, *(v1 + 120));
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v19 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v13 + 104))(v15, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v12);
  v20 = sub_1001497E4(v18, v15);
  v21 = *(v13 + 8);
  v21(v15, v12);
  if (v20 & 1) != 0 && (v19)
  {
    v22 = [objc_opt_self() standardUserDefaults];
    LOBYTE(aBlock) = 0;
    NSUserDefaults.set<A>(_:for:)();

    v36 = v12;
    v23 = *(v2 + 16);
    v24 = *(v2 + 24);
    type metadata accessor for PerformanceTestAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v50 = 0;
    aBlock = 0u;
    v49 = 0u;
    sub_10004F034(v11, &aBlock, v23, v24);
    sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
    sub_10004FB48(v11, type metadata accessor for MainAction);
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v37 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v25 = v38;
    + infix(_:_:)();
    v39 = *(v39 + 8);
    (v39)(v7, v47);
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    *(v26 + 24) = v46;
    *(v26 + 25) = 1;
    v50 = sub_1007BA228;
    v51 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v49 = sub_1000742F0;
    *(&v49 + 1) = &unk_100C6C6B8;
    v27 = _Block_copy(&aBlock);

    v46 = v21;
    v28 = v40;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v29 = v42;
    v30 = v45;
    v31 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v37;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);

    (*(v44 + 8))(v29, v30);
    v33 = v28;
    v34 = v46;
    (*(v41 + 8))(v33, v43);
    (v39)(v25, v47);
    return v34(v18, v31);
  }

  else
  {
    sub_1007B6BF0(0, 0, v2, v46);
    return (v21)(v18, v12);
  }
}

void sub_1007B3490(char a1, uint64_t (*a2)(void), const char *a3, SEL *a4, ...)
{
  v8 = type metadata accessor for Logger();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  static Logger.automation.getter();
  v15 = Logger.logObject.getter();
  v16 = a2();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a4;
    v27 = swift_slowAlloc();
    v18 = v27;
    *v17 = 136446210;
    v19 = sub_100381434(a1);
    v21 = sub_100078694(v19, v20, &v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 0xCu);
    sub_100006F14(v18);
    v22 = v18;
    a4 = v26;
    sub_100003884(v22);
    sub_100003884(v17);

    (*(v10 + 8))(v14, v8);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  v23 = [objc_opt_self() sharedApplication];
  v24 = sub_100381434(a1);
  sub_10016941C(v24, v25, v23, a4);
}

uint64_t sub_1007B367C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v39 = a6;
  v40 = a2;
  v38 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a3 + 120);
  }

  sub_1008A5EC4(1, v24);
  v25 = *(a3 + 16);
  v26 = *(a3 + 24);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v50 = 0;
  aBlock = 0u;
  v49 = 0u;
  sub_10004F034(v23, &aBlock, v25, v26);
  sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v23, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v37 = *(v15 + 8);
  v37(v17, v14);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = v38;
  v29 = v20;
  v30 = v42;
  *(v28 + 32) = v39;
  *(v28 + 40) = v30;
  *(v28 + 48) = a1;
  *(v28 + 56) = v40;
  v50 = sub_1007B9D7C;
  v51 = v28;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1000742F0;
  *(&v49 + 1) = &unk_100C6BE70;
  v31 = _Block_copy(&aBlock);

  sub_10007A47C(a1);

  v32 = v41;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v33 = v43;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v46 + 8))(v33, v34);
  (*(v44 + 8))(v32, v45);
  return (v37)(v29, v14);
}

void sub_1007B3B80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
  v10 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(aBlock, v32);
  dispatch thunk of WindowType.bounds.getter();
  v36 = CGRectInset(v35, 10.0, 120.0);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  sub_100006F14(aBlock);

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v15 = CGRectGetHeight(v37) * 3.0;
  v16 = objc_allocWithZone(RPTScrollViewTestParameters);

  v17 = sub_1007B9B14(x, y, width, height, v15, a3, a4, 1, 0, 0);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v18 = CGRectGetHeight(v38) * 3.0;
  v19 = objc_allocWithZone(RPTScrollViewTestParameters);
  v20 = sub_1007B9B14(x, y, width, height, v18, a3, a4, 0, 0, 0);
  v21 = objc_opt_self();
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3AEB0;
  *(v22 + 32) = v17;
  *(v22 + 40) = v20;
  v23 = v17;
  v24 = v20;
  sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a2;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  v33 = sub_1007B9D90;
  v34 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  v32 = &unk_100C6BEE8;
  v28 = _Block_copy(aBlock);
  sub_10007A47C(a5);

  v29 = sub_1007B9E38(a3, a4, isa, v28, v21);
  _Block_release(v28);

  [objc_opt_self() runTestWithParameters:v29];
}

uint64_t sub_1007B3EF0(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  sub_1007B367C(sub_1007B9D60, v12, a1, a2, a3, a4, a5);
}

void sub_1007B3F9C(char a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_100381434(a1);
  v8 = v7;
  v9 = objc_opt_self();
  if ([v9 isRecapAvailable])
  {
    sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v10 = [objc_opt_self() sharedApplication];
    UIApplication.expectedWindow.getter();

    v30 = a3;
    sub_1000161C0(aBlock, v32);
    dispatch thunk of WindowType.bounds.getter();
    v36 = CGRectInset(v35, 10.0, 90.0);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    sub_100006F14(aBlock);

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v15 = CGRectGetHeight(v37) * 3.0;
    v16 = objc_allocWithZone(RPTScrollViewTestParameters);

    v17 = sub_1007B9B14(x, y, width, height, v15, v6, v8, 1, 0, 0);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v18 = CGRectGetHeight(v38) * 3.0;
    v19 = objc_allocWithZone(RPTScrollViewTestParameters);
    v20 = sub_1007B9B14(x, y, width, height, v18, v6, v8, 0, 0, 0);
    v29 = objc_opt_self();
    sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A3AEB0;
    *(v21 + 32) = v17;
    *(v21 + 40) = v20;
    v22 = v17;
    v23 = v20;
    sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = v30;
    v33 = sub_1007BA454;
    v34 = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    v32 = &unk_100C6C050;
    v27 = _Block_copy(aBlock);
    sub_10007A47C(a2);

    v28 = sub_1007B9DC4(v6, v8, isa, v27, v29);
    _Block_release(v27);

    [v9 runTestWithParameters:v28];
  }

  else
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1007B4378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B4590(sub_1007BA3EC, v6, a1, v4, 6u, &unk_100C6BFC0, sub_1007B9EA8, &unk_100C6BFD8);
}

uint64_t sub_1007B4424(double a1, double a2)
{
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2C3F0;
  *(v8 + 56) = &type metadata for Double;
  *(v8 + 64) = &protocol witness table for Double;
  *(v8 + 32) = a2;
  v10 = String.init(format:_:)();

  return StubPPTWeatherDataManager.CoordinateString.init(latitude:longitude:)(v5, v7, v10, v9);
}

uint64_t sub_1007B452C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100021698(a1, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014E5C();
    sub_1007B3490(v2, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1007B4590(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v42 = a6;
  v43 = a1;
  v40[3] = a5;
  v45 = a4;
  v44 = a2;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v52 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v48 = v12 - v11;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v50 = v14;
  v51 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchTime();
  v41 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v40 - v23;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = *(a3 + 16);
  v30 = *(a3 + 24);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v55 = 0;
  aBlock = 0u;
  v54 = 0u;
  sub_10004F034(v28, &aBlock, v29, v30);
  sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v28, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v32 = *(v19 + 8);
  v32(v21, v18);
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = v45;
  v35 = v43;
  v34 = v44;
  *(v33 + 32) = v43;
  *(v33 + 40) = v34;
  v55 = v46;
  v56 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v54 = sub_1000742F0;
  *(&v54 + 1) = v47;
  v36 = _Block_copy(&aBlock);

  sub_10007A47C(v35);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v37 = v48;
  v38 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v36);

  (*(v52 + 8))(v37, v38);
  (*(v50 + 8))(v17, v51);
  return (v32)(v24, v41);
}

uint64_t sub_1007B49F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_10007A47C(a3);
  a7(a2, a6, v12);
}

void sub_1007B4A8C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100381434(a1);
  v10 = v9;
  v11 = objc_opt_self();
  if ([v11 isRecapAvailable])
  {
    v42 = a3;
    sub_1007B3490(a1, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v12 = objc_opt_self();
    v13 = [v12 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(aBlock, v44);
    dispatch thunk of WindowType.bounds.getter();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);

    v23 = sub_1007B9C24(v15, v17, v19, v21, v8, v10, 1, 6, 0, 0);
    sub_100006F14(aBlock);
    v24 = [v12 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(aBlock, v44);
    dispatch thunk of WindowType.bounds.getter();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = objc_allocWithZone(RPTDirectionalSwipeTestParameters);
    v34 = sub_1007B9C24(v26, v28, v30, v32, v8, v10, 1, 5, 0, 0);
    sub_100006F14(aBlock);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v23;
    *(v35 + 32) = v4;
    *(v35 + 40) = a1;
    v36 = a2;
    *(v35 + 48) = a2;
    *(v35 + 56) = v42;
    v37 = sub_10000C70C(0, &qword_100CD81E8, RPTTestRunner_ptr);
    v38 = swift_allocObject();
    v38[2] = 0x3FF0000000000000;
    v38[3] = v37;
    v38[4] = 2;
    v38[5] = v23;
    v38[6] = sub_1007B9FBC;
    v38[7] = v35;
    v45 = sub_1007B9FD0;
    v46 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007AEBB4;
    v44 = &unk_100C6C1B8;
    v39 = _Block_copy(aBlock);
    v40 = v23;
    v41 = v34;

    sub_10007A47C(v36);

    [v11 runTestWithParameters:v40 resultHandler:v39];
    _Block_release(v39);
  }

  else
  {

    sub_1007B3490(a1, &static os_log_type_t.error.getter, "Failed test: %{public}s", &selRef_failedTest_);
  }
}

uint64_t sub_1007B4E38(uint64_t a1, int a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B4590(sub_1007BA3EC, v6, a1, a2, 7u, &unk_100C6C100, sub_1007B9F08, &unk_100C6C118);
}

uint64_t sub_1007B4EE4(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  v13 = sub_10000C70C(0, &qword_100CD81E8, RPTTestRunner_ptr);
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = 0x3FF0000000000000;
  v15[3] = v13;
  v15[4] = 4;
  v15[5] = a1;
  v15[6] = sub_1007B9FD4;
  v15[7] = v12;
  v20[4] = sub_1007BA44C;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1007AEBB4;
  v20[3] = &unk_100C6C230;
  v16 = _Block_copy(v20);
  v17 = a2;

  sub_10007A47C(a5);
  v18 = a1;

  [v14 runTestWithParameters:v18 resultHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1007B5088(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = sub_10000C70C(0, &qword_100CD81E8, RPTTestRunner_ptr);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2] = 0x3FF0000000000000;
  v13[3] = v11;
  v13[4] = 2;
  v13[5] = a1;
  v13[6] = sub_1007BA454;
  v13[7] = v10;
  v17[4] = sub_1007BA44C;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1007AEBB4;
  v17[3] = &unk_100C6C2A8;
  v14 = _Block_copy(v17);

  sub_10007A47C(a4);
  v15 = a1;

  [v12 runTestWithParameters:v15 resultHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1007B5248(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a2;
  sub_100021698(a1, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014E5C();
    sub_1007B3490(v4, v6, v7, v8);
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1007B52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 241) = a5;
  *(v5 + 88) = a4;
  v6 = type metadata accessor for Logger();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1007B53A0, 0, 0);
}

uint64_t sub_1007B53A0()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 242) = sub_1007B62DC() & 1;
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1007B55B4;

    return sub_1007B64D8();
  }

  else
  {
    static Logger.automation.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = String.init<A>(describing:)();
      v14 = sub_100078694(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to run list view to location view transition test with error: %{public}s", v10, 0xCu);
      sub_100006F14(v11);
      sub_100003884(v11);
      sub_100003884(v10);
    }

    (*(v9 + 8))(v7, v8);

    sub_100003B14();

    return v15();
  }
}

uint64_t sub_1007B55B4()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 152) = v10;
    *v10 = v5;
    v10[1] = sub_1007B570C;

    return sub_1007B6688(2);
  }
}

uint64_t sub_1007B570C()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 168) = v10;
    *v10 = v5;
    v10[1] = sub_1007B5860;

    return sub_1007B64D8();
  }
}

uint64_t sub_1007B5860()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1007B595C()
{
  sub_100003B08();
  v0[23] = objc_opt_self();
  v0[24] = type metadata accessor for MainActor();
  v0[25] = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007B59FC, v2, v1);
}

uint64_t sub_1007B59FC()
{
  sub_100003B08();
  v1 = *(v0 + 184);

  *(v0 + 208) = [v1 sharedApplication];
  sub_10000E700();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1007B5A7C()
{
  sub_100003B08();
  *(v0 + 216) = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007B5B00, v2, v1);
}

uint64_t sub_1007B5B00()
{
  sub_100003B08();
  v1 = *(v0 + 208);

  UIApplication.expectedWindow.getter();

  sub_10000E700();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1007B5B6C()
{
  sub_100013494();
  sub_1000161C0((v0 + 16), *(v0 + 40));
  sub_100037034();
  dispatch thunk of WindowType.bounds.getter();
  v1 = CGRectGetWidth(v6) * 0.5;
  sub_100006F14((v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_1007B5C44;
  v3 = *(v0 + 241);

  return sub_1007B6748(v3, v1, 200.0);
}

uint64_t sub_1007B5C44()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1007B5D40()
{
  sub_100013494();
  v1 = *(v0 + 242);
  v2 = [objc_opt_self() standardUserDefaults];
  *(v0 + 240) = v1;
  NSUserDefaults.set<A>(_:for:)();

  sub_100003B14();

  return v3();
}

uint64_t sub_1007B62DC()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();

  static Settings.VFX.animatedBackgrounds.getter();
  v7 = dispatch thunk of SettingGroup.isEnabled.getter();

  (*(v1 + 104))(v3, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:), v0);
  v8 = sub_1001497E4(v6, v3);
  v9 = *(v1 + 8);
  v9(v3, v0);
  if (v8 & 1) != 0 && (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v12[15] = 0;
    NSUserDefaults.set<A>(_:for:)();
  }

  v9(v6, v0);
  return v7 & 1;
}

uint64_t sub_1007B64F8()
{
  sub_100003B08();
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1007B658C;
  v2 = swift_continuation_init();
  sub_1007B7630(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1007B658C()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_10000CCF8();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1007B6688(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_1007B66A8, 0, 0);
}

uint64_t sub_1007B66A8()
{
  sub_100013494();
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1007BA450;
  v3 = swift_continuation_init();
  sub_1007B7CE4(v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1007B6748(char a1, double a2, double a3)
{
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 120) = a1;
  return _swift_task_switch(sub_1007B6770, 0, 0);
}

uint64_t sub_1007B6770()
{
  sub_100003B08();
  swift_weakInit();
  sub_10000E700();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1007B67D4()
{
  sub_100013494();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1007B6880;
  v3 = *(v0 + 120);
  v4 = swift_continuation_init();
  sub_1007B83D8(v4, v0 + 80, v3, v2, v1);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1007B6880()
{
  sub_100013494();
  sub_10000CCF8();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 48);
  *(v1 + 112) = v5;
  if (v5)
  {
    swift_willThrow();
    sub_10000E700();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    swift_weakDestroy();
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_1007B69C4()
{
  sub_100003B08();
  swift_weakDestroy();
  sub_100003B14();

  return v0();
}

uint64_t sub_1007B6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  sub_100386B2C(a1, v15 - v7);
  v9 = type metadata accessor for TaskPriority();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  if (v12 | v10)
  {
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = v10;
    v15[3] = v12;
  }

  return swift_task_create();
}

uint64_t sub_1007B6BF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v30 = a4;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v29 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v38 = 0;
  aBlock = 0u;
  v37 = 0u;
  sub_10004F034(v18, &aBlock, v19, v20);
  sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
  sub_10004FB48(v18, type metadata accessor for MainAction);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v12, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v30;
  v38 = sub_1007BA238;
  v39 = v23;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_1000742F0;
  *(&v37 + 1) = &unk_100C6C730;
  v24 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v25 = v31;
  v26 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v35 + 8))(v25, v26);
  (*(v33 + 8))(v8, v34);
  return (v22)(v15, v29);
}

uint64_t sub_1007B7078(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v29 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v28 - v14;
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_, v13);
  v16 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(aBlock, v36);
  dispatch thunk of WindowType.bounds.getter();
  v17 = CGRectGetWidth(v39) * 0.5;
  sub_100006F14(aBlock);
  v18 = objc_allocWithZone(type metadata accessor for FastScrollParameters());
  v19 = sub_1007B9394(v17, 400.0, 200.0, 0.1);
  [objc_opt_self() runTestWithParameters:v19];
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = v9 + 8;
  v22 = *(v9 + 8);
  v28[1] = v21;
  v22(v11, v8);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v37 = sub_1007BA3C8;
  v38 = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  v36 = &unk_100C6C780;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v34 + 8))(v26, v4);
  (*(v32 + 8))(v25, v33);
  return (v22)(v15, v29);
}

uint64_t sub_1007B7530(uint64_t a1, int a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_1007B6BF0(sub_1007BA3EC, v6, a1, a2);
}

void sub_1007B75B4(char a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.set<A>(_:for:)();
}

uint64_t sub_1007B7630(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v39 = type metadata accessor for DispatchTime();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = v30 - v5;
  v36 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v49 = sub_1007BA220;
  v50 = a2;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v35 = &v47;
  v47 = sub_1000742F0;
  v48 = &unk_100C6C618;
  v18 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  v34 = sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v33 = sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  v32 = sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  v19 = *(v10 + 8);
  v30[2] = v10 + 8;
  v31 = v19;
  v19(v12, v9);
  v20 = *(v42 + 8);
  v42 += 8;
  v20(v16, v41);

  v21 = v36;
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v36);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v21);
  v23 = v37;
  static DispatchTime.now()();
  v24 = v38;
  + infix(_:_:)();
  v25 = *(v43 + 8);
  v43 += 8;
  v26 = v39;
  v25(v23, v39);
  v27 = swift_allocObject();
  *(v27 + 16) = v40;
  v49 = sub_100348F3C;
  v50 = v27;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1000742F0;
  v48 = &unk_100C6C668;
  v28 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  v31(v12, v9);
  v20(v16, v41);
  v25(v24, v26);
}

uint64_t sub_1007B7BE8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v6, v5);
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  return sub_10004FB48(v4, type metadata accessor for MainAction);
}

uint64_t sub_1007B7CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v42 = type metadata accessor for DispatchTime();
  v46 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v31 - v7;
  v39 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v32 = v14;
  v44 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v52 = sub_1007BA218;
  v53 = v18;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v38 = &v50;
  v50 = sub_1000742F0;
  v51 = &unk_100C6C5A0;
  v19 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  v36 = sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v35 = sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  v34 = sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  v20 = *(v45 + 8);
  v45 += 8;
  v33 = v20;
  v20(v13, v11);
  v21 = *(v44 + 8);
  v44 += 8;
  v21(v16, v14);

  v22 = v39;
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v39);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v22);
  v24 = v40;
  static DispatchTime.now()();
  v25 = v41;
  + infix(_:_:)();
  v26 = *(v46 + 8);
  v46 += 8;
  v27 = v42;
  v26(v24, v42);
  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  v52 = sub_1007BA438;
  v53 = v28;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1000742F0;
  v51 = &unk_100C6C5F0;
  v29 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);

  v33(v13, v11);
  v21(v16, v32);
  v26(v25, v27);
}

uint64_t sub_1007B82CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  *v6 = a2;
  type metadata accessor for PerformanceTestAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v6, v10, v8, v7);
  sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
  return sub_10004FB48(v6, type metadata accessor for MainAction);
}

uint64_t sub_1007B83D8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a1;
  aBlock[4] = sub_1007BA1F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6C500;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1007B871C(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v54 = a3;
  LODWORD(v7) = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v56 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = type metadata accessor for DispatchTime();
  v14 = *(v55 - 8);
  __chkstk_darwin(v55);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v45[-v18];
  v53 = type metadata accessor for Logger();
  v20 = *(v53 - 1);
  __chkstk_darwin(v53);
  v22 = &v45[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v50 = v12;
    v51 = v10;
    v52 = v11;
    v49 = result;
    sub_1007B3490(v7, &static os_log_type_t.default.getter, "Started test: %{public}s", &selRef_startedTest_);
    v24 = objc_allocWithZone(type metadata accessor for TapParameters());
    v25 = sub_1007B8EB4(a4, a5);
    v26 = objc_opt_self();
    v48 = v25;
    [v26 runTestWithParameters:v25];
    static Logger.automation.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = v7;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v19;
      v32 = v31;
      *v30 = 136446210;
      v59 = v31;
      aBlock = 40;
      v61 = 0xE100000000000000;
      v33._countAndFlagsBits = Double.description.getter();
      v7 = v14;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 44;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v35._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37 = sub_100078694(aBlock, v61, &v59);

      *(v30 + 4) = v37;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v27, v28, "Tap at %{public}s", v30, 0xCu);
      sub_100006F14(v32);
      v19 = v47;

      LOBYTE(v7) = v46;
    }

    (*(v20 + 8))(v22, v53);
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v38 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v53 = *(v14 + 8);
    v47 = (v14 + 8);
    v39 = v55;
    (v53)(v16, v55);
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v7;
    *(v40 + 32) = v54;
    v64 = sub_1007BA208;
    v65 = v40;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_1000742F0;
    v63 = &unk_100C6C550;
    v41 = _Block_copy(&aBlock);

    v42 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000674D4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_1000743E8();
    v43 = v51;
    v44 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);

    (*(v57 + 8))(v43, v44);
    (*(v50 + 8))(v42, v52);
    return (v53)(v19, v39);
  }

  return result;
}

uint64_t sub_1007B8DB8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1007B3490(a2, &static os_log_type_t.default.getter, "Finished test: %{public}s", &selRef_finishedTest_);

  return _swift_continuation_throwingResume(a3);
}

uint64_t sub_1007B8E1C()
{

  sub_100006F14((v0 + 80));
  return v0;
}

uint64_t sub_1007B8E5C()
{
  sub_1007B8E1C();

  return swift_deallocClassInstance();
}

id sub_1007B8EB4(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point];
  *v8 = a1;
  v8[1] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1007B8F4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

uint64_t sub_1007B9034(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_completionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10002B028(v4);
}

uint64_t sub_1007B906C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName);

  return v1;
}

uint64_t sub_1007B90C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_testName);
  *v3 = a1;
  v3[1] = a2;
}

void (*sub_1007B9104())(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1007B9D40;
}

void sub_1007B915C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a1 pointerOrFingerTap:{*(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point), *(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4913TapParameters_point + 8)}];
  }

  else
  {
    static Logger.automation.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to run tap due to instance deallocated", v11, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_1007B9394(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point];
  *v12 = a1;
  v12[1] = a2;
  *&v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance] = a3;
  *&v4[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_duration] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1007B9454()
{
  sub_1000210F4();
  v2 = v1();
  if (v2)
  {
    v7[4] = v2;
    v7[5] = v3;
    sub_10001CD34();
    sub_100008EAC();
    v7[2] = v4;
    v7[3] = v0;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1007B94D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

uint64_t sub_1007B95B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_completionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10002B028(v4);
}

id sub_1007B95F0(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    String._bridgeToObjectiveC()();
    sub_100037034();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1007B9648()
{
  v1 = *(v0 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName);

  return v1;
}

void sub_1007B969C()
{
  sub_1000210F4();
  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v1;
  v0(v3, v5);
}

uint64_t sub_1007B9720(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_testName);
  *v3 = a1;
  v3[1] = a2;
}

void (*sub_1007B9764())(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1007B9B0C;
}

void sub_1007B97BC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point);
    [a1 pointerOrFingerTapDown:{*(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point), *(Strong + OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_point + 8)}];
    v10 = OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance;
    [a1 pointerOrFingerMoveToPoint:*v9 duration:{v9[1] - *&v8[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_distance], *&v8[OBJC_IVAR____TtC7WeatherP33_4025464B1BDEC98D863ED8B5370ABB4920FastScrollParameters_duration]}];
    [a1 pointerOrFingerTapUp:{*v9, v9[1] - *&v8[v10]}];
  }

  else
  {
    static Logger.automation.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to run scroll due to instance deallocated", v13, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_1007B99B4()
{
  sub_1000210F4();
  v7 = v1();
  v8 = v2;
  sub_10001CD34();
  v5[1] = 1107296256;
  v5[2] = sub_100952598;
  v6 = v0;
  v3 = _Block_copy(v5);

  return v3;
}

uint64_t sub_1007B9A9C()
{
  sub_1000210F4();
  sub_10002B028(*(v1 + *v0));
}

id sub_1007B9B14(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24[4] = a9;
  v24[5] = a10;
  sub_10001CD34();
  sub_100008EAC();
  v24[2] = v20;
  v24[3] = &unk_100C6BF10;
  v21 = _Block_copy(v24);

LABEL_6:
  v22 = [v10 initWithTestName:v19 scrollBounds:a8 amplitude:v21 direction:a1 completionHandler:{a2, a3, a4, a5}];
  _Block_release(v21);

  return v22;
}

id sub_1007B9C24(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (!a6)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  v20 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25[4] = a9;
  v25[5] = a10;
  sub_10001CD34();
  sub_100008EAC();
  v25[2] = v21;
  v25[3] = &unk_100C6C2D0;
  v22 = _Block_copy(v25);

LABEL_6:
  v23 = [v11 initWithTestName:v20 scrollingBounds:a7 swipeCount:a8 direction:v22 completionHandler:{a1, a2, a3, a4}];
  _Block_release(v22);

  return v23;
}

id sub_1007B9DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 newWithTestName:v8 parameters:a3 completionHandler:a4];

  return v9;
}

id sub_1007B9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a5 newWithTestName:v8 parameters:a3 completionHandler:a4];

  return v9;
}

uint64_t sub_1007B9F54()
{
  if (*(v0 + 16))
  {
  }

  sub_100018584();

  return swift_deallocObject();
}

uint64_t sub_1007B9F8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1007B9FE4()
{
  swift_unknownObjectRelease();

  sub_100011824();

  return swift_deallocObject();
}

uint64_t sub_1007BA07C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006D0B0;

  return sub_1007B52D0(a1, v4, v5, v6, v7);
}

uint64_t sub_1007BA140()
{
  sub_100013494();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006D0B0;

  return sub_10027EEA8(v3, v4);
}

_BYTE *storeEnumTagSinglePayload for LegacyPerformanceTestRunner.LegacyPerformanceTestError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007BA2F4()
{
  result = qword_100CD8228;
  if (!qword_100CD8228)
  {
    result = swift_getWitnessTable(aU_72, &type metadata for LegacyPerformanceTestRunner.LegacyPerformanceTestError, v0, v1);
    atomic_store(result, &qword_100CD8228);
  }

  return result;
}

id sub_1007BA458()
{
  v1 = OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1007BA4F4()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PrecipitationNotification();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  *&v0[OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter] = 0;
  v11 = OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController_deliverySchedule;
  v12 = type metadata accessor for DeliveryScheduleEntity();
  v13 = *(v12 - 8);
  v14 = v12;
  (*(v13 + 16))(&v1[v11], v3);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  DeliveryScheduleEntity.notification.getter();
  dispatch thunk of Column.value.getter();

  if (v17 >> 60 == 15)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1007BBB0C(&qword_100CD8288, &type metadata accessor for PrecipitationNotification, &protocol conformance descriptor for PrecipitationNotification);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_1003B3404(v16, v17);
    (*(v6 + 32))(&v1[OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController_notification], v10, v4);
    v15.receiver = v1;
    v15.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController(0);
    objc_msgSendSuper2(&v15, "initWithStyle:", 2);
    (*(v13 + 8))(v3, v14);
    sub_10000536C();
  }
}

void sub_1007BA744()
{
  *(v0 + OBJC_IVAR____TtC7Weather47DebugNotificationDeliveryScheduleViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007BA7BC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController(0);
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    sub_1003B3418();
    swift_getObjCClassFromMetadata();
    v4 = sub_100005ECC();
    [v3 registerClass:v1 forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000011, 0x8000000100ADEC80, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1007BA8CC(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_100A82210[a2];
  }
}

uint64_t sub_1007BA908(uint64_t a1, uint64_t a2)
{
  v2 = 0x6163696669746F4ELL;
  v3 = 0x656C756465686353;
  if (a2)
  {
    v3 = 0;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

id sub_1007BA9D0()
{
  v1 = sub_100005ECC();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v0 dequeueReusableCellWithIdentifier:v1 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      IndexPath.row.getter();
      sub_1007BB064();
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_1007BB554();
    }
  }

  else
  {
    IndexPath.row.getter();
    sub_1007BABB4();
  }

  return v3;
}

void sub_1007BABB4()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37[-1] - v8;
  __chkstk_darwin(v10);
  v12 = &v37[-1] - v11;
  v13 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  static UIListContentConfiguration.valueCell()();
  switch(v1)
  {
    case 0:
      sub_100006774();
      v20 = DeliveryScheduleEntity.id.getter();
      goto LABEL_11;
    case 1:
      UIListContentConfiguration.text.setter();
      v20 = DeliveryScheduleEntity.state.getter();
LABEL_11:
      v37[0] = v20;
      sub_10022C350(&qword_100CC6BC8, &qword_100A628B0);
      sub_10058D440();
      dispatch thunk of CustomStringConvertible.description.getter();

      goto LABEL_12;
    case 2:
      UIListContentConfiguration.text.setter();
      v27 = sub_1007BA458();
      DeliveryScheduleEntity.created.getter();
      dispatch thunk of Column.value.getter();
      v28 = type metadata accessor for Date();
      sub_100003BFC(v12);
      if (v23)
      {
        goto LABEL_15;
      }

      v29 = v12;
      Date._bridgeToObjectiveC()();
      sub_100010B24();
      (*(v30 + 8))(v12, v28);
      v31 = [v27 stringFromDate:v12];
      goto LABEL_9;
    case 3:
      sub_100014978(0x6465696669646F4DLL);
      v27 = sub_1007BA458();
      DeliveryScheduleEntity.modified.getter();
      dispatch thunk of Column.value.getter();
      v32 = type metadata accessor for Date();
      sub_100003BFC(v9);
      if (v23)
      {
        goto LABEL_16;
      }

      v29 = v9;
      Date._bridgeToObjectiveC()();
      sub_100010B24();
      (*(v33 + 8))(v9, v32);
      v31 = [v27 stringFromDate:v9];
LABEL_9:
      v34 = v31;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_12;
    case 4:
      sub_100004A98(1702125892);
      v21 = sub_1007BA458();
      DeliveryScheduleEntity.date.getter();
      dispatch thunk of Column.value.getter();
      v22 = type metadata accessor for Date();
      sub_100003BFC(v6);
      if (v23)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      else
      {

        v24 = v6;
        Date._bridgeToObjectiveC()();
        sub_100010B24();
        (*(v25 + 8))(v6, v22);
        v26 = [v21 stringFromDate:v6];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:
        UIListContentConfiguration.secondaryText.setter();
LABEL_13:
        v37[3] = v13;
        v37[4] = &protocol witness table for UIListContentConfiguration;
        v35 = sub_100042FB0(v37);
        (*(v15 + 16))(v35, v19, v13);
        UITableViewCell.contentConfiguration.setter();
        [v3 setSelectionStyle:0];
        (*(v15 + 8))(v19, v13);
        sub_10000536C();
      }

      return;
    default:
      goto LABEL_13;
  }
}

void sub_1007BB064()
{
  sub_10000C778();
  v1 = v0;
  v42 = v2;
  type metadata accessor for Date();
  sub_1000037C4();
  v38 = v4;
  v39 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for ForecastSummary.Intensity();
  sub_1000037C4();
  v37 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for PrecipitationType();
  sub_1000037C4();
  v40 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for PrecipitationNotification.Kind();
  sub_1000037C4();
  v36 = v21;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v41 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  static UIListContentConfiguration.valueCell()();
  switch(v1)
  {
    case 0:
      sub_100006774();
      sub_100008EC4();
      PrecipitationNotification.identifier.getter();
      goto LABEL_8;
    case 1:
      sub_100004A98(1684957515);
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.kind.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v36 + 8))(v25, v20);
      goto LABEL_8;
    case 2:
      sub_100014978(0x676E697472617453);
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.starting.getter();
      goto LABEL_6;
    case 3:
      sub_100014978(0x676E6970706F7453);
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.stopping.getter();
LABEL_6:
      _print_unlocked<A, B>(_:_:)();
      (*(v40 + 8))(v19, v14);
      goto LABEL_8;
    case 4:
      UIListContentConfiguration.text.setter();
      sub_100018530();
      sub_100008EC4();
      PrecipitationNotification.intensity.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v37 + 8))(v13, v8);
      goto LABEL_8;
    case 5:
      sub_100004A98(1702125892);
      v33 = sub_1007BA458();
      PrecipitationNotification.date.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v38 + 8))(v7, v39);
      v35 = [v33 stringFromDate:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:
      UIListContentConfiguration.secondaryText.setter();
      break;
    default:
      break;
  }

  v43[3] = v41;
  v43[4] = &protocol witness table for UIListContentConfiguration;
  v32 = sub_100042FB0(v43);
  (*(v27 + 16))(v32, v31, v41);
  UITableViewCell.contentConfiguration.setter();
  [v42 setSelectionStyle:0];
  (*(v27 + 8))(v31, v41);
  sub_10000536C();
}

void sub_1007BB554()
{
  sub_10000C778();
  v21 = v0;
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  PrecipitationNotification.forecast.getter();
  sub_1007BBB0C(&qword_100CD8280, &type metadata accessor for NextHourForecast, &protocol conformance descriptor for NextHourForecast);
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  (*(v10 + 8))(v14, HourForecast);
  static UIListContentConfiguration.cell()();
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  UIListContentConfiguration.text.setter();
  v22[3] = v20;
  v22[4] = &protocol witness table for UIListContentConfiguration;
  v19 = sub_100042FB0(v22);
  (*(v3 + 16))(v19, v7, v20);
  UITableViewCell.contentConfiguration.setter();
  [v21 setSelectionStyle:0];
  sub_10030F778(v16, v18);

  (*(v3 + 8))(v7, v20);
  sub_10000536C();
}

id sub_1007BB908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationDeliveryScheduleViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugNotificationDeliveryScheduleViewController(uint64_t a1)
{
  result = qword_100CD8270;
  if (!qword_100CD8270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007BBA38(uint64_t a1)
{
  result = type metadata accessor for DeliveryScheduleEntity();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationNotification();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1007BBB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1007BBB9C(uint64_t a1)
{
  result = type metadata accessor for SearchResultsViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1007BBC50(uint64_t a1)
{
  sub_1007BBD34(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest);
  if (v1 <= 0x3F)
  {
    sub_1007BBD34(319, &qword_100CB0100, type metadata accessor for SearchLocation);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SelectedSearchResult(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007BBD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1007BBD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &__dst[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &__dst[-v8 - 8];
  v10 = type metadata accessor for SearchViewModel(0);
  v11 = v10;
  __chkstk_darwin(v10);
  v13 = &__dst[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v14);
  v16 = &__dst[-v15 - 8];
  __chkstk_darwin(v17);
  v19 = &__dst[-v18 - 8];
  v20 = sub_10022C350(&qword_100CD8468, &qword_100A82338);
  __chkstk_darwin(v20 - 8);
  v22 = &__dst[-v21 - 8];
  v24 = *(v23 + 56);
  sub_1007BC178(a1, &__dst[-v21 - 8]);
  sub_1007BC178(a2, &v22[v24]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1007BC178(v22, v16);
      memcpy(__dst, v16, sizeof(__dst));
      if (sub_1000067A4() == 1)
      {
        memcpy(v36, &v22[v24], 0x60uLL);
        v11 = sub_1005F7E98(__dst, v36);
        sub_100517C40(__dst);
        sub_100517C40(v36);
        goto LABEL_18;
      }

      sub_100517C40(__dst);
      goto LABEL_15;
    case 2u:
      sub_1007BC178(v22, v13);
      if (sub_1000067A4() == 2)
      {
        sub_1007BC2A4(&v22[v24], v6);
        sub_1007BC0B8(v13, v6);
        sub_10001CD54();
        v28 = v27;
        sub_1007BC244(v6, v27);
        v29 = v13;
        v30 = v28;
        goto LABEL_17;
      }

      sub_10001F7C4();
      v26 = v13;
      goto LABEL_13;
    case 3u:
      if (sub_1000067A4() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    case 4u:
      if (sub_1000067A4() != 4)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_100010B38();
      v11 = 1;
      return v11 & 1;
    default:
      sub_1007BC178(v22, v19);
      if (sub_1000067A4())
      {
        sub_10001F7C4();
        v26 = v19;
LABEL_13:
        sub_1007BC244(v26, v25);
LABEL_15:
        sub_1007BC1DC(v22);
        v11 = 0;
      }

      else
      {
        sub_1007BC2A4(&v22[v24], v9);
        sub_1007BC0B8(v19, v9);
        sub_10001CD54();
        v32 = v31;
        sub_1007BC244(v9, v31);
        v29 = v19;
        v30 = v32;
LABEL_17:
        sub_1007BC244(v29, v30);
LABEL_18:
        sub_100010B38();
      }

      return v11 & 1;
  }
}

uint64_t sub_1007BC178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BC1DC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD8468, &qword_100A82338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007BC244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BC2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1007BC308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  static CurrentLocation.placeholderIdentifier.getter();
  v15 = static Location.Identifier.== infix(_:_:)();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    sub_10003BBC0();
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v7, 1, 1, v16);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v17 = enum case for LocationModel.current(_:);
    v18 = type metadata accessor for LocationModel();
    sub_1000037E8();
    (*(v19 + 104))(a2, v17, v18);
    sub_10001B350(a2, 0, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for LocationsState(0);
    __chkstk_darwin(v20);
    sub_100003F28();
    *(v21 - 16) = a1;
    sub_100030C98(sub_100079458, v22, v23);
  }
}

void *sub_1007BC530(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1006A05E4(*(a1 + 16), 0);
  v4 = v3;
  v5 = *(type metadata accessor for Location() - 8);
  v6 = sub_1007C01D8(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  sub_10027FAE8();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v4;
}

void sub_1007BC5F8()
{
  sub_10000C778();
  v65 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_100020374();
  v64 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003848();
  v54 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  __chkstk_darwin(v12);
  v14 = v48 - v13;
  v15 = type metadata accessor for LocationsState(0);
  v66 = v0;
  sub_100744464();
  v56 = v16;
  v48[0] = 0;
  v17 = 0;
  v18 = *(v0 + *(v15 + 28));
  v19 = v14;
  v55 = *(v18 + 16);
  v61 = (v6 + 8);
  v62 = v6 + 16;
  v60 = v2 + 32;
  v50 = v2 + 8;
  v52 = v6;
  v53 = (v6 + 32);
  v57 = _swiftEmptyArrayStorage;
  v49 = v14;
  v51 = v18;
  while (1)
  {
    v20 = v48[1];
    v21 = v56;
LABEL_3:
    if (v17 == v55)
    {

      sub_10000536C();
      return;
    }

    if (v17 >= *(v18 + 16))
    {
      break;
    }

    v22 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v23 = *(v52 + 72);
    v59 = v17;
    v63 = v23;
    v24 = v18 + v22 + v23 * v17;
    v25 = *(v52 + 16);
    v25(v19, v24, v64);
    v26 = *(v21 + 16);
    v58 = v22;
    if (v26)
    {
      v67 = _swiftEmptyArrayStorage;
      sub_1006A771C();
      v27 = v67;
      v28 = v21 + v22;
      do
      {
        v29 = v64;
        v25(v11, v28, v64);
        LocationOfInterest.type.getter();
        (*v61)(v11, v29);
        v67 = v27;
        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          sub_100031C84(v30);
          sub_1006A771C();
          v27 = v67;
        }

        v27[2] = v31 + 1;
        sub_100011468();
        (*(v2 + 32))(v27 + v32 + *(v2 + 72) * v31, v20, v65);
        v28 += v63;
        --v26;
      }

      while (v26);
      v19 = v49;
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v17 = v59 + 1;
    LocationOfInterest.type.getter();
    v33 = 0;
    v34 = v27[2];
    while (v34 != v33)
    {
      v35 = v33 + 1;
      sub_1007C10C8(&qword_100CA35B0, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v35;
      if (v36)
      {

        v37 = sub_100071E2C();
        v38(v37);
        (*v61)(v19, v64);
        v21 = v56;
        v18 = v51;
        goto LABEL_3;
      }
    }

    v39 = sub_100071E2C();
    v40(v39);
    v41 = *v53;
    (*v53)(v54, v19, v64);
    v42 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v42;
    v68 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100037C8C();
      sub_1006A7C64();
      v44 = v68;
    }

    v18 = v51;
    v45 = v58;
    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      sub_100031C84(v46);
      sub_1006A7C64();
      v45 = v58;
      v44 = v68;
    }

    v44[2] = v47 + 1;
    v57 = v44;
    v41(v44 + v45 + v47 * v63, v54, v64);
  }

  __break(1u);
}

void sub_1007BCB1C()
{
  sub_10000C778();
  v104 = v2;
  v3 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v109 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v108 = v7;
  sub_1000038CC();
  v119 = type metadata accessor for Location();
  sub_1000037C4();
  v114 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  v113 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v111 = v12;
  sub_1000038CC();
  v13 = type metadata accessor for SavedLocation();
  v14 = sub_100003AE8(v13);
  v100 = v15;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v112 = v17 - v16;
  sub_1000038CC();
  v18 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003848();
  v106 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v25 = &v98 - v24;
  __chkstk_darwin(v26);
  sub_100003878();
  v110 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v29 = sub_100020374();
  v30 = 0;
  v102 = type metadata accessor for LocationsState(v29);
  v103 = v0;
  v31 = *(v0 + *(v102 + 24));
  v118 = *(v31 + 16);
  v121 = v20 + 16;
  v117 = v20 + 88;
  v116 = enum case for LocationModel.current(_:);
  v120 = (v20 + 8);
  v115 = v20 + 96;
  v105 = (v20 + 32);
  v107 = _swiftEmptyArrayStorage;
  v101 = enum case for LocationModel.saved(_:);
  while (v118 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return;
    }

    v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v33 = *(v20 + 72);
    v34 = *(v20 + 16);
    v34(v1, v31 + v32 + v33 * v30, v18);
    v34(v25, v1, v18);
    v35 = (*(v20 + 88))(v25, v18);
    if (v35 == v116)
    {
      v36 = sub_10001650C();
      v37(v36);
      sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v38 + 8))(v34 + v25);
      sub_100010B60();
      sub_1000311F8(v25, v39);
      (*v120)(v1, v18);
      ++v30;
    }

    else
    {
      if (v35 == v101)
      {
        v40 = sub_10001650C();
        v41(v40);
        sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
        sub_10003BBC0();
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v42 + 8))(v34 + v25);
        sub_10001F7DC();
        sub_1000311F8(v25, v43);
      }

      else
      {
        v44 = sub_10001650C();
        v45(v44);
      }

      v46 = *v105;
      (*v105)(v106, v1, v18);
      v47 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A77CC();
        v47 = v122;
      }

      v50 = v47[2];
      v49 = v47[3];
      v51 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        sub_100031C84(v49);
        v107 = v52;
        v99 = v53;
        sub_1006A77CC();
        v51 = v107;
        v50 = v99;
        v47 = v122;
      }

      ++v30;
      v47[2] = v51;
      v107 = v47;
      v46(v47 + v32 + v50 * v33, v106, v18);
    }
  }

  v54 = v107[2];
  if (v54)
  {
    sub_100011468();
    v57 = v55 + v56;
    v58 = *(v20 + 72);
    v59 = *(v20 + 16);
    v60 = (v114 + 32);
    v61 = _swiftEmptyArrayStorage;
    v62 = v108;
    do
    {
      v63 = v110;
      v64 = sub_100003B2C();
      v59(v64);
      LocationModel.location.getter();
      (*v120)(v63, v18);
      v65 = v119;
      sub_1000038B4(v62, 1, v119);
      if (v66)
      {
        sub_1000180EC(v62, &qword_100CA65D8, &unk_100A3D9D0);
      }

      else
      {
        v67 = *v60;
        (*v60)(v111, v62, v65);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        if ((v68 & 1) == 0)
        {
          sub_1000066AC();
          sub_10003C154();
          v61 = v73;
        }

        v70 = v61[2];
        v69 = v61[3];
        if (v70 >= v69 >> 1)
        {
          sub_100023218(v69);
          sub_10003C154();
          v61 = v74;
        }

        v61[2] = v70 + 1;
        sub_10000C7B8();
        v67(v61 + v71 + *(v72 + 72) * v70, v111, v119);
        v62 = v108;
      }

      v57 += v58;
      --v54;
    }

    while (v54);
  }

  else
  {

    v61 = _swiftEmptyArrayStorage;
  }

  v75 = *(v103 + *(v102 + 20));
  v76 = *(v75 + 16);
  v77 = v109;
  v78 = v119;
  if (v76)
  {
    v79 = v75 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v80 = *(v100 + 72);
    v81 = (v114 + 32);
    v82 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001CD6C();
      v83 = v112;
      sub_1000312D4();
      SavedLocation.location.getter();
      sub_10001F7DC();
      sub_1000311F8(v83, v84);
      sub_1000038B4(v77, 1, v78);
      if (v66)
      {
        sub_1000180EC(v77, &qword_100CA65D8, &unk_100A3D9D0);
      }

      else
      {
        v85 = v78;
        v86 = *v81;
        (*v81)(v113, v77, v85);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        if ((v87 & 1) == 0)
        {
          sub_1000066AC();
          sub_10003C154();
          v82 = v93;
        }

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          sub_100023218(v88);
          sub_10003C154();
          v82 = v94;
        }

        *(v82 + 2) = v89 + 1;
        sub_10000C7B8();
        v92 = v119;
        v86(&v82[v90 + *(v91 + 72) * v89]);
        v78 = v92;
        v77 = v109;
      }

      v79 += v80;
      --v76;
    }

    while (v76);
  }

  sub_10069AB80();
  v96 = sub_1007BEF9C(v61, v95);

  v97 = sub_1007BC530(v96);
  sub_1003DF98C(v97, v104);

  sub_10000536C();
}

void sub_1007BD314()
{
  sub_10000C778();
  v2 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003848();
  v38 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v11 = 0;
  v12 = *(v0 + *(sub_100087E64() + 24));
  v13 = *(v12 + 16);
  v44 = v4 + 16;
  v45 = v13;
  v43 = v4 + 88;
  v42 = enum case for LocationModel.current(_:);
  v37 = (v4 + 32);
  v40 = (v4 + 8);
  v41 = v4 + 96;
  v39 = _swiftEmptyArrayStorage;
  v36 = enum case for LocationModel.saved(_:);
  while (1)
  {
    if (v45 == v11)
    {
      sub_10000536C();
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = v12;
    v16 = *(v4 + 72);
    v17 = *(v4 + 16);
    v17(v1, v12 + v14 + v16 * v11, v2);
    v17(v9, v1, v2);
    v18 = (*(v4 + 88))(v9, v2);
    if (v18 == v42)
    {
      v19 = sub_1000715F4();
      v20(v19);
      sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v21 + 8))(v17 + v9);
      sub_100010B60();
      sub_1000311F8(v9, v22);
      (*v40)(v1, v2);
      ++v11;
      v12 = v15;
    }

    else
    {
      if (v18 != v36)
      {
        goto LABEL_14;
      }

      v23 = sub_1000715F4();
      v24(v23);
      sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
      sub_10003BBC0();
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      (*(v25 + 8))(v17 + v9);
      sub_10001F7DC();
      sub_1000311F8(v9, v26);
      v27 = *v37;
      (*v37)(v38, v1, v2);
      v28 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A77CC();
        v28 = v46;
      }

      v31 = v28[2];
      v30 = v28[3];
      v32 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        sub_100031C84(v30);
        v39 = v33;
        v35 = v34;
        sub_1006A77CC();
        v32 = v39;
        v31 = v35;
        v28 = v46;
      }

      ++v11;
      v28[2] = v32;
      v39 = v28;
      v27(v28 + v14 + v31 * v16, v38, v2);
      v12 = v15;
    }
  }

  __break(1u);
LABEL_14:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1007BD690()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SavedLocation();
  v5 = sub_100003AE8(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (!__OFSUB__(v3, 1))
  {
    v9 = *(v1 + *(type metadata accessor for LocationsState(0) + 20));
    v10 = *(v9 + 16) - 2;
    if (v10 >= v3 - 1)
    {
      v10 = v3 - 1;
    }

    v11 = v10 & ~(v10 >> 63);
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_10:
      sub_10000536C();
      return;
    }

    while (v11 < *(v9 + 16))
    {
      sub_100011468();
      sub_10001CD6C();
      sub_1000312D4();
      sub_1000E0A64();
      v13 = v12;
      __chkstk_darwin(v12);
      sub_100003F28();
      *(v14 - 16) = v8;
      v16 = sub_100032A70(sub_1007C048C, v15, v13);

      if (!v16)
      {
        sub_10001F7DC();
        sub_1000311F8(v8, v18);
        goto LABEL_10;
      }

      --v11;
      sub_10001F7DC();
      sub_1000311F8(v8, v17);
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1007BD820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766173 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7105633 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100ADECA0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x8000000100ADECC0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E6564496C6C61 && a2 == 0xEE00737265696669;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64657070616DLL && a2 == 0xE600000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000100ADECE0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000018 && 0x8000000100ADED00 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x8000000100ADED20 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1007BDB30(char a1)
{
  result = 0x746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x6465766173;
      break;
    case 2:
      result = 7105633;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x746E6564496C6C61;
      break;
    case 6:
      result = 0x64657070616DLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007BDC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007BD820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007BDC7C(uint64_t a1)
{
  v2 = sub_1007C04AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007BDCB8(uint64_t a1)
{
  v2 = sub_1007C04AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007BDCF4()
{
  sub_10000C778();
  v1 = type metadata accessor for SavedLocation();
  v2 = sub_100003AE8(v1);
  v4 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = *(v0 + *(type metadata accessor for LocationsState(0) + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_10000369C(0, v9, 0);
    sub_100011468();
    v11 = v8 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_10001CD6C();
      sub_1000312D4();
      v13 = SavedLocation.id.getter();
      v15 = v14;
      sub_10001F7DC();
      sub_1000311F8(v7, v16);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v20 = sub_100031C84(v17);
        sub_10000369C(v20, v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v13;
      v19[5] = v15;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v21 = sub_1000D409C(_swiftEmptyArrayStorage);
  v22 = Location.id.getter();
  sub_1001B10E0(v22, v23, v21);

  sub_10000536C();
}

uint64_t sub_1007BDE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for LocationModelData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LocationModel();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for LocationModel.current(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    (*(v4 + 32))(v9, &v14[*(v16 + 48)], v3);
    sub_1000E0A64();
    v18 = *(v17 + 16);

    if (v18)
    {
      LocationModelData.locationOfInterest.getter();
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      (*(v4 + 8))(v9, v3);
      v23 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v25, 1, 1, v23);
    }

    v20 = &type metadata accessor for CurrentLocation;
  }

  else
  {
    if (v15 != enum case for LocationModel.saved(_:))
    {
      v21 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v25, 1, 1, v21);
      return (*(v11 + 8))(v14, v10);
    }

    (*(v11 + 96))(v14, v10);
    v19 = sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
    (*(v4 + 32))(v6, &v14[*(v19 + 48)], v3);
    LocationModelData.locationOfInterest.getter();
    (*(v4 + 8))(v6, v3);
    v20 = &type metadata accessor for SavedLocation;
  }

  return sub_1000311F8(v14, v20);
}

uint64_t sub_1007BE1F0()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  SavedLocation.identifier.getter();
  SavedLocation.identifier.getter();
  v7 = static Location.Identifier.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1007BE324(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CD85D8, &qword_100A824A0);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1007C04AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  type metadata accessor for CurrentLocation();
  sub_100020B68();
  sub_1007C10C8(v11, v12, &protocol conformance descriptor for CurrentLocation);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for LocationsState(0);
    sub_100011834(v13[5]);
    v27 = 1;
    sub_10022C350(&qword_100CCC9D0, &unk_100A76B40);
    v14 = sub_1007C0B0C();
    sub_100004AB4(v14);
    sub_100011834(v13[6]);
    v27 = 2;
    sub_10022C350(&qword_100CD8568, &qword_100A82478);
    v15 = sub_1007C0BC0();
    sub_100004AB4(v15);
    sub_100011834(v13[7]);
    v27 = 3;
    sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
    v16 = sub_10060C7A4();
    sub_100004AB4(v16);
    sub_100011834(v13[8]);
    v27 = 4;
    sub_10022C350(&qword_100CD8580, &qword_100A82480);
    v17 = sub_1007C0C74();
    sub_100004AB4(v17);
    sub_100011834(v13[9]);
    v27 = 5;
    sub_10022C350(&qword_100CD8590, &qword_100A82488);
    v18 = sub_1007C0D28();
    sub_100004AB4(v18);
    sub_100011834(v13[10]);
    v27 = 6;
    sub_10022C350(&qword_100CD85A0, &qword_100A82490);
    v19 = sub_1007C0DDC();
    sub_100004AB4(v19);
    sub_100011834(v13[11]);
    v27 = 7;
    sub_10022C350(&qword_100CD85B0, &qword_100A82498);
    v20 = sub_1007C0E98();
    sub_100004AB4(v20);
    v21 = (v3 + v13[12]);
    v22 = *(v21 + 16);
    v25 = *v21;
    v26 = v22;
    v27 = 8;
    sub_1007C0F54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100011834(v13[13]);
    v27 = 9;
    sub_10022C350(&qword_100CCC9D8, qword_100A6D2D0);
    v23 = sub_1007C0FA8();
    sub_100004AB4(v23);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1007BE6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v27 = sub_10022C350(&qword_100CD8540, &qword_100A82470);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v30 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = a1[3];
  v28 = a1;
  sub_1000161C0(a1, v18);
  sub_1007C04AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v29 = v2;
    result = sub_100006F14(v28);
    v33 = 0;
  }

  else
  {
    v26[1] = a2;
    v19 = v10;
    type metadata accessor for CurrentLocation();
    LOBYTE(v31) = 0;
    sub_100020B68();
    sub_1007C10C8(v20, v21, &protocol conformance descriptor for CurrentLocation);
    sub_1000C883C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10011C0F0(v8, v17, &unk_100CE49F0, &unk_100A3AFA0);
    sub_10022C350(&qword_100CCC9D0, &unk_100A76B40);
    v34 = 1;
    sub_1007C0500();
    sub_1000C883C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v30;
    *(v17 + *(v30 + 20)) = v31;
    sub_10022C350(&qword_100CD8568, &qword_100A82478);
    v34 = 2;
    sub_1007C05B4();
    sub_100014E74();
    *(v17 + v23[6]) = v31;
    sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
    v34 = 3;
    sub_1007C0668();
    sub_100014E74();
    *(v17 + v23[7]) = v31;
    sub_10022C350(&qword_100CD8580, &qword_100A82480);
    v34 = 4;
    sub_1007C071C();
    sub_100014E74();
    *(v17 + v23[8]) = v31;
    sub_10022C350(&qword_100CD8590, &qword_100A82488);
    v34 = 5;
    sub_1007C07D0();
    sub_100014E74();
    *(v17 + v23[9]) = v31;
    sub_10022C350(&qword_100CD85A0, &qword_100A82490);
    v34 = 6;
    sub_1007C0884();
    sub_100014E74();
    v33 = 1;
    *(v17 + v23[10]) = v31;
    sub_10022C350(&qword_100CD85B0, &qword_100A82498);
    v34 = 7;
    sub_1007C0940();
    sub_100014E74();
    *(v17 + v23[11]) = v31;
    v34 = 8;
    sub_1007C09FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v32;
    v25 = v17 + v23[12];
    *v25 = v31;
    *(v25 + 16) = v24;
    sub_10022C350(&qword_100CCC9D8, qword_100A6D2D0);
    v34 = 9;
    sub_1007C0A50();
    sub_100014E74();
    v29 = 0;
    (*(v19 + 8))(v13, v27);
    *(v17 + *(v30 + 52)) = v31;
    sub_1000312D4();
    sub_100006F14(v28);
    return sub_1000311F8(v17, type metadata accessor for LocationsState);
  }

  return result;
}

uint64_t sub_1007BEDF0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8638, &qword_100A824A8);
  a1[4] = sub_1007C1064();
  sub_100042FB0(a1);
  type metadata accessor for LocationsState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007BEEB8(uint64_t a1)
{
  sub_1007C10C8(&qword_100CD8648, type metadata accessor for LocationsState, byte_100A823C8);

  return ShortDescribable.description.getter();
}

void *sub_1007BEF9C(uint64_t a1, void *a2)
{
  v39 = 0;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  __chkstk_darwin(v10);
  v47 = &v38 - v11;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55[0] = a1;
  v12 = *(a1 + 16);
  v49 = a2 + 7;
  v53 = (v5 + 8);
  v54 = v5 + 16;

  v13 = 0;
  v41 = v12;
  v42 = v5;
LABEL_3:
  if (v13 == v12)
  {
LABEL_24:

    return a2;
  }

  v14 = *(v5 + 72);
  v45 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v48 = v13 + 1;
  v55[1] = v13 + 1;
  v51 = *(v5 + 16);
  v52 = v14;
  v51(v47, v45 + v14 * v13, v4);
  v44 = sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v46 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v16 = v15 & v46;
    v17 = (v15 & v46) >> 6;
    v18 = 1 << (v15 & v46);
    if ((v18 & v49[v17]) == 0)
    {
      (*v53)(v47, v4);
      v13 = v48;
      v12 = v41;
      v5 = v42;
      goto LABEL_3;
    }

    v51(v9, a2[6] + v16 * v52, v4);
    sub_1007C10C8(&qword_100CA3A00, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *v53;
    (*v53)(v9, v4);
    if (v19)
    {
      break;
    }

    v15 = v16 + 1;
  }

  v21 = (v20)(v47, v4);
  v22 = *(a2 + 32);
  v40 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v40;
  if ((v22 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v41 = &v38;
    __chkstk_darwin(v21);
    v16 = &v38 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v16, v49, v23);
    v24 = a2[2];
    *(v16 + 8 * v17) &= ~v18;
    v25 = v24 - 1;
    v26 = *(a1 + 16);
    v46 = v16;
    v47 = v26;
    v27 = v48;
    v43 = a1;
    while (1)
    {
      v42 = v25;
      v28 = v27;
LABEL_12:
      if (v28 == v47)
      {
        a2 = sub_1007BF984(v46, v40, v42, a2);
        goto LABEL_24;
      }

      if (v28 >= *(a1 + 16))
      {
        break;
      }

      v48 = v28 + 1;
      v23 = v50;
      v51(v50, v45 + v28 * v52, v4);
      v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = a2;
      v18 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v29 & v18;
        v17 = (v29 & v18) >> 6;
        v16 = 1 << (v29 & v18);
        if ((v16 & v49[v17]) == 0)
        {
          v20(v50, v4);
          v28 = v48;
          a2 = v30;
          a1 = v43;
          goto LABEL_12;
        }

        v51(v9, v30[6] + v31 * v52, v4);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20(v9, v4);
        v29 = v31 + 1;
      }

      while ((v23 & 1) == 0);
      v20(v50, v4);
      v32 = *(v46 + 8 * v17);
      *(v46 + 8 * v17) = v32 & ~v16;
      v27 = v48;
      v28 = v48;
      a2 = v30;
      a1 = v43;
      if ((v32 & v16) == 0)
      {
        goto LABEL_12;
      }

      v25 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
        __break(1u);
      }

      if (v42 == 1)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v39;
  v36 = sub_1007BF8FC(v34, v40, v49, v40, a2, v16, v55);
  if (!v35)
  {
    v37 = v36;

    a2 = v37;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1007BF5B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v36 = a2;
  v9 = type metadata accessor for Location();
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = __chkstk_darwin(v12);
  v46 = &v35 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16) & ((-1 << a4) - 1);
  v38 = a1;
  v39 = v18;
  *(a1 + v16) = v17;
  v19 = v15 - 1;
  v44 = v18 + 16;
  v45 = a3;
  v40 = a5;
  v41 = a3 + 56;
  v20 = (v18 + 8);
  while (1)
  {
    v37 = v19;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = *(*a5 + 16);
    if (v22 == v23)
    {
      v34 = v45;

      sub_1007BF984(v38, v36, v37, v34);
      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    v24 = *(v39 + 80);
    v43 = *(v39 + 72);
    v42 = *(v39 + 16);
    v42(v46, v21 + ((v24 + 32) & ~v24) + v43 * v22, v9, v13);
    a5[1] = v22 + 1;
    v25 = v45;
    sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = ~(-1 << *(v25 + 32));
    do
    {
      v28 = v26 & v27;
      v29 = (v26 & v27) >> 6;
      v30 = 1 << (v26 & v27);
      if ((v30 & *(v41 + 8 * v29)) == 0)
      {
        (*v20)(v46, v9);
        a5 = v40;
        goto LABEL_3;
      }

      (v42)(v11, *(v45 + 48) + v28 * v43, v9);
      sub_1007C10C8(&qword_100CA3A00, &type metadata accessor for Location, &protocol conformance descriptor for Location);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *v20;
      (*v20)(v11, v9);
      v26 = v28 + 1;
    }

    while ((v31 & 1) == 0);
    v32(v46, v9);
    v33 = v38[v29];
    v38[v29] = v33 & ~v30;
    a5 = v40;
    if ((v33 & v30) == 0)
    {
      goto LABEL_3;
    }

    v19 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_16;
    }

    if (v37 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1007BF8FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1007BF5B4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1007BF984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Location();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10022C350(&qword_100CD11E0, &unk_100A76520);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1007C10C8(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1007BFCA4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = sub_10022C350(&qword_100CAC4D8, &unk_100A3B420);
  sub_1000037C4();
  v31 = v9;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_10000E70C();
  v32 = v14;
  v35 = v2;
  sub_10001871C();
  if (!v6)
  {
    v17 = 0;
LABEL_18:
    *v8 = v35;
    v8[1] = v2;
    sub_1000D3FCC(v17);
    sub_10000536C();
    return;
  }

  if (!v4)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v28 = v15;
    v29 = v8;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v15) >> 6;
    v30 = v4;
    while (1)
    {
      if (v16 >= v4)
      {
        goto LABEL_21;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v0)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_16;
          }

          v0 = *(v2 + 8 * v20);
          ++v17;
          if (v0)
          {
            v34 = v6;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v34 = v6;
      v20 = v17;
LABEL_13:
      sub_100086718();
      v22 = v21 | (v20 << 6);
      v23 = *(v35 + 48);
      type metadata accessor for Date();
      sub_1000037E8();
      (*(v24 + 16))(v12, v23 + *(v24 + 72) * v22);
      v25 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
      sub_100003810(v25);
      sub_1000312D4();
      v26 = v32;
      sub_10011C0F0(v12, v32, &qword_100CAC4D8, &unk_100A3B420);
      v27 = v34;
      sub_10011C0F0(v26, v34, &qword_100CAC4D8, &unk_100A3B420);
      v4 = v30;
      if (v19 == v30)
      {
        break;
      }

      v6 = v27 + *(v31 + 72);
      v16 = v19;
      v17 = v20;
    }

    v17 = v20;
LABEL_16:
    v8 = v29;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1007BFF24()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v29 = sub_10022C350(&qword_100CAC4D0, &qword_100A74C00);
  sub_1000037C4();
  v26 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v28 = v12;
  sub_10001871C();
  if (!v6)
  {
    v15 = 0;
LABEL_18:
    *v8 = v2;
    v8[1] = v2;
    sub_1000D3FCC(v15);
    sub_10000536C();
    return;
  }

  if (!v4)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v24 = v8;
    v14 = 0;
    v15 = 0;
    v16 = (63 - v13) >> 6;
    v25 = v4;
    while (1)
    {
      if (v14 >= v4)
      {
        goto LABEL_21;
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_22;
      }

      if (!v0)
      {
        while (1)
        {
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_16;
          }

          v0 = *(v2 + 8 * v18);
          ++v15;
          if (v0)
          {
            v30 = v6;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v30 = v6;
      v18 = v15;
LABEL_13:
      sub_100086718();
      v20 = v19 | (v18 << 6);
      v21 = *(v2 + 48);
      type metadata accessor for Date();
      sub_1000037E8();
      (*(v22 + 16))(v27, v21 + *(v22 + 72) * v20);
      v23 = (*(v2 + 56) + 80 * v20);
      memcpy(v32, v23, 0x50uLL);
      memmove((v27 + *(v29 + 48)), v23, 0x50uLL);
      sub_10011C0F0(v27, v28, &qword_100CAC4D0, &qword_100A74C00);
      sub_10011C0F0(v28, v30, &qword_100CAC4D0, &qword_100A74C00);
      v4 = v25;
      if (v17 == v25)
      {
        break;
      }

      v6 = v30 + *(v26 + 72);
      sub_1007C12F4(v32, &v31);
      v14 = v17;
      v15 = v18;
    }

    sub_1007C12F4(v32, &v31);
    v15 = v18;
LABEL_16:
    v8 = v24;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_1007C01D8(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42, v12);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1007C04AC()
{
  result = qword_100CD8548;
  if (!qword_100CD8548)
  {
    result = swift_getWitnessTable(asc_100A82574, &type metadata for LocationsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8548);
  }

  return result;
}

unint64_t sub_1007C0500()
{
  result = qword_100CD8558;
  if (!qword_100CD8558)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCC9D0, &unk_100A76B40);
    v4[0] = sub_1007C10C8(&qword_100CD8560, &type metadata accessor for SavedLocation, &protocol conformance descriptor for SavedLocation);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8558);
  }

  return result;
}

unint64_t sub_1007C05B4()
{
  result = qword_100CD8570;
  if (!qword_100CD8570)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8568, &qword_100A82478);
    v4[0] = sub_1007C10C8(&qword_100CBBE18, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8570);
  }

  return result;
}

unint64_t sub_1007C0668()
{
  result = qword_100CD8578;
  if (!qword_100CD8578)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA64A8, &unk_100A675E0);
    v4[0] = sub_1007C10C8(&qword_100CC7E10, &type metadata accessor for LocationOfInterest, &protocol conformance descriptor for LocationOfInterest);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8578);
  }

  return result;
}

unint64_t sub_1007C071C()
{
  result = qword_100CD8588;
  if (!qword_100CD8588)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8580, &qword_100A82480);
    v4[0] = sub_1007C10C8(&qword_100CAF9E0, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8588);
  }

  return result;
}

unint64_t sub_1007C07D0()
{
  result = qword_100CD8598;
  if (!qword_100CD8598)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8590, &qword_100A82488);
    v4[0] = sub_1007C10C8(&qword_100CBBDC0, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8598);
  }

  return result;
}

unint64_t sub_1007C0884()
{
  result = qword_100CD85A8;
  if (!qword_100CD85A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD85A0, &qword_100A82490);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CBBE18, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD85A8);
  }

  return result;
}

unint64_t sub_1007C0940()
{
  result = qword_100CD85B8;
  if (!qword_100CD85B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD85B0, &qword_100A82498);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CAF9E0, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD85B8);
  }

  return result;
}

unint64_t sub_1007C09FC()
{
  result = qword_100CD85C0;
  if (!qword_100CD85C0)
  {
    result = swift_getWitnessTable(aU_73, &type metadata for LocationsOfInterestState, v0, v1);
    atomic_store(result, &qword_100CD85C0);
  }

  return result;
}

unint64_t sub_1007C0A50()
{
  result = qword_100CD85C8;
  if (!qword_100CD85C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCC9D8, qword_100A6D2D0);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CD85D0, &type metadata accessor for LocationDisplayContext, &protocol conformance descriptor for LocationDisplayContext);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD85C8);
  }

  return result;
}

unint64_t sub_1007C0B0C()
{
  result = qword_100CD85E8;
  if (!qword_100CD85E8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCC9D0, &unk_100A76B40);
    v4[0] = sub_1007C10C8(&qword_100CD85F0, &type metadata accessor for SavedLocation, &protocol conformance descriptor for SavedLocation);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD85E8);
  }

  return result;
}

unint64_t sub_1007C0BC0()
{
  result = qword_100CD85F8;
  if (!qword_100CD85F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8568, &qword_100A82478);
    v4[0] = sub_1007C10C8(&qword_100CBBEE0, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD85F8);
  }

  return result;
}

unint64_t sub_1007C0C74()
{
  result = qword_100CD8600;
  if (!qword_100CD8600)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8580, &qword_100A82480);
    v4[0] = sub_1007C10C8(&qword_100CAFA08, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8600);
  }

  return result;
}

unint64_t sub_1007C0D28()
{
  result = qword_100CD8608;
  if (!qword_100CD8608)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD8590, &qword_100A82488);
    v4[0] = sub_1007C10C8(&qword_100CBBED8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD8608);
  }

  return result;
}

unint64_t sub_1007C0DDC()
{
  result = qword_100CD8610;
  if (!qword_100CD8610)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD85A0, &qword_100A82490);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CBBEE0, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD8610);
  }

  return result;
}

unint64_t sub_1007C0E98()
{
  result = qword_100CD8618;
  if (!qword_100CD8618)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD85B0, &qword_100A82498);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CAFA08, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD8618);
  }

  return result;
}

unint64_t sub_1007C0F54()
{
  result = qword_100CD8620;
  if (!qword_100CD8620)
  {
    result = swift_getWitnessTable(aM_80, &type metadata for LocationsOfInterestState, v0, v1);
    atomic_store(result, &qword_100CD8620);
  }

  return result;
}

unint64_t sub_1007C0FA8()
{
  result = qword_100CD8628;
  if (!qword_100CD8628)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCC9D8, qword_100A6D2D0);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_1007C10C8(&qword_100CD8630, &type metadata accessor for LocationDisplayContext, &protocol conformance descriptor for LocationDisplayContext);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD8628);
  }

  return result;
}

unint64_t sub_1007C1064()
{
  result = qword_100CD8640;
  if (!qword_100CD8640)
  {
    v3 = sub_10022E824(&qword_100CD8638, &qword_100A824A8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD8640);
  }

  return result;
}

uint64_t sub_1007C10C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for LocationsState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007C11F0()
{
  result = qword_100CD8650;
  if (!qword_100CD8650)
  {
    result = swift_getWitnessTable(byte_100A8254C, &type metadata for LocationsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8650);
  }

  return result;
}

unint64_t sub_1007C1248()
{
  result = qword_100CD8658;
  if (!qword_100CD8658)
  {
    result = swift_getWitnessTable(asc_100A824BC, &type metadata for LocationsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8658);
  }

  return result;
}

unint64_t sub_1007C12A0()
{
  result = qword_100CD8660;
  if (!qword_100CD8660)
  {
    result = swift_getWitnessTable(byte_100A824E4, &type metadata for LocationsState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8660);
  }

  return result;
}

uint64_t sub_1007C1394@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v90 = sub_10022C350(&qword_100CD8708, &qword_100A82640);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v88 = v2;
  v92 = sub_10022C350(&qword_100CD8710, &qword_100A82648);
  sub_1000037C4();
  v91 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v89 = v5;
  sub_10022C350(&qword_100CD8718, &qword_100A82650);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v94 = v7;
  v106 = sub_10022C350(&qword_100CD8720, &qword_100A82658);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v93 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v87 - v11;
  v104 = sub_10022C350(&qword_100CD8728, &qword_100A82660);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v105 = v13;
  v101 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v102 = v15;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v99 = v17;
  v100 = v16;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v98 = v18;
  v19 = sub_10022C350(&qword_100CD8730, &qword_100A82668);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  sub_10022C350(&qword_100CD8738, &qword_100A82670);
  sub_1000037C4();
  v96 = v24;
  v97 = v23;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v87 - v26;
  v103 = sub_10022C350(&qword_100CD8740, &qword_100A82678);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = &v87 - v29;
  v31 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v87 - v38;
  v40 = [objc_opt_self() currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (!v41)
  {
    goto LABEL_40;
  }

  type metadata accessor for SunriseSunsetComponentView(0);
  sub_10009ECC8();
  (*(v33 + 32))(v36, v39, v31);
  v42 = (*(v33 + 88))(v36, v31);
  v43 = v42 == enum case for ContentSizeCategory.extraSmall(_:) || v42 == enum case for ContentSizeCategory.small(_:);
  v44 = v43 || v42 == enum case for ContentSizeCategory.medium(_:);
  v45 = v44 || v42 == enum case for ContentSizeCategory.large(_:);
  v46 = v45 || v42 == enum case for ContentSizeCategory.extraLarge(_:);
  v47 = v46 || v42 == enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (v47 || v42 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_40;
  }

  if (v42 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v42 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v42 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v33 + 8))(v36, v31);
LABEL_40:
    *v22 = static HorizontalAlignment.leading.getter();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v76 = sub_10022C350(&qword_100CD8748, &qword_100A82680);
    sub_1007C1E4C(v108, &v22[*(v76 + 44)]);
    v77 = v98;
    static AccessibilityChildBehavior.combine.getter();
    v78 = sub_1005F6F6C(&unk_100CD8750);
    View.accessibilityElement(children:)();
    (*(v99 + 8))(v77, v100);
    sub_10003FDA0(v22, &qword_100CD8730);
    v109 = v19;
    v110 = v78;
    sub_100014EA4();
    v79 = v97;
    View.accessibilityRespondsToUserInteraction(_:)();
    (*(v96 + 8))(v27, v79);
    v80 = type metadata accessor for AutomationCellInfo(0);
    sub_100069A30(v80);
    swift_storeEnumTagMultiPayload();
    v81 = &v30[*(v103 + 36)];
    type metadata accessor for AutomationInfoProperty(0);
    sub_100010B78();
    sub_1007C50D0(v19, &v81[v82], v83);
    sub_1007C512C(v19, v79);
    *v81 = 0;
    *(v81 + 1) = 0xE000000000000000;
    *(v81 + 2) = swift_getKeyPath();
    v81[24] = 0;
    v70 = &qword_100CD8740;
    sub_1000302D8(v30, v105, &qword_100CD8740, &qword_100A82678);
    swift_storeEnumTagMultiPayload();
    sub_100008ED0();
    sub_1007C4F14(v84);
    sub_1000067BC();
    sub_1007C4F14(v85);
    _ConditionalContent<>.init(storage:)();
    v75 = v30;
    return sub_10003FDA0(v75, v70);
  }

  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v54 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v54;
  v55 = static Axis.Set.vertical.getter();
  *(inited + 33) = v55;
  v56 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v54)
  {
    v56 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v55)
  {
    v56 = Axis.Set.init(rawValue:)();
  }

  v57 = v88;
  *v88 = v56;
  v58 = sub_10022C350(&qword_100CD8788, &qword_100A826C0);
  sub_1007C38B0(v57 + *(v58 + 44));
  v59 = v98;
  static AccessibilityChildBehavior.combine.getter();
  v60 = sub_1005F6F6C(&unk_100CD8780);
  v61 = v89;
  v62 = v90;
  View.accessibilityElement(children:)();
  (*(v99 + 8))(v59, v100);
  sub_10003FDA0(v57, &qword_100CD8708);
  v109 = v62;
  v110 = v60;
  sub_100014EA4();
  v63 = v94;
  v64 = v92;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v91 + 8))(v61, v64);
  v65 = type metadata accessor for AutomationCellInfo(0);
  sub_100069A30(v65);
  swift_storeEnumTagMultiPayload();
  v66 = v93;
  v67 = &v93[*(v106 + 36)];
  type metadata accessor for AutomationInfoProperty(0);
  sub_100010B78();
  sub_1007C50D0(&qword_100A82640, &v67[v68], v69);
  sub_1007C512C(&qword_100A82640, v64);
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  *(v67 + 2) = swift_getKeyPath();
  v67[24] = 0;
  sub_10011C0F0(v63, v66, &qword_100CD8718, &qword_100A82650);
  v70 = &qword_100CD8720;
  v71 = v66;
  v72 = v95;
  sub_10011C0F0(v71, v95, &qword_100CD8720, &qword_100A82658);
  sub_1000302D8(v72, v105, &qword_100CD8720, &qword_100A82658);
  swift_storeEnumTagMultiPayload();
  sub_100008ED0();
  sub_1007C4F14(v73);
  sub_1000067BC();
  sub_1007C4F14(v74);
  _ConditionalContent<>.init(storage:)();
  v75 = v72;
  return sub_10003FDA0(v75, v70);
}

uint64_t sub_1007C1E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_10022C350(&qword_100CD87B8, &qword_100A826F0);
  __chkstk_darwin(v3 - 8);
  v124 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = &v109 - v6;
  v130 = sub_10022C350(&qword_100CD87C0, &qword_100A826F8);
  __chkstk_darwin(v130);
  v122 = (&v109 - v7);
  v8 = sub_10022C350(&qword_100CD87C8, &qword_100A82700);
  __chkstk_darwin(v8 - 8);
  v132 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v109 - v11;
  v128 = sub_10022C350(&qword_100CD8848, &qword_100A827D8);
  __chkstk_darwin(v128);
  v118 = (&v109 - v12);
  v114 = sub_10022C350(&qword_100CD8850, &qword_100A827E0);
  __chkstk_darwin(v114);
  v117 = &v109 - v13;
  v116 = sub_10022C350(&qword_100CD8858, &qword_100A827E8);
  __chkstk_darwin(v116);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v109 - v16;
  v113 = sub_10022C350(&qword_100CD8860, &qword_100A827F0);
  __chkstk_darwin(v113);
  v109 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v109 - v19;
  v20 = sub_10022C350(&qword_100CD8868, &qword_100A827F8);
  __chkstk_darwin(v20 - 8);
  v115 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v109 - v23;
  v24 = type metadata accessor for EnvironmentValues();
  v120 = *(v24 - 8);
  v121 = v24;
  __chkstk_darwin(v24);
  v119 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContentSizeCategory();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v109 - v31;
  v33 = sub_10022C350(&qword_100CD8870, &qword_100A82800);
  __chkstk_darwin(v33 - 8);
  v129 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v127 = &v109 - v36;
  v37 = sub_10022C350(&qword_100CD87D0, &qword_100A82708);
  __chkstk_darwin(v37 - 8);
  v39 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v109 - v41;
  v43 = sub_10022C350(&qword_100CD87D8, &qword_100A82710);
  __chkstk_darwin(v43 - 8);
  v126 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v109 - v46;
  *v47 = static VerticalAlignment.center.getter();
  *(v47 + 1) = 0;
  v47[16] = 1;
  v48 = *(sub_10022C350(&qword_100CD87E0, &qword_100A82718) + 44);
  v134 = v47;
  v49 = &v47[v48];
  sub_1007C2CF0(v42);
  sub_1000302D8(v42, v39, &qword_100CD87D0, &qword_100A82708);
  sub_1000302D8(v39, v49, &qword_100CD87D0, &qword_100A82708);
  v50 = v49 + *(sub_10022C350(&qword_100CD87E8, &qword_100A82720) + 48);
  v51 = a1;
  *v50 = 0;
  *(v50 + 8) = 0;
  sub_10003FDA0(v42, &qword_100CD87D0);
  sub_10003FDA0(v39, &qword_100CD87D0);
  v52 = type metadata accessor for SunriseSunsetComponentView(0);
  sub_10009ECC8();
  (*(v27 + 32))(v29, v32, v26);
  v53 = (*(v27 + 88))(v29, v26);
  if (v53 != enum case for ContentSizeCategory.extraSmall(_:) && v53 != enum case for ContentSizeCategory.small(_:) && v53 != enum case for ContentSizeCategory.medium(_:) && v53 != enum case for ContentSizeCategory.large(_:) && v53 != enum case for ContentSizeCategory.extraLarge(_:) && v53 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v53 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v53 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v53 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v53 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v64 = 1;
      v65 = v131;
      v66 = v127;
      goto LABEL_48;
    }

    (*(v27 + 8))(v29, v26);
  }

  v67 = a1 + *(v52 + 24);
  v68 = *v67;
  if (*(v67 + 8) == 1)
  {
    v65 = v131;
    v66 = v127;
    v69 = v125;
    if ((v68 & 0x100) == 0)
    {
LABEL_37:
      v64 = 1;
      goto LABEL_48;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v119;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v68, 0);
    (*(v120 + 8))(v71, v121);
    v65 = v131;
    v66 = v127;
    v69 = v125;
    if (v136 != 1)
    {
      goto LABEL_37;
    }
  }

  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  if (v73)
  {
    v74 = v111;
    sub_1007C3240(v111);
    v75 = &qword_100CD8858;
    sub_1000302D8(v74, v117, &qword_100CD8858, &qword_100A827E8);
    swift_storeEnumTagMultiPayload();
    sub_1007C51E4();
    sub_1007C5270();
    _ConditionalContent<>.init(storage:)();
    v76 = v74;
  }

  else
  {
    sub_1007C3240(v112);
    v77 = v51 + *(v52 + 32);
    v78 = *v77;
    if (*(v77 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v79 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v80 = v119;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v78, 0);
      (*(v120 + 8))(v80, v121);
      LOBYTE(v78) = v135;
    }

    v81 = v78 & 1;
    if (v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = 0x4010000000000000;
    }

    v83 = v109;
    sub_10011C0F0(v112, v109, &qword_100CD8858, &qword_100A827E8);
    v84 = v83 + *(v113 + 36);
    *v84 = v82;
    *(v84 + 8) = v81;
    *(v84 + 9) = 0;
    v75 = &qword_100CD8860;
    v85 = v110;
    sub_10011C0F0(v83, v110, &qword_100CD8860, &qword_100A827F0);
    sub_1000302D8(v85, v117, &qword_100CD8860, &qword_100A827F0);
    swift_storeEnumTagMultiPayload();
    sub_1007C51E4();
    sub_1007C5270();
    _ConditionalContent<>.init(storage:)();
    v76 = v85;
  }

  sub_10003FDA0(v76, v75);
  v86 = v115;
  sub_1000302D8(v69, v115, &qword_100CD8868, &qword_100A827F8);
  v87 = v118;
  *v118 = 0;
  *(v87 + 8) = 1;
  v88 = sub_10022C350(&qword_100CD88B8, &qword_100A82820);
  sub_1000302D8(v86, v87 + *(v88 + 48), &qword_100CD8868, &qword_100A827F8);
  v89 = v87 + *(v88 + 64);
  *v89 = 0;
  *(v89 + 8) = 1;
  sub_10003FDA0(v69, &qword_100CD8868);
  sub_10003FDA0(v86, &qword_100CD8868);
  sub_10011C0F0(v87, v66, &qword_100CD8848, &qword_100A827D8);
  v64 = 0;
LABEL_48:
  v90 = 1;
  sub_10001B350(v66, v64, 1, v128);
  v91 = SunriseSunsetViewModel.description.getter();
  v93 = v92;

  v94 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v94 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (v94)
  {
    v95 = static VerticalAlignment.center.getter();
    v96 = v122;
    *v122 = v95;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
    v97 = v96 + *(sub_10022C350(&qword_100CD87F0, &qword_100A82728) + 44);
    v98 = v123;
    sub_1007C35B8(v123);
    v99 = v124;
    sub_1000302D8(v98, v124, &qword_100CD87B8, &qword_100A826F0);
    sub_1000302D8(v99, v97, &qword_100CD87B8, &qword_100A826F0);
    v100 = v97 + *(sub_10022C350(&qword_100CD87F8, &qword_100A82730) + 48);
    *v100 = 0;
    *(v100 + 8) = 0;
    sub_10003FDA0(v98, &qword_100CD87B8);
    sub_10003FDA0(v99, &qword_100CD87B8);
    sub_10011C0F0(v96, v65, &qword_100CD87C0, &qword_100A826F8);
    v90 = 0;
  }

  sub_10001B350(v65, v90, 1, v130);
  v101 = v126;
  sub_1000302D8(v134, v126, &qword_100CD87D8, &qword_100A82710);
  v102 = v66;
  v103 = v65;
  v104 = v129;
  sub_1000302D8(v66, v129, &qword_100CD8870, &qword_100A82800);
  v105 = v132;
  sub_1000302D8(v103, v132, &qword_100CD87C8, &qword_100A82700);
  v106 = v133;
  sub_1000302D8(v101, v133, &qword_100CD87D8, &qword_100A82710);
  v107 = sub_10022C350(&qword_100CD8878, &qword_100A82808);
  sub_1000302D8(v104, v106 + *(v107 + 48), &qword_100CD8870, &qword_100A82800);
  sub_1000302D8(v105, v106 + *(v107 + 64), &qword_100CD87C8, &qword_100A82700);
  sub_10003FDA0(v103, &qword_100CD87C8);
  sub_10003FDA0(v102, &qword_100CD8870);
  sub_10003FDA0(v134, &qword_100CD87D8);
  sub_10003FDA0(v105, &qword_100CD87C8);
  sub_10003FDA0(v104, &qword_100CD8870);
  return sub_10003FDA0(v101, &qword_100CD87D8);
}

uint64_t sub_1007C2CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v49 = type metadata accessor for EnvironmentValues();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SunriseSunsetComponentView(0);
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.sunriseSunset.getter();
  sub_1007C50D0(v1, v6, type metadata accessor for SunriseSunsetComponentView);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v45 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    __dst[0] = v15;
    *v14 = 136446210;
    v16 = SunriseSunsetViewModel.title.getter();
    v46 = v2;
    v17 = v4;
    v19 = v18;
    sub_1007C512C(v6, type metadata accessor for SunriseSunsetComponentView);
    v20 = sub_100078694(v16, v19, __dst);
    v4 = v17;
    v2 = v46;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "SunriseSunsetComponentView: next sun event is %{public}s", v14, 0xCu);
    sub_100006F14(v15);

    (*(v8 + 8))(v10, v45);
  }

  else
  {

    sub_1007C512C(v6, type metadata accessor for SunriseSunsetComponentView);
    (*(v8 + 8))(v10, v7);
  }

  v21 = SunriseSunsetViewModel.title.getter();
  v23 = v22;
  v24 = SunriseSunsetViewModel.timePeriodSymbols.getter();
  v25 = sub_1007C42D4(v21, v23, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  KeyPath = swift_getKeyPath();
  v33 = static Edge.Set.horizontal.getter();
  v34 = v2 + *(v4 + 28);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v47;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v35, 0);
    (*(v48 + 8))(v37, v49);
  }

  EdgeInsets.init(_all:)();
  v56 = v29 & 1;
  v55 = 0;
  __src[0] = v25;
  __src[1] = v27;
  LOBYTE(__src[2]) = v29 & 1;
  __src[3] = v31;
  __src[4] = KeyPath;
  __src[5] = 0x3FE0000000000000;
  LOBYTE(__src[6]) = v33;
  __src[7] = v38;
  __src[8] = v39;
  __src[9] = v40;
  __src[10] = v41;
  LOBYTE(__src[11]) = 0;
  v51 = SunriseSunsetViewModel.title.getter();
  v52 = v42;
  sub_10022C350(&qword_100CD8818, &unk_100A827A8);
  sub_1007C5184(&unk_100CD8820);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  memcpy(__dst, __src, 0x59uLL);
  return sub_10003FDA0(__dst, &qword_100CD8818);
}

uint64_t sub_1007C3240@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v24 = type metadata accessor for EnvironmentValues();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SunriseSunsetChartView();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CD8898, &qword_100A82810);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  (*(v7 + 16))(v9, v2, v6, v14);
  SunriseSunsetChartView.init(model:)();
  KeyPath = swift_getKeyPath();
  v18 = v2 + *(type metadata accessor for SunriseSunsetComponentView(0) + 36);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v3 + 8))(v5, v24);
    if (v27 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    static Color.white.getter();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Color.black.getter();
LABEL_6:
  v21 = Color.opacity(_:)();

  (*(v10 + 32))(v16, v12, v25);
  v22 = &v16[*(v13 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  sub_1007C532C();
  View.accessibilityHidden(_:)();
  return sub_10003FDA0(v16, &qword_100CD8898);
}