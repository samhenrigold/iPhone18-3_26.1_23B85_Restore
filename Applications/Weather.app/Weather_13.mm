uint64_t sub_100168D0C()
{
  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100168D60@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100168D94@<X0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v4 = Image.init(systemName:)();
  v5 = LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)(v5, v7, v6 & 1, v8, 0, 0, 0, "Accessibility label for show map toolbar button", 47, 2);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v13 &= 1u;
  sub_10010CD54(v9, v11, v13);

  sub_10010CD64(v9, v11, v13);

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_100168EAC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6F08, &qword_100A31E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100168F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10012E5EC(&qword_100CC91C8, byte_100A67288);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

void sub_100168FD8(uint64_t a1)
{
  sub_1000F0FF4(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001690A8()
{
  sub_10022C350(&qword_100CC9118, &qword_100A67230);
  sub_1000037E8();
  __chkstk_darwin(v0);
  v2 = &v5 - v1;
  type metadata accessor for LocationViewerPageControl(0);
  Binding.projectedValue.getter();
  type metadata accessor for LocationViewerPageControl.Coordinator(0);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages) = _swiftEmptyArrayStorage;
  sub_1001691A4(v2, v3 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection);
  return v3;
}

uint64_t sub_10016917C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001690A8();
  *a1 = result;
  return result;
}

uint64_t sub_1001691A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9118, &qword_100A67230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100169214()
{
  v1 = [objc_allocWithZone(UIPageControl) init];
  v2 = v1;
  v3 = *(v0 + 8);
  if (v3 == 1)
  {
    [v1 setBackgroundStyle:1];
  }

  if (!(v3 & 1 | ((static Solarium.isEnabled.getter() & 1) == 0)))
  {
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v2 setCurrentPageIndicatorTintColor:v5];

    v6 = [v4 tertiaryLabelColor];
    [v2 setPageIndicatorTintColor:v6];

    [v2 setBackgroundStyle:2];
  }

  sub_10022C350(&qword_100CC91C0, &unk_100A67320);
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v14 action:"pageDidChange:" forControlEvents:4096];

  v7 = objc_opt_self();
  v8 = v2;
  v9 = [v7 mainBundle];
  v15._object = 0x8000000100AD6C00;
  v10._object = 0x8000000100AD6BE0;
  v15._countAndFlagsBits = 0xD000000000000039;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v15);

  sub_10016941C(v12._countAndFlagsBits, v12._object, v8, &selRef_setAccessibilityLabel_);
  return v8;
}

void sub_10016941C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_10016948C(void *a1)
{
  v2 = v1;
  v46 = a1;
  v41 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v42 = v4;
  __chkstk_darwin(v5);
  v43 = &v41 - v6;
  v7 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  v44 = v14;
  __chkstk_darwin(v15);
  v45 = &v41 - v16;
  sub_10022C350(&qword_100CC9118, &qword_100A67230);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  sub_10022C350(&qword_100CC91C0, &unk_100A67320);
  UIViewRepresentableContext.coordinator.getter();
  v20 = v47;
  v21 = *v1;
  *(v47 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages) = *v1;

  type metadata accessor for LocationViewerPageControl(0);
  Binding.projectedValue.getter();
  v22 = OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection;
  swift_beginAccess();
  v23 = v19;
  v24 = v46;
  sub_100169A50(v23, v20 + v22);
  swift_endAccess();
  if ([v24 numberOfPages] != *(v21 + 16))
  {
    [v24 setNumberOfPages:?];
  }

  sub_100169AC0(v21, v9);
  v25 = v2;
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    v26 = sub_1000180EC(v9, &unk_100CE2F20, &unk_100A2D7D0);
    goto LABEL_13;
  }

  v27 = v45;
  (*(v12 + 32))(v45, v9, v10);
  v28 = v44;
  (*(v12 + 16))(v44, v27, v10);
  if ((*(v12 + 88))(v28, v10) != enum case for LocationModel.current(_:))
  {
    [v24 setIndicatorImage:0 forPage:0];
    v32 = *(v12 + 8);
    v32(v27, v10);
    v26 = (v32)(v28, v10);
    goto LABEL_13;
  }

  (*(v12 + 96))(v28, v10);
  v29 = v43;
  sub_100169AD8(v28, v43);
  v30 = v42;
  sub_100169B3C(v29, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_100169C48(v30);
LABEL_11:
    sub_100169C04();
    v34 = sub_100169BA0();
    [v24 setIndicatorImage:v34 forPage:0];

    sub_100169C48(v29);
    (*(v12 + 8))(v45, v10);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_11;
  }

  sub_100169C04();
  v33 = sub_100169BA0();
  [v24 setIndicatorImage:v33 forPage:0];

  sub_100169C48(v29);
  (*(v12 + 8))(v45, v10);
  sub_100169C48(v30);
LABEL_12:
  v35 = *(sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0) + 48);
  type metadata accessor for LocationModelData();
  sub_1000037E8();
  v26 = (*(v36 + 8))(v28 + v35);
LABEL_13:
  __chkstk_darwin(v26);
  *(&v41 - 2) = v25;
  v37 = sub_100169CA4(sub_100169E24, (&v41 - 4), v21);
  if ((v38 & 1) == 0)
  {
    v39 = v37;
    if (v37 != [v24 currentPage])
    {
      [v24 setCurrentPage:v39];
    }

    sub_100169E44(v24, v39);
  }
}

uint64_t sub_100169A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9118, &qword_100A67230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100169BA0()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed:v0];

  return v1;
}

unint64_t sub_100169C04()
{
  result = qword_100CB17D0;
  if (!qword_100CB17D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB17D0);
  }

  return result;
}

uint64_t sub_100169C48(uint64_t a1)
{
  v2 = type metadata accessor for CurrentLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100169CD0()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  LocationModel.identifier.getter();
  type metadata accessor for LocationViewerPageControl(0);
  sub_10022C350(&qword_100CC9118, &qword_100A67230);
  Binding.wrappedValue.getter();
  v7 = static Location.Identifier.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_100169E44(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v5);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v71 - v9;
  v11 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v11 - 8);
  v13 = v71 - v12;
  v14 = type metadata accessor for LocationModel();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v21 = __chkstk_darwin(v17);
  v22 = v71 - v18;
  v23 = *v2;
  if (*(*v2 + 16) <= a2)
  {
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v71[1] = v5;
    v72 = v7;
    v76 = v19;
    v77 = v20;
    v75 = v10;
    v78 = a1;
    v79 = v23;
    v24 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = *(v15 + 72);
    v80 = a2;
    v26 = v24 + v25 * a2;
    a2 = *(v15 + 16);
    (a2)(v71 - v18, v26, v14, v21);
    v2 = LocationModel.name.getter();
    v7 = v27;
    v73 = *(v15 + 8);
    v74 = v15 + 8;
    v73(v22, v14);
    sub_100109810();
    v29 = v28;
    a1 = *(v28 + 16);
    v5 = a1 + 1;
    if (a1 < *(v28 + 24) >> 1)
    {
      goto LABEL_4;
    }
  }

  sub_100109810();
  v29 = v67;
LABEL_4:
  *(v29 + 16) = v5;
  v30 = v29 + 16 * a1;
  *(v30 + 32) = v2;
  *(v30 + 40) = v7;
  if (!v80)
  {
    sub_100169AC0(v79, v13);
    if (sub_100024D10(v13, 1, v14) == 1)
    {
      sub_1000180EC(v13, &unk_100CE2F20, &unk_100A2D7D0);
      goto LABEL_11;
    }

    v31 = v77;
    (*(v15 + 32))(v77, v13, v14);
    v32 = v76;
    (a2)(v76, v31, v14);
    v33 = v32;
    if ((*(v15 + 88))(v32, v14) != enum case for LocationModel.current(_:))
    {
      v39 = v73;
      v73(v31, v14);
      v39(v32, v14);
      goto LABEL_11;
    }

    (*(v15 + 96))(v32, v14);
    v34 = v32;
    v35 = v75;
    sub_100169AD8(v34, v75);
    v36 = v35;
    v37 = v72;
    sub_100169B3C(v36, v72);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v55 = [objc_opt_self() mainBundle];
        v83._object = 0x8000000100AD6BB0;
        v56._object = 0x8000000100AD6B90;
        v83._countAndFlagsBits = 0xD000000000000029;
        v56._countAndFlagsBits = 0xD000000000000010;
        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v83);

        v59 = *(v29 + 16);
        if (v59 >= *(v29 + 24) >> 1)
        {
          sub_100109810();
          v29 = v70;
        }

        sub_100169C48(v75);
        v73(v77, v14);
        *(v29 + 16) = v59 + 1;
        *(v29 + 16 * v59 + 32) = v58;
        sub_100169C48(v72);
        goto LABEL_22;
      }
    }

    else
    {
      sub_100169C48(v37);
    }

    v60 = [objc_opt_self() mainBundle];
    v84._object = 0x8000000100AD6B40;
    v61._countAndFlagsBits = 0xD00000000000001CLL;
    v61._object = 0x8000000100AD6B20;
    v84._countAndFlagsBits = 0xD000000000000047;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v84);

    v64 = *(v29 + 16);
    if (v64 >= *(v29 + 24) >> 1)
    {
      sub_100109810();
      v29 = v69;
    }

    sub_100169C48(v75);
    v73(v77, v14);
    *(v29 + 16) = v64 + 1;
    *(v29 + 16 * v64 + 32) = v63;
LABEL_22:
    v65 = *(sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0) + 48);
    v66 = type metadata accessor for LocationModelData();
    (*(*(v66 - 8) + 8))(v33 + v65, v66);
  }

LABEL_11:
  v40 = [objc_opt_self() mainBundle];
  v82._object = 0x8000000100AD6AE0;
  v41._countAndFlagsBits = 0x2064252079746963;
  v41._object = 0xED0000642520666FLL;
  v82._countAndFlagsBits = 0xD000000000000036;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v82);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100A2D320;
  v44 = v80 + 1;
  *(v43 + 56) = &type metadata for Int;
  *(v43 + 64) = &protocol witness table for Int;
  *(v43 + 32) = v44;
  v45 = *(v79 + 16);
  *(v43 + 96) = &type metadata for Int;
  *(v43 + 104) = &protocol witness table for Int;
  *(v43 + 72) = v45;
  v46 = String.init(format:_:)();
  v48 = v47;

  v49 = *(v29 + 16);
  if (v49 >= *(v29 + 24) >> 1)
  {
    sub_100109810();
    v29 = v68;
  }

  v50 = v78;
  *(v29 + 16) = v49 + 1;
  v51 = v29 + 16 * v49;
  *(v51 + 32) = v46;
  *(v51 + 40) = v48;
  v81 = v29;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v52 = BidirectionalCollection<>.joined(separator:)();
  v54 = v53;

  sub_10016941C(v52, v54, v50, &selRef_setAccessibilityValue_);
}

uint64_t sub_10016A620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v37[1] = a1;
  v4 = sub_10022C350(&qword_100CA6F08, &qword_100A31E88);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = v37 - v6;
  sub_10022C350(&qword_100CEB430, &qword_100AA0E30);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  sub_10012E148(v3, v38);
  v14 = swift_allocObject();
  v15 = v38[1];
  v14[1] = v38[0];
  v14[2] = v15;
  v14[3] = v38[2];
  Button.init(action:label:)();
  v16 = *v3;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v7[*(v4 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_100168F20;
  v19[2] = v18;
  v20 = LocalizedStringKey.init(stringLiteral:)();
  sub_100005F5C(v20, v21, v22, v23, v24, v25, v26, "Accessibility label for the location list toolbar button");
  sub_1000111F8();
  sub_10012E508();
  View.accessibilityLabel(_:)();
  sub_10010CD64(KeyPath, v16, v2 & 1);

  sub_1000180EC(v7, &qword_100CA6F08, &qword_100A31E88);
  v27 = LocalizedStringKey.init(stringLiteral:)();
  sub_100005F5C(v27, v28, v29, v30, v31, v32, v33, "Accessibility hint for the location list toolbar button");
  sub_1000111F8();
  ModifiedContent<>.accessibilityHint(_:)();
  sub_10010CD64(KeyPath, v16, v2 & 1);

  sub_1000180EC(v10, &qword_100CEB430, &qword_100AA0E30);
  sub_10022C350(&qword_100CB2D40, &unk_100A453C0);
  sub_10012E7B4();
  sub_100005A00();
  sub_100006F64(v34, &qword_100CB2D40, &unk_100A453C0, v35);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_1000180EC(v13, &qword_100CEB430, &qword_100AA0E30);
}

uint64_t sub_10016A99C()
{
  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10016A9F0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10016AA34@<X0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v4 = Image.init(systemName:)();
  v5 = LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)(v5, v7, v6 & 1, v8, 0, 0, 0, "Accessibility label for location list toolbar button", 52, 2);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v13 &= 1u;
  sub_10010CD54(v9, v11, v13);

  sub_10010CD64(v9, v11, v13);

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_10016ABC4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10016ABD8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_10016ABE8()
{
  v0 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_100140210();
  sub_100140210();
  v6 = sub_100163AEC(v5, v2);
  sub_10016ACBC(v2);
  sub_10016ACBC(v5);
  return v6 & 1;
}

uint64_t sub_10016ACBC(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016AD1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_10016AD70()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_0D7875416F0B8E2934ED75461799471034LocationHeaderViewFrameCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10016AE0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10016AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10016AE88();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016AE88()
{
  result = qword_100CA6118;
  if (!qword_100CA6118)
  {
    result = swift_getWitnessTable(byte_100A92578, &unk_100C730C0, v0, v1);
    atomic_store(result, &qword_100CA6118);
  }

  return result;
}

uint64_t sub_10016AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10011A74C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10016AF40()
{
  swift_unknownObjectRelease();

  sub_10003716C();

  return swift_deallocObject();
}

uint64_t sub_10016AF7C()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_10016B054()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_C9CD978B5072A12A20FABB0B2C18467645LocationViewCollisionOptionsUpdatingViewState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10016B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10009C5FC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10016B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10016B1B8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016B1B8()
{
  result = qword_100CA6090;
  if (!qword_100CA6090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NamespaceWrapper, &type metadata for NamespaceWrapper, v0, v1);
    atomic_store(result, &qword_100CA6090);
  }

  return result;
}

uint64_t sub_10016B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000F1F60(&qword_100CA6120, type metadata accessor for DisplayMetrics, byte_100A9EB10);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016B300()
{
  result = qword_100CAF478;
  if (!qword_100CAF478)
  {
    v3 = sub_10000C70C(255, &qword_100CAF470, UISceneSession_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_100CAF478);
  }

  return result;
}

uint64_t sub_10016B368(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationsState(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v11(v19, v8);
  sub_100051108(v19[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v10, type metadata accessor for LocationsState);

  v12 = *&v10[*(v7 + 28)];

  v13 = sub_10004FE68(v10, type metadata accessor for LocationsState);
  (v11)(v19, v13);
  v14 = v19[0];
  v15 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100051108(v14 + v15, v5, type metadata accessor for EnvironmentState);

  v16 = *&v5[*(v3 + 64)];
  sub_10004FE68(v5, type metadata accessor for EnvironmentState);
  v18[1] = v12;
  v18[2] = v16;
  sub_10022C350(&qword_100CEBF30, &qword_100AA1CD8);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10016B564()
{
  v0 = type metadata accessor for Location();
  sub_100003810(v0);
  sub_1000C8B74();
  return sub_10016B5B4();
}

uint64_t sub_10016B5B4()
{
  v1 = sub_100017580();
  type metadata accessor for MainAction(v1);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = (v4 - v3);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  *v5 = Location.id.getter();
  v5[1] = v8;
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v5, v10, v7, v6);
  sub_100018144(v10, &unk_100CD81B0, &unk_100A3B000);
  sub_100031FA8();
  return sub_100087544();
}

uint64_t sub_10016B6A0(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (a1[1] < 1)
  {
    static DispatchQoS.userInitiated.getter();
  }

  else
  {
    static DispatchQoS.utility.getter();
  }

  v10 = sub_10016B7D0(v9, a3 & 1, v8);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_10016B7D0(void *a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _swiftEmptyArrayStorage;
  v11 = sub_10016BF8C(a1);
  v26 = v3;
  v27 = &v32;
  v28 = a3;
  v29 = a2;
  sub_10016C834(sub_10016D220, v25, v11);
  static Logger.geocode.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v7;
    v31 = v23;
    *v14 = 134350339;
    swift_beginAccess();
    v15 = v32;
    *(v14 + 4) = v32[2];
    *(v14 + 12) = 2050;
    v16 = v11[2];

    *(v14 + 14) = v16;

    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 1025;
    *(v14 + 34) = a2 & 1;
    *(v14 + 38) = 2160;
    *(v14 + 40) = 1752392040;
    *(v14 + 48) = 2081;
    v30 = v15;

    sub_10022C350(&qword_100CEBF20, &qword_100AA1CC0);
    v17 = String.init<A>(reflecting:)();
    v19 = sub_100078694(v17, v18, &v31);

    *(v14 + 50) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "About to reverse geocode locations from the sample. ratio=(%{public}ld/%{public}ld, invalidateLocations=%{BOOL,private,mask.hash}d, locations=%{private,mask.hash}s", v14, 0x3Au);
    sub_100006F14(v23);

    (*(v8 + 8))(v10, v24);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v8 + 8))(v10, v7);
  }

  v20 = zalgo.getter();
  type metadata accessor for SavedLocation();
  v21 = when<A>(on:_:)();

  return v21;
}

void *sub_10016BAEC()
{
  type metadata accessor for WeatherDataAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = (v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016BF28(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v3;
  v5 = v3[1];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10001D540();
      _StringGuts.grow(_:)(35);

      sub_10001FF94();
      goto LABEL_11;
    case 2:
      v19 = v3[2];
      v20 = v3[3];
      v16 = v3[4];
      v15 = v3[5];
      sub_10031EF8C(v19, v20);
      sub_10001D540();
      _StringGuts.grow(_:)(22);

      v32[0] = 0x4C64656C6961662ELL;
      v32[1] = 0xEF28676E6964616FLL;
      goto LABEL_8;
    case 3:
      v16 = v3[2];
      v15 = v3[3];
      sub_10001D540();
      _StringGuts.grow(_:)(38);

      sub_10001FF94();
      v18 = v21 - 1;
      goto LABEL_7;
    case 4:
      v8 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
      v9 = v8[12];
      v10 = v8[16];
      v11 = v8[20];
      sub_10001D540();
      _StringGuts.grow(_:)(21);

      strcpy(v32, ".updatedData(");
      HIWORD(v32[1]) = -4864;
      v12._countAndFlagsBits = v6;
      v12._object = v5;
      String.append(_:)(v12);

      sub_100006DF8();
      sub_1000112C8();
      sub_10018D5F4(v3 + v11, v13);
      sub_10018D5F4(v3 + v10, type metadata accessor for PreprocessedWeatherData);
      v14 = type metadata accessor for WeatherData;
      goto LABEL_14;
    case 5:
      v9 = *(sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(25);

      sub_10001FF94();
      sub_100009454(v26);

      sub_100006DF8();
      sub_1000112C8();
LABEL_14:
      sub_10018D5F4(v3 + v9, v14);
      return v5;
    case 6:
      v27 = *(sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(33);

      sub_10001FF94();
      sub_100009454(v28);

      sub_100006DF8();
      v5 = v32[0];
      type metadata accessor for AvailableDataSets();
      goto LABEL_17;
    case 7:
      sub_10001D540();
      _StringGuts.grow(_:)(36);

      sub_10001FF94();
      goto LABEL_11;
    case 8:
      v27 = *(sub_10022C350(&qword_100CAC0B0, &unk_100A41710) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(34);

      sub_10001FF94();
      sub_100009454(v29);

      sub_100006DF8();
      v5 = v32[0];
      type metadata accessor for WeatherStatisticsModel();
LABEL_17:
      sub_1000037E8();
      (*(v30 + 8))(v3 + v27);
      return v5;
    case 9:
      v16 = v3[2];
      v15 = v3[3];
      sub_10001D540();
      _StringGuts.grow(_:)(39);

      sub_10001FF94();
LABEL_7:
      v32[0] = v18;
      v32[1] = v17;
LABEL_8:
      v22._countAndFlagsBits = v6;
      v22._object = v5;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 8236;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v16;
      v24._object = v15;
      String.append(_:)(v24);
      goto LABEL_12;
    default:
      sub_10001D540();
      _StringGuts.grow(_:)(19);

      sub_10001FF94();
LABEL_11:
      sub_100009454(v7);
LABEL_12:

      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      return v32[0];
  }
}

uint64_t sub_10016BF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10016BF8C(void *a1)
{
  v3 = type metadata accessor for SavedLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 88) == 1)
  {
    static Logger.geocode.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
    }

    (*(v8 + 8))(v10, v7);
    v14 = a1[2];
    if (v14)
    {
      v21 = _swiftEmptyArrayStorage;
      sub_1000328B0();
      v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v16 = a1 + v15;
      a1 = v21;
      v17 = *(v4 + 72);
      do
      {
        sub_10016C228(v16, v6);
        v21 = a1;
        v18 = a1[2];
        if (v18 >= a1[3] >> 1)
        {
          sub_1000328B0();
          a1 = v21;
        }

        a1[2] = v18 + 1;
        sub_100079DEC(v6, a1 + v15 + v18 * v17, &type metadata accessor for SavedLocation);
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10016C228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = a1;
  v2 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v5;
  v6 = type metadata accessor for Location();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v8 - 8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v33 = type metadata accessor for TimeZone();
  __chkstk_darwin(v33);
  v15 = type metadata accessor for Location.Identifier();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for SavedLocation.Placeholder();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051108(v40, v22, &type metadata accessor for SavedLocation);
  v40 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v19, v22, v16);
    SavedLocation.Placeholder.identifier.getter();
    static TimeZone.current.getter();
    static WeatherClock.date.getter();
    v23 = type metadata accessor for Date();
    sub_10001B350(v14, 0, 1, v23);
    SavedLocation.Placeholder.searchTitle.getter();
    SavedLocation.Placeholder.searchSubtitle.getter();
    Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v24 = v34;
    v25 = v35;
    v26 = v36;
    (*(v35 + 32))(v34, v22, v36);
    v27 = v37;
    sub_10001B350(v37, 1, 1, v15);
    v28 = v39;
    sub_10001B350(v39, 1, 1, v33);
    v29 = v42;
    Location.lastRefreshDate.getter();
    v30 = type metadata accessor for Date();
    if (sub_100024D10(v29, 1, v30) == 1)
    {
      v31 = v38;
      static Date.now.getter();
      if (sub_100024D10(v42, 1, v30) != 1)
      {
        sub_1000180EC(v42, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v31 = v38;
      (*(*(v30 - 8) + 32))(v38, v42, v30);
    }

    sub_10001B350(v31, 0, 1, v30);
    Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
    sub_1000180EC(v31, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v28, &qword_100CACE08, &unk_100A3C1B0);
    sub_1000180EC(v27, &qword_100CADBA0, &qword_100A3D250);
    (*(v25 + 8))(v24, v26);
  }

  return swift_storeEnumTagMultiPayload();
}

void *sub_10016C834(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for SavedLocation();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10016C9A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v58 = a5;
  v67 = a4;
  v65 = a3;
  v70 = a2;
  v72 = a6;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v56 = &v55 - v8;
  v57 = type metadata accessor for Location();
  v71 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10022C350(&qword_100CD1370, &qword_100A76780);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v55 - v11;
  v69 = type metadata accessor for Location.Identifier();
  v12 = *(v69 - 8);
  __chkstk_darwin(v69);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SavedLocation.Placeholder();
  v15 = *(v68 - 8);
  __chkstk_darwin(v68);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SavedLocation();
  v63 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v19;
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v23 = a1;
  sub_100051108(a1, &v55 - v21, &type metadata accessor for SavedLocation);
  v62 = v18;
  v24 = (v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v15;
    (*(v15 + 32))(v17, v22, v68);
    v25 = v70;
    sub_1000161C0(v70 + 12, v70[15]);
    SavedLocation.Placeholder.identifier.getter();
    v26 = dispatch thunk of GeocodingSamplerType.canGeocodeLocation(_:)();
    (*v24)(v14, v69);
    v27 = *(v59 + 48);
    v28 = v23;
    v29 = v23;
    v30 = v60;
    sub_100051108(v29, v60, &type metadata accessor for SavedLocation);
    *(v30 + v27) = v26 & 1;
    v31 = v65;
    sub_10016D244();
    v32 = *(*v31 + 16);
    sub_10016D2F0(v32);
    v33 = *v31;
    *(v33 + 16) = v32 + 1;
    sub_10016D280(v30, v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32);
    sub_1000161C0(v25 + 6, v25[9]);
    dispatch thunk of GeocodeManagerType.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)();
    (*(v55 + 8))(v17, v68);
    v34 = v28;
  }

  else
  {
    v68 = v23;
    v35 = v57;
    (*(v71 + 32))(v10, v22, v57);
    v36 = v70;
    v37 = v10;
    sub_1000161C0(v70 + 12, v70[15]);
    Location.identifier.getter();
    v38 = dispatch thunk of GeocodingSamplerType.canGeocodeLocation(_:)();
    (*v24)(v14, v69);
    v39 = v58;
    if ((v38 & 1) == 0)
    {
      v52 = v56;
      Location.lastRefreshDate.getter();
      v53 = type metadata accessor for Date();
      v54 = sub_100024D10(v52, 1, v53);
      sub_1000180EC(v52, &unk_100CB2CF0, &unk_100A2D7F0);
      if (v54 != 1 && (v39 & 1) == 0)
      {
        result = (*(v71 + 8))(v10, v35);
        v50 = 0;
        goto LABEL_6;
      }
    }

    v40 = v60;
    v41 = *(v59 + 48);
    v34 = v68;
    sub_100051108(v68, v60, &type metadata accessor for SavedLocation);
    *(v40 + v41) = v38 & 1;
    v42 = v65;
    sub_10016D244();
    v43 = *(*v42 + 16);
    sub_10016D2F0(v43);
    v44 = *v42;
    *(v44 + 16) = v43 + 1;
    sub_10016D280(v40, v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v43);
    sub_1000161C0(v36 + 6, v36[9]);
    dispatch thunk of GeocodeManagerType.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:qos:)();
    (*(v71 + 8))(v37, v35);
  }

  v45 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v46 = v66;
  sub_100051108(v34, v66, &type metadata accessor for SavedLocation);
  v47 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v48 = swift_allocObject();
  sub_100079DEC(v46, v48 + v47, &type metadata accessor for SavedLocation);
  v49 = zalgo.getter();
  v50 = Promise.recover(on:closure:)();

LABEL_6:
  *v72 = v50;
  return result;
}

uint64_t sub_10016D138()
{
  v1 = *(type metadata accessor for SavedLocation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SavedLocation.Placeholder();
  }

  else
  {
    type metadata accessor for Location();
  }

  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_10016D280(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD1370, &qword_100A76780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016D308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for SavedLocation();
  return swift_storeEnumTagMultiPayload();
}

void sub_10016D390(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10016D430()
{
  sub_100006F14((v0 + 16));

  return v0;
}

uint64_t sub_10016D460()
{
  sub_10016D430();

  return swift_deallocClassInstance();
}

unint64_t sub_10016D4A4()
{
  result = qword_100CEC0B0;
  if (!qword_100CEC0B0)
  {
    result = swift_getWitnessTable(byte_100AA1FD4, &type metadata for LocationsOfInterestState, v0, v1);
    atomic_store(result, &qword_100CEC0B0);
  }

  return result;
}

uint64_t sub_10016D4F8(uint64_t a1)
{
  sub_10016D4A4();

  return ShortDescribable.description.getter();
}

unint64_t sub_10016D534()
{
  result = qword_100CA35B8;
  if (!qword_100CA35B8)
  {
    result = swift_getWitnessTable(asc_100AA1FAC, &type metadata for LocationsOfInterestState, v0, v1);
    atomic_store(result, &qword_100CA35B8);
  }

  return result;
}

uint64_t sub_10016D598@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 2:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2D320;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x8000000100AE9AA0;
      v8 = sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
      *(inited + 48) = a1;
      *(inited + 72) = v8;
      *(inited + 80) = 0xD000000000000013;
      *(inited + 120) = v8;
      *(inited + 88) = 0x8000000100ADECA0;
      *(inited + 96) = a2;

      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0, &qword_100AA20D8);
      v9 = sub_10016D910();
      sub_100017228(v9);
      break;
    case 3:
      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0, &qword_100AA20D8);
      v10 = sub_10016D910();
      sub_100017228(v10);
      break;
    default:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v11 = swift_initStackObject();
      sub_10002366C(v11, "locationsOfInterest", xmmword_100A2C3F0);
      v11[4].n128_u64[1] = sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
      v11[3].n128_u64[0] = a1;

      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0, &qword_100AA20D8);
      v12 = sub_10016D910();
      sub_100017228(v12);
      break;
  }

  return ShortDescription.init(name:_:)();
}

unint64_t sub_10016D910()
{
  result = qword_100CEC0A8;
  if (!qword_100CEC0A8)
  {
    v3 = sub_10022E824(&qword_100CEC0A0, &qword_100AA20D8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CEC0A8);
  }

  return result;
}

uint64_t sub_10016D974()
{
  sub_100008188();
  *(*(v0 + 88) + 208) = 0;
  sub_100006248();

  sub_100003B14();

  return v1();
}

uint64_t sub_10016DA18()
{
  sub_100003B08();
  sub_10000C7E4();
  v2 = *v1;
  sub_100003AF8();
  *v3 = v2;
  *(v4 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005B05D4, 0, 0);
  }

  else
  {
    sub_100003B14();

    return v5();
  }
}

uint64_t sub_10016DB38()
{

  return type metadata accessor for LocationComponentHeaderMetrics(0);
}

uint64_t sub_10016DB58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10016DBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016DC1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  type metadata accessor for NotificationsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = (v19 - v18);
  sub_10022C350(&qword_100CBCED8, &unk_100A63660);
  sub_1000037C4();
  v56 = v22;
  v57 = v21;
  __chkstk_darwin(v21);
  v55[1] = v55 - v23;
  sub_10016E498(v2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      sub_1000E6774(&v20[v39]);
      sub_1005458EC(v20, type metadata accessor for NotificationLocation);
      goto LABEL_14;
    case 2u:
      sub_10022C350(&qword_100CB1AB8, &unk_100A42080);
      v28 = sub_100004488();
      v29(v28);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      sub_10001F01C(inited, xmmword_100A2C3F0);
      v31 = NotificationSubscription.Kind.description.getter();
      sub_100074BB8(v31, v32, &type metadata for String);
      sub_1000148A4();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v12 + 8))(v16, v10);
      type metadata accessor for NotificationSubscription.Location();
      goto LABEL_7;
    case 3u:
    case 8u:
      v45 = sub_100010324();
      v46(v45);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v47 = swift_initStackObject();
      sub_10001F01C(v47, xmmword_100A2C3F0);
      v48 = PredictedLocationsNotificationSubscription.Kind.description.getter();
      sub_100074BB8(v48, v49, &type metadata for String);
      sub_1000148A4();
      type metadata accessor for MainAction(0);
      goto LABEL_13;
    case 4u:
    case 6u:
      sub_1000060FC();
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    case 5u:
      v40 = sub_100010324();
      v41(v40);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v42 = swift_initStackObject();
      sub_10001F01C(v42, xmmword_100A2C3F0);
      v43 = PredictedLocationsNotificationSubscription.Kind.description.getter();
      sub_100074BB8(v43, v44, &type metadata for String);
      sub_1000148A4();
      type metadata accessor for MainAction(0);
      sub_10001C574();
LABEL_13:
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v5 + 8))(v9, v3);
      goto LABEL_14;
    case 7u:
      sub_10022C350(&qword_100CB1AB0, &unk_100A5C150);
      v33 = sub_100004488();
      v34(v33);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v35 = swift_initStackObject();
      sub_10001F01C(v35, xmmword_100A2C3F0);
      v36 = NotificationSubscription.Kind.description.getter();
      sub_100074BB8(v36, v37, &type metadata for String);
      sub_1000148A4();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v12 + 8))(v16, v10);
      type metadata accessor for Location();
LABEL_7:
      sub_1000037E8();
      (*(v38 + 8))(v20);
      goto LABEL_14;
    case 9u:
      v26 = *v20;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_100A2C3F0;
      strcpy((v27 + 32), "availability");
      *(v27 + 45) = 0;
      *(v27 + 46) = -5120;
      *(v27 + 72) = &type metadata for Bool;
      *(v27 + 48) = v26;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    case 0xAu:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    default:
      v24 = *v20;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_100A2C3F0;
      *(v25 + 32) = 0x6574617473;
      *(v25 + 40) = 0xE500000000000000;
      *(v25 + 72) = &type metadata for NotificationAuthorizationState;
      *(v25 + 48) = v24;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
LABEL_11:
      sub_100049930();
      ShortDescription.init(name:_:)();
LABEL_14:
      v51 = v57;
      v50 = v58;
      v52 = v56;
      v58[3] = v57;
      v50[4] = sub_100056774();
      v53 = sub_100042FB0(v50);
      return (*(v52 + 32))(v53, v2, v51);
  }
}

uint64_t sub_10016E498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10016E538()
{
  sub_10000C778();
  v2 = v1;
  v127 = v3;
  v140 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v153 = v0;
  v136 = *v0;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v151 = v16;
  v152 = v15;
  __chkstk_darwin(v15);
  v138 = v17;
  sub_10001376C();
  v147 = v18;
  v19 = sub_1000038CC();
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003918(v22 - v21);
  v133 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v132 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_100003918(v26 - v25);
  v131 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v129 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_100003918(v30 - v29);
  v146 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v139 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  v149 = v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  sub_10000E70C();
  v145 = v36;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v38 = v37;
  v40 = __chkstk_darwin(v39);
  v42 = v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v38;
  v43 = *(v38 + 16);
  v150 = v44;
  v143 = v41;
  v144 = v43;
  (v43)(v42, v14, v40);
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  sub_1008B1694();
  swift_allocObject();

  v141 = v12;
  v142 = v10;
  v45 = v10;
  v46 = v14;
  v137 = v8;
  v148 = v6;
  v47 = sub_10005B8AC(1u, v42, 0, v12, v45, v8, v6);
  Location.coordinate.getter();
  if (v48 == 0.0 || (Location.coordinate.getter(), v49 == 0.0))
  {
    sub_1005B3D94(0xD000000000000038, 0x8000000100AE35D0);
    if (v2)
    {
      v2();
    }
  }

  else
  {
    v50 = v153[56];
    v51 = v145;
    OSSignpostID.init(log:)();
    v127 &= 1u;
    v116 = sub_100086BF4(v127);
    sub_100007E8C();
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = v139;
    v54 = *(v139 + 16);
    v118 = v139 + 16;
    v119 = v54;
    v55 = v146;
    v54(v149, v51, v146);
    v56 = sub_100003A60();
    v144(v56);
    v117 = *(v53 + 80);
    v57 = (v117 + 32) & ~v117;
    v125 = *(v154 + 80);
    v120 = v33 + v125;
    v58 = (v33 + v125 + v57) & ~v125;
    v124 = v125 | 7;
    v123 = v125 | 7 | v117;
    v59 = swift_allocObject();
    *(v59 + 16) = v52;
    *(v59 + 24) = v47;
    v115[2] = v52;
    v60 = *(v53 + 32);
    v121 = v53 + 32;
    v122 = v60;
    v60(v59 + v57, v149, v55);
    v61 = *(v154 + 32);
    v154 += 32;
    v126 = v61;
    v61(v59 + v58, v42, v150);
    v156[4] = sub_100087D3C;
    v156[5] = v59;
    sub_10001880C();
    sub_1000318B0(COERCE_DOUBLE(1107296256));
    v156[2] = v62;
    v156[3] = &unk_100C74858;
    v63 = _Block_copy(v156);

    v64 = v128;
    static DispatchQoS.unspecified.getter();
    v155 = _swiftEmptyArrayStorage;
    sub_100021770();
    v115[1] = sub_1000675AC(v65, v66);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_10001E924();
    sub_10006768C(v67, v68, &qword_100A2EC00);
    v69 = v130;
    v70 = v133;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v71 = v116;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);

    sub_10000E73C();
    v72(v69, v70);
    sub_10000E73C();
    v73(v64, v131);

    v74 = v135;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v74);
    sub_100006A88();
    sub_100087544();
    v75 = sub_100086BF4(v127);
    v76 = sub_100003A60();
    v77 = v150;
    v78 = v144;
    v144(v76);
    v79 = (v125 + 16) & ~v125;
    v80 = swift_allocObject();
    v135 = v46;
    v126(v80 + v79, v42, v77);
    sub_10022C350(&qword_100CE2960, &unk_100A95800);
    v136 = firstly<A, B>(on:disposeOn:closure:)();

    v81 = v146;
    v119(v149, v145, v146);
    v78(v42, v135, v77);
    v82 = v151;
    v83 = *(v151 + 16);
    v133 = v151 + 16;
    updated = v83;
    v83(v147, v140, v152);
    v84 = (v117 + 24) & ~v117;
    v129 = v47;
    v85 = (v120 + v84) & ~v125;
    v143 += 7;
    v86 = (v143 + v85) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
    v131 = *(v82 + 80);
    v132 = v131 + 32;
    v88 = (v131 + 32 + v87) & ~v131;
    v89 = v88 + v138;
    v90 = swift_allocObject();
    *(v90 + 16) = v153;
    v122(v90 + v84, v149, v81);
    v91 = v150;
    v126(v90 + v85, v42, v150);
    v92 = v129;
    *(v90 + v86) = v129;
    v93 = (v90 + v87);
    v94 = v142;
    *v93 = v141;
    v93[1] = v94;
    v95 = v137;
    v96 = v148;
    v93[2] = v137;
    v93[3] = v96;
    v97 = *(v151 + 32);
    v151 += 32;
    v149 = v97;
    v98 = v90 + v88;
    v99 = v147;
    (v97)(v98, v147, v152);
    *(v90 + v89) = v127;

    v100 = v95;

    v101 = v92;

    v102 = zalgo.getter();
    v130 = Promise.then<A>(on:closure:)();

    (v144)(v42, v135, v91);
    updated(v99, v140, v152);
    v103 = (v125 + 32) & ~v125;
    v104 = (v143 + v103) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v132 + v104) & ~v131;
    v106 = v105 + v138;
    v107 = swift_allocObject();
    v108 = v153;
    *(v107 + 16) = v101;
    *(v107 + 24) = v108;
    v126(v107 + v103, v42, v91);
    v109 = (v107 + v104);
    v110 = v142;
    *v109 = v141;
    v109[1] = v110;
    v111 = v147;
    v112 = v148;
    v109[2] = v100;
    v109[3] = v112;
    (v149)(v107 + v105, v111, v152);
    *(v107 + v106) = v127;

    v113 = zalgo.getter();
    Promise.error(on:closure:)();

    sub_10000E73C();
    v114(v145, v146);
  }

  sub_10000536C();
}

uint64_t sub_10016F12C()
{
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v21 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v2 + 64);
  v22 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  v6 = (v21 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_10017080C();
  v23 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v8 = v7;
  v9 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 32) & ~*(v7 + 80);

  v18 = sub_1000524C0(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  v19(v18);
  (*(v5 + 8))(v0 + v6, v22);

  (*(v8 + 8))(v0 + v9, v23);

  return swift_deallocObject();
}

uint64_t sub_10016F310()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_10002CB50();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);

  v2 = sub_1000C90B8();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10016F454(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000C790();
  if (*a2 != -1)
  {
    swift_once();
  }

  LOBYTE(v14[0]) = 1;
  sub_1000135A0();
  sub_10016F958(v8, v9);
  result = Updatable.save<A>(setting:value:)();
  v11 = a1[2];
  if (v11)
  {
    v12 = a1[3];
    type metadata accessor for EnvironmentAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v15 = 0;
    memset(v14, 0, sizeof(v14));

    sub_10004F034(v4, v14, v11, v12);
    sub_10002B028(v11);
    sub_1000180EC(v14, &unk_100CD81B0, &unk_100A3B000);
    sub_1000142B0();
    return sub_10004F4C0(v4, v13);
  }

  return result;
}

uint64_t sub_10016F5D4(uint64_t *a1)
{
  v5 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location();
  sub_100003AE8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = sub_1000AF69C();
  sub_100003AE8(v13);
  return sub_10016F740(a1, *(v1 + 16), v1 + v7, v1 + v12, *(v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 16), *(v1 + v3 + 24), v1 + ((v3 + *(v14 + 80) + 32) & ~*(v14 + 80)), *(v1 + ((v3 + *(v14 + 80) + 32) & ~*(v14 + 80)) + *(v15 + 64)));
}

uint64_t sub_10016F740(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v39 = a8;
  v36 = a6;
  v37 = a7;
  v30 = a3;
  v31 = a5;
  HIDWORD(v32) = a11;
  v33 = a9;
  v34 = a10;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a1[1];
  v19 = static os_signpost_type_t.end.getter();
  v38 = a2;
  v20 = *(a2 + 448);
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A2C3F0;
  v35 = a4;
  v22 = Location.name.getter();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100035744();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v29 = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v19, &_mh_execute_header, v20, "Weather:resolveCountryCode", 26, 2, v30, "location %{private}s", 20, v29, v21);
  v25 = v31;

  *v16 = v17;
  v16[1] = v18;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v17, v18);
  sub_10005C1D4(v16);
  sub_100087544();
  v26 = 0;
  v27 = 0;
  if (v18 >= 2)
  {

    v26 = v17;
    v27 = v18;
  }

  sub_10016F998(v35, v36, v37, v39, v33, v34, BYTE4(v32) & 1, v26, v27, v25, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_10016F958(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NotificationsOptInStoreObserver();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10016F998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C778();
  *&v174 = v22;
  v159 = v23;
  v154 = v24;
  v158 = v25;
  v170 = v26;
  v171 = v27;
  v168 = v28;
  v169 = v29;
  v31 = v30;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v164 = v33;
  v165 = v32;
  __chkstk_darwin(v32);
  sub_1000037D8();
  sub_100003918(v35 - v34);
  v163 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v161 = v36;
  __chkstk_darwin(v37);
  sub_1000037D8();
  sub_100003918(v39 - v38);
  v157 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v156 = v40;
  __chkstk_darwin(v41);
  v153 = v42;
  sub_10001376C();
  sub_100003918(v43);
  v44 = type metadata accessor for Location();
  sub_1000037C4();
  v176 = v45;
  __chkstk_darwin(v46);
  sub_10000FBD0();
  v167 = v47;
  sub_1000E1390();
  __chkstk_darwin(v48);
  sub_10000E70C();
  v173 = v49;
  sub_1000E1390();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v151 = v51;
  sub_1000E1390();
  __chkstk_darwin(v52);
  v54 = &v146 - v53;
  v152 = v55;
  __chkstk_darwin(v56);
  v58 = &v146 - v57;
  if (qword_100CA2730 != -1)
  {
    sub_1000D4354(&qword_100CA2730);
  }

  v175 = a22;
  v59 = type metadata accessor for Logger();
  v60 = sub_10000703C(v59, qword_100D90BE8);
  v62 = v176 + 16;
  v61 = *(v176 + 16);
  v63 = sub_1000884C4();
  v61(v63);
  (v61)(v54, v31, v44);
  v166 = v60;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  v172 = v61;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v150 = v31;
    v68 = v67;
    v149 = swift_slowAlloc();
    v178[0] = v149;
    *v68 = 141558787;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;
    v69 = Location.id.getter();
    v147 = v65;
    v71 = v70;
    v72 = *(v176 + 8);
    v72(v58, v44);
    v73 = sub_100078694(v69, v71, v178);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2160;
    *(v68 + 24) = 1752392040;
    *(v68 + 32) = 2081;
    sub_1000675AC(&qword_100CA6678, &type metadata accessor for Location);
    dispatch thunk of CustomStringConvertible.description.getter();
    v72(v54, v44);
    v61 = v172;
    v74 = sub_100003940();
    v77 = sub_100078694(v74, v75, v76);

    *(v68 + 34) = v77;
    _os_log_impl(&_mh_execute_header, v64, v147, "About to check whether we need to refresh available data sets for location.id: %{private,mask.hash}s. location=%{private,mask.hash}s", v68, 0x2Au);
    v78 = v149;
    swift_arrayDestroy();
    sub_100003884(v78);
    v79 = v68;
    v31 = v150;
    sub_100003884(v79);
  }

  else
  {

    v72 = *(v176 + 8);
    v72(v54, v44);
    v72(v58, v44);
  }

  if (sub_10017087C(v31, v168, v169, v170, v171))
  {
    v171 = a21;
    v80 = v151;
    v81 = sub_1000884C4();
    v61(v81);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v84 = os_log_type_enabled(v82, v83);
    v148 = v62;
    if (v84)
    {
      v85 = swift_slowAlloc();
      v86 = v80;
      v87 = swift_slowAlloc();
      v178[0] = v87;
      sub_1000427B0(7.2225e-34);
      v88 = Location.id.getter();
      v89 = v72;
      v91 = v90;
      v89(v86, v44);
      v92 = sub_100078694(v88, v91, v178);

      *(v85 + 14) = v92;
      sub_10001768C(&_mh_execute_header, v93, v94, "We need to refresh available data sets for location.id: %{private,mask.hash}s");
      sub_100006F14(v87);
      sub_100003884(v87);
      sub_100003884(v85);
    }

    else
    {

      v107 = sub_1000C8890();
      (v72)(v107);
    }

    v108 = v172;
    v109 = v173;
    v110 = v44;
    (v172)(v173, v31, v44);
    v111 = v176;
    v112 = *(v176 + 80);
    v113 = (v112 + 32) & ~v112;
    v166 = v113 + v152;
    v167 = v113;
    v169 = v112 | 7;
    v114 = swift_allocObject();
    v115 = v174;
    *(v114 + 16) = v175;
    *(v114 + 24) = v115;
    v116 = *(v111 + 32);
    v176 = v111 + 32;
    v168 = v116;
    v146 = v110;
    v116(v114 + v113, v109, v110);

    asyncMain(block:)();

    v154 &= 1u;
    v170 = sub_100086BF4(v154);
    sub_100007E8C();
    v117 = swift_allocObject();
    swift_weakInit();
    v150 = *(v115 + 56);
    v152 = *(v115 + 16);
    v118 = *(v115 + 40);
    v149 = *(v115 + 48);
    v151 = v118;
    v174 = *(v115 + 24);
    v119 = sub_100025214();
    v108(v119);
    v120 = v156;
    v121 = v155;
    v122 = v157;
    (*(v156 + 16))(v155, v158, v157);
    v123 = v166;
    v124 = (v166 + *(v120 + 80) + 1) & ~*(v120 + 80);
    v125 = (v153 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 23) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    v128 = v175;
    *(v127 + 16) = v117;
    *(v127 + 24) = v128;
    v168(v127 + v167, v173, v146);
    *(v127 + v123) = v154;
    (*(v120 + 32))(v127 + v124, v121, v122);
    v129 = (v127 + v125);
    v130 = v171;
    *v129 = v159;
    v129[1] = v130;
    v131 = (v127 + v126);
    v132 = v150;
    *v131 = v149;
    v131[1] = v132;
    v133 = v127 + ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v133 = v152;
    *(v133 + 8) = v174;
    *(v133 + 24) = v151;
    v178[4] = sub_100171E90;
    v178[5] = v127;
    sub_10001880C();
    sub_1000318B0(COERCE_DOUBLE(1107296256));
    v178[2] = v134;
    v178[3] = &unk_100C74948;
    v135 = _Block_copy(v178);

    v136 = v160;
    static DispatchQoS.unspecified.getter();
    v177 = _swiftEmptyArrayStorage;
    sub_100021770();
    sub_1000675AC(v137, v138);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_10001E924();
    sub_10006768C(v139, v140, &qword_100A2EC00);
    v141 = v162;
    v142 = v165;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v143 = v170;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v135);

    (*(v164 + 8))(v141, v142);
    sub_10000E73C();
    v144(v136, v163);
  }

  else
  {
    sub_10018E2C0(0, 0);
    v95 = sub_1000884C4();
    v61(v95);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v178[0] = v99;
      sub_1000427B0(7.2225e-34);
      v100 = Location.id.getter();
      v102 = v101;
      v103 = sub_1000C8890();
      (v72)(v103);
      v104 = sub_100078694(v100, v102, v178);

      *(v98 + 14) = v104;
      sub_10001768C(&_mh_execute_header, v105, v106, "We do NOT need to refresh available data sets for location.id: %{private,mask.hash}s");
      sub_100006F14(v99);
      sub_100003884(v99);
      sub_100003884(v98);
    }

    else
    {

      v145 = sub_1000C8890();
      (v72)(v145);
    }
  }

  sub_10000536C();
}

uint64_t sub_100170504()
{
  sub_1000C87D0();
  type metadata accessor for Location();
  sub_10000548C();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  sub_100171244();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);

  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1001706CC(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1001706D8()
{

  return type metadata accessor for WeatherData.WeatherStatisticsState(0);
}

uint64_t sub_10017084C(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_10017087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10022C350(&qword_100CE2A28, &qword_100A95958);
  __chkstk_darwin(v6 - 8);
  v8 = (&v18 - v7);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v11);
  sub_100087544();
  v12 = Location.id.getter();
  sub_100171164(v12, v13, a5);

  v14 = type metadata accessor for LocationAvailableDataSetState(0);
  if (sub_100024D10(v8, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v8[1];
      *v11 = *v8;
      v11[1] = v16;
LABEL_5:
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v11);
      sub_100087544();
      return 1;
    }

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v11);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v11);
    sub_100087544();
  }

  sub_100087544();
  return 0;
}

uint64_t sub_100170AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1001718A8(v22, sub_10026B318, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B318;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C482D8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1002608D8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

__n128 sub_100171190@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2352);
  result = *(v1 + 2368);
  *a1 = result;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 2384);
  return result;
}

void sub_100171280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1000D5F5C(v7, v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  swift_endAccess();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    sub_1000D52D8(v13, v7, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v28, aBlock[0]);
    *(v4 + 16) = v30;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v20 = type metadata accessor for Logger();
  sub_10000703C(v20, qword_100D90C18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315906;
    *(v23 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, aBlock);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, aBlock);
    *(v23 + 32) = 2048;
    *(v23 + 34) = v13;
    _os_log_impl(&_mh_execute_header, v21, v22, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v7;
  v26[4] = v13;
  v26[5] = a2;
  v26[6] = a3;
  aBlock[4] = sub_10026B300;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C481C0;
  v27 = _Block_copy(aBlock);

  [v24 installCACommitCompletionBlock:v27];
  _Block_release(v27);
}

uint64_t sub_1001715F4(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 1;
  }

  sub_100963D14();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (DeviceIsSlow())
  {
    return 0x3FB999999999999ALL;
  }

  return 0;
}

uint64_t sub_100171684()
{
  sub_100017580();
  v2 = type metadata accessor for ViewData();
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100171C1C(v0, v4);
}

uint64_t sub_1001716EC()
{
  type metadata accessor for PredictedLocationsAuthorization();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100174D38;
  v4 = sub_10001BD10();

  return sub_1001717E0(v4, v5, v6, v2, v7);
}

uint64_t sub_1001717E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = type metadata accessor for MainAction(0);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100171DA4, v7, v6);
}

void sub_1001718A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1000D5F5C(v7, v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  swift_endAccess();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    sub_1000D52D8(v13, v7, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v28, aBlock[0]);
    *(v4 + 16) = v30;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v20 = type metadata accessor for Logger();
  sub_10000703C(v20, qword_100D90C18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315906;
    *(v23 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, aBlock);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, aBlock);
    *(v23 + 32) = 2048;
    *(v23 + 34) = v13;
    _os_log_impl(&_mh_execute_header, v21, v22, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v7;
  v26[4] = v13;
  v26[5] = a2;
  v26[6] = a3;
  aBlock[4] = sub_10026B330;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48328;
  v27 = _Block_copy(aBlock);

  [v24 installCACommitCompletionBlock:v27];
  _Block_release(v27);
}

uint64_t sub_100171C1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewData();
  sub_100171D5C(&qword_100CB3EE0, &type metadata accessor for ViewData, &protocol conformance descriptor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewEvent();
  sub_100171D5C(&qword_100CC41B8, &type metadata accessor for LocationViewEvent, &protocol conformance descriptor for LocationViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_100171D14(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100171D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100171DA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *v1 = sub_100171FAC();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_10004F034(v1, v0 + 16, v3, v4);
  sub_1000E17D8(v0 + 16);
  sub_1000547B8(v1);

  v5 = *(v0 + 8);

  return v5();
}

void sub_100171E90()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v6);
  sub_100049E3C();
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100172268(*(v0 + 16), *(v0 + 24), v0 + v3, *(v0 + v5), v0 + v9, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t sub_100171FAC()
{
  v2 = v1;
  type metadata accessor for PredictedLocationsAuthorization();
  sub_10000548C();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v2, v0, v6);
  v9 = (*(v4 + 88))(v8, v0);
  if (v9 == enum case for PredictedLocationsAuthorization.notDetermined(_:))
  {
    return 1;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.featureUnavailable(_:))
  {
    return 0;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.enabled(_:))
  {
    return 2;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.disabledInSystemServices(_:))
  {
    return 3;
  }

  if (v9 != enum case for PredictedLocationsAuthorization.disabledInWeatherSettings(_:))
  {
    (*(v4 + 8))(v8, v0);
    return 1;
  }

  return 4;
}

uint64_t sub_100172120(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for EnvironmentAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_100172164()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
  *(v0 - 160) = v1 + 8;
}

uint64_t sub_100172184()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t sub_100172198()
{

  return type metadata accessor for Date();
}

uint64_t sub_1001721CC()
{

  return Optional<A>.write(to:)();
}

void sub_100172204(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 236);

  sub_1009A079C(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_10017221C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100172268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v87 = a8;
  v81 = a6;
  LODWORD(v80) = a4;
  v86 = type metadata accessor for Location();
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = v18;
  v84 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for OSSignpostID();
  v85 = *(v90 - 8);
  v24 = *(v85 + 64);
  __chkstk_darwin(v90);
  v89 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v65 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v76 = a13;
    v75 = a12;
    v74 = a11;
    v73 = a10;
    v77 = a9;
    v78 = a7;
    v68 = a5;
    v29 = Strong;
    Location.coordinate.getter();
    v31 = v30;
    Location.coordinate.getter();
    v72 = [objc_allocWithZone(CLLocation) initWithLatitude:v31 longitude:v32];
    v33 = *(v29 + 448);
    v88 = v27;
    OSSignpostID.init(log:)();
    v34 = static os_signpost_type_t.begin.getter();
    v66 = a2;
    v35 = v34;
    v36 = *(v29 + 448);
    v67 = a1;
    v69 = v29;
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v37 = swift_allocObject();
    v71 = v19;
    v38 = v37;
    *(v37 + 16) = xmmword_100A2C3F0;
    v39 = v36;
    v70 = v20;
    v40 = v39;
    v41 = Location.name.getter();
    v43 = v42;
    v38[7] = &type metadata for String;
    v38[8] = sub_100035744();
    v38[4] = v41;
    v38[5] = v43;
    v64 = 2;
    v44 = v35;
    v45 = v88;
    os_signpost(_:dso:log:name:signpostID:_:_:)(v44, &_mh_execute_header, v40, "Weather:fetchAvailableDataSets", 30, 2, v88, "location %{private}s", 20, v64, v38);

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v23);
    sub_100087544();
    v80 = sub_1000925AC();
    Location.timeZone.getter();
    updated = AppConfiguration.locationDecimalPrecision.getter();
    v46 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v68 = v46;
    swift_weakInit();

    v47 = v83;
    v48 = v84;
    v49 = v86;
    (*(v83 + 16))(v84, a3, v86);
    v50 = v85;
    (*(v85 + 16))(v89, v45, v90);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = (v82 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v50 + 80) + v52 + 32) & ~*(v50 + 80);
    v54 = (v24 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v46;
    *(v55 + 24) = v66;
    (*(v47 + 32))(v55 + v51, v48, v49);
    v56 = (v55 + v52);
    v57 = v74;
    *v56 = v73;
    v56[1] = v57;
    v58 = v76;
    v56[2] = v75;
    v56[3] = v58;
    v59 = v90;
    (*(v50 + 32))(v55 + v53, v89, v90);
    v60 = (v55 + v54);
    v61 = v77;
    *v60 = v87;
    v60[1] = v61;

    v62 = v72;
    v63 = v91;
    WeatherService.fetchAvailableDataSets(for:timeZone:locationDecimalPrecision:countryCode:completion:)();

    (*(v70 + 8))(v63, v71);
    (*(v50 + 8))(v88, v59);
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

uint64_t sub_10017295C()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_10002CB50();
  type metadata accessor for OSSignpostID();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);

  v2 = sub_1000C90B8();
  v3(v2);

  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100172AA4@<X0>(uint64_t *a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for ConfiguredUnitsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for ActivityAction(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for Locale();
  sub_1000037C4();
  v75 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_10022C350(&qword_100CBCED8, &unk_100A63660);
  sub_1000037C4();
  v76 = v24;
  v77 = v23;
  __chkstk_darwin(v23);
  v79 = &v75 - v25;
  sub_1000C8190(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v56 = sub_100005CB0(inited, xmmword_100A2C3F0);
      sub_1000149C4(v56, &type metadata for PredictedLocationsAuthorizationAction);
      Dictionary.init(dictionaryLiteral:)();
      v57 = sub_1000038D8();
      type metadata accessor for MainAction(v57);
      sub_10000457C();
      goto LABEL_17;
    case 2u:
      v44 = *(v22 + 1);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v45 = swift_initStackObject();
      v46 = sub_100005CB0(v45, xmmword_100A2C3F0);
      *(sub_1000149C4(v46, &type metadata for NetworkAction) + 49) = v44;
      Dictionary.init(dictionaryLiteral:)();
      v47 = sub_1000038D8();
      type metadata accessor for MainAction(v47);
      sub_1000089BC();
      goto LABEL_22;
    case 3u:
      v48 = v75;
      (*(v75 + 32))(v17, v22, v12);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_100A2C3F0;
      *(v49 + 32) = 0x656C61636F6CLL;
      *(v49 + 40) = 0xE600000000000000;
      *(v49 + 72) = v12;
      v50 = sub_100042FB0((v49 + 48));
      (*(v48 + 16))(v50, v17, v12);
      Dictionary.init(dictionaryLiteral:)();
      v51 = sub_1000038D8();
      type metadata accessor for MainAction(v51);
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      (*(v48 + 8))(v17, v12);
      goto LABEL_23;
    case 4u:
      v34 = type metadata accessor for ActivityAction;
      sub_1005A9810(v22, v11);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v35 = swift_initStackObject();
      v36 = sub_100005CB0(v35, xmmword_100A2C3F0);
      v36[4].n128_u64[1] = v7;
      v37 = sub_100042FB0(&v36[3]);
      sub_1000C8190(v11, v37);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for MainAction(0);
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      v38 = v11;
      goto LABEL_9;
    case 5u:
      v58 = *v22;
      v59 = *(v22 + 8);
      v18 = "isReduceMotionEnabled";
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_100A2C3F0;
      *(v60 + 32) = 0x437972746E756F63;
      *(v60 + 40) = 0xEB0000000065646FLL;
      *(v60 + 72) = &type metadata for String;
      *(v60 + 48) = v58;
      *(v60 + 56) = v59;
      Dictionary.init(dictionaryLiteral:)();
      v61 = sub_1000038D8();
      type metadata accessor for MainAction(v61);
      sub_10000457C();
      goto LABEL_17;
    case 6u:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v18 = 0xD000000000000016;
      *(v62 + 32) = 0xD000000000000015;
      *(v62 + 40) = v63;
      sub_1000149C4(v62, &type metadata for Bool);
      Dictionary.init(dictionaryLiteral:)();
      v64 = sub_1000038D8();
      type metadata accessor for MainAction(v64);
      goto LABEL_17;
    case 7u:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v18 = 0xD000000000000016;
      *(v52 + 32) = 0xD000000000000016;
      *(v52 + 40) = v53;
      sub_1000149C4(v52, &type metadata for Bool);
      Dictionary.init(dictionaryLiteral:)();
      v54 = sub_1000038D8();
      type metadata accessor for MainAction(v54);
      goto LABEL_17;
    case 8u:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v43 = 0xD000000000000014;
      goto LABEL_20;
    case 9u:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v43 = 0xD000000000000012;
LABEL_20:
      *(v41 + 32) = v43;
      *(v41 + 40) = v42;
      sub_1000149C4(v41, &type metadata for Bool);
      goto LABEL_21;
    case 0xAu:
      v65 = *v22;
      v66 = *(v22 + 8);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v67 = swift_initStackObject();
      v68 = sub_100005CB0(v67, xmmword_100A2C3F0);
      v68[4].n128_u64[1] = &type metadata for LinkAction;
      v68[3].n128_u64[0] = v65;
      v68[3].n128_u64[1] = v66;
      Dictionary.init(dictionaryLiteral:)();
      v69 = sub_1000038D8();
      type metadata accessor for MainAction(v69);
      sub_1000089BC();
      goto LABEL_22;
    case 0xBu:
      v31 = *v22;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_100A2C3F0;
      *(v32 + 32) = 0x746E756F4377656ELL;
      *(v32 + 40) = 0xE800000000000000;
      *(v32 + 72) = &type metadata for Int;
      *(v32 + 48) = v31;
      Dictionary.init(dictionaryLiteral:)();
      v33 = sub_1000038D8();
      type metadata accessor for MainAction(v33);
      goto LABEL_17;
    case 0xCu:
      v34 = type metadata accessor for ConfiguredUnitsAction;
      sub_1005A9810(v22, v6);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_100A2C3F0;
      *(v39 + 32) = 1953066613;
      *(v39 + 40) = 0xE400000000000000;
      *(v39 + 72) = v2;
      v40 = sub_100042FB0((v39 + 48));
      sub_1000C8190(v6, v40);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for MainAction(0);
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      v38 = v6;
LABEL_9:
      sub_1005A986C(v38, v34);
      goto LABEL_23;
    case 0xDu:
    case 0xFu:
LABEL_21:
      Dictionary.init(dictionaryLiteral:)();
      v70 = sub_1000038D8();
      type metadata accessor for MainAction(v70);
      sub_1000089BC();
      goto LABEL_22;
    case 0xEu:
      Dictionary.init(dictionaryLiteral:)();
      v30 = sub_1000038D8();
      type metadata accessor for MainAction(v30);
      goto LABEL_17;
    case 0x10u:
      Dictionary.init(dictionaryLiteral:)();
      v29 = sub_1000038D8();
      type metadata accessor for MainAction(v29);
      goto LABEL_17;
    default:
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v26 = swift_allocObject();
      v27 = sub_100005CB0(v26, xmmword_100A2C3F0);
      sub_1000149C4(v27, &type metadata for LocationAuthorizationAction);
      Dictionary.init(dictionaryLiteral:)();
      v28 = sub_1000038D8();
      type metadata accessor for MainAction(v28);
LABEL_17:
      sub_1000089BC();
LABEL_22:
      ShortDescription.init(name:_:)();
LABEL_23:
      v72 = v77;
      v71 = v78;
      v78[3] = v77;
      v71[4] = sub_100056774();
      v73 = sub_100042FB0(v71);
      return (*(v76 + 32))(v73, v18, v72);
  }
}

uint64_t sub_1001736AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, uint64_t), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100171280(v22, sub_10026B2E8, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B2E8;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48170;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1001B05BC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.sceneDidBecomeActive()()
{
  v1 = v0;
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_1000161C0((v0 + 248), *(v0 + 272));
  sub_100068374(&qword_100CB5240, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of AppConfigurationManagerType.addObserver(_:)();
  sub_1000161C0((v1 + 288), *(v1 + 312));
  sub_100005B4C();
  sub_100068374(v9, type metadata accessor for SessionEventsAndDataCoordinator, v10);
  sub_100003E0C();
  dispatch thunk of LocationManagerType.addObserver(_:)();
  UnfairLock.lock()();
  if ((*(v0 + 336) & 1) == 0)
  {
    (*(v4 + 104))(v8, enum case for StartMethod.homeScreenIconTap(_:), started);
    v11 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v11, v8, started);
    swift_endAccess();
    sub_10004A100();
  }

  *(v1 + 336) = 0;
  UnfairLock.unlock()();
}

uint64_t sub_100173F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1001745D0(v22, sub_1001ADEA4, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1001ADEA4;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48008;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1001A7CFC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

void sub_1001745D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1000D5F5C(v7, v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  swift_endAccess();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    sub_1000D52D8(v13, v7, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v28, aBlock[0]);
    *(v4 + 16) = v30;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v20 = type metadata accessor for Logger();
  sub_10000703C(v20, qword_100D90C18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315906;
    *(v23 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, aBlock);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, aBlock);
    *(v23 + 32) = 2048;
    *(v23 + 34) = v13;
    _os_log_impl(&_mh_execute_header, v21, v22, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v7;
  v26[4] = v13;
  v26[5] = a2;
  v26[6] = a3;
  aBlock[4] = sub_1001AD058;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48058;
  v27 = _Block_copy(aBlock);

  [v24 installCACommitCompletionBlock:v27];
  _Block_release(v27);
}

uint64_t sub_100174944()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_1001749A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WindowFocusManager();
  swift_allocObject();
  result = sub_10027832C();
  a1[3] = v2;
  a1[4] = &protocol witness table for WindowFocusManager;
  *a1 = result;
  return result;
}

void *sub_100174A04(void *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v11;
  if (v11)
  {
    sub_1000161C0(a2, a2[3]);
    dispatch thunk of ResolverType.resolve<A>(_:name:)();
    v6 = v11;
    v7 = v12;
    v8 = a1[3];
    v9 = a1[4];
    sub_1000161C0(a1, v8);
    v10 = *(v9 + 24);
    v10(&v11, v11, v12, v8, v9);
    sub_100006F14(&v11);
    if (v5 == v6)
    {
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      v10(&v11, v6, v7, v8, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_100006F14(&v11);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_100174BC4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for ActivityAction(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentAction(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051168();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1000501CC();
    sub_100A11808(v7, a2, a3);
    v11 = type metadata accessor for ActivityAction;
    v12 = v7;
  }

  else
  {
    v11 = type metadata accessor for EnvironmentAction;
    v12 = v10;
  }

  return sub_10004FF18(v12, v11);
}

uint64_t sub_100174D3C()
{
  v1 = *(type metadata accessor for PredictedLocationsNotificationSubscription() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_100174DFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((((((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100174DFC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v81 = a8;
  v80 = a7;
  v79 = a6;
  v77 = a5;
  v86 = a2;
  v84 = type metadata accessor for NotificationSettingsData();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v70 - v16;
  v71 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v71);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MainAction(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v78 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v70 = &v70 - v23;
  __chkstk_darwin(v24);
  v26 = (&v70 - v25);
  __chkstk_darwin(v27);
  v29 = (&v70 - v28);
  __chkstk_darwin(v30);
  v33 = &v70 - v32;
  v85 = v31;
  if (a1)
  {
    type metadata accessor for NotificationsOptInAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10004FF70();
    v35 = v34;
    v36 = v34[2];
    if (v36 >= v34[3] >> 1)
    {
      sub_10004FF70();
      v35 = v63;
    }

    v35[2] = v36 + 1;
    v31 = sub_1000CA208(v33, v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v36);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v37 = v86[4];
  v87 = v86[5];
  v88 = v37;
  v37(v89, v31);
  sub_100175920(v89[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v18);

  sub_100175984(v18);
  swift_beginAccess();

  sub_1000BA494();
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    swift_beginAccess();
    *v29 = *(a3 + 16);
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v35 = v64;
    }

    v41 = v35[2];
    if (v41 >= v35[3] >> 1)
    {
      sub_10004FF70();
      v35 = v65;
    }

    v35[2] = v41 + 1;
    v40 = sub_1000CA208(v29, v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v41);
  }

  v88(v89, v40);
  sub_100175920(v89[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v18);

  sub_100175984(v18);
  swift_beginAccess();

  sub_1000BA494();
  v43 = v42;

  v73 = v20;
  if (v43)
  {
    v45 = v78;
  }

  else
  {
    swift_beginAccess();
    *v26 = *(a4 + 16);
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v35 = v66;
    }

    v46 = v35[2];
    if (v46 >= v35[3] >> 1)
    {
      sub_10004FF70();
      v35 = v67;
    }

    v35[2] = v46 + 1;
    v44 = sub_1000CA208(v26, v35 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v46);
    v45 = v78;
  }

  v88(v89, v44);
  sub_100175920(v89[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v18);

  v47 = v72;
  v48 = v74;
  v49 = v75;
  (*(v72 + 16))(v74, &v18[*(v71 + 28)], v75);
  sub_100175984(v18);
  v50 = v76;
  PredictedLocationsNotificationSubscription.kind.getter();
  sub_10006CF08(&qword_100CE3030, 255, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v47 + 8);
  v52(v50, v49);
  v52(v48, v49);
  if (v51)
  {
    v53 = v73;
  }

  else
  {
    v54 = v70;
    PredictedLocationsNotificationSubscription.kind.getter();
    type metadata accessor for NotificationsAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v35 = v68;
    }

    v53 = v73;
    v55 = v35[2];
    if (v55 >= v35[3] >> 1)
    {
      sub_10004FF70();
      v35 = v69;
    }

    v35[2] = v55 + 1;
    sub_1000CA208(v54, v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v55);
  }

  *v45 = v79 & 1;
  type metadata accessor for NotificationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10004FF70();
    v35 = v61;
  }

  v56 = v35[2];
  if (v56 >= v35[3] >> 1)
  {
    sub_10004FF70();
    v35 = v62;
  }

  v35[2] = v56 + 1;
  sub_1000CA208(v45, v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56);
  v57 = v86[2];
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  sub_100060DE0(v91, v89, &unk_100CD81B0, &unk_100A3B000);
  v89[5] = v35;
  v90 = 0;
  sub_10004F1B0(v89, v57);
  sub_100018144(v89, &qword_100CA3510, &unk_100A2D540);
  v58 = sub_100018144(v91, &unk_100CD81B0, &unk_100A3B000);
  v88(v89, v58);
  sub_100175920(v89[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v18);

  sub_100175984(v18);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v59 = v82;
  NotificationSettingsData.init(isNotificationsEnabled:isCurrentLocationPrecipitationNotificationEnabled:isOtherLocationsPrecipitationNotificationEnabled:isCurrentLocationSevereNotificationEnabled:isOtherLocationsSevereNotificationEnabled:)();
  sub_10017E178(v59);
  return (*(v83 + 8))(v59, v84);
}

uint64_t sub_100175920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100175984(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001759E0(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v1199 = a3;
  v1200 = a1;
  v1201 = a2;
  v1171 = type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v1170 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003918(v6);
  v1119 = type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v1118 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003918(v10 - v9);
  v1123 = type metadata accessor for Location();
  sub_1000037C4();
  v1122 = v11;
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v1036 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1034 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = sub_100003918(v18 - v17);
  active = type metadata accessor for LocationViewerActiveLocationState(v19);
  v21 = sub_100003810(active);
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_100003990(v23 - v22);
  v24 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  v27 = sub_100003918(&v1032 - v26);
  v1114 = type metadata accessor for NotificationLocation(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v31 = sub_100003918(v30);
  v1202 = type metadata accessor for ViewState(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v43 = sub_100003918(v42);
  v1208 = type metadata accessor for TimeState(v43);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  v55 = sub_100003918(v54);
  v1204 = type metadata accessor for NotificationsOptInState(v55);
  sub_1000037E8();
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
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  v67 = sub_100003918(v66);
  v1206 = type metadata accessor for LocationsState(v67);
  sub_1000037E8();
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  v79 = sub_100003918(v78);
  v1203 = type metadata accessor for EnvironmentState(v79);
  sub_1000037E8();
  __chkstk_darwin(v80);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  v91 = sub_100003918(v90);
  v1207 = type metadata accessor for AppConfigurationState(v91);
  sub_1000037E8();
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_10000E70C();
  v103 = sub_100003918(v102);
  v1197 = type metadata accessor for ModalViewState(v103);
  sub_1000037E8();
  __chkstk_darwin(v104);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  v1198 = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_10000E70C();
  sub_100003990(v126);
  v127 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v128 = sub_100003810(v127);
  __chkstk_darwin(v128);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_10000E70C();
  sub_100003990(v148);
  v149 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v150 = sub_100003810(v149);
  __chkstk_darwin(v150);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  v1193 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  v1194 = v155;
  sub_10000386C();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  v1192 = v158;
  sub_10000386C();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  v1191 = v161;
  sub_10000386C();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_10000E70C();
  sub_100003990(v174);
  v175 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v176 = sub_100003810(v175);
  __chkstk_darwin(v176);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_10000E70C();
  sub_100003990(v196);
  v197 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v198 = sub_100003810(v197);
  __chkstk_darwin(v198);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_10000E70C();
  sub_100003918(v218);
  type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v1195 = v220;
  v1196 = v219;
  __chkstk_darwin(v219);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_10000E70C();
  sub_100003990(v228);
  v229 = sub_10022C350(&qword_100CB1AA8, &unk_100A42070);
  v230 = sub_100003810(v229);
  __chkstk_darwin(v230);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_10000E70C();
  v241 = sub_100003918(v240);
  v1205 = type metadata accessor for NotificationsState(v241);
  sub_1000037E8();
  __chkstk_darwin(v242);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_10000E70C();
  sub_100003990(v253);
  v254 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v255 = sub_100003810(v254);
  __chkstk_darwin(v255);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_10000E70C();
  sub_100003990(v275);
  v276 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v277 = sub_100003810(v276);
  __chkstk_darwin(v277);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_10000E70C();
  sub_100003990(v297);
  v298 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v299 = sub_100003810(v298);
  __chkstk_darwin(v299);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v316);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v318);
  sub_10000E70C();
  sub_100003990(v319);
  v320 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v321 = sub_100003810(v320);
  __chkstk_darwin(v321);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v325);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v326);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v327);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v328);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v329);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v330);
  v332 = &v1032 - v331;
  __chkstk_darwin(v333);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v334);
  v336 = &v1032 - v335;
  __chkstk_darwin(v337);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v338);
  v340 = &v1032 - v339;
  __chkstk_darwin(v341);
  v343 = &v1032 - v342;
  __chkstk_darwin(v344);
  __chkstk_darwin(v345);
  v347 = &v1032 - v346;
  __chkstk_darwin(v348);
  v350 = (&v1032 - v349);
  __chkstk_darwin(v351);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v352);
  v354 = &v1032 - v353;
  type metadata accessor for NotificationsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v355);
  sub_1000037D8();
  v358 = (v357 - v356);
  sub_10017CBB0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v528 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
      sub_100042230();
      sub_100072FD8();
      sub_1000131DC();
      sub_100051BBC();
      sub_10003778C();
      sub_10017CBB0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v530 = v1201;
        if (EnumCaseMultiPayload == 1)
        {
          v531 = v340[*(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48)];
          sub_1000C8FDC();
          v532 = v1035;
          v533 = v340;
          v534 = v1123;
          v535(v1035, v533, v1123);
          v528 = sub_100395BE0(v530, v532, v531, v332);
          v350[1](v532, v534);
        }

        else
        {
          type metadata accessor for Location.Identifier();
          v1025 = sub_100020EE4(v1067);
          sub_10001B350(v1025, v1026, v1027, v1028);
          sub_10039431C(v530, v340, v332);
          sub_1000436E8();
          sub_1000DFE80(v340, v1029);
        }
      }

      else
      {
        sub_1000C8FDC();
        v1015 = v1033;
        v1016 = v340;
        v1017 = v1036;
        v1018(v1033, v1016, v1036);
        v1019 = v1037;
        LocationModel.identifier.getter();
        type metadata accessor for Location.Identifier();
        sub_10000E7B0();
        sub_10001B350(v1020, v1021, v1022, v1023);
        sub_10039431C(v1201, v1019, v332);
        sub_1000436E8();
        sub_1000DFE80(v1019, v1024);
        v350[1](v1015, v1017);
      }

      sub_1000180EC(v332, &qword_100CB3AB0, &unk_100A2FB80);
      sub_1000DFE80(v354, type metadata accessor for NotificationLocation);
      return v528;
    case 2u:
      v422 = *(sub_10022C350(&qword_100CB1AB8, &unk_100A42080) + 48);
      v423 = v1118;
      v424 = v1116;
      v425 = v1119;
      (*(v1118 + 32))(v1116, v358, v1119);
      v426 = v1170;
      v427 = &v358[v422];
      v428 = v1120;
      v429 = v1171;
      (*(v1170 + 32))(v1120, v427, v1171);
      sub_100024118();
      sub_10001B350(v430, v431, v432, v433);
      v434 = sub_100003BCC(v1159);
      sub_10001B350(v434, v435, v436, v1203);
      v437 = sub_100003BCC(v1165);
      sub_10001B350(v437, v438, v439, v1206);
      v440 = v1200;
      sub_100547B90();
      (*(v426 + 8))(v428, v429);
      (*(v423 + 8))(v424, v425);
      sub_10000E7B0();
      sub_10001B350(v441, v442, v443, v1205);
      v444 = sub_100003BCC(&v1176);
      sub_10001B350(v444, v445, v446, v1204);
      v447 = sub_100003BCC(&v1181);
      sub_10001B350(v447, v448, v449, v1208);
      v450 = sub_100020EE4(v1130);
      sub_10001B350(v450, v451, v452, v1202);
      v453 = v1107;
      sub_100071C94(v1107);
      sub_10000FDA8();
      sub_1000377E0(v454);
      sub_1000113EC();
      sub_10017CBB0();
      sub_100042230();
      sub_100051BBC();
      sub_10000554C(v453);
      if (v378)
      {
        sub_1000180EC(v453, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v440, v742);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v743 = v1044;
      sub_10001E9D0();
      sub_100072FD8();
      v744 = *(v428 + 16);
      LODWORD(v1199) = *(v428 + 24);
      sub_100051BBC();
      v745 = sub_1000162B0();
      v746 = v1207;
      sub_100013710(v745, v747);
      v1200 = v744;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v748 = sub_1000162B0();
        sub_1000AF528(v748, v749);
        v750 = v1051;
        if (v746 != 1)
        {
          sub_1000180EC(v343, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v750 = v1051;
      }

      v751 = v1093;
      sub_100051BBC();
      v752 = sub_1000162B0();
      v753 = v1203;
      if (sub_100024D10(v752, v754, v1203) == 1)
      {
        sub_10002014C(v428 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        v755 = sub_1000162B0();
        sub_1000038B4(v755, v756, v753);
        v757 = v751;
        v758 = v1061;
        if (!v378)
        {
          sub_1000180EC(v757, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v758 = v1061;
      }

      sub_1000453E0(v1165);
      sub_100051BBC();
      v759 = sub_1000201BC();
      v760 = v1206;
      sub_1000038B4(v759, v761, v1206);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        v762 = sub_1000201BC();
        sub_1000038B4(v762, v763, v760);
        if (!v378)
        {
          sub_1000180EC(v743, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_1000870F8(&v1171);
      sub_100051BBC();
      sub_10000E7EC(v750);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000E7EC(v750);
        v764 = v1069;
        if (!v378)
        {
          sub_1000180EC(v750, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
        v764 = v1069;
      }

      sub_1000131E8(&v1176);
      sub_100051BBC();
      sub_100003BFC(v758);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BFC(v758);
        v765 = v1078;
        if (!v378)
        {
          sub_1000180EC(v758, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v765 = v1078;
      }

      sub_100052674(&v1181);
      sub_100051BBC();
      sub_100003A40(v764);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003A40(v764);
        if (!v378)
        {
          sub_1000180EC(v764, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000554C(v765);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000554C(v765);
        if (!v378)
        {
          sub_1000180EC(v765, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v528 = *(v428 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v766 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v766);
      sub_1000B01CC();
      goto LABEL_160;
    case 3u:
      v455 = v1195;
      v456 = v1100;
      v457 = v1196;
      (*(v1195 + 4))(v1100, v358, v1196);
      sub_100024118();
      sub_10001B350(v458, v459, v460, v461);
      v462 = sub_100003BCC(v1160);
      sub_10001B350(v462, v463, v464, v1203);
      v465 = sub_100003BCC(v1166);
      sub_10001B350(v465, v466, v467, v1206);
      v468 = v1153;
      v469 = v1200;
      sub_10054849C();
      v455[1](v456, v457);
      sub_10000E7B0();
      sub_10001B350(v470, v471, v472, v1205);
      v473 = sub_100003BCC(&v1177);
      sub_10001B350(v473, v474, v475, v1204);
      v476 = sub_100003BCC(&v1182);
      sub_10001B350(v476, v477, v478, v1208);
      v479 = sub_100003BCC(&v1187);
      v480 = v1202;
      sub_10001B350(v479, v481, v482, v1202);
      v483 = sub_100020EE4(v1117);
      v484 = v1197;
      sub_10001B350(v483, v485, v486, v1197);
      sub_10000FDA8();
      sub_1000377E0(v487);
      sub_1000113EC();
      sub_10017CBB0();
      sub_1000131DC();
      sub_100051BBC();
      v488 = sub_1000162A4();
      if (sub_100024D10(v488, v489, v484) == 1)
      {
        sub_1000180EC(v468, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v469, v767);
        sub_10001E9D0();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v768 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v769 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners;
      sub_100032590();
      sub_100051BBC();
      v770 = sub_1000175DC();
      v771 = v1207;
      sub_100013710(v770, v772);
      v1200 = v768;
      LODWORD(v1199) = v769;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v773 = sub_1000175DC();
        sub_1000AF528(v773, v774);
        v776 = v1070;
        v777 = v1062;
        v775 = v336;
        v778 = *(&v1051 + 1);
        if (v771 != 1)
        {
          sub_1000180EC(v775, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v776 = v1070;
        v777 = v1062;
        v778 = *(&v1051 + 1);
      }

      sub_100042230();
      sub_100051BBC();
      sub_10000556C(v480);
      if (v378)
      {
        sub_10002014C(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000556C(v480);
        v779 = v1079;
        if (!v378)
        {
          sub_1000180EC(v480, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v779 = v1079;
      }

      v780 = v1096;
      sub_100051BBC();
      sub_100003BDC(v780);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003BDC(v780);
        if (!v378)
        {
          sub_1000180EC(v780, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1172);
      sub_100051BBC();
      v781 = sub_1000175DC();
      sub_1000038B4(v781, v782, v1205);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_1000083BC(v778);
        if (!v378)
        {
          sub_1000180EC(v778, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_100003BDC(v777);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BDC(v777);
        if (!v378)
        {
          sub_1000180EC(v777, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000E7EC(v776);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000E7EC(v776);
        if (!v378)
        {
          sub_1000180EC(v776, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000C814(v779);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000C814(v779);
        if (!v378)
        {
          sub_1000180EC(v779, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_1000C8980();
      v528 = *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v783 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v783);
      sub_1000B01CC();
LABEL_160:
      sub_10001322C();
      goto LABEL_317;
    case 4u:
      v1199 = *v358;
      v382 = sub_100003BCC(&v1203);
      sub_10001B350(v382, v383, v384, v1207);
      v385 = sub_100003BCC(&v1207);
      sub_10001B350(v385, v386, v387, v1203);
      v388 = sub_100003BCC(v1211);
      sub_10001B350(v388, v389, v390, v1206);
      sub_100003934();
      v391 = v1196;
      sub_10001B350(v392, v393, v394, v1196);
      LODWORD(v1194) = *v1200;
      v395 = *(v1200 + 2);
      v396 = v1098;
      sub_100051BBC();
      sub_10000C814(v396);
      if (v378)
      {
        sub_100052304();
        v397(v1053);
        v398 = sub_1000162B0();
        v400 = sub_100024D10(v398, v399, v391);

        v644 = v1202;
        v645 = v1208;
        v646 = v1204;
        if (v400 != 1)
        {
          sub_1000180EC(v396, &qword_100CB1AA8, &unk_100A42070);
        }
      }

      else
      {
        v642 = sub_1001924DC();
        v643(v642);

        v644 = v1202;
        v645 = v1208;
        v646 = v1204;
        v358 = v1205;
      }

      v647 = v1200[*(v358 + 8)];
      sub_1000C8E54(&v1215);
      *(v396 + 8) = v648;
      *(v396 + 16) = v395;
      v649 = sub_100051A14();
      v650(v649);
      *(v396 + *(v358 + 8)) = v647;
      sub_10000E7B0();
      sub_10001B350(v651, v652, v653, v358);
      v654 = sub_100003BCC(&v1219);
      sub_10001B350(v654, v655, v656, v646);
      v657 = sub_100003BCC(&v1222);
      sub_10001B350(v657, v658, v659, v645);
      sub_100003934();
      sub_10001B350(v660, v661, v662, v644);
      sub_1000303D0(&v1195);
      sub_10000FDA8();
      v663 = v1201;
      v664 = v1112;
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v647);
      if (v378)
      {
        sub_1000180EC(v647, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v664, v665);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v666 = v1207;
      v667 = v1065;
      v668 = v1057;
      v669 = v1047;
      v670 = v1042;
      v671 = v1039;
      sub_10001E9D0();
      sub_100072FD8();
      v672 = *(v663 + 16);
      LODWORD(v1200) = *(v663 + 24);
      sub_1000453E0(&v1203);
      sub_100095588();
      sub_10000554C(v671);
      v1207 = v672;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v673 = sub_1000201BC();
        v675 = sub_100024D10(v673, v674, v666);

        v676 = v1073;
        if (v675 != 1)
        {
          sub_1000180EC(v671, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v676 = v1073;
      }

      sub_1000870F8(&v1207);
      sub_100095588();
      v677 = sub_100007FC4();
      sub_100013710(v677, v678);
      if (v378)
      {
        sub_10002014C(v663 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000554C(v670);
        v679 = v1082;
        if (!v378)
        {
          sub_1000180EC(v670, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v679 = v1082;
      }

      sub_1000131E8(v1211);
      sub_100095588();
      v680 = sub_1000162B0();
      sub_1000038B4(v680, v681, v1206);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_1000083BC(v669);
        if (!v378)
        {
          sub_1000180EC(v669, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1215);
      sub_100095588();
      sub_10000556C(v668);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000556C(v668);
        if (!v378)
        {
          sub_1000180EC(v668, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100095588();
      sub_100003BDC(v667);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BDC(v667);
        if (!v378)
        {
          sub_1000180EC(v667, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100095588();
      v682 = sub_100016298();
      sub_1000038B4(v682, v683, v1208);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003BFC(v676);
        if (!v378)
        {
          sub_1000180EC(v676, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      v684 = sub_10000C7F0();
      sub_1000038B4(v684, v685, v1202);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v679);
        if (!v378)
        {
          sub_1000180EC(v679, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v528 = v1198;
      sub_100072FD8();
      sub_100037FB4();
      v686 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v686);
      sub_100041990();
      v687 = sub_10004221C();
      sub_10003E038(v687, v688, v1134, v1138, v1142, v1128, v1146, v1150, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      sub_1000180EC(v1167, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1191, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1190, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1187, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1183, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1179, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1175, &qword_100CA6638, &unk_100A31460);
      v689 = &v1203;
      goto LABEL_287;
    case 5u:
      v536 = v1195;
      v537 = v1196;
      v538 = *(v1195 + 4);
      v539 = v1157;
      (v538)(v1157, v358, v1196);
      v540 = sub_100003BCC(&v1206);
      sub_10001B350(v540, v541, v542, v1207);
      v543 = sub_100003BCC(v1210);
      sub_10001B350(v543, v544, v545, v1203);
      v546 = sub_100003BCC(&v1214);
      sub_10001B350(v546, v547, v548, v1206);
      v549 = *(v536 + 2);
      v550 = sub_100021D50(&v1174);
      v549(v550, v539, v537);
      sub_10000E7B0();
      sub_10001B350(v551, v552, v553, v537);
      LODWORD(v1193) = *v1200;
      v554 = *(v1200 + 1);
      v555 = *(v1200 + 2);
      sub_100042230();
      sub_100095588();
      sub_1000083BC(v354);
      v1199 = v538;
      if (v378)
      {
        v556 = sub_100021D50(v1087);
        (v549)(v556);
        v557 = sub_1000182B8();
        v559 = sub_100024D10(v557, v558, v537);

        v865 = v1201;
        v867 = v537;
        v560 = v354;
        v866 = v1208;
        if (v559 != 1)
        {
          sub_1000180EC(v560, &qword_100CB1AA8, &unk_100A42070);
        }
      }

      else
      {
        v864 = sub_100021D50(v1087);
        (v538)(v864, v354, v537);

        v865 = v1201;
        v866 = v1208;
        v867 = v537;
      }

      v868 = v1205;
      v869 = *(v1205 + 7);
      v870 = v1200[*(v1205 + 8)];
      v871 = v1186;
      *v1186 = v1193;
      *(v871 + 1) = v554;
      *(v871 + 2) = v555;
      (v1199)(&v871[v869], v358, v867);
      v871[*(v868 + 32)] = v870;
      sub_1000180EC(v1156, &qword_100CB1AA8, &unk_100A42070);
      sub_10000E7B0();
      sub_10001B350(v872, v873, v874, v868);
      v875 = sub_100003BCC(&v1201);
      sub_10001B350(v875, v876, v877, v1204);
      v878 = sub_100003BCC(&v1202);
      sub_10001B350(v878, v879, v880, v866);
      sub_100003934();
      sub_10001B350(v881, v882, v883, v1202);
      sub_1000303D0(&v1198);
      sub_10000FDA8();
      sub_10003778C();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v555);
      if (v378)
      {
        sub_1000180EC(v555, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v870, v884);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v885 = v1207;
      v886 = v1076;
      v887 = v1067[1];
      v888 = v1060;
      v889 = v1050;
      sub_10001E9D0();
      sub_100072FD8();
      v890 = *(v865 + 16);
      v891 = *(v865 + 24);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v870);
      v1207 = v890;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v892 = sub_1000131C4();
        v894 = sub_100024D10(v892, v893, v885);
        v895 = v870;
        v896 = v894;

        v378 = v896 == 1;
        v897 = v1043;
        if (!v378)
        {
          sub_1000180EC(v895, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v897 = v1043;
      }

      v898 = v865;
      sub_100095588();
      v899 = sub_1000131C4();
      sub_1000113D0(v899, v900);
      LODWORD(v1201) = v891;
      if (v378)
      {
        v901 = v897;
        sub_10002014C(v898 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_100003A40(v897);
        v902 = v1085;
        if (!v378)
        {
          sub_1000180EC(v901, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v902 = v1085;
      }

      sub_1000453E0(&v1214);
      sub_100095588();
      v903 = sub_1000201BC();
      sub_1000113D0(v903, v904);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v889);
        if (!v378)
        {
          sub_1000180EC(v889, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_1000131E8(&v1218);
      sub_100095588();
      v905 = sub_1000162B0();
      sub_1000113D0(v905, v906);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003A40(v888);
        if (!v378)
        {
          sub_1000180EC(v888, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100095588();
      v907 = sub_100007FC4();
      sub_1000113D0(v907, v908);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003A40(v887);
        v909 = v1091;
        if (!v378)
        {
          sub_1000180EC(v887, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v909 = v1091;
      }

      sub_100095588();
      sub_10000C814(v886);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v886);
        if (!v378)
        {
          sub_1000180EC(v886, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v902);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v902);
        v528 = v909;
        if (!v378)
        {
          sub_1000180EC(v902, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
        v528 = v909;
      }

      sub_10001E9D0();
      sub_100072FD8();
      v910 = sub_100087104();
      sub_100003B6C(v910);
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v911, v912, v913, v914, v915, v916, v917, v918, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      sub_1000180EC(v1169[1], &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1194, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1173, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1172, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1186, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1182, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1178, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1174, &qword_100CA6640, qword_100A32640);
      (*(v1195 + 1))(v1157, v1196);
      return v528;
    case 6u:
      v1199 = *v358;
      v561 = sub_100003BCC(&v1204);
      sub_10001B350(v561, v562, v563, v1207);
      v564 = sub_100003BCC(&v1208);
      sub_10001B350(v564, v565, v566, v1203);
      v567 = sub_100003BCC(v1212);
      sub_10001B350(v567, v568, v569, v1206);
      sub_100003934();
      v570 = v1196;
      sub_10001B350(v571, v572, v573, v1196);
      LODWORD(v1194) = *v1200;
      v574 = *(v1200 + 1);
      v575 = v1099;
      sub_100051BBC();
      sub_10000C814(v575);
      if (v378)
      {
        sub_100052304();
        v576(v1054);
        v577 = sub_1000162B0();
        v579 = sub_100024D10(v577, v578, v570);

        v921 = v1202;
        v922 = v1208;
        v923 = v1204;
        if (v579 != 1)
        {
          sub_1000180EC(v575, &qword_100CB1AA8, &unk_100A42070);
        }
      }

      else
      {
        v336 = v1195;
        v919 = sub_1001924DC();
        v920(v919);

        v921 = v1202;
        v922 = v1208;
        v923 = v1204;
        v358 = v1205;
      }

      v924 = v1200[*(v358 + 8)];
      sub_1000C8E54(&v1216);
      *(v575 + 8) = v574;
      *(v575 + 16) = v925;
      v926 = sub_100051A14();
      v927(v926);
      *(v575 + *(v358 + 8)) = v924;
      sub_10000E7B0();
      sub_10001B350(v928, v929, v930, v358);
      v931 = sub_100003BCC(&v1220);
      sub_10001B350(v931, v932, v933, v923);
      sub_100003934();
      sub_10001B350(v934, v935, v936, v922);
      sub_100003934();
      sub_10001B350(v937, v938, v939, v921);
      sub_1000303D0(&v1196);
      sub_10000FDA8();
      v940 = v1201;
      sub_100032590();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v924);
      if (v378)
      {
        sub_1000180EC(v924, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v336, v941);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v942 = v1207;
      v943 = v1058;
      v944 = v1048;
      sub_10001E9D0();
      sub_100072FD8();
      v945 = *(v940 + 16);
      LODWORD(v1200) = *(v940 + 24);
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v924);
      v1207 = v945;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v946 = sub_10000C7F0();
        v948 = sub_100024D10(v946, v947, v942);
        v949 = v924;
        v950 = v948;

        v951 = v1074;
        v952 = *(&v1042 + 1);
        if (v950 != 1)
        {
          sub_1000180EC(v949, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v951 = v1074;
        v952 = *(&v1042 + 1);
      }

      sub_100095588();
      v953 = sub_100016298();
      sub_100013710(v953, v954);
      if (v378)
      {
        sub_10002014C(v940 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000554C(v952);
        v955 = v1083;
        if (!v378)
        {
          sub_1000180EC(v952, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v955 = v1083;
      }

      sub_1000870F8(v1212);
      sub_100095588();
      sub_10000556C(v944);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000556C(v944);
        v956 = v944;
        v957 = v1066;
        if (!v378)
        {
          sub_1000180EC(v956, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
        v957 = v1066;
      }

      sub_1000131E8(&v1216);
      sub_100095588();
      v958 = sub_1000162B0();
      sub_1000038B4(v958, v959, v1205);
      v960 = v1204;
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000556C(v943);
        if (!v378)
        {
          sub_1000180EC(v943, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_1000870F8(&v1220);
      sub_100095588();
      v961 = sub_100007FC4();
      sub_1000038B4(v961, v962, v960);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        v963 = sub_100007FC4();
        sub_1000038B4(v963, v964, v960);
        v965 = v1208;
        if (!v378)
        {
          sub_1000180EC(v957, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v965 = v1208;
      }

      sub_100095588();
      v966 = sub_1000175DC();
      sub_1000038B4(v966, v967, v965);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        v968 = sub_1000175DC();
        sub_1000038B4(v968, v969, v965);
        if (!v378)
        {
          sub_1000180EC(v951, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v955);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v955);
        if (!v378)
        {
          sub_1000180EC(v955, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v528 = v1198;
      sub_100072FD8();
      sub_100037FB4();
      v970 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v970);
      sub_100041990();
      v971 = sub_10004221C();
      sub_10003E038(v971, v972, v1135, v1139, v1143, v1129, v1147, v1151, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      sub_1000180EC(v1168, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1192, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1163, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1188, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1184, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1180, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1176, &qword_100CA6638, &unk_100A31460);
      v689 = &v1204;
      goto LABEL_287;
    case 7u:
      v490 = *(sub_10022C350(&qword_100CB1AB0, &unk_100A5C150) + 48);
      v491 = v1122;
      v492 = v1115;
      v493 = v1123;
      (*(v1122 + 32))(v1115, v358, v1123);
      sub_1000C8FDC();
      v494 = &v358[v490];
      v495 = v1121[0];
      v496 = v1171;
      v497(v1121[0], v494, v1171);
      sub_100024118();
      sub_10001B350(v498, v499, v500, v501);
      v502 = sub_100003BCC(v1161);
      sub_10001B350(v502, v503, v504, v1203);
      v505 = sub_100003BCC(&v1167);
      sub_10001B350(v505, v506, v507, v1206);
      v508 = v1200;
      sub_1005480E0();
      v510 = v350[1];
      v509 = (v350 + 1);
      v510(v495, v496);
      (*(v491 + 8))(v492, v493);
      sub_10000E7B0();
      v511 = v1205;
      sub_10001B350(v512, v513, v514, v1205);
      v515 = sub_100003BCC(&v1178);
      v516 = v1204;
      sub_10001B350(v515, v517, v518, v1204);
      v519 = sub_100003BCC(&v1183);
      sub_10001B350(v519, v520, v521, v1208);
      v522 = sub_100003BCC(&v1188);
      sub_10001B350(v522, v523, v524, v1202);
      sub_1000303D0(&v1118);
      sub_10000FDA8();
      sub_1000377E0(v525);
      sub_100032590();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100051BBC();
      v526 = sub_10000C7F0();
      if (sub_100024D10(v526, v527, v496) == 1)
      {
        sub_1000180EC(v508, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v492, v792);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v793 = v1041;
      sub_10001E9D0();
      sub_100072FD8();
      v794 = *(v509 + 2);
      LODWORD(v1199) = v509[24];
      sub_100042230();
      sub_100051BBC();
      v795 = sub_1000182B8();
      v796 = v1207;
      sub_1000038B4(v795, v797, v1207);
      v798 = v1105;
      v799 = v1102;
      v1200 = v794;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v800 = sub_1000182B8();
        v802 = sub_100024D10(v800, v801, v796);

        if (v802 != 1)
        {
          sub_1000180EC(v511, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();
      }

      sub_1000453E0(v1161);
      sub_100051BBC();
      sub_1000083BC(v793);
      if (v378)
      {
        sub_10002014C(&v509[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_1000083BC(v793);
        v803 = v1089;
        if (!v378)
        {
          sub_1000180EC(v793, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v803 = v1089;
      }

      v804 = v1097;
      sub_100051BBC();
      sub_100003BDC(v804);
      v805 = v1109;
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003BDC(v804);
        if (!v378)
        {
          sub_1000180EC(v804, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1173);
      sub_100051BBC();
      sub_10000C814(v799);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000C814(v799);
        if (!v378)
        {
          sub_1000180EC(v799, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100087140();
      sub_100003BFC(v798);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BFC(v798);
        if (!v378)
        {
          sub_1000180EC(v798, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_1000113D0(v805, 1);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003A40(v805);
        if (!v378)
        {
          sub_1000180EC(v805, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_1000131DC();
      sub_100051BBC();
      v806 = sub_1000162A4();
      sub_100013710(v806, v807);
      if (!v378)
      {
        goto LABEL_344;
      }

      sub_1000083A4();
      sub_10017CBB0();
      sub_10000554C(v516);
      v528 = v803;
      if (!v378)
      {
        sub_1000180EC(v516, &qword_100CA6610, &unk_100A32610);
      }

      goto LABEL_347;
    case 8u:
      v610 = v1195;
      v611 = v1101;
      v612 = v1196;
      (*(v1195 + 4))(v1101, v358, v1196);
      sub_100003934();
      v613 = v1207;
      sub_10001B350(v614, v615, v616, v1207);
      v617 = sub_100003BCC(v1162);
      sub_10001B350(v617, v618, v619, v1203);
      v620 = sub_100003BCC(&v1168);
      sub_10001B350(v620, v621, v622, v1206);
      v623 = v1200;
      sub_1005486AC();
      v625 = *(v610 + 1);
      v624 = v610 + 8;
      v625(v611, v612);
      sub_10000E7B0();
      sub_10001B350(v626, v627, v628, v1205);
      v629 = sub_100003BCC(&v1179);
      sub_10001B350(v629, v630, v631, v1204);
      v632 = sub_100003BCC(&v1184);
      sub_10001B350(v632, v633, v634, v1208);
      v635 = sub_100003BCC(&v1189);
      sub_10001B350(v635, v636, v637, v1202);
      v638 = v1108;
      sub_100071C94(v1108);
      sub_10000FDA8();
      sub_1000377E0(v639);
      sub_1000113EC();
      sub_10017CBB0();
      sub_100042230();
      sub_100051BBC();
      v640 = sub_1000182B8();
      if (sub_100024D10(v640, v641, v612) == 1)
      {
        sub_1000180EC(v638, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v623, v989);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v990 = v1071;
      v991 = v1052;
      v992 = v1045;
      sub_10001E9D0();
      sub_100072FD8();
      v993 = *(v624 + 2);
      LODWORD(v1199) = v624[24];
      sub_1000131DC();
      sub_100051BBC();
      v994 = sub_1000162A4();
      sub_1000038B4(v994, v995, v613);
      v996 = v1094;
      v1200 = v993;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v997 = sub_1000162A4();
        v999 = sub_100024D10(v997, v998, v613);

        v1000 = v332;
        v1001 = v1080;
        if (v999 != 1)
        {
          sub_1000180EC(v1000, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v1001 = v1080;
      }

      sub_100087140();
      sub_10000556C(v996);
      if (v378)
      {
        sub_10002014C(&v624[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000556C(v996);
        v803 = v1088;
        if (!v378)
        {
          sub_1000180EC(v996, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v803 = v1088;
      }

      sub_100052674(&v1168);
      sub_100051BBC();
      v1002 = sub_1000175DC();
      sub_1000113D0(v1002, v1003);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v992);
        v1004 = v1063;
        if (!v378)
        {
          sub_1000180EC(v992, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
        v1004 = v1063;
      }

      sub_100051BBC();
      sub_1000083BC(v991);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_1000083BC(v991);
        if (!v378)
        {
          sub_1000180EC(v991, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000E7EC(v1004);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000E7EC(v1004);
        if (!v378)
        {
          sub_1000180EC(v1004, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_1000131E8(&v1184);
      sub_100051BBC();
      sub_10000C814(v990);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v990);
        if (!v378)
        {
          sub_1000180EC(v990, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_100003A40(v1001);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_100003A40(v1001);
        v528 = v803;
        if (!v378)
        {
          sub_1000180EC(v1001, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
LABEL_344:
        sub_100005988();
        sub_100072FD8();
        v528 = v803;
      }

LABEL_347:
      sub_10001E9D0();
      sub_1000C8980();
      sub_100044DA4();
      v1005 = sub_100087104();
      sub_100003B6C(v1005);
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      goto LABEL_348;
    case 9u:
      LODWORD(v1199) = *v358;
      v401 = sub_100003BCC(&v1205);
      sub_10001B350(v401, v402, v403, v1207);
      v404 = sub_100003BCC(v1209);
      sub_10001B350(v404, v405, v406, v1203);
      v407 = sub_100003BCC(&v1213);
      sub_10001B350(v407, v408, v409, v1206);
      v410 = v1155;
      sub_100003934();
      v411 = v1196;
      sub_10001B350(v412, v413, v414, v1196);
      LODWORD(v1194) = *v1200;
      v415 = *(v1200 + 1);
      v416 = *(v1200 + 2);
      sub_100032590();
      sub_100095588();
      sub_1000083BC(v410);
      if (v378)
      {
        v690 = v1195;
        v417 = sub_100021D50(v1086);
        v418(v417);
        v419 = sub_1000175DC();
        v421 = sub_100024D10(v419, v420, v411);

        v378 = v421 == 1;
        v692 = v1201;
        v691 = v1202;
        v693 = v1208;
        v694 = v1204;
        if (!v378)
        {
          sub_1000180EC(v410, &qword_100CB1AA8, &unk_100A42070);
        }
      }

      else
      {
        v690 = v1195;
        v358 = v1055;
        (*(v1195 + 4))(v1055, v410, v411);

        v692 = v1201;
        v691 = v1202;
        v693 = v1208;
        v694 = v1204;
      }

      v695 = v1185;
      *v1185 = v1194;
      *(v695 + 1) = v415;
      *(v695 + 2) = v416;
      v696 = v1205;
      (*(v690 + 4))(&v695[*(v1205 + 7)], v358, v411);
      v695[*(v696 + 32)] = v1199;
      sub_1000180EC(v1155, &qword_100CB1AA8, &unk_100A42070);
      sub_10000E7B0();
      sub_10001B350(v697, v698, v699, v696);
      v700 = sub_100003BCC(&v1221);
      sub_10001B350(v700, v701, v702, v694);
      sub_100003934();
      sub_10001B350(v703, v704, v705, v693);
      sub_100003934();
      sub_10001B350(v706, v707, v708, v691);
      sub_1000303D0(&v1197);
      sub_10000FDA8();
      v709 = v1113;
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v416);
      v710 = v692;
      if (v378)
      {
        sub_1000180EC(v416, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v709, v711);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v712 = v1075;
      v713 = v1059;
      v714 = v1049;
      v715 = v1040;
      sub_10001E9D0();
      sub_100072FD8();
      v716 = *(v692 + 16);
      v717 = *(v692 + 24);
      sub_100095588();
      v718 = sub_1000131C4();
      v719 = v1207;
      sub_1000038B4(v718, v720, v1207);
      v1201 = v716;
      LODWORD(v1200) = v717;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v721 = sub_1000131C4();
        v717 = v715;
        v723 = sub_100024D10(v721, v722, v719);

        v724 = v1067[0];
        if (v723 != 1)
        {
          sub_1000180EC(v717, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v724 = v1067[0];
      }

      sub_1000131DC();
      sub_100095588();
      v725 = sub_1000162A4();
      sub_1000113D0(v725, v726);
      if (v378)
      {
        sub_10002014C(v710 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_100003A40(v717);
        v727 = v1084;
        if (!v378)
        {
          sub_1000180EC(v717, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v727 = v1084;
      }

      sub_1000453E0(&v1213);
      sub_100095588();
      v728 = sub_1000201BC();
      sub_1000113D0(v728, v729);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v714);
        if (!v378)
        {
          sub_1000180EC(v714, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1217);
      sub_100095588();
      v730 = sub_1000175DC();
      sub_1000113D0(v730, v731);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003A40(v713);
        v732 = v1090;
        if (!v378)
        {
          sub_1000180EC(v713, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
        v732 = v1090;
      }

      sub_1000870F8(&v1221);
      sub_100095588();
      sub_10000394C(v724);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000394C(v724);
        if (!v378)
        {
          sub_1000180EC(v724, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v712);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000394C(v712);
        if (!v378)
        {
          sub_1000180EC(v712, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_100003BFC(v727);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_100003BFC(v727);
        v528 = v732;
        if (!v378)
        {
          sub_1000180EC(v727, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
        v528 = v732;
      }

      sub_10001E9D0();
      sub_1000C8980();
      v733 = sub_100087104();
      sub_100003B6C(v733);
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v734, v735, v736, v737, v738, v739, v740, v741, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      sub_1000180EC(v1169[0], &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1193, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1164, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1189, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1185, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1181, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1177, &qword_100CA6638, &unk_100A31460);
      v689 = &v1205;
LABEL_287:
      sub_1000180EC(*(v689 - 32), &qword_100CA6640, qword_100A32640);
      return v528;
    case 0xAu:
      sub_100024118();
      sub_10001B350(v580, v581, v582, v583);
      v584 = sub_100003BCC(v1158);
      sub_10001B350(v584, v585, v586, v1203);
      v587 = sub_100003BCC(&v1164);
      v588 = v1206;
      sub_10001B350(v587, v589, v590, v1206);
      v591 = sub_100003BCC(&v1170);
      sub_10001B350(v591, v592, v593, v1205);
      v594 = sub_100003BCC(&v1175);
      sub_10001B350(v594, v595, v596, v1204);
      v597 = sub_100003BCC(&v1180);
      sub_10001B350(v597, v598, v599, v1208);
      v600 = sub_100003BCC(&v1186);
      sub_10001B350(v600, v601, v602, v1202);
      v603 = v1106;
      *v1106 = 0;
      v604 = v1197;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v605, v606, v607, v604);
      sub_10000FDA8();
      v608 = v1201;
      v609 = v1110;
      sub_10017CBB0();
      sub_1000131DC();
      sub_100051BBC();
      sub_10000556C(v603);
      if (v378)
      {
        sub_1000180EC(v603, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v609, v973);
        sub_10001E9D0();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v974 = *(v608 + 16);
      LODWORD(v1199) = *(v608 + 24);
      sub_100051BBC();
      v975 = sub_10000C7F0();
      v976 = v1207;
      sub_1000038B4(v975, v977, v1207);
      v978 = v1104;
      v1200 = v974;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v979 = sub_10000C7F0();
        v981 = sub_100024D10(v979, v980, v976);

        v378 = v981 == 1;
        v982 = v1077;
        v983 = v1068;
        if (!v378)
        {
          sub_1000180EC(v347, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v982 = v1077;
        v983 = v1068;
      }

      v984 = v1092;
      sub_100051BBC();
      sub_1000083BC(v984);
      if (v378)
      {
        sub_10002014C(v608 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        sub_10017CBB0();
        sub_1000083BC(v984);
        if (!v378)
        {
          sub_1000180EC(v984, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
      }

      v985 = v1095;
      sub_100051BBC();
      sub_10000E7EC(v985);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000E7EC(v985);
        if (!v378)
        {
          sub_1000180EC(v985, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003BDC(v588);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003BDC(v588);
        if (!v378)
        {
          sub_1000180EC(v588, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000C814(v978);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000C814(v978);
        if (!v378)
        {
          sub_1000180EC(v978, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_1000038B4(v983, 1, v1208);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003BFC(v983);
        if (!v378)
        {
          sub_1000180EC(v983, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      v986 = sub_100016298();
      sub_100013710(v986, v987);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000554C(v982);
        if (!v378)
        {
          sub_1000180EC(v982, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v528 = v1198;
      sub_100072FD8();
      v988 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v988);
      sub_100041990();
      v1032 = v1148;
      v784 = v1200;
      v785 = v1199;
      v786 = v1131;
      v787 = v1132;
      v788 = v1136;
      v789 = v1126;
      v790 = v1140;
      v791 = v1144;
LABEL_317:
      sub_10003E038(v784, v785, v786, v787, v788, v789, v790, v791, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, *(&v1042 + 1), v1043, v1044, v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1055, v1056, v1057);
      sub_1000B0E64();

      goto LABEL_348;
    default:
      v359 = *v358;
      sub_100024118();
      sub_10001B350(v360, v361, v362, v363);
      v364 = sub_100003BCC(&v1163);
      sub_10001B350(v364, v365, v366, v1203);
      v367 = sub_100003BCC(v1169);
      sub_10001B350(v367, v368, v369, v1206);
      sub_10001BFD0();
      v1199 = v370;
      v371 = v1152;
      sub_10017CBB0();
      v372 = sub_100020EE4(v1111);
      v373 = v1196;
      sub_10001B350(v372, v374, v375, v1196);
      v377 = *(v371 + 8);
      v376 = *(v371 + 16);
      sub_10003778C();
      sub_100051BBC();
      sub_100003BDC(v340);
      if (v378)
      {
        v808 = v1195;
        (*(v1195 + 2))(v1125, v371 + *(v1205 + 7), v373);
        v379 = sub_1000131C4();
        v381 = sub_100024D10(v379, v380, v373);

        v809 = v1208;
        v810 = v1204;
        if (v381 != 1)
        {
          sub_1000180EC(v1121[1], &qword_100CB1AA8, &unk_100A42070);
        }
      }

      else
      {
        v808 = v1195;
        (*(v1195 + 4))(v1125, v340, v373);

        v809 = v1208;
        v810 = v1204;
      }

      v811 = v1205;
      v812 = *(v1152 + *(v1205 + 8));
      sub_1000DFE80(v1152, type metadata accessor for NotificationsState);
      v813 = v1154;
      *v1154 = v359;
      v814 = v813;
      *(v813 + 1) = v377;
      *(v813 + 2) = v376;
      v808[4](&v813[*(v811 + 28)], v1125, v373);
      *(v814 + *(v811 + 32)) = v812;
      sub_10000E7B0();
      sub_10001B350(v815, v816, v817, v811);
      sub_100003934();
      sub_10001B350(v818, v819, v820, v810);
      sub_100003934();
      sub_10001B350(v821, v822, v823, v809);
      v824 = sub_100003BCC(&v1190);
      sub_10001B350(v824, v825, v826, v1202);
      v827 = sub_100020EE4(v1121);
      sub_10001B350(v827, v828, v829, v1197);
      sub_10000FDA8();
      v830 = v1201;
      sub_1000113EC();
      sub_10017CBB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v812);
      if (v378)
      {
        sub_1000180EC(v812, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v814, v831);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v832 = v1207;
      v833 = v1072;
      v834 = v1046;
      v835 = v1038;
      sub_10001E9D0();
      sub_100072FD8();
      v836 = *(v830 + 16);
      LODWORD(v1200) = *(v830 + 24);
      sub_100051BBC();
      sub_10000554C(v835);
      v1207 = v836;
      if (v378)
      {
        sub_100069510();
        sub_10017CBB0();
        v837 = sub_100016298();
        sub_1000AF528(v837, v838);
        v839 = v1064;
        if (v832 != 1)
        {
          sub_1000180EC(v835, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v839 = v1064;
      }

      v840 = v1124;
      sub_100051BBC();
      sub_1000113D0(v840, 1);
      if (v378)
      {
        sub_10002014C(v830 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10004E4C8();
        v841 = v1124;
        sub_10017CBB0();
        sub_100003A40(v841);
        v842 = v1081;
        if (!v378)
        {
          sub_1000180EC(v841, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v842 = v1081;
      }

      sub_1000453E0(v1169);
      sub_100051BBC();
      v843 = sub_1000201BC();
      sub_100013710(v843, v844);
      if (v378)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000554C(v834);
        if (!v378)
        {
          sub_1000180EC(v834, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      v845 = v1103;
      sub_100051BBC();
      v846 = sub_100016298();
      sub_100013710(v846, v847);
      if (v378)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000554C(v845);
        if (!v378)
        {
          sub_1000180EC(v845, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      v848 = sub_1000182B8();
      sub_1000038B4(v848, v849, v1204);
      if (v378)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000394C(v839);
        if (!v378)
        {
          sub_1000180EC(v839, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      v850 = sub_1000162A4();
      sub_1000038B4(v850, v851, v1208);
      if (v378)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v833);
        if (!v378)
        {
          sub_1000180EC(v833, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000394C(v842);
      if (v378)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v842);
        if (!v378)
        {
          sub_1000180EC(v842, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v852 = v1198;
      sub_100072FD8();
      v528 = *(v830 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v853 = *(v830 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v854 = v830;
      v856 = *(v830 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v855 = *(v830 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v857 = *(v854 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v859 = *(v854 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v858 = *(v854 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v860 = *(v854 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v861 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v861);
      LOBYTE(v1031) = v857;
      v862 = sub_10004221C();
      sub_10003E038(v862, v863, v1133, v1137, v1141, v1127, v1145, v1149, v1030, v852, v528, v853, v856, v855, v1031, v859, v858, v860, v1032, v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, v1043, v1044, v1045, v1046, v1047, v1048);
      sub_1000B0E64();

LABEL_348:

      return v528;
  }
}

uint64_t sub_10017CBB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10017CC08()
{
  result = qword_100CB73F0;
  if (!qword_100CB73F0)
  {
    result = swift_getWitnessTable(aI_14, &type metadata for PredictedLocationsAuthorizationAction, v0, v1);
    atomic_store(result, &qword_100CB73F0);
  }

  return result;
}

uint64_t sub_10017CC5C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for PredictedLocationsAuthorizationState;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CB73F8, &qword_100A4B0C8);
  a2[4] = sub_10017D494();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10017CD50(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  sub_100003AE8(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1006DD864;

  return sub_10017CE70(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_10017CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Session.Kind();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for DeviceInfo();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  active = type metadata accessor for ActiveUserStatus.LaunchedApp();
  v5[12] = active;
  v5[13] = *(active - 8);
  v5[14] = swift_task_alloc();
  sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for TimeZone();
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = type metadata accessor for ActiveUserStatus();
  v5[19] = v11;
  v12 = *(v11 - 8);
  v5[20] = v12;
  v5[21] = *(v12 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v5[24] = v13;
  v14 = *(v13 - 8);
  v5[25] = v14;
  v5[26] = *(v14 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[30] = v15;
  v5[31] = *(v15 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_10017D200, 0, 0);
}

uint64_t sub_10017D200()
{
  v33 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[2];
  static Logger.activeUser.getter();
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  if (v8)
  {
    v31 = v0[30];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v15 = 136315138;
    sub_1000667F8(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v9;
    v18 = v17;
    v28 = v7;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_100078694(v16, v18, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v28, "Handling launch at %s", v15, 0xCu);
    sub_100006F14(v30);
    sub_100003884(v30);
    sub_100003884(v15);

    v21 = *(v10 + 8);
    v21(v29, v31);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[37] = v19;
  v0[38] = v21;
  v22 = v0[3];
  v23 = v22[5];
  v24 = v22[6];
  sub_1000161C0(v22 + 2, v23);
  v25 = swift_task_alloc();
  v0[39] = v25;
  *v25 = v0;
  v25[1] = sub_1006DBC3C;
  v26 = v0[23];

  return dispatch thunk of ActiveUserServiceType.status.getter(v26, v23, v24);
}

unint64_t sub_10017D494()
{
  result = qword_100CB7400;
  if (!qword_100CB7400)
  {
    v3 = sub_10022E824(&qword_100CB73F8, &qword_100A4B0C8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB7400);
  }

  return result;
}

void sub_10017D4F8()
{
  v1 = *(type metadata accessor for Location.Identifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_10017D5DC(v0 + v2, v4, v5);
}

unint64_t sub_10017D588()
{
  result = qword_100CB7428;
  if (!qword_100CB7428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CB7428);
  }

  return result;
}

void sub_10017D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(type metadata accessor for WeatherIntent()) init];
  v7 = sub_1001B2814(a1, a2, a3);
  [v6 setLocation:v7];
  sub_10000C70C(0, &qword_100CC69B8, INInteraction_ptr);
  v8 = v6;
  v9 = sub_1001B7E58(v8, 0);
  v10 = String._bridgeToObjectiveC()();
  [v9 setIdentifier:v10];

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[4] = sub_100588E04;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10058851C;
  v13[3] = &unk_100C5ED68;
  v12 = _Block_copy(v13);

  [v9 donateInteractionWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_10017D770()
{

  return swift_deallocObject();
}

uint64_t PredictedLocationsAuthorizationState.shortDescription.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CB7410, &qword_100A4B0D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_10017DB04();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_10017DB04()
{
  result = qword_100CB7418;
  if (!qword_100CB7418)
  {
    v3 = sub_10022E824(&qword_100CB7410, &qword_100A4B0D0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB7418);
  }

  return result;
}

uint64_t sub_10017DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100021DB0();
  sub_1000C8394();
  v13 = v12[20];
  v14 = v12[21];
  sub_10006A838();
  sub_100050D50(v15, v14, v16);
  sub_100003B2C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = v12[21];
      v46 = sub_10022C350(&qword_100CB1AC0, &qword_100A65F80);
      sub_100018144(v45 + *(v46 + 48), &qword_100CB3AB0, &unk_100A2FB80);
      goto LABEL_13;
    case 2u:
      v30 = v12[21];
      v31 = v12[16];
      v32 = v12[14];
      v33 = v12[15];
      v34 = *(sub_10022C350(&qword_100CB1AB8, &unk_100A42080) + 48);
      v35 = sub_100003940();
      v36(v35);
      (*(v33 + 32))(v31, v30 + v34, v32);
      v37 = swift_task_alloc();
      v12[22] = v37;
      *v37 = v12;
      v37[1] = sub_1005C2A1C;
      sub_1000116B0(v12[19]);
      sub_1000208FC();

      return sub_1005C545C(v38, v39);
    case 3u:
      v49 = sub_1000BCEAC();
      v50(v49);
      sub_1005C5A30(v13);
      goto LABEL_16;
    case 4u:
    case 5u:
    case 6u:
      sub_100071D58();
LABEL_13:
      sub_10004F998();
      goto LABEL_17;
    case 7u:
      v17 = v12[21];
      v19 = v12[15];
      v18 = v12[16];
      v21 = v12[13];
      v20 = v12[14];
      v22 = v12[11];
      v23 = v12[12];
      v24 = *(sub_10022C350(&qword_100CB1AB0, &unk_100A5C150) + 48);
      (*(v23 + 32))(v21, v17, v22);
      (*(v19 + 32))(v18, v17 + v24, v20);
      Location.identifier.getter();
      v25 = swift_task_alloc();
      v12[23] = v25;
      *v25 = v12;
      v25[1] = sub_1005C2BB0;
      sub_1000116B0(v12[10]);
      sub_1000208FC();

      return sub_1005C3C84(v26, v27);
    case 8u:
      v47 = sub_1000BCEAC();
      v48(v47);
      sub_1005C5AB8(v13);
LABEL_16:
      v51 = sub_10001920C();
      v52(v51);
      goto LABEL_17;
    case 9u:
    case 0xAu:
LABEL_17:
      sub_10003C62C();

      sub_100003B14();
      sub_1000208FC();

      result = v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
      break;
    default:
      v41 = swift_task_alloc();
      v12[24] = v41;
      *v41 = v12;
      v41[1] = sub_1001981B4;
      sub_1000208FC();

      result = sub_100195D40(v42, v43);
      break;
  }

  return result;
}

uint64_t sub_10017DF2C(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  Debouncer.execute(_:)();
}

uint64_t sub_10017DFB4()
{

  return swift_deallocObject();
}

uint64_t sub_10017DFEC()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1005C29C4, v5, v4);
}

uint64_t sub_10017E100(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NotificationsAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017E178(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for NotificationSettingsData();
  v3 = *(v2 - 8);
  v22 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CD1FD0, &qword_100A77740);
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(v3 + 16);
  v12(v5, a1, v2, v9);
  sub_10006CF08(&qword_100CD1FD8, 255, &type metadata accessor for NotificationSettingsData, &protocol conformance descriptor for NotificationSettingsData);
  SessionData.init(key:data:)();
  SessionManager.tracker.getter();
  (v12)(v5, v21, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  Tracker.transaction(block:)();

  v16 = v23;
  v15 = v24;
  (*(v6 + 16))(v23, v11, v24);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v16, v15);
  SessionManager.transaction(_:)();

  return (*(v6 + 8))(v11, v15);
}

uint64_t sub_10017E4B0()
{
  type metadata accessor for NotificationSettingsData();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10017E52C()
{
  sub_10022C350(&qword_100CD1FD0, &qword_100A77740);
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10017E5B4()
{
  v1 = *(type metadata accessor for NWPath() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10017E640(v0 + v2, v3);
}

uint64_t sub_10017E640(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CEEFD8, &qword_100AA7AC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10022C350(&qword_100CB21F8, &qword_100AA7AD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for NWPath.Status();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWPath.status.getter();
  if ((*(v13 + 88))(v15, v12) == enum case for NWPath.Status.satisfied(_:))
  {
    v16 = NWPath.availableInterfaces.getter();
    sub_10017E9E4(v16, v8);

    v17 = type metadata accessor for NWInterface();
    if (sub_100024D10(v8, 1, v17) == 1)
    {
      sub_1000180EC(v8, qword_100CEEFD8, &qword_100AA7AC8);
      v18 = 1;
    }

    else
    {
      NWInterface.type.getter();
      (*(*(v17 - 8) + 8))(v8, v17);
      v18 = 0;
    }

    v22 = type metadata accessor for NWInterface.InterfaceType();
    sub_10001B350(v11, v18, 1, v22);
    v23 = sub_10017E9FC(v11);
    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    *v5 = v23;
    v5[1] = 0;
    type metadata accessor for EnvironmentAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_10004F034(v5, &v26, v24, v25);
    sub_1000180EC(&v26, &unk_100CD81B0, &unk_100A3B000);
    return sub_1000547B8(v5);
  }

  else
  {
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    *v5 = 4;
    type metadata accessor for EnvironmentAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_10004F034(v5, &v26, v19, v20);
    sub_1000180EC(&v26, &unk_100CD81B0, &unk_100A3B000);
    sub_1000547B8(v5);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10017E9FC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB21F8, &qword_100AA7AD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_10017F308(a1, &v14 - v6);
  v8 = type metadata accessor for NWInterface.InterfaceType();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    sub_10017F308(v7, v4);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == enum case for NWInterface.InterfaceType.other(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v9 = 1;
      goto LABEL_9;
    }

    if (v11 == enum case for NWInterface.InterfaceType.cellular(_:))
    {
      v9 = 0;
      goto LABEL_9;
    }

    if (v11 == enum case for NWInterface.InterfaceType.wiredEthernet(_:) || v11 == enum case for NWInterface.InterfaceType.loopback(_:))
    {
LABEL_4:
      v9 = 2;
      goto LABEL_9;
    }

    (*(v10 + 8))(v4, v8);
  }

  v9 = 3;
LABEL_9:
  sub_10017F534(v7);
  sub_10017F534(a1);
  return v9;
}

void sub_10017EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v51 = a8;
  v53 = a7;
  v46 = a2;
  v47 = a3;
  HIDWORD(v45) = a10;
  v49 = a9;
  v50 = a5;
  v60 = type metadata accessor for Location();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v60);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v17 - 8);
  v19 = (&v42 - v18);
  v20 = a6;
  v21 = Location.id.getter();
  v48 = a4;
  sub_1000864C0(v21, v22, a4);

  v23 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v19, 1, v23) != 1)
  {
    v43 = a6;
    v44 = updated;
    v32 = v60;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_10022C350(&qword_100CA75D8, &unk_100A32600);
        sub_100087544();
        sub_100087544();
        goto LABEL_7;
      case 2u:
        v33 = v32;
        v34 = *v19;
        v35 = v19[1];
        sub_10031EF8C(v19[2], v19[3]);
        *v16 = v34;
        v16[1] = v35;
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        sub_100040690();
        v36 = static OS_dispatch_queue.main.getter();
        v37 = v43;
        (*(v12 + 16))(&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v33);
        v38 = (*(v12 + 80) + 24) & ~*(v12 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v51;
        (*(v12 + 32))(v39 + v38, &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
        v40 = swift_allocObject();
        *(v40 + 16) = sub_100195D24;
        *(v40 + 24) = v39;
        v58 = sub_1003AAE20;
        v59 = v40;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v56 = sub_100195C7C;
        v57 = &unk_100C741C8;
        v41 = _Block_copy(&aBlock);

        dispatch_sync(v36, v41);

        _Block_release(v41);
        LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

        if (v36)
        {
          goto LABEL_13;
        }

        sub_100079E4C(v37, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        goto LABEL_4;
      case 3u:
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        return;
      default:
LABEL_7:
        sub_100087544();
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        sub_100079E4C(v43, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        return;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v16);
  sub_100087544();
  sub_100040690();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = v20;
  v26 = v20;
  v27 = v60;
  (*(v12 + 16))(&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v60);
  v28 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  (*(v12 + 32))(v29 + v28, &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100195D24;
  *(v30 + 24) = v29;
  v58 = sub_100190294;
  v59 = v30;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100195C7C;
  v57 = &unk_100C74150;
  v31 = _Block_copy(&aBlock);

  dispatch_sync(v24, v31);

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    JUMPOUT(0x10017F2E4);
  }

  sub_100079E4C(v25, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
LABEL_4:
}

uint64_t sub_10017F308(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB21F8, &qword_100AA7AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017F378(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_10022C350(&qword_100CC32A0, &unk_100A5C140);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for NotificationSubscription.Location();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for NotificationSubscription();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription.Kind();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10017F59C, 0, 0);
}

uint64_t sub_10017F534(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB21F8, &qword_100AA7AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017F59C()
{
  sub_100013494();
  sub_1000437A0(v2[7]);
  static NotificationSubscription.Kind.all.getter();
  v3 = swift_task_alloc();
  v2[19] = v3;
  *v3 = v2;
  v3[1] = sub_100181314;
  v4 = sub_1000116B0(v2[18]);

  return dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)(v4, v0, v1);
}

uint64_t sub_10017F658(uint64_t a1, uint64_t a2, int a3)
{
  v389 = a3;
  v425 = a2;
  v400 = a3;
  v424 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v416 = v4;
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003990(v6);
  v422 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  v415 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v414 = v10;
  v11 = sub_1000038CC();
  v421 = type metadata accessor for NotificationsOptInState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  v413 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v412 = v15;
  v16 = sub_1000038CC();
  v418 = type metadata accessor for NotificationsState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  v411 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v410 = v20;
  v21 = sub_1000038CC();
  v417 = type metadata accessor for LocationsState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003848();
  v409 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v408 = v25;
  v26 = sub_1000038CC();
  v423 = type metadata accessor for AppConfigurationState(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003990(v29);
  v401 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  v419 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  sub_100003990(v36);
  v37 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  sub_100003990(v48);
  v49 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  sub_100003990(v54);
  v55 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
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
  sub_10000E70C();
  sub_100003990(v60);
  v61 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003990(v72);
  v73 = type metadata accessor for Locale();
  v420 = *(v73 - 8);
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_10000E70C();
  sub_100003990(v75);
  v76 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  v77 = sub_100003810(v76);
  __chkstk_darwin(v77);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v78);
  v80 = &v367 - v79;
  __chkstk_darwin(v81);
  v83 = &v367 - v82;
  __chkstk_darwin(v84);
  v86 = &v367 - v85;
  v87 = type metadata accessor for EnvironmentState(0);
  sub_1000037E8();
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  v91 = &v367 - v90;
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  v95 = &v367 - v94;
  v96 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v97 = sub_100003810(v96);
  __chkstk_darwin(v97);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v98);
  v100 = &v367 - v99;
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  v104 = &v367 - v103;
  v105 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v106 = sub_100003810(v105);
  __chkstk_darwin(v106);
  __chkstk_darwin(v107);
  __chkstk_darwin(v108);
  __chkstk_darwin(v109);
  v386 = v73;
  if ((v389 & 0x100) != 0)
  {
    v414 = v111;
    v412 = v113;
    sub_100003934();
    sub_10001B350(v124, v125, v126, v423);
    v127 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v128 = v425;
    swift_beginAccess();
    sub_100010C0C();
    v379 = v127;
    sub_100181780(v128 + v127, v91, v129);
    sub_100003934();
    sub_10001B350(v130, v131, v132, v73);
    LODWORD(v410) = *v91;
    LODWORD(v408) = v91[1];
    LODWORD(v406) = v91[2];
    LODWORD(v404) = v91[3];
    v133 = v367;
    sub_1002AB08C(v80, v367, &qword_100CAA9F0, qword_100A44F50);
    sub_100003BFC(v133);
    if (v123)
    {
      v186 = v420;
      (*(v420 + 16))(v388, &v91[v87[8]], v73);
      sub_100003BFC(v133);
      if (!v123)
      {
        sub_1000180EC(v133, &qword_100CAA9F0, qword_100A44F50);
      }
    }

    else
    {
      v186 = v420;
      (*(v420 + 32))(v388, v133, v73);
    }

    v187 = &v91[v87[9]];
    LODWORD(v420) = v91[v87[10]];
    v188 = v87[12];
    LODWORD(v398) = v91[v87[11]];
    LODWORD(v402) = v91[v188];
    v189 = v87[14];
    LODWORD(v394) = v91[v87[13]];
    v396 = *&v91[v189];
    v190 = v87[16];
    LODWORD(v390) = v91[v87[15]];
    LODWORD(v392) = v91[v190];
    v191 = v187[1];
    v385 = *v187;
    v381 = v191;
    v192 = v87[19];
    v193 = &v91[v87[18]];
    v195 = v193[1];
    v383 = *v193;
    v194 = v383;
    v197 = v193[2];
    v196 = v193[3];
    v198 = v193[4];
    v387 = v193[5];
    v389 = v91[v192];
    v199 = v387;

    v200 = v194;
    v201 = v195;
    v202 = v197;
    v203 = v196;
    v204 = v198;
    sub_100037DC8();
    sub_1000D705C(v91, v205);
    *v100 = v410;
    v100[1] = v408;
    v100[2] = v406;
    v100[3] = v404;
    (*(v186 + 32))(&v100[v87[8]], v388, v386);
    v206 = &v100[v87[9]];
    v207 = v381;
    *v206 = v385;
    *(v206 + 1) = v207;
    v100[v87[10]] = v420;
    sub_10003A3C4(v87[11]);
    sub_10003A3C4(v87[12]);
    sub_10003A3C4(v87[13]);
    *&v100[v87[14]] = v396;
    sub_10003A3C4(v87[15]);
    sub_10003A3C4(v87[16]);
    v100[v87[17]] = v400 & 1;
    v208 = &v100[v87[18]];
    *v208 = v383;
    *(v208 + 1) = v195;
    *(v208 + 2) = v197;
    *(v208 + 3) = v196;
    v209 = v387;
    *(v208 + 4) = v198;
    *(v208 + 5) = v209;
    sub_10003A3C4(v87[19]);
    sub_10001B350(v100, 0, 1, v87);
    v210 = sub_100003BCC(&v423);
    v211 = v417;
    sub_10001B350(v210, v212, v213, v417);
    v214 = sub_100003BCC(&v425);
    v215 = v418;
    sub_10001B350(v214, v216, v217, v418);
    v218 = sub_100003BCC(v427);
    sub_10001B350(v218, v219, v220, v421);
    v221 = sub_100003BCC(&v429);
    sub_10001B350(v221, v222, v223, v422);
    v224 = sub_100003BCC(&v431);
    sub_10001B350(v224, v225, v226, v424);
    v227 = v371;
    sub_100003934();
    v228 = v401;
    sub_10001B350(v229, v230, v231, v401);
    v232 = sub_100016F98(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v233 = v377;
    sub_100181780(v232, v377, v234);
    v235 = v227;
    v236 = v374;
    sub_1002AB08C(v235, v374, &qword_100CA65E8, &unk_100A31410);
    v237 = sub_1000131C4();
    sub_1000038B4(v237, v238, v228);
    if (v123)
    {
      sub_1000180EC(v236, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_100020BD4();
      sub_1000D705C(v233, v249);
      sub_100005518();
      sub_100073030(v236, v233, v250);
    }

    v251 = v423;
    sub_100005518();
    sub_100073030(v233, v252, v253);
    v254 = *(v197 + 16);
    LODWORD(v420) = *(v197 + 24);
    v255 = v414;
    sub_1002AB08C(v412, v414, &qword_100CA6640, qword_100A32640);
    sub_1000038B4(v255, 1, v251);
    v256 = v369;
    if (v123)
    {
      v257 = sub_10004EB38(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_100181780(v257, v407, v258);
      v259 = sub_100024D10(v255, 1, v251);

      v123 = v259 == 1;
      v271 = v416;
      if (!v123)
      {
        sub_1000180EC(v255, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      v269 = sub_100024AB8();
      sub_100073030(v269, v407, v270);

      v271 = v416;
    }

    sub_1002AB08C(v100, v256, &qword_100CA6638, &unk_100A31460);
    v272 = sub_1000131C4();
    sub_1000038B4(v272, v273, v87);
    v423 = v254;
    if (v123)
    {
      sub_100010C0C();
      sub_100181780(v197 + v379, v397, v274);
      v275 = sub_1000131C4();
      sub_1000038B4(v275, v276, v87);
      v289 = v384;
      v290 = v382;
      if (!v123)
      {
        sub_1000180EC(v256, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      v287 = sub_10003C8B4();
      sub_100073030(v287, v397, v288);
      v289 = v384;
      v290 = v382;
    }

    v291 = v375;
    sub_1002AB08C(v391, v375, &qword_100CA6630, &unk_100A32630);
    v292 = sub_100007FC4();
    sub_1000038B4(v292, v293, v211);
    v294 = v421;
    if (v123)
    {
      v295 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_100181780(v295, v409, v296);
      v297 = sub_100007FC4();
      sub_1000038B4(v297, v298, v211);
      v309 = v424;
      if (!v123)
      {
        sub_1000180EC(v291, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v291, v409, v308);
      v309 = v424;
    }

    v310 = v378;
    sub_1002AB08C(v393, v378, &qword_100CA6628, &unk_100A31450);
    sub_1000038B4(v310, 1, v215);
    if (v123)
    {
      v311 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_100181780(v311, v411, v312);
      sub_1000038B4(v310, 1, v215);
      if (!v123)
      {
        sub_1000180EC(v310, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_100028144();
      sub_100073030(v310, v411, v317);
    }

    v318 = v380;
    sub_1002AB08C(v395, v380, &qword_100CA6620, &unk_100A32620);
    sub_1000038B4(v318, 1, v294);
    if (v123)
    {
      v319 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100181780(v319, v413, v320);
      sub_1000038B4(v318, 1, v294);
      if (!v123)
      {
        sub_1000180EC(v318, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      v326 = sub_10004EB54();
      sub_100073030(v326, v413, v327);
    }

    sub_1002AB08C(v399, v290, &qword_100CA6618, &unk_100A31440);
    sub_100003BFC(v290);
    if (v123)
    {
      v328 = sub_100013CE4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_100181780(v328, v415, v329);
      sub_100003BFC(v290);
      if (!v123)
      {
        sub_1000180EC(v290, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v290, v415, v333);
    }

    sub_1002AB08C(v403, v289, &qword_100CA6610, &unk_100A32610);
    v334 = sub_10000C7F0();
    sub_1000038B4(v334, v335, v309);
    if (v123)
    {
      v336 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_100181780(v336, v271, v337);
      v338 = sub_10000C7F0();
      sub_1000038B4(v338, v339, v309);
      if (!v123)
      {
        sub_1000180EC(v289, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v289, v271, v353);
    }

    sub_100005518();
    v354 = v419;
    sub_100073030(v405, v419, v355);
    v357 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v356 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v358 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v359 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v360 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v361 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v362 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v363 = *(v197 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v366) = v360;
    sub_10003E038(v423, v420, v407, v397, v409, v411, v413, v415, v416, v354, v357, v356, v358, v359, v366, v361, v362, v363, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383);
  }

  else
  {
    v415 = &v367 - v110;
    v416 = v112;
    sub_100003934();
    sub_10001B350(v114, v115, v116, v423);
    v117 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v118 = v425;
    swift_beginAccess();
    sub_100010C0C();
    v382 = v117;
    sub_100181780(v118 + v117, v95, v119);
    sub_100003934();
    sub_10001B350(v120, v121, v122, v73);
    LODWORD(v413) = *v95;
    LODWORD(v411) = v95[1];
    LODWORD(v409) = v95[2];
    sub_1002AB08C(v86, v83, &qword_100CAA9F0, qword_100A44F50);
    sub_100003BFC(v83);
    if (v123)
    {
      (*(v420 + 16))(v387, &v95[v87[8]], v73);
      sub_100003BFC(v83);
      if (!v123)
      {
        sub_1000180EC(v83, &qword_100CAA9F0, qword_100A44F50);
      }
    }

    else
    {
      (*(v420 + 32))(v387, v83, v73);
    }

    v134 = v87[10];
    v135 = &v95[v87[9]];
    v136 = v135[1];
    v405 = *v135;
    LODWORD(v407) = v95[v134];
    v137 = v87[12];
    LODWORD(v399) = v95[v87[11]];
    LODWORD(v403) = v95[v137];
    v138 = v87[14];
    LODWORD(v395) = v95[v87[13]];
    v397 = *&v95[v138];
    v139 = v87[16];
    LODWORD(v391) = v95[v87[15]];
    LODWORD(v393) = v95[v139];
    v140 = v87[18];
    LODWORD(v388) = v95[v87[17]];
    v142 = *&v95[v140 + 8];
    v384 = *&v95[v140];
    v141 = v384;
    v144 = *&v95[v140 + 16];
    v143 = *&v95[v140 + 24];
    v146 = *&v95[v140 + 32];
    v145 = *&v95[v140 + 40];
    v389 = v95[v87[19]];
    v147 = v145;

    v148 = v141;
    v149 = v142;
    v150 = v144;
    v151 = v143;
    v152 = v146;
    sub_100037DC8();
    sub_1000D705C(v95, v153);
    *v104 = v413;
    v104[1] = v411;
    v104[2] = v409;
    v104[3] = v400;
    (*(v420 + 32))(&v104[v87[8]], v387, v386);
    v154 = &v104[v87[9]];
    *v154 = v405;
    *(v154 + 1) = v136;
    sub_100028B04(v87[10]);
    sub_100028B04(v87[11]);
    sub_100028B04(v87[12]);
    sub_100028B04(v87[13]);
    *&v104[v87[14]] = v397;
    sub_100028B04(v87[15]);
    sub_100028B04(v87[16]);
    sub_100028B04(v87[17]);
    v155 = &v104[v87[18]];
    *v155 = v384;
    *(v155 + 1) = v142;
    *(v155 + 2) = v144;
    *(v155 + 3) = v143;
    *(v155 + 4) = v146;
    *(v155 + 5) = v145;
    sub_100028B04(v87[19]);
    sub_10001B350(v104, 0, 1, v87);
    v156 = sub_100003BCC(&v422);
    v157 = v417;
    sub_10001B350(v156, v158, v159, v417);
    v160 = sub_100003BCC(&v424);
    v161 = v418;
    sub_10001B350(v160, v162, v163, v418);
    v164 = sub_100003BCC(v426);
    v165 = v421;
    sub_10001B350(v164, v166, v167, v421);
    v168 = sub_100003BCC(&v428);
    sub_10001B350(v168, v169, v170, v422);
    v171 = sub_100003BCC(&v430);
    sub_10001B350(v171, v172, v173, v424);
    v174 = v370;
    sub_100003934();
    v175 = v401;
    sub_10001B350(v176, v177, v178, v401);
    v179 = sub_100016F98(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v180 = v376;
    sub_100181780(v179, v376, v181);
    v182 = v174;
    v183 = v372;
    sub_1002AB08C(v182, v372, &qword_100CA65E8, &unk_100A31410);
    v184 = sub_1000131C4();
    sub_1000038B4(v184, v185, v175);
    if (v123)
    {
      sub_1000180EC(v183, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_100020BD4();
      sub_1000D705C(v180, v239);
      sub_100005518();
      sub_100073030(v183, v180, v240);
    }

    v241 = v423;
    sub_100005518();
    sub_100073030(v180, v404, v242);
    v243 = *(v142 + 16);
    LODWORD(v420) = *(v142 + 24);
    v244 = v416;
    sub_1002AB08C(v415, v416, &qword_100CA6640, qword_100A32640);
    sub_1000038B4(v244, 1, v241);
    v245 = v368;
    v423 = v243;
    if (v123)
    {
      v246 = sub_10004EB38(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_100181780(v246, v406, v247);
      v248 = sub_100024D10(v244, 1, v241);

      v123 = v248 == 1;
      v262 = v385;
      v263 = v373;
      if (!v123)
      {
        sub_1000180EC(v244, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      v260 = sub_100024AB8();
      sub_100073030(v260, v406, v261);

      v262 = v385;
      v263 = v373;
    }

    sub_1002AB08C(v104, v245, &qword_100CA6638, &unk_100A31460);
    v264 = sub_1000131C4();
    sub_1000038B4(v264, v265, v87);
    if (v123)
    {
      sub_100010C0C();
      sub_100181780(v142 + v382, v396, v266);
      v267 = sub_1000131C4();
      sub_1000038B4(v267, v268, v87);
      v279 = v383;
      v280 = v379;
      if (!v123)
      {
        sub_1000180EC(v245, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      v277 = sub_10003C8B4();
      sub_100073030(v277, v396, v278);
      v279 = v383;
      v280 = v379;
    }

    sub_1002AB08C(v390, v263, &qword_100CA6630, &unk_100A32630);
    v281 = sub_10000C7F0();
    sub_1000038B4(v281, v282, v157);
    if (v123)
    {
      v283 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_100181780(v283, v408, v284);
      v285 = sub_10000C7F0();
      sub_1000038B4(v285, v286, v157);
      v300 = v422;
      if (!v123)
      {
        sub_1000180EC(v263, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v263, v408, v299);
      v300 = v422;
    }

    v301 = *(&v377 + 1);
    sub_1002AB08C(v392, *(&v377 + 1), &qword_100CA6628, &unk_100A31450);
    v302 = sub_100007FC4();
    sub_1000038B4(v302, v303, v161);
    if (v123)
    {
      v304 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_100181780(v304, v410, v305);
      v306 = sub_100007FC4();
      sub_1000038B4(v306, v307, v161);
      v314 = v424;
      if (!v123)
      {
        sub_1000180EC(v301, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_100028144();
      sub_100073030(v301, v410, v313);
      v314 = v424;
    }

    sub_1002AB08C(v394, v280, &qword_100CA6620, &unk_100A32620);
    sub_1000038B4(v280, 1, v165);
    if (v123)
    {
      v315 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100181780(v315, v412, v316);
      sub_1000038B4(v280, 1, v165);
      if (!v123)
      {
        sub_1000180EC(v280, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      v321 = sub_10004EB54();
      sub_100073030(v321, v412, v322);
    }

    v323 = v381;
    sub_1002AB08C(v398, v381, &qword_100CA6618, &unk_100A31440);
    sub_1000038B4(v323, 1, v300);
    if (v123)
    {
      v324 = sub_100013CE4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_100181780(v324, v414, v325);
      sub_1000038B4(v323, 1, v300);
      if (!v123)
      {
        sub_1000180EC(v323, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v323, v414, v330);
    }

    sub_1002AB08C(v402, v279, &qword_100CA6610, &unk_100A32610);
    sub_1000038B4(v279, 1, v314);
    if (v123)
    {
      v331 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_100181780(v331, v262, v332);
      sub_1000038B4(v279, 1, v314);
      v341 = v262;
      if (!v123)
      {
        sub_1000180EC(v279, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v279, v262, v340);
      v341 = v262;
    }

    sub_100005518();
    v342 = v419;
    sub_100073030(v404, v419, v343);
    v345 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v344 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v346 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v347 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v348 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v349 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v350 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v351 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v366) = v348;
    sub_10003E038(v423, v420, v406, v396, v408, v410, v412, v414, v341, v342, v345, v344, v346, v347, v366, v349, v350, v351, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383);
  }

  v364 = v352;

  return v364;
}

uint64_t sub_100181314()
{
  sub_100013494();
  v2 = *v1;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_10000CCF8();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  sub_10000E700();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100181474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10009262C();
  v20 = 0;
  v21 = v19[21];
  sub_1000C9014();
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19[22] = v22;
    if (v18 == v20)
    {
      break;
    }

    if (v20 >= *(a14 + 16))
    {
      __break(1u);
      return;
    }

    v23 = v19[15];
    v24 = v19[8];
    v25 = v19[6];
    sub_1000523AC();
    v26(v23);
    sub_1005C6A1C(v23, v25, v24);
    v27 = v21;
    v28 = v19[15];
    v29 = v19[13];
    if (v27)
    {

      v43 = sub_1000439EC();
      v44(v43);
      sub_1000865A0();

      return;
    }

    v31 = v19[8];
    v30 = v19[9];
    v32 = sub_1000439EC();
    v33(v32);
    if (sub_1000D3BF0(v31) == 1)
    {
      sub_100018144(v19[8], &qword_100CC32A0, &unk_100A5C140);
      v21 = 0;
      ++v20;
    }

    else
    {
      v34 = sub_1000C8A08();
      v30(v34);
      (v30)(a10, v28, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100025278();
        sub_100184910();
        v22 = v38;
      }

      v35 = v22[2];
      if (v35 >= v22[3] >> 1)
      {
        sub_1000B0C98();
        sub_100184910();
        v22 = v39;
      }

      ++v20;
      v22[2] = v35 + 1;
      sub_10002426C();
      v30(v36 + v37 * v35);
      v21 = 0;
    }
  }

  if (v22[2])
  {
    v40 = swift_task_alloc();
    v19[23] = v40;
    *v40 = v19;
    sub_1005C96FC(v40);
    sub_1000865A0();

    sub_100184BFC(v41);
  }

  else
  {

    sub_1000132AC();

    sub_100003B14();
    sub_1000865A0();

    v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_100181720(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100181780(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001817E0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSettingsData();
  sub_100003810(v3);
  return sub_100181958(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 157, &AccessTracker.push<A>(data:traits:file:line:));
}

uint64_t sub_100181858()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100181958(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v7 = type metadata accessor for DataEventTrait();
  sub_1000037C4();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2C3F0;
  (*(v9 + 104))(v11 + v10, enum case for DataEventTrait.unique(_:), v7);
  v12 = type metadata accessor for NotificationSettingsData();
  v13 = sub_10006CF08(&qword_100CD1FD8, 255, &type metadata accessor for NotificationSettingsData, &protocol conformance descriptor for NotificationSettingsData);
  a4(a2, v11, 0xD000000000000064, 0x8000000100ADB6B0, a3, v12, v13);
}

uint64_t sub_100181AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000B025C();
  sub_1000C8EB0();
  v16 = sub_1000045E0();
  sub_1000C82A0(v16);

  sub_100003B14();
  sub_1000D4258();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100181B9C(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CD1FD0, &qword_100A77740);
  sub_100003810(v3);
  return sub_100181958(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 161, &AccessSessionManager.push<A>(_:traits:file:line:));
}

uint64_t sub_100181C20()
{
  v1 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v1 - 8);
  v3 = &v131 - v2;
  v4 = type metadata accessor for ContentStatusBanner(0);
  v145 = *(v4 - 8);
  __chkstk_darwin(v4);
  v150 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = &v131 - v7;
  v143 = type metadata accessor for CurrentWeather();
  v8 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Date();
  v10 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v12 - 8);
  v140 = &v131 - v13;
  v14 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v14);
  v132 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v131 - v17;
  v141 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v141);
  v163 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for LocationWeatherDataState(0);
  v153 = *(v158 - 8);
  __chkstk_darwin(v158);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v152 = &v131 - v22;
  v23 = sub_10022C350(&qword_100CAA800, &qword_100A352D8);
  __chkstk_darwin(v23 - 8);
  v25 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v162 = (&v131 - v27);
  v28 = type metadata accessor for BannerStateComputer(0);
  v53 = *(v0 + v28[7]) == 1;
  v160 = v0;
  v146 = v4;
  if (!v53)
  {
    v101 = v160;
    v162 = v28[6];
    v102 = *(v162 + v160);

    sub_100182EB4(v103, v101);
    v106 = *(v104 + 16);
    if (v106)
    {
      v159 = v104;
      v107 = (v104 + 40);
      *&v105 = 141558275;
      v161 = v105;
      v164 = v3;
      do
      {
        v108 = *(v107 - 1);
        v109 = *v107;
        sub_10010ABD0(v108, *v107);
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_10000703C(v110, qword_100D90D08);
        sub_10010ABD0(v108, v109);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.info.getter();
        sub_1000B84FC(v108, v109);
        if (os_log_type_enabled(v111, v112))
        {
          v163 = v102;
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v167 = v114;
          *v113 = v161;
          *(v113 + 4) = 1752392040;
          *(v113 + 12) = 2081;
          if (v109)
          {
            if (v109 == 1)
            {
              v115 = 0xE300000000000000;
              v116 = 7364941;
            }

            else
            {
              v165 = 0x6E6F697461636F4CLL;
              v166 = 0xEA00000000002820;
              sub_10010ABD0(v108, v109);
              v117._countAndFlagsBits = v108;
              v117._object = v109;
              String.append(_:)(v117);
              v118._countAndFlagsBits = 41;
              v118._object = 0xE100000000000000;
              String.append(_:)(v118);
              sub_1000B84FC(v108, v109);
              v116 = v165;
              v115 = v166;
            }
          }

          else
          {
            v115 = 0xE400000000000000;
            v116 = 1953720652;
          }

          v119 = sub_100078694(v116, v115, &v167);

          *(v113 + 14) = v119;
          _os_log_impl(&_mh_execute_header, v111, v112, "Removing offline banner. ID=%{private,mask.hash}s", v113, 0x16u);
          sub_100006F14(v114);

          v4 = v146;
          v102 = v163;
        }

        else
        {
        }

        v120 = sub_1000B8384(v108, v109);
        v122 = v121;
        sub_1000B84FC(v108, v109);
        if (v122)
        {
          v123 = v160;
          v124 = v162;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165 = *(v124 + v123);
          v126 = *(v165 + 24);
          sub_10022C350(&qword_100CA3A30, &unk_100A4A650);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v126);
          v127 = v165;
          sub_1000B84FC(*(*(v165 + 48) + 16 * v120), *(*(v165 + 48) + 16 * v120 + 8));
          v128 = v164;
          sub_100073140();
          sub_100072E1C();
          _NativeDictionary._delete(at:)();
          v129 = 0;
          *(v124 + v123) = v127;
          v102 = v127;
        }

        else
        {
          v129 = 1;
          v128 = v164;
        }

        v107 += 2;
        sub_10001B350(v128, v129, 1, v4);
        sub_1000180EC(v128, &qword_100CA5010, &unk_100A2F250);
        --v106;
      }

      while (v106);
    }
  }

  v157 = v25;
  v139 = v28;
  v144 = *(v160 + v28[5]);
  v29 = *(v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 64);
  v134 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v33 = (v30 + 63) >> 6;
  v138 = (v8 + 8);
  v137 = (v10 + 16);
  v136 = (v10 + 8);
  v34 = v29 + 64;
  v151 = v29;

  v135 = v14;
  v35 = 0;
  v36 = &qword_100CAA808;
  *&v37 = 141558275;
  v133 = v37;
  *&v161 = v20;
  v38 = v162;
  v156 = v34;
  v147 = v33;
  while (v32)
  {
    v39 = v35;
LABEL_12:
    v40 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v41 = (*(v151 + 48) + 16 * (v40 | (v39 << 6)));
    v43 = *v41;
    v42 = v41[1];
    sub_100050FF0();
    v44 = sub_10022C350(v36, &qword_100A352E0);
    v45 = v36;
    v46 = v157;
    *v157 = v43;
    v46[1] = v42;
    sub_100073140();
    sub_10001B350(v46, 0, 1, v44);

    v20 = v161;
    v38 = v162;
    v33 = v147;
LABEL_13:
    sub_100051BBC();
    v47 = sub_10022C350(v45, &qword_100A352E0);
    if (sub_100024D10(v38, 1, v47) == 1)
    {
    }

    v36 = v45;
    v48 = *v38;
    v49 = v38[1];
    sub_100073140();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v51 = *(v50 + 48);
      v154 = *(v50 + 64);
      v155 = v51;
      sub_100073140();
      v53 = v48 == static Location.currentLocationID.getter() && v49 == v52;
      v164 = v48;
      if (v53)
      {
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v54 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v55 = v140;
      sub_100095588();
      if (sub_100024D10(v55, 1, v135) == 1)
      {
        sub_1000180EC(v55, &unk_100CE49F0, &unk_100A3AFA0);
        v48 = v164;
        goto LABEL_31;
      }

      sub_100073140();
      v57 = v132;
      sub_100073140();
      v58 = swift_getEnumCaseMultiPayload() - 1;
      sub_100053318(v57, &type metadata accessor for CurrentLocation);
      v48 = v164;
      if (v58 >= 2)
      {
LABEL_31:
        v67 = v142;
        WeatherDataModel.currentWeather.getter();
        v68 = v148;
        CurrentWeather.date.getter();
        (*v138)(v67, v143);
        v69 = v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        if (*(v69 + *(type metadata accessor for EnvironmentState(0) + 68)))
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        v71 = *(v146 + 24);
        v72 = v159;
        v73 = v68;
        v74 = v149;
        (*v137)(v159 + v71, v73, v149);
        sub_10001B350(v72 + v71, 0, 1, v74);
        *v72 = v70;
        *(v72 + 8) = v48;
        *(v72 + 16) = v49;
        v75 = qword_100CA2790;
        swift_bridgeObjectRetain_n();
        if (v75 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_10000703C(v76, qword_100D90D08);

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v167 = v80;
          *v79 = v133;
          *(v79 + 4) = 1752392040;
          *(v79 + 12) = 2081;
          v81 = sub_100078694(v164, v49, &v167);

          *(v79 + 14) = v81;
          _os_log_impl(&_mh_execute_header, v77, v78, "Displaying offline banner. ID=%{private,mask.hash}s", v79, 0x16u);
          sub_100006F14(v80);
          v48 = v164;
        }

        else
        {
        }

        v82 = v139[6];
        sub_100050FF0();
        v83 = v160;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v167 = *(v83 + v82);
        v85 = v167;
        v86 = sub_1000B8384(v48, v49);
        v88 = *(v85 + 16);
        v89 = (v87 & 1) == 0;
        v90 = v88 + v89;
        if (__OFADD__(v88, v89))
        {
          goto LABEL_73;
        }

        v91 = v86;
        v92 = v87;
        sub_10022C350(&qword_100CA3A30, &unk_100A4A650);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v84, v90))
        {
          v93 = v164;
          v94 = sub_1000B8384(v164, v49);
          v36 = &qword_100CAA808;
          if ((v92 & 1) != (v95 & 1))
          {
            goto LABEL_75;
          }

          v91 = v94;
        }

        else
        {
          v36 = &qword_100CAA808;
          v93 = v164;
        }

        v96 = v167;
        if (v92)
        {
          sub_100236C3C(v150, v167[7] + *(v145 + 72) * v91);
        }

        else
        {
          v167[(v91 >> 6) + 8] |= 1 << v91;
          v97 = (*(v96 + 48) + 16 * v91);
          *v97 = v93;
          v97[1] = v49;
          sub_100073140();
          v98 = *(v96 + 16);
          v99 = __OFADD__(v98, 1);
          v100 = v98 + 1;
          if (v99)
          {
            goto LABEL_74;
          }

          *(v96 + 16) = v100;
        }

        sub_100053318(v159, type metadata accessor for ContentStatusBanner);
        (*v136)(v148, v149);
        sub_100053318(v163, type metadata accessor for WeatherData);
        v20 = v161;
        *(v160 + v82) = v96;
        sub_100053318(&v20[v154], type metadata accessor for NewsDataModel);
        sub_100053318(&v20[v155], type metadata accessor for PreprocessedWeatherData);
        v38 = v162;
        v34 = v156;
      }

      else
      {
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000703C(v59, qword_100D90D08);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = v48;
          v65 = v63;
          v167 = v63;
          *v62 = v133;
          *(v62 + 4) = 1752392040;
          *(v62 + 12) = 2081;
          v66 = sub_100078694(v64, v49, &v167);

          *(v62 + 14) = v66;
          v36 = &qword_100CAA808;
          _os_log_impl(&_mh_execute_header, v60, v61, "Not displaying offline banner - location is stale or uncertain. ID=%{private,mask.hash}s", v62, 0x16u);
          sub_100006F14(v65);

          v20 = v161;
        }

        else
        {
        }

        sub_100053318(v163, type metadata accessor for WeatherData);
        v34 = v156;
        sub_100053318(&v20[v154], type metadata accessor for NewsDataModel);
        sub_100053318(&v20[v155], type metadata accessor for PreprocessedWeatherData);
        v38 = v162;
      }
    }

    else
    {

      sub_100053318(v20, type metadata accessor for LocationWeatherDataState);
      v34 = v156;
    }
  }

  while (1)
  {
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v56 = sub_10022C350(v36, &qword_100A352E0);
      v45 = v36;
      sub_10001B350(v157, 1, 1, v56);
      v32 = 0;
      goto LABEL_13;
    }

    v32 = *(v34 + 8 * v39);
    ++v35;
    if (v32)
    {
      v35 = v39;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100182EB4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v33 = _swiftEmptyArrayStorage;
  while (v12)
  {
LABEL_9:
    v15 = (*(v37 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = *v15;
    v16 = v15[1];
    if (*(*(v34 + *(type metadata accessor for BannerStateComputer(0) + 24)) + 16))
    {
      sub_10010ABD0(v17, v16);
      v35 = v17;
      v36 = v16;
      sub_1000B8384(v17, v16);
      if (v18)
      {
        v19 = type metadata accessor for ContentStatusBanner(0);
        sub_100050FF0();
        v20 = v5;
        v21 = 0;
      }

      else
      {
        v19 = type metadata accessor for ContentStatusBanner(0);
        v20 = v5;
        v21 = 1;
      }

      sub_10001B350(v20, v21, 1, v19);
      v17 = v35;
      v16 = v36;
    }

    else
    {
      v19 = type metadata accessor for ContentStatusBanner(0);
      sub_10001B350(v5, 1, 1, v19);
      sub_10010ABD0(v17, v16);
    }

    v12 &= v12 - 1;
    type metadata accessor for ContentStatusBanner(0);
    if (sub_100024D10(v5, 1, v19))
    {
      sub_1000180EC(v5, &qword_100CA5010, &unk_100A2F250);
      goto LABEL_18;
    }

    v22 = *v5;
    sub_1000180EC(v5, &qword_100CA5010, &unk_100A2F250);
    if (v22 == 1)
    {
      v23 = v17;
      v24 = v16;
      v25 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      v32 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006A8124(0, v25[2] + 1, 1);
        v25 = v38;
      }

      v28 = v25[2];
      v27 = v25[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1006A8124((v27 > 1), v28 + 1, 1);
        v29 = v28 + 1;
        v25 = v38;
      }

      v25[2] = v29;
      v33 = v25;
      v30 = &v25[2 * v28];
      v30[4] = v23;
      v30[5] = v24;
      v5 = v32;
    }

    else
    {
LABEL_18:
      sub_1000B84FC(v17, v16);
    }
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(v8 + 8 * v14);
    ++v6;
    if (v12)
    {
      v6 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}