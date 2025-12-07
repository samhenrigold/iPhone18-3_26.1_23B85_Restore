double sub_100119874()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = __chkstk_darwin(v0);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v1);
  v6 = (&v29 - v5);
  v7 = __chkstk_darwin(v4);
  v31 = &v29 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (&v29 - v10);
  __chkstk_darwin(v9);
  v13 = (&v29 - v12);
  v14 = *(type metadata accessor for CompactDatePicker(0) + 24);
  sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  v32 = v14;
  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v15 = *v13 == *v11 && v13[1] == v11[1];
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v16 = *(v0 + 24);
    v42 = *(v13 + v16);
    v30 = v0;
    v17 = *(v11 + v16);
    sub_10011DFD8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v13, type metadata accessor for CompactDatePickerConfiguration);
    v15 = v42 == v17;
    v0 = v30;
    if (v15)
    {
      v18 = v31;
      Binding.wrappedValue.getter();
      v18[*(v0 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_10011DFD8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v13, type metadata accessor for CompactDatePickerConfiguration);
  }

  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v19 = *v6 == *v3 && v6[1] == v3[1];
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v20 = *(v0 + 24);
    v21 = *(v6 + v20);
    v22 = v0;
    v23 = *(v3 + v20);
    sub_10011DFD8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
    if (v21 == v23)
    {
      v24 = v31;
      Binding.wrappedValue.getter();
      v24[*(v22 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_10011DFD8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  }

  swift_getKeyPath();
  Binding.subscript.getter();

  v25 = v39;
  v26 = v40;
  v27 = v41;
  v36 = v39;
  v37 = v40;
  v38 = v41;
  sub_100009F70(&qword_100218960, &unk_1001B81D0);
  Binding.wrappedValue.getter();
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v43 = (v44 & 1) == 0;
  Binding.wrappedValue.setter();

  return result;
}

uint64_t sub_100119C50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityTraits();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  __chkstk_darwin(v8 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021F180, &unk_1001B81A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_100009F70(&qword_10021F188, &qword_1001B71F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v46 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v46);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v22;
  v23 = type metadata accessor for CompactDatePickerConfiguration(0);
  v55 = v23;
  __chkstk_darwin(v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  __chkstk_darwin(v50);
  v51 = &v41 - v26;
  v27 = *(type metadata accessor for CompactDatePicker(0) + 24);
  v43 = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  Binding.wrappedValue.getter();
  (*(v20 + 16))(v22, &v25[*(v23 + 20)], v19);
  v42 = type metadata accessor for CompactDatePickerConfiguration;
  sub_10011DFD8(v25, type metadata accessor for CompactDatePickerConfiguration);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  v28 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  v29 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  sub_10011C16C(&qword_10021F178, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_10011C16C(&qword_10021FDF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v30 = Text.init<A>(_:format:)();
  v32 = v31;
  v58 = v30;
  v59 = v33;
  v47 = v33;
  v48 = a1;
  v60 = v31 & 1;
  v61 = v34;
  v49 = v27;
  Binding.wrappedValue.getter();
  v35 = v25[*(v55 + 24)];
  sub_10011DFD8(v25, v42);
  if (v35 == 1)
  {
    sub_100009F70(&qword_100219BD8, &qword_1001AECB8);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1001AEB90;
    static AccessibilityTraits.isSelected.getter();
    v57 = v36;
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  sub_10011C16C(&qword_100219BE0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100009F70(&qword_100219BE8, &qword_1001AECC0);
  sub_10000D1EC(&qword_100219BF0, &qword_100219BE8, &qword_1001AECC0, &protocol conformance descriptor for [A]);
  v37 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v51;
  v39 = v56;
  View.accessibilityAddTraits(_:)();
  (*(v54 + 8))(v39, v37);
  sub_10000D60C(v30, v47, v32 & 1);

  Binding.wrappedValue.getter();
  sub_10011DFD8(v25, type metadata accessor for CompactDatePickerConfiguration);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityHint(_:)();

  return sub_10000D52C(v38, &qword_10021DB10, &qword_1001B4D90);
}

uint64_t sub_10011A484@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CompactDatePicker(0);
  v108 = *(v3 - 8);
  __chkstk_darwin(v3);
  v109 = v4;
  v110 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for GraphicalDatePickerStyle();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v6 - 8);
  v89 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  __chkstk_darwin(v8 - 8);
  v86 = &v77 - v9;
  v10 = sub_100009F70(&qword_10021FD10, &qword_1001B80D8);
  __chkstk_darwin(v10 - 8);
  v81 = &v77 - v11;
  v12 = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  __chkstk_darwin(v12);
  v80 = &v77 - v13;
  v85 = sub_100009F70(&qword_10021FD18, &qword_1001B80E0);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v77 - v14;
  v84 = sub_100009F70(&qword_10021FD20, &qword_1001B80E8);
  __chkstk_darwin(v84);
  v87 = &v77 - v15;
  v91 = sub_100009F70(&qword_10021FD28, &qword_1001B80F0);
  __chkstk_darwin(v91);
  v93 = &v77 - v16;
  v92 = sub_100009F70(&qword_10021FD30, &qword_1001B80F8);
  __chkstk_darwin(v92);
  v103 = &v77 - v17;
  v102 = sub_100009F70(&qword_10021FD38, &qword_1001B8100);
  __chkstk_darwin(v102);
  v105 = &v77 - v18;
  v104 = sub_100009F70(&qword_10021FD40, &qword_1001B8108);
  v19 = __chkstk_darwin(v104);
  v107 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v101 = &v77 - v22;
  __chkstk_darwin(v21);
  v106 = &v77 - v23;
  v24 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Divider();
  v27 = *(v79 - 8);
  __chkstk_darwin(v79);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100009F70(&qword_10021FD48, &qword_1001B8110);
  v99 = *(v100 - 8);
  v30 = __chkstk_darwin(v100);
  v96 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v77 - v32;
  Divider.init()();
  v113 = v3;
  v34 = a1 + *(v3 + 24);
  v94 = v12;
  v112 = v34;
  Binding.wrappedValue.getter();
  v90 = v24;
  LOBYTE(v3) = v26[*(v24 + 24)];
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  v35 = static Animation.linear(duration:)();
  if ((v3 & 1) == 0)
  {
    Animation.delay(_:)();
  }

  __chkstk_darwin(v35);
  sub_100009F70(&qword_10021FD50, &qword_1001B8118);
  sub_10011C16C(&qword_10021FB00, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  v78 = a1;
  sub_10011F03C();
  v88 = v33;
  v36 = v79;
  View.animation<A>(_:body:)();

  (*(v27 + 8))(v29, v36);
  v37 = v80;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10000D52C(v37, &qword_10021FC18, &unk_1001B7FD0);
  sub_10000D58C(a1 + *(v113 + 32), v86, &qword_10021F5E0, &qword_1001B76F0);
  static DatePickerComponents.date.getter();
  v38 = v82;
  DatePicker.init(selection:in:displayedComponents:label:)();
  Binding.wrappedValue.getter();
  v39 = v90;
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  sub_10000D1EC(&qword_10021FD80, &qword_10021FD18, &qword_1001B80E0, &protocol conformance descriptor for DatePicker<A>);
  v40 = v87;
  v41 = v85;
  View.accessibilityHidden(_:isEnabled:)();
  (*(v83 + 8))(v38, v41);
  v42 = v95;
  GraphicalDatePickerStyle.init()();
  sub_10011F180();
  sub_10011C16C(&qword_10021FD90, &type metadata accessor for GraphicalDatePickerStyle, &protocol conformance descriptor for GraphicalDatePickerStyle);
  v43 = v93;
  v44 = v98;
  View.datePickerStyle<A>(_:)();
  (*(v97 + 8))(v42, v44);
  sub_10000D52C(v40, &qword_10021FD20, &qword_1001B80E8);
  v45 = (v43 + *(sub_100009F70(&qword_10021FD98, &qword_1001B8150) + 36));
  v46 = sub_100009F70(&qword_10021FDA0, &qword_1001B8158);
  v47 = *(v46 + 36);
  v48 = enum case for CoordinateSpace.local(_:);
  v49 = type metadata accessor for CoordinateSpace();
  (*(*(v49 - 8) + 104))(&v45[v47], v48, v49);
  *v45 = &type metadata for FilterViewStartDatePickerHeightPreferenceKey;
  v50 = &v45[*(v46 + 40)];
  *v50 = sub_10011B690;
  v50[1] = 0;
  v51 = v78;
  v52 = v110;
  sub_10011DF70(v78, v110, type metadata accessor for CompactDatePicker);
  v53 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v54 = swift_allocObject();
  sub_10011F268(v52, v54 + v53, type metadata accessor for CompactDatePicker);
  v55 = (v43 + *(sub_100009F70(&qword_10021FDA8, &qword_1001B8160) + 36));
  *v55 = sub_10011F2D0;
  v55[1] = v54;
  v56 = *(v51 + *(v113 + 36));
  v57 = (v43 + *(v91 + 36));
  *v57 = 0;
  v57[1] = v56;
  Binding.wrappedValue.getter();
  LODWORD(v46) = v26[*(v39 + 24)];
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  if (v46)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = v103;
  sub_10000F618(v43, v103, &qword_10021FD28, &qword_1001B80F0);
  *(v59 + *(v92 + 36)) = v58;
  Binding.wrappedValue.getter();
  sub_10011DFD8(v26, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v105;
  sub_10000F618(v59, v105, &qword_10021FD30, &qword_1001B80F8);
  v61 = (v60 + *(v102 + 36));
  v62 = v119;
  v61[4] = v118;
  v61[5] = v62;
  v61[6] = v120;
  v63 = v115;
  *v61 = v114;
  v61[1] = v63;
  v64 = v117;
  v61[2] = v116;
  v61[3] = v64;
  v65 = v101;
  sub_10000F618(v60, v101, &qword_10021FD38, &qword_1001B8100);
  *(v65 + *(v104 + 36)) = 0;
  v66 = v106;
  sub_10000F618(v65, v106, &qword_10021FD40, &qword_1001B8108);
  v67 = v99;
  v68 = *(v99 + 16);
  v69 = v96;
  v70 = v88;
  v71 = v100;
  v68(v96, v88, v100);
  v72 = v107;
  sub_10000D58C(v66, v107, &qword_10021FD40, &qword_1001B8108);
  v73 = v111;
  v68(v111, v69, v71);
  v74 = sub_100009F70(&qword_10021FDB0, &qword_1001B8168);
  sub_10000D58C(v72, &v73[*(v74 + 48)], &qword_10021FD40, &qword_1001B8108);
  sub_10000D52C(v66, &qword_10021FD40, &qword_1001B8108);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_10000D52C(v72, &qword_10021FD40, &qword_1001B8108);
  return (v75)(v69, v71);
}

__n128 sub_10011B3B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CompactDatePickerConfiguration(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021FD68, &qword_1001B8120);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  type metadata accessor for CompactDatePicker(0);
  sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  Binding.wrappedValue.getter();
  v11 = v6[*(v4 + 32)];
  sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  if (v11)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_100009F70(&qword_10021FD78, &qword_1001B8128);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  *&v10[*(v8 + 44)] = v12;
  Binding.wrappedValue.getter();
  sub_10011DFD8(v6, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 = v20;
  sub_10000F618(v10, v20, &qword_10021FD68, &qword_1001B8120);
  v15 = v14 + *(sub_100009F70(&qword_10021FD50, &qword_1001B8118) + 36);
  v16 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v16;
  *(v15 + 96) = v27;
  v17 = v22;
  *v15 = v21;
  *(v15 + 16) = v17;
  result = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10011B6B8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CompactDatePicker(0);
  sub_100009F70(&qword_10021FDB8, &qword_1001B8170);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10011B734@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100009F70(&qword_10021FCE0, &qword_1001B80A8);
  return sub_100118C64(v2, a2 + *(v4 + 44));
}

uint64_t sub_10011B784@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v62 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v62 - 8);
  __chkstk_darwin(v62);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100009F70(&qword_10021FEB0, &qword_1001B82D0);
  __chkstk_darwin(v59);
  v6 = &v57 - v5;
  v58 = sub_100009F70(&qword_10021FEB8, &qword_1001B82D8);
  __chkstk_darwin(v58);
  v8 = &v57 - v7;
  v57 = sub_100009F70(&qword_10021FEC0, &qword_1001B82E0);
  __chkstk_darwin(v57);
  v10 = &v57 - v9;
  v60 = sub_100009F70(&qword_10021FEC8, &qword_1001B82E8);
  __chkstk_darwin(v60);
  v12 = &v57 - v11;
  v63 = sub_100009F70(&qword_10021FED0, &qword_1001B82F0);
  __chkstk_darwin(v63);
  v14 = &v57 - v13;
  v61 = sub_100009F70(&qword_10021FED8, &qword_1001B82F8);
  __chkstk_darwin(v61);
  v64 = &v57 - v15;
  ButtonStyleConfiguration.label.getter();
  v65 = v1;
  if (*v1 == 1)
  {
    v16 = static Color.blue.getter();
  }

  else
  {
    v16 = static Color.primary.getter();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v2 + 32))(v6, v4, v62);
  v19 = &v6[*(v59 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 0.3;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10000F618(v6, v8, &qword_10021FEB0, &qword_1001B82D0);
  *&v8[*(v58 + 36)] = v20;
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10000F618(v8, v10, &qword_10021FEB8, &qword_1001B82D8);
  v30 = &v10[*(v57 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.vertical.getter();
  static Solarium.isEnabled.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10000F618(v10, v12, &qword_10021FEC0, &qword_1001B82E0);
  v40 = &v12[*(v60 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  if (qword_100218348 != -1)
  {
    swift_once();
  }

  v41 = qword_100230580;
  v42 = static Edge.Set.all.getter();
  sub_10000F618(v12, v14, &qword_10021FEC8, &qword_1001B82E8);
  v43 = &v14[*(v63 + 36)];
  *v43 = v41;
  v43[8] = v42;

  if (static Solarium.isEnabled.getter())
  {
    v44 = 16.0;
  }

  else
  {
    v44 = 7.0;
  }

  v45 = v64;
  v46 = &v64[*(v61 + 36)];
  v47 = *(type metadata accessor for RoundedRectangle() + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = type metadata accessor for RoundedCornerStyle();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v44;
  v46[1] = v44;
  *(v46 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  sub_10000F618(v14, v45, &qword_10021FED0, &qword_1001B82F0);
  v50 = type metadata accessor for DatePickerButtonStyle(0);
  v51 = v65;
  v52 = static Animation.easeInOut(duration:)();
  v53 = &v51[*(v50 + 20)];
  LOBYTE(v53) = v53[*(type metadata accessor for CompactDatePickerConfiguration(0) + 24)];
  v54 = v66;
  sub_10000F618(v45, v66, &qword_10021FED8, &qword_1001B82F8);
  result = sub_100009F70(&qword_10021FEE0, &unk_1001B8300);
  v56 = v54 + *(result + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  return result;
}

void sub_10011BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilterViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  type metadata accessor for StateObject();
  if (v4 <= 0x3F)
  {
    sub_10011E3DC(319, &qword_1002198B8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      sub_10011E3DC(319, &qword_10021A308, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
      if (v6 <= 0x3F)
      {
        sub_10000B304(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10011BECC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009F70(&qword_100219838, &qword_1001B2330);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100009F70(&qword_100218950, &unk_1001B5000);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10011C00C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009F70(&qword_100219838, &qword_1001B2330);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = sub_100009F70(&qword_100218950, &unk_1001B5000);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10011C16C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10011C1B4()
{
  result = qword_10021F960;
  if (!qword_10021F960)
  {
    sub_10000B3DC(&qword_10021F958, &qword_1001B7C50);
    sub_10011C4D4(&qword_10021F968, &qword_10021F970, &qword_1001B7C58, sub_10011C298);
    sub_10000D1EC(&qword_10021E7F0, &qword_10021E7F8, &qword_1001B7CA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F960);
  }

  return result;
}

unint64_t sub_10011C298()
{
  result = qword_10021F978;
  if (!qword_10021F978)
  {
    sub_10000B3DC(&qword_10021F980, &qword_1001B7C60);
    sub_10011C324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F978);
  }

  return result;
}

unint64_t sub_10011C324()
{
  result = qword_10021F988;
  if (!qword_10021F988)
  {
    sub_10000B3DC(&qword_10021F990, &qword_1001B7C68);
    sub_10000B3DC(&qword_10021F998, &unk_1001B7C70);
    sub_10000B3DC(&qword_10021DD48, &qword_1001B51A8);
    sub_10000B3DC(&qword_10021F9A0, &qword_1001B7C80);
    sub_10000D1EC(&qword_10021F9A8, &qword_10021F998, &unk_1001B7C70, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_10011C4D4(&qword_10021F9B0, &qword_10021F9A0, &qword_1001B7C80, sub_10011C558);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F988);
  }

  return result;
}

uint64_t sub_10011C4D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_10011C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011C558()
{
  result = qword_10021F9B8;
  if (!qword_10021F9B8)
  {
    sub_10000B3DC(&qword_10021F9C0, &qword_1001B7C88);
    sub_10011C610();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9B8);
  }

  return result;
}

unint64_t sub_10011C610()
{
  result = qword_10021F9C8;
  if (!qword_10021F9C8)
  {
    sub_10000B3DC(&qword_10021F9D0, &unk_1001B7C90);
    sub_10000D1EC(&qword_10021F9A8, &qword_10021F998, &unk_1001B7C70, &protocol conformance descriptor for Button<A>);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C8);
  }

  return result;
}

unint64_t sub_10011C6F4()
{
  result = qword_10021F9D8;
  if (!qword_10021F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9D8);
  }

  return result;
}

void sub_10011C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  sub_100116A68(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

unint64_t sub_10011C800()
{
  result = qword_10021FA10;
  if (!qword_10021FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA10);
  }

  return result;
}

double sub_10011C854(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100118298(a1, v9, v6, v7);
}

uint64_t sub_10011C8F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_10011C9E4()
{
  result = qword_10021FA50;
  if (!qword_10021FA50)
  {
    sub_10000B3DC(&qword_10021FA58, &qword_1001B7CE8);
    sub_100042DC4();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA50);
  }

  return result;
}

unint64_t sub_10011CAA8()
{
  result = qword_10021FA68;
  if (!qword_10021FA68)
  {
    sub_10000B3DC(&qword_10021FA60, &qword_1001B7CF8);
    sub_10011CF44(&qword_10021FA70, &qword_10021FA78, &qword_1001B7D00, sub_10011CB8C);
    sub_10000D1EC(&qword_10021FAB0, &qword_10021FAB8, &qword_1001B7D20, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA68);
  }

  return result;
}

uint64_t sub_10011CBBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011CC38()
{
  result = qword_10021FA90;
  if (!qword_10021FA90)
  {
    sub_10000B3DC(&qword_10021FA98, &qword_1001B7D10);
    sub_10011CCF0();
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FA90);
  }

  return result;
}

unint64_t sub_10011CCF0()
{
  result = qword_10021FAA0;
  if (!qword_10021FAA0)
  {
    sub_10000B3DC(&qword_10021FAA8, &qword_1001B7D18);
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAA0);
  }

  return result;
}

uint64_t sub_10011CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10011CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  return sub_10011743C(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6);
}

uint64_t sub_10011CF44(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011D010()
{
  result = qword_10021FAF0;
  if (!qword_10021FAF0)
  {
    sub_10000B3DC(&qword_10021F920, &qword_1001B7C10);
    sub_10011D094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAF0);
  }

  return result;
}

unint64_t sub_10011D094()
{
  result = qword_10021FAF8;
  if (!qword_10021FAF8)
  {
    sub_10000B3DC(&qword_100219C30, &qword_1001AECE0);
    sub_10011C16C(&qword_10021FB00, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FAF8);
  }

  return result;
}

unint64_t sub_10011D150()
{
  result = qword_10021FB08;
  if (!qword_10021FB08)
  {
    sub_10000B3DC(&qword_10021F940, &qword_1001B7C38);
    sub_10000D1EC(&qword_10021FB10, &qword_10021FAE0, &unk_1001B7DA8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB08);
  }

  return result;
}

unint64_t sub_10011D20C()
{
  result = qword_10021FB28;
  if (!qword_10021FB28)
  {
    sub_10000B3DC(&qword_10021FB20, &qword_1001B7DC8);
    sub_10011D298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB28);
  }

  return result;
}

unint64_t sub_10011D298()
{
  result = qword_10021FB30;
  if (!qword_10021FB30)
  {
    sub_10000B3DC(&qword_10021FB38, &qword_1001B7DD0);
    sub_10011D344(&qword_10021FB40, &qword_10021FB48, &qword_1001B7DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB30);
  }

  return result;
}

uint64_t sub_10011D344(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10011D3C0()
{
  result = qword_10021FB58;
  if (!qword_10021FB58)
  {
    sub_10000B3DC(&qword_10021FB18, &qword_1001B7DC0);
    sub_10000B3DC(&qword_10021FB60, &qword_1001B7DE8);
    sub_10011D4B8();
    swift_getOpaqueTypeConformance2();
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB58);
  }

  return result;
}

unint64_t sub_10011D4B8()
{
  result = qword_10021FB68;
  if (!qword_10021FB68)
  {
    sub_10000B3DC(&qword_10021FB60, &qword_1001B7DE8);
    sub_10011D570();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB68);
  }

  return result;
}

unint64_t sub_10011D570()
{
  result = qword_10021FB70;
  if (!qword_10021FB70)
  {
    sub_10000B3DC(&qword_10021FB78, &qword_1001B7DF0);
    sub_10011D344(&qword_10021AFF0, &qword_10021AFE8, &qword_1001B0A38);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB70);
  }

  return result;
}

unint64_t sub_10011D648()
{
  result = qword_10021FB80;
  if (!qword_10021FB80)
  {
    sub_10000B3DC(&qword_10021FB50, &qword_1001B7DE0);
    sub_10000D1EC(&qword_10021FB88, &qword_10021FB90, &qword_1001B7DF8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FB80);
  }

  return result;
}

unint64_t sub_10011D700()
{
  result = qword_10021FBA0;
  if (!qword_10021FBA0)
  {
    sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
    sub_10011D78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FBA0);
  }

  return result;
}

unint64_t sub_10011D78C()
{
  result = qword_10021FBA8;
  if (!qword_10021FBA8)
  {
    sub_10000B3DC(&qword_10021FBB0, &unk_1001B7E00);
    sub_10011D3C0();
    sub_10011D648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FBA8);
  }

  return result;
}

uint64_t sub_10011D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)));
  sub_10011C770(*v6, v6[1]);
  v7 = *(v5 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10011D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FilterView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100113CF4(a1, v9, v6, v7, a3);
}

uint64_t sub_10011DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v16 = *(*(v5 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = v4 + v6;
  sub_10011C770(*(v4 + v6), *(v4 + v6 + 8));
  v11 = *(v5 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DismissAction();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  (*(v8 + 8))(v4 + ((v6 + v16 + v9) & ~v9), AssociatedTypeWitness);

  return swift_deallocObject();
}

void sub_10011DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  sub_100114548(v4 + v8, v11, v5, v6);
}

uint64_t sub_10011DE04@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

__n128 sub_10011DE90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10011DF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011DFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011E05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10011E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10011E2F0(uint64_t a1)
{
  sub_10011E3DC(319, &qword_10021FC88, type metadata accessor for CompactDatePickerConfiguration, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10011E440();
    if (v2 <= 0x3F)
    {
      sub_10011E490(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10011E3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10011E440()
{
  if (!qword_10021FC90)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10021FC90);
    }
  }
}

void sub_10011E490(uint64_t a1)
{
  if (!qword_10021FC98)
  {
    type metadata accessor for Date();
    sub_10011C16C(&qword_10021F170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &qword_10021FC98);
    }
  }
}

uint64_t sub_10011E524(uint64_t *a1)
{
  type metadata accessor for NavigationPath();
  sub_10000B3DC(&qword_10021F920, &qword_1001B7C10);
  sub_10000B3DC(&qword_10021F928, &qword_1001B7C18);
  sub_10000B3DC(&qword_10021F930, &qword_1001B7C20);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021F938, &unk_1001B7C28);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F940, &qword_1001B7C38);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F948, &qword_1001B7C40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000B3DC(&qword_10021F950, &qword_1001B7C48);
  sub_10000B3DC(&qword_10021F958, &qword_1001B7C50);
  type metadata accessor for GlassProminentButtonStyle();
  sub_10011C1B4();
  sub_10011C16C(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration(255);
  swift_getOpaqueTypeConformance2();
  sub_10011C16C(&qword_10021F5D0, type metadata accessor for CompactDatePickerConfiguration, &unk_1001B76C0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9E0, &qword_1001B7CA8);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021F9E8, &qword_10021F9E0, &qword_1001B7CA8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021F9F0, &qword_1001B7CB0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021F9F8, &qword_1001B7CB8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021FA00, &qword_10021F9F0, &qword_1001B7CB0, &unk_1001B3380);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021FA08, &qword_10021F9F8, &qword_1001B7CB8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  return swift_getWitnessTable();
}

unint64_t sub_10011F00C(uint64_t a1)
{
  result = sub_10011C800();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10011F03C()
{
  result = qword_10021FD58;
  if (!qword_10021FD58)
  {
    sub_10000B3DC(&qword_10021FD50, &qword_1001B8118);
    sub_10011F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD58);
  }

  return result;
}

unint64_t sub_10011F0C8()
{
  result = qword_10021FD60;
  if (!qword_10021FD60)
  {
    sub_10000B3DC(&qword_10021FD68, &qword_1001B8120);
    sub_10000D1EC(&qword_10021FD70, &qword_10021FD78, &qword_1001B8128, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD60);
  }

  return result;
}

unint64_t sub_10011F180()
{
  result = qword_10021FD88;
  if (!qword_10021FD88)
  {
    sub_10000B3DC(&qword_10021FD20, &qword_1001B80E8);
    sub_10000D1EC(&qword_10021FD80, &qword_10021FD18, &qword_1001B80E0, &protocol conformance descriptor for DatePicker<A>);
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD88);
  }

  return result;
}

uint64_t sub_10011F268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011F2D0(uint64_t *a1)
{
  v3 = *(type metadata accessor for CompactDatePicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10011B6B8(a1, v4);
}

uint64_t sub_10011F364()
{
  v1 = (type metadata accessor for CompactDatePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = sub_100009F70(&qword_10021FC18, &unk_1001B7FD0);
  v4 = v2 + *(v3 + 32);

  v5 = type metadata accessor for CompactDatePickerConfiguration(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v2 + v1[7];

  v10 = v9 + *(v3 + 32);

  v8(v10 + *(v5 + 20), v7);
  v11 = v2 + v1[8];

  v12 = v11 + *(v3 + 32);

  v8(v12 + *(v5 + 20), v7);

  v13 = v2 + v1[10];
  v8(v13, v7);
  v14 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  v8(v13 + *(v14 + 36), v7);

  return swift_deallocObject();
}

double sub_10011F594()
{
  v1 = *(type metadata accessor for CompactDatePicker(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1001197F8(v3, v2);
}

unint64_t sub_10011F5FC()
{
  result = qword_10021FDD8;
  if (!qword_10021FDD8)
  {
    sub_10000B3DC(&qword_10021DB10, &qword_1001B4D90);
    sub_10011C16C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FDD8);
  }

  return result;
}

uint64_t sub_10011F6F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for CompactDatePickerConfiguration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10011F7B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CompactDatePickerConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10011F858(uint64_t a1)
{
  result = type metadata accessor for CompactDatePickerConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10011F920(uint64_t a1)
{
  result = sub_10011F948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10011F948()
{
  result = qword_10021FEA8;
  if (!qword_10021FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEA8);
  }

  return result;
}

unint64_t sub_10011F9BC()
{
  result = qword_10021FEE8;
  if (!qword_10021FEE8)
  {
    sub_10000B3DC(&qword_10021FEE0, &unk_1001B8300);
    sub_10011FA74();
    sub_10000D1EC(&qword_10021FF28, &qword_10021FF30, &qword_1001B8310, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEE8);
  }

  return result;
}

unint64_t sub_10011FA74()
{
  result = qword_10021FEF0;
  if (!qword_10021FEF0)
  {
    sub_10000B3DC(&qword_10021FED8, &qword_1001B82F8);
    sub_10011FB2C();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEF0);
  }

  return result;
}

unint64_t sub_10011FB2C()
{
  result = qword_10021FEF8;
  if (!qword_10021FEF8)
  {
    sub_10000B3DC(&qword_10021FED0, &qword_1001B82F0);
    sub_10011FBE4();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FEF8);
  }

  return result;
}

unint64_t sub_10011FBE4()
{
  result = qword_10021FF00;
  if (!qword_10021FF00)
  {
    sub_10000B3DC(&qword_10021FEC8, &qword_1001B82E8);
    sub_10011FC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF00);
  }

  return result;
}

unint64_t sub_10011FC70()
{
  result = qword_10021FF08;
  if (!qword_10021FF08)
  {
    sub_10000B3DC(&qword_10021FEC0, &qword_1001B82E0);
    sub_10011FCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF08);
  }

  return result;
}

unint64_t sub_10011FCFC()
{
  result = qword_10021FF10;
  if (!qword_10021FF10)
  {
    sub_10000B3DC(&qword_10021FEB8, &qword_1001B82D8);
    sub_10011FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF10);
  }

  return result;
}

unint64_t sub_10011FD88()
{
  result = qword_10021FF18;
  if (!qword_10021FF18)
  {
    sub_10000B3DC(&qword_10021FEB0, &qword_1001B82D0);
    sub_10011C16C(&qword_10021FF20, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_10000D1EC(&qword_100219128, &qword_100219130, &qword_1001ADD38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FF18);
  }

  return result;
}

uint64_t sub_10011FEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10011FF98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ShareButton(uint64_t a1)
{
  result = qword_10021FFB0;
  if (!qword_10021FFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10012009C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100018E0C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012013C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021FF38 = result;
  unk_10021FF40 = v1;
  byte_10021FF48 = v2 & 1;
  qword_10021FF50 = v3;
  return result;
}

uint64_t sub_100120184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021FFE8, &qword_1001B8378);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - v13;
  (*(v8 + 16))(v10, v3, v7);
  sub_100120450(v3, v6);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1001205A0(v6, v16 + v15);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  if (qword_100218420 != -1)
  {
    swift_once();
  }

  sub_100120678();
  View.accessibilityLabel(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100120450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001204B4()
{
  v1 = *(type metadata accessor for ShareButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1001205A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120604(char a1)
{
  result = type metadata accessor for ShareButton(0);
  if (a1)
  {
    return (*(v1 + *(result + 20) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

unint64_t sub_100120678()
{
  result = qword_10021FFF0;
  if (!qword_10021FFF0)
  {
    sub_10000B3DC(&qword_10021FFE8, &qword_1001B8378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FFF0);
  }

  return result;
}

unint64_t sub_1001206E0()
{
  result = qword_10021FFF8;
  if (!qword_10021FFF8)
  {
    sub_10000B3DC(&qword_100220000, &qword_1001B8380);
    sub_100120678();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FFF8);
  }

  return result;
}

uint64_t sub_1001207B4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1001208A0(void *a1)
{
  a1[1] = sub_100120C90(&qword_100220080, type metadata accessor for DesignTimeSong, &unk_1001B8444);
  a1[2] = sub_100120C90(&qword_100220088, type metadata accessor for DesignTimeSong, &unk_1001B83DC);
  result = sub_100120C90(&qword_100220090, type metadata accessor for DesignTimeSong, &unk_1001B83A4);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeSong(uint64_t a1)
{
  result = qword_100220108;
  if (!qword_100220108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012099C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemID.init(stringLiteral:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100120A24()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100120A98(uint64_t a1)
{
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();
}

Swift::Int sub_100120B00()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100120BA4()
{
  v0 = MusicItemID.init(stringLiteral:)();
  v2 = v1;
  if (v0 == MusicItemID.init(stringLiteral:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100120C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100120D08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009F70(qword_100218748, &unk_1001AD110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_100009F70(&qword_1002200A8, &qword_1001B84A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100120EAC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009F70(qword_100218748, &unk_1001AD110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_100009F70(&qword_1002200A8, &qword_1001B84A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_10012103C(uint64_t a1)
{
  sub_1001211EC(319, &qword_10021EBD0);
  if (v1 <= 0x3F)
  {
    sub_100121198(319, &qword_10021E980, type metadata accessor for DesignTimeImage);
    if (v2 <= 0x3F)
    {
      sub_100121198(319, &qword_100218E80, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_100121198(319, &qword_100220118, &type metadata accessor for PlayParameters);
        if (v4 <= 0x3F)
        {
          sub_1001211EC(319, &unk_100220120);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100121198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001211EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10012123C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100121298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001212F8()
{
  result = qword_100220170;
  if (!qword_100220170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220170);
  }

  return result;
}

uint64_t sub_100121358()
{
  v1 = v0[1];
  v2 = 0x4C746E6572727563;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7105633;
  }

  sub_1000E4108(*v0, v1);
  return v3;
}

uint64_t sub_1001213C8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

Swift::Int sub_100121428()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1001214A8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(2uLL);

  String.hash(into:)();
}

Swift::Int sub_100121530()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001215AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100121600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10012165C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100121690()
{
  result = qword_100220178;
  if (!qword_100220178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220178);
  }

  return result;
}

uint64_t sub_1001216F4(uint64_t a1)
{
  *(a1 + 8) = sub_10012175C(&qword_10021BA08, &protocol conformance descriptor for Music.Genre);
  result = sub_10012175C(qword_100220180, &protocol conformance descriptor for Music.Genre);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012175C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music.Genre();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001217A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v9 = type metadata accessor for FeaturedVideosView(0, *(v7 + 80), *(v7 + 88), v8);
  v10 = v9[9];
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  sub_1001219F0(a3);
  v12 = (a4 + v9[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10012719C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  *v12 = EnvironmentObject.init()();
  v12[1] = v13;
  v14 = v9[12];
  *(a4 + v14) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  swift_storeEnumTagMultiPayload();
  v15 = v9[13];
  *(a4 + v15) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001219B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1001219F0(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_100121AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    if (v5 <= 0x3F)
    {
      type metadata accessor for State();
      if (v6 <= 0x3F)
      {
        sub_10000B304(319);
        if (v7 <= 0x3F)
        {
          sub_100022910(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100121C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_8:

    return v10(v11, a2, v9);
  }

  type metadata accessor for Optional();
  v12 = type metadata accessor for Binding();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = *(a3 + 36);
LABEL_7:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_8;
  }

  v15 = type metadata accessor for State();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = *(a3 + 40);
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + *(a3 + 44));
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + *(a3 + 48);

    return v20(v21, a2, v19);
  }
}

uint64_t sub_100121E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for FeaturedVideosViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 36);
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for State();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = *(a4 + 40);
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 44)) = a2;
  }

  else
  {
    v17 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 48);

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void *sub_10012205C()
{
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t sub_1001220AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for TaskPriority();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v64 = *(a1 - 8);
  v66 = *(v64 + 64);
  __chkstk_darwin(v4);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000B3DC(&qword_10021A618, &unk_1001AFD40);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v9 = *(a1 + 24);
  v60 = v9;
  type metadata accessor for FeaturedVideoPlayer(255, v7, v9, v10);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v79 = v11;
  v80 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v14 = swift_getWitnessTable();
  v15 = *(v9 + 8);
  v79 = v8;
  v80 = v7;
  v81 = v13;
  v82 = v14;
  v83 = v15;
  type metadata accessor for ForEach();
  v79 = v11;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v17 = swift_getWitnessTable();
  v79 = v16;
  v80 = v17;
  swift_getOpaqueTypeMetadata2();
  v79 = v16;
  v80 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for ScrollView();
  v19 = swift_getWitnessTable();
  v79 = v18;
  v80 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = v18;
  v80 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v79 = OpaqueTypeMetadata2;
  v80 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeMetadata2();
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v26 = swift_getOpaqueTypeConformance2();
  v79 = v25;
  v80 = v7;
  v81 = v26;
  v82 = v15;
  swift_getOpaqueTypeMetadata2();
  v27 = type metadata accessor for ModifiedContent();
  v28 = type metadata accessor for Optional();
  v79 = v25;
  v80 = v7;
  v53 = v7;
  v81 = v26;
  v82 = v15;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _FlexFrameLayout;
  v29 = swift_getWitnessTable();
  v74 = v15[1];
  v30 = swift_getWitnessTable();
  v79 = v27;
  v80 = v28;
  v81 = v29;
  v82 = v30;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v31 = type metadata accessor for VStack();
  v61 = *(v31 - 8);
  __chkstk_darwin(v31);
  v55 = &v53 - v32;
  v56 = swift_getWitnessTable();
  v79 = v31;
  v80 = v56;
  v58 = &unk_1001C2954;
  v33 = swift_getOpaqueTypeMetadata2();
  v59 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v57 = &v53 - v37;
  static HorizontalAlignment.leading.getter();
  v38 = v60;
  v71 = v7;
  v72 = v60;
  v39 = v65;
  v73 = v65;
  VStack.init(alignment:spacing:content:)();
  v54 = "ICE_ACCESSIBILITY_SHARE";
  v40 = v64;
  v41 = v63;
  v42 = v62;
  (*(v64 + 16))(v63, v39, v62);
  type metadata accessor for MainActor();
  v43 = static MainActor.shared.getter();
  v44 = v40;
  v45 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = v43;
  *(v46 + 3) = &protocol witness table for MainActor;
  *(v46 + 4) = v53;
  *(v46 + 5) = v38;
  (*(v44 + 32))(&v46[v45], v41, v42);
  v47 = v67;
  v48 = v56;
  j___sScP13userInitiatedScPvgZ();
  v49 = v55;
  sub_100009FB8(0, v47, 0xD000000000000028, (v54 | 0x8000000000000000), 91, &unk_1001B8770, v46, v36, v31, v48);
  (*(v68 + 8))(v47, v69);
  (*(v61 + 8))(v49, v31);
  v79 = v31;
  v80 = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_100157EFC();
  v51 = *(v59 + 8);
  v51(v36, v33);
  sub_100157EFC();
  return (v51)(v50, v33);
}

uint64_t sub_100122A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v178 = a1;
  v168 = a5;
  v5 = a2;
  v177 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  v166 = *(v177 - 8);
  v175 = *(v166 + 64);
  __chkstk_darwin(v177);
  v174 = &v121 - v7;
  v8 = type metadata accessor for Optional();
  v167 = *(v8 - 8);
  __chkstk_darwin(v8);
  v165 = &v121 - v9;
  v10 = type metadata accessor for Binding();
  v163 = *(v10 - 8);
  v164 = v10;
  __chkstk_darwin(v10);
  v162 = &v121 - v11;
  v12 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v12 - 8);
  v160 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v161 = *(v14 - 8);
  __chkstk_darwin(v14);
  v159 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContentMarginPlacement();
  v157 = *(v16 - 8);
  v158 = v16;
  __chkstk_darwin(v16);
  v156 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Array();
  v19 = a3;
  v176 = a3;
  type metadata accessor for FeaturedVideoPlayer(255, v5, a3, v20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  *&v202 = v21;
  *(&v202 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for Optional();
  v24 = swift_getWitnessTable();
  v25 = *(v19 + 8);
  *&v202 = v18;
  *(&v202 + 1) = v5;
  *&v203 = v23;
  *(&v203 + 1) = v24;
  *&v204 = v25;
  v26 = v25;
  type metadata accessor for ForEach();
  *&v202 = v21;
  *(&v202 + 1) = WitnessTable;
  v193[9] = swift_getOpaqueTypeConformance2();
  v193[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v27 = type metadata accessor for LazyHStack();
  v28 = swift_getWitnessTable();
  *&v202 = v27;
  *(&v202 + 1) = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v202 = v27;
  *(&v202 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for ScrollView();
  v153 = *(v29 - 8);
  __chkstk_darwin(v29);
  v140 = &v121 - v30;
  v31 = swift_getWitnessTable();
  *&v202 = v29;
  *(&v202 + 1) = v31;
  v137 = v29;
  v138 = v31;
  v32 = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v152 = *(v33 - 8);
  __chkstk_darwin(v33);
  v139 = &v121 - v34;
  *&v202 = v29;
  *(&v202 + 1) = v32;
  v35 = swift_getOpaqueTypeConformance2();
  *&v202 = v33;
  *(&v202 + 1) = v35;
  v36 = v33;
  v130 = v35;
  v131 = v33;
  v37 = v35;
  v38 = swift_getOpaqueTypeMetadata2();
  v147 = *(v38 - 8);
  __chkstk_darwin(v38);
  v132 = &v121 - v39;
  *&v202 = v36;
  *(&v202 + 1) = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v202 = v38;
  *(&v202 + 1) = v14;
  v41 = v38;
  v127 = v14;
  v128 = v38;
  *&v203 = v40;
  *(&v203 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v42 = v40;
  v129 = v40;
  v43 = swift_getOpaqueTypeMetadata2();
  v144 = *(v43 - 8);
  __chkstk_darwin(v43);
  v126 = &v121 - v44;
  *&v202 = v41;
  *(&v202 + 1) = v14;
  *&v203 = v42;
  *(&v203 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  *&v202 = v43;
  *(&v202 + 1) = v5;
  v46 = v43;
  v122 = v43;
  v123 = v45;
  v169 = v5;
  *&v203 = v45;
  *(&v203 + 1) = v26;
  v47 = v45;
  v133 = swift_getOpaqueTypeMetadata2();
  v142 = *(v133 - 8);
  __chkstk_darwin(v133);
  v125 = &v121 - v48;
  v49 = type metadata accessor for ModifiedContent();
  v154 = *(v49 - 8);
  __chkstk_darwin(v49);
  v173 = &v121 - v50;
  *&v202 = v46;
  *(&v202 + 1) = v5;
  *&v203 = v47;
  *(&v203 + 1) = v26;
  v121 = v26;
  v124 = swift_getOpaqueTypeConformance2();
  v193[6] = v124;
  v193[7] = &protocol witness table for _FlexFrameLayout;
  v155 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v134 = v49;
  v51 = swift_getWitnessTable();
  v170 = v51;
  v193[5] = *(v26 + 8);
  v135 = v8;
  v172 = swift_getWitnessTable();
  *&v202 = v49;
  *(&v202 + 1) = v8;
  *&v203 = v51;
  *(&v203 + 1) = v172;
  v145 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v141 = swift_getOpaqueTypeMetadata2();
  v150 = *(v141 - 8);
  __chkstk_darwin(v141);
  v171 = &v121 - v52;
  v146 = type metadata accessor for ModifiedContent();
  v151 = *(v146 - 8);
  v53 = __chkstk_darwin(v146);
  v136 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v143 = &v121 - v55;
  sub_1001219B0(v177, v56, v57, v58);
  sub_1000A6830();

  v59 = Text.init(_:tableName:bundle:comment:)();
  v61 = v60;
  LOBYTE(v8) = v62;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v63 = Text.font(_:)();
  v65 = v64;
  LOBYTE(v5) = v66;
  v68 = v67;

  sub_10000D60C(v59, v61, v8 & 1);

  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();
  LOBYTE(v202) = v5 & 1;
  LOBYTE(v194) = 0;
  LOBYTE(v8) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v193[0]) = 0;
  *&v194 = v63;
  *(&v194 + 1) = v65;
  LOBYTE(v195) = v5 & 1;
  *(&v195 + 1) = v68;
  *&v196 = KeyPath;
  *(&v196 + 1) = 2;
  LOBYTE(v197) = 0;
  *(&v197 + 1) = v70;
  LOBYTE(v198) = 0;
  *(&v198 + 1) = v202;
  DWORD1(v198) = *(&v202 + 3);
  BYTE8(v198) = v8;
  HIDWORD(v198) = *(&v185 + 3);
  *(&v198 + 9) = v185;
  *&v199 = v71;
  *(&v199 + 1) = v72;
  *&v200 = v73;
  *(&v200 + 1) = v74;
  v201 = 0;
  static Axis.Set.horizontal.getter();
  v75 = v169;
  v179 = v169;
  v180 = v176;
  v76 = v178;
  v181 = v178;
  v77 = v140;
  ScrollView.init(_:showsIndicators:content:)();
  v78 = v177;
  sub_1001219B0(v177, v79, v80, v81);
  sub_1000A68F0();

  v82 = v139;
  v83 = v137;
  View.scrollDisabled(_:)();
  (*(v153 + 8))(v77, v83);
  static Edge.Set.horizontal.getter();
  v84 = v156;
  v85 = v131;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ(v131, v130);
  v86 = v132;
  View.contentMargins(_:_:for:)();
  (*(v157 + 8))(v84, v158);
  (*(v152 + 8))(v82, v85);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v87 = v159;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v89 = v126;
  v88 = v127;
  v90 = v128;
  View.scrollTargetBehavior<A>(_:)();
  (*(v161 + 8))(v87, v88);
  (*(v147 + 8))(v86, v90);
  v91 = v162;
  v92 = v78;
  sub_1000F876C(v78, &Binding.projectedValue.getter);
  v93 = v125;
  v94 = v122;
  View.scrollPosition<A>(id:anchor:)();
  (*(v163 + 8))(v91, v164);
  (*(v144 + 8))(v89, v94);
  static Alignment.center.getter();
  v95 = v133;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v142 + 8))(v93, v95);
  v96 = v165;
  sub_1000F876C(v92, &Binding.wrappedValue.getter);
  v97 = v166;
  v164 = *(v166 + 16);
  v98 = v174;
  v164(v174, v76, v92);
  v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v100 = swift_allocObject();
  v101 = v176;
  *(v100 + 16) = v75;
  *(v100 + 24) = v101;
  v166 = *(v97 + 32);
  (v166)(v100 + v99, v98, v92);
  v103 = v134;
  v102 = v135;
  v104 = v173;
  View.onChange<A>(of:initial:_:)();

  (*(v167 + 8))(v96, v102);
  v105 = v104;
  v106 = v103;
  (*(v154 + 8))(v105, v103);
  v107 = v174;
  v108 = v177;
  v164(v174, v178, v177);
  v109 = swift_allocObject();
  v110 = v176;
  *(v109 + 16) = v169;
  *(v109 + 24) = v110;
  (v166)(v109 + v99, v107, v108);
  *&v202 = v106;
  *(&v202 + 1) = v102;
  *&v203 = v170;
  *(&v203 + 1) = v172;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v136;
  v113 = v141;
  v114 = v171;
  View.onAppear(perform:)();

  (*(v150 + 8))(v114, v113);
  v193[2] = v111;
  v193[3] = &protocol witness table for _AppearanceActionModifier;
  v115 = v146;
  v116 = swift_getWitnessTable();
  v117 = v143;
  sub_100157EFC();
  v118 = v151;
  v119 = *(v151 + 8);
  v119(v112, v115);
  v189 = v198;
  v190 = v199;
  v191 = v200;
  v192 = v201;
  v185 = v194;
  v186 = v195;
  v187 = v196;
  v188 = v197;
  v193[0] = &v185;
  (*(v118 + 16))(v112, v117, v115);
  v193[1] = v112;
  sub_10000D58C(&v194, &v202, &qword_10021A618, &unk_1001AFD40);
  v184[0] = sub_100009F70(&qword_10021A618, &unk_1001AFD40);
  v184[1] = v115;
  v182 = sub_10004DBE4();
  v183 = v116;
  sub_100151024(v193, 2uLL, v184);
  sub_10000D52C(&v194, &qword_10021A618, &unk_1001AFD40);
  v119(v117, v115);
  v119(v112, v115);
  v206 = v189;
  v207 = v190;
  v208 = v191;
  v209 = v192;
  v202 = v185;
  v203 = v186;
  v204 = v187;
  v205 = v188;
  return sub_10000D52C(&v202, &qword_10021A618, &unk_1001AFD40);
}

uint64_t sub_100123D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v9 = a3;
  v34 = a3;
  type metadata accessor for FeaturedVideoPlayer(255, a2, a3, v10);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v43 = v11;
  v44 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v14 = swift_getWitnessTable();
  v15 = *(v9 + 8);
  v43 = v8;
  v44 = a2;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  type metadata accessor for ForEach();
  v43 = v11;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v33 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = swift_getWitnessTable();
  v43 = v16;
  v44 = v19;
  v31 = v19;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = __chkstk_darwin(OpaqueTypeMetadata2);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v30 - v25;
  v38 = a2;
  v39 = v34;
  v40 = v36;
  static VerticalAlignment.center.getter();
  sub_10012605C();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v27 = v31;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v18, v16);
  v43 = v16;
  v44 = v27;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v28 = *(v21 + 8);
  v28(v24, OpaqueTypeMetadata2);
  sub_100157EFC();
  return (v28)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_100124240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a5;
  v8 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v45 = *(v9 + 64);
  __chkstk_darwin(v8);
  v44 = v37 - v10;
  v11 = type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer(255, a2, a3, v12);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v39 = v13;
  WitnessTable = swift_getWitnessTable();
  v52 = v13;
  v53 = WitnessTable;
  v37[2] = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v38 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for Optional();
  v37[1] = v15;
  v42 = v11;
  v16 = swift_getWitnessTable();
  v40 = *(a3 + 8);
  v41 = v16;
  v52 = v11;
  v53 = a2;
  v54 = v15;
  v55 = v16;
  v56 = v40;
  v17 = type metadata accessor for ForEach();
  v43 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v37 - v21;
  v23 = v8;
  sub_1001219B0(v8, v24, v25, v26);
  v27 = sub_1000A6D08();

  v51 = v27;
  v47 = a2;
  v48 = a3;
  v37[0] = swift_getKeyPath();
  v28 = v9;
  v29 = *(v9 + 16);
  v30 = v44;
  v29(v44, a1, v23);
  v31 = v28;
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  (*(v31 + 32))(v33 + v32, v30, v23);
  v52 = v39;
  v53 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v49 = v36;
  swift_getWitnessTable();
  sub_100157EFC();
  v34 = *(v43 + 8);
  v34(v20, v17);
  sub_100157EFC();
  return (v34)(v22, v17);
}

uint64_t sub_1001246D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a1;
  v143 = a3;
  v138 = a2;
  v141 = a5;
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin(v7);
  v119 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100009F70(&qword_100219658, &qword_1001AFE60);
  v9 = __chkstk_darwin(v133);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v109 - v11;
  v12 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  v13 = __chkstk_darwin(v12 - 8);
  v118 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v123 = &v109 - v16;
  v17 = __chkstk_darwin(v15);
  v120 = &v109 - v18;
  v19 = __chkstk_darwin(v17);
  v122 = &v109 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = &v109 - v22;
  __chkstk_darwin(v21);
  v136 = &v109 - v23;
  type metadata accessor for FeaturedVideoPlayer(255, a3, a4, v24);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  v25 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v125 = v25;
  v124 = WitnessTable;
  v27 = type metadata accessor for VStack();
  v129 = *(v27 - 8);
  __chkstk_darwin(v27);
  v137 = &v109 - v28;
  v29 = swift_getWitnessTable();
  v147 = v27;
  v148 = v29;
  v140 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  v31 = __chkstk_darwin(OpaqueTypeMetadata2);
  v128 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v134 = &v109 - v34;
  __chkstk_darwin(v33);
  v130 = &v109 - v35;
  v36 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v36 - 8);
  v38 = &v109 - v37;
  v39 = type metadata accessor for URL();
  v144 = *(v39 - 8);
  v145 = v39;
  __chkstk_darwin(v39);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Optional();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v109 - v47;
  v49 = *(a4 + 48);
  v126 = a4;
  v49(v143);
  v112 = v46;
  v114 = v43;
  v117 = OpaqueTypeMetadata2;
  v113 = v48;
  v116 = v27;
  v115 = v42;
  v50 = v144;
  v51 = v145;
  (*(v144 + 56))(v38, 0, 1, v145);
  (*(v50 + 32))(v41, v38, v51);
  v52 = static HorizontalAlignment.leading.getter();
  __chkstk_darwin(v52);
  v53 = v143;
  v54 = v126;
  *(&v109 - 6) = v143;
  *(&v109 - 5) = v54;
  *(&v109 - 4) = v142;
  *(&v109 - 3) = v41;
  v142 = v41;
  *(&v109 - 2) = v138;
  VStack.init(alignment:spacing:content:)();
  LODWORD(v125) = static Axis.Set.horizontal.getter();
  v143 = type metadata accessor for FeaturedVideosView(0, v53, v54, v55);
  v56 = v136;
  sub_100023FFC(v136);
  v57 = v131;
  v58 = v132;
  v59 = v135;
  v111 = *(v131 + 104);
  v111(v135, enum case for UserInterfaceSizeClass.regular(_:), v132);
  v60 = *(v57 + 56);
  v124 = v57 + 56;
  v110 = v60;
  v60(v59, 0, 1, v58);
  v61 = *(v133 + 48);
  v62 = v127;
  sub_10000D58C(v56, v127, &qword_100219278, qword_1001AFC50);
  sub_10000D58C(v59, v62 + v61, &qword_100219278, qword_1001AFC50);
  v63 = *(v57 + 48);
  v64 = v63(v62, 1, v58);
  v126 = v63;
  if (v64 == 1)
  {
    sub_10000D52C(v135, &qword_100219278, qword_1001AFC50);
    sub_10000D52C(v136, &qword_100219278, qword_1001AFC50);
    v65 = v62;
    v66 = v62 + v61;
    v67 = v58;
    v68 = v63(v66, 1, v58);
    v69 = v134;
    if (v68 == 1)
    {
      v70 = v117;
LABEL_9:
      v80 = v130;
      sub_10000D52C(v65, &qword_100219278, qword_1001AFC50);
LABEL_16:
      sub_1001219B0(v143, v81, v82, v83);
      sub_1000A688C();

      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v71 = v122;
  sub_10000D58C(v62, v122, &qword_100219278, qword_1001AFC50);
  v72 = v63(v62 + v61, 1, v58);
  v69 = v134;
  if (v72 == 1)
  {
    v65 = v62;
    sub_10000D52C(v135, &qword_100219278, qword_1001AFC50);
    sub_10000D52C(v136, &qword_100219278, qword_1001AFC50);
    v67 = v132;
    (*(v57 + 8))(v71);
LABEL_6:
    sub_10000D52C(v65, &qword_100219658, &qword_1001AFE60);
    goto LABEL_7;
  }

  v85 = v62 + v61;
  v86 = v119;
  v87 = v132;
  (*(v57 + 32))(v119, v85, v132);
  sub_10012719C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  v89 = *(v57 + 8);
  v89(v86, v87);
  sub_10000D52C(v135, &qword_100219278, qword_1001AFC50);
  sub_10000D52C(v136, &qword_100219278, qword_1001AFC50);
  v90 = v62;
  v67 = v87;
  v89(v122, v87);
  sub_10000D52C(v90, &qword_100219278, qword_1001AFC50);
  v70 = v117;
  v80 = v130;
  if (v88)
  {
    goto LABEL_16;
  }

LABEL_7:
  v73 = v120;
  sub_100023FFC(v120);
  v74 = v123;
  v111(v123, enum case for UserInterfaceSizeClass.compact(_:), v67);
  v75 = v67;
  v110(v74, 0, 1, v67);
  v76 = *(v133 + 48);
  v65 = v121;
  sub_10000D58C(v73, v121, &qword_100219278, qword_1001AFC50);
  sub_10000D58C(v74, v65 + v76, &qword_100219278, qword_1001AFC50);
  v77 = v67;
  v78 = v126;
  if (v126(v65, 1, v77) == 1)
  {
    sub_10000D52C(v74, &qword_100219278, qword_1001AFC50);
    sub_10000D52C(v73, &qword_100219278, qword_1001AFC50);
    v79 = v78(v65 + v76, 1, v75);
    v70 = v117;
    v69 = v134;
    if (v79 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v84 = v118;
  sub_10000D58C(v65, v118, &qword_100219278, qword_1001AFC50);
  if (v78(v65 + v76, 1, v75) == 1)
  {
    sub_10000D52C(v123, &qword_100219278, qword_1001AFC50);
    sub_10000D52C(v73, &qword_100219278, qword_1001AFC50);
    (*(v131 + 8))(v84, v75);
    v70 = v117;
    v69 = v134;
LABEL_12:
    sub_10000D52C(v65, &qword_100219658, &qword_1001AFE60);
    v80 = v130;
    goto LABEL_17;
  }

  v91 = v131;
  v92 = v73;
  v93 = v119;
  (*(v131 + 32))(v119, v65 + v76, v75);
  sub_10012719C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v95 = *(v91 + 8);
  v95(v93, v75);
  sub_10000D52C(v123, &qword_100219278, qword_1001AFC50);
  sub_10000D52C(v92, &qword_100219278, qword_1001AFC50);
  v95(v84, v75);
  sub_10000D52C(v65, &qword_100219278, qword_1001AFC50);
  v70 = v117;
  v80 = v130;
  v69 = v134;
  if (v94)
  {
    goto LABEL_16;
  }

LABEL_17:
  static Alignment.center.getter();
  v96 = v116;
  v97 = v140;
  v98 = v137;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v129 + 8))(v98, v96);
  v147 = v96;
  v148 = v97;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v99 = v69;
  v100 = v80;
  v101 = v139;
  v102 = *(v139 + 8);
  v102(v99, v70);
  v103 = v128;
  sub_100157EFC();
  v102(v100, v70);
  v104 = v112;
  (*(v101 + 32))(v112, v103, v70);
  (*(v101 + 56))(v104, 0, 1, v70);
  v105 = v113;
  sub_100150FB8(v104, v113);
  v106 = *(v114 + 8);
  v107 = v115;
  v106(v104, v115);
  (*(v144 + 8))(v142, v145);
  v147 = v96;
  v148 = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100157EFC();
  return (v106)(v105, v107);
}

uint64_t sub_100125764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a3;
  v76 = a2;
  v85 = a1;
  v81 = a6;
  v79 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v79);
  v80 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  __chkstk_darwin(v9 - 8);
  v73 = &v70 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v18;
  v19 = a5;
  v21 = type metadata accessor for FeaturedVideoPlayer(0, a4, a5, v20);
  v74 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v70 - v24;
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  v83 = type metadata accessor for ModifiedContent();
  v86 = *(v83 - 8);
  v25 = __chkstk_darwin(v83);
  v82 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v70 - v27;
  (*(v16 + 16))(v18, v85, a4);
  v28 = v15;
  (*(v12 + 16))(v15, v76, v11);
  v29 = a4;
  v30 = a4;
  v31 = v19;
  v33 = type metadata accessor for FeaturedVideosView(0, v29, v19, v32);
  sub_1001219B0(v33, v34, v35, v36);
  LOBYTE(v16) = sub_1000A6678();

  v37 = v73;
  sub_10012205C();
  v38 = v16 & 1;
  v39 = v30;
  sub_10010A144(v71, v28, v38, v37, v30, v19, v23);
  WitnessTable = swift_getWitnessTable();
  v41 = v72;
  View.aspectRatio(_:contentMode:)();
  (*(v74 + 8))(v23, v21);
  if (static Solarium.isEnabled.getter())
  {
    v42 = 16.0;
  }

  else
  {
    v42 = 8.0;
  }

  v43 = *(v79 + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = v80;
  (*(*(v45 - 8) + 104))(v80 + v43, v44, v45);
  *v46 = v42;
  v46[1] = v42;
  v47 = v46;
  v97[5] = WitnessTable;
  v97[6] = &protocol witness table for _AspectRatioLayout;
  v48 = v75;
  v49 = swift_getWitnessTable();
  sub_10012719C(&qword_10021EBE0, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v50 = v82;
  View.clipShape<A>(_:style:)();
  sub_1000A3C3C(v47);
  (*(v78 + 8))(v41, v48);
  v51 = sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
  v97[3] = v49;
  v97[4] = v51;
  v52 = v83;
  v79 = swift_getWitnessTable();
  sub_100157EFC();
  v80 = *(v86 + 8);
  (v80)(v50, v52);
  v90 = (*(v31 + 56))(v39, v31);
  v91 = v53;
  sub_100027068();
  v54 = Text.init<A>(_:)();
  v56 = v55;
  LOBYTE(v50) = v57;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  LOBYTE(v52) = v61;
  v63 = v62;

  sub_10000D60C(v54, v56, v50 & 1);

  KeyPath = swift_getKeyPath();
  v65 = v82;
  v66 = v84;
  v67 = v83;
  (*(v86 + 16))(v82, v84, v83);
  v90 = v58;
  v91 = v60;
  LOBYTE(v52) = v52 & 1;
  v92 = v52;
  v93 = v63;
  v94 = KeyPath;
  v95 = 1;
  v96 = 0;
  v97[0] = v65;
  v97[1] = &v90;
  sub_10000D5FC(v58, v60, v52);

  v89[0] = v67;
  v89[1] = sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  v87 = v79;
  v88 = sub_10002764C();
  sub_100151024(v97, 2uLL, v89);
  sub_10000D60C(v58, v60, v52);

  v68 = v80;
  (v80)(v66, v67);
  sub_10000D60C(v90, v91, v92);

  return (v68)(v65, v67);
}

uint64_t sub_10012605C()
{
  type metadata accessor for PinnedScrollableViews();
  sub_10012719C(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

void sub_1001260DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeaturedVideosView(0, a2, a3, a4);
  sub_1001219B0(v5, v6, v7, v8);
  v9 = [objc_opt_self() defaultCenter];
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_1002305F0 object:0 userInfo:0];

  sub_1001219B0(v5, v10, v11, v12);
  if (*(a1 + *(v5 + 44)))
  {

    sub_1000A69C4(v13);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10012719C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10012623C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v18 = type metadata accessor for FeaturedVideosView(0, a2, a3, v17);
  v32 = a1;
  sub_1000F876C(v18, &Binding.wrappedValue.getter);
  v19 = *(v6 + 48);
  LODWORD(a3) = v19(v16, 1, a2);
  v31 = *(v9 + 8);
  result = v31(v16, v8);
  if (a3 == 1)
  {
    v28 = v6;
    sub_1001219B0(v18, v21, v22, v23);
    v24 = sub_1000A6D08();

    v33 = v24;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v19(v14, 1, a2) == 1)
    {
      v31(v14, v8);
    }

    else
    {
      v25 = v28;
      v26 = v30;
      (*(v28 + 32))(v30, v14, a2);

      v27 = v29;
      (*(v25 + 16))(v29, v26, a2);
      (*(v25 + 56))(v27, 0, 1, a2);
      sub_100126C60(v27);
      v31(v27, v8);
      return (*(v25 + 8))(v26, a2);
    }
  }

  return result;
}

uint64_t sub_1001265A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012663C, v7, v6);
}

uint64_t sub_10012663C()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for FeaturedVideosView(0, v2, v1, v3);
  sub_1001219B0(v4, v5, v6, v7);
  sub_10004FF88();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001266DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for FeaturedVideosView(0, v5, v6, a4);
  v23 = *(*(v7 - 1) + 80);
  swift_unknownObjectRelease();
  v8 = v4 + ((v23 + 48) & ~v23);
  type metadata accessor for FeaturedVideosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = v8 + v7[9];

  type metadata accessor for Optional();
  v12 = *(type metadata accessor for Binding() + 32);
  v13 = *(v5 - 8);
  v14 = *(v13 + 48);
  if (!v14(v11 + v12, 1, v5))
  {
    (*(v13 + 8))(v11 + v12, v5);
  }

  v15 = v8 + v7[10];
  if (!v14(v15, 1, v5))
  {
    (*(v13 + 8))(v15, v5);
  }

  type metadata accessor for State();

  v16 = v7[12];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v8 + v16, 1, v17))
    {
      (*(v18 + 8))(v8 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v7[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100126A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for FeaturedVideosView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000D890;

  return sub_1001265A0(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_100126BC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FeaturedVideosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_100126C60(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100126D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for FeaturedVideosView(0, v5, v6, a4);
  v23 = *(*(v7 - 1) + 80);
  v8 = v4 + ((v23 + 32) & ~v23);
  type metadata accessor for FeaturedVideosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = v8 + v7[9];

  type metadata accessor for Optional();
  v12 = *(type metadata accessor for Binding() + 32);
  v13 = *(v5 - 8);
  v14 = *(v13 + 48);
  if (!v14(v11 + v12, 1, v5))
  {
    (*(v13 + 8))(v11 + v12, v5);
  }

  v15 = v8 + v7[10];
  if (!v14(v15, 1, v5))
  {
    (*(v13 + 8))(v15, v5);
  }

  type metadata accessor for State();

  v16 = v7[12];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v8 + v16, 1, v17))
    {
      (*(v18 + 8))(v8 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v7[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for UserInterfaceSizeClass();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001270F0@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FeaturedVideosView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1001246D4(a1, v9, v6, v7, a3);
}

uint64_t sub_10012719C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001271E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000B3DC(&qword_10021A618, &unk_1001AFD40);
  type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer(255, v1, v2, v3);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0, &unk_1001AE860);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100127738(uint64_t a1)
{
  *(a1 + 8) = sub_1001277A0(&qword_100220208, &protocol conformance descriptor for Playlist);
  result = sub_1001277A0(&qword_100220210, &protocol conformance descriptor for Playlist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001277A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001277F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100127878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ArtistEventRow(uint64_t a1)
{
  result = qword_100220270;
  if (!qword_100220270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100127934(uint64_t a1)
{
  result = type metadata accessor for ArtistEventRowViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001279BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100009F70(&qword_1002202C8, &qword_1001B88B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100009F70(&qword_1002202D0, &qword_1001B88B8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100009F70(&qword_1002202D8, &qword_1001B88C0);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v23 = *(type metadata accessor for ArtistEventRowViewModel(0) + 24);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v22, a1 + v23, v24);
  v25 = *(type metadata accessor for CalendarIcon(0) + 20);
  *&v22[v25] = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v22[*(v17 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v26 = sub_100009F70(&qword_1002202E0, &qword_1001B88F8);
  sub_100127D90(a1, &v5[*(v26 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v13, &qword_1002202C8, &qword_1001B88B0);
  v27 = &v13[*(v7 + 44)];
  v28 = v41;
  *(v27 + 4) = v40;
  *(v27 + 5) = v28;
  *(v27 + 6) = v42;
  v29 = v37;
  *v27 = v36;
  *(v27 + 1) = v29;
  v30 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = v30;
  sub_10000F618(v13, v15, &qword_1002202D0, &qword_1001B88B8);
  sub_10000D58C(v22, v20, &qword_1002202D8, &qword_1001B88C0);
  sub_10000D58C(v15, v10, &qword_1002202D0, &qword_1001B88B8);
  v31 = v35;
  sub_10000D58C(v20, v35, &qword_1002202D8, &qword_1001B88C0);
  v32 = sub_100009F70(&qword_1002202E8, &qword_1001B8900);
  sub_10000D58C(v10, v31 + *(v32 + 48), &qword_1002202D0, &qword_1001B88B8);
  sub_10000D52C(v15, &qword_1002202D0, &qword_1001B88B8);
  sub_10000D52C(v22, &qword_1002202D8, &qword_1001B88C0);
  sub_10000D52C(v10, &qword_1002202D0, &qword_1001B88B8);
  return sub_10000D52C(v20, &qword_1002202D8, &qword_1001B88C0);
}

uint64_t sub_100127D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  v4 = __chkstk_darwin(v3 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v48 - v6;
  v7 = sub_100009F70(&qword_1002202F0, &qword_1001B8908);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = a1[1];
  v53 = *a1;
  v54 = v13;
  v48 = sub_100027068();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v53 = v14;
  v54 = v16;
  v55 = v13 & 1;
  v56 = v19;
  v57 = KeyPath;
  v58 = 1;
  v59 = 0;
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v14, v16, v13 & 1);

  v21 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v22 = &v12[*(v8 + 44)];
  *v22 = v21;
  v22[1] = sub_100128200;
  v22[2] = 0;
  v23 = a1[3];
  v53 = a1[2];
  v54 = v23;

  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v19) = v27;
  static Font.subheadline.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  sub_10000D60C(v24, v26, v19 & 1);

  v33 = [objc_opt_self() secondaryLabelColor];
  v53 = Color.init(uiColor:)();
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000D60C(v28, v30, v32 & 1);

  v53 = v34;
  v54 = v36;
  v55 = v38 & 1;
  v56 = v40;
  v41 = v50;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v34, v36, v38 & 1);

  v42 = v49;
  sub_10000D58C(v12, v49, &qword_1002202F0, &qword_1001B8908);
  v43 = v41;
  v44 = v51;
  sub_10000D58C(v41, v51, &qword_10021DB10, &qword_1001B4D90);
  v45 = v52;
  sub_10000D58C(v42, v52, &qword_1002202F0, &qword_1001B8908);
  v46 = sub_100009F70(&qword_1002202F8, &qword_1001B8940);
  sub_10000D58C(v44, v45 + *(v46 + 48), &qword_10021DB10, &qword_1001B4D90);
  sub_10000D52C(v43, &qword_10021DB10, &qword_1001B4D90);
  sub_10000D52C(v12, &qword_1002202F0, &qword_1001B8908);
  sub_10000D52C(v44, &qword_10021DB10, &qword_1001B4D90);
  return sub_10000D52C(v42, &qword_1002202F0, &qword_1001B8908);
}

uint64_t sub_100128228@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_1002202A8, &qword_1001B8898);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_1002202B0, &qword_1001B88A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_100009F70(&qword_1002202B8, &qword_1001B88A8);
  sub_1001279BC(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000D1EC(&qword_1002202C0, &qword_1002202A8, &qword_1001B8898, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_10000D52C(v7, &qword_1002202A8, &qword_1001B8898);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1001284EC()
{
  result = qword_100220300;
  if (!qword_100220300)
  {
    sub_10000B3DC(&qword_100220308, &qword_1001B8948);
    sub_10000B3DC(&qword_1002202A8, &qword_1001B8898);
    sub_10000D1EC(&qword_1002202C0, &qword_1002202A8, &qword_1001B8898, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220300);
  }

  return result;
}

void sub_100128630(uint64_t a1)
{
  v2 = type metadata accessor for DesignTimeImage(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  String.hash(into:)();
  String.hash(into:)();
  v9 = type metadata accessor for DesignTimeArtist(0);
  sub_100128D18(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100028E88(v8, v5);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    type metadata accessor for URL();
    sub_100128DE4(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    if (*&v5[*(v2 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100128DE4(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v5[*(v2 + 28)]);
    sub_100128D88(v5);
  }
}

uint64_t sub_1001288AC(uint64_t a1)
{
  *(a1 + 8) = sub_100128DE4(&qword_100220350, type metadata accessor for DesignTimeArtist, &unk_1001B89A4);
  result = sub_100128DE4(&qword_100220358, type metadata accessor for DesignTimeArtist, &unk_1001B896C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeArtist(uint64_t a1)
{
  result = qword_1002203C0;
  if (!qword_1002203C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1001289C4()
{
  Hasher.init(_seed:)();
  sub_100128630(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100128A08()
{
  Hasher.init(_seed:)();
  sub_100128630(v1);
  return Hasher._finalize()();
}

BOOL sub_100128A48(void *a1, void *a2)
{
  v4 = type metadata accessor for DesignTimeImage(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v8 - 8);
  v10 = (&v19 - v9);
  v11 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for DesignTimeArtist(0) + 24);
  v15 = *(v11 + 48);
  sub_100128D18(a1 + v14, v13);
  sub_100128D18(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100128D18(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100028E88(&v13[v15], v7);
      v18 = sub_100022244(v10, v7);
      sub_100128D88(v7);
      sub_100128D88(v10);
      sub_10000D52C(v13, &qword_10021E8F0, &unk_1001B8A10);
      return (v18 & 1) != 0;
    }

    sub_100128D88(v10);
LABEL_11:
    sub_10000D52C(v13, &qword_10021E8F8, &unk_1001B6580);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10000D52C(v13, &qword_10021E8F0, &unk_1001B8A10);
  return 1;
}

uint64_t sub_100128D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100128D88(uint64_t a1)
{
  v2 = type metadata accessor for DesignTimeImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100128DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100128E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100128F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100128FC0(uint64_t a1)
{
  sub_100129044(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100129044(uint64_t a1)
{
  if (!qword_10021E980)
  {
    type metadata accessor for DesignTimeImage(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10021E980);
    }
  }
}

uint64_t sub_1001290C0(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100219278, qword_1001AFC50);
  return EnvironmentValues.verticalSizeClass.setter();
}

uint64_t sub_100129168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100220420, &qword_1001B8AB8);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1001292A8(a1, a2);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_100129908();

  View.onContinueUserActivity(_:perform:)();

  return sub_10000D52C(v6, &qword_100220420, &qword_1001B8AB8);
}

uint64_t sub_1001292A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100009F70(&qword_100220448, &qword_1001B8AC8);
  __chkstk_darwin(v2);
  v4 = (&v14 - v3);
  v5 = sub_100009F70(&qword_100220470, &qword_1001B8AD8);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v15;
  if (v15)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100129B2C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v4 = EnvironmentObject.init()();
    v4[1] = v9;
    v10 = *(type metadata accessor for EventRootView(0) + 20);
    *(v4 + v10) = swift_getKeyPath();
    sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
    swift_storeEnumTagMultiPayload();
    v11 = static ObservableObject.environmentStore.getter();
    v12 = (v4 + *(v2 + 36));
    *v12 = v11;
    v12[1] = v8;
    sub_10000D58C(v4, v7, &qword_100220448, &qword_1001B8AC8);
    swift_storeEnumTagMultiPayload();
    sub_100129A18();
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v4, &qword_100220448, &qword_1001B8AC8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100129A18();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10012953C()
{
  v1 = sub_100009F70(&qword_100220410, &qword_1001B8AA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100009F70(&qword_100220418, &qword_1001B8AB0);
  v8 = sub_10000B3DC(&qword_100220420, &qword_1001B8AB8);
  v9 = sub_100129908();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000D1EC(&qword_100220468, &qword_100220410, &qword_1001B8AA8, &protocol conformance descriptor for WindowGroup<A>);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100129720@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShazamEventsAppModel(0);
  v2 = swift_allocObject();
  sub_100009F70(&unk_10021E088, &qword_1001B5918);
  Published.init(initialValue:)();
  v3 = (v2 + OBJC_IVAR____TtC15ShazamEventsApp20ShazamEventsAppModel_userActivityType);
  *v3 = 0xD000000000000021;
  v3[1] = 0x80000001001C13F0;
  sub_100129B2C(&qword_100220408, type metadata accessor for ShazamEventsAppModel, &unk_1001B5938);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100129848();
  static App.main()();
  return 0;
}

unint64_t sub_100129848()
{
  result = qword_100220400;
  if (!qword_100220400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220400);
  }

  return result;
}

uint64_t sub_1001298C8()
{

  return swift_deallocObject();
}

unint64_t sub_100129908()
{
  result = qword_100220428;
  if (!qword_100220428)
  {
    sub_10000B3DC(&qword_100220420, &qword_1001B8AB8);
    sub_10012998C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220428);
  }

  return result;
}

unint64_t sub_10012998C()
{
  result = qword_100220430;
  if (!qword_100220430)
  {
    sub_10000B3DC(&qword_100220438, &qword_1001B8AC0);
    sub_100129A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220430);
  }

  return result;
}

unint64_t sub_100129A18()
{
  result = qword_100220440;
  if (!qword_100220440)
  {
    sub_10000B3DC(&qword_100220448, &qword_1001B8AC8);
    sub_100129B2C(&qword_100220450, type metadata accessor for EventRootView, &unk_1001AE5E0);
    sub_10000D1EC(&qword_100220458, &qword_100220460, &qword_1001B8AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220440);
  }

  return result;
}

uint64_t sub_100129B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100129CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100129D2C()
{
  sub_100009F70(&qword_1002204E0, &qword_1001B8BD8);
  v0 = *(type metadata accessor for DesignTimeImage(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001ACB00;
  sub_1000214E8((v3 + v2));
  sub_1000214E8((v3 + v2 + v1));
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001ACB00;
  v5 = v4 + v2;
  sub_1000214E8((v4 + v2));
  sub_1000214E8((v5 + v1));
  sub_100009F70(&qword_1002204E8, &qword_1001B8BE0);
  v6 = *(type metadata accessor for DesignTimeWatchFace(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001ACB00;
  v10 = v9 + v8;
  sub_1000D7284(v10);
  sub_1000D7284(v10 + v7);
  sub_100009F70(&qword_1002204F0, &qword_1001B8BE8);
  v11 = *(type metadata accessor for DesignTimeVideo(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001ACB00;
  v15 = (v14 + v13);
  sub_100028668(v15);
  sub_100028668((v15 + v12));
  return v3;
}

uint64_t sub_100129F88(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1002305F8 = *&v2;
  return result;
}

uint64_t sub_100129FB8(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 8.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_100230600 = *&v2;
  return result;
}

uint64_t value<A>(iOS:iPadOS:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return a3();
  }

  else
  {
    return a1();
  }
}

uint64_t sub_10012A094(uint64_t a1)
{
  *(a1 + 8) = sub_10012A0FC(&qword_1002204F8, &protocol conformance descriptor for Ticket);
  result = sub_10012A0FC(&qword_100220500, &protocol conformance descriptor for Ticket);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012A0FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Ticket();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_10012A16C(uint64_t a1, uint64_t a2)
{
  v168 = a1;
  v140 = *v2;
  v4 = v140;
  v155 = sub_100009F70(&qword_100220550, &qword_1001B8DA8);
  __chkstk_darwin(v155);
  v154 = &v128 - v5;
  v6 = sub_100009F70(&qword_10021F5E0, &qword_1001B76F0);
  __chkstk_darwin(v6 - 8);
  v166 = &v128 - v7;
  v162 = type metadata accessor for DateInterval();
  v165 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Time();
  v164 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Music();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v174 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v128 - v15;
  __chkstk_darwin(v14);
  v171 = &v128 - v17;
  v18 = sub_100009F70(&qword_10021F5E8, &qword_1001B76F8);
  v19 = __chkstk_darwin(v18 - 8);
  v157 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v128 - v21;
  v22 = type metadata accessor for Date();
  v167 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v152 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v151 = &v128 - v26;
  v27 = __chkstk_darwin(v25);
  v169 = &v128 - v28;
  __chkstk_darwin(v27);
  v170 = &v128 - v29;
  v30 = type metadata accessor for Locale();
  __chkstk_darwin(v30 - 8);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v2[16] = 0;
  v32 = *(v4 + 120);
  v173 = v11;
  v33 = *(v11 + 56);
  v138 = v32;
  v159 = v10;
  v33(&v2[v32], 1, 1, v10);
  v34 = &v2[*(*v2 + 128)];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v137 = v34;
  v2[*(*v2 + 136)] = 0;
  v35 = &v2[*(*v2 + 152)];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v135 = v35;
  v36 = &v2[*(*v2 + 184)];
  *v36 = LocalizedStringKey.init(stringLiteral:)();
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v139 = v36;
  *(v36 + 3) = v39;
  v40 = &v2[*(*v2 + 192)];
  *v40 = LocalizedStringKey.init(stringLiteral:)();
  *(v40 + 1) = v41;
  v40[16] = v42 & 1;
  v136 = v40;
  *(v40 + 3) = v43;
  v44 = &v2[*(*v2 + 200)];
  *v44 = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 1) = v45;
  v44[16] = v46 & 1;
  v134 = v44;
  *(v44 + 3) = v47;
  v48 = &v2[*(*v2 + 208)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v48 = String.init(localized:table:bundle:locale:comment:)();
  v48[1] = v49;
  v133 = v48;
  v131 = *(*v2 + 216);
  LocalizedStringResource.init(stringLiteral:)();
  v132 = *(*v2 + 224);
  ObservationRegistrar.init()();
  v50 = *(*v2 + 168);
  v51 = type metadata accessor for Venue();
  v52 = *(v51 - 8);
  v53 = *(v52 + 16);
  v130 = v50;
  v53(&v2[v50], v168, v51);
  v129 = *(*v2 + 176);
  *&v2[v129] = a2;
  v54 = *(*v2 + 160);
  v156 = v2;
  v128 = v54;
  *&v2[v54] = a2;
  v55 = *(a2 + 16);
  v163 = a2;
  v153 = v22;
  v150 = v51;
  v149 = v52;
  if (v55)
  {
    v147 = v16;
    v56 = v173;
    v57 = a2 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = *(v173 + 16);
    v59 = v171;
    v60 = v159;
    v146 = v173 + 16;
    v148 = v58;
    v58(v171, v57, v159);
    swift_bridgeObjectRetain_n();
    v61 = v22;
    v62 = v158;
    Music.time.getter();
    v63 = v56 + 8;
    v64 = v164;
    v65 = v60;
    v66 = *(v56 + 8);
    v66(v59, v65);
    v67 = v161;
    sub_1000FA360(v161);
    v68 = *(v64 + 8);
    v69 = v62;
    v70 = v61;
    v164 = v64 + 8;
    v145 = v68;
    v68(v69, v160);
    v71 = v172;
    DateInterval.start.getter();
    v72 = *(v165 + 8);
    v165 += 8;
    v143 = v72;
    v72(v67, v162);
    v73 = v167;
    v74 = v167 + 56;
    v144 = *(v167 + 56);
    v144(v71, 0, 1, v70);
    v142 = *(v73 + 32);
    v142(v170, v71, v70);
    if (v55 > *(v163 + 16))
    {
      goto LABEL_31;
    }

    v75 = v70;
    v171 = *(v173 + 72);
    v76 = v147;
    v141 = v74;
    v77 = v159;
    v78 = v146;
    v148(v147, v57 + v171 * (v55 - 1), v159);
    v79 = v158;
    Music.time.getter();
    v172 = v66;
    v173 = v63;
    v66(v76, v77);
    v80 = v161;
    sub_1000FA360(v161);
    v145(v79, v160);
    v81 = v157;
    DateInterval.start.getter();
    v143(v80, v162);
    v144(v81, 0, 1, v75);
    v82 = v169;
    v142(v169, v81, v75);
    sub_100106088(v170, v82, v166);
    v83 = _swiftEmptyArrayStorage;
    v84 = v77;
    v85 = v78;
    v86 = v148;
    while (1)
    {
      v87 = v174;
      v88 = v85;
      v89 = v86;
      v86(v174, v57, v84);
      v90 = Music.genres.getter();
      v91 = v84;
      (v172)(v87, v84);
      v92 = *(v90 + 16);
      v93 = v83[2];
      v94 = v93 + v92;
      if (__OFADD__(v93, v92))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);

        v125 = v156;
        sub_10000D52C(&v156[v138], &qword_10021E4E0, &qword_1001B8DB0);

        (*(v149 + 8))(&v125[v130], v150);

        v126 = type metadata accessor for LocalizedStringResource();
        (*(*(v126 - 8) + 8))(&v125[v131], v126);
        v127 = type metadata accessor for ObservationRegistrar();
        (*(*(v127 - 8) + 8))(&v125[v132], v127);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v94 <= v83[3] >> 1)
      {
        if (*(v90 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v93 <= v94)
        {
          v96 = v93 + v92;
        }

        else
        {
          v96 = v93;
        }

        v83 = sub_100166958(isUniquelyReferenced_nonNull_native, v96, 1, v83);
        if (*(v90 + 16))
        {
LABEL_15:
          v97 = (v83[3] >> 1) - v83[2];
          type metadata accessor for Music.Genre();
          if (v97 < v92)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v84 = v91;
          v85 = v88;
          v86 = v89;
          if (v92)
          {
            v98 = v83[2];
            v99 = __OFADD__(v98, v92);
            v100 = v98 + v92;
            if (v99)
            {
              goto LABEL_30;
            }

            v83[2] = v100;
          }

          goto LABEL_5;
        }
      }

      v84 = v91;
      v85 = v88;
      v86 = v89;
      if (v92)
      {
        goto LABEL_28;
      }

LABEL_5:
      v57 += v171;
      if (!--v55)
      {
        goto LABEL_24;
      }
    }
  }

  v101 = v167;
  v102 = *(v167 + 56);
  v103 = v172;
  v102(v172, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  v104 = v170;
  Date.init()();
  v105 = *(v101 + 48);
  if (v105(v103, 1, v22) != 1)
  {
    sub_10000D52C(v103, &qword_10021F5E8, &qword_1001B76F8);
  }

  v106 = v157;
  v102(v157, 1, 1, v22);
  Date.init()();
  if (v105(v106, 1, v22) != 1)
  {
    sub_10000D52C(v106, &qword_10021F5E8, &qword_1001B76F8);
  }

  sub_100106088(v104, v169, v166);
  v83 = _swiftEmptyArrayStorage;
LABEL_24:
  v107 = sub_100082F68(v83);

  v108 = *(v107 + 16);
  v109 = _swiftEmptyArrayStorage;
  if (v108)
  {
    v109 = sub_100166D14(*(v107 + 16), 0);
    v110 = *(type metadata accessor for Music.Genre() - 8);
    v111 = sub_10012E08C(&v175, &v109[(*(v110 + 80) + 32) & ~*(v110 + 80)], v108, v107);
    v112 = v175;

    sub_10012E4B0(v112);
    if (v111 != v108)
    {
      goto LABEL_32;
    }
  }

  v176 = v109;
  sub_10012C6CC(&v176);
  v113 = v153;

  v174 = v176;
  v114 = v167;
  v115 = *(v167 + 16);
  v116 = v170;
  v115(v151, v170, v113);
  v117 = v169;
  v115(v152, v169, v113);
  v118 = v155;
  v119 = v154;
  DateInterval.init(start:end:)();
  v120 = v166;
  sub_10000D58C(v166, v119 + v118[12], &qword_10021F5E0, &qword_1001B76F0);
  (*(v149 + 8))(v168, v150);
  sub_10000D52C(v120, &qword_10021F5E0, &qword_1001B76F0);
  v121 = *(v114 + 8);
  v121(v117, v113);
  v121(v116, v113);
  v122 = v163;
  *v119 = 0;
  v119[1] = v122;
  v119[2] = _swiftEmptyArrayStorage;
  *(v119 + v118[13]) = v174;
  *(v119 + v118[14]) = &_swiftEmptySetSingleton;
  v123 = v156;
  sub_10012E4B8(v119, &v156[*(*v156 + 144)]);
  return v123;
}

uint64_t sub_10012B2E0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController, &unk_1001B3430);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  return sub_10009FFA4(v4 + v5, a3);
}

uint64_t sub_10012B3A8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10009FFA4(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController, &unk_1001B3430);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10009FE78(v6);
}

uint64_t sub_10012B4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v75 = sub_100009F70(&qword_10021B988, &qword_1001B17A0);
  __chkstk_darwin(v75);
  v60 = (&v58 - v3);
  v70 = sub_100009F70(&qword_10021B968, &qword_1001B1780);
  __chkstk_darwin(v70);
  v61 = (&v58 - v4);
  v72 = sub_100009F70(&qword_100220508, &qword_1001B8CC8);
  __chkstk_darwin(v72);
  v73 = &v58 - v5;
  v67 = sub_100009F70(&qword_100220510, &qword_1001B8CD0);
  __chkstk_darwin(v67);
  v68 = &v58 - v6;
  v71 = sub_100009F70(&qword_100220518, &qword_1001B8CD8);
  __chkstk_darwin(v71);
  v69 = &v58 - v7;
  v59 = type metadata accessor for Date();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100009F70(&qword_100220520, &qword_1001B8CE0);
  __chkstk_darwin(v66);
  v11 = (&v58 - v10);
  v65 = type metadata accessor for Venue();
  v64 = *(v65 - 8);
  v12 = __chkstk_darwin(v65);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v58 - v15;
  v16 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 24);
  v62 = *(v1 + 16);
  v77 = v62;
  v78 = v19;
  sub_100009F70(&qword_100220528, &qword_1001B8CE8);
  State.wrappedValue.getter();
  v20 = v80;
  swift_getKeyPath();
  v77 = v20;
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController, &unk_1001B3430);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  sub_10009FFA4(v20 + v21, v18);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10009FE78(v18);
      KeyPath = swift_getKeyPath();
      v24 = v61;
      *v61 = KeyPath;
      sub_100009F70(&qword_100219710, &qword_1001B29A0);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for ErrorView(0);
      v26 = *(v25 + 20);
      *(v24 + v26) = swift_getKeyPath();
      sub_100009F70(&qword_100219718, &qword_1001B1810);
      swift_storeEnumTagMultiPayload();
      v27 = (v24 + *(v25 + 24));
      type metadata accessor for RemoteViewConfiguration();
      sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      *v27 = EnvironmentObject.init()();
      v27[1] = v28;
      v29 = *v2;
      v81[0] = v19;
      v79 = v2[2];
      v80 = v29;
      v30 = swift_allocObject();
      v31 = v2[1];
      *(v30 + 1) = *v2;
      *(v30 + 2) = v31;
      *(v30 + 3) = v2[2];
      v32 = (v24 + *(v70 + 36));
      *v32 = sub_10012C6C4;
      v32[1] = v30;
      v32[2] = 0;
      v32[3] = 0;
      v33 = &qword_10021B968;
      v34 = &qword_1001B1780;
      sub_10000D58C(v24, v68, &qword_10021B968, &qword_1001B1780);
      swift_storeEnumTagMultiPayload();
      sub_100081738(&v80, v76);

      sub_10000D58C(v81, v76, &qword_100220530, &unk_1001B8D60);
      sub_10000D58C(&v79, v76, &qword_10021B9F0, &qword_1001B1858);
      sub_10012C5C0();
      sub_100080BB4();
      v35 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10000D58C(v35, v73, &qword_100220518, &qword_1001B8CD8);
      swift_storeEnumTagMultiPayload();
      sub_10012C534();
      sub_100080AC8();
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v35, &qword_100220518, &qword_1001B8CD8);
      v36 = v24;
    }

    else
    {
      v50 = swift_getKeyPath();
      v51 = v60;
      *v60 = v50;
      sub_100009F70(&qword_100219710, &qword_1001B29A0);
      swift_storeEnumTagMultiPayload();
      v52 = (v51 + *(type metadata accessor for LoadingView(0) + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      *v52 = EnvironmentObject.init()();
      v52[1] = v53;
      v54 = *v2;
      v81[0] = v19;
      v79 = v2[2];
      v80 = v54;
      v55 = swift_allocObject();
      v56 = v2[1];
      v55[1] = *v2;
      v55[2] = v56;
      v55[3] = v2[2];
      v57 = (v51 + *(v75 + 36));
      type metadata accessor for _TaskModifier();
      sub_100081738(&v80, v76);

      sub_10000D58C(v81, v76, &qword_100220530, &unk_1001B8D60);
      sub_10000D58C(&v79, v76, &qword_10021B9F0, &qword_1001B1858);
      static TaskPriority.userInitiated.getter();
      *v57 = &unk_1001B8D58;
      v57[1] = v55;
      v33 = &qword_10021B988;
      v34 = &qword_1001B17A0;
      sub_10000D58C(v51, v73, &qword_10021B988, &qword_1001B17A0);
      swift_storeEnumTagMultiPayload();
      sub_10012C534();
      sub_100080AC8();
      _ConditionalContent<>.init(storage:)();
      v36 = v51;
    }

    return sub_10000D52C(v36, v33, v34);
  }

  else
  {
    v37 = *&v18[*(sub_100009F70(&qword_10021CB98, &qword_1001B3488) + 48)];
    v38 = v64;
    v39 = v63;
    v40 = v65;
    (*(v64 + 32))(v63, v18, v65);
    (*(v38 + 16))(v14, v39, v40);
    v41 = static Date.now.getter();
    __chkstk_darwin(v41);
    *(&v58 - 2) = v9;
    v42 = sub_1000FADCC(sub_10007583C, (&v58 - 4), v37);
    (*(v58 + 8))(v9, v59);
    sub_100009F70(&qword_100220548, &qword_1001B8DA0);
    swift_allocObject();
    *&v79 = sub_10012A16C(v14, v42);
    State.init(wrappedValue:)();
    v43 = *(&v80 + 1);
    *v11 = v80;
    v11[1] = v43;
    v44 = v66;
    v45 = *(v66 + 52);
    *(v11 + v45) = swift_getKeyPath();
    sub_100009F70(&qword_100219710, &qword_1001B29A0);
    swift_storeEnumTagMultiPayload();
    v46 = (v11 + *(v44 + 56));
    type metadata accessor for RemoteViewConfiguration();
    sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v46 = EnvironmentObject.init()();
    v46[1] = v47;
    sub_10000D58C(v11, v68, &qword_100220520, &qword_1001B8CE0);
    swift_storeEnumTagMultiPayload();
    sub_10012C5C0();
    sub_100080BB4();
    v48 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v48, v73, &qword_100220518, &qword_1001B8CD8);
    swift_storeEnumTagMultiPayload();
    sub_10012C534();
    sub_100080AC8();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v48, &qword_100220518, &qword_1001B8CD8);
    sub_10000D52C(v11, &qword_100220520, &qword_1001B8CE0);
    return (*(v64 + 8))(v63, v65);
  }
}

void sub_10012C090(uint64_t *a1)
{
  sub_100009F70(&qword_100220528, &qword_1001B8CE8);
  State.wrappedValue.getter();

  v2 = a1[4];
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];

    sub_1000DCEDC(v4, v3, 10, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10012C17C(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10012C214, v3, v2);
}

uint64_t sub_10012C214()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v1 + 16);
  sub_100009F70(&qword_100220528, &qword_1001B8CE8);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_10012C2E8;

  return sub_10009F264(v2, v3);
}

uint64_t sub_10012C2E8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10012C42C, v3, v2);
}

uint64_t sub_10012C42C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012C4A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_10012C17C(v0 + 16);
}

unint64_t sub_10012C534()
{
  result = qword_100220538;
  if (!qword_100220538)
  {
    sub_10000B3DC(&qword_100220518, &qword_1001B8CD8);
    sub_10012C5C0();
    sub_100080BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220538);
  }

  return result;
}

unint64_t sub_10012C5C0()
{
  result = qword_100220540;
  if (!qword_100220540)
  {
    sub_10000B3DC(&qword_100220520, &qword_1001B8CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220540);
  }

  return result;
}

uint64_t sub_10012C624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012C674()
{

  return swift_deallocObject();
}

Swift::Int sub_10012C6CC(uint64_t *a1)
{
  v2 = *(type metadata accessor for Music.Genre() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10012E488(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10012C774(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10012C774(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Music.Genre();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Music.Genre() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012CBAC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10012C8A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Music.Genre();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = Music.Genre.name.getter();
      v27 = v26;
      if (v25 == Music.Genre.name.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012CBAC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for Music.Genre();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_10012D768(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10012DE90(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_10012DE04(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_10012DE90(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = Music.Genre.name.getter();
      v37 = v36;
      v38 = Music.Genre.name.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = Music.Genre.name.getter();
        v52 = v51;
        if (v50 == Music.Genre.name.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10012DF88(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_10012DF88((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_10012D768(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_10012DE90(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_10012DE04(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = Music.Genre.name.getter();
    v69 = v68;
    if (v5 == Music.Genre.name.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_10012D768(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = type metadata accessor for Music.Genre();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = Music.Genre.name.getter();
            v52 = v51;
            if (v50 == Music.Genre.name.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = Music.Genre.name.getter();
        v32 = v31;
        if (v30 == Music.Genre.name.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_10012DEA4(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_10012DE04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10012DE90(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10012DEA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Music.Genre();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10012DF88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_100220558, &qword_1001B8DB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10012E08C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Music.Genre();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012E330(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100220550, &qword_1001B8DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012E530()
{
  result = qword_100220560;
  if (!qword_100220560)
  {
    sub_10000B3DC(qword_100220568, &qword_1001B8DC0);
    sub_10012C534();
    sub_100080AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220560);
  }

  return result;
}

uint64_t sub_10012E5C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v17 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v19 = type metadata accessor for TourPhotosView(0, *(v17 + 80), *(v17 + 88), v18);
  v20 = a8 + v19[9];
  *v20 = a2;
  *(v20 + 8) = a3;
  *(v20 + 16) = a4;
  *(v20 + 24) = a5 & 1;
  v21 = a8 + v19[10];
  *v21 = a6;
  *(v21 + 8) = a7;
  *(v21 + 16) = a9;
  v22 = (a8 + v19[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10000E5F0();
  *v22 = EnvironmentObject.init()();
  v22[1] = v23;
  v24 = v19[12];
  *(a8 + v24) = swift_getKeyPath();
  sub_100009F70(&qword_100219720, &qword_1001B23D0);

  return swift_storeEnumTagMultiPayload();
}

void sub_10012E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_10012EAF8(319);
    if (v5 <= 0x3F)
    {
      sub_10011E440();
      if (v6 <= 0x3F)
      {
        sub_10000B304(319);
        if (v7 <= 0x3F)
        {
          sub_10012EB5C(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10012E85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 36) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100009F70(&qword_10021BCA8, &qword_1001B2338);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10012E9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021BCA8, &qword_1001B2338);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10012EAF8(uint64_t a1)
{
  if (!qword_1002205F0)
  {
    sub_10000B3DC(&qword_1002192A8, &qword_1001AE260);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_1002205F0);
    }
  }
}

void sub_10012EB5C(uint64_t a1)
{
  if (!qword_10021BD18)
  {
    type metadata accessor for ContentSizeCategory();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10021BD18);
    }
  }
}

uint64_t sub_10012EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10012EC38()
{
  sub_100009F70(&qword_1002206B8, &qword_1001B8F08);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012ECA4(uint64_t a1)
{
  sub_100009F70(&qword_1002206B8, &qword_1001B8F08);
  Binding.projectedValue.getter();
  return v2;
}

double sub_10012ED14()
{
  sub_100009F70(&qword_10021FDB8, &qword_1001B8170);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012EDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v159 = a1;
  v156 = *(a1 - 8);
  v157 = *(v156 + 64);
  __chkstk_darwin(a1);
  v155 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PagingScrollTargetBehavior();
  v153 = *(v4 - 8);
  __chkstk_darwin(v4);
  v151 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Array();
  v7 = sub_10000B3DC(&qword_1002205F8, &qword_1001B8E98);
  WitnessTable = swift_getWitnessTable();
  v181 = v6;
  v182 = &type metadata for Int;
  v183 = v7;
  v184 = WitnessTable;
  v185 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v154 = &protocol conformance descriptor for AsyncImage<A>;
  v180 = sub_10000D1EC(&qword_100220600, &qword_1002205F8, &qword_1001B8E98, &protocol conformance descriptor for AsyncImage<A>);
  swift_getWitnessTable();
  v9 = type metadata accessor for HStack();
  v10 = swift_getWitnessTable();
  v181 = v9;
  v182 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = v9;
  v182 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for ScrollView();
  v149 = *(v11 - 8);
  __chkstk_darwin(v11);
  v137 = &v103 - v12;
  v13 = swift_getWitnessTable();
  v181 = v11;
  v182 = v4;
  v130 = v4;
  v131 = v11;
  v183 = v13;
  v184 = &protocol witness table for PagingScrollTargetBehavior;
  v14 = v13;
  v132 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v147 = *(v15 - 8);
  __chkstk_darwin(v15);
  v129 = &v103 - v16;
  v181 = v11;
  v182 = v4;
  v183 = v14;
  v184 = &protocol witness table for PagingScrollTargetBehavior;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = v15;
  v127 = v15;
  v128 = v17;
  v181 = v15;
  v182 = &type metadata for Int;
  v183 = v17;
  v184 = &protocol witness table for Int;
  v19 = v17;
  v20 = swift_getOpaqueTypeMetadata2();
  v141 = *(v20 - 8);
  __chkstk_darwin(v20);
  v126 = &v103 - v21;
  v181 = v18;
  v182 = &type metadata for Int;
  v183 = v19;
  v184 = &protocol witness table for Int;
  v22 = swift_getOpaqueTypeConformance2();
  v181 = v20;
  v182 = v22;
  v105 = v20;
  v106 = v22;
  v139 = swift_getOpaqueTypeMetadata2();
  v144 = *(v139 - 8);
  __chkstk_darwin(v139);
  v125 = &v103 - v23;
  sub_10000B3DC(&qword_100220608, &unk_1001B8EA0);
  v24 = type metadata accessor for ModifiedContent();
  v145 = *(v24 - 8);
  __chkstk_darwin(v24);
  v134 = &v103 - v25;
  v110 = v24;
  v26 = type metadata accessor for ModifiedContent();
  v140 = *(v26 - 8);
  __chkstk_darwin(v26);
  v136 = &v103 - v27;
  sub_10000B3DC(&qword_10021B630, &qword_1001B1308);
  v111 = v26;
  v28 = type metadata accessor for ModifiedContent();
  v146 = *(v28 - 8);
  __chkstk_darwin(v28);
  v133 = &v103 - v29;
  sub_10000B3DC(&qword_100220610, &qword_1001B8EB0);
  v113 = v28;
  v30 = type metadata accessor for ModifiedContent();
  v148 = *(v30 - 8);
  __chkstk_darwin(v30);
  v135 = &v103 - v31;
  v115 = v30;
  v32 = type metadata accessor for ModifiedContent();
  v150 = *(v32 - 8);
  __chkstk_darwin(v32);
  v138 = &v103 - v33;
  v34 = sub_10000B3DC(&qword_1002192A8, &qword_1001AE260);
  v121 = v34;
  v181 = v20;
  v182 = v22;
  v35 = swift_getOpaqueTypeConformance2();
  v107 = v35;
  v36 = sub_10000D1EC(&qword_100220618, &qword_100220608, &unk_1001B8EA0, &protocol conformance descriptor for _BackgroundModifier<A>);
  v178 = v35;
  v179 = v36;
  v109 = swift_getWitnessTable();
  v176 = v109;
  v177 = &protocol witness table for _FrameLayout;
  v37 = swift_getWitnessTable();
  v108 = v37;
  v38 = sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
  v174 = v37;
  v175 = v38;
  v39 = swift_getWitnessTable();
  v112 = v39;
  v40 = sub_10000D1EC(&qword_100220620, &qword_100220610, &qword_1001B8EB0, &protocol conformance descriptor for _OverlayModifier<A>);
  v172 = v39;
  v173 = v40;
  v114 = swift_getWitnessTable();
  v170 = v114;
  v171 = &protocol witness table for _PaddingLayout;
  v118 = v32;
  v41 = swift_getWitnessTable();
  v120 = v41;
  v119 = sub_10001F060();
  v181 = v32;
  v182 = v34;
  v183 = v41;
  v184 = v119;
  v122 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = *(v42 - 8);
  v123 = v42;
  v124 = v43;
  v44 = __chkstk_darwin(v42);
  v116 = &v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v117 = &v103 - v46;
  static Axis.Set.horizontal.getter();
  v48 = v159;
  v47 = v160;
  v104 = *(v159 + 24);
  v167 = v160;
  v168 = v104;
  v49 = v152;
  v169 = v152;
  v50 = v137;
  ScrollView.init(_:showsIndicators:content:)();
  v51 = v151;
  PagingScrollTargetBehavior.init()();
  v52 = v129;
  v53 = v130;
  v54 = v131;
  View.scrollTargetBehavior<A>(_:)();
  (*(v153 + 8))(v51, v53);
  (*(v149 + 8))(v50, v54);
  v55 = v48;
  v56 = v48;
  v57 = v49;
  v181 = sub_10012ECA4(v55);
  v182 = v58;
  v183 = v59;
  LOBYTE(v184) = v60 & 1;
  v62 = v126;
  v61 = v127;
  View.scrollPosition<A>(id:anchor:)();

  (*(v147 + 8))(v52, v61);
  sub_10012EBF8(v56, v63, v64, v65);
  sub_100075A44();

  v66 = v125;
  v67 = v105;
  View.scrollDisabled(_:)();
  (*(v141 + 8))(v62, v67);
  v164 = v47;
  v68 = v104;
  v165 = v104;
  v166 = v57;
  static Alignment.center.getter();
  sub_100009F70(&qword_100220628, &qword_1001B8EB8);
  sub_10000D1EC(&qword_100220630, &qword_100220628, &qword_1001B8EB8, v154);
  v69 = v134;
  v70 = v139;
  View.background<A>(alignment:content:)();
  (*(v144 + 8))(v66, v70);
  v71 = v159;
  sub_10012EBF8(v159, v72, v73, v74);

  static Alignment.center.getter();
  v75 = v136;
  v76 = v110;
  View.frame(width:height:alignment:)();
  (*(v145 + 8))(v69, v76);
  v77 = v133;
  v78 = v111;
  View.clipped(antialiased:)();
  (*(v140 + 8))(v75, v78);
  v79 = v160;
  v161 = v160;
  v162 = v68;
  v163 = v57;
  static Alignment.center.getter();
  sub_100009F70(&qword_100220638, &qword_1001B8EC0);
  sub_100133188();
  v80 = v135;
  v81 = v113;
  View.overlay<A>(alignment:content:)();
  (*(v146 + 8))(v77, v81);
  static Edge.Set.bottom.getter();
  v82 = v71;
  sub_10012EBF8(v71, v83, v84, v85);

  v86 = v138;
  v87 = v115;
  View.padding(_:_:)();
  (*(v148 + 8))(v80, v87);
  v181 = sub_10012EC38();
  LOBYTE(v182) = v88 & 1;
  v90 = v155;
  v89 = v156;
  (*(v156 + 16))(v155, v57, v82);
  v91 = v89;
  v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = v79;
  *(v93 + 24) = v68;
  (*(v91 + 32))(v93 + v92, v90, v82);
  v94 = v116;
  v96 = v118;
  v95 = v119;
  v98 = v120;
  v97 = v121;
  View.onChange<A>(of:initial:_:)();

  (*(v150 + 8))(v86, v96);
  v181 = v96;
  v182 = v97;
  v183 = v98;
  v184 = v95;
  swift_getOpaqueTypeConformance2();
  v99 = v117;
  v100 = v123;
  sub_100157EFC();
  v101 = *(v124 + 8);
  v101(v94, v100);
  sub_100157EFC();
  return (v101)(v99, v100);
}

uint64_t sub_10012FDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  v21 = a3;
  v19 = a2;
  v22 = a4;
  swift_getTupleTypeMetadata2();
  v27 = type metadata accessor for Array();
  v28 = &type metadata for Int;
  v29 = sub_10000B3DC(&qword_1002205F8, &qword_1001B8E98);
  WitnessTable = swift_getWitnessTable();
  v31 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v26 = sub_10000D1EC(&qword_100220600, &qword_1002205F8, &qword_1001B8E98, &protocol conformance descriptor for AsyncImage<A>);
  v18[1] = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = swift_getWitnessTable();
  v27 = v4;
  v28 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v23 = v19;
  v24 = v21;
  v25 = v20;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v5 + 8))(v7, v4);
  v27 = v4;
  v28 = v8;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v16 = *(v10 + 8);
  v16(v13, OpaqueTypeMetadata2);
  sub_100157EFC();
  return (v16)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_100130140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v29 = a1;
  v38 = a5;
  v6 = type metadata accessor for TourPhotosView(0, a2, a3, a4);
  v7 = *(v6 - 8);
  v33 = *(v7 + 64);
  __chkstk_darwin(v6);
  v31 = &v29 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Array();
  v36 = v9;
  v10 = sub_10000B3DC(&qword_1002205F8, &qword_1001B8E98);
  v35 = v10;
  WitnessTable = swift_getWitnessTable();
  v43 = v9;
  v44 = &type metadata for Int;
  v45 = v10;
  v46 = WitnessTable;
  v47 = &protocol witness table for Int;
  v11 = type metadata accessor for ForEach();
  v37 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v20 = *(sub_10012EBF8(v6, v17, v18, v19) + 32);

  v42 = v20;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();

  v42 = v43;
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v43 = Array.init<A>(_:)();
  v21 = v32;
  v39 = a2;
  v40 = v32;
  TupleTypeMetadata2 = swift_getKeyPath();
  v22 = v31;
  (*(v7 + 16))(v31, v29, v6);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v21;
  (*(v7 + 32))(v24 + v23, v22, v6);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = v21;
  v25[4] = sub_1001340C8;
  v25[5] = v24;
  v28 = sub_10000D1EC(&qword_100220600, &qword_1002205F8, &qword_1001B8E98, &protocol conformance descriptor for AsyncImage<A>);
  ForEach<>.init(_:id:content:)();
  v41 = v28;
  swift_getWitnessTable();
  sub_100157EFC();
  v26 = *(v37 + 8);
  v26(v14, v11);
  sub_100157EFC();
  return (v26)(v16, v11);
}

uint64_t sub_1001305AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = type metadata accessor for TourPhotosView(0, a2, a3, a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  (*(a3 + 16))(a2, a3);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  sub_100009F70(&qword_100220788, &qword_1001B8FC8);
  sub_100134464();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10013080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v95 = a4;
  *&v94 = a3;
  v91 = a2;
  v87 = sub_100009F70(&qword_100220840, &qword_1001B9028);
  __chkstk_darwin(v87);
  v83 = &v73 - v7;
  v93 = sub_100009F70(&qword_100220848, &qword_1001B9030);
  __chkstk_darwin(v93);
  v9 = &v73 - v8;
  v89 = sub_100009F70(&qword_100220850, &qword_1001B9038);
  __chkstk_darwin(v89);
  v88 = &v73 - v10;
  v92 = sub_100009F70(&qword_1002207A0, &qword_1001B8FD0);
  __chkstk_darwin(v92);
  v90 = &v73 - v11;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100009F70(&qword_1002207B0, &qword_1001B8FD8);
  __chkstk_darwin(v86);
  v17 = &v73 - v16;
  v18 = type metadata accessor for AsyncImagePhase();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v19 + 96))(v21, v18);
    v81 = *v21;
    LODWORD(v83) = enum case for Image.ResizingMode.stretch(_:);
    v82 = *(v13 + 104);
    v82(v15);
    v23 = Image.resizable(capInsets:resizingMode:)();
    v24 = *(v13 + 8);
    v75 = v13 + 8;
    v80 = v24;
    v24(v15, v12);
    *v102 = v23;
    *&v102[16] = 257;
    static Axis.Set.horizontal.getter();
    v85 = a5;
    static Alignment.center.getter();
    v84 = v9;
    v79 = sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    v78 = sub_100079534();
    View.containerRelativeFrame(_:alignment:)();

    v77 = type metadata accessor for TourPhotosView(0, v94, v95, v25);
    sub_10012EBF8(v77, v26, v27, v28);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v76 = sub_100009F70(&qword_100220810, &qword_1001B9008);
    v29 = &v17[*(v76 + 36)];
    v30 = v100;
    *v29 = v99;
    *(v29 + 1) = v30;
    *(v29 + 2) = v101;
    v31 = sub_100009F70(&qword_100220800, &qword_1001B9000);
    *&v17[*(v31 + 36)] = 0;
    v32 = static Alignment.center.getter();
    v34 = v33;
    sub_10013266C(&static Color.black.getter, &static Color.clear.getter, v102);
    v35 = *v102;
    v74 = *&v102[8];
    v73 = *&v102[24];
    v36 = &v17[*(sub_100009F70(&qword_1002207F0, &qword_1001B8FF8) + 36)];
    *v36 = v32;
    *(v36 + 1) = v34;
    *(v36 + 2) = v35;
    *(v36 + 40) = v73;
    *(v36 + 24) = v74;
    (v82)(v15, v83, v12);
    v37 = Image.resizable(capInsets:resizingMode:)();
    v80(v15, v12);
    *v102 = v37;
    *&v102[16] = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v38 = &v17[*(sub_100009F70(&qword_1002207E0, &qword_1001B8FF0) + 36)];
    View.containerRelativeFrame(_:alignment:)();

    sub_10012EBF8(v77, v39, v40, v41);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = &v38[*(v76 + 36)];
    v43 = *&v102[16];
    *v42 = *v102;
    *(v42 + 1) = v43;
    *(v42 + 2) = *&v102[32];
    *&v38[*(v31 + 36)] = 0;
    v44 = &v38[*(sub_100009F70(&qword_100220858, &qword_1001B9040) + 36)];
    *v44 = 0x4049000000000000;
    v44[8] = 1;
    *&v38[*(sub_100009F70(&qword_100220860, &qword_1001B9048) + 36)] = 0;
    v45 = static Alignment.center.getter();
    v47 = v46;
    v48 = &v38[*(sub_100009F70(&qword_100220820, &qword_1001B9018) + 36)];
    *v48 = v45;
    v48[1] = v47;
    v49 = static Alignment.center.getter();
    v51 = v50;
    v52 = &v17[*(sub_100009F70(&qword_1002207D0, &qword_1001B8FE8) + 36)];
    sub_100131470(v94, v95, v52);
    v53 = (v52 + *(sub_100009F70(&qword_100220830, &qword_1001B9020) + 36));
    *v53 = v49;
    v53[1] = v51;
    v54 = static Alignment.center.getter();
    v56 = v55;
    sub_100132730(&v96);
    v57 = v96;
    v94 = v98;
    v95 = v97;
    v58 = &v17[*(sub_100009F70(&qword_1002207C0, &qword_1001B8FE0) + 36)];
    *v58 = v57;
    v59 = v95;
    *(v58 + 24) = v94;
    *(v58 + 8) = v59;
    *(v58 + 5) = v54;
    *(v58 + 6) = v56;
    v17[*(v86 + 36)] = 1;
    v60 = &qword_1002207B0;
    v61 = &qword_1001B8FD8;
    sub_10000D58C(v17, v88, &qword_1002207B0, &qword_1001B8FD8);
    swift_storeEnumTagMultiPayload();
    sub_10013457C();
    sub_100134A74();
    v62 = v90;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v62, v84, &qword_1002207A0, &qword_1001B8FD0);
    swift_storeEnumTagMultiPayload();
    sub_1001344F0();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v62, &qword_1002207A0, &qword_1001B8FD0);
    v63 = v17;
    return sub_10000D52C(v63, v60, v61);
  }

  if (v22 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v19 + 8))(v21, v18);
LABEL_6:
    v84 = v9;
    v85 = a5;
    if (qword_100218340 != -1)
    {
      swift_once();
    }

    *v102 = qword_100230578;
    *&v102[8] = 256;

    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_100009F70(&qword_100219CF0, &qword_1001AED70);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
    v64 = v83;
    View.containerRelativeFrame(_:alignment:)();

    v65 = static Alignment.center.getter();
    v67 = v66;
    sub_100132730(v102);
    v68 = *&v102[8];
    v69 = *&v102[24];
    v70 = v64 + *(v87 + 36);
    *v70 = *v102;
    *(v70 + 8) = v68;
    *(v70 + 24) = v69;
    *(v70 + 40) = v65;
    *(v70 + 48) = v67;
    v60 = &qword_100220840;
    v61 = &qword_1001B9028;
    sub_10000D58C(v64, v88, &qword_100220840, &qword_1001B9028);
    swift_storeEnumTagMultiPayload();
    sub_10013457C();
    sub_100134A74();
    v71 = v90;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v71, v84, &qword_1002207A0, &qword_1001B8FD0);
    swift_storeEnumTagMultiPayload();
    sub_1001344F0();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v71, &qword_1002207A0, &qword_1001B8FD0);
    v63 = v64;
    return sub_10000D52C(v63, v60, v61);
  }

  if (v22 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_1001344F0();
  _ConditionalContent<>.init(storage:)();
  return (*(v19 + 8))(v21, v18);
}

__n128 sub_100131470@<Q0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v11 = Image.resizable(capInsets:resizingMode:)();
  (*(v8 + 8))(v10, v7);
  v31 = v11;
  LOWORD(v32) = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
  sub_100079534();
  View.containerRelativeFrame(_:alignment:)();

  v13 = type metadata accessor for TourPhotosView(0, a2, a3, v12);
  sub_10012EBF8(v13, v14, v15, v16);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (a4 + *(sub_100009F70(&qword_100220810, &qword_1001B9008) + 36));
  v18 = v32;
  *v17 = v31;
  v17[1] = v18;
  v17[2] = v33;
  *(a4 + *(sub_100009F70(&qword_100220800, &qword_1001B9000) + 36)) = 0;
  *(a4 + *(sub_100009F70(&qword_100220868, &qword_1001B9050) + 36)) = 0x3FF0000000000000;
  v19 = a4 + *(sub_100009F70(&qword_100220870, &qword_1001B9058) + 36);
  *v19 = 0x4038000000000000;
  *(v19 + 8) = 1;
  *(a4 + *(sub_100009F70(&qword_100220878, &qword_1001B9060) + 36)) = 0;
  v20 = static Alignment.center.getter();
  v22 = v21;
  sub_10013266C(&static Color.clear.getter, &static Color.black.getter, &v28);
  v23 = v28;
  v26 = v30;
  v27 = v29;
  v24 = a4 + *(sub_100009F70(&qword_100220880, &qword_1001B9068) + 36);
  *v24 = v20;
  *(v24 + 8) = v22;
  *(v24 + 16) = v23;
  result = v27;
  *(v24 + 40) = v26;
  *(v24 + 24) = result;
  return result;
}

uint64_t sub_100131784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  v13 = type metadata accessor for TourPhotosView(0, a2, a3, v12);
  v17 = *(sub_10012EBF8(v13, v14, v15, v16) + 32);

  v23[1] = v17;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v18 = *(a2 - 8);
  if ((*(v18 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  else
  {
    (*(a3 + 16))(a2, a3);
    (*(v18 + 8))(v8, a2);
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  }

  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_100009F70(&qword_1002206C8, &qword_1001B8F18);
  sub_100133CE4();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_100131ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a2;
  v47 = a3;
  v55 = a4;
  v50 = sub_100009F70(&qword_100220748, &qword_1001B8F68);
  v46[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v46 - v5;
  v54 = sub_100009F70(&qword_100220750, &qword_1001B8F70);
  __chkstk_darwin(v54);
  v52 = v46 - v7;
  v48 = sub_100009F70(&qword_100220758, &qword_1001B8F78);
  __chkstk_darwin(v48);
  v51 = v46 - v8;
  v53 = sub_100009F70(&qword_1002206E0, &qword_1001B8F20);
  __chkstk_darwin(v53);
  v49 = v46 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_1002206F0, &qword_1001B8F28);
  __chkstk_darwin(v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for AsyncImagePhase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v46[0] = v22;
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v56 = v23;
    *&v57 = 0;
    WORD4(v57) = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100079534();
    View.containerRelativeFrame(_:alignment:)();

    v24 = &v16[*(sub_100009F70(&qword_100220720, &unk_1001B8F40) + 36)];
    *v24 = 0x4059000000000000;
    v24[8] = 1;
    *&v16[*(sub_100009F70(&qword_100220710, &qword_1001B8F38) + 36)] = 0;
    v25 = static Alignment.center.getter();
    v27 = v26;
    v28 = &v16[*(sub_100009F70(&qword_100220700, &qword_1001B8F30) + 36)];
    sub_1001323CC(v28);
    v29 = (v28 + *(sub_100009F70(&qword_100220730, &qword_1001B8F50) + 36));
    *v29 = v25;
    v29[1] = v27;
    v30 = static Alignment.center.getter();
    v32 = v31;
    sub_100132730(&v56);
    v33 = v57;
    v34 = v58;
    v35 = &v16[*(v14 + 36)];
    *v35 = v56;
    *(v35 + 8) = v33;
    *(v35 + 24) = v34;
    *(v35 + 5) = v30;
    *(v35 + 6) = v32;
    sub_10000D58C(v16, v51, &qword_1002206F0, &qword_1001B8F28);
    swift_storeEnumTagMultiPayload();
    sub_100133E74();
    v36 = sub_10000B3DC(&qword_100219CF0, &qword_1001AED70);
    v37 = sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
    v56 = v36;
    *&v57 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v49;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v38, v52, &qword_1002206E0, &qword_1001B8F20);
    swift_storeEnumTagMultiPayload();
    sub_100133D70();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v38, &qword_1002206E0, &qword_1001B8F20);
    return sub_10000D52C(v16, &qword_1002206F0, &qword_1001B8F28);
  }

  v47 = v14;
  v40 = v51;
  if (v21 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 != enum case for AsyncImagePhase.empty(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100133D70();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v17);
  }

  if (qword_100218340 != -1)
  {
    swift_once();
  }

  v56 = qword_100230578;
  LOWORD(v57) = 256;

  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v41 = sub_100009F70(&qword_100219CF0, &qword_1001AED70);
  v42 = sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
  View.containerRelativeFrame(_:alignment:)();

  v43 = v46[0];
  v44 = v50;
  (*(v46[0] + 16))(v40, v6, v50);
  swift_storeEnumTagMultiPayload();
  sub_100133E74();
  v56 = v41;
  *&v57 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v49;
  _ConditionalContent<>.init(storage:)();
  sub_10000D58C(v45, v52, &qword_1002206E0, &qword_1001B8F20);
  swift_storeEnumTagMultiPayload();
  sub_100133D70();
  _ConditionalContent<>.init(storage:)();
  sub_10000D52C(v45, &qword_1002206E0, &qword_1001B8F20);
  return (*(v43 + 8))(v6, v44);
}

__n128 sub_1001323CC@<Q0>(uint64_t a4@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v9 = Image.resizable(capInsets:resizingMode:)();
  (*(v6 + 8))(v8, v5);
  v19 = v9;
  v20.n128_u64[0] = 0;
  v20.n128_u16[4] = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
  sub_100079534();
  View.containerRelativeFrame(_:alignment:)();

  *(a4 + *(sub_100009F70(&qword_100220760, &qword_1001B8F80) + 36)) = 0;
  *(a4 + *(sub_100009F70(&qword_100220768, &qword_1001B8F88) + 36)) = 0x3FF0000000000000;
  v10 = a4 + *(sub_100009F70(&qword_100220770, &qword_1001B8F90) + 36);
  *v10 = 0x4038000000000000;
  *(v10 + 8) = 1;
  *(a4 + *(sub_100009F70(&qword_100220778, &qword_1001B8F98) + 36)) = 0;
  v11 = static Alignment.center.getter();
  v13 = v12;
  sub_10013266C(&static Color.clear.getter, &static Color.black.getter, &v19);
  v14 = v19;
  v17 = v21;
  v18 = v20;
  v15 = a4 + *(sub_100009F70(&qword_100220780, &qword_1001B8FA0) + 36);
  *v15 = v11;
  *(v15 + 8) = v13;
  *(v15 + 16) = v14;
  result = v18;
  *(v15 + 40) = v17;
  *(v15 + 24) = result;
  return result;
}

double sub_10013266C@<D0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001ACB00;
  *(v8 + 32) = a1();
  *(v8 + 40) = a2();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v10;
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  return result;
}

double sub_100132730@<D0>(uint64_t a1@<X8>)
{
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001ACB00;
  *(v2 + 32) = static Color.clear.getter();
  static Color.black.getter();
  v3 = Color.opacity(_:)();

  *(v2 + 40) = v3;
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

__n128 sub_1001327F0@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = static HorizontalAlignment.center.getter();
  LOBYTE(v46[0]) = 0;
  sub_100132B40(a2, a3, v7, &v49);
  v67 = v55;
  v68 = v56;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v61 = v49;
  v62 = v50;
  v70[6] = v55;
  v70[7] = v56;
  v70[2] = v51;
  v70[3] = v52;
  v70[4] = v53;
  v70[5] = v54;
  v69 = v57;
  v71 = v57;
  v70[0] = v49;
  v70[1] = v50;
  sub_10000D58C(&v61, v48, &qword_1002206C0, &qword_1001B8F10);
  sub_10000D52C(v70, &qword_1002206C0, &qword_1001B8F10);
  *&v58[87] = v66;
  *&v58[103] = v67;
  *&v58[119] = v68;
  *&v58[23] = v62;
  *&v58[39] = v63;
  *&v58[55] = v64;
  *&v58[71] = v65;
  v58[135] = v69;
  *&v58[7] = v61;
  v8 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v49) = 0;
  v17 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v59 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v60[55] = v52;
  *&v60[71] = v53;
  *&v60[87] = v54;
  *&v60[103] = v55;
  *&v60[7] = v49;
  *&v60[23] = v50;
  *&v60[39] = v51;
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = static Alignment.center.getter();
  v28 = v27;
  sub_100132DD4(a2, a3, v46);
  v29 = *&v58[64];
  *(a4 + 97) = *&v58[80];
  v30 = *&v58[112];
  *(a4 + 113) = *&v58[96];
  *(a4 + 129) = v30;
  v31 = *v58;
  *(a4 + 33) = *&v58[16];
  v32 = *&v58[48];
  *(a4 + 49) = *&v58[32];
  v33 = v47;
  *(a4 + 65) = v32;
  *(a4 + 81) = v29;
  result = v46[0];
  v35 = v46[1];
  *a4 = v45;
  *(a4 + 8) = 0x4032000000000000;
  *(a4 + 16) = 0;
  *(a4 + 145) = *&v58[128];
  *(a4 + 17) = v31;
  *(a4 + 160) = v8;
  *(a4 + 168) = v10;
  *(a4 + 176) = v12;
  *(a4 + 184) = v14;
  *(a4 + 192) = v16;
  *(a4 + 200) = 0;
  *(a4 + 208) = v17;
  *(a4 + 216) = v19;
  *(a4 + 224) = v21;
  *(a4 + 232) = v23;
  *(a4 + 240) = v25;
  *(a4 + 248) = 0;
  v36 = *&v60[64];
  v37 = *&v60[96];
  *(a4 + 329) = *&v60[80];
  *(a4 + 345) = v37;
  *(a4 + 360) = *&v60[111];
  v38 = *&v60[16];
  *(a4 + 249) = *v60;
  v39 = *&v60[32];
  v40 = *&v60[48];
  *(a4 + 265) = v38;
  *(a4 + 281) = v39;
  *(a4 + 297) = v40;
  *(a4 + 313) = v36;
  v41 = v48[1];
  *(a4 + 368) = v48[0];
  *(a4 + 384) = v41;
  v42 = v48[6];
  v43 = v48[5];
  *(a4 + 432) = v48[4];
  *(a4 + 448) = v43;
  v44 = v48[3];
  *(a4 + 400) = v48[2];
  *(a4 + 416) = v44;
  *(a4 + 464) = v42;
  *(a4 + 480) = result;
  *(a4 + 496) = v35;
  *(a4 + 512) = v33;
  *(a4 + 520) = v26;
  *(a4 + 528) = v28;
  *(a4 + 536) = 0;
  return result;
}

uint64_t sub_100132B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for TourPhotosView(0, a1, a2, a3);
  v9 = sub_10012EBF8(v5, v6, v7, v8);
  v10 = *(v9 + 48);
  v46 = *(v9 + 40);

  v11 = LocalizedStringKey.init(stringLiteral:)();
  v43 = v12;
  v44 = v11;
  v41 = v13;
  v45 = v14;
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v17 = v16;
  v40 = v18;
  v42 = v19;
  type metadata accessor for CGSize(0);
  v47 = 0u;
  v50 = 0u;
  State.init(wrappedValue:)();
  v20 = v57;
  v21 = v58;
  sub_10012EBF8(v5, v22, v23, v24);
  v25 = sub_100075A44();

  v29 = 0.0;
  if (v25)
  {
    sub_10012EBF8(v5, v26, v27, v28);
    v48 = sub_1000759D8();

    sub_10012EBF8(v5, v30, v31, v32);
    v39 = sub_1000759F0();

    v29 = sub_10012ED14();
    *&v33 = v48;
    *(&v33 + 1) = v39;
    v47 = v33;
  }

  *&v50 = v44;
  *(&v50 + 1) = v43;
  LOBYTE(v51) = v41 & 1;
  *(&v51 + 1) = v70[0];
  DWORD1(v51) = *(v70 + 3);
  *(&v51 + 1) = v45;
  *&v52 = v15;
  *(&v52 + 1) = v17;
  LOBYTE(v53) = v40 & 1;
  *(&v53 + 1) = *v69;
  DWORD1(v53) = *&v69[3];
  *(&v53 + 1) = v42;
  *&v54 = v46;
  *(&v54 + 1) = v10;
  v55 = v57;
  v56 = v58;
  v49[104] = !v25;
  *(a4 + 96) = v58;
  v34 = v50;
  v35 = v51;
  v36 = v53;
  *(a4 + 32) = v52;
  *(a4 + 48) = v36;
  *a4 = v34;
  *(a4 + 16) = v35;
  v37 = v55;
  *(a4 + 64) = v54;
  *(a4 + 80) = v37;
  *(a4 + 104) = v47;
  *(a4 + 120) = v29;
  *(a4 + 128) = !v25;
  *&v57 = v44;
  *(&v57 + 1) = v43;
  LOBYTE(v58) = v41 & 1;
  HIDWORD(v58) = *(v70 + 3);
  *(&v58 + 1) = v70[0];
  v59 = v45;
  v60 = v15;
  v61 = v17;
  v62 = v40 & 1;
  *&v63[3] = *&v69[3];
  *v63 = *v69;
  v64 = v42;
  v65 = v46;
  v66 = v10;
  v67 = v20;
  v68 = v21;
  sub_10010C498(&v50, v49);
  return sub_100133C78(&v57);
}

void *sub_100132DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContentSizeCategory();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  type metadata accessor for TourPhotosView(0, a1, a2, v13);
  sub_100024890(v12);
  (*(v7 + 104))(v10, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v6);
  LOBYTE(a2) = sub_1000B06A0(v12, v10);
  v14 = *(v7 + 8);
  v14(v10, v6);
  result = (v14)(v12, v6);
  if (a2)
  {
    sub_100009F70(&qword_1002199C0, &qword_1001B2480);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001ACB00;
    *(v16 + 32) = static Color.clear.getter();
    static Color.black.getter();
    v17 = Color.opacity(_:)();

    *(v16 + 40) = v17;
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v18 = v21[1];
    v19 = v22;
    v20 = v23;
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 24) = v20;
  return result;
}

void sub_100132FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v7 = type metadata accessor for TourPhotosView(0, a2, a3, v6);
  sub_10012EBF8(v7, v8, v9, v10);
  if (*(a1 + *(v7 + 44)))
  {

    sub_100075B14(v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10000E5F0();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001330DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TourPhotosView(0, a2, a3, a4);
  result = sub_10012EC38();
  if ((v6 & 1) == 0)
  {
    v9 = result;
    sub_10012EBF8(v4, v6, v7, v8);
    v10 = sub_1000759F0();

    return sub_10012ED74(v4, v10 * v9);
  }

  return result;
}

unint64_t sub_100133188()
{
  result = qword_100220640;
  if (!qword_100220640)
  {
    sub_10000B3DC(&qword_100220638, &qword_1001B8EC0);
    sub_100133214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220640);
  }

  return result;
}

unint64_t sub_100133214()
{
  result = qword_100220648;
  if (!qword_100220648)
  {
    sub_10000B3DC(&qword_100220650, &qword_1001B8EC8);
    sub_1001332CC();
    sub_10000D1EC(&qword_1002206A8, &qword_1002206B0, &unk_1001B8EF8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220648);
  }

  return result;
}

unint64_t sub_1001332CC()
{
  result = qword_100220658;
  if (!qword_100220658)
  {
    sub_10000B3DC(&qword_100220660, &qword_1001B8ED0);
    sub_100133358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220658);
  }

  return result;
}

unint64_t sub_100133358()
{
  result = qword_100220668;
  if (!qword_100220668)
  {
    sub_10000B3DC(&qword_100220670, &qword_1001B8ED8);
    sub_1001333E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220668);
  }

  return result;
}

unint64_t sub_1001333E4()
{
  result = qword_100220678;
  if (!qword_100220678)
  {
    sub_10000B3DC(&qword_100220680, &qword_1001B8EE0);
    sub_100133470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220678);
  }

  return result;
}

unint64_t sub_100133470()
{
  result = qword_100220688;
  if (!qword_100220688)
  {
    sub_10000B3DC(&qword_100220690, &qword_1001B8EE8);
    sub_10000D1EC(&qword_100220698, &qword_1002206A0, &qword_1001B8EF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220688);
  }

  return result;
}

void sub_10013352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TourPhotosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_100132FE0(v8, v5, v6);
}

uint64_t sub_1001335D0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v56 = a1;
  v54 = sub_100009F70(&qword_1002208A0, &qword_1001B9110) - 8;
  v5 = __chkstk_darwin(v54);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v52 = sub_100009F70(&qword_1002208A8, &unk_1001B9118) - 8;
  v9 = __chkstk_darwin(v52);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v51 = type metadata accessor for RoundedRectangle();
  v13 = *(v51 + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  v16 = *(v15 - 8);
  v48 = *(v16 + 104);
  v50 = v16 + 104;
  v48(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #2.0 }

  v47 = _Q0;
  *v12 = _Q0;
  v46 = objc_opt_self();
  v22 = [v46 tertiaryLabelColor];
  v23 = Color.init(uiColor:)();
  v45 = sub_100009F70(&qword_100218DD0, &qword_1001AD870);
  *&v12[*(v45 + 36)] = v23;
  v44 = sub_100009F70(&qword_1002208B0, &qword_1001B9128);
  v24 = &v12[*(v44 + 36)];
  v25 = sub_100009F70(&qword_1002208B8, &qword_1001B9130);
  v26 = *(v25 + 28);
  v27 = enum case for ColorScheme.light(_:);
  v28 = type metadata accessor for ColorScheme();
  v29 = *(*(v28 - 8) + 104);
  v29(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = v52;
  v31 = &v12[*(v52 + 44)];
  v32 = v58;
  *v31 = v57;
  *(v31 + 1) = v32;
  *(v31 + 2) = v59;
  v48(&v8[*(v51 + 20)], v49, v15);
  *v8 = v47;
  v33 = [v46 secondaryLabelColor];
  *&v8[*(v45 + 36)] = Color.init(uiColor:)();
  v34 = &v8[*(v44 + 36)];
  v29(v34 + *(v25 + 28), v27, v28);
  *v34 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = &v8[*(v30 + 44)];
  v36 = v61;
  *v35 = v60;
  *(v35 + 1) = v36;
  *(v35 + 2) = v62;
  v37 = v53;
  v38 = &v8[*(v54 + 44)];
  *v38 = a4;
  *(v38 + 1) = 0;
  sub_10000D58C(v12, v37, &qword_1002208A8, &unk_1001B9118);
  v39 = v55;
  sub_10000D58C(v8, v55, &qword_1002208A0, &qword_1001B9110);
  v40 = v56;
  sub_10000D58C(v37, v56, &qword_1002208A8, &unk_1001B9118);
  v41 = sub_100009F70(&qword_1002208C0, &qword_1001B9168);
  sub_10000D58C(v39, v40 + *(v41 + 48), &qword_1002208A0, &qword_1001B9110);
  sub_10000D52C(v8, &qword_1002208A0, &qword_1001B9110);
  sub_10000D52C(v12, &qword_1002208A8, &unk_1001B9118);
  sub_10000D52C(v39, &qword_1002208A0, &qword_1001B9110);
  return sub_10000D52C(v37, &qword_1002208A8, &unk_1001B9118);
}

uint64_t sub_100133ABC@<X0>(char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = static Alignment.leading.getter();
  *(a2 + 1) = v7;
  v8 = sub_100009F70(&qword_100220888, &qword_1001B90F8);
  sub_1001335D0(&a2[*(v8 + 44)], v4, v5, v6);
  v9 = *(sub_100009F70(&qword_100220890, &qword_1001B9100) + 36);
  v10 = enum case for BlendMode.plusLighter(_:);
  v11 = type metadata accessor for BlendMode();
  (*(*(v11 - 8) + 104))(&a2[v9], v10, v11);
  result = sub_100009F70(&qword_100220898, &qword_1001B9108);
  a2[*(result + 36)] = 1;
  return result;
}

uint64_t sub_100133BB0(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_100133CE4()
{
  result = qword_1002206D0;
  if (!qword_1002206D0)
  {
    sub_10000B3DC(&qword_1002206C8, &qword_1001B8F18);
    sub_100133D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206D0);
  }

  return result;
}

unint64_t sub_100133D70()
{
  result = qword_1002206D8;
  if (!qword_1002206D8)
  {
    sub_10000B3DC(&qword_1002206E0, &qword_1001B8F20);
    sub_100133E74();
    sub_10000B3DC(&qword_100219CF0, &qword_1001AED70);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206D8);
  }

  return result;
}

unint64_t sub_100133E74()
{
  result = qword_1002206E8;
  if (!qword_1002206E8)
  {
    sub_10000B3DC(&qword_1002206F0, &qword_1001B8F28);
    sub_100133F2C();
    sub_10000D1EC(&qword_100220738, &qword_100220740, &unk_1001B8F58, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206E8);
  }

  return result;
}

unint64_t sub_100133F2C()
{
  result = qword_1002206F8;
  if (!qword_1002206F8)
  {
    sub_10000B3DC(&qword_100220700, &qword_1001B8F30);
    sub_100133FE4();
    sub_10000D1EC(&qword_100220728, &qword_100220730, &qword_1001B8F50, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206F8);
  }

  return result;
}

unint64_t sub_100133FE4()
{
  result = qword_100220708;
  if (!qword_100220708)
  {
    sub_10000B3DC(&qword_100220710, &qword_1001B8F38);
    sub_1001349C0(&qword_100220718, &qword_100220720, &unk_1001B8F40);
    sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220708);
  }

  return result;
}

uint64_t sub_1001340C8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for TourPhotosView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1001305AC(v7, v4, v5, a2);
}

uint64_t sub_10013416C()
{

  return swift_deallocObject();
}

uint64_t sub_1001341A4(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_100134218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for TourPhotosView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));
  type metadata accessor for TourPhotosViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v8, v10);

  v11 = v7[14];
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001343C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TourPhotosView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10013080C(a1, v9, v6, v7, a3);
}

unint64_t sub_100134464()
{
  result = qword_100220790;
  if (!qword_100220790)
  {
    sub_10000B3DC(&qword_100220788, &qword_1001B8FC8);
    sub_1001344F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220790);
  }

  return result;
}

unint64_t sub_1001344F0()
{
  result = qword_100220798;
  if (!qword_100220798)
  {
    sub_10000B3DC(&qword_1002207A0, &qword_1001B8FD0);
    sub_10013457C();
    sub_100134A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220798);
  }

  return result;
}

unint64_t sub_10013457C()
{
  result = qword_1002207A8;
  if (!qword_1002207A8)
  {
    sub_10000B3DC(&qword_1002207B0, &qword_1001B8FD8);
    sub_100134608();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207A8);
  }

  return result;
}

unint64_t sub_100134608()
{
  result = qword_1002207B8;
  if (!qword_1002207B8)
  {
    sub_10000B3DC(&qword_1002207C0, &qword_1001B8FE0);
    sub_1001346C0();
    sub_10000D1EC(&qword_100220738, &qword_100220740, &unk_1001B8F58, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207B8);
  }

  return result;
}

unint64_t sub_1001346C0()
{
  result = qword_1002207C8;
  if (!qword_1002207C8)
  {
    sub_10000B3DC(&qword_1002207D0, &qword_1001B8FE8);
    sub_100134778();
    sub_10000D1EC(&qword_100220828, &qword_100220830, &qword_1001B9020, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207C8);
  }

  return result;
}

unint64_t sub_100134778()
{
  result = qword_1002207D8;
  if (!qword_1002207D8)
  {
    sub_10000B3DC(&qword_1002207E0, &qword_1001B8FF0);
    sub_100134830();
    sub_10000D1EC(&qword_100220818, &qword_100220820, &qword_1001B9018, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207D8);
  }

  return result;
}

unint64_t sub_100134830()
{
  result = qword_1002207E8;
  if (!qword_1002207E8)
  {
    sub_10000B3DC(&qword_1002207F0, &qword_1001B8FF8);
    sub_1001348E8();
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8, &qword_1001B9010, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207E8);
  }

  return result;
}

unint64_t sub_1001348E8()
{
  result = qword_1002207F8;
  if (!qword_1002207F8)
  {
    sub_10000B3DC(&qword_100220800, &qword_1001B9000);
    sub_1001349C0(&qword_100220808, &qword_100220810, &qword_1001B9008);
    sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207F8);
  }

  return result;
}

uint64_t sub_1001349C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    sub_10000B3DC(&qword_10021B5E8, &qword_1001B7A90);
    sub_100079534();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100134A74()
{
  result = qword_100220838;
  if (!qword_100220838)
  {
    sub_10000B3DC(&qword_100220840, &qword_1001B9028);
    sub_10000B3DC(&qword_100219CF0, &qword_1001AED70);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0, &qword_1001AED70, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_100220738, &qword_100220740, &unk_1001B8F58, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220838);
  }

  return result;
}

uint64_t sub_100134BAC(void *a1)
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_10000B3DC(&qword_1002205F8, &qword_1001B8E98);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_10000D1EC(&qword_100220600, &qword_1002205F8, &qword_1001B8E98, &protocol conformance descriptor for AsyncImage<A>);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100220608, &unk_1001B8EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021B630, &qword_1001B1308);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100220610, &qword_1001B8EB0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002192A8, &qword_1001AE260);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_100220618, &qword_100220608, &unk_1001B8EA0, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100220620, &qword_100220610, &qword_1001B8EB0, &protocol conformance descriptor for _OverlayModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10001F060();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001350D0()
{
  result = qword_1002208C8;
  if (!qword_1002208C8)
  {
    sub_10000B3DC(&qword_100220898, &qword_1001B9108);
    sub_10013515C();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002208C8);
  }

  return result;
}

unint64_t sub_10013515C()
{
  result = qword_1002208D0;
  if (!qword_1002208D0)
  {
    sub_10000B3DC(&qword_100220890, &qword_1001B9100);
    sub_10000D1EC(&qword_1002208D8, qword_1002208E0, &qword_1001B9170, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002208D0);
  }

  return result;
}

uint64_t sub_10013521C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10013527C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  State.init(wrappedValue:)();
  *a3 = v10;
  a3[1] = v11;
  v7 = type metadata accessor for SavedWallpaperView(0, *(v5 + 80), *(v5 + 88), v6);
  sub_10000F618(a2, a3 + *(v7 + 36), &qword_100218950, &unk_1001B5000);
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100135384()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  v1._object = 0x80000001001C1570;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  return LocalizedStringKey.init(stringInterpolation:)();
}

void sub_100135480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SavedWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_1000959F0(319, &qword_10021A308, &type metadata accessor for DismissAction);
    if (v5 <= 0x3F)
    {
      sub_1000959F0(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100135578(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001356C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100135848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SavedWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_10013589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009F70(&qword_100219710, &qword_1001B29A0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000D58C(v2 + *(a1 + 36), &v15 - v10, &qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100135AA0(uint64_t a1)
{
  sub_100009F70(&qword_100220968, &qword_1001B9258);
  sub_10000B3DC(&qword_100220970, &unk_1001B9260);
  sub_10000B3DC(&qword_10021A8A8, &qword_1001BA440);
  sub_10000B3DC(&qword_100220978, &qword_1001B9270);
  sub_100138D3C();
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A8B0, &qword_1001B51F0);
  sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_100135C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_100220978, &qword_1001B9270);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_100009F70(&qword_100220970, &unk_1001B9260);
  v30 = *(v14 - 8);
  v31 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v17 = sub_100009F70(&qword_100220998, &qword_1001B9288);
  v18 = a3;
  sub_100135FAC(a1, a2, a3, &v13[*(v17 + 44)]);
  LOBYTE(a3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = &v13[*(v11 + 36)];
  *v19 = a3;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v24 = sub_100138D3C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);
  sub_10000D52C(v13, &qword_100220978, &qword_1001B9270);
  v33 = a2;
  v34 = v18;
  v35 = a1;
  sub_100009F70(&qword_10021A8A8, &qword_1001BA440);
  v36 = v11;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = sub_10000B3DC(&qword_10021A8B0, &qword_1001B51F0);
  v26 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  View.toolbar<A>(content:)();
  return (*(v30 + 8))(v16, v27);
}

uint64_t sub_100135FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a1;
  v172 = a4;
  v6 = sub_100009F70(&qword_1002209A0, &unk_1001B9290);
  v169 = *(v6 - 8);
  v170 = v6;
  __chkstk_darwin(v6);
  v158 = &v153 - v7;
  v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v8 - 8);
  v166 = &v153 - v9;
  v168 = type metadata accessor for URL();
  v175 = *(v168 - 8);
  v10 = __chkstk_darwin(v168);
  v156 = v11;
  v157 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v153 - v12;
  v13 = sub_100009F70(&qword_1002209A8, &qword_1001B92A0);
  v14 = __chkstk_darwin(v13 - 8);
  v171 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v176 = &v153 - v16;
  v174 = a2;
  v180 = a3;
  v183 = type metadata accessor for SavedWallpaperView(0, a2, a3, v17);
  v18 = *(v183 - 8);
  v173 = *(v18 + 64);
  __chkstk_darwin(v183);
  v177 = &v153 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100009F70(&qword_1002209B0, &qword_1001B92A8);
  __chkstk_darwin(v24);
  v26 = &v153 - v25;
  v160 = sub_100009F70(&qword_1002209B8, &qword_1001B92B0);
  __chkstk_darwin(v160);
  v163 = &v153 - v27;
  v159 = sub_100009F70(&qword_1002209C0, &qword_1001B92B8);
  __chkstk_darwin(v159);
  v164 = &v153 - v28;
  v178 = sub_100009F70(&qword_1002209C8, &qword_1001B92C0);
  v165 = *(v178 - 8);
  v29 = __chkstk_darwin(v178);
  v162 = (&v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v161 = &v153 - v31;
  v32 = sub_100009F70(&qword_1002209D0, &qword_1001B92C8);
  v33 = __chkstk_darwin(v32 - 8);
  v179 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v182 = &v153 - v35;
  v36 = String._bridgeToObjectiveC()();

  v37 = [objc_opt_self() imageNamed:v36];

  v155 = v18;
  if (v37)
  {
    v154 = v37;
    Image.init(uiImage:)();
    (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
    v153 = Image.resizable(capInsets:resizingMode:)();

    (*(v21 + 8))(v23, v20);
    sub_100135848(v183, v38, v39, v40);
    sub_100020768();

    v41 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(v186) = 1;
    LOBYTE(v185[0]) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v184[53] = v223;
    *&v184[69] = v224;
    *&v184[85] = v225;
    *&v184[101] = v226;
    *&v184[5] = v220;
    *&v184[21] = v221;
    v50 = &v26[*(v24 + 36)];
    *&v184[37] = v222;
    v51 = sub_100009F70(&qword_100220A20, &qword_1001B9308);
    v52 = *(v51 + 36);
    v53 = enum case for CoordinateSpace.local(_:);
    v54 = type metadata accessor for CoordinateSpace();
    (*(*(v54 - 8) + 104))(&v50[v52], v53, v54);
    *v50 = &type metadata for BezelSizePreferenceKey;
    v55 = &v50[*(v51 + 40)];
    *v55 = sub_1000D067C;
    v55[1] = 0;
    *v26 = v153;
    *(v26 + 1) = 0;
    *(v26 + 8) = 1;
    v26[24] = v41;
    *(v26 + 4) = v43;
    *(v26 + 5) = v45;
    *(v26 + 6) = v47;
    *(v26 + 7) = v49;
    v26[64] = 0;
    *(v26 + 65) = 0;
    v56 = *&v184[80];
    *(v26 + 131) = *&v184[64];
    *(v26 + 147) = v56;
    *(v26 + 163) = *&v184[96];
    *(v26 + 22) = *&v184[109];
    v57 = *&v184[16];
    *(v26 + 67) = *v184;
    *(v26 + 83) = v57;
    v58 = *&v184[48];
    *(v26 + 99) = *&v184[32];
    *(v26 + 115) = v58;
    v59 = v177;
    v60 = v183;
    (*(v18 + 16))(v177, v181, v183);
    v61 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v62 = (v173 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v174;
    v65 = v180;
    *(v63 + 16) = v174;
    *(v63 + 24) = v65;
    (*(v18 + 32))(v63 + v61, v59, v60);
    v66 = v154;
    *(v63 + v62) = v154;
    v67 = v163;
    sub_10000F618(v26, v163, &qword_1002209B0, &qword_1001B92A8);
    v68 = (v67 + *(v160 + 36));
    *v68 = sub_100139570;
    v68[1] = v63;
    v69 = v66;
    v70 = static Alignment.center.getter();
    v72 = v71;
    v73 = v164;
    v74 = &v164[*(v159 + 36)];
    v75 = v181;
    sub_100137294(v181, v64, v65, v76, v74);
    v77 = (v74 + *(sub_100009F70(&qword_100220A28, &qword_1001B9310) + 36));
    *v77 = v70;
    v77[1] = v72;
    sub_10000F618(v67, v73, &qword_1002209B8, &qword_1001B92B0);
    LOBYTE(v70) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;

    v86 = v73;
    v87 = v162;
    sub_10000F618(v86, v162, &qword_1002209C0, &qword_1001B92B8);
    v88 = v178;
    v89 = v87 + *(v178 + 36);
    *v89 = v70;
    *(v89 + 1) = v79;
    *(v89 + 2) = v81;
    *(v89 + 3) = v83;
    *(v89 + 4) = v85;
    v89[40] = 0;
    v90 = v87;
    v91 = v161;
    sub_10000F618(v90, v161, &qword_1002209C8, &qword_1001B92C0);
    v92 = v91;
    v93 = v182;
    sub_10000F618(v92, v182, &qword_1002209C8, &qword_1001B92C0);
    (*(v165 + 56))(v93, 0, 1, v88);
    v94 = v75;
    v95 = v93;
  }

  else
  {
    v95 = v182;
    (*(v165 + 56))(v182, 1, 1, v178);
    v94 = v181;
  }

  v96 = v183;
  v165 = static HorizontalAlignment.center.getter();
  v205 = 0;
  sub_100137ED0(&v186);
  v211 = *&v187[64];
  v212 = *&v187[80];
  v213[0] = *&v187[96];
  *(v213 + 9) = *&v187[105];
  v208 = *&v187[16];
  v209 = *&v187[32];
  v210 = *&v187[48];
  v206 = v186;
  v207 = *v187;
  v214[5] = *&v187[64];
  v214[6] = *&v187[80];
  v215[0] = *&v187[96];
  *(v215 + 9) = *&v187[105];
  v214[2] = *&v187[16];
  v214[3] = *&v187[32];
  v214[4] = *&v187[48];
  v214[0] = v186;
  v214[1] = *v187;
  sub_10000D58C(&v206, v185, &qword_1002209D8, &qword_1001B92D0);
  sub_10000D52C(v214, &qword_1002209D8, &qword_1001B92D0);
  *(&v204[5] + 7) = v211;
  *(&v204[6] + 7) = v212;
  *(&v204[7] + 7) = v213[0];
  v204[8] = *(v213 + 9);
  *(&v204[1] + 7) = v207;
  *(&v204[2] + 7) = v208;
  *(&v204[3] + 7) = v209;
  *(&v204[4] + 7) = v210;
  *(v204 + 7) = v206;
  LODWORD(v178) = v205;
  LODWORD(v164) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  LOBYTE(v186) = 0;
  LODWORD(v163) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113 = v166;
  URL.init(string:)();

  v114 = v175;
  v115 = v168;
  v116 = (*(v175 + 48))(v113, 1, v168);
  v117 = v176;
  if (v116 == 1)
  {
    sub_10000D52C(v113, qword_100218748, &unk_1001AD110);
    v118 = 1;
    v119 = v170;
  }

  else
  {
    v162 = *(v114 + 32);
    v120 = v167;
    v162();
    v121 = v155;
    (*(v155 + 16))(v177, v94, v96);
    v122 = v157;
    (*(v114 + 16))(v157, v120, v115);
    v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v124 = (v173 + *(v114 + 80) + v123) & ~*(v114 + 80);
    v125 = swift_allocObject();
    v126 = v180;
    *(v125 + 16) = v174;
    *(v125 + 24) = v126;
    (*(v121 + 32))(v125 + v123, v177, v183);
    v117 = v176;
    v127 = (v162)(v125 + v124, v122, v115);
    __chkstk_darwin(v127);
    sub_100009F70(&qword_1002209F0, &qword_1001B92E8);
    sub_1001391BC();
    v128 = v158;
    Button.init(action:label:)();
    LOBYTE(v125) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v177 = v112;
    v129 = v106;
    v130 = v98;
    v132 = v131;
    v180 = v110;
    v181 = v108;
    v133 = v100;
    v135 = v134;
    v136 = v102;
    v138 = v137;
    v183 = v104;
    v140 = v139;
    (*(v175 + 8))(v167, v115);
    v119 = v170;
    v141 = &v128[*(v170 + 36)];
    *v141 = v125;
    *(v141 + 1) = v132;
    *(v141 + 2) = v135;
    v98 = v130;
    v106 = v129;
    v112 = v177;
    v100 = v133;
    *(v141 + 3) = v138;
    *(v141 + 4) = v140;
    v102 = v136;
    v110 = v180;
    v108 = v181;
    v104 = v183;
    v141[40] = 0;
    v142 = v128;
    v95 = v182;
    sub_10000F618(v142, v117, &qword_1002209A0, &unk_1001B9290);
    v118 = 0;
  }

  (*(v169 + 56))(v117, v118, 1, v119);
  v143 = v179;
  sub_10000D58C(v95, v179, &qword_1002209D0, &qword_1001B92C8);
  v144 = v171;
  sub_10000D58C(v117, v171, &qword_1002209A8, &qword_1001B92A0);
  v145 = v143;
  v146 = v172;
  sub_10000D58C(v145, v172, &qword_1002209D0, &qword_1001B92C8);
  v147 = sub_100009F70(&qword_1002209E0, &qword_1001B92D8);
  v148 = *(v147 + 48);
  *(&v185[12] + 1) = v204[5];
  *(&v185[14] + 1) = v204[6];
  *(&v185[16] + 1) = v204[7];
  *(&v185[18] + 1) = v204[8];
  *(&v185[4] + 1) = v204[1];
  *(&v185[6] + 1) = v204[2];
  *(&v185[8] + 1) = v204[3];
  *(&v185[10] + 1) = v204[4];
  v149 = v165;
  v185[0] = v165;
  v185[1] = 0x4020000000000000;
  LOBYTE(v185[2]) = v178;
  *(&v185[2] + 1) = v204[0];
  *(&v185[20] + 1) = *v219;
  HIDWORD(v185[20]) = *&v219[3];
  v150 = v164;
  LOBYTE(v185[21]) = v164;
  *(&v185[21] + 1) = *v218;
  HIDWORD(v185[21]) = *&v218[3];
  v185[22] = v98;
  v185[23] = v100;
  v185[24] = v102;
  v185[25] = v104;
  LOBYTE(v185[26]) = 0;
  *(&v185[26] + 1) = *v217;
  HIDWORD(v185[26]) = *&v217[3];
  v151 = v163;
  LOBYTE(v185[27]) = v163;
  HIDWORD(v185[27]) = *&v216[3];
  *(&v185[27] + 1) = *v216;
  v185[28] = v106;
  v185[29] = v108;
  v185[30] = v110;
  v185[31] = v112;
  LOBYTE(v185[32]) = 0;
  memcpy((v146 + v148), v185, 0x101uLL);
  sub_10000D58C(v144, v146 + *(v147 + 64), &qword_1002209A8, &qword_1001B92A0);
  sub_10000D58C(v185, &v186, &qword_1002209E8, &qword_1001B92E0);
  sub_10000D52C(v117, &qword_1002209A8, &qword_1001B92A0);
  sub_10000D52C(v182, &qword_1002209D0, &qword_1001B92C8);
  sub_10000D52C(v144, &qword_1002209A8, &qword_1001B92A0);
  *&v187[81] = v204[5];
  *&v187[97] = v204[6];
  *&v187[113] = v204[7];
  *&v187[129] = v204[8];
  *&v187[17] = v204[1];
  *&v187[33] = v204[2];
  *&v187[49] = v204[3];
  *&v187[65] = v204[4];
  *&v186 = v149;
  *(&v186 + 1) = 0x4020000000000000;
  v187[0] = v178;
  *&v187[1] = v204[0];
  *v188 = *v219;
  *&v188[3] = *&v219[3];
  v189 = v150;
  *v190 = *v218;
  *&v190[3] = *&v218[3];
  v191 = v98;
  v192 = v100;
  v193 = v102;
  v194 = v104;
  v195 = 0;
  *v196 = *v217;
  *&v196[3] = *&v217[3];
  v197 = v151;
  *&v198[3] = *&v216[3];
  *v198 = *v216;
  v199 = v106;
  v200 = v108;
  v201 = v110;
  v202 = v112;
  v203 = 0;
  sub_10000D52C(&v186, &qword_1002209E8, &qword_1001B92E0);
  return sub_10000D52C(v179, &qword_1002209D0, &qword_1001B92C8);
}

double sub_10013718C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = type metadata accessor for SavedWallpaperView(0, a4, a5, a4);
  sub_100135848(v7, v8, v9, v10);
  sub_10002003C(v6);

  sub_100135848(v7, v11, v12, v13);
  v14 = sub_10001FFB4();

  [a3 size];
  v16 = v14 / v15;
  sub_100135848(v7, v17, v18, v19);
  [a3 size];
  sub_1000203A0(v16 * v20);

  sub_100135848(v7, v21, v22, v23);
  [a3 size];
  sub_10002058C(v16 * v24);

  return result;
}

uint64_t sub_100137294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v8 = type metadata accessor for SavedWallpaperView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v27 = &v27 - v11;
  v12 = *(a2 - 8);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v28 = a1;
  v21 = sub_100135848(v8, v18, v19, v20);
  (*(v12 + 16))(v14, v21 + *(*v21 + 96), a2);

  (*(a3 + 16))(a2, a3);
  (*(v12 + 8))(v14, a2);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  v23 = v27;
  (*(v9 + 16))(v27, v28, v8);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v9 + 32))(v25 + v24, v23, v8);
  sub_100009F70(&qword_100220A30, &qword_1001B9318);
  sub_100139868();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_1001375B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a3;
  v83 = a4;
  v84 = a2;
  v81 = a1;
  v89 = a5;
  v5 = sub_100009F70(&qword_100218DD0, &qword_1001AD870);
  __chkstk_darwin(v5);
  v7 = (&v75 - v6);
  v77 = sub_100009F70(&qword_100220A98, &qword_1001B9348);
  __chkstk_darwin(v77);
  v76 = &v75 - v8;
  v88 = sub_100009F70(&qword_100220A88, &qword_1001B9340);
  v9 = __chkstk_darwin(v88);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v75 - v11;
  v86 = sub_100009F70(&qword_100220AB0, &qword_1001B9350);
  __chkstk_darwin(v86);
  v87 = &v75 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100009F70(&qword_100220A48, &qword_1001B9320);
  v17 = __chkstk_darwin(v85);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v75 - v20;
  v21 = type metadata accessor for AsyncImagePhase();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v81, v21);
  if ((*(v22 + 88))(v24, v21) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v26 = Image.resizable(capInsets:resizingMode:)();
    (*(v14 + 8))(v16, v13);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v90[54] = v95;
    *&v90[70] = v96;
    *&v90[86] = v97;
    *&v90[102] = v98;
    *&v90[6] = v92;
    *&v90[22] = v93;
    v91 = 1;
    *&v90[38] = v94;
    v28 = type metadata accessor for SavedWallpaperView(0, v82, v83, v27);
    sub_100135848(v28, v29, v30, v31);
    sub_1000206F0();

    sub_100135848(v28, v32, v33, v34);
    sub_100020714();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_100135848(v28, v35, v36, v37);
    v38 = sub_100020738();

    v39 = &v19[*(v85 + 36)];
    v40 = *(type metadata accessor for RoundedRectangle() + 20);
    v41 = enum case for RoundedCornerStyle.continuous(_:);
    v42 = type metadata accessor for RoundedCornerStyle();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = v38;
    v39[1] = v38;
    *(v39 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
    v43 = *&v90[80];
    *(v19 + 82) = *&v90[64];
    *(v19 + 98) = v43;
    *(v19 + 114) = *&v90[96];
    v44 = *&v90[16];
    *(v19 + 18) = *v90;
    *(v19 + 34) = v44;
    v45 = *&v90[48];
    *(v19 + 50) = *&v90[32];
    *(v19 + 66) = v45;
    v46 = v100;
    *(v19 + 136) = v99;
    *v19 = v26;
    *(v19 + 1) = 0;
    *(v19 + 8) = 257;
    *(v19 + 16) = *&v90[110];
    *(v19 + 152) = v46;
    *(v19 + 168) = v101;
    *(v19 + 92) = 0;
    v47 = v19;
    v48 = v79;
    sub_10000F618(v47, v79, &qword_100220A48, &qword_1001B9320);
    sub_10000D58C(v48, v87, &qword_100220A48, &qword_1001B9320);
    swift_storeEnumTagMultiPayload();
    sub_1001398F4();
    sub_100139B7C();
    _ConditionalContent<>.init(storage:)();

    return sub_10000D52C(v48, &qword_100220A48, &qword_1001B9320);
  }

  else
  {
    v50 = type metadata accessor for SavedWallpaperView(0, v82, v83, v25);
    sub_100135848(v50, v51, v52, v53);
    v54 = sub_100020738();

    v55 = *(type metadata accessor for RoundedRectangle() + 20);
    v56 = enum case for RoundedCornerStyle.continuous(_:);
    v57 = type metadata accessor for RoundedCornerStyle();
    (*(*(v57 - 8) + 104))(v7 + v55, v56, v57);
    *v7 = v54;
    v7[1] = v54;
    *(v7 + *(v5 + 36)) = static Color.black.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v58 = v76;
    sub_10000F618(v7, v76, &qword_100218DD0, &qword_1001AD870);
    v59 = (v58 + *(v77 + 36));
    v60 = v95;
    v61 = v97;
    v62 = v98;
    v59[4] = v96;
    v59[5] = v61;
    v59[6] = v62;
    v63 = v93;
    v64 = v94;
    *v59 = v92;
    v59[1] = v63;
    v59[2] = v64;
    v59[3] = v60;
    sub_100135848(v50, v65, v66, v67);
    sub_1000206F0();

    sub_100135848(v50, v68, v69, v70);
    sub_100020714();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v71 = v78;
    sub_10000F618(v58, v78, &qword_100220A98, &qword_1001B9348);
    v72 = (v71 + *(v88 + 36));
    v73 = v100;
    *v72 = v99;
    v72[1] = v73;
    v72[2] = v101;
    v74 = v80;
    sub_10000F618(v71, v80, &qword_100220A88, &qword_1001B9340);
    sub_10000D58C(v74, v87, &qword_100220A88, &qword_1001B9340);
    swift_storeEnumTagMultiPayload();
    sub_1001398F4();
    sub_100139B7C();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v74, &qword_100220A88, &qword_1001B9340);
    return (*(v22 + 8))(v24, v21);
  }
}

uint64_t sub_100137ED0@<X0>(_OWORD *a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v39 = v8;
  v40 = v7;
  v10 = v9;
  v36 = v11;

  sub_10000D60C(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v37 = v10 & 1;
  LOBYTE(v66[0]) = v10 & 1;
  LOBYTE(v56[0]) = 0;
  sub_100135384();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10000D60C(v12, v14, v16 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v66[0] = qword_100230570;

  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000D60C(v17, v19, v21 & 1);

  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v66[0]) = v26 & 1;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = v36;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = *v44;
  *(&v49 + 1) = v35;
  v50 = 1;
  v41[0] = 1;
  *&v51 = v22;
  *(&v51 + 1) = v24;
  LOBYTE(v52) = v26 & 1;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = *v43;
  *(&v52 + 1) = v28;
  *&v53 = v29;
  *(&v53 + 1) = 2;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v42[3];
  *(&v54 + 1) = *v42;
  *(&v54 + 1) = v30;
  v55 = 1;
  *&v41[8] = v51;
  v41[72] = 1;
  *&v41[56] = v54;
  *&v41[40] = v53;
  *&v41[24] = v52;
  v31 = v46;
  v32 = v47;
  v33 = v49;
  a1[2] = v48;
  a1[3] = v33;
  *a1 = v31;
  a1[1] = v32;
  *(a1 + 121) = *&v41[57];
  a1[6] = *&v41[32];
  a1[7] = *&v41[48];
  a1[4] = *v41;
  a1[5] = *&v41[16];
  v56[0] = v22;
  v56[1] = v24;
  v57 = v26 & 1;
  *v58 = *v43;
  *&v58[3] = *&v43[3];
  v59 = v28;
  v60 = v29;
  v61 = 2;
  v62 = 0;
  *v63 = *v42;
  *&v63[3] = *&v42[3];
  v64 = v30;
  v65 = 1;
  sub_10000D58C(&v46, v66, &qword_10021A630, &qword_1001BCBD0);
  sub_10000D58C(&v51, v66, &qword_10021A630, &qword_1001BCBD0);
  sub_10000D52C(v56, &qword_10021A630, &qword_1001BCBD0);
  v66[0] = v40;
  v66[1] = v39;
  v67 = v37;
  *v68 = *v45;
  *&v68[3] = *&v45[3];
  v69 = v36;
  v70 = KeyPath;
  v71 = 2;
  v72 = 0;
  *v73 = *v44;
  *&v73[3] = *&v44[3];
  v74 = v35;
  v75 = 1;
  return sub_10000D52C(v66, &qword_10021A630, &qword_1001BCBD0);
}