uint64_t sub_10005BAB4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v57 = type metadata accessor for DynamicTypeSize();
  v63 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_10000341C(&unk_10025D720, &qword_1001D2A58) - 8;
  v4 = __chkstk_darwin(v61);
  v58 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v62 = &v44 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - v9;
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v14 = *(a1 + 1);
  v56 = *a1;
  v13 = v56;
  v52 = v14;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 6;
  v12[24] = 0;
  *(v12 + 4) = v13;
  *(v12 + 5) = v14;
  v15 = type metadata accessor for TransformItemView(0);
  v16 = v15[6];
  *&v12[v16] = swift_getKeyPath();
  v55 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v17 = v15[7];
  *&v12[v17] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  v18 = &v12[v15[8]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = type metadata accessor for TransformSection(0);
  v20 = *(v19 + 20);
  v49 = v20;
  v51 = sub_10000341C(&qword_10025D730, &qword_1001D2AC8);
  v21 = &v12[*(v51 + 36)];
  v22 = type metadata accessor for GeometryProxy();
  v23 = *(v22 - 8);
  v48 = *(v23 + 16);
  v50 = v23 + 16;
  v44 = a1;
  v48(v21, &a1[v20], v22);
  v47 = type metadata accessor for TransformItemViewWidthModifier(0);
  v24 = *(v47 + 20);
  *&v21[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v12[*(v61 + 44)] = 257;
  v46 = *(v19 + 36);
  v25 = v52;
  swift_retain_n();
  v26 = v60;
  sub_10011F024(v60);
  v27 = DynamicTypeSize.isAccessibilitySize.getter();
  LOBYTE(a1) = v27;
  v54 = v27;
  v28 = *(v63 + 8);
  v63 += 8;
  v45 = v28;
  v29 = v57;
  v28(v26, v57);
  v53 = (a1 & 1) == 0;
  v10[24] = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 7;
  *(v10 + 4) = v56;
  *(v10 + 5) = v25;
  v30 = v15[6];
  *&v10[v30] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = v15[7];
  *&v10[v31] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = &v10[v15[8]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &v10[*(v51 + 36)];
  v48(v33, &v44[v49], v22);
  v34 = *(v47 + 20);
  *&v33[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v10[*(v61 + 44)] = 257;
  v35 = v60;
  sub_10011F024(v60);
  LOBYTE(v34) = DynamicTypeSize.isAccessibilitySize.getter();
  v45(v35, v29);
  v36 = v62;
  sub_1000081F8(v12, v62, &unk_10025D720, &qword_1001D2A58);
  v37 = v58;
  sub_1000081F8(v10, v58, &unk_10025D720, &qword_1001D2A58);
  v38 = v59;
  sub_1000081F8(v36, v59, &unk_10025D720, &qword_1001D2A58);
  v39 = sub_10000341C(&unk_10025D740, &qword_1001D2AD8);
  v40 = v38 + v39[12];
  *v40 = 0;
  v41 = v54;
  *(v40 + 8) = v53;
  *(v40 + 9) = v41 & 1;
  sub_1000081F8(v37, v38 + v39[16], &unk_10025D720, &qword_1001D2A58);
  v42 = v38 + v39[20];
  *v42 = 0;
  *(v42 + 8) = (v34 & 1) == 0;
  *(v42 + 9) = v34 & 1;
  sub_10000F500(v10, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v12, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v37, &unk_10025D720, &qword_1001D2A58);
  return sub_10000F500(v62, &unk_10025D720, &qword_1001D2A58);
}

uint64_t sub_10005C04C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v65 = sub_10000341C(&unk_10025D720, &qword_1001D2A58) - 8;
  v3 = __chkstk_darwin(v65);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v62 = &v47 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - v8;
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v57 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TransformSection(0);
  v59 = *(v16 + 36);
  sub_10011F024(v15);
  v17 = DynamicTypeSize.isAccessibilitySize.getter();
  v18 = v17;
  v61 = v17;
  v19 = *(v13 + 8);
  v56 = v13 + 8;
  v58 = v19;
  v19(v15, v12);
  v60 = (v18 & 1) == 0;
  v21 = *(a1 + 1);
  v55 = *a1;
  v20 = v55;
  v53 = v21;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 8;
  v11[24] = 0;
  *(v11 + 4) = v20;
  *(v11 + 5) = v21;
  v22 = type metadata accessor for TransformItemView(0);
  v23 = v22[6];
  *&v11[v23] = swift_getKeyPath();
  v54 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v24 = v22[7];
  *&v11[v24] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  v25 = &v11[v22[8]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = *(v16 + 20);
  v50 = v26;
  v52 = sub_10000341C(&qword_10025D730, &qword_1001D2AC8);
  v27 = &v11[*(v52 + 36)];
  v28 = type metadata accessor for GeometryProxy();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v48 = a1;
  v49 = v30;
  v51 = v29 + 16;
  v30(v27, &a1[v26], v28);
  v31 = type metadata accessor for TransformItemViewWidthModifier(0);
  v32 = *(v31 + 20);
  *&v27[v32] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v11[*(v65 + 44)] = 257;
  v33 = v53;
  swift_retain_n();
  sub_10011F024(v15);
  LOBYTE(v27) = DynamicTypeSize.isAccessibilitySize.getter();
  v58(v15, v57);
  v9[24] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 9;
  *(v9 + 4) = v55;
  *(v9 + 5) = v33;
  v34 = v22[6];
  *&v9[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v22[7];
  *&v9[v35] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v36 = &v9[v22[8]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = &v9[*(v52 + 36)];
  v49(v37, &v48[v50], v28);
  v38 = *(v31 + 20);
  *&v37[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v9[*(v65 + 44)] = 257;
  v39 = v62;
  sub_1000081F8(v11, v62, &unk_10025D720, &qword_1001D2A58);
  v40 = v63;
  sub_1000081F8(v9, v63, &unk_10025D720, &qword_1001D2A58);
  v41 = v64;
  *v64 = 0;
  v42 = v61;
  *(v41 + 8) = v60;
  *(v41 + 9) = v42 & 1;
  v43 = v41;
  v44 = sub_10000341C(&qword_10025D738, &qword_1001D2AD0);
  sub_1000081F8(v39, v43 + v44[12], &unk_10025D720, &qword_1001D2A58);
  v45 = v43 + v44[16];
  *v45 = 0;
  *(v45 + 8) = (v27 & 1) == 0;
  *(v45 + 9) = v27 & 1;
  sub_1000081F8(v40, v43 + v44[20], &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v9, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v11, &unk_10025D720, &qword_1001D2A58);
  sub_10000F500(v40, &unk_10025D720, &qword_1001D2A58);
  return sub_10000F500(v39, &unk_10025D720, &qword_1001D2A58);
}

uint64_t sub_10005C5C0@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_10025D6D8, &qword_1001D29B8);
  sub_100007120(&qword_10025D6E0, &qword_10025D6D8, &qword_1001D29B8, &unk_1001DCEDC);
  Section<>.init(content:)();
  sub_10005ADB8();
  v2 = sub_1000A7C14();

  v3 = (v2 & 2) == 0;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  result = sub_10000341C(&unk_10025D6E8, &qword_1001D29F0);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_10002AAC0;
  v7[2] = v5;
  return result;
}

uint64_t sub_10005C6F4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v43 = sub_10000341C(&qword_10025D9E0, &qword_1001D2CA0);
  __chkstk_darwin(v43);
  v2 = &v36 - v1;
  v44 = sub_10000341C(&qword_10025D9E8, &qword_1001D2CA8);
  v37 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v36 - v3;
  v41 = sub_10000341C(&qword_10025D9F0, &qword_1001D2CB0);
  __chkstk_darwin(v41);
  v40 = &v36 - v5;
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025D9F8, &qword_1001D2CB8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v42 = sub_10000341C(&qword_10025DA00, &qword_1001D2CC0);
  v12 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v36 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v17 = sub_10000341C(&qword_10025DA18, &qword_1001D2CC8);
    sub_10005DADC(v39, &v11[*(v17 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v18 = sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8, &protocol conformance descriptor for VStack<A>);
    View.accessibilityElement(children:)();
    (*(v6 + 8))(v8, v38);
    sub_10000F500(v11, &qword_10025D9F8, &qword_1001D2CB8);
    v19 = v42;
    (*(v12 + 16))(v40, v14, v42);
    swift_storeEnumTagMultiPayload();
    v46 = v9;
    v47 = v18;
    swift_getOpaqueTypeConformance2();
    v20 = sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0, &unk_1001DCEDC);
    v46 = v43;
    v47 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v19);
  }

  else
  {
    v22 = static Alignment.center.getter();
    v24 = v23;
    v25 = v43;
    v26 = *(v43 + 48);
    *&v2[v26] = swift_getKeyPath();
    sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
    swift_storeEnumTagMultiPayload();
    *v2 = 1;
    *(v2 + 1) = v22;
    *(v2 + 2) = v24;
    __asm { FMOV            V0.2D, #7.0 }

    *(v2 + 24) = _Q0;
    v2[40] = 0;
    sub_10005CD64(v39, &v2[*(v25 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v32 = sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0, &unk_1001DCEDC);
    View.accessibilityElement(children:)();
    (*(v6 + 8))(v8, v38);
    sub_10000F500(v2, &qword_10025D9E0, &qword_1001D2CA0);
    v33 = v37;
    v34 = v44;
    (*(v37 + 16))(v40, v4, v44);
    swift_storeEnumTagMultiPayload();
    v35 = sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8, &protocol conformance descriptor for VStack<A>);
    v46 = v9;
    v47 = v35;
    swift_getOpaqueTypeConformance2();
    v46 = v25;
    v47 = v32;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v33 + 8))(v4, v34);
  }
}

uint64_t sub_10005CD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v41 = type metadata accessor for TransformItemButton(0);
  __chkstk_darwin(v41);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TransformItemView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v42 = sub_10000341C(&qword_10025DAB8, &qword_1001D2D10);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v41 - v8;
  v46 = sub_10000341C(&qword_10025DAC0, &qword_1001D2D18);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v41 - v10;
  v12 = sub_10000341C(&qword_10025DAC8, &qword_1001D2D20);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v43 = &v41 - v19;
  sub_100061178(a1, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_100062178(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TransformItemView);
  v49 = a1;
  sub_10000341C(&qword_10025DAD0, &qword_1001D2D28);
  sub_100007120(&qword_10025DAD8, &qword_10025DAD0, &qword_1001D2D28, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  *v4 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v22 = *(v41 + 20);
  *(v4 + v22) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DAE0, &qword_10025DAB8, &qword_1001D2D10, &protocol conformance descriptor for Button<A>);
  sub_10005FF28(&qword_10025DA40, type metadata accessor for TransformItemButton, &unk_1001D2E48);
  v23 = v42;
  View.buttonStyle<A>(_:)();
  sub_1000602C4(v4, type metadata accessor for TransformItemButton);
  (*(v44 + 8))(v9, v23);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 32))(v18, v11, v46);
  v24 = &v18[*(v13 + 44)];
  v25 = v57;
  *(v24 + 4) = v56;
  *(v24 + 5) = v25;
  *(v24 + 6) = v58;
  v26 = v53;
  *v24 = v52;
  *(v24 + 1) = v26;
  v27 = v55;
  *(v24 + 2) = v54;
  *(v24 + 3) = v27;
  v28 = v43;
  sub_10002A894(v18, v43, &qword_10025DAC8, &qword_1001D2D20);
  v50 = sub_100106A3C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v51 = v29;
  sub_10002AC34();
  v30 = Text.init<A>(_:)();
  v32 = v31;
  LOBYTE(a1) = v33;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = v47;
  sub_1000081F8(v28, v47, &qword_10025DAC8, &qword_1001D2D20);
  v38 = v48;
  sub_1000081F8(v37, v48, &qword_10025DAC8, &qword_1001D2D20);
  v39 = v38 + *(sub_10000341C(&qword_10025DAE8, &qword_1001D2D30) + 48);
  *v39 = v30;
  *(v39 + 8) = v32;
  LOBYTE(a1) = a1 & 1;
  *(v39 + 16) = a1;
  *(v39 + 24) = v35;
  *(v39 + 32) = KeyPath;
  *(v39 + 40) = 0;
  sub_100007D98(v30, v32, a1);

  sub_100061798(KeyPath, 0);
  sub_10000F500(v28, &qword_10025DAC8, &qword_1001D2D20);
  sub_10002A984(v30, v32, a1);

  sub_1000611E0(KeyPath, 0);
  return sub_10000F500(v37, &qword_10025DAC8, &qword_1001D2D20);
}

uint64_t sub_10005D428(uint64_t a1)
{
  sub_10000341C(&qword_10025DAF0, &qword_1001D2D38);
  sub_1000613A0(&qword_10025DAF8, &qword_10025DAF0, &qword_1001D2D38, sub_1000617AC);
  return Label.init(title:icon:)();
}

uint64_t sub_10005D4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = __chkstk_darwin(v5);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v42 - v8;
  v9 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  __chkstk_darwin(v9 - 8);
  v49 = &v42 - v10;
  v48 = type metadata accessor for Image.ResizingMode();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DynamicTypeSize();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v46 = *(a1 + 24);
  v47 = a1;
  v21 = type metadata accessor for TransformItemView(0);
  sub_10011F024(v17);
  LOBYTE(a1) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v15 + 8))(v17, v14);
  sub_1000C4984(v18, v19, v20, v46, a1 & 1);
  Image.init(_:bundle:)();
  v22 = v48;
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v48);
  Image.resizable(capInsets:resizingMode:)();

  (*(v11 + 8))(v13, v22);
  v23 = enum case for Image.TemplateRenderingMode.template(_:);
  v24 = type metadata accessor for Image.TemplateRenderingMode();
  v25 = *(v24 - 8);
  v26 = v49;
  (*(v25 + 104))(v49, v23, v24);
  (*(v25 + 56))(v26, 0, 1, v24);
  v27 = v47;
  v28 = Image.renderingMode(_:)();

  sub_10000F500(v26, &qword_10025DAA8, &qword_1001D2D08);
  v29 = v50;
  sub_10011F04C(v50);
  v31 = v51;
  v30 = v52;
  v32 = v53;
  (*(v52 + 104))(v51, enum case for ColorScheme.dark(_:), v53);
  LOBYTE(v24) = static ColorScheme.== infix(_:_:)();
  v33 = *(v30 + 8);
  v33(v31, v32);
  v33(v29, v32);
  if (v24)
  {
    v34 = static Color.white.getter();
  }

  else
  {
    v34 = static Color.black.getter();
  }

  v35 = v34;
  v36 = v27 + *(v21 + 32);
  v37 = *v36;
  if (*(v36 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v39 = v43;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v37, 0);
    (*(v44 + 8))(v39, v45);
    LOBYTE(v37) = v55;
  }

  v40 = 0.6;
  v55 = v28;
  v56 = 0;
  v57 = 1;
  if (v37)
  {
    v40 = 1.0;
  }

  v58 = v35;
  v59 = v40;
  sub_10000341C(&qword_10025DB08, &qword_1001D2D40);
  sub_1000617AC();
  View.accessibilityHidden(_:)();
}

uint64_t sub_10005DADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = type metadata accessor for TransformItemButton(0);
  __chkstk_darwin(v3);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TransformItemView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10000341C(&qword_10025DA20, &qword_1001D2CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  sub_100061178(a1, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_100062178(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for TransformItemView);
  v17[4] = a1;
  sub_10000341C(&qword_10025DA28, &qword_1001D2CD8);
  sub_100007120(&qword_10025DA30, &qword_10025DA28, &qword_1001D2CD8, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  *v5 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v15 = *(v3 + 20);
  *(v5 + v15) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DA38, &qword_10025DA20, &qword_1001D2CD0, &protocol conformance descriptor for Button<A>);
  sub_10005FF28(&qword_10025DA40, type metadata accessor for TransformItemButton, &unk_1001D2E48);
  View.buttonStyle<A>(_:)();
  sub_1000602C4(v5, type metadata accessor for TransformItemButton);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10005DE68(uint64_t a1)
{
  sub_10000341C(&qword_10025DA48, &qword_1001D2CE0);
  sub_10000341C(&qword_10025DA50, &qword_1001D2CE8);
  sub_100061208();
  sub_1000612E8();
  return Label.init(title:icon:)();
}

uint64_t sub_10005DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100106A3C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  sub_10002AC34();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

double sub_10005DFBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  __chkstk_darwin(v5 - 8);
  v44 = &v37 - v6;
  v43 = type metadata accessor for Image.ResizingMode();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10000341C(&qword_10025DA78, &qword_1001D2CF0);
  __chkstk_darwin(v13 - 8);
  v45 = &v37 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 24);
  v42 = type metadata accessor for TransformItemView(0);
  sub_10011F024(v12);
  v19 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v10 + 8))(v12, v9);
  sub_1000C4984(v15, v16, v17, v18, v19 & 1);
  Image.init(_:bundle:)();
  v20 = v41;
  v21 = v43;
  (*(v41 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v43);
  Image.resizable(capInsets:resizingMode:)();

  (*(v20 + 8))(v8, v21);
  v22 = enum case for Image.TemplateRenderingMode.template(_:);
  v23 = type metadata accessor for Image.TemplateRenderingMode();
  v24 = *(v23 - 8);
  v25 = v44;
  (*(v24 + 104))(v44, v22, v23);
  (*(v24 + 56))(v25, 0, 1, v23);
  v26 = Image.renderingMode(_:)();

  sub_10000F500(v25, &qword_10025DAA8, &qword_1001D2D08);
  v27 = a1 + *(v42 + 32);
  v28 = *v27;
  if (v27[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v38;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v28, 0);
    (*(v39 + 8))(v30, v40);
    LOBYTE(v28) = v47;
  }

  v31 = 0.6;
  if (v28)
  {
    v31 = 1.0;
  }

  v47 = v26;
  LOWORD(v48) = 1;
  *(&v48 + 1) = v31;
  sub_10000341C(&qword_10025DA88, &qword_1001D2CF8);
  sub_100061454();
  v32 = v45;
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v47);
  v33 = v46;
  sub_10002A894(v32, v46, &qword_10025DA78, &qword_1001D2CF0);
  v34 = (v33 + *(sub_10000341C(&qword_10025DA50, &qword_1001D2CE8) + 36));
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  result = *&v49;
  v34[2] = v49;
  return result;
}

uint64_t sub_10005E52C()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransformItemButton(0);
  sub_1000081F8(v0 + *(v11 + 20), v6, &unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_10005E7B8@<X0>(uint64_t a2@<X8>)
{
  v10[1] = a2;
  v2 = sub_10000341C(&qword_10025DBE0, &qword_1001D2E80);
  __chkstk_darwin(v2);
  v4 = v10 - v3;
  v5 = sub_10000341C(&qword_10025DBE8, &qword_1001D2E88);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  v8 = [objc_opt_self() currentDevice];
  [v8 userInterfaceIdiom];

  sub_10005E954(v7);
  sub_1000081F8(v7, v4, &qword_10025DBE8, &qword_1001D2E88);
  swift_storeEnumTagMultiPayload();
  sub_100061EF8();
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v7, &qword_10025DBE8, &qword_1001D2E88);
}

uint64_t sub_10005E954@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v84 = type metadata accessor for ColorScheme();
  v82 = *(v84 - 8);
  v1 = __chkstk_darwin(v84);
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v78 = &v68 - v3;
  v76 = type metadata accessor for RoundedRectangle() - 8;
  __chkstk_darwin(v76);
  v75 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  __chkstk_darwin(v77);
  v81 = &v68 - v5;
  v79 = sub_10000341C(&qword_10025DC40, &qword_1001D2EB0);
  __chkstk_darwin(v79);
  v83 = &v68 - v6;
  v80 = sub_10000341C(&qword_10025DC48, &qword_1001D2EB8);
  __chkstk_darwin(v80);
  v85 = &v68 - v7;
  v8 = type metadata accessor for IconOnlyLabelStyle();
  v9 = *(v8 - 8);
  v73 = v8;
  v74 = v9;
  __chkstk_darwin(v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonStyleConfiguration.Label();
  v72 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10000341C(&qword_10025DC50, &qword_1001D2EC0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v16 = &v68 - v15;
  v17 = sub_10000341C(&qword_10025DC10, &qword_1001D2E98);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v21 = sub_10000341C(&qword_10025DC00, &qword_1001D2E90);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v69 = &v68 - v23;
  ButtonStyleConfiguration.label.getter();
  IconOnlyLabelStyle.init()();
  sub_10005FF28(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
  sub_10005FF28(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v24 = v12;
  v25 = v73;
  View.labelStyle<A>(_:)();
  v26 = v11;
  v27 = v75;
  (*(v74 + 8))(v26, v25);
  (*(v72 + 8))(v14, v24);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v28 = 0.75;
  }

  else
  {
    v28 = 1.0;
  }

  (*(v70 + 32))(v20, v16, v71);
  v29 = v69;
  *&v20[*(v18 + 44)] = v28;
  v30 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10002A894(v20, v29, &qword_10025DC10, &qword_1001D2E98);
  v39 = v29;
  v40 = v29 + *(v22 + 44);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  if (sub_10005E52C())
  {
    v41 = 9.0;
  }

  else
  {
    v41 = 6.0;
  }

  v42 = *(v76 + 28);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  (*(*(v44 - 8) + 104))(v27 + v42, v43, v44);
  *v27 = v41;
  v27[1] = v41;
  LOBYTE(v42) = ButtonStyleConfiguration.isPressed.getter();
  v45 = static Color.white.getter();
  if (v42)
  {
    v46 = v78;
    sub_10011F04C(v78);
    v47 = sub_100125700(v45, v46);

    v48 = v82;
    v49 = v84;
    (*(v82 + 8))(v46, v84);
    v45 = v47;
  }

  else
  {
    v49 = v84;
    v48 = v82;
    v46 = v78;
  }

  v50 = v81;
  sub_100062178(v27, v81, &type metadata accessor for RoundedRectangle);
  v51 = v77;
  *(v50 + *(v77 + 52)) = v45;
  *(v50 + *(v51 + 56)) = 256;
  sub_10011F04C(v46);
  v52 = v86;
  (*(v48 + 104))(v86, enum case for ColorScheme.light(_:), v49);
  v53 = static ColorScheme.== infix(_:_:)();
  v54 = *(v48 + 8);
  v54(v52, v49);
  v54(v46, v49);
  if (v53)
  {
    v55 = 0.5;
  }

  else
  {
    v55 = 0.17;
  }

  v56 = v83;
  sub_10002A894(v50, v83, &unk_100263560, &unk_1001D1590);
  *(v56 + *(v79 + 36)) = v55;
  static Color.black.getter();
  v57 = Color.opacity(_:)();

  v58 = v85;
  sub_10002A894(v56, v85, &qword_10025DC40, &qword_1001D2EB0);
  v59 = v58 + *(v80 + 36);
  *v59 = v57;
  *(v59 + 8) = xmmword_1001D2710;
  *(v59 + 24) = 0x4000000000000000;
  v60 = static Alignment.center.getter();
  v62 = v61;
  v63 = sub_10000341C(&qword_10025DBE8, &qword_1001D2E88);
  v64 = v87;
  v65 = v87 + *(v63 + 36);
  sub_10002A894(v58, v65, &qword_10025DC48, &qword_1001D2EB8);
  v66 = (v65 + *(sub_10000341C(&unk_10025DC30, &unk_1001D2EA0) + 36));
  *v66 = v60;
  v66[1] = v62;
  return sub_10002A894(v39, v64, &qword_10025DC00, &qword_1001D2E90);
}

uint64_t sub_10005F214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for EnvironmentValues();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025DC58, &qword_1001D2EC8);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10000341C(&qword_10025DC60, &qword_1001D2ED0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  KeyPath = swift_getKeyPath();
  v16 = sub_10000341C(&qword_10025DC68, &qword_1001D2F08);
  (*(*(v16 - 8) + 16))(v11, a1, v16);
  v17 = &v11[*(sub_10000341C(&qword_10025DC70, &qword_1001D2F10) + 36)];
  *v17 = KeyPath;
  v17[8] = 1;
  v18 = static Font.caption.getter();
  v19 = swift_getKeyPath();
  v20 = &v11[*(v9 + 36)];
  *v20 = v19;
  v20[1] = v18;
  static Font.Weight.medium.getter();
  sub_1000621F0();
  View.fontWeight(_:)();
  sub_10000F500(v11, &qword_10025DC58, &qword_1001D2EC8);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  *&v14[*(v12 + 36)] = qword_100277170;

  if ((v28 & 1) == 0)
  {
    sub_100061798(a2, 0);
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(a2, 0);
    (*(v26 + 8))(v8, v27);
    LOBYTE(a2) = v30;
  }

  if (a2)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.3;
  }

  v23 = v29;
  sub_10002A894(v14, v29, &qword_10025DC60, &qword_1001D2ED0);
  result = sub_10000341C(&qword_10025DCB0, &qword_1001D2F48);
  *(v23 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_10005F5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v38 = sub_10000341C(&qword_10025D9A0, &qword_1001D2C78);
  __chkstk_darwin(v38);
  v35 = &v31 - v2;
  v36 = type metadata accessor for DynamicTypeSize();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000341C(&qword_10025D9A8, &qword_1001D2C80);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_10000341C(&qword_10025D9B0, &qword_1001D2C88);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_10000341C(&qword_10025D9B8, &qword_1001D2C90);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    v17 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
    (*(*(v17 - 8) + 16))(v11, v37, v17);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100060FB0();
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v14, v8, &qword_10025D9B8, &qword_1001D2C90);
    swift_storeEnumTagMultiPayload();
    sub_100061068();
    _ConditionalContent<>.init(storage:)();
    v18 = v14;
    v19 = &qword_10025D9B8;
    v20 = &qword_1001D2C90;
  }

  else
  {
    v31 = v9;
    v32 = v14;
    v21 = v37;
    v22 = v38;
    v33 = v12;
    v34 = v6;
    type metadata accessor for TransformItemViewWidthModifier(0);
    sub_10011F024(v5);
    v23 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v3 + 8))(v5, v36);
    if (v23)
    {
      v24 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
      (*(*(v24 - 8) + 16))(v8, v21, v24);
      swift_storeEnumTagMultiPayload();
      sub_100061068();
      sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
      return _ConditionalContent<>.init(storage:)();
    }

    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(v40);
    v26 = sub_10000341C(&qword_10025D9C0, &qword_1001D2C98);
    v27 = v35;
    (*(*(v26 - 8) + 16))(v35, v21, v26);
    v28 = (v27 + *(v22 + 36));
    v29 = v40[1];
    *v28 = v40[0];
    v28[1] = v29;
    v28[2] = v40[2];
    sub_1000081F8(v27, v11, &qword_10025D9A0, &qword_1001D2C78);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100060FB0();
    v30 = v32;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v30, v8, &qword_10025D9B8, &qword_1001D2C90);
    swift_storeEnumTagMultiPayload();
    sub_100061068();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v30, &qword_10025D9B8, &qword_1001D2C90);
    v18 = v27;
    v19 = &qword_10025D9A0;
    v20 = &qword_1001D2C78;
  }

  return sub_10000F500(v18, v19, v20);
}

uint64_t sub_10005FBD4(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    return 0;
  }

  if (a1)
  {
    swift_getKeyPath();
    sub_10005FF28(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(a1 + 40) & 1) == 0 && *(a1 + 32) == 1)
    {
      return 0x4038000000000000;
    }
  }

  return 0x4030000000000000;
}

unint64_t sub_10005FD50()
{
  result = qword_10025D758;
  if (!qword_10025D758)
  {
    sub_100003E34(&qword_10025D750, &qword_1001D2B08);
    sub_10005FDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D758);
  }

  return result;
}

unint64_t sub_10005FDDC()
{
  result = qword_10025D760;
  if (!qword_10025D760)
  {
    sub_100003E34(&qword_10025D768, &qword_1001D2B10);
    sub_100003E34(&qword_10025D770, &qword_1001D2B18);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_10025D778, &qword_10025D770, &qword_1001D2B18, &unk_1001DCEDC);
    sub_10005FF28(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D760);
  }

  return result;
}

uint64_t sub_10005FF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060054(uint64_t a1, uint64_t a2)
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 81, 7);
}

unint64_t sub_1000600EC()
{
  result = qword_10025D7D0;
  if (!qword_10025D7D0)
  {
    sub_100003E34(&qword_10025D7C8, &qword_1001D2B40);
    sub_100060178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D7D0);
  }

  return result;
}

unint64_t sub_100060178()
{
  result = qword_10025D7D8;
  if (!qword_10025D7D8)
  {
    sub_100003E34(&qword_10025D7E0, &qword_1001D2B48);
    sub_100003E34(&qword_10025D7E8, &qword_1001D2B50);
    type metadata accessor for IconTitleLabelStyle(255);
    sub_100007120(&qword_10025D7F0, &qword_10025D7E8, &qword_1001D2B50, &unk_1001DCEDC);
    sub_10005FF28(&qword_10025D7F8, type metadata accessor for IconTitleLabelStyle, &unk_1001DB410);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D7D8);
  }

  return result;
}

uint64_t sub_1000602C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100060398()
{
  if (*(v0 + 16) == 1 && (*(v0 + 17) & 1) != 0)
  {
    v1 = 2;
    v2 = 32;
  }

  else
  {
    v1 = 0;
    v2 = 16;
  }

  return (*(v0 + 16 + v2))(1, 0, 0, v1);
}

uint64_t sub_100060404()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_1000604B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000605C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000606C8(uint64_t a1)
{
  type metadata accessor for GeometryProxy();
  if (v1 <= 0x3F)
  {
    sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000608CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100060A08(uint64_t a1)
{
  sub_1000596F4();
  if (v1 <= 0x3F)
  {
    sub_100060B04(319, qword_10025D910, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_100060B58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100060B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100060B58()
{
  if (!qword_1002631F0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002631F0);
    }
  }
}

unint64_t sub_100060BAC()
{
  result = qword_10025D958;
  if (!qword_10025D958)
  {
    sub_100003E34(&unk_10025D6E8, &qword_1001D29F0);
    sub_100060C64();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D958);
  }

  return result;
}

unint64_t sub_100060C64()
{
  result = qword_10025D960;
  if (!qword_10025D960)
  {
    sub_100003E34(&qword_10025D968, &unk_1001D2BB8);
    sub_100007120(&qword_10025D6E0, &qword_10025D6D8, &qword_1001D29B8, &unk_1001DCEDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D960);
  }

  return result;
}

unint64_t sub_100060D24()
{
  result = qword_10025D970;
  if (!qword_10025D970)
  {
    sub_100003E34(&qword_10025D790, &qword_1001D2B20);
    sub_100060E08(&qword_10025D978, &qword_10025D980, &qword_1001D2BC8, sub_10005FD50);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D970);
  }

  return result;
}

uint64_t sub_100060E08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100060E94()
{
  result = qword_10025D988;
  if (!qword_10025D988)
  {
    sub_100003E34(&qword_10025D800, &qword_1001D2B58);
    sub_100060E08(&qword_10025D990, &qword_10025D998, qword_1001D2BD0, sub_1000600EC);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D988);
  }

  return result;
}

unint64_t sub_100060FB0()
{
  result = qword_10025D9D0;
  if (!qword_10025D9D0)
  {
    sub_100003E34(&qword_10025D9A0, &qword_1001D2C78);
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D9D0);
  }

  return result;
}

unint64_t sub_100061068()
{
  result = qword_10025D9D8;
  if (!qword_10025D9D8)
  {
    sub_100003E34(&qword_10025D9B8, &qword_1001D2C90);
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100060FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025D9D8);
  }

  return result;
}

uint64_t sub_100061140(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransformItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000611E0(uint64_t result, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100061208()
{
  result = qword_10025DA58;
  if (!qword_10025DA58)
  {
    sub_100003E34(&qword_10025DA48, &qword_1001D2CE0);
    sub_100061294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA58);
  }

  return result;
}

unint64_t sub_100061294()
{
  result = qword_10025DA60;
  if (!qword_10025DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA60);
  }

  return result;
}

unint64_t sub_1000612E8()
{
  result = qword_10025DA68;
  if (!qword_10025DA68)
  {
    sub_100003E34(&qword_10025DA50, &qword_1001D2CE8);
    sub_1000613A0(&qword_10025DA70, &qword_10025DA78, &qword_1001D2CF0, sub_100061454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA68);
  }

  return result;
}

uint64_t sub_1000613A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_10005FF28(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061454()
{
  result = qword_10025DA80;
  if (!qword_10025DA80)
  {
    sub_100003E34(&qword_10025DA88, &qword_1001D2CF8);
    sub_1000614E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA80);
  }

  return result;
}

unint64_t sub_1000614E0()
{
  result = qword_10025DA90;
  if (!qword_10025DA90)
  {
    sub_100003E34(&qword_10025E140, &qword_1001D2D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DA90);
  }

  return result;
}

uint64_t sub_100061564()
{
  v1 = type metadata accessor for TransformItemView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_10000F428(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24));

  v6 = v1[6];
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1000611E0(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100061720()
{
  v1 = *(type metadata accessor for TransformItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return (*(v2 + 32))(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_100061798(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1000617AC()
{
  result = qword_10025DB00;
  if (!qword_10025DB00)
  {
    sub_100003E34(&qword_10025DB08, &qword_1001D2D40);
    sub_100061838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DB00);
  }

  return result;
}

unint64_t sub_100061838()
{
  result = qword_10025DB10;
  if (!qword_10025DB10)
  {
    sub_100003E34(&qword_10025DB18, &qword_1001D2D48);
    sub_1000614E0();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DB10);
  }

  return result;
}

uint64_t sub_100061904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100061A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100061B34(uint64_t a1)
{
  sub_100060B04(319, qword_10025D910, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_100060B04(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RewritingViewButtonViewModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100061C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100061C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100061CA4()
{
  result = qword_10025DBC0;
  if (!qword_10025DBC0)
  {
    sub_100003E34(&qword_10025DBC8, &qword_1001D2DE8);
    sub_100061068();
    sub_100007120(&qword_10025D9C8, &qword_10025D9C0, &qword_1001D2C98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBC0);
  }

  return result;
}

unint64_t sub_100061D60()
{
  result = qword_10025DBD0;
  if (!qword_10025DBD0)
  {
    sub_100003E34(&qword_10025DBD8, &qword_1001D2DF0);
    sub_100003E34(&qword_10025D9F8, &qword_1001D2CB8);
    sub_100007120(&qword_10025DA10, &qword_10025D9F8, &qword_1001D2CB8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_10025D9E0, &qword_1001D2CA0);
    sub_100007120(&qword_10025DA08, &qword_10025D9E0, &qword_1001D2CA0, &unk_1001DCEDC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBD0);
  }

  return result;
}

unint64_t sub_100061EF8()
{
  result = qword_10025DBF0;
  if (!qword_10025DBF0)
  {
    sub_100003E34(&qword_10025DBE8, &qword_1001D2E88);
    sub_100061FB0();
    sub_100007120(&qword_10025DC28, &unk_10025DC30, &unk_1001D2EA0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBF0);
  }

  return result;
}

unint64_t sub_100061FB0()
{
  result = qword_10025DBF8;
  if (!qword_10025DBF8)
  {
    sub_100003E34(&qword_10025DC00, &qword_1001D2E90);
    sub_10006203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DBF8);
  }

  return result;
}

unint64_t sub_10006203C()
{
  result = qword_10025DC08;
  if (!qword_10025DC08)
  {
    sub_100003E34(&qword_10025DC10, &qword_1001D2E98);
    type metadata accessor for ButtonStyleConfiguration.Label();
    type metadata accessor for IconOnlyLabelStyle();
    sub_10005FF28(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_10005FF28(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC08);
  }

  return result;
}

uint64_t sub_100062178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000621F0()
{
  result = qword_10025DC78;
  if (!qword_10025DC78)
  {
    sub_100003E34(&qword_10025DC58, &qword_1001D2EC8);
    sub_1000622A8();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC78);
  }

  return result;
}

unint64_t sub_1000622A8()
{
  result = qword_10025DC80;
  if (!qword_10025DC80)
  {
    sub_100003E34(&qword_10025DC70, &qword_1001D2F10);
    sub_100007120(&qword_10025DC88, &qword_10025DC68, &qword_1001D2F08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DC80);
  }

  return result;
}

unint64_t sub_100062390()
{
  result = qword_10025DCB8;
  if (!qword_10025DCB8)
  {
    sub_100003E34(&qword_10025DCC0, &unk_1001D2F50);
    sub_100061EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCB8);
  }

  return result;
}

unint64_t sub_100062418()
{
  result = qword_10025DCC8;
  if (!qword_10025DCC8)
  {
    sub_100003E34(&qword_10025DCB0, &qword_1001D2F48);
    sub_1000624A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCC8);
  }

  return result;
}

unint64_t sub_1000624A4()
{
  result = qword_10025DCD0;
  if (!qword_10025DCD0)
  {
    sub_100003E34(&qword_10025DC60, &qword_1001D2ED0);
    sub_100003E34(&qword_10025DC58, &qword_1001D2EC8);
    sub_1000621F0();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCD0);
  }

  return result;
}

__n128 sub_1000625BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000625E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100062628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000626A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100062804@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000341C(&qword_10025DD08, &qword_1001D3088);
  return sub_10006286C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10006286C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v46 = a3;
  v47 = sub_10000341C(&qword_10025DD10, &qword_1001D3090);
  *&v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v39 - v4;
  v44 = sub_10000341C(&qword_10025DD18, &qword_1001D3098);
  __chkstk_darwin(v44);
  v45 = (&v39 - v5);
  v6 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v40 = a1;
  v13 = swift_projectBox();
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  Bindable.wrappedValue.getter();
  v15 = *(v7 + 8);
  v15(v12, v6);
  LOBYTE(a1) = sub_100074B58();

  if (a1)
  {
    v14(v10, v13, v6);
    Bindable.projectedValue.getter();
    v15(v10, v6);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v15(v12, v6);
    v16 = v48;
    type metadata accessor for CompositionModel(0);
    sub_1000637F0();
    v43 = v49;
    v17 = Environment.init<A>(_:)();
    v19 = v18;
    v51[0] = 0;
    State.init(wrappedValue:)();
    v20 = v54;
    v21 = v55;
    FocusState.init<A>()();
    v22 = v54;
    v23 = v56;
    v24 = v19 & 1;
    v53 = v19 & 1;
    v52 = v55;
    v50 = v57;
    v25 = v45;
    *v45 = v17;
    *(v25 + 8) = v24;
    *(v25 + 9) = v54;
    *(v25 + 3) = *(&v54 + 3);
    v25[2] = v16;
    *(v25 + 3) = v43;
    *(v25 + 40) = v20;
    *(v25 + 41) = v48;
    *(v25 + 11) = *(&v48 + 3);
    v25[6] = v21;
    v25[7] = v22;
    *(v25 + 64) = v52;
    LODWORD(v22) = *v51;
    *(v25 + 17) = *&v51[3];
    *(v25 + 65) = v22;
    *(v25 + 9) = v23;
    *(v25 + 88) = v50;
    swift_storeEnumTagMultiPayload();
    sub_100063B44();
    sub_100063B98();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14(v12, v13, v6);
    Bindable.wrappedValue.getter();
    v15(v12, v6);
    v27 = v54;
    swift_getKeyPath();
    v54 = v27;
    sub_1000637F0();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v27 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v48 = v28;
    swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v40;
    v30 = v41;
    v31 = *v41;
    *(v29 + 40) = v41[1];
    v32 = *(v30 + 48);
    *(v29 + 56) = *(v30 + 32);
    *(v29 + 72) = v32;
    *(v29 + 88) = *(v30 + 64);
    *(v29 + 24) = v31;

    sub_1000639AC(v30, &v54);
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10000341C(&qword_10025DD20, &qword_1001D30F0);
    sub_100007120(&qword_10025DD28, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
    v33 = sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    v34 = sub_1000639E4();
    v35 = sub_100063AF0();
    v54 = v33;
    v55 = &type metadata for RefinementsTitleImageLabelStyle;
    *&v56 = v34;
    *(&v56 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v42;
    ForEach<>.init(_:id:content:)();
    v37 = v43;
    v38 = v47;
    (*(v43 + 16))(v45, v36, v47);
    swift_storeEnumTagMultiPayload();
    sub_100063B44();
    sub_100063B98();
    _ConditionalContent<>.init(storage:)();
    return (*(v37 + 8))(v36, v38);
  }
}

uint64_t sub_100062EE8(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_10000341C(&qword_10025DD30, &qword_1001D30F8);
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  v12 = *a3;
  *(v11 + 56) = a3[1];
  v13 = a3[3];
  *(v11 + 72) = a3[2];
  *(v11 + 88) = v13;
  *(v11 + 16) = a2;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  *(v11 + 104) = *(a3 + 64);
  *(v11 + 40) = v12;
  v17 = v10;
  v18 = v9;

  sub_1000639AC(a3, v19);
  sub_10000341C(&qword_10025DD68, &unk_1001D3130);
  sub_100007120(&qword_10025DD70, &qword_10025DD68, &unk_1001D3130, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v14 = &v8[*(v6 + 36)];
  *v14 = 0;
  v14[8] = 0;
  sub_1000639E4();
  sub_100063AF0();
  View.labelStyle<A>(_:)();
  return sub_10000F500(v8, &qword_10025DD30, &qword_1001D30F8);
}

uint64_t sub_1000630D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  v5 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = swift_projectBox();
  v24 = *(v6 + 16);
  v25 = v9;
  v24(v8);
  Bindable.wrappedValue.getter();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = v34;
  swift_getKeyPath();
  *&v34 = v11;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_100063D1C(v11 + v12, &v34);

  if (*(&v35 + 1))
  {
    sub_100028458(&v34, &v28);
    sub_10000F500(&v34, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(&v28, v31);
    (v24)(v8, v25, v5);
    Bindable.wrappedValue.getter();
    v10(v8, v5);
    v13 = v36[0];
    swift_getKeyPath();
    v36[0] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v16 = v26;
    v15 = v27;
    sub_10000A4AC(v26, v27, v14);

    sub_10000F4B4(&v28);
    v17 = v15;
  }

  else
  {
    sub_10000F500(&v34, &unk_10025B1C0, &unk_1001CFA90);
    v16 = v26;
    v17 = v27;
  }

  v18 = *(a4 + 32);
  v34 = *(a4 + 16);
  v35 = v18;
  v28 = v16;
  v29 = v17;

  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.setter();
  v20 = *(a4 + 48);
  v19 = *(a4 + 56);
  v21 = *(a4 + 64);
  v36[0] = v20;
  *&v34 = v20;
  *(&v34 + 1) = v19;
  LOBYTE(v35) = v21;
  sub_100063D8C(v36, &v28);

  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if ((v28 & 1) == 0)
  {
    *&v34 = v20;
    *(&v34 + 1) = v19;
    LOBYTE(v35) = v21;
    FocusState.Binding.wrappedValue.getter();
    v28 = v20;
    v29 = v19;
    v30 = v21;
    v32 = (v33 & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
  }

  sub_100063DE8(v36);
}

uint64_t sub_100063454(uint64_t a1, uint64_t a2)
{
  sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  sub_10004882C();
  return Label.init(title:icon:)();
}

uint64_t sub_1000634EC@<X0>(uint64_t a3@<X8>)
{
  sub_10002AC34();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_100063580@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000635C0()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  swift_allocBox();
  sub_1000626A8();
  type metadata accessor for CompositionModel(0);
  sub_1000637F0();
  Bindable<A>.init(wrappedValue:)();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0x6574736567677553;
  v1._object = 0xED00002079622064;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  v2._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2);

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringKey.init(stringInterpolation:)();
  Text.init(_:tableName:bundle:comment:)();
  sub_10000341C(&qword_10025DCE0, &qword_1001D3078);
  sub_10000341C(&qword_10025DCE8, &qword_1001D3080);
  sub_100063850();
  sub_100007120(&qword_10025DD00, &qword_10025DCE8, &qword_1001D3080, &protocol conformance descriptor for VStack<A>);
  Section<>.init(header:content:)();
}

unint64_t sub_1000637F0()
{
  result = qword_10025B210;
  if (!qword_10025B210)
  {
    type metadata accessor for CompositionModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B210);
  }

  return result;
}

unint64_t sub_100063850()
{
  result = qword_10025DCF0;
  if (!qword_10025DCF0)
  {
    sub_100003E34(&qword_10025DCE0, &qword_1001D3078);
    sub_1000638DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCF0);
  }

  return result;
}

unint64_t sub_1000638DC()
{
  result = qword_10025DCF8;
  if (!qword_10025DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DCF8);
  }

  return result;
}

uint64_t sub_100063938(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 89, 7);
}

unint64_t sub_1000639E4()
{
  result = qword_10025DD38;
  if (!qword_10025DD38)
  {
    sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    sub_100007120(&qword_10025DD40, &qword_10025DD48, &qword_1001D3100, &protocol conformance descriptor for Button<A>);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD38);
  }

  return result;
}

unint64_t sub_100063A9C()
{
  result = qword_100262D00;
  if (!qword_100262D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D00);
  }

  return result;
}

unint64_t sub_100063AF0()
{
  result = qword_10025DD50;
  if (!qword_10025DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD50);
  }

  return result;
}

unint64_t sub_100063B44()
{
  result = qword_10025DD58;
  if (!qword_10025DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD58);
  }

  return result;
}

unint64_t sub_100063B98()
{
  result = qword_10025DD60;
  if (!qword_10025DD60)
  {
    sub_100003E34(&qword_10025DD10, &qword_1001D3090);
    sub_100003E34(&qword_10025DD30, &qword_1001D30F8);
    sub_1000639E4();
    sub_100063AF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD60);
  }

  return result;
}

uint64_t sub_100063C7C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 105, 7);
}

uint64_t sub_100063D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063E40()
{
  result = qword_10025DD78;
  if (!qword_10025DD78)
  {
    sub_100003E34(&unk_10025DD80, &unk_1001D31B0);
    sub_100063850();
    sub_100007120(&qword_10025DD00, &qword_10025DCE8, &qword_1001D3080, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DD78);
  }

  return result;
}

uint64_t sub_100063F04()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_100064044()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v14;
  }

  if (!v5 || (swift_getKeyPath(), v14 = v5, sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = *(v5 + 32), v9 = *(v5 + 40), , v10 = &_swiftEmptySetSingleton, (v9 & 1) == 0) && v8 == 1)
  {
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    type metadata accessor for PresentationDetent();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001CF9E0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    v10 = sub_10000771C(v11);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  return v10;
}

uint64_t sub_1000642F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin(v3);
  v104 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for CompositionResponseView(0);
  v85 = *(v96 - 8);
  __chkstk_darwin(v96);
  v86 = v5;
  v87 = (v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v108 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v77 - v7;
  v88 = sub_10000341C(&qword_10025DE98, &qword_1001D3258);
  __chkstk_darwin(v88);
  v10 = v77 - v9;
  v93 = sub_10000341C(&qword_10025DEA0, &qword_1001D3260);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = v77 - v11;
  v95 = sub_10000341C(&qword_10025DEA8, &qword_1001D3268);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = v77 - v12;
  v101 = sub_10000341C(&qword_10025DEB0, &qword_1001D3270);
  __chkstk_darwin(v101);
  v97 = v77 - v13;
  v14 = sub_10000341C(&qword_10025DEB8, &qword_1001D3278);
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v100 = v77 - v15;
  v99 = sub_10000341C(&qword_10025DEC0, &qword_1001D3280);
  __chkstk_darwin(v99);
  v98 = v77 - v16;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) == 1)
  {
    *&v114 = *v2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
  }

  v22 = swift_allocBox();
  v24 = v23;
  type metadata accessor for CompositionModel(0);
  v25 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v83 = v24;
  v80 = v25;
  Bindable<A>.init(wrappedValue:)();
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_10000341C(&qword_10025DEC8, &qword_1001D3288);
  sub_100065190(v22, v2);
  v26 = v2;
  v27 = v108;
  v28 = *(v108 + 16);
  v82 = v108 + 16;
  v84 = v28;
  v78 = v8;
  v28(v8, v24, v6);
  v79 = v6;
  Bindable.wrappedValue.getter();
  v29 = *(v27 + 8);
  v108 = v27 + 8;
  v81 = v29;
  v29(v8, v6);
  v30 = v114;
  swift_getKeyPath();
  *&v114 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v114) = v31 == 1;
  v32 = v87;
  sub_10006AE4C(v2, v87);
  v33 = (*(v85 + 80) + 24) & ~*(v85 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  sub_10006BDB0(v32, v34 + v33, type metadata accessor for CompositionResponseView);
  v35 = sub_100007120(&qword_10025DED0, &qword_10025DE98, &qword_1001D3258, &protocol conformance descriptor for VStack<A>);
  v90 = v22;

  v36 = v89;
  v37 = v88;
  View.onChange<A>(of:initial:_:)();

  v38 = sub_10000F500(v10, &qword_10025DE98, &qword_1001D3258);
  v87 = v77;
  __chkstk_darwin(v38);
  v77[-2] = v26;
  v77[-1] = v22;
  v39 = sub_10000341C(&qword_10025DED8, &qword_1001D32B8);
  *&v114 = v37;
  *(&v114 + 1) = &type metadata for Bool;
  v115 = v35;
  v116 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_100007120(&unk_10025DEE0, &qword_10025DED8, &qword_1001D32B8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v42 = v92;
  v43 = v93;
  View.toolbar<A>(content:)();
  (*(v91 + 8))(v36, v43);
  v77[1] = v26;
  v44 = *(v26 + 56);
  v111 = *(v26 + 48);
  v112 = v44;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v45 = v115;
  *&v114 = v43;
  *(&v114 + 1) = v39;
  v115 = OpaqueTypeConformance2;
  v116 = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v97;
  v47 = v95;
  View.inlineFeedback(controller:completion:)();

  (*(v94 + 8))(v42, v47);
  *(v46 + *(sub_10000341C(&unk_10025DEF0, &unk_1001D32C8) + 36)) = 0;
  v48 = v78;
  v49 = v79;
  v84(v78, v83, v79);
  Bindable.wrappedValue.getter();
  v81(v48, v49);
  v50 = v114;
  swift_getKeyPath();
  *&v114 = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v51 = v101;
  v52 = v46 + *(v101 + 36);
  v53 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v114) = 1;
  static Binding.constant(_:)();
  v54 = v111;
  v55 = v112;
  LOBYTE(OpaqueTypeConformance2) = v113;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v52 + 8) = 257;
  v56 = v52 + v53[8];
  *v56 = v54;
  *(v56 + 8) = v55;
  *(v56 + 16) = OpaqueTypeConformance2;
  v57 = (v52 + v53[9]);
  *v57 = 0xD000000000000017;
  v57[1] = 0x80000001001D31C0;
  v58 = v52 + v53[10];
  type metadata accessor for CGSize(0);
  v109 = 0;
  v110 = 0;
  State.init(wrappedValue:)();
  v59 = v115;
  *v58 = v114;
  *(v58 + 16) = v59;
  v60 = v52 + v53[11];
  LOBYTE(v109) = 0;
  State.init(wrappedValue:)();
  v61 = *(&v114 + 1);
  *v60 = v114;
  *(v60 + 8) = v61;
  v62 = v52 + v53[12];
  v109 = 0;
  LOBYTE(v110) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v63 = BYTE8(v114);
  v64 = v115;
  *v62 = v114;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  v65 = v52 + v53[13];
  LOBYTE(v109) = 0;
  State.init(wrappedValue:)();
  v66 = *(&v114 + 1);
  *v65 = v114;
  *(v65 + 8) = v66;
  v67 = v52 + v53[14];
  type metadata accessor for PresentationModel(0);
  sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v67 = Environment.init<A>(_:)();
  *(v67 + 8) = v68 & 1;
  v70 = v104;
  v69 = v105;
  v71 = v106;
  (*(v105 + 104))(v104, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v106);
  v72 = sub_10006B10C();
  v73 = v100;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v69 + 8))(v70, v71);
  sub_10000F500(v46, &qword_10025DEB0, &qword_1001D3270);
  LocalizedStringKey.init(stringLiteral:)();
  *&v114 = v51;
  *(&v114 + 1) = v72;
  swift_getOpaqueTypeConformance2();
  v74 = v98;
  v75 = v103;
  View.navigationTitle(_:)();

  (*(v102 + 8))(v73, v75);
  sub_10006B40C();
  View.navigationBarBackButtonHidden(_:)();
  sub_10000F500(v74, &qword_10025DEC0, &qword_1001D3280);
}

uint64_t sub_100065190(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = swift_projectBox();
  (*(v5 + 16))(v7, v8, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = a1;
  v13 = a2;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_10025DF98, &qword_1001D33D0);
  sub_100007120(&qword_10025DFA0, &qword_10025DF98, &qword_1001D33D0, &protocol conformance descriptor for VStack<A>);
  return ScrollView.init(_:showsIndicators:content:)();
}

uint64_t sub_100065398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_10000341C(&qword_10025DFA8, &qword_1001D33D8);
  return sub_100065400(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100065400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v247 = a2;
  v228 = a3;
  v229 = type metadata accessor for FeedbackView(0);
  v227 = *(v229 - 8);
  v4 = __chkstk_darwin(v229);
  v218 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v217 = &v204 - v6;
  v7 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v8 = __chkstk_darwin(v7 - 8);
  v244 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v248 = &v204 - v10;
  v246 = type metadata accessor for Divider();
  v255 = *(v246 - 8);
  v11 = __chkstk_darwin(v246);
  v245 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v251 = &v204 - v13;
  v240 = type metadata accessor for CompositionResponseView(0);
  v237 = *(v240 - 1);
  __chkstk_darwin(v240);
  v238 = v14;
  v239 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v226 = type metadata accessor for SmallIconTitleLabelStyle(0);
  __chkstk_darwin(v226);
  v16 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_10000341C(&qword_10025DFB8, &qword_1001D33E8);
  __chkstk_darwin(v225);
  v18 = &v204 - v17;
  *&v230 = sub_10000341C(&qword_10025DFC0, &qword_1001D33F0);
  __chkstk_darwin(v230);
  v221 = &v204 - v19;
  *&v231 = sub_10000341C(&qword_10025DFC8, &qword_1001D33F8);
  __chkstk_darwin(v231);
  v233 = &v204 - v20;
  v232 = sub_10000341C(&qword_10025DFD0, &qword_1001D3400);
  __chkstk_darwin(v232);
  v234 = &v204 - v21;
  v235 = sub_10000341C(&qword_10025DFD8, &qword_1001D3408);
  __chkstk_darwin(v235);
  v236 = &v204 - v22;
  v243 = sub_10000341C(&unk_10025DFE0, &unk_1001D3410);
  v254 = *(v243 - 8);
  v23 = __chkstk_darwin(v243);
  v242 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v250 = &v204 - v25;
  v26 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v204 - v28;
  v30 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v220 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v204 - v34;
  v36 = sub_10000341C(&qword_10025DFF0, &qword_1001D3420);
  v37 = __chkstk_darwin(v36 - 8);
  v241 = &v204 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v249 = &v204 - v39;
  v252 = a1;
  v40 = swift_projectBox();
  v260 = *(v31 + 16);
  v261 = v40;
  v257 = v31 + 16;
  v260(v35);
  Bindable.wrappedValue.getter();
  v41 = *(v31 + 8);
  v256 = v35;
  v253 = v30;
  v258 = v31 + 8;
  v262 = v41;
  (v41)(v35, v30);
  v42 = v275;
  swift_getKeyPath();
  *&v275 = v42;
  v259 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v43 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  if (v43)
  {
    v45 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v45 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      *&v275 = v44;
      *(&v275 + 1) = v43;
      sub_10002AC34();
      Label<>.init<A>(_:systemImage:)();
      v46 = v249;
      (*(v27 + 32))(v249, v29, v26);
      v47 = 0;
      goto LABEL_8;
    }
  }

  v47 = 1;
  v46 = v249;
LABEL_8:
  (*(v27 + 56))(v46, v47, 1, v26);
  v48 = static Alignment.center.getter();
  v50 = v49;
  v51 = v225;
  v52 = v225[12];
  *&v18[v52] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v18 = 0;
  *(v18 + 1) = v48;
  *(v18 + 2) = v50;
  __asm { FMOV            V0.2D, #10.0 }

  *(v18 + 24) = _Q0;
  v18[40] = 0;
  v58 = v247;
  sub_1000674C8(v247, v252, &v18[v51[11]]);
  v59 = v58 + v240[9];
  v60 = *v59;
  v61 = v59[8];
  v62 = *(v59 + 2);
  v224 = v60;
  *&v263 = v60;
  LODWORD(v223) = v61;
  BYTE8(v263) = v61;
  v222 = v62;
  *&v264 = v62;
  sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v63 = v276;
  v64 = v277;
  *v16 = v275;
  *(v16 + 2) = v63;
  v16[24] = v64;
  v65 = *(v226 + 20);
  *&v16[v65] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025DFF8, &qword_10025DFB8, &qword_1001D33E8, &unk_1001DCEDC);
  sub_10006BD30(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
  v66 = v221;
  View.labelStyle<A>(_:)();
  sub_10006B818(v16);
  sub_10000F500(v18, &qword_10025DFB8, &qword_1001D33E8);
  v263 = 0uLL;
  LOBYTE(v264) = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v67 = v275;
  v68 = v277;
  v291 = v276;
  v69 = v66 + *(sub_10000341C(&unk_10025E000, &qword_1001D3488) + 36);
  *v69 = 0x10000;
  *(v69 + 8) = v67;
  *(v69 + 24) = v291;
  *(v69 + 25) = *v290;
  *(v69 + 28) = *&v290[3];
  *(v69 + 32) = v68;
  *(v66 + *(v230 + 36)) = 256;
  v70 = static Edge.Set.bottom.getter();
  if (qword_10025A748 != -1)
  {
    swift_once();
  }

  v71 = 0uLL;
  v72 = 0uLL;
  v73 = v262;
  if ((byte_10025DD98 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v72 + 1) = v74;
    *(&v71 + 1) = v75;
  }

  v226 = v72;
  v230 = v71;
  v76 = v233;
  sub_10002A894(v66, v233, &qword_10025DFC0, &qword_1001D33F0);
  v77 = v76 + *(v231 + 36);
  *v77 = v70;
  *(v77 + 24) = v226;
  *(v77 + 8) = v230;
  *(v77 + 40) = BYTE8(v67);
  *&v263 = v224;
  BYTE8(v263) = v223;
  *&v264 = v222;
  State.projectedValue.getter();
  v231 = v275;
  v78 = v276;
  v79 = v277;
  v80 = v234;
  sub_10002A894(v76, v234, &qword_10025DFC8, &qword_1001D33F8);
  v81 = v80 + *(v232 + 36);
  *v81 = v231;
  *(v81 + 16) = v78;
  *(v81 + 24) = v79;
  v82 = v256;
  v83 = v253;
  (v260)(v256, v261, v253);
  Bindable.wrappedValue.getter();
  (v73)(v82, v83);
  v84 = v275;
  swift_getKeyPath();
  *&v275 = v84;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v82) = *(v84 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v85 = v82 == 1;
  KeyPath = swift_getKeyPath();
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v88 = v236;
  sub_10002A894(v80, v236, &qword_10025DFD0, &qword_1001D3400);
  v89 = (v88 + *(v235 + 36));
  *v89 = KeyPath;
  v89[1] = sub_100035DEC;
  v89[2] = v87;
  v90 = v247;
  v91 = v247 + v240[10];
  v92 = *v91;
  v93 = *(v91 + 1);
  LOBYTE(v263) = v92;
  *(&v263 + 1) = v93;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v94 = v239;
  sub_10006AE4C(v90, v239);
  v95 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v96 = swift_allocObject();
  sub_10006BDB0(v94, v96 + v95, type metadata accessor for CompositionResponseView);
  sub_10000341C(&qword_10025E010, &qword_1001D3498);
  sub_10006B610(&qword_10025E018, &qword_10025DFD8, &qword_1001D3408, sub_10006B8E4);
  sub_10006BBD4();
  v97 = v83;
  v98 = v256;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_10000F500(v88, &qword_10025DFD8, &qword_1001D3408);
  Divider.init()();
  v99 = v260;
  (v260)(v98, v261, v97);
  Bindable.wrappedValue.getter();
  (v262)(v98, v97);
  v100 = v275;
  swift_getKeyPath();
  *&v275 = v100;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v240 = *(v100 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v101 = v240;

  type metadata accessor for CommonUIManager(0);
  sub_10006BD30(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  v239 = Environment.init<A>(_:)();
  LODWORD(v238) = v102 & 1;
  v289 = v102 & 1;
  v103 = v261;
  v99(v98, v261, v97);
  swift_retain_n();
  Bindable.wrappedValue.getter();
  (v262)(v98, v97);
  v104 = v275;
  swift_getKeyPath();
  *&v275 = v104;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v105 = v262;
  v225 = *(v104 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  *&v226 = v225;

  v106 = v99;
  v107 = v105;
  v106(v98, v103, v97);
  Bindable.wrappedValue.getter();
  (v105)(v98, v97);
  v108 = v275;
  swift_getKeyPath();
  *&v275 = v108;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v109 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v110 = *(v108 + v109);

  v111 = *(v110 + 16);

  if (v111)
  {
    v112 = v220;
    v113 = v261;
    v114 = v253;
    (v260)(v220, v261, v253);
    v115 = v256;
    Bindable.projectedValue.getter();
    (v107)(v112, v114);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (v107)(v115, v114);
    v224 = *(&v263 + 1);
    v236 = v264;
    v237 = v263;
    type metadata accessor for CompositionModel(0);
    v235 = Environment.init<A>(_:)();
    LOBYTE(v112) = v116;
    FocusState.init<A>()();
    v223 = v276;
    v233 = v277;
    v234 = v275;
    LOBYTE(v275) = v112 & 1;
    LOBYTE(v273[0]) = BYTE8(v275);
    LODWORD(v232) = v278;
    LOBYTE(v269) = v278;
    *&v230 = v112 & 1;
    *&v231 = BYTE8(v275);
  }

  else
  {
    v235 = 0;
    v236 = 0;
    v237 = 0;
    v223 = 0;
    v224 = 0;
    v233 = 0;
    v234 = 0;
    LODWORD(v232) = 0;
    *&v231 = 0;
    *&v230 = 0;
    v113 = v261;
  }

  static Alignment.center.getter();
  v117 = 1;
  _FrameLayout.init(width:height:alignment:)(&v292);
  v221 = v294;
  v222 = v292;
  v219 = v297;
  v220 = v296;
  v286 = 1;
  v285 = v293;
  v284 = v295;
  v118 = type metadata accessor for FeedbackFeatureFlags();
  v277 = v118;
  v278 = sub_10006BD30(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v119 = sub_10002DB6C(&v275);
  (*(*(v118 - 8) + 104))(v119, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v118);
  LOBYTE(v118) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v275);
  if (v118)
  {
    v120 = v256;
    v121 = v253;
    v122 = v260;
    (v260)(v256, v113, v253);
    Bindable.wrappedValue.getter();
    (v107)(v120, v121);
    v123 = v275;
    swift_getKeyPath();
    *&v275 = v123;
    sub_10006BD30(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v124 = *(v123 + 40);
    *&v216 = *(v123 + 32);
    *(&v216 + 1) = v124;

    v122(v120, v261, v121);
    Bindable.wrappedValue.getter();
    v125 = v262;
    (v262)(v120, v121);
    v126 = v275;
    swift_getKeyPath();
    *&v275 = v126;
    v127 = v261;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v128 = *(v126 + 56);
    *&v215 = *(v126 + 48);
    *(&v215 + 1) = v128;

    v129 = v260;
    (v260)(v120, v127, v121);
    Bindable.wrappedValue.getter();
    (v125)(v120, v121);
    v130 = sub_1000731AC();
    v213 = v131;
    v214 = v130;

    v129(v120, v127, v121);
    Bindable.wrappedValue.getter();
    (v125)(v120, v121);
    v132 = sub_1000731C0();
    v211 = v133;
    v212 = v132;

    v129(v120, v127, v121);
    Bindable.wrappedValue.getter();
    (v125)(v120, v121);
    v134 = v275;
    swift_getKeyPath();
    *&v275 = v134;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v135 = *(v134 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v135)
    {
      v136 = v135;
      v137 = [v136 string];
      v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v139;
      v210 = v138;
    }

    else
    {

      v209 = 0xE000000000000000;
      v210 = 0;
    }

    v140 = v256;
    v141 = v261;
    v142 = v253;
    (v260)(v256, v261, v253);
    Bindable.wrappedValue.getter();
    v143 = v262;
    (v262)(v140, v142);
    v144 = v275;
    swift_getKeyPath();
    *&v275 = v144;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v145 = *(v144 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    v207 = *(v144 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v208 = v145;

    v146 = v247[7];
    *&v275 = v247[6];
    *(&v275 + 1) = v146;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v247 = v263;
    (v260)(v140, v141, v142);
    Bindable.wrappedValue.getter();
    (v143)(v140, v142);
    v147 = v275;
    swift_getKeyPath();
    *&v275 = v147;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v148 = *(v147 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v149 = 1;
    if (v148 != 1)
    {
      v150 = v256;
      v151 = v253;
      (v260)(v256, v141, v253);
      Bindable.wrappedValue.getter();
      (v262)(v150, v151);
      v152 = v275;
      swift_getKeyPath();
      *&v275 = v152;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LODWORD(v150) = *(v152 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

      v149 = v150 == 2;
    }

    v206 = v149;
    v153 = v256;
    v154 = v253;
    (v260)(v256, v141, v253);
    Bindable.wrappedValue.getter();
    v155 = v262;
    (v262)(v153, v154);
    v156 = v275;
    swift_getKeyPath();
    *&v275 = v156;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v157 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
    swift_beginAccess();
    v205 = *(v156 + v157);

    v158 = v260;
    v159 = v261;
    (v260)(v153, v261, v154);
    Bindable.wrappedValue.getter();
    (v155)(v153, v154);
    v160 = v158;
    v161 = v275;
    swift_getKeyPath();
    *&v275 = v161;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v162 = *(v161 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v160(v153, v159, v154);
    Bindable.wrappedValue.getter();
    (v262)(v153, v154);
    v163 = v275;
    swift_getKeyPath();
    *&v275 = v163;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v164 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
    swift_beginAccess();
    v165 = *(v163 + v164);

    v166 = v218;
    *(v218 + 25) = 0;
    v167 = *(v229 + 92);
    *(v166 + v167) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v166 + 128) = xmmword_1001D31C0;
    *(v166 + 144) = 0;
    v168 = v216;
    v169 = v215;
    *(v166 + 152) = 1;
    *(v166 + 24) = v169;
    *(v166 + 8) = v168;
    v170 = v213;
    *(v166 + 40) = v214;
    *(v166 + 48) = v170;
    v171 = v211;
    *(v166 + 56) = v212;
    *(v166 + 64) = v171;
    v172 = v209;
    *(v166 + 72) = v210;
    *(v166 + 80) = v172;
    v173 = v208;
    *(v166 + 88) = v207;
    *(v166 + 96) = v173;
    *v166 = v247;
    *(v166 + 153) = v206;
    *(v166 + 154) = 2;
    *(v166 + 156) = 0;
    *&v263 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v174 = *(&v275 + 1);
    *(v166 + 208) = v275;
    *(v166 + 160) = 0u;
    *(v166 + 176) = 0u;
    *(v166 + 192) = 0;
    *(v166 + 104) = v205;
    *(v166 + 112) = v162;
    *(v166 + 120) = v165;
    *(v166 + 224) = 0;
    *(v166 + 232) = 0;
    *(v166 + 216) = v174;
    v175 = v217;
    sub_10006BDB0(v166, v217, type metadata accessor for FeedbackView);
    sub_10006BDB0(v175, v248, type metadata accessor for FeedbackView);
    v117 = 0;
  }

  v176 = v248;
  (*(v227 + 56))(v248, v117, 1, v229);
  v177 = v241;
  sub_1000081F8(v249, v241, &qword_10025DFF0, &qword_1001D3420);
  v262 = *(v254 + 16);
  v178 = v242;
  v179 = v243;
  (v262)(v242, v250, v243);
  v180 = *(v255 + 16);
  v181 = v245;
  v180(v245, v251, v246);
  LODWORD(v258) = v286;
  LODWORD(v259) = v285;
  LODWORD(v260) = v284;
  sub_1000081F8(v176, v244, &qword_10025DFB0, &qword_1001D33E0);
  v182 = v228;
  sub_1000081F8(v177, v228, &qword_10025DFF0, &qword_1001D3420);
  v183 = sub_10000341C(&qword_10025E068, &qword_1001D34F0);
  (v262)(v182 + v183[12], v178, v179);
  v184 = v246;
  v180((v182 + v183[16]), v181, v246);
  v185 = (v182 + v183[20]);
  *&v263 = v239;
  BYTE8(v263) = v238;
  HIDWORD(v263) = *&v288[3];
  *(&v263 + 9) = *v288;
  *&v264 = v240;
  BYTE8(v264) = 0;
  HIDWORD(v264) = *&v287[3];
  *(&v264 + 9) = *v287;
  v262 = sub_10006BCE0;
  *&v265 = sub_10006BCE0;
  v186 = v252;
  *(&v265 + 1) = v252;
  v267 = 0u;
  v266 = 0u;
  v261 = sub_10006BD00;
  *&v268 = sub_10006BD00;
  *(&v268 + 1) = v252;
  v187 = v264;
  *v185 = v263;
  v185[1] = v187;
  v188 = v265;
  v189 = v266;
  v190 = v268;
  v185[4] = v267;
  v185[5] = v190;
  v185[2] = v188;
  v185[3] = v189;
  v191 = v224;
  *(v182 + v183[24]) = v225;
  v192 = (v182 + v183[28]);
  *&v269 = v235;
  *(&v269 + 1) = v230;
  *&v270 = v237;
  *(&v270 + 1) = v191;
  *&v271 = v236;
  *(&v271 + 1) = v234;
  *&v272[0] = v231;
  v193 = v223;
  *(&v272[0] + 1) = v223;
  *&v272[1] = v233;
  BYTE8(v272[1]) = v232;
  v194 = v270;
  *v192 = v269;
  v192[1] = v194;
  v195 = v272[0];
  v192[2] = v271;
  v192[3] = v195;
  *(v192 + 57) = *(v272 + 9);
  v196 = v182 + v183[32];
  *v196 = 0;
  *(v196 + 8) = v258;
  *(v196 + 16) = v222;
  *(v196 + 24) = v259;
  *(v196 + 32) = v221;
  *(v196 + 40) = v260;
  v197 = v219;
  *(v196 + 48) = v220;
  *(v196 + 56) = v197;
  v198 = v244;
  sub_1000081F8(v244, v182 + v183[36], &qword_10025DFB0, &qword_1001D33E0);
  sub_1000081F8(&v263, &v275, &qword_10025E070, &qword_1001D34F8);
  v260 = v226;
  sub_1000081F8(&v269, &v275, &unk_10025E078, &qword_1001D3500);
  sub_10000F500(v248, &qword_10025DFB0, &qword_1001D33E0);
  v199 = *(v255 + 8);
  v255 += 8;
  v200 = v184;
  v199(v251, v184);
  v201 = *(v254 + 8);
  v254 += 8;
  v202 = v243;
  v201(v250, v243);
  sub_10000F500(v249, &qword_10025DFF0, &qword_1001D3420);
  sub_10000F500(v198, &qword_10025DFB0, &qword_1001D33E0);
  v273[0] = v235;
  v273[1] = v230;
  v273[2] = v237;
  v273[3] = v191;
  v273[4] = v236;
  v273[5] = v234;
  v273[6] = v231;
  v273[7] = v193;
  v273[8] = v233;
  v274 = v232;
  sub_10000F500(v273, &unk_10025E078, &qword_1001D3500);

  *&v275 = v239;
  BYTE8(v275) = v238;
  *(&v275 + 9) = *v288;
  HIDWORD(v275) = *&v288[3];
  v276 = v240;
  LOBYTE(v277) = 0;
  *(&v277 + 1) = *v287;
  HIDWORD(v277) = *&v287[3];
  v278 = v262;
  v279 = v186;
  v280 = 0u;
  v281 = 0u;
  v282 = v261;
  v283 = v186;
  sub_10000F500(&v275, &qword_10025E070, &qword_1001D34F8);
  v199(v245, v200);
  v201(v242, v202);
  return sub_10000F500(v241, &qword_10025DFF0, &qword_1001D3420);
}

uint64_t sub_1000674C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v65 = type metadata accessor for EnvironmentValues();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v63 - v7;
  v9 = sub_10000341C(&qword_10025E0A8, &qword_1001D36A0);
  v10 = __chkstk_darwin(v9 - 8);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v63 - v12;
  v13 = type metadata accessor for CompositionResponseView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000341C(&qword_10025E0B0, &qword_1001D36A8);
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v20 = sub_10000341C(&qword_10025E0B8, &qword_1001D36B0);
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = __chkstk_darwin(v20);
  v77 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v78 = &v63 - v24;
  v25 = __chkstk_darwin(v23);
  v75 = &v63 - v26;
  __chkstk_darwin(v25);
  v28 = &v63 - v27;
  v83 = a1;
  sub_10006AE4C(a1, v16);
  v29 = *(v14 + 80);
  v30 = (v29 + 16) & ~v29;
  v71 = v30 + v15;
  v31 = (v30 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = v29;
  v32 = swift_allocObject();
  v82 = v30;
  sub_10006BDB0(v16, v32 + v30, type metadata accessor for CompositionResponseView);
  v67 = v31;
  *(v32 + v31) = a2;

  v33 = sub_10000341C(&qword_10025E0C0, &qword_1001D36B8);
  v69 = sub_10006BFC8();
  v70 = v33;
  Button.init(action:label:)();
  v19[*(v17 + 36)] = 0;
  v34 = sub_10006C0D4();
  v76 = v28;
  v74 = v17;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v19, &qword_10025E0B0, &qword_1001D36A8);
  v66 = a2;
  v35 = swift_projectBox();
  v36 = v68;
  (*(v6 + 16))(v8, v35, v68);
  Bindable.wrappedValue.getter();
  (*(v6 + 8))(v8, v36);
  v37 = v85;
  swift_getKeyPath();
  v85 = v37;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v32) = *(v37 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent);

  if (v32 == 1)
  {
    v68 = v34;
    v38 = *v83;
    v39 = *(v83 + 8);

    if ((v39 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v41 = v63;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v64 + 8))(v41, v65);
      v38 = v85;
    }

    swift_getKeyPath();
    v85 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v38 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);

    v43 = v42 > 0;
    v44 = v83;
    sub_10006AE4C(v83, v16);
    v45 = v67;
    v46 = v16;
    v47 = swift_allocObject();
    sub_10006BDB0(v16, v47 + v82, type metadata accessor for CompositionResponseView);
    v48 = v66;
    *(v47 + v45) = v66;
    __chkstk_darwin(v48);
    *(&v63 - 16) = v43;

    Button.init(action:label:)();
    v49 = v74;
    v50 = v75;
    v19[*(v74 + 36)] = 0;
    View.accessibilityIdentifier(_:)();
    v51 = v44;
    sub_10000F500(v19, &qword_10025E0B0, &qword_1001D36A8);
    v52 = v84;
    sub_10002A894(v50, v84, &qword_10025E0B8, &qword_1001D36B0);
    v53 = 0;
  }

  else
  {
    v53 = 1;
    v51 = v83;
    v52 = v84;
    v49 = v74;
    v50 = v75;
    v46 = v16;
  }

  (*(v72 + 56))(v52, v53, 1, v73);
  sub_10006AE4C(v51, v46);
  v54 = swift_allocObject();
  sub_10006BDB0(v46, v54 + v82, type metadata accessor for CompositionResponseView);
  Button.init(action:label:)();
  v19[*(v49 + 36)] = 0;
  View.accessibilityIdentifier(_:)();
  sub_10000F500(v19, &qword_10025E0B0, &qword_1001D36A8);
  v55 = v76;
  v56 = v78;
  sub_1000081F8(v76, v78, &qword_10025E0B8, &qword_1001D36B0);
  v57 = v79;
  sub_1000081F8(v52, v79, &qword_10025E0A8, &qword_1001D36A0);
  v58 = v77;
  sub_1000081F8(v50, v77, &qword_10025E0B8, &qword_1001D36B0);
  v59 = v50;
  v60 = v80;
  sub_1000081F8(v56, v80, &qword_10025E0B8, &qword_1001D36B0);
  v61 = sub_10000341C(&qword_10025E100, &qword_1001D36F0);
  sub_1000081F8(v57, v60 + *(v61 + 48), &qword_10025E0A8, &qword_1001D36A0);
  sub_1000081F8(v58, v60 + *(v61 + 64), &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v59, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v84, &qword_10025E0A8, &qword_1001D36A0);
  sub_10000F500(v55, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v58, &qword_10025E0B8, &qword_1001D36B0);
  sub_10000F500(v57, &qword_10025E0A8, &qword_1001D36A0);
  return sub_10000F500(v56, &qword_10025E0B8, &qword_1001D36B0);
}

uint64_t sub_100067EFC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100063F04();
  sub_100153D18();

  v12 = *a1;
  v13 = *(a1 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v12 = v28;
  }

  swift_getKeyPath();
  v28 = v12;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v12 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v16 = v15;

  v27 = a2;
  if (v15)
  {
    v17 = swift_projectBox();
    v18 = *(v5 + 16);
    v18(v7, v17, v4);
    Bindable.wrappedValue.getter();
    v26 = v5;
    (*(v5 + 8))(v7, v4);
    v19 = v28;
    swift_getKeyPath();
    v28 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong copyText:v16];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v5 = v26;
  }

  else
  {
    v18 = *(v5 + 16);
  }

  v21 = swift_projectBox();
  v18(v7, v21, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v22 = v28;
  swift_getKeyPath();
  v28 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = swift_unknownObjectWeakLoadStrong();

  if (v23)
  {
    [v23 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068340(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  sub_100063F04();
  sub_100153D18();

  v6 = swift_projectBox();
  v7 = v3 + 16;
  v24 = *(v3 + 16);
  v24(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v10 = *(v3 + 8);
  v8 = v3 + 8;
  v9 = v10;
  v10(v5, v2);
  v11 = v25;
  swift_getKeyPath();
  v25 = v11;
  v23 = sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse);
  v22 = v12;
  v13 = v24;

  if (v12)
  {
    v21 = v6;
    v20[1] = v7;
    v13(v5, v6, v2);
    Bindable.wrappedValue.getter();
    v20[2] = v8;
    v9(v5, v2);
    v14 = v25;
    swift_getKeyPath();
    v25 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v16 = v22;
      [Strong replaceSelectionWithText:v22];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v6 = v21;
    v13 = v24;
  }

  v13(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v9(v5, v2);
  v17 = v25;
  swift_getKeyPath();
  v25 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = swift_unknownObjectWeakLoadStrong();

  if (v18)
  {
    [v18 endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006869C@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100068728(uint64_t a1)
{
  type metadata accessor for CompositionResponseView(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1000687B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025E088, &qword_1001D3658);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_10000341C(&unk_10025E090, &qword_1001D3660);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v29[1] = a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v29[0] = v10;
    v17 = v8;
    v18 = v6;
    v19 = v7;
    v20 = a2;
    v21 = v16;
    os_log(_:dso:log:_:_:)();

    a2 = v20;
    v7 = v19;
    v6 = v18;
    v8 = v17;
    v10 = v29[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
    v15 = v30;
  }

  swift_getKeyPath();
  v30 = v15;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *&v15[OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse];
  v23 = v22;

  if (v22)
  {
    sub_10000341C(&qword_100264130, &qword_1001D3668);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001CF9D0;
    *(v24 + 32) = UIActivityTypeCopyToPasteboard;
    v30 = v23;
    v31 = v24;
    v25 = v23;
    v26 = UIActivityTypeCopyToPasteboard;
    sub_100064044();
    type metadata accessor for CompositionResponseView(0);
    sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
    State.projectedValue.getter();
    sub_10006BC84();
    View.presentationDetents(_:selection:)();

    sub_10000F500(v6, &qword_10025E088, &qword_1001D3658);

    (*(v8 + 32))(a2, v10, v7);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return (*(v8 + 56))(a2, v27, 1, v7);
}

uint64_t sub_100068BB0(uint64_t a1, char a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068D80(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v5 + 16))(v7, v9, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v10 = v16;
  swift_getKeyPath();
  v16 = v10;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      sub_100063F04();
      sub_100153D78();
    }

    v13 = sub_100063F04();
    swift_getKeyPath();
    v16 = v13;
    sub_10006BD30(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 81);

    if (v8 != v14)
    {
      sub_100063F04();
      sub_1001537FC(v8);
    }
  }

  return result;
}

uint64_t sub_100068FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v21 = sub_10000341C(&qword_10025DF30, &qword_1001D3308);
  __chkstk_darwin(v21);
  v6 = &v19 - v5;
  v20 = sub_10000341C(&qword_10025DF38, &qword_1001D3310);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000341C(&qword_10025DF40, &qword_1001D3318);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  static ToolbarItemPlacement.cancellationAction.getter();
  v25 = a1;
  v26 = a2;
  sub_10000341C(&qword_10025DF48, &unk_1001D3320);
  sub_10006B520();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v23 = a1;
  v24 = a2;
  sub_10000341C(&qword_10025DF70, &unk_1001D3330);
  sub_10006B610(&qword_10025DF78, &qword_10025DF70, &unk_1001D3330, sub_10006B6C0);
  ToolbarItem<>.init(placement:content:)();
  v15 = *(v21 + 48);
  (*(v12 + 16))(v6, v14, v11);
  v16 = &v6[v15];
  v17 = v20;
  (*(v7 + 16))(v16, v9, v20);
  TupleToolbarContent.init(_:)();
  (*(v7 + 8))(v9, v17);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100069328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v4 = type metadata accessor for CompositionResponseView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  v16[1] = LocalizedStringKey.init(stringLiteral:)();
  sub_10006AE4C(a1, v7);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_10006BDB0(v7, v14 + v12, type metadata accessor for CompositionResponseView);
  *(v14 + v13) = v17;

  Button<>.init(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100069590(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for NavigationPath();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100063F04();
  sub_100153D18();

  v9 = swift_projectBox();
  v16 = *(v6 + 16);
  v17 = v9;
  v16(v8);
  Bindable.wrappedValue.getter();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10007CE14(0, 0, 0, 0);

  type metadata accessor for CompositionResponseView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v10 = NavigationPath.count.getter();
  (*(v2 + 8))(v4, v18);
  if (v10 < 1)
  {
    (v16)(v8, v17, v5);
    Bindable.wrappedValue.getter();
    v15(v8, v5);
    v12 = v19;
    swift_getKeyPath();
    v19 = v12;
    sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong endWritingTools];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000698D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v27 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v25 - v5;
  v7 = type metadata accessor for CompositionResponseView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  static ButtonRole.confirm.getter();
  sub_10006AE4C(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_10006BDB0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CompositionResponseView);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  Button<>.init(role:action:)();
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
  v17 = v26;
  View.accessibilityIdentifier(_:)();
  (*(v12 + 8))(v14, v11);
  v18 = swift_projectBox();
  v19 = v27;
  (*(v4 + 16))(v6, v18, v27);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v19);
  v20 = v28;
  swift_getKeyPath();
  v28 = v20;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v16) = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v15) = v16 == 1;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  result = sub_10000341C(&qword_10025DF70, &unk_1001D3330);
  v24 = (v17 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_10002AAC0;
  v24[2] = v22;
  return result;
}

uint64_t sub_100069D28(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  sub_100063F04();
  sub_100153D18();

  v6 = swift_projectBox();
  v7 = *(v3 + 16);
  v7(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_10007CE14(0, 0, 0, 0);

  v7(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v8(v5, v2);
  v9 = v13;
  swift_getKeyPath();
  v13 = v9;
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100069F58()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4024000000000000;
  if (v1 == 6)
  {
    v2 = 0x401C000000000000;
  }

  qword_10025DD90 = v2;
  byte_10025DD98 = 0;
}

uint64_t sub_100069FCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PresentationDetent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  type metadata accessor for CompositionModel(0);
  sub_10006BD30(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v18 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2 & 1;
  type metadata accessor for PresentationModel(0);
  sub_10006BD30(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *(a4 + 32) = Environment.init<A>(_:)();
  *(a4 + 40) = v19 & 1;
  v20 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v31 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v22 = v34;
  *(a4 + 48) = v33;
  *(a4 + 56) = v22;
  v23 = type metadata accessor for CompositionResponseView(0);
  sub_10002A894(a3, a4 + v23[8], &qword_1002632E0, &qword_1001D11A0);
  v24 = a4 + v23[9];
  v31 = 0;
  v32 = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v25 = v34;
  v26 = v35;
  *v24 = v33;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26;
  v27 = a4 + v23[10];
  LOBYTE(v31) = 0;
  State.init(wrappedValue:)();
  v28 = v34;
  *v27 = v33;
  *(v27 + 8) = v28;
  static PresentationDetent.medium.getter();
  (*(v9 + 16))(v12, v14, v8);
  State.init(wrappedValue:)();
  return (*(v9 + 8))(v14, v8);
}

uint64_t type metadata accessor for CompositionResponseView(uint64_t a1)
{
  result = qword_10025DE08;
  if (!qword_10025DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006A4F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006A630(uint64_t a1)
{
  sub_10006A940(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10006A940(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10006A88C(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10006A940(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10006A940(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
          if (v5 <= 0x3F)
          {
            sub_10006A88C(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10006A8F0();
              if (v7 <= 0x3F)
              {
                sub_10006A940(319, &unk_10025DE48, &type metadata accessor for PresentationDetent, &type metadata accessor for State);
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

void sub_10006A88C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10006A8F0()
{
  if (!qword_10025DE40)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10025DE40);
    }
  }
}

void sub_10006A940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006A9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025E110, &qword_1001D37B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = sub_10000341C(&qword_10025E118, &qword_1001D37C0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  if (a1)
  {
    v11 = sub_10009B2C4();
    v12 = sub_10006BE18(v11);
    v15[0] = a2;
    v13 = v12;

    v15[1] = v13;
    swift_getKeyPath();
    sub_10000341C(&qword_10025E148, &qword_1001D37F8);
    sub_10000341C(&unk_10025E130, &unk_1001D37C8);
    sub_100007120(&qword_10025E150, &qword_10025E148, &qword_1001D37F8, &protocol conformance descriptor for [A]);
    sub_10006C934();
    ForEach<>.init(_:id:content:)();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_10006C8B0();
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10006C8B0();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_10006AC70@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();
  (*(v4 + 8))(v6, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v11);
  *&v10[40] = v11[2];
  *&v10[24] = v11[1];
  *&v10[8] = v11[0];
  v8 = *&v10[18];
  *(a2 + 18) = *&v10[2];
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v8;
  result = *&v10[34];
  *(a2 + 50) = *&v10[34];
  *(a2 + 64) = *&v10[48];
  return result;
}

uint64_t sub_10006ADEC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_10000341C(&qword_10025E108, &qword_1001D37B0);
  return sub_10006A9C4(v4, a2 + *(v5 + 44));
}

uint64_t sub_10006AE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionResponseView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AEB0()
{
  v1 = (type metadata accessor for CompositionResponseView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  j__swift_release(*(v0 + v3 + 32), *(v0 + v3 + 40));

  v5 = v0 + v3 + v1[10];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v0 + v3 + v1[13];
  v9 = type metadata accessor for PresentationDetent();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B078(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for CompositionResponseView(0);
  v5 = *(v2 + 16);

  return sub_100068D80(a1, a2, v5);
}

unint64_t sub_10006B10C()
{
  result = qword_10025DF00;
  if (!qword_10025DF00)
  {
    sub_100003E34(&qword_10025DEB0, &qword_1001D3270);
    sub_10006B1C8();
    sub_10006BD30(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF00);
  }

  return result;
}

unint64_t sub_10006B1C8()
{
  result = qword_10025DF08;
  if (!qword_10025DF08)
  {
    sub_100003E34(&unk_10025DEF0, &unk_1001D32C8);
    sub_100003E34(&qword_10025DEA8, &qword_1001D3268);
    sub_100003E34(&qword_10025DEA0, &qword_1001D3260);
    sub_100003E34(&qword_10025DED8, &qword_1001D32B8);
    sub_100003E34(&qword_10025DE98, &qword_1001D3258);
    sub_100007120(&qword_10025DED0, &qword_10025DE98, &qword_1001D3258, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DEE0, &qword_10025DED8, &qword_1001D32B8, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF08);
  }

  return result;
}

unint64_t sub_10006B3B8()
{
  result = qword_10025DF10;
  if (!qword_10025DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF10);
  }

  return result;
}

unint64_t sub_10006B40C()
{
  result = qword_10025DF20;
  if (!qword_10025DF20)
  {
    sub_100003E34(&qword_10025DEC0, &qword_1001D3280);
    sub_100003E34(&qword_10025DEB8, &qword_1001D3278);
    sub_100003E34(&qword_10025DEB0, &qword_1001D3270);
    sub_10006B10C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF20);
  }

  return result;
}

unint64_t sub_10006B520()
{
  result = qword_10025DF50;
  if (!qword_10025DF50)
  {
    sub_100003E34(&qword_10025DF48, &unk_1001D3320);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_10006BD30(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF50);
  }

  return result;
}

uint64_t sub_10006B610(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006B6C0()
{
  result = qword_10025DF80;
  if (!qword_10025DF80)
  {
    sub_100003E34(&unk_100262BE0, &unk_1001D7D60);
    sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
    sub_10006BD30(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DF80);
  }

  return result;
}

uint64_t sub_10006B818(uint64_t a1)
{
  v2 = type metadata accessor for SmallIconTitleLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B874@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompositionResponseView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000687B4(v4, a1);
}

unint64_t sub_10006B8E4()
{
  result = qword_10025E020;
  if (!qword_10025E020)
  {
    sub_100003E34(&qword_10025DFD0, &qword_1001D3400);
    sub_10006B970();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E020);
  }

  return result;
}

unint64_t sub_10006B970()
{
  result = qword_10025E028;
  if (!qword_10025E028)
  {
    sub_100003E34(&qword_10025DFC8, &qword_1001D33F8);
    sub_10006B9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E028);
  }

  return result;
}

unint64_t sub_10006B9FC()
{
  result = qword_10025E030;
  if (!qword_10025E030)
  {
    sub_100003E34(&qword_10025DFC0, &qword_1001D33F0);
    sub_10006BA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E030);
  }

  return result;
}

unint64_t sub_10006BA88()
{
  result = qword_10025E038;
  if (!qword_10025E038)
  {
    sub_100003E34(&unk_10025E000, &qword_1001D3488);
    sub_100003E34(&qword_10025DFB8, &qword_1001D33E8);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_10025DFF8, &qword_10025DFB8, &qword_1001D33E8, &unk_1001DCEDC);
    sub_10006BD30(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle, &unk_1001DB568);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E038);
  }

  return result;
}

unint64_t sub_10006BBD4()
{
  result = qword_10025E050;
  if (!qword_10025E050)
  {
    sub_100003E34(&qword_10025E010, &qword_1001D3498);
    sub_10006BC84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E050);
  }

  return result;
}

unint64_t sub_10006BC84()
{
  result = qword_1002640E0;
  if (!qword_1002640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002640E0);
  }

  return result;
}

uint64_t sub_10006BD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006BDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_10006BE18(char *result)
{
  v1 = *(result + 2);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_10000341C(&qword_10025E158, &qword_1001D3800);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

unint64_t sub_10006BFC8()
{
  result = qword_10025E0C8;
  if (!qword_10025E0C8)
  {
    sub_100003E34(&qword_10025E0C0, &qword_1001D36B8);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    sub_10006C080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0C8);
  }

  return result;
}

unint64_t sub_10006C080()
{
  result = qword_10025E0D8;
  if (!qword_10025E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0D8);
  }

  return result;
}

unint64_t sub_10006C0D4()
{
  result = qword_10025E0E0;
  if (!qword_10025E0E0)
  {
    sub_100003E34(&qword_10025E0B0, &qword_1001D36A8);
    sub_100007120(&qword_10025E0E8, &qword_10025E0F0, &qword_1001D36C0, &protocol conformance descriptor for Button<A>);
    sub_10006C18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0E0);
  }

  return result;
}

unint64_t sub_10006C18C()
{
  result = qword_10025E0F8;
  if (!qword_10025E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E0F8);
  }

  return result;
}

uint64_t sub_10006C1EC()
{
  v1 = (type metadata accessor for CompositionResponseView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  j__swift_release(*(v0 + v3 + 32), *(v0 + v3 + 40));

  v5 = v0 + v3 + v1[10];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v0 + v3 + v1[13];
  v9 = type metadata accessor for PresentationDetent();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006C3AC()
{
  v1 = *(type metadata accessor for CompositionResponseView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100068728(v2);
}

uint64_t sub_10006C418()
{
  v1 = (type metadata accessor for CompositionResponseView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  j__swift_release(*(v5 + 32), *(v5 + 40));

  v6 = v5 + v1[10];

  v7 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v8 = type metadata accessor for NavigationPath();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v5 + v1[13];
  v10 = type metadata accessor for PresentationDetent();
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006C604(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CompositionResponseView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_10006C728@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = 19;
  }

  else
  {
    v3 = 23;
  }

  sub_100125454(v3);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10006C774(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_10006C7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10006C830()
{
  sub_100003E34(&qword_10025DEC0, &qword_1001D3280);
  sub_10006B40C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006C8B0()
{
  result = qword_10025E120;
  if (!qword_10025E120)
  {
    sub_100003E34(&qword_10025E110, &qword_1001D37B8);
    sub_10006C934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E120);
  }

  return result;
}

unint64_t sub_10006C934()
{
  result = qword_10025E128;
  if (!qword_10025E128)
  {
    sub_100003E34(&unk_10025E130, &unk_1001D37C8);
    sub_1000614E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E128);
  }

  return result;
}

uint64_t sub_10006CA18()
{
  sub_10002D804();
  result = OS_os_log.init(subsystem:category:)();
  qword_10025E170 = result;
  return result;
}

const char *sub_10006CA84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 > 4u)
    {
      if (a1 <= 6u)
      {
        if (a1 == 5)
        {
          return 0;
        }

        else
        {
          return "SummaryGeneration";
        }
      }

      v5 = "TransformGeneration";
      v6 = "TransformGeneration";
      if (a1 != 8)
      {
        v6 = "TransformGeneration";
      }

      v7 = a1 == 7;
    }

    else
    {
      if (a1 <= 1u)
      {
        if (a1)
        {
          return "ProofreadGeneration";
        }

        else
        {
          return "RewriteGeneration";
        }
      }

      v5 = "ToneAdjustGeneration";
      v6 = "ToneAdjustGeneration";
      if (a1 != 3)
      {
        v6 = "ToneAdjustGeneration";
      }

      v7 = a1 == 2;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  if (a4 == 1)
  {
    return "Composition";
  }

  if (a3 | a2 | a1 && a1 == 1 && !(a3 | a2))
  {
    return "ProofreadGeneration";
  }

  return 0;
}

uint64_t sub_10006CC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a4;
  v6 = a3;
  v30 = a1;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A700 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F34C(v12, qword_100276F68);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v29 = v6;
  v28 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = StaticString.description.getter();
    v19 = v8;
    v20 = sub_10002510C(v17, v18, &v31);

    *(v16 + 4) = v20;
    v8 = v19;
    *(v16 + 12) = 2080;
    v21 = v27;
    *(v16 + 14) = sub_10002510C(v27, a5, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "End signpost for %s, result = %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = v27;
  }

  v22 = static os_signpost_type_t.end.getter();
  if (qword_10025A750 != -1)
  {
    swift_once();
  }

  v23 = qword_10025E170;
  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001CF9D0;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_10002D7B0();
  *(v24 + 32) = v21;
  *(v24 + 40) = a5;

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v22, &_mh_execute_header, v23, v30, v28, v29, v11, "%{public,name=Result}@", 22, 2, v24);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10006CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A700 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276F68);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v21 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v20 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = StaticString.description.getter();
    v17 = sub_10002510C(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Begin signpost for %s", v13, 0xCu);
    sub_10000F4B4(v14);

    v4 = v20;
  }

  static os_signpost_type_t.begin.getter();
  if (qword_10025A750 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v7, v4);
}

__n128 sub_10006D1E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10006D204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006D24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006D2D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10006D42C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v67 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - v8;
  v69 = sub_10000341C(&qword_10025E1B0, &qword_1001D3970);
  __chkstk_darwin(v69);
  v70 = &v62 - v9;
  v10 = sub_10000341C(&qword_10025E1B8, &qword_1001D3978);
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v68 = &v62 - v11;
  v12 = sub_10000341C(&qword_10025E1C0, &qword_1001D3980);
  v13 = __chkstk_darwin(v12 - 8);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v62 - v15;
  v16 = sub_10000341C(&qword_10025E1C8, &qword_1001D3988);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v71 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = sub_10000341C(&unk_10025E1D0, &unk_1001D3990);
  sub_10006DCCC(a1, &v21[*(v22 + 44)]);
  v23 = &v21[*(v17 + 44)];
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  if (qword_10025A7E8 != -1)
  {
    swift_once();
  }

  v32 = qword_100277198;
  v33 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v23[*(v33 + 52)] = v32;
  *&v23[*(v33 + 56)] = 256;
  v34 = &v23[*(sub_10000341C(&unk_10025E1E0, &qword_1001D39A0) + 36)];
  *v34 = 0;
  v35 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v34[v35] = swift_getKeyPath();
  v64 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();

  v36 = static Alignment.center.getter();
  v38 = v37;
  v39 = &v23[*(sub_10000341C(&unk_10025E1F0, &unk_1001D39E0) + 36)];
  *v39 = v36;
  v39[1] = v38;
  v76[0] = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v40 = 1;
  if (v77 == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v41._countAndFlagsBits = 0x7720657461647055;
    v41._object = 0xEC00000020687469;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v41);
    v42._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v42);

    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
    LocalizedStringKey.init(stringInterpolation:)();
    v63 = v4;
    v44 = swift_allocObject();
    v45 = a1[3];
    v44[3] = a1[2];
    v44[4] = v45;
    v44[5] = a1[4];
    *(v44 + 89) = *(a1 + 73);
    v46 = a1[1];
    v44[1] = *a1;
    v44[2] = v46;
    sub_10006FAFC(a1, v76);
    v47 = v65;
    Button<>.init(_:action:)();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    v48 = v70;
    v49 = v67;
    View.bold(_:)();
    (*(v66 + 8))(v47, v49);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(v76);
    v50 = (v48 + *(v69 + 36));
    v51 = v76[1];
    *v50 = v76[0];
    v50[1] = v51;
    v50[2] = v76[2];
    KeyPath = swift_getKeyPath();
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0x4008000000000000;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
    *(v6 + 20) = 1;
    v53 = v63;
    v54 = *(v63 + 40);
    *&v6[v54] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v55 = &v6[*(v53 + 44)];
    *v55 = KeyPath;
    v55[8] = 0;
    sub_10006FB54();
    sub_10006FC50(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
    v56 = v68;
    View.buttonStyle<A>(_:)();
    sub_10006FC98(v6);
    sub_10000F500(v48, &qword_10025E1B0, &qword_1001D3970);
    (*(v73 + 32))(v75, v56, v74);
    v40 = 0;
  }

  v57 = v75;
  (*(v73 + 56))(v75, v40, 1, v74);
  v58 = v71;
  sub_1000081F8(v21, v71, &qword_10025E1C8, &qword_1001D3988);
  v59 = v72;
  sub_1000081F8(v57, v72, &qword_10025E1C0, &qword_1001D3980);
  sub_1000081F8(v58, a2, &qword_10025E1C8, &qword_1001D3988);
  v60 = sub_10000341C(&unk_10025E200, &qword_1001D39F0);
  sub_1000081F8(v59, a2 + *(v60 + 48), &qword_10025E1C0, &qword_1001D3980);
  sub_10000F500(v57, &qword_10025E1C0, &qword_1001D3980);
  sub_10000F500(v21, &qword_10025E1C8, &qword_1001D3988);
  sub_10000F500(v59, &qword_10025E1C0, &qword_1001D3980);
  return sub_10000F500(v58, &qword_10025E1C8, &qword_1001D3988);
}

uint64_t sub_10006DCCC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v43 = sub_10000341C(&qword_10025E220, &qword_1001D3AC0);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = (v38 - v3);
  v4 = sub_10000341C(&qword_10025E228, &qword_1001D3AC8);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = v38 - v7;
  v8 = sub_10000341C(&qword_10025E230, &qword_1001D3AD0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v40 = sub_10000341C(&qword_10025E238, &qword_1001D3AD8);
  v11 = *(v40 - 8);
  v12 = __chkstk_darwin(v40);
  v41 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v38 - v14;
  v16 = swift_allocObject();
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v16[5] = a1[4];
  *(v16 + 89) = *(a1 + 73);
  v18 = a1[1];
  v16[1] = *a1;
  v16[2] = v18;
  v47 = a1;
  sub_10006FAFC(a1, &v50);
  sub_10000341C(&qword_10025E240, &qword_1001D3AE0);
  sub_100007120(&qword_10025E248, &qword_10025E240, &qword_1001D3AE0, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v19 = &v10[*(v8 + 36)];
  *v19 = 0;
  v20 = 1;
  v19[8] = 1;
  sub_10006FE34();
  sub_10006FEEC();
  v21 = v15;
  View.labelStyle<A>(_:)();
  sub_10000F500(v10, &qword_10025E230, &qword_1001D3AD0);
  v50 = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v48 == 1)
  {
    v22 = static HorizontalAlignment.center.getter();
    v23 = v39;
    *v39 = v22;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    v38[1] = *(sub_10000341C(&unk_10025E280, &qword_1001D3AF8) + 44);
    v50 = a1[1];
    v51 = *(a1 + 4);
    sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
    Binding.wrappedValue.getter();
    v24 = *(v48 + 16);

    v48 = 0;
    v49 = v24;
    swift_getKeyPath();
    v25 = swift_allocObject();
    v26 = a1[3];
    v25[3] = a1[2];
    v25[4] = v26;
    v25[5] = a1[4];
    *(v25 + 89) = *(a1 + 73);
    v27 = a1[1];
    v25[1] = *a1;
    v25[2] = v27;
    sub_10006FAFC(a1, &v50);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_10025E298, &unk_1001D3B30);
    sub_10006FFA8();
    sub_100007120(&qword_10025E2B0, &qword_10025E298, &unk_1001D3B30, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    sub_100070088(v23, v46);
    v20 = 0;
  }

  v28 = v46;
  (*(v42 + 56))(v46, v20, 1, v43);
  v29 = v11;
  v30 = *(v11 + 16);
  v31 = v41;
  v32 = v40;
  v30(v41, v21, v40);
  v33 = v44;
  sub_1000081F8(v28, v44, &qword_10025E228, &qword_1001D3AC8);
  v34 = v45;
  v30(v45, v31, v32);
  v35 = sub_10000341C(&qword_10025E278, &qword_1001D3AF0);
  sub_1000081F8(v33, &v34[*(v35 + 48)], &qword_10025E228, &qword_1001D3AC8);
  sub_10000F500(v28, &qword_10025E228, &qword_1001D3AC8);
  v36 = *(v29 + 8);
  v36(v21, v32);
  sub_10000F500(v33, &qword_10025E228, &qword_1001D3AC8);
  return (v36)(v31, v32);
}

uint64_t sub_10006E334(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2[1] = *(a1 + 40);
  v4 = *(&v3 + 1);
  sub_1000081F8(&v4, v2, &qword_10025E310, &qword_1001D3B70);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10000F500(&v3, &unk_1002640F0, &qword_1001D3490);
}

uint64_t sub_10006E3F8(uint64_t a1)
{
  sub_10000341C(&qword_10025E2E8, &qword_1001D3B60);
  sub_10000341C(&qword_10025E2F0, &qword_1001D3B68);
  sub_100007120(&qword_10025E2F8, &qword_10025E2E8, &qword_1001D3B60, &protocol conformance descriptor for VStack<A>);
  sub_1000701B8();
  return Label.init(title:icon:)();
}

__n128 sub_10006E4E8@<Q0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  sub_10006E57C(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v5[63];
  *(a2 + 17) = *v5;
  return result;
}

uint64_t sub_10006E57C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v32) = 256;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10002A984(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v34 = v13;
  v35 = v12;
  v33 = v14;
  v36 = v15;
  sub_10002A984(v7, v9, v11 & 1);

  sub_10006D2D0();
  sub_1000739E8();

  sub_10002AC34();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v2) = v19;
  static Font.footnote.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v9) = v23;

  sub_10002A984(v16, v18, v2 & 1);

  v24 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  LOBYTE(v18) = v28;
  v30 = v29;

  sub_10002A984(v20, v22, v9 & 1);

  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v33 & 1;
  *(a1 + 24) = v36;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v18 & 1;
  *(a1 + 56) = v30;
  sub_100007D98(v35, v34, v33 & 1);

  sub_100007D98(v25, v27, v18 & 1);

  sub_10002A984(v25, v27, v18 & 1);

  sub_10002A984(v35, v34, v33 & 1);
}

uint64_t sub_10006E848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  Image.init(systemName:)();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v4;
  *(a2 + 8) = BYTE8(v4);
  return result;
}

uint64_t sub_10006E934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  v43 = type metadata accessor for Divider();
  v58 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v57 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v36 - v7;
  v59 = *a1;
  v8 = v59;
  Divider.init()();
  v87[0] = *(a2 + 16);
  *&v87[1] = *(a2 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.projectedValue.getter();
  v64 = v77[0];
  v65 = *&v77[1];
  *&v77[0] = v8;
  sub_100007120(&qword_10025E2B8, &qword_10025E2C0, &unk_1001DC4C0, &protocol conformance descriptor for [A]);
  Binding<A>.subscript.getter();
  v68 = v87[2];
  v69 = v87[3];
  v70 = v87[4];
  v66 = v87[0];
  v67 = v87[1];

  v77[0] = *(a2 + 56);
  v77[1] = *(a2 + 72);
  LOBYTE(v77[2]) = *(a2 + 88);
  sub_10000341C(&qword_10025E2C8, &unk_1001D3B40);
  FocusState.projectedValue.getter();
  v41 = v61;
  v42 = v60;
  v40 = v62;
  LOBYTE(v8) = v63;
  type metadata accessor for CompositionModel(0);
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v56 = Environment.init<A>(_:)();
  LOBYTE(a1) = v9;
  v60 = 0;
  v61 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v45 = v77[0];
  v54 = *&v77[1];
  LOBYTE(v60) = 0;
  State.init(wrappedValue:)();
  v52 = LOBYTE(v77[0]);
  v53 = *(&v77[0] + 1);
  LOBYTE(v60) = 0;
  State.init(wrappedValue:)();
  v50 = LOBYTE(v77[0]);
  v51 = *(&v77[0] + 1);
  v60 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v48 = *(&v77[0] + 1);
  v49 = *&v77[0];
  LOBYTE(v60) = 0;
  State.init(wrappedValue:)();
  v46 = LOBYTE(v77[0]);
  v47 = *(&v77[0] + 1);
  v60 = 0;
  sub_10000341C(&qword_10025E2D8, &qword_1001D3B50);
  State.init(wrappedValue:)();
  *&v76[23] = v67;
  *&v76[39] = v68;
  *&v76[55] = v69;
  *&v76[71] = v70;
  v37 = *(&v77[0] + 1);
  v10 = *&v77[0];
  v38 = *&v77[0];
  LOBYTE(v60) = a1 & 1;
  *&v76[7] = v66;
  v72 = v8;
  v11 = v57;
  v12 = *(v58 + 16);
  v13 = v43;
  v12(v57, v55, v43);
  v14 = v60;
  v39 = v60;
  v15 = v72;
  v16 = v44;
  v17 = v11;
  v18 = v13;
  v12(v44, v17, v13);
  v19 = &v16[*(sub_10000341C(&qword_10025E2E0, &qword_1001D3B58) + 48)];
  *&v77[0] = v56;
  BYTE8(v77[0]) = v14;
  *(&v77[2] + 9) = *&v76[32];
  *(&v77[3] + 9) = *&v76[48];
  *(&v77[4] + 9) = *&v76[64];
  *(v77 + 9) = *v76;
  *(&v77[1] + 9) = *&v76[16];
  *(&v77[5] + 1) = *&v76[79];
  v78 = v45;
  *&v79 = v54;
  BYTE8(v79) = v52;
  HIDWORD(v79) = *&v75[3];
  *(&v79 + 9) = *v75;
  *&v80 = v53;
  BYTE8(v80) = v50;
  HIDWORD(v80) = *&v74[3];
  *(&v80 + 9) = *v74;
  *&v81 = v51;
  *(&v81 + 1) = v49;
  *&v82 = v48;
  BYTE8(v82) = v46;
  *(&v82 + 9) = *v73;
  HIDWORD(v82) = *&v73[3];
  *&v83 = v47;
  *(&v83 + 1) = v10;
  v20 = v37;
  *&v84 = v37;
  v22 = v41;
  v21 = v42;
  *(&v84 + 1) = v42;
  *&v85 = v41;
  v23 = v40;
  *(&v85 + 1) = v40;
  LOBYTE(v86) = v15;
  *(&v86 + 1) = *v71;
  DWORD1(v86) = *&v71[3];
  *(&v86 + 1) = v59;
  v24 = v77[5];
  *(v19 + 4) = v77[4];
  *(v19 + 5) = v24;
  v25 = v77[1];
  *v19 = v77[0];
  *(v19 + 1) = v25;
  v26 = v77[3];
  *(v19 + 2) = v77[2];
  *(v19 + 3) = v26;
  v27 = v78;
  v28 = v79;
  v29 = v81;
  *(v19 + 8) = v80;
  *(v19 + 9) = v29;
  *(v19 + 6) = v27;
  *(v19 + 7) = v28;
  v30 = v82;
  v31 = v83;
  v32 = v86;
  *(v19 + 13) = v85;
  *(v19 + 14) = v32;
  v33 = v84;
  *(v19 + 11) = v31;
  *(v19 + 12) = v33;
  *(v19 + 10) = v30;
  sub_1000700F8(v77, v87);
  v34 = *(v58 + 8);
  v34(v55, v18);
  *(&v87[2] + 9) = *&v76[32];
  *(&v87[3] + 9) = *&v76[48];
  *(&v87[4] + 9) = *&v76[64];
  *(v87 + 9) = *v76;
  *&v87[0] = v56;
  BYTE8(v87[0]) = v39;
  *(&v87[1] + 9) = *&v76[16];
  *(&v87[5] + 1) = *&v76[79];
  v87[6] = v45;
  v88 = v54;
  v89 = v52;
  *&v90[3] = *&v75[3];
  *v90 = *v75;
  v91 = v53;
  v92 = v50;
  *&v93[3] = *&v74[3];
  *v93 = *v74;
  v94 = v51;
  v95 = v49;
  v96 = v48;
  v97 = v46;
  *v98 = *v73;
  *&v98[3] = *&v73[3];
  v99 = v47;
  v100 = v38;
  v101 = v20;
  v102 = v21;
  v103 = v22;
  v104 = v23;
  v105 = v15;
  *v106 = *v71;
  *&v106[3] = *&v71[3];
  v107 = v59;
  sub_100070154(v87);
  return (v34)(v57, v18);
}

uint64_t sub_10006EFE8(_OWORD *a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_10006FAFC(a1, v11);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v8;
  *(v7 + 96) = a1[4];
  *(v7 + 105) = *(a1 + 73);
  v9 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v9;
  sub_10015C9C8(0, 0, v4, &unk_1001D3A38, v7);
}

uint64_t sub_10006F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10006F1C8, v6, v5);
}

uint64_t sub_10006F1C8()
{
  v1 = sub_10006D2D0();
  swift_getKeyPath();
  v0[18] = v1;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 7, v0[10]);
    v3 = sub_10006D2D0();
    swift_getKeyPath();
    v0[20] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v5 = *(v3 + v4);

    sub_10000B7B0(1, v5);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v6 = sub_10006D2D0();
  swift_getKeyPath();
  v0[19] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v7)
  {
    if (v7 == 1)
    {
      v0[25] = sub_10006D2D0();
      v8 = swift_task_alloc();
      v0[26] = v8;
      *v8 = v0;
      v8[1] = sub_10006F55C;

      return sub_1000905CC(0);
    }

    else
    {

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v0[27] = sub_10006D2D0();
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_10006F700;

    return sub_100091570(0);
  }
}

uint64_t sub_10006F55C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10006F6A0, v3, v2);
}

uint64_t sub_10006F6A0(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10006F700()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10007038C, v3, v2);
}

uint64_t sub_10006F844(uint64_t a1, char a2)
{
  sub_10006D2D0();
  swift_getKeyPath();
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F940@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v19 = v2[2];
  v20 = v4;
  v21[0] = v2[4];
  *(v21 + 9) = *(v2 + 73);
  v5 = v2[1];
  v17 = *v2;
  v18 = v5;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v6 = sub_10000341C(&qword_10025E180, &qword_1001D3928);
  sub_10006D42C(&v17, a2 + *(v6 + 44));
  v7 = swift_allocObject();
  v8 = v20;
  v7[3] = v19;
  v7[4] = v8;
  v7[5] = v21[0];
  *(v7 + 89) = *(v21 + 9);
  v9 = v18;
  v7[1] = v17;
  v7[2] = v9;
  v10 = (a2 + *(sub_10000341C(&qword_10025E188, &qword_1001D3930) + 36));
  *v10 = sub_10006FABC;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = 0;
  v11 = swift_allocObject();
  v12 = v20;
  v11[3] = v19;
  v11[4] = v12;
  v11[5] = v21[0];
  *(v11 + 89) = *(v21 + 9);
  v13 = v18;
  v11[1] = v17;
  v11[2] = v13;
  v14 = (a2 + *(sub_10000341C(&unk_10025E190, &unk_1001D3938) + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_10006FADC;
  v14[3] = v11;
  sub_10006FAFC(&v17, v16);
  return sub_10006FAFC(&v17, v16);
}

unint64_t sub_10006FB54()
{
  result = qword_10025E210;
  if (!qword_10025E210)
  {
    sub_100003E34(&qword_10025E1B0, &qword_1001D3970);
    sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E210);
  }

  return result;
}

uint64_t sub_10006FC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006FC98(uint64_t a1)
{
  v2 = type metadata accessor for PrimaryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006FCF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10006FD5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10006F130(a1, v4, v5, v1 + 32);
}

unint64_t sub_10006FE34()
{
  result = qword_10025E250;
  if (!qword_10025E250)
  {
    sub_100003E34(&qword_10025E230, &qword_1001D3AD0);
    sub_100007120(&qword_10025E258, &unk_10025E260, &qword_1001D3AE8, &protocol conformance descriptor for Button<A>);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E250);
  }

  return result;
}

unint64_t sub_10006FEEC()
{
  result = qword_10025E270;
  if (!qword_10025E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E270);
  }

  return result;
}

uint64_t sub_10006FF40(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 105, 7);
}

unint64_t sub_10006FFA8()
{
  result = qword_10025E2A0;
  if (!qword_10025E2A0)
  {
    sub_100003E34(&qword_10025E290, &qword_1001D3B28);
    sub_100070034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E2A0);
  }

  return result;
}

unint64_t sub_100070034()
{
  result = qword_1002641D0;
  if (!qword_1002641D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002641D0);
  }

  return result;
}

uint64_t sub_100070088(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025E220, &qword_1001D3AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000701B8()
{
  result = qword_10025E300;
  if (!qword_10025E300)
  {
    sub_100003E34(&qword_10025E2F0, &qword_1001D3B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E300);
  }

  return result;
}

unint64_t sub_100070238()
{
  result = qword_10025E318;
  if (!qword_10025E318)
  {
    sub_100003E34(&unk_10025E190, &unk_1001D3938);
    sub_1000702C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E318);
  }

  return result;
}

unint64_t sub_1000702C4()
{
  result = qword_10025E320;
  if (!qword_10025E320)
  {
    sub_100003E34(&qword_10025E188, &qword_1001D3930);
    sub_100007120(&qword_10025E328, &unk_10025E330, &qword_1001D3B78, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E320);
  }

  return result;
}

UIImage *sub_100070390(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  [v39 size];
  v9 = v8;
  v11 = v10;
  [v39 scale];
  v13 = 2048;
  if ((a2 & 1) == 0)
  {
    v13 = a1;
  }

  v14 = 768;
  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  if (v11 > v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11 > v9)
  {
    v13 = v14;
  }

  v16 = floor(v13 / v12);
  v17 = floor(v15 / v12);
  [v39 size];
  if (v18 <= v16 && ([v39 size], v19 <= v17))
  {

    return v39;
  }

  else
  {
    [v39 size];
    v21 = v20 / v16;
    v23 = v22 / v17 < v20 / v16;
    v24 = v20 / (v22 / v17);
    v25 = v22 / v21;
    if (v23)
    {
      v17 = v25;
    }

    else
    {
      v16 = v24;
    }

    [v39 scale];
    v27 = v26;
    v42.width = v16;
    v42.height = v17;
    UIGraphicsBeginImageContextWithOptions(v42, 0, v27);
    [v39 drawInRect:{0.0, 0.0, v16, v17}];
    v28 = UIGraphicsGetImageFromCurrentImageContext();
    if (v28)
    {
      v29 = v28;
      UIGraphicsEndImageContext();
      return v29;
    }

    else
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000F34C(v31, qword_100276F08);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v34 = 136315394;
        v35 = _typeName(_:qualified:)();
        v37 = sub_10002510C(v35, v36, &v40);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_10002510C(0xD00000000000002BLL, 0x80000001001E4550, &v40);
        _os_log_impl(&_mh_execute_header, v32, v33, "%s.%s Image resizing failed.", v34, 0x16u);
        swift_arrayDestroy();
      }

      v38 = v39;
      UIGraphicsEndImageContext();
      return v38;
    }
  }
}

Swift::Int sub_1000706F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100070768(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000707AC()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);
}

uint64_t sub_100070854(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100070964(char a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100070A94(char a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100070BF8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);
}

uint64_t sub_100070CDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100070E08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();

  if (v20)
  {
    sub_100008198(&v19, v21);
    v2 = a1;
    return sub_100008198(v21, v2);
  }

  else
  {
    v16 = a1;
    sub_10000F500(&v19, &qword_1002651D0, &unk_1001DDA20);
    static GenerativePartnerServiceProvider.shared.getter();
    v3 = dispatch thunk of GenerativePartnerServiceProvider.allLLMs.getter();

    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      while (v6 < *(v3 + 16))
      {
        sub_100028458(v7, &v17);
        sub_100027874(&v17, v18);
        v8 = dispatch thunk of LLMProvider.id.getter();
        v10 = v9;
        static GenerativePartnerServiceProvider.shared.getter();
        v11 = dispatch thunk of GenerativePartnerServiceProvider.storedSelectedLLMID()();
        v13 = v12;

        if (v8 == v11 && v10 == v13)
        {

LABEL_14:

          sub_100008198(&v17, &v19);
          sub_100008198(&v19, v21);
          v2 = v16;
          return sub_100008198(v21, v2);
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_14;
        }

        ++v6;
        result = sub_10000F4B4(&v17);
        v7 += 40;
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      static GenerativePartnerServiceProvider.shared.getter();
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
    }
  }

  return result;
}

uint64_t sub_100071008@<X0>(uint64_t a1@<X8>)
{
  sub_100070E08(&v9);
  if (v10)
  {
    sub_100008198(&v9, v11);
    sub_100027874(v11, v11[3]);
    dispatch thunk of LLMProvider.modelBundle()();
    v7 = type metadata accessor for ModelBundle();
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return sub_10000F4B4(v11);
  }

  else
  {
    sub_10000F500(&v9, &qword_1002651D0, &unk_1001DDA20);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276F08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "There is no active LLM", v5, 2u);
    }

    v6 = type metadata accessor for ModelBundle();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1000712D0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000713A0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000714E8()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v4 = __chkstk_darwin(v3 - 8);
  v89 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v91 = &v87 - v7;
  v8 = __chkstk_darwin(v6);
  v90 = &v87 - v9;
  v10 = __chkstk_darwin(v8);
  v92 = &v87 - v11;
  v12 = __chkstk_darwin(v10);
  v93 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v94 = &v87 - v15;
  v16 = __chkstk_darwin(v14);
  v95 = &v87 - v17;
  v18 = __chkstk_darwin(v16);
  v96 = &v87 - v19;
  v20 = __chkstk_darwin(v18);
  v97 = &v87 - v21;
  v22 = __chkstk_darwin(v20);
  v98 = &v87 - v23;
  v24 = __chkstk_darwin(v22);
  v99 = &v87 - v25;
  v26 = __chkstk_darwin(v24);
  v100 = &v87 - v27;
  v28 = __chkstk_darwin(v26);
  v104 = &v87 - v29;
  v30 = __chkstk_darwin(v28);
  v102 = &v87 - v31;
  v32 = __chkstk_darwin(v30);
  v101 = &v87 - v33;
  v34 = __chkstk_darwin(v32);
  v103 = &v87 - v35;
  v36 = __chkstk_darwin(v34);
  v105 = &v87 - v37;
  v38 = __chkstk_darwin(v36);
  v106 = &v87 - v39;
  v40 = __chkstk_darwin(v38);
  v107 = &v87 - v41;
  v42 = __chkstk_darwin(v40);
  v108 = &v87 - v43;
  v44 = __chkstk_darwin(v42);
  v109 = &v87 - v45;
  v46 = __chkstk_darwin(v44);
  v110 = &v87 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v87 - v49;
  __chkstk_darwin(v48);
  v52 = &v87 - v51;
  sub_10000341C(&qword_10025F4E8, &unk_1001DF3A0);
  v53 = *(v1 + 72);
  v54 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1001D3B80;
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v56 = v2;
  v57 = *(v2 + 48);
  result = v57(v52, 1, v0);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v88 = v55;
  v59 = v55 + v54;
  v60 = *(v56 + 32);
  v60(v59, v52, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v57(v50, 1, v0);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60(v59 + v53, v50, v0);
  static UTType.data.getter();
  v61 = v110;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v61, 1, v0);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60(v59 + 2 * v53, v61, v0);
  static UTType.data.getter();
  v62 = v109;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v62, 1, v0);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60(v59 + 3 * v53, v62, v0);
  static UTType.data.getter();
  v63 = v108;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v63, 1, v0);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v60(v59 + 4 * v53, v63, v0);
  static UTType.data.getter();
  v64 = v107;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v64, 1, v0);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60(v59 + 5 * v53, v64, v0);
  static UTType.data.getter();
  v65 = v106;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v65, 1, v0);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v60(v59 + 6 * v53, v65, v0);
  static UTType.data.getter();
  v66 = v105;
  UTType.init(mimeType:conformingTo:)();
  result = v57(v66, 1, v0);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v110 = v60;
  v60(v59 + 7 * v53, v66, v0);
  static UTType.pdf.getter();
  static UTType.tarArchive.getter();
  static UTType.xml.getter();
  static UTType.zip.getter();
  static UTType.gif.getter();
  static UTType.jpeg.getter();
  static UTType.png.getter();
  static UTType.data.getter();
  v67 = v103;
  UTType.init(mimeType:conformingTo:)();
  v68 = v57;
  result = v57(v67, 1, v0);
  v69 = v104;
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  (v110)(v59 - v53 + 16 * v53, v67, v0);
  static UTType.data.getter();
  v70 = v101;
  UTType.init(mimeType:conformingTo:)();
  result = v68(v70, 1, v0);
  v71 = v102;
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  (v110)(v59 + 16 * v53, v70, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  v72 = v68;
  result = v68(v71, 1, v0);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v73 = v110;
  (v110)(v59 + 17 * v53, v71, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v72(v69, 1, v0);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v73(v59 + 18 * v53, v69, v0);
  static UTType.data.getter();
  v74 = v100;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v74, 1, v0);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v73(v59 + 19 * v53, v74, v0);
  static UTType.data.getter();
  v75 = v99;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v75, 1, v0);
  if (result == 1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v73(v59 + 20 * v53, v75, v0);
  static UTType.data.getter();
  v76 = v98;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v76, 1, v0);
  if (result == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v73(v59 + 21 * v53, v76, v0);
  static UTType.data.getter();
  v77 = v97;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v77, 1, v0);
  if (result == 1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v73(v59 + 22 * v53, v77, v0);
  static UTType.data.getter();
  v78 = v96;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v78, 1, v0);
  if (result == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v73(v59 + 23 * v53, v78, v0);
  static UTType.data.getter();
  v79 = v95;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v79, 1, v0);
  if (result == 1)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v73(v59 + 24 * v53, v79, v0);
  static UTType.data.getter();
  v80 = v94;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v80, 1, v0);
  if (result == 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v73(v59 + 25 * v53, v80, v0);
  static UTType.data.getter();
  v81 = v93;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v81, 1, v0);
  if (result == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v73(v59 + 26 * v53, v81, v0);
  static UTType.data.getter();
  v82 = v92;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v82, 1, v0);
  if (result == 1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v73(v59 + 27 * v53, v82, v0);
  static UTType.data.getter();
  v83 = v90;
  UTType.init(mimeType:conformingTo:)();
  result = v72(v83, 1, v0);
  v84 = v91;
  if (result == 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v73(v59 + 28 * v53, v83, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v72(v84, 1, v0);
  v85 = v89;
  if (result == 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v73(v59 + 29 * v53, v84, v0);
  static UTType.data.getter();
  UTType.init(mimeType:conformingTo:)();
  result = v72(v85, 1, v0);
  if (result == 1)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v73(v59 + 30 * v53, v85, v0);
  static UTType.commaSeparatedText.getter();
  static UTType.css.getter();
  static UTType.html.getter();
  static UTType.javaScript.getter();
  static UTType.plainText.getter();
  if (qword_10025A780 != -1)
  {
    swift_once();
  }

  v111 = v88;

  result = sub_10019E510(v86);
  qword_100277020 = v111;
  return result;
}

uint64_t sub_10007254C()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);

  return v1;
}

uint64_t sub_100072608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  a2[1] = v4;
}

uint64_t sub_1000726C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100072700(v1, v2);
}

uint64_t sub_100072700(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_1000728A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000728D4(v1);
}

uint64_t sub_1000728FC()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
}

__n128 sub_1000729AC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_100072A68(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100072C34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  swift_beginAccess();
  if (sub_10017BA1C(*(v4 + v6), a1))
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100072E8C()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);

  return v1;
}

uint64_t sub_100072F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  a2[1] = v4;
}

uint64_t sub_100073000(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100073040(v1, v2);
}

uint64_t sub_100073040(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString) == a1 && *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000731D4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  swift_getKeyPath();
  v17 = v2;

  v8 = v2 + v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    swift_unknownObjectRelease();
    sub_100095F2C(v7, v7 + 32, 0, v8);
    goto LABEL_11;
  }

  v10 = *(v7 + 16);
  if (v10 >= v9)
  {
    v10 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  }

  v11 = 2 * v10;
  if (v9)
  {
    v8 = v11 + 1;
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = v12[2];

  if (v13 != v8 >> 1)
  {
    goto LABEL_14;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_11:
    swift_unknownObjectRelease();
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_100073408@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000734E0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_10025B1C0, &unk_1001CFA90);
  return swift_endAccess();
}

uint64_t sub_1000735E4()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100073690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);
}

uint64_t sub_100073770(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements;
  if (sub_10017BA1C(*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100073920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

unint64_t sub_1000739E8()
{
  swift_getKeyPath();
  v24 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v2 = *(v24 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    sub_100163C20(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_100163C20((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10 < 3)
  {
    v11 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v11 localizedStringByJoiningStrings:isa];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v14;
  }

  v15 = [objc_opt_self() mainBundle];
  v25._object = 0x80000001001E4C50;
  v16._object = 0x80000001001E4C30;
  v25._countAndFlagsBits = 0xD000000000000024;
  v16._countAndFlagsBits = 0xD000000000000017;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v25);

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001CF9F0;
  *(v18 + 56) = &type metadata for String;
  result = sub_10002D7B0();
  *(v18 + 64) = result;
  v20 = _swiftEmptyArrayStorage[2];
  if (v20)
  {
    v21 = result;
    result = _swiftEmptyArrayStorage[5];
    *(v18 + 32) = _swiftEmptyArrayStorage[4];
    *(v18 + 40) = result;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v21;
    if (v20 != 1)
    {
      v23 = _swiftEmptyArrayStorage[6];
      v22 = _swiftEmptyArrayStorage[7];

      *(v18 + 72) = v23;
      *(v18 + 80) = v22;
      *(v18 + 136) = &type metadata for Int;
      *(v18 + 144) = &protocol witness table for Int;
      *(v18 + 112) = v10 - 2;
      v14 = static String.localizedStringWithFormat(_:_:)();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100073D34(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100073DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_100073EF4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100074044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_1000740B0()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10007415C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
}

uint64_t sub_100074210(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10007433C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  return sub_1000081F8(v6 + v7, a4, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_100074418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000081F8(a1, &v11 - v8, &unk_100262450, &qword_1001CFAA0);
  return a5(v9);
}

uint64_t sub_1000744F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_1000081F8(v4 + v10, v9, &unk_100262450, &qword_1001CFAA0);
  LOBYTE(a2) = sub_100097334(v9, a1);
  sub_10000F500(v9, &unk_100262450, &qword_1001CFAA0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000081F8(a1, v9, &unk_100262450, &qword_1001CFAA0);
    swift_beginAccess();
    sub_10009AAB8(v9, v4 + v10, &unk_100262450, &qword_1001CFAA0);
    swift_endAccess();
  }

  return sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_100074708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v5, &unk_100262450, &qword_1001CFAA0);
  return swift_endAccess();
}

uint64_t sub_1000747E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100074884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);
}

uint64_t sub_10007498C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

BOOL sub_100074B58()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + v2) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  return *(*(v1 + v3) + 16) != 0;
}

void *sub_100074D0C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100074DC8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_100074E8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100074EBC(v1);
}

void sub_100074EE4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
  v9 = v8;
  v10 = a1;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

uint64_t sub_100075200()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  sub_10002879C(v1, *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24));
  return v1;
}

uint64_t sub_1000752D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v10 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v11 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v12 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  v13 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24);
  if (sub_100037FBC(v10, v11, v12, v13, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000278C0(a1, a2, a3, a4);
  }

  else
  {
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;

    return sub_1000278C0(v10, v11, v12, v13);
  }
}

uint64_t sub_100075494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v7 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  v9 = *(v5 + 24);
  *(v5 + 24) = a5;
  sub_10002879C(a2, a3, a4, a5);
  return sub_1000278C0(v6, v7, v8, v9);
}

uint64_t sub_100075528(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000755C8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1000756A4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

BOOL sub_1000757A8()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v5, v4, &unk_100262580, &qword_1001CFF70);
  v6 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) || !*(v4 + 2))
  {
    sub_10000F500(v4, &unk_100262580, &qword_1001CFF70);
  }

  else
  {

    sub_10000F500(v4, &unk_100262580, &qword_1001CFF70);
    v8 = GenerativeExperiencesSession.canUndo()();

    if (v8)
    {
      swift_getKeyPath();
      v9 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      return *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) > 1;
    }
  }

  return 0;
}

uint64_t sub_1000759BC()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v5, v4, &unk_100262580, &qword_1001CFF70);
  v6 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) || !*(v4 + 2))
  {
    sub_10000F500(v4, &unk_100262580, &qword_1001CFF70);
  }

  else
  {

    sub_10000F500(v4, &unk_100262580, &qword_1001CFF70);
    v8 = GenerativeExperiencesSession.canRedo()();

    if (v8)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  v9 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal);
}

uint64_t sub_100075BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  sub_10000341C(&unk_10025F4F0, &qword_1001D4768);
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for PromptCompletion();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v7;
  v4[35] = v6;

  return _swift_task_switch(sub_100075D5C, v7, v6);
}

uint64_t sub_100075D5C()
{
  v1 = &unk_10025E000;
  if (!sub_1000757A8())
  {

    goto LABEL_6;
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 120) = v3;
  *(v0 + 288) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 296) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  *(v0 + 304) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v3 + v4, v2, &unk_100262580, &qword_1001CFF70);
  v5 = type metadata accessor for CompositionModel.Session(0);
  *(v0 + 312) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v2, 1, v5))
  {
    v8 = *(v0 + 256);

    sub_10000F500(v8, &unk_100262580, &qword_1001CFF70);
LABEL_4:
    v1 = &unk_10025E000;
LABEL_6:
    if (!sub_1000757A8())
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000F34C(v9, qword_100276F08);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Undo operation invoked when canUndo is false.", v12, 2u);
      }
    }

    v13 = *(v0 + 224);
    v14 = *(v0 + 184);
    swift_getKeyPath();
    *(v0 + 112) = v14;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v1[142];
    swift_beginAccess();
    sub_1000081F8(v14 + v15, v13, &unk_100262580, &qword_1001CFF70);
    v16 = type metadata accessor for CompositionModel.Session(0);
    v17 = (*(*(v16 - 8) + 48))(v13, 1, v16);
    v18 = *(v0 + 224);
    if (v17)
    {
      sub_10000F500(v18, &unk_100262580, &qword_1001CFF70);
LABEL_14:
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000F34C(v19, qword_100276F08);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "GES session unexpectedly is nil.", v22, 2u);
      }

      goto LABEL_45;
    }

    v23 = *(v18 + 16);
    v24 = *(v0 + 224);

    sub_10000F500(v24, &unk_100262580, &qword_1001CFF70);
    if (!v23)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  v25 = *(v0 + 256);
  v26 = *(v25 + 16);
  *(v0 + 336) = v26;

  sub_10000F500(v25, &unk_100262580, &qword_1001CFF70);
  if (!v26)
  {

    goto LABEL_4;
  }

  v27 = *(v0 + 184);
  v28 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  *(v0 + 344) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v77 = v7;
  if (*(v27 + v28) != 2)
  {
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    *(v29 + 24) = 2;
    *(v0 + 128) = v27;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v27 = *(v0 + 184);
  }

  *(v0 + 352) = 0;
  swift_getKeyPath();
  *(v0 + 136) = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 360) = Strong;
  if (!Strong)
  {
LABEL_36:
    v48 = *(v0 + 344);
    v49 = *(v0 + 184);
    if (*(v49 + v48))
    {
      swift_getKeyPath();
      v50 = swift_task_alloc();
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v0 + 144) = v49;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v49 + v48) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000F34C(v51, qword_100276F08);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      _os_log_impl(&_mh_execute_header, v52, v53, "Undo operation invoked, did we update response content: %{BOOL}d", v54, 8u);

LABEL_45:

      v55 = *(v0 + 8);

      return v55();
    }

LABEL_44:

    goto LABEL_45;
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 152) = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v3 + v4, v31, &unk_100262580, &qword_1001CFF70);
  v33 = v77(v31, 1, v5);
  v34 = *(v0 + 248);
  if (v33)
  {
    swift_unknownObjectRelease();
    sub_10000F500(v34, &unk_100262580, &qword_1001CFF70);
    goto LABEL_36;
  }

  v35 = *(v0 + 240);
  v36 = *(v0 + 184);
  v37 = *v34;
  *(v0 + 368) = *v34;
  v38 = v37;
  sub_10000F500(v34, &unk_100262580, &qword_1001CFF70);
  swift_getKeyPath();
  *(v0 + 160) = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v3 + v4, v35, &unk_100262580, &qword_1001CFF70);
  v39 = v77(v35, 1, v5);
  v40 = *(v0 + 240);
  if (v39 || !*(v40 + 16))
  {
    sub_10000F500(v40, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v57 = *(v0 + 240);

    sub_10000F500(v57, &unk_100262580, &qword_1001CFF70);
    LOBYTE(v57) = GenerativeExperiencesSession.canUndo()();

    if (v57)
    {
      v58 = swift_task_alloc();
      *(v0 + 376) = v58;
      *v58 = v0;
      v58[1] = sub_1000769D4;
      v59 = *(v0 + 192);

      return GenerativeExperiencesSession.undo()(v59);
    }
  }

  v41 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 168) = v41;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v41 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal))
  {

LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v42 = *(v0 + 320);
  v44 = *(v0 + 304);
  v43 = *(v0 + 312);
  v45 = *(v0 + 232);
  v46 = *(v0 + 184);
  swift_getKeyPath();
  *(v0 + 176) = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v46 + v44, v45, &unk_100262580, &qword_1001CFF70);
  if (v42(v45, 1, v43))
  {
    v47 = *(v0 + 232);

    swift_unknownObjectRelease();
    sub_10000F500(v47, &unk_100262580, &qword_1001CFF70);
    goto LABEL_36;
  }

  v60 = *(v0 + 232);
  v61 = *(v60 + 8);
  *(v0 + 464) = v61;
  v62 = v61;
  sub_10000F500(v60, &unk_100262580, &qword_1001CFF70);
  v63 = [v62 attributedText];
  *(v0 + 472) = v63;
  [v62 range];
  v64 = [v63 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Range<>.init(_:in:)();
  LOBYTE(v64) = v65;

  v67 = *(v0 + 360);
  v66 = *(v0 + 368);
  if (v64)
  {

    goto LABEL_33;
  }

  v68 = [v62 range];
  v70 = [v63 attributedSubstringFromRange:{v68, v69}];
  *(v0 + 480) = v70;
  v71 = [v70 string];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  *(v0 + 488) = v74;
  [v67 writingToolsSession:v66 didReceiveAction:3];
  v75 = v70;
  v76 = swift_task_alloc();
  *(v0 + 496) = v76;
  *v76 = v0;
  v76[1] = sub_10007784C;

  return sub_1000897EC(v72, v74, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, 0, 1, v70);
}

uint64_t sub_1000769D4()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100076AF4, v3, v2);
}

uint64_t sub_100076AF4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000F500(v3, &unk_10025F4F0, &qword_1001D4768);
    v4 = *(v0 + 184);
    swift_getKeyPath();
    *(v0 + 168) = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal))
    {

LABEL_4:
      swift_unknownObjectRelease();
LABEL_10:
      v14 = *(v0 + 344);
      v15 = *(v0 + 184);
      if (*(v15 + v14))
      {
        swift_getKeyPath();
        v16 = swift_task_alloc();
        *(v16 + 16) = v15;
        *(v16 + 24) = 0;
        *(v0 + 144) = v15;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v15 + v14) = 0;
      }

      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000F34C(v17, qword_100276F08);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        _os_log_impl(&_mh_execute_header, v18, v19, "Undo operation invoked, did we update response content: %{BOOL}d", v20, 8u);
      }

      else
      {
      }

      v21 = *(v0 + 8);

      return v21();
    }

    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 232);
    v12 = *(v0 + 184);
    swift_getKeyPath();
    *(v0 + 176) = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v12 + v10, v11, &unk_100262580, &qword_1001CFF70);
    if (v8(v11, 1, v9))
    {
      v13 = *(v0 + 232);

      swift_unknownObjectRelease();
      sub_10000F500(v13, &unk_100262580, &qword_1001CFF70);
      goto LABEL_10;
    }

    v22 = *(v0 + 232);
    v23 = *(v22 + 8);
    *(v0 + 464) = v23;
    v24 = v23;
    sub_10000F500(v22, &unk_100262580, &qword_1001CFF70);
    v25 = [v24 attributedText];
    *(v0 + 472) = v25;
    [v24 range];
    v26 = [v25 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Range<>.init(_:in:)();
    LOBYTE(v26) = v27;

    v29 = *(v0 + 360);
    v28 = *(v0 + 368);
    if (v26)
    {

      goto LABEL_4;
    }

    v30 = [v24 range];
    v32 = [v25 attributedSubstringFromRange:{v30, v31}];
    *(v0 + 480) = v32;
    v33 = [v32 string];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v0 + 488) = v36;
    [v29 writingToolsSession:v28 didReceiveAction:3];
    v37 = v32;
    v38 = swift_task_alloc();
    *(v0 + 496) = v38;
    *v38 = v0;
    v38[1] = sub_10007784C;

    return sub_1000897EC(v34, v36, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, 0, 1, v32);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 216), v3, v1);
    v5 = swift_task_alloc();
    *(v0 + 384) = v5;
    *v5 = v0;
    v5[1] = sub_1000770F8;
    v6 = *(v0 + 216);

    return sub_100097654(v0 + 16, v6);
  }
}

uint64_t sub_1000770F8()
{
  v2 = *v1;
  v3 = *v1;
  v3[49] = v0;
  v3[50] = v2[2];
  *(v3 + 51) = *(v3 + 3);
  v3[53] = v2[5];
  *(v3 + 27) = *(v3 + 3);

  v4 = v2[35];
  v5 = v2[34];
  if (v0)
  {
    v6 = sub_1000774E4;
  }

  else
  {
    v6 = sub_100077278;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100077278()
{
  [*(v0 + 360) writingToolsSession:*(v0 + 368) didReceiveAction:3];
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_100077334;
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);

  return sub_1000897EC(v7, v6, v4, v5, v2, v3, 1, 0);
}

uint64_t sub_100077334()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_100077C10;
  }

  else
  {
    v5 = sub_1000775E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000774E4(uint64_t a1, uint64_t a2)
{
  v3 = v2[46];
  v5 = v2[26];
  v4 = v2[27];
  v6 = v2[25];

  swift_unknownObjectRelease();

  (*(v5 + 8))(v4, v6);

  v7 = v2[1];

  return v7();
}

uint64_t sub_1000775E0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 184);
  if (*(v5 + v4))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v0 + 144) = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v5 + v4) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Undo operation invoked, did we update response content: %{BOOL}d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10007784C()
{
  v2 = *v1;
  v2[63] = v0;

  v3 = v2[60];
  if (v0)
  {

    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_100077D0C;
  }

  else
  {

    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_1000779B0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000779B0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 368);

  swift_unknownObjectRelease();
  v4 = *(v0 + 344);
  v5 = *(v0 + 184);
  if (*(v5 + v4))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v0 + 144) = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v5 + v4) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Undo operation invoked, did we update response content: %{BOOL}d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100077C10(uint64_t a1, uint64_t a2)
{
  v3 = v2[46];
  v5 = v2[26];
  v4 = v2[27];
  v6 = v2[25];

  swift_unknownObjectRelease();

  (*(v5 + 8))(v4, v6);

  v7 = v2[1];

  return v7();
}

uint64_t sub_100077D0C(uint64_t a1, uint64_t a2)
{
  v4 = v2[59];
  v3 = v2[60];
  v5 = v2[58];
  v6 = v2[46];

  swift_unknownObjectRelease();

  v7 = v2[1];

  return v7();
}

uint64_t sub_100077DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  sub_10000341C(&unk_10025F4F0, &qword_1001D4768);
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for PromptCompletion();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[28] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[29] = v7;
  v4[30] = v6;

  return _swift_task_switch(sub_100077F78, v7, v6);
}

uint64_t sub_100077F78()
{
  if ((sub_1000759BC() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = v0[27];
  v2 = v0[20];
  swift_getKeyPath();
  v0[15] = v2;
  v0[31] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[32] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, v1, &unk_100262580, &qword_1001CFF70);
  v4 = type metadata accessor for CompositionModel.Session(0);
  v5 = *(*(v4 - 8) + 48);
  if (v5(v1, 1, v4))
  {
    v6 = v0[27];

    sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
LABEL_5:
    if ((sub_1000759BC() & 1) == 0)
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000F34C(v7, qword_100276F08);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Redo operation invoked when canRedo is false.", v10, 2u);
      }
    }

    v11 = v0[25];
    v12 = v0[20];
    swift_getKeyPath();
    v0[14] = v12;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
    swift_beginAccess();
    sub_1000081F8(v12 + v13, v11, &unk_100262580, &qword_1001CFF70);
    v14 = type metadata accessor for CompositionModel.Session(0);
    v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
    v16 = v0[25];
    if (v15)
    {
      sub_10000F500(v16, &unk_100262580, &qword_1001CFF70);
LABEL_13:
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000F34C(v17, qword_100276F08);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "GES session unexpectedly is nil.", v20, 2u);
      }

      goto LABEL_20;
    }

    v21 = *(v16 + 16);
    v22 = v0[25];

    sub_10000F500(v22, &unk_100262580, &qword_1001CFF70);
    if (!v21)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v25 = v0[27];
  v26 = *(v25 + 16);
  v0[33] = v26;

  sub_10000F500(v25, &unk_100262580, &qword_1001CFF70);
  if (!v26)
  {
LABEL_4:

    goto LABEL_5;
  }

  v27 = v0[20];
  v28 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v0[34] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v46 = v5;
  if (*(v27 + v28) != 2)
  {
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    *(v29 + 24) = 2;
    v0[16] = v27;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v27 = v0[20];
  }

  v0[35] = 0;
  swift_getKeyPath();
  v0[17] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (!Strong)
  {
LABEL_31:
    v35 = v0[34];
    v36 = v0[20];
    if (*(v36 + v35))
    {
      swift_getKeyPath();
      v37 = swift_task_alloc();
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      v0[18] = v36;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v36 + v35) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000F34C(v38, qword_100276F08);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      _os_log_impl(&_mh_execute_header, v39, v40, "Redo operation invoked, did we update response content: %{BOOL}d", v41, 8u);

      goto LABEL_20;
    }

LABEL_19:

LABEL_20:

    v23 = v0[1];

    return v23();
  }

  v31 = v0[26];
  v32 = v0[20];
  swift_getKeyPath();
  v0[19] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v2 + v3, v31, &unk_100262580, &qword_1001CFF70);
  v33 = v46(v31, 1, v4);
  v34 = v0[26];
  if (v33)
  {
    swift_unknownObjectRelease();
    sub_10000F500(v34, &unk_100262580, &qword_1001CFF70);
    goto LABEL_31;
  }

  v42 = *v34;
  v0[37] = *v34;
  v43 = v42;
  sub_10000F500(v34, &unk_100262580, &qword_1001CFF70);
  v44 = swift_task_alloc();
  v0[38] = v44;
  *v44 = v0;
  v44[1] = sub_100078814;
  v45 = v0[21];

  return GenerativeExperiencesSession.redo()(v45);
}

uint64_t sub_100078814()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_100078934, v3, v2);
}

uint64_t sub_100078934()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    swift_unknownObjectRelease();
    sub_10000F500(v3, &unk_10025F4F0, &qword_1001D4768);
    v4 = *(v0 + 272);
    v5 = *(v0 + 160);
    if (*(v5 + v4))
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      *(v0 + 144) = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v5 + v4) = 0;
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F08);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      _os_log_impl(&_mh_execute_header, v11, v12, "Redo operation invoked, did we update response content: %{BOOL}d", v13, 8u);
    }

    else
    {
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 192), v3, v1);
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_100078C48;
    v8 = *(v0 + 192);

    return sub_100097654(v0 + 16, v8);
  }
}

uint64_t sub_100078C48()
{
  v2 = *v1;
  v3 = *v1;
  v3[40] = v0;
  v3[41] = v2[2];
  *(v3 + 21) = *(v3 + 3);
  v3[44] = v2[5];
  *(v3 + 45) = *(v3 + 3);

  v4 = v2[30];
  v5 = v2[29];
  if (v0)
  {
    v6 = sub_100079034;
  }

  else
  {
    v6 = sub_100078DC8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100078DC8()
{
  [*(v0 + 288) writingToolsSession:*(v0 + 296) didReceiveAction:3];
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_100078E84;
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);

  return sub_1000897EC(v7, v6, v4, v5, v2, v3, 0, 0);
}

uint64_t sub_100078E84()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100079380;
  }

  else
  {
    v5 = sub_100079128;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100079034()
{
  v1 = v0[37];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_unknownObjectRelease();

  (*(v2 + 8))(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100079128()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 272);
  v5 = *(v0 + 160);
  if (*(v5 + v4))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v0 + 144) = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v5 + v4) = 0;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Redo operation invoked, did we update response content: %{BOOL}d", v10, 8u);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100079380()
{
  v1 = v0[37];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_unknownObjectRelease();

  (*(v2 + 8))(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100079594(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100079634@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_100079710(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100079808(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v35 - v7);
  v9 = type metadata accessor for UUID();
  v39 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v35 = &v35 - v13;
  v14 = __chkstk_darwin(v12);
  v36 = &v35 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - v17;
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  swift_getKeyPath();
  v41 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v21, v8, &unk_100262580, &qword_1001CFF70);
  v22 = type metadata accessor for CompositionModel.Session(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v8, 1, v22))
  {
    v24 = v39;
    sub_10000F500(v8, &unk_100262580, &qword_1001CFF70);
    sub_1000081F8(v38, v6, &unk_100262580, &qword_1001CFF70);
    if (v23(v6, 1, v22) == 1)
    {
      return sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
    }

    else
    {
      v30 = *v6;
      sub_100099074(v6);
      v31 = [v30 uuid];

      v32 = v35;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v36;
      (*(v24 + 32))(v36, v32, v9);
      if (qword_10025A760 != -1)
      {
        swift_once();
      }

      v34 = v37;
      (*(v24 + 16))(v37, v33, v9);
      swift_beginAccess();
      sub_10019D030(0, v34);
      swift_endAccess();
      return (*(v24 + 8))(v33, v9);
    }
  }

  else
  {
    v26 = *v8;
    sub_10000F500(v8, &unk_100262580, &qword_1001CFF70);
    v27 = [v26 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v39;
    (*(v39 + 32))(v20, v18, v9);
    if (qword_10025A760 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = qword_100277038;
    qword_100277038 = 0x8000000000000000;
    sub_1001A9BA8(v2, v20, isUniquelyReferenced_nonNull_native);
    qword_100277038 = v40;
    swift_endAccess();
    return (*(v28 + 8))(v20, v9);
  }
}

void (*sub_100079D54(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1000081F8(v1 + v8, v7, &unk_100262580, &qword_1001CFF70);
  return sub_100079E84;
}

void sub_100079E84(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1000081F8(*(*a1 + 12), v6, &unk_100262580, &qword_1001CFF70);
    sub_1000081F8(v7 + v4, v5, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v6, v7 + v4, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v5);
    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    sub_1000081F8(v7 + v4, v6, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v3, v7 + v4, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v6);
  }

  sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
  sub_10000F500(v3, &unk_100262580, &qword_1001CFF70);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_10007A01C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000081F8(v12 + v10, a5, a3, a4);
}

uint64_t sub_10007A0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_1000081F8(a2, &v12[-v8], &unk_100262580, &qword_1001CFF70);
  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(a1 + v10, v7, &unk_100262580, &qword_1001CFF70);
  swift_beginAccess();
  sub_10009AB44(v9, a1 + v10, &unk_100262580, &qword_1001CFF70);
  swift_endAccess();
  sub_100079808(v7);
  sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
  return sub_10000F500(v9, &unk_100262580, &qword_1001CFF70);
}

uint64_t (*sub_10007A25C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100079D54(v4);
  return sub_10007A394;
}

void sub_10007A394(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t sub_10007A428()
{
  result = sub_100005ADC(_swiftEmptyArrayStorage);
  qword_100277038 = result;
  return result;
}

id sub_10007A450()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1))
  {
    swift_getKeyPath();
    sub_1000997E0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + 64))
    {
      v1 = 58;
    }

    else
    {
      v1 = 26;
    }

    if (*(v0 + 64))
    {
      v2 = 53;
    }

    else
    {
      v2 = 21;
    }
  }

  else
  {
    v2 = 21;
    v1 = 26;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions);
  sub_10000341C(&qword_10025F4A8, &qword_1001D45E8);
  if ((v3 & 0x10) != 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9E0;
    v9 = TCFormatFeatureDefault;
    *(inited + 32) = TCFormatFeatureDefault;
    v10 = objc_allocWithZone(NSNumber);
    v11 = v9;
    v12 = [v10 initWithUnsignedInteger:v1];
    v13 = TCFormatFeatureUnderline;
    *(inited + 40) = v12;
    *(inited + 48) = v13;
    v14 = objc_allocWithZone(NSNumber);
    v15 = v13;
    *(inited + 56) = [v14 initWithUnsignedInteger:v2];
    sub_100006234(inited);
    swift_setDeallocating();
    sub_10000341C(&qword_10025F4B0, &qword_1001D45F0);
    swift_arrayDestroy();
  }

  else
  {
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1001CF9D0;
    v5 = TCFormatFeatureDefault;
    *(v4 + 32) = TCFormatFeatureDefault;
    v6 = objc_allocWithZone(NSNumber);
    v7 = v5;
    *(v4 + 40) = [v6 initWithUnsignedInteger:v2];
    sub_100006234(v4);
    swift_setDeallocating();
    sub_10000F500(v4 + 32, &qword_10025F4B0, &qword_1001D45F0);
  }

  v16 = objc_allocWithZone(TCAttributedStringFormatOptions);
  type metadata accessor for TCFormatFeature(0);
  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
  sub_1000997E0(&unk_10025F4C0, type metadata accessor for TCFormatFeature, &unk_1001CF890);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v16 initWithOptions:isa];

  return v18;
}

uint64_t sub_10007A838()
{
  v0 = type metadata accessor for GenerativeAssistantRestrictionManager();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100138554() & 1) == 0 || (static GenerativeAssistantRestrictionManager.instance.getter(), v4 = GenerativeAssistantRestrictions.isMontaraAllowed.getter(), (*(v1 + 8))(v3, v0), (v4 & 1) == 0))
  {
    static GenerativeAssistantRestrictionManager.instance.getter();
    v5 = GenerativeAssistantRestrictions.isMontaraAllowed.getter();
    (*(v1 + 8))(v3, v0);
    if (v5)
    {
      if (sub_100138554())
      {
        v6 = 0x80000001001E4BE0;
        v7 = 0xD000000000000043;
      }

      else
      {
        if (qword_10025A718 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000F34C(v12, qword_100276FB0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Montara generative composing models are unavailable.", v15, 2u);
        }

        v7 = 0;
        v6 = 1;
      }
    }

    else
    {
      if (qword_10025A718 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000F34C(v8, qword_100276FB0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Montara is disabled by MDM", v11, 2u);
      }

      v7 = 0;
      v6 = 2;
    }

    sub_100099280();
    v16 = swift_allocError();
    *v17 = v7;
    v17[1] = v6;
    sub_100036BF0(v16);
  }

  return sub_100038160();
}

uint64_t sub_10007AB54()
{
  v1[48] = v0;
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v1[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[50] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[51] = v3;
  v1[52] = v2;

  return _swift_task_switch(sub_10007AC24, v3, v2);
}

uint64_t sub_10007AC24()
{
  v1 = v0[48];
  swift_getKeyPath();
  v0[53] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[32] = v1;
  v0[54] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) == 1)
  {
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[55] = v2;
    v0[56] = sub_10000F34C(v2, qword_100276FB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting composition session.", v5, 2u);
    }

    v6 = v0[48];

    swift_getKeyPath();
    v0[33] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[57] = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

    v7 = swift_task_alloc();
    v0[58] = v7;
    *v7 = v0;
    v7[1] = sub_10007AF5C;

    return sub_1000DF628();
  }

  else
  {

    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276FB0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Feature not enabled, not starting composition session.", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10007AF5C()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_10007B0A0, v3, v2);
}

uint64_t sub_10007B0A0()
{
  v1 = *(v0 + 384);
  v2 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
  *(v0 + 472) = v2;
  [v2 setCompositionSessionType:10];
  swift_getKeyPath();
  *(v0 + 272) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + 384);
    swift_getKeyPath();
    *(v0 + 288) = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1 && (v6 = *(v0 + 384), swift_getKeyPath(), *(v0 + 376) = v6, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1))
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 488) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 280;
    *(v0 + 24) = sub_10007B4F8;
    v8 = swift_continuation_init();
    *(v0 + 216) = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    *(v0 + 160) = _NSConcreteStackBlock;
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_10019D8B8;
    *(v0 + 184) = &unk_10024D118;
    *(v0 + 192) = v8;
    [v4 willBeginWritingToolsSession:v7 requestContexts:v0 + 160];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Context not found for composition session", v11, 2u);
    }

    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v13;
    *(inited + 48) = 0xD000000000000029;
    *(inited + 56) = 0x80000001001E4BB0;
    sub_1000057A8(inited);
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v14 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v14 initWithDomain:v15 code:1 userInfo:isa];

    sub_100036BF0(v17);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10007B4F8()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);

  return _swift_task_switch(sub_10007B600, v2, v1);
}

uint64_t sub_10007B600()
{
  v1 = v0[61];
  v2 = v0[35];
  swift_unknownObjectRelease();

  if (v2 >> 62)
  {
    goto LABEL_54;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Context not found for composition session", v79, 2u);
    }

    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v81;
    *(inited + 48) = 0xD000000000000029;
    *(inited + 56) = 0x80000001001E4BB0;
    sub_1000057A8(inited);
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v82 = objc_allocWithZone(NSError);
    v83 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v85 = [v82 initWithDomain:v83 code:1 userInfo:isa];

    sub_100036BF0(v85);
    v2 = v0[59];
    goto LABEL_58;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v3 = *(v2 + 32);
  }

  v4 = [v3 attributedText];
  v5 = [v4 string];

  v6 = v5;
  v7 = v5;
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  string = v6;
  v8 = v0[48];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v10;
  swift_getKeyPath();
  v0[37] = v8;
  v11 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) == 1)
  {
    v12 = HIBYTE(v91) & 0xF;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if (![v3 range])
      {
        [v3 range];
        if (!v13)
        {
          v14 = [v3 attributedText];
          v15 = [v14 length];

          [v3 setRange:{0, v15}];
        }
      }
    }
  }

  v16 = [v3 attributedText];
  v17 = [v16 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = String.count.getter();

  v93.location = 0;
  v93.length = v18;
  v19 = CFStringTokenizerCreate(0, v7, v93, 0, 0);

  Token = CFStringTokenizerAdvanceToNextToken(v19);
  if (!Token)
  {
    goto LABEL_23;
  }

  v21 = Token;
  v22 = 0;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v19);
    if ((v21 & 0x20) != 0)
    {
      break;
    }

    v23 = __OFADD__(v22++, 1);
    if (v23)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_55;
      }

      goto LABEL_3;
    }

LABEL_18:
    v24 = CFStringTokenizerAdvanceToNextToken(v19);
    v21 = v24;
    if (!v24)
    {
      goto LABEL_24;
    }
  }

  v23 = __OFADD__(v22, CurrentTokenRange.length);
  v22 += CurrentTokenRange.length;
  if (!v23)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_23:
  v22 = 0;
LABEL_24:
  v26 = v0[48];

  v27 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
  if (*(v26 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) != v22)
  {
    v2 = v0[48];
    swift_getKeyPath();
    v28 = swift_task_alloc();
    *(v28 + 16) = v2;
    *(v28 + 24) = v22;
    v0[38] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v94.location = [v3 range];
  v94.length = v29;
  v30 = CFStringTokenizerCreate(0, string, v94, 0, 0);

  v31 = CFStringTokenizerAdvanceToNextToken(v30);
  if (!v31)
  {
    goto LABEL_34;
  }

  v32 = v31;
  v33 = 0;
  while (2)
  {
    v35 = CFStringTokenizerGetCurrentTokenRange(v30);
    if ((v32 & 0x20) == 0)
    {
      v23 = __OFADD__(v33++, 1);
      if (v23)
      {
        goto LABEL_53;
      }

LABEL_29:
      v34 = CFStringTokenizerAdvanceToNextToken(v30);
      v32 = v34;
      if (!v34)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  v23 = __OFADD__(v33, v35.length);
  v33 += v35.length;
  if (!v23)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  v33 = 0;
LABEL_35:
  v36 = v0[48];

  stringa = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  if (*(v36 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) != v33)
  {
    v37 = v0[48];
    swift_getKeyPath();
    v38 = swift_task_alloc();
    *(v38 + 16) = v37;
    *(v38 + 24) = v33;
    v0[39] = v37;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v39 = v0[48];
  swift_getKeyPath();
  v0[40] = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v26 + v27);
  swift_getKeyPath();
  v0[41] = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(&stringa->isa + v36);
  v41 = (v2 - v40);
  if (__OFSUB__(v2, v40))
  {
LABEL_63:
    __break(1u);
    swift_once();
    sub_10000F34C(v0[55], qword_100276F08);
    swift_errorRetain();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      swift_errorRetain();
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "failed to init slot parser: %@", v70, 0xCu);
      sub_10000F500(v71, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }

    goto LABEL_51;
  }

  v42 = v0[48];
  v88 = v36;
  if (*(v42 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount) != v41)
  {
    swift_getKeyPath();
    v43 = swift_task_alloc();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    v0[42] = v42;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000940A8();
  v44 = v3;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "Context for composition %@", v47, 0xCu);
    sub_10000F500(v48, &unk_10025D580, &qword_1001CFA60);
  }

  v50 = v0[59];
  v51 = v0[48];
  v52 = v0[49];

  v53 = type metadata accessor for CompositionModel.Session(0);
  v54 = v53[7];
  v55 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  (*(*(v55 - 8) + 56))(&v52[v54], 1, 1, v55);
  *v52 = v50;
  *(v52 + 1) = v44;
  *(v52 + 2) = 0;
  *&v52[v53[8]] = 0;
  v52[v53[9]] = 0;
  v56 = *(v53 - 1);
  (*(v56 + 56))(v52, 0, 1, v53);
  swift_getKeyPath();
  v57 = swift_task_alloc();
  *(v57 + 16) = v51;
  *(v57 + 24) = v52;
  v0[43] = v51;
  v58 = v50;
  v2 = v44;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v52, &unk_100262580, &qword_1001CFF70);
  v59 = v0 + 28;
  v60 = sub_10007A25C(v0 + 28);
  v62 = v61;
  if (!(*(v56 + 48))(v61, 1, v53))
  {
    v63 = v0[48];
    swift_getKeyPath();
    v0[46] = v63;
    v59 = v0 + 28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v62 + v53[9]) = *(&stringa->isa + v88) == 0;
  }

  (v60)(v59, 0);
  v64 = v0[48];
  v65 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex;
  if (*(v64 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex))
  {
    swift_getKeyPath();
    v66 = swift_task_alloc();
    *(v66 + 16) = v64;
    *(v66 + 24) = 0;
    v0[44] = v64;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v64 + v65) = 0;
  }

  type metadata accessor for SlotParser(0);
  swift_allocObject();
  v67 = sub_1000A1B04();
  v73 = v0[48];
  v74 = v67;
  swift_getKeyPath();
  v75 = swift_task_alloc();
  *(v75 + 16) = v73;
  *(v75 + 24) = v74;
  v0[45] = v73;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_51:
  v76 = v0[59];
  qword_100277028 = 0;
  qword_100277030 = 0;

  qword_10025E340 = 0;
  byte_10025E348 = 1;

LABEL_58:

  v86 = v0[1];

  return v86();
}