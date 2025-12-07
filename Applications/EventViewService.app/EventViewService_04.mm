uint64_t sub_10007E39C(uint64_t a1)
{
  *(a1 + 8) = sub_10007E420(&qword_100224298, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  result = sub_10007E420(&qword_1002242A0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10007E420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007E468(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(&qword_1002242C0, &unk_1001B8B10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002242A8, &qword_1001B8AF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10007E66C(v3 + 40, v12);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    sub_10001BED0(v12, v13);
    (*(v8 + 40))(a1, a2, 0, v7, v8);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
    return sub_100012A7C(v12);
  }

  else
  {
    sub_10007E6DC(v12);
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_10007E66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221AB8, &qword_1001B4EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E6DC(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221AB8, &qword_1001B4EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007E744(uint64_t a1, uint64_t a2)
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

uint64_t sub_10007E768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_10007E7B0(uint64_t result, int a2, int a3)
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
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007E818(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v1 = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        v1 = type metadata accessor for ObservationRegistrar();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v1;
}

uint64_t sub_10007E9A8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10007F4D0(KeyPath, v4, v5);

  v6 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_10007EAEC()
{
  KeyPath = swift_getKeyPath();
  sub_10007F4D0(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_10007EB74()
{
  v1[3] = v0;
  v2 = *v0;
  v1[4] = *(*v0 + 104);
  v1[5] = v2[11];
  v1[6] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = v2[12];
  v1[11] = v2[10];
  v1[12] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v6;
  v1[18] = v5;

  return _swift_task_switch(sub_10007ED68, v6, v5);
}

uint64_t sub_10007ED68()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[3];
  v6 = sub_10007F740(1);
  v0[19] = *(*v5 + 112);
  v0[2] = (*(v4 + 112))(v3, v4, v6);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v1, 1, v2) == 1)
  {
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[14];

    (*(v10 + 8))(v8, v9);
    sub_10007F740(0);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[15];
    v14 = v0[12];
    v24 = v0[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 24))(v14, AssociatedConformanceWitness);
    v18 = v17;
    v0[20] = v17;
    (*(v7 + 8))(v13, v14);
    v23 = (*(v24 + 48) + **(v24 + 48));
    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_10007F08C;
    v20 = v0[9];
    v22 = v0[4];
    v21 = v0[5];

    return v23(v20, v16, v18, v21, v22);
  }
}

uint64_t sub_10007F08C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10007F2DC;
  }

  else
  {
    v5 = sub_10007F1E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007F1E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_10007FF24(v1);
  (*(v2 + 8))(v1, v3, v5);
  sub_10007F740(0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007F2DC()
{
  v14 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*(v5 + 8) + 120))(v4);
    v10 = sub_100139F7C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch playlist for eventID: %s", v6, 0xCu);
    sub_100012A7C(v7);
  }

  sub_10007F740(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007F570(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

double sub_10007F740(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v16 = *(v1 + v3);
  v4 = a1 & 1;
  v15 = a1;
  v5 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = v5;
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v6);
    v10 = v14;
    v12 = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v11 = v1;
    LOBYTE(v12) = v4;
    sub_10007F668(v9, sub_10000BFD8, &v10, &type metadata for () + 8);
  }

  return result;
}

uint64_t *sub_10007F8A0()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128), *(v1 + 88));
  v2 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 160);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10007FA64()
{
  sub_10007F8A0();

  return swift_deallocClassInstance();
}

__n128 sub_10007FAE8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t *sub_10007FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v7 = *v5;
  v8 = *(*v5 + 96);
  v9 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(v7 + 144);
  v16 = *(v7 + 88);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(v5 + v15, 1, 1, v17);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 112), a1, v9);
  v18 = (v5 + *(*v5 + 120));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  (*(*(v16 - 8) + 16))(v5 + *(*v5 + 128), v23, v16);
  v24 = (*(v8 + 112))(v9, v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  LOBYTE(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v12 + 8))(v14, v11);
  *(v5 + *(*v5 + 136)) = a1;
  sub_10007F740(a1);
  return v5;
}

double sub_10007FF24(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = v4[10];
  v12 = v4[12];
  v13 = a1;
  v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (a1)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *&v16 = v21;
    *(&v16 + 1) = v6;
    *&v17 = v12;
    *(&v17 + 1) = v5;
    *(&v20 - 2) = v16;
    *(&v20 - 1) = v17;
    KeyPath = swift_getKeyPath();
    v19 = __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = v13;
    sub_10007F668(v19, sub_10008021C, (&v20 - 4), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10008023C(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1002390D8 = *&v2;
  return result;
}

uint64_t sub_10008026C(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 8.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1002390E0 = *&v2;
  return result;
}

uint64_t sub_1000802B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000803C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CalendarIcon(uint64_t a1)
{
  result = qword_1002243B8;
  if (!qword_1002243B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080514(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10001B7F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000805B4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_100224358 = result;
  return result;
}

uint64_t sub_100080698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v3 = sub_1000024C4(&qword_1002243F0, &qword_1001B8D60);
  __chkstk_darwin(v3 - 8);
  v136 = &v113 - v4;
  v142 = type metadata accessor for ColorScheme();
  v143 = *(v142 - 8);
  v5 = __chkstk_darwin(v142);
  v141 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v113 - v7;
  v139 = type metadata accessor for RoundedRectangle();
  v8 = __chkstk_darwin(v139);
  v133 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = (&v113 - v10);
  v131 = sub_1000024C4(&qword_1002243F8, &qword_1001B8D68);
  __chkstk_darwin(v131);
  v135 = &v113 - v11;
  v132 = sub_1000024C4(&qword_100224400, &qword_1001B8D70);
  __chkstk_darwin(v132);
  v134 = &v113 - v12;
  v129 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v127 = *(v129 - 1);
  __chkstk_darwin(v129);
  v126 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v117 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle();
  v118 = *(v120 - 8);
  v15 = __chkstk_darwin(v120);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v116 = &v113 - v19;
  __chkstk_darwin(v18);
  v119 = &v113 - v20;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000024C4(&qword_100224408, &qword_1001B8D78);
  __chkstk_darwin(v114);
  v26 = &v113 - v25;
  *&v121 = sub_1000024C4(&qword_100224410, &qword_1001B8D80);
  *&v122 = *(v121 - 8);
  __chkstk_darwin(v121);
  v115 = &v113 - v27;
  v125 = sub_1000024C4(&qword_100224418, &qword_1001B8D88) - 8;
  __chkstk_darwin(v125);
  v29 = &v113 - v28;
  v130 = sub_1000024C4(&qword_100224420, &qword_1001B8D90);
  __chkstk_darwin(v130);
  v128 = &v113 - v30;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v31 = sub_1000024C4(&qword_100224428, &qword_1001B8D98);
  sub_100081618(v2, &v26[*(v31 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_10000BFFC(&qword_100224430, &qword_100224408, &qword_1001B8D78, &protocol conformance descriptor for VStack<A>);
  v33 = v114;
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v21);
  sub_1000050C4(v26, &qword_100224408, &qword_1001B8D78);
  static FormatStyle<>.dateTime.getter();
  v34 = v117;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v35 = v116;
  Date.FormatStyle.month(_:)();
  (*(v123 + 8))(v34, v124);
  v36 = *(v118 + 8);
  v37 = v120;
  v36(v17, v120);
  v38 = v126;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v39 = v119;
  Date.FormatStyle.day(_:)();
  (*(v127 + 8))(v38, v129);
  v36(v35, v37);
  sub_100082414(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v36(v39, v37);
  v150 = v144;
  v147 = v33;
  *&v148 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001877C(OpaqueTypeConformance2, v41, v42);
  v43 = v121;
  v44 = v115;
  View.accessibilityLabel<A>(_:)();

  (*(v122 + 8))(v44, v43);
  v45 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = &v29[*(sub_1000024C4(&qword_100224438, &unk_1001B8DA0) + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = *(v125 + 44);
  v129 = v29;
  v56 = &v29[v55];
  v57 = v145;
  *v56 = v144;
  *(v56 + 1) = v57;
  *(v56 + 2) = v146;
  v58 = *(v139 + 20);
  v59 = enum case for RoundedCornerStyle.continuous(_:);
  v60 = type metadata accessor for RoundedCornerStyle();
  v61 = *(v60 - 8);
  v62 = *(v61 + 104);
  v63 = v138;
  LODWORD(v127) = v59;
  v126 = v62;
  v125 = v61 + 104;
  (v62)(v138 + v58, v59, v60);
  __asm { FMOV            V0.2D, #12.0 }

  v124 = _Q0;
  *v63 = _Q0;
  v123 = *(type metadata accessor for CalendarIcon(0) + 20);
  v69 = v140;
  sub_100039EE0(v140);
  v70 = enum case for ColorScheme.light(_:);
  v71 = v143;
  v72 = *(v143 + 104);
  v73 = v141;
  v74 = v142;
  v72(v141, enum case for ColorScheme.light(_:), v142);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v75 = *(v71 + 8);
  v75(v73, v74);
  v143 = v71 + 8;
  v75(v69, v74);
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  if (v39)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1001B49B0;
    *(v76 + 32) = static Color.white.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  else
  {
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1001B3B50;
    if (qword_100220BD0 != -1)
    {
      swift_once();
    }

    *(v77 + 32) = qword_100224358;
    v78 = objc_opt_self();

    v79 = [v78 systemGray6Color];
    *(v77 + 40) = Color.init(uiColor:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
  }

  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v80 = v147;
  v122 = v148;
  v121 = v149;
  v81 = v135;
  sub_1000572CC(v138, v135);
  v82 = v81 + *(v131 + 36);
  *v82 = v80;
  *(v82 + 24) = v121;
  *(v82 + 8) = v122;
  v83 = v133;
  (v126)(&v133[*(v139 + 20)], v127, v60);
  *v83 = v124;
  v84 = v140;
  sub_100039EE0(v140);
  v85 = v141;
  v86 = v142;
  v72(v141, v70, v142);
  v87 = static ColorScheme.== infix(_:_:)();
  v75(v85, v86);
  v75(v84, v86);
  v88 = objc_opt_self();
  v89 = &selRef_systemGray4Color;
  if ((v87 & 1) == 0)
  {
    v89 = &selRef_systemGray5Color;
  }

  v90 = [v88 *v89];
  v91 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v92 = v136;
  sub_100039704(v83, v136);
  v93 = v92 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v94 = v151;
  *v93 = v150;
  *(v93 + 16) = v94;
  *(v93 + 32) = v152;
  v95 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *(v92 + *(v95 + 52)) = v91;
  *(v92 + *(v95 + 56)) = 256;
  v96 = static Alignment.center.getter();
  v98 = v97;
  sub_100039768(v83);
  v99 = (v92 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
  *v99 = v96;
  v99[1] = v98;
  v100 = static Alignment.center.getter();
  v102 = v101;
  v103 = v134;
  v104 = &v134[*(v132 + 36)];
  sub_10001AE00(v92, v104, &qword_1002243F0, &qword_1001B8D60);
  v105 = (v104 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
  *v105 = v100;
  v105[1] = v102;
  sub_10001AE00(v81, v103, &qword_1002243F8, &qword_1001B8D68);
  v106 = static Alignment.center.getter();
  v108 = v107;
  v109 = v128;
  v110 = &v128[*(v130 + 36)];
  sub_10001AE00(v103, v110, &qword_100224400, &qword_1001B8D70);
  v111 = (v110 + *(sub_1000024C4(&qword_100224448, &qword_1001B8DD0) + 36));
  *v111 = v106;
  v111[1] = v108;
  sub_100082108(v129, v109);
  sub_100082178();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v109, &qword_100224420, &qword_1001B8D90);
}

uint64_t sub_100081618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = a1;
  v89 = sub_1000024C4(&qword_100224480, &qword_1001B8DE0);
  __chkstk_darwin(v89);
  v88 = &v80 - v2;
  v3 = sub_1000024C4(&qword_100224488, &qword_1001B8DE8);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v80 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v94 = v7;
  v95 = v8;
  __chkstk_darwin(v7);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v10 = *(v83 - 1);
  __chkstk_darwin(v83);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Date.FormatStyle();
  v13 = *(v81 - 8);
  v14 = __chkstk_darwin(v81);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000024C4(&qword_100223B60, &qword_1001B8DF0);
  __chkstk_darwin(v82);
  v22 = &v80 - v21;
  v85 = sub_1000024C4(&qword_100224490, &qword_1001B8DF8);
  __chkstk_darwin(v85);
  v24 = &v80 - v23;
  v25 = sub_1000024C4(&qword_100224498, &qword_1001B8E00);
  v26 = __chkstk_darwin(v25 - 8);
  v87 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = &v80 - v28;
  (*(v18 + 16))(v20, v93, v17);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v10 + 8))(v12, v83);
  (*(v13 + 8))(v16, v81);
  sub_100082414(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_100082414(&qword_1002227D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v29 = Text.init<A>(_:format:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  v83 = v33;
  v34 = &v22[*(sub_1000024C4(&qword_100221B68, &unk_1001B4FF0) + 36)];
  v35 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v22 = v29;
  *(v22 + 1) = v31;
  v22[16] = v12 & 1;
  *(v22 + 3) = v83;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v41 = &v22[*(v82 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = enum case for DynamicTypeSize.medium(_:);
  v43 = v94;
  v44 = v95;
  v45 = v84;
  v83 = *(v95 + 104);
  (v83)(v84, enum case for DynamicTypeSize.medium(_:), v94);
  sub_10008246C();
  View.dynamicTypeSize(_:)();
  v46 = *(v44 + 8);
  v47 = v45;
  v95 = v44 + 8;
  v82 = v46;
  v46(v45, v43);
  sub_1000825DC(v22);
  if (qword_100220B80 != -1)
  {
    swift_once();
  }

  v48 = qword_1002390A0;
  *&v24[*(sub_1000024C4(&qword_1002244B0, &qword_1001B8E70) + 36)] = v48;
  v49 = swift_getKeyPath();
  v50 = &v24[*(sub_1000024C4(&qword_1002244B8, &qword_1001B8EA8) + 36)];
  *v50 = v49;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v24[*(v85 + 36)];
  *v52 = v51;
  v52[1] = 0x3FE3333333333333;
  sub_1000826A0();

  v53 = v86;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v24, &qword_100224490, &qword_1001B8DF8);
  v54 = [objc_allocWithZone(NSDateFormatter) init];
  v55 = String._bridgeToObjectiveC()();
  [v54 setDateFormat:v55];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v54 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v96 = v58;
  v97 = v60;
  v65 = v62 & 1;
  v98 = v62 & 1;
  v99 = v64;
  v66 = v42;
  v67 = v94;
  (v83)(v47, v66, v94);
  v68 = v88;
  View.dynamicTypeSize(_:)();
  (v82)(v47, v67);
  sub_100017398(v58, v60, v65);

  LODWORD(v58) = static HierarchicalShapeStyle.primary.getter();
  *(v68 + *(sub_1000024C4(&qword_1002244E8, &qword_1001B8EE8) + 36)) = v58;
  LOBYTE(v58) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68 + *(v89 + 36);
  *v69 = v58;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  sub_100082904(&qword_1002244F0, &qword_100224480, &qword_1001B8DE0, sub_100082988);
  v74 = v90;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v68, &qword_100224480, &qword_1001B8DE0);
  v75 = v87;
  sub_10000BEB8(v53, v87, &qword_100224498, &qword_1001B8E00);
  v76 = v91;
  sub_10000BEB8(v74, v91, &qword_100224488, &qword_1001B8DE8);
  v77 = v92;
  sub_10000BEB8(v75, v92, &qword_100224498, &qword_1001B8E00);
  v78 = sub_1000024C4(&qword_100224510, &qword_1001B8EF8);
  sub_10000BEB8(v76, v77 + *(v78 + 48), &qword_100224488, &qword_1001B8DE8);
  sub_1000050C4(v74, &qword_100224488, &qword_1001B8DE8);
  sub_1000050C4(v53, &qword_100224498, &qword_1001B8E00);
  sub_1000050C4(v76, &qword_100224488, &qword_1001B8DE8);
  return sub_1000050C4(v75, &qword_100224498, &qword_1001B8E00);
}

uint64_t sub_100082108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224418, &qword_1001B8D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100082178()
{
  result = qword_100224450;
  if (!qword_100224450)
  {
    sub_10000460C(&qword_100224420, &qword_1001B8D90);
    sub_100082230();
    sub_10000BFFC(&qword_100224478, &qword_100224448, &qword_1001B8DD0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224450);
  }

  return result;
}

unint64_t sub_100082230()
{
  result = qword_100224458;
  if (!qword_100224458)
  {
    sub_10000460C(&qword_100224418, &qword_1001B8D88);
    sub_100082904(&qword_100224460, &qword_100224438, &unk_1001B8DA0, sub_1000822E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224458);
  }

  return result;
}

unint64_t sub_1000822E8()
{
  result = qword_100224468;
  if (!qword_100224468)
  {
    sub_10000460C(&qword_100224470, &qword_1001B8DD8);
    sub_10000460C(&qword_100224408, &qword_1001B8D78);
    sub_10000BFFC(&qword_100224430, &qword_100224408, &qword_1001B8D78, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100082414(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224468);
  }

  return result;
}

uint64_t sub_100082414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008246C()
{
  result = qword_1002244A0;
  if (!qword_1002244A0)
  {
    sub_10000460C(&qword_100223B60, &qword_1001B8DF0);
    sub_100082524();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244A0);
  }

  return result;
}

unint64_t sub_100082524()
{
  result = qword_1002244A8;
  if (!qword_1002244A8)
  {
    sub_10000460C(&qword_100221B68, &unk_1001B4FF0);
    sub_10000BFFC(&qword_100222258, &qword_100221B70, &qword_1001B7140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244A8);
  }

  return result;
}

uint64_t sub_1000825DC(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100223B60, &qword_1001B8DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000826A0()
{
  result = qword_1002244C0;
  if (!qword_1002244C0)
  {
    sub_10000460C(&qword_100224490, &qword_1001B8DF8);
    sub_100082758();
    sub_10000BFFC(&qword_1002244D8, &qword_1002244E0, &qword_1001B8EE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244C0);
  }

  return result;
}

unint64_t sub_100082758()
{
  result = qword_1002244C8;
  if (!qword_1002244C8)
  {
    sub_10000460C(&qword_1002244B8, &qword_1001B8EA8);
    sub_100082810();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50, &unk_1001B5930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244C8);
  }

  return result;
}

unint64_t sub_100082810()
{
  result = qword_1002244D0;
  if (!qword_1002244D0)
  {
    sub_10000460C(&qword_1002244B0, &qword_1001B8E70);
    sub_10000460C(&qword_100223B60, &qword_1001B8DF0);
    sub_10008246C();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244D0);
  }

  return result;
}

uint64_t sub_100082904(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100082988()
{
  result = qword_1002244F8;
  if (!qword_1002244F8)
  {
    sub_10000460C(&qword_1002244E8, &qword_1001B8EE8);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100224500, &qword_100224508, &qword_1001B8EF0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002244F8);
  }

  return result;
}

unint64_t sub_100082A74()
{
  result = qword_100224518;
  if (!qword_100224518)
  {
    sub_10000460C(&qword_100224520, &qword_1001B8F00);
    sub_100082178();
    sub_100082414(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224518);
  }

  return result;
}

void sub_100082B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      sub_100082DA0(319);
      if (v6 <= 0x3F)
      {
        sub_100029AB4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100082C08(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100082CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100082DA0(uint64_t a1)
{
  if (!qword_1002219B8)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1002219B8);
    }
  }
}

uint64_t sub_100082E3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  State.init(wrappedValue:)();
  *a4 = v14;
  a4[1] = v15;
  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v8;
  v10 = type metadata accessor for SportEventView(0, *(v7 + 80), *(v7 + 88), v9);
  v11 = *(v10 + 40);
  *(a4 + v11) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  result = swift_storeEnumTagMultiPayload();
  v13 = a4 + *(v10 + 44);
  *v13 = a2;
  v13[8] = a3 & 1;
  return result;
}

double sub_100082FDC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 96.0;
  if (v1 != 1)
  {
    return 12.0;
  }

  return result;
}

double sub_100083044()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 100.0;
  if (v1 != 1)
  {
    return 16.0;
  }

  return result;
}

double sub_1000830AC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 84.0;
  }

  v3 = static Solarium.isEnabled.getter();
  result = -4.0;
  if (v3)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_100083128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_10008317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.projectedValue.getter();
  return v5;
}

uint64_t sub_1000831D4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100083454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v137 = type metadata accessor for TaskPriority();
  v136 = *(v137 - 8);
  v3 = __chkstk_darwin(v137);
  v135 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(a1 - 8);
  v144 = *(v134 + 64);
  __chkstk_darwin(v3);
  v133 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v129 = a1;
  type metadata accessor for Optional();
  v132 = type metadata accessor for Binding();
  v131 = *(v132 - 1);
  __chkstk_darwin(v132);
  v130 = &v107 - v7;
  v140 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v8 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v6;
  v159 = v12;
  v160 = v13;
  v161 = WitnessTable;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v15 = type metadata accessor for ModifiedContent();
  v156 = swift_getWitnessTable();
  v157 = &protocol witness table for _PaddingLayout;
  v126 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v159 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v159 = sub_10000460C(&qword_1002245B0, &unk_1001B8F90);
  type metadata accessor for DetailsModule(255, v6, v13, v17);
  v160 = type metadata accessor for ModifiedContent();
  v18 = swift_getAssociatedTypeWitness();
  v141 = v6;
  v19 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v18, v19, v20);
  v161 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v6, v13, v21);
  v162 = type metadata accessor for Optional();
  v163 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v22 = type metadata accessor for ScrollView();
  v23 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v22;
  v159 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v22;
  v159 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v24;
  v159 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v24;
  v159 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v26;
  v159 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v28 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v26;
  v159 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v154 = v29;
  v155 = v30;
  v31 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v28;
  v159 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v28;
  v159 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v36 = sub_10001877C(v33, v34, v35);
  OpaqueTypeMetadata2 = v32;
  v159 = &type metadata for String;
  v160 = v33;
  v161 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v32;
  v159 = &type metadata for String;
  v160 = v33;
  v161 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v37;
  v159 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v37;
  v159 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v39;
  v159 = &type metadata for Bool;
  v160 = v40;
  v161 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_10000460C(&qword_1002245C0, &qword_1001C2760);
  OpaqueTypeMetadata2 = v39;
  v159 = &type metadata for Bool;
  v160 = v40;
  v161 = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0, &qword_1001C2760, &protocol conformance descriptor for TupleToolbarContent<A>);
  OpaqueTypeMetadata2 = v41;
  v159 = v42;
  v160 = v43;
  v161 = v44;
  v117 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v41;
  v159 = v42;
  v160 = v43;
  v161 = v44;
  v115 = swift_getOpaqueTypeConformance2();
  v45 = type metadata accessor for NavigationStack();
  v116 = *(v45 - 8);
  __chkstk_darwin(v45);
  v113 = &v107 - v46;
  type metadata accessor for AccessibilityAttachmentModifier();
  v47 = type metadata accessor for ModifiedContent();
  v127 = *(v47 - 8);
  __chkstk_darwin(v47);
  v112 = &v107 - v48;
  v49 = swift_getWitnessTable();
  v109 = v49;
  v50 = sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v152 = v49;
  v153 = v50;
  v51 = swift_getWitnessTable();
  v52 = *(v13 + 16);
  v53 = v129;
  v54 = swift_getWitnessTable();
  v55 = v47;
  v108 = v47;
  v56 = v141;
  OpaqueTypeMetadata2 = v47;
  v159 = v141;
  v160 = v53;
  v161 = v51;
  v111 = v51;
  v162 = v52;
  v163 = v54;
  v110 = v52;
  v57 = v54;
  v107 = v54;
  v119 = swift_getOpaqueTypeMetadata2();
  v123 = *(v119 - 8);
  __chkstk_darwin(v119);
  v139 = &v107 - v58;
  v59 = type metadata accessor for ModifiedContent();
  v128 = *(v59 - 8);
  __chkstk_darwin(v59);
  v140 = &v107 - v60;
  OpaqueTypeMetadata2 = v55;
  v159 = v56;
  v61 = v53;
  v160 = v53;
  v161 = v51;
  v162 = v52;
  v163 = v57;
  v114 = swift_getOpaqueTypeConformance2();
  v150 = v114;
  v151 = &protocol witness table for _AppearanceActionModifier;
  v121 = v59;
  v120 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v59;
  v159 = v120;
  v124 = &unk_1001C94C8;
  v125 = swift_getOpaqueTypeMetadata2();
  v126 = *(v125 - 8);
  v62 = __chkstk_darwin(v125);
  v118 = &v107 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v122 = &v107 - v64;
  v147 = v56;
  v65 = v56;
  v66 = v142;
  v148 = v142;
  v149 = v143;
  v67 = v113;
  NavigationStack.init<>(root:)();
  v68 = v112;
  View.accessibilityIdentifier(_:)();
  (*(v116 + 8))(v67, v45);
  v69 = v61;
  v73 = sub_10008317C(v61, v70, v71, v72);
  v75 = v74;
  v77 = v76;
  v145 = v65;
  v146 = v66;
  v78 = v66;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v73;
  v159 = v75;
  v160 = v77;
  type metadata accessor for SportEventViewModel(255, v65, v66, v79);
  type metadata accessor for Binding();
  v80 = v130;
  Binding.subscript.getter();

  v81 = swift_allocObject();
  v82 = v65;
  *(v81 + 16) = v65;
  *(v81 + 24) = v78;
  v83 = v108;
  v84 = v69;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v131 + 8))(v80, v132);
  (*(v127 + 8))(v68, v83);
  v85 = v134;
  v132 = *(v134 + 16);
  v86 = v133;
  v87 = v143;
  v132(v133, v143, v84);
  v88 = *(v85 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = v82;
  *(v89 + 24) = v78;
  v90 = *(v85 + 32);
  v90(v89 + ((v88 + 32) & ~v88), v86, v84);
  v91 = v119;
  v92 = v139;
  View.onAppear(perform:)();

  (*(v123 + 8))(v92, v91);
  v132(v86, v87, v84);
  type metadata accessor for MainActor();
  v93 = static MainActor.shared.getter();
  v94 = swift_allocObject();
  v94[2] = v93;
  v94[3] = &protocol witness table for MainActor;
  v95 = v142;
  v94[4] = v141;
  v94[5] = v95;
  v90(v94 + ((v88 + 48) & ~v88), v86, v84);
  v96 = v135;
  v97 = v121;
  v98 = v120;
  j___sScP13userInitiatedScPvgZ();
  v99 = v118;
  v100 = v96;
  v101 = v96;
  v102 = v140;
  sub_10000250C(0, v100, 0xD000000000000025, 0x80000001001C6170, 145, &unk_1001B8FE8, v94, v118, v97, v98);
  (*(v136 + 8))(v101, v137);
  (*(v128 + 8))(v102, v97);
  OpaqueTypeMetadata2 = v97;
  v159 = v98;
  swift_getOpaqueTypeConformance2();
  v103 = v122;
  v104 = v125;
  sub_1000EE87C();
  v105 = v126[1];
  v105(v99, v104);
  sub_1000EE87C();
  return (v105)(v103, v104);
}

uint64_t sub_1000845C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v187 = a1;
  v184 = a5;
  v185 = type metadata accessor for SportEventView(0, a2, a3, a4);
  v183 = *(v185 - 8);
  v181 = *(v183 + 64);
  __chkstk_darwin(v185);
  v182 = &v126 - v7;
  v180 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ContentMarginPlacement();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v174 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ScrollIndicatorVisibility();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v126 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v186 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v197 = v14;
  v198 = v15;
  v199 = WitnessTable;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v17 = type metadata accessor for ModifiedContent();
  v194 = swift_getWitnessTable();
  v195 = &protocol witness table for _PaddingLayout;
  v18 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v17;
  v197 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v197 = sub_10000460C(&qword_1002245B0, &unk_1001B8F90);
  type metadata accessor for DetailsModule(255, a2, v15, v19);
  v198 = type metadata accessor for ModifiedContent();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v20, v21, v22);
  v199 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, v15, v23);
  v200 = type metadata accessor for Optional();
  v201 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v129 = type metadata accessor for VStack();
  v128 = swift_getWitnessTable();
  v24 = type metadata accessor for ScrollView();
  v135 = *(v24 - 8);
  __chkstk_darwin(v24);
  v127 = &v126 - v25;
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v24;
  v197 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v133 = *(v27 - 8);
  __chkstk_darwin(v27);
  v132 = &v126 - v28;
  v137 = v24;
  OpaqueTypeMetadata2 = v24;
  v197 = v26;
  v131 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v197 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v149 = *(v30 - 8);
  __chkstk_darwin(v30);
  v144 = &v126 - v31;
  v134 = v27;
  OpaqueTypeMetadata2 = v27;
  v197 = OpaqueTypeConformance2;
  v130 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v30;
  v197 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v159 = *(v33 - 8);
  __chkstk_darwin(v33);
  v152 = &v126 - v34;
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v164 = v33;
  v35 = type metadata accessor for ModifiedContent();
  v158 = *(v35 - 8);
  __chkstk_darwin(v35);
  v151 = &v126 - v36;
  v153 = v30;
  OpaqueTypeMetadata2 = v30;
  v197 = v32;
  v141 = v32;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v136 = v37;
  v192 = v37;
  v193 = v38;
  v39 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v35;
  v197 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v146 = *(v40 - 8);
  __chkstk_darwin(v40);
  v143 = &v126 - v41;
  v162 = v35;
  OpaqueTypeMetadata2 = v35;
  v197 = v39;
  v138 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v45 = sub_10001877C(v42, v43, v44);
  OpaqueTypeMetadata2 = v40;
  v197 = &type metadata for String;
  v198 = v42;
  v199 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v160 = *(v46 - 8);
  __chkstk_darwin(v46);
  v154 = &v126 - v47;
  v148 = v40;
  OpaqueTypeMetadata2 = v40;
  v197 = &type metadata for String;
  v140 = v42;
  v198 = v42;
  v199 = v45;
  v139 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v46;
  v197 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v170 = *(v49 - 8);
  __chkstk_darwin(v49);
  v168 = &v126 - v50;
  v165 = v46;
  OpaqueTypeMetadata2 = v46;
  v197 = v48;
  v142 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v49;
  v197 = &type metadata for Bool;
  v198 = v51;
  v199 = &protocol witness table for Bool;
  v52 = swift_getOpaqueTypeMetadata2();
  v167 = *(v52 - 8);
  __chkstk_darwin(v52);
  v166 = &v126 - v53;
  v54 = sub_10000460C(&qword_1002245C0, &qword_1001C2760);
  v171 = v49;
  OpaqueTypeMetadata2 = v49;
  v197 = &type metadata for Bool;
  v157 = v51;
  v198 = v51;
  v199 = &protocol witness table for Bool;
  v55 = v127;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0, &qword_1001C2760, &protocol conformance descriptor for TupleToolbarContent<A>);
  v169 = v52;
  OpaqueTypeMetadata2 = v52;
  v197 = v54;
  v163 = v54;
  v155 = v56;
  v198 = v56;
  v199 = v57;
  v150 = v57;
  v161 = swift_getOpaqueTypeMetadata2();
  v156 = *(v161 - 8);
  v58 = __chkstk_darwin(v161);
  v145 = &v126 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v147 = &v126 - v60;
  v175 = a2;
  v189 = a2;
  v190 = v186;
  v191 = v187;
  v61 = static Axis.Set.vertical.getter();
  sub_1000E7A24(v61, sub_10008B098, v188, v129, v128);
  v62 = v126;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v64 = static Axis.Set.vertical.getter();
  *(inited + 32) = v64;
  v65 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v65;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v64)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v65)
  {
    Axis.Set.init(rawValue:)();
  }

  v66 = v185;
  v67 = v176;
  v68 = v174;
  v69 = v144;
  v70 = v132;
  v71 = v62;
  v72 = v137;
  View.scrollIndicators(_:axes:)();
  (*(v172 + 8))(v71, v173);
  (*(v135 + 8))(v55, v72);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v73 = v134;
  View.contentMargins(_:_:for:)();
  v74 = *(v67 + 8);
  v75 = v177;
  v74(v68, v177);
  (*(v133 + 8))(v70, v73);
  static Edge.Set.bottom.getter();
  v76 = v187;
  sub_100083128(v66, v77, v78, v79);
  if (*(v76 + 16))
  {

    sub_1000727B4(v80);

    static ContentMarginPlacement.scrollContent.getter();
    v81 = v152;
    v82 = v153;
    View.contentMargins(_:_:for:)();
    v74(v68, v75);
    (*(v149 + 8))(v69, v82);
    v83 = [objc_opt_self() systemGroupedBackgroundColor];
    OpaqueTypeMetadata2 = Color.init(uiColor:)();
    static Edge.Set.all.getter();
    v84 = v151;
    v85 = v164;
    View.background<A>(_:ignoresSafeAreaEdges:)();

    (*(v159 + 8))(v81, v85);
    v86 = v179;
    v87 = v178;
    v88 = v180;
    (*(v179 + 104))(v178, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v180);
    v89 = v143;
    v90 = v162;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v86 + 8))(v87, v88);
    (*(v158 + 8))(v84, v90);
    v91 = v185;
    v92 = v187;
    sub_100083128(v185, v93, v94, v95);
    v96 = sub_100074440();
    v98 = v97;

    OpaqueTypeMetadata2 = v96;
    v197 = v98;
    v99 = v154;
    v100 = v148;
    View.navigationTitle<A>(_:)();

    (*(v146 + 8))(v89, v100);
    sub_100083128(v91, v101, v102, v103);
    sub_10006F46C();

    sub_1000024C4(&qword_1002245D8, &unk_1001B90A0);
    type metadata accessor for ToolbarPlacement();
    *(swift_allocObject() + 16) = xmmword_1001B49B0;
    static ToolbarPlacement.navigationBar.getter();
    v104 = v168;
    v105 = v165;
    View.toolbarBackgroundVisibility(_:for:)();

    (*(v160 + 8))(v99, v105);
    v106 = swift_allocObject();
    v107 = v175;
    v108 = v186;
    *(v106 + 16) = v175;
    *(v106 + 24) = v108;
    v109 = v183;
    v110 = v182;
    (*(v183 + 16))(v182, v92, v91);
    v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v107;
    *(v112 + 24) = v108;
    (*(v109 + 32))(v112 + v111, v110, v91);
    v125 = &protocol witness table for Bool;
    v113 = v166;
    v114 = v171;
    View.onScrollGeometryChange<A>(for:of:action:)();

    v115 = (*(v170 + 8))(v104, v114);
    __chkstk_darwin(v115);
    *(&v126 - 4) = v107;
    *(&v126 - 3) = v108;
    v125 = v92;
    v116 = v145;
    v117 = v169;
    v118 = v163;
    v119 = v155;
    v120 = v150;
    View.toolbar<A>(content:)();
    (*(v167 + 8))(v113, v117);
    OpaqueTypeMetadata2 = v117;
    v197 = v118;
    v198 = v119;
    v199 = v120;
    swift_getOpaqueTypeConformance2();
    v121 = v147;
    v122 = v161;
    sub_1000EE87C();
    v123 = *(v156 + 8);
    v123(v116, v122);
    sub_1000EE87C();
    return (v123)(v121, v122);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100085C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(a3 + 8);
  OpaqueTypeMetadata2 = a2;
  v34 = v9;
  v35 = v10;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v11 = type metadata accessor for ModifiedContent();
  v31 = swift_getWitnessTable();
  v32 = &protocol witness table for _PaddingLayout;
  v12 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v11;
  v34 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = sub_10000460C(&qword_1002245B0, &unk_1001B8F90);
  type metadata accessor for DetailsModule(255, a2, v10, v13);
  v35 = type metadata accessor for ModifiedContent();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v14, v15, v16);
  WitnessTable = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, v10, v17);
  v37 = type metadata accessor for Optional();
  v38 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v18 = type metadata accessor for VStack();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v27[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v27[-v23];
  static HorizontalAlignment.leading.getter();
  v28 = a2;
  v29 = a3;
  v30 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v25 = *(v19 + 8);
  v25(v22, v18);
  sub_1000EE87C();
  return (v25)(v24, v18);
}

uint64_t sub_100086014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v375 = a4;
  v378 = type metadata accessor for AppModule(0);
  v373 = *(v378 - 8);
  __chkstk_darwin(v378);
  v344 = (&v336 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v374 = sub_1000024C4(&qword_1002245B8, &unk_1001BBA20);
  v8 = __chkstk_darwin(v374);
  v395 = &v336 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v379 = &v336 - v10;
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  __chkstk_darwin(v11 - 8);
  v342 = &v336 - v12;
  v13 = *(a3 + 8);
  v15 = type metadata accessor for UpcomingViewModel(0, a2, v13, v14);
  __chkstk_darwin(v15 - 8);
  v340 = &v336 - v16;
  v18 = type metadata accessor for UpcomingModule(0, a2, v13, v17);
  v371 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v343 = &v336 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v341 = &v336 - v21;
  v393 = v22;
  v394 = type metadata accessor for Optional();
  v390 = *(v394 - 8);
  v23 = __chkstk_darwin(v394);
  v397 = &v336 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v392 = &v336 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v365 = &v336 - v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v364 = AssociatedTypeWitness;
  v363 = AssociatedConformanceWitness;
  v30 = type metadata accessor for LocationModule(0, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
  v368 = *(v30 - 8);
  __chkstk_darwin(v30);
  v367 = &v336 - v31;
  v369 = v32;
  v403 = type metadata accessor for ModifiedContent();
  v387 = *(v403 - 8);
  v33 = __chkstk_darwin(v403);
  v391 = &v336 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v366 = &v336 - v36;
  __chkstk_darwin(v35);
  v389 = &v336 - v37;
  v39 = type metadata accessor for DetailsModule(0, a2, v13, v38);
  v361 = *(v39 - 8);
  __chkstk_darwin(v39);
  v360 = &v336 - v40;
  v362 = v41;
  v402 = type metadata accessor for ModifiedContent();
  v385 = *(v402 - 8);
  v42 = __chkstk_darwin(v402);
  v388 = &v336 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v359 = &v336 - v45;
  __chkstk_darwin(v44);
  v401 = &v336 - v46;
  v47 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v47 - 8);
  v370 = &v336 - v48;
  v336 = type metadata accessor for ServicesUpsellModule(0);
  __chkstk_darwin(v336);
  v339 = (&v336 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v376 = sub_1000024C4(&qword_100224648, &unk_1001B90F0);
  v357 = *(v376 - 8);
  v50 = __chkstk_darwin(v376);
  v338 = &v336 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v337 = &v336 - v52;
  v372 = sub_1000024C4(&qword_1002245B0, &unk_1001B8F90);
  v53 = __chkstk_darwin(v372);
  v386 = &v336 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v404 = &v336 - v55;
  v396 = a3;
  v57 = type metadata accessor for SportEventView(0, a2, a3, v56);
  v398 = *(v57 - 8);
  v380 = *(v398 + 64);
  v58 = __chkstk_darwin(v57);
  v381 = &v336 - v59;
  __chkstk_darwin(v58);
  v61 = &v336 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedConformanceWitness();
  v65 = type metadata accessor for HeroImageView(255, v62, v63, v64);
  v351 = v65;
  WitnessTable = swift_getWitnessTable();
  *&v420 = a2;
  *(&v420 + 1) = v65;
  v405 = a2;
  *&v421 = v13;
  *(&v421 + 1) = WitnessTable;
  v66 = type metadata accessor for HeaderModule(0, &v420);
  v353 = *(v66 - 8);
  __chkstk_darwin(v66);
  v347 = &v336 - v67;
  v68 = type metadata accessor for ModifiedContent();
  v356 = *(v68 - 8);
  __chkstk_darwin(v68);
  v355 = &v336 - v69;
  v354 = v66;
  v348 = swift_getWitnessTable();
  v428 = v348;
  v429 = &protocol witness table for _PaddingLayout;
  v70 = swift_getWitnessTable();
  v358 = v68;
  *&v420 = v68;
  *(&v420 + 1) = v70;
  v352 = v70;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v383 = *(OpaqueTypeMetadata2 - 8);
  v71 = __chkstk_darwin(OpaqueTypeMetadata2);
  v384 = &v336 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v349 = &v336 - v74;
  __chkstk_darwin(v73);
  v399 = &v336 - v75;
  v377 = v13;
  v346 = type metadata accessor for HeaderViewModel(0, a2, v13, v76);
  sub_100083128(v57, v77, v78, v79);
  sub_10006FDA0(v61);

  v83 = sub_100083128(v57, v80, v81, v82);
  v84 = sub_10007029C(v83);
  v86 = v85;

  sub_100083128(v57, v87, v88, v89);
  v90 = sub_1000703B0();
  v92 = v91;

  sub_100083128(v57, v93, v94, v95);
  v96 = sub_100070688();
  v98 = v97;

  v102 = sub_100083128(v57, v99, v100, v101);
  LOBYTE(a2) = sub_10007147C(v102);

  v422 = 0;
  v420 = 0u;
  v421 = 0u;
  v103 = sub_10002E5E4(v382, v84, v86, v90, v92, v96, v98, 0, 0, a2 & 1, &v420);
  v104 = v398;
  v105 = v381;
  v346 = *(v398 + 16);
  v346(v381, a1, v57);
  v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v107 = swift_allocObject();
  v108 = v396;
  *(v107 + 16) = v405;
  *(v107 + 24) = v108;
  v109 = *(v104 + 32);
  v110 = v105;
  v111 = v347;
  v398 = v104 + 32;
  v345 = v109;
  v109(v107 + v106, v110, v57);
  sub_10016A66C(v103, sub_10008B420, v107, v351, WitnessTable, v111);
  static Edge.Set.horizontal.getter();
  v112 = v57;
  v406 = a1;
  if (sub_1000831D4(v57))
  {
    sub_100082FDC();
  }

  v113 = v108;
  v114 = v355;
  v115 = v354;
  View.padding(_:_:)();
  (*(v353 + 8))(v111, v115);
  v116 = v381;
  v117 = v406;
  v346(v381, v406, v112);
  v118 = swift_allocObject();
  v119 = v405;
  v120 = v112;
  *(v118 + 16) = v405;
  *(v118 + 24) = v113;
  v345(v118 + v106, v116, v112);
  v121 = v349;
  v122 = v358;
  v123 = v352;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v356 + 8))(v114, v122);
  *&v420 = v122;
  *(&v420 + 1) = v123;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = OpaqueTypeMetadata2;
  v380 = OpaqueTypeConformance2;
  sub_1000EE87C();
  v126 = *(v383 + 8);
  v398 = v383 + 8;
  v381 = v126;
  (v126)(v121, v125);
  v127 = v120;
  sub_100083128(v120, v128, v129, v130);
  v131 = *(v117 + 16);
  if (v131)
  {
    v132 = objc_allocWithZone(LSApplicationWorkspace);

    v133 = [v132 init];
    v134 = objc_opt_self();
    v135 = String._bridgeToObjectiveC()();
    v136 = [v134 applicationWithBundleIdentifier:v135];

    LOBYTE(v135) = sub_100074F98(v131, 0xD000000000000010, 0x80000001001C61D0, v136);

    v358 = v131;

    v140 = 1;
    v141 = v127;
    if (v135)
    {
      v142 = sub_100083128(v127, v137, v138, v139);
      v143 = sub_1000706A8(v142);
      v145 = v144;

      sub_100083128(v127, v146, v147, v148);
      v149 = v370;
      sub_10006F818(v370);

      sub_100083128(v127, v150, v151, v152);
      v153 = sub_100074B94();
      v155 = v154;

      v159 = sub_100083128(v141, v156, v157, v158);
      v160 = sub_100073580(v159);

      type metadata accessor for ServicesUpsellViewModel(0);
      v161 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v161 + 16) = 1;
      *(v161 + 24) = v143;
      *(v161 + 32) = v145;
      sub_10001AE00(v149, v161 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL, &qword_1002214F8, &qword_1001B3D20);
      v162 = (v161 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
      *v162 = 0;
      v162[1] = 0;
      v163 = (v161 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery);
      *v163 = v153;
      v163[1] = v155;
      v119 = v405;
      *(v161 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_analyticsPageNameType) = v160;
      v164 = v339;
      *v339 = v161;
      type metadata accessor for RemoteViewConfiguration();
      sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      v164[1] = EnvironmentObject.init()();
      v164[2] = v165;
      v166 = *(v336 + 24);
      *(v164 + v166) = swift_getKeyPath();
      sub_1000024C4(qword_100221928, &unk_1001B65E0);
      swift_storeEnumTagMultiPayload();
      v167 = static Edge.Set.horizontal.getter();
      if (sub_1000831D4(v141))
      {
        sub_100083044();
      }

      EdgeInsets.init(_all:)();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v175 = v174;
      v176 = v164;
      v177 = v338;
      sub_10008B8CC(v176, v338, type metadata accessor for ServicesUpsellModule);
      v178 = v177 + *(v376 + 36);
      *v178 = v167;
      *(v178 + 8) = v169;
      *(v178 + 16) = v171;
      *(v178 + 24) = v173;
      *(v178 + 32) = v175;
      *(v178 + 40) = 0;
      v179 = v177;
      v180 = v337;
      sub_10001AE00(v179, v337, &qword_100224648, &unk_1001B90F0);
      sub_10001AE00(v180, v404, &qword_100224648, &unk_1001B90F0);
      v140 = 0;
    }

    (*(v357 + 56))(v404, v140, 1, v376);
    type metadata accessor for DetailsViewModel(0, v119, v377, v181);
    sub_100083128(v141, v182, v183, v184);
    v185 = v382;
    sub_10006FDA0(v382);

    sub_100083128(v141, v186, v187, v188);
    v189 = sub_100074554();
    v190 = v189;

    v191 = sub_1000F6130(v185, v189);
    v192 = v360;
    sub_1000924E4(v191, v360);
    static Edge.Set.horizontal.getter();
    v193 = sub_1000831D4(v141);
    v194 = v396;
    if (v193)
    {
      sub_1000830AC();
    }

    else
    {
      static Solarium.isEnabled.getter();
    }

    v195 = v362;
    v196 = swift_getWitnessTable();
    v197 = v359;
    View.padding(_:_:)();
    (*(v361 + 8))(v192, v195);
    v426 = v196;
    v427 = &protocol witness table for _PaddingLayout;
    v198 = v402;
    v362 = swift_getWitnessTable();
    sub_1000EE87C();
    v199 = *(v385 + 8);
    v382 = (v385 + 8);
    v376 = v199;
    v199(v197, v198);
    type metadata accessor for LocationViewModel(0, v364, v363, v200);
    v204 = sub_100083128(v141, v201, v202, v203);
    v205 = sub_1000706A8(v204);
    v207 = v206;

    v211 = sub_100083128(v141, v208, v209, v210);
    v212 = v365;
    sub_1000707BC(v211);

    sub_100083128(v141, v213, v214, v215);
    v216 = sub_100074554();
    v217 = v216;

    v221 = sub_100083128(v141, v218, v219, v220);
    v222 = sub_100073580(v221);

    v223 = sub_1001AC5D4(v205, v207, v212, v216, v222);
    v224 = v367;
    sub_100090A38(v223, v367);
    static Edge.Set.horizontal.getter();
    if (sub_1000831D4(v141))
    {
      v225 = v405;
      sub_100083044();
    }

    else
    {
      v225 = v405;
    }

    v226 = v369;
    v227 = swift_getWitnessTable();
    v228 = v366;
    View.padding(_:_:)();
    (*(v368 + 1))(v224, v226);
    v424 = v227;
    v425 = &protocol witness table for _PaddingLayout;
    v229 = v403;
    v367 = swift_getWitnessTable();
    sub_1000EE87C();
    v230 = *(v387 + 8);
    v369 = v387 + 8;
    v368 = v230;
    v230(v228, v229);
    sub_100083128(v141, v231, v232, v233);
    LOBYTE(v229) = sub_100071694();

    if (v229)
    {
      v237 = sub_100083128(v141, v234, v235, v236);
      v238 = (v237 + *(*v237 + 168));
      v239 = v238[1];
      v366 = *v238;

      v243 = sub_100083128(v141, v240, v241, v242);
      v365 = sub_1000708C8(v243);
      v364 = v244;

      sub_100083128(v141, v245, v246, v247);
      v248 = sub_1000744CC();

      v252 = sub_10008317C(v141, v249, v250, v251);
      v254 = v253;
      v256 = v255;
      __chkstk_darwin(v252);
      swift_getKeyPath();
      *&v420 = v252;
      *(&v420 + 1) = v254;
      *&v421 = v256;
      type metadata accessor for SportEventViewModel(255, v225, v194, v257);
      type metadata accessor for Binding();
      v258 = v342;
      Binding.subscript.getter();

      v259 = v377;
      v260 = v340;
      sub_1000EF8A0(v366, v239, v365, v364, 1, v248, v258, v225, v340, v377);
      KeyPath = swift_getKeyPath();
      v262 = v343;
      sub_1000C72AC(v260, KeyPath, 0, v225, v259, v343);
      v263 = v393;
      swift_getWitnessTable();
      v264 = v341;
      sub_1000EE87C();
      v265 = v371;
      v266 = *(v371 + 8);
      v266(v262, v263);
      sub_1000EE87C();
      v266(v264, v263);
      v267 = v397;
      (*(v265 + 32))(v397, v262, v263);
      (*(v265 + 56))(v267, 0, 1, v263);
    }

    else
    {
      v267 = v397;
      (*(v371 + 56))(v397, 1, 1, v393);
      swift_getWitnessTable();
    }

    sub_1000E7690(v267, v392);
    v268 = *(v390 + 8);
    v405 = v390 + 8;
    v396 = v268;
    v268(v267, v394);
    sub_100083128(v141, v269, v270, v271);

    v273 = sub_1000727B4(v272);

    v277 = 1;
    if (v273)
    {
      v278 = sub_100083128(v141, v274, v275, v276);
      v279 = sub_1000706A8(v278);
      v281 = v280;

      sub_100083128(v141, v282, v283, v284);
      v285 = v370;
      sub_10006F818(v370);

      sub_100083128(v141, v286, v287, v288);

      v290 = sub_100011730(v289);
      v292 = v291;

      v296 = sub_100083128(v141, v293, v294, v295);
      v297 = sub_100073580(v296);

      type metadata accessor for AppViewModel(0);
      v298 = swift_allocObject();
      v299 = v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_subheaderTitle;
      *v299 = LocalizedStringKey.init(stringLiteral:)();
      *(v299 + 8) = v300;
      *(v299 + 16) = v301 & 1;
      *(v299 + 24) = v302;
      v303 = v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_descriptionTitle;
      *v303 = LocalizedStringKey.init(stringLiteral:)();
      *(v303 + 8) = v304;
      *(v303 + 16) = v305 & 1;
      *(v303 + 24) = v306;
      ObservationRegistrar.init()();
      *(v298 + 16) = 1;
      *(v298 + 24) = v279;
      *(v298 + 32) = v281;
      sub_10001AE00(v285, v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL, &qword_1002214F8, &qword_1001B3D20);
      v307 = (v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
      *v307 = v290;
      v307[1] = v292;
      v267 = v397;
      *(v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) = 0;
      *(v298 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType) = v297;
      v308 = swift_getKeyPath();
      v309 = v344;
      *v344 = v298;
      v415 = 0;
      v414 = 0;
      sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
      State.init(wrappedValue:)();
      v310 = v421;
      *(v309 + 8) = v420;
      *(v309 + 24) = v310;
      type metadata accessor for RemoteViewConfiguration();
      sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *(v309 + 32) = EnvironmentObject.init()();
      *(v309 + 40) = v311;
      v312 = v378;
      v313 = *(v378 + 28);
      *(v309 + v313) = swift_getKeyPath();
      sub_1000024C4(qword_100221928, &unk_1001B65E0);
      swift_storeEnumTagMultiPayload();
      v314 = v309 + *(v312 + 32);
      *v314 = v308;
      *(v314 + 8) = 0;
      sub_10008B8CC(v309, v379, type metadata accessor for AppModule);
      v277 = 0;
    }

    v315 = v379;
    (*(v373 + 56))(v379, v277, 1, v378);
    v316 = v384;
    v317 = OpaqueTypeMetadata2;
    (*(v383 + 16))(v384, v399);
    *&v420 = v316;
    v318 = v386;
    sub_10000BEB8(v404, v386, &qword_1002245B0, &unk_1001B8F90);
    *(&v420 + 1) = v318;
    v319 = v388;
    v320 = v402;
    (*(v385 + 16))(v388, v401);
    *&v421 = v319;
    v321 = v391;
    v322 = v389;
    v323 = v403;
    (*(v387 + 16))(v391, v389);
    *(&v421 + 1) = v321;
    v324 = v267;
    v325 = v392;
    v326 = v267;
    v327 = v394;
    (*(v390 + 16))(v324, v392, v394);
    v422 = v326;
    v328 = v395;
    sub_10000BEB8(v315, v395, &qword_1002245B8, &unk_1001BBA20);
    v423 = v328;
    v414 = v317;
    v415 = v372;
    v416 = v320;
    v417 = v323;
    v418 = v327;
    v419 = v374;
    v408 = v380;
    v409 = sub_10008B688();
    v410 = v362;
    v411 = v367;
    v407 = swift_getWitnessTable();
    v412 = swift_getWitnessTable();
    v413 = sub_10008B7C8();
    sub_1000E76FC(&v420, 6uLL, &v414);
    sub_1000050C4(v315, &qword_1002245B8, &unk_1001BBA20);
    v329 = v396;
    v396(v325, v327);
    v330 = v368;
    v368(v322, v323);
    v331 = v320;
    v332 = v376;
    (v376)(v401, v331);
    sub_1000050C4(v404, &qword_1002245B0, &unk_1001B8F90);
    v333 = OpaqueTypeMetadata2;
    v334 = v381;
    (v381)(v399, OpaqueTypeMetadata2);
    sub_1000050C4(v395, &qword_1002245B8, &unk_1001BBA20);
    v329(v397, v327);
    v330(v391, v403);
    v332(v388, v402);
    sub_1000050C4(v386, &qword_1002245B0, &unk_1001B8F90);
    return v334(v384, v333);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100088378@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for HeroImageView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  v19 = type metadata accessor for SportEventView(0, a1, a2, v18);
  v23 = sub_100083128(v19, v20, v21, v22);
  sub_100071340(v23);

  sub_10010EFE0(v8, v15);
  swift_getWitnessTable();
  sub_1000EE87C();
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_1000EE87C();
  return (v24)(v17, v11);
}

double sub_1000885A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a3, a4, a4);
  sub_100083128(v5, v6, v7, v8);
  sub_100071F10((a1 & 1) == 0);

  return result;
}

double sub_100088604(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = type metadata accessor for SportEventView(0, a4, a5, a4);
  sub_100083128(v6, v7, v8, v9);
  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  sub_10006F4F4(v12, v10, v11);

  return result;
}

uint64_t sub_100088664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a4;
  v105 = sub_1000024C4(&qword_1002245E0, &unk_1001C2910);
  __chkstk_darwin(v105);
  v104 = &v84 - v7;
  v103 = sub_1000024C4(&qword_1002245E8, &unk_1001B90B0);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v94 = &v84 - v8;
  v102 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v93 = *(v102 - 8);
  __chkstk_darwin(v102);
  v92 = &v84 - v9;
  v86 = type metadata accessor for EnvironmentValues();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002245F8, &unk_1001B90C0);
  v12 = __chkstk_darwin(v11 - 8);
  v99 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v84 - v14;
  v95 = sub_1000024C4(&qword_100224600, &unk_1001C2920);
  v15 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = &v84 - v16;
  v17 = type metadata accessor for ToolbarItemPlacement();
  v18 = __chkstk_darwin(v17 - 8);
  v91 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v87 = &v84 - v20;
  v96 = sub_1000024C4(&qword_100224608, &unk_1001B90D0);
  v89 = *(v96 - 8);
  __chkstk_darwin(v96);
  v88 = &v84 - v21;
  v22 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v22 - 8);
  v24 = &v84 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000024C4(&qword_100224610, &unk_1001B90E0);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v98 = &v84 - v33;
  v107 = a2;
  v34 = a2;
  v35 = a3;
  v37 = type metadata accessor for SportEventView(0, v34, a3, v36);
  v41 = sub_100083128(v37, v38, v39, v40);
  sub_100070DA0(v41, v24);

  v42 = (*(v26 + 48))(v24, 1, v25);
  v108 = a1;
  v97 = v37;
  if (v42 == 1)
  {
    sub_1000050C4(v24, &qword_1002214F8, &qword_1001B3D20);
LABEL_7:
    (*(v15 + 56))(v32, 1, 1, v95);
    v48 = sub_10000BFFC(&qword_100224618, &qword_100224608, &unk_1001B90D0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v109 = v96;
    v110 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v98;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v32, &qword_100224610, &unk_1001B90E0);
    goto LABEL_10;
  }

  (*(v26 + 32))(v28, v24, v25);
  sub_100083128(v37, v43, v44, v45);
  v46 = sub_1000715A0();

  if ((v46 & 1) == 0)
  {
    (*(v26 + 8))(v28, v25);
    goto LABEL_7;
  }

  if (static Solarium.isEnabled.getter())
  {
    v47 = static ToolbarItemPlacement.topBarLeading.getter();
  }

  else
  {
    v47 = static ToolbarItemPlacement.topBarTrailing.getter();
  }

  __chkstk_darwin(v47);
  v50 = v108;
  *(&v84 - 4) = v107;
  *(&v84 - 3) = a3;
  *(&v84 - 2) = v28;
  *(&v84 - 1) = v50;
  sub_1000024C4(&qword_100224630, &qword_1001C2930);
  sub_10008B204();
  v87 = a3;
  v51 = v88;
  ToolbarItem<>.init(placement:content:)();
  v52 = sub_10000BFFC(&qword_100224618, &qword_100224608, &unk_1001B90D0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v53 = v90;
  v54 = v96;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v55 = v95;
  (*(v15 + 16))(v32, v53, v95);
  (*(v15 + 56))(v32, 0, 1, v55);
  v109 = v54;
  v110 = v52;
  swift_getOpaqueTypeConformance2();
  v56 = v98;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_1000050C4(v32, &qword_100224610, &unk_1001B90E0);
  (*(v15 + 8))(v53, v55);
  v49 = v56;
  v57 = v51;
  v35 = v87;
  (*(v89 + 8))(v57, v54);
  (*(v26 + 8))(v28, v25);
LABEL_10:
  v58 = v100;
  v59 = v97;
  v60 = v108;
  v61 = *(v108 + 16);
  if (v61)
  {
    if (*(v61 + 88) && (*(v61 + 80) & 1) != 0)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        if (*(v61 + 32) > 1u || *(v61 + 32))
        {
          v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v77 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v78 = &v60[*(v59 + 44)];
        v79 = *v78;
        if (v78[8] == 1)
        {
          if ((v79 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v80 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v81 = v84;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_10001BC5C(v79, 0);
          (*(v85 + 8))(v81, v86);
          if (v109 != 1)
          {
LABEL_26:
            v82 = v99;
            (*(v101 + 56))(v99, 1, 1, v103);
            v83 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
            v109 = v102;
            v110 = v83;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000050C4(v82, &qword_1002245F8, &unk_1001B90C0);
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
    }

LABEL_17:
    v63 = static ToolbarItemPlacement.topBarTrailing.getter();
    v64 = __chkstk_darwin(v63);
    *(&v84 - 4) = v107;
    *(&v84 - 3) = v35;
    *(&v84 - 2) = v60;
    sub_10008B1A4(v64, v65, v66);
    v67 = v92;
    ToolbarItem<>.init(placement:content:)();
    v68 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    v69 = v94;
    v70 = v102;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v71 = v101;
    v72 = v99;
    v73 = v103;
    (*(v101 + 16))(v99, v69, v103);
    (*(v71 + 56))(v72, 0, 1, v73);
    v109 = v70;
    v110 = v68;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v72, &qword_1002245F8, &unk_1001B90C0);
    (*(v71 + 8))(v69, v73);
    (*(v93 + 8))(v67, v70);
LABEL_18:
    v74 = v104;
    v75 = *(v105 + 48);
    sub_10000BEB8(v49, v104, &qword_100224610, &unk_1001B90E0);
    sub_10000BEB8(v58, v74 + v75, &qword_1002245F8, &unk_1001B90C0);
    TupleToolbarContent.init(_:)();
    sub_1000050C4(v58, &qword_1002245F8, &unk_1001B90C0);
    return sub_1000050C4(v49, &qword_100224610, &unk_1001B90E0);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100089464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = type metadata accessor for SportEventView(0, a3, a4, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for ShareButton(0);
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v12, v9);
  v19 = &v15[*(v13 + 20)];
  *v19 = sub_10008B2F0;
  v19[1] = v18;
  sub_10008B87C(&qword_100224640, type metadata accessor for ShareButton, &unk_1001B5530);
  View.accessibilityIdentifier(_:)();
  return sub_10008B308(v15);
}

void sub_1000896AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a2, a3, a4);
  sub_100083128(v5, v6, v7, v8);
  v9 = *(a1 + 16);
  if (v9)
  {

    sub_10007367C(0, 1, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100089788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for SportEventView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a5 = 0;
  *(a5 + 8) = sub_10008B364;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_1000898CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SportEventView(0, a2, a3, v10);
  sub_100083128(v11, v12, v13, v14);
  v15 = *(a1 + 16);
  if (v15)
  {

    sub_10007367C(0, 2, 0, 3u, v15);

    sub_100039CB8(v9);
    DismissAction.callAsFunction()();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100089A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportEventView(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  type metadata accessor for SportEventViewModel(0, a2, a3, v19);
  (*(v6 + 16))(v8, a1, a2);
  v20 = sub_10006EE8C(v8);
  KeyPath = swift_getKeyPath();
  sub_100082E3C(v20, KeyPath, 0, v16);
  swift_getWitnessTable();
  sub_1000EE87C();
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_1000EE87C();
  return v22(v18, v12);
}

void sub_100089C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a2, a3, a4);
  sub_100083128(v5, v6, v7, v8);
  if (*(a1 + 16))
  {

    sub_100073914(v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10008B87C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100089D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[259] = a5;
  v5[253] = a4;
  v5[247] = a3;
  v6 = type metadata accessor for SportEventView(0, a4, a5, a4);
  v5[265] = v6;
  v7 = *(v6 - 8);
  v5[271] = v7;
  v5[277] = *(v7 + 64);
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[281] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[282] = v9;
  v5[283] = v8;

  return _swift_task_switch(sub_100089E84, v9, v8);
}

uint64_t sub_100089E84()
{
  v1 = v0[280];
  v16 = v0[279];
  v17 = v0[278];
  v2 = v0[271];
  v3 = v0[265];
  v4 = v0[259];
  v5 = v0[253];
  v18 = v0[247];
  v14 = v5;
  v15 = *(v2 + 16);
  v15(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[284] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v19 = *(v2 + 32);
  v19(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[285] = v8;
  *(v8 + 16) = &unk_1001B8FF8;
  *(v8 + 24) = v7;
  swift_asyncLet_begin();
  (v15)(v16, v18, v3);
  v9 = swift_allocObject();
  v0[286] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v19(v9 + v6, v16, v3);
  v10 = swift_task_alloc();
  v0[287] = v10;
  *(v10 + 16) = &unk_1001B9010;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();
  (v15)(v17, v18, v3);
  v11 = swift_allocObject();
  v0[288] = v11;
  *(v11 + 16) = v14;
  *(v11 + 24) = v4;
  v19(v11 + v6, v17, v3);
  v12 = swift_task_alloc();
  v0[289] = v12;
  *(v12 + 16) = &unk_1001B9028;
  *(v12 + 24) = v11;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_10008A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100083128(*(v4 + 2120), a2, a3, a4);
  sub_100073010();

  return _swift_asyncLet_finish(v4 + 1296, v5);
}

uint64_t sub_10008A23C()
{

  return _swift_asyncLet_finish(v0 + 656, v1);
}

uint64_t sub_10008A2CC()
{

  return _swift_asyncLet_finish(v0 + 16, v1);
}

uint64_t sub_10008A35C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A42C, 0, 0);
}

uint64_t sub_10008A42C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A4C0, v2, v1);
}

uint64_t sub_10008A4C0()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100083128(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10008C0E0;

  return sub_10007308C();
}

uint64_t sub_10008A57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A5A0, 0, 0);
}

uint64_t sub_10008A5A0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A634, v2, v1);
}

uint64_t sub_10008A634()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100083128(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10008A6F0;

  return sub_1000729C4();
}

uint64_t sub_10008A6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008A800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10008A824, 0, 0);
}

uint64_t sub_10008A824()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A8B8, v2, v1);
}

uint64_t sub_10008A8B8()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100083128(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10008C0E0;

  return sub_100071F48();
}

__n128 sub_10008A9D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10008AA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v5 + 44)), *(v7 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_10008AB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000BD00;

  return sub_100089D5C(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_10008AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100012AC8;

  return sub_10008A408(v4 + v9, v6, v7);
}

uint64_t sub_10008AD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_1000E7A3C(a1, v4);
}

uint64_t sub_10008AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100012AC8;

  return sub_10008A57C(v4 + v9, v6, v7);
}

uint64_t sub_10008AEF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_1000E7A3C(a1, v4);
}

uint64_t sub_10008AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100012AC8;

  return sub_10008A800(v4 + v9, v6, v7);
}

uint64_t sub_10008B0A4@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 + v5 > 4.0;
  return result;
}

double sub_10008B0F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SportEventView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100088604(a1, a2, v10, v7, v8);
}

unint64_t sub_10008B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224620;
  if (!qword_100224620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224620);
  }

  return result;
}

unint64_t sub_10008B204()
{
  result = qword_100224638;
  if (!qword_100224638)
  {
    sub_10000460C(&qword_100224630, &qword_1001C2930);
    sub_10008B87C(&qword_100224640, type metadata accessor for ShareButton, &unk_1001B5530);
    sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224638);
  }

  return result;
}

uint64_t sub_10008B308(uint64_t a1)
{
  v2 = type metadata accessor for ShareButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B37C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SportEventView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_10008B420@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for SportEventView(0, v4, v5, a1);

  return sub_100088378(v4, v5, a2);
}

uint64_t sub_10008B4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_10001BC5C(*(v6 + *(v5 + 44)), *(v6 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

double sub_10008B5FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000885A8(a1, v9, v6, v7);
}

unint64_t sub_10008B688()
{
  result = qword_100224650;
  if (!qword_100224650)
  {
    sub_10000460C(&qword_1002245B0, &unk_1001B8F90);
    sub_10008B70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224650);
  }

  return result;
}

unint64_t sub_10008B70C()
{
  result = qword_100224658;
  if (!qword_100224658)
  {
    sub_10000460C(&qword_100224648, &unk_1001B90F0);
    sub_10008B87C(&qword_100224660, type metadata accessor for ServicesUpsellModule, &unk_1001C0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224658);
  }

  return result;
}

unint64_t sub_10008B7C8()
{
  result = qword_100224668;
  if (!qword_100224668)
  {
    sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
    sub_10008B87C(&qword_100224670, type metadata accessor for AppModule, &unk_1001B5988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224668);
  }

  return result;
}

uint64_t sub_10008B87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008B8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008B934(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v7 = *(v2 + 8);
  OpaqueTypeMetadata2 = v1;
  v46 = v6;
  v47 = v7;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v8 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v8;
  v46 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = sub_10000460C(&qword_1002245B0, &unk_1001B8F90);
  type metadata accessor for DetailsModule(255, v1, v7, v10);
  v47 = type metadata accessor for ModifiedContent();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v11, v12, v13);
  WitnessTable = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v1, v7, v14);
  v49 = type metadata accessor for Optional();
  v50 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v15 = type metadata accessor for ScrollView();
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v46 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v15;
  v46 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v17;
  v46 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v17;
  v46 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v19;
  v46 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v21 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v19;
  v46 = v20;
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v22 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v21;
  v46 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v21;
  v46 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v27 = sub_10001877C(v24, v25, v26);
  OpaqueTypeMetadata2 = v23;
  v46 = &type metadata for String;
  v47 = v24;
  WitnessTable = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v23;
  v46 = &type metadata for String;
  v47 = v24;
  WitnessTable = v27;
  v29 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v28;
  v46 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v28;
  v46 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v30;
  v46 = &type metadata for Bool;
  v47 = v31;
  WitnessTable = &protocol witness table for Bool;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = sub_10000460C(&qword_1002245C0, &qword_1001C2760);
  OpaqueTypeMetadata2 = v30;
  v46 = &type metadata for Bool;
  v47 = v31;
  WitnessTable = &protocol witness table for Bool;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0, &qword_1001C2760, &protocol conformance descriptor for TupleToolbarContent<A>);
  OpaqueTypeMetadata2 = v32;
  v46 = v33;
  v47 = v34;
  WitnessTable = v35;
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v32;
  v46 = v33;
  v47 = v34;
  WitnessTable = v35;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  v36 = type metadata accessor for ModifiedContent();
  v38 = type metadata accessor for SportEventView(255, v1, v2, v37);
  swift_getWitnessTable();
  sub_10008B87C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v39 = swift_getWitnessTable();
  v40 = *(v7 + 16);
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v36;
  v46 = v1;
  v47 = v38;
  WitnessTable = v39;
  v49 = v40;
  v50 = v41;
  swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v36;
  v46 = v1;
  v47 = v38;
  WitnessTable = v39;
  v49 = v40;
  v50 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v42;
  v46 = v43;
  return swift_getOpaqueTypeConformance2();
}

void sub_10008C108()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 category];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = [v0 sharedInstance];
      v22 = 0;
      v10 = [v9 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:&v22];

      v11 = v22;
      if (v10)
      {

        v12 = v11;
      }

      else
      {
        v13 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100220C90 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000BE10(v14, qword_100239158);
        swift_errorRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          swift_getErrorValue();
          v19 = Error.localizedDescription.getter();
          v21 = sub_100139F7C(v19, v20, &v22);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "Failed to configure audio session for playback, %s", v17, 0xCu);
          sub_100012A7C(v18);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10008C468(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Calendar();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TimeZone();
  v38 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v34 - v13;
  v34 = type metadata accessor for Date();
  v15 = *(v34 - 8);
  v16 = __chkstk_darwin(v34);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  static Date.now.getter();
  v21 = *(a2 + 168);
  v37 = v2;
  v21(a1, a2);
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v23 = v38;
  v35 = v10;
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = v40;
  static Calendar.current.getter();
  v26 = v39;
  Calendar.timeZone.getter();
  v27 = v41;
  (*(v42 + 8))(v25, v43);
  v28 = TimeZone.secondsFromGMT(for:)();
  v29 = *(v23 + 8);
  result = v29(v26, v27);
  if (__OFSUB__(v24, v28))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v29(v35, v27);
    v31 = *(v15 + 8);
    v32 = v34;
    v31(v18, v34);
    v33 = sub_10008C86C(v20, a1, v36);
    v31(v20, v32);
    return (v33 & 1) == 0;
  }

  return result;
}

uint64_t sub_10008C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = type metadata accessor for Date();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateInterval();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(a3 + 168))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000224A8(AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  DateInterval.end.getter();
  (*(v8 + 8))(v10, v19);
  v16 = static Date.> infix(_:_:)();
  (*(v5 + 8))(v7, v21);
  return v16 & 1;
}

unint64_t sub_10008CAF4(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = "AppIDAttributionException";
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v20 = Data.init(contentsOf:options:)();
    v22 = v21;
    v23 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v35[0] = 0;
    v25 = [v23 propertyListWithData:isa options:0 format:0 error:v35];

    if (v25)
    {
      v26 = v35[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000024C4(qword_100224678, &qword_1001B9198);
      if (swift_dynamicCast())
      {
        v27 = v34[1];
      }

      else
      {
        v27 = sub_1001A9E2C(_swiftEmptyArrayStorage);
      }

      v33.n128_f64[0] = sub_1000606F8(v20, v22);
    }

    else
    {
      v28 = v35[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000606F8(v20, v22);
      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BE10(v14, qword_100239158);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v34[0] = v2;
        v17 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        *v17 = 136315394;
        if (a1)
        {
          if (a1 == 1)
          {
            v18 = 0xD000000000000019;
          }

          else
          {
            v18 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v10 = "ViewModulesException";
          }

          else
          {
            v10 = "ption.view-modules";
          }
        }

        else
        {
          v18 = 0xD000000000000016;
        }

        v29 = sub_100139F7C(v18, v10 | 0x8000000000000000, v35);

        *(v17 + 4) = v29;
        *(v17 + 12) = 2080;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = sub_100139F7C(v30, v31, v35);

        *(v17 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching allow list for %s %s", v17, 0x16u);
        swift_arrayDestroy();

        v2 = v34[0];
      }

      else
      {
      }

      v27 = sub_1001A9E2C(_swiftEmptyArrayStorage);
    }

    (*(v3 + 8))(v8, v2, v33);
    return v27;
  }

  else
  {

    return sub_1001A9E2C(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10008D070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008CAF4(2);
  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = sub_10005846C(0xD000000000000032, 0x80000001001C6260);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100026D04(*(v4 + 56) + 32 * v5, v11);

  sub_1000024C4(qword_100224678, &qword_1001B9198);
  if ((swift_dynamicCast() & 1) == 0 || !v10)
  {
    return sub_1001A9E2C(_swiftEmptyArrayStorage);
  }

  if (*(v10 + 16) && (v7 = sub_10005846C(a1, a2), (v8 & 1) != 0))
  {
    sub_100026D04(*(v10 + 56) + 32 * v7, v11);

    sub_1000024C4(qword_100224678, &qword_1001B9198);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
LABEL_9:
  }

  return sub_1001A9E2C(_swiftEmptyArrayStorage);
}

uint64_t sub_10008D1FC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10008D7E0(a1);
  (*(*(*(v2 + qword_1002390E8) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10008D2EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemoteHostingController(0, *((swift_isaMask & *v4) + qword_1002390E8), *((swift_isaMask & *v4) + qword_1002390E8 + 8), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10005FE74();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10008D3D4(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_10008D2EC(a3, v6, v4, v5);
}

void *sub_10008D46C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1002390E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_10008D5C0(void *a1)
{
  v3 = swift_isaMask & *v1;
  *(v1 + *(v3 + qword_1002390E8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for RemoteHostingController(0, *(v3 + qword_1002390E8), *(v3 + qword_1002390E8 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10008D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RemoteHostingController(0, *((swift_isaMask & *v4) + qword_1002390E8), *((swift_isaMask & *v4) + qword_1002390E8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10008D7E0(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_1002390E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  *(v1 + *(v7 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10008D930(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4449656C646E7562;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656D614E65676170;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E656C75646F6DLL;
    }

    else
    {
      v3 = 0x6341656C75646F6DLL;
    }

    if (v2 == 3)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4449656C646E7562;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656D614E65676170)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA0000000000656DLL;
    if (v3 != 0x614E656C75646F6DLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x6341656C75646F6DLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10008DADC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7473696C746573;
  if (a1 != 5)
  {
    v5 = 0x676E696D6F637075;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x636973756DLL;
  if (a1 != 3)
  {
    v7 = 0x7473696C79616C70;
    v6 = 0xE900000000000073;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x7261646E656C6163;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 7368801;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x7261646E656C6163)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 7368801)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x7473696C746573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x676E696D6F637075)
      {
LABEL_39:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE900000000000073;
    if (v9 != 0x7473696C79616C70)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_10008DD00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465646E61707865;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746361706D6F63;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6465646E61707865;
  if (a2 != 2)
  {
    v7 = 0x6E6564646968;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x746361706D6F63;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10008DE3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E657665;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369747261;
    }

    else
    {
      v4 = 0x746E657665;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x65756E6576;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001001C42E0;
    }

    else
    {
      v5 = 0x80000001001C4300;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE600000000000000;
    v8 = 0x747369747261;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
    v6 = 0x80000001001C42E0;
    v7 = 0x80000001001C4300;
    v8 = 0xD000000000000016;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE500000000000000;
  if (v4 != 0x65756E6576)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

Swift::Int sub_10008DFB0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E0CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x73656C75646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001001C4250;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x73656C75646F6DLL;
  }

  if (*a2)
  {
    v6 = 0x80000001001C4250;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_10008E178()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E200(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10008E274()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10008E304(unint64_t *a1@<X8>)
{
  v2 = 0x80000001001C4250;
  v3 = 0x73656C75646F6DLL;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10008E348()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x73656C75646F6DLL;
  }
}

uint64_t sub_10008E388@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100211480, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10008E404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10008F9EC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10008E440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10008F9EC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10008E494(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10008E5A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F69C(*a1);
  *a2 = result;
  return result;
}

void sub_10008E5D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_10008E6B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E778(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10008E824()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008E8E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F6E8(*a1);
  *a2 = result;
  return result;
}

void sub_10008E910(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E61707865;
  if (*v1 != 2)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x746361706D6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10008E9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
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

uint64_t sub_10008EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100090170(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10008EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100090170(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10008EABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7368801;
  }

  else
  {
    v3 = 0x6C61646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7368801;
  }

  else
  {
    v5 = 0x6C61646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_10008EB58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008EBD0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10008EC34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008ECB4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10008ED10(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (!*v1)
  {
    v2 = 0x6C61646F6DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10008ED54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];

  v19._countAndFlagsBits = v8;
  v19._object = v9;
  result = sub_10008F69C(v19);
  if (result == 7)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v17 = 0xD000000000000018;
    v18 = 0x80000001001C6310;
    v11._countAndFlagsBits = v8;
    v11._object = v9;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6F6E2073656F6420;
    v12._object = 0xEF74736978652074;
    String.append(_:)(v12);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    v16 = *(sub_1000024C4(&qword_100224738, &qword_1001B9430) + 48);
    *v15 = &type metadata for ViewModulesConfiguration.Name;
    (*(v5 + 16))(&v15[v16], v7, v4);
    (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10008EF8C(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1000024C4(&qword_100224740, &qword_1001B9438);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8];
  v10 = sub_10001BED0(a1, a1[3]);
  sub_10008F9EC(v10, v11, v12);
  v13 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10008FA94(v13, v14, v15);
  v21 = Dictionary.mapKeys<A>(_:)();
  v20[15] = 0;
  sub_1000024C4(&qword_100224710, &qword_1001B9428);
  sub_10008FB3C(&qword_100224748, sub_10008FBC0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v3)
  {
    v20[14] = a2 & 1;
    v20[13] = 1;
    sub_10008FC14(v16, v17, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

_BYTE *sub_10008F1D0@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE700000000000000;
  v6 = 0x7473696C746573;
  if (v2 != 5)
  {
    v6 = 0x676E696D6F637075;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE900000000000073;
  }

  if (*result <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  if (v2 != 1)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*result)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*result <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*result > 2u)
  {
    v3 = v5;
  }

  *a2 = v10;
  a2[1] = v3;
  return result;
}

uint64_t sub_10008F2A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10008F734(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10008F3AC(void *a1, char a2)
{
  v4 = sub_1000024C4(&qword_100224780, &qword_1001B9448);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  v8 = sub_10001BED0(a1, a1[3]);
  sub_100090170(v8, v9, v10);
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = a2;
  sub_100090218(v11, v12, v13);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008F4F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100090000(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10008F69C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002114D0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008F6E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100211598, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_10008F734(void *a1)
{
  v3 = sub_1000024C4(&qword_100224700, &qword_1001B9420);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-v5];
  v7 = sub_10001BED0(a1, a1[3]);
  sub_10008F9EC(v7, v8, v9);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000024C4(&qword_100224710, &qword_1001B9428);
    v17[7] = 0;
    sub_10008FB3C(&qword_100224718, sub_10008FA40, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    v10 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10008FA94(v10, v11, v12);
    Dictionary.mapKeys<A>(_:)();

    v17[5] = 1;
    sub_10008FAE8(v14, v15, v16);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v17[6];
  }

  sub_100012A7C(a1);
  return v7;
}

unint64_t sub_10008F9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224708;
  if (!qword_100224708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224708);
  }

  return result;
}

unint64_t sub_10008FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224720;
  if (!qword_100224720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224720);
  }

  return result;
}

unint64_t sub_10008FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224728;
  if (!qword_100224728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224728);
  }

  return result;
}

unint64_t sub_10008FAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224730;
  if (!qword_100224730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224730);
  }

  return result;
}

uint64_t sub_10008FB3C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(&qword_100224710, &qword_1001B9428);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008FBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224750;
  if (!qword_100224750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224750);
  }

  return result;
}

unint64_t sub_10008FC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224758;
  if (!qword_100224758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224758);
  }

  return result;
}

unint64_t sub_10008FC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224760;
  if (!qword_100224760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224760);
  }

  return result;
}

uint64_t sub_10008FCBC(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10008D070(a1, a2);
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v23];

  v7 = v23;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v11 = PropertyListDecoder.init()();
    sub_100090314(v11, v12, v13);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_1000606F8(v8, v10);
    return v23;
  }

  else
  {
    v14 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BE10(v15, qword_100239158);

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_100139F7C(a1, a2, &v23);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_100139F7C(v19, v20, &v23);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Empty or invalid view module configuration for ID: %s. Error: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100090000(void *a1)
{
  v3 = sub_1000024C4(&qword_100224768, &qword_1001B9440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = sub_10001BED0(a1, a1[3]);
  sub_100090170(v7, v8, v9);
  v10 = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100012A7C(a1);
  }

  else
  {
    sub_1000901C4(v10, v11, v12);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v14[15];
    sub_100012A7C(a1);
  }

  return v7;
}

unint64_t sub_100090170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224770;
  if (!qword_100224770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224770);
  }

  return result;
}

unint64_t sub_1000901C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224778;
  if (!qword_100224778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224778);
  }

  return result;
}

unint64_t sub_100090218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224788;
  if (!qword_100224788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224788);
  }

  return result;
}

unint64_t sub_10009026C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224790;
  if (!qword_100224790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224790);
  }

  return result;
}

unint64_t sub_1000902C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224798;
  if (!qword_100224798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224798);
  }

  return result;
}

unint64_t sub_100090314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247A0;
  if (!qword_1002247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicPlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewModulesConfiguration.Name(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewModulesConfiguration.Name(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100090664()
{
  result = qword_1002247A8;
  if (!qword_1002247A8)
  {
    sub_10000460C(&qword_1002247B0, qword_1001B94B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247A8);
  }

  return result;
}

unint64_t sub_1000906CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247B8;
  if (!qword_1002247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247B8);
  }

  return result;
}

unint64_t sub_100090724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247C0;
  if (!qword_1002247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247C0);
  }

  return result;
}

unint64_t sub_10009077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247C8;
  if (!qword_1002247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247C8);
  }

  return result;
}

unint64_t sub_1000907D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247D0;
  if (!qword_1002247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247D0);
  }

  return result;
}

unint64_t sub_10009082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247D8;
  if (!qword_1002247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247D8);
  }

  return result;
}

unint64_t sub_100090884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247E0;
  if (!qword_1002247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247E0);
  }

  return result;
}

unint64_t sub_1000908DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247E8;
  if (!qword_1002247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247E8);
  }

  return result;
}

unint64_t sub_100090934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247F0;
  if (!qword_1002247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002247F0);
  }

  return result;
}

unint64_t sub_10009098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002247F8[0];
  if (!qword_1002247F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002247F8);
  }

  return result;
}

uint64_t sub_1000909FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100090A38@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = (a3 + *(type metadata accessor for LocationModule(0, *(v4 + 80), *(v4 + 88), v5) + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v6 = result;
  v6[1] = v8;
  return result;
}

void sub_100090B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100090C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100090CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_100090E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_100090E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_100090E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for LocationViewModel(255, v7, v6, v8);
  v9 = type metadata accessor for Bindable();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v42 = sub_1000024C4(&qword_100224880, &qword_1001B99D0);
  __chkstk_darwin(v42);
  v14 = &v40 - v13;
  v43 = sub_1000024C4(&qword_100224888, &qword_1001B99D8);
  __chkstk_darwin(v43);
  v16 = &v40 - v15;
  v17 = sub_1000024C4(&qword_100224890, &qword_1001B99E0);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  __chkstk_darwin(v17);
  v41 = &v40 - v19;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v20 = sub_1000024C4(&qword_100224898, &qword_1001B99E8);
  sub_10009131C(v2, v7, v6, &v14[*(v20 + 44)]);
  sub_100090E40(a1, v21, v22, v23);
  v50 = v7;
  v51 = v6;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v27 = sub_100090E00(a1, v24, v25, v26);
  v28 = *(v27 + *(*v27 + 120));

  sub_100092078();
  View.mapItemDetailSheet(isPresented:item:displaysMap:)();

  sub_1000050C4(v14, &qword_100224880, &qword_1001B99D0);
  LOBYTE(v14) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v43;
  v30 = &v16[*(v43 + 36)];
  *v30 = v14;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = v46;
  static AccessibilityChildBehavior.contain.getter();
  v36 = sub_1000920DC();
  v37 = v41;
  View.accessibilityElement(children:)();
  (*(v47 + 8))(v35, v48);
  sub_1000921A4(v16);
  v52 = v29;
  v53 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v44;
  View.accessibilityIdentifier(_:)();
  return (*(v45 + 8))(v37, v38);
}

uint64_t sub_10009131C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a1;
  v118 = a4;
  v111 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v111);
  v115 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = a2;
  v104 = a3;
  v8 = type metadata accessor for LocationModule(0, a2, a3, v7);
  v105 = v8;
  v102 = *(v8 - 8);
  v100 = *(v102 + 64);
  __chkstk_darwin(v8);
  v101 = &v100 - v9;
  v109 = sub_1000024C4(&qword_1002248B0, &qword_1001B9A28);
  __chkstk_darwin(v109);
  v114 = &v100 - v10;
  v110 = sub_1000024C4(&qword_1002248B8, &qword_1001B9A30);
  v11 = __chkstk_darwin(v110);
  v117 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v112 = &v100 - v14;
  __chkstk_darwin(v13);
  v116 = &v100 - v15;
  v119 = type metadata accessor for AccessibilityTraits();
  v113 = *(v119 - 8);
  __chkstk_darwin(v119);
  v108 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000024C4(&qword_100223418, &qword_1001B7350);
  v17 = __chkstk_darwin(v107);
  v19 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v120 = &v100 - v20;
  sub_100090E00(v8, v21, v22, v23);

  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_100017398(v24, v26, v28 & 1);

  LOBYTE(v24) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v121) = v33 & 1;
  v126 = 0;
  *&v122 = v29;
  *(&v122 + 1) = v31;
  LOBYTE(v123) = v33 & 1;
  *(&v123 + 1) = v35;
  LOBYTE(v124) = v24;
  *(&v124 + 1) = v36;
  *v125 = v37;
  *&v125[8] = v38;
  *&v125[16] = v39;
  v125[24] = 0;
  sub_1000024C4(&qword_100223488, &unk_1001B73B0);
  sub_10005D968();
  v40 = v105;
  View.accessibilityIdentifier(_:)();
  v127[2] = v124;
  *v128 = *v125;
  *&v128[9] = *&v125[9];
  v127[0] = v122;
  v127[1] = v123;
  v41 = v106;
  sub_1000050C4(v127, &qword_100223488, &unk_1001B73B0);
  v42 = v108;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  v113[1](v42, v119);
  v113 = v19;
  sub_1000050C4(v19, &qword_100223418, &qword_1001B7350);
  sub_100090E00(v40, v43, v44, v45);
  v46 = sub_1001AC644();
  v48 = v47;

  v52 = sub_100090E00(v40, v49, v50, v51);
  v53 = *(v52 + *(*v52 + 120));
  v54 = v53;

  sub_100090E00(v40, v55, v56, v57);
  if (*&v41[*(v40 + 36)])
  {

    v59 = sub_1001AC6B8(v58);

    v108 = v46;
    v107 = v48;
    if (v59)
    {
      v60 = v102;
      v61 = v101;
      (*(v102 + 16))(v101, v41, v40);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      v64 = v104;
      *(v63 + 16) = v103;
      *(v63 + 24) = v64;
      (*(v60 + 32))(v63 + v62, v61, v40);
      v119 = sub_10009231C;
    }

    else
    {
      v119 = 0;
      v63 = 0;
    }

    v106 = v53;
    v121 = 0;
    sub_1000024C4(&qword_1002248C0, &qword_1001B9A38);
    State.init(wrappedValue:)();
    v104 = *(&v122 + 1);
    v105 = v122;
    v121 = 0;
    State.init(wrappedValue:)();
    v65 = v122;
    if (qword_100220BC8 != -1)
    {
      swift_once();
    }

    v66 = qword_1002390E0;
    v67 = v114;
    v68 = &v114[*(v109 + 36)];
    v69 = v111;
    v70 = *(v111 + 20);
    v71 = enum case for RoundedCornerStyle.continuous(_:);
    v72 = type metadata accessor for RoundedCornerStyle();
    v73 = *(*(v72 - 8) + 104);
    v73(v68 + v70, v71, v72);
    *v68 = v66;
    v68[1] = v66;
    *(v68 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
    v74 = v107;
    *v67 = v108;
    *(v67 + 8) = v74;
    v75 = v119;
    *(v67 + 16) = v106;
    *(v67 + 24) = v75;
    v76 = v105;
    *(v67 + 32) = v63;
    *(v67 + 40) = v76;
    *(v67 + 48) = v104;
    *(v67 + 56) = v65;
    v77 = v115;
    v73(v115 + *(v69 + 20), v71, v72);
    *v77 = v66;
    v77[1] = v66;
    v78 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v79 = Color.init(uiColor:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v80 = v112;
    v81 = &v112[*(v110 + 36)];
    sub_100039704(v77, v81);
    v82 = v81 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
    v83 = v123;
    *v82 = v122;
    *(v82 + 16) = v83;
    *(v82 + 32) = v124;
    v84 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
    *(v81 + *(v84 + 52)) = v79;
    *(v81 + *(v84 + 56)) = 256;
    v85 = static Alignment.center.getter();
    v87 = v86;
    sub_100039768(v77);
    v88 = (v81 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
    *v88 = v85;
    v88[1] = v87;
    v89 = static Alignment.center.getter();
    v91 = v90;
    v92 = (v81 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
    *v92 = v89;
    v92[1] = v91;
    sub_10001AE00(v67, v80, &qword_1002248B0, &qword_1001B9A28);
    v93 = v116;
    sub_10001AE00(v80, v116, &qword_1002248B8, &qword_1001B9A30);
    v94 = v120;
    v95 = v113;
    sub_10000BEB8(v120, v113, &qword_100223418, &qword_1001B7350);
    v96 = v117;
    sub_10000BEB8(v93, v117, &qword_1002248B8, &qword_1001B9A30);
    v97 = v118;
    sub_10000BEB8(v95, v118, &qword_100223418, &qword_1001B7350);
    v98 = sub_1000024C4(&qword_1002248C8, &qword_1001B9A48);
    sub_10000BEB8(v96, v97 + *(v98 + 48), &qword_1002248B8, &qword_1001B9A30);
    sub_1000050C4(v93, &qword_1002248B8, &qword_1001B9A30);
    sub_1000050C4(v94, &qword_100223418, &qword_1001B7350);
    sub_1000050C4(v96, &qword_1002248B8, &qword_1001B9A30);
    return sub_1000050C4(v95, &qword_100223418, &qword_1001B7350);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100091EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocationModule(0, a2, a3, a4);
  sub_100090E00(v5, v6, v7, v8);
  sub_1001AC7E4(1);

  sub_100090E00(v5, v9, v10, v11);
  if (*(a1 + *(v5 + 36)))
  {

    sub_1001AC928(v12);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100091FAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ACBA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100092008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001ACBA4();
  *a1 = result & 1;
  return result;
}

__n128 sub_10009206C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100092078()
{
  result = qword_1002248A0;
  if (!qword_1002248A0)
  {
    sub_10000460C(&qword_100224880, &qword_1001B99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248A0);
  }

  return result;
}

unint64_t sub_1000920DC()
{
  result = qword_1002248A8;
  if (!qword_1002248A8)
  {
    sub_10000460C(&qword_100224888, &qword_1001B99D8);
    sub_10000460C(&qword_100224880, &qword_1001B99D0);
    sub_100092078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248A8);
  }

  return result;
}

uint64_t sub_1000921A4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100224888, &qword_1001B99D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LocationModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for LocationViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  return swift_deallocObject();
}

void sub_10009231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for LocationModule(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_100091EB8(v9, v5, v6, v7);
}

unint64_t sub_1000923A4()
{
  result = qword_1002248D0;
  if (!qword_1002248D0)
  {
    sub_10000460C(&qword_1002248D8, &unk_1001B9A50);
    sub_10000460C(&qword_100224888, &qword_1001B99D8);
    sub_1000920DC();
    swift_getOpaqueTypeConformance2();
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002248D0);
  }

  return result;
}

uint64_t sub_10009249C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000924E4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = (a3 + *(type metadata accessor for DetailsModule(0, *(v4 + 80), *(v4 + 88), v5) + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v6 = result;
  v6[1] = v8;
  return result;
}

void sub_10009260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000926B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000927A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000928AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000928EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DetailsViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_100092938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = a1;
  v79 = *(a1 - 8);
  __chkstk_darwin(a1);
  v76 = v3;
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  type metadata accessor for DetailsViewModel(255, v5, v6, v7);
  v73 = type metadata accessor for Bindable();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v60 - v8;
  v9 = sub_1000024C4(&qword_100224970, &qword_1001B9B10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_1000024C4(&qword_100224978, &qword_1001B9B18);
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v65 = sub_1000024C4(&qword_100224980, &qword_1001B9B20);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v60 - v16;
  v82 = sub_1000024C4(&qword_100224988, &qword_1001B9B28);
  v64 = *(v82 - 8);
  __chkstk_darwin(v82);
  v62 = &v60 - v17;
  v69 = sub_1000024C4(&qword_100224990, &qword_1001B9B30);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v83 = &v60 - v18;
  v70 = sub_1000024C4(&qword_100224998, &qword_1001B9B38);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v60 - v19;
  v75 = v5;
  v84 = v5;
  v85 = v6;
  v74 = v6;
  v77 = v2;
  v86 = v2;
  sub_1000024C4(&qword_1002249A0, &qword_1001B9B40);
  v20 = sub_10000460C(&qword_1002249A8, &qword_1001B9B48);
  v21 = sub_100095970();
  v89 = v20;
  v90 = v21;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v5) = static Edge.Set.top.getter();
  *(inited + 32) = v5;
  v23 = static Edge.Set.bottom.getter();
  *(inited + 33) = v23;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    Edge.Set.init(rawValue:)();
  }

  v24 = sub_10000BFFC(&qword_100224A38, &qword_100224970, &qword_1001B9B10, &protocol conformance descriptor for List<A, B>);
  View.listPadding(_:_:)();
  (*(v10 + 8))(v12, v9);
  Solarium.init()();
  v25 = sub_1000024C4(&qword_100224A40, &qword_1001B9B98);
  v26 = sub_1000024C4(&qword_100224A48, &qword_1001B9BA0);
  v89 = v9;
  v90 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for InsetListStyle();
  v29 = v13;
  v89 = v13;
  v90 = v28;
  v91 = OpaqueTypeConformance2;
  v92 = &protocol witness table for InsetListStyle;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = type metadata accessor for InsetGroupedListStyle();
  v89 = v13;
  v90 = v31;
  v91 = OpaqueTypeConformance2;
  v92 = &protocol witness table for InsetGroupedListStyle;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v61;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v60 + 8))(v15, v29);
  v87 = static Color.clear.getter();
  v89 = v29;
  v90 = &type metadata for Solarium;
  v91 = v25;
  v92 = v26;
  v93 = OpaqueTypeConformance2;
  v94 = &protocol witness table for Solarium;
  v95 = v30;
  v96 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v62;
  v36 = v65;
  View.scrollContentBackground<A>(_:)();

  (*(v63 + 8))(v33, v36);
  v89 = v36;
  v90 = &type metadata for Color;
  v91 = v34;
  v92 = &protocol witness table for Color;
  v65 = swift_getOpaqueTypeConformance2();
  v37 = v82;
  View.listHasStackBehavior()();
  (*(v64 + 8))(v35, v37);
  v38 = v71;
  v39 = v80;
  v40 = v77;
  v44 = sub_1000928EC(v80, v41, v42, v43);
  __chkstk_darwin(v44);
  v45 = v75;
  v46 = v74;
  swift_getKeyPath();
  v47 = v73;
  Bindable<A>.subscript.getter();

  (*(v72 + 8))(v38, v47);
  v48 = v79;
  v49 = v78;
  (*(v79 + 16))(v78, v40, v39);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v45;
  *(v51 + 24) = v46;
  (*(v48 + 32))(v51 + v50, v49, v39);
  v52 = sub_1000024C4(&qword_100224A50, &qword_1001B9BE0);
  v87 = v82;
  v88 = v65;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_1000960E0();
  v53 = v66;
  v54 = v69;
  v55 = v83;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v67 + 8))(v55, v54);
  v89 = v54;
  v90 = v52;
  v91 = v58;
  v92 = v59;
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  View.accessibilityIdentifier(_:)();
  return (*(v68 + 8))(v53, v56);
}

uint64_t sub_1000934C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for Prominence();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000024C4(&qword_1002249F0, &qword_1001B9B70);
  __chkstk_darwin(v23);
  v10 = &v22 - v9;
  v11 = sub_1000024C4(&qword_1002249C0, &qword_1001B9B50);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_1000024C4(&qword_1002249A8, &qword_1001B9B48);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  sub_10009476C(a2, a3, v13);
  sub_100094ABC(a2, a3, v10);
  sub_1000024C4(&qword_1002249E0, &qword_1001B9B68);
  sub_100095A3C();
  sub_10000BFFC(&qword_1002249D8, &qword_1002249E0, &qword_1001B9B68, &protocol conformance descriptor for TupleView<A>);
  sub_100095BB0();
  Section<>.init(header:footer:content:)();
  v19 = v24;
  v18 = v25;
  v20 = v26;
  (*(v25 + 104))(v24, enum case for Prominence.increased(_:), v26);
  sub_100095970();
  View.headerProminence(_:)();
  (*(v18 + 8))(v19, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100093800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v88 = sub_1000024C4(&qword_100224A68, &qword_1001B9BF0);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v77 - v7;
  v8 = sub_1000024C4(&qword_100224A70, &qword_1001B9BF8);
  v9 = __chkstk_darwin(v8 - 8);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v77 - v11;
  v77 = a2;
  v78 = a3;
  v13 = type metadata accessor for DetailsModule(0, a2, a3, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v77 - v15;
  v17 = sub_1000024C4(&qword_100224A78, &qword_1001B9C00);
  v82 = *(v17 - 8);
  v83 = v17;
  __chkstk_darwin(v17);
  v81 = &v77 - v18;
  v19 = sub_1000024C4(&qword_100224A80, &qword_1001B9C08);
  v20 = __chkstk_darwin(v19 - 8);
  v84 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v77 - v22;
  sub_1000928AC(v13, v23, v24, v25);
  *&v80 = sub_1000F6180();
  *&v79 = v26;

  sub_1000928AC(v13, v27, v28, v29);
  v30 = sub_1000F6198();
  v32 = v31;

  v91 = a1;
  sub_1000928AC(v13, v33, v34, v35);
  v36 = sub_1000F6340();

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v36)
  {
    v38 = 0x80000001001C64D0;
    (*(v14 + 16))(v16, v91, v13);
    v41 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v40 = swift_allocObject();
    v42 = v78;
    *(v40 + 16) = v77;
    *(v40 + 24) = v42;
    (*(v14 + 32))(v40 + v41, v16, v13);
    v37 = 0xD000000000000013;
    v39 = sub_100096640;
  }

  v112 = 0;
  *&v104 = v80;
  *(&v104 + 1) = v79;
  *&v105 = v30;
  *(&v105 + 1) = v32;
  *&v106 = 0xD000000000000014;
  *(&v106 + 1) = 0x80000001001C6510;
  *&v107 = v37;
  *(&v107 + 1) = v38;
  *&v108 = v39;
  *(&v108 + 1) = v40;
  __asm { FMOV            V0.2D, #16.0 }

  v80 = _Q0;
  v79 = xmmword_1001B9A60;
  v109 = _Q0;
  v110 = xmmword_1001B9A60;
  v111 = 0;
  Solarium.init()();
  v48 = sub_1000024C4(&qword_100224A88, &qword_1001B9C10);
  v49 = sub_1000024C4(&qword_100224A90, &qword_1001B9C18);
  v50 = sub_1000962B4();
  v51 = sub_1000963C0();
  v52 = v81;
  View.staticIf<A, B>(_:then:)();
  v102[4] = v108;
  v102[5] = v109;
  v102[6] = v110;
  v103 = v111;
  v102[0] = v104;
  v102[1] = v105;
  v102[2] = v106;
  v102[3] = v107;
  sub_1000050C4(v102, &qword_100224A88, &qword_1001B9C10);
  *&v104 = v48;
  *(&v104 + 1) = &type metadata for Solarium;
  *&v105 = v49;
  *(&v105 + 1) = v50;
  *&v106 = &protocol witness table for Solarium;
  *(&v106 + 1) = v51;
  v78 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeConformance2();
  v53 = v83;
  View.accessibilityIdentifier(_:)();
  (*(v82 + 8))(v52, v53);
  sub_1000928AC(v13, v54, v55, v56);
  v57 = sub_1000F6844();
  v59 = v58;

  sub_1000928AC(v13, v60, v61, v62);
  v63 = sub_1000F69D4();
  v65 = v64;

  v101 = 0;
  *&v93 = v57;
  *(&v93 + 1) = v59;
  *&v94 = v63;
  *(&v94 + 1) = v65;
  *&v95 = 0xD000000000000012;
  *(&v95 + 1) = 0x80000001001C64F0;
  v96 = 0u;
  v97 = 0u;
  v98 = v79;
  v99 = v80;
  v100 = 0;
  Solarium.init()();
  v66 = sub_1000024C4(&qword_100224AD0, &qword_1001B9C30);
  *&v104 = v49;
  *(&v104 + 1) = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v85;
  View.staticIf<A, B>(_:then:)();
  v108 = v97;
  v109 = v98;
  v110 = v99;
  v111 = v100;
  v104 = v93;
  v105 = v94;
  v106 = v95;
  v107 = v96;
  sub_1000050C4(&v104, &qword_100224A88, &qword_1001B9C10);
  *&v93 = v48;
  *(&v93 + 1) = &type metadata for Solarium;
  *&v94 = v66;
  *(&v94 + 1) = v50;
  *&v95 = &protocol witness table for Solarium;
  *(&v95 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v69 = v87;
  v68 = v88;
  View.accessibilityIdentifier(_:)();
  (*(v86 + 8))(v67, v68);
  v70 = v92;
  v71 = v84;
  sub_10000BEB8(v92, v84, &qword_100224A80, &qword_1001B9C08);
  v72 = v89;
  sub_10000BEB8(v69, v89, &qword_100224A70, &qword_1001B9BF8);
  v73 = v90;
  sub_10000BEB8(v71, v90, &qword_100224A80, &qword_1001B9C08);
  v74 = sub_1000024C4(&qword_100224AD8, &qword_1001B9C38);
  sub_10000BEB8(v72, v73 + *(v74 + 48), &qword_100224A70, &qword_1001B9BF8);
  sub_1000050C4(v69, &qword_100224A70, &qword_1001B9BF8);
  sub_1000050C4(v70, &qword_100224A80, &qword_1001B9C08);
  sub_1000050C4(v72, &qword_100224A70, &qword_1001B9BF8);
  return sub_1000050C4(v71, &qword_100224A80, &qword_1001B9C08);
}

void sub_100094034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DetailsModule(0, a2, a3, a4);
  sub_1000928AC(v5, v6, v7, v8);
  sub_1000F64DC();

  sub_1000928AC(v5, v9, v10, v11);
  if (*(a1 + *(v5 + 36)))
  {

    sub_1000F64E4(v12);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_100094124@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024C4(&qword_100224AE0, &qword_1001B9C40);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = a1[5];
  v30 = a1[4];
  v31 = v7;
  v32 = a1[6];
  v33 = *(a1 + 112);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v10 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v13;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 3) = v16;
  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v6[*(v4 + 52)] = Color.init(_:)();
  *&v6[*(v4 + 56)] = 256;
  sub_10000BFFC(&qword_100224AE8, &qword_100224AE0, &qword_1001B9C40, &protocol conformance descriptor for _ShapeView<A, B>);
  v18 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v33;
  v24[13] = v31;
  v24[14] = v32;
  v24[11] = v29;
  v24[12] = v30;
  v24[8] = v26;
  v24[9] = v27;
  v24[10] = v28;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  *&v35 = v25;
  *(&v35 + 1) = v18;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v35;
  v36[2] = v28;
  v36[3] = v29;
  v36[0] = v26;
  v36[1] = v27;
  v36[5] = v31;
  v36[6] = v32;
  v36[4] = v30;
  v37 = v25;
  v38 = v18;
  sub_10000BEB8(&v26, v24, &qword_100224A88, &qword_1001B9C10);
  sub_10000BEB8(v34, v24, &qword_100224AB8, &qword_1001B9C20);
  sub_1000050C4(v36, &qword_100224AB8, &qword_1001B9C20);
  v19 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v19;
  v20 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v20;
  v21 = v40;
  *a2 = v39;
  *(a2 + 16) = v21;
  result = *&v41;
  v23 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v23;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_100094408(__int128 *a1)
{
  v2 = sub_1000024C4(&qword_100224AE0, &qword_1001B9C40);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v33 = a1[6];
  v34 = *(a1 + 112);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = a1[3];
  v29 = a1[2];
  v30 = v7;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v8 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v4[v8], v9, v10);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v4 = v11;
  *(v4 + 1) = v12;
  *(v4 + 2) = v13;
  *(v4 + 3) = v14;
  v15 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *&v4[*(v2 + 52)] = Color.init(_:)();
  *&v4[*(v2 + 56)] = 256;
  sub_10000BFFC(&qword_100224AE8, &qword_100224AE0, &qword_1001B9C40, &protocol conformance descriptor for _ShapeView<A, B>);
  v16 = AnyView.init<A>(_:)();
  LOBYTE(v25) = v34;
  v23 = v32;
  v24 = v33;
  v21 = v30;
  v22 = v31;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  *&v36 = v25;
  *(&v36 + 1) = v16;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[0] = v27;
  v37[1] = v28;
  v37[5] = v32;
  v37[6] = v33;
  v37[4] = v31;
  v38 = v25;
  v39 = v16;
  sub_10000BEB8(&v27, v48, &qword_100224A88, &qword_1001B9C10);
  sub_10000BEB8(v35, v48, &qword_100224AB8, &qword_1001B9C20);
  sub_1000050C4(v37, &qword_100224AB8, &qword_1001B9C20);
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v26 = 0;
  static VerticalEdge.Set.bottom.getter();
  sub_1000024C4(&qword_100224A90, &qword_1001B9C18);
  sub_1000963C0();
  View.listRowSeparator(_:edges:)();
  v48[6] = v24;
  v48[7] = v25;
  v49 = v26;
  v48[2] = v20;
  v48[3] = v21;
  v48[4] = v22;
  v48[5] = v23;
  v48[0] = v18;
  v48[1] = v19;
  return sub_1000050C4(v48, &qword_100224A90, &qword_1001B9C18);
}

uint64_t sub_10009476C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v30 = type metadata accessor for AccessibilityTraits();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000024C4(&qword_1002249C0, &qword_1001B9B50);
  __chkstk_darwin(v31);
  v28 = &v27 - v7;
  v9 = type metadata accessor for DetailsModule(0, a1, a2, v8);
  sub_1000928AC(v9, v10, v11, v12);

  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_100017398(v13, v15, v17 & 1);

  v39 = v22 & 1;
  v38 = 0;
  *&v33 = v18;
  *(&v33 + 1) = v20;
  LOBYTE(v34) = v22 & 1;
  *(&v34 + 1) = v24;
  v35 = xmmword_1001B9A70;
  v36 = xmmword_1001B9A80;
  v37 = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_1002249D0, &unk_1001B9B58);
  sub_100095AF8();
  v25 = v28;
  View.accessibility(addTraits:)();
  (*(v29 + 8))(v6, v30);
  v40[2] = v35;
  v40[3] = v36;
  v41 = v37;
  v40[0] = v33;
  v40[1] = v34;
  sub_1000050C4(v40, &qword_1002249D0, &unk_1001B9B58);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000050C4(v25, &qword_1002249C0, &qword_1001B9B50);
}

uint64_t sub_100094ABC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for AttributionModule(0);
  __chkstk_darwin(v84);
  v83 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1000024C4(&qword_100224A08, &qword_1001B9B80);
  __chkstk_darwin(v88);
  v86 = &v75[-v8];
  v9 = sub_1000024C4(&qword_100224A60, &qword_1001B9BE8);
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v87 = &v75[-v10];
  v11 = sub_1000024C4(&qword_100224A00, &qword_1001B9B78);
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v85 = &v75[-v12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v75[-v17];
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v16);
  v21 = &v75[-v20];
  v81 = a2;
  v82 = a1;
  v23 = type metadata accessor for DetailsModule(0, a1, a2, v22);
  v27 = sub_1000928AC(v23, v24, v25, v26);
  v28 = sub_1000F6A7C(v27);

  if (v28)
  {
    sub_1000928AC(v23, v29, v30, v31);
    sub_1000F6B98();

    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
    {
      v79 = v21;
      v80 = v19;
      v34 = *(v19 + 32);
      v35 = AssociatedTypeWitness;
      v34(v21, v18, AssociatedTypeWitness);
      sub_1000928AC(v23, v36, v37, v38);
      v78 = sub_10002DB04();
      v77 = v39;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v41 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v81 = v42;
      v82 = v41;
      v43 = type metadata accessor for AttributionViewModel(0);
      v44 = *(v43 + 32);
      v45 = v83;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v46 = type metadata accessor for URL();
      (*(*(v46 - 8) + 56))(v45 + v44, 0, 1, v46);
      sub_1000928AC(v23, v47, v48, v49);
      v76 = sub_10002EC40();

      v50 = objc_opt_self();
      v51 = [v50 mainBundle];
      v99._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0xD000000000000031;
      v52._object = 0x80000001001C63A0;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v99._countAndFlagsBits = 0;
      v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v99);

      *v45 = v54;
      v55 = [v50 mainBundle];
      v100._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0xD00000000000002CLL;
      v56._object = 0x80000001001C63E0;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      v100._countAndFlagsBits = 0;
      v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v100);

      v45[1] = v58;
      v59 = v77;
      v45[2]._countAndFlagsBits = v78;
      v45[2]._object = v59;
      v60 = v81;
      v45[3]._countAndFlagsBits = v82;
      v45[3]._object = v60;
      *(&v45->_countAndFlagsBits + *(v43 + 36)) = v76;
      v61 = (&v45->_countAndFlagsBits + *(v84 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_100098608(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *v61 = EnvironmentObject.init()();
      v61[1] = v62;
      Solarium.init()();
      sub_1000024C4(&qword_100224A18, &qword_1001B9B88);
      sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule, &unk_1001C3514);
      v63 = sub_10000460C(&qword_100224A28, &qword_1001B9B90);
      v64 = sub_100095EC8();
      v97 = v63;
      v98 = v64;
      swift_getOpaqueTypeConformance2();
      v65 = v86;
      View.staticIf<A, B>(_:then:)();
      sub_100096258(v45);
      v66 = v88;
      v67 = v65 + *(v88 + 36);
      *v67 = xmmword_1001B9A90;
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0;
      v68 = v91;
      static AccessibilityChildBehavior.contain.getter();
      v69 = sub_100095D2C();
      v70 = v87;
      View.accessibilityElement(children:)();
      (*(v92 + 8))(v68, v93);
      sub_1000050C4(v65, &qword_100224A08, &qword_1001B9B80);
      v97 = v66;
      v98 = v69;
      swift_getOpaqueTypeConformance2();
      v71 = v85;
      v72 = v90;
      View.accessibilityIdentifier(_:)();
      (*(v89 + 8))(v70, v72);
      (*(v80 + 8))(v79, v35);
      v73 = v96;
      sub_10001AE00(v71, v96, &qword_100224A00, &qword_1001B9B78);
      v33 = v73;
      v32 = 0;
      return (*(v94 + 56))(v33, v32, 1, v95);
    }

    (*(v15 + 8))(v18, v14);
  }

  v32 = 1;
  v33 = v96;
  return (*(v94 + 56))(v33, v32, 1, v95);
}

uint64_t sub_1000953AC()
{
  v0 = sub_1000024C4(&qword_100224A28, &qword_1001B9B90);
  __chkstk_darwin(v0);
  v2 = v4 - v1;
  static VerticalEdge.Set.all.getter();
  type metadata accessor for AttributionModule(0);
  sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule, &unk_1001C3514);
  View.listRowSeparator(_:edges:)();
  v4[1] = static Color.clear.getter();
  *&v2[*(v0 + 36)] = AnyView.init<A>(_:)();
  static Edge.Set.bottom.getter();
  sub_100095EC8();
  View.listPadding(_:_:)();
  return sub_1000050C4(v2, &qword_100224A28, &qword_1001B9B90);
}

uint64_t sub_100095574(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t a4)
{
  v5 = a2(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v13 - v8;
  a3(v7);
  sub_1000024C4(&qword_100224978, &qword_1001B9B18);
  v10 = sub_10000460C(&qword_100224970, &qword_1001B9B10);
  v11 = sub_10000BFFC(&qword_100224A38, &qword_100224970, &qword_1001B9B10, &protocol conformance descriptor for List<A, B>);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  View.listStyle<A>(_:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100095704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F6C0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for DetailsModule(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1000928AC(v11, v14, v15, v16);
  v27 = sub_1000F6DC4();

  v20 = sub_1000928AC(v9, v17, v18, v19);
  v21 = *(v20 + *(*v20 + 128));

  (*(v10 + 16))(v13, a1, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v10 + 32))(v23 + v22, v13, v9);
  v24 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a5 = v27;
  *(a5 + 8) = v21;
  *(a5 + 16) = sub_1000961C0;
  *(a5 + 24) = v23;
  *(a5 + 32) = v24;
  *(a5 + 40) = result;
  return result;
}

double sub_100095910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DetailsModule(0, a3, a4, a4);
  sub_1000928AC(v4, v5, v6, v7);
  sub_1000F6E3C();

  return result;
}

unint64_t sub_100095970()
{
  result = qword_1002249B0;
  if (!qword_1002249B0)
  {
    sub_10000460C(&qword_1002249A8, &qword_1001B9B48);
    sub_100095A3C();
    sub_10000BFFC(&qword_1002249D8, &qword_1002249E0, &qword_1001B9B68, &protocol conformance descriptor for TupleView<A>);
    sub_100095BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249B0);
  }

  return result;
}

unint64_t sub_100095A3C()
{
  result = qword_1002249B8;
  if (!qword_1002249B8)
  {
    sub_10000460C(&qword_1002249C0, &qword_1001B9B50);
    sub_100095AF8();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249B8);
  }

  return result;
}

unint64_t sub_100095AF8()
{
  result = qword_1002249C8;
  if (!qword_1002249C8)
  {
    sub_10000460C(&qword_1002249D0, &unk_1001B9B58);
    sub_10000BFFC(&qword_100223468, &qword_100223470, &qword_1001B7380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249C8);
  }

  return result;
}

unint64_t sub_100095BB0()
{
  result = qword_1002249E8;
  if (!qword_1002249E8)
  {
    sub_10000460C(&qword_1002249F0, &qword_1001B9B70);
    sub_100095C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249E8);
  }

  return result;
}

unint64_t sub_100095C34()
{
  result = qword_1002249F8;
  if (!qword_1002249F8)
  {
    sub_10000460C(&qword_100224A00, &qword_1001B9B78);
    sub_10000460C(&qword_100224A08, &qword_1001B9B80);
    sub_100095D2C();
    swift_getOpaqueTypeConformance2();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002249F8);
  }

  return result;
}

unint64_t sub_100095D2C()
{
  result = qword_100224A10;
  if (!qword_100224A10)
  {
    sub_10000460C(&qword_100224A08, &qword_1001B9B80);
    type metadata accessor for AttributionModule(255);
    sub_10000460C(&qword_100224A18, &qword_1001B9B88);
    sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule, &unk_1001C3514);
    sub_10000460C(&qword_100224A28, &qword_1001B9B90);
    sub_100095EC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223468, &qword_100223470, &qword_1001B7380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A10);
  }

  return result;
}

unint64_t sub_100095EC8()
{
  result = qword_100224A30;
  if (!qword_100224A30)
  {
    sub_10000460C(&qword_100224A28, &qword_1001B9B90);
    type metadata accessor for AttributionModule(255);
    sub_100098608(&qword_100224A20, type metadata accessor for AttributionModule, &unk_1001C3514);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223458, &qword_100223460, &qword_1001B7378, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A30);
  }

  return result;
}

uint64_t sub_100095FE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F6C0C();
  *a1 = result & 1;
  return result;
}

__n128 sub_100096044(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100096054@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(type metadata accessor for DetailsModule(0, v4, v5, a1) - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10009575C(v8, v4, v5, v6, a2);
}

unint64_t sub_1000960E0()
{
  result = qword_100224A58;
  if (!qword_100224A58)
  {
    v1 = sub_10000460C(&qword_100224A50, &qword_1001B9BE0);
    sub_10009616C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A58);
  }

  return result;
}

unint64_t sub_10009616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100228010;
  if (!qword_100228010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228010);
  }

  return result;
}

double sub_1000961C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsModule(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100095910(a1, v9, v6, v7);
}

uint64_t sub_100096258(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000962B4()
{
  result = qword_100224A98;
  if (!qword_100224A98)
  {
    v1 = sub_10000460C(&qword_100224A88, &qword_1001B9C10);
    sub_10009636C(v1, v2, v3);
    sub_10000BFFC(&qword_100223468, &qword_100223470, &qword_1001B7380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224A98);
  }

  return result;
}

unint64_t sub_10009636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224AA0;
  if (!qword_100224AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AA0);
  }

  return result;
}

unint64_t sub_1000963C0()
{
  result = qword_100224AA8;
  if (!qword_100224AA8)
  {
    sub_10000460C(&qword_100224A90, &qword_1001B9C18);
    sub_100096478();
    sub_10000BFFC(&qword_100224AC0, &qword_100224AC8, &qword_1001B9C28, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AA8);
  }

  return result;
}

unint64_t sub_100096478()
{
  result = qword_100224AB0;
  if (!qword_100224AB0)
  {
    sub_10000460C(&qword_100224AB8, &qword_1001B9C20);
    sub_1000962B4();
    sub_10000BFFC(&qword_100223458, &qword_100223460, &qword_1001B7378, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AB0);
  }

  return result;
}

uint64_t sub_100096530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DetailsModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for DetailsViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  return swift_deallocObject();
}

void sub_100096640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for DetailsModule(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_100094034(v9, v5, v6, v7);
}

uint64_t sub_1000966C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1000966F0()
{
  result = qword_100224AF0;
  if (!qword_100224AF0)
  {
    sub_10000460C(&qword_100224AF8, &qword_1001B9CB8);
    sub_10000460C(&qword_100224990, &qword_1001B9B30);
    sub_10000460C(&qword_100224A50, &qword_1001B9BE0);
    sub_10000460C(&qword_100224988, &qword_1001B9B28);
    sub_10000460C(&qword_100224980, &qword_1001B9B20);
    sub_10000460C(&qword_100224978, &qword_1001B9B18);
    sub_10000460C(&qword_100224A40, &qword_1001B9B98);
    sub_10000460C(&qword_100224A48, &qword_1001B9BA0);
    sub_10000460C(&qword_100224970, &qword_1001B9B10);
    sub_10000BFFC(&qword_100224A38, &qword_100224970, &qword_1001B9B10, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetGroupedListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000960E0();
    swift_getOpaqueTypeConformance2();
    sub_100098608(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224AF0);
  }

  return result;
}

uint64_t sub_100096A30()
{
  result = Color.init(_:bundle:)();
  qword_1002248E0 = result;
  return result;
}

uint64_t sub_100096A6C()
{
  result = Color.init(_:bundle:)();
  qword_1002248E8 = result;
  return result;
}

uint64_t sub_100096AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v76 = type metadata accessor for PlainButtonStyle();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000024C4(&qword_100224B18, &qword_1001B9D20);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v66 - v4;
  v75 = sub_1000024C4(&qword_100224B20, &qword_1001B9D28);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v66 - v5;
  v84 = sub_1000024C4(&qword_100224B28, &qword_1001B9D30);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v68 = &v66 - v6;
  v7 = sub_1000024C4(&qword_100224B30, &qword_1001B9D38);
  v8 = __chkstk_darwin(v7 - 8);
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v66 - v10;
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000024C4(&qword_100224B38, &qword_1001B9D40);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v78 = sub_1000024C4(&qword_100224B40, &qword_1001B9D48);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = &v66 - v16;
  v18 = sub_1000024C4(&qword_100224B48, &unk_1001B9D50);
  v19 = __chkstk_darwin(v18 - 8);
  v82 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v66 - v21;
  v22 = sub_1000024C4(&qword_100221A50, &qword_1001B4D70);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_1000024C4(&qword_100224B50, &unk_1001B9D60);
  v26 = __chkstk_darwin(v25 - 8);
  v81 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v66 - v28;

  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  v30 = Image.symbolRenderingMode(_:)();

  sub_1000050C4(v24, &qword_100221A50, &qword_1001B4D70);
  v31 = static Color.white.getter();
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001B3B50;
  if (qword_100220BD8 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = qword_1002248E0;
  v33 = qword_100220BE0;

  if (v33 != -1)
  {
    swift_once();
  }

  *(v32 + 40) = qword_1002248E8;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v34 = v93;
  v35 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v91 = v30;
  *(&v91 + 1) = v31;
  *v92 = v34;
  *&v92[24] = v95;
  *&v92[8] = v94;
  *&v92[40] = KeyPath;
  *&v92[48] = v35;
  v92[56] = 1;
  sub_1000024C4(&qword_100224B58, &qword_1001B9DA0);
  sub_1000982E0();
  View.accessibilityHidden(_:)();
  v96[2] = *&v92[16];
  *v97 = *&v92[32];
  *&v97[9] = *&v92[41];
  v96[0] = v91;
  v96[1] = *v92;
  sub_1000050C4(v96, &qword_100224B58, &qword_1001B9DA0);
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v37 = sub_1000024C4(&qword_100224B98, &qword_1001B9DC8);
  sub_1000978CC(a1, &v15[*(v37 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v38 = sub_10000BFFC(&qword_100224BA0, &qword_100224B38, &qword_1001B9D40, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v12, v80);
  sub_1000050C4(v15, &qword_100224B38, &qword_1001B9D40);
  *&v91 = v13;
  *(&v91 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v78;
  View.accessibilityIdentifier(_:)();
  (*(v77 + 8))(v17, v39);
  v40 = *(a1 + 64);
  v91 = *(a1 + 48);
  *v92 = v40;
  v41 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v42 = *&v92[8];
    v43 = *v92;
    v44 = v91;
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v41;
    v45[4] = v43;
    v45[5] = v42;
    __chkstk_darwin(v45);
    *(&v66 - 4) = v44;
    *(&v66 - 3) = v41;
    *(&v66 - 2) = v43;
    *(&v66 - 1) = v42;
    sub_10000BEB8(&v91, v90, &qword_100224BB0, &qword_1001B9DD8);

    sub_1000024C4(&qword_100224BB8, &unk_1001B9DE0);
    sub_100098550();
    v46 = v67;
    Button.init(action:label:)();
    v47 = v70;
    PlainButtonStyle.init()();
    v48 = sub_10000BFFC(&qword_100224BC8, &qword_100224B18, &qword_1001B9D20, &protocol conformance descriptor for Button<A>);
    v49 = sub_100098608(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v50 = v71;
    v51 = v72;
    v52 = v76;
    View.buttonStyle<A>(_:)();
    (*(v74 + 8))(v47, v52);
    (*(v69 + 8))(v46, v51);
    v90[0] = v51;
    v90[1] = v52;
    v90[2] = v48;
    v90[3] = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v68;
    v54 = v75;
    View.accessibilityIdentifier(_:)();

    (*(v73 + 8))(v50, v54);
    v55 = v85;
    sub_10001AE00(v53, v85, &qword_100224B28, &qword_1001B9D30);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v85;
  }

  (*(v83 + 56))(v55, v56, 1, v84);
  v57 = v88;
  v58 = v81;
  sub_10000BEB8(v88, v81, &qword_100224B50, &unk_1001B9D60);
  v59 = v89;
  v60 = v82;
  sub_10000BEB8(v89, v82, &qword_100224B48, &unk_1001B9D50);
  v61 = v86;
  sub_10000BEB8(v55, v86, &qword_100224B30, &qword_1001B9D38);
  v62 = v87;
  sub_10000BEB8(v58, v87, &qword_100224B50, &unk_1001B9D60);
  v63 = sub_1000024C4(&qword_100224BA8, &qword_1001B9DD0);
  sub_10000BEB8(v60, v62 + v63[12], &qword_100224B48, &unk_1001B9D50);
  v64 = v62 + v63[16];
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_10000BEB8(v61, v62 + v63[20], &qword_100224B30, &qword_1001B9D38);
  sub_1000050C4(v55, &qword_100224B30, &qword_1001B9D38);
  sub_1000050C4(v59, &qword_100224B48, &unk_1001B9D50);
  sub_1000050C4(v57, &qword_100224B50, &unk_1001B9D60);
  sub_1000050C4(v61, &qword_100224B30, &qword_1001B9D38);
  sub_1000050C4(v60, &qword_100224B48, &unk_1001B9D50);
  return sub_1000050C4(v58, &qword_100224B50, &unk_1001B9D60);
}

uint64_t sub_1000978CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v86 = sub_1000024C4(&qword_100224BD0, &qword_1001BB3B0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v75 = &v74 - v3;
  v4 = sub_1000024C4(&qword_100224BD8, &qword_1001B9DF0);
  v5 = __chkstk_darwin(v4 - 8);
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v74 - v7;
  v81 = sub_1000024C4(&qword_100224BE0, &qword_1001B9DF8);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v74 - v8;
  v9 = sub_1000024C4(&qword_100224BE8, &qword_1001B9E00);
  __chkstk_darwin(v9 - 8);
  v78 = &v74 - v10;
  v80 = sub_1000024C4(&qword_100224BF0, &unk_1001B9E08) - 8;
  v11 = __chkstk_darwin(v80);
  v83 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v74 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v74 - v16;
  v76 = a1;
  v18 = a1[1];
  *&v89 = *a1;
  *(&v89 + 1) = v18;
  v21 = sub_10001877C(v15, v19, v20);

  v74 = v21;
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.body.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_100017398(v22, v24, v26 & 1);

  *&v89 = v27;
  *(&v89 + 1) = v29;
  v31 &= 1u;
  v90 = v31;
  v91 = v33;
  v34 = v77;
  View.avoidsOrphans(_:)();
  v35 = v27;
  v36 = v17;
  sub_100017398(v35, v29, v31);

  *&v89 = &type metadata for Text;
  *(&v89 + 1) = &protocol witness table for Text;
  v37 = 1;
  swift_getOpaqueTypeConformance2();
  v38 = v78;
  v39 = v81;
  View.accessibilityIdentifier(_:)();
  (*(v82 + 8))(v34, v39);
  LOBYTE(v39) = static Edge.Set.vertical.getter();
  v92 = *(v76 + 1);
  sub_10000BEB8(&v92, &v89, &qword_10022AF10, &qword_1001B5980);
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v79;
  sub_10001AE00(v38, v79, &qword_100224BE8, &qword_1001B9E00);
  v49 = v48 + *(v80 + 44);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  sub_10001AE00(v48, v17, &qword_100224BF0, &unk_1001B9E08);
  if (*(&v92 + 1))
  {
    v89 = v92;
    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    static Font.subheadline.getter();
    v55 = Text.font(_:)();
    v57 = v56;
    v59 = v58;

    sub_100017398(v50, v52, v54 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v89 = qword_1002390B8;

    v60 = Text.foregroundStyle<A>(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_100017398(v55, v57, v59 & 1);

    *&v89 = v60;
    *(&v89 + 1) = v62;
    v90 = v64 & 1;
    v91 = v66;
    v67 = v75;
    View.accessibilityIdentifier(_:)();
    sub_100017398(v60, v62, v64 & 1);

    v68 = v85;
    sub_100098650(v67, v85);
    v37 = 0;
  }

  else
  {
    v68 = v85;
  }

  (*(v84 + 56))(v68, v37, 1, v86);
  v69 = v83;
  sub_10000BEB8(v36, v83, &qword_100224BF0, &unk_1001B9E08);
  v70 = v87;
  sub_10000BEB8(v68, v87, &qword_100224BD8, &qword_1001B9DF0);
  v71 = v88;
  sub_10000BEB8(v69, v88, &qword_100224BF0, &unk_1001B9E08);
  v72 = sub_1000024C4(qword_100224BF8, &qword_1001B9E18);
  sub_10000BEB8(v70, v71 + *(v72 + 48), &qword_100224BD8, &qword_1001B9DF0);
  sub_1000050C4(v68, &qword_100224BD8, &qword_1001B9DF0);
  sub_1000050C4(v36, &qword_100224BF0, &unk_1001B9E08);
  sub_1000050C4(v70, &qword_100224BD8, &qword_1001B9DF0);
  return sub_1000050C4(v69, &qword_100224BF0, &unk_1001B9E08);
}

uint64_t sub_10009807C@<X0>(uint64_t *a3@<X8>)
{

  v4 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v5 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static Color.blue.getter();
  *a3 = v4;
  a3[1] = KeyPath;
  a3[2] = v5;
  a3[3] = result;
  return result;
}

uint64_t sub_100098100()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100224B00, &qword_1001B9D10);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = v0[3];
  v12[2] = v0[2];
  v12[3] = v8;
  v12[4] = v0[4];
  v9 = v0[1];
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v10 = sub_1000024C4(&qword_100224B08, &qword_1001B9D18);
  sub_100096AA8(v12, &v7[*(v10 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000BFFC(&qword_100224B10, &qword_100224B00, &qword_1001B9D10, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_1000050C4(v7, &qword_100224B00, &qword_1001B9D10);
}

unint64_t sub_1000982E0()
{
  result = qword_100224B60;
  if (!qword_100224B60)
  {
    sub_10000460C(&qword_100224B58, &qword_1001B9DA0);
    v3 = sub_10009836C();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B60);
  }

  return result;
}

unint64_t sub_10009836C()
{
  result = qword_100224B68;
  if (!qword_100224B68)
  {
    sub_10000460C(&qword_100224B70, &qword_1001B9DA8);
    sub_100098424();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B68);
  }

  return result;
}

unint64_t sub_100098424()
{
  result = qword_100224B78;
  if (!qword_100224B78)
  {
    sub_10000460C(&qword_100224B80, &qword_1001B9DB0);
    sub_10000BFFC(&qword_100224B88, &qword_100224B90, &unk_1001B9DB8, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224B78);
  }

  return result;
}

uint64_t sub_1000984DC()
{

  return swift_deallocObject();
}

unint64_t sub_100098550()
{
  result = qword_100224BC0;
  if (!qword_100224BC0)
  {
    sub_10000460C(&qword_100224BB8, &unk_1001B9DE0);
    sub_100064388();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224BC0);
  }

  return result;
}

uint64_t sub_100098608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100098650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224BD0, &qword_1001BB3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000986D0()
{
  sub_10000460C(&qword_100224B00, &qword_1001B9D10);
  sub_10000BFFC(&qword_100224B10, &qword_100224B00, &qword_1001B9D10, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100098770(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

void sub_100098850(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(a2 + 52));
  v7 = v6[5];
  v8 = v6[6];
  sub_10001BED0(v6 + 2, v7);
  v9 = (*(v8 + 32))(v7, v8);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v12 = a1[2];
  v11 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v12;
  *(inited + 48) = v11;
  v13 = *(v3 + *(a2 + 56));
  if (v13 == 15)
  {
    LOBYTE(v13) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 11;
  v14 = 19;
  if (v9 == 2)
  {
    v14 = 20;
  }

  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = v14;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v15 = a1[8];
    v16 = a1[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100026FEC;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_100215010;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_100098B0C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100098B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a1 + 44);
  if (*(*(v2 + *(a1 + 48)) + 16))
  {
    sub_100073F10(v2 + v8, v7);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_100006BC4(v7);
      return (*(v10 + 56))(a2, 1, 1, v9);
    }

    else
    {
      URL.appending(queryItems:)();
      (*(v10 + 8))(v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {

    return sub_100073F10(v2 + v8, a2);
  }
}

void sub_100098D00(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v13 = a4[2];
  v12 = a4[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v12;
  v14 = *(v5 + *(a5 + 56));
  if (v14 == 15)
  {
    LOBYTE(v14) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 11;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (a4[9])
  {
    v15 = a4[8];
    v16 = a4[9];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_100006C80(a1, a2, a3);

  v17 = sub_1001894F4(1, 5, 1, inited);
  v21 = v17;
  sub_100006C98(&aBlock, v28);
  sub_100118768(4, v28, &v21, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001C4640;
  v19[4] = v17;
  v26 = sub_100006D88;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10015B4A4;
  v25 = &unk_100214FC0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_100098F88(uint64_t a1)
{
  sub_10008C108();
  v3 = *(v1 + *(a1 + 52));
  v4 = v3[5];
  v5 = v3[6];
  sub_10001BED0(v3 + 2, v4);
  return (*(v5 + 72))(v4, v5);
}

uint64_t sub_100098FEC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2[5];
  v4 = v2[6];
  sub_10001BED0(v2 + 2, v3);
  return (*(v4 + 80))(v3, v4);
}

double sub_100099048@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = LocalizedStringKey.init(stringLiteral:)();
  *(a7 + 8) = v14;
  *(a7 + 16) = v15 & 1;
  *(a7 + 24) = v16;
  *(a7 + 32) = LocalizedStringKey.init(stringLiteral:)();
  *(a7 + 40) = v17;
  *(a7 + 48) = v18 & 1;
  *(a7 + 56) = v19;
  v20 = type metadata accessor for MusicViewModel(0, a5, a6, v19);
  v21 = v20[13];
  if (qword_100220C18 != -1)
  {
    swift_once();
  }

  *(a7 + v21) = qword_100239130;
  *(a7 + 64) = a1;
  sub_100073EA0(a2, a7 + v20[11]);
  *(a7 + v20[12]) = a3;
  *(a7 + v20[14]) = a4;

  return result;
}

void sub_100099198(uint64_t a1)
{
  type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    sub_10009946C(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009946C(319, &qword_100224C80, &type metadata accessor for URLQueryItem, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PlaybackController(319);
        if (v4 <= 0x3F)
        {
          sub_1000994D0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000992EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000993BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10009946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000994D0()
{
  if (!qword_100224C88)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100224C88);
    }
  }
}

double sub_100099524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10009953C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000FBDA8(3);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_10009962C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_1000024C4(a1, a2);
  sub_10009BD38(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_1000997BC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10009BF34(v2, *(a1 + 36), 0, a1);

  return v4;
}

Swift::Int sub_10009984C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000998C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100099904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000024C4(&qword_100224DC8, &qword_1001BDA30);
  v4[12] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100224DD0, &qword_1001B9FB0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_100224DD8, &qword_1001B9FB8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_1000024C4(&qword_100224DE0, &qword_1001B9FC0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100099BA0, v3, 0);
}

uint64_t sub_100099BA0()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100099C68;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100099C68()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100099D78, v1, 0);
}

uint64_t sub_100099D78()
{
  v27 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_10009BCF0(&qword_100224DA0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Artist();
    sub_10009BCF0(&qword_100224DE8, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_1000024C4(&qword_100225DB0, &qword_1001B9FA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001B9E70;
    sub_1000024C4(&qword_100224DF0, &qword_1001B9FF0);
    *(v9 + 32) = static PartialMusicProperty<A>.topSongs.getter();
    *(v9 + 40) = static PartialMusicProperty<A>.featuredPlaylists.getter();
    *(v9 + 48) = static PartialMusicProperty<A>.featuredAlbums.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_10009A24C;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000BE10(v13, qword_100239158);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100139F7C(v17, v16, &v26);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching artist. ID: %s", v18, 0xCu);
    sub_100012A7C(v19);
  }

  sub_10009BC14(v20, v21, v22);
  swift_allocError();
  *v23 = 0;
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_10009A24C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_10009A74C;
  }

  else
  {
    v4 = sub_10009A378;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009A378()
{
  v33 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_10009962C(&qword_100224DD0, &qword_1001B9FB0, &qword_100224DF8, &type metadata accessor for Artist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_1000050C4(v0[12], &qword_100224DC8, &qword_1001BDA30);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BE10(v7, qword_100239158);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100139F7C(v11, v10, &v32);
      _os_log_impl(&_mh_execute_header, v8, v9, "Artist not found. ID: %s", v12, 0xCu);
      sub_100012A7C(v13);
    }

    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    sub_10009BC14(v20, v21, v22);
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);

    v24 = v0[1];
  }

  else
  {
    v25 = v0[30];
    v26 = v0[20];
    v27 = v0[21];
    v28 = v0[19];
    v29 = v0[12];
    v30 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v26 + 8))(v27, v28);
    (*(v6 + 32))(v30, v29, v25);

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_10009A74C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10009A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000024C4(&qword_100224D80, &qword_1001B9F58);
  v4[12] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100224D88, &qword_1001B9F60);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_100224D90, &qword_1001B9F68);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_1000024C4(&qword_100224D98, &qword_1001B9F70);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10009AAC0, v3, 0);
}

uint64_t sub_10009AAC0()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10009AB88;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_10009AB88()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10009AC98, v1, 0);
}

uint64_t sub_10009AC98()
{
  v27 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_10009BCF0(&qword_100224DA0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Playlist();
    sub_10009BCF0(&qword_100224DB0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_1000024C4(&qword_100225DB0, &qword_1001B9FA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001B9E80;
    sub_1000024C4(&qword_100224DB8, &qword_1001B9FA8);
    *(v9 + 32) = static PartialMusicProperty<A>.tracks.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_10009B15C;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000BE10(v13, qword_100239158);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100139F7C(v17, v16, &v26);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching playlist. ID: %s", v18, 0xCu);
    sub_100012A7C(v19);
  }

  sub_10009BC14(v20, v21, v22);
  swift_allocError();
  *v23 = 0;
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_10009B15C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_10009B810;
  }

  else
  {
    v4 = sub_10009B288;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009B288()
{
  v42 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_10009962C(&qword_100224D88, &qword_1001B9F60, &qword_100224DC0, &type metadata accessor for Playlist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_1000050C4(v0[12], &qword_100224D80, &qword_1001B9F58);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000BE10(v7, qword_100239158);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100139F7C(v11, v10, v41);
      _os_log_impl(&_mh_execute_header, v8, v9, "Playlist not found. ID: %s", v12, 0xCu);
      sub_100012A7C(v13);
    }

    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    sub_10009BC14(v17, v18, v19);
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    sub_10000BE10(v7, qword_100239158);

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[9];
      v23 = v0[10];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_100139F7C(v24, v23, v41);
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error fetching playlist. ID: %s. Error: %@", v25, 0x16u);
      sub_1000050C4(v26, &qword_100221718, &qword_1001B8890);

      sub_100012A7C(v27);
    }

    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[19];
    swift_allocError();
    *v32 = 2;
    swift_willThrow();

    (*(v30 + 8))(v29, v31);

    v33 = v0[1];
  }

  else
  {
    v34 = v0[30];
    v35 = v0[20];
    v36 = v0[21];
    v37 = v0[19];
    v38 = v0[12];
    v39 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v35 + 8))(v36, v37);
    (*(v6 + 32))(v39, v38, v34);

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_10009B810()
{
  v20 = v0;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100139F7C(v5, v4, &v19);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching playlist. ID: %s. Error: %@", v6, 0x16u);
    sub_1000050C4(v7, &qword_100221718, &qword_1001B8890);

    sub_100012A7C(v8);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  sub_10009BC14(v13, v14, v15);
  swift_allocError();
  *v16 = 2;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10009BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000BD00;

  return sub_10009A824(a1, a2, a3);
}

unint64_t sub_10009BC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224DA8;
  if (!qword_100224DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224DA8);
  }

  return result;
}

uint64_t sub_10009BC98@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10001BED0(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10009BCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009BD38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteViewConfiguration.QueryItem.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteViewConfiguration.QueryItem.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009BEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224E00;
  if (!qword_100224E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E00);
  }

  return result;
}

uint64_t sub_10009BF34(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

__n128 sub_10009BF88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009BF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10009BFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10009C088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_1000024C4(&qword_100224E08, &qword_1001BA148);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = *v2;
  v85 = v2[1];
  v86 = v7;

  v8 = LocalizedStringKey.init(stringLiteral:)();
  v83 = v9;
  v84 = v8;
  v11 = v10;
  v82 = v12;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v80 = v14;
  v81 = v13;
  v16 = v15;
  v79 = v17;
  type metadata accessor for CGSize(0);
  v102 = 0uLL;
  State.init(wrappedValue:)();
  v73 = *(&v91 + 1);
  v74 = v91;
  v78 = v92;
  static Alignment.center.getter();
  v76 = v11 & 1;
  v77 = v16 & 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v71 = v19;
  v72 = v18;
  v69 = v21;
  v70 = v20;
  v104 = 0;
  v68 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = 0;
  v67 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v106 = 0;
  v38 = static Alignment.center.getter();
  v66 = v39;
  v40 = &v6[*(v4 + 44)];
  v41 = static Alignment.bottom.getter();
  v43 = v42;
  sub_10009C4E8(v2, &v102);
  v98 = v102;
  v99[0] = *v103;
  *(v99 + 10) = *&v103[10];
  v100 = v102;
  v101[0] = *v103;
  *(v101 + 10) = *&v103[10];
  sub_10009C6A8(&v98, &v88);
  sub_1000050C4(&v100, &qword_100224E10, &qword_1001BA150);
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 10) = *(v99 + 10);
  *&v88 = v41;
  *(&v88 + 1) = v43;
  sub_1000024C4(&qword_100224E18, &qword_1001BA158);
  sub_10000BFFC(&qword_100224E20, &qword_100224E18, &qword_1001BA158, &protocol conformance descriptor for ZStack<A>);
  View.accessibilityHidden(_:)();
  v102 = v88;
  *v103 = v89;
  *&v103[16] = v90[0];
  *&v103[26] = *(v90 + 10);
  sub_1000050C4(&v102, &qword_100224E18, &qword_1001BA158);
  v44 = &v40[*(sub_1000024C4(&qword_100224E28, &qword_1001BA160) + 36)];
  v45 = v66;
  *v44 = v38;
  v44[1] = v45;
  v46 = v73;
  *(v6 + 10) = v74;
  *(v6 + 11) = v46;
  v47 = v94;
  *(v6 + 136) = v93;
  v48 = v91;
  *(v6 + 120) = v92;
  *(v6 + 104) = v48;
  v49 = v96;
  *(v6 + 200) = v97;
  v50 = v95;
  *(v6 + 184) = v49;
  v51 = v83;
  *v6 = v84;
  *(v6 + 1) = v51;
  v6[16] = v76;
  v52 = v81;
  *(v6 + 3) = v82;
  *(v6 + 4) = v52;
  *(v6 + 5) = v80;
  v6[48] = v77;
  v53 = v85;
  v54 = v86;
  *(v6 + 7) = v79;
  *(v6 + 8) = v54;
  *(v6 + 9) = v53;
  *(v6 + 12) = v78;
  *(v6 + 168) = v50;
  *(v6 + 152) = v47;
  v6[216] = v75;
  *&v49 = v71;
  *(v6 + 28) = v72;
  *(v6 + 29) = v49;
  *&v49 = v69;
  *(v6 + 30) = v70;
  *(v6 + 31) = v49;
  v6[256] = 0;
  LOBYTE(v53) = v67;
  v6[264] = v68;
  *(v6 + 34) = v23;
  *(v6 + 35) = v25;
  *(v6 + 36) = v27;
  *(v6 + 37) = v29;
  v6[304] = 0;
  v6[312] = v53;
  *(v6 + 40) = v31;
  *(v6 + 41) = v33;
  *(v6 + 42) = v35;
  *(v6 + 43) = v37;
  v6[352] = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v87;
  sub_10009C718(v6, v87);
  result = sub_1000024C4(&qword_100224E30, &qword_1001BA168);
  v65 = v63 + *(result + 36);
  *v65 = v41;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_10009C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    v10 = Color.init(cgColor:)();
  }

  else
  {
    v10 = static Color.blue.getter();
  }

  v11 = v10;
  Image.init(_:bundle:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v12 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  *(a2 + 8) = 256;
  *(a2 + 16) = 16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 257;
  return result;
}

uint64_t sub_10009C6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224E10, &qword_1001BA150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100224E08, &qword_1001BA148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009C78C()
{
  result = qword_100224E38;
  if (!qword_100224E38)
  {
    sub_10000460C(&qword_100224E30, &qword_1001BA168);
    sub_10009C818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E38);
  }

  return result;
}

unint64_t sub_10009C818()
{
  result = qword_100224E40;
  if (!qword_100224E40)
  {
    sub_10000460C(&qword_100224E08, &qword_1001BA148);
    sub_10009C8D0();
    sub_10000BFFC(qword_100224E90, &qword_100224E28, &qword_1001BA160, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E40);
  }

  return result;
}

unint64_t sub_10009C8D0()
{
  result = qword_100224E48;
  if (!qword_100224E48)
  {
    sub_10000460C(&qword_100224E50, &qword_1001BA170);
    sub_10009C95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E48);
  }

  return result;
}

unint64_t sub_10009C95C()
{
  result = qword_100224E58;
  if (!qword_100224E58)
  {
    sub_10000460C(&qword_100224E60, &qword_1001BA178);
    sub_10009C9E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E58);
  }

  return result;
}

unint64_t sub_10009C9E8()
{
  result = qword_100224E68;
  if (!qword_100224E68)
  {
    sub_10000460C(&qword_100224E70, &qword_1001BA180);
    sub_10009CA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E68);
  }

  return result;
}

unint64_t sub_10009CA74()
{
  result = qword_100224E78;
  if (!qword_100224E78)
  {
    v1 = sub_10000460C(&qword_100224E80, &qword_1001BA188);
    sub_10009CB00(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E78);
  }

  return result;
}

unint64_t sub_10009CB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224E88;
  if (!qword_100224E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224E88);
  }

  return result;
}

void sub_10009CB64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v1;
  type metadata accessor for VenueEventViewModel(255, &v8);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    *&v8 = v2;
    sub_100082DA0(319);
    if (v5 <= 0x3F)
    {
      v11 = 0;
      *(&v8 + 1) = v4;
      sub_100017044(319);
      if (v7 <= 0x3F)
      {
        v12 = 0;
        *&v9 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}