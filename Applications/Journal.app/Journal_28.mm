uint64_t sub_1002F3D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v33 = type metadata accessor for BorderedButtonStyle();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CircularDownloadProgressViewStyle(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100ADDAB8, &qword_10094E128);
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v30 = sub_1000F24EC(&qword_100ADDAC0, &qword_10094E130);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v28 - v14;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  sub_1000F24EC(&qword_100ADDAC8, &qword_10094E138);
  sub_1000F24EC(&qword_100ADDAD0, &qword_10094E140);
  sub_1000F24EC(&qword_100ADDAD8, &unk_10094E148);
  sub_10000B58C(&qword_100ADDAE0, &qword_100ADDAC8, &qword_10094E138, &protocol conformance descriptor for Label<A, B>);
  sub_1002F4F18();
  sub_1002F4F94();
  ContentUnavailableView.init(label:description:actions:)();
  v45 = 0x402C000000000000;
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:)();
  v45 = 0x403C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v45 = 0x4040000000000000;
  ScaledMetric.init(wrappedValue:)();
  v45 = 0x4042800000000000;
  ScaledMetric.init(wrappedValue:)();
  v16 = *(v8 + 32);
  *&v10[v16] = swift_getKeyPath();
  sub_1000F24EC(&qword_100ADDAF8, &qword_10094E188);
  swift_storeEnumTagMultiPayload();
  v17 = sub_10000B58C(&qword_100ADDB00, &qword_100ADDAB8, &qword_10094E128, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  v18 = sub_1002F5170(&qword_100ADDB08, type metadata accessor for CircularDownloadProgressViewStyle, &unk_100946C64);
  View.progressViewStyle<A>(_:)();
  sub_1002F5114(v10);
  (*(v29 + 8))(v13, v11);
  v19 = v32;
  BorderedButtonStyle.init()();
  v45 = v11;
  v46 = v8;
  v47 = v17;
  v48 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1002F5170(&qword_100ADDB10, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
  v20 = v35;
  v21 = v30;
  v22 = v33;
  View.buttonStyle<A>(_:)();
  (*(v34 + 8))(v19, v22);
  (*(v31 + 8))(v15, v21);
  v23 = (v20 + *(sub_1000F24EC(&qword_100ADDB18, &unk_10094E190) + 36));
  v24 = *(sub_1000F24EC(&qword_100ADCBF0, &qword_10094FC30) + 28);
  v25 = enum case for ControlSize.large(_:);
  v26 = type metadata accessor for ControlSize();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  result = swift_getKeyPath();
  *v23 = result;
  return result;
}

uint64_t sub_1002F4374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADDB28, &qword_10094E1D8);
  sub_1000F24EC(&qword_100ADDB30, &qword_10094E1E0);
  sub_1002F5520();
  sub_1002F55A4();
  return Label.init(title:icon:)();
}

double sub_1002F4430@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1002F44BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100ADDB60, &qword_10094E1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_1000F24EC(&qword_100ADDB68, &qword_10094E1F8);
  __chkstk_darwin(a1);
  v10 = (&v16 - v9);
  if (v8 > 2)
  {
    if (v8 <= 5)
    {
      goto LABEL_13;
    }

    if (v8 == 6)
    {
      goto LABEL_9;
    }

LABEL_12:
    v14 = v8;
    sub_1002F51E0(v8);
    sub_1002F51F0(v14);
    ProgressView.init<>(_:)();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100ADDB58, &qword_100ADDB60, &qword_10094E1F0, &protocol conformance descriptor for ProgressView<A, B>);
    _ConditionalContent<>.init(storage:)();
    sub_1002F56E0(v14);
    (*(v5 + 8))(v7, v4);
LABEL_14:
    v15 = sub_1000F24EC(&qword_100ADDB50, &qword_10094E1E8);
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  if (!v8)
  {
LABEL_13:
    sub_1002F56E0(v8);
    *v10 = Image.init(systemName:)();
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100ADDB58, &qword_100ADDB60, &qword_10094E1F0, &protocol conformance descriptor for ProgressView<A, B>);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_14;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  v11 = sub_1000F24EC(&qword_100ADDB50, &qword_10094E1E8);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 1, 1, v11);
}

uint64_t sub_1002F4860@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1002F5200(a2);
  if (v3)
  {
    sub_1000777B4();
    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_1002F48C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100ADDB20, &qword_10094E1D0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  if (a1 == 3)
  {
    v13 = swift_allocObject();
    v13[2] = 3;
    v13[3] = a2;
    v13[4] = a3;
    sub_1002F51E0(3);

    Button.init(action:label:)();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_1002F4B74(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000594D0(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
}

uint64_t sub_1002F4C5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1005F4E90(a1, v4, v5, v6, v7);
}

uint64_t sub_1002F4D20(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002F4D38(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F4D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1002F4DA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1002F4DF4()
{
  result = qword_100ADDA88;
  if (!qword_100ADDA88)
  {
    sub_1000F2A18(&qword_100ADDA90, &qword_10094E0C0);
    sub_10000B58C(&qword_100ADDA98, &qword_100ADDAA0, &qword_10094E0C8, &protocol conformance descriptor for ZStack<A>);
    sub_10000B58C(&qword_100ADDAA8, &qword_100ADDAB0, qword_10094E0D0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA88);
  }

  return result;
}

unint64_t sub_1002F4F18()
{
  result = qword_100ADDAE8;
  if (!qword_100ADDAE8)
  {
    sub_1000F2A18(&qword_100ADDAD0, &qword_10094E140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDAE8);
  }

  return result;
}

unint64_t sub_1002F4F94()
{
  result = qword_100ADDAF0;
  if (!qword_100ADDAF0)
  {
    sub_1000F2A18(&qword_100ADDAD8, &unk_10094E148);
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDAF0);
  }

  return result;
}

uint64_t sub_1002F504C(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.controlSize.setter();
}

uint64_t sub_1002F5114(uint64_t a1)
{
  v2 = type metadata accessor for CircularDownloadProgressViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F5170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002F51E0(id result)
{
  if (result != 6)
  {
    return sub_1002F51F0(result);
  }

  return result;
}

id sub_1002F51F0(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

id sub_1002F5200(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 == 2)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v5 = result;
        MobileGestalt_get_wapiCapability();
      }
    }

    goto LABEL_10;
  }

  if (a1 <= 4 || a1 != 6)
  {
LABEL_10:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

unint64_t sub_1002F5520()
{
  result = qword_100ADDB38;
  if (!qword_100ADDB38)
  {
    sub_1000F2A18(&qword_100ADDB28, &qword_10094E1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB38);
  }

  return result;
}

unint64_t sub_1002F55A4()
{
  result = qword_100ADDB40;
  if (!qword_100ADDB40)
  {
    sub_1000F2A18(&qword_100ADDB30, &qword_10094E1E0);
    sub_1002F5628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB40);
  }

  return result;
}

unint64_t sub_1002F5628()
{
  result = qword_100ADDB48;
  if (!qword_100ADDB48)
  {
    sub_1000F2A18(&qword_100ADDB50, &qword_10094E1E8);
    sub_10000B58C(&qword_100ADDB58, &qword_100ADDB60, &qword_10094E1F0, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB48);
  }

  return result;
}

void sub_1002F56E0(id result)
{
  if (result != 6)
  {
    sub_1002F56F0(result);
  }
}

void sub_1002F56F0(id a1)
{
  if (a1 >= 6)
  {
  }
}

unint64_t sub_1002F5710()
{
  result = qword_100ADDB70;
  if (!qword_100ADDB70)
  {
    sub_1000F2A18(&qword_100ADDB18, &unk_10094E190);
    sub_1000F2A18(&qword_100ADDAC0, &qword_10094E130);
    type metadata accessor for BorderedButtonStyle();
    sub_1000F2A18(&qword_100ADDAB8, &qword_10094E128);
    type metadata accessor for CircularDownloadProgressViewStyle(255);
    sub_10000B58C(&qword_100ADDB00, &qword_100ADDAB8, &qword_10094E128, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1002F5170(&qword_100ADDB08, type metadata accessor for CircularDownloadProgressViewStyle, &unk_100946C64);
    swift_getOpaqueTypeConformance2();
    sub_1002F5170(&qword_100ADDB10, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADCBE8, &qword_100ADCBF0, &qword_10094FC30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB70);
  }

  return result;
}

unint64_t sub_1002F5918()
{
  result = qword_100ADDB78;
  if (!qword_100ADDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDB78);
  }

  return result;
}

uint64_t sub_1002F596C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADDB80);
  v1 = sub_10000617C(v0, qword_100ADDB80);
  if (qword_100AD0270 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F5A34(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADDC18, &qword_10094E5C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000CA14(a1, a1[3]);
  sub_1002F8118();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000F24EC(&qword_100ADDC28, &qword_10094E5C8);
  sub_1002F816C(&qword_100ADDC30, sub_1002F81E4, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_1002F5BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365686372616573 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1002F5C60(uint64_t a1)
{
  v2 = sub_1002F8118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F5C9C(uint64_t a1)
{
  v2 = sub_1002F8118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F5CD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      sub_1007EC7E8(v2, v3);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

Swift::Int sub_1002F5D38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    sub_1002F72FC(v3, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1002F5D9C(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);

    sub_1002F72FC(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1002F5E0C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    sub_1002F72FC(v4, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void *sub_1002F5E6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F76F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002F5EB4()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x736E656B6F74;
  }
}

void sub_1002F5EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E656B6F74 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1002F5FBC(uint64_t a1)
{
  v2 = sub_1002F7650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F5FF8(uint64_t a1)
{
  v2 = sub_1002F7650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RecentSearch.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = sub_1000F24EC(&qword_100ADDB98, &qword_10094E270);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000CA14(a1, a1[3]);
  sub_1002F7650();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000F24EC(&qword_100ADDBA8, &qword_10094E278);
  sub_1002F7FE4(&qword_100ADDBB0, sub_1002F76A4, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void RecentSearch.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  sub_1002F74D0(a1, a2);
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int RecentSearch.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (!a1)
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  sub_1002F74D0(v6, a1);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t RecentSearch.init(from:)(void *a1)
{
  result = sub_1002F78AC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void sub_1002F63B0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (!*v1)
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  sub_1002F74D0(a1, v3);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1002F6460(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  sub_1002F74D0(v5, v2);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F64FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F78AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1002F654C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = a3;
  v30 = a2;
  v4 = type metadata accessor for CharacterSet();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v39 = 0;
  v40 = 0xE000000000000000;
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      v34 = v8 - 1;
      v11 = v30 & 0xFFFFFFFFFFFFLL;
      v12 = v33;
      if (!v33)
      {
        v12 = 0xE000000000000000;
        v11 = 0;
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v12) & 0xF;
      }

      v31 = v11;
      v32 = v12;
      do
      {
        v14 = v10[1];
        v36[0] = *v10;
        v36[1] = v14;
        v15 = v10[2];
        v16 = v10[3];
        v17 = v10[4];
        v37 = *(v10 + 10);
        v36[3] = v16;
        v36[4] = v17;
        v36[2] = v15;
        memmove(__dst, v10, 0x58uLL);
        v18 = __dst[2];
        v19 = __dst[3];
        sub_1001A9170(v36, &v35);
        v20._countAndFlagsBits = v18;
        v20._object = v19;
        String.append(_:)(v20);
        if (v9 < v34 || v8 == 1 && (, , v31))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v13._countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
          String.append(_:)(v13);
          sub_1001A911C(__dst);
        }

        else
        {
          sub_1001A911C(__dst);
        }

        v10 = (v10 + 88);
        ++v9;
        --v8;
      }

      while (v8);
    }
  }

  if (v33)
  {
    __dst[0] = v30;
    __dst[1] = v33;
    v21 = v27;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    v22 = StringProtocol.trimmingCharacters(in:)();
    v24 = v23;
    (*(v28 + 8))(v21, v29);
    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);
  }

  return v39;
}

void sub_1002F685C(double *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v53 = a1;
  if (!sub_1002F7E20(a1, a2, a3))
  {
    return;
  }

  static CharacterSet.whitespacesAndNewlines.getter();
  static CharacterSet.illegalCharacters.getter();
  CharacterSet.union(_:)();
  v19 = *(v9 + 8);
  v18 = v9 + 8;
  v19(v11, v8);
  v19(v14, v8);
  v51 = v19;
  if (a3)
  {
    v54 = a2;
    v55 = a3;
    sub_1000777B4();
    a2 = StringProtocol.trimmingCharacters(in:)();
    a3 = v20;
  }

  v21 = v53;

  v22 = sub_1002F6CE0(a4);
  if (!v22)
  {

    sub_1000F24EC(&qword_100ADDBE8, &unk_1009607A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100940080;
    *(v41 + 32) = v21;
    *(v41 + 40) = a2;
    *(v41 + 48) = a3;
    sub_1002F6F2C(v41, a4);
LABEL_50:

    v51(v17, v8);
    return;
  }

  v23 = v22;
  v52 = a3;
  v24 = *(v22 + 2);
  if (v24 >= 3)
  {
    sub_100610130(v22, v22 + 32, 0, 5uLL);
    v26 = v25;

    v24 = *(v26 + 16);
    v23 = v26;
  }

  v54 = v23;
  if (!v24)
  {

LABEL_46:
    v42 = *(v23 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v42 >= *(v23 + 3) >> 1)
    {
      v23 = sub_1003E5778(isUniquelyReferenced_nonNull_native, v42 + 1, 1, v23);
      v54 = v23;
    }

    sub_10019B814(0, 0, 1, v53, a2, v52);
    sub_1002F6F2C(v23, a4);
    goto LABEL_50;
  }

  v50 = a2;
  v45 = v17;
  v46 = a4;
  v47 = v18;
  v48 = v8;

  v27 = 0;
  v28 = v53;
  v49 = v53 + 5;
  while (1)
  {
    if (v27 >= *(v23 + 2))
    {
      goto LABEL_53;
    }

    v29 = &v23[3 * v27 + 4];
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = *(v29 + 2);
    if (!*v29)
    {
      if (v28)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      goto LABEL_10;
    }

    v33 = *(v30 + 16);
    if (v33 != *(v28 + 16))
    {
      goto LABEL_10;
    }

    if (v33 && v30 != v28)
    {
      break;
    }

LABEL_20:

LABEL_22:
    if (v32)
    {
      if (v52)
      {
        if (v31 == v50 && v32 == v52)
        {

LABEL_44:
          sub_100691970(v27);

          v23 = v54;
          goto LABEL_45;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v53;
        if (v36)
        {

LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {

        v28 = v53;
      }
    }

    else
    {

      v28 = v53;
      if (!v52)
      {
        goto LABEL_43;
      }
    }

LABEL_10:
    if (++v27 == v24)
    {

LABEL_45:
      v8 = v48;
      v17 = v45;
      a4 = v46;
      a2 = v50;
      goto LABEL_46;
    }
  }

  v37 = (v30 + 40);
  v38 = v49;
  while (v33)
  {
    if (*(v37 - 1) != *(v38 - 1) || *v37 != *v38)
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v53;
      if ((v40 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v37 += 11;
    v38 += 11;
    if (!--v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void *sub_1002F6CE0(uint64_t a1)
{
  type metadata accessor for AppStorageMO();
  result = static AppStorageMO.sharedStorage(context:)();
  if (result)
  {
    v2 = result;
    v3 = [result recentSearches];
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1002F7F90();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_1000340DC(v5, v7);

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double sub_1002F6F2C(void *a1, void *a2)
{
  type metadata accessor for AppStorageMO();
  v4 = static AppStorageMO.sharedStorage(context:)();
  if (v4)
  {
    v6 = v4;
    if (a1 == 1)
    {
      [v4 setRecentSearches:0];
    }

    else
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v20 = a1;
      sub_1002F7CF8();
      v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v10 = v9;

      isa = Data._bridgeToObjectiveC()().super.isa;
      [v6 setRecentSearches:isa];

      v7 = sub_1000340DC(v8, v10);
    }

    v20 = 0;
    if ([a2 save:{&v20, v7}])
    {
      v12 = v20;
    }

    else
    {
      v13 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFBE8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000617C(v14, qword_100ADDB80);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save recent searches on context save: %@", v17, 0xCu);
        sub_10012B714(v18);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1002F72FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  v12 = v3;
  if (v3)
  {
    v4 = 0;
    v11 = a2 + 32;
    while (1)
    {
      v14 = v4;
      v5 = (v11 + 24 * v4);
      v6 = *v5;
      v13 = v5[2];
      if (!*v5)
      {
        break;
      }

      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = v6 + 56;
        do
        {
          v9 = *(v8 + 40);

          swift_bridgeObjectRetain_n();

          v10 = v9;
          String.hash(into:)();

          swift_bridgeObjectRelease_n();
          v8 += 88;
          --v7;
        }

        while (v7);
LABEL_11:
        if (!v13)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }

      if (!v13)
      {
LABEL_12:
        Hasher._combine(_:)(0);
        goto LABEL_4;
      }

LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

LABEL_4:

      v4 = v14 + 1;
      if (v14 + 1 == v12)
      {
        return;
      }
    }

    Hasher._combine(_:)(0);

    goto LABEL_11;
  }
}

void sub_1002F74D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 56;
    do
    {
      v5 = *(v4 + 40);

      swift_bridgeObjectRetain_n();

      v6 = v5;
      String.hash(into:)();

      swift_bridgeObjectRelease_n();
      v4 += 88;
      --v3;
    }

    while (v3);
  }
}

BOOL _s7Journal12RecentSearchV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a4 || (sub_1007EC988(a1, a4) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a6;
}

unint64_t sub_1002F7650()
{
  result = qword_100ADDBA0;
  if (!qword_100ADDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBA0);
  }

  return result;
}

unint64_t sub_1002F76A4()
{
  result = qword_100ADDBB8;
  if (!qword_100ADDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBB8);
  }

  return result;
}

void *sub_1002F76F8(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADDC40, &qword_10094E5D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000CA14(a1, a1[3]);
  sub_1002F8118();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BA7C(a1);
  }

  else
  {
    sub_1000F24EC(&qword_100ADDC28, &qword_10094E5C8);
    sub_1002F816C(&qword_100ADDC48, sub_1002F8238, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BA7C(a1);
  }

  return v7;
}

uint64_t sub_1002F78AC(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADDBF8, &qword_10094E4D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000CA14(a1, v7);
  sub_1002F7650();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F24EC(&qword_100ADDBA8, &qword_10094E278);
    v9[7] = 0;
    sub_1002F7FE4(&qword_100ADDC00, sub_1002F805C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v10;
    v9[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BA7C(a1);
  return v7;
}

unint64_t sub_1002F7ACC()
{
  result = qword_100ADDBC0;
  if (!qword_100ADDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBC0);
  }

  return result;
}

uint64_t sub_1002F7B20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1002F7B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1002F7BF4()
{
  result = qword_100ADDBC8;
  if (!qword_100ADDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBC8);
  }

  return result;
}

unint64_t sub_1002F7C4C()
{
  result = qword_100ADDBD0;
  if (!qword_100ADDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBD0);
  }

  return result;
}

unint64_t sub_1002F7CA4()
{
  result = qword_100ADDBD8;
  if (!qword_100ADDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBD8);
  }

  return result;
}

unint64_t sub_1002F7CF8()
{
  result = qword_100ADDBE0;
  if (!qword_100ADDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBE0);
  }

  return result;
}

id sub_1002F7D4C(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1)
  {
    v1 = *(a1 + 80);
    v8[2] = *(a1 + 64);
    v2 = *(a1 + 96);
    v8[3] = v1;
    v8[4] = v2;
    v9 = *(a1 + 112);
    v3 = *(a1 + 48);
    v8[0] = *(a1 + 32);
    v8[1] = v3;
    sub_1001A9170(v8, v7);
    v4 = sub_100517E30();
    sub_1001A911C(v8);
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v5];
  }

  return v4;
}

BOOL sub_1002F7E20(double *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = *(v10 + 2);

  v12 = 32;
  if (a3)
  {
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  v16[0] = v12;
  v16[1] = v13;

  static CharacterSet.whitespaces.getter();
  sub_1000777B4();
  StringProtocol.trimmingCharacters(in:)();
  (*(v7 + 8))(v9, v6);

  v14 = v11 | String.count.getter();

  return v14 != 0;
}

unint64_t sub_1002F7F90()
{
  result = qword_100ADDBF0;
  if (!qword_100ADDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDBF0);
  }

  return result;
}

uint64_t sub_1002F7FE4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100ADDBA8, &qword_10094E278);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002F805C()
{
  result = qword_100ADDC08;
  if (!qword_100ADDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC08);
  }

  return result;
}

unint64_t sub_1002F80C4()
{
  result = qword_100ADDC10;
  if (!qword_100ADDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC10);
  }

  return result;
}

unint64_t sub_1002F8118()
{
  result = qword_100ADDC20;
  if (!qword_100ADDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC20);
  }

  return result;
}

uint64_t sub_1002F816C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100ADDC28, &qword_10094E5C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002F81E4()
{
  result = qword_100ADDC38;
  if (!qword_100ADDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC38);
  }

  return result;
}

unint64_t sub_1002F8238()
{
  result = qword_100ADDC50;
  if (!qword_100ADDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC50);
  }

  return result;
}

unint64_t sub_1002F82A0()
{
  result = qword_100ADDC58;
  if (!qword_100ADDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC58);
  }

  return result;
}

unint64_t sub_1002F82F8()
{
  result = qword_100ADDC60;
  if (!qword_100ADDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC60);
  }

  return result;
}

unint64_t sub_1002F8350()
{
  result = qword_100ADDC68;
  if (!qword_100ADDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDC68);
  }

  return result;
}

void sub_1002F8620()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController;
  v3 = *&v0[OBJC_IVAR____TtC7Journal28TranscriptWaitingHostingView_hostingController];
  if (v3)
  {
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

  State.init(wrappedValue:)();
  v6 = objc_allocWithZone(sub_1000F24EC(&qword_100ADDCA0, &unk_10094E700));
  v7 = UIHostingController.init(rootView:)();
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    [v1 addSubview:v8];
    LODWORD(v10) = 1148846080;
    [v9 setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v9 setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v13];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v9 widthAnchor];
    v15 = [v1 widthAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setActive:1];
    v17 = [v9 heightAnchor];
    v18 = [v1 heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setActive:1];
    v20 = *&v1[v2];
    *&v1[v2] = v7;
    v7 = v20;
  }
}

id sub_1002F889C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptWaitingHostingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002F8904()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    return *(v0 + 88);
  }

  static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  v8 = sub_1000467F0(v5, 0);
  (*(v2 + 8))(v4, v1, v8);
  return *&v9[1];
}

BOOL sub_1002F8A50()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = *(v0 + 72);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    v6 = v10[15];
  }

  return v6 != 0;
}

uint64_t sub_1002F8BA4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    if (*(v0 + 72))
    {
LABEL_3:
      v6 = 1;
      return v6 & 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    if (v14[15])
    {
      goto LABEL_3;
    }
  }

  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  sub_10000CA14(v0, v9);
  if ((*(v10 + 48))(v9, v10))
  {
    v6 = 0;
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_10000CA14(v0, v11);
    v6 = (*(v12 + 40))(v11, v12) ^ 1;
  }

  return v6 & 1;
}

double sub_1002F8D7C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = *(v0 + 72);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    v6 = v10[15];
  }

  result = 16.0;
  if (!v6)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002F8ED8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v180 = a1;
  v181 = type metadata accessor for AccessibilityTraits();
  v179 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Duration.UnitsFormatStyle();
  v175 = *(v177 - 8);
  __chkstk_darwin(v177);
  v176 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for AccessibilityChildBehavior();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ScrollAnchorRole();
  v147 = *(v145 - 8);
  __chkstk_darwin(v145);
  v146 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADB2D8, &qword_10094AEC0);
  __chkstk_darwin(v7 - 8);
  v130 = &v121 - v8;
  v131 = type metadata accessor for PlotDimensionScaleRange();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for AutomaticScaleDomain();
  v132 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ScrollableWaveformView(0);
  v11 = *(v171 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v171);
  v13 = sub_1000F24EC(&qword_100ADDF18, &qword_10094E938);
  v122 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v121 - v14;
  v125 = sub_1000F24EC(&qword_100ADDF20, &qword_10094E940);
  v126 = *(v125 - 8);
  __chkstk_darwin(v125);
  v17 = &v121 - v16;
  v121 = sub_1000F24EC(&qword_100ADDF28, &qword_10094E948);
  v127 = *(v121 - 8);
  __chkstk_darwin(v121 - 8);
  v183 = &v121 - v18;
  v138 = sub_1000F24EC(&qword_100ADDF30, &qword_10094E950);
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v123 = &v121 - v19;
  v140 = sub_1000F24EC(&qword_100ADDF38, &qword_10094E958);
  v137 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v121 - v20;
  v143 = sub_1000F24EC(&qword_100ADDF40, &qword_10094E960);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v121 - v21;
  v148 = sub_1000F24EC(&qword_100ADDF48, &qword_10094E968);
  v144 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = &v121 - v22;
  v151 = sub_1000F24EC(&qword_100ADDF50, &qword_10094E970);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v184 = &v121 - v23;
  v152 = sub_1000F24EC(&qword_100ADDF58, &qword_10094E978);
  v153 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v121 - v24;
  v162 = sub_1000F24EC(&qword_100ADDF60, &qword_10094E980);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v121 - v25;
  v160 = sub_1000F24EC(&qword_100ADDF68, &qword_10094E988);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v156 = &v121 - v26;
  v155 = sub_1000F24EC(&qword_100ADDF70, &qword_10094E990);
  __chkstk_darwin(v155);
  v154 = &v121 - v27;
  v164 = sub_1000F24EC(&qword_100ADDF78, &qword_10094E998);
  __chkstk_darwin(v164);
  v157 = &v121 - v28;
  v167 = sub_1000F24EC(&qword_100ADDF80, &qword_10094E9A0);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v163 = &v121 - v29;
  v170 = sub_1000F24EC(&qword_100ADDF88, &qword_10094E9A8);
  __chkstk_darwin(v170);
  v168 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v169 = &v121 - v32;
  sub_1002FE1AC(v2, &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v11 + 80);
  v34 = (v33 + 16) & ~v33;
  v165 = v12;
  v187 = v33;
  v185 = v34 + v12;
  v35 = swift_allocObject();
  v186 = v34;
  v134 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FE210(v134, v35 + v34);
  v202 = sub_1002FE274;
  v203 = v35;
  static Axis.Set.horizontal.getter();
  v36 = sub_1000F24EC(&qword_100ADDF90, &qword_10094E9B0);
  v37 = sub_10000B58C(&qword_100ADDF98, &qword_100ADDF90, &qword_10094E9B0, &protocol conformance descriptor for GeometryReader<A>);
  View.chartScrollableAxes(_:)();

  sub_1002F8A50();
  *&v197 = v36;
  *(&v197 + 1) = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.chartXAxis(_:)();
  (*(v122 + 8))(v15, v13);
  v39 = v124;
  static ScaleDomain<>.automatic<A>(includesZero:reversed:dataType:modifyInferredDomain:)();
  sub_1002F8D7C();
  v40 = v128;
  static PositionScaleRange<>.plotDimension(padding:)();
  v41 = type metadata accessor for ScaleType();
  v42 = v130;
  (*(*(v41 - 8) + 56))(v130, 1, 1, v41);
  *&v197 = v13;
  *(&v197 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v125;
  v45 = v129;
  v46 = v131;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100004F84(v42, &qword_100ADB2D8, &qword_10094AEC0);
  (*(v133 + 8))(v40, v46);
  (*(v132 + 8))(v39, v45);
  (*(v126 + 8))(v17, v44);
  *&v197 = v44;
  *(&v197 + 1) = v45;
  v198 = v46;
  v199 = v43;
  v200 = &protocol witness table for AutomaticScaleDomain;
  v201 = &protocol witness table for PlotDimensionScaleRange;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v123;
  v49 = v121;
  v50 = v183;
  View.chartYAxis(_:)();
  (*(v127 + 8))(v50, v49);
  v51 = v2[3];
  v52 = v2[4];
  sub_10000CA14(v2, v51);
  if ((*(v52 + 16))(v51, v52) & 1) == 0 && ((v53 = v2[3], v54 = v2[4], sub_10000CA14(v2, v53), ((*(v54 + 48))(v53, v54)) || (v55 = v2[3], v56 = v2[4], sub_10000CA14(v2, v55), ((*(v56 + 40))(v55, v56))))
  {
    static UnitPoint.leading.getter();
  }

  else
  {
    static UnitPoint.trailing.getter();
  }

  v183 = ~v187;
  v57 = v146;
  static ScrollAnchorRole.sizeChanges.getter();
  *&v197 = v49;
  *(&v197 + 1) = v47;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v136;
  v60 = v138;
  View.defaultScrollAnchor(_:for:)();
  (*(v147 + 8))(v57, v145);
  (*(v135 + 8))(v48, v60);
  v61 = v2[3];
  v62 = v2[4];
  sub_10000CA14(v2, v61);
  if (((*(v62 + 48))(v61, v62) & 1) == 0)
  {
    v63 = v2[3];
    v64 = v2[4];
    sub_10000CA14(v2, v63);
    (*(v64 + 40))(v63, v64);
  }

  *&v197 = v60;
  *(&v197 + 1) = v58;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v139;
  v67 = v140;
  View.scrollDisabled(_:)();
  (*(v137 + 8))(v59, v67);
  v68 = v2[3];
  v69 = v2[4];
  sub_10000CA14(v2, v68);
  v196 = (*(v69 + 56))(v68, v69);
  v70 = v134;
  sub_1002FE1AC(v2, v134);
  v71 = swift_allocObject();
  v72 = v186;
  sub_1002FE210(v70, v71 + v186);
  *&v197 = v67;
  *(&v197 + 1) = v65;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v142;
  v75 = v143;
  View.onChange<A>(of:initial:_:)();

  (*(v141 + 8))(v66, v75);
  sub_1002FE1AC(v2, v70);
  v76 = v187;
  v77 = swift_allocObject();
  v78 = v2;
  sub_1002FE210(v70, v77 + v72);
  *&v197 = v75;
  *(&v197 + 1) = &type metadata for Int;
  v198 = v73;
  v199 = &protocol witness table for Int;
  v147 = swift_getOpaqueTypeConformance2();
  v79 = v148;
  View.onScrollPhaseChange(_:)();

  (*(v144 + 8))(v74, v79);
  v80 = v78;
  v182 = v78;
  sub_1002FE1AC(v78, v70);
  type metadata accessor for MainActor();
  v81 = static MainActor.shared.getter();
  v82 = (v76 + 32) & v183;
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = &protocol witness table for MainActor;
  sub_1002FE210(v70, v83 + v82);
  sub_1002FE1AC(v80, v70);
  v84 = static MainActor.shared.getter();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = &protocol witness table for MainActor;
  sub_1002FE210(v70, v85 + v82);
  Binding.init(get:set:)();
  v190 = v193;
  v191 = v194;
  v192 = v195;
  *&v197 = v79;
  *(&v197 + 1) = v147;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v149;
  v88 = v151;
  v89 = v184;
  View.chartScrollPosition<A>(x:)();

  (*(v150 + 8))(v89, v88);
  v184 = static Alignment.top.getter();
  v90 = v182;
  sub_1002FE1AC(v182, v70);
  v91 = swift_allocObject();
  sub_1002FE210(v70, v91 + v186);
  v183 = sub_1000F24EC(&qword_100ADDFA0, &qword_10094E9B8);
  *&v197 = v88;
  *(&v197 + 1) = &type metadata for Double;
  v198 = v86;
  v199 = &protocol witness table for Double;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = sub_1002FE694();
  v94 = v159;
  v95 = v152;
  View.chartBackground<A>(alignment:content:)();

  (*(v153 + 8))(v87, v95);
  static Alignment.top.getter();
  sub_1002FE1AC(v90, v70);
  v96 = swift_allocObject();
  sub_1002FE210(v70, v96 + v186);
  sub_1000F24EC(&qword_100ADDFC0, &qword_10094E9C8);
  *&v197 = v95;
  *(&v197 + 1) = v183;
  v198 = v92;
  v199 = v93;
  swift_getOpaqueTypeConformance2();
  sub_1002FE7CC();
  v97 = v156;
  v98 = v162;
  View.chartOverlay<A>(alignment:content:)();

  (*(v161 + 8))(v94, v98);
  LODWORD(v76) = static HierarchicalShapeStyle.primary.getter();
  v99 = v154;
  (*(v158 + 32))(v154, v97, v160);
  *&v99[*(v155 + 36)] = v76;
  KeyPath = swift_getKeyPath();
  v101 = v99;
  v102 = v157;
  sub_100021CEC(v101, v157, &qword_100ADDF70, &qword_10094E990);
  v103 = v164;
  v104 = v102 + *(v164 + 36);
  *v104 = KeyPath;
  *(v104 + 8) = 0;
  v105 = v172;
  static AccessibilityChildBehavior.ignore.getter();
  v106 = sub_1002FE95C();
  v107 = v163;
  View.accessibilityElement(children:)();
  (*(v173 + 8))(v105, v174);
  sub_100004F84(v102, &qword_100ADDF78, &qword_10094E998);
  if (qword_100AD08D0 != -1)
  {
    swift_once();
  }

  v197 = xmmword_100B30D80;
  v188 = v103;
  v189 = v106;
  swift_getOpaqueTypeConformance2();
  sub_1000777B4();
  v108 = v168;
  v109 = v167;
  View.accessibilityLabel<A>(_:)();
  (*(v166 + 8))(v107, v109);
  v110 = v182;
  v111 = v182[3];
  v112 = v182[4];
  sub_10000CA14(v182, v111);
  (*(v112 + 24))(v111, v112);
  v188 = static Duration.seconds(_:)();
  v189 = v113;
  (*(v175 + 16))(v176, &v110[*(v171 + 36)], v177);
  sub_1002FF7F4(&qword_100ADD0F8, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v114 = Text.init<A>(_:format:)();
  v116 = v115;
  LOBYTE(v110) = v117;
  v118 = v169;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_1000594D0(v114, v116, v110 & 1);

  sub_100004F84(v108, &qword_100ADDF88, &qword_10094E9A8);
  v119 = v178;
  static AccessibilityTraits.updatesFrequently.getter();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v179 + 8))(v119, v181);
  return sub_100004F84(v118, &qword_100ADDF88, &qword_10094E9A8);
}

void sub_1002FAA18(char *a1@<X1>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for ContentMarginPlacement();
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v94 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrollableWaveformView(0);
  v77 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = v6;
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for AnimationTimelineSchedule();
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = v76 - v10;
  v86 = sub_1000F24EC(&qword_100ADE008, &qword_10094EA10);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = v76 - v11;
  v88 = sub_1000F24EC(&qword_100ADE010, &qword_10094EA18);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = v76 - v12;
  v92 = sub_1000F24EC(&qword_100ADE018, &qword_10094EA20);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = v76 - v13;
  v95 = sub_1000F24EC(&qword_100ADE020, &qword_10094EA28);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = v76 - v14;
  GeometryProxy.size.getter();
  v16 = v15 / sub_1002F8904();
  sub_1002F8BA4();
  GeometryProxy.size.getter();
  v17 = sub_1002F8BA4();
  v18 = *(a1 + 3);
  v19 = *(a1 + 4);
  sub_10000CA14(a1, v18);
  v20 = 0.0;
  if (((*(v19 + 16))(v18, v19) & 1) == 0)
  {
    GeometryProxy.size.getter();
    v20 = v21 * 0.5;
  }

  v22 = *(a1 + 3);
  v23 = *(a1 + 4);
  sub_10000CA14(a1, v22);
  v24 = (*(*(v23 + 8) + 16))(v22);
  v26 = *(a1 + 3);
  v25 = *(a1 + 4);
  sub_10000CA14(a1, v26);
  v27 = (*(*(v25 + 8) + 32))(v26);
  v28 = v16 * 3.0;
  v29 = *(a1 + 3);
  v30 = *(a1 + 4);
  sub_10000CA14(a1, v29);
  v31 = (*(v30 + 24))(v29, v30);
  v32 = *&a1[*(v5 + 40)];
  v33 = v28 * floor((v31 - v32) / v28 + -1.0);
  v34 = *(a1 + 3);
  v35 = *(a1 + 4);
  sub_10000CA14(a1, v34);
  v36 = v28 * ceil((v32 + v16 + (*(v35 + 24))(v34, v35)) / v28 + 1.0);
  if (v33 > v36)
  {
    __break(1u);
  }

  else
  {
    if (v17)
    {
      v37 = v16 * 0.5;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = sub_1002FEE60(v24, v33, v36, v27);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = *(a1 + 3);
    v46 = *(a1 + 4);
    sub_10000CA14(a1, v45);
    (*(v46 + 48))(v45, v46);
    v47 = v98;
    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    sub_1002FE1AC(a1, v7);
    v76[0] = v7;
    v48 = *(v77 + 80);
    v76[1] = v48;
    v49 = (v48 + 16) & ~v48;
    v77 = v49;
    v50 = ((v78 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) + 39;
    v78 = (v78 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = v78;
    v52 = v50 & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_1002FE210(v7, v53 + v49);
    v54 = (v53 + v51);
    *v54 = v38;
    v54[1] = v40;
    v54[2] = v42;
    v54[3] = v44;
    *(v53 + v52) = v37;
    v55 = v80;
    v56 = v83;
    (*(v80 + 16))(v79, v47, v83);
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1002FEF2C;
    *(v57 + 24) = v53;
    sub_1000F24EC(&qword_100ADE028, &qword_10094EA30);
    sub_1002FF7F4(&qword_100ADD0D0, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
    sub_10000B58C(&qword_100ADE030, &qword_100ADE028, &qword_10094EA30, &protocol conformance descriptor for IDView<A, B>);
    v58 = v81;
    TimelineView<>.init(_:content:)();
    (*(v55 + 8))(v98, v56);
    v99 = v16;
    v59 = sub_1002FEFF8();
    v60 = v84;
    v61 = v86;
    View.chartXVisibleDomain<A>(length:)();
    (*(v82 + 8))(v58, v61);
    static Edge.Set.leading.getter();
    v62 = v94;
    static ContentMarginPlacement.scrollContent.getter();
    v99 = *&v61;
    v100 = &type metadata for Double;
    v101 = v59;
    v102 = &protocol witness table for Double;
    v103 = &protocol witness table for Double;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v89;
    v65 = v88;
    View.contentMargins(_:_:for:)();
    (*(v96 + 8))(v62, v97);
    v66 = (*(v87 + 8))(v60, v65);
    __chkstk_darwin(v66);
    v76[-2] = a1;
    *&v76[-1] = v16;
    v67 = sub_1000F24EC(&qword_100ADE040, &qword_10094EA38);
    v99 = *&v65;
    v100 = OpaqueTypeConformance2;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = sub_10000B58C(&qword_100ADE048, &qword_100ADE040, &qword_10094EA38, &protocol conformance descriptor for AxisMarks<A>);
    v71 = v91;
    v70 = v92;
    View.chartXAxis<A>(content:)();
    (*(v90 + 8))(v64, v70);
    v72 = v76[0];
    sub_1002FE1AC(a1, v76[0]);
    v73 = v78;
    v74 = swift_allocObject();
    sub_1002FE210(v72, v74 + v77);
    *(v74 + v73) = v20;
    sub_1000F24EC(&qword_100ADE050, &qword_10094EA40);
    v99 = *&v70;
    v100 = v67;
    v101 = v68;
    v102 = v69;
    swift_getOpaqueTypeConformance2();
    sub_1002FF160();
    v75 = v95;
    View.chartPlotStyle<A>(content:)();

    (*(v93 + 8))(v71, v75);
  }
}

uint64_t sub_1002FB590@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v37 = a3;
  v38 = a4;
  v35 = a5;
  v36 = a2;
  v10 = sub_1000F24EC(&qword_100ADB2D8, &qword_10094AEC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v34 = sub_1000F24EC(&qword_100ADE0D0, &unk_10094EA90);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  sub_10000CA14(a1, v19);
  sub_1000F24EC(&qword_100ADD0E0, &qword_10094D230);
  TimelineView.Context.date.getter();
  v21 = (*(v20 + 32))(v18, v19, v20);
  (*(v16 + 8))(v18, v15);
  v39 = v36;
  v40 = v37;
  v41 = v38;
  v42 = a6;
  v43 = a1;
  sub_1000F24EC(&qword_100ADE0D8, &qword_10094EAA0);
  v22 = sub_1000F2A18(&qword_100ADE0E0, &qword_10094EAA8);
  v23 = sub_1000F2A18(&qword_100ADE0E8, &qword_10094EAB0);
  v24 = sub_1000F2A18(&qword_100ADE0F0, &qword_10094EAB8);
  v25 = sub_1002FF4F8();
  *&v45 = v24;
  *(&v45 + 1) = &type metadata for AnyShapeStyle;
  v46 = v25;
  v47 = &protocol witness table for AnyShapeStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v45 = v23;
  *(&v45 + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  *&v45 = v22;
  *(&v45 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  result = Chart.init(content:)();
  if (v21 + a7 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *&v45 = 0;
    *(&v45 + 1) = v21 + a7;
    v29 = type metadata accessor for ScaleType();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    sub_1000F24EC(&qword_100ADE110, &qword_10094EAC8);
    sub_10000B58C(&qword_100ADE118, &qword_100ADE0D0, &unk_10094EA90, &protocol conformance descriptor for Chart<A>);
    sub_1002FF5A8();
    v30 = v35;
    v31 = v34;
    View.chartXScale<A>(domain:type:)();
    sub_100004F84(v12, &qword_100ADB2D8, &qword_10094AEC0);
    (*(v33 + 8))(v14, v31);
    v45 = *(a1 + 56);
    sub_1000F24EC(&qword_100AD2148, &qword_100940460);
    State.wrappedValue.getter();
    v32 = v44;
    result = sub_1000F24EC(&qword_100ADE028, &qword_10094EA30);
    *(v30 + *(result + 52)) = v32;
  }

  return result;
}

uint64_t sub_1002FBA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v27 = a4;
  v36 = a5;
  v10 = sub_1000F24EC(&qword_100ADE128, &qword_10094EAD0);
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v33 = sub_1000F24EC(&qword_100ADE0F0, &qword_10094EAB8);
  v28 = *(v33 - 8);
  __chkstk_darwin(v33);
  v14 = &v27 - v13;
  v35 = sub_1000F24EC(&qword_100ADE0E8, &qword_10094EAB0);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - v15;
  v34 = sub_1000F24EC(&qword_100ADE0E0, &qword_10094EAA8);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v27 - v16;
  v41[0] = a1;
  v41[1] = a2;
  v41[2] = a3;
  *&v41[3] = a6;

  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  sub_1000F24EC(&qword_100ADE130, &qword_10094EB50);
  sub_1002FFA30(&qword_100ADE138, sub_1002FF624, &protocol conformance descriptor for <> Slice<A>);
  RulePlot.init<A, B, C>(_:x:yStart:yEnd:)();
  v17 = v27[3];
  v18 = v27[4];
  sub_10000CA14(v27, v17);
  if ((*(v18 + 16))(v17, v18))
  {
    v41[0] = static Color.red.getter();
  }

  else
  {
    LODWORD(v41[0]) = static HierarchicalShapeStyle.primary.getter();
  }

  v41[0] = AnyShapeStyle.init<A>(_:)();
  v19 = sub_1002FF4F8();
  v20 = v30;
  v21 = v33;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v28 + 8))(v14, v21);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v37 = v21;
  v38 = &type metadata for AnyShapeStyle;
  v39 = v19;
  v40 = &protocol witness table for AnyShapeStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v24 = v35;
  ChartContent.lineStyle(_:)();
  sub_1002FF678(v41);
  (*(v32 + 8))(v20, v24);
  v37 = v24;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  ChartContent.accessibilityHidden(_:)();
  return (*(v31 + 8))(v23, v25);
}

uint64_t sub_1002FC054(void *a1, double a2)
{
  v4 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v5 - 8);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000CA14(a1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = *(a1 + *(type metadata accessor for ScrollableWaveformView(0) + 40));
  v10 = a1[3];
  v11 = a1[4];
  sub_10000CA14(a1, v10);
  result = (*(v11 + 24))(v10, v11);
  if (v9 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v14 = v9 * ceil((v13 + a2) / v9 + 1.0);
    v15 = (v8 + a2 * -0.5) / v9 + -1.0;
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    sub_1001C2B14(v9 * floor(v15), v14, v9);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    sub_1000F24EC(&qword_100ADE080, &qword_10094EA58);
    sub_1002FF2B8();
    return AxisMarks.init<A>(preset:position:values:content:)();
  }

  return result;
}

uint64_t sub_1002FC278@<X0>(uint64_t a1@<X8>)
{
  v66 = sub_1000F24EC(&qword_100ADE0B8, &qword_10094EA78);
  __chkstk_darwin(v66);
  v65 = &v48.i8[-v2];
  v3 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v4 - 8);
  v52 = sub_1000F24EC(&qword_100ADE0A8, &qword_10094EA70);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48.i8[-v5];
  v54 = sub_1000F24EC(&qword_100ADE0A0, &qword_10094EA68);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v48.i8[-v6];
  v64 = sub_1000F24EC(&qword_100ADE0C0, &qword_10094EA80);
  v58 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = &v48.i8[-v7];
  v9 = sub_1000F24EC(&qword_100ADE098, &qword_10094EA60);
  __chkstk_darwin(v9 - 8);
  v63 = v48.i64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v48.i8[-v12];
  v13 = type metadata accessor for AxisTick();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48.i8[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1000F24EC(&qword_100ADE0C8, &qword_10094EA88);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v61 = &v48.i8[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v48.i8[-v19];
  result = AxisValue.as<A>(_:)();
  if (BYTE8(v73))
  {
    __break(1u);
  }

  else
  {
    v57 = a1;
    v23.i64[0] = v73;
    *v22.i64 = *&v73 - trunc(*&v73);
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v48 = v23;
    v56 = vbslq_s8(vnegq_f64(v24), v22, v23);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v73 = v70;
    v74 = v71;
    v75 = v72;
    AxisTick.init(centered:length:stroke:)();
    LODWORD(v67) = static HierarchicalShapeStyle.tertiary.getter();
    AxisMark.foregroundStyle<A>(_:)();
    (*(v14 + 8))(v16, v13);
    v25 = 1;
    if (*v56.i64 == 0.0)
    {
      static UnitPoint.topLeading.getter();
      v26 = static AxisValueLabelCollisionResolution.disabled.getter();
      __chkstk_darwin(v26);
      static AxisValueLabelOrientation.automatic.getter();
      v47[3] = &protocol witness table for Text;
      v47[1] = v47;
      v47[2] = &type metadata for Text;
      v47[0] = sub_1002FF4DC;
      v27 = v49;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      static Font.caption.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      v28 = sub_10000B58C(&qword_100ADE0B0, &qword_100ADE0A8, &qword_10094EA70, &protocol conformance descriptor for AxisValueLabel<A>);
      v29 = v51;
      v30 = v52;
      AxisMark.font(_:)();

      (*(v50 + 8))(v27, v30);
      v69 = static HierarchicalShapeStyle.secondary.getter();
      v67 = v30;
      v68 = v28;
      swift_getOpaqueTypeConformance2();
      v31 = v8;
      v32 = v54;
      AxisMark.foregroundStyle<A>(_:)();
      (*(v53 + 8))(v29, v32);
      v33 = v58;
      v34 = v62;
      v35 = v64;
      (*(v58 + 32))(v62, v31, v64);
      v25 = 0;
    }

    else
    {
      v35 = v64;
      v33 = v58;
      v34 = v62;
    }

    v55 = v20;
    (*(v33 + 56))(v34, v25, 1, v35);
    v36 = v59;
    v37 = *(v59 + 16);
    v38 = v61;
    v39 = v60;
    v37(v61, v20, v60);
    v40 = v63;
    sub_1000C5778(v34, v63);
    v41 = v65;
    v37(v65, v38, v39);
    sub_1002FF390();
    v42 = v66;
    v43 = v34;
    v44 = *(v66 + 48);
    sub_1000C5778(v40, &v41[v44]);
    v45 = v57;
    (*(v36 + 32))(v57, v41, v39);
    sub_100021CEC(&v41[v44], v45 + *(v42 + 48), &qword_100ADE098, &qword_10094EA60);
    sub_100004F84(v43, &qword_100ADE098, &qword_10094EA60);
    v46 = *(v36 + 8);
    v46(v55, v39);
    sub_100004F84(v40, &qword_100ADE098, &qword_10094EA60);
    return (v46)(v38, v39);
  }

  return result;
}

uint64_t sub_1002FCB94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Duration.TimeFormatStyle();
  __chkstk_darwin(v7);
  v13[0] = static Duration.seconds(_:)();
  v13[1] = v8;
  static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  static FormatStyle<>.time(pattern:)();
  (*(v4 + 8))(v6, v3);
  sub_1002FF7F4(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  result = Text.init<A>(_:format:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1002FCD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  if (sub_1002F8A50())
  {
    v29 = 3;
    sub_1000F24EC(&qword_100ADE070, &qword_10094EA50);
    sub_10000B58C(&qword_100ADE078, &qword_100ADE070, &qword_10094EA50, &protocol conformance descriptor for HierarchicalShapeStyleModifier<A>);
  }

  else
  {
    v29 = static Color.clear.getter();
  }

  v8 = AnyShapeStyle.init<A>(_:)();
  v9 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v43 = 0;
  *&v24 = v8;
  WORD4(v24) = 256;
  LOBYTE(v25) = v9;
  *(&v25 + 1) = v10;
  *&v26 = v12;
  *(&v26 + 1) = v14;
  *&v27 = v16;
  BYTE8(v27) = 0;
  *&v28 = v5;
  *(&v28 + 1) = v7;
  v18 = type metadata accessor for ChartPlotContent();
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  v19 = (a2 + *(sub_1000F24EC(&qword_100ADE050, &qword_10094EA40) + 36));
  v20 = v27;
  v19[2] = v26;
  v19[3] = v20;
  v19[4] = v28;
  v21 = v25;
  *v19 = v24;
  v19[1] = v21;
  v29 = v8;
  v30 = 256;
  v31 = *&v45[7];
  v32 = v46;
  v33 = v9;
  *&v34[3] = *&v45[3];
  *v34 = *v45;
  v35 = v11;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v39 = 0;
  *v40 = *v44;
  *&v40[3] = *&v44[3];
  v41 = v5;
  v42 = v7;
  sub_1002FF248(&v24, v23);
  return sub_100004F84(&v29, &qword_100ADE068, &qword_10094EA48);
}

uint64_t sub_1002FCF60(uint64_t *a1)
{
  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003E5230(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    result = sub_1003E5230((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
    v4 = *(result + 24);
    v6 = v4 >> 1;
  }

  *(v2 + 16) = v7;
  *(v2 + 8 * v5 + 32) = 0xBFF0000000000000;
  v8 = v5 + 2;
  if (v6 < v8)
  {
    result = sub_1003E5230((v4 > 1), v8, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v8;
  *(v2 + 8 * v7 + 32) = 0x3FF0000000000000;
  *a1 = v2;
  return result;
}

void *sub_1002FD044(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  result = State.wrappedValue.getter();
  if (v4 == 1)
  {
    sub_1000F24EC(&qword_100AD2148, &qword_100940460);
    State.wrappedValue.setter();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1002FD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScrollPhase.isScrolling.getter();
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  return State.wrappedValue.setter();
}

uint64_t sub_1002FD178(double *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = a4[3];
  v7 = a4[4];
  sub_10000CA14(a4, v6);
  result = (*(v7 + 48))(v6, v7);
  if ((result & 1) == 0)
  {
    v9 = a4[3];
    v10 = a4[4];
    sub_10000CA14(a4, v9);
    result = (*(v10 + 40))(v9, v10);
    if ((result & 1) == 0)
    {
      sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
      result = State.wrappedValue.getter();
      if (v16 == 1)
      {
        v11 = a4[3];
        v12 = a4[4];
        sub_10000CA14(a4, v11);
        if (v5 < 0.0)
        {
          v5 = 0.0;
        }

        v14 = a4[3];
        v13 = a4[4];
        sub_10000CA14(a4, v14);
        v15.n128_f64[0] = (*(*(v13 + 8) + 24))(v14);
        if (v15.n128_f64[0] >= v5)
        {
          v15.n128_f64[0] = v5;
        }

        return (*(v12 + 64))(v11, v12, v15);
      }
    }
  }

  return result;
}

double sub_1002FD2D8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  if (sub_1002F8A50())
  {
    if (qword_100AD0CE0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000617C(v2, qword_100B315B0);
    (*(v3 + 16))(v5, v6, v2);
    v7 = Color.init(_:)();
  }

  else
  {
    v7 = static Color.clear.getter();
  }

  *&v13 = v7;
  v8 = AnyShapeStyle.init<A>(_:)();
  ChartProxy.plotSize.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v12[6] = v13;
  *&v12[22] = v14;
  *&v12[38] = v15;
  v9 = *&v12[16];
  *(a1 + 10) = *v12;
  *a1 = v8;
  *(a1 + 8) = 256;
  *(a1 + 26) = v9;
  result = *&v12[32];
  *(a1 + 42) = *&v12[32];
  *(a1 + 56) = *&v12[46];
  return result;
}

uint64_t sub_1002FD490@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TintShapeStyle();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 72);
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 72))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = v7;

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_1000467F0(v10, 0);
    (*(v6 + 8))(v9, v25, v12);
    if (v27)
    {
      goto LABEL_8;
    }
  }

  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  sub_10000CA14(a1, v13);
  v15 = 0;
  if ((*(v14 + 48))(v13, v14) & 1) != 0 || (v16 = *(a1 + 24), v17 = *(a1 + 32), sub_10000CA14(a1, v16), ((*(v17 + 40))(v16, v17)))
  {
    v18 = 0;
    result = 0;
    goto LABEL_13;
  }

LABEL_8:
  v20 = sub_1002F8A50();
  ChartProxy.plotSize.getter();
  v15 = v21;
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  sub_10000CA14(a1, v22);
  if ((*(v23 + 16))(v22, v23))
  {
    v26 = static Color.red.getter();
  }

  else
  {
    TintShapeStyle.init()();
  }

  result = AnyShapeStyle.init<A>(_:)();
  v18 = 0x401C000000000000;
  if (!v20)
  {
    v18 = 0;
  }

LABEL_13:
  *a2 = v18;
  a2[1] = v15;
  a2[2] = result;
  return result;
}

double sub_1002FD7A8()
{
  sub_1002E24F8();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1002FD7E4(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_1002FD850@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002FD87C(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

Journal::DebugData (__swiftcall *sub_1002FD8B8(Journal::DebugData (__swiftcall *result)(Swift::String name), unint64_t *a2))(Swift::String name)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *(*v2 + 8 * v3 + 32);
    *result = v3 / v2[1];
    *(result + 1) = v4;
    return DebugData.init(name:);
  }

  __break(1u);
  return result;
}

void sub_1002FD914(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }
}

void sub_1002FD948(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_1002FD96C@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002FD998@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1002FD7E4(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_1002FD9D8(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1002FDA00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002FDA1C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002FDA38(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1002FDA54@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1002FDA78(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

double sub_1002FDA9C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

double *sub_1002FDAB4()
{
  v1 = sub_10060FC80(*v0, *(v0 + 8));

  return v1;
}

double sub_1002FDAFC@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v18;
  *(a2 + 104) = v19;
  *(a2 + 112) = v20;
  *(a2 + 120) = v21;
  result = *&v22;
  *(a2 + 128) = v22;
  return result;
}

double sub_1002FDC80@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = static HorizontalAlignment.center.getter();
  sub_1002FDAFC(v8);
  *&v7[7] = v8[0];
  *&v7[71] = v8[4];
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[135] = v8[8];
  *&v7[119] = v8[7];
  *&v7[103] = v8[6];
  *&v7[87] = v8[5];
  *(a2 + 113) = *&v7[96];
  *(a2 + 129) = *&v7[112];
  *(a2 + 145) = *&v7[128];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  *(a2 + 81) = *&v7[64];
  *(a2 + 97) = *&v7[80];
  *(a2 + 17) = *v7;
  result = -v4;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 33) = *&v7[16];
  *(a2 + 160) = *&v7[143];
  *(a2 + 168) = 0;
  *(a2 + 176) = -v4;
  return result;
}

uint64_t sub_1002FDD68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002FDE30(uint64_t a1)
{
  result = sub_1002FF7F4(&qword_100ADDE50, type metadata accessor for $s7Journal0033ScrollableWaveformViewswift_DbGHjfMX263_0_33_8FC82BFD10DD9FFCAE9786F1BC87CE947PreviewfMf_15PreviewRegistryfMu_.MockWaveformProviding, &unk_10094E810);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FDE88(uint64_t a1)
{
  result = sub_1002FF7F4(&qword_100ADDE58, type metadata accessor for $s7Journal0033ScrollableWaveformViewswift_DbGHjfMX263_0_33_8FC82BFD10DD9FFCAE9786F1BC87CE947PreviewfMf_15PreviewRegistryfMu_.MockWaveformProviding, &unk_10094E82C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ScrollableWaveformView(uint64_t a1)
{
  result = qword_100ADDEB8;
  if (!qword_100ADDEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FDF64(uint64_t a1)
{
  sub_1002FE0DC();
  if (v1 <= 0x3F)
  {
    sub_1002FE140(319, &qword_100ADCA30, &type metadata for Bool, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_1002FE140(319, &qword_100AD1FF8, &type metadata for Int, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1002FE140(319, &qword_100ADD7D8, &type metadata for RecordingViewModel.PresentationStyle, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1002FE140(319, &unk_100ADDED0, &type metadata for Double, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Duration.UnitsFormatStyle();
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

unint64_t sub_1002FE0DC()
{
  result = qword_100ADDEC8;
  if (!qword_100ADDEC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100ADDEC8);
  }

  return result;
}

void sub_1002FE140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1002FE1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableWaveformView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FE210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableWaveformView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002FE274(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1002FAA18(v4, a1);
}

void *sub_1002FE2F4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002FD044(a1, a2, v6);
}

uint64_t sub_1002FE374(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002FD10C(a1, a2, v6);
}

void sub_1002FE3F4(double *a1@<X8>)
{
  v3 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v5 = v4[3];
  v6 = v4[4];
  sub_10000CA14(v4, v5);
  *a1 = (*(v6 + 24))(v5, v6);
}

uint64_t sub_1002FE488()
{
  v1 = (type metadata accessor for ScrollableWaveformView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_10000BA7C((v0 + v2));

  sub_1000467F0(*(v3 + 72), *(v3 + 80));
  sub_1000467F0(*(v3 + 88), *(v3 + 96));
  v4 = v1[11];
  v5 = type metadata accessor for Duration.UnitsFormatStyle();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1002FE5A0(double *a1)
{
  v3 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1002FD178(a1, v4, v5, v6);
}

double sub_1002FE614@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScrollableWaveformView(0);

  return sub_1002FD2D8(a1);
}

unint64_t sub_1002FE694()
{
  result = qword_100ADDFA8;
  if (!qword_100ADDFA8)
  {
    sub_1000F2A18(&qword_100ADDFA0, &qword_10094E9B8);
    sub_10000B58C(&qword_100ADDFB0, &qword_100ADDFB8, &qword_10094E9C0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFA8);
  }

  return result;
}

uint64_t sub_1002FE74C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002FD490(v4, a1);
}

unint64_t sub_1002FE7CC()
{
  result = qword_100ADDFC8;
  if (!qword_100ADDFC8)
  {
    sub_1000F2A18(&qword_100ADDFC0, &qword_10094E9C8);
    sub_1002FE850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFC8);
  }

  return result;
}

unint64_t sub_1002FE850()
{
  result = qword_100ADDFD0;
  if (!qword_100ADDFD0)
  {
    sub_1000F2A18(&qword_100ADDFD8, &unk_10094E9D0);
    sub_1002FE908();
    sub_10000B58C(&qword_100ADDFE8, &qword_100ADDFF0, &unk_1009730A0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFD0);
  }

  return result;
}

unint64_t sub_1002FE908()
{
  result = qword_100ADDFE0;
  if (!qword_100ADDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFE0);
  }

  return result;
}

unint64_t sub_1002FE95C()
{
  result = qword_100ADDFF8;
  if (!qword_100ADDFF8)
  {
    sub_1000F2A18(&qword_100ADDF78, &qword_10094E998);
    sub_1002FEA14();
    sub_10000B58C(&qword_100ADCF88, &qword_100ADCF90, &qword_10094D058, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDFF8);
  }

  return result;
}

unint64_t sub_1002FEA14()
{
  result = qword_100ADE000;
  if (!qword_100ADE000)
  {
    sub_1000F2A18(&qword_100ADDF70, &qword_10094E990);
    sub_1000F2A18(&qword_100ADDF60, &qword_10094E980);
    sub_1000F2A18(&qword_100ADDFC0, &qword_10094E9C8);
    sub_1000F2A18(&qword_100ADDF58, &qword_10094E978);
    sub_1000F2A18(&qword_100ADDFA0, &qword_10094E9B8);
    sub_1000F2A18(&qword_100ADDF50, &qword_10094E970);
    sub_1000F2A18(&qword_100ADDF48, &qword_10094E968);
    sub_1000F2A18(&qword_100ADDF40, &qword_10094E960);
    sub_1000F2A18(&qword_100ADDF38, &qword_10094E958);
    sub_1000F2A18(&qword_100ADDF30, &qword_10094E950);
    sub_1000F2A18(&qword_100ADDF28, &qword_10094E948);
    sub_1000F2A18(&qword_100ADDF20, &qword_10094E940);
    type metadata accessor for AutomaticScaleDomain();
    type metadata accessor for PlotDimensionScaleRange();
    sub_1000F2A18(&qword_100ADDF18, &qword_10094E938);
    sub_1000F2A18(&qword_100ADDF90, &qword_10094E9B0);
    sub_10000B58C(&qword_100ADDF98, &qword_100ADDF90, &qword_10094E9B0, &protocol conformance descriptor for GeometryReader<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1002FE694();
    swift_getOpaqueTypeConformance2();
    sub_1002FE7CC();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8, &unk_100940500, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE000);
  }

  return result;
}

uint64_t sub_1002FEE60(uint64_t result, double a2, double a3, double a4)
{
  v4 = a2 * a4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = *(result + 16);
  if (v6 < v4)
  {
    v5 = *(result + 16);
  }

  v7 = a3 * a4;
  if (COERCE__INT64(fabs(a3 * a4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= v7)
  {
    v6 = v7;
  }

  if (v5 <= (v6 & ~(v6 >> 63)))
  {
    return v5 & ~(v5 >> 63);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002FEF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrollableWaveformView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = *(v7 + 3);
  v12 = *(v1 + v6);

  return sub_1002FB590(v1 + v4, v8, v9, v10, a1, v11, v12);
}

unint64_t sub_1002FEFF8()
{
  result = qword_100ADE038;
  if (!qword_100ADE038)
  {
    sub_1000F2A18(&qword_100ADE008, &qword_10094EA10);
    sub_10000B58C(&qword_100ADE030, &qword_100ADE028, &qword_10094EA30, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE038);
  }

  return result;
}

uint64_t sub_1002FF0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ScrollableWaveformView(0);

  return sub_1002FCD34(a1, a2);
}

unint64_t sub_1002FF160()
{
  result = qword_100ADE058;
  if (!qword_100ADE058)
  {
    sub_1000F2A18(&qword_100ADE050, &qword_10094EA40);
    sub_1002FF7F4(&qword_100ADB448, &type metadata accessor for ChartPlotContent, &protocol conformance descriptor for ChartPlotContent);
    sub_10000B58C(&qword_100ADE060, &qword_100ADE068, &qword_10094EA48, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE058);
  }

  return result;
}

uint64_t sub_1002FF248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADE068, &qword_10094EA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002FF2B8()
{
  result = qword_100ADE088;
  if (!qword_100ADE088)
  {
    sub_1000F2A18(&qword_100ADE080, &qword_10094EA58);
    type metadata accessor for AxisTick();
    swift_getOpaqueTypeConformance2();
    sub_1002FF390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE088);
  }

  return result;
}

unint64_t sub_1002FF390()
{
  result = qword_100ADE090;
  if (!qword_100ADE090)
  {
    sub_1000F2A18(&qword_100ADE098, &qword_10094EA60);
    sub_1000F2A18(&qword_100ADE0A0, &qword_10094EA68);
    sub_1000F2A18(&qword_100ADE0A8, &qword_10094EA70);
    sub_10000B58C(&qword_100ADE0B0, &qword_100ADE0A8, &qword_10094EA70, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE090);
  }

  return result;
}

unint64_t sub_1002FF4F8()
{
  result = qword_100ADE0F8;
  if (!qword_100ADE0F8)
  {
    sub_1000F2A18(&qword_100ADE0F0, &qword_10094EAB8);
    sub_10000B58C(&qword_100ADE100, &qword_100ADE108, &qword_10094EAC0, &protocol conformance descriptor for VectorizedRulePlotContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE0F8);
  }

  return result;
}

unint64_t sub_1002FF5A8()
{
  result = qword_100ADE120;
  if (!qword_100ADE120)
  {
    sub_1000F2A18(&qword_100ADE110, &qword_10094EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE120);
  }

  return result;
}

unint64_t sub_1002FF624()
{
  result = qword_100ADE140;
  if (!qword_100ADE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE140);
  }

  return result;
}

unint64_t sub_1002FF6FC()
{
  result = qword_100ADE148;
  if (!qword_100ADE148)
  {
    sub_1000F2A18(&qword_100ADDF88, &qword_10094E9A8);
    sub_1000F2A18(&qword_100ADDF78, &qword_10094E998);
    sub_1002FE95C();
    swift_getOpaqueTypeConformance2();
    sub_1002FF7F4(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE148);
  }

  return result;
}

uint64_t sub_1002FF7F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002FF884()
{
  result = qword_100ADE160;
  if (!qword_100ADE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE160);
  }

  return result;
}

unint64_t sub_1002FF960()
{
  result = qword_100ADE178;
  if (!qword_100ADE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE178);
  }

  return result;
}

uint64_t sub_1002FFA30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100ADE130, &qword_10094EB50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002FFAA8()
{
  result = qword_100ADE190;
  if (!qword_100ADE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE190);
  }

  return result;
}

uint64_t sub_1002FFB34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100ADD6B8, &qword_10094DBF0);
    sub_1000AAF8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002FFC10()
{
  result = qword_100ADE198;
  if (!qword_100ADE198)
  {
    sub_1000F2A18(&qword_100ADE1A0, &qword_10094EE38);
    sub_10000B58C(&qword_100ADE1A8, &qword_100ADE1B0, &qword_10094EE40, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE198);
  }

  return result;
}

uint64_t sub_1002FFCDC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADE1B8);
  v1 = sub_10000617C(v0, qword_100ADE1B8);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1002FFDA4()
{
  v1 = v0;
  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  sub_1000F24EC(&unk_100ADFBF0, &unk_10095D5F0);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 32) = UIFontWeightMedium;
  *(v3 + 40) = 0;
  *(v3 + 48) = 3;
  v4 = NSFontAttributeName;
  v5 = [v1 traitCollection];
  v6 = sub_100047788(UIFontTextStyleTitle3, v3, v5);

  swift_setDeallocating();
  sub_100047D60(v3 + 32);
  v7 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = objc_opt_self();
  v9 = NSForegroundColorAttributeName;
  v10 = [v8 labelColor];
  *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  *(inited + 80) = v10;
  v11 = sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
  swift_arrayDestroy();
  return v11;
}

id sub_1002FFF7C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  *&v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment] = 0;
  v1[OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI] = 0;
  v3 = &v1[OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC7Journal14TranscriptView_model] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TranscriptView();

  v4 = objc_msgSendSuper2(&v7, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:{0, v7.receiver, v7.super_class}];
  [v4 setEditable:0];
  v5 = v4;
  [v5 setSelectable:1];
  [v5 setScrollEnabled:1];
  [v5 setAlwaysBounceVertical:1];
  [v5 setFindInteractionEnabled:1];
  [v5 setTextContainerInset:{0.0, 24.0, 0.0, 24.0}];
  [v5 setContentInset:{21.0, 0.0, 60.0, 0.0}];

  [v5 setAdjustsFontForContentSizeCategory:1];

  return v5;
}

void sub_1003001C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange + 8);
  if (*(v0 + OBJC_IVAR____TtC7Journal14TranscriptView_activeSegmentRange + 16))
  {
    if (qword_100ACFBF0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100ADE1B8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing activeSegmentRange.", v6, 2u);
    }

    v7 = 1;
  }

  else
  {
    if (qword_100ACFBF0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100ADE1B8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = _NSRange.debugDescription.getter();
      v15 = sub_100008458(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Updating activeSegmentRange: %s", v11, 0xCu);
      sub_10000BA7C(v12);
    }

    v7 = 0;
  }

  sub_100300404(0, v1, v2, v7);
}

void sub_100300404(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (qword_100ACFBF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100ADE1B8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Resetting attributed text", v11, 2u);
  }

  if (a1)
  {
    v12 = [v5 textStorage];
    v13 = sub_1002FFDA4();
    sub_1008ACFB8(v12, a1, v13);
  }

  sub_100300FB0();
  v14 = *&v5[OBJC_IVAR____TtC7Journal14TranscriptView_model];
  swift_getKeyPath();
  sub_1000516C0(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v14 + 16))
  {
    if ((a4 & 1) == 0)
    {
      v17 = &selRef_secondaryLabelColor;
      goto LABEL_14;
    }

LABEL_12:
    v17 = &selRef_labelColor;
    goto LABEL_14;
  }

  v15 = *(v14 + 24);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v15) = sub_100885D80(ObjectType, v15);
  swift_unknownObjectRelease();
  v17 = &selRef_secondaryLabelColor;
  if (v15 & 1) == 0 && (a4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v18 = [objc_opt_self() *v17];
  v19 = [v5 textStorage];
  v20 = [v19 length];

  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100301848(v18, 0, v20);

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v14 + 16))
    {
      v21 = *(v14 + 24);
      v22 = swift_getObjectType();
      swift_unknownObjectRetain();
      LOBYTE(v21) = sub_100885D80(v22, v21);
      swift_unknownObjectRelease();
      if ((v21 & 1) != 0 && v5[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 16] == 1)
      {
        sub_100300768();
      }
    }

    if ((a4 & 1) == 0)
    {
      v23 = [objc_opt_self() labelColor];
      sub_100301848(v23, a2, a3);
    }
  }
}

void sub_100300768()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 textStorage];
  v8 = [v7 string];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1008AD5C0(v9, v11, &aBlock);
  v12 = aBlock;
  v13 = v58;
  LOBYTE(v9) = v59;
  v14 = v60;
  v54 = v61;
  v56 = v62;

  if ((v9 & 1) == 0)
  {
    v53 = v14;
    v55 = v1;
    v15 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    if (qword_100AD0CD8 != -1)
    {
      swift_once();
    }

    v16 = sub_10000617C(v2, qword_100B31598);
    (*(v3 + 16))(v6, v16, v2);
    v17 = UIColor.init(resource:)();
    v18 = [v55 textLayoutManager];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1000F59DC(v12, v13);
      if (v20)
      {
        v21 = v20;
        sub_1000F24EC(&qword_100ADE220, &qword_10094EE58);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100940080;
        *(inited + 32) = NSForegroundColorAttributeName;
        *(inited + 64) = v15;
        *(inited + 40) = v17;
        v23 = NSForegroundColorAttributeName;
        v52 = v17;
        v24 = sub_100363D10(inited);
        swift_setDeallocating();
        sub_100004F84(inited + 32, &unk_100ADFFF0, &qword_10094EE60);
        sub_100301BB8(v24);
        v51 = 0;

        type metadata accessor for Key(0);
        sub_1000516C0(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v19 setRenderingAttributes:isa forTextRange:v21];

        v26 = [v21 location];
        v27 = swift_allocObject();
        *(v27 + 16) = v19;
        *(v27 + 24) = v21;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1003020B4;
        *(v28 + 24) = v27;
        v61 = sub_1003020B8;
        v62 = v28;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100095FB4;
        v60 = &unk_100A66C68;
        v29 = _Block_copy(&aBlock);
        v30 = v19;
        v31 = v21;

        v32 = [v30 enumerateTextLayoutFragmentsFromLocation:v26 options:0 usingBlock:v29];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        _Block_release(v29);
        LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

        if (v26)
        {
          __break(1u);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v19 = v17;
    }

LABEL_11:
    v1 = v55;
    v14 = v53;
  }

  if (v56)
  {
    return;
  }

  v33 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  if (qword_100AD0CD0 != -1)
  {
    swift_once();
  }

  v34 = sub_10000617C(v2, qword_100B31580);
  (*(v3 + 16))(v6, v34, v2);
  v35 = UIColor.init(resource:)();
  v36 = [v1 textLayoutManager];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1000F59DC(v14, v54);
    if (!v38)
    {

      goto LABEL_21;
    }

    v39 = v38;
    sub_1000F24EC(&qword_100ADE220, &qword_10094EE58);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_100940080;
    *(v40 + 32) = NSForegroundColorAttributeName;
    *(v40 + 64) = v33;
    *(v40 + 40) = v35;
    v41 = NSForegroundColorAttributeName;
    v42 = v35;
    v43 = sub_100363D10(v40);
    swift_setDeallocating();
    sub_100004F84(v40 + 32, &unk_100ADFFF0, &qword_10094EE60);
    sub_100301BB8(v43);

    type metadata accessor for Key(0);
    sub_1000516C0(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v44 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v37 setRenderingAttributes:v44 forTextRange:v39];

    v45 = [v39 location];
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v39;
    v35 = swift_allocObject();
    v35[2] = sub_1003020B4;
    v35[3] = v46;
    v61 = sub_1003020B8;
    v62 = v35;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100095FB4;
    v60 = &unk_100A66BF0;
    v47 = _Block_copy(&aBlock);
    v48 = v37;
    v49 = v39;

    v50 = [v48 enumerateTextLayoutFragmentsFromLocation:v45 options:0 usingBlock:v47];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    _Block_release(v47);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if ((v48 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v37 = v35;
LABEL_21:
}

void sub_100300FB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI;
  if (v0[OBJC_IVAR____TtC7Journal14TranscriptView_shouldShowWaitingUI] != 1)
  {
    goto LABEL_13;
  }

  v3 = &v0[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange];
  if (v0[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 16] == 1)
  {
    v4 = *&v0[OBJC_IVAR____TtC7Journal14TranscriptView_model];
    swift_getKeyPath();
    aBlock[0] = v4;
    sub_1000516C0(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 16))
    {
      v5 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      LOBYTE(v5) = sub_100885D80(ObjectType, v5);
      swift_unknownObjectRelease();
      if (v5)
      {
        v7 = [objc_allocWithZone(type metadata accessor for TranscriptWaitingViewTextAttachment()) init];
        v8 = [objc_opt_self() attributedStringWithAttachment:v7];
        v9 = objc_allocWithZone(NSMutableAttributedString);
        v10 = String._bridgeToObjectiveC()();
        v11 = [v9 initWithString:v10];

        v12 = [v1 textStorage];
        v13 = [v12 string];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = sub_1000961EC(v14, v16);
        v19 = v18;

        if (!v19)
        {
LABEL_11:
          [v11 appendAttributedString:v8];
          sub_1002FFDA4();
          type metadata accessor for Key(0);
          sub_1000516C0(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v26 = v11;
          [v26 addAttributes:isa range:{0, objc_msgSend(v26, "length")}];

          v27 = [v1 textStorage];
          v28 = [v27 length];

          v29 = [v26 length];
          *v3 = v28;
          *(v3 + 1) = v29;
          v3[16] = 0;
          v30 = [v1 textStorage];
          [v30 appendAttributedString:v26];

          v31 = *&v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment];
          *&v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment] = v7;

          return;
        }

        v20 = sub_10057714C(v17, v19);
        if ((v20 & 0x100000000) == 0)
        {
          v21 = v20;

          if ((v21 - 14) <= 0xFFFFFFFB && (v21 - 8232) >= 2 && v21 != 133)
          {
            v22 = objc_allocWithZone(NSAttributedString);
            v23 = String._bridgeToObjectiveC()();
            v24 = [v22 initWithString:v23];

            [v11 appendAttributedString:v24];
          }

          goto LABEL_11;
        }

        goto LABEL_22;
      }
    }
  }

  if ((v0[v2] & 1) == 0)
  {
LABEL_13:
    v32 = OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment;
    v33 = *&v0[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIAttachment];
    if (v33)
    {
      v34 = *&v1[OBJC_IVAR____TtC7Journal14TranscriptView_model];
      swift_getKeyPath();
      aBlock[0] = v34;
      sub_1000516C0(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
      v35 = v33;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v34 + 16) && (v36 = *(v34 + 24), v37 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v36) = sub_100885D80(v37, v36), swift_unknownObjectRelease(), (v36 & 1) != 0) || (v38 = &v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange], (v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange + 16] & 1) != 0))
      {

        v39 = 0;
        v40 = 0;
      }

      else
      {
        v42 = *v38;
        v41 = *(v38 + 1);
        v43 = [v1 textStorage];
        v44 = [v1 textStorage];
        v45 = [v44 length];

        v40 = swift_allocObject();
        v40[2] = v35;
        v40[3] = v1;
        v40[4] = v42;
        v40[5] = v41;
        v46 = swift_allocObject();
        v39 = sub_100302090;
        *(v46 + 16) = sub_100302090;
        *(v46 + 24) = v40;
        aBlock[4] = sub_10007E150;
        aBlock[5] = v46;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10007E0A4;
        aBlock[3] = &unk_100A66B78;
        v47 = _Block_copy(aBlock);
        v48 = v35;
        v49 = v1;

        [v43 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v45 usingBlock:{2, v47}];

        _Block_release(v47);
        LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

        if (v48)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }
      }

      v50 = &v1[OBJC_IVAR____TtC7Journal14TranscriptView_waitingUIRange];
      *v50 = 0;
      *(v50 + 1) = 0;
      v50[16] = 1;
      v51 = *&v1[v32];
      *&v1[v32] = 0;

      sub_100004DF8(v39, v40);
    }
  }
}

void sub_100301660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_10005D974(a1, v17);
  if (v18)
  {
    sub_1000065A8(0, &unk_100AF1DE0, NSTextAttachment_ptr);
    if (swift_dynamicCast())
    {
      sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        sub_1002FFDA4();
        v11 = objc_allocWithZone(NSAttributedString);
        v12 = String._bridgeToObjectiveC()();
        type metadata accessor for Key(0);
        sub_1000516C0(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v14 = [v11 initWithString:v12 attributes:isa];

        v15 = [a6 textStorage];
        [v15 replaceCharactersInRange:a7 withAttributedString:{a8, v14}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100004F84(v17, &qword_100AD13D0, &unk_100942DB0);
  }
}

void sub_100301848(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 textLayoutManager];
  if (v8)
  {
    v25 = v8;
    v9 = sub_1000F59DC(a2, a3);
    if (v9)
    {
      v10 = v9;
      sub_1000F24EC(&qword_100ADE220, &qword_10094EE58);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940080;
      *(inited + 32) = NSForegroundColorAttributeName;
      if (a1)
      {
        v12 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
        v13 = a1;
      }

      else
      {
        v13 = 0;
        v12 = 0;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
      }

      *(inited + 40) = v13;
      *(inited + 64) = v12;
      v14 = NSForegroundColorAttributeName;
      v15 = a1;
      v16 = sub_100363D10(inited);
      swift_setDeallocating();
      sub_100004F84(inited + 32, &unk_100ADFFF0, &qword_10094EE60);
      sub_100301BB8(v16);

      type metadata accessor for Key(0);
      sub_1000516C0(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v25 setRenderingAttributes:isa forTextRange:v10];

      v18 = [v10 location];
      v19 = swift_allocObject();
      *(v19 + 16) = v25;
      *(v19 + 24) = v10;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_100302088;
      *(v20 + 24) = v19;
      aBlock[4] = sub_100096024;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100095FB4;
      aBlock[3] = &unk_100A66B00;
      v21 = _Block_copy(aBlock);
      v22 = v25;
      v23 = v10;

      v24 = [v22 enumerateTextLayoutFragmentsFromLocation:v18 options:0 usingBlock:v21];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      _Block_release(v21);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_100301BB8(uint64_t a1)
{
  v1 = a1;
  v2 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0;

  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v8 << 6);
      v13 = *(*(v1 + 48) + 8 * v12);
      sub_10005D974(*(v1 + 56) + 32 * v12, v37 + 8);
      *&v37[0] = v13;
      v34 = v37[0];
      v35 = v37[1];
      v36 = v38;
      sub_10005D974(&v34 + 8, &v28);
      if (v29)
      {
        break;
      }

      v9 = v13;
      sub_100004F84(&v34, &qword_100ADE228, &qword_10094EE68);
      sub_100004F84(&v28, &qword_100AD13D0, &unk_100942DB0);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_10002432C(&v28, v33);
    v31[0] = v34;
    v31[1] = v35;
    v32 = v36;
    sub_10002432C(v33, v30);
    v14 = v2[2];
    if (v2[3] <= v14)
    {
      v16 = v13;
      sub_10008065C(v14 + 1, 1);
    }

    else
    {
      v15 = v13;
    }

    v2 = v39;
    v17 = *&v31[0];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();

    v19 = (v2 + 8);
    v20 = -1 << *(v2 + 32);
    v21 = v18 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *&v19[8 * v22];
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *&v19[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
    *(v2[6] + 8 * v23) = v17;
    sub_10002432C(v30, (v2[7] + 32 * v23));
    ++v2[2];
    sub_100004F84(v31 + 8, &qword_100AD13D0, &unk_100942DB0);
    v1 = v40;
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_100301EB4(void *a1, id a2, void *a3)
{
  v5 = [a2 textViewportLayoutController];
  v6 = [v5 renderingSurfaceForKey:a1];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 setNeedsDisplay];
    }

    swift_unknownObjectRelease();
  }

  v8 = [a1 rangeInElement];
  v9 = [v8 containsLocation:{objc_msgSend(a3, "endLocation")}];

  swift_unknownObjectRelease();
  return v9 ^ 1;
}

id sub_100301FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100302214()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView);
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor:v3];

  v4 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView);
  v5 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v6 = v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 1;
  v7 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v4[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    goto LABEL_8;
  }

  if (v6 <= 1 && v6)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v9 = *&v4[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
    if (v9)
    {
      v10 = v4[v5];
      v11 = v9;
      sub_10021BE90(v10);
    }

    v4[v7] = 1;
  }

LABEL_11:
  v12 = *&v4[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
  if (v12)
  {
    v13 = v12;
    v14 = [v2 clearColor];
    [v13 setBackgroundColor:v14];
  }

  [v1 addSubview:v4];
  v15 = [v4 superview];
  if (v15)
  {
    v16 = v15;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v16 centerXAnchor];
    v18 = [v4 centerXAnchor];
    v19 = [v18 constraintEqualToAnchor:v17];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }
  }

  v20 = [v4 superview];
  if (v20)
  {
    v24 = v20;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v4 centerYAnchor];
    v22 = [v24 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    if (v23)
    {
      [v23 setActive:1];
    }
  }
}

void sub_10030261C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView);
}

id sub_10030265C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenUnknownAssetCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenUnknownAssetCollectionViewCell(uint64_t a1)
{
  result = qword_100ADE258;
  if (!qword_100ADE258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100302784()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView);
  v2 = v1;
  return v1;
}

void *sub_1003027B8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset);
  v2 = v1;
  return v1;
}

void sub_1003027EC()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0, &qword_10095DA10);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - v2;
  v48 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v49 = v18;
      v50 = v19;
      v20 = dispatch thunk of UICollectionViewDiffableDataSource.numberOfSections(in:)();
      if (v20 < 0)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v46 = v4;
      v43 = v9;
      v44 = v6;
      v41 = v3;
      if (v20)
      {
        v21 = 0;
        v22 = _swiftEmptyArrayStorage;
        v47 = v20;
        while (1)
        {
          v23 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();
          if (v23 < 0)
          {
            break;
          }

          v24 = v23;
          if (v23)
          {
            v25 = 0;
            do
            {
              IndexPath.init(item:section:)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_1003E4B58(0, *(v22 + 2) + 1, 1, v22);
              }

              v27 = *(v22 + 2);
              v26 = *(v22 + 3);
              if (v27 >= v26 >> 1)
              {
                v22 = sub_1003E4B58((v26 > 1), v27 + 1, 1, v22);
              }

              ++v25;
              *(v22 + 2) = v27 + 1;
              (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, v15, v10);
            }

            while (v24 != v25);
          }

          if (++v21 == v47)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v22 = _swiftEmptyArrayStorage;
LABEL_17:
      v28 = *(v22 + 2);
      v29 = v41;
      v30 = v45;
      if (v28)
      {
        v33 = *(v11 + 16);
        v31 = v11 + 16;
        v32 = v33;
        v34 = v22 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
        v35 = *(v31 + 56);
        v46 += 6;
        v47 = v35;
        v36 = (v31 - 8);
        v42 = v33;
        v33(v45, v34, v10);
        while (1)
        {
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
          if ((*v46)(v29, 1, v48) == 1)
          {
            (*v36)(v30, v10);
            sub_100004F84(v29, &unk_100AD7CB0, &qword_10095DA10);
          }

          else
          {
            v37 = v43;
            sub_10031894C(v29, v43, type metadata accessor for JournalEntryCollectionViewController.Item);
            v38 = v44;
            sub_1000140BC(v37, v44, type metadata accessor for JournalEntryCollectionViewController.Item);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_100014124(v38, type metadata accessor for JournalEntryCollectionViewController.Item);
              v30 = v45;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              [v49 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

              v29 = v41;
              sub_100014124(v37, type metadata accessor for JournalEntryCollectionViewController.Item);
              (*v36)(v30, v10);
            }

            else
            {
              sub_100014124(v37, type metadata accessor for JournalEntryCollectionViewController.Item);
              v40 = v45;
              (*v36)(v45, v10);
              v30 = v40;
              sub_100014124(v38, type metadata accessor for JournalEntryCollectionViewController.Item);
            }

            v32 = v42;
          }

          v34 += v47;
          if (!--v28)
          {
            break;
          }

          v32(v30, v34, v10);
        }
      }
    }
  }
}

uint64_t sub_100302D24()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7CB0, &qword_10095DA10);
  __chkstk_darwin(v2 - 8);
  v4 = (v30 - v3);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!result)
  {
    return result;
  }

  result = [result indexPathsForSelectedItems];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_32:

    return 0;
  }

  v30[1] = v12;
  v31 = _swiftEmptyArrayStorage;
  v35 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v36 = _swiftEmptyArrayStorage;
  v14 = *(v6 + 16);
  v33 = v6 + 16;
  v34 = v14;
  v32 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  v15 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v16 = *(v6 + 72);
  v17 = (v6 + 8);
  v14(v9, v15, v5);
  while (1)
  {
    v19 = *(v1 + v35);
    if (!v19)
    {
      (*v17)(v9, v5);
      v18 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
LABEL_6:
      sub_100004F84(v4, &unk_100AD7CB0, &qword_10095DA10);
      goto LABEL_7;
    }

    v20 = v19;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v21 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v21 - 8) + 48))(v4, 1, v21) == 1)
    {
      (*v17)(v9, v5);
      goto LABEL_6;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v4;
      v23 = [*(v1 + v32) objectWithID:*v4];

      (*v17)(v9, v5);
      type metadata accessor for JournalEntryMO();
      if (swift_dynamicCastClass())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v36;
      }

      else
      {
      }
    }

    else
    {
      (*v17)(v9, v5);
      sub_100014124(v4, type metadata accessor for JournalEntryCollectionViewController.Item);
    }

LABEL_7:
    v15 += v16;
    if (!--v13)
    {
      break;
    }

    v34(v9, v15, v5);
  }

  v24 = v31;
  if (v31 >> 62)
  {
LABEL_36:
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  while (v25 != v26)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v29 = [v27 flagged];

    ++v26;
    if ((v29 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  return 1;
}

uint64_t sub_1003031B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v4 indexPathsForSelectedItems];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = dispatch thunk of UICollectionViewDiffableDataSource.numberOfSections(in:)();
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = result;
    if (!result)
    {
LABEL_9:

      v13 = *(v7 + 16);

      return v9 == v13;
    }

    v11 = 0;
    while (1)
    {
      result = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();
      v12 = __OFADD__(v9, result);
      v9 += result;
      if (v12)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003032B4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v26 = a3;
  v6 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for EntryListType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v25[-v12];
  [v3 loadViewIfNeeded];
  v14 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel;
  *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel] = a1;

  v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_1000140BC(a1 + v15, v13, type metadata accessor for EntryListType);
  UIViewController.traitOverrides.getter();
  sub_1000140BC(v13, v9, type metadata accessor for EntryListType);
  sub_10001A6F0();
  dispatch thunk of UIMutableTraits.subscript.setter();
  sub_100014124(v13, type metadata accessor for EntryListType);
  UIViewController.traitOverrides.setter();
  UIViewController.traitOverrides.getter();
  sub_1001861C4();
  dispatch thunk of UIMutableTraits.subscript.setter();
  v16 = v4;
  UIViewController.traitOverrides.setter();
  v17 = *&v4[v14];
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
    if (v18)
    {
      [v18 setDelegate:v4];
    }
  }

  v19 = type metadata accessor for JournalEntryCollectionViewPrefetcher();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewPrefetcher_prefetchEntryTasks] = &_swiftEmptyDictionarySingleton;
  *&v20[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewPrefetcher_viewModel] = a1;
  v27.receiver = v20;
  v27.super_class = v19;

  v21 = objc_msgSendSuper2(&v27, "init");
  v22 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher;
  v23 = *&v16[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher];
  *&v16[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher] = v21;

  v24 = *&v16[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v24)
  {
    [v24 setPrefetchDataSource:*&v16[v22]];
  }

  if (v26)
  {
    sub_10002F984();
  }
}

BOOL sub_100303598()
{
  if (!*(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (!v2)
  {
    return 1;
  }

  v3 = [v2 sections];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  sub_1000F24EC(&qword_100ADE7A0, &qword_10094F3F0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 < 1;
}

uint64_t sub_100303674()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 88))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

double sub_1003036F0()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType(0);
  *&result = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1000140BC(v6 + v7, v5, type metadata accessor for EntryListType);

    LOBYTE(v7) = sub_100185A80();
    sub_100014124(v5, type metadata accessor for EntryListType);
    if ((v7 & 1) != 0 && (v8 = , v9 = sub_1001174CC(v8), , v9))
    {
      v10 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_timelineGradientView);
      v11 = *(v10 + OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor);
      *(v10 + OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor) = v9;
      v12 = v9;

      sub_10018DE54();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100303868(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 33) = a3;
  aBlock[4] = sub_1003191D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A673D0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000249D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_100303B98()
{
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v58 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD7CB0, &qword_10095DA10);
  __chkstk_darwin(v5 - 8);
  v7 = (&v42 - v6);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v12)
  {
    v43 = v12;
    v13 = [v43 indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
      v42 = v15;
      v20 = v15 + v19;
      v21 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
      v46 = v62;
      v52 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
      v45 = (v1 + 8);
      v22 = v17;
      v44 = (v3 + 8);
      v23 = v18;
      v59 = *(v17 + 56);
      v24 = (v17 - 8);
      v48 = v22;
      v47 = v18;
      v53 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
      v18(v11, v15 + v19, v8);
      while (1)
      {
        v26 = *(v60 + v21);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

        v28 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
        if ((*(*(v28 - 8) + 48))(v7, 1, v28) == 1)
        {
          goto LABEL_5;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = *v7;
          v30 = [*(v60 + v52) objectWithID:{*v7, v42}];

          type metadata accessor for JournalEntryMO();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = v31;
            v33 = [v31 managedObjectContext];
            if (!v33)
            {
              v33 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
            }

            type metadata accessor for EntryViewModel(0);
            swift_allocObject();
            v34 = sub_100035ADC(v32, 0, 0, v33);
            sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
            v57 = static OS_dispatch_queue.main.getter();
            v35 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v36 = swift_allocObject();
            *(v36 + 16) = v35;
            *(v36 + 24) = v34;
            v56 = v34;
            *(v36 + 32) = 257;
            v62[2] = sub_100318FC4;
            v62[3] = v36;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v62[0] = sub_100006C7C;
            v62[1] = &unk_100A67308;
            v55 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            v54 = sub_1000249D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
            sub_10000B58C(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0, &protocol conformance descriptor for [A]);
            v38 = v50;
            v37 = v51;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v39 = v55;
            v40 = v57;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v39);

            (*v45)(v38, v37);
            (*v44)(v58, v49);
            v23 = v47;
            v21 = v53;
          }

          else
          {

            v21 = v53;
          }
        }

        else
        {
          sub_100014124(v7, type metadata accessor for JournalEntryCollectionViewController.Item);
        }

LABEL_6:
        (*v24)(v11, v8);
        v20 += v59;
        if (!--v16)
        {

          return;
        }

        v23(v11, v20, v8);
      }

      v25 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
LABEL_5:
      sub_100004F84(v7, &unk_100AD7CB0, &qword_10095DA10);
      goto LABEL_6;
    }

    v41 = v43;
  }
}

uint64_t sub_1003042F4(uint64_t a1, int a2, int a3)
{
  v7 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v58[-v8];
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v19 = *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v19)
  {
    LODWORD(v68) = a2;
    v59 = a3;
    v62 = v18;
    v63 = &v58[-v15];
    v60 = v17;
    v67 = v16;
    v65 = v14;
    v69 = v19;
    v20 = [v69 visibleCells];
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v11;
    v66 = v3;
    v61 = v9;
    if (v21 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = 0;
      v71 = i;
      v72 = OBJC_IVAR____TtC7Journal14EntryViewModel_id;
      v24 = v21 & 0xC000000000000001;
      v70 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v24)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v70 + 16))
          {
            goto LABEL_16;
          }

          v25 = *(v21 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        type metadata accessor for JournalEntryCollectionViewCell(0);
        v28 = swift_dynamicCastClass();
        if (v28)
        {
          v29 = *(v28 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
          if (v29)
          {
            v30 = *(v29 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
            v31 = v24;
            v32 = a1;
            v33 = *&v72[a1];
            sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
            v34 = v30;
            v35 = v33;
            v36 = static NSObject.== infix(_:_:)();

            a1 = v32;
            v24 = v31;

            i = v71;
            if (v36)
            {

              sub_10005A9EC(v37);

              return 1;
            }
          }
        }

        ++v23;
        if (v27 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    if (v68)
    {
      v39 = v61;
      sub_1001E4680(a1, v61);
      v40 = v64;
      v41 = v65;
      if ((*(v64 + 48))(v39, 1, v65) == 1)
      {

        sub_100004F84(v39, &unk_100ADFB90, &qword_1009512D0);
      }

      else
      {
        v42 = *(v40 + 32);
        v42(v63, v39, v41);
        v68 = v42;
        IndexPath.row.getter();
        IndexPath.section.getter();
        v43 = v67;
        IndexPath.init(row:section:)();
        if (v59)
        {
          v44 = 0.3;
        }

        else
        {
          v44 = 0.0;
        }

        v72 = objc_opt_self();
        v61 = *(v40 + 16);
        v45 = v60;
        v61(v60, v43, v41);
        v70 = a1;
        v46 = *(v40 + 80);
        v47 = swift_allocObject();
        v48 = v69;
        *(v47 + 16) = v69;
        v42((v47 + ((v46 + 24) & ~v46)), v45, v41);
        v77 = sub_100318EB0;
        v78 = v47;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_100006C7C;
        v76 = &unk_100A67268;
        v71 = _Block_copy(&aBlock);
        v49 = v48;

        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v61(v45, v67, v41);
        v51 = (v46 + 40) & ~v46;
        v52 = swift_allocObject();
        v53 = v70;
        *(v52 + 2) = v50;
        *(v52 + 3) = v53;
        *(v52 + 4) = v49;
        v68(&v52[v51], v45, v41);
        v77 = sub_100318F4C;
        v78 = v52;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_10003264C;
        v76 = &unk_100A672B8;
        v54 = _Block_copy(&aBlock);
        v55 = v49;

        v56 = v71;
        [v72 animateWithDuration:0 delay:v71 options:v54 animations:v44 completion:0.0];
        _Block_release(v54);
        _Block_release(v56);

        v57 = *(v40 + 8);
        v57(v67, v41);
        v57(v63, v41);
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_100304990(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1003159E8(a1, a2, *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext));
  if (result)
  {
    v6 = result;
    v7 = [v6 managedObjectContext];
    if (!v7)
    {
      v7 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel(0);
    swift_allocObject();
    v8 = sub_100035ADC(v6, 0, 0, v7);
    v9 = sub_1003042F4(v8, 1, a3 & 1);

    return (v9 & 1);
  }

  return result;
}

void sub_100304A74(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v16)
  {
    v17 = v16;
    sub_1001E4680(a1, v15);
    v18 = type metadata accessor for IndexPath();
    v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
    sub_100004F84(v15, &unk_100ADFB90, &qword_1009512D0);
    if (v19 == 1)
    {
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000617C(v20, qword_100B2F718);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Did not find an existing indexPath to scroll to. Reload the data and try again.", v23, 2u);
      }

      sub_1000082B4(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v8, &qword_100AD1420, &unk_10093C080);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_100004F84(v8, &qword_100AD1420, &unk_10093C080);
      }

      else
      {
        (*(v10 + 32))(v12, v8, v9);
        v24 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations;
        *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations) = 1;
        [v17 reloadData];
        v25 = UUID.uuidString.getter();
        sub_100304990(v25, v26, 0);

        (*(v10 + 8))(v12, v9);
        *(v3 + v24) = 0;
      }
    }

    else
    {
      sub_100303868(a1, 1, a2 & 1);
    }
  }
}

uint64_t sub_100304E18(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v27 = *(v12 - 8);
  v28 = v12;
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007ECD60(*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions), a1);
  if (v15)
  {
    if (!*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds))
    {
      if (!a2)
      {
        return a3(v15);
      }

      goto LABEL_9;
    }

    if (a2)
    {

      v17 = sub_1007ECDBC(v16, a2);

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

      return a3(v15);
    }
  }

  if (!(*(a1 + 16) | a2))
  {
    return a3(v15);
  }

LABEL_9:
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a2;
  v21 = ObjectType;
  v20[6] = a1;
  v20[7] = v21;
  aBlock[4] = sub_100318EA0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A67218;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000249D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v29 + 8))(v11, v9);
  return (*(v27 + 8))(v14, v28);
}

void *sub_1003051D8(char *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 visibleCells];
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = v4;
      v8 = 0;
      v34 = i;
      v9 = v6 & 0xC000000000000001;
      v32 = v6 & 0xFFFFFFFFFFFFFF8;
      v33 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v32 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for JournalEntryCollectionViewCell(0);
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          v15 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry;
          v16 = *(v13 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
          if (v16)
          {
            sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
            v17 = v6;
            v18 = *(v16 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);

            v19 = v18;
            v4 = static NSObject.== infix(_:_:)();

            v6 = v17;
            if ((v4 & 1) == 0)
            {
              goto LABEL_5;
            }

            v4 = v16;
            v20 = sub_1001FE828(a1);
            if (!v20)
            {
              goto LABEL_5;
            }

            v4 = *(v14 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView);
            v21 = sub_100585338(a1, 1);
            if (v21)
            {
              v28 = v21;

              return v28;
            }

            v22 = *(v14 + v15);
            if (v22 && (v23 = (v22 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset), (v4 = *v23) != 0))
            {
              v24 = v23[1];
              ObjectType = swift_getObjectType();
              v26 = (*(v24 + 80))(ObjectType, v24);
              type metadata accessor for Asset(0);
              v27 = a1;
              v4 = static NSObject.== infix(_:_:)();

              v6 = v17;

              v9 = v33;
              i = v34;
              if (v4)
              {

                v28 = *(v14 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView);
                v29 = v28;

                return v28;
              }
            }

            else
            {
LABEL_5:

              v9 = v33;
              i = v34;
            }
          }
        }

        ++v8;
        if (v12 == i)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_28:
  }

  return 0;
}

void sub_1003054F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v58 = a2;
  v7 = type metadata accessor for JournalFeatureFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD57F0, &qword_100955210);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v15 = Strong, v16 = [Strong isBeingDismissed], v15, (v16 & 1) != 0) || (v17 = swift_unknownObjectWeakLoadStrong()) == 0 || (v18 = v17, v19 = objc_msgSend(v17, "isMovingFromParentViewController"), v18, v19))
  {
    v20 = &v4[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate];
    if (!swift_unknownObjectWeakLoadStrong() || (v21 = *(v20 + 1), ObjectType = swift_getObjectType(), LOBYTE(v21) = (*(v21 + 40))(v4, a1, ObjectType, v21), swift_unknownObjectRelease(), (v21 & 1) != 0))
    {
      v55 = v10;
      v56 = v8;
      v57 = v7;
      if (*(a1 + 40) == 1)
      {
        v23 = *(a1 + 24);
        v24 = swift_allocObject();
        *(v24 + 16) = a1;
        *(v24 + 24) = 1;
        v25 = swift_allocObject();
        *(v25 + 16) = sub_100318E94;
        *(v25 + 24) = v24;
        v63 = sub_100177C4C;
        v64 = v25;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_10001A7D4;
        v62 = &unk_100A671C8;
        v26 = _Block_copy(&aBlock);

        [v23 performBlockAndWait:v26];
        _Block_release(v26);
        LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

        if (v26)
        {
          goto LABEL_32;
        }
      }

      sub_1000082B4(v58, v13, &qword_100AD57F0, &qword_100955210);
      v27 = objc_allocWithZone(type metadata accessor for CanvasViewController(0));

      v29 = sub_100659694(v28, v13);
      *&v29[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate + 8] = &off_100A66DC8;
      swift_unknownObjectWeakAssign();
      if (sub_10054B1CC())
      {
        swift_unknownObjectWeakAssign();
      }

      v30 = [v4 view];
      if (!v30)
      {
        goto LABEL_33;
      }

      v31 = v30;
      v32 = [v30 window];

      if (v32)
      {
        v33 = [v32 windowScene];

        if (v33)
        {
          v34 = [v33 delegate];

          if (v34)
          {
            type metadata accessor for SceneDelegate();
            if (swift_dynamicCastClass())
            {
              swift_unknownObjectWeakAssign();
            }

            swift_unknownObjectRelease();
          }
        }
      }

      swift_unknownObjectWeakAssign();
      v35 = [v4 traitCollection];
      v36 = [v35 userInterfaceIdiom];

      if (v36 != 5)
      {
        v38 = v55;
        v37 = v56;
        v39 = v57;
        (*(v56 + 104))(v55, enum case for JournalFeatureFlags.canvasPush(_:), v57);
        v40 = JournalFeatureFlags.isEnabled.getter();
        (*(v37 + 8))(v38, v39);
        if ((v40 & 1) == 0)
        {
          v44 = [objc_allocWithZone(type metadata accessor for JurassicNavigationController()) initWithRootViewController:v29];
          [v44 setModalInPresentation:1];
          [v44 setModalPresentationStyle:5];
          [v4 presentViewController:v44 animated:a3 & 1 completion:0];
          goto LABEL_27;
        }
      }

      v41 = [v4 viewIfLoaded];
      if (!v41)
      {
        goto LABEL_28;
      }

      v42 = v41;
      v43 = [v41 window];

      if (!v43)
      {
        goto LABEL_28;
      }

      v44 = [v43 rootViewController];

      if (!v44)
      {
        goto LABEL_28;
      }

      type metadata accessor for SceneSplitViewController(0);
      v45 = swift_dynamicCastClass();
      if (!v45)
      {
LABEL_27:

        v29 = v44;
LABEL_28:

        return;
      }

      if (a3)
      {
        [v45 showViewController:v29 sender:v4];
        goto LABEL_27;
      }

      v46 = v45;
      v47 = objc_opt_self();
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v29;
      v48[4] = v4;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_100318E80;
      *(v49 + 24) = v48;
      v63 = sub_100028EF4;
      v64 = v49;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_10001A7D4;
      v62 = &unk_100A67150;
      v50 = _Block_copy(&aBlock);
      v51 = v44;
      v52 = v29;
      v53 = v4;

      [v47 performWithoutAnimation:v50];

      _Block_release(v50);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }
    }
  }
}

void sub_100305C34(uint64_t a1)
{
  v3 = type metadata accessor for SceneSplitViewController.ContentType(0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v19 = [v9 rootViewController];

      if (v19)
      {
        type metadata accessor for SceneSplitViewController(0);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = *(v10 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController);

          v12 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
          (*(*(v12 - 8) + 56))(v6, 2, 2, v12);
          v13 = sub_1000F24EC(&unk_100AD4BA0, &unk_1009435D0);
          (*(*(v13 - 8) + 56))(v6, 0, 2, v13);
          v14 = v11;
          v15 = [v14 parentViewController];

          if (v15)
          {
            while (!swift_dynamicCastClass())
            {
              v16 = v15;
              v15 = [v16 parentViewController];

              if (!v15)
              {
                goto LABEL_13;
              }
            }

            sub_1002E5234(v6, a1);
          }

LABEL_13:
          sub_10002CCF8(0);
          sub_100014124(v6, type metadata accessor for SceneSplitViewController.ContentType);
        }

        else
        {
          v17 = v19;
        }
      }
    }
  }
}

id sub_100305ED0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v15)
  {
    (*(v11 + 56))(v9, 1, 1, v10, v12);
    goto LABEL_8;
  }

  v16 = *(a1 + 32);
  v17 = v15;
  *v6 = [v16 objectID];
  swift_storeEnumTagMultiPayload();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_100014124(v6, type metadata accessor for JournalEntryCollectionViewController.Item);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_8:
    sub_100004F84(v9, &unk_100ADFB90, &qword_1009512D0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v14, v9, v10);
  v18 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v18)
  {
    v19 = v18;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v21 = [v19 cellForItemAtIndexPath:isa];

    if (v21)
    {
      type metadata accessor for JournalEntryCollectionViewCell(0);
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = [v22 contentView];

        (*(v11 + 8))(v14, v10);
        return v23;
      }
    }
  }

  (*(v11 + 8))(v14, v10);
LABEL_11:
  if (*(a1 + 40) == 1)
  {
    v24 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v26 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    v23 = (*(v26 + 80))(v2, ObjectType, v26);
    swift_unknownObjectRelease();
    return v23;
  }

  return 0;
}

double sub_100306248(unint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v3 - 8);
  v5 = (&v25 - v4);
  v6 = type metadata accessor for UUID();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD02B0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v8 = qword_100B30290;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v1;
    v25 = v8;
    v26 = v9;

    if (!v10)
    {
      break;
    }

    v1 = 0;
    v11 = a1 & 0xC000000000000001;
    v31 = (v30 + 48);
    v32 = v5;
    v33 = (v30 + 32);
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = _swiftEmptyArrayStorage;
    v5 = &unk_10093C080;
    v28 = a1 & 0xC000000000000001;
    v29 = v6;
    while (v11)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      v14 = a1;
      v15 = v5;
      v16 = v32;
      sub_1000082B4(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v32, &qword_100AD1420, v15);

      if ((*v31)(v16, 1, v6) == 1)
      {
        sub_100004F84(v16, &qword_100AD1420, v15);
        v5 = v15;
      }

      else
      {
        v17 = v10;
        v18 = *v33;
        (*v33)(v35, v16, v6);
        v19 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100055CEC(0, *(v19 + 2) + 1, 1, v19);
        }

        v5 = v15;
        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_100055CEC((v20 > 1), v21 + 1, 1, v19);
        }

        *(v19 + 2) = v21 + 1;
        v6 = v29;
        v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v36 = v19;
        v18(v19 + v22 + *(v30 + 72) * v21, v35, v29);
        a1 = v14;
        v10 = v17;
        v11 = v28;
      }

      ++v1;
      if (v13 == v10)
      {
        goto LABEL_21;
      }
    }

    if (v1 >= *(v34 + 16))
    {
      goto LABEL_23;
    }

    v12 = *(a1 + 8 * v1 + 32);

    v13 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_21:
  v23 = v25;
  sub_1001A9F04(v36, 1, v27, sub_100318E78, v26);

  return result;
}

double sub_100306630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

  v15 = v5;
  sub_100021E80(a4, a5);
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a1;
  v17[5] = v15;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  sub_1003E9628(0, 0, v13, &unk_10094F3D0, v17);

  return result;
}

void sub_1003067A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (v40 - v9);
  sub_10006DED4();
  sub_1000249D4(&qword_100ADE6B0, type metadata accessor for JournalEntryCollectionViewController.Item, &unk_10094F178);
  v40[1] = v4;
  NSDiffableDataSourceSnapshot.init()();
  sub_1001E4950();
  v11 = sub_1000F24EC(&unk_100AD7CE0, &unk_100946B90);
  v12 = *(NSDiffableDataSourceSnapshot.sectionIdentifiers.getter() + 16);

  v45 = a2;
  sub_100824E50(a2, v12 == 0);
  v46 = v11;
  v47 = a1;
  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v14 = *(v13 + 16);
  v48 = v7;
  if (v14)
  {
    v53 = _swiftEmptyArrayStorage;
    v15 = v13;
    sub_10006EFE0(0, v14, 0);
    v16 = v15;
    v17 = 0;
    v18 = v53;
    v19 = (v15 + 40);
    v51 = v14;
    v52 = v15;
    do
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_45;
      }

      v15 = *(v19 - 1);
      v20 = *v19;
      v53 = v18;
      v22 = *(v18 + 2);
      v21 = *(v18 + 3);

      if (v22 >= v21 >> 1)
      {
        sub_10006EFE0((v21 > 1), v22 + 1, 1);
        v18 = v53;
      }

      v17 = (v17 + 1);
      *(v18 + 2) = v22 + 1;
      v23 = &v18[2 * v22];
      *(v23 + 4) = v15;
      *(v23 + 5) = v20;
      v19 += 2;
      v16 = v52;
      v7 = v48;
    }

    while (v51 != v17);
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v44 = sub_1000F24EC(&unk_100AE92B0, &unk_10094F350);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v18);

  v24 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v43 = *(v24 + 16);
  if (!v43)
  {

    v17 = _swiftEmptyArrayStorage;
LABEL_30:
    v33 = NSDiffableDataSourceSnapshot.reloadedItemIdentifiers.getter();
    v15 = v33;
    if (v33 >> 62)
    {
      goto LABEL_50;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_32;
    }

LABEL_51:

    v36 = _swiftEmptyArrayStorage;
LABEL_52:
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v36);

    return;
  }

  v15 = 0;
  v42 = v24 + 32;
  v17 = _swiftEmptyArrayStorage;
  v41 = v24;
  while (1)
  {
    if (v15 >= *(v24 + 16))
    {
      goto LABEL_46;
    }

    v51 = v15;
    v25 = (v42 + 16 * v15);
    v26 = *v25;
    v15 = v25[1];
    v53 = *v25;
    v54 = v15;

    v27 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v28 = v27;
    if (!(v27 >> 62))
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v49 = v26;
      v50 = v15;
      if (v29)
      {
        break;
      }

      goto LABEL_27;
    }

    v29 = _CocoaArrayWrapper.endIndex.getter();
    v49 = v26;
    v50 = v15;
    if (v29)
    {
      break;
    }

LABEL_27:

LABEL_11:
    v15 = v51 + 1;
    v53 = v49;
    v54 = v50;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v24 = v41;
    if (v15 == v43)
    {

      goto LABEL_30;
    }
  }

  v53 = _swiftEmptyArrayStorage;
  sub_10006F108(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
    goto LABEL_47;
  }

  v7 = 0;
  v30 = v53;
  v17 = (v28 & 0xC000000000000001);
  v52 = v28 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v17)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
      *v10 = v31;
      swift_storeEnumTagMultiPayload();
      v53 = v30;
      v15 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v15 >= v32 >> 1)
      {
        sub_10006F108((v32 > 1), v15 + 1, 1);
        v30 = v53;
      }

      v7 = (v7 + 1);
      *(v30 + 2) = v15 + 1;
      sub_10031894C(v10, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for JournalEntryCollectionViewController.Item);
      if (v29 == v7)
      {

        v7 = v48;
        v17 = _swiftEmptyArrayStorage;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7 >= *(v52 + 16))
    {
      goto LABEL_44;
    }

    v31 = *(v28 + 8 * v7 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v34 = _CocoaArrayWrapper.endIndex.getter();
  if (!v34)
  {
    goto LABEL_51;
  }

LABEL_32:
  v53 = v17;
  sub_10006F108(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v36 = v53;
    v52 = v15 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        if (v35 >= *(v52 + 16))
        {
          goto LABEL_49;
        }

        v37 = *(v15 + 8 * v35 + 32);
      }

      *v7 = v37;
      swift_storeEnumTagMultiPayload();
      v53 = v36;
      v17 = v7;
      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_10006F108((v38 > 1), v39 + 1, 1);
        v36 = v53;
      }

      ++v35;
      *(v36 + 2) = v39 + 1;
      sub_10031894C(v17, v36 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39, type metadata accessor for JournalEntryCollectionViewController.Item);
      v7 = v17;
    }

    while (v34 != v35);

    goto LABEL_52;
  }

  __break(1u);
}

Swift::Int sub_100306DDC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = 4;
        goto LABEL_15;
      case 4:
        v3 = 5;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        Hasher._combine(_:)(v3);
        return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(3uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100306EC0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001008EA9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001008EAA10 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_100306FA4(uint64_t a1)
{
  v2 = sub_100024E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100306FE0(uint64_t a1)
{
  v2 = sub_100024E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030701C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  swift_beginAccess();
  return sub_1000082B4(v1 + v3, a1, &unk_100ADE540, &qword_10094F2E8);
}

double sub_100307084(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(a1, v1 + v3, &unk_100ADE540, &qword_10094F2E8);
  swift_endAccess();
  return result;
}

void sub_100307154(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        goto LABEL_17;
      case 4:
        v3 = 5;
        goto LABEL_17;
      case 5:
        v3 = 6;
        goto LABEL_17;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 1;
        goto LABEL_17;
      case 2:
        v3 = 2;
LABEL_17:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(3uLL);

  String.hash(into:)();
}

Swift::Int sub_100307224(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        goto LABEL_15;
      case 4:
        v3 = 5;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        Hasher._combine(_:)(v3);
        return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(3uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100307304(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10006F6CC(v2);
  return Hasher._finalize()();
}

uint64_t sub_100307390(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *(v2 + v3) = v4;
  v5 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions) = &off_100A58A50;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_originY) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay) = 1;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations) = 0;
  v6 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
  v41 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
  v38 = v3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 56);
  v8(v2 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
  v40 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive) = 0;
  v37 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_prefetcher) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel) = 0;
  v39 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView) = 0;
  v11 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_fadeView;
  v36 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_fadeView;
  type metadata accessor for FadingView();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = v4;
  *(v2 + v11) = [v12 init];
  v14 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_timelineGradientView;
  v34 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_timelineGradientView;
  type metadata accessor for TimelineGradientView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentSelectedCell;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentSelectedCell) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialYOffset) = 0;
  v15 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tip;
  v33 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tip;
  v16 = type metadata accessor for AnyTip();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  v17 = (v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tipActionHandler);
  *v17 = DebugData.init(name:);
  v17[1] = 0;
  v32 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection;
  v8(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection, 1, 1, v7);
  v18 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackShiftCommand;
  v31 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackShiftCommand;
  sub_1000065A8(0, &qword_100AE4350, UIKeyCommand_ptr);
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100941D50;
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() alternateWithTitle:v20 action:"focusCell:" modifierFlags:0x40000];

  *(v19 + 32) = v21;
  *(v2 + v18) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v22 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_moveFocusBackCtrlCommand;
  *(v2 + v22) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v23 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_focusCommand;
  v24 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();

  *(v2 + v23) = v24;
  v25 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest;
  *v25 = 0;
  *(v25 + 8) = 0;
  v26 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_stateToRestore;
  v27 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  (*(*(v27 - 8) + 56))(v2 + v26, 1, 1, v27);
  v28 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask) = 0;
  v29 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) = 0;

  sub_100038534(v5);
  swift_unknownObjectWeakDestroy();

  sub_100004F84(v2 + v41, &unk_100ADFB90, &qword_1009512D0);
  sub_100004F84(v2 + v40, &unk_100AD4790, &unk_10093B4E0);

  sub_100004F84(v2 + v33, &qword_100ADE628, &qword_10094F390);

  sub_100004F84(v2 + v32, &unk_100ADFB90, &qword_1009512D0);

  sub_100004F84(v2 + v26, &unk_100ADE540, &qword_10094F2E8);
  sub_100038534(v28);

  type metadata accessor for JournalEntryCollectionViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100307AA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1004FC46C();
  }
}

void sub_100307AFC(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v78 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  __chkstk_darwin(v14);
  v17 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v17)
  {
    v83 = v16;
    v78 = &v78 - v15;
    sub_1000082B4(a1, v5, &unk_100ADFB90, &qword_1009512D0);
    v18 = (*(v7 + 48))(v5, 1, v6);
    v88 = v7;
    if (v18 == 1)
    {
      v19 = v17;
      sub_100004F84(v5, &unk_100ADFB90, &qword_1009512D0);
      v80 = v19;
      v20 = [v19 visibleCells];
      sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = _swiftEmptyArrayStorage;
      v22 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v21 >> 62)
      {
        goto LABEL_53;
      }

      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v85 = v9;
      if (!v23)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v24 = 0;
        v81 = _swiftEmptyArrayStorage;
        do
        {
          v25 = v24;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v25 >= *(v22 + 16))
              {
                goto LABEL_51;
              }

              v26 = *(v21 + 8 * v25 + 32);
            }

            v27 = v26;
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
              goto LABEL_50;
            }

            type metadata accessor for JournalEntryCollectionViewCell(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v25;
            if (v24 == v23)
            {
              goto LABEL_55;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v81 = v92;
        }

        while (v24 != v23);
LABEL_55:
        while (2)
        {

          if (v81 >> 62)
          {
            v57 = _CocoaArrayWrapper.endIndex.getter();
            v21 = v88;
            if (!v57)
            {
LABEL_78:

              return;
            }
          }

          else
          {
            v57 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v21 = v88;
            if (!v57)
            {
              goto LABEL_78;
            }
          }

          v58 = 0;
          v59 = v81 & 0xC000000000000001;
          v60 = v81 & 0xFFFFFFFFFFFFFF8;
          v61 = v81 + 32;
          v62 = (v21 + 8);
          v83 = v81 & 0xC000000000000001;
          v84 = v57;
          v86 = (v81 + 32);
          v87 = v81 & 0xFFFFFFFFFFFFFF8;
          v82 = (v21 + 16);
          while (1)
          {
            if (v59)
            {
              v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v58 >= *(v60 + 16))
              {
                goto LABEL_74;
              }

              v64 = *(v61 + 8 * v58);
            }

            v65 = v64;
            v45 = __OFADD__(v58++, 1);
            if (v45)
            {
              break;
            }

            v66 = *(*&v64[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
            if (v66)
            {
              v63 = v66;
              v67 = [v63 indexPathsForSelectedItems];
              if (v67)
              {
                v68 = v67;
                v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v70 = v69;
                v71 = *(v69 + 16);
                if (v71)
                {
                  v90 = v65;
                  v91 = v58;
                  v72 = (*(v21 + 80) + 32) & ~*(v21 + 80);
                  v89 = v70;
                  v73 = v70 + v72;
                  v74 = *(v21 + 72);
                  v75 = *(v21 + 16);
                  v76 = v85;
                  do
                  {
                    v75(v76, v73, v6);
                    isa = IndexPath._bridgeToObjectiveC()().super.isa;
                    [v63 deselectItemAtIndexPath:isa animated:0];

                    (*v62)(v76, v6);
                    v73 += v74;
                    --v71;
                  }

                  while (v71);

                  v63 = v90;
                  v58 = v91;
                  v60 = v87;
                  v21 = v88;
                  v59 = v83;
                  v57 = v84;
                  v61 = v86;
                }

                else
                {

                  v63 = v65;
                  v61 = v86;
                  v60 = v87;
                }
              }

              else
              {
              }
            }

            else
            {
              v63 = v64;
            }

            if (v58 == v57)
            {
              goto LABEL_78;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          if (!v9)
          {
            goto LABEL_76;
          }

LABEL_33:
          v40 = 0;
          v22 = v87 & 0xC000000000000001;
          v41 = (v87 & 0xFFFFFFFFFFFFFF8);
          v42 = v87 + 32;
          v79 = (v88 + 8);
          v80 = (v87 & 0xFFFFFFFFFFFFFF8);
          v81 = v87 & 0xC000000000000001;
          v82 = v9;
          v84 = v87 + 32;
          v91 = v88 + 16;
          while (1)
          {
            if (v22)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v40 >= v41[2])
              {
                goto LABEL_52;
              }

              v44 = *(v42 + 8 * v40);
            }

            v21 = v44;
            v45 = __OFADD__(v40++, 1);
            if (v45)
            {
              break;
            }

            v46 = *(*&v44[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
            if (v46)
            {
              v43 = v46;
              v47 = [v43 indexPathsForSelectedItems];
              if (v47)
              {
                v89 = v40;
                v48 = v47;
                v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v50 = *(v49 + 16);
                if (v50)
                {
                  v85 = v49;
                  v86 = v21;
                  v51 = v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
                  v52 = *(v88 + 72);
                  v53 = *(v88 + 16);
                  v54 = v43;
                  v55 = v79;
                  v21 = v83;
                  do
                  {
                    v53(v21, v51, v6);
                    v56 = IndexPath._bridgeToObjectiveC()().super.isa;
                    [v54 deselectItemAtIndexPath:v56 animated:0];

                    (*v55)(v21, v6);
                    v51 += v52;
                    --v50;
                  }

                  while (v50);

                  v43 = v86;
                  v22 = v81;
                  v9 = v82;
                  v41 = v80;
                  v42 = v84;
                  v40 = v89;
                }

                else
                {

                  v43 = v21;
                  v42 = v84;
                  v40 = v89;
                }
              }

              else
              {
              }
            }

            else
            {
              v43 = v44;
            }

            if (v40 == v9)
            {
              goto LABEL_76;
            }
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v23 = _CocoaArrayWrapper.endIndex.getter();
          v85 = v9;
          if (!v23)
          {
LABEL_54:
            v81 = _swiftEmptyArrayStorage;
            continue;
          }

          break;
        }
      }
    }

    v21 = v78;
    (*(v7 + 32))(v78, v5, v6);
    v90 = v17;
    v28 = [v90 indexPathsForVisibleItems];
    v91 = v6;
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v30);
    *(&v78 - 2) = v21;
    sub_100778548(sub_1003181E4, (&v78 - 4), v29);
    v92 = _swiftEmptyArrayStorage;
    v32 = *(v31 + 16);
    if (v32)
    {
      v21 = v7 + 16;
      v33 = *(v7 + 16);
      v34 = *(v7 + 80);
      v89 = v31;
      v35 = v31 + ((v34 + 32) & ~v34);
      v36 = *(v21 + 56);
      v87 = _swiftEmptyArrayStorage;
      v6 = v91;
      v33(v13, v35, v91);
      while (1)
      {
        v37 = IndexPath._bridgeToObjectiveC()().super.isa;
        v38 = [v90 cellForItemAtIndexPath:v37];

        (*(v21 - 8))(v13, v6);
        if (v38)
        {
          type metadata accessor for JournalEntryCollectionViewCell(0);
          if (swift_dynamicCastClass())
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v6 = v91;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v87 = v92;
          }

          else
          {
          }
        }

        v35 += v36;
        if (!--v32)
        {
          break;
        }

        v33(v13, v35, v6);
      }

      v39 = v87;
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
      v6 = v91;
    }

    v87 = v39;
    if (v39 >> 62)
    {
      goto LABEL_75;
    }

    v9 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_33;
    }

LABEL_76:

    (*(v88 + 8))(v78, v6);
  }
}

id sub_1003084B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7(v6);

  (*(v4 + 8))(v6, v3);

  return v8;
}

uint64_t sub_1003085BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = a3(a1);

  return v7;
}

void *sub_10030863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000F24EC(&qword_100ADE628, &qword_10094F390);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for AnyTip();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1000082B4(result + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_tip, v6, &qword_100ADE628, &qword_10094F390);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_100004F84(v6, &qword_100ADE628, &qword_10094F390);
    }

    else
    {
      v13 = (*(v8 + 32))(v10, v6, v7);
      __chkstk_darwin(v13);
      v14[-2] = v10;
      v14[-1] = v12;
      v14[3] = sub_1000F24EC(&qword_100ADE630, &qword_10094F398);
      v14[4] = sub_10000B58C(&qword_100ADE638, &qword_100ADE630, &qword_10094F398, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001A770(v14);
      sub_1000F24EC(&qword_100ADE640, &qword_10094F3A0);
      sub_100318C58();
      UIHostingConfiguration<>.init(content:)();
      UICollectionViewCell.contentConfiguration.setter();

      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

double sub_1003088E8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADE660, &unk_10094F3B0);
  __chkstk_darwin(v8);
  v10 = (v30 - v9);
  v11 = sub_1000F24EC(&qword_100ADE650, &qword_10094F3A8);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for AnyTip();
  v36[3] = v14;
  v36[4] = sub_1000249D4(&qword_100ADE668, &type metadata accessor for AnyTip, &protocol conformance descriptor for AnyTip);
  v15 = sub_10001A770(v36);
  (*(*(v14 - 8) + 16))(v15, a1, v14);

  TipView.init<>(_:isPresented:arrowEdge:action:)();
  if (qword_100AD0CC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000617C(v4, qword_100B31550);
  v17 = *(v5 + 16);
  v30[1] = v5 + 16;
  v32 = v17;
  v17(v7, v16, v4);
  v18 = Color.init(_:)();
  v31 = v7;
  v19 = v4;
  v20 = *(v8 + 36);
  v21 = enum case for BlendMode.normal(_:);
  v22 = type metadata accessor for BlendMode();
  v23 = *(*(v22 - 8) + 104);
  v23(v10 + v20, v21, v22);
  v23(v10 + *(v8 + 40), enum case for BlendMode.plusLighter(_:), v22);
  *v10 = v18;
  sub_10000B58C(&unk_100ADE670, &qword_100ADE660, &unk_10094F3B0, &unk_10095EF20);
  v36[0] = AnyShapeStyle.init<A>(_:)();
  sub_10000B58C(&qword_100ADE658, &qword_100ADE650, &qword_10094F3A8, &protocol conformance descriptor for TipView<A>);
  v25 = v34;
  v24 = v35;
  View.tipBackground<A>(_:)();

  (*(v33 + 8))(v13, v25);
  if (qword_100AD0CC8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000617C(v19, qword_100B31568);
  v32(v31, v26, v19);
  v27 = Color.init(_:)();
  v28 = v24 + *(sub_1000F24EC(&qword_100ADE640, &qword_10094F3A0) + 36);
  *v28 = v27;
  result = 16.0;
  *(v28 + 8) = xmmword_10094EF00;
  *(v28 + 24) = 0x4000000000000000;
  return result;
}

void sub_100308D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((swift_isaMask & *Strong) + 0x368))();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem);
  *(a1 + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem) = v7;
  v9 = v7;
  sub_100108470(v8);
}

uint64_t sub_100308E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000140BC(a3, v10, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *&v21 = *v10;
      v13 = v21;
      type metadata accessor for JournalEntryCollectionViewCell(0);
      sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
      v14 = v13;
      v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    }

    else if (EnumCaseMultiPayload == 6)
    {
      LOBYTE(v21) = 0;
      type metadata accessor for MacLargeTitleCollectionViewCell();
      return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    }

    else
    {
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000617C(v16, qword_100B2F718);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unhandled cell type", v19, 2u);
      }

      v21 = xmmword_100943C10;
      sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
      v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_100014124(v10, type metadata accessor for JournalEntryCollectionViewController.Item);
    }
  }

  else
  {
    v15 = v10[1];
    *&v21 = *v10;
    *(&v21 + 1) = v15;
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
    v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  return v12;
}

double sub_10030915C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000AB4D8(a4);

    if (v10)
    {

      UICollectionViewCell.configurationUpdateHandler.setter();
      v11 = UIAccessibilityTraitHeader;
      v12 = [a1 accessibilityTraits];
      if ((v11 & ~v12) != 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      [a1 setAccessibilityTraits:v13 | v12];
      [a1 setAccessibilityRespondsToUserInteraction:0];
    }
  }

  return result;
}

uint64_t sub_10030924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v46 = a1;
  v45 = type metadata accessor for Date();
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v39 - v6;
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = UICellConfigurationState.traitCollection.getter();
  v18 = sub_10002E3AC();

  sub_10023DEC0(v18, v50);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v19 = type metadata accessor for UICellConfigurationState();
  v48 = v19;
  v49 = &protocol witness table for UICellConfigurationState;
  v20 = sub_10001A770(v47);
  (*(*(v19 - 8) + 16))(v20, a2, v19);
  UIListContentConfiguration.updated(for:)();
  v21 = *(v8 + 8);
  v39 = v8 + 8;
  v41 = v21;
  v21(v10, v7);
  sub_10000BA7C(v47);
  v22 = UICellConfigurationState.traitCollection.getter();
  v23 = [v22 userInterfaceIdiom];

  v24 = &UIFontTextStyleTitle2;
  if (v23 != 5)
  {
    v24 = &UIFontTextStyleTitle3;
  }

  v25 = *v24;
  sub_100047788(v25, &off_100A58A78, 0);

  sub_100047D60(&unk_100A58A98);
  v26 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v26(v47, 0);
  v27 = [objc_opt_self() labelColor];
  v28 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v28(v47, 0);
  NSDirectionalEdgeInsets.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  v29 = v16;
  (*(v8 + 32))(v16, v13, v7);
  v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate;
  v31 = v44;
  swift_beginAccess();
  v32 = v40;
  v33 = v42;
  v34 = v45;
  (*(v40 + 16))(v42, v31 + v30, v45);
  v35 = v43;
  Date.init()();
  sub_10005EBBC(v35);
  v36 = *(v32 + 8);
  v36(v35, v34);
  v36(v33, v34);
  UIListContentConfiguration.text.setter();
  v48 = v7;
  v49 = &protocol witness table for UIListContentConfiguration;
  v37 = sub_10001A770(v47);
  (*(v8 + 16))(v37, v29, v7);
  UICollectionViewCell.contentConfiguration.setter();
  return v41(v29, v7);
}

void sub_10030971C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
    v10 = Strong;
    v11 = v9;

    if (v9)
    {
      v19 = DebugData.init(name:);
      v20 = 0;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10001A7D4;
      v18 = &unk_100A67330;
      v12 = _Block_copy(&aBlock);

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      *(v13 + 32) = a3 & 1;
      *(v13 + 33) = a4 & 1;
      v19 = sub_100318FD4;
      v20 = v13;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10003264C;
      v18 = &unk_100A67380;
      v14 = _Block_copy(&aBlock);

      [v11 performBatchUpdates:v12 completion:v14];
      _Block_release(v14);
      _Block_release(v12);
    }
  }
}

void sub_1003098E0(char a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1003042F4(a3, a4 & 1, a5 & 1);
    }
  }
}

void sub_100309960(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *&Strong[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
      if (v6)
      {
        v26 = Strong;
        v25 = v6;
        v7 = [v25 visibleCells];
        sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
        v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = a4;
        if (v8 >> 62)
        {
          goto LABEL_19;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v10 = 0;
          v28 = OBJC_IVAR____TtC7Journal14EntryViewModel_id;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_18;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            type metadata accessor for JournalEntryCollectionViewCell(0);
            v14 = swift_dynamicCastClass();
            if (v14)
            {
              v15 = *(v14 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
              if (v15)
              {
                v16 = *(v15 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
                v17 = *(a3 + v28);
                sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
                v18 = v16;
                v19 = v17;
                v20 = static NSObject.== infix(_:_:)();

                if (v20)
                {

                  sub_10005A9EC(v21);

                  Strong = v25;
                  a4 = v27;
                  goto LABEL_21;
                }
              }
            }

            ++v10;
            if (v13 == i)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          ;
        }

LABEL_20:

        a4 = v27;
        Strong = v26;
      }

LABEL_21:
    }

    v22 = UIAccessibilityScreenChangedNotification;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [a4 cellForItemAtIndexPath:isa];

    UIAccessibilityPostNotification(v22, v24);
  }
}

void sub_100309C04(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a3;
  *(v13 + 32) = a1;
  v22 = sub_100318398;
  v23 = v13;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100006C7C;
  v21 = &unk_100A66F98;
  v14 = _Block_copy(&aBlock);
  v15 = a3;

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v22 = sub_1003183A4;
  v23 = v16;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10003264C;
  v21 = &unk_100A66FE8;
  v17 = _Block_copy(&aBlock);

  [v10 animateWithDuration:0 delay:v14 options:v17 animations:v9 completion:0.0];
  _Block_release(v17);
  _Block_release(v14);
}

void sub_100309E10(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_originY);
    v7 = Strong;
    [a2 setContentOffset:a3 & 1 animated:{0.0, v6}];
    [a2 setContentOffset:a3 & 1 animated:{0.0, v6}];
  }
}

void sub_100309EB8(uint64_t a1, uint8_t *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v127 = a5;
  v128 = a4;
  v7 = sub_1000F24EC(&unk_100AE92B0, &unk_10094F350);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v112 - v9;
  v133 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v133);
  v132 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v12 - 8);
  v131 = &v112 - v13;
  v134 = type metadata accessor for IndexPath();
  v14 = *(v134 - 8);
  __chkstk_darwin(v134);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v112 - v18;
  v135 = type metadata accessor for IndexSet();
  v126 = *(v135 - 8);
  __chkstk_darwin(v135);
  v129 = (&v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v125 = &v112 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  p_superclass = *&Strong[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel];
  if (!p_superclass || (v137 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView, (v25 = *&Strong[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView]) == 0))
  {

LABEL_20:
    (a2)();
    return;
  }

  v116 = v19;
  v113 = v10;
  v114 = v8;
  v115 = v7;
  v26 = Strong;
  v140 = _swiftEmptyArrayStorage;
  v27 = v25;

  v28 = [v27 visibleCells];
  sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v29 >> 62)
  {
    goto LABEL_103;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v121 = a2;
  v120 = a3;
  v123 = p_superclass;
  v118 = v14;
  v117 = v16;
  v31 = &v141;
  v122 = v27;
  if (v30)
  {
    if (v30 < 1)
    {
      __break(1u);
LABEL_105:
      v27 = sub_1003E5898((v31 > 1), v29, 1, v27);
      goto LABEL_24;
    }

    v32 = 0;
    v136 = _swiftEmptyArrayStorage;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v29 + 8 * v32 + 32);
      }

      v34 = v33;
      type metadata accessor for JournalEntryCollectionViewCell(0);
      v35 = swift_dynamicCastClass();
      if (v35 && *(v35 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry))
      {
        swift_retain_n();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v122;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v136 = v140;
      }

      else
      {
      }

      ++v32;
    }

    while (v30 != v32);
  }

  else
  {
    v136 = _swiftEmptyArrayStorage;
  }

  v140 = v136;
  a2 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations;
  v130 = v26;
  *(v26 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations) = 1;
  p_superclass = _TtC7Journal11Application.superclass;
  a3 = v128;
  v119 = a2;
  if (!v128)
  {
    v27 = _swiftEmptyArrayStorage;
    v14 = v135;
    v16 = v129;
    v42 = v127;
    v43 = v127[2];
    if (!v43)
    {
      goto LABEL_63;
    }

    goto LABEL_31;
  }

  v27 = sub_1003E5898(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v27 + 16);
  v31 = *(v27 + 24);
  v29 = v28 + 1;
  v14 = v135;
  v16 = v129;
  if (v28 >= v31 >> 1)
  {
    goto LABEL_105;
  }

LABEL_24:
  *(v27 + 16) = v29;
  v37 = v27 + 24 * v28;
  *(v37 + 32) = 514;
  *(v37 + 40) = 0;
  *(v37 + 48) = a3;
  if (p_superclass[383] != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000617C(v38, qword_100B2F718);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v127;
  if (v41)
  {
    a2 = swift_slowAlloc();
    *a2 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Filtering limited by Search or Insights", a2, 2u);
  }

  v43 = v42[2];
  if (v43)
  {
LABEL_31:
    v44 = (v42 + 4);
    *&v36 = 136315138;
    v124 = v36;
    do
    {
      v46 = *v44++;
      v45 = v46;
      if (!v46)
      {
        goto LABEL_34;
      }

      if (v45 == 11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1003E5898(0, *(v27 + 16) + 1, 1, v27);
        }

        v57 = *(v27 + 16);
        v56 = *(v27 + 24);
        if (v57 >= v56 >> 1)
        {
          v27 = sub_1003E5898((v56 > 1), v57 + 1, 1, v27);
        }

        *(v27 + 16) = v57 + 1;
        v58 = v27 + 24 * v57;
        *(v58 + 32) = 258;
        *(v58 + 40) = 0;
        *(v58 + 48) = 0;
        if (p_superclass[383] != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000617C(v59, qword_100B2F718);
        v51 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v51, v60))
        {
          goto LABEL_33;
        }

        a2 = swift_slowAlloc();
        *a2 = 0;
        v53 = v60;
        v54 = v51;
        v55 = "Filtering by textOnly";
      }

      else
      {
        if (v45 != 1)
        {
          v61 = sub_10032CF44(v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1003E5898(0, *(v27 + 16) + 1, 1, v27);
          }

          v63 = *(v27 + 16);
          v62 = *(v27 + 24);
          a2 = (v63 + 1);
          if (v63 >= v62 >> 1)
          {
            v27 = sub_1003E5898((v62 > 1), v63 + 1, 1, v27);
          }

          *(v27 + 16) = a2;
          v64 = v27 + 24 * v63;
          *(v64 + 32) = 514;
          *(v64 + 40) = v61;
          *(v64 + 48) = 0;
          if (p_superclass[383] != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_10000617C(v65, qword_100B2F718);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            v139 = a2;
            *v68 = v124;
            sub_10032CF44(v45);
            type metadata accessor for AssetType();
            v69 = Array.description.getter();
            v70 = v27;
            v72 = v71;

            v73 = sub_100008458(v69, v72, &v139);
            v27 = v70;
            v16 = v129;
            v14 = v135;

            *(v68 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v66, v67, "Filtering by types: %s", v68, 0xCu);
            sub_10000BA7C(a2);
          }

          p_superclass = (_TtC7Journal11Application + 8);
          goto LABEL_34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1003E5898(0, *(v27 + 16) + 1, 1, v27);
        }

        v48 = *(v27 + 16);
        v47 = *(v27 + 24);
        if (v48 >= v47 >> 1)
        {
          v27 = sub_1003E5898((v47 > 1), v48 + 1, 1, v27);
        }

        *(v27 + 16) = v48 + 1;
        v49 = v27 + 24 * v48;
        *(v49 + 32) = 513;
        *(v49 + 40) = 0;
        *(v49 + 48) = 0;
        if (p_superclass[383] != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000617C(v50, qword_100B2F718);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_33;
        }

        a2 = swift_slowAlloc();
        *a2 = 0;
        v53 = v52;
        v54 = v51;
        v55 = "Filtering by Bookmarked";
      }

      _os_log_impl(&_mh_execute_header, v54, v53, v55, a2, 2u);

LABEL_33:

LABEL_34:
      --v43;
    }

    while (v43);
  }

LABEL_63:
  if (*(v27 + 16))
  {
    sub_1004841FC(v27);
    v26 = v130;
    v74 = v128;
  }

  else
  {
    sub_1004841FC(_swiftEmptyArrayStorage);
    v26 = v130;
    v74 = v128;
    if (p_superclass[383] != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000617C(v75, qword_100B2F718);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      a2 = swift_slowAlloc();
      *a2 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Filter cleared.", a2, 2u);
    }
  }

  *(v26 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions) = v127;

  *(v26 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds) = v74;

  v29 = "contentOffset";
  v78 = v122;
  [v78 contentOffset];
  v80 = v79;
  [v78 adjustedContentInset];
  v82 = v81;

  if (v80 + v82 > 0.0)
  {
    if (v136 >> 62)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
      if (v100 < -1)
      {
        __break(1u);
        goto LABEL_108;
      }

      v29 = v100 / 2;
      v16 = v129;
      v26 = v130;
      v14 = v135;
    }

    else
    {
      v29 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >> 1;
    }

    sub_1000249D4(&unk_100ADE5C0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    dispatch thunk of SetAlgebra.init()();
    v83 = 0;
    while (1)
    {
      v138 = v83;
      dispatch thunk of SetAlgebra.insert(_:)();
      if (v29 == v83)
      {
        break;
      }

      v84 = __OFADD__(v83++, 1);
      if (v84)
      {
        __break(1u);
        goto LABEL_78;
      }
    }

    v127 = v78;
    v128 = v27;
    v87 = v125;
    v86 = v126;
    (*(v126 + 32))(v125, v16, v14);
    a2 = &qword_1009497B8;
    sub_1000F24EC(&qword_100AD9E88, &qword_1009497B8);
    sub_10000B58C(&unk_100ADE5D0, &qword_100AD9E88, &qword_1009497B8, &protocol conformance descriptor for [A]);
    MutableCollection.move(fromOffsets:toOffset:)();
    (*(v86 + 8))(v87, v14);
    v16 = v140;
    if (!(v140 >> 62))
    {
      v27 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v137;
      if (v27)
      {
LABEL_81:
        a3 = v16 & 0xC000000000000001;
        v135 = v16 + 32;
        v136 = v16 & 0xFFFFFFFFFFFFFF8;
        v129 = (v118 + 48);
        p_superclass = &selRef_initWithName_managedObjectModel_;
        while (1)
        {
          v84 = __OFSUB__(v27--, 1);
          if (v84)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            v30 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_6;
          }

          if (a3)
          {
            v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v89 = *(v26 + v28);
            if (!v89)
            {
              goto LABEL_82;
            }
          }

          else
          {
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_101;
            }

            if (v27 >= *(v136 + 16))
            {
              goto LABEL_102;
            }

            v88 = *(v135 + 8 * v27);

            v89 = *(v26 + v28);
            if (!v89)
            {
LABEL_82:

              goto LABEL_83;
            }
          }

          v29 = v89;
          v90 = [v29 dataSource];
          if (v90)
          {
            a2 = v90;
            sub_1000F24EC(&unk_100AD7CC0, &unk_100946BF0);
            if (swift_dynamicCastClass())
            {
              v91 = *(v88 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
              v14 = v132;
              *v132 = v91;
              swift_storeEnumTagMultiPayload();
              v92 = v91;
              v93 = v131;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
              swift_unknownObjectRelease();

              sub_100014124(v14, type metadata accessor for JournalEntryCollectionViewController.Item);
              if ((*v129)(v93, 1, v134) != 1)
              {
                v94 = v118;
                v95 = v116;
                v96 = v134;
                (*(v118 + 32))(v116, v93, v134);
                IndexPath.row.getter();
                IndexPath.section.getter();
                v97 = v117;
                IndexPath.init(row:section:)();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                [v29 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];

                v99 = *(v94 + 8);
                v99(v97, v96);
                v99(v95, v96);

                v85 = v121;
                v26 = v130;
                goto LABEL_98;
              }

              sub_100004F84(v93, &unk_100ADFB90, &qword_1009512D0);
              v26 = v130;
              v28 = v137;
            }

            else
            {

              swift_unknownObjectRelease();
              v28 = v137;
            }
          }

          else
          {
          }

LABEL_83:
          if (!v27)
          {
            goto LABEL_109;
          }
        }
      }

      goto LABEL_109;
    }

LABEL_108:
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v137;
    if (v27)
    {
      goto LABEL_81;
    }

LABEL_109:
    v101 = *(v26 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v101)
    {
      v102 = v101;
      v103 = v113;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v104 = v115;
      v105 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v114 + 8))(v103, v104);
      v106 = *(v105 + 16);
      v85 = v121;
      v78 = v127;
      if (v106)
      {
        v107 = 0;
        v108 = 40;
        while (*(v105 + v108) == 2)
        {
          ++v107;
          v108 += 16;
          if (v106 == v107)
          {
            goto LABEL_114;
          }
        }

        sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_100940080;
        *(v109 + 32) = v107;
        v110 = v117;
        IndexPath.init(arrayLiteral:)();
        v111 = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v118 + 8))(v110, v134);
        [v78 scrollToItemAtIndexPath:v111 atScrollPosition:1 animated:0];
      }

      else
      {
LABEL_114:
      }
    }

    else
    {

      v85 = v121;
LABEL_98:
      v78 = v127;
    }

    goto LABEL_99;
  }

LABEL_78:

  v85 = v121;
LABEL_99:
  v119[v26] = 0;
  sub_1004FC46C();
  v85();
}

void sub_10030B10C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v2 + 8);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 96))(ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

char *sub_10030B1AC()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0, &qword_10095DA10);
  __chkstk_darwin(v1 - 8);
  v3 = (&v31 - v2);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v9)
  {
    v10 = [v9 indexPathsForSelectedItems];
    if (v10)
    {
      v11 = v10;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = *(v12 + 2);
  v37 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v38 = _swiftEmptyArrayStorage;
  v34 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  result = v0;
  v15 = result;
  if (v13)
  {
    v16 = 0;
    v35 = v0;
    v36 = v5 + 16;
    v17 = (v5 + 8);
    v31 = v13 - 1;
    v32 = result;
    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      v18 = v16;
      v19 = v35;
      while (1)
      {
        if (v18 >= *(v12 + 2))
        {
          __break(1u);
          return result;
        }

        (*(v5 + 16))(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v4);
        v21 = *&v19[v37];
        if (v21)
        {
          break;
        }

        v20 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
        (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
LABEL_10:
        sub_100004F84(v3, &unk_100AD7CB0, &qword_10095DA10);
LABEL_11:
        ++v18;
        result = (*v17)(v8, v4);
        if (v13 == v18)
        {
          v15 = v32;
          goto LABEL_28;
        }
      }

      v22 = v21;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v23 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      if ((*(*(v23 - 8) + 48))(v3, 1, v23) == 1)
      {
        goto LABEL_10;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100014124(v3, type metadata accessor for JournalEntryCollectionViewController.Item);
        goto LABEL_11;
      }

      v24 = v19;
      v25 = *v3;
      v26 = [*&v24[v34] objectWithID:*v3];

      type metadata accessor for JournalEntryMO();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {

        v19 = v35;
        goto LABEL_11;
      }

      v28 = v27;
      v29 = [v27 managedObjectContext];
      if (!v29)
      {
        v29 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel(0);
      swift_allocObject();
      v33 = sub_100035ADC(v28, 0, 0, v29);
      (*v17)(v8, v4);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v16 = v18 + 1;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v38;
      v30 = v31 == v18;
      v15 = v32;
      if (v30)
      {
        goto LABEL_28;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_28:

  return v33;
}

void sub_10030B630(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v4 = Strong;
      v5 = &Strong[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        (*(v6 + 96))(ObjectType, v6);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10030B830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v15;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for JournalFeatureFlags();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for MainActor();
  v8[17] = static MainActor.shared.getter();
  v8[18] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v11;
  v8[20] = v12;

  return _swift_task_switch(sub_10030B9E0, v11, v12);
}

uint64_t sub_10030B9E0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {

    *(v0 + 289) = 1;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 192) = v4;
    *(v0 + 200) = v5;

    return _swift_task_switch(sub_10030BE64, v4, v5);
  }

  else
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v12 = *(v0 + 24);
    v8 = static MainActor.shared.getter();
    *(v0 + 168) = v8;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *(v9 + 16) = v12;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_10030BC1C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 288, v8, &protocol witness table for MainActor, 0xD000000000000052, 0x80000001008E0D50, sub_10015CCBC, v9, &type metadata for Bool);
  }
}

uint64_t sub_10030BC1C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10030BDB0, v3, v2);
}

uint64_t sub_10030BDB0()
{

  *(v0 + 289) = *(v0 + 288);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;

  return _swift_task_switch(sub_10030BE64, v1, v2);
}

uint64_t sub_10030BE64()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v1(*(v0 + 289));
  }

  if (*(v0 + 289) == 1)
  {
    v2 = *(v0 + 24);
    sub_1003169B4(v2);
    if (v2 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 208) = v20;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 208) = v3;
      if (v3)
      {
LABEL_6:
        v4 = *(v0 + 24);
        v5 = enum case for JournalFeatureFlags.recentlyDeleted(_:);
        *(v0 + 280) = enum case for JournalFeatureFlags.recentlyDeleted(_:);
        *(v0 + 284) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = *(v0 + 280);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v7 = v5;
        }

        *(v0 + 216) = v6;
        *(v0 + 224) = 1;
        v11 = *(v0 + 112);
        v10 = *(v0 + 120);
        v12 = *(v0 + 104);
        (*(v11 + 104))(v10, v7, v12);
        v13 = JournalFeatureFlags.isEnabled.getter();
        (*(v11 + 8))(v10, v12);

        v14 = *(v0 + 136);
        if (v13)
        {
          if (v14)
          {
            swift_getObjectType();
            v15 = dispatch thunk of Actor.unownedExecutor.getter();
            v17 = v16;
          }

          else
          {
            v15 = 0;
            v17 = 0;
          }

          *(v0 + 232) = v15;
          *(v0 + 240) = v17;
          v19 = sub_10030C1AC;
        }

        else
        {
          if (v14)
          {
            swift_getObjectType();
            v15 = dispatch thunk of Actor.unownedExecutor.getter();
            v17 = v18;
          }

          else
          {
            v15 = 0;
            v17 = 0;
          }

          *(v0 + 256) = v15;
          *(v0 + 264) = v17;
          v19 = sub_10030C4F0;
        }

        return _swift_task_switch(v19, v15, v17);
      }
    }

    v21 = *(v0 + 32);

    v22 = v21 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 96))(ObjectType, v23);
      swift_unknownObjectRelease();
    }

    v25 = *(*(v0 + 32) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    *(v0 + 16) = 0;
    v26 = [v25 save:v0 + 16];
    v27 = *(v0 + 16);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v29 = v27;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10030C1AC()
{
  (*(*(v0 + 80) + 104))(*(v0 + 96), *(v0 + 284), *(v0 + 72));

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_10030C2C8;
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100318E5C, v2, &type metadata for () + 1);
}

void sub_10030C2C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[12], v2[9]);

    v3 = v2[29];
    v4 = v2[30];

    _swift_task_switch(sub_10030C460, v3, v4);
  }
}

uint64_t sub_10030C460()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_100319114, v1, v2);
}

uint64_t sub_10030C4F0()
{
  (*(*(v0 + 80) + 104))(*(v0 + 88), *(v0 + 284), *(v0 + 72));

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10030C60C;
  v2 = *(v0 + 216);
  v3 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100163FAC, v2, &type metadata for () + 1);
}

void sub_10030C60C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = v2[32];
    v4 = v2[33];

    _swift_task_switch(sub_10030C7A4, v3, v4);
  }
}

uint64_t sub_10030C7A4()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_10030C834, v1, v2);
}

uint64_t sub_10030C834()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  if (v1 == v2)
  {
    v3 = *(v0 + 32);

    v4 = v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 96))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = *(*(v0 + 32) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    *(v0 + 16) = 0;
    v8 = [v7 save:v0 + 16];
    v9 = *(v0 + 16);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v14 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v15 = *(v0 + 8);

    return v15();
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 24);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }
  }

  *(v0 + 216) = v13;
  *(v0 + 224) = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 104);
  (*(v18 + 104))(v17, *(v0 + 280), v19);
  v20 = JournalFeatureFlags.isEnabled.getter();
  (*(v18 + 8))(v17, v19);

  v21 = *(v0 + 136);
  if (v20)
  {
    if (v21)
    {
      swift_getObjectType();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    *(v0 + 232) = v22;
    *(v0 + 240) = v24;
    v26 = sub_10030C1AC;
  }

  else
  {
    if (v21)
    {
      swift_getObjectType();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v25;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    *(v0 + 256) = v22;
    *(v0 + 264) = v24;
    v26 = sub_10030C4F0;
  }

  return _swift_task_switch(v26, v22, v24);
}

double sub_10030CB10@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);

  return result;
}

uint64_t sub_10030CB2C(uint64_t *a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADE5A8, &qword_10095DFD0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v11 - 8);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v19 = *a1;
  type metadata accessor for AudioAsset(0);
  if (!swift_dynamicCastClass())
  {
    v22 = 0;
    return v22 & 1;
  }

  v20 = *(v19 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v7;
    v33 = v2;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    (*(v5 + 56))(v18, 1, 1, v4);
LABEL_11:
    (*(v5 + 16))(v15, v35, v4);
    (*(v5 + 56))(v15, 0, 1, v4);
    v23 = *(v8 + 48);
    sub_1000082B4(v18, v10, &unk_100AD6DD0, &qword_1009437C0);
    sub_1000082B4(v15, &v10[v23], &unk_100AD6DD0, &qword_1009437C0);
    v24 = v5;
    v25 = *(v5 + 48);
    if (v25(v10, 1, v4) == 1)
    {
      sub_100004F84(v15, &unk_100AD6DD0, &qword_1009437C0);
      sub_100004F84(v18, &unk_100AD6DD0, &qword_1009437C0);
      if (v25(&v10[v23], 1, v4) == 1)
      {
        sub_100004F84(v10, &unk_100AD6DD0, &qword_1009437C0);
        v22 = 1;
        return v22 & 1;
      }
    }

    else
    {
      v26 = v34;
      sub_1000082B4(v10, v34, &unk_100AD6DD0, &qword_1009437C0);
      if (v25(&v10[v23], 1, v4) != 1)
      {
        v27 = v24;
        v28 = &v10[v23];
        v29 = v32;
        (*(v24 + 32))(v32, v28, v4);
        sub_1000249D4(&unk_100ADE5B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v27 + 8);
        v30(v29, v4);
        sub_100004F84(v15, &unk_100AD6DD0, &qword_1009437C0);
        sub_100004F84(v18, &unk_100AD6DD0, &qword_1009437C0);
        v30(v34, v4);
        sub_100004F84(v10, &unk_100AD6DD0, &qword_1009437C0);
        return v22 & 1;
      }

      sub_100004F84(v15, &unk_100AD6DD0, &qword_1009437C0);
      sub_100004F84(v18, &unk_100AD6DD0, &qword_1009437C0);
      (*(v24 + 8))(v26, v4);
    }

    sub_100004F84(v10, &qword_100ADE5A8, &qword_10095DFD0);
    v22 = 0;
    return v22 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v32 = v7;
  v33 = v2;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {

    specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_7;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:
    sub_1000A7D30(v18);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}