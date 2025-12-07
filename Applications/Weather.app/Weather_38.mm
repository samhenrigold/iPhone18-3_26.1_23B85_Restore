void sub_1003FB51C()
{
  sub_10000C778();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v50 = v7;
  v8 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
  v9 = type metadata accessor for Array();
  v10 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  v11 = sub_100051DF8();
  v55 = v9;
  v56 = v5;
  v57 = v10;
  WitnessTable = swift_getWitnessTable(v11, v9);
  v59 = v3;
  v12 = type metadata accessor for ForEach();
  v13 = sub_1003FFD40();
  v54 = sub_1003FFFA8();
  v14 = sub_100037A98();
  v15 = swift_getWitnessTable(v14, v12, &v54);
  v55 = v8;
  v56 = v12;
  v57 = v13;
  WitnessTable = v15;
  v16 = type metadata accessor for Menu();
  v17 = type metadata accessor for DefaultMenuStyle();
  v18 = sub_10000E9DC();
  v46 = swift_getWitnessTable(v18, v16);
  sub_10002C6BC();
  v21 = sub_1003FD490(v19, v20, &protocol conformance descriptor for DefaultMenuStyle);
  v55 = v16;
  v56 = v17;
  v57 = v46;
  WitnessTable = v21;
  sub_1000206FC();
  v44[1] = v23;
  v45 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_100007FD0();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = v44 - v32;
  v44[0] = sub_10022C350(&qword_100CB66B0, &qword_100A4A068);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_100003C38();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v40 = v44 - v39;
  v55 = v5;
  v56 = v47;
  v57 = v3;
  WitnessTable = v48;
  v41 = type metadata accessor for PickerSection(0, &v55);
  sub_1003FA578(v40);
  sub_1003FA6C8(v41, v30);
  v55 = v16;
  v56 = v17;
  v57 = v46;
  WitnessTable = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v43 = *(v26 + 8);
  v43(v30, OpaqueTypeMetadata2);
  sub_1000302D8(v40, v37, &qword_100CB66B0, &qword_100A4A068);
  v55 = v37;
  (*(v26 + 16))(v30, v33, OpaqueTypeMetadata2);
  v56 = v30;
  v53[0] = v44[0];
  v53[1] = OpaqueTypeMetadata2;
  v51 = sub_1004000AC();
  v52 = OpaqueTypeConformance2;
  sub_10012E24C(&v55, 2, v53);
  v43(v33, OpaqueTypeMetadata2);
  sub_10003FDA0(v40, &qword_100CB66B0);
  v43(v30, OpaqueTypeMetadata2);
  sub_10003FDA0(v37, &qword_100CB66B0);
  sub_10000536C();
}

uint64_t sub_1003FB88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a5;
  v35 = a6;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v9 = type metadata accessor for PickerSection(0, &v43);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = type metadata accessor for Array();
  v33 = v13;
  v14 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  v32 = v14;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v13);
  v43 = v13;
  v44 = a2;
  v45 = v14;
  v46 = WitnessTable;
  v47 = a4;
  v15 = type metadata accessor for ForEach();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v30 = v29 - v19;
  v43 = *(a1 + *(v9 + 64));
  v38 = a2;
  v39 = v36;
  v40 = a4;
  v41 = v37;
  v29[1] = swift_getKeyPath();
  (*(v10 + 16))(v12, a1, v9);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v23 = v36;
  v22 = v37;
  *(v21 + 2) = a2;
  *(v21 + 3) = v23;
  *(v21 + 4) = a4;
  *(v21 + 5) = v22;
  (*(v10 + 32))(&v21[v20], v12, v9);
  v24 = sub_1003FFFA8();

  ForEach<>.init(_:id:content:)();
  v42 = v24;
  v25 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v15, &v42);
  v26 = v30;
  sub_1000833D8(v17, v15, v25);
  v27 = *(v34 + 8);
  v27(v17, v15);
  sub_1000833D8(v26, v15, v25);
  return (v27)(v26, v15);
}

uint64_t sub_1003FBBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[1] = a7;
  v13 = sub_10022C350(&qword_100CB66A0, &qword_100A4A060);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v17 = type metadata accessor for PickerSection(0, &v22);
  v22 = (*(a2 + *(v17 + 68)))(a1, 1);
  v23 = v18;
  sub_1003FBDC8(a1, v17);
  sub_10002D5A4();
  Toggle<>.init<A>(_:isOn:)();
  v22 = (*(a2 + *(v17 + 72)))(a1, 1);
  v23 = v19;
  sub_10023FBF4(&qword_100CB6698, &qword_100CB66A0, &qword_100A4A060, &protocol conformance descriptor for Toggle<A>);
  View.accessibilityLabel<A>(_:)();

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1003FBDC8(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v46 = *(a2 - 8);
  v4 = v46;
  v5 = *(v46 + 64);
  __chkstk_darwin(a1);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v10;
  v39 = v10;
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v43 = v7 + 16;
  v45 = v12;
  v12(v9);
  v41 = *(v4 + 16);
  v41(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v40 = type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = *(v7 + 80);
  v15 = (v14 + 64) & ~v14;
  v16 = *(v4 + 80);
  v17 = (v11 + v16 + v15) & ~v16;
  v35 = v14 | v16;
  v36 = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = &protocol witness table for MainActor;
  v36 = *(a2 + 40);
  v19.i64[0] = v6;
  v34 = (v16 + 64) & ~v16;
  v31 = (v5 + v34 + v14) & ~v14;
  v32 = *(a2 + 24);
  v20 = *(a2 + 32);
  *(v18 + 32) = vzip1q_s64(v19, v32);
  *(v18 + 48) = v20;
  v21 = *(v7 + 32);
  v33 = v7 + 32;
  v22 = v37;
  v21(v18 + v15, v37, v6);
  v23 = *(v46 + 32);
  v46 += 32;
  v24 = v18 + v17;
  v25 = v38;
  v23(v24, v38, a2);
  v41(v25, v42, a2);
  (v45)(v22, v44, v6);
  v26 = static MainActor.shared.getter();
  v27 = v31;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = &protocol witness table for MainActor;
  *(v28 + 32) = v6;
  *(v28 + 40) = v32;
  *(v28 + 56) = v36;
  v23(v28 + v34, v25, a2);
  v21(v28 + v27, v22, v6);
  Binding.init(get:set:)();
  return v47;
}

void *sub_1003FC144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v50 + 1) = a5;
  *&v50 = a4;
  *(&v49 + 1) = a3;
  v7 = a1;
  v52 = a1;
  v64 = a6;
  v63 = type metadata accessor for DynamicTypeSize();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = a2;
  v60 = *(a2 - 8);
  __chkstk_darwin(v9);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10022C350(&qword_100CB66E0, &qword_100A4A078);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v48 - v14;
  v58 = sub_10022C350(&qword_100CB6668, &qword_100A4A048);
  __chkstk_darwin(v58);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v48 - v17;
  v18 = static VerticalAlignment.center.getter();
  __dst[0] = 1;
  sub_1003FC8A4(v7, a2, __src);
  v19 = __src[0];
  v20 = __src[1];
  v21 = BYTE8(__src[2]);
  v22 = *&__src[3];
  v48 = *(&__src[1] + 8);
  LOBYTE(__src[0]) = __src[1];
  LOBYTE(v7) = __dst[0];
  v23 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  __src[0] = v18;
  LOBYTE(__src[1]) = v7;
  *(&__src[1] + 8) = v19;
  BYTE8(__src[2]) = v20;
  __src[3] = v48;
  LOBYTE(__src[4]) = v21;
  *(&__src[4] + 1) = v22;
  *&__src[5] = KeyPath;
  *(&__src[5] + 1) = v23;
  static AccessibilityChildBehavior.ignore.getter();
  v25 = sub_10022C350(&qword_100CB6670, &qword_100A4A050);
  v26 = sub_1003FFEC4();
  v27 = v51;
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v55);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10003FDA0(__dst, &qword_100CB6670);
  v28 = v49;
  __src[0] = v49;
  __src[1] = v50;
  v29 = type metadata accessor for PickerSection(0, __src);
  v30 = v52;
  v31 = (v52 + *(v29 + 52));
  v33 = *v31;
  v32 = v31[1];
  *&__src[0] = v33;
  *(&__src[0] + 1) = v32;
  v65 = v25;
  v66 = v26;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v34 = v53;
  v35 = v56;
  View.accessibilityLabel<A>(_:)();
  (*(v57 + 8))(v27, v35);
  v36 = *(v30 + *(v29 + 72));
  type metadata accessor for Binding();
  v37 = v59;
  Binding.wrappedValue.getter();
  v38 = v36(v37, 0);
  v40 = v39;
  (*(v60 + 8))(v37, v28);
  *&__src[0] = v38;
  *(&__src[0] + 1) = v40;
  v41 = v54;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  sub_10003FDA0(v34, &qword_100CB6668);
  v42 = v61;
  sub_10011A1CC();
  DynamicTypeSize.isAccessibilitySize.getter();
  v43 = *(v62 + 8);
  v44 = v63;
  v43(v42, v63);
  sub_10011A1CC();
  LOBYTE(v38) = DynamicTypeSize.isAccessibilitySize.getter();
  v43(v42, v44);
  if (v38)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v64;
  sub_10011C0F0(v41, v64, &qword_100CB6668, &qword_100A4A048);
  v46 = sub_10022C350(&qword_100CB6648, &qword_100A4A038);
  return memcpy((v45 + *(v46 + 36)), __src, 0x70uLL);
}

uint64_t sub_1003FC8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v9;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v13 = *(a1 + *(type metadata accessor for PickerSection(0, v20) + 68));
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  v14 = v13(v8, 0);
  v16 = v15;
  (*(v6 + 8))(v8, a2);
  KeyPath = swift_getKeyPath();
  v18 = Image.init(systemName:)();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = 0;
  *(a3 + 24) = _swiftEmptyArrayStorage;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  *(a3 + 48) = v18;
  sub_10010CD54(v14, v16, 0);

  sub_10010CD64(v14, v16, 0);
}

uint64_t sub_1003FCA48@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, _BYTE *a5@<X8>)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v7 + 8))(v9, a3);
  *a5 = v10 & 1;
  return result;
}

void sub_1003FCB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __chkstk_darwin(a1);
  if (*v11 == 1)
  {
    (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a6, v10);
    type metadata accessor for Binding();
    Binding.wrappedValue.setter();
  }
}

uint64_t sub_1003FCC30()
{
  sub_10002D5A4();

  Text.init<A>(_:)();
  swift_getKeyPath();
  static Color.secondary.getter();
  swift_getKeyPath();
  sub_10022C350(&qword_100CB66F0, &qword_100A4A130);
  sub_10022C350(&qword_100CB66F8, &qword_100A4A138);
  sub_100400688();
  sub_10040076C();
  return Section<>.init(footer:content:)();
}

uint64_t sub_1003FCD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003FE828(a1, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x60uLL);
  Button.init(action:label:)();
  v5 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  result = sub_10022C350(&qword_100CB66F0, &qword_100A4A130);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_100168F20;
  v9[2] = v7;
  return result;
}

uint64_t sub_1003FCEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (*(a1 + 40) == 1)
  {
    static Color.gray.getter();
  }

  else
  {
    static Color.blue.getter();
  }

  v9 = Text.foregroundStyle<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10010CD64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

unint64_t sub_1003FD094()
{
  result = qword_100CB60A0;
  if (!qword_100CB60A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6010, &qword_100A49AD0);
    v4[0] = sub_1003FD120();
    v4[1] = sub_1003FD1D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60A0);
  }

  return result;
}

unint64_t sub_1003FD120()
{
  result = qword_100CB60A8;
  if (!qword_100CB60A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6020, &unk_100A49AE0);
    v4[0] = sub_10023FBF4(&qword_100CB60B0, &qword_100CB60B8, &qword_100A49B60, byte_100A49CD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60A8);
  }

  return result;
}

unint64_t sub_1003FD1D8()
{
  result = qword_100CB60C0;
  if (!qword_100CB60C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5FF8, &qword_100A49AB8);
    v4[0] = sub_10023FBF4(&qword_100CB60C8, &qword_100CB60D0, &qword_100A49B68, byte_100A49CD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60C0);
  }

  return result;
}

unint64_t sub_1003FD290()
{
  result = qword_100CB60D8;
  if (!qword_100CB60D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5FE8, &qword_100A49AA8);
    v4[0] = sub_10023FBF4(&qword_100CB60E0, &qword_100CB6098, &qword_100A49B58, byte_100A49CD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60D8);
  }

  return result;
}

unint64_t sub_1003FD348()
{
  result = qword_100CB60E8;
  if (!qword_100CB60E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6088, &qword_100A49B48);
    v4[0] = sub_1003FD3D4();
    v4[1] = sub_1003FD620();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60E8);
  }

  return result;
}

unint64_t sub_1003FD3D4()
{
  result = qword_100CB60F0;
  if (!qword_100CB60F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6080, &qword_100A49B40);
    v4[0] = sub_1003FD490(&qword_100CB60F8, type metadata accessor for ContentViewiOS, byte_100A49C80);
    v4[1] = sub_1003FD4D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB60F0);
  }

  return result;
}

uint64_t sub_1003FD490(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1003FD4D8()
{
  result = qword_100CB6100;
  if (!qword_100CB6100)
  {
    v7 = v0;
    v8 = v1;
    v3 = sub_10022E824(&qword_100CB6060, &qword_100A49B20);
    v4 = &protocol witness table for Solarium;
    v5 = sub_1003FD568();
    v6 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, &v4);
    atomic_store(result, &qword_100CB6100);
  }

  return result;
}

unint64_t sub_1003FD568()
{
  result = qword_100CB6108;
  if (!qword_100CB6108)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6110, &qword_100A49B70);
    v4[0] = sub_10023FBF4(&qword_100CB6118, &unk_100CB6120, &unk_100A49B78, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6108);
  }

  return result;
}

unint64_t sub_1003FD620()
{
  result = qword_100CB6128;
  if (!qword_100CB6128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6048, &qword_100A49B08);
    v4[0] = sub_1003FD6AC();
    v4[1] = sub_1003FD764();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6128);
  }

  return result;
}

unint64_t sub_1003FD6AC()
{
  result = qword_100CB6130;
  if (!qword_100CB6130)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6050, &unk_100A49B10);
    v4[0] = sub_10023FBF4(&qword_100CB6138, &qword_100CB6140, &qword_100A49B80, byte_100A49CD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6130);
  }

  return result;
}

unint64_t sub_1003FD764()
{
  result = qword_100CB6148;
  if (!qword_100CB6148)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6030, &unk_100A49AF0);
    v4[0] = sub_10023FBF4(&qword_100CB6150, &qword_100CB6158, &qword_100A49B88, byte_100A49CD0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6148);
  }

  return result;
}

unint64_t sub_1003FD81C()
{
  result = qword_100CB6160;
  if (!qword_100CB6160)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6018, &qword_100A49AD8);
    v4[0] = sub_1003FD094();
    v4[1] = sub_1003FD290();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6160);
  }

  return result;
}

uint64_t sub_1003FD8A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003FD9E4()
{

  sub_100006F14((v0 + 32));
  sub_10006A798();

  return swift_deallocObject();
}

uint64_t sub_1003FDA84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003FDADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_1003FDB58(uint64_t a1)
{
  sub_10013C99C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
  if (v3 <= 0x3F)
  {
    type metadata accessor for UnitsConfigurationViewModel.Configuration(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        sub_10013DB50();
        if (v6 <= 0x3F)
        {
          sub_1000455E4(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1003FDC7C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = ((result + v9 + 16) & ~v9);
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((v18 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v10 = ((((((((*(*(v4 - 8) + 64) - (((-9 - v7) | v7) + ((-17 - v7) | v9)) + 21) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1003FDE04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = (&a1[(v10 | 7) + 16] & ~(v10 | 7));
          if ((v8 & 0x80000000) != 0)
          {

            sub_10001B350((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) - (((-9 - v10) | v10) + ((-17 - v10) | v10 | 7)) + 21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1003FE060(uint64_t a1)
{
  type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(319);
  if (v1 <= 0x3F)
  {
    sub_1003FE134();
    if (v2 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAD690, &type metadata for CGFloat, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1003FE134()
{
  result = qword_100CB6290;
  if (!qword_100CB6290)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB6290);
  }

  return result;
}

uint64_t sub_1003FE27C()
{
  sub_10000C778();
  v2 = *(v1 + 16);
  v3 = sub_100074994();
  type metadata accessor for ConditionContentView(v3, v4, v5, v6);
  sub_100003A0C();
  v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  v9 = v8 + v0[9];

  v10 = sub_100074994();
  type metadata accessor for UnitsConfigurationViewModel.Configuration(v10, v11, v12, v13);
  sub_1000C8768();
  (*(v14 + 8))(v9 + v15, v2);
  sub_100008544(v0[11]);

  sub_1000B0C50();
  if (v16)
  {
  }

  sub_1000B0C50();
  if (v17)
  {
  }

  sub_100008544(v0[14]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1003FE3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = type metadata accessor for ConditionContentView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_100003810(v6);
  v7 = sub_1000D3E9C();

  return a3(v7, a2);
}

uint64_t sub_1003FE460@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = sub_100074994();
  v9 = type metadata accessor for ConditionContentView(v5, v6, v7, v8);
  sub_100003810(v9);
  v11 = v1 + ((*(v10 + 80) + 48) & ~*(v10 + 80));

  return sub_1003F9868(v11, v3, v4, a1);
}

uint64_t sub_1003FE4E4()
{
  sub_10000C778();
  v2 = *(v1 + 32);
  v3 = sub_100074994();
  type metadata accessor for ConditionContentView(v3, v4, v5, v6);
  sub_100003A0C();
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  v9 = v1 + v8 + v0[9];

  v10 = sub_100074994();
  type metadata accessor for UnitsConfigurationViewModel.Configuration(v10, v11, v12, v13);
  sub_1000C8768();
  (*(v14 + 8))(v9 + v15, v2);
  sub_100008544(v0[11]);

  sub_1000B0C50();
  if (v16)
  {
  }

  sub_1000B0C50();
  if (v17)
  {
  }

  sub_100008544(v0[14]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_1003FE614(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = sub_100074994();
  v9 = type metadata accessor for ConditionContentView(v5, v6, v7, v8);
  sub_100003810(v9);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1 + ((*(v10 + 80) + 48) & ~*(v10 + 80));

  return sub_1003F9908(a1, v11, v12, v13, v3, v4);
}

unint64_t sub_1003FE6A0()
{
  result = qword_100CB63B0;
  if (!qword_100CB63B0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CB6388, &qword_100A49D60);
    v4[2] = sub_10022E824(&qword_100CB6380, &qword_100A49D58);
    v4[3] = type metadata accessor for InsetGroupedListStyle();
    v4[4] = sub_10023FBF4(&qword_100CB63A8, &qword_100CB6380, &qword_100A49D58, &protocol conformance descriptor for List<A, B>);
    v4[5] = &protocol witness table for InsetGroupedListStyle;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB63B0);
  }

  return result;
}

uint64_t sub_1003FE8CC()
{
  type metadata accessor for ConditionsContentView(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  if (!sub_100024D10(v4, 1, v5))
  {

    v6 = *(v5 + 36);
    type metadata accessor for UnitConfiguration.Distance();
    sub_1000037E8();
    (*(v7 + 8))(v4 + v6);
  }

  v8 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v9 = v4 + v8[5];
  v10 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  if (!sub_100005BB8(v10))
  {

    v2 = *(v2 + 36);
    type metadata accessor for UnitConfiguration.Precipitation();
    sub_1000037E8();
    (*(v11 + 8))(v9 + v2);
  }

  v12 = v4 + v8[6];
  v13 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  if (!sub_100005BB8(v13))
  {

    v2 = *(v2 + 36);
    type metadata accessor for UnitConfiguration.Pressure();
    sub_1000037E8();
    (*(v14 + 8))(v12 + v2);
  }

  v15 = v4 + v8[7];
  v16 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  if (!sub_100005BB8(v16))
  {

    v17 = *(sub_10022C350(&qword_100CB6170, &unk_100A7B4C0) + 36);
    v18 = type metadata accessor for UnitConfiguration.Temperature();
    if (!sub_100024D10(v15 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v15 + v17, v18);
    }

    v19 = *(v2 + 20);
    if (!sub_100024D10(v15 + v19, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v15 + v19, v18);
    }
  }

  v20 = v4 + v8[8];
  v21 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  if (!sub_100024D10(v20, 1, v21))
  {

    v22 = *(v21 + 36);
    type metadata accessor for UnitConfiguration.WindSpeed();
    sub_1000037E8();
    (*(v23 + 8))(v20 + v22);
  }

  sub_100006F14((v4 + v0[5]));
  sub_10001673C(v0[6]);

  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  sub_10001673C(v0[9]);

  sub_10001673C(v0[10]);

  sub_10001673C(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1003FED10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for ConditionsContentView(0);
  sub_100003810(v6);
  sub_100008550();
  return sub_1003F8D8C(a1, v7, a2, a3);
}

uint64_t sub_1003FED98()
{
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(sub_10022C350(&qword_100CB6170, &unk_100A7B4C0) + 36);
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100017854(v3 + v4))
  {
    sub_100003D20();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v0 + 20);
  if (!sub_100017854(v3 + v7))
  {
    sub_100003D20();
    (*(v8 + 8))(v3 + v7, v5);
  }

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1003FEEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100003810(v4);
  v5 = sub_1000D3E9C();

  return a3(v5, a2);
}

uint64_t sub_1003FEF50(uint64_t a1)
{
  v2 = type metadata accessor for ConditionsContentView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_1003F8A34(a1, v3);
}

void sub_1003FEFB4(uint64_t a1)
{
  type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_10013C99C(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Array();
        if (v4 <= 0x3F)
        {
          sub_10013DB50();
          if (v5 <= 0x3F)
          {
            sub_10010F330(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
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

uint64_t sub_1003FF104(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 24);
  v29 = *(a3 + 16);
  v4 = *(v29 - 8);
  v30 = *(v4 + 84);
  if (v30 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for DynamicTypeSize() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v4 + 80);
  v12 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = ((v11 + 16) & ~v11) + *(v4 + 64);
  v14 = v12 + 16;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = v10 + ((v15 + ((((((*(v6 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_13;
  }

  v20 = ((a2 - v8 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_29;
      }

LABEL_13:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_29;
      }

LABEL_21:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v8 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_21;
    }
  }

LABEL_29:
  if (v5 >= v7)
  {
    v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v30;
    if ((v30 & 0x80000000) == 0)
    {
      v23 = *v24;
      goto LABEL_34;
    }

    v26 = (v24 + v11 + 8) & ~v11;
    v27 = v29;
  }

  else
  {
    v22 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v8 & 0x80000000) == 0)
    {
      v23 = *(v22 + 8);
LABEL_34:
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    v26 = (v14 + v22) & ~v12;
    v25 = v7;
    v27 = v28;
  }

  return sub_100024D10(v26, v25, v27);
}

void sub_1003FF43C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v39 = *(a4 + 24);
  v5 = *(v38 - 8);
  v40 = *(v5 + 84);
  if (v40 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v5 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = v14 + 16;
  v16 = *(v10 + 80) & 0xF8 | 7;
  v17 = v11 + ((v16 + ((((((*(v7 + 64) + ((v14 + 16 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + 1;
  v18 = 8 * v17;
  v19 = a3 - v9;
  if (a3 <= v9)
  {
    v21 = 0;
    v20 = a1;
  }

  else
  {
    v20 = a1;
    if (v17 <= 3)
    {
      v25 = ((v19 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (v9 < a2)
  {
    v22 = ~v9 + a2;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v17)
      {
        v27 = v22 & ~(-1 << v18);
        bzero(v20, v17);
        if (v17 == 3)
        {
          *v20 = v27;
          v20[2] = BYTE2(v27);
        }

        else if (v17 == 2)
        {
          *v20 = v27;
        }

        else
        {
          *v20 = v22;
        }
      }
    }

    else
    {
      bzero(v20, v17);
      *v20 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v20[v17] = v23;
        break;
      case 2:
        *&v20[v17] = v23;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *&v20[v17] = v23;
        break;
      default:
        return;
    }

    return;
  }

  v24 = ~v14;
  switch(v21)
  {
    case 1:
      v20[v17] = 0;
      if (a2)
      {
        goto LABEL_33;
      }

      return;
    case 2:
      *&v20[v17] = 0;
      if (a2)
      {
        goto LABEL_33;
      }

      return;
    case 3:
LABEL_71:
      __break(1u);
      return;
    case 4:
      *&v20[v17] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v6 < v8)
      {
        v28 = (&v20[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v28 = a2 & 0x7FFFFFFF;
            v28[1] = 0;
          }

          else
          {
            v28[1] = a2 - 1;
          }

          return;
        }

        v35 = (v28 + v15) & v24;
        v36 = a2;
        v33 = v8;
        v37 = v39;
LABEL_62:

        sub_10001B350(v35, v36, v33, v37);
        return;
      }

      if (v6 >= a2)
      {
        v32 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        v33 = v40;
        if ((v40 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v34 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v34 = a2 - 1;
          }

          *v32 = v34;
          return;
        }

        v35 = (v32 + v12 + 8) & ~v12;
        v36 = a2;
        v37 = v38;
        goto LABEL_62;
      }

      if (v13 <= 3)
      {
        v29 = ~(-1 << (8 * v13));
      }

      else
      {
        v29 = -1;
      }

      if (v13)
      {
        v30 = v29 & (~v6 + a2);
        if (v13 <= 3)
        {
          v31 = v13;
        }

        else
        {
          v31 = 4;
        }

        bzero(v20, v13);
        switch(v31)
        {
          case 2:
            *v20 = v30;
            break;
          case 3:
            *v20 = v30;
            v20[2] = BYTE2(v30);
            break;
          case 4:
            *v20 = v30;
            break;
          default:
            *v20 = v30;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1003FF8A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1003FF8E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003FF988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1003FE134();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1003FFA40(uint64_t a1)
{
  sub_1003FFB64(319);
  if (v1 <= 0x3F)
  {
    sub_1003FE134();
    if (v2 <= 0x3F)
    {
      sub_10010F330(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10010F330(319, &unk_100CB65E0, type metadata accessor for UnitsConfigurationViewModel.Temperature, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003FFB64(uint64_t a1)
{
  if (!qword_100CB65C8)
  {
    v2 = type metadata accessor for UnitsConfigurationViewModel.Temperature(255);
    v3 = sub_1003FD490(&qword_100CB65D0, type metadata accessor for UnitsConfigurationViewModel.Temperature, aS_5);
    v5 = type metadata accessor for UnitsConfigurationViewModel.Configuration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CB65C8);
    }
  }
}

unint64_t sub_1003FFBF8()
{
  result = qword_100CB6620;
  if (!qword_100CB6620)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB6628, &qword_100A49EE0);
    v4[0] = sub_10023FBF4(&qword_100CB6630, &unk_100CB6638, &unk_100A49EE8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_100CB6620);
  }

  return result;
}

unint64_t sub_1003FFD40()
{
  result = qword_100CB6658;
  if (!qword_100CB6658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
    v4[0] = sub_1003FFDCC();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6658);
  }

  return result;
}

unint64_t sub_1003FFDCC()
{
  result = qword_100CB6660;
  if (!qword_100CB6660)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CB6668, &qword_100A4A048);
    v4[2] = sub_10022E824(&qword_100CB6670, &qword_100A4A050);
    v4[3] = sub_1003FFEC4();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6660);
  }

  return result;
}

unint64_t sub_1003FFEC4()
{
  result = qword_100CB6678;
  if (!qword_100CB6678)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6670, &qword_100A4A050);
    v4[0] = sub_10023FBF4(&qword_100CB6680, &unk_100CB6688, &unk_100A4A058, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6678);
  }

  return result;
}

unint64_t sub_1003FFFA8()
{
  result = qword_100CB6690;
  if (!qword_100CB6690)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
    v4[0] = sub_10023FBF4(&qword_100CB6698, &qword_100CB66A0, &qword_100A4A060, &protocol conformance descriptor for Toggle<A>);
    v4[1] = sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6690);
  }

  return result;
}

unint64_t sub_1004000AC()
{
  result = qword_100CB66B8;
  if (!qword_100CB66B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB66B0, &qword_100A4A068);
    v4[0] = sub_100400164();
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB66B8);
  }

  return result;
}

unint64_t sub_100400164()
{
  result = qword_100CB66C0;
  if (!qword_100CB66C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB66C8, &qword_100A4A070);
    v4[0] = sub_10040021C();
    v4[1] = sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB66C0);
  }

  return result;
}

unint64_t sub_10040021C()
{
  result = qword_100CB66D0;
  if (!qword_100CB66D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB66D8, &qword_100A8C770);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB66D0);
  }

  return result;
}

uint64_t sub_100400308()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v11[0] = v0[2];
  v11[1] = v1;
  v11[2] = v2;
  v11[3] = v3;
  v4 = type metadata accessor for PickerSection(0, v11);
  sub_100003810(v4);
  sub_1000419E4();

  return sub_1003FBBD0(v5, v6, v7, v8, v2, v3, v9);
}

uint64_t sub_1004003BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  sub_100007FD0();
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = type metadata accessor for PickerSection(0, v10);
  sub_100003810(v7);
  v8 = v1[2];

  return sub_1003FCA48(v8, v3, a1);
}

void sub_1004004BC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v13[0] = v1[4];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v7 = type metadata accessor for PickerSection(0, v13);
  sub_100003AE8(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  sub_1003FCB50(a1, v1[2], v1[3], v1 + v12, v1 + ((v12 + *(v11 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)), v3);
}

uint64_t sub_100400600(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = a4();
    v10[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100400688()
{
  result = qword_100CB6700;
  if (!qword_100CB6700)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB66F0, &qword_100A4A130);
    v4[0] = sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_10023FBF4(&qword_100CA6F10, &unk_100CA6F18, &unk_100A31E90, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6700);
  }

  return result;
}

unint64_t sub_10040076C()
{
  result = qword_100CB6708;
  if (!qword_100CB6708)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB66F8, &qword_100A4A138);
    v4[0] = sub_100400600(&qword_100CB6710, &qword_100CB6718, &qword_100A6E460, sub_100400850);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6708);
  }

  return result;
}

unint64_t sub_100400850()
{
  result = qword_100CB6720;
  if (!qword_100CB6720)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6728, &unk_100A4A140);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_10023FBF4(&qword_100CB6730, &unk_100CB6738, &unk_100AA58E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6720);
  }

  return result;
}

unint64_t sub_100400938()
{
  result = qword_100CB6758;
  if (!qword_100CB6758)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB6748, &qword_100A4A180);
    v4[0] = sub_1004009BC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_100CB6758);
  }

  return result;
}

unint64_t sub_1004009BC()
{
  result = qword_100CB6760;
  if (!qword_100CB6760)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CB6768, &qword_100A4A190);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100400A54();
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB6760);
  }

  return result;
}

unint64_t sub_100400A54()
{
  result = qword_100CB6770;
  if (!qword_100CB6770)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB6778, &qword_100A4A198);
    v4[0] = sub_100400AD8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB6770);
  }

  return result;
}

unint64_t sub_100400AD8()
{
  result = qword_100CB6780;
  if (!qword_100CB6780)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CB6788, &qword_100A4A1A0);
    v4[2] = sub_10022E824(&qword_100CB6790, &qword_100A4A1A8);
    v4[3] = sub_10023FBF4(&qword_100CB6798, &qword_100CB6790, &qword_100A4A1A8, &protocol conformance descriptor for Button<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6780);
  }

  return result;
}

uint64_t sub_100400C04()
{
  sub_10000C778();
  type metadata accessor for TemperatureView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v0[5];

  v5 = *(sub_10022C350(&qword_100CB6170, &unk_100A7B4C0) + 36);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100017854(v4 + v5))
  {
    sub_100003D20();
    (*(v7 + 8))(v4 + v5, v6);
  }

  sub_100006F14((v3 + v0[6]));
  v8 = v0[7];
  if (!sub_100017854(v3 + v8))
  {
    sub_100003D20();
    (*(v9 + 8))(v3 + v8, v6);
  }

  v10 = v3 + v0[8];
  if (!sub_100017854(v10))
  {
    sub_100003D20();
    (*(v11 + 8))(v10, v6);
  }

  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);

  sub_100030448();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100400DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemperatureView(0);
  sub_100003810(v4);
  v5 = sub_1000D3E9C();

  return a3(v5, a2);
}

uint64_t sub_100400E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemperatureView(0);
  sub_100003810(v4);
  sub_100008550();

  return sub_1003F55C8(a1, v5, a2);
}

uint64_t sub_100400EC0()
{
  v1 = type metadata accessor for TemperatureView(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  sub_100003810(v6);
  v8 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1003F5EE8(v0 + v3, v8);
}

unint64_t sub_100400F8C()
{
  result = qword_100CB67F8;
  if (!qword_100CB67F8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CB6800, &qword_100A4A220);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_100400688();
    v4[2] = sub_10040076C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB67F8);
  }

  return result;
}

unint64_t sub_100401024()
{
  result = qword_100CB6808;
  if (!qword_100CB6808)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CB6810, &qword_100A4A228);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_1003FD490(&qword_100CB6740, type metadata accessor for ConditionsContentView, a1_15);
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB6808);
  }

  return result;
}

uint64_t sub_100401144(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1004011BC(uint64_t a1)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for LollipopMarkModel(0);
  sub_100014558(*(v1 + 20));
  if (!v3)
  {
    return 0;
  }

  sub_100014558(*(v2 + 24));
  if (!v3)
  {
    return 0;
  }

  sub_100014558(*(v4 + 28));
  return v3 != 0;
}

uint64_t sub_100401268(uint64_t a1)
{
  result = type metadata accessor for LollipopMarkModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100401300@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v135 = sub_10022C350(&qword_100CB6948, &unk_100A4A2E0);
  sub_1000037C4();
  v134 = v2;
  __chkstk_darwin(v3);
  sub_100003848();
  v132 = v4;
  __chkstk_darwin(v5);
  sub_100003990(&v104 - v6);
  v128 = type metadata accessor for BlendMode();
  sub_1000037C4();
  v127 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v148 = type metadata accessor for BasicChartSymbolShape();
  sub_1000037C4();
  v152 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100003990(v14 - v13);
  sub_10022C350(&qword_100CB6950, &unk_100A50770);
  sub_100003828();
  __chkstk_darwin(v15);
  v141 = &v104 - v16;
  v147 = type metadata accessor for PointMark();
  sub_1000037C4();
  v151 = v17;
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100003990(v20 - v19);
  v125 = sub_10022C350(&qword_100CB6958, &unk_100A4A2F0);
  sub_1000037C4();
  v150 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_100003990(&v104 - v23);
  v145 = sub_10022C350(&qword_100CB6960, &unk_100A6E7C0);
  sub_1000037C4();
  v123 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  sub_100003990(&v104 - v26);
  v130 = sub_10022C350(&qword_100CB6968, &unk_100A4A300);
  sub_1000037C4();
  v129 = v27;
  __chkstk_darwin(v28);
  sub_100003848();
  v146 = v29;
  __chkstk_darwin(v30);
  v144 = &v104 - v31;
  v119 = type metadata accessor for LollipopMarkModel(0);
  __chkstk_darwin(v119);
  sub_1000037D8();
  v34 = v33 - v32;
  sub_10022C350(&qword_100CB6970, &qword_100A70970);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &v104 - v36;
  v38 = type metadata accessor for RectangleMark();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  v143 = sub_10022C350(&qword_100CB6978, &qword_100A4A310);
  sub_1000037C4();
  v121 = v45;
  __chkstk_darwin(v46);
  sub_100003848();
  v142 = v47;
  __chkstk_darwin(v48);
  v149 = &v104 - v49;
  v118 = type metadata accessor for LollipopMark(0);
  v50 = v1 + *(v118 + 20);
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v120 = v1;
  sub_1004020B4(v1, v34);
  v55 = type metadata accessor for Date();
  v138 = v51;
  v139 = v52;
  v136 = v53;
  static PlottableValue.value(_:_:)();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v58 = v34;
  v59 = v34;
  v137 = v56 + 8;
  v60 = v57;
  v57(v59, v55);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  v105 = v55;
  RectangleMark.init<A>(x:yStart:yEnd:width:)();
  v153 = static Color.white.getter();
  ChartContent.foregroundStyle<A>(_:)();

  (*(v40 + 8))(v44, v38);
  v61 = v120;
  v114 = v58;
  sub_1004020B4(v120, v58);
  v109 = v37;
  sub_100005BD8();
  v108 = v54;
  static PlottableValue.value(_:_:)();
  v112 = v60;
  v60(v58, v55);
  v62 = v61 + *(v118 + 24);
  v63 = *(v62 + 8);
  v118 = *v62;
  v117 = v63;
  v116 = *(v62 + 16);
  v115 = *(v62 + 24);
  v153 = *(v61 + *(v119 + 20));
  v64 = v153;
  static PlottableValue.value(_:_:)();
  v65 = v140;
  PointMark.init<A, B>(x:y:)();
  v66 = v126;
  static ChartSymbolShape<>.circle.getter();
  v67 = sub_100402118();
  sub_100028408();
  v68 = v147;
  v69 = v148;
  v111 = v67;
  v70 = v65;
  ChartContent.symbol<A>(_:)();
  v71 = *(v152 + 8);
  v152 += 8;
  v119 = v71;
  v71(v66, v69);
  v72 = v61;
  v73 = *(v151 + 8);
  v151 += 8;
  v113 = v73;
  v73(v70, v68);
  v153 = v68;
  v154 = v69;
  v155 = &protocol witness table for PointMark;
  v156 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v122;
  v76 = v125;
  v106 = OpaqueTypeConformance2;
  ChartContent.symbolSize(_:)();
  v77 = *(v150 + 8);
  v150 += 8;
  v110 = v77;
  v77(v38, v76);
  v78 = v127;
  v79 = v124;
  v80 = v128;
  (*(v127 + 104))(v124, enum case for BlendMode.destinationOut(_:), v128);
  v153 = v76;
  v154 = OpaqueTypeConformance2;
  v107 = swift_getOpaqueTypeConformance2();
  v81 = v145;
  ChartContent.blendMode(_:)();
  (*(v78 + 8))(v79, v80);
  v128 = *(v123 + 8);
  v128(v75, v81);
  v82 = v114;
  sub_1004020B4(v72, v114);
  sub_100005BD8();
  v83 = v105;
  static PlottableValue.value(_:_:)();
  v112(v82, v83);
  v153 = v64;
  v84 = v141;
  static PlottableValue.value(_:_:)();
  v85 = v140;
  PointMark.init<A, B>(x:y:)();
  static ChartSymbolShape<>.circle.getter();
  sub_100028408();
  v86 = v147;
  v87 = v148;
  ChartContent.symbol<A>(_:)();
  (v119)(v66, v87);
  v113(v85, v86);
  ChartContent.symbolSize(_:)();
  v110(v84, v76);
  v153 = static Color.white.getter();
  v88 = v131;
  v89 = v145;
  ChartContent.foregroundStyle<A>(_:)();

  v128(v75, v89);
  v90 = v121;
  v91 = v142;
  (*(v121 + 16))(v142, v149, v143);
  v153 = v91;
  v92 = v129;
  v93 = v146;
  v94 = v144;
  v95 = v130;
  (*(v129 + 16))(v146, v144, v130);
  v154 = v93;
  v96 = v134;
  v97 = v132;
  v98 = v135;
  (*(v134 + 16))(v132, v88, v135);
  v155 = v97;
  sub_100639E14(&v153, v133);
  v99 = *(v96 + 8);
  v99(v88, v98);
  v100 = *(v92 + 8);
  v100(v94, v95);
  v101 = *(v90 + 8);
  v102 = v143;
  v101(v149, v143);
  v99(v97, v98);
  v100(v146, v95);
  return (v101)(v142, v102);
}

uint64_t sub_1004020B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LollipopMarkModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100402118()
{
  result = qword_100CB6980;
  if (!qword_100CB6980)
  {
    v3 = type metadata accessor for BasicChartSymbolShape();
    result = swift_getWitnessTable(&protocol conformance descriptor for BasicChartSymbolShape, v3, v0, v1);
    atomic_store(result, &qword_100CB6980);
  }

  return result;
}

unint64_t sub_100402170()
{
  result = qword_100CB6988;
  if (!qword_100CB6988)
  {
    v7[11] = v0;
    v7[12] = v1;
    v3 = sub_10022E824(&unk_100CB6990, &qword_100A4A318);
    type metadata accessor for RectangleMark();
    v7[0] = swift_getOpaqueTypeConformance2();
    v4 = sub_10022E824(&qword_100CB6960, &unk_100A6E7C0);
    sub_10022E824(&qword_100CB6958, &unk_100A4A2F0);
    type metadata accessor for PointMark();
    type metadata accessor for BasicChartSymbolShape();
    sub_100402118();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7[1] = swift_getOpaqueTypeConformance2();
    v6[1] = v4;
    v6[2] = &type metadata for Color;
    v6[3] = OpaqueTypeConformance2;
    v6[4] = &protocol witness table for Color;
    v7[2] = swift_getOpaqueTypeConformance2();
    v6[0] = v7;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v6);
    atomic_store(result, &qword_100CB6988);
  }

  return result;
}

uint64_t LocalSearchCompleterManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*LocalSearchCompleterManager.delegate.modify(void *a1))()
{
  v3 = sub_10023FBC0(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_10040248C;
}

double LocalSearchCompleterManager.searchedResults.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t LocalSearchCompleterManager.searchedResults.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100402594()
{
  v1 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
  }

  else
  {
    v4 = [objc_allocWithZone(MKLocalSearchCompleter) init];
    [v4 w_applyLocalitiesAndLandmarksFilterType];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall LocalSearchCompleterManager.searchLocations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *(v1 + v4) = _swiftEmptyArrayStorage;

  v5 = sub_100402594();
  v6 = [v5 queryFragment];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == countAndFlagsBits && v9 == object)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v12 = *(v1 + OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter);
      v13 = String._bridgeToObjectiveC()();
      [v12 setQueryFragment:v13];

      return;
    }
  }

  _s7Weather27LocalSearchCompleterManagerC25completerDidUpdateResultsyySo07MKLocalcD0CF_0();
}

void _s7Weather27LocalSearchCompleterManagerC25completerDidUpdateResultsyySo07MKLocalcD0CF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SearchLocation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100402594();
  v8 = [v7 results];

  sub_10000A42C();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1001CB594(v9);
  if (v10)
  {
    v11 = v10;
    v25[0] = _swiftEmptyArrayStorage;
    sub_1006A7E1C();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v23 = ObjectType;
    v24 = v1;
    v12 = 0;
    v13 = v25[0];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      SearchLocation.init(searchCompletion:)(v14, v6);
      v25[0] = v13;
      v15 = v13[2];
      if (v15 >= v13[3] >> 1)
      {
        sub_1006A7E1C();
        v13 = v25[0];
      }

      ++v12;
      v13[2] = v15 + 1;
      sub_100403068(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
    }

    while (v11 != v12);

    ObjectType = v23;
    v1 = v24;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v16 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults;
  swift_beginAccess();
  *&v1[v16] = v13;

  v17 = &v1[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    v19 = swift_getObjectType();
    v25[3] = ObjectType;
    v25[4] = &protocol witness table for LocalSearchCompleterManager;
    v25[0] = v1;
    v20 = *(v18 + 8);
    v21 = v1;
    v20(v25, v13, v19, v18);

    swift_unknownObjectRelease();
    sub_100006F14(v25);
  }

  else
  {
  }
}

id LocalSearchCompleterManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_searchedResults] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager____lazy_storage___searchCompleter] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t (*sub_100402B60(void *a1))()
{
  v3 = sub_10023FBC0(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1004030CC;
}

void sub_100402BF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t LocalSearchCompleterManager.completer(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_100CA26D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90AF0);
  v6 = v2;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2085;
    v10 = sub_100402594();
    v11 = [v10 queryFragment];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100078694(v12, v14, v25);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    v25[5] = a2;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v16 = String.init<A>(describing:)();
    v18 = sub_100078694(v16, v17, v25);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received an error while requesting a local search completion. searchQuery=%{sensitive,mask.hash}s, error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v19 = &v6[OBJC_IVAR____TtC7Weather27LocalSearchCompleterManager_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 1);
    v22 = swift_getObjectType();
    v25[3] = ObjectType;
    v25[4] = &protocol witness table for LocalSearchCompleterManager;
    v25[0] = v6;
    v23 = *(v21 + 16);
    v24 = v6;
    v23(v25, a2, v22, v21);
    swift_unknownObjectRelease();
    return sub_100006F14(v25);
  }

  return result;
}

uint64_t sub_100403068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1004030D0()
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
  sub_100006F14(v0 + 97);
  return v0;
}

uint64_t sub_100403188()
{
  sub_1004030D0();

  return swift_deallocClassInstance();
}

uint64_t sub_100403220(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_10022C350(&qword_100CA3528, &unk_100A4A660);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Tips.Status();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v15 = sub_10001EBE0();
  sub_1000038B4(v15, v16, v11);
  if (v17)
  {
    sub_1000180EC(a1, &qword_100CA3528, &unk_100A4A660);
    v18 = sub_10023819C(a2);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v22 = *(v33 + 24);
      sub_10022C350(&qword_100CA3A78, &qword_100A2D910);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v23 = v33;
      (*(v13 + 32))(v10, *(v33 + 56) + *(v13 + 72) * v20, v11);
      sub_100235718();
      _NativeDictionary._delete(at:)();
      v24 = 0;
      *v4 = v23;
    }

    else
    {
      v24 = 1;
    }

    sub_10001B350(v10, v24, 1, v11);
    return sub_1000180EC(v10, &qword_100CA3528, &unk_100A4A660);
  }

  else
  {
    (*(v13 + 32))(v3, a1, v11);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100238A14(v3, a2, v25, v26, v27, v28, v29, v30, v32, *v4);
    *v4 = v33;
  }

  return result;
}

uint64_t sub_10040344C()
{
  sub_100003A00();
  v3 = sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10000E9F4();
  v5 = type metadata accessor for Elevation();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v9 = sub_10001EBE0();
  sub_1000038B4(v9, v10, v5);
  if (v11)
  {
    v12 = sub_1000114B8();
    sub_1000180EC(v12, v13, &qword_100A2FD30);
    sub_10000CA70();
    sub_100404AAC(v14);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v15 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    (*(v7 + 32))(v2, v1, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10023909C(v2, v0, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v24, *v1, v25, v26);
    sub_10002FED8();
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v22 + 8))(v0);
  }
}

void sub_100403600()
{
  sub_100022B34();
  v0 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_10002841C();
  type metadata accessor for LocationWeatherDataState(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_10001EBE0();
  sub_1000038B4(v4, v5, v6);
  if (v7)
  {
    v8 = sub_10000E78C();
    sub_1000180EC(v8, v9, &unk_100A2D740);
    v10 = sub_10004E570();
    sub_100404C5C(v10, v11, v12, v13, v14);

    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_1002391FC();

    sub_10002FED8();
  }
}

uint64_t sub_100403758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v11);
  if (sub_100024D10(a1, 1, v12) == 1)
  {
    sub_1000180EC(a1, &qword_100CA3898, &qword_100A314D0);
    sub_100404C5C(a2, a3, &qword_100CA39F0, &unk_100A4A620, type metadata accessor for WeatherData);

    return sub_1000180EC(v10, &qword_100CA3898, &qword_100A314D0);
  }

  else
  {
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    sub_10023950C();

    *v4 = v15;
  }

  return result;
}

void sub_100403930()
{
  sub_100022B34();
  v0 = sub_10022C350(&qword_100CB6C38, &unk_100A4A640);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_10002841C();
  type metadata accessor for ListLocationViewModel.CacheEntry(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v4 = sub_10001EBE0();
  sub_1000038B4(v4, v5, v6);
  if (v7)
  {
    v8 = sub_10000E78C();
    sub_1000180EC(v8, v9, &unk_100A4A640);
    v10 = sub_10004E570();
    sub_100404C5C(v10, v11, v12, v13, v14);

    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_10023981C();

    sub_10002FED8();
  }
}

uint64_t sub_100403A88()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB6C58, &unk_100A4A680);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10000E9F4();
  type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000038B4(v1, 1, v6);
  if (v7)
  {
    v8 = sub_1000114B8();
    sub_1000180EC(v8, v9, &unk_100A4A680);
    v10 = sub_10000CA70();
    sub_100404D68(v10, v11, v12, v13);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    sub_1000114B8();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100024698();
    sub_100239CD4();
    *v1 = v17;
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v15 + 8))(v0);
  }
}

uint64_t sub_100403C40()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB6C60, &unk_100A4A690);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10000E9F4();
  type metadata accessor for MonthSunAverage(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000038B4(v1, 1, v6);
  if (v7)
  {
    v8 = sub_1000114B8();
    sub_1000180EC(v8, v9, &unk_100A4A690);
    v10 = sub_10000CA70();
    sub_100404D68(v10, v11, v12, v13);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v14 + 8))(v0);
    return sub_100051E10();
  }

  else
  {
    sub_1000114B8();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100024698();
    sub_100239E38();
    *v1 = v17;
    type metadata accessor for Date();
    sub_1000037E8();
    return (*(v15 + 8))(v0);
  }
}

uint64_t sub_100403DF8(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for Location() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_100403EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  v75 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v73 = &v69[-v8];
  sub_10000386C();
  __chkstk_darwin(v9);
  v11 = &v69[-v10];
  v12 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v81 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v72 = &v69[-v16];
  v17 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100003848();
  v74 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v22 = &v69[-v21];
  v23 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = type metadata accessor for InteractiveMapInput(0);
  v29 = *(a1 + v28[5]);
  v83 = a1;
  v80 = v29;
  v79 = sub_100403DF8(&_swiftEmptyDictionarySingleton, sub_100404910, v82, v29);
  sub_1004049F8();
  v76 = v23;
  v30 = &v27[*(v23 + 28)];
  v32 = *v30;
  v31 = v30[1];
  v77 = *v30;
  v78 = v31;
  if (v31)
  {
    v33 = *(a1 + v28[8] + 16);
    swift_bridgeObjectRetain_n();
    sub_1000864C0(v32, v31, v33);

    sub_1000038B4(v11, 1, v12);
    if (v51)
    {
      sub_1000180EC(v11, &qword_100CA37B0, &unk_100A2D740);
    }

    else
    {
      sub_100107040();
      v34 = v81;
      sub_100107040();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v36 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
        v37 = *(v36 + 48);
        v38 = *(v36 + 64);
        sub_10000E78C();
        sub_100107040();
        sub_100404A54(v34 + v38, type metadata accessor for NewsDataModel);
        sub_100404A54(v34 + v37, type metadata accessor for PreprocessedWeatherData);
        v39 = 0;
        goto LABEL_9;
      }

      sub_10000413C();
    }
  }

  v39 = 1;
LABEL_9:
  v40 = type metadata accessor for WeatherData(0);
  v81 = v22;
  sub_10001B350(v22, v39, 1, v40);
  v70 = v27[1];
  v41 = *v27;
  v42 = v28[7];
  v43 = *(a1 + v28[8] + 16);
  v44 = *(a1 + v42);
  v45 = *(a1 + v42 + 8);
  v46 = v73;
  v71 = v27;
  v72 = v44;
  v47 = v45;
  sub_1000864C0(v44, v45, v43);
  v48 = v75;
  sub_10040492C();
  sub_1000038B4(v48, 1, v12);
  if (v51)
  {
    sub_1000180EC(v46, &qword_100CA37B0, &unk_100A2D740);
    sub_1000180EC(v48, &qword_100CA37B0, &unk_100A2D740);
    v50 = v74;
    sub_10001B350(v74, 1, 1, v40);
LABEL_14:
    LODWORD(v75) = *(a1 + v28[9]);
    goto LABEL_15;
  }

  v49 = v46;
  v50 = v74;
  sub_1001A0D3C();
  sub_1000180EC(v49, &qword_100CA37B0, &unk_100A2D740);
  sub_10000413C();
  sub_1000038B4(v50, 1, v40);
  if (v51)
  {
    goto LABEL_14;
  }

  LODWORD(v75) = 0;
LABEL_15:
  v52 = v41 == 4;
  v53 = (v70 & 0xC0) == 64;
  sub_1000180EC(v50, &qword_100CA3898, &qword_100A314D0);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v54 + 16))(a2, a1);
  v70 = *(a1 + v28[10]);
  v55 = *(a1 + v28[12]);
  v56 = (a1 + v28[13]);
  v57 = v56[1];
  v74 = *v56;
  LODWORD(v73) = *(a1 + v28[14]);
  v58 = type metadata accessor for InteractiveMapViewModel(0);
  v59 = v71;
  sub_1004049F8();

  v60 = v80;

  sub_100404A54(v59, type metadata accessor for WeatherMapPresentationState);
  sub_10040492C();
  *(a2 + v58[5]) = v60;
  v61 = (a2 + v58[6]);
  *v61 = v72;
  v61[1] = v47;
  *(a2 + v58[7]) = v79;
  *(a2 + v58[8]) = v75;
  *(a2 + v58[9]) = v70;
  v62 = (a2 + v58[10]);
  v63 = v78;
  *v62 = v77;
  v62[1] = v63;
  *(a2 + v58[11]) = v53;
  *(a2 + v58[12]) = v53;
  *(a2 + v58[13]) = v52;
  *(a2 + v58[14]) = v55;
  *(a2 + v58[15]) = v52;
  v64 = (a2 + v58[16]);
  *v64 = v74;
  v64[1] = v57;
  *(a2 + v58[17]) = v73;
  sub_100404988(v81, a2 + v58[18]);
  v65 = sub_10000FEF4();
  return sub_10001B350(v65, v66, v67, v58);
}

uint64_t sub_100404560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[1] = a1;
  v4 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v29[0] = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v29[0]);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = *(a3 + *(type metadata accessor for InteractiveMapInput(0) + 32) + 16);
  v19 = Location.id.getter();
  sub_1000864C0(v19, v20, v18);

  if (sub_100024D10(v11, 1, v12) == 1)
  {
    return sub_1000180EC(v11, &qword_100CA37B0, &unk_100A2D740);
  }

  sub_100107040();
  sub_1004049F8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    sub_100107040();
    sub_100404A54(&v14[v24], type metadata accessor for NewsDataModel);
    sub_100404A54(&v14[v23], type metadata accessor for PreprocessedWeatherData);
    v25 = Location.id.getter();
    v27 = v26;
    sub_1004049F8();
    sub_10001B350(v6, 0, 1, v29[0]);
    sub_100403758(v6, v25, v27);
    sub_100404A54(v8, type metadata accessor for WeatherData);
    v28 = v17;
  }

  else
  {
    sub_100404A54(v17, type metadata accessor for LocationWeatherDataState);
    v28 = v14;
  }

  return sub_100404A54(v28, type metadata accessor for LocationWeatherDataState);
}

uint64_t sub_10040492C()
{
  sub_100003A00();
  sub_10022C350(v2, v3);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100404988(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004049F8()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100404A54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100404AAC@<X0>(uint64_t a1@<X8>)
{
  sub_100237FB4();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v1;
    v7 = *(*v1 + 24);
    sub_10022C350(&qword_100CA3AD8, &unk_100A2DA60);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    v8 = *(v16 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(v16 + 56);
    v11 = type metadata accessor for Elevation();
    (*(*(v11 - 8) + 32))(a1, v10 + *(*(v11 - 8) + 72) * v5, v11);
    sub_10005E424(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    _NativeDictionary._delete(at:)();
    *v1 = v16;
    v12 = a1;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for Elevation();
    v12 = a1;
    v13 = 1;
  }

  return sub_10001B350(v12, v13, 1, v14);
}

uint64_t sub_100404C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_100020714();
  sub_100031B34();
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_10002C6D4();
    sub_10003A1C0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);

    v16 = a5(0);
    sub_1000037E8();
    sub_100107040();
    _NativeDictionary._delete(at:)();
    *v5 = v24;
    v17 = sub_10000FEF4();
    v20 = v16;
  }

  else
  {
    a5(0);
    v17 = sub_100007E1C();
  }

  return sub_10001B350(v17, v18, v19, v20);
}

uint64_t sub_100404D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100020714();
  sub_100237FB4();
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_10002C6D4();
    sub_10003A1C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27);
    v17 = *(v28 + 48);
    v18 = type metadata accessor for Date();
    sub_1000037E8();
    (*(v19 + 8))(v17 + *(v19 + 72) * v8, v18);
    v20 = a4(0);
    sub_1000037E8();
    sub_100107040();
    sub_10005E424(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    _NativeDictionary._delete(at:)();
    *v4 = v28;
    v21 = sub_10000FEF4();
    v24 = v20;
  }

  else
  {
    a4(0);
    v21 = sub_100007E1C();
  }

  return sub_10001B350(v21, v22, v23, v24);
}

uint64_t sub_100404ECC()
{
  v2 = v0;
  sub_100238398();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100025198();
  sub_100008574();
  v4 = sub_10022C350(&qword_100CA3AA8, &qword_100A2DA40);
  sub_1000145E4(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
  v12 = *(v20 + 48);
  v13 = type metadata accessor for VFXEffectViewID();
  sub_1000037E8();
  (*(v14 + 8))(v12 + *(v14 + 72) * v1, v13);
  v15 = *(*(v20 + 56) + 8 * v1);
  sub_10022C350(&qword_100CB6C50, &qword_100A4A678);
  v16 = sub_10005E424(&qword_100CA3AB0, &type metadata accessor for VFXEffectViewID, &protocol conformance descriptor for VFXEffectViewID);
  sub_10001842C(v16);
  *v2 = v20;
  return v15;
}

void *sub_100404FD8()
{
  sub_10022C350(&qword_100CB6D48, &qword_100A4A7B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  v2 = v0[2];
  if (v2)
  {
    v3 = type metadata accessor for LocationNetworkActivityFlow(0);
    sub_10001EC00();
    v6 = sub_100405574(v4, v5, byte_100A929E0);
    v7 = v2;
  }

  else
  {
    v7 = 0;
    v3 = 0;
    v6 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v7;
  *(inited + 56) = v3;
  *(inited + 64) = v6;
  v8 = v0[3];
  if (v8)
  {
    v9 = type metadata accessor for LocationNetworkActivityFlow(0);
    sub_10001EC00();
    v12 = sub_100405574(v10, v11, byte_100A929E0);
    v13 = v8;
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v12 = 0;
    *(inited + 80) = 0;
    *(inited + 88) = 0;
  }

  *(inited + 72) = v13;
  *(inited + 96) = v9;
  *(inited + 104) = v12;
  v14 = v0[4];
  if (v14)
  {
    v15 = type metadata accessor for InteractiveMapNetworkActivityFlow(0);
    v16 = sub_100405574(&qword_100CB6D58, type metadata accessor for InteractiveMapNetworkActivityFlow, aY_57);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    *(inited + 120) = 0;
    *(inited + 128) = 0;
  }

  *(inited + 112) = v14;
  *(inited + 136) = v15;
  *(inited + 144) = v16;

  v17 = _swiftEmptyArrayStorage;
  for (i = 32; i != 152; i += 40)
  {
    sub_100060DE0(inited + i, &v26, &qword_100CB6D50, &qword_100A4A7C0);
    v23[0] = v26;
    v23[1] = v27;
    v24 = v28;
    if (*(&v27 + 1))
    {
      sub_100013188(v23, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069F56C();
        v17 = v20;
      }

      v19 = v17[2];
      if (v19 >= v17[3] >> 1)
      {
        sub_10069F56C();
        v17 = v21;
      }

      v17[2] = v19 + 1;
      sub_100013188(v25, &v17[5 * v19 + 4]);
    }

    else
    {
      sub_10003FDF4(v23, &qword_100CB6D50, &qword_100A4A7C0);
    }
  }

  swift_setDeallocating();
  sub_1005C1F40();
  return v17;
}

void sub_100405270()
{
  if (*(v0 + 24))
  {
    sub_10005A708();
  }
}

uint64_t sub_1004052A0(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24))
  {
    return sub_100194DDC(result, a2, 1);
  }

  return result;
}

uint64_t sub_1004052CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return (*(v6 + 16))(a2, a3, v5, v6);
}

uint64_t sub_100405340()
{

  return v0;
}

uint64_t sub_100405370()
{
  sub_100405340();

  return swift_deallocClassInstance();
}

uint64_t sub_1004053A4(uint64_t a1, uint64_t a2)
{
  sub_100404FD8();
  sub_10022C350(&qword_100CB6D38, &qword_100A4A7B0);
  type metadata accessor for WeatherNetworkActivity();
  sub_100067638(&qword_100CB6D40, &qword_100CB6D38, &qword_100A4A7B0);
  Sequence.first<A>(map:)();
}

uint64_t sub_100405468(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return a3(a2, v5, *(v6 + 8));
}

uint64_t sub_100405574(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_1004055EC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2040 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2050 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2048 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2038 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2030 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void sub_100405758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC50;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3AEB0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A2C3F0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
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
  v12[1] = xmmword_100A3BBB0;
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
  qword_100D8FD00 = v8;
}

void sub_100405870()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
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
  v5[1] = xmmword_100A3BBB0;
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
  qword_100D8FD08 = v0;
}

void sub_100405980()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A3BBD0;
  v34[0] = xmmword_100A3BC40;
  v34[1] = xmmword_100A3BB80;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3AEB0;
  v32[0] = xmmword_100A3BBD0;
  v32[1] = xmmword_100A3BC50;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A2C3F0;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BB80;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A2D320;
  v29[1] = xmmword_100A3BB70;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC50;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BBD0;
  v27[1] = xmmword_100A3BB80;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC50;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 4;
  v24 = xmmword_100A3BC60;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 3);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D8FD10 = v12;
}

void sub_100405A84()
{
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v17 = v16;
  v18 = v15;
  v13 = 1;
  v14 = 4;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC60;
  v12 = xmmword_100A3BB70;
  v19 = &v12;
  v20 = v11;
  v10[0] = xmmword_100A2D320;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC50;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC60;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100552E50();
  qword_100D8FD18 = v0;
}

void sub_100405B90()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A2C3F0;
  v34[0] = xmmword_100A3BC50;
  v34[1] = xmmword_100A3BC60;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3F970;
  v32[0] = xmmword_100A3BC60;
  v32[1] = xmmword_100A3BC40;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A41B90;
  v31[1] = xmmword_100A3BBB0;
  v30[0] = xmmword_100A3BBD0;
  v30[1] = xmmword_100A3BC60;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A3BC90;
  v29[1] = xmmword_100A3BD20;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC60;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D8FD20 = v12;
}

uint64_t sub_100405CA4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  v35 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v34 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for LocationViewComponent(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v32 - v24;

  sub_1005D71C4(v26, a2);
  v33 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v6);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_airQuality, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather27LocationSevereConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008, &unk_100A2F7B0);
  v28 = v34;
  sub_10031694C(v14, v34, type metadata accessor for LocationComponentContainerViewModel);
  v29 = v35;
  sub_10031694C(v3, v35, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereContent._Storage(0);
  swift_allocObject();
  v30 = sub_1002D9388(v33, v22, v28, v29);
  sub_1003169AC(v3, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
  return v30;
}

uint64_t sub_100405FE0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v125 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v129 = a1;
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
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v126 = v13 + 2 * v14;
    v127 = v14;
    v30 = v14;
    v31 = v15;
    v32 = swift_allocObject();
    v33 = sub_10001361C(v32, xmmword_100A2D320) + v13;
    v34 = a1;
    v35 = *(a1 + 16);
    v36 = v34;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v35 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v33[v30], v7);
    *(v12 + 128) = sub_1001B38A0(v32);
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;
    v128 = v31;
    v39 = swift_allocObject();
    sub_1000056EC(v39);
    v41 = v40 + v13;
    v42 = *(v36 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v42 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v127[v41], v7);
    *(v12 + 152) = sub_1001B38A0(v32);
    *(v12 + 160) = v43;
    *(v12 + 168) = v44;
    v45 = swift_allocObject();
    sub_1000056EC(v45);
    v47 = v46 + v13;
    v48 = v129;
    v49 = *(v129 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v50 = v127;
    sub_10031694C(v49 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v127[v47], v7);
    *(v12 + 176) = sub_1001B38A0(v32);
    *(v12 + 184) = v51;
    *(v12 + 192) = v52;
    v53 = sub_10000C998();
    sub_1000056EC(v53);
    v55 = v54 + v13;
    v56 = *(v48 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v57 = v55 + v50;
    v58 = v50;
    sub_10031694C(v56 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v57, v7);
    *(v12 + 200) = sub_1001B38A0(v32);
    *(v12 + 208) = v59;
    *(v12 + 216) = v60;
    v61 = sub_10000C998();
    sub_100003E18(v61);
    v63 = v62 + v13;
    v64 = *(v48 + 16);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v62 + v13, v7);
    sub_10031694C(v64 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v63 + v58, v7);
    *(v12 + 224) = sub_1001B38A0(v61);
    *(v12 + 232) = v65;
    *(v12 + 240) = v66;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v67 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v68 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v69 = *(v7 + 72);
    v70 = *(v7 + 80);
    v71 = v67;
    v72 = swift_allocObject();
    sub_10001361C(v72, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v73, v72 + v68, v74);
    *(v12 + 32) = sub_1001B38A0(v72);
    *(v12 + 40) = v75;
    *(v12 + 48) = v76;
    sub_1000167B0();
    v77 = swift_allocObject();
    sub_1000056EC(v77);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v72 + v68, v7);
    *(v12 + 56) = sub_1001B38A0(v72);
    *(v12 + 64) = v78;
    *(v12 + 72) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v72 + v68, v7);
    *(v12 + 80) = sub_1001B38A0(v72);
    *(v12 + 88) = v81;
    *(v12 + 96) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v72 + v68, v7);
    *(v12 + 104) = sub_1001B38A0(v72);
    *(v12 + 112) = v84;
    *(v12 + 120) = v85;
    v128 = v70;
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10031694C(v9, v87 + v68, v7);
    *(v12 + 128) = sub_1001B38A0(v72);
    *(v12 + 136) = v88;
    *(v12 + 144) = v89;
    v90 = v68 + 2 * v69;
    v91 = v69;
    sub_1000167B0();
    v92 = swift_allocObject();
    v93 = sub_10001361C(v92, xmmword_100A2D320);
    v127 = v9;
    v94 = v93 + v68;
    v95 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v125[0] = v91;
    sub_10031694C(v95 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v94[v91], v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v96;
    *(v12 + 168) = v97;
    v125[1] = v90;
    v98 = swift_allocObject();
    sub_100003E18(v98);
    v100 = v99 + v68;
    v101 = v129;
    v102 = *(v129 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v100 + v91, v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v103;
    *(v12 + 192) = v104;
    sub_1000167B0();
    v126 = v71;
    v105 = swift_allocObject();
    sub_100003E18(v105);
    v107 = v106 + v68;
    v108 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v109 = v125[0];
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v107 + v125[0], v7);
    *(v12 + 200) = sub_1001B38A0(v105);
    *(v12 + 208) = v110;
    *(v12 + 216) = v111;
    sub_1000167B0();
    v112 = swift_allocObject();
    sub_100003E18(v112);
    v114 = v113 + v68;
    v115 = *(v101 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v115 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v114 + v109, v7);
    *(v12 + 224) = sub_1001B38A0(v112);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v68;
    v121 = *(v129 + 16);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v119 + v68, v7);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v120 + v109, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    sub_1003169AC(v127, v7);
  }

  return v12;
}

void *sub_100406884(char a1, char a2, uint64_t a3)
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
  sub_1004055EC(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_map;
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
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

void (*sub_100406F18(uint64_t a1))(uint64_t)
{
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  v89 = v4;
  v90 = v3;
  __chkstk_darwin(v3);
  v6 = &v87 - v5;
  v7 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v7 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v87 - v11;
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  __chkstk_darwin(v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PastDataComparisonTextContext(0);
  v26 = v25[9];
  v91 = v24;
  v92 = v21;
  (*(v21 + 16))(v24, a1 + v26, v19);
  sub_1004075F8(a1 + v25[13], v18);
  v27 = type metadata accessor for ExtremaResult();
  sub_1000083BC(v18);
  if (v28)
  {
LABEL_5:
    sub_100407668(v18);
    sub_1004075F8(a1 + v25[12], v12);
    sub_1000083BC(v12);
    if (!v28)
    {
      v31 = v19;
      ExtremaResult.maxValue.getter();
      sub_100014604();
      v33 = *(v32 + 8);
      v33(v12, v27);
      sub_1004075F8(a1 + v25[10], v9);
      sub_1000083BC(v9);
      if (!v28)
      {
        ExtremaResult.maxValue.getter();
        v33(v9, v27);
        v44 = v91;
        v45 = ConditionUnits.windSpeed.getter();
        v62 = sub_10031AE5C();
        sub_100008588(v62, v63);
        v64 = v90;
        sub_100028430();
        v65 = sub_100005C30();
        v45(v65);
        v66 = round(v1);
        ConditionUnits.windSpeed.getter();
        Measurement.init(value:unit:)();
        sub_100028430();
        v68 = v67;
        (v45)(v6, v64);
        v69 = round(v68);
        if (v66 < v69)
        {
          LocalizedStringKey.init(stringLiteral:)();
          sub_10001C138();
          Text.init(_:tableName:bundle:comment:)(v70, v71, v72, v73, v74, v75, v76, v77, 131, 2);
          sub_10001C14C();
          v19 = v31;
          goto LABEL_26;
        }

        v19 = v31;
        if (v69 >= v66)
        {
          sub_100022B48();
          sub_100004164();
          v87 = 127;
        }

        else
        {
          sub_100022B48();
        }

        goto LABEL_24;
      }

      v12 = v9;
      v19 = v31;
    }

    sub_100407668(v12);
    v44 = v91;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000703C(v34, qword_100D90B68);
    v45 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v45, v35, "Missing extrema values for building wind comparison text", v36, 2u);
    }

    LocalizedStringKey.init(stringLiteral:)();
    sub_10001C138();
    Text.init(_:tableName:bundle:comment:)(v37, v38, v39, v40, v41, v42, v43, 0, v87);
    goto LABEL_25;
  }

  v88 = v19;
  ExtremaResult.maxValue.getter();
  sub_100014604();
  v30 = *(v29 + 8);
  v30(v18, v27);
  sub_1004075F8(a1 + v25[11], v15);
  sub_1000083BC(v15);
  if (v28)
  {
    v18 = v15;
    v19 = v88;
    goto LABEL_5;
  }

  ExtremaResult.maxValue.getter();
  v30(v15, v27);
  v44 = v91;
  v45 = ConditionUnits.windGust.getter();
  v46 = sub_10031AE5C();
  sub_100008588(v46, v47);
  v48 = v90;
  sub_100028430();
  v49 = sub_100005C30();
  v45(v49);
  v50 = round(v1);
  ConditionUnits.windGust.getter();
  Measurement.init(value:unit:)();
  sub_100028430();
  v52 = v51;
  (v45)(v6, v48);
  v53 = round(v52);
  if (v50 >= v53)
  {
    v19 = v88;
    if (v53 >= v50)
    {
      LocalizedStringKey.init(stringLiteral:)();
      sub_100004164();
      v87 = 125;
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      sub_100004164();
      v87 = 138;
    }

LABEL_24:
    sub_10001C138();
    Text.init(_:tableName:bundle:comment:)(v78, v79, v80, v81, v82, v83, v84, v85, v87);
LABEL_25:
    sub_10001C14C();
    goto LABEL_26;
  }

  LocalizedStringKey.init(stringLiteral:)();
  sub_100004164();
  v87 = 139;
  sub_10001C138();
  Text.init(_:tableName:bundle:comment:)(v54, v55, v56, v57, v58, v59, v60, v61);
  sub_10001C14C();
  v19 = v88;
LABEL_26:
  (*(v92 + 8))(v44, v19);
  return v45;
}

uint64_t sub_1004075F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100407668(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004076D0()
{
  v0 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  sub_100095588();
  sub_100095588();
  v6 = type metadata accessor for CurrentLocation();
  v7 = sub_100024D10(v2, 1, v6);

  if (v7 == 1)
  {
    sub_1000180EC(v2, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000CA630(v2, &type metadata accessor for CurrentLocation);
  }

  sub_100141E74();
  v9 = v8;

  sub_1000180EC(v5, &unk_100CE49F0, &unk_100A3AFA0);
  return v9 & 1;
}

unint64_t sub_1004078B4()
{
  result = qword_100CB6E00;
  if (!qword_100CB6E00)
  {
    v3 = type metadata accessor for NotificationsOptInReducer();
    result = swift_getWitnessTable(asc_100A4A88C, v3, v0, v1);
    atomic_store(result, &qword_100CB6E00);
  }

  return result;
}

Swift::Int sub_100407944(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ListSessionTrigger.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100407998()
{
  result = qword_100CB6E08;
  if (!qword_100CB6E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SizingBehavior, &type metadata for SizingBehavior, v0, v1);
    atomic_store(result, &qword_100CB6E08);
  }

  return result;
}

uint64_t sub_1004079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100407998();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100407AA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = String.subscript.getter();

    return v4;
  }

  return result;
}

void sub_100407B48()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v11 = sub_1000246B4();
  sub_1000178A4(*(v11 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    sub_100017884(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  sub_10000536C();
}

void sub_100407CEC()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v11 = sub_1000246B4();
  sub_1000178A4(*(v11 + 40));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v12 + 32))(v2, v0);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    sub_100017884(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  sub_10000536C();
}

void sub_100407E90()
{
  sub_10000C778();
  v22[1] = v1;
  v2 = type metadata accessor for MoonComponentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ScenePhase();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10022C350(&qword_100CB6EE8, &qword_100A4AA60);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_10022C350(&qword_100CB6EF0, &qword_100A4AA68);
  sub_10040813C(v0, &v14[*(v15 + 44)]);
  sub_100407CEC();
  sub_10040DB24(v0, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_10040DB80(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MoonComponentView);
  sub_100005A00();
  sub_100006F64(v18, &qword_100CB6EE8, &qword_100A4AA60, v19);
  sub_100005C60();
  sub_10040D9F0(v20, v21, &protocol conformance descriptor for ScenePhase);
  View.onChange<A>(of:initial:_:)();

  (*(v7 + 8))(v11, v5);
  sub_100018144(v14, &qword_100CB6EE8, &qword_100A4AA60);
  sub_10000536C();
}

uint64_t sub_10040813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MoonComponentView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6F08, &qword_100A4AA78);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v43 - v9;
  v56 = sub_10022C350(&qword_100CB6F10, &qword_100A4AA80);
  __chkstk_darwin(v56);
  v11 = &v43 - v10;
  v12 = type metadata accessor for AccessibilityChildBehavior();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10022C350(&qword_100CB6F18, &qword_100A4AA88);
  __chkstk_darwin(v55);
  v46 = &v43 - v15;
  v52 = sub_10022C350(&qword_100CB6F20, &qword_100A4AA90);
  v16 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v43 - v17;
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + *(v4 + 36);
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    if ((v24 & 1) == 0)
    {
LABEL_3:
      sub_10040DB24(a1, v7, type metadata accessor for MoonComponentView);
      v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v26 = swift_allocObject();
      sub_10040DB80(v7, v26 + v25, type metadata accessor for MoonComponentView);
      v57 = sub_10040D87C;
      v58 = v26;
      static AccessibilityChildBehavior.combine.getter();
      v27 = sub_10022C350(&qword_100CB6F28, &qword_100A4AA98);
      v28 = sub_100006F64(&qword_100CB6F30, &qword_100CB6F28, &qword_100A4AA98, &protocol conformance descriptor for GeometryReader<A>);
      v29 = v48;
      View.accessibilityElement(children:)();
      (*(v53 + 8))(v14, v54);

      v31 = v49;
      v30 = v50;
      (*(v49 + 16))(v11, v29, v50);
      swift_storeEnumTagMultiPayload();
      v32 = sub_10040D894();
      v57 = v55;
      v58 = v32;
      swift_getOpaqueTypeConformance2();
      v57 = v27;
      v58 = v28;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    v43 = v20;

    static os_log_type_t.fault.getter();
    v44 = v16;
    v34 = static Log.runtimeIssuesLog.getter();
    v45 = v11;
    v35 = v34;
    v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v44;
    os_log(_:dso:log:_:_:)();

    v11 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v19 + 8))(v22, v43);
    if (v57 != 1)
    {
      goto LABEL_3;
    }
  }

  v36 = v46;
  sub_100408890(v46);
  static AccessibilityChildBehavior.combine.getter();
  v37 = sub_10040D894();
  v38 = v47;
  v39 = v55;
  View.accessibilityElement(children:)();
  (*(v53 + 8))(v14, v54);
  sub_100018144(v36, &qword_100CB6F18, &qword_100A4AA88);
  v40 = v52;
  (*(v16 + 16))(v11, v38, v52);
  swift_storeEnumTagMultiPayload();
  v57 = v39;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = sub_10022E824(&qword_100CB6F28, &qword_100A4AA98);
  v42 = sub_100006F64(&qword_100CB6F30, &qword_100CB6F28, &qword_100A4AA98, &protocol conformance descriptor for GeometryReader<A>);
  v57 = v41;
  v58 = v42;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v16 + 8))(v38, v40);
}

uint64_t sub_100408890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = sub_10022C350(&qword_100CB6F58, &qword_100A4AAA8);
  __chkstk_darwin(v25);
  v4 = &v24 - v3;
  v5 = sub_10022C350(&qword_100CB6F60, &qword_100A4AAB0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v27 = sub_10022C350(&qword_100CB6F48, &qword_100A4AAA0);
  __chkstk_darwin(v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v24 = &v24 - v11;
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MoonComponentView(0);
  sub_10009ECC8();
  v17 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v13 + 8))(v15, v12);
  if (v17)
  {
    v18 = *(v2 + *(v16 + 48) + 40);
    if (v18[2])
    {
      v20 = v18[4];
      v19 = v18[5];
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    *v9 = static HorizontalAlignment.leading.getter();
    *(v9 + 1) = 0x4018000000000000;
    v9[16] = 0;
    sub_10022C350(&qword_100CB6F70, &qword_100A4AAC0);
    sub_10040A414(v2, v20, v19);

    v23 = v24;
    sub_1001E5A5C(v9, v24);
    sub_1000302D8(v23, v7, &qword_100CB6F48, &qword_100A4AAA0);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB6F40, &qword_100CB6F48, &qword_100A4AAA0, &protocol conformance descriptor for VStack<A>);
    sub_100006F64(&qword_100CB6F50, &qword_100CB6F58, &qword_100A4AAA8, &protocol conformance descriptor for ViewThatFits<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v23, &qword_100CB6F48, &qword_100A4AAA0);
  }

  else
  {
    *v4 = static Axis.Set.horizontal.getter();
    v21 = sub_10022C350(&qword_100CB6F68, &qword_100A4AAB8);
    sub_100409244(v2, &v4[*(v21 + 44)]);
    sub_1000302D8(v4, v7, &qword_100CB6F58, &qword_100A4AAA8);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB6F40, &qword_100CB6F48, &qword_100A4AAA0, &protocol conformance descriptor for VStack<A>);
    sub_100006F64(&qword_100CB6F50, &qword_100CB6F58, &qword_100A4AAA8, &protocol conformance descriptor for ViewThatFits<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v4, &qword_100CB6F58, &qword_100A4AAA8);
  }
}

uint64_t sub_100408CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000703C(v12, qword_100D90A90);
  v41 = *(v6 + 16);
  v41(v11, a2, v5);
  v40 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = a2;
    v19 = v18;
    v45[0] = v18;
    *v17 = 136315138;
    v20 = sub_1004090BC();
    v39 = a3;
    v22 = v21;
    v23 = v11;
    v24 = *(v6 + 8);
    v24(v23, v5);
    v25 = sub_100078694(v20, v22, v45);
    a3 = v39;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "MoonComponentView:scenePhase change:%s", v17, 0xCu);
    sub_100006F14(v19);
    a2 = v38;

    v8 = v37;
  }

  else
  {

    v26 = v11;
    v24 = *(v6 + 8);
    v24(v26, v5);
  }

  v41(v8, a2, v5);
  v27 = (*(v6 + 88))(v8, v5);
  v28 = enum case for ScenePhase.active(_:);
  result = (v24)(v8, v5);
  if (v27 == v28)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "MoonComponentView:forceUpdateFlag", v32, 2u);
    }

    v33 = a3 + *(type metadata accessor for MoonComponentView(0) + 56);
    v35 = *(v33 + 8);
    LOBYTE(v45[0]) = *v33;
    v34 = v45[0];
    v45[1] = v35;

    sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
    State.wrappedValue.getter();
    v43 = v34;
    v44 = v35;
    v42 = (v46 & 1) == 0;
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1004090BC()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ScenePhase.background(_:))
  {
    return 0x756F72676B636162;
  }

  if (v7 == enum case for ScenePhase.inactive(_:))
  {
    return 0x6576697463616E69;
  }

  if (v7 == enum case for ScenePhase.active(_:))
  {
    return 0x657669746361;
  }

  (*(v3 + 8))(v6, v2);
  return 4271950;
}

uint64_t sub_100409244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB6FC8, &qword_100A4AB30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_10022C350(&qword_100CB6FD0, &qword_100A4AB38);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100409458(&v19 - v14);
  *v9 = static Axis.Set.vertical.getter();
  v16 = sub_10022C350(&qword_100CB6FD8, &qword_100A4AB40);
  sub_100409698(a1, &v9[*(v16 + 44)]);
  sub_1000302D8(v15, v12, &qword_100CB6FD0, &qword_100A4AB38);
  sub_1000302D8(v9, v6, &qword_100CB6FC8, &qword_100A4AB30);
  sub_1000302D8(v12, a2, &qword_100CB6FD0, &qword_100A4AB38);
  v17 = sub_10022C350(&qword_100CB6FE0, &qword_100A4AB48);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CB6FC8, &qword_100A4AB30);
  sub_100018144(v9, &qword_100CB6FC8, &qword_100A4AB30);
  sub_100018144(v15, &qword_100CB6FD0, &qword_100A4AB38);
  sub_100018144(v6, &qword_100CB6FC8, &qword_100A4AB30);
  return sub_100018144(v12, &qword_100CB6FD0, &qword_100A4AB38);
}

uint64_t sub_100409458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CB7028, &qword_100A83220);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for HorizontalABWithB1x1RatioLayout(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  sub_100046E64();
  *v13 = OS_os_log.init(subsystem:category:)();
  v14 = v8[7];
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  *(v13 + v8[8]) = 0x4059000000000000;
  v15 = v13 + v8[9];
  *v15 = 0;
  v15[8] = 1;
  *(v13 + v8[10]) = 0x4030000000000000;
  sub_10040DB80(v13, v10, type metadata accessor for HorizontalABWithB1x1RatioLayout);
  sub_10040DB24(v10, v6, type metadata accessor for HorizontalABWithB1x1RatioLayout);
  sub_1000302D8(v6, a1, &qword_100CB7028, &qword_100A83220);
  v16 = sub_10022C350(&qword_100CB6FD0, &qword_100A4AB38);
  sub_100409D20(v2, a1 + *(v16 + 44));
  sub_100018144(v6, &qword_100CB7028, &qword_100A83220);
  return sub_10040DBDC(v10);
}

uint64_t sub_100409698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB6FE8, &qword_100A4AB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_10022C350(&qword_100CB6FD0, &qword_100A4AB38);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_100409458(&v19 - v14);
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = sub_10022C350(&qword_100CB6FF0, &qword_100A4AB58);
  sub_100409F6C(a1, &v9[*(v16 + 44)]);
  sub_1000302D8(v15, v12, &qword_100CB6FD0, &qword_100A4AB38);
  sub_1000302D8(v9, v6, &qword_100CB6FE8, &qword_100A4AB50);
  sub_1000302D8(v12, a2, &qword_100CB6FD0, &qword_100A4AB38);
  v17 = sub_10022C350(&qword_100CB6FF8, &qword_100A4AB60);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CB6FE8, &qword_100A4AB50);
  sub_100018144(v9, &qword_100CB6FE8, &qword_100A4AB50);
  sub_100018144(v15, &qword_100CB6FD0, &qword_100A4AB38);
  sub_100018144(v6, &qword_100CB6FE8, &qword_100A4AB50);
  return sub_100018144(v12, &qword_100CB6FD0, &qword_100A4AB38);
}

uint64_t sub_1004098B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v49 = a3;
  v48 = type metadata accessor for NamedCoordinateSpace();
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MoonView.RenderBehavior();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MoonComponentView(0);
  v14 = a2 + *(v13 + 48);
  v15 = type metadata accessor for MoonComponentViewModel(0);
  (*(v10 + 16))(v12, v14 + *(v15 + 28), v9);
  (*(v6 + 104))(v8, enum case for MoonView.RenderBehavior.renderOnceAfterUpdate(_:), v5);
  v16 = (a2 + *(v13 + 56));
  v17 = *v16;
  v18 = *(v16 + 1);
  v53 = v17;
  v54 = v18;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v19 = v49;
  MoonView.init(date:renderBehavior:forceUpdateFlag:)();
  v20 = *(sub_10022C350(&qword_100CB7038, &qword_100A4AC58) + 36);
  v21 = enum case for BlendMode.screen(_:);
  v22 = type metadata accessor for BlendMode();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  v23 = v19;
  v24 = *(v14 + *(v15 + 36)) * 0.0174532925;
  static UnitPoint.center.getter();
  v26 = v25;
  v28 = v27;
  v29 = v19 + *(sub_10022C350(&qword_100CB7040, &qword_100A4AC60) + 36);
  *v29 = v24;
  *(v29 + 8) = v26;
  *(v29 + 16) = v28;
  if (qword_100CA21D0 != -1)
  {
    swift_once();
  }

  v30 = v48;
  v31 = sub_10000703C(v48, qword_100D90358);
  v33 = v50;
  v32 = v51;
  (*(v51 + 16))(v50, v31, v30);
  GeometryProxy.frame<A>(in:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v32 + 8))(v33, v30);
  v42 = v35 + 1.0;
  v55.origin.x = v35;
  v55.origin.y = v37;
  v55.size.width = v39;
  v55.size.height = v41;
  v43 = CGRectGetWidth(v55) + -2.0;
  v56.origin.x = v35;
  v56.origin.y = v37;
  v56.size.width = v39;
  v56.size.height = v41;
  v44 = CGRectGetHeight(v56) + -2.0;
  v45 = swift_allocObject();
  v45[2] = v42;
  v45[3] = v37 + 1.0;
  v45[4] = v43;
  v45[5] = v44;
  result = sub_10022C350(&qword_100CB7048, &qword_100A4AC68);
  v47 = (v23 + *(result + 36));
  *v47 = sub_10040DCE4;
  v47[1] = v45;
  return result;
}

uint64_t sub_100409D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MoonComponentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10022C350(&qword_100CB6FE8, &qword_100A4AB50);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = sub_10022C350(&qword_100CB6FF0, &qword_100A4AB58);
  sub_100409F6C(a1, &v12[*(v13 + 44)]);
  sub_10040DB24(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_10040DB80(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MoonComponentView);
  sub_1000302D8(v12, v9, &qword_100CB6FE8, &qword_100A4AB50);
  sub_1000302D8(v9, a2, &qword_100CB6FE8, &qword_100A4AB50);
  v16 = (a2 + *(sub_10022C350(&qword_100CB7030, &qword_100A4AC50) + 48));
  *v16 = sub_10040DC38;
  v16[1] = v15;

  sub_100018144(v12, &qword_100CB6FE8, &qword_100A4AB50);

  return sub_100018144(v9, &qword_100CB6FE8, &qword_100A4AB50);
}

uint64_t sub_100409F6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25[0] = a2;
  v3 = type metadata accessor for MoonComponentView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CB7000, &qword_100A4AB68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  sub_1002ED5C8(*(a1 + *(v4 + 56) + 40));
  v25[1] = v14;
  swift_getKeyPath();
  sub_10040DB24(a1, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10040DB80(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MoonComponentView);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040DA38;
  *(v17 + 24) = v16;
  sub_10022C350(&qword_100CB7008, &qword_100A4AB90);
  type metadata accessor for MoonComponentView.RowView(0);
  sub_100006F64(&qword_100CB7010, &qword_100CB7008, &qword_100A4AB90, &protocol conformance descriptor for [A]);
  sub_10040D9F0(&qword_100CB7018, type metadata accessor for MoonComponentView.RowView, a9_14);
  ForEach<>.init(_:id:content:)();
  v18 = *(v8 + 16);
  v18(v10, v13, v7);
  v19 = v25[0];
  *v25[0] = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = sub_10022C350(&qword_100CB7020, &qword_100A4AB98);
  v18((v20 + *(v21 + 48)), v10, v7);
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = *(v8 + 8);
  v23(v13, v7);
  return (v23)(v10, v7);
}

__n128 sub_10040A2F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v18 = *a2;
  v16 = v8;
  v17 = *(a2 + 32);
  v9 = *(type metadata accessor for MoonComponentView(0) + 48);
  v10 = type metadata accessor for MoonComponentView.RowView(0);
  sub_10040DB24(a3 + v9, a4 + v10[8], type metadata accessor for MoonComponentViewModel);
  sub_100358150(&v18, v15);
  sub_1003B3D28(&v16, v15);
  v11 = sub_10040B1D0();
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  KeyPath = swift_getKeyPath();
  v15[0] = 0;
  *(a4 + 32) = KeyPath;
  *(a4 + 104) = 0;
  result = *a2;
  v14 = *(a2 + 16);
  *(a4 + 112) = *a2;
  *(a4 + 128) = v14;
  *(a4 + 144) = *(a2 + 32);
  *(a4 + v10[9]) = v11;
  *(a4 + v10[10]) = a1;
  return result;
}

uint64_t sub_10040A414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MoonComponentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v13[1] = *(a1 + *(v9 + 56) + 40);
  swift_getKeyPath();
  sub_10040DB24(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonComponentView);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_10040DB80(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for MoonComponentView);

  sub_10022C350(&qword_100CB2E20, &qword_100A45608);
  sub_10022C350(&qword_100CB6F78, &qword_100A4AAF0);
  sub_100006F64(&qword_100CB6F80, &qword_100CB2E20, &qword_100A45608, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CB6F88, &qword_100CB6F78, &qword_100A4AAF0, &protocol conformance descriptor for HStack<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10040A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v9 = sub_10022C350(&qword_100CB6F90, &qword_100A4AAF8);
  return sub_10040A6D0(v11, a2, a4, a5 + *(v9 + 44));
}

uint64_t sub_10040A6D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10022C350(&qword_100CB6F98, &qword_100A4AB00);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_10022C350(&qword_100CB6FA0, &qword_100A4AB08);
  sub_10040A848(a1, a2, a4, &v14[*(v15 + 44)]);
  sub_1000302D8(v14, v11, &qword_100CB6F98, &qword_100A4AB00);
  sub_1000302D8(v11, a5, &qword_100CB6F98, &qword_100A4AB00);
  v16 = a5 + *(sub_10022C350(&qword_100CB6FA8, &qword_100A4AB10) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100018144(v14, &qword_100CB6F98, &qword_100A4AB00);
  return sub_100018144(v11, &qword_100CB6F98, &qword_100A4AB00);
}

uint64_t sub_10040A848@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v86 = a3;
  v80 = a2;
  v91 = a4;
  v89 = sub_10022C350(&qword_100CB6FB0, &qword_100A4AB18);
  __chkstk_darwin(v89);
  v92 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v69 - v7;
  v94 = type metadata accessor for Font.Leading();
  v84 = *(v94 - 8);
  __chkstk_darwin(v94);
  v85 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Font.TextStyle();
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrimaryDividerStyle();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Divider();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA7280, &unk_100A49700);
  v77 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = sub_10022C350(&qword_100CB6FB8, &qword_100A831C0);
  __chkstk_darwin(v19 - 8);
  v88 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v69 - v23;
  v25 = *a1;
  v26 = a1[1];
  v87 = a1;
  v82 = &v69 - v23;
  if (v22 && (v25 == v80 ? (v27 = v26 == v22) : (v27 = 0), v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    sub_10001B350(v24, 1, 1, v16);
  }

  else
  {

    Divider.init()();
    static DividerStyle<>.primary.getter();
    sub_10040D9F0(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_10040D9F0(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
    View.dividerStyle<A>(_:)();
    (*(v79 + 8))(v12, v10);
    (*(v78 + 8))(v15, v13);
    (*(v77 + 32))(v24, v18, v16);
    sub_10001B350(v24, 0, 1, v16);
  }

  v95 = v25;
  v96 = v26;
  sub_10002D5A4();
  v71 = Text.init<A>(_:)();
  v70 = v28;
  v30 = v29;
  v69 = v31;
  LODWORD(v77) = enum case for Font.TextStyle.subheadline(_:);
  v32 = v83;
  v33 = *(v83 + 104);
  v72 = v83 + 104;
  v75 = v33;
  v34 = v81;
  v35 = v93;
  v33(v81);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v78 = *(v32 + 8);
  (v78)(v34, v35);
  v76 = enum case for Font.Leading.tight(_:);
  v36 = v84;
  v74 = *(v84 + 104);
  v37 = v85;
  v38 = v94;
  v74(v85);
  Font.leading(_:)();

  v73 = *(v36 + 8);
  v73(v37, v38);
  v39 = v71;
  v40 = v70;
  v41 = Text.font(_:)();
  v79 = v42;
  v80 = v41;
  LODWORD(v83) = v43;
  v84 = v44;

  sub_10010CD64(v39, v40, v30 & 1);

  v45 = sub_10040B1D0();
  v47 = v87[2];
  v46 = v87[3];
  LOBYTE(v38) = *(v87 + 32);
  v48 = v93;
  v75(v34, v77, v93);
  sub_1002EE904(v47, v46, v38);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (v78)(v34, v48);
  v49 = v94;
  (v74)(v37, v76, v94);
  Font.leading(_:)();

  v73(v37, v49);
  v50 = Text.init(temporalString:font:)();
  v52 = v51;
  LOBYTE(v32) = v53;
  v55 = v54;
  v56 = *(sub_10022C350(&qword_100CA4000, &qword_100A4AB20) + 36);
  v57 = enum case for BlendMode.plusLighter(_:);
  v58 = type metadata accessor for BlendMode();
  v59 = v90;
  (*(*(v58 - 8) + 104))(&v90[v56], v57, v58);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v32 & 1;
  *(v59 + 24) = v55;
  v60 = v88;
  *(v59 + *(v89 + 36)) = v45;
  v61 = v82;
  sub_1000302D8(v82, v60, &qword_100CB6FB8, &qword_100A831C0);
  v62 = v92;
  sub_1000302D8(v59, v92, &qword_100CB6FB0, &qword_100A4AB18);
  v63 = v91;
  sub_1000302D8(v60, v91, &qword_100CB6FB8, &qword_100A831C0);
  v64 = sub_10022C350(&qword_100CB6FC0, &qword_100A4AB28);
  v65 = v63 + *(v64 + 48);
  v66 = v79;
  v67 = v80;
  *v65 = v80;
  *(v65 + 8) = v66;
  LOBYTE(v57) = v83 & 1;
  *(v65 + 16) = v83 & 1;
  *(v65 + 24) = v84;
  sub_1000302D8(v62, v63 + *(v64 + 64), &qword_100CB6FB0, &qword_100A4AB18);
  sub_10010CD54(v67, v66, v57);

  sub_100018144(v59, &qword_100CB6FB0, &qword_100A4AB18);
  sub_100018144(v61, &qword_100CB6FB8, &qword_100A831C0);
  sub_100018144(v62, &qword_100CB6FB0, &qword_100A4AB18);
  sub_10010CD64(v67, v66, v57);

  return sub_100018144(v60, &qword_100CB6FB8, &qword_100A831C0);
}

double sub_10040B1D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ColorSchemeContrast();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  sub_100407B48();
  (*(v6 + 104))(v8, enum case for ColorSchemeContrast.increased(_:), v5);
  v12 = static ColorSchemeContrast.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  result = 1.0;
  if ((v12 & 1) == 0)
  {
    v15 = v0 + *(type metadata accessor for MoonComponentView(0) + 24);
    v16 = *v15;
    if (*(v15 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v16, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v16) = v18[15];
    }

    result = 0.27;
    if (v16)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_10040B454@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  GeometryProxy.size.getter();
  sub_10040B4E0();
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0x4008000000000000;
  *(a3 + 16) = 0;
  v5 = sub_10022C350(&qword_100CB7050, &qword_100A4AC70);
  return sub_10040B738(a2, (a3 + *(v5 + 44)));
}

double sub_10040B4E0()
{
  v1 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v1 - 8);
  v3 = v28 - v2;
  v4 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v4 - 8);
  v6 = v28 - v5;
  v7 = type metadata accessor for Text.Measurements.Context();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoonComponentView(0);
  v12 = v0 + *(v11 + 48);
  v13 = *(v12 + 8);
  v14 = 0.0;
  if (v13)
  {
    v15 = *(v12 + 32);
    if (v15 != 255)
    {
      v16 = *v12;
      v17 = *(v12 + 16);
      v18 = *(v12 + 24);
      v28[0] = *(v11 + 44);
      v19 = sub_10040BCE0(v16, v13, v17, v18, v15);
      v21 = v20;
      v23 = v22;
      v24 = type metadata accessor for Text.WritingMode();
      sub_10001B350(v6, 1, 1, v24);
      v25 = type metadata accessor for Text.Suffix();
      sub_10001B350(v3, 1, 1, v25);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v14 = v26;
      sub_10010CD64(v19, v21, v23 & 1);

      (*(v8 + 8))(v10, v7);
    }
  }

  return v14;
}

uint64_t sub_10040B738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CB7058, &qword_100A4AC78);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_10022C350(&qword_100CB7060, &qword_100A4AC80);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = static VerticalAlignment.center.getter();
  LOBYTE(v40) = 1;
  sub_10040BB38(a1, v45);
  memcpy(v47, v45, 0x59uLL);
  memcpy(__dst, v45, 0x59uLL);
  sub_1000302D8(v47, v44, &qword_100CB7068, &qword_100A4AC88);
  sub_100018144(__dst, &qword_100CB7068, &qword_100A4AC88);
  memcpy(&v46[7], v47, 0x59uLL);
  LODWORD(v15) = v40;
  v16 = a1 + *(type metadata accessor for MoonComponentView(0) + 48);
  v17 = *(v16 + 8);
  if (!v17 || (v18 = *(v16 + 32), v18 == 255))
  {
    v30 = v13;
    v31 = 1;
    v32 = v5;
  }

  else
  {
    v37 = v15;
    v15 = *v16;
    v19 = sub_10040BCE0(*v16, v17, *(v16 + 16), *(v16 + 24), v18);
    v38 = v14;
    v39 = a2;
    v21 = v20;
    v23 = v22;
    v36 = v5;
    v25 = v24;
    KeyPath = swift_getKeyPath();
    v35 = v7;
    v27 = KeyPath;
    v28 = swift_getKeyPath();
    v43 = v23 & 1;
    v42 = 0;
    v44[0] = v19;
    v44[1] = v21;
    LOBYTE(v44[2]) = v23 & 1;
    v44[3] = v25;
    v44[4] = v27;
    v44[5] = 1;
    LOBYTE(v44[6]) = 0;
    v44[7] = v28;
    v44[8] = 0x3FE0000000000000;
    v40 = v15;
    v41 = v17;
    LOBYTE(v15) = v37;
    sub_10022C350(&qword_100CB7080, &unk_100A4AD00);
    sub_10040DCEC();
    sub_10002D5A4();
    v29 = v35;
    View.accessibilityLabel<A>(_:)();
    memcpy(v45, v44, 0x48uLL);
    v14 = v38;
    a2 = v39;
    sub_100018144(v45, &qword_100CB7080, &unk_100A4AD00);
    sub_10011C0F0(v29, v13, &qword_100CB7058, &qword_100A4AC78);
    v30 = v13;
    v31 = 0;
    v32 = v36;
  }

  sub_10001B350(v30, v31, 1, v32);
  sub_1000302D8(v13, v10, &qword_100CB7060, &qword_100A4AC80);
  v44[0] = v14;
  v44[1] = 0;
  LOBYTE(v44[2]) = v15;
  memcpy(&v44[2] + 1, v46, 0x60uLL);
  memcpy(a2, v44, 0x71uLL);
  v33 = sub_10022C350(&qword_100CB7070, &qword_100A4AC90);
  sub_1000302D8(v10, a2 + *(v33 + 48), &qword_100CB7060, &qword_100A4AC80);
  sub_1000302D8(v44, v45, &qword_100CB7078, &qword_100A4AC98);
  sub_100018144(v13, &qword_100CB7060, &qword_100A4AC80);
  sub_100018144(v10, &qword_100CB7060, &qword_100A4AC80);
  v45[0] = v14;
  v45[1] = 0;
  LOBYTE(v45[2]) = v15;
  memcpy(&v45[2] + 1, v46, 0x60uLL);
  return sub_100018144(v45, &qword_100CB7078, &qword_100A4AC98);
}

double sub_10040BB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MoonComponentView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_10040DB24(a1, &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MoonComponentView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10040DB80(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for MoonComponentView);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = sub_10040E168;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  result = *&v20;
  *(a2 + 64) = v20;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_10040BCE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v80) = a5;
  v78 = a1;
  v79 = a4;
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v11 - 8);
  v13 = &v73[-v12];
  v14 = type metadata accessor for Font.TextStyle();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 104))(v18, enum case for Font.TextStyle.subheadline(_:), v14, v16);
  v19 = type metadata accessor for Font.Design();
  sub_10001B350(v13, 1, 1, v19);
  static Font.system(_:design:weight:)();
  sub_100018144(v13, &qword_100CA4020, &qword_100A2E080);
  (*(v15 + 8))(v18, v14);
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  v20 = Font.leading(_:)();

  (*(v8 + 8))(v10, v7);
  v21 = v78;
  v82 = v78;
  v83 = a2;
  v77 = a3;
  v86 = TemporalString.string.getter();
  v87 = v22;
  sub_10002D5A4();
  StringProtocol.localizedStandardRange<A>(of:)();
  v24 = v23;
  v26 = v25;

  if (v26)
  {
    v82 = v21;
    v83 = a2;

    v27 = Text.init<A>(_:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v80 = v33;
    v34 = Text.font(_:)();

    v35 = v31 & 1;
    v36 = v27;
    v37 = v29;
  }

  else
  {
    v82 = String.subscript.getter();
    v83 = v38;
    v84 = v39;
    v85 = v40;
    v76 = sub_10033CD14();
    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    v75 = v24;

    v46 = Text.font(_:)();
    v48 = v47;
    v50 = v49;
    v81 = v20;
    sub_10010CD64(v41, v43, v45 & 1);

    sub_1002EE904(v77, v79, v80);
    v51 = Text.init(temporalString:font:)();
    v53 = v52;
    v55 = v54;
    v79 = static Text.+ infix(_:_:)();
    v77 = v56;
    v74 = v57;
    v80 = v58;
    sub_10010CD64(v51, v53, v55 & 1);

    sub_10010CD64(v46, v48, v50 & 1);

    v82 = sub_100407AA4(v75, v21, a2);
    v83 = v59;
    v84 = v60;
    v85 = v61;
    v62 = Text.init<A>(_:)();
    v64 = v63;
    LOBYTE(v51) = v65;
    v66 = Text.font(_:)();
    v68 = v67;
    LOBYTE(v41) = v69;

    sub_10010CD64(v62, v64, v51 & 1);

    LOBYTE(v62) = v74;
    v70 = v79;
    v71 = v77;
    v78 = static Text.+ infix(_:_:)();
    sub_10010CD64(v66, v68, v41 & 1);

    v35 = v62 & 1;
    v34 = v78;
    v36 = v70;
    v37 = v71;
  }

  sub_10010CD64(v36, v37, v35);

  return v34;
}

uint64_t sub_10040C294(uint64_t a1, uint64_t a2)
{
  sub_100022B68();
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100408CE8(a1, a2, v6);
}

uint64_t sub_10040C308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v103 = type metadata accessor for AccessibilityChildBehavior();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10022C350(&qword_100CB7148, &qword_100A4AD78);
  __chkstk_darwin(v97);
  v98 = &v83 - v6;
  v104 = sub_10022C350(&qword_100CB7150, &qword_100A4AD80);
  __chkstk_darwin(v104);
  v100 = &v83 - v7;
  v107 = sub_10022C350(&qword_100CB7158, &qword_100A4AD88);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v83 - v8;
  v9 = sub_10022C350(&qword_100CB7160, &qword_100A4AD90);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v83 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PrimaryDividerStyle();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Divider();
  v88 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10022C350(&qword_100CA7280, &unk_100A49700);
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v22 = &v83 - v21;
  v23 = sub_10022C350(&qword_100CB6FB8, &qword_100A831C0);
  __chkstk_darwin(v23 - 8);
  v99 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v92 = type metadata accessor for MoonComponentView.RowView(0);
  v28 = *(v2 + *(v92 + 32) + 40);
  v29 = v28[2];
  v109 = v27;
  v95 = v11;
  v93 = v14;
  if (!v29)
  {
    v37 = a1;
    v38 = *(v2 + 120);
    v96 = *(v2 + 112);
    v94 = v38;
    goto LABEL_10;
  }

  v84 = v18;
  v30 = a1;
  v31 = v28[4];
  v32 = v28[5];
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);

  v96 = v33;
  v94 = v34;
  if (!v32)
  {
LABEL_8:
    v37 = v30;
    v27 = v109;
    v18 = v84;
LABEL_10:
    Divider.init()();
    static DividerStyle<>.primary.getter();
    sub_10040D9F0(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_10040D9F0(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
    v39 = v18;
    v40 = v90;
    View.dividerStyle<A>(_:)();
    (*(v89 + 8))(v17, v40);
    (*(v88 + 8))(v20, v39);
    v41 = v91;
    (*(v87 + 32))(v27, v22, v91);
    v42 = 0;
    v43 = v37;
    v44 = v93;
    goto LABEL_13;
  }

  if (v33 == v31 && v32 == v34)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v42 = 1;
  v43 = v30;
  v27 = v109;
  v44 = v93;
  v41 = v91;
LABEL_13:
  sub_10001B350(v27, v42, 1, v41);
  v45 = *v2;
  v46 = v98;
  if (*(v2 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v45, 0);
    (*(v86 + 8))(v48, v44);
    LOBYTE(v45) = __src[0];
  }

  sub_10040CF80(*(v2 + *(v92 + 40)));
  *v46 = static VerticalAlignment.center.getter();
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v49 = sub_10022C350(&qword_100CB7168, &qword_100A4AD98);
  sub_10040D004(v2, (v45 & 1) == 0, (v46 + *(v49 + 44)));
  v50 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v46 + *(sub_10022C350(&qword_100CB7170, &qword_100A4ADA0) + 36);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  *(v59 + 32) = v58;
  *(v59 + 40) = 0;
  v60 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v61 = v46 + *(v97 + 36);
  *v61 = v60;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  sub_10040D594();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v66 = v100;
  sub_10011C0F0(v46, v100, &qword_100CB7148, &qword_100A4AD78);
  v67 = v104;
  memcpy((v66 + *(v104 + 36)), __src, 0x70uLL);
  v68 = v101;
  static AccessibilityChildBehavior.ignore.getter();
  v69 = sub_10040DF98();
  v70 = v105;
  View.accessibilityElement(children:)();
  (*(v102 + 8))(v68, v103);
  sub_100018144(v66, &qword_100CB7150, &qword_100A4AD80);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
  v72._countAndFlagsBits = v96;
  v72._object = v94;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v72);
  v73._countAndFlagsBits = 8250;
  v73._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v73);
  v74._countAndFlagsBits = TemporalString.string.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v74);

  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v75);
  LocalizedStringKey.init(stringInterpolation:)();
  v110 = v67;
  v111 = v69;
  swift_getOpaqueTypeConformance2();
  v76 = v108;
  v77 = v107;
  View.accessibilityLabel(_:)();

  (*(v106 + 8))(v70, v77);
  v78 = v109;
  v79 = v99;
  sub_1000302D8(v109, v99, &qword_100CB6FB8, &qword_100A831C0);
  v80 = v95;
  sub_1000302D8(v76, v95, &qword_100CB7160, &qword_100A4AD90);
  sub_1000302D8(v79, v43, &qword_100CB6FB8, &qword_100A831C0);
  v81 = sub_10022C350(&qword_100CB71A0, &unk_100A4ADB0);
  sub_1000302D8(v80, v43 + *(v81 + 48), &qword_100CB7160, &qword_100A4AD90);
  sub_100018144(v76, &qword_100CB7160, &qword_100A4AD90);
  sub_100018144(v78, &qword_100CB6FB8, &qword_100A831C0);
  sub_100018144(v80, &qword_100CB7160, &qword_100A4AD90);
  return sub_100018144(v79, &qword_100CB6FB8, &qword_100A831C0);
}

double sub_10040CF80(uint64_t a1)
{
  v2 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  type metadata accessor for MoonComponentView.RowView(0);
  v3 = 10.0;
  if (!v2)
  {
    v3 = 6.0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_10040D004@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v72 = a2;
  v71 = a3;
  v70 = sub_10022C350(&qword_100CB6FB0, &qword_100A4AB18) - 8;
  __chkstk_darwin(v70);
  v69 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = v51 - v6;
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v73 = v15;
  v74 = v16;
  sub_10002D5A4();

  v53 = Text.init<A>(_:)();
  v52 = v17;
  v19 = v18;
  v51[1] = v20;
  v61 = enum case for Font.TextStyle.subheadline(_:);
  v59 = *(v12 + 104);
  v54 = v11;
  v59(v14);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v62 = *(v12 + 8);
  v63 = v12 + 8;
  v62(v14, v11);
  v60 = enum case for Font.Leading.tight(_:);
  v58 = *(v8 + 104);
  v55 = v7;
  v58(v10);
  Font.leading(_:)();

  v57 = *(v8 + 8);
  v57(v10, v7);
  v21 = v53;
  v22 = v52;
  v23 = Text.font(_:)();
  v64 = v24;
  v65 = v23;
  v66 = v25;
  v67 = v26;

  sub_10010CD64(v21, v22, v19 & 1);

  v27 = *(v56 + 128);
  v28 = *(v56 + 136);
  LOBYTE(v22) = *(v56 + 144);
  v29 = v56;
  v30 = *(v29 + *(type metadata accessor for MoonComponentView.RowView(0) + 36));
  v31 = v54;
  (v59)(v14, v61, v54);
  sub_1002EE904(v27, v28, v22);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v62(v14, v31);
  v32 = v55;
  (v58)(v10, v60, v55);
  Font.leading(_:)();

  v57(v10, v32);
  v33 = Text.init(temporalString:font:)();
  v35 = v34;
  LOBYTE(v11) = v36;
  v38 = v37;
  v39 = *(sub_10022C350(&qword_100CA4000, &qword_100A4AB20) + 36);
  v40 = enum case for BlendMode.plusLighter(_:);
  v41 = type metadata accessor for BlendMode();
  v42 = v68;
  (*(*(v41 - 8) + 104))(&v68[v39], v40, v41);
  *v42 = v33;
  *(v42 + 8) = v35;
  *(v42 + 16) = v11 & 1;
  *(v42 + 24) = v38;
  v43 = v69;
  *(v42 + *(v70 + 44)) = v30;
  v44 = v42;
  sub_1000302D8(v42, v43, &qword_100CB6FB0, &qword_100A4AB18);
  v45 = v71;
  v47 = v64;
  v46 = v65;
  *v71 = v65;
  v45[1] = v47;
  LOBYTE(v33) = v66 & 1;
  *(v45 + 16) = v66 & 1;
  v45[3] = v67;
  *(v45 + 32) = 0;
  *(v45 + 33) = v72;
  v45[5] = 0x4024000000000000;
  *(v45 + 48) = 0;
  v48 = v45;
  v49 = sub_10022C350(&qword_100CB71B0, &qword_100A4ADC0);
  sub_1000302D8(v43, v48 + *(v49 + 64), &qword_100CB6FB0, &qword_100A4AB18);
  sub_10010CD54(v46, v47, v33);

  sub_100018144(v44, &qword_100CB6FB0, &qword_100A4AB18);
  sub_100018144(v43, &qword_100CB6FB0, &qword_100A4AB18);
  sub_10010CD64(v46, v47, v33);
}

double sub_10040D594()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v5 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      result = 0.0;
      if (v5)
      {
        return result;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v5, 0);
      (*(v2 + 8))(v4, v1);
      result = 0.0;
      if (__dst[0])
      {
        return result;
      }
    }
  }

  memcpy(__dst, (v0 + 32), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + 32), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v12, __src, sizeof(v12));
  v9 = sub_10014B28C() < 188.0;
  result = 40.0;
  if (v9)
  {
    return 32.0;
  }

  return result;
}

uint64_t sub_10040D810(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  v11 = a1 + *(result + 20);
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = 0;
  return result;
}

unint64_t sub_10040D894()
{
  result = qword_100CB6F38;
  if (!qword_100CB6F38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB6F18, &qword_100A4AA88);
    v4[0] = sub_100006F64(&qword_100CB6F40, &qword_100CB6F48, &qword_100A4AAA0, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_100006F64(&qword_100CB6F50, &qword_100CB6F58, &qword_100A4AAA8, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB6F38);
  }

  return result;
}

uint64_t sub_10040D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100022B68();
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10040A648(a1, v6, v7, a2);
}

uint64_t sub_10040D9F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_10040DA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022B68();
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  *&result = sub_10040A2F8(a1, a2, v8, a3).n128_u64[0];
  return result;
}

uint64_t sub_10040DAB4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v7 = *(a1 + 40);
  return v2(v3, v6);
}

uint64_t sub_10040DB24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10040DB80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10040DBDC(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalABWithB1x1RatioLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040DC50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100022B68();
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10040DCEC()
{
  result = qword_100CB7088;
  if (!qword_100CB7088)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB7080, &unk_100A4AD00);
    v4[0] = sub_10033CBA4();
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB7088);
  }

  return result;
}

uint64_t sub_10040DDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10040DE3C(uint64_t a1)
{
  sub_10009BEE0(319, &qword_100CACE80, &type metadata for SizingBehavior, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10009BEE0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10009BEE0(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MoonComponentViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10040DF98()
{
  result = qword_100CB7178;
  if (!qword_100CB7178)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB7150, &qword_100A4AD80);
    v4[0] = sub_10040E024();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB7178);
  }

  return result;
}

unint64_t sub_10040E024()
{
  result = qword_100CB7180;
  if (!qword_100CB7180)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB7148, &qword_100A4AD78);
    v4[0] = sub_10040E0B0();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB7180);
  }

  return result;
}

unint64_t sub_10040E0B0()
{
  result = qword_100CB7188;
  if (!qword_100CB7188)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB7170, &qword_100A4ADA0);
    v4[0] = sub_100006F64(&qword_100CB7190, &qword_100CB7198, &qword_100A4ADA8, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB7188);
  }

  return result;
}

void sub_10040E16C(__int128 *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  LODWORD(v201) = a3;
  v211 = a2;
  v213 = a4;
  v195 = type metadata accessor for Locale.NumberingSystem();
  sub_1000037C4();
  v194 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v193 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v9 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  v202 = (&v190 - v11);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  sub_1000037D8();
  v15 = v14 - v13;
  v208 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v207 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003908();
  __chkstk_darwin(v19);
  v204 = &v190 - v20;
  v206 = type metadata accessor for Locale();
  sub_1000037C4();
  v205 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003908();
  __chkstk_darwin(v24);
  v26 = &v190 - v25;
  __chkstk_darwin(v27);
  v29 = &v190 - v28;
  v210 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v209 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  v34 = &v190 - v33;
  __chkstk_darwin(v35);
  v37 = &v190 - v36;
  __chkstk_darwin(v38);
  v212 = &v190 - v39;
  __chkstk_darwin(v40);
  v42 = &v190 - v41;
  v43 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  (*(v45 + 16))(v48 - v47, v211, v43);
  v50 = (*(v45 + 88))(v49, v43);
  if (v50 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_100035B30(v203, &v219);
    v203 = v221;
    v211 = v220;
    v202 = sub_1000161C0(&v219, v220);
    v51 = *(a1 + 3);
    v191 = a1;
    if (v51)
    {
      v201 = *(a1 + 2);
    }

    else
    {
      v201 = 0;
    }

    swift_beginAccess();
    v55 = sub_10090C91C();
    v57 = v56;
    v59 = v58;
    v60 = v55;
    v61 = xmmword_100CE5890;

    sub_10040F32C(v61);
    *&v216 = v57;
    *(&v216 + 1) = v59;
    v217 = *&v60;
    sub_10090C990();
    xmmword_100CE5890 = v216;
    qword_100CE58A0 = v217;
    v62 = sub_10090C91C();
    v64 = v63;
    v66 = v65;
    v67 = v62;
    sub_10040F32C(xmmword_100CE5890);
    *&v214 = v64;
    *(&v214 + 1) = v66;
    v215 = *&v67;
    sub_10090C9D8();
    xmmword_100CE5890 = v214;
    qword_100CE58A0 = v215;
    sub_10090C91C();
    swift_endAccess();

    dispatch thunk of HumidityTitleStringBuilderType.makeAttributedHumidityString(_:symbolFont:symbolColor:symbolSpacing:)();

    sub_100006F14(&v219);
    v68 = v209;
    v69 = v210;
    (*(v209 + 16))(v212, v42, v210);
    v70 = *(v191 + 11);
    if (v70)
    {
      v211 = *(v191 + 10);
      v71 = v70;
    }

    else
    {
      v211 = 0;
      v71 = 0xE000000000000000;
    }

    if (*(v191 + 15))
    {
      v72 = *(v191 + 14);
      v73 = *(v191 + 15);
    }

    else
    {
      v72 = 0;
      v73 = 0xE000000000000000;
    }

    v219 = *v191;
    v74 = sub_100004170();
    sub_100358150(v74, v75);

    static Locale.current.getter();
    v76 = v204;
    Locale.language.getter();
    (*(v205 + 8))(v29, v206);
    v77 = Locale.Language.isUrdu.getter();
    (*(v207 + 8))(v76, v208);
    (*(v68 + 8))(v42, v69);
    v78 = v213;
    *v213 = v219;
    v79 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    (*(v68 + 32))(&v78[v79[5]], v212, v69);
    v80 = &v78[v79[6]];
    *v80 = 0;
    *(v80 + 1) = 0;
    v81 = &v78[v79[7]];
    *v81 = v211;
    v81[1] = v71;
    v82 = &v78[v79[8]];
    *v82 = 0;
    *(v82 + 1) = 0;
    v83 = &v78[v79[9]];
    *v83 = v72;
    *(v83 + 1) = v73;
    v84 = &v78[v79[10]];
    *v84 = 0;
    *(v84 + 1) = 0;
    v78[v79[11]] = v77 & 1;
    type metadata accessor for LollipopDetailViewModel(0);
    goto LABEL_17;
  }

  if (v50 == enum case for DetailChartCondition.pressure(_:))
  {
    if (*(a1 + 3))
    {
      v52 = *(a1 + 2);
      v53 = *(a1 + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    if (*(a1 + 11))
    {
      v89 = *(a1 + 10);
      v90 = *(a1 + 11);
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = *a1;
    v92 = *(a1 + 1);
LABEL_27:
    v93 = v213;
    *v213 = v91;
    *(v93 + 1) = v92;
    *(v93 + 2) = v52;
    *(v93 + 3) = v53;
    *(v93 + 4) = v89;
    *(v93 + 5) = v90;
    type metadata accessor for LollipopDetailViewModel(0);
    *(v93 + 6) = 0;
    *(v93 + 7) = 0;
    *(v93 + 32) = 0;
    swift_storeEnumTagMultiPayload();

LABEL_62:

    return;
  }

  v54 = a1;
  if (v50 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    v219 = *a1;
    v97 = sub_100004170();
    sub_100358150(v97, v98);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v99 = *(a1 + 15);
    if (v99)
    {
      v100 = *(a1 + 14);
    }

    else
    {
      v100 = 0;
    }

    if (v99)
    {
      v101 = *(a1 + 15);
    }

    else
    {
      v101 = 0xE000000000000000;
    }

    v102 = v213;
    *v213 = v219;
    v103 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v105(&v102[v104], v37, v210);
    v106 = &v102[v103[6]];
    *v106 = 0;
    *(v106 + 1) = 0;
    v107 = &v102[v103[7]];
    *v107 = 0;
    *(v107 + 1) = 0xE000000000000000;
    v108 = &v102[v103[8]];
    *v108 = 0;
    *(v108 + 1) = 0;
    v109 = &v102[v103[9]];
    *v109 = v100;
    *(v109 + 1) = v101;
    v110 = &v102[v103[10]];
    *v110 = 0;
    *(v110 + 1) = 0;
    v102[v103[11]] = 0;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_62;
  }

  if (v50 == enum case for DetailChartCondition.temperature(_:))
  {
    v219 = a1[2];
    v85 = *(&v219 + 1);
    if (*(&v219 + 1))
    {
      v86 = v219;
      if (*(a1 + 3))
      {
        v87 = *(a1 + 2);
        v88 = *(a1 + 3);
      }

      else
      {
        v87 = 0;
        v88 = 0xE000000000000000;
      }

      v113 = *(a1 + 1);
      v114 = *(a1 + 10);
      v115 = *(a1 + 11);
      v116 = v213;
      *v213 = *a1;
      *(v116 + 1) = v113;
      *(v116 + 2) = v87;
      *(v116 + 3) = v88;
      *(v116 + 4) = v86;
      *(v116 + 5) = v85;
      *(v116 + 6) = v114;
      *(v116 + 7) = v115;
      *(v116 + 32) = 0;
      type metadata accessor for LollipopDetailViewModel(0);
      swift_storeEnumTagMultiPayload();
      v117 = sub_100004170();
      sub_10040F2BC(v117, v118);
    }

    else
    {
      if (*(a1 + 3))
      {
        v111 = *(a1 + 2);
        v112 = *(a1 + 3);
      }

      else
      {
        v111 = 0;
        v112 = 0xE000000000000000;
      }

      v136 = *(a1 + 1);
      v137 = *(a1 + 10);
      v138 = *(a1 + 11);
      v139 = v213;
      *v213 = *a1;
      *(v139 + 1) = v136;
      *(v139 + 2) = v111;
      *(v139 + 3) = v112;
      *(v139 + 4) = v137;
      *(v139 + 5) = v138;
      type metadata accessor for LollipopDetailViewModel(0);
      swift_storeEnumTagMultiPayload();
    }

LABEL_61:

    goto LABEL_62;
  }

  if (v50 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v219 = *a1;
    v94 = *(a1 + 3);
    if (v94)
    {
      v95 = sub_100004170();
      sub_100358150(v95, v96);

      sub_100022B88();
      sub_100005C78(v15, 0);
      (*(v209 + 32))(v34, v15, v94);
    }

    else
    {
      v119 = v202;
      v120 = sub_10000C7F0();
      sub_100005C78(v120, v121);

      AttributedString.init(stringLiteral:)();
      v122 = sub_10000C7F0();
      if (sub_100024D10(v122, v123, 0) != 1)
      {
        sub_10040F254(v119);
      }
    }

    if (*(a1 + 5))
    {
      v124 = *(a1 + 4);
      v125 = *(a1 + 5);
    }

    else
    {
      v124 = 0;
      v125 = 0xE000000000000000;
    }

    if (*(v54 + 15))
    {
      v126 = *(v54 + 14);
      v127 = *(v54 + 15);
    }

    else
    {
      v126 = 0;
      v127 = 0xE000000000000000;
    }

    v218 = v54[5];
    v128 = v213;
    *v213 = v219;
    v129 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v131(&v128[v130], v34, v210);
    v132 = &v128[v129[6]];
    *v132 = 0;
    *(v132 + 1) = 0;
    v133 = &v128[v129[7]];
    *v133 = v124;
    *(v133 + 1) = v125;
    *&v128[v129[8]] = v218;
    v134 = &v128[v129[9]];
    *v134 = v126;
    *(v134 + 1) = v127;
    v135 = &v128[v129[10]];
    *v135 = 0;
    *(v135 + 1) = 0;
    v128[v129[11]] = 0;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();

    sub_10040F2BC(&v218, &v216);
    goto LABEL_62;
  }

  if (v50 == enum case for DetailChartCondition.uvIndex(_:) || v50 == enum case for DetailChartCondition.visibility(_:))
  {
    if (*(a1 + 3))
    {
      v52 = *(a1 + 2);
      v53 = *(a1 + 3);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    if (*(a1 + 11))
    {
      v89 = *(a1 + 10);
      v90 = *(a1 + 11);
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = *a1;
    v92 = *(a1 + 1);
    goto LABEL_27;
  }

  if (v50 == enum case for DetailChartCondition.wind(_:))
  {
    v219 = *a1;
    v140 = *(a1 + 3);
    if (v140)
    {
      v141 = sub_100004170();
      sub_100358150(v141, v142);

      sub_100022B88();
      sub_100005C78(v15, 0);
      v143 = v198;
      (*(v209 + 32))(v198, v15, v140);
    }

    else
    {
      v149 = v200;
      v150 = sub_10000C7F0();
      sub_100005C78(v150, v151);

      v143 = v198;
      AttributedString.init(stringLiteral:)();
      v152 = sub_10000C7F0();
      if (sub_100024D10(v152, v153, 0) != 1)
      {
        sub_10040F254(v149);
      }
    }

    if (*(a1 + 11))
    {
      v154 = *(a1 + 10);
      v155 = *(a1 + 11);
    }

    else
    {
      v154 = 0;
      v155 = 0xE000000000000000;
    }

    if (*(v54 + 15))
    {
      v156 = *(v54 + 14);
      v157 = *(v54 + 15);
    }

    else
    {
      v156 = 0;
      v157 = 0xE000000000000000;
    }

    v158 = v213;
    *v213 = v219;
    v159 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
    sub_1000085AC();
    v161(&v158[v160], v143, v210);
    v162 = &v158[v159[6]];
    *v162 = 0;
    *(v162 + 1) = 0;
    v163 = &v158[v159[7]];
    *v163 = v154;
    *(v163 + 1) = v155;
    v164 = &v158[v159[8]];
    *v164 = 0;
    *(v164 + 1) = 0;
    v165 = &v158[v159[9]];
    *v165 = v156;
    *(v165 + 1) = v157;
    v166 = &v158[v159[10]];
    *v166 = 0;
    *(v166 + 1) = 0;
    v158[v159[11]] = v201 & 1;
    type metadata accessor for LollipopDetailViewModel(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_61;
  }

  if (v50 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v144 = *(a1 + 3);
    v145 = v208;
    v146 = v207;
    v147 = v206;
    v148 = v205;
    if (v144)
    {
      v212 = *(v54 + 2);
      v211 = v144;
    }

    else
    {
      v212 = 0;
      v211 = 0xE000000000000000;
    }

    v167 = *(v54 + 11);
    if (v167)
    {
      v210 = *(v54 + 10);
      v209 = v167;
    }

    else
    {
      v210 = 0;
      v209 = 0xE000000000000000;
    }

    v168 = v54;
    v169 = *v54;
    v170 = *(v168 + 1);

    static Locale.current.getter();
    v171 = v199;
    Locale.language.getter();
    v172 = *(v148 + 8);
    v172(v26, v147);
    v173 = Locale.Language.isUrdu.getter();
    v174 = v147;
    v175 = *(v146 + 8);
    v175(v171, v145);
    v176 = 1;
    if (v173)
    {
      goto LABEL_93;
    }

    v177 = v196;
    static Locale.current.getter();
    v178 = v197;
    Locale.language.getter();
    v172(v177, v174);
    LOBYTE(v177) = Locale.Language.isArabic.getter();
    v175(v178, v145);
    if (v177)
    {
      v179 = v192;
      static Locale.current.getter();
      v180 = v193;
      Locale.numberingSystem.getter();
      v172(v179, v174);
      v181 = Locale.NumberingSystem.identifier.getter();
      v183 = v182;
      (*(v194 + 8))(v180, v195);
      if (v181 != 1650553441 || v183 != 0xE400000000000000)
      {
        v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v176 = v185 ^ 1;
LABEL_93:
        v186 = v212;
        v187 = v213;
        *v213 = v169;
        *(v187 + 1) = v170;
        v188 = v211;
        *(v187 + 2) = v186;
        *(v187 + 3) = v188;
        v189 = v209;
        *(v187 + 4) = v210;
        *(v187 + 5) = v189;
        *(v187 + 6) = 0;
        *(v187 + 7) = 0;
        v187[64] = 1;
        v187[65] = v176 & 1;
        type metadata accessor for LollipopDetailViewModel(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        return;
      }
    }

    v176 = 0;
    goto LABEL_93;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10040F254(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040F2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6078, &unk_100A30870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F32C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10040F380()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD28 = result;
  return result;
}

uint64_t sub_10040F3B8()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100D8FD30 = result;
  return result;
}

uint64_t sub_10040F3F8()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100D8FD38 = result;
  return result;
}

uint64_t sub_10040F438()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100D8FD40 = result;
  return result;
}

BOOL sub_10040F4A8(void *a1, void *a2)
{
  type metadata accessor for WeatherCondition();
  sub_100005C98();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_10022C350(&qword_100CB7300, &qword_100A4AF90);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (v18 || (v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v19 & 1) != 0))
  {
    v21 = *(type metadata accessor for ConditionPickerMenuViewModel.Row(0) + 20);
    v22 = *(v14 + 48);
    sub_100108724(a1 + v21, v17);
    sub_100108724(a2 + v21, &v17[v22]);
    sub_100003A40(v17);
    if (v18)
    {
      sub_100003A40(&v17[v22]);
      if (v18)
      {
        sub_1000180EC(v17, &qword_100CA2CD8, &unk_100A2C420);
        return 1;
      }
    }

    else
    {
      sub_100108724(v17, v13);
      sub_100003A40(&v17[v22]);
      if (!v23)
      {
        (*(v6 + 32))(v10, &v17[v22], v2);
        sub_10040F744();
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v6 + 8);
        v25(v10, v2);
        v25(v13, v2);
        sub_1000180EC(v17, &qword_100CA2CD8, &unk_100A2C420);
        return (v24 & 1) != 0;
      }

      (*(v6 + 8))(v13, v2);
    }

    sub_1000180EC(v17, &qword_100CB7300, &qword_100A4AF90);
    return 0;
  }

  return result;
}

unint64_t sub_10040F744()
{
  result = qword_100CAA7D8;
  if (!qword_100CAA7D8)
  {
    v3 = type metadata accessor for WeatherCondition();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherCondition, v3, v0, v1);
    atomic_store(result, &qword_100CAA7D8);
  }

  return result;
}

uint64_t sub_10040F79C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = type metadata accessor for LocationFooterAction(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  *&v66 = v6 - v5;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  *&v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  *&v67 = &v64 - v10;
  v11 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Location();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for LocationViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CB73D8, &unk_100A4B030);
  sub_1000037C4();
  v69 = v28;
  v70 = v27;
  __chkstk_darwin(v27);
  v68 = &v64 - v29;
  sub_100410188(v2, v26, type metadata accessor for LocationViewAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
      v40 = v26 + *(v39 + 48);
      v41 = *v40;
      v64 = *(v40 + 16);
      v66 = v41;
      v42 = *(v40 + 32);
      v43 = *(v39 + 64);
      sub_100410128(v26, v15, type metadata accessor for LocationComponentAction);
      v44 = v67;
      sub_100237E84(v26 + v43, v67);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v46 = sub_100005CB0(inited, xmmword_100A3BBA0);
      v46[4].n128_u64[1] = v11;
      v47 = sub_100042FB0(&v46[3]);
      sub_100410188(v15, v47, type metadata accessor for LocationComponentAction);
      sub_10000FF1C();
      if (v42)
      {
        *(inited + 120) = &type metadata for String;
        *(inited + 96) = 0;
        *(inited + 104) = 0xE000000000000000;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v73 = v56;
        v57 = swift_allocObject();
        *&v72 = v57;
        v58 = v64;
        *(v57 + 16) = v66;
        *(v57 + 32) = v58;
        sub_100166170(&v72, (inited + 96));
      }

      v50 = v69;
      v49 = v70;
      v26 = v68;
      v59 = v65;
      *(inited + 128) = 1702125924;
      *(inited + 136) = 0xE400000000000000;
      sub_1000D47CC(v44, v59);
      v60 = type metadata accessor for Date();
      if (sub_100024D10(v59, 1, v60) == 1)
      {
        sub_1001AEDF4(v59);
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = 0;
        *(inited + 152) = 0xE000000000000000;
      }

      else
      {
        v73 = v60;
        v61 = sub_100042FB0(&v72);
        (*(*(v60 - 8) + 32))(v61, v59, v60);
        sub_100166170(&v72, (inited + 144));
      }

      v48 = v71;
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      ShortDescription.init(name:_:)();
      sub_1001AEDF4(v44);
      v54 = type metadata accessor for LocationComponentAction;
      v55 = v15;
      goto LABEL_18;
    case 2u:
      v32 = v26 + *(sub_10022C350(&qword_100CA6648, &unk_100A31470) + 48);
      v33 = *v32;
      v65 = *(v32 + 16);
      v67 = v33;
      v34 = *(v32 + 32);
      v35 = v66;
      sub_100410128(v26, v66, type metadata accessor for LocationFooterAction);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v36 = swift_initStackObject();
      v37 = sub_100005CB0(v36, xmmword_100A2D320);
      v37[4].n128_u64[1] = v3;
      v38 = sub_100042FB0(&v37[3]);
      sub_100410188(v35, v38, type metadata accessor for LocationFooterAction);
      sub_10000FF1C();
      if (v34)
      {
        *(v36 + 120) = &type metadata for String;
        *(v36 + 96) = 0;
        *(v36 + 104) = 0xE000000000000000;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v73 = v51;
        v52 = swift_allocObject();
        *&v72 = v52;
        v53 = v65;
        *(v52 + 16) = v67;
        *(v52 + 32) = v53;
        sub_100166170(&v72, (v36 + 96));
      }

      v49 = v70;
      v48 = v71;
      v26 = v68;
      v50 = v69;
      Dictionary.init(dictionaryLiteral:)();
      sub_10000417C();
      ShortDescription.init(name:_:)();
      v54 = type metadata accessor for LocationFooterAction;
      v55 = v35;
LABEL_18:
      sub_1004101E8(v55, v54);
      goto LABEL_19;
    case 3u:
    case 5u:
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000085C0();
      v26 = v68;
      goto LABEL_9;
    case 4u:
      Dictionary.init(dictionaryLiteral:)();
      sub_100014630();
LABEL_9:
      ShortDescription.init(name:_:)();
      break;
    default:
      (*(v18 + 32))(v22, v26, v16);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_100A2C3F0;
      *(v30 + 32) = 0x6E6F697461636F6CLL;
      *(v30 + 40) = 0xE800000000000000;
      *(v30 + 72) = v16;
      v31 = sub_100042FB0((v30 + 48));
      (*(v18 + 16))(v31, v22, v16);
      Dictionary.init(dictionaryLiteral:)();
      sub_100014630();
      ShortDescription.init(name:_:)();
      (*(v18 + 8))(v22, v16);
      break;
  }

  v49 = v70;
  v48 = v71;
  v50 = v69;
LABEL_19:
  v48[3] = v49;
  v48[4] = sub_1004100C4();
  v62 = sub_100042FB0(v48);
  return (*(v50 + 32))(v62, v26, v49);
}

uint64_t sub_100410038(uint64_t a1)
{
  sub_100410240(&qword_100CB73E8, aY_58);

  return ShortDescribable.description.getter();
}

unint64_t sub_1004100C4()
{
  result = qword_100CB73E0;
  if (!qword_100CB73E0)
  {
    v3 = sub_10022E824(&qword_100CB73D8, &unk_100A4B030);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB73E0);
  }

  return result;
}

uint64_t sub_100410128(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100410188(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004101E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100410240(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LocationViewAction(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsAuthorizationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100410350(uint64_t a1)
{
  sub_10041038C();

  return ShortDescribable.description.getter();
}

unint64_t sub_10041038C()
{
  result = qword_100CB7408;
  if (!qword_100CB7408)
  {
    result = swift_getWitnessTable(byte_100A4B090, &type metadata for PredictedLocationsAuthorizationAction, v0, v1);
    atomic_store(result, &qword_100CB7408);
  }

  return result;
}

Weather::PredictedLocationsAuthorizationState_optional __swiftcall PredictedLocationsAuthorizationState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C439F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t PredictedLocationsAuthorizationState.rawValue.getter(char a1)
{
  result = 0x7265746544746F6ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x64656C62616E65;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

Weather::PredictedLocationsAuthorizationState_optional sub_100410534@<W0>(Swift::String *a1@<X0>, Weather::PredictedLocationsAuthorizationState_optional *a2@<X8>)
{
  result.value = PredictedLocationsAuthorizationState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_100410564@<X0>(unint64_t *a1@<X8>)
{
  result = PredictedLocationsAuthorizationState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100410670()
{
  result = qword_100CB7420;
  if (!qword_100CB7420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CB7420);
  }

  return result;
}

uint64_t sub_1004106C4(uint64_t a1)
{
  sub_1004107CC();

  return ShortDescribable.description.getter();
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsAuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004107CC()
{
  result = qword_100CB7430;
  if (!qword_100CB7430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CB7430);
  }

  return result;
}

unint64_t sub_100410820()
{
  result = qword_100CB7438;
  if (!qword_100CB7438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PredictedLocationsAuthorizationState, &type metadata for PredictedLocationsAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CB7438);
  }

  return result;
}

BOOL sub_100410884(unint64_t a1, char a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v11 = a1 >> 24;
  v12 = a4 >> 24;
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (a1 == 3)
  {
    if (a4 != 3)
    {
      return 0;
    }

LABEL_6:
    if (v12 != v11)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if ((a4 & 0xFE) == 2 || ((a4 ^ a1) & 1) != 0 || ((a1 >> 8) & 1) != ((a4 >> 8) & 1))
  {
    return 0;
  }

  v27 = a6;
  v20 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a1));
  v22 = v21;
  if (v20 != PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a4)) || v22 != v23)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a6 = v27;
    if ((v25 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  a6 = v27;
  if (v12 != v11)
  {
    return 0;
  }

LABEL_7:
  if ((BYTE4(a1) & 1) != (BYTE4(a4) & 1) || ((a1 >> 40) & 1) != ((a4 >> 40) & 1))
  {
    return 0;
  }

  v13 = a6;
  v14 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE6(a1));
  v16 = v15;
  if (v14 == PredictedLocationsAuthorizationState.rawValue.getter(SBYTE6(a4)) && v16 == v17)
  {

    if ((HIBYTE(a1) & 1) != (HIBYTE(a4) & 1))
    {
      return 0;
    }
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0 || (HIBYTE(a1) & 1) != (HIBYTE(a4) & 1))
    {
      return 0;
    }
  }

  if (a2 == a5)
  {
    type metadata accessor for WeatherMenuTipMutableAttributes();
    return sub_1008730C8(a3, v13);
  }

  return 0;
}

BOOL sub_100410AB8(unsigned int *a1, unsigned int *a2)
{
  v2 = &_mh_execute_header;
  if (a1[1])
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (*(a1 + 5))
  {
    v5 = 0x10000000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  if ((a2[1] & 1) == 0)
  {
    v2 = 0;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    v4 = 0;
  }

  if ((*(a2 + 7) & 1) == 0)
  {
    v6 = 0;
  }

  return sub_100410884(*a1 | (*(a1 + 6) << 48) | v3 | v5 | v7, *(a1 + 8), *(a1 + 2), *a2 | (*(a2 + 6) << 48) | v2 | v4 | v6, *(a2 + 8), *(a2 + 2));
}

uint64_t sub_100410B50@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a3;
  v112 = a2;
  v106 = a5;
  v7 = sub_10022C350(&qword_100CB5E10, &unk_100A49640);
  __chkstk_darwin(v7 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  v113 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v115 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  v116 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003878();
  v119 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v22 = &v100 - v21;
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  __chkstk_darwin(v26);
  v120 = &v100 - v27;
  sub_10022C350(&qword_100CB74D8, &qword_100A4B400);
  sub_1000037E8();
  __chkstk_darwin(v28);
  v30 = &v100 - v29;
  v121 = sub_10022C350(&qword_100CB74E0, &unk_100A4B408);
  v117 = *(v121 - 8);
  __chkstk_darwin(v121);
  v32 = &v100 - v31;
  v33 = sub_10022C350(&qword_100CB5E00, &qword_100A49630);
  __chkstk_darwin(v33 - 8);
  sub_100003848();
  v114 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v118 = &v100 - v36;
  TipGroup.currentTip.getter();
  v109 = HIWORD(a1);
  v110 = a1;
  v108 = v25;
  if (v124)
  {
    v37 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_1000196F4(v37, v38, v37))
    {
      v39 = v122;
      v40 = BYTE1(v122);
      v41 = a4;
      v101 = v32;
      v42 = BYTE2(v122);
      v124 = &type metadata for NotificationsOptInListTip;
      v125 = sub_100235784();
      LOBYTE(v123[0]) = v39;
      v25 = v108;
      BYTE1(v123[0]) = v40;
      BYTE2(v123[0]) = v42;
      sub_10003716C();
      v43 = swift_allocObject();
      v44 = v110;
      *(v43 + 18) = v109;
      *(v43 + 16) = v44;
      *(v43 + 19) = HIBYTE(a1);
      v45 = v111;
      *(v43 + 24) = v112;
      *(v43 + 32) = v45;
      *(v43 + 40) = a4;
      swift_unknownObjectRetain();

      TipView.init<>(_:isPresented:arrowEdge:action:)();
      v46 = v117;
      v47 = v121;
      (*(v117 + 16))(v30, v101, v121);
      swift_storeEnumTagMultiPayload();
      sub_100014644(&qword_100CB7500, &qword_100CB74E0, &unk_100A4B408);
      v48 = v118;
      _ConditionalContent<>.init(storage:)();
      v49 = v46;
      v32 = v101;
      (*(v49 + 8))(v101, v47);
LABEL_8:
      v56 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  TipGroup.currentTip.getter();
  if (v124)
  {
    v50 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_10000FF3C(v50))
    {
      v124 = &type metadata for NotificationsResubscriptionListTip;
      v125 = sub_100235A48();
      sub_10003716C();
      v51 = swift_allocObject();
      *(sub_10001C17C(v51) + 40) = a4;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      v52 = v32;
      v53 = v117;
      v54 = v121;
      (*(v117 + 16))(v30, v52, v121);
      swift_storeEnumTagMultiPayload();
      sub_100014644(&qword_100CB7500, &qword_100CB74E0, &unk_100A4B408);
      v48 = v118;
      _ConditionalContent<>.init(storage:)();
      v55 = v53;
      v32 = v52;
      (*(v55 + 8))(v52, v54);
      v41 = a4;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v41 = a4;
  v56 = 1;
  v48 = v118;
LABEL_11:
  v57 = sub_10022C350(&qword_100CB74F0, &qword_100A4B420);
  sub_10001B350(v48, v56, 1, v57);
  TipGroup.currentTip.getter();
  if (v124)
  {
    v58 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_1000196F4(v58, v59, v58))
    {
      v60 = v122;
      v124 = &type metadata for PredictedLocationsNotificationOptInListTip;
      v125 = sub_1002359F4();
      LOBYTE(v123[0]) = v60;
      sub_10003716C();
      v61 = swift_allocObject();
      *(sub_10001C17C(v61) + 40) = v41;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      v62(v120, v32, v121);
      v63 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v63 = 1;
LABEL_16:
  sub_10001B350(v120, v63, 1, v121);
  TipGroup.currentTip.getter();
  if (v124)
  {
    v64 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_10000FF3C(v64))
    {
      v124 = &type metadata for HomeAndWorkAddedTip;
      v125 = sub_100235AF0();
      sub_10003716C();
      v65 = swift_allocObject();
      *(sub_10001C17C(v65) + 40) = v41;

      swift_unknownObjectRetain();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      v66(v25, v32, v121);
      v67 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v67 = 1;
LABEL_21:
  v68 = v25;
  v69 = v121;
  sub_100028464(v68, v67, 1);
  if (v124)
  {
    v70 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_10000FF3C(v70))
    {
      v124 = &type metadata for HomeAndWorkUpdatedTip;
      v125 = sub_100235A9C();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      sub_10003140C();
      v71();
      v72 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v72 = 1;
LABEL_26:
  sub_100028464(v22, v72, 1);
  if (v124)
  {
    v73 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_10000FF3C(v73))
    {
      v124 = &type metadata for HomeUpdatedTip;
      v125 = sub_1002359A0();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_1000137C8();
      sub_10003140C();
      v74();
      v75 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v75 = 1;
LABEL_31:
  sub_100028464(v119, v75, 1);
  if (v124)
  {
    v76 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
    if (sub_10000FF3C(v76))
    {
      v124 = &type metadata for WorkUpdatedTip;
      v125 = sub_10023594C();
      sub_10001EC18();
      TipView.init<>(_:isPresented:arrowEdge:action:)();
      sub_10003140C();
      v77();
      v78 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
  }

  v78 = 1;
LABEL_36:
  sub_100028464(v116, v78, 1);
  if (!v124)
  {
    sub_1000180EC(v123, &qword_100CB74E8, &qword_100A4B418);
    goto LABEL_40;
  }

  v79 = sub_10022C350(&qword_100CB74F8, &qword_100A4B428);
  if ((sub_1000196F4(v79, v80, v79) & 1) == 0)
  {
LABEL_40:
    v86 = v118;
    v85 = 1;
    goto LABEL_41;
  }

  v81 = v122;
  v124 = &type metadata for AddWeatherMenuListTip;
  v125 = sub_1002358F8();
  v123[0] = v81;
  v82 = swift_allocObject();
  v83 = sub_10001C17C(v82);
  *(v83 + 40) = v41;
  *(v83 + 48) = v81;
  v69 = v121;

  swift_unknownObjectRetain();
  sub_10001EC18();
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  sub_10003140C();
  v84();
  v85 = 0;
  v86 = v118;
LABEL_41:
  v87 = v107;
  sub_10001B350(v107, v85, 1, v69);
  v88 = v114;
  sub_100035AD0(v86, v114, &qword_100CB5E00, &qword_100A49630);
  v123[0] = v88;
  v89 = v87;
  v90 = v115;
  sub_100016934(v120, v115);
  v123[1] = v90;
  v91 = v108;
  v92 = v113;
  sub_100016934(v108, v113);
  v123[2] = v92;
  v93 = v103;
  sub_100016934(v22, v103);
  v124 = v93;
  v94 = v104;
  sub_100016934(v119, v104);
  v125 = v94;
  v95 = v22;
  v96 = v116;
  v97 = v102;
  sub_100016934(v116, v102);
  v126 = v97;
  v98 = v105;
  sub_100016934(v89, v105);
  v127 = v98;
  sub_1003E88A8(v123);
  sub_100022BA8(v89);
  sub_100022BA8(v96);
  sub_100022BA8(v119);
  sub_100022BA8(v95);
  sub_100022BA8(v91);
  sub_100022BA8(v120);
  sub_1000180EC(v118, &qword_100CB5E00, &qword_100A49630);
  sub_100022BA8(v98);
  sub_100022BA8(v97);
  sub_100022BA8(v94);
  sub_100022BA8(v93);
  sub_100022BA8(v113);
  sub_100022BA8(v115);
  return sub_1000180EC(v114, &qword_100CB5E00, &qword_100A49630);
}

uint64_t sub_1004117A0()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1008CA570(4);
  (*(v1 + 104))(v3, enum case for Tips.InvalidationReason.actionPerformed(_:), v0);
  sub_100235AF0();
  Tip.invalidate(reason:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004118A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for Tips.InvalidationReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006503EC();
  v12[1] = a6;
  (*(v8 + 104))(v10, enum case for Tips.InvalidationReason.actionPerformed(_:), v7);
  sub_1002358F8();
  Tip.invalidate(reason:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100411AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x637365446F726568 && a2 == 0xEF6E6F6974706972)
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

uint64_t sub_100411BBC(char a1)
{
  if (a1)
  {
    return 0x637365446F726568;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

BOOL sub_100411C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10022C350(&qword_100CB7680, &unk_100A9B3C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_1005FEA54();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0) + 20);
  v20 = *(v14 + 48);
  sub_1003485B0(a1 + v19, v17);
  sub_1003485B0(a2 + v19, &v17[v20]);
  sub_100003A40(v17);
  if (v21)
  {
    sub_100003A40(&v17[v20]);
    if (v21)
    {
      sub_1000180EC(v17, &qword_100CAE8E8, &unk_100A49400);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1003485B0(v17, v13);
  sub_100003A40(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
LABEL_10:
    sub_1000180EC(v17, &qword_100CB7680, &unk_100A9B3C0);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  sub_10001EC38();
  sub_100412640(v23, v24, &protocol conformance descriptor for WeatherDescription);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v13, v4);
  sub_1000180EC(v17, &qword_100CAE8E8, &unk_100A49400);
  return (v25 & 1) != 0;
}

uint64_t sub_100411EA4(void *a1)
{
  v3 = sub_10022C350(&qword_100CB76A8, &qword_100A4B5D8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_10041245C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_10000FF5C();
  sub_100412640(v9, v10, byte_100A6A4D8);
  sub_1000041A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    v14[14] = 1;
    type metadata accessor for WeatherDescription();
    sub_10001EC38();
    sub_100412640(v11, v12, &protocol conformance descriptor for WeatherDescription);
    sub_1000041A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10041205C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v29 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v30 = v9 - v8;
  sub_10022C350(&qword_100CB7690, &qword_100A4B5D0);
  sub_1000037C4();
  v31 = v11;
  v32 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_10041245C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = a1;
  v18 = v17;
  v34 = 0;
  sub_10000FF5C();
  sub_100412640(v19, v20, byte_100A6A500);
  v21 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1004124B0(v21, v18);
  type metadata accessor for WeatherDescription();
  v33 = 1;
  sub_10001EC38();
  sub_100412640(v22, v23, &protocol conformance descriptor for WeatherDescription);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = sub_100004190();
  v25(v24);
  sub_100412514(v6, v18 + *(v13 + 20));
  sub_100412584(v18, v28);
  sub_100006F14(v27);
  return sub_1004125E8(v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
}

uint64_t sub_100412388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100411AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004123B0(uint64_t a1)
{
  v2 = sub_10041245C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004123EC(uint64_t a1)
{
  v2 = sub_10041245C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10041245C()
{
  result = qword_100CB7698;
  if (!qword_100CB7698)
  {
    result = swift_getWitnessTable(aM_44, &type metadata for HourlyForecastComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB7698);
  }

  return result;
}

uint64_t sub_1004124B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100412514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100412584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004125E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100412640(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100412768()
{
  result = qword_100CB76B8;
  if (!qword_100CB76B8)
  {
    result = swift_getWitnessTable(byte_100A4B67C, &type metadata for HourlyForecastComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB76B8);
  }

  return result;
}

unint64_t sub_1004127C0()
{
  result = qword_100CB76C0;
  if (!qword_100CB76C0)
  {
    result = swift_getWitnessTable(byte_100A4B5EC, &type metadata for HourlyForecastComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB76C0);
  }

  return result;
}

unint64_t sub_100412818()
{
  result = qword_100CB76C8;
  if (!qword_100CB76C8)
  {
    result = swift_getWitnessTable(byte_100A4B614, &type metadata for HourlyForecastComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB76C8);
  }

  return result;
}

void sub_1004128B4(uint64_t a1)
{
  sub_10010F394(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    sub_10008169C(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
      if (v3 <= 0x3F)
      {
        sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ListLocationViewModel(319);
          if (v5 <= 0x3F)
          {
            sub_10013B178(319);
            if (v6 <= 0x3F)
            {
              sub_10013DB50();
              if (v7 <= 0x3F)
              {
                sub_10008169C(319, &qword_100CB3B28, &type metadata for Bool, &type metadata accessor for Binding);
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

void sub_100412A78()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ListLocationRowView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  sub_10022C350(&qword_100CB7788, &unk_100A4B7A0);
  sub_1004144DC(v1, v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLocationRowView);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_10041F478(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ListLocationRowView);
  sub_10022C350(&qword_100CB7790, &qword_100A4B7B0);
  v14 = sub_10022E824(&qword_100CB7798, &qword_100A4B7B8);
  v15 = sub_100414370();
  v21[0] = v14;
  v21[1] = &type metadata for Bool;
  v21[2] = v15;
  v21[3] = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  ScrollEventStateReader.init(content:)();
  v16 = *(v9 + 40);
  v17 = (v1 + *(type metadata accessor for ListLocationViewModel(0) + 24) + v16);
  v18 = v17[1];
  *v7 = *v17;
  v7[1] = v18;
  type metadata accessor for AutomationCellInfo(0);
  sub_1000201F8();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v19 = v3 + *(sub_10022C350(&qword_100CB77C0, &qword_100A4B7C8) + 36);
  v20 = type metadata accessor for AutomationInfoProperty(0);
  sub_1004144DC(v7, v19 + *(v20 + 24), type metadata accessor for AutomationInfo);

  sub_10041F4D4(v7, type metadata accessor for AutomationInfo);
  *v19 = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 16) = swift_getKeyPath();
  *(v19 + 24) = 0;
  *(v3 + *(sub_10022C350(&qword_100CB77C8, &qword_100A4B7F8) + 36)) = 1;
  sub_10000536C();
}

uint64_t sub_100412D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v98 = a3;
  v96 = type metadata accessor for ScrollEventState();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v4;
  v94 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Location.Identifier();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10022C350(&qword_100CADD58, &unk_100A3E650) - 8;
  __chkstk_darwin(v80);
  v78 = &v74 - v6;
  v7 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v7 - 8);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v74 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocationRowButtonStyle(0);
  __chkstk_darwin(v16);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ListLocationRowView(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v86 = sub_10022C350(&qword_100CB77A8, &qword_100A4B7C0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v23 = &v74 - v22;
  v89 = sub_10022C350(&qword_100CB77D0, &qword_100A4B800);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v74 - v24;
  v90 = sub_10022C350(&qword_100CB7798, &qword_100A4B7B8);
  __chkstk_darwin(v90);
  v91 = &v74 - v25;
  sub_1004144DC(a2, &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLocationRowView);
  v26 = *(v20 + 80);
  v27 = (v26 + 16) & ~v26;
  v101 = v27 + v21;
  v85 = v26 | 7;
  v28 = swift_allocObject();
  v87 = v27;
  v92 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041F478(v92, v28 + v27, type metadata accessor for ListLocationRowView);
  v104 = a2;
  sub_10022C350(&qword_100CB77D8, &qword_100A4B808);
  sub_100422A78(&qword_100CB77E0, &qword_100CB77D8);
  v83 = v23;
  v29 = v78;
  Button.init(action:label:)();
  v30 = v19[7];
  v100 = *(a2 + v19[6]);
  sub_100035B30(a2 + v30, &v111);
  v31 = v19[8];
  v82 = v15;
  sub_1004144DC(a2 + v31, v15, type metadata accessor for ListLocationViewModel);
  v79 = *(a2 + v19[10]);
  swift_unknownObjectRetain();
  v32 = v77;
  sub_1000E7B34();
  v102 = a2;
  v33 = v99;
  v34 = v81;
  LocationModel.identifier.getter();
  sub_10001B350(v33, 0, 1, v34);
  v35 = *(v80 + 56);
  sub_10011C0F0(v32, v29, &qword_100CADBA0, &qword_100A3D250);
  sub_1000302D8(v33, v29 + v35, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v29, 1, v34) != 1)
  {
    v37 = v75;
    sub_1000302D8(v29, v75, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(v29 + v35, 1, v34) != 1)
    {
      v38 = v76;
      v39 = v74;
      (*(v76 + 32))(v74, v29 + v35, v34);
      sub_10041F594(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      v40 = v37;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v39, v34);
      sub_100018198(v99, &qword_100CADBA0);
      v41(v40, v34);
      sub_100018198(v29, &qword_100CADBA0);
      goto LABEL_8;
    }

    sub_100018198(v33, &qword_100CADBA0);
    (*(v76 + 8))(v37, v34);
    goto LABEL_6;
  }

  sub_100018198(v33, &qword_100CADBA0);
  if (sub_100024D10(v29 + v35, 1, v34) != 1)
  {
LABEL_6:
    sub_100018198(v29, &qword_100CADD58);
    v36 = 0;
    goto LABEL_8;
  }

  sub_100018198(v29, &qword_100CADBA0);
  v36 = 1;
LABEL_8:
  v42 = v102;
  v43 = (v102 + v19[5]);
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v108) = v44;
  v109 = v45;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v46 = v105;
  v47 = v42 + v19[12];
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v47) = *(v47 + 16);
  v108 = v48;
  v109 = v49;
  v110 = v47;
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.projectedValue.getter();
  v50 = v105;
  v51 = v106;
  v52 = v107;
  *(v18 + v16[14]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  *v18 = v100;
  sub_100013188(&v111, (v18 + 1));
  sub_10041F478(v82, v18 + v16[6], type metadata accessor for ListLocationViewModel);
  *(v18 + v16[7]) = v79;
  *(v18 + v16[8]) = v36 & 1;
  *(v18 + v16[9]) = v46;
  v53 = v18 + v16[10];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v54 = v109;
  *v53 = v108;
  *(v53 + 1) = v54;
  v55 = v18 + v16[11];
  LOBYTE(v105) = 1;
  State.init(wrappedValue:)();
  v56 = v109;
  *v55 = v108;
  *(v55 + 1) = v56;
  v57 = v18 + v16[12];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v58 = v109;
  *v57 = v108;
  *(v57 + 1) = v58;
  v59 = v18 + v16[13];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = v18 + v16[15];
  *v60 = v50;
  *(v60 + 1) = v51;
  v60[16] = v52;
  sub_100422A78(&qword_100CB77B0, &qword_100CB77A8);
  sub_10041F594(&qword_100CB77B8, type metadata accessor for LocationRowButtonStyle);
  v61 = v86;
  v62 = v83;
  View.buttonStyle<A>(_:)();
  sub_10041F4D4(v18, type metadata accessor for LocationRowButtonStyle);
  (*(v84 + 8))(v62, v61);
  *&v100 = type metadata accessor for ListLocationRowView;
  v63 = v92;
  sub_1004144DC(v42, v92, type metadata accessor for ListLocationRowView);
  v64 = v95;
  v65 = v94;
  v66 = v96;
  (*(v95 + 16))(v94, v97, v96);
  v67 = (v101 + *(v64 + 80)) & ~*(v64 + 80);
  v68 = swift_allocObject();
  v69 = v87;
  sub_10041F478(v63, v68 + v87, type metadata accessor for ListLocationRowView);
  (*(v64 + 32))(v68 + v67, v65, v66);
  v70 = v91;
  (*(v88 + 32))(v91, v103, v89);
  v71 = (v70 + *(v90 + 36));
  *v71 = sub_10041F528;
  v71[1] = v68;
  v71[2] = 0;
  v71[3] = 0;
  LOBYTE(v111) = ScrollEventState.isScrolling.getter() & 1;
  sub_1004144DC(v102, v63, v100);
  v72 = swift_allocObject();
  sub_10041F478(v63, v72 + v69, type metadata accessor for ListLocationRowView);
  sub_100414370();
  View.onChange<A>(of:initial:_:)();

  return sub_100018198(v70, &qword_100CB7798);
}

uint64_t sub_100413B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CB77E8, &qword_100A4B868);
  return sub_100413B94(a1, a2 + *(v4 + 44));
}

uint64_t sub_100413B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for LocationRowContentView(0);
  __chkstk_darwin(v21);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10022C350(&qword_100CB77F0, &qword_100A4B870);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationRowContentViewLargeText(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011A1CC();
  v15 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v12 + 8))(v14, v11);
  v16 = *(type metadata accessor for ListLocationRowView(0) + 32);
  if (v15)
  {
    sub_1004144DC(a1 + v16, v10, type metadata accessor for ListLocationViewModel);
    sub_1004144DC(v10, v7, type metadata accessor for LocationRowContentViewLargeText);
    swift_storeEnumTagMultiPayload();
    sub_10041F594(&qword_100CB77F8, type metadata accessor for LocationRowContentViewLargeText);
    sub_10041F594(&qword_100CB7800, type metadata accessor for LocationRowContentView);
    _ConditionalContent<>.init(storage:)();
    v17 = type metadata accessor for LocationRowContentViewLargeText;
    v18 = v10;
  }

  else
  {
    sub_1004144DC(a1 + v16, v4 + *(v21 + 20), type metadata accessor for ListLocationViewModel);
    *v4 = swift_getKeyPath();
    sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
    swift_storeEnumTagMultiPayload();
    sub_1004144DC(v4, v7, type metadata accessor for LocationRowContentView);
    swift_storeEnumTagMultiPayload();
    sub_10041F594(&qword_100CB77F8, type metadata accessor for LocationRowContentViewLargeText);
    sub_10041F594(&qword_100CB7800, type metadata accessor for LocationRowContentView);
    _ConditionalContent<>.init(storage:)();
    v17 = type metadata accessor for LocationRowContentView;
    v18 = v4;
  }

  return sub_10041F4D4(v18, v17);
}

uint64_t sub_100413FA4(uint64_t a1)
{
  ScrollEventState.isScrolling.getter();
  type metadata accessor for ListLocationRowView(0);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_100414024(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for ListLocationRowView(0);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_100414098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000302D8(v2, &v14 - v9, &qword_100CA3EE8, &qword_100A5D3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
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

uint64_t sub_10041429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1004142FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListLocationRowView(0);
  sub_100003810(v4);
  sub_100008550();

  return sub_100412D6C(a1, v5, a2);
}

unint64_t sub_100414370()
{
  result = qword_100CB77A0;
  if (!qword_100CB77A0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CB7798, &qword_100A4B7B8);
    v4[2] = sub_10022E824(&qword_100CB77A8, &qword_100A4B7C0);
    v4[3] = type metadata accessor for LocationRowButtonStyle(255);
    v4[4] = sub_100422A78(&qword_100CB77B0, &qword_100CB77A8);
    v4[5] = sub_10041F594(&qword_100CB77B8, type metadata accessor for LocationRowButtonStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB77A0);
  }

  return result;
}

uint64_t sub_1004144DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100414538@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for Font.Context();
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v69 - v4;
  v5 = sub_10022C350(&qword_100CB7AA0, &qword_100A4BA40);
  __chkstk_darwin(v5 - 8);
  v70 = (&v69 - v6);
  v71 = sub_10022C350(&qword_100CB7AA8, &qword_100A4BA48);
  __chkstk_darwin(v71);
  v72 = &v69 - v7;
  v80 = sub_10022C350(&qword_100CB7AB0, &qword_100A4BA50);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v69 - v8;
  v91 = sub_10022C350(&qword_100CB7AB8, &qword_100A4BA58);
  __chkstk_darwin(v91);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v69 - v11;
  v12 = sub_10022C350(&qword_100CB7AC0, &qword_100A4BA60);
  __chkstk_darwin(v12 - 8);
  v88 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v69 - v15;
  v16 = sub_10022C350(&qword_100CB7AC8, &qword_100A4BA68);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = sub_10022C350(&qword_100CB7AD0, &qword_100A4BA70);
  v86 = *(v19 - 8);
  v87 = v19;
  __chkstk_darwin(v19);
  v85 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  *v18 = static VerticalAlignment.top.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v24 = sub_10022C350(&qword_100CB7AD8, &qword_100A4BA78);
  sub_100414F98(v1, &v18[*(v24 + 44)]);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3F2C();
  swift_endAccess();
  static Alignment.top.getter();
  v25 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v18[*(v16 + 36)];
  v27 = *&v92[23];
  *v26 = *&v92[21];
  *(v26 + 1) = v27;
  *(v26 + 2) = *&v92[25];
  v28 = Solarium.init()();
  __chkstk_darwin(v28);
  sub_10022C350(&qword_100CB7AE0, &qword_100A4BA80);
  sub_1004208CC();
  sub_100420984();
  v84 = v23;
  v29 = v1;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v18, &qword_100CB7AC8);
  v30 = v1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v31 = type metadata accessor for ListLocationViewModel(0);
  v32 = v91;
  if ((*(v30 + *(v31 + 84)) & 1) == 0)
  {
    v33 = static VerticalAlignment.bottom.getter();
    v34 = v70;
    *v70 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = sub_10022C350(&qword_100CB7B08, &qword_100A4BA90);
    sub_1004165F8(v29, v34 + *(v35 + 44));
    v36 = static Edge.Set.trailing.getter();
    v37 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v36)
    {
      v37 = Edge.Set.init(rawValue:)();
    }

    sub_1009AA9D0();

    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v72;
    sub_10011C0F0(v34, v72, &qword_100CB7AA0, &qword_100A4BA40);
    v47 = v46 + *(v71 + 36);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    Solarium.init()();
    v48 = v73;
    v49 = static ViewInputPredicate.! prefix(_:)();
    v70 = &v69;
    __chkstk_darwin(v49);
    sub_10022C350(&qword_100CB7B10, &qword_100A4BA98);
    sub_100420A18();
    v93[0] = &type metadata for Solarium;
    v93[1] = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_100420AD0();
    v50 = v76;
    v51 = v79;
    View.staticIf<A, B>(_:then:)();
    (*(v77 + 8))(v48, v51);
    sub_100018198(v46, &qword_100CB7AA8);
    memcpy(v93, &xmmword_100D90930, 0xA1uLL);
    sub_100420B5C(v93, v92);
    v52 = v81;
    sub_100414098(v81);
    sub_1007A4218(v52);
    sub_100420BB8(v93);
    (*(v82 + 8))(v52, v83);
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v53 = v75;
    (*(v78 + 32))(v75, v50, v80);
    v32 = v91;
    v54 = &v53[*(v91 + 36)];
    v55 = *&v92[2];
    *v54 = *v92;
    *(v54 + 1) = v55;
    *(v54 + 2) = *&v92[4];
    v56 = v53;
    v57 = v74;
    sub_10011C0F0(v56, v74, &qword_100CB7AB8, &qword_100A4BA58);
    sub_10011C0F0(v57, v90, &qword_100CB7AB8, &qword_100A4BA58);
    v25 = 0;
  }

  v58 = v90;
  sub_10001B350(v90, v25, 1, v32);
  v59 = v85;
  v60 = v86;
  v61 = *(v86 + 16);
  v62 = v84;
  v63 = v87;
  v61(v85, v84, v87);
  v64 = v88;
  sub_1000302D8(v58, v88, &qword_100CB7AC0, &qword_100A4BA60);
  v65 = v89;
  v61(v89, v59, v63);
  v66 = sub_10022C350(&qword_100CB7B30, &unk_100A4BAA0);
  sub_1000302D8(v64, &v65[*(v66 + 48)], &qword_100CB7AC0, &qword_100A4BA60);
  sub_100018198(v58, &qword_100CB7AC0);
  v67 = *(v60 + 8);
  v67(v62, v63);
  sub_100018198(v64, &qword_100CB7AC0);
  return (v67)(v59, v63);
}

uint64_t sub_100414F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v3 - 8);
  v105 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10022C350(&qword_100CB7C00, &qword_100A4BBB0);
  __chkstk_darwin(v104);
  v109 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = v95 - v7;
  __chkstk_darwin(v8);
  v108 = v95 - v9;
  v10 = sub_10022C350(&qword_100CB7C08, &qword_100A4BBB8);
  __chkstk_darwin(v10 - 8);
  v107 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v95 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = *(sub_10022C350(&qword_100CB7C10, &qword_100A4BBC0) + 44);
  v106 = v14;
  sub_10041598C(a1, &v14[v15]);
  v16 = a1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v17 = type metadata accessor for ListLocationViewModel(0);
  v18 = (v16 + *(v17 + 68));
  v19 = v18[1];
  v103 = v16;
  v102 = v17;
  if (v19)
  {
    v20 = *v18;
    v21 = (v16 + *(v17 + 64));
    v22 = v21[1];
    v101 = *v21;
    v115 = v101;
    v116 = v22;
    sub_10002D5A4();

    v100 = v22;

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1007A38EC();
    swift_endAccess();
    Font.init(_:)();
    v97 = Text.font(_:)();
    v96 = v28;
    v98 = v29;
    v95[1] = v30;

    sub_10010CD64(v23, v25, v27 & 1);

    v115 = v20;
    v116 = v19;
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    swift_beginAccess();
    sub_1007A39E0();
    swift_endAccess();
    Font.init(_:)();
    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;

    sub_10010CD64(v31, v33, v35 & 1);

    swift_beginAccess();
    v41 = sub_1007A38EC();
    swift_endAccess();
    [v41 capHeight];

    swift_beginAccess();
    v42 = sub_1007A39E0();
    swift_endAccess();
    [v42 capHeight];

    v43 = Text.baselineOffset(_:)();
    v45 = v44;
    LOBYTE(v33) = v46;
    sub_10010CD64(v36, v38, v40 & 1);

    v47 = v97;
    v48 = v96;
    v111 = static Text.+ infix(_:_:)();
    v50 = v49;
    v52 = v51;
    sub_10010CD64(v43, v45, v33 & 1);

    v53 = v98 & 1;
    v54 = v47;
    v55 = v48;
    v56 = v52;
    v57 = v111;
  }

  else
  {
    v58 = (v16 + *(v17 + 64));
    v59 = v58[1];
    v101 = *v58;
    v115 = v101;
    v116 = v59;
    sub_10002D5A4();
    v100 = v59;

    v60 = Text.init<A>(_:)();
    v62 = v61;
    v64 = v63;
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1007A38EC();
    swift_endAccess();
    Font.init(_:)();
    v57 = Text.font(_:)();
    v66 = v65;
    v56 = v67;

    v53 = v64 & 1;
    v54 = v60;
    v55 = v62;
    v50 = v66;
  }

  sub_10010CD64(v54, v55, v53);
  v68 = v105;

  static Color.black.getter();
  Color.opacity(_:)();

  v69 = 0.0;
  v111 = v57;
  v105 = v50;
  v70 = Text.shadow(color:radius:x:y:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;

  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1007A3F2C();
  swift_endAccess();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = v74 & 1;
  if (v101 == 11565 && v100 == 0xE200000000000000)
  {
    v80 = v103;
  }

  else
  {
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v80 = v103;
    if ((v79 & 1) == 0)
    {
      swift_beginAccess();
      v69 = sub_1007A3F88();
      swift_endAccess();
    }
  }

  LODWORD(v101) = v56;
  if ((*(v80 + *(v102 + 104)) & 2) != 0)
  {
    v82 = enum case for BlendMode.normal(_:);
    v83 = type metadata accessor for BlendMode();
    (*(*(v83 - 8) + 104))(v68, v82, v83);
    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v84 = sub_10022C350(&qword_100CB7B80, &qword_100A4BB50);
  sub_10001B350(v68, v81, 1, v84);
  v85 = v99;
  sub_10041F478(v68, &v99[*(v104 + 36)], type metadata accessor for RowElementStyle);
  *v85 = v70;
  *(v85 + 8) = v72;
  *(v85 + 16) = v77;
  *(v85 + 24) = v76;
  v86 = v113;
  *(v85 + 32) = v112;
  *(v85 + 48) = v86;
  *(v85 + 64) = v114;
  *(v85 + 80) = 0x3FF0000000000000;
  *(v85 + 88) = v69;
  *(v85 + 96) = 0;
  v87 = v108;
  sub_10011C0F0(v85, v108, &qword_100CB7C00, &qword_100A4BBB0);
  v88 = v106;
  v89 = v107;
  sub_1000302D8(v106, v107, &qword_100CB7C08, &qword_100A4BBB8);
  v90 = v109;
  sub_1000302D8(v87, v109, &qword_100CB7C00, &qword_100A4BBB0);
  v91 = v110;
  sub_1000302D8(v89, v110, &qword_100CB7C08, &qword_100A4BBB8);
  v92 = sub_10022C350(&qword_100CB7C18, &qword_100A4BBC8);
  v93 = v91 + *(v92 + 48);
  *v93 = 0x4020000000000000;
  *(v93 + 8) = 0;
  sub_1000302D8(v90, v91 + *(v92 + 64), &qword_100CB7C00, &qword_100A4BBB0);
  sub_10010CD64(v111, v105, v101 & 1);

  sub_100018198(v87, &qword_100CB7C00);
  sub_100018198(v88, &qword_100CB7C08);
  sub_100018198(v90, &qword_100CB7C00);
  return sub_100018198(v89, &qword_100CB7C08);
}

uint64_t sub_10041598C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  v3 = type metadata accessor for RowElementStyle(0);
  __chkstk_darwin(v3 - 8);
  v101 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10022C350(&qword_100CB7C20, &qword_100A4BBD0);
  __chkstk_darwin(v96);
  v97 = &v86 - v5;
  v98 = sub_10022C350(&qword_100CB7C28, &qword_100A4BBD8);
  __chkstk_darwin(v98);
  v102 = &v86 - v6;
  v99 = sub_10022C350(&qword_100CB7C30, &qword_100A4BBE0);
  __chkstk_darwin(v99);
  v104 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v86 - v9;
  __chkstk_darwin(v10);
  v103 = &v86 - v11;
  v12 = type metadata accessor for Font.Context();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  v16 = swift_beginAccess();
  sub_1007A3ACC(v16, v17, v18, v19, v20, v21, v22, v23, v86, v87, v88, v89, v90, v91, v92, v93, KeyPath, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106, *&v106[8], *&v106[16], *&v106[24], *&v106[32], *&v106[40], *&v106[48], *&v106[56], *&v106[64], *&v106[72]);
  swift_endAccess();
  sub_100414098(v15);
  Font.capHeight(in:)();

  v24 = *(v13 + 8);
  v87 = v13 + 8;
  v91 = v24;
  v24(v15, v12);
  v25 = a1 + *(type metadata accessor for LocationRowContentView(0) + 20);
  v86 = v25;
  v92 = type metadata accessor for ListLocationViewModel(0);
  v26 = (v25 + *(v92 + 24));
  v27 = v26[1];
  v107 = *v26;
  v108 = v27;
  sub_10002D5A4();
  v90 = a1;

  v28 = Text.init<A>(_:)();
  v88 = v15;
  v30 = v29;
  v32 = v31;
  static Color.black.getter();
  Color.opacity(_:)();
  v89 = v12;

  v33 = Text.shadow(color:radius:x:y:)();
  v35 = v34;
  v37 = v36;

  sub_10010CD64(v28, v30, v32 & 1);

  v38 = swift_beginAccess();
  sub_1007A3ACC(v38, v39, v40, v41, v42, v43, v44, v45, v86, v87, v88, v89, v90, v91, v92, v93, KeyPath, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106, *&v106[8], *&v106[16], *&v106[24], *&v106[32], *&v106[40], *&v106[48], *&v106[56], *&v106[64], *&v106[72]);
  swift_endAccess();
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;
  v95 = v51;

  v52 = v35;
  v53 = v86;
  sub_10010CD64(v33, v52, v37 & 1);

  static Alignment.center.getter();
  v54 = 1;
  _FrameLayout.init(width:height:alignment:)();
  HIDWORD(v93) = v50 & 1;
  LOBYTE(v107) = v50 & 1;
  KeyPath = swift_getKeyPath();
  v55 = v97;
  sub_1004144DC(v53, v97, type metadata accessor for ListLocationViewModel);
  v56 = type metadata accessor for LocationRowSubheadingView(0);
  v57 = v55 + *(v56 + 20);
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  v58 = *(v56 + 24);
  *(v55 + v58) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  swift_storeEnumTagMultiPayload();
  v59 = swift_beginAccess();
  sub_1007A3CFC(v59, v60, v61, v62, v63, v64, v65, v66, v86, v87, v88, v89, v90, v91, v92, v93, KeyPath, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106, *&v106[8], *&v106[16], *&v106[24], *&v106[32], *&v106[40], *&v106[48], *&v106[56], *&v106[64], *&v106[72]);
  swift_endAccess();
  v67 = v88;
  sub_100414098(v88);
  Font.capHeight(in:)();

  v91(v67, v89);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v68 = (v55 + *(v96 + 36));
  v69 = v121;
  v68[1] = v120;
  v68[2] = v69;
  *v68 = v119;
  v70 = v101;
  if (*(v53 + *(v92 + 104)))
  {
    v71 = enum case for BlendMode.plusLighter(_:);
    v72 = type metadata accessor for BlendMode();
    (*(*(v72 - 8) + 104))(v70, v71, v72);
    v54 = 0;
  }

  v73 = sub_10022C350(&qword_100CB7B80, &qword_100A4BB50);
  sub_10001B350(v70, v54, 1, v73);
  v74 = v102;
  sub_10041F478(v70, v102 + *(v98 + 36), type metadata accessor for RowElementStyle);
  sub_10011C0F0(v55, v74, &qword_100CB7C20, &qword_100A4BBD0);
  v75 = swift_getKeyPath();
  v76 = sub_1009AA9D0();
  v77 = v100;
  v78 = (v100 + *(v99 + 36));
  sub_10022C350(&qword_100CB7B88, &unk_100A4BB88);
  sub_10041621C(v76);

  *v78 = v75;
  sub_10011C0F0(v74, v77, &qword_100CB7C28, &qword_100A4BBD8);
  v79 = v103;
  sub_10011C0F0(v77, v103, &qword_100CB7C30, &qword_100A4BBE0);
  v80 = v104;
  sub_1000302D8(v79, v104, &qword_100CB7C30, &qword_100A4BBE0);
  *v106 = v46;
  *&v106[8] = v48;
  LOBYTE(v74) = BYTE4(v93);
  v106[16] = BYTE4(v93);
  *&v106[17] = v118[0];
  *&v106[20] = *(v118 + 3);
  v101 = v46;
  v102 = v48;
  v81 = KeyPath;
  v82 = v95;
  *&v106[24] = v95;
  *&v106[32] = v122;
  *&v106[48] = v123;
  *&v106[64] = v124;
  *&v106[80] = KeyPath;
  *&v106[88] = 1;
  v106[96] = 0;
  v83 = v105;
  memcpy(v105, v106, 0x61uLL);
  v83[13] = 0;
  *(v83 + 112) = 0;
  v84 = sub_10022C350(&qword_100CB7C38, &qword_100A4BC48);
  sub_1000302D8(v80, v83 + *(v84 + 64), &qword_100CB7C30, &qword_100A4BBE0);
  sub_1000302D8(v106, &v107, &qword_100CB7C40, &qword_100A4BC50);
  sub_100018198(v79, &qword_100CB7C30);
  sub_100018198(v80, &qword_100CB7C30);
  v107 = v101;
  v108 = v102;
  v109 = v74;
  *v110 = v118[0];
  *&v110[3] = *(v118 + 3);
  v112 = v122;
  v113 = v123;
  v114 = v124;
  v111 = v82;
  v115 = v81;
  v116 = 1;
  v117 = 0;
  return sub_100018198(&v107, &qword_100CB7C40);
}