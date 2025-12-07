uint64_t sub_100194540()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1149;
  }

  else
  {
    return 640;
  }
}

uint64_t sub_1001945A4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 2040;
  }

  else
  {
    return 1136;
  }
}

uint64_t sub_100194608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9];
  (*(v8 + 16))(&v18[-v9], v3, v7);
  v11 = *(v6 - 8);
  v12 = 1;
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    v6 = v7;
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = sub_1001945A4();
    v15 = sub_100194540();
    (*(v13 + 32))(v14, v15, v6, v13);
    v12 = 0;
    v8 = v11;
  }

  (*(v8 + 8))(v10, v6);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a2, v12, 1, v16);
}

uint64_t sub_100194808(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_1001949B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v47 = sub_100009F70(&qword_100222EA0, &qword_1001BD080);
  __chkstk_darwin(v47);
  v14 = &v45 - v13;
  sub_100194608(a1, v12);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a1 + 16);
  (*(v8 + 32))(v16 + v15, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100009F70(&qword_100221140, &qword_1001B9F60);
  sub_10019540C();
  AsyncImage.init(url:scale:transaction:content:)();
  v17 = &v14[*(sub_100009F70(&qword_100222EA8, &qword_1001BD088) + 36)];
  *v17 = 0x3FFC71C71C71C71CLL;
  *(v17 + 4) = 0;
  *&v14[*(sub_100009F70(&qword_100222EB0, &qword_1001BD090) + 36)] = 0;
  v18 = &v14[*(sub_100009F70(&qword_100222EB8, &qword_1001BD098) + 36)];
  v19 = *(v5 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #24.0 }

  v45 = _Q0;
  *v18 = _Q0;
  *&v18[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  v28 = v46;
  v22(&v46[*(v5 + 28)], v20, v21);
  *v28 = v45;
  static Color.black.getter();
  v29 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = &v14[*(sub_100009F70(&qword_100222EC0, &qword_1001BD0A0) + 36)];
  sub_1000A3BD8(v28, v30);
  v31 = v30 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v32 = v50;
  *v31 = v49;
  *(v31 + 16) = v32;
  *(v31 + 32) = v51;
  v33 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  sub_1000A3C3C(v28);
  v37 = (v30 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = (v30 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
  *v41 = v38;
  v41[1] = v40;
  static Color.black.getter();
  v42 = Color.opacity(_:)();

  v43 = &v14[*(sub_100009F70(&qword_100222EC8, &qword_1001BD0A8) + 36)];
  *v43 = v42;
  *(v43 + 8) = xmmword_1001B59F0;
  *(v43 + 3) = 0x4024000000000000;
  v14[*(v47 + 36)] = 1;
  sub_100195498();
  View.accessibilityIdentifier(_:)();
  return sub_100195890(v14);
}

void sub_100194F00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v23 = a2;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AsyncImagePhase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  if ((*(v14 + 88))(v16, v13) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    v24 = v18;
    v25 = 0;
    v26 = 257;
    v27 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v19 = v28;
    v20 = v29;
    v21 = v30;
  }

  else
  {
    v22 = type metadata accessor for HeroImageView(0, a3, a4, v17);
    v24 = sub_100194808(v22);
    v25 = 0;
    v26 = 0;
    v27 = 1;
    sub_100009F70(&qword_10021B5E8, &qword_1001B7A90);
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v23 = v28;
    v20 = v29;
    v21 = v30;
    (*(v14 + 8))(v16, v13);
    v19 = v23;
  }

  *a5 = v19;
  *(a5 + 16) = v20;
  *(a5 + 18) = v21;
}

uint64_t sub_100195268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for HeroImageView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v4 + v7, 1, v5))
  {
    (*(v8 + 8))(v4 + v7, v5);
  }

  return swift_deallocObject();
}

void sub_100195370(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for HeroImageView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_100194F00(a1, v9, v6, v7, a3);
}

unint64_t sub_10019540C()
{
  result = qword_100221148;
  if (!qword_100221148)
  {
    sub_10000B3DC(&qword_100221140, &qword_1001B9F60);
    sub_100079534();
    sub_10004FA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221148);
  }

  return result;
}

unint64_t sub_100195498()
{
  result = qword_100222ED0;
  if (!qword_100222ED0)
  {
    sub_10000B3DC(&qword_100222EA0, &qword_1001BD080);
    sub_100195524();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222ED0);
  }

  return result;
}

unint64_t sub_100195524()
{
  result = qword_100222ED8;
  if (!qword_100222ED8)
  {
    sub_10000B3DC(&qword_100222EC8, &qword_1001BD0A8);
    sub_1001955B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222ED8);
  }

  return result;
}

unint64_t sub_1001955B0()
{
  result = qword_100222EE0;
  if (!qword_100222EE0)
  {
    sub_10000B3DC(&qword_100222EC0, &qword_1001BD0A0);
    sub_100195668();
    sub_10000D1EC(&qword_10021BDF0, &qword_10021BDF8, &qword_1001B2420, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EE0);
  }

  return result;
}

unint64_t sub_100195668()
{
  result = qword_100222EE8;
  if (!qword_100222EE8)
  {
    sub_10000B3DC(&qword_100222EB8, &qword_1001BD098);
    sub_100195720();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EE8);
  }

  return result;
}

unint64_t sub_100195720()
{
  result = qword_100222EF0;
  if (!qword_100222EF0)
  {
    sub_10000B3DC(&qword_100222EB0, &qword_1001BD090);
    sub_1001957D8();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EF0);
  }

  return result;
}

unint64_t sub_1001957D8()
{
  result = qword_100222EF8;
  if (!qword_100222EF8)
  {
    sub_10000B3DC(&qword_100222EA8, &qword_1001BD088);
    sub_10000D1EC(&qword_100222F00, &qword_100222F08, &qword_1001BD0B0, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EF8);
  }

  return result;
}

uint64_t sub_100195890(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222EA0, &qword_1001BD080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001958FC()
{
  result = qword_100222F10;
  if (!qword_100222F10)
  {
    sub_10000B3DC(qword_100222F18, &qword_1001BD0B8);
    sub_100195498();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222F10);
  }

  return result;
}

uint64_t sub_100195988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MusicViewModel(0, a2, a3, a4);
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  v11 = type metadata accessor for MusicModule(0, a2, a3, v10);
  v12 = v11[9];
  *(a5 + v12) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(a5 + v13) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  swift_storeEnumTagMultiPayload();
  v14 = (a5 + v11[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v14 = result;
  v14[1] = v16;
  return result;
}

void sub_100195AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MusicViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_100195EFC(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
    if (v5 <= 0x3F)
    {
      sub_100195EFC(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
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

uint64_t sub_100195C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MusicViewModel(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_8:

    return v10(v11, a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838, &qword_1001B2330);
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

  v15 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = *(a3 + 40);
    goto LABEL_7;
  }

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

uint64_t sub_100195D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicViewModel(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a4 + 36);
    }

    else
    {
      result = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + *(a4 + 44)) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = *(a4 + 40);
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100195EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100195F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = type metadata accessor for TaskPriority();
  v75 = *(v76 - 8);
  v3 = __chkstk_darwin(v76);
  v74 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v80 = a1;
  v73 = *(a1 - 8);
  v82 = *(v73 + 64);
  __chkstk_darwin(v3);
  v72 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3DC(&qword_10021AFA8, &unk_1001B6A30);
  sub_10000B3DC(&qword_100222FA0, &qword_1001BD1A0);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v79 = *(v5 + 24);
  v9 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = v8;
  v93 = AssociatedTypeWitness;
  v94 = v11;
  v95 = WitnessTable;
  v96 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v91 = sub_10019A1B0();
  v15 = swift_getWitnessTable();
  v88 = &protocol witness table for EmptyView;
  v89 = v15;
  v90 = &protocol witness table for EmptyView;
  v16 = swift_getWitnessTable();
  v92 = v14;
  v93 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = v14;
  v93 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = &type metadata for Never;
  v93 = OpaqueTypeMetadata2;
  v94 = &protocol witness table for Never;
  v95 = OpaqueTypeConformance2;
  v19 = type metadata accessor for List();
  v20 = swift_getWitnessTable();
  v92 = v19;
  v93 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for PlainListStyle();
  v92 = v19;
  v93 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v92 = v21;
  v93 = v22;
  v94 = v23;
  v95 = &protocol witness table for PlainListStyle;
  v24 = swift_getOpaqueTypeMetadata2();
  v92 = v21;
  v93 = v22;
  v94 = v23;
  v95 = &protocol witness table for PlainListStyle;
  v25 = swift_getOpaqueTypeConformance2();
  v92 = v24;
  v93 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8, &qword_1001BD1C0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100218DD8, &qword_1001AD878);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v26 = type metadata accessor for VStack();
  v63 = v26;
  v67 = *(v26 - 8);
  __chkstk_darwin(v26);
  v60 = &v57 - v27;
  v78 = swift_getWitnessTable();
  v92 = v26;
  v93 = v78;
  v68 = &unk_1001C2954;
  v65 = swift_getOpaqueTypeMetadata2();
  v70 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v57 - v28;
  v69 = type metadata accessor for ModifiedContent();
  v71 = *(v69 - 8);
  v29 = __chkstk_darwin(v69);
  v64 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v66 = &v57 - v31;
  static HorizontalAlignment.leading.getter();
  v32 = v9;
  v59 = v9;
  v33 = v79;
  v83 = v9;
  v84 = v79;
  v34 = v81;
  v85 = v81;
  VStack.init(alignment:spacing:content:)();
  v58 = "Event-Page-Hero-Image";
  v35 = v73;
  v61 = *(v73 + 16);
  v36 = v72;
  v37 = v80;
  v61(v72, v34, v80);
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  v39 = *(v35 + 80);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v32;
  v40[5] = v33;
  v73 = *(v35 + 32);
  v41 = v36;
  (v73)(v40 + ((v39 + 48) & ~v39), v36, v37);
  v42 = v74;
  v43 = v63;
  v44 = v78;
  j___sScP13userInitiatedScPvgZ();
  v45 = v62;
  v46 = v60;
  sub_100009FB8(0, v42, 0xD000000000000021, (v58 | 0x8000000000000000), 91, &unk_1001BD1D0, v40, v62, v43, v44);
  (*(v75 + 8))(v42, v76);
  (*(v67 + 8))(v46, v43);
  v47 = v80;
  v61(v41, v81, v80);
  v48 = swift_allocObject();
  v49 = v79;
  *(v48 + 16) = v59;
  *(v48 + 24) = v49;
  (v73)(v48 + ((v39 + 32) & ~v39), v41, v47);
  v92 = v43;
  v93 = v78;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v65;
  View.onDisappear(perform:)();

  (*(v70 + 8))(v45, v52);
  v86 = v50;
  v87 = &protocol witness table for _AppearanceActionModifier;
  v53 = v69;
  swift_getWitnessTable();
  v54 = v66;
  sub_100157EFC();
  v55 = *(v71 + 8);
  v55(v51, v53);
  sub_100157EFC();
  return (v55)(v54, v53);
}

uint64_t sub_100196A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v86 = a4;
  v85 = sub_100009F70(&qword_100218DD0, &qword_1001AD870);
  __chkstk_darwin(v85);
  v84 = (&v68 - v6);
  sub_10000B3DC(&qword_100222FA0, &qword_1001BD1A0);
  v7 = type metadata accessor for Array();
  v82 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v104 = v7;
  *(&v104 + 1) = AssociatedTypeWitness;
  *&v105 = v9;
  *(&v105 + 1) = WitnessTable;
  *&v106 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v12 = type metadata accessor for Section();
  v103 = sub_10019A1B0();
  v13 = swift_getWitnessTable();
  v100 = &protocol witness table for EmptyView;
  v101 = v13;
  v102 = &protocol witness table for EmptyView;
  v14 = swift_getWitnessTable();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v104 = &type metadata for Never;
  *(&v104 + 1) = OpaqueTypeMetadata2;
  *&v105 = &protocol witness table for Never;
  *(&v105 + 1) = OpaqueTypeConformance2;
  v17 = type metadata accessor for List();
  v18 = swift_getWitnessTable();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for PlainListStyle();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v21 = swift_getOpaqueTypeConformance2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v22 = swift_getOpaqueTypeMetadata2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v23 = swift_getOpaqueTypeConformance2();
  *&v104 = v22;
  *(&v104 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8, &qword_1001BD1C0);
  swift_getTupleTypeMetadata3();
  v75 = type metadata accessor for TupleView();
  v74 = swift_getWitnessTable();
  v24 = type metadata accessor for VStack();
  v76 = *(v24 - 8);
  __chkstk_darwin(v24);
  v73 = &v68 - v25;
  sub_10000B3DC(&qword_100218DD8, &qword_1001AD878);
  v77 = v24;
  v81 = type metadata accessor for ModifiedContent();
  v78 = *(v81 - 8);
  v26 = __chkstk_darwin(v81);
  v80 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v79 = &v68 - v28;
  v72 = type metadata accessor for AccessibilityTraits();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100009F70(&qword_10021AFA8, &unk_1001B6A30);
  v30 = __chkstk_darwin(v87);
  v89 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v88 = &v68 - v32;
  v71 = a1;

  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  LOBYTE(v20) = v36;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v19) = v40;
  v42 = v41;

  sub_10000D60C(v33, v35, v20 & 1);

  LOBYTE(v33) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v95[0]) = v19 & 1;
  LOBYTE(v93) = 0;
  *&v96 = v37;
  *(&v96 + 1) = v39;
  v43 = v73;
  LOBYTE(v97) = v19 & 1;
  *(&v97 + 1) = v42;
  LOBYTE(v98) = v33;
  *(&v98 + 1) = v44;
  *&v99[0] = v45;
  *(&v99[0] + 1) = v46;
  *&v99[1] = v47;
  BYTE8(v99[1]) = 0;
  v48 = v69;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021AFE8, &qword_1001B0A38);
  sub_100071294();
  v49 = v89;
  View.accessibility(addTraits:)();
  (*(v70 + 8))(v48, v72);
  v106 = v98;
  v107[0] = v99[0];
  *(v107 + 9) = *(v99 + 9);
  v104 = v96;
  v105 = v97;
  sub_10000D52C(&v104, &qword_10021AFE8, &qword_1001B0A38);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v49, &qword_10021AFA8, &unk_1001B6A30);
  static HorizontalAlignment.leading.getter();
  v90 = v82;
  v91 = v83;
  v92 = v71;
  VStack.init(alignment:spacing:content:)();
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v50 = qword_1002305F8;
  v51 = *(type metadata accessor for RoundedRectangle() + 20);
  v52 = enum case for RoundedCornerStyle.continuous(_:);
  v53 = type metadata accessor for RoundedCornerStyle();
  v54 = v84;
  (*(*(v53 - 8) + 104))(v84 + v51, v52, v53);
  *v54 = v50;
  v54[1] = v50;
  v55 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v54 + *(v85 + 36)) = Color.init(uiColor:)();
  static Alignment.center.getter();
  v56 = v77;
  v57 = swift_getWitnessTable();
  sub_100139C94();
  v58 = v80;
  View.background<A>(_:alignment:)();
  sub_10000D52C(v54, &qword_100218DD0, &qword_1001AD870);
  (*(v76 + 8))(v43, v56);
  v59 = sub_10000D1EC(&qword_100218E30, &qword_100218DD8, &qword_1001AD878, &protocol conformance descriptor for _BackgroundModifier<A>);
  v95[2] = v57;
  v95[3] = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_100157EFC();
  v63 = v78;
  v64 = *(v78 + 8);
  v64(v58, v60);
  v66 = v88;
  v65 = v89;
  sub_10000D58C(v88, v89, &qword_10021AFA8, &unk_1001B6A30);
  *&v96 = v65;
  (*(v63 + 16))(v58, v62, v60);
  *(&v96 + 1) = v58;
  v95[0] = v87;
  v95[1] = v60;
  v93 = sub_10019AA5C(&qword_10021B000, &qword_10021AFA8, &unk_1001B6A30, sub_100071294);
  v94 = v61;
  sub_100151024(&v96, 2uLL, v95);
  v64(v62, v60);
  sub_10000D52C(v66, &qword_10021AFA8, &unk_1001B6A30);
  v64(v58, v60);
  return sub_10000D52C(v65, &qword_10021AFA8, &unk_1001B6A30);
}

uint64_t sub_100197520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a1;
  v145 = a4;
  v6 = sub_100009F70(&qword_100222FE0, &qword_1001BD1D8);
  v142 = *(v6 - 8);
  v143 = v6;
  __chkstk_darwin(v6);
  v114 = (&v113 - v7);
  v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v8 - 8);
  v115 = &v113 - v9;
  v10 = type metadata accessor for URL();
  v116 = *(v10 - 8);
  v117 = v10;
  __chkstk_darwin(v10);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100009F70(&qword_100222FD8, &qword_1001BD1C0);
  v12 = __chkstk_darwin(v141);
  v144 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v146 = &v113 - v14;
  v15 = type metadata accessor for PlainListStyle();
  v137 = *(v15 - 8);
  __chkstk_darwin(v15);
  v136 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v165 = v17;
  *(&v165 + 1) = AssociatedTypeWitness;
  *&v166 = v19;
  *(&v166 + 1) = WitnessTable;
  *&v167 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v22 = type metadata accessor for Section();
  v185 = sub_10019A1B0();
  v23 = swift_getWitnessTable();
  v182 = &protocol witness table for EmptyView;
  v183 = v23;
  v184 = &protocol witness table for EmptyView;
  v24 = swift_getWitnessTable();
  *&v165 = v22;
  *(&v165 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v165 = v22;
  *(&v165 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v165 = &type metadata for Never;
  v134 = OpaqueTypeMetadata2;
  *(&v165 + 1) = OpaqueTypeMetadata2;
  *&v166 = &protocol witness table for Never;
  v133 = OpaqueTypeConformance2;
  *(&v166 + 1) = OpaqueTypeConformance2;
  v27 = type metadata accessor for List();
  v132 = *(v27 - 8);
  __chkstk_darwin(v27);
  v130 = &v113 - v28;
  v29 = swift_getWitnessTable();
  *&v165 = v27;
  *(&v165 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v129 = *(v30 - 8);
  __chkstk_darwin(v30);
  v127 = v29;
  v128 = &v113 - v31;
  *&v165 = v27;
  *(&v165 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  *&v165 = v30;
  *(&v165 + 1) = v15;
  *&v166 = v32;
  *(&v166 + 1) = &protocol witness table for PlainListStyle;
  v33 = swift_getOpaqueTypeMetadata2();
  v125 = *(v33 - 8);
  __chkstk_darwin(v33);
  v123 = &v113 - v34;
  v124 = v32;
  v131 = v30;
  *&v165 = v30;
  v138 = v15;
  *(&v165 + 1) = v15;
  *&v166 = v32;
  *(&v166 + 1) = &protocol witness table for PlainListStyle;
  v35 = swift_getOpaqueTypeConformance2();
  v126 = v33;
  *&v165 = v33;
  v122 = v35;
  *(&v165 + 1) = v35;
  v152 = swift_getOpaqueTypeMetadata2();
  v149 = *(v152 - 8);
  v36 = __chkstk_darwin(v152);
  v151 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v150 = &v113 - v38;
  v39 = type metadata accessor for ColorScheme();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v113 - v44;
  v46 = sub_100009F70(&qword_100222FE8, &qword_1001BD1E0);
  __chkstk_darwin(v46 - 8);
  v119 = &v113 - v47;
  v120 = sub_100009F70(&qword_100222FF0, &qword_1001BD1E8);
  __chkstk_darwin(v120);
  v49 = &v113 - v48;
  v135 = sub_100009F70(&qword_100222FA0, &qword_1001BD1A0);
  v50 = __chkstk_darwin(v135);
  v148 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v147 = &v113 - v52;
  v139 = a2;
  v140 = a3;
  v121 = type metadata accessor for MusicModule(0, a2, a3, v53);
  sub_100024640(v45);
  (*(v40 + 104))(v43, enum case for ColorScheme.light(_:), v39);
  static ColorScheme.== infix(_:_:)();
  v54 = *(v40 + 8);
  v54(v43, v39);
  v54(v45, v39);
  v118 = Image.init(_:bundle:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1001ACB00;
  LOBYTE(v24) = static Edge.Set.leading.getter();
  *(v55 + 32) = v24;
  v56 = static Edge.Set.top.getter();
  *(v55 + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  v180 = 1;
  v58 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v158[3] + 8) = v179[3];
  *(&v158[4] + 8) = v179[4];
  *(&v158[5] + 8) = v179[5];
  *(&v158[6] + 8) = v179[6];
  *(v158 + 8) = v179[0];
  *(&v158[1] + 8) = v179[1];
  v181 = 0;
  *&v158[0] = v118;
  *(&v158[2] + 8) = v179[2];
  BYTE8(v158[7]) = v57;
  v159 = 0u;
  v160 = 0u;
  LOBYTE(v161) = 1;
  BYTE8(v161) = v58;
  *&v162 = v59;
  *(&v162 + 1) = v60;
  *&v163 = v61;
  *(&v163 + 1) = v62;
  v164 = 0;
  sub_100009F70(&qword_100222FF8, &qword_1001BD1F0);
  sub_10019A83C();
  v63 = v119;
  View.accessibilityIdentifier(_:)();
  v175 = v161;
  v176 = v162;
  v177 = v163;
  v178 = v164;
  v171 = v158[6];
  v172 = v158[7];
  v173 = v159;
  v174 = v160;
  v167 = v158[2];
  v168 = v158[3];
  v169 = v158[4];
  v170 = v158[5];
  v165 = v158[0];
  v166 = v158[1];
  sub_10000D52C(&v165, &qword_100222FF8, &qword_1001BD1F0);
  sub_10000F618(v63, v49, &qword_100222FE8, &qword_1001BD1E0);
  v49[*(v120 + 36)] = 1;
  sub_10019A9A4();
  View.accessibilityHidden(_:)();
  v64 = sub_10000D52C(v49, &qword_100222FF0, &qword_1001BD1E8);
  __chkstk_darwin(v64);
  v66 = v139;
  v65 = v140;
  v67 = v153;
  v68 = v130;
  List<>.init(content:)();
  v69 = v128;
  View.scrollContentBackground(_:)();
  (*(v132 + 8))(v68, v27);
  v70 = v136;
  PlainListStyle.init()();
  v71 = v123;
  v72 = v131;
  v73 = v138;
  View.listStyle<A>(_:)();
  (*(v137 + 1))(v70, v73);
  (*(v129 + 8))(v69, v72);
  v74 = v151;
  v75 = v126;
  v76 = v122;
  View.listHasStackBehavior()();
  (*(v125 + 8))(v71, v75);
  *&v158[0] = v75;
  *(&v158[0] + 1) = v76;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v152;
  sub_100157EFC();
  v79 = v149 + 8;
  v80 = *(v149 + 8);
  v80(v74, v78);
  if (*(v67 + *(v121 + 44)))
  {

    v82 = sub_1000FF844(v81);

    v84 = v146;
    v137 = v80;
    v138 = v79;
    v136 = v77;
    if (v82)
    {
      v85 = type metadata accessor for MusicViewModel(0, v66, v65, v83);
      v86 = v115;
      sub_1000FEC18(v85, v115);
      v88 = v116;
      v87 = v117;
      if ((*(v116 + 48))(v86, 1, v117) != 1)
      {
        v90 = v113;
        (*(v88 + 32))(v113, v86, v87);
        v91 = static HorizontalAlignment.leading.getter();
        v92 = v87;
        v93 = v67;
        v94 = v114;
        *v114 = v91;
        *(v94 + 8) = 0x4030000000000000;
        *(v94 + 16) = 0;
        v95 = sub_100009F70(&qword_100223060, &qword_1001BD210);
        sub_100199730(v93, v90, v66, v65, (v94 + *(v95 + 44)));
        LOBYTE(v93) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v96 = v88;
        v97 = v143;
        v98 = v94 + *(v143 + 36);
        *v98 = v93;
        *(v98 + 8) = v99;
        *(v98 + 16) = v100;
        *(v98 + 24) = v101;
        *(v98 + 32) = v102;
        *(v98 + 40) = 0;
        v103 = v146;
        sub_10000F618(v94, v146, &qword_100222FE0, &qword_1001BD1D8);
        v104 = v97;
        v89 = v103;
        (*(v142 + 56))(v103, 0, 1, v104);
        (*(v96 + 8))(v90, v92);
        goto LABEL_11;
      }

      sub_10000D52C(v86, qword_100218748, &unk_1001AD110);
      v84 = v146;
    }

    (*(v142 + 56))(v84, 1, 1, v143);
    v89 = v84;
LABEL_11:
    v105 = v147;
    v106 = v148;
    sub_10000D58C(v147, v148, &qword_100222FA0, &qword_1001BD1A0);
    *&v158[0] = v106;
    v107 = v150;
    v109 = v151;
    v108 = v152;
    (*(v149 + 16))(v151, v150, v152);
    *(&v158[0] + 1) = v109;
    v110 = v144;
    sub_10000D58C(v89, v144, &qword_100222FD8, &qword_1001BD1C0);
    *&v158[1] = v110;
    v157[0] = v135;
    v157[1] = v108;
    v157[2] = v141;
    v154 = sub_10019AA5C(&qword_100223038, &qword_100222FA0, &qword_1001BD1A0, sub_10019A9A4);
    v155 = v136;
    v156 = sub_10019AB1C();
    sub_100151024(v158, 3uLL, v157);
    sub_10000D52C(v89, &qword_100222FD8, &qword_1001BD1C0);
    v111 = v137;
    v137(v107, v108);
    sub_10000D52C(v105, &qword_100222FA0, &qword_1001BD1A0);
    sub_10000D52C(v110, &qword_100222FD8, &qword_1001BD1C0);
    v111(v109, v108);
    return sub_10000D52C(v148, &qword_100222FA0, &qword_1001BD1A0);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001986D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a4;
  v20 = a2;
  v31 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v4 = type metadata accessor for Section();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v30 = sub_10019A1B0();
  v7 = swift_getWitnessTable();
  v27 = &protocol witness table for EmptyView;
  v28 = v7;
  v29 = &protocol witness table for EmptyView;
  v8 = swift_getWitnessTable();
  v31 = v4;
  AssociatedTypeWitness = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  Section<>.init(content:)();
  static VerticalEdge.Set.bottom.getter();
  View.listSectionSeparator(_:edges:)();
  (*(v19 + 8))(v6, v4);
  v31 = v4;
  AssociatedTypeWitness = v8;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v16 = *(v10 + 8);
  v16(v13, OpaqueTypeMetadata2);
  sub_100157EFC();
  return (v16)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_100198A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v31[0] = a3;
  v34 = type metadata accessor for MusicModule(0, a2, a3, a4);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = v31 - v9;
  v10 = type metadata accessor for Array();
  v31[5] = v10;
  v31[1] = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31[4] = AssociatedTypeWitness;
  v12 = sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  v31[3] = v12;
  WitnessTable = swift_getWitnessTable();
  v31[2] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v10;
  v38 = AssociatedTypeWitness;
  v39 = v12;
  v40 = WitnessTable;
  v41 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ForEach();
  v33 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v31 - v19;
  v21 = v31[0];
  v23 = type metadata accessor for MusicViewModel(0, a2, v31[0], v22);
  v37 = sub_1000FEDA8(v23);
  v24 = v32;
  v25 = v34;
  (*(v8 + 16))(v32, a1, v34);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = v21;
  (*(v8 + 32))(v27 + v26, v24, v25);
  v28 = sub_10019A1B0();
  ForEach<>.init(_:content:)();
  v36 = v28;
  swift_getWitnessTable();
  sub_100157EFC();
  v29 = *(v33 + 8);
  v29(v18, v15);
  sub_100157EFC();
  return (v29)(v20, v15);
}

double sub_100198DC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a2;
  v38 = a4;
  v45 = a5;
  v9 = type metadata accessor for PlainButtonStyle();
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  v11 = __chkstk_darwin(v9);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicModule(0, a3, a4, v15);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  v21 = sub_100009F70(&qword_100222FC8, &qword_1001BD1B8);
  v22 = *(v21 - 8);
  v40 = v21;
  v41 = v22;
  __chkstk_darwin(v21);
  v39 = &v36 - v23;
  (*(v17 + 16))(v20, a2, v16);
  (*(v13 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = (v18 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = a3;
  *(v26 + 24) = v27;
  (*(v17 + 32))(v26 + v24, v20, v16);
  (*(v13 + 32))(v26 + v25, v36, a3);
  v46 = a3;
  v47 = v27;
  v48 = a1;
  v49 = v37;
  sub_100009F70(&qword_100223078, &qword_1001BD228);
  sub_10019B734();
  v28 = v39;
  Button.init(action:label:)();
  v29 = v42;
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222FD0, &qword_100222FC8, &qword_1001BD1B8, &protocol conformance descriptor for Button<A>);
  sub_10019A7F4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v30 = v45;
  v31 = v40;
  v32 = v43;
  View.buttonStyle<A>(_:)();
  (*(v44 + 8))(v29, v32);
  (*(v41 + 8))(v28, v31);
  v50 = static Color.clear.getter();
  v33 = AnyView.init<A>(_:)();
  *(v30 + *(sub_100009F70(&qword_100222FC0, &qword_1001BD1B0) + 36)) = v33;
  v34 = v30 + *(sub_100009F70(&qword_100222FA8, &qword_1001BD1A8) + 36);
  result = 10.0;
  *v34 = xmmword_1001BD0C0;
  *(v34 + 16) = xmmword_1001BD0C0;
  *(v34 + 32) = 0;
  return result;
}

void sub_100199270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicViewModel(0, a3, a4, a4);
  sub_1000FEF98(a2, v8);
  if (*(a1 + *(type metadata accessor for MusicModule(0, a3, a4, v9) + 44)))
  {

    sub_1000FF234(v10, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_10019936C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = (*(a3 + 48))(a2, a3);
  v36 = v13;
  v37 = v12;
  v14 = (*(a3 + 64))(a2, a3);
  if (v15)
  {
    v16 = v15;
    v35 = v14;
  }

  else
  {
    v35 = (*(a3 + 56))(a2, a3);
    v16 = v17;
  }

  v34 = (*(a3 + 112))(a2, a3);
  (*(a3 + 72))(a2, a3);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    AssociatedConformanceWitness = 0;
    v40 = 0u;
    v41 = 0u;
  }

  else
  {
    *(&v41 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = sub_100043D3C(&v40);
    (*(v18 + 32))(v20, v11, AssociatedTypeWitness);
  }

  v21 = type metadata accessor for MusicViewModel(0, a2, a3, v19);
  sub_1000FEE74(v21);
  v22 = v39;
  if (v39)
  {
    sub_100028124(v38, v39);
    v23 = dispatch thunk of MusicItem.id.getter();
    v22 = v24;
    sub_100021498(v38);
  }

  else
  {
    sub_10000D52C(v38, &qword_10021A650, &qword_1001AFE68);
    v23 = 0;
  }

  v25 = dispatch thunk of MusicItem.id.getter();
  if (v22)
  {
    if (v23 == v25 && v22 == v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v34 & 1;
  *&v43[7] = v40;
  *&v43[23] = v41;
  *&v43[39] = AssociatedConformanceWitness;
  KeyPath = swift_getKeyPath();
  v30 = *&v43[16];
  *(a4 + 33) = *v43;
  v31 = v36;
  *a4 = v37;
  *(a4 + 8) = v31;
  *(a4 + 16) = v35;
  *(a4 + 24) = v16;
  *(a4 + 32) = v28;
  *(a4 + 49) = v30;
  result = *&v43[31];
  *(a4 + 64) = *&v43[31];
  *(a4 + 80) = v27 & 1;
  *(a4 + 81) = v40;
  *(a4 + 84) = *(&v40 + 3);
  *(a4 + 88) = KeyPath;
  *(a4 + 96) = 0;
  return result;
}

uint64_t sub_100199730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v67 = a4;
  v66 = a3;
  v68 = a2;
  v79 = a5;
  v80 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = type metadata accessor for MusicModule(0, a3, a4, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v64 = &v63 - v14;
  v73 = sub_100009F70(&qword_100218930, &qword_1001B7CF0);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = &v63 - v16;
  v72 = sub_100009F70(&qword_10021FAA8, &qword_1001B7D18);
  __chkstk_darwin(v72);
  v69 = &v63 - v17;
  v18 = sub_100009F70(&qword_100223068, &qword_1001BD218);
  v19 = __chkstk_darwin(v18 - 8);
  v78 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v63 - v21;
  v22 = type metadata accessor for Divider();
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = __chkstk_darwin(v22);
  v74 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v63 - v25;
  Divider.init()();
  v26 = v15;
  v27 = v11;
  (*(v12 + 16))(v26, v80, v11);
  v28 = v8;
  v29 = *(v8 + 16);
  v30 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v29(v30, v68, v7);
  v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v33 = (v13 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = swift_allocObject();
  v35 = v66;
  v36 = v67;
  *(v34 + 16) = v66;
  *(v34 + 24) = v36;
  v37 = v34 + v32;
  v38 = v65;
  (*(v12 + 32))(v37, v64, v27);
  (*(v28 + 32))(v34 + v33, v30, v31);
  v81 = v35;
  v82 = v36;
  v83 = v80;
  Button.init(action:label:)();
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v28) = static Edge.Set.leading.getter();
  *(inited + 32) = v28;
  v40 = static Edge.Set.bottom.getter();
  *(inited + 33) = v40;
  v41 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v41 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v40)
  {
    v41 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v69;
  (*(v71 + 32))(v69, v38, v73);
  v51 = v50 + *(v72 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_10011CCF0();
  v52 = v75;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v50, &qword_10021FAA8, &qword_1001B7D18);
  v54 = v76;
  v53 = v77;
  v55 = *(v76 + 16);
  v56 = v74;
  v57 = v70;
  v55(v74, v70, v77);
  v58 = v78;
  sub_10000D58C(v52, v78, &qword_100223068, &qword_1001BD218);
  v59 = v79;
  v55(v79, v56, v53);
  v60 = sub_100009F70(&qword_100223070, &qword_1001BD220);
  sub_10000D58C(v58, &v59[*(v60 + 48)], &qword_100223068, &qword_1001BD218);
  sub_10000D52C(v52, &qword_100223068, &qword_1001BD218);
  v61 = *(v54 + 8);
  v61(v57, v53);
  sub_10000D52C(v58, &qword_100223068, &qword_1001BD218);
  return (v61)(v56, v53);
}

void sub_100199E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OpenURLAction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicModule(0, a3, a4, v11);
  sub_100023FD4(v10);
  OpenURLAction.callAsFunction(_:)();
  (*(v8 + 8))(v10, v7);
  v14 = *(a1 + *(v12 + 44));
  if (v14)
  {
    v15 = type metadata accessor for MusicViewModel(0, a3, a4, v13);

    sub_1000FEFAC(15, 0, 3u, v14, v15);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100199FFC@<X0>(uint64_t a2@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10019A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10019A12C, v7, v6);
}

uint64_t sub_10019A12C()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for MusicViewModel(0, v2, v1, v3);
  sub_1000FEED8(v4);
  v5 = v0[1];

  return v5();
}

unint64_t sub_10019A1B0()
{
  result = qword_100222FB0;
  if (!qword_100222FB0)
  {
    sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
    sub_10019A268();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222FB0);
  }

  return result;
}

unint64_t sub_10019A268()
{
  result = qword_100222FB8;
  if (!qword_100222FB8)
  {
    sub_10000B3DC(&qword_100222FC0, &qword_1001BD1B0);
    sub_10000B3DC(&qword_100222FC8, &qword_1001BD1B8);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_100222FD0, &qword_100222FC8, &qword_1001BD1B8, &protocol conformance descriptor for Button<A>);
    sub_10019A7F4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378, &qword_1001B7350, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222FB8);
  }

  return result;
}

uint64_t sub_10019A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for MusicModule(0, v5, v6, a4);
  v8 = (*(*(v7 - 8) + 80) + 48) & ~*(*(v7 - 8) + 80);
  swift_unknownObjectRelease();
  v9 = v4 + v8;

  v11 = *(type metadata accessor for MusicViewModel(0, v5, v6, v10) + 44);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v7 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ColorScheme();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  else
  {
  }

  v16 = *(v7 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for OpenURLAction();
    (*(*(v17 - 8) + 8))(v9 + v16, v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for MusicModule(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000D890;

  return sub_10019A090(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_10019A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  type metadata accessor for MusicModule(0, v5, v6, a4);
  v8 = type metadata accessor for MusicViewModel(0, v5, v6, v7);
  return sub_1000FEF3C(v8);
}

uint64_t sub_10019A7F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019A89C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10019A920()
{
  result = qword_100223018;
  if (!qword_100223018)
  {
    sub_10000B3DC(&qword_100223020, &qword_1001BD200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223018);
  }

  return result;
}

unint64_t sub_10019A9A4()
{
  result = qword_100223028;
  if (!qword_100223028)
  {
    sub_10000B3DC(&qword_100222FF0, &qword_1001BD1E8);
    sub_10019AA5C(&qword_100223030, &qword_100222FE8, &qword_1001BD1E0, sub_10019A83C);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223028);
  }

  return result;
}

uint64_t sub_10019AA5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_10019A7F4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019AB1C()
{
  result = qword_100223040;
  if (!qword_100223040)
  {
    sub_10000B3DC(&qword_100222FD8, &qword_1001BD1C0);
    sub_10019ABA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223040);
  }

  return result;
}

unint64_t sub_10019ABA0()
{
  result = qword_100223048;
  if (!qword_100223048)
  {
    sub_10000B3DC(&qword_100222FE0, &qword_1001BD1D8);
    sub_10000D1EC(&qword_100223050, &qword_100223058, &qword_1001BD208, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223048);
  }

  return result;
}

uint64_t sub_10019AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for MusicModule(0, v5, v6, a4);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v20 = *(*(v7 - 8) + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v4 + v8;

  v14 = *(type metadata accessor for MusicViewModel(0, v5, v6, v13) + 44);
  if (!(*(v10 + 48))(v4 + v8 + v14, 1, v9))
  {
    (*(v10 + 8))(v12 + v14, v9);
  }

  v15 = *(v7 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for ColorScheme();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  else
  {
  }

  v17 = *(v7 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for OpenURLAction();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
  }

  else
  {
  }

  (*(v10 + 8))(v4 + ((v8 + v20 + v11) & ~v11), v9);

  return swift_deallocObject();
}

void sub_10019AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for MusicModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  sub_100199E40(v4 + v8, v11, v5, v6);
}

uint64_t sub_10019B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for MusicModule(0, v5, v6, a4);
  v8 = v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  v10 = *(type metadata accessor for MusicViewModel(0, v5, v6, v9) + 44);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = *(v7 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = *(v7 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for OpenURLAction();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_10019B2AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for MusicModule(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100198DC4(a1, v9, v6, v7, a3);
}

uint64_t sub_10019B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for MusicModule(0, v5, v6, a4);
  v21 = *(*(v7 - 8) + 64);
  v22 = *(*(v7 - 8) + 80);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v20 = (v22 + 32) & ~v22;
  v10 = v4 + v20;

  v12 = *(type metadata accessor for MusicViewModel(0, v5, v6, v11) + 44);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v20 + v12, 1, v13))
  {
    (*(v14 + 8))(v10 + v12, v13);
  }

  v15 = *(v7 + 36);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for ColorScheme();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  v17 = *(v7 + 40);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for OpenURLAction();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
  }

  else
  {
  }

  (*(v8 + 8))(v4 + ((v20 + v21 + v9) & ~v9), v5);

  return swift_deallocObject();
}

void sub_10019B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for MusicModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  sub_100199270(v4 + v8, v9, v5, v6);
}

unint64_t sub_10019B734()
{
  result = qword_100223080;
  if (!qword_100223080)
  {
    sub_10000B3DC(&qword_100223078, &qword_1001BD228);
    sub_10019B7EC();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223080);
  }

  return result;
}

unint64_t sub_10019B7EC()
{
  result = qword_100223088;
  if (!qword_100223088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223088);
  }

  return result;
}

uint64_t sub_10019B848(uint64_t *a1)
{
  sub_10000B3DC(&qword_10021AFA8, &unk_1001B6A30);
  sub_10000B3DC(&qword_100222FA0, &qword_1001BD1A0);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_100222FA8, &qword_1001BD1A8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_10019A1B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PlainListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8, &qword_1001BD1C0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100218DD8, &qword_1001AD878);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10019BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for EventService();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_100009F70(&qword_100223188, &qword_1001BD330);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10019BDC8, v3, 0);
}

uint64_t sub_10019BDC8()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC15ShazamEventsApp24PromotionalAssetsFetcher_service, v0[6]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10019BE98;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v5 = v0[4];

  return ArtistPromotionalAssets.init(artistID:service:)(v2, v4, v5, v3);
}

uint64_t sub_10019BE98()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10019C12C;
  }

  else
  {
    v4 = sub_10019BFC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019BFC4()
{
  v1 = v0[9];
  v2 = type metadata accessor for ArtistPromotionalAssets();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10019C888(v1);
    v4 = 1;
  }

  else
  {
    ArtistPromotionalAssets.eventWithPromotionalAssets.getter();
    (*(v3 + 8))(v1, v2);
    v4 = 0;
  }

  v5 = v0[2];
  v6 = type metadata accessor for Music();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019C12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C198()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp24PromotionalAssetsFetcher_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PromotionalAssetsFetcher(uint64_t a1)
{
  result = qword_1002230C0;
  if (!qword_1002230C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019C264(uint64_t a1)
{
  result = type metadata accessor for EventService();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10019C334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_100009F70(&qword_10021B370, &qword_1001B3F70);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return _swift_task_switch(sub_10019C404, v7, 0);
}

uint64_t sub_10019C404()
{
  v1 = v0;
  v2 = type metadata accessor for Music();
  sub_10019C844(&qword_10021B378, &protocol conformance descriptor for Music);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v1[9] = v3;
  sub_10019C844(&qword_10021CB90, &protocol conformance descriptor for Music);
  *v3 = v1;
  v3[1] = sub_10019C540;
  v4 = v1[7];
  v6 = v1[2];
  v5 = v1 + 2;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v6;

  return EventService.event<A, B>(identifier:ofType:_:)(v9, v5, v7, v8, v4, v5, 0, v2);
}

uint64_t sub_10019C540()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_10019C72C;
  }

  else
  {
    v7 = sub_10019C6C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10019C6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C72C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D890;

  return sub_10019BCCC(a1, a2, a3);
}

uint64_t sub_10019C844(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019C888(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100223188, &qword_1001BD330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10019C914, 0, 0);
}

uint64_t sub_10019C914()
{
  v1 = (*(v0[7] + 40))(v0[6]);
  v3 = v2;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10019C9D0;

  return sub_10019D570(v1, v3);
}

uint64_t sub_10019C9D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019CB28, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10019CB28()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = (*(v1 + 56))(v2, v1);
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10019CBF0;

  return sub_10019D974(v3);
}

uint64_t sub_10019CBF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10019CD7C;
  }

  else
  {

    v4 = sub_10019CD14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10019CD14()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10019CD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10019CDE8(uint64_t a1, void *a2)
{
  v4 = sub_100009F70(&qword_1002231D8, &unk_1001BD440);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10019E530;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019D3F4;
  aBlock[3] = &unk_100212400;
  v10 = _Block_copy(aBlock);

  [a2 startWithCompletionHandler:v10];
  _Block_release(v10);
}

double sub_10019CF98(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_1002231D8, &unk_1001BD440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10005DB18(0, &qword_1002231E0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a3, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_10019E6B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001914E4;
  aBlock[3] = &unk_100212450;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000F84F0();
  sub_100009F70(&qword_1002231F0, &qword_1001B6E88);
  sub_1000F8548();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);

  return result;
}

void sub_10019D31C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    [v3 image];
    sub_100009F70(&qword_1002231D8, &unk_1001BD440);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_10019DE14();
      swift_allocError();
      *v4 = 4;
    }

    swift_errorRetain();
    sub_100009F70(&qword_1002231D8, &unk_1001BD440);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_10019D3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10019D480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100028124((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009F70(qword_10021A1B8, &unk_1001AF7F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10005DB18(0, &qword_1002231A0, MKMapItem_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10019D570(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_10019D590, 0, 0);
}

uint64_t sub_10019D590()
{
  v1 = objc_allocWithZone(MKMapItemIdentifier);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithIdentifierString:v2];
  v0[21] = v3;

  if (v3)
  {
    v4 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v3];
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019D780;
    v5 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_1002231B0, &qword_1001BD360);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10013A864;
    v0[13] = &unk_100212320;
    v0[14] = v5;
    [v4 getMapItemWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_10019DE14();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10019D780()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10019D8FC;
  }

  else
  {
    v2 = sub_10019D890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019D890()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10019D8FC(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_10019D994()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019DB44;
    v3 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_100223198, &qword_1001BD358);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10019D480;
    v0[13] = &unk_1002122F8;
    v0[14] = v3;
    [v2 getMapItemsWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_10019DE14();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10019DB44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10019DDA4;
  }

  else
  {
    v2 = sub_10019DC54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019DC54()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[20];

    sub_10019DE14();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[20];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_10019DDA4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_10019DE14()
{
  result = qword_100223190;
  if (!qword_100223190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223190);
  }

  return result;
}

unint64_t sub_10019DE94()
{
  result = qword_1002231B8;
  if (!qword_1002231B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002231B8);
  }

  return result;
}

uint64_t sub_10019DEE8(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  return _swift_task_switch(sub_10019DF0C, 0, 0);
}

uint64_t sub_10019DF0C()
{
  v1 = *(v0 + 32);
  if (v1 == 0.0 || (v2 = *(v0 + 40), v2 == 0.0))
  {
    sub_10019DE14();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = [v3 location];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    v9 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    *(v0 + 48) = v9;
    [v9 setRegion:{v6, v8, 0.01, 0.01}];
    [v9 setSize:{v1, v2}];
    [v9 setMapType:0];
    v10 = [v3 location];
    [v10 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = [objc_opt_self() cameraLookingAtCenterCoordinate:v12 fromDistance:v14 pitch:750.0 heading:{0.0, 0.0}];
    [v9 setCamera:v15];

    sub_100009F70(&qword_1002231C0, &qword_1001BC440);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001BC320;
    *(v16 + 32) = [objc_opt_self() customFeatureAnnotationForMapItem:v3];
    sub_100009F70(&qword_1002231C8, &qword_1001BD438);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 _setCustomFeatureAnnotations:isa];

    v18 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v9];
    *(v0 + 56) = v18;
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *(v19 + 16) = v18;
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    v21 = sub_10005DB18(0, &qword_1002231D0, UIImage_ptr);
    *v20 = v0;
    v20[1] = sub_10019E298;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001001C2550, sub_10019E494, v19, v21);
  }
}

uint64_t sub_10019E298()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10019E420;
  }

  else
  {

    v2 = sub_10019E3B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019E3B4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10019E420()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019E49C()
{
  v1 = sub_100009F70(&qword_1002231D8, &unk_1001BD440);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_10019E530(void *a1, uint64_t a2)
{
  v5 = *(sub_100009F70(&qword_1002231D8, &unk_1001BD440) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10019CF98(a1, a2, v6);
}

uint64_t sub_10019E5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019E5D4()
{
  v1 = sub_100009F70(&qword_1002231D8, &unk_1001BD440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10019E6B8()
{
  v1 = *(sub_100009F70(&qword_1002231D8, &unk_1001BD440) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10019D31C(v3, v0 + v2, v4);
}

uint64_t sub_10019E790()
{
  result = static Color.secondary.getter();
  qword_1002231F8 = result;
  return result;
}

uint64_t sub_10019E7B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v5 = a1;
  v49 = a4;
  v6 = sub_100009F70(&qword_100223210, &qword_1001BD4E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v44 - v8;
  v9 = sub_100009F70(&qword_100223218, &qword_1001BD4F0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_100009F70(&qword_100223220, &unk_1001BD4F8);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_100009F70(&qword_100219C30, &qword_1001AECE0);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v47 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  Divider.init()();
  v26 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = *(v21 + 44);
  v28 = v46;
  v29 = &v25[v27];
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0x4018000000000000;
  v19[16] = 0;
  v34 = sub_100009F70(&qword_100223228, &qword_1001BD508);
  sub_10019EC84(v5, &v19[*(v34 + 44)]);
  if (v5)
  {
    v35 = 1;
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v28;
    *(v36 + 32) = a3;

    sub_100009F70(&qword_100223230, &qword_1001BD510);
    sub_10019F4A4();
    v37 = v45;
    Button.init(action:label:)();
    (*(v7 + 32))(v14, v37, v6);
    v35 = 0;
  }

  (*(v7 + 56))(v14, v35, 1, v6);
  v38 = v47;
  sub_10000D58C(v25, v47, &qword_100219C30, &qword_1001AECE0);
  v39 = v48;
  v46 = v25;
  sub_10000D58C(v19, v48, &qword_100223220, &unk_1001BD4F8);
  sub_10000D58C(v14, v12, &qword_100223218, &qword_1001BD4F0);
  v40 = v12;
  v41 = v49;
  sub_10000D58C(v38, v49, &qword_100219C30, &qword_1001AECE0);
  v42 = sub_100009F70(&qword_100223260, &unk_1001BD530);
  sub_10000D58C(v39, v41 + *(v42 + 48), &qword_100223220, &unk_1001BD4F8);
  sub_10000D58C(v40, v41 + *(v42 + 64), &qword_100223218, &qword_1001BD4F0);
  sub_10000D52C(v14, &qword_100223218, &qword_1001BD4F0);
  sub_10000D52C(v19, &qword_100223220, &unk_1001BD4F8);
  sub_10000D52C(v46, &qword_100219C30, &qword_1001AECE0);
  sub_10000D52C(v40, &qword_100223218, &qword_1001BD4F0);
  sub_10000D52C(v39, &qword_100223220, &unk_1001BD4F8);
  return sub_10000D52C(v38, &qword_100219C30, &qword_1001AECE0);
}

uint64_t sub_10019EC84@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100009F70(&qword_10021BF58, &qword_1001BD540);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_100009F70(&qword_100223268, &qword_1001BD548);
  v8 = __chkstk_darwin(v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  if (a1)
  {
    ProgressView<>.init<>()();
    if (qword_100218468 != -1)
    {
      swift_once();
    }

    v12 = qword_1002231F8;
    KeyPath = swift_getKeyPath();
    v35 = v12;

    v14 = AnyShapeStyle.init<A>(_:)();
    v15 = &v6[*(v3 + 36)];
    *v15 = KeyPath;
    v15[1] = v14;
    sub_10019F6C4(v6, v11);
    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v32 - v10, 1, 1, v3);
  }

  LocalizedStringKey.init(_:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  if (qword_100218468 != -1)
  {
    swift_once();
  }

  v35 = qword_1002231F8;

  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10000D60C(v16, v18, v20 & 1);

  v28 = v33;
  sub_10000D58C(v11, v33, &qword_100223268, &qword_1001BD548);
  v29 = v34;
  sub_10000D58C(v28, v34, &qword_100223268, &qword_1001BD548);
  v30 = v29 + *(sub_100009F70(&qword_100223270, &qword_1001BD550) + 48);
  *v30 = v21;
  *(v30 + 8) = v23;
  v25 &= 1u;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  sub_10000D5FC(v21, v23, v25);

  sub_10000D52C(v11, &qword_100223268, &qword_1001BD548);
  sub_10000D60C(v21, v23, v25);

  return sub_10000D52C(v28, &qword_100223268, &qword_1001BD548);
}

double sub_10019F054@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(_:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v38 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v9 & 1;
  LOBYTE(v47[0]) = v9 & 1;
  v12 = static Edge.Set.horizontal.getter();
  LOBYTE(v39) = 1;
  if (qword_100218468 != -1)
  {
    swift_once();
  }

  v13 = qword_1002231F8;
  v14 = *(v2 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v4[v14], v15, v16);
  __asm { FMOV            V0.2D, #3.0 }

  *v4 = _Q0;

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22 = a1 + *(sub_100009F70(&qword_100223230, &qword_1001BD510) + 36);
  sub_1000A3BD8(v4, v22);
  v23 = v22 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v24 = v40;
  *v23 = v39;
  *(v23 + 16) = v24;
  *(v23 + 32) = v41;
  v25 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *(v22 + *(v25 + 52)) = v13;
  *(v22 + *(v25 + 56)) = 256;

  v26 = static Alignment.center.getter();
  v28 = v27;
  sub_1000A3C3C(v4);
  v29 = (v22 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = (v22 + *(sub_100009F70(&qword_100223258, &qword_1001BD528) + 36));
  *v33 = v30;
  v33[1] = v32;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v11;
  *(a1 + 20) = *(v47 + 3);
  v34 = *&v46[3];
  *(a1 + 17) = v47[0];
  *(a1 + 24) = v38;
  v35 = v44;
  v36 = v42;
  *(a1 + 48) = v43;
  *(a1 + 64) = v35;
  *(a1 + 32) = v36;
  *(a1 + 80) = v12;
  LODWORD(v33) = *v46;
  *(a1 + 84) = v34;
  *(a1 + 81) = v33;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 1;
  LODWORD(v33) = *v45;
  *(a1 + 124) = *&v45[3];
  *(a1 + 121) = v33;
  *(a1 + 128) = v13;
  return result;
}

double sub_10019F380@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4035000000000000;
  *(a2 + 16) = 0;
  v7 = sub_100009F70(&qword_100223200, &qword_1001BD4D8);
  sub_10019E7B0(v4, v6, v5, a2 + *(v7 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = (a2 + *(sub_100009F70(&qword_100223208, &qword_1001BD4E0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_10019F444()
{

  return swift_deallocObject();
}

unint64_t sub_10019F4A4()
{
  result = qword_100223238;
  if (!qword_100223238)
  {
    sub_10000B3DC(&qword_100223230, &qword_1001BD510);
    sub_10019F55C();
    sub_10000D1EC(&qword_100223250, &qword_100223258, &qword_1001BD528, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223238);
  }

  return result;
}

unint64_t sub_10019F55C()
{
  result = qword_100223240;
  if (!qword_100223240)
  {
    sub_10000B3DC(&qword_100223248, &unk_1001BD518);
    sub_10011D298();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223240);
  }

  return result;
}

uint64_t sub_10019F614@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10019F640@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10019F6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021BF58, &qword_1001BD540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019F738()
{
  result = qword_100223278;
  if (!qword_100223278)
  {
    sub_10000B3DC(&qword_100223208, &qword_1001BD4E0);
    sub_10000D1EC(&qword_100223280, qword_100223288, &qword_1001BD588, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223278);
  }

  return result;
}

uint64_t sub_10019F7F0(void *a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v6 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10019FAF8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  v4 = *(*v1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

void *sub_10019FC4C()
{
  sub_1001A59A8(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001ACB00;
  sub_10008319C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v3);
  return v0;
}

uint64_t sub_10019FD9C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_1001A18E0(v11, &v16 - v9);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v10, 1, v2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v13 = 0;
  }

  else
  {
    (*(v1 + 104))(v2, v1);
    (*(v12 + 8))(v10, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
  }

  return v13 & 1;
}

uint64_t sub_1001A0014()
{
  v0 = type metadata accessor for Optional();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  sub_1001A18E0(v4, &v7 - v2);
  v5 = sub_1001A5A54(v3);
  return (*(v1 + 8))(v3, v0, v5);
}

void sub_1001A00EC(uint64_t a1)
{
  v37 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for Optional();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = *(v2 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001AD7C0;
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_10021CBA8;
  *(v13 + 32) = 7;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_10021CC30;
  *(v13 + 72) = 3;
  sub_1001A06AC(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v14 = 12;
  }

  else
  {
    v14 = 11;
  }

  (*(v10 + 8))(v12, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_10021CC08;
  *(v13 + 112) = v14;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v43 = v13;
  sub_1001A18E0(v15, v6);
  v16 = *(v3 - 8);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_10021CBD0;
  if ((*(v16 + 48))(v6, 1, v3) == 1)
  {
    (*(v35 + 8))(v6, v36);
  }

  else
  {
    v19 = (*(*(v7 + 8) + 120))(v3);
    v21 = v20;
    (*(v16 + 8))(v6, v3);
    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1001666DC((v22 > 1), v23 + 1, 1, v13);
    }

    v40 = &type metadata for AnalyticsString;
    v41 = &off_10021CBD0;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v19;
    v39 = v21;
    *(v13 + 16) = v23 + 1;
    sub_100071318(&aBlock, v13 + 40 * v23 + 32);
  }

  if (*(v37 + 72))
  {
    v24 = *(v37 + 64);
    v25 = *(v37 + 72);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v40 = &type metadata for AnalyticsString;
  v41 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v24;
  v39 = v25;
  v43 = v13;
  v26 = *(v13 + 16);
  v27 = *(v13 + 24);

  if (v26 >= v27 >> 1)
  {
    v13 = sub_1001666DC((v27 > 1), v26 + 1, 1, v13);
    v43 = v13;
    v17 = v40;
    v18 = v41;
  }

  v28 = sub_100031420(&aBlock, v17);
  __chkstk_darwin(v28);
  v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1000EB0D0(v26, v30, &v43, v17, v18);
  sub_100021498(&aBlock);
  v32 = String._bridgeToObjectiveC()();
  v33 = swift_allocObject();
  v33[2] = 0xD00000000000001ELL;
  v33[3] = 0x80000001001BDDE0;
  v33[4] = v13;
  v41 = sub_100038F2C;
  v42 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_1000DCA40;
  v40 = &unk_100212650;
  v34 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v34);
}

uint64_t sub_1001A06AC@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v18 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  sub_1001A18E0(v12, v18 - v10);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v13 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

BOOL sub_1001A0A1C()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

char *sub_1001A0AB4(char a1)
{
  v3 = *(v1 + *(*v1 + 216));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_100166C68(*(v3 + 16), 0);
    v6 = sub_10012E330(&v18, v5 + 4, v4, v3);
    v7 = v18;

    sub_10012E4B0(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v18 = v5;
  sub_1001A4DBC(&v18);
  v8 = v18;
  v9 = _swiftEmptyArrayStorage;
  if (*(v3 + 16) == 1)
  {
    v18 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100009F70(&qword_100220E08, &qword_1001BD830);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1001AEB90;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    v18 = v9;
    if ((a1 & 1) == 0)
    {
LABEL_7:
      v10 = *(v8 + 2);
      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  sub_1001A4CC8(&off_100209AC0);
  v9 = v18;
  v10 = *(v8 + 2);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_10014462C(0, v10, 0);
  v11 = (v8 + 40);
  do
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];

    if (v15 >= v14 >> 1)
    {
      sub_10014462C((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v13;
    v16[5] = v12;
    v11 += 2;
    --v10;
  }

  while (v10);
LABEL_15:

  sub_1001A4CC8(_swiftEmptyArrayStorage);
  return v9;
}

uint64_t sub_1001A0CDC()
{
  v0 = sub_1001A5D5C();
  sub_1000E4108(v0, v1);
  return v0;
}

uint64_t sub_1001A0D10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1001A0DD4, v5, v4);
}

uint64_t sub_1001A0DD4()
{
  v1 = v0[4];
  sub_10005E8AC();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_1001A1010;

      return sub_1001A3F78();
    }

    v5 = v0[6];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    v0[2] = *(v6 + *(*v6 + 208));
    v9 = swift_task_alloc();
    *(v9 + 16) = *(v5 + 80);
    *(v9 + 24) = *(v5 + 88);
    *(v9 + 32) = *(v5 + 96);
    *(v9 + 48) = *(v5 + 112);
    *(v9 + 56) = *(v5 + 120);
    *(v9 + 72) = *(v5 + 136);
    *(v9 + 80) = v8;
    *(v9 + 88) = v7;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v10 = _ArrayProtocol.filter(_:)();

    v4 = v10;
  }

  else
  {
  }

  sub_1001A37D8(v4);
  v11 = v0[4];
  v12 = v0[3];
  sub_1000E4108(v12, v11);
  v13.n128_f64[0] = sub_1001A3584(v12, v11);
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1001A1010(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1001A11D0;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1001A1138;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001A1138()
{
  v1 = v0[12];

  sub_1001A37D8(v1);
  v2 = v0[4];
  v3 = v0[3];
  sub_1000E4108(v3, v2);
  v4.n128_f64[0] = sub_1001A3584(v3, v2);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1001A11D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001A123C(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001AD8A0;
  v12 = (*(*(*v5 + 112) + 40))(*(*v5 + 80));
  *(v11 + 56) = &type metadata for AnalyticsString;
  *(v11 + 64) = &off_10021CBD0;
  *(v11 + 32) = 0;
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  *(v11 + 96) = &type metadata for AnalyticsPageName;
  *(v11 + 104) = &off_10021CBA8;
  *(v11 + 72) = 7;
  *(v11 + 136) = &type metadata for AnalyticsModuleName;
  *(v11 + 144) = &off_10021CC30;
  *(v11 + 112) = a1;
  *(v11 + 176) = &type metadata for AnalyticsModuleAction;
  *(v11 + 184) = &off_10021CC08;
  *(v11 + 152) = a2;
  *(v11 + 160) = a3;
  *(v11 + 168) = a4;
  if (*(a5 + 72))
  {
    v14 = *(a5 + 64);
    v15 = *(a5 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v29 = &type metadata for AnalyticsString;
  v30 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v27 = v14;
  v28 = v15;
  sub_1000109A4(a2, a3, a4);
  v32 = v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 24);

  if (v16 >= v17 >> 1)
  {
    v11 = sub_1001666DC((v17 > 1), v16 + 1, 1, v11);
    v32 = v11;
  }

  v18 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  sub_1000EB0D0(v16, v20, &v32, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v22 = String._bridgeToObjectiveC()();
  v23 = swift_allocObject();
  v23[2] = 0xD00000000000001ELL;
  v23[3] = 0x80000001001BDDE0;
  v23[4] = v11;
  v30 = sub_100010AAC;
  v31 = v23;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000DCA40;
  v29 = &unk_100212600;
  v24 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);
}

uint64_t sub_1001A1584()
{
  sub_1001A5918();
}

double sub_1001A15AC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v19 = *(v1 + v3);
  v4 = a1 & 1;
  v18 = a1;
  v5 = v2[5];
  v16 = v2[6];
  v17 = v5;
  v6 = v2[7];
  v14 = v2[8];
  v15 = v6;
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v7);
    v11 = v15;
    v13 = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v12 = v1;
    LOBYTE(v13) = v4;
    sub_1001A34AC(v10, sub_1001A6654, &v11, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1001A171C()
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  return *(v0 + *(*v0 + 168));
}

uint64_t sub_1001A17AC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  v4 = *(*v1 + 144);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1001A18E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = *v2;
  v4 = type metadata accessor for PromotionalAssetsController.State(0, *(*v2 + 96), *(*v2 + 128), a1);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_100181FF8(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v9 + 32);
    v15(v14, v7, AssociatedTypeWitness);
    v15(v12, v14, AssociatedTypeWitness);
    v16 = *(v3 + 88);
    v17 = v22;
    if (swift_dynamicCast())
    {
      v18 = v17;
      v19 = 0;
    }

    else
    {
      v18 = v17;
      v19 = 1;
    }

    return (*(*(v16 - 8) + 56))(v18, v19, 1);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(*(v3 + 88) - 8) + 56))(v22, 1, 1);
  }
}

uint64_t sub_1001A1BC0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1001A1CF4(uint64_t a1)
{
  v3 = (*(*(*v1 + 112) + 40))(*(*v1 + 80));
  sub_1000DCEDC(v3, v4, 7, a1);
}

uint64_t sub_1001A1D90()
{
  v1[10] = v0;
  v1[11] = *v0;
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_1001A1E50, v3, v2);
}

uint64_t sub_1001A1E50()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1001A1F7C;

  return sub_10013AF88(v0 + 16, v4, v6);
}

uint64_t sub_1001A1F7C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1001A209C, v3, v2);
}

uint64_t sub_1001A209C()
{

  v1.n128_f64[0] = sub_1001A3B14(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001A2108()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1001A21C8, v3, v2);
}

uint64_t sub_1001A21C8()
{
  v1 = (*(*(v0[3] + 112) + 40))(*(v0[3] + 80));
  v3 = v2;
  v0[7] = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1001A22C8;

  return sub_1001820F0(v1, v3, v5, v6);
}

uint64_t sub_1001A22C8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1001A240C, v3, v2);
}

uint64_t sub_1001A240C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A246C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 136);
  v3[6] = *(v4 + 104);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_1001A25C4, v7, v6);
}

uint64_t sub_1001A25C4()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_1001A3C70();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1001A282C;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_1001A3C70();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_1001A2A68;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_100020BB8(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_1001A282C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1001A2CA4;
  }

  else
  {
    v5 = sub_1001A2984;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A2984()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_1001A60F8(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001A2A68()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1001A2F4C;
  }

  else
  {
    v5 = sub_1001A2BC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A2BC0()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_1001A60F8(v1);
  (*(v2 + 8))(v1, v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001A2CA4()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001A3C70();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000EB068(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001A2F4C()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001A3C70();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000EB068(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

BOOL sub_1001A31F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_10019FAF8(&v7 - v3);
  v5 = (*(*(AssociatedTypeWitness - 8) + 48))(v4, 1, AssociatedTypeWitness) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1001A33E4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_1001A3584(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 152));
  v26 = *v6;
  v24 = a1;
  v25 = a2;
  v7 = v5[5];
  v22 = v5[6];
  v23 = v7;
  v8 = v5[7];
  v20 = v5[8];
  v21 = v8;
  sub_1001212F8();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    v10 = *v6;
    v11 = *(v6 + 1);
    *v6 = a1;
    *(v6 + 1) = a2;
    sub_10008324C(v10, v11);
  }

  else
  {
    __chkstk_darwin(v9);
    v15 = v22;
    v19 = *(&v20 + 1);
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    v16 = v2;
    v17 = a1;
    v18 = a2;
    sub_1001A34AC(v14, sub_1001A6848, &v15, &type metadata for () + 8);
    sub_10008324C(a1, a2);
  }

  return result;
}

uint64_t sub_1001A3710(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 160);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001A37D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *(v1 + v4);
  v15 = a1;
  v16 = v5;
  v13 = *(v3 + 88);
  type metadata accessor for Array();
  v12 = *(v3 + 104);
  v11 = *(v3 + 120);
  v14 = *(*(*(v11 + 8) + 8) + 8);
  swift_getWitnessTable();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v6);
    v10[0] = *(&v12 + 1);
    v10[1] = v11;
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10[2] = v1;
    v10[3] = a1;
    sub_1001A34AC(v9, sub_1001A66EC, v10, &type metadata for () + 8);
  }
}

uint64_t sub_1001A39D0(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

double sub_1001A3AC8@<D0>(_OWORD *a1@<X8>)
{
  sub_1001A59A8(v6);
  sub_10008319C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

double sub_1001A3B14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v11 = *(*v1 + 80);
  v12 = v4;
  v5 = *(v3 + 128);
  v13 = *(v3 + 112);
  v14 = v5;
  KeyPath = swift_getKeyPath();
  v9 = v1;
  v10 = a1;
  sub_1001A34AC(KeyPath, sub_1001A6558, &v8, &type metadata for () + 8);
  sub_1000831F8(a1);

  return result;
}

uint64_t sub_1001A3BCC(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 248));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_1001A3C70()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_1001A18E0(v12, v6);
  v13 = *(v2 - 8);
  if ((*(v13 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_1000755BC(v2, v7, v11);
  (*(v13 + 8))(v6, v2);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v11, AssociatedTypeWitness);
  return v17;
}

uint64_t sub_1001A3F78()
{
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1001A4038, v3, v2);
}

uint64_t sub_1001A4038()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001A40E0;

  return sub_10005E31C();
}

uint64_t sub_1001A40E0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  *(v6 + 88) = v3;

  if (v3)
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = sub_100016584;
  }

  else
  {
    *(v6 + 96) = a3;
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
    v9 = sub_1001A420C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001A420C()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = static Array._allocateUninitialized(_:)();
  }

  else
  {
    *(v0 + 16) = *(*(v0 + 24) + *(**(v0 + 24) + 208));
    v3 = *(v0 + 80);
    v4 = *(v0 + 72);
    v5 = *(v0 + 32);
    v6 = swift_task_alloc();
    *(v6 + 16) = *(v5 + 80);
    *(v6 + 24) = *(v5 + 88);
    *(v6 + 32) = *(v5 + 96);
    *(v6 + 48) = *(v5 + 112);
    *(v6 + 56) = *(v5 + 120);
    *(v6 + 72) = *(v5 + 136);
    *(v6 + 80) = v4;
    *(v6 + 88) = v3;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v7 = _ArrayProtocol.filter(_:)();

    v2 = v7;
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1001A4378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a2;
  v29 = a3;
  v10 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v28 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v30 = *(v17 - 8);
  v31 = v17;
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  (*(v10 + 176))(a5, v10);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v20 = *(v16 - 8);
  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
    (*(v30 + 8))(v19, v31);
    v21 = 0;
  }

  else
  {
    v22 = swift_getAssociatedConformanceWitness();
    v23 = (*(v22 + 40))(v16, v22);
    v25 = v24;
    (*(v20 + 8))(v19, v16);
    if (v25)
    {
      if (v23 == v28 && v25 == v29)
      {

        v21 = 1;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21 & 1;
}

BOOL sub_1001A4698(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v28 - v15;
  (*(v12 + 176))(a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  [v18 coordinate];
  v20 = v19;
  v22 = v21;

  v23 = [objc_allocWithZone(CLLocation) initWithLatitude:v20 longitude:v22];
  v24 = [objc_allocWithZone(CLLocation) initWithLatitude:a1 longitude:a2];
  [v24 distanceFromLocation:v23];
  v26 = v25;

  return v26 <= 161000.0;
}

char *sub_1001A488C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  sub_10008324C(*&v0[*(*v0 + 152)], *&v0[*(*v0 + 152) + 8]);
  v4(&v0[*(*v0 + 160)], v3);

  v5 = *(*v0 + 192);
  v6 = *(v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 200)]);

  (*(*(v6 - 8) + 8))(&v0[*(*v0 + 240)], v6);

  v8 = *(*v0 + 288);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_1001A4C58()
{
  sub_1001A488C();

  return swift_deallocClassInstance();
}

char *sub_1001A4CC8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100166B5C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_1001A4DBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012E49C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001A4E28(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001A4E28(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001A5024(v7, v8, a1, v4);
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
    return sub_1001A4F20(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001A4F20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_100027068();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001A5024(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_100027068();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_100027068();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10012DF88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_10012DF88((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_1001A5688((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10012DE90(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_10012DE04(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_10012DE90(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_1001A5688((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10012DE90(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_10012DE04(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1001A5688(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_100027068();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_100027068();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1001A5918()
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  return *(v0 + *(*v0 + 184));
}

__n128 sub_1001A59A8@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  v4 = v1 + *(*v1 + 248);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

double sub_1001A5A54(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v4[20];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v20 = *(v5 + 6);
  v19 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v18 = v12;
  v22 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 8) = v21;
    *(&v18 - 7) = v6;
    *(&v18 - 3) = v20;
    *(&v18 - 4) = v19;
    *(&v18 - 24) = v18;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_1001A34AC(v17, sub_1001A6588, (&v18 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1001A5D5C()
{
  KeyPath = swift_getKeyPath();
  sub_1001A3344(KeyPath);

  return *(v0 + *(*v0 + 152));
}

double sub_1001A5DF0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v20 = *(v5 + 6);
  v19 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v18 = v12;
  v22 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 8) = v21;
    *(&v18 - 7) = v6;
    *(&v18 - 3) = v20;
    *(&v18 - 4) = v19;
    *(&v18 - 24) = v18;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_1001A34AC(v17, sub_1001A65B8, (&v18 - 2), &type metadata for () + 8);
  }

  return result;
}

double sub_1001A60F8(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = v3[24];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v22 = *(v4 + 5);
  v20 = v3[12];
  v21 = *(v4 + 7);
  v12 = v3[16];
  v13 = v23;
  v24 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v21;
    *(&v19 - 4) = v22;
    *(&v19 - 6) = v20;
    *(&v19 - 5) = v6;
    *(&v19 - 2) = v16;
    *(&v19 - 2) = v12;
    *(&v19 - 1) = v5;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = v13;
    sub_1001A34AC(v18, sub_1001A6494, (&v19 - 4), &type metadata for () + 8);
  }

  return result;
}

__n128 sub_1001A6480(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1001A64B0@<X0>(_OWORD *a1@<X8>)
{
  sub_1001A59A8(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

double sub_1001A6500(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_1001A3B14(v5);
}

double sub_1001A65D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001A65F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001A171C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001A6678@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1001A5918();
}

uint64_t sub_1001A66EC()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 184)) = *(v0 + 24);
}

uint64_t sub_1001A67BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001A5D5C();
  *a1 = v2;
  a1[1] = v3;

  return sub_1000E4108(v2, v3);
}

double sub_1001A67F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000E4108(*a1, v2);
  return sub_1001A3584(v1, v2);
}

uint64_t sub_1001A6848()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + *(*v0[2] + 152));
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1000E4108(v1, v2);
  return sub_10008324C(v4, v5);
}

uint64_t sub_1001A68D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000758A8(v0, qword_100230610);
  sub_10001FDF4(v0, qword_100230610);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001A6944()
{
  result = qword_10021CEA0;
  if (!qword_10021CEA0)
  {
    type metadata accessor for Music.Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CEA0);
  }

  return result;
}

uint64_t sub_1001A699C(uint64_t a1, uint64_t a2)
{
  v11 = (*(a2 + 40))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1001A6D9C(sub_1001A72D4, v10, v4, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v11 = v7;
  sub_100009F70(&qword_100219F08, &qword_1001AF358);
  sub_10000D1EC(&qword_100219F10, &qword_100219F08, &qword_1001AF358, &protocol conformance descriptor for [A]);
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t sub_1001A6B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v15[1] = (*(a2 + 40))(a1, a2);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    swift_getAssociatedConformanceWitness();
    v12 = swift_getAssociatedTypeWitness();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v11 + 8))(v10, AssociatedTypeWitness);
  }
}

void *sub_1001A6D9C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A71BC@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 48);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1001A7280(uint64_t a1)
{
  result = sub_10000D1EC(&qword_100223340, &qword_10021B1F8, &qword_1001B0CE0, &protocol conformance descriptor for Music.Lineup<A>);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A72F8()
{
  result = qword_100223348;
  if (!qword_100223348)
  {
    type metadata accessor for Sport.Competitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223348);
  }

  return result;
}

uint64_t sub_1001A7350(uint64_t a1)
{
  *(a1 + 8) = sub_1001A73B8(&qword_100223398, &protocol conformance descriptor for Sport.Detail<A>);
  result = sub_1001A73B8(&qword_1002233A0, &protocol conformance descriptor for Sport.Detail<A>);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001A73B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_10021C4D8, &qword_1001B2F80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A7444(int a1, int a2, int a3, int a4)
{
  if (qword_100230528 == -1)
  {
    if (qword_100230530)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001A790C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100230530)
    {
      return _availability_version_check();
    }
  }

  if (qword_100230520 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001A7924();
    a3 = v10;
    a4 = v9;
    v8 = dword_100230510 < v11;
    if (dword_100230510 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100230514 > a3)
      {
        return 1;
      }

      if (dword_100230514 >= a3)
      {
        return dword_100230518 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100230510 < a2;
  if (dword_100230510 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001A75D8(uint64_t result)
{
  v1 = qword_100230530;
  if (qword_100230530)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100230530 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100230510, &dword_100230514, &dword_100230518);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  v1 = Locale.localizedString(forRegionCode:)(forRegionCode._countAndFlagsBits, forRegionCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t Playlist.id.getter()
{
  return Playlist.id.getter();
}

{
  return Playlist.id.getter();
}

uint64_t type metadata accessor for Playlist()
{
  return type metadata accessor for Playlist();
}

{
  return type metadata accessor for Playlist();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}