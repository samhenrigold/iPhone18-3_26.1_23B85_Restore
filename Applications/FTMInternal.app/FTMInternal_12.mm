uint64_t sub_1001BEEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065)
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

uint64_t sub_1001BF030@<X0>(uint64_t a3@<X8>)
{
  sub_1001A56A0();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1001BF09C()
{
  v1 = sub_1001A551C(&qword_100375260, &qword_1002EF058);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-v3];
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v16 = v7;

  Button.init(action:label:)();
  v9 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v17 = v9;
  v18 = KeyPath;
  v19 = 0;
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058, &protocol conformance descriptor for Button<A>);
  sub_1001BFC60();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
}

double sub_1001BF264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v73 = a3;
  v66 = a2;
  v83 = a5;
  v81 = type metadata accessor for Color.RGBColorSpace();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for EnvironmentValues();
  v71 = *(v84 - 8);
  __chkstk_darwin(v84);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001A551C(&qword_100375B80, &qword_1002EFFF0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v65 - v11;
  v13 = sub_1001A551C(&qword_100375B88, &qword_1002EFFF8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v69 = sub_1001A551C(&qword_100375B90, &qword_1002F0000);
  __chkstk_darwin(v69);
  v18 = &v65 - v17;
  v68 = sub_1001A551C(&qword_100375B98, &qword_1002F0008);
  __chkstk_darwin(v68);
  v20 = &v65 - v19;
  v67 = sub_1001A551C(&qword_100375BA0, &qword_1002F0010);
  __chkstk_darwin(v67);
  v22 = &v65 - v21;
  v72 = sub_1001A551C(&qword_100375BA8, &qword_1002F0018);
  __chkstk_darwin(v72);
  v75 = &v65 - v23;
  v74 = sub_1001A551C(&qword_100375BB0, &qword_1002F0020);
  __chkstk_darwin(v74);
  v78 = &v65 - v24;
  v76 = sub_1001A551C(&qword_100375BB8, &qword_1002F0028);
  __chkstk_darwin(v76);
  v77 = &v65 - v25;
  v82 = a1;
  ButtonStyleConfiguration.label.getter();
  v26 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v12[*(v10 + 44)];
  *v28 = KeyPath;
  v28[1] = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v12, v16, &qword_100375B80, &qword_1002EFFF0);
  v29 = &v16[*(v14 + 44)];
  v30 = v91;
  *(v29 + 4) = v90;
  *(v29 + 5) = v30;
  *(v29 + 6) = v92;
  v31 = v87;
  *v29 = v86;
  *(v29 + 1) = v31;
  v32 = v89;
  *(v29 + 2) = v88;
  *(v29 + 3) = v32;
  v33 = v70;
  if (v70)
  {
    v34 = v73;
    v35 = v71;
    if ((v73 & 1) == 0)
    {
LABEL_3:
      v36 = static Color.gray.getter();
      goto LABEL_6;
    }
  }

  else
  {
    v37 = v73;

    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v37, 0);
    v35 = v71;
    (*(v71 + 8))(v8, v84);
    v34 = v37;
    if (v85 != 1)
    {
      goto LABEL_3;
    }
  }

  v36 = v66;

LABEL_6:
  v39 = static Edge.Set.all.getter();
  sub_1001B603C(v16, v18, &qword_100375B88, &qword_1002EFFF8);
  v40 = &v18[*(v69 + 36)];
  *v40 = v36;
  v40[8] = v39;
  v41 = static Color.white.getter();
  sub_1001B603C(v18, v20, &qword_100375B90, &qword_1002F0000);
  *&v20[*(v68 + 36)] = v41;
  sub_1001B603C(v20, v22, &qword_100375B98, &qword_1002F0008);
  *&v22[*(v67 + 36)] = 256;
  if (v33)
  {
    v42 = v34;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v34, 0);
    (*(v35 + 8))(v8, v84);
    v42 = v85;
  }

  if (v42)
  {
    v44 = 4.0;
  }

  else
  {
    v44 = 0.0;
  }

  (*(v80 + 104))(v79, enum case for Color.RGBColorSpace.sRGBLinear(_:), v81);
  v45 = Color.init(_:white:opacity:)();
  v46 = v22;
  v47 = v75;
  sub_1001B603C(v46, v75, &qword_100375BA0, &qword_1002F0010);
  v48 = v47 + *(v72 + 36);
  *v48 = v45;
  *(v48 + 8) = v44;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  if (v33)
  {
    v49 = 1.0;
    if ((v34 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v34, 0);
    (*(v35 + 8))(v8, v84);
    v49 = 1.0;
    if (v85 != 1)
    {
      goto LABEL_19;
    }
  }

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v49 = 0.92;
  }

  else
  {
    v49 = 1.0;
  }

LABEL_19:
  static UnitPoint.center.getter();
  v52 = v51;
  v54 = v53;
  v55 = v78;
  sub_1001B603C(v47, v78, &qword_100375BA8, &qword_1002F0018);
  v56 = v55 + *(v74 + 36);
  *v56 = v49;
  *(v56 + 8) = v49;
  *(v56 + 16) = v52;
  *(v56 + 24) = v54;
  v57 = static Animation.easeInOut(duration:)();
  v58 = ButtonStyleConfiguration.isPressed.getter();
  v59 = v55;
  v60 = v77;
  sub_1001B603C(v59, v77, &qword_100375BB0, &qword_1002F0020);
  v61 = v60 + *(v76 + 36);
  *v61 = v57;
  *(v61 + 8) = v58 & 1;
  LOBYTE(v57) = static Edge.Set.all.getter();
  v62 = v83;
  sub_1001B603C(v60, v83, &qword_100375BB8, &qword_1002F0028);
  v63 = v62 + *(sub_1001A551C(&qword_100375BC0, &unk_1002F0060) + 36);
  *v63 = v57;
  result = 0.0;
  *(v63 + 8) = 0u;
  *(v63 + 24) = 0u;
  *(v63 + 40) = 1;
  return result;
}

uint64_t sub_1001BFC08@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1001BFC60()
{
  result = qword_100375B78;
  if (!qword_100375B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B78);
  }

  return result;
}

uint64_t sub_1001BFCC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001BFD08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001BFD58()
{
  sub_1001A55C8(&qword_100375260, &qword_1002EF058);
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058, &protocol conformance descriptor for Button<A>);
  sub_1001BFC60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001BFE28(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1001BFE38()
{
  result = qword_100375BC8;
  if (!qword_100375BC8)
  {
    sub_1001A55C8(&qword_100375BC0, &unk_1002F0060);
    sub_1001BFEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BC8);
  }

  return result;
}

unint64_t sub_1001BFEC4()
{
  result = qword_100375BD0;
  if (!qword_100375BD0)
  {
    sub_1001A55C8(&qword_100375BB8, &qword_1002F0028);
    sub_1001BFF7C();
    sub_1001AD0C8(&qword_100375C48, &qword_100375C50, &qword_1002F0088, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BD0);
  }

  return result;
}

unint64_t sub_1001BFF7C()
{
  result = qword_100375BD8;
  if (!qword_100375BD8)
  {
    sub_1001A55C8(&qword_100375BB0, &qword_1002F0020);
    sub_1001C0008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BD8);
  }

  return result;
}

unint64_t sub_1001C0008()
{
  result = qword_100375BE0;
  if (!qword_100375BE0)
  {
    sub_1001A55C8(&qword_100375BA8, &qword_1002F0018);
    sub_1001C0094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BE0);
  }

  return result;
}

unint64_t sub_1001C0094()
{
  result = qword_100375BE8;
  if (!qword_100375BE8)
  {
    sub_1001A55C8(&qword_100375BA0, &qword_1002F0010);
    sub_1001C014C();
    sub_1001AD0C8(&qword_100375C38, &qword_100375C40, &qword_1002F0080, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BE8);
  }

  return result;
}

unint64_t sub_1001C014C()
{
  result = qword_100375BF0;
  if (!qword_100375BF0)
  {
    sub_1001A55C8(&qword_100375B98, &qword_1002F0008);
    sub_1001C0204();
    sub_1001AD0C8(&qword_100375C28, &qword_100375C30, &qword_1002F0078, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BF0);
  }

  return result;
}

unint64_t sub_1001C0204()
{
  result = qword_100375BF8;
  if (!qword_100375BF8)
  {
    sub_1001A55C8(&qword_100375B90, &qword_1002F0000);
    sub_1001C02BC();
    sub_1001AD0C8(&qword_100375C18, &qword_100375C20, &qword_1002F0070, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BF8);
  }

  return result;
}

unint64_t sub_1001C02BC()
{
  result = qword_100375C00;
  if (!qword_100375C00)
  {
    sub_1001A55C8(&qword_100375B88, &qword_1002EFFF8);
    sub_1001C0348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C00);
  }

  return result;
}

unint64_t sub_1001C0348()
{
  result = qword_100375C08;
  if (!qword_100375C08)
  {
    sub_1001A55C8(&qword_100375B80, &qword_1002EFFF0);
    sub_1001C0400();
    sub_1001AD0C8(&qword_1003759D0, &qword_1003759D8, &qword_1002EFAE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C08);
  }

  return result;
}

unint64_t sub_1001C0400()
{
  result = qword_100375C10;
  if (!qword_100375C10)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C10);
  }

  return result;
}

uint64_t sub_1001C04D8()
{
  _StringGuts.grow(_:)(16);

  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech);
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName);
  v6 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName + 8);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName);
  v10 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName + 8);

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId);
  v14 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId + 8);

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 40;
}

void sub_1001C0634(void *a1)
{

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v2 forKey:v3];

  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v4 forKey:v5];

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v6 forKey:v7];

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v8 forKey:v9];
}

id sub_1001C08A0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 decodeObjectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

LABEL_31:
    sub_1001C0DB0(&v30);
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    v4 = v27;
    v5 = String._bridgeToObjectiveC()();
    v6 = [a1 decodeObjectForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

        goto LABEL_35;
      }

      v7 = v27;
      v8 = String._bridgeToObjectiveC()();
      v9 = [a1 decodeObjectForKey:v8];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_33:

          goto LABEL_34;
        }

        v10 = v27;
        v23 = v26;
        v24 = v26;
        v11 = String._bridgeToObjectiveC()();
        v12 = [a1 decodeObjectForKey:v11];

        if (v12)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30 = v28;
        v31 = v29;
        if (*(&v29 + 1))
        {
          if (swift_dynamicCast())
          {
            v13 = v26;
            v14 = v27;
            v15 = type metadata accessor for DashboardItem();
            v16 = objc_allocWithZone(v15);
            v17 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech];
            *v17 = v26;
            *(v17 + 1) = v4;
            v18 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName];
            *v18 = v24;
            *(v18 + 1) = v7;
            v19 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName];
            *v19 = v23;
            *(v19 + 1) = v10;
            v20 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId];
            *v20 = v13;
            *(v20 + 1) = v14;
            v25.receiver = v16;
            v25.super_class = v15;
            v21 = objc_msgSendSuper2(&v25, "init");

            swift_getObjectType();
            swift_deallocPartialClassInstance();
            return v21;
          }

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_35:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1001C0CDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001C0DB0(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375D68, &unk_1002F2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001C0E18()
{
  v1 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = &v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor;
  *&v0[v3] = [objc_opt_self() whiteColor];
  *&v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration] = 0x3FD3333333333333;
  v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CircularTransition();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001C0EFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001C0FB0(void *a1)
{
  v3 = [a1 containerView];
  v4 = &UITransitionContextToViewKey;
  v60 = v3;
  if (v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode] != 2)
  {
    if (!v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode])
    {
      v5 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v5)
      {
        v6 = v5;
        [v5 center];
        v8 = v7;
        v10 = v9;
        [v6 frame];
        v58 = v12;
        v59 = v11;
        v13 = [objc_allocWithZone(UIView) init];
        v14 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
        v15 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle];
        *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle] = v13;
        v16 = v13;

        v17 = &v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
        v18.f64[0] = v59;
        v18.f64[1] = v58;
        v19 = vmaxnmq_f64(*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint], vsubq_f64(v18, *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint]));
        v19.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v19, v19)));
        [v16 setFrame:{0.0, 0.0, v19.f64[0] + v19.f64[0], v19.f64[0] + v19.f64[0]}];

        v20 = [*&v1[v14] layer];
        [*&v1[v14] frame];
        [v20 setCornerRadius:v21 * 0.5];

        [*&v1[v14] setCenter:{*v17, v17[1]}];
        [*&v1[v14] setBackgroundColor:*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor]];
        v22 = *&v1[v14];
        CGAffineTransformMakeScale(&aBlock, 0.001, 0.001);
        [v22 setTransform:&aBlock];
        [v60 addSubview:*&v1[v14]];
        [v6 setCenter:{*v17, v17[1]}];
        CGAffineTransformMakeScale(&aBlock, 0.001, 0.001);
        [v6 setTransform:&aBlock];
        [v6 setAlpha:0.0];
        [v60 addSubview:v6];
        v23 = objc_opt_self();
        v24 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration];
        v25 = swift_allocObject();
        v25[2] = v1;
        v25[3] = v6;
        v25[4] = v8;
        v25[5] = v10;
        *&aBlock.tx = sub_1001C1AD0;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10020C96C;
        *&aBlock.d = &unk_10031D858;
        v26 = _Block_copy(&aBlock);
        v27 = v1;
        v28 = v6;

        v29 = swift_allocObject();
        *(v29 + 16) = a1;
        *&aBlock.tx = sub_1001C1B14;
        *&aBlock.ty = v29;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10023D490;
        *&aBlock.d = &unk_10031D8A8;
        v30 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v23 animateWithDuration:v26 animations:v30 completion:v24];

        _Block_release(v30);
        _Block_release(v26);

        return;
      }

      goto LABEL_9;
    }

    v4 = &UITransitionContextFromViewKey;
  }

  v31 = *v4;
  v32 = [a1 viewForKey:v31];
  if (v32)
  {
    v33 = v32;
    [v32 center];
    v35 = v34;
    v37 = v36;
    [v33 frame];
    v38 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
    v39 = &v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
    v41.f64[1] = v40;
    v42 = vmaxnmq_f64(*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint], vsubq_f64(v41, *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint]));
    v42.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v42, v42)));
    v43 = v42.f64[0] + v42.f64[0];
    v44 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle];
    [v44 setFrame:{0.0, 0.0, v43, v43}];

    v45 = [*&v1[v38] layer];
    [*&v1[v38] frame];
    [v45 setCornerRadius:v46 * 0.5];

    [*&v1[v38] setCenter:{*v39, v39[1]}];
    v47 = objc_opt_self();
    v48 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration];
    v49 = swift_allocObject();
    v49[2] = v1;
    v49[3] = v33;
    v49[4] = v60;
    *&aBlock.tx = sub_1001C1994;
    *&aBlock.ty = v49;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10020C96C;
    *&aBlock.d = &unk_10031D7B8;
    v50 = _Block_copy(&aBlock);
    v51 = v1;
    v52 = v33;
    v53 = v60;

    v54 = swift_allocObject();
    v54[2] = v52;
    v54[3] = v35;
    v54[4] = v37;
    v54[5] = v51;
    v54[6] = a1;
    *&aBlock.tx = sub_1001C1A00;
    *&aBlock.ty = v54;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10023D490;
    *&aBlock.d = &unk_10031D808;
    v55 = _Block_copy(&aBlock);
    v56 = v51;
    swift_unknownObjectRetain();
    v57 = v52;

    [v47 animateWithDuration:v50 animations:v55 completion:v48];

    _Block_release(v55);
    _Block_release(v50);

    return;
  }

LABEL_9:
}

id sub_1001C1694(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle);
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  v14 = 0;
  [v7 setTransform:&v9];
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  v14 = 0;
  [a2 setTransform:&v9];
  [a2 setAlpha:1.0];
  return [a2 setCenter:{a3, a4}];
}

id sub_1001C1748(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
  v7 = *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle);
  CGAffineTransformMakeScale(&v9, 0.001, 0.001);
  [v7 setTransform:&v9];
  CGAffineTransformMakeScale(&v9, 0.001, 0.001);
  [a2 setTransform:&v9];
  [a2 setCenter:{*(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint), *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint + 8)}];
  result = [a2 setAlpha:0.0];
  if (*(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode) == 2)
  {
    [a3 insertSubview:a2 belowSubview:a2];
    return [a3 insertSubview:*(a1 + v6) belowSubview:a2];
  }

  return result;
}

unint64_t sub_1001C18F8()
{
  result = qword_100375E20;
  if (!qword_100375E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375E20);
  }

  return result;
}

uint64_t sub_1001C194C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001C19A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C19B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1001C1A00(char a1)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  v7 = *(v1 + 5);
  v6 = *(v1 + 6);
  [v3 setCenter:{v4, v5}];
  [v3 removeFromSuperview];
  [*(v7 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle) removeFromSuperview];

  return [v6 completeTransition:a1 & 1];
}

uint64_t sub_1001C1A90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C1ADC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C1B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001C1CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for STransferMetrics(uint64_t a1)
{
  result = qword_100375EF0;
  if (!qword_100375EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C1E28(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001C1F1C(319);
    if (v2 <= 0x3F)
    {
      sub_1001C1F74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C1F1C(uint64_t a1)
{
  if (!qword_100375F00)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100375F00);
    }
  }
}

void sub_1001C1F74(uint64_t a1)
{
  if (!qword_100375F08)
  {
    sub_1001A55C8(&unk_100375F10, &unk_1002F5C80);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100375F08);
    }
  }
}

uint64_t getEnumTagSinglePayload for STransferMetrics.SDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for STransferMetrics.SDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001C2134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4B4E494C4E574F44;
  }

  else
  {
    v3 = 0x4B4E494C5055;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x4B4E494C4E574F44;
  }

  else
  {
    v5 = 0x4B4E494C5055;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001C21D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C2258(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001C22C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C2340@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100319F78, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001C23A0(uint64_t *a1@<X8>)
{
  v2 = 0x4B4E494C5055;
  if (*v1)
  {
    v2 = 0x4B4E494C4E574F44;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1001C23E0()
{
  result = qword_100375F70;
  if (!qword_100375F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F70);
  }

  return result;
}

void sub_1001C2440()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setAllowedUnits:224];
  [v0 setZeroFormattingBehavior:0x10000];

  qword_100375E90 = v0;
}

double sub_1001C24B0()
{
  v1 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for STransferMetrics(0);
  if (*(v0 + *(v11 + 68)) == 1)
  {
    sub_1001C2E78(v0 + *(v11 + 44), v3);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v10, v3, v4);
      v7 = v10;
      goto LABEL_6;
    }

    sub_1001C2EE8(v3);
  }

  static Date.now.getter();
LABEL_6:
  Date.timeIntervalSince(_:)();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

int *sub_1001C2690()
{
  result = type metadata accessor for STransferMetrics(0);
  v2 = *(v0 + result[15]);
  v3 = *(v0 + result[14]);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v5)
  {
    return 0.0;
  }

  v6 = *(v0 + result[13]);
  v7 = *(v0 + result[12]);
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (v4)
  {
    goto LABEL_12;
  }

  v9 = v8 / v5 * 100.0;
  if (COERCE__INT64(fabs(v9)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        return v9;
      }

      __break(1u);
      return 0.0;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1001C2744()
{
  v1 = v0;
  v51 = sub_1001A551C(&qword_100375F80, &qword_1002F0348);
  v2 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = sub_1001C24B0();
  if (qword_100374F78 != -1)
  {
    swift_once();
  }

  v9 = [qword_100375E90 stringFromTimeInterval:v8];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    Double.write<A>(to:)();
    v11 = v53;
    v13 = v54;
  }

  v14 = type metadata accessor for STransferMetrics(0);
  v15 = *(v1 + *(v14 + 52));
  v16 = *(v1 + *(v14 + 48));
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v49 = v18;
    v20 = objc_opt_self();
    v50 = v2;
    v48 = v20;
    v21 = [v20 bytes];
    sub_1001C2DC8();
    Measurement.init(value:unit:)();
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v22._countAndFlagsBits = 123;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v52 = v19;
    sub_1001A551C(&qword_100375F90, &unk_1002F0350);
    v23._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 1029990688;
    v24._object = 0xE400000000000000;
    String.append(_:)(v24);
    if (*(v1 + 8))
    {
      v25 = 0x4B4E494C4E574F44;
    }

    else
    {
      v25 = 0x4B4E494C5055;
    }

    if (*(v1 + 8))
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v27 = v26;
    String.append(_:)(*&v25);

    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v52 = *v1;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x736572676F727020;
    v30._object = 0xEA00000000003D73;
    String.append(_:)(v30);
    v52 = sub_1001C2690();
    v31 = v7;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x657370616C652025;
    v33._object = 0xEA00000000003D64;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v11;
    v34._object = v13;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x6566736E61727420;
    v35._object = 0xEA00000000003D72;
    String.append(_:)(v35);
    v36 = v50;
    v37 = [v48 megabytes];
    v38 = v51;
    Measurement<>.converted(to:)();

    sub_1001C2E14();
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40 = *(v36 + 8);
    v40(v4, v38);
    v41._countAndFlagsBits = 0x74656C706D6F6320;
    v41._object = 0xEA00000000003D65;
    String.append(_:)(v41);
    if (*(v1 + v19[17]))
    {
      v42 = 1702195828;
    }

    else
    {
      v42 = 0x65736C6166;
    }

    if (*(v1 + v19[17]))
    {
      v43 = 0xE400000000000000;
    }

    else
    {
      v43 = 0xE500000000000000;
    }

    v44 = v43;
    String.append(_:)(*&v42);

    v45._countAndFlagsBits = 1030779936;
    v45._object = 0xE400000000000000;
    String.append(_:)(v45);
    if ((v49 - 0x1000000000000000) >> 61 == 7)
    {
      sub_1001C24B0();
      Double.write<A>(to:)();
      v46._countAndFlagsBits = 0x7D7370624DLL;
      v46._object = 0xE500000000000000;
      String.append(_:)(v46);
      v40(v31, v38);
      return;
    }
  }

  __break(1u);
}

void sub_1001C2C58(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  String.hash(into:)();

  Hasher._combine(_:)(qword_1002F0360[*(v1 + 9)]);
}

Swift::Int sub_1001C2CE8()
{
  Hasher.init(_seed:)();
  sub_1001C2C58(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001C2D2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001C2C58(v2);
  return Hasher._finalize()();
}

unint64_t sub_1001C2D70()
{
  result = qword_100375F78;
  if (!qword_100375F78)
  {
    type metadata accessor for STransferMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F78);
  }

  return result;
}

unint64_t sub_1001C2DC8()
{
  result = qword_100375F88;
  if (!qword_100375F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100375F88);
  }

  return result;
}

unint64_t sub_1001C2E14()
{
  result = qword_100375F98;
  if (!qword_100375F98)
  {
    sub_1001A55C8(&qword_100375F80, &qword_1002F0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F98);
  }

  return result;
}

uint64_t sub_1001C2E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2EE8(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1001C2F50(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == 0;
  if (*(a1 + 8))
  {
    v5 = 0x4B4E494C4E574F44;
  }

  else
  {
    v5 = 0x4B4E494C5055;
  }

  if (v4)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*(a2 + 8))
  {
    v7 = 0x4B4E494C4E574F44;
  }

  else
  {
    v7 = 0x4B4E494C5055;
  }

  if (*(a2 + 8))
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return qword_1002F0360[*(a1 + 9)] == qword_1002F0360[*(a2 + 9)];
}

uint64_t getEnumTagSinglePayload for FTMRATCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMRATCategories(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1001C31A0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C32B8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1001C33AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C36D8(*a1);
  *a2 = result;
  return result;
}

void sub_1001C33DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000534D53;
  v4 = 0x2026206563696F56;
  v5 = 5459283;
  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5456722;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E55;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x6563696F56;
    v3 = 0xE500000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001002B92A0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1001C34B0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1001C359C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C3724(*a1);
  *a2 = result;
  return result;
}

void sub_1001C35CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x41534E20524ELL;
  v5 = 0xE300000000000000;
  v6 = 5067591;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1398033749;
  if (v2 != 3)
  {
    v8 = 0x4E41525455;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 21070;
  if (v2 != 1)
  {
    v10 = 4543564;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1001C3684()
{
  result = qword_100375FA0;
  if (!qword_100375FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FA0);
  }

  return result;
}

unint64_t sub_1001C36D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100319FC8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001C3724(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A078, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FTMIMSRegistrationCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMIMSRegistrationCategories(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001C38C4()
{
  result = qword_100375FA8;
  if (!qword_100375FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FA8);
  }

  return result;
}

__n128 sub_1001C3918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001C393C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1001C3984(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1001C39F0()
{
  result = qword_100375FB0;
  if (!qword_100375FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FB0);
  }

  return result;
}

uint64_t sub_1001C3A44(uint64_t result, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 > 1u)
  {
    v3 = *&result;
    if (a2 == 2)
    {
      goto LABEL_13;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

    v3 = *&result * 1024.0 * 1024.0 * 1024.0;
    if (COERCE_UNSIGNED_INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 <= -9.22337204e18)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v2 = 0;
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    __break(1u);
  }

  if (!v2)
  {
    return result;
  }

  v3 = *&result * 1024.0;
  if (COERCE__INT64(fabs(*&result * 1024.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

  __break(1u);
LABEL_13:
  v3 = v3 * 1024.0 * 1024.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 >= 9.22337204e18)
  {
    __break(1u);
LABEL_17:
    v3 = v3 * 1024.0 * 1024.0 * 1024.0 * 1024.0;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          return v3;
        }

LABEL_30:
        __break(1u);
        return result;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

  return v3;
}

Swift::Int sub_1001C3C00(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001C3CF8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F1090[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_1001C3D48(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C3E9C(uint64_t a1)
{
  v2 = sub_1001C8218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C3ED8(uint64_t a1)
{
  v2 = sub_1001C8218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C3F14()
{
  v1 = *v0;
  v2 = 0x7365747962;
  v3 = 0x657479626167656DLL;
  v4 = 0x6579746261676967;
  if (v1 != 3)
  {
    v4 = 0x6574796261726574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657479626F6C696BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C3FBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001C70B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001C3FF0(uint64_t a1)
{
  v2 = sub_1001C8074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C402C(uint64_t a1)
{
  v2 = sub_1001C8074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4068(uint64_t a1)
{
  v2 = sub_1001C811C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C40A4(uint64_t a1)
{
  v2 = sub_1001C811C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C40E0(uint64_t a1)
{
  v2 = sub_1001C81C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C411C(uint64_t a1)
{
  v2 = sub_1001C81C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4158(uint64_t a1)
{
  v2 = sub_1001C8170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4194(uint64_t a1)
{
  v2 = sub_1001C8170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C41D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001C4250(uint64_t a1)
{
  v2 = sub_1001C80C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C428C(uint64_t a1)
{
  v2 = sub_1001C80C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001C42C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001C430C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1001C4370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72546F5461746164 && a2 == 0xEE00726566736E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001C4400(uint64_t a1)
{
  v2 = sub_1001C76FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C443C(uint64_t a1)
{
  v2 = sub_1001C76FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4478()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001C6F1C();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  v7 = v6;
  sub_1001A5474(v2, v4);
  if (v7)
  {
    return v5;
  }

  else
  {
    return 32123;
  }
}

double sub_1001C45B0@<D0>(uint64_t a2@<X8>)
{
  sub_1001C7270(v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1001C4610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C4478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001C4638()
{
  v0 = sub_1001C4478();
  v2 = v1;
  if (v0 == sub_1001C4478() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int sub_1001C46C4()
{
  Hasher.init(_seed:)();
  sub_1001C4478();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4720(uint64_t a1)
{
  sub_1001C4478();
  String.hash(into:)();
}

Swift::Int sub_1001C4770(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001C4478();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4878(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1001A551C(&qword_100376000, &qword_1002F07E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1001A5610(a1, a1[3]);
  sub_1001C76FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_1001C77A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

void *sub_1001C49D0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001C7584(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

BOOL sub_1001C4A20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v5 != 1 || v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8))
      {
        v7 = 0;
      }

      else
      {
        v7 = *&v2 == *&v4;
      }

      if (!v7)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v3 == 2)
  {
    return v5 == 2 && v2 == v4;
  }

  if (v3 != 3)
  {
    return v5 == 4 && v2 == v4;
  }

  return v5 == 3 && v2 == v4;
}

uint64_t sub_1001C4AB4(void *a1, uint64_t a2, int a3)
{
  v37 = a3;
  v38 = a2;
  v4 = sub_1001A551C(&qword_100376078, &qword_1002F0828);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v27 - v5;
  v6 = sub_1001A551C(&qword_100376080, &qword_1002F0830);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v27 - v7;
  v8 = sub_1001A551C(&qword_100376088, &qword_1002F0838);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v27 = &v27 - v9;
  v10 = sub_1001A551C(&qword_100376090, &qword_1002F0840);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_1001A551C(&qword_100376098, &qword_1002F0848);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = sub_1001A551C(&qword_1003760A0, &unk_1002F0850);
  v39 = *(v17 - 8);
  v40 = v17;
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  sub_1001A5610(a1, a1[3]);
  sub_1001C8074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37 <= 1u)
  {
    v24 = v10;
    v25 = v36;
    if (v37)
    {
      v42 = 1;
      sub_1001C81C4();
      v21 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v25 + 8))(v12, v24);
    }

    else
    {
      v41 = 0;
      sub_1001C8218();
      v21 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    if (v37 == 2)
    {
      v43 = 2;
      sub_1001C8170();
      v20 = v27;
      v21 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v29;
      KeyedEncodingContainer.encode(_:forKey:)();
      v23 = v28;
    }

    else if (v37 == 3)
    {
      v44 = 3;
      sub_1001C811C();
      v20 = v30;
      v21 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();
      v23 = v31;
    }

    else
    {
      v45 = 4;
      sub_1001C80C8();
      v20 = v33;
      v21 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v35;
      KeyedEncodingContainer.encode(_:forKey:)();
      v23 = v34;
    }

    (*(v23 + 8))(v20, v22);
  }

  return (*(v39 + 8))(v19, v21);
}

void sub_1001C5090(uint64_t a1, Swift::UInt64 a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      Hasher._combine(_:)(0);
      goto LABEL_12;
    }

    v4 = 1;
  }

  else if (a3 == 2)
  {
    v4 = 2;
  }

  else if (a3 == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  Hasher._combine(_:)(v4);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    a2 = 0;
  }

LABEL_12:
  Hasher._combine(_:)(a2);
}

uint64_t sub_1001C5110@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001C77F8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1001C517C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1001C5090(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001C51DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  sub_1001C5090(v5, v2, v3);
  return Hasher._finalize()();
}

unint64_t sub_1001C522C()
{
  result = qword_100375FB8;
  if (!qword_100375FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FB8);
  }

  return result;
}

unint64_t sub_1001C5284()
{
  result = qword_100375FC0;
  if (!qword_100375FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FC0);
  }

  return result;
}

uint64_t sub_1001C52D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C530C(_BYTE *a1, Swift::Int a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = sub_1001C3CF8(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (qword_1002F1090[*(*(v5 + 48) + v8)] != qword_1002F1090[v3])
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v3) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001C5E14(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001C5404(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001C5F48(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1001C5554(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001C60C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

Swift::Int sub_1001C56DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1002F1090[v17]);
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
      *(*(v5 + 48) + v13) = v17;
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

Swift::Int sub_1001C5938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_100376160, &unk_1002F1080);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1001C5B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1001C5E14(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001C56DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001C6284();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001C6678(v5 + 1);
  }

  v8 = *v3;
  result = sub_1001C3CF8(*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (qword_1002F1090[*(*(v8 + 48) + a2)] != qword_1002F1090[v4])
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001C5F48(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1001C5938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1001C63C4();
      goto LABEL_16;
    }

    sub_1001C68A4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C60C8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1001C5B98(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1001C6520();
      goto LABEL_23;
    }

    sub_1001C6ADC(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_22:
            sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void *sub_1001C6284()
{
  v1 = v0;
  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
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

void sub_1001C63C4()
{
  v1 = v0;
  sub_1001A551C(&qword_100376160, &unk_1002F1080);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_1001C6520()
{
  v1 = v0;
  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

Swift::Int sub_1001C6678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1002F1090[v16]);
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
      *(*(v5 + 48) + v12) = v16;
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

Swift::Int sub_1001C68A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_100376160, &unk_1002F1080);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

Swift::Int sub_1001C6ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001C6D30(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 == a3;
    }

    v9 = v8;
    v10 = a4 == 1 && *&a1 == *&a3;
    if (a2)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v4 = *&a1 == *&a3;
    if (a4 != 2)
    {
      v4 = 0;
    }

    v5 = *&a1 == *&a3;
    if (a4 != 3)
    {
      v5 = 0;
    }

    v6 = a4 == 4 && *&a1 == *&a3;
    if (a2 == 3)
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      return v4;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1001C6DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001C6EC8();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001C530C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1001C6E44@<X0>(uint64_t a1@<X8>)
{
  result = sub_1001C6DD0(&off_100319F50);
  *a1 = 1;
  *(a1 + 8) = 0xD000000000000013;
  *(a1 + 16) = 0x80000001002BAD40;
  *(a1 + 24) = -25535;
  *(a1 + 26) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 257;
  *(a1 + 56) = 0x4059000000000000;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0x4059000000000000;
  *(a1 + 80) = 2;
  return result;
}

unint64_t sub_1001C6EC8()
{
  result = qword_100378810;
  if (!qword_100378810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378810);
  }

  return result;
}

unint64_t sub_1001C6F1C()
{
  result = qword_100375FD0;
  if (!qword_100375FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FD0);
  }

  return result;
}

uint64_t sub_1001C6F70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1001C5404(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001C7008(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  sub_1001C826C();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1001C5554(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001C70B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657479626F6C696BLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657479626167656DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6579746261676967 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574796261726574 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001C7270@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C6DD0(&off_10031A140);
  v25[0] = 1;
  v26 = 0xD000000000000013;
  v27 = 0x80000001002BAD40;
  v28 = -25535;
  v29 = 0;
  v30 = v8;
  v31 = 0x3FF0000000000000;
  v32 = 257;
  v33 = 0x4059000000000000;
  v34 = 2;
  v35 = 0x4059000000000000;
  v36 = 2;
  sub_1001AC6D0(v25);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    v15 = 0;
    v17 = 0;
    v12 = 0;
    v13 = 0;
    v19 = 0;
    v22 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    result = 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001C74C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1001C751C(v9, v11);

    v12 = v23[6];
    v13 = v23[7];
    v14 = v24;
    v16 = v23[2];
    v15 = v23[3];
    v17 = v23[4];
    v18 = v23[5];
    v20 = v23[8];
    v19 = v23[9];
    result = v23[10];
    v22 = v23[11];
  }

  *a3 = v16;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v20;
  *(a3 + 56) = v19;
  *(a3 + 64) = result;
  *(a3 + 72) = v22;
  *(a3 + 80) = v14;
  return result;
}

unint64_t sub_1001C74C8()
{
  result = qword_100375FD8;
  if (!qword_100375FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FD8);
  }

  return result;
}

void sub_1001C751C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1001A5474(a1, a2);
  }
}

unint64_t sub_1001C7530()
{
  result = qword_100375FE0;
  if (!qword_100375FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FE0);
  }

  return result;
}

void *sub_1001C7584(void *a1)
{
  v3 = sub_1001A551C(&qword_100375FE8, &qword_1002F07E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1001A5610(a1, a1[3]);
  sub_1001C76FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1001A5654(a1);
  }

  else
  {
    sub_1001C7750();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_1001A5654(a1);
  }

  return v7;
}

unint64_t sub_1001C76FC()
{
  result = qword_100375FF0;
  if (!qword_100375FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FF0);
  }

  return result;
}

unint64_t sub_1001C7750()
{
  result = qword_100375FF8;
  if (!qword_100375FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FF8);
  }

  return result;
}

unint64_t sub_1001C77A4()
{
  result = qword_100376008;
  if (!qword_100376008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376008);
  }

  return result;
}

uint64_t sub_1001C77F8(void *a1)
{
  v2 = sub_1001A551C(&qword_100376010, &qword_1002F07F0);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v63 = v51 - v4;
  v5 = sub_1001A551C(&qword_100376018, &qword_1002F07F8);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  __chkstk_darwin(v5);
  v62 = v51 - v7;
  v8 = sub_1001A551C(&qword_100376020, &qword_1002F0800);
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  __chkstk_darwin(v8);
  v64 = v51 - v10;
  v11 = sub_1001A551C(&qword_100376028, &qword_1002F0808);
  v54 = *(v11 - 8);
  v55 = v11;
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  v14 = sub_1001A551C(&qword_100376030, &qword_1002F0810);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  v17 = sub_1001A551C(&qword_100376038, &qword_1002F0818);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v51 - v19;
  v21 = a1[3];
  v66 = a1;
  sub_1001A5610(a1, v21);
  sub_1001C8074();
  v22 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v52 = v14;
    v23 = v64;
    v65 = v20;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 5) : (v27 = 1), v27))
    {
      v28 = v17;
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      sub_1001A551C(&qword_100376048, &qword_1002F0820);
      *v30 = &type metadata for SDataTransferProperties.SDataSize;
      v31 = v65;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v17);
      swift_willThrow();
      (*(v18 + 8))(v31, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v51[1] = v24;
      if (v26 <= 1)
      {
        if (v26)
        {
          v68 = 1;
          sub_1001C81C4();
          v42 = v65;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v44 = v55;
          KeyedDecodingContainer.decode(_:forKey:)();
          v46 = v45;
          (*(v54 + 8))(v13, v44);
          (*(v18 + 8))(v42, v17);
          swift_unknownObjectRelease();
          v17 = v46;
        }

        else
        {
          v67 = 0;
          sub_1001C8218();
          v35 = v16;
          v36 = v65;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v37 = v52;
          v38 = v17;
          v17 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v53 + 8))(v35, v37);
          (*(v18 + 8))(v36, v38);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v26 == 2)
        {
          v69 = 2;
          sub_1001C8170();
          v32 = v65;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v56;
          KeyedDecodingContainer.decode(_:forKey:)();
          v49 = v47;
          (*(v57 + 8))(v23, v39);
        }

        else
        {
          v32 = v65;
          if (v26 == 3)
          {
            v70 = 3;
            sub_1001C811C();
            v33 = v62;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v34 = v58;
            KeyedDecodingContainer.decode(_:forKey:)();
            v49 = v48;
            (*(v59 + 8))(v33, v34);
          }

          else
          {
            v71 = 4;
            sub_1001C80C8();
            v40 = v63;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v43 = v60;
            KeyedDecodingContainer.decode(_:forKey:)();
            v49 = v50;
            (*(v61 + 8))(v40, v43);
          }
        }

        (*(v18 + 8))(v32, v17);
        swift_unknownObjectRelease();
        v17 = v49;
      }
    }
  }

  sub_1001A5654(v66);
  return v17;
}

unint64_t sub_1001C8074()
{
  result = qword_100376040;
  if (!qword_100376040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376040);
  }

  return result;
}

unint64_t sub_1001C80C8()
{
  result = qword_100376050;
  if (!qword_100376050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376050);
  }

  return result;
}

unint64_t sub_1001C811C()
{
  result = qword_100376058;
  if (!qword_100376058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376058);
  }

  return result;
}

unint64_t sub_1001C8170()
{
  result = qword_100376060;
  if (!qword_100376060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376060);
  }

  return result;
}

unint64_t sub_1001C81C4()
{
  result = qword_100376068;
  if (!qword_100376068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376068);
  }

  return result;
}

unint64_t sub_1001C8218()
{
  result = qword_100376070;
  if (!qword_100376070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376070);
  }

  return result;
}

unint64_t sub_1001C826C()
{
  result = qword_1003760A8;
  if (!qword_1003760A8)
  {
    sub_1001A55C8(&qword_1003751D0, &qword_1002EEF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDataTransferProperties.SDataSize.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SDataTransferProperties.SDataSize.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Database(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Database(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SDataTransferProperties.SDataSize(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1001C85B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001C85FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001C8654()
{
  result = qword_1003760B8;
  if (!qword_1003760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760B8);
  }

  return result;
}

unint64_t sub_1001C86AC()
{
  result = qword_1003760C0;
  if (!qword_1003760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760C0);
  }

  return result;
}

unint64_t sub_1001C8704()
{
  result = qword_1003760C8;
  if (!qword_1003760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760C8);
  }

  return result;
}

unint64_t sub_1001C875C()
{
  result = qword_1003760D0;
  if (!qword_1003760D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760D0);
  }

  return result;
}

unint64_t sub_1001C87B4()
{
  result = qword_1003760D8;
  if (!qword_1003760D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760D8);
  }

  return result;
}

unint64_t sub_1001C880C()
{
  result = qword_1003760E0;
  if (!qword_1003760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760E0);
  }

  return result;
}

unint64_t sub_1001C8864()
{
  result = qword_1003760E8;
  if (!qword_1003760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760E8);
  }

  return result;
}

unint64_t sub_1001C88BC()
{
  result = qword_1003760F0;
  if (!qword_1003760F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760F0);
  }

  return result;
}

unint64_t sub_1001C8914()
{
  result = qword_1003760F8;
  if (!qword_1003760F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760F8);
  }

  return result;
}

unint64_t sub_1001C896C()
{
  result = qword_100376100;
  if (!qword_100376100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376100);
  }

  return result;
}

unint64_t sub_1001C89C4()
{
  result = qword_100376108;
  if (!qword_100376108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376108);
  }

  return result;
}

unint64_t sub_1001C8A1C()
{
  result = qword_100376110;
  if (!qword_100376110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376110);
  }

  return result;
}

unint64_t sub_1001C8A74()
{
  result = qword_100376118;
  if (!qword_100376118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376118);
  }

  return result;
}

unint64_t sub_1001C8ACC()
{
  result = qword_100376120;
  if (!qword_100376120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376120);
  }

  return result;
}

unint64_t sub_1001C8B24()
{
  result = qword_100376128;
  if (!qword_100376128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376128);
  }

  return result;
}

unint64_t sub_1001C8B7C()
{
  result = qword_100376130;
  if (!qword_100376130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376130);
  }

  return result;
}

unint64_t sub_1001C8BD4()
{
  result = qword_100376138;
  if (!qword_100376138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376138);
  }

  return result;
}

unint64_t sub_1001C8C2C()
{
  result = qword_100376140;
  if (!qword_100376140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376140);
  }

  return result;
}

unint64_t sub_1001C8C84()
{
  result = qword_100376148;
  if (!qword_100376148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376148);
  }

  return result;
}

unint64_t sub_1001C8CDC()
{
  result = qword_100376150;
  if (!qword_100376150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376150);
  }

  return result;
}

unint64_t sub_1001C8D34()
{
  result = qword_100376158;
  if (!qword_100376158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376158);
  }

  return result;
}

uint64_t sub_1001C8DB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*sub_1001C8E2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1001C8ED0;
}

void sub_1001C8ED0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void *sub_1001C8F38()
{
  v0 = type metadata accessor for STransferMetrics(0);
  v27 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v25 - v3;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = 0;
  v10 = v28;
  v11 = v28 + 8;
  v12 = 1 << *(v28 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v28[8];
  v15 = (v12 + 63) >> 6;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v9;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(v27 + 72);
    sub_1001CB9FC(v10[7] + v19 * (v18 | (v9 << 6)), v4);
    sub_1001CB8D4(v4, v7);
    if (v7[8])
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_12;
      }

      result = sub_1001CBA60(v7);
    }

    else
    {

LABEL_12:
      sub_1001CB8D4(v7, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F547C(0, v16[2] + 1, 1);
        v16 = v28;
      }

      v23 = v16[2];
      v22 = v16[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = v23 + 1;
        sub_1001F547C((v22 > 1), v23 + 1, 1);
        v24 = v25;
        v16 = v28;
      }

      v16[2] = v24;
      result = sub_1001CB8D4(v26, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v23 * v19);
    }
  }

  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v15)
    {

      return v16;
    }

    v14 = v11[v9];
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001C9214()
{
  v0 = type metadata accessor for STransferMetrics(0);
  v27 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v25 - v3;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = 0;
  v10 = v28;
  v11 = v28 + 8;
  v12 = 1 << *(v28 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v28[8];
  v15 = (v12 + 63) >> 6;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v9;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(v27 + 72);
    sub_1001CB9FC(v10[7] + v19 * (v18 | (v9 << 6)), v4);
    sub_1001CB8D4(v4, v7);
    if (v7[8] == 1)
    {

LABEL_12:
      sub_1001CB8D4(v7, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F547C(0, v16[2] + 1, 1);
        v16 = v28;
      }

      v23 = v16[2];
      v22 = v16[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = v23 + 1;
        sub_1001F547C((v22 > 1), v23 + 1, 1);
        v24 = v25;
        v16 = v28;
      }

      v16[2] = v24;
      result = sub_1001CB8D4(v26, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v23 * v19);
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_12;
      }

      result = sub_1001CBA60(v7);
    }
  }

  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v15)
    {

      return v16;
    }

    v14 = v11[v9];
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9524(uint64_t (*a1)(__n128))
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v3 - 8);
  v40 = v34 - v4;
  v46 = type metadata accessor for Date();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v34 - v9;
  v10 = type metadata accessor for STransferMetrics(0);
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(v12);
  v16 = *(v15 + 16);
  if (!v16)
  {

    (a1)(v33);
  }

  v34[1] = v1;
  v35 = a1;
  v17 = v10[12];
  v44 = v10[13];
  v45 = v17;
  v18 = v10[17];
  v19 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v39 = (v5 + 48);
  v42 = *(v11 + 72);
  v43 = v18;
  v36 = v15;
  v37 = (v5 + 32);
  v41 = (v5 + 8);
  v20 = 0.0;
  while (1)
  {
    result = sub_1001CB9FC(v19, v14);
    v25 = *&v14[v44];
    v26 = *&v14[v45];
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    if ((v27 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_15;
    }

    if (v14[v43] == 1)
    {
      v28 = v40;
      sub_1001AC934(&v14[v10[11]], v40, &qword_100375738, &qword_1002EF900);
      if ((*v39)(v28, 1, v46) != 1)
      {
        v29 = v10;
        v30 = v7;
        v31 = v38;
        (*v37)(v38, v28, v46);
        v21 = v31;
        v7 = v30;
        v10 = v29;
        goto LABEL_5;
      }

      sub_1001AC99C(v28, &qword_100375738, &qword_1002EF900);
    }

    static Date.now.getter();
    v21 = v7;
LABEL_5:
    Date.timeIntervalSince(_:)();
    v23 = v22;
    (*v41)(v21, v46);
    sub_1001CBA60(v14);
    v20 = v20 + (8 * v27) / v23 / 1000000.0;
    v19 += v42;
    if (!--v16)
    {

      v35(v32);
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1001C98D0()
{
  v0 = type metadata accessor for STransferMetrics(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v17;
  v5 = v17 + 64;
  v6 = 1 << *(v17 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v17 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v8)
  {
    v12 = v10;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1001CB9FC(*(v4 + 56) + *(v1 + 72) * (v13 | (v12 << 6)), v3);
    v14 = *&v3[*(v0 + 52)];
    sub_1001CBA60(v3);
    v15 = __OFADD__(v11, v14);
    v11 += v14;
    if (v15)
    {
      __break(1u);
LABEL_13:

      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1001C9AA4()
{
  v0 = type metadata accessor for STransferMetrics(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v17;
  v5 = v17 + 64;
  v6 = 1 << *(v17 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v17 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v8)
  {
    v12 = v10;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1001CB9FC(*(v4 + 56) + *(v1 + 72) * (v13 | (v12 << 6)), v3);
    v14 = *&v3[*(v0 + 48)];
    sub_1001CBA60(v3);
    v15 = __OFADD__(v11, v14);
    v11 += v14;
    if (v15)
    {
      __break(1u);
LABEL_13:

      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1001C9C78(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a4;
  v75 = a3;
  v80 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_1001A551C(&qword_100377210, &qword_1002F1158);
  __chkstk_darwin(v8 - 8);
  v10 = &v75 - v9;
  v11 = type metadata accessor for STransferMetrics(0);
  v81 = *(v11 - 1);
  __chkstk_darwin(v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001A551C(&qword_1003761D0, &qword_1002F11A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v75 - v19;
  v82 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v5 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v83 = a1;
  v21 = [a1 taskDescription];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = HIBYTE(v25) & 0xF;
  v27 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    goto LABEL_67;
  }

  if ((v25 & 0x1000000000000000) == 0)
  {
    if ((v25 & 0x2000000000000000) != 0)
    {
      v84[0] = v23;
      v84[1] = v25 & 0xFFFFFFFFFFFFFFLL;
      if (v23 == 43)
      {
        if (v26)
        {
          if (--v26)
          {
            v31 = 0;
            v41 = v84 + 1;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v26)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_87:
        __break(1u);
        return;
      }

      if (v23 != 45)
      {
        if (v26)
        {
          v31 = 0;
          v46 = v84;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              break;
            }

            ++v46;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v26)
      {
        if (--v26)
        {
          v31 = 0;
          v35 = v84 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v23 & 0x1000000000000000) != 0)
      {
        v29 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *v29;
      if (v30 == 43)
      {
        if (v27 >= 1)
        {
          v26 = v27 - 1;
          if (v27 != 1)
          {
            v31 = 0;
            if (v29)
            {
              v38 = v29 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  goto LABEL_64;
                }

                v40 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_64;
                }

                v31 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  goto LABEL_64;
                }

                ++v38;
                if (!--v26)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_86;
      }

      if (v30 != 45)
      {
        if (v27)
        {
          v31 = 0;
          if (v29)
          {
            while (1)
            {
              v44 = *v29 - 48;
              if (v44 > 9)
              {
                goto LABEL_64;
              }

              v45 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                goto LABEL_64;
              }

              v31 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                goto LABEL_64;
              }

              ++v29;
              if (!--v27)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v31 = 0;
        LOBYTE(v26) = 1;
        goto LABEL_65;
      }

      if (v27 >= 1)
      {
        v26 = v27 - 1;
        if (v27 != 1)
        {
          v31 = 0;
          if (v29)
          {
            v32 = v29 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_64;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                goto LABEL_64;
              }

              v31 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                goto LABEL_64;
              }

              ++v32;
              if (!--v26)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v26) = 0;
LABEL_65:
          v85 = v26;
          v49 = v26;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v85 = 0;
  v31 = sub_1001A5A78(v23, v25, 10);
  v49 = v74;
LABEL_66:

  if (v49)
  {
LABEL_67:
    v31 = 0;
  }

  v50 = v5;
  sub_1001CB940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = v83;
  v76 = [v83 isKindOfClass:ObjCClassFromMetadata];
  v53 = [v52 originalRequest];
  v78 = ObjectType;
  v54 = v10;
  if (v53)
  {
    v55 = v53;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v77 = v31;
  v57 = type metadata accessor for URLRequest();
  v58 = *(v57 - 8);
  (*(v58 + 56))(v16, v56, 1, v57);
  sub_1001CB98C(v16, v20);
  if ((*(v58 + 48))(v20, 1, v57) == 1)
  {
    sub_1001AC99C(v20, &qword_1003761D0, &qword_1002F11A8);
    v59 = 0;
  }

  else
  {
    v60 = URLRequest.networkServiceType.getter();
    (*(v58 + 8))(v20, v57);
    v59 = v60;
  }

  v61 = v54;
  v62 = v79;
  v63 = sub_10026F454(v59);
  v64 = [v83 taskIdentifier];
  v65 = v50;
  if (v62)
  {
    v66 = v62;
    v67 = v75;
  }

  else
  {
    v67 = *aPdpIp0;
    v66 = unk_100378060;
  }

  if (v63 == 9)
  {
    v68 = 0;
  }

  else
  {
    v68 = v63;
  }

  v69 = v11[11];
  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 56))(&v13[v69], 1, 1, v70);
  *v13 = v64;
  v13[8] = v76;
  v13[9] = v68;

  static Date.now.getter();
  v71 = v77;
  *&v13[v11[8]] = v77;
  v13[v11[9]] = v80 & 1;
  v72 = &v13[v11[10]];
  *v72 = v67;
  *(v72 + 1) = v66;
  *&v13[v11[12]] = 0;
  *&v13[v11[13]] = 0;
  *&v13[v11[14]] = 0;
  *&v13[v11[15]] = 0;
  *&v13[v11[16]] = 0;
  v13[v11[17]] = 0;
  sub_1001CB248();
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001CB9FC(v13, v61);
  (*(v81 + 56))(v61, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  v73 = static Published.subscript.modify();
  sub_1001E278C(v61, v71);
  v73(v84, 0);

  sub_1001CBA60(v13);
  [*(v65 + v82) unlock];
}

void sub_1001CA488(uint64_t a1)
{
  v17 = a1;
  v1 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  __chkstk_darwin(v1);
  v3 = (&v17 - v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v18;
  v5 = v18 + 64;
  v6 = 1 << *(v18 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v18 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v4 + 56);
    v15 = *(*(v4 + 48) + 8 * v13);
    v16 = type metadata accessor for STransferMetrics(0);
    sub_1001CB9FC(v14 + *(*(v16 - 8) + 72) * v13, v3 + *(v1 + 48));
    *v3 = v15;
    sub_1001AC99C(v3, &qword_1003772A0, &qword_1002F11B0);
    if (v15 == v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t (*sub_1001CA668(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1001CB310(v4, a2);
  return sub_1001CA6E0;
}

void sub_1001CA6E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1001CA72C(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = v51 - v8;
  v10 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v2 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v11 = [a1 taskDescription];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_66;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    LOBYTE(v51[0]) = 0;
    v21 = sub_1001A5A78(v13, v15, 10);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v52[0] = v13;
    v52[1] = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v13 == 43)
    {
      if (v16)
      {
        if (--v16)
        {
          v21 = 0;
          v31 = v52 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_80:
      __break(1u);
      return;
    }

    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v36 = v52;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v25 = v52 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_78;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v19 = _StringObject.sharedUTF8.getter();
  }

  v20 = *v19;
  if (v20 == 43)
  {
    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v28 = v19 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_64;
            }

            v30 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_64;
            }

            ++v28;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_56;
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if (v20 == 45)
  {
    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v16) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v17)
  {
    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v34 = *v19 - 48;
        if (v34 > 9)
        {
          goto LABEL_64;
        }

        v35 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          goto LABEL_64;
        }

        v21 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          goto LABEL_64;
        }

        ++v19;
        if (!--v17)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

LABEL_64:
  v21 = 0;
  LOBYTE(v16) = 1;
LABEL_65:
  LOBYTE(v51[0]) = v16;
  v39 = v16;

  if (v39)
  {
LABEL_66:
    v21 = 0;
  }

LABEL_67:
  sub_1001CA488(v21);
  if (v40)
  {
    sub_1001CB248();
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v41 = sub_1001C8E2C(v52);
    v42 = sub_1001CA668(v51, v21);
    v44 = v43;
    v45 = type metadata accessor for STransferMetrics(0);
    if (!(*(*(v45 - 1) + 48))(v44, 1, v45))
    {
      static Date.now.getter();
      v46 = type metadata accessor for Date();
      (*(*(v46 - 8) + 56))(v9, 0, 1, v46);
      sub_1001CB2A0(v9, v44 + v45[11]);
      *(v44 + v45[17]) = 1;
      *(v44 + v45[16]) = a2;
      swift_errorRetain();
    }

    (v42)(v51, 0);
    (v41)(v52, 0);
  }

  else
  {
    v47 = *aPdpIp0;
    v48 = unk_100378060;

    sub_1001C9C78(a1, 0, v47, v48);

    sub_1001CA72C(a1, a2);
  }

  [*(v3 + v10) unlock];
}

id sub_1001CAED4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for STransferMetricsStore(uint64_t a1)
{
  result = qword_1003761A8;
  if (!qword_1003761A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CAFF8(uint64_t a1)
{
  sub_1001CB0A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CB0A0(uint64_t a1)
{
  if (!qword_1003761B8)
  {
    sub_1001A55C8(&qword_1003761C0, &qword_1002F10F8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1003761B8);
    }
  }
}

uint64_t sub_1001CB110@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001CB150@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_1001CB1D0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_1001CB248()
{
  result = qword_1003761C8;
  if (!qword_1003761C8)
  {
    type metadata accessor for STransferMetricsStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003761C8);
  }

  return result;
}

uint64_t sub_1001CB2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_1001CB310(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1001CB8A0(v5);
  v5[9] = sub_1001CB414(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001CB3B4;
}

void sub_1001CB3B4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1001CB414(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = type metadata accessor for STransferMetrics(0);
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc();
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v15 = *(*(sub_1001A551C(&qword_100377210, &qword_1002F1158) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v15);
    v9[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[9] = v16;
  v18 = *v4;
  v19 = sub_1001F6730(a2);
  *(v9 + 88) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_1001F95A0();
      v19 = v27;
      goto LABEL_17;
    }

    sub_1001F6AEC(v24, a3 & 1);
    v19 = sub_1001F6730(a2);
    if ((v25 & 1) == (v28 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  v9[10] = v19;
  if (v25)
  {
    sub_1001CB8D4(*(*v4 + 56) + *(v12 + 72) * v19, v17);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v12 + 56))(v17, v29, 1, v10);
  return sub_1001CB6B8;
}

void sub_1001CB6B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_1001AC934(v5, v6, &qword_100377210, &qword_1002F1158);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_1001CB8D4(v9, *(v2 + 5));
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_1001CB8D4(v13, v14);
        sub_1001F9364(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_1001AC934(v5, v16, &qword_100377210, &qword_1002F1158);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_1001CB8D4(v9, *(v2 + 6));
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1001CB8D4(v13, v11[7] + *(*(v2 + 3) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1001AC99C(v9, &qword_100377210, &qword_1002F1158);
  if (v8)
  {
    sub_1001F8270(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_1001AC99C(v20, &qword_100377210, &qword_1002F1158);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_1001CB8A0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001CB8C8;
}

uint64_t sub_1001CB8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STransferMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CB940()
{
  result = qword_1003761D8;
  if (!qword_1003761D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003761D8);
  }

  return result;
}

uint64_t sub_1001CB98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003761D0, &qword_1002F11A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CB9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STransferMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CBA60(uint64_t a1)
{
  v2 = type metadata accessor for STransferMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001CBABC(void *a1, uint64_t a2, unint64_t a3)
{
  v67 = a2;
  swift_getObjectType();
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v65 - v8;
  v10 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v3 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v11 = [a1 taskDescription];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  v68 = a3;
  v69 = v10;
  v66 = v9;
  if (!v18)
  {

    goto LABEL_66;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    LOBYTE(v71[0]) = 0;
    v21 = sub_1001A5A78(v13, v15, 10);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
LABEL_67:
      v40 = [a1 countOfBytesSent];
      v41 = [a1 countOfBytesReceived];
      v42 = [a1 countOfBytesExpectedToSend];
      v43 = [a1 countOfBytesExpectedToReceive];
      sub_1001CA488(v21);
      if ((v44 & 1) == 0)
      {
        v50 = *aPdpIp0;
        v51 = unk_100378060;

        sub_1001C9C78(a1, 0, v50, v51);

LABEL_84:
        [*(v70 + v69) unlock];
        return;
      }

      sub_1001CB248();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v45 = sub_1001C8E2C(v72);
      v46 = sub_1001CA668(v71, v21);
      v48 = v47;
      v49 = type metadata accessor for STransferMetrics(0);
      v65 = *(*(v49 - 1) + 48);
      if (!v65(v48, 1, v49))
      {
        v52 = v49[17];
        if ((*(v48 + v52) & 1) == 0)
        {
          *(v48 + v49[12]) = v41;
          *(v48 + v49[13]) = v40;
          *(v48 + v49[14]) = v43;
          *(v48 + v49[15]) = v42;
          if (*(v48 + 8))
          {
            if (v41 != v43)
            {
              goto LABEL_77;
            }
          }

          else if (v40 != v42)
          {
            goto LABEL_77;
          }

          v53 = v66;
          v54 = v52;
          static Date.now.getter();
          v55 = type metadata accessor for Date();
          (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
          sub_1001CB2A0(v53, v48 + v49[11]);
          *(v48 + v54) = 1;
          *(v48 + v49[16]) = 0;
        }
      }

LABEL_77:
      (v46)(v71, 0);
      (v45)(v72, 0);
      v56 = v68;
      if (v68)
      {
        v57 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v57 = v67 & 0xFFFFFFFFFFFFLL;
        }

        if (v57)
        {

          v58 = sub_1001C8E2C(v72);
          v59 = sub_1001CA668(v71, v21);
          v61 = v60;
          if (!v65(v60, 1, v49))
          {
            v62 = (v61 + v49[10]);
            *v62 = v67;
            v62[1] = v56;
          }

          (v59)(v71, 0);
          (v58)(v72, 0);
        }
      }

      goto LABEL_84;
    }

LABEL_66:
    v21 = 0;
    goto LABEL_67;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = _StringObject.sharedUTF8.getter();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v28 = v19 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_64;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_64;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_64;
              }

              ++v28;
              if (!--v16)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_91;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v21 = 0;
        if (v19)
        {
          while (1)
          {
            v34 = *v19 - 48;
            if (v34 > 9)
            {
              goto LABEL_64;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_64;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v21 = 0;
      LOBYTE(v16) = 1;
LABEL_65:
      LOBYTE(v71[0]) = v16;
      v39 = v16;

      if ((v39 & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v16) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v72[0] = v13;
  v72[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v36 = v72;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v25 = v72 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_90;
  }

  if (v16)
  {
    if (--v16)
    {
      v21 = 0;
      v31 = v72 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_1001CC1CC()
{
  result = qword_1003761E8;
  if (!qword_1003761E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003761E8);
  }

  return result;
}

uint64_t sub_1001CC220(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001CC27C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CC2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v17 = sub_1001A551C(&qword_1003761F0, &qword_1002F12D0);
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  Button.init(action:label:)();
  v19 = a3;
  v20 = a4;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  sub_1001A551C(&qword_1003761F8, &qword_1002F12D8);
  sub_1001AD0C8(&qword_100376200, &qword_1003761F0, &qword_1002F12D0, &protocol conformance descriptor for Button<A>);
  sub_1001CC9F4();
  v14 = v17;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v9 + 8))(v11, v14);
}

uint64_t sub_1001CC580(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1001CC618@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001CC660@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for FTMCellMonitorBookmarkedSheetView(0);
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001A551C(&qword_100376218, &qword_1002F12E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (a1)
  {
    v24 = a3;
    v15 = qword_100375020;

    if (v15 != -1)
    {
      swift_once();
    }

    *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData) = a1;

    type metadata accessor for FTMAllMetricsModel(0);
    sub_1001CCB60(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
    *v7 = EnvironmentObject.init()();
    v7[1] = v16;
    v17 = *(v5 + 20);
    *(v7 + v17) = swift_getKeyPath();
    sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
    swift_storeEnumTagMultiPayload();
    v18 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData);
    if (v18)
    {

      v19 = static ObservableObject.environmentStore.getter();

      sub_1001B5228(v7, v11);
      v20 = &v11[*(v8 + 36)];
      *v20 = v19;
      v20[1] = v18;
      sub_1001CCBAC(v11, v14);
      v21 = v24;
      sub_1001CCBAC(v14, v24);
      return (*(v9 + 56))(v21, 0, 1, v8);
    }

    __break(1u);
  }

  type metadata accessor for FTMAllMetricsModel(0);
  sub_1001CCB60(&qword_100375508, type metadata accessor for FTMAllMetricsModel, &unk_1002F3360);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001CC9A4()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001CC9F4()
{
  result = qword_100376208;
  if (!qword_100376208)
  {
    sub_1001A55C8(&qword_1003761F8, &qword_1002F12D8);
    sub_1001CCA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376208);
  }

  return result;
}

unint64_t sub_1001CCA78()
{
  result = qword_100376210;
  if (!qword_100376210)
  {
    sub_1001A55C8(&qword_100376218, &qword_1002F12E0);
    sub_1001CCB60(&qword_100376220, type metadata accessor for FTMCellMonitorBookmarkedSheetView, &unk_1002EF6B4);
    sub_1001AD0C8(&qword_100376228, &qword_100376230, &qword_1002F12E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376210);
  }

  return result;
}

uint64_t sub_1001CCB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CCBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100376218, &qword_1002F12E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCC1C()
{
  sub_1001A55C8(&qword_1003761F0, &qword_1002F12D0);
  sub_1001A55C8(&qword_1003761F8, &qword_1002F12D8);
  sub_1001AD0C8(&qword_100376200, &qword_1003761F0, &qword_1002F12D0, &protocol conformance descriptor for Button<A>);
  sub_1001CC9F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001CCCDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001CCD50()
{
  v1 = OBJC_IVAR____TtC11FTMInternal22FTMPrimaryStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMPrimaryStateChanged(uint64_t a1)
{
  result = qword_100376268;
  if (!qword_100376268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CCE4C(uint64_t a1)
{
  sub_1001CCEDC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CCEDC()
{
  if (!qword_100376DE0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100376DE0);
    }
  }
}

uint64_t sub_1001CCF34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 289))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_1001CCF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 289) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 289) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CD044@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMPrimaryStateChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001CD08C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001CD104()
{
  v1 = OBJC_IVAR____TtC11FTMInternal24MetricDetailViewDelegate__metric;
  v2 = sub_1001A551C(&qword_100376420, &qword_1002F14A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricDetailViewDelegate(uint64_t a1)
{
  result = qword_100376358;
  if (!qword_100376358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CD200(uint64_t a1)
{
  sub_1001CD290(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CD290(uint64_t a1)
{
  if (!qword_100376368)
  {
    sub_1001A55C8(&unk_100376370, qword_1002F1420);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100376368);
    }
  }
}

uint64_t sub_1001CD2F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MetricDetailViewDelegate(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001CD334()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001CD3B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1001CD4C0(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1001CD4C0(v8, v5);

  static Published.subscript.setter();
  return sub_1001CD530(v8);
}

uint64_t sub_1001CD4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CD530(uint64_t a1)
{
  v2 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001CD5AC()
{
  result = qword_100376428;
  if (!qword_100376428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376428);
  }

  return result;
}

id sub_1001CD600()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setBackgroundColor:v3];
  v4 = [v0 layer];
  v5 = [v2 blackColor];
  v6 = [v5 CGColor];

  [v4 setShadowColor:v6];
  v7 = [v0 layer];
  [v7 setCornerRadius:8.0];

  v8 = [v0 layer];
  LODWORD(v9) = 1050253722;
  [v8 setShadowOpacity:v9];

  v10 = [v0 layer];
  [v10 setShadowRadius:8.0];

  v11 = [v0 layer];
  [v11 setShadowOffset:{0.0, 2.0}];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_1001CD810()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:0];
  v4 = [objc_opt_self() systemFontOfSize:14.0 weight:UIFontWeightMedium];
  [v0 setFont:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_1001CD96C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001CD9CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:0];
  v4 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightMedium];
  [v0 setFont:v4];

  v5 = v0;
  [v5 setHidden:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

id sub_1001CDB44()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize:35.0 weight:UIFontWeightBold];
    [v4 setFont:v5];
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v0 setTintColor:v7];
  v8 = v0;
  [v8 setUserInteractionEnabled:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v8;
}

id sub_1001CDD1C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  [v0 setTextAlignment:0];
  v2 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightLight];
  [v0 setFont:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTextColor:v4];
  return v0;
}

char *sub_1001CDE58(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  *&v4[v9] = sub_1001CD600();
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint] = 0;
  v91.receiver = v4;
  v91.super_class = type metadata accessor for AllMetricsViewCell();
  v10 = objc_msgSendSuper2(&v91, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  v12 = *&v10[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container];
  v13 = v10;
  v14 = v12;
  v15 = sub_1001CD7F0();
  [v14 addSubview:v15];

  v16 = *&v10[v11];
  v17 = sub_1001CD94C();
  [v16 addSubview:v17];

  v18 = *&v10[v11];
  v19 = sub_1001CDCFC();
  [v18 addSubview:v19];

  v20 = *&v10[v11];
  v21 = sub_1001CDB24();
  [v20 addSubview:v21];

  v22 = [v13 contentView];
  [v22 addSubview:*&v10[v11]];

  v89 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002EF930;
  v24 = [*&v10[v11] bottomAnchor];
  v25 = [v13 contentView];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [*&v10[v11] leftAnchor];
  v29 = [v13 contentView];
  v30 = [v29 leftAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v23 + 40) = v31;
  v32 = [*&v10[v11] rightAnchor];
  v33 = [v13 contentView];
  v34 = [v33 rightAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v23 + 48) = v35;
  v36 = [*&v10[v11] topAnchor];
  v37 = [v13 contentView];
  v38 = [v37 topAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v23 + 56) = v39;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:isa];

  v41 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel;
  v42 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel] centerYAnchor];
  v43 = [*&v10[v11] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  v45 = *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint];
  *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint] = v44;

  v46 = [*&v13[v41] centerYAnchor];
  v47 = [*&v10[v11] centerYAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-10.0];

  v49 = *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint];
  *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint] = v48;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002F1530;
  v51 = [*&v13[v41] leftAnchor];
  v52 = [*&v10[v11] leftAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:10.0];

  *(v50 + 32) = v53;
  v54 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v54];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1002EF640;
  v56 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel;
  v57 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel] centerYAnchor];
  v90 = v41;
  v58 = [*&v13[v41] centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v55 + 32) = v59;
  v60 = [*&v13[v56] leftAnchor];
  v61 = [v13 centerXAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:10.0];

  *(v55 + 40) = v62;
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v63];

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1002EF640;
  v65 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton;
  v66 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton] rightAnchor];
  v67 = [v13 rightAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-15.0];

  *(v64 + 32) = v68;
  v69 = [*&v13[v65] centerYAnchor];
  v70 = [v13 centerYAnchor];

  v71 = [v69 constraintEqualToAnchor:v70];
  *(v64 + 40) = v71;
  v72 = v89;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v73];

  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 0x656E6F685069 && *(qword_100382500 + 40) == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1002F1530;
    v75 = [*&v13[v56] rightAnchor];
    v76 = [*&v13[v65] leftAnchor];
    v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:5.0];

    *(v74 + 32) = v77;
    v72 = v89;
    v78 = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints:v78];
  }

  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1002EF640;
  v80 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel;
  v81 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel] leftAnchor];
  v82 = [*&v13[v90] leftAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v79 + 32) = v83;
  v84 = [*&v13[v80] topAnchor];
  v85 = [*&v13[v90] bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:5.0];

  *(v79 + 40) = v86;
  v87 = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:v87];

  return v13;
}

void sub_1001CE920()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AllMetricsViewCell();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v1 = [v0 layer];
  [v1 setCornerRadius:10.0];

  v2 = [v0 layer];
  v3 = [objc_opt_self() clearColor];
  v4 = [v3 CGColor];

  [v2 setBorderColor:v4];
  v5 = [v0 layer];
  [v5 setMasksToBounds:1];

  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint];
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_1001CDCFC();
      v11 = [v10 text];

      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      v16 = v9;
      v17 = v8;
      if (v15)
      {
LABEL_7:
        v16 = v8;
        v17 = v9;
      }

      [v16 setActive:1];
      [v17 setActive:0];
    }
  }
}

char *sub_1001CED94(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for TopHeaderView();
  v9 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v10 = sub_1001CED88();
  [v9 addSubview:v10];

  v11 = OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView;
  [*&v9[OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002EF930;
  v14 = [*&v9[v11] centerXAnchor];
  v15 = [v9 centerXAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  *(v13 + 32) = v16;
  v17 = [*&v9[v11] heightAnchor];
  v18 = [v17 constraintEqualToConstant:1.0];

  *(v13 + 40) = v18;
  v19 = [*&v9[v11] widthAnchor];
  v20 = [v9 widthAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v13 + 48) = v21;
  v22 = [*&v9[v11] bottomAnchor];
  v23 = [v9 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:1.0];
  *(v13 + 56) = v24;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  return v9;
}

id sub_1001CF148(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1001CF1B4(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001CF1B4(double a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v2 setTextColor:v4];
  v5 = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  [v2 setFont:v5];

  [v2 setTextAlignment:0];
  return v2;
}

char *sub_1001CF2C0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel] = 0;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for CollectionHeaderSuplementaryCell();
  v9 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v11 = sub_1001CF138(v10);
  [v9 addSubview:v11];

  v12 = sub_1001CF1A4();
  [v9 addSubview:v12];

  v13 = OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel;
  [*&v9[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel;
  [*&v9[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002F1540;
  v16 = [*&v9[v13] topAnchor];
  v17 = [v9 topAnchor];

  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];
  *(v15 + 32) = v18;
  v19 = [*&v9[v13] leftAnchor];
  v20 = [v9 leftAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:20.0];
  *(v15 + 40) = v21;
  v22 = [*&v9[v13] heightAnchor];
  v23 = [v22 constraintEqualToConstant:21.0];

  *(v15 + 48) = v23;
  v24 = [*&v9[v14] topAnchor];
  v25 = [v9 topAnchor];

  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];
  *(v15 + 56) = v26;
  v27 = [*&v9[v14] leftAnchor];
  v28 = [v9 centerXAnchor];

  v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];
  *(v15 + 64) = v29;
  v30 = [*&v9[v13] heightAnchor];
  v31 = [v30 constraintEqualToConstant:17.0];

  *(v15 + 72) = v31;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  return v9;
}

id sub_1001CF818(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_1001D1F80(2, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

char *sub_1001CF890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v77.receiver = v3;
  v77.super_class = type metadata accessor for FavoritesTableCellV2();
  v6 = objc_msgSendSuper2(&v77, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001CF7C4();
  [v11 addSubview:v12];

  v13 = [v7 contentView];
  v14 = sub_1001CF7DC();
  [v13 addSubview:v14];

  v15 = [v7 contentView];
  v16 = sub_1001CF7F4();
  [v15 addSubview:v16];

  v17 = [v7 contentView];
  v18 = sub_1001CF878();
  [v17 addSubview:v18];

  v19 = v7;
  v20 = [v19 contentView];
  v21 = sub_1001CF884();
  [v20 addSubview:v21];

  v22 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView;
  v73 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v76 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002EF640;
  v26 = [*&v19[v22] topAnchor];
  v27 = [v19 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:5.0];

  *(v25 + 32) = v28;
  v29 = [*&v19[v22] leftAnchor];
  v30 = [*&v19[v24] leftAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:isa];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1002EF640;
  v34 = [*&v19[v23] leftAnchor];
  v35 = [*&v19[v22] leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [*&v19[v23] topAnchor];
  v38 = [*&v19[v22] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:5.0];

  *(v33 + 40) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v40];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1002EF640;
  v42 = [*&v19[v74] centerYAnchor];
  v43 = [*&v19[v23] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v41 + 32) = v44;
  v45 = [*&v19[v74] rightAnchor];
  v46 = [*&v19[v73] rightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v41 + 40) = v47;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v48];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1002EF640;
  v50 = [*&v19[v75] centerYAnchor];
  v51 = [v19 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v49 + 32) = v53;
  v54 = [*&v19[v75] rightAnchor];
  v55 = [*&v19[v73] rightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v49 + 40) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v57];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1002EF930;
  v59 = [*&v19[v73] centerXAnchor];
  v60 = [v19 centerXAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v58 + 32) = v61;
  v62 = [*&v19[v73] heightAnchor];
  v63 = [v62 constraintEqualToConstant:1.0];

  *(v58 + 40) = v63;
  v64 = [*&v19[v73] widthAnchor];
  v65 = [v19 widthAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:-40.0];
  *(v58 + 48) = v66;
  v67 = [*&v19[v73] bottomAnchor];
  v68 = [v19 contentView];

  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:-5.0];

  *(v58 + 56) = v70;
  v71 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v71];

  return v19;
}

void sub_1001D031C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), void (*a4)(id))
{
  v7.receiver = a1;
  v7.super_class = a3(a1, a2);
  v5 = v7.receiver;
  v6 = objc_msgSendSuper2(&v7, "prepareForReuse");
  a4(v6);
}

void sub_1001D03C4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1();
  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = a2();
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  v9 = a3();
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];
}

id sub_1001D05B8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  [v0 setTextAlignment:0];
  v2 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightLight];
  [v0 setFont:v2];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTextColor:v4];
  return v0;
}

id sub_1001D0710(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() colorNamed:v6];

    [v5 setColor:v7];
    [v5 setHidesWhenStopped:1];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

char *sub_1001D080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v87.receiver = v3;
  v87.super_class = type metadata accessor for DashboardCell();
  v6 = objc_msgSendSuper2(&v87, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001D0568();
  [v11 addSubview:v12];

  v13 = [v7 contentView];
  v14 = sub_1001D0580();
  [v13 addSubview:v14];

  v15 = [v7 contentView];
  v16 = sub_1001D0598();
  [v15 addSubview:v16];

  v17 = [v7 contentView];
  v18 = sub_1001D06E0();
  [v17 addSubview:v18];

  v19 = [v7 contentView];
  v20 = sub_1001D0704();
  [v19 addSubview:v20];

  v21 = v7;
  v22 = [v21 contentView];
  v23 = sub_1001D0800();
  [v22 addSubview:v23];

  v24 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView;
  v83 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002EF640;
  v27 = [*&v21[v24] topAnchor];
  v28 = [v21 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];

  *(v26 + 32) = v29;
  v30 = [*&v21[v24] leftAnchor];
  v31 = [*&v21[v25] leftAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v26 + 40) = v32;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:isa];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1002EF640;
  v35 = [*&v21[v86] leftAnchor];
  v36 = [*&v21[v24] leftAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [*&v21[v86] topAnchor];
  v39 = [*&v21[v24] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];

  *(v34 + 40) = v40;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002EF640;
  v43 = [*&v21[v82] leftAnchor];
  v44 = [*&v21[v86] leftAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v21[v82] topAnchor];
  v47 = [*&v21[v86] bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:5.0];

  *(v42 + 40) = v48;
  v49 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v49];

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002EF640;
  v51 = [*&v21[v84] centerYAnchor];
  v52 = [*&v21[v86] centerYAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v50 + 32) = v53;
  v54 = [*&v21[v84] rightAnchor];
  v55 = [*&v21[v83] rightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v50 + 40) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v57];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1002EF640;
  v59 = [*&v21[v85] centerYAnchor];
  v60 = [*&v21[v86] centerYAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v58 + 32) = v61;
  v62 = [*&v21[v85] rightAnchor];
  v63 = [*&v21[v83] rightAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v58 + 40) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v65];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002EF930;
  v67 = [*&v21[v83] centerXAnchor];
  v68 = [v21 centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v66 + 32) = v69;
  v70 = [*&v21[v83] heightAnchor];
  v71 = [v70 constraintEqualToConstant:1.0];

  *(v66 + 40) = v71;
  v72 = [*&v21[v83] widthAnchor];
  v73 = [v21 widthAnchor];

  v74 = [v72 constraintEqualToAnchor:v73 constant:-40.0];
  *(v66 + 48) = v74;
  v75 = [*&v21[v83] bottomAnchor];
  v76 = [v21 contentView];

  v77 = [v76 bottomAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:-5.0];

  *(v66 + 56) = v78;
  v79 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v79];

  return v21;
}

void sub_1001D13A8()
{
  v0 = sub_1001D0568();
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = sub_1001D0580();
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = sub_1001D0598();
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = sub_1001D06E0();
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];
}

id sub_1001D1588(uint64_t *a1, double *a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(UILabel) init];
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    [v9 setTextAlignment:0];
    v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
    [v9 setFont:v11];

    v12 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_1001D16A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() colorNamed:v6];

    [v5 setBackgroundColor:v7];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

char *sub_1001D1784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v42.receiver = v3;
  v42.super_class = type metadata accessor for MultiSelectionModalCell();
  v6 = objc_msgSendSuper2(&v42, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001D1570();
  [v11 addSubview:v12];

  v13 = v7;
  v14 = [v13 contentView];
  v15 = sub_1001D1694();
  [v14 addSubview:v15];

  v16 = OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel;
  [*&v13[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView;
  [*&v13[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002EF640;
  v20 = [*&v13[v16] centerXAnchor];
  v21 = [v13 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [*&v13[v16] centerYAnchor];
  v24 = [v13 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1002EF930;
  v28 = [*&v13[v17] centerXAnchor];
  v29 = [v13 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [*&v13[v17] heightAnchor];
  v32 = [v31 constraintEqualToConstant:1.0];

  *(v27 + 40) = v32;
  v33 = [*&v13[v17] widthAnchor];
  v34 = [v13 widthAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:-40.0];
  *(v27 + 48) = v35;
  v36 = [*&v13[v17] bottomAnchor];
  v37 = [v13 contentView];

  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:-5.0];

  *(v27 + 56) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v40];

  return v13;
}

uint64_t sub_1001D1CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_1001D1DB0(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = a3(a1, a2);
  v5 = v9.receiver;
  v6 = objc_msgSendSuper2(&v9, "prepareForReuse");
  v7 = a4(v6);
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:{v8, v9.receiver, v9.super_class}];
}

id sub_1001D1ED0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel);
  }

  else
  {
    v4 = sub_1001D1F80(0, 0x656C746954, 0xE500000000000000, &UIFontWeightLight);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001D1F80(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  [v6 setTextAlignment:a1];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() colorNamed:v8];

  [v6 setTextColor:v9];
  v10 = [objc_opt_self() systemFontOfSize:13.0 weight:*a4];
  [v6 setFont:v10];

  return v6;
}

id sub_1001D20B0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() colorNamed:v5];

    [v4 setBackgroundColor:v6];
    [v4 setHidden:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1001D21B0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell_metricFavorited] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView] = 0;
  v58.receiver = v4;
  v58.super_class = type metadata accessor for SecondVCCell();
  v9 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() colorNamed:v11];

  [v10 setBackgroundColor:v12];
  v13 = [v9 contentView];
  v14 = sub_1001D1ED0();
  [v13 addSubview:v14];

  v15 = [v9 contentView];
  v16 = sub_1001D1F4C();
  [v15 addSubview:v16];

  v17 = v9;
  v18 = [v17 contentView];
  v19 = sub_1001D20B0();
  [v18 addSubview:v19];

  v20 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002EF640;
  v24 = [*&v17[v20] bottomAnchor];
  v25 = [*&v17[v22] topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-5.0];

  *(v23 + 32) = v26;
  v27 = [*&v17[v20] leftAnchor];
  v28 = [*&v17[v22] leftAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002F1550;
  v32 = [*&v17[v21] centerYAnchor];
  v33 = [*&v17[v20] centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [*&v17[v21] rightAnchor];
  v36 = [*&v17[v22] rightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [*&v17[v21] leftAnchor];
  v39 = [*&v17[v20] rightAnchor];
  v40 = [v38 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v39 multiplier:1.0];

  *(v31 + 48) = v40;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002EF930;
  v43 = [*&v17[v22] centerXAnchor];
  v44 = [v17 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v17[v22] heightAnchor];
  v47 = [v46 constraintEqualToConstant:1.0];

  *(v42 + 40) = v47;
  v48 = [*&v17[v22] widthAnchor];
  v49 = [v17 widthAnchor];

  v50 = [v48 constraintEqualToAnchor:v49 constant:-40.0];
  *(v42 + 48) = v50;
  v51 = [*&v17[v22] bottomAnchor];
  v52 = [v17 contentView];

  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-5.0];

  *(v42 + 56) = v54;
  v55 = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:v55];

  return v17;
}

void sub_1001D2980()
{
  v1 = sub_1001D1ED0();
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = sub_1001D1F4C();
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v5 setTextColor:v7];
}

id sub_1001D2ABC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "isHighlighted");
}

void sub_1001D2B8C(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15.receiver = v5;
  v15.super_class = a2();
  objc_msgSendSuper2(&v15, "setHighlighted:", a1 & 1);
  if ([v5 isHighlighted])
  {
    v9 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
    [v9 selectionChanged];
    [v5 setAlpha:0.5];
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v14[4] = a4;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10020C96C;
    v14[3] = a5;
    v12 = _Block_copy(v14);
    v13 = v5;

    [v10 animateWithDuration:0 delay:v12 options:0 animations:0.5 completion:0.05];

    _Block_release(v12);
  }
}

id sub_1001D2CF4(void *a1)
{
  [a1 setAlpha:1.0];
  CGAffineTransformMakeScale(&v3, 1.7, 1.7);
  [a1 setTransform:&v3];
  *&v3.a = 0x3FF0000000000000uLL;
  v3.c = 0.0;
  v3.d = 1.0;
  *&v3.tx = 0uLL;
  return [a1 setTransform:&v3];
}

id sub_1001D2DA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D2E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D2EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D2EC4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  *(v0 + v1) = sub_1001CD600();
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}