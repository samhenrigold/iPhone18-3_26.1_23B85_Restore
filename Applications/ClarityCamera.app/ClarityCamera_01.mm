uint64_t sub_10001D1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100003998(&qword_1000360D8, &qword_100026B30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10001B600(a1, v2 + v6, v9, a2);
}

unint64_t sub_10001D330()
{
  result = qword_100036150;
  if (!qword_100036150)
  {
    sub_1000039E0(&qword_100036148, &qword_100026B90);
    sub_10001D3EC();
    sub_10001D540(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036150);
  }

  return result;
}

unint64_t sub_10001D3EC()
{
  result = qword_100036158;
  if (!qword_100036158)
  {
    sub_1000039E0(&qword_100036160, &qword_100026B98);
    sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036158);
  }

  return result;
}

uint64_t sub_10001D4A4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001CB48(a1, a2, v6);
}

uint64_t sub_10001D540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001D588()
{
  v1 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for ScrollPosition();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100003998(&qword_100036000, &qword_100026AB8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D6DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10001D790()
{
  v1 = (type metadata accessor for PinchToZoomModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v0 + v3 + v1[9];
  v12 = type metadata accessor for ScrollPosition();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_100003998(&qword_100036000, &qword_100026AB8);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10001D950(uint64_t a1)
{
  v3 = *(type metadata accessor for PinchToZoomModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10001C934(a1, v1 + v4, v7);
}

unint64_t sub_10001DA28()
{
  result = qword_1000361B0;
  if (!qword_1000361B0)
  {
    sub_1000039E0(&qword_1000361B8, &qword_100026BB8);
    sub_100003D8C(&qword_1000360E8, &qword_1000360E0, &qword_100026B38, &protocol conformance descriptor for GeometryReader<A>);
    sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B0);
  }

  return result;
}

uint64_t sub_10001DB14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000617265;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6D61436F65646976;
    }

    else
    {
      v6 = 0x6D61436F746F6870;
    }

    v7 = 0xEB00000000617265;
  }

  else
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000100027450;
    if (a1 != 3)
    {
      v4 = 0x62694C6F746F6870;
      v5 = 0xEC00000079726172;
    }

    if (a1 == 2)
    {
      v6 = 0x61436569666C6573;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xEC0000006172656DLL;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6D61436F65646976;
    }

    else
    {
      v8 = 0x6D61436F746F6870;
    }

    if (v6 != v8)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v9 = 0x61436569666C6573;
    v10 = 1634887021;
  }

  else
  {
    if (a2 == 3)
    {
      v2 = 0x8000000100027450;
      if (v6 != 0xD000000000000011)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v9 = 0x62694C6F746F6870;
    v10 = 2037539186;
  }

  v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v6 != v9)
  {
LABEL_29:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

LABEL_27:
  if (v7 != v2)
  {
    goto LABEL_29;
  }

  v11 = 1;
LABEL_30:

  return v11 & 1;
}

uint64_t NavigationStage.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D61436F746F6870;
  v2 = 0x61436569666C6573;
  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0x62694C6F746F6870;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6D61436F65646976;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001DD88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15ClarityPhotosUI15NavigationStageO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10001DDB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6D61436F746F6870;
  v4 = 0xEC0000006172656DLL;
  v5 = 0x61436569666C6573;
  v6 = 0x8000000100027450;
  v7 = 0xD000000000000011;
  if (v2 != 3)
  {
    v7 = 0x62694C6F746F6870;
    v6 = 0xEC00000079726172;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6D61436F65646976;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEB00000000617265;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

Swift::Int sub_10001DE70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001DF6C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001E054(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t _s15ClarityPhotosUI15NavigationStageO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100032608, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001E19C()
{
  result = qword_1000361C0;
  if (!qword_1000361C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NavigationStage(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_10001E364()
{
  v0 = objc_allocWithZone(type metadata accessor for PhotoLibrary(0));

  return [v0 init];
}

uint64_t PhotoLibraryView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PhotoLibraryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10001EDB4(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001EE1C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10001EE80;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for PhotoLibraryView(uint64_t a1)
{
  result = qword_100036228;
  if (!qword_100036228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for PhotoLibraryView(0);
  v62 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v63 = v6;
  v64 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ScrollAnchorRole();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_100036288, &qword_100026D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v48 = sub_100003998(&qword_100036290, &qword_100026D48);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = &v47 - v13;
  v54 = sub_100003998(&qword_100036298, &qword_100026D50);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v16 = &v47 - v15;
  v57 = sub_100003998(&qword_1000362A0, &qword_100026D58);
  __chkstk_darwin(v57);
  v52 = &v47 - v17;
  v59 = sub_100003998(&qword_1000362A8, &qword_100026D60);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v47 - v18;
  v61 = sub_100003998(&qword_1000362B0, &qword_100026D68);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v47 - v19;
  v65 = a2;
  v67 = a2;
  v68 = a1;
  static Axis.Set.vertical.getter();
  sub_100003998(&qword_1000362B8, &qword_100026D70);
  sub_100003D8C(&qword_1000362C0, &qword_1000362B8, &qword_100026D70, &protocol conformance descriptor for LazyVGrid<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v20 = sub_100003D8C(&qword_1000362C8, &qword_100036288, &qword_100026D40, &protocol conformance descriptor for ScrollView<A>);
  v21 = v16;
  View.defaultScrollAnchor(_:)();
  (*(v10 + 8))(v12, v9);
  static UnitPoint.top.getter();
  static ScrollAnchorRole.alignment.getter();
  v69 = v9;
  v70 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v48;
  View.defaultScrollAnchor(_:for:)();
  (*(v50 + 8))(v8, v51);
  (*(v49 + 8))(v14, v22);
  sub_100003998(&qword_1000362D0, &qword_100026D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100026A90;
  LOBYTE(v8) = static Edge.Set.leading.getter();
  *(inited + 32) = v8;
  v24 = static Edge.Set.trailing.getter();
  *(inited + 33) = v24;
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  if (qword_100035A60 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v52;
  (*(v53 + 32))(v52, v21, v54);
  v35 = v57;
  v36 = v34 + *(v57 + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v37 = sub_10001FF78();
  v38 = v55;
  View.navigationTitle(_:)();

  sub_1000200B8(v34);
  v69 = v35;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v59;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v58 + 8))(v38, v40);
  v41 = v64;
  sub_10001EDB4(v65, v64);
  v42 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v43 = swift_allocObject();
  sub_10001EE1C(v41, v43 + v42);
  v44 = v66;
  (*(v60 + 32))(v66, v39, v61);
  result = sub_100003998(&qword_1000362E0, &qword_100026D80);
  v46 = (v44 + *(result + 36));
  *v46 = sub_100020240;
  v46[1] = v43;
  v46[2] = 0;
  v46[3] = 0;
  return result;
}

uint64_t sub_10001EDB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EE84(uint64_t a1)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for GridItem.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for GridItem();
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GeometryProxy.size.getter();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + *(type metadata accessor for PhotoLibraryView(0) + 24));
  v15 = 3;
  if (v13 < v11)
  {
    v15 = 4;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  *v6 = xmmword_100026C80;
  (*(v4 + 104))(v6, enum case for GridItem.Size.flexible(_:), v3);
  GridItem.init(_:spacing:alignment:)();
  sub_10001F980(v9, v16);
  v19 = a1;
  static HorizontalAlignment.center.getter();
  v20 = 0;
  sub_10002045C(&qword_1000362E8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100003998(&qword_1000362F0, &qword_100026D88);
  sub_100020318();
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_10001F13C(uint64_t *a1)
{
  type metadata accessor for PhotoLibrary(0);
  sub_10002045C(&unk_100036240, type metadata accessor for PhotoLibrary, &unk_100026E50);
  v1 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100003998(&qword_100036318, &unk_100026DE0);
  sub_100019B38();
  sub_1000039E0(&qword_100036300, &qword_100026D90);
  type metadata accessor for PlainButtonStyle();
  sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1000204AC();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10001F350(void **a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003998(&qword_100036300, &qword_100026D90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *a1;
  v19 = 0;
  v11 = v10;
  sub_100003998(&qword_100035B78, &qword_1000261C8);
  State.init(wrappedValue:)();
  v15 = *v17;
  v19 = 0;
  sub_100003998(&qword_100035CC0, &qword_100026DF0);
  State.init(wrappedValue:)();
  v14 = *v17;
  KeyPath = swift_getKeyPath();
  v17[0] = v11;
  *&v17[3] = v14;
  *&v17[1] = v15;
  v17[5] = KeyPath;
  v18 = 0;
  v16 = v11;
  sub_100020514();
  sub_100020568();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10001F63C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003998(&qword_1000353E8, &qword_100025680);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FinishLaunchTestAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotoLibraryView(0);
  sub_1000202A0(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  FinishLaunchTestAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

void PhotoLibraryView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_10001E364;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PhotoLibraryView(0);
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 24);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *(a1 + v4) = v6 == 1;
}

char *sub_10001F980(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_10001FAFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10001EDB4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001EE1C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000205C4;
  a2[1] = v7;
  return result;
}

uint64_t sub_10001FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001FCE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001FD8C(uint64_t a1)
{
  sub_10001FE18(319);
  if (v1 <= 0x3F)
  {
    sub_10000DDCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001FE18(uint64_t a1)
{
  if (!qword_100036238)
  {
    type metadata accessor for PhotoLibrary(255);
    sub_10002045C(&unk_100036240, type metadata accessor for PhotoLibrary, &unk_100026E50);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100036238);
    }
  }
}

uint64_t sub_10001FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoLibraryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001E4DC(a1, v6, a2);
}

unint64_t sub_10001FF78()
{
  result = qword_1000362D8;
  if (!qword_1000362D8)
  {
    sub_1000039E0(&qword_1000362A0, &qword_100026D58);
    sub_1000039E0(&qword_100036290, &qword_100026D48);
    sub_1000039E0(&qword_100036288, &qword_100026D40);
    sub_100003D8C(&qword_1000362C8, &qword_100036288, &qword_100026D40, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362D8);
  }

  return result;
}

uint64_t sub_1000200B8(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000362A0, &qword_100026D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020120()
{
  v1 = (type metadata accessor for PhotoLibraryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_100010FE4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = v1[7];
  sub_100003998(&qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100020240()
{
  v1 = *(type metadata accessor for PhotoLibraryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001F63C(v2);
}

uint64_t sub_1000202A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000353E8, &qword_100025680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100020318()
{
  result = qword_1000362F8;
  if (!qword_1000362F8)
  {
    sub_1000039E0(&qword_1000362F0, &qword_100026D88);
    sub_1000039E0(&qword_100036300, &qword_100026D90);
    type metadata accessor for PlainButtonStyle();
    sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362F8);
  }

  return result;
}

uint64_t sub_10002045C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000204AC()
{
  result = qword_100036320;
  if (!qword_100036320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036320);
  }

  return result;
}

id sub_100020508@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_100020514()
{
  result = qword_100036328;
  if (!qword_100036328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036328);
  }

  return result;
}

unint64_t sub_100020568()
{
  result = qword_100036330;
  if (!qword_100036330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036330);
  }

  return result;
}

uint64_t sub_1000205C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10002063C()
{
  v1 = OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary;
  v2 = [objc_opt_self() sharedPhotoLibrary];
  *&v0[v1] = v2;
  v3 = v2;
  v4 = sub_100022460();

  swift_beginAccess();
  v10 = v4;
  Published.init(initialValue:)();
  swift_endAccess();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PhotoLibrary(0);
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary];
  v7 = v5;
  [v6 registerChangeObserver:v7];
  sub_100022F30();

  return v7;
}

id sub_100020754()
{
  [*&v0[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary] unregisterChangeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoLibrary(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoLibrary(uint64_t a1)
{
  result = qword_1000363D0;
  if (!qword_1000363D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000208EC(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100035A50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000AAD4(v9, qword_100037E20);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "makePhotoCollection", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100020B78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000219E4(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000219E4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_100020C6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100020CF0()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12[1];
  sub_10000B0C4(0, &qword_1000363F0, PHAsset_ptr);
  v6 = PHChange.changeDetails<A>(for:)();

  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;
    sub_100005F70(0, 0, v4, &unk_100026ED8, v11);
  }
}

uint64_t sub_100020EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for IndexSet.Index();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_100003998(&qword_1000363F8, &qword_100026EE0);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for IndexSet();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  sub_100003998(&qword_100036400, &qword_100026EE8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002107C, v9, v8);
}

uint64_t sub_10002107C()
{
  v1 = *(v0 + 56);

  if (![v1 hasIncrementalChanges])
  {
    goto LABEL_7;
  }

  v2 = [*(v0 + 56) insertedIndexes];
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (v2)
  {
    v6 = v2;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v3, 0, 1, v4);
LABEL_6:
    sub_100003F00(v3, &qword_100036400, &qword_100026EE8);
LABEL_7:
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AAD4(v12, qword_100037E08);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Updating photo collection for photo library change.", v15, 2u);
    }

    v16 = *(v0 + 56);
    v17 = *(v0 + 64);

    v18 = [v16 fetchResultAfterChanges];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v18;
    v19 = v17;
    static Published.subscript.setter();
    goto LABEL_12;
  }

  v7 = *(v0 + 56);
  v8 = *(v5 + 56);
  v8(*(v0 + 144), 1, 1, *(v0 + 112));
  sub_100003F00(v3, &qword_100036400, &qword_100026EE8);
  v9 = [v7 removedIndexes];
  v3 = *(v0 + 136);
  v10 = *(v0 + 112);
  if (v9)
  {
    v11 = v9;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v8(v3, 0, 1, v10);
    goto LABEL_6;
  }

  v22 = *(v0 + 56);
  v8(*(v0 + 136), 1, 1, *(v0 + 112));
  sub_100003F00(v3, &qword_100036400, &qword_100026EE8);
  v23 = [v22 changedIndexes];
  if (v23)
  {
    v24 = *(v0 + 80);
    v25 = v23;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    IndexSet.makeIterator()();
    v43 = (v24 + 8);
    sub_10002199C(&qword_100036408, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    while (1)
    {
      v26 = *(v0 + 88);
      v27 = *(v0 + 72);
      dispatch thunk of Collection.endIndex.getter();
      sub_10002199C(&unk_100036410, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v43)(v26, v27);
      if (v28)
      {
        break;
      }

      v29 = *(v0 + 56);
      v30 = dispatch thunk of Collection.subscript.read();
      v32 = *v31;
      v30(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v33 = [v29 fetchResultBeforeChanges];
      v34 = [v33 objectAtIndexedSubscript:v32];

      v35 = [v29 fetchResultAfterChanges];
      v36 = [v35 objectAtIndexedSubscript:v32];

      sub_10000B0C4(0, &qword_1000363F0, PHAsset_ptr);
      LOBYTE(v35) = static NSObject.== infix(_:_:)();

      if ((v35 & 1) == 0)
      {
        v38 = *(v0 + 120);
        v37 = *(v0 + 128);
        v39 = *(v0 + 112);
        sub_100003F00(*(v0 + 104), &qword_1000363F8, &qword_100026EE0);
        (*(v38 + 8))(v37, v39);
        goto LABEL_7;
      }
    }

    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v42 = *(v0 + 112);
    sub_100003F00(*(v0 + 104), &qword_1000363F8, &qword_100026EE0);
    (*(v41 + 8))(v40, v42);
  }

LABEL_12:

  v20 = *(v0 + 8);

  return v20();
}

void sub_100021668(uint64_t a1)
{
  sub_100021704();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100021704()
{
  if (!qword_1000363E0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000363E0);
    }
  }
}

uint64_t sub_100021754@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotoLibrary(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100021794(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100021818(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100021894()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000218DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003B4C;

  return sub_100020EAC(a1, v4, v5, v7, v6);
}

uint64_t sub_10002199C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000219E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003998(&qword_100036460, &qword_100026F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100021AF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100021B9C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100021F4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_100021CEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003998(&qword_100036458, &qword_100026F00);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100021F4C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100021CEC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000220CC();
      goto LABEL_16;
    }

    sub_100022228(v8 + 1);
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

void sub_1000220CC()
{
  v1 = v0;
  sub_100003998(&qword_100036458, &qword_100026F00);
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

void sub_100022228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003998(&qword_100036458, &qword_100026F00);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
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
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

id sub_100022460()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v72 - v5;
  if (qword_100035A50 == -1)
  {
    goto LABEL_2;
  }

LABEL_38:
  swift_once();
LABEL_2:
  v7 = type metadata accessor for OSSignposter();
  sub_10000AAD4(v7, qword_100037E20);
  static OSSignpostID.exclusive.getter();
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v11, "makePhotoCollection", "", v10, 2u);
  }

  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v12 = OSSignpostIntervalState.init(id:isOpen:)();
  v13 = *(v1 + 8);
  v1 += 8;
  v13(v6, v0);
  v14 = [objc_allocWithZone(PHFetchOptions) init];
  [v14 setIncludeAssetSourceTypes:5];
  sub_10000B0C4(0, &qword_100036420, CLFPhotosSettings_ptr);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (![v15 includeSharedAlbums])
  {

    goto LABEL_36;
  }

  v16 = [v15 selectedSharedAlbumCloudIdentifiers];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_36;
  }

  v79 = v17;
  v73 = v15;
  v75 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptyArrayStorage;
  v19 = objc_opt_self();
  v74 = v14;
  v20 = [v19 fetchAssetCollectionsWithType:1 subtype:101 options:v14];
  aBlock[4] = sub_1000231C4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020C6C;
  aBlock[3] = &unk_100032E38;
  v21 = _Block_copy(aBlock);
  v72 = v18;

  [v20 enumerateObjectsUsingBlock:v21];
  _Block_release(v21);

  swift_beginAccess();
  v4 = *(v18 + 16);

  v22 = PHPhotoLibrary.cloudIdentifierMappings(forLocalIdentifiers:)();

  v24 = 0;
  v25 = 0;
  v27 = v22 + 64;
  v26 = *(v22 + 64);
  v81 = v22;
  v28 = 1 << *(v22 + 32);
  v83[2] = &_swiftEmptySetSingleton;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v0 = v29 & v26;
  v6 = ((v28 + 63) >> 6);
  *&v23 = 136315394;
  v76 = v23;
  if ((v29 & v26) != 0)
  {
    while (2)
    {
      v32 = v24;
LABEL_19:
      v33 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v34 = (v32 << 10) | (16 * v33);
      v35 = (*(v81 + 48) + v34);
      v36 = *v35;
      v1 = v35[1];
      v37 = *(v81 + 56) + v34;
      v38 = *v37;
      v39 = *(v37 + 8);

      v82 = v36;
      if (v39)
      {
        sub_1000231E4(v38, 1);
        if (qword_100035A48 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000AAD4(v40, qword_100037E08);

        sub_1000231E4(v38, 1);
        v4 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v4, v41))
        {
          v42 = swift_slowAlloc();
          v77 = v4;
          v4 = v42;
          v43 = swift_slowAlloc();
          v80 = v25;
          v44 = v43;
          v78 = swift_slowAlloc();
          v83[0] = v78;
          *v4 = v76;
          v45 = sub_100012614(v82, v1, v83);

          *(v4 + 4) = v45;
          *(v4 + 12) = 2112;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v4 + 14) = v46;
          *v44 = v46;
          v47 = v77;
          _os_log_impl(&_mh_execute_header, v77, v41, "Error fetching album cloud identifier for local identifier: %s. Error: %@.", v4, 0x16u);
          sub_100003F00(v44, &qword_100035548, &qword_100025890);
          v25 = v80;

          sub_10000B154(v78);
        }

        else
        {

          sub_1000231F0(v38, 1);
        }

        v30 = v38;
        v31 = 1;
        goto LABEL_14;
      }

      sub_1000231E4(v38, 0);
      v48 = [v38 stringValue];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v80 = v38;
      v83[0] = v49;
      v83[1] = v51;
      __chkstk_darwin(v52);
      *(&v72 - 2) = v83;
      v4 = sub_100021AF0(sub_1000231FC, (&v72 - 4), v79);

      if (v4)
      {
        sub_100021B9C(v83, v82, v1);
        sub_1000231F0(v80, 0);

        v24 = v32;
        if (v0)
        {
          continue;
        }
      }

      else
      {

        v30 = v80;
        v31 = 0;
LABEL_14:
        sub_1000231F0(v30, v31);
        v24 = v32;
        if (v0)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v32 >= v6)
    {
      break;
    }

    v0 = *(v27 + 8 * v32);
    ++v24;
    if (v0)
    {
      goto LABEL_19;
    }
  }

  v53 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v55 = [v53 uuidsFromLocalIdentifiers:isa];

  if (v55)
  {
    v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000B0C4(0, &qword_100036438, NSPredicate_ptr);
    sub_100003998(&qword_100036440, &qword_100026EF0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1000256F0;
    *(v57 + 56) = sub_100003998(&qword_100036448, &qword_100026EF8);
    *(v57 + 64) = sub_100023254();
    *(v57 + 32) = v56;
    v58 = NSPredicate.init(format:_:)();
    v14 = v74;
    [v74 setInternalInclusionPredicate:v58];

    v12 = v75;
    v15 = v73;
  }

  else
  {
    v14 = v74;
    v12 = v75;
    v15 = v73;
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000AAD4(v59, qword_100037E08);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to get UUIDs from shared album local identifiers.", v62, 2u);
    }
  }

LABEL_36:
  sub_100003998(&qword_100035980, &unk_100025DE0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100026E30;
  v64 = objc_allocWithZone(NSSortDescriptor);
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 initWithKey:v65 ascending:1];

  *(v63 + 32) = v66;
  sub_10000B0C4(0, &qword_100036430, NSSortDescriptor_ptr);
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v14 setSortDescriptors:v67];

  v68 = objc_opt_self();
  v69 = v14;
  v70 = [v68 fetchAssetsWithOptions:v69];

  sub_1000208EC(v12);

  return v70;
}

void sub_100022F30()
{
  v0 = [objc_opt_self() sharedInstance];
  v11 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v11];

  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AAD4(v5, qword_100037E08);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error setting AVAudioSession playback category. Error: %@.", v8, 0xCu);
      sub_100003F00(v9, &qword_100035548, &qword_100025890);
    }

    else
    {
    }
  }
}

uint64_t sub_10002318C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000231CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1000231E4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000231F0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000231FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100023254()
{
  result = qword_100036450;
  if (!qword_100036450)
  {
    sub_1000039E0(&qword_100036448, &qword_100026EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036450);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}