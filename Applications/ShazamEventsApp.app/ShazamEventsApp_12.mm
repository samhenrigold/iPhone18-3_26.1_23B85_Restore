double sub_100176658(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a7;
  v41 = a8;
  v38 = a11;
  v39 = a6;
  v36 = a10;
  v37 = a5;
  v34 = a9;
  v35 = a4;
  v42[0] = a4;
  v42[1] = a5;
  v42[2] = a6;
  v42[3] = a7;
  v42[4] = a8;
  v42[5] = a9;
  v42[6] = a10;
  v42[7] = a11;
  v14 = type metadata accessor for ArtistEventView(0, v42);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v19 - 8);
  v21 = &v34 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a3, v14);
  type metadata accessor for MainActor();
  v23 = a2;
  sub_1000E4108(a1, a2);
  v24 = static MainActor.shared.getter();
  v25 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v24;
  *(v27 + 3) = &protocol witness table for MainActor;
  v28 = v37;
  *(v27 + 4) = v35;
  *(v27 + 5) = v28;
  v29 = v40;
  *(v27 + 6) = v39;
  *(v27 + 7) = v29;
  v30 = v34;
  *(v27 + 8) = v41;
  *(v27 + 9) = v30;
  v31 = v38;
  *(v27 + 10) = v36;
  *(v27 + 11) = v31;
  (*(v15 + 32))(&v27[v25], v18, v14);
  v32 = &v27[v26];
  *v32 = a1;
  *(v32 + 1) = v23;
  sub_10013F12C(0, 0, v21, &unk_1001BBBD0, v27);

  return result;
}

uint64_t sub_1001768D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 160) = v16;
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 176) = v10;
  *(v8 + 184) = v9;

  return _swift_task_switch(sub_10017698C, v10, v9);
}

uint64_t sub_10017698C()
{
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v1;
  *(v0 + 64) = *(v0 + 152);
  v2 = type metadata accessor for ArtistEventView(0, v0 + 16);
  *(v0 + 192) = v2;
  *(v0 + 200) = sub_10016F338(v2);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_100176A5C;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return sub_1001A0D10(v5, v4);
}

uint64_t sub_100176A5C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100176BA0, v3, v2);
}

uint64_t sub_100176BA0()
{
  v1 = v0[24];
  v2 = v0[12];

  sub_10016F338(v1);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xEF6E6F697461636FLL;
      v4 = 0x4C746E6572727563;
    }

    else
    {
      v4 = v0[11];
      v3 = v0[12];
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  v5 = v0[11];
  v6 = *(v0[10] + 16);
  v7 = v0[12];
  if (v6)
  {
    sub_1000E4108(v5, v7);

    sub_1001A123C(9, v4, v3, 2u, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    sub_1000E4108(v5, v7);
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100176D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a5;
  *&v34 = a6;
  *(&v34 + 1) = a7;
  *&v35 = a8;
  *(&v35 + 1) = a9;
  v9 = type metadata accessor for ArtistEventView(0, &v32);
  sub_10016F338(v9);

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Font.Weight.semibold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000D60C(v10, v12, v14 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v41 = v19 & 1;
  *&v23 = v15;
  *(&v23 + 1) = v17;
  LOBYTE(v24) = v19 & 1;
  *(&v24 + 1) = v21;
  sub_100009F70(&qword_100219DC0, &unk_1001AEE58);
  sub_10002DB5C();
  View.accessibilityIdentifier(_:)();
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v32 = v23;
  v33 = v24;
  return sub_10000D52C(&v32, &qword_100219DC0, &unk_1001AEE58);
}

uint64_t sub_100176F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a6;
  v52 = a8;
  v49 = a4;
  v50 = a5;
  v53 = a9;
  v47 = a2;
  v48 = a10;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v45 = a7;
  v61 = a8;
  v62 = a10;
  v13 = type metadata accessor for ArtistEventView(0, &v55);
  v14 = *(v13 - 1);
  v46 = *(v14 + 64);
  __chkstk_darwin(v13);
  v39 = &v38 - v15;
  v16 = type metadata accessor for Array();
  v43 = v16;
  v38 = *(*(a7 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  v18 = sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
  v41 = v18;
  WitnessTable = swift_getWitnessTable();
  v40 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v16;
  v56 = AssociatedTypeWitness;
  v57 = v18;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v21 = type metadata accessor for ForEach();
  v44 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v38 - v25;
  v27 = a1;
  sub_10016F338(v13);
  v28 = sub_1001A5918();

  v55 = v28;
  v29 = v39;
  (*(v14 + 16))(v39, v27, v13);
  v30 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v47;
  *(v31 + 3) = a3;
  v32 = v50;
  *(v31 + 4) = v49;
  *(v31 + 5) = v32;
  v33 = v45;
  *(v31 + 6) = v51;
  *(v31 + 7) = v33;
  v34 = v48;
  *(v31 + 8) = v52;
  *(v31 + 9) = v34;
  (*(v14 + 32))(&v31[v30], v29, v13);
  v35 = sub_10017AC40();
  ForEach<>.init(_:content:)();
  v54 = v35;
  swift_getWitnessTable();
  sub_100157EFC();
  v36 = *(v44 + 8);
  v36(v24, v21);
  sub_100157EFC();
  return (v36)(v26, v21);
}

uint64_t sub_100177334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v116 = a2;
  v119 = a9;
  v120 = a1;
  v105 = type metadata accessor for PlainButtonStyle();
  v102 = *(v105 - 8);
  v17 = __chkstk_darwin(v105);
  v101 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a4 - 8);
  __chkstk_darwin(v17);
  v91 = v19;
  v112 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a3;
  v121[0] = a3;
  v121[1] = a4;
  v115 = a5;
  v121[2] = a5;
  v121[3] = a6;
  v97 = a6;
  v99 = a7;
  v121[4] = a7;
  v121[5] = a8;
  v114 = a10;
  v121[6] = a10;
  v121[7] = a11;
  v96 = a11;
  v111 = type metadata accessor for ArtistEventView(0, v121);
  v90 = *(v111 - 8);
  v89 = *(v90 + 64);
  __chkstk_darwin(v111);
  v110 = &v88 - v20;
  v98 = sub_100009F70(&qword_100222010, &qword_1001BB998);
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v93 = &v88 - v21;
  v108 = sub_100009F70(&qword_100222110, &qword_1001BBC08);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - v22;
  v23 = sub_100009F70(&qword_100222008, &qword_1001BB990);
  v117 = *(v23 - 8);
  v118 = v23;
  v24 = __chkstk_darwin(v23);
  v104 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &v88 - v26;
  v100 = a8;
  v27 = *(a8 + 8);
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v32 = &v88 - v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  v109 = type metadata accessor for Optional();
  v35 = *(v109 - 8);
  __chkstk_darwin(v109);
  v37 = &v88 - v36;
  v38 = *(v27 + 176);
  v95 = v28;
  v38(v28, v27);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v30 + 8))(v32, AssociatedTypeWitness);
  v39 = *(v34 - 8);
  if ((*(v39 + 48))(v37, 1, v34) == 1)
  {
    (*(v35 + 8))(v37, v109);
LABEL_8:
    v67 = 1;
    v69 = v118;
    v68 = v119;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  v40 = swift_getAssociatedConformanceWitness();
  v41 = (*(v40 + 24))(v34, v40);
  v43 = v42;
  (*(v39 + 8))(v37, v34);
  if (!v43)
  {
    goto LABEL_8;
  }

  v109 = v41;
  v44 = v90;
  (*(v90 + 16))(v110, v116, v111);
  v88 = v43;
  v45 = v92;
  v46 = v95;
  (*(v92 + 16))(v112, v120, v95);
  v47 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v48 = (v89 + *(v45 + 80) + v47) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v113;
  *(v49 + 3) = v46;
  v50 = v97;
  *(v49 + 4) = v115;
  *(v49 + 5) = v50;
  v51 = v99;
  v52 = v100;
  *(v49 + 6) = v99;
  *(v49 + 7) = v52;
  v53 = v96;
  *(v49 + 8) = v114;
  *(v49 + 9) = v53;
  (*(v44 + 32))(&v49[v47], v110, v111);
  v54 = (*(v45 + 32))(&v49[v48], v112, v46);
  __chkstk_darwin(v54);
  *(&v88 - 12) = v113;
  *(&v88 - 11) = v46;
  v55 = v114;
  *(&v88 - 10) = v115;
  *(&v88 - 9) = v50;
  *(&v88 - 8) = v51;
  *(&v88 - 7) = v52;
  *(&v88 - 6) = v55;
  *(&v88 - 5) = v53;
  v56 = v116;
  v57 = v109;
  *(&v88 - 4) = v116;
  *(&v88 - 3) = v57;
  v58 = v120;
  *(&v88 - 2) = v88;
  *(&v88 - 1) = v58;
  sub_100009F70(&qword_100222118, &qword_1001BBC10);
  sub_10017CC8C();
  v59 = v93;
  Button.init(action:label:)();

  v60 = v101;
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222018, &qword_100222010, &qword_1001BB998, &protocol conformance descriptor for Button<A>);
  sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v61 = v106;
  v62 = v98;
  v63 = v105;
  View.buttonStyle<A>(_:)();
  (*(v102 + 8))(v60, v63);
  (*(v94 + 8))(v59, v62);
  v64 = static Edge.Set.horizontal.getter();
  v65 = *(v56 + 16);
  if (v65)
  {
    v66 = v64;
    if (*(v65 + 88) && *(v65 + 80) == 1)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {

        goto LABEL_12;
      }
    }

    v71 = [objc_opt_self() currentDevice];
    [v71 userInterfaceIdiom];

LABEL_12:
    EdgeInsets.init(_all:)();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v104;
    (*(v107 + 32))(v104, v61, v108);
    v81 = v118;
    v82 = &v80[*(v118 + 36)];
    *v82 = v66;
    *(v82 + 1) = v73;
    *(v82 + 2) = v75;
    *(v82 + 3) = v77;
    *(v82 + 4) = v79;
    v82[40] = 0;
    v83 = v80;
    v84 = v103;
    sub_10000F618(v83, v103, &qword_100222008, &qword_1001BB990);
    v85 = v84;
    v86 = v119;
    sub_10000F618(v85, v119, &qword_100222008, &qword_1001BB990);
    v69 = v81;
    v68 = v86;
    v67 = 0;
    return (*(v117 + 56))(v68, v67, 1, v69);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_100177ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v25 = a2;
  v26 = type metadata accessor for Optional();
  v16 = *(v26 - 8);
  __chkstk_darwin(v26);
  v18 = &v23 - v17;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = v24;
  v27[6] = a9;
  v27[7] = a10;
  v19 = type metadata accessor for ArtistEventView(0, v27);
  sub_10016F338(v19);
  v20 = *(a4 - 8);
  (*(v20 + 16))(v18, v25, a4);
  (*(v20 + 56))(v18, 0, 1, a4);
  v21 = sub_1001A5DF0(v18);
  (*(v16 + 8))(v18, v26, v21);

  sub_10016F338(v19);
  v22 = *(a1 + 16);
  if (v22)
  {

    sub_1001A123C(10, 13, 0, 3u, v22);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100178110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v58 = a4;
  v68 = a3;
  v63 = a2;
  v66 = type metadata accessor for ArtistEventRow(0);
  __chkstk_darwin(v66);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_100009F70(&qword_100222160, &unk_1001BBC30);
  __chkstk_darwin(v64);
  v65 = &v53 - v13;
  v14 = type metadata accessor for DateInterval();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = &v53 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v23 = sub_100009F70(&qword_100222150, &qword_1001BBC28);
  v24 = __chkstk_darwin(v23);
  v26 = (&v53 - v25);
  v27 = *(a1 + 16);
  if (!v27)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v55 = v20;
  v62 = v24;
  v28 = *(v27 + 88);
  v67 = a6;
  if (v28 && *(v27 + 80) == 1)
  {

    goto LABEL_6;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_6:
    v30 = [objc_opt_self() currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if (v31 == 1)
    {
      v32 = *(v16 + 176);

      v32(a5, v16);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
      v54 = v35;
      (*(v55 + 8))(v22, v19);
      v36 = v56;
      (*(v16 + 168))(a5, v16);
      v37 = swift_getAssociatedConformanceWitness();
      v38 = v59;
      sub_1000FBF34(AssociatedTypeWitness, v37, v59);
      (*(v57 + 8))(v36, AssociatedTypeWitness);
      type metadata accessor for ArtistEventRowViewModel(0);
      DateInterval.start.getter();
      (*(v60 + 8))(v38, v61);
      v39 = v68;
      *v26 = v63;
      v26[1] = v39;
      v40 = v54;
      v26[2] = v34;
      v26[3] = v40;
      v41 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
      v42 = (v26 + *(v62 + 36));
      *v42 = v41;
      v42[1] = sub_100178914;
      v42[2] = 0;
      sub_10000D58C(v26, v65, &qword_100222150, &qword_1001BBC28);
      swift_storeEnumTagMultiPayload();
      sub_10017CE84();
      sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow, &unk_1001B8848);
      _ConditionalContent<>.init(storage:)();
      return sub_10000D52C(v26, &qword_100222150, &qword_1001BBC28);
    }

    goto LABEL_9;
  }

LABEL_9:
  v44 = *(v16 + 176);

  v44(a5, v16);
  v45 = swift_getAssociatedConformanceWitness();
  v46 = (*(v45 + 48))(v19, v45);
  v48 = v47;
  (*(v55 + 8))(v22, v19);
  v49 = v56;
  (*(v16 + 168))(a5, v16);
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v59;
  sub_1000FBF34(AssociatedTypeWitness, v50, v59);
  (*(v57 + 8))(v49, AssociatedTypeWitness);
  type metadata accessor for ArtistEventRowViewModel(0);
  DateInterval.start.getter();
  (*(v60 + 8))(v51, v61);
  v52 = v68;
  *v12 = v63;
  v12[1] = v52;
  v12[2] = v46;
  v12[3] = v48;
  sub_10017CF88(v12, v65);
  swift_storeEnumTagMultiPayload();
  sub_10017CE84();
  sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow, &unk_1001B8848);
  _ConditionalContent<>.init(storage:)();
  return sub_10017CFEC(v12);
}

uint64_t sub_10017893C@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 < 0.0;
  return result;
}

double sub_100178970(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v10 = *a2;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v14 = a9;
  v15 = a10;
  v11 = type metadata accessor for ArtistEventView(0, v13);
  sub_10016F338(v11);
  sub_1001A15AC((v10 & 1) == 0);

  return result;
}

uint64_t sub_1001789E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v63 = a9;
  v58 = a10;
  v68 = sub_100009F70(&qword_100222030, &qword_1001BBA80);
  __chkstk_darwin(v68);
  v67 = &v49 - v16;
  v64 = sub_100009F70(&qword_10021A3A0, &qword_1001AFA50);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v49 - v17;
  v62 = sub_100009F70(&qword_10021A3A8, &qword_1001AFA58);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v49 - v18;
  v19 = sub_100009F70(&qword_10021A3B0, &qword_1001AFA60);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v49 - v23;
  v24 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v24 - 8);
  v25 = sub_100009F70(&qword_100222038, &qword_1001BBA88);
  v65 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  static ToolbarItemPlacement.principal.getter();
  v50 = a2;
  v69 = a2;
  v70 = a3;
  v51 = a3;
  v52 = a4;
  v71 = a4;
  v72 = a5;
  v28 = v58;
  v53 = a5;
  v54 = a6;
  v29 = v59;
  v73 = a6;
  v74 = v59;
  v30 = v60;
  v75 = v60;
  v76 = v58;
  v77 = a1;
  sub_100009F70(&qword_100222040, &qword_1001BBA90);
  sub_10017B6C4();
  ToolbarItem<>.init(placement:content:)();
  v31 = *(a1 + 16);
  if (v31)
  {
    if (*(v31 + 88) && (*(v31 + 80) & 1) != 0)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        (*(v61 + 56))(v22, 1, 1, v64);
        v33 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8, &qword_1001AFA58, &protocol conformance descriptor for ToolbarItem<A, B>);
        v78 = v62;
        v79 = v33;
        swift_getOpaqueTypeConformance2();
        v34 = v66;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_10000D52C(v22, &qword_10021A3B0, &qword_1001AFA60);
LABEL_8:
        v45 = v67;
        v46 = *(v68 + 48);
        v47 = v65;
        (*(v65 + 16))(v67, v27, v25);
        sub_10000D58C(v34, &v45[v46], &qword_10021A3B0, &qword_1001AFA60);
        TupleToolbarContent.init(_:)();
        sub_10000D52C(v34, &qword_10021A3B0, &qword_1001AFA60);
        return (*(v47 + 8))(v27, v25);
      }
    }

    else
    {
    }

    v35 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v49 = v25;
    v36 = v62;
    __chkstk_darwin(v35);
    v37 = v51;
    *(&v49 - 10) = v50;
    *(&v49 - 9) = v37;
    v38 = v53;
    *(&v49 - 8) = v52;
    *(&v49 - 7) = v38;
    *(&v49 - 6) = v54;
    *(&v49 - 5) = v29;
    *(&v49 - 4) = v30;
    *(&v49 - 3) = v28;
    *(&v49 - 2) = a1;
    sub_100009F70(&qword_10021A418, &qword_1001AFAA8);
    sub_100042D0C();
    v39 = v55;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8, &qword_1001AFA58, &protocol conformance descriptor for ToolbarItem<A, B>);
    v41 = v57;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v42 = v61;
    v43 = v64;
    (*(v61 + 16))(v22, v41, v64);
    (*(v42 + 56))(v22, 0, 1, v43);
    v78 = v36;
    v79 = v40;
    swift_getOpaqueTypeConformance2();
    v34 = v66;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v22, &qword_10021A3B0, &qword_1001AFA60);
    (*(v42 + 8))(v41, v43);
    v44 = v36;
    v25 = v49;
    (*(v56 + 8))(v39, v44);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_100179194(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = static HorizontalAlignment.center.getter();
  v25 = 1;
  sub_1001792E8(a2, a3, a4, a5, a6, a7, a8, v26, a10);
  *&v24[7] = v26[0];
  *&v24[23] = v26[1];
  *&v24[39] = v26[2];
  *&v24[55] = v26[3];
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  v18 = type metadata accessor for ArtistEventView(0, v23);
  sub_10016F338(v18);
  LOBYTE(a7) = sub_1001A171C();

  v19 = 0.0;
  v20 = *v24;
  if (a7)
  {
    v19 = 1.0;
  }

  *(a9 + 33) = *&v24[16];
  v21 = *&v24[48];
  *(a9 + 49) = *&v24[32];
  *(a9 + 65) = v21;
  *a9 = v22;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 80) = *&v24[63];
  *(a9 + 17) = v20;
  *(a9 + 88) = v19;
}

uint64_t sub_1001792E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v38[0] = a1;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  v38[4] = a5;
  v38[5] = a6;
  v38[6] = a7;
  v38[7] = a9;
  v10 = type metadata accessor for ArtistEventView(0, v38);
  sub_10016F338(v10);
  sub_10019FA10();

  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v35 = v12;
  v36 = v11;
  HIDWORD(v33) = v13;
  v37 = v14;

  sub_10016F338(v10);

  LOWORD(v33) = 256;
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.caption.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_10000D60C(v15, v17, v19 & 1);

  v25 = [objc_opt_self() secondaryLabelColor];
  v38[0] = Color.init(uiColor:)();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  LOBYTE(v17) = v29;
  v31 = v30;
  sub_10000D60C(v20, v22, v24 & 1);

  LOBYTE(v38[0]) = v34 & 1;
  v39 = v17 & 1;
  *a8 = v36;
  *(a8 + 8) = v35;
  *(a8 + 16) = v34 & 1;
  *(a8 + 24) = v37;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28;
  *(a8 + 48) = v17 & 1;
  *(a8 + 56) = v31;
  sub_10000D5FC(v36, v35, v34 & 1);

  sub_10000D5FC(v26, v28, v17 & 1);

  sub_10000D60C(v26, v28, v17 & 1);

  sub_10000D60C(v36, v35, v34 & 1);
}

uint64_t sub_1001795C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v31[5] = a7;
  v31[6] = a8;
  v31[7] = a10;
  v15 = type metadata accessor for ArtistEventView(0, v31);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  (*(v16 + 16))(&v27 - v17, a1, v15);
  v19 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v27;
  v22 = v28;
  *(v20 + 4) = a4;
  *(v20 + 5) = v21;
  v24 = v29;
  v23 = v30;
  *(v20 + 6) = v22;
  *(v20 + 7) = v24;
  *(v20 + 8) = v23;
  *(v20 + 9) = a10;
  (*(v16 + 32))(&v20[v19], v18, v15);
  v25 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a9 = 0;
  *(a9 + 8) = sub_10017B7B4;
  *(a9 + 16) = v20;
  *(a9 + 24) = result;
  *(a9 + 32) = v25;
  return result;
}

uint64_t sub_100179758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = type metadata accessor for DismissAction();
  v16 = *(v23 - 8);
  __chkstk_darwin(v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = v22;
  v24[7] = a9;
  v19 = type metadata accessor for ArtistEventView(0, v24);
  sub_10016F338(v19);
  v20 = *(a1 + 16);
  if (v20)
  {

    sub_1001A123C(0, 2, 0, 3u, v20);

    sub_100024868(v18);
    DismissAction.callAsFunction()();
    return (*(v16 + 8))(v18, v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100179974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v43 = a6;
  v44 = a7;
  v45 = a2;
  v46 = a9;
  v37 = a1;
  v41 = a11;
  v42 = a5;
  v39 = a3;
  v40 = a10;
  v13 = type metadata accessor for Optional();
  v14 = __chkstk_darwin(v13 - 8);
  v38 = &v37 - v15;
  Description = a4[-1].Description;
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100042730();
  v20 = sub_100042784();
  v47 = a4;
  v48 = &type metadata for ArtistFetcher;
  v49 = &type metadata for PromotionalPlaylistFetcher;
  v50 = a8;
  v51 = v19;
  v52 = v20;
  v21 = type metadata accessor for MusicEventView(0, &v47);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v37 - v26;
  v47 = a4;
  v48 = &type metadata for ArtistFetcher;
  v49 = &type metadata for PromotionalPlaylistFetcher;
  v50 = a8;
  v51 = v19;
  v52 = v20;
  type metadata accessor for MusicEventViewModel(0, &v47);
  Description[2](v18, v37, a4);
  v47 = v39;
  v48 = a4;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  v52 = a8;
  v53 = v40;
  v54 = v41;
  v28 = type metadata accessor for ArtistEventView(0, &v47);
  sub_10016F338(v28);
  v29 = v38;
  sub_1001A18E0(v30, v38);

  v33 = sub_1000B1CDC(v18, v29, v31, v32);
  KeyPath = swift_getKeyPath();
  sub_100061A68(v33, KeyPath, 0, v25);
  swift_getWitnessTable();
  sub_100157EFC();
  v35 = *(v22 + 8);
  v35(v25, v21);
  sub_100157EFC();
  return v35(v27, v21);
}

uint64_t sub_100179CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for AppleMusicFetcher();
  v11 = sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher, &unk_1001BC3B0);
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  v12 = type metadata accessor for PromotionalAssetsView(0, &v23);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v23 = a3;
  v24 = v10;
  v25 = a7;
  v26 = v11;
  type metadata accessor for PromotionalAssetsViewModel(0, &v23);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = v19;
  v20 = sub_10001E6EC(a1, &v23);

  sub_1000C7ED4(v20, v16);
  swift_getWitnessTable();
  sub_100157EFC();
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_100157EFC();
  return v21(v18, v12);
}

void sub_100179EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a9;
  v10 = type metadata accessor for ArtistEventView(0, v12);
  sub_10016F338(v10);
  if (*(a1 + 16))
  {

    sub_1001A1CF4(v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100179FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[198] = v17;
  v8[197] = v16;
  v8[196] = v15;
  v8[195] = a8;
  v8[194] = a7;
  v8[193] = a6;
  v8[187] = a5;
  v8[181] = a4;
  v8[175] = a3;
  v8[167] = a4;
  v8[168] = a5;
  v8[169] = a6;
  v8[170] = a7;
  v8[171] = a8;
  v8[172] = v15;
  v8[173] = v16;
  v8[174] = v17;
  v9 = type metadata accessor for ArtistEventView(0, (v8 + 167));
  v8[199] = v9;
  v10 = *(v9 - 8);
  v8[200] = v10;
  v8[201] = *(v10 + 64);
  v8[202] = swift_task_alloc();
  v8[203] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[204] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[205] = v12;
  v8[206] = v11;

  return _swift_task_switch(sub_10017A120, v12, v11);
}

uint64_t sub_10017A120()
{
  v1 = *(v0 + 1400);
  sub_10016F338(*(v0 + 1592));
  if (*(v1 + 16))
  {
    v18 = *(v0 + 1624);
    v22 = *(v0 + 1616);
    v2 = *(v0 + 1600);
    v3 = *(v0 + 1592);
    v28 = *(v0 + 1584);
    v26 = *(v0 + 1568);
    v27 = *(v0 + 1576);
    v24 = *(v0 + 1552);
    v25 = *(v0 + 1560);
    v23 = *(v0 + 1544);
    v4 = *(v0 + 1496);
    v5 = *(v0 + 1448);
    v19 = v5;
    v20 = v4;
    v6 = *(v0 + 1400);

    v8 = sub_1000BA8F0(v7);
    v10 = v9;

    *(v0 + 1656) = v8;
    *(v0 + 1664) = v10;
    v21 = *(v2 + 16);
    v21(v18, v6, v3);
    v11 = (*(v2 + 80) + 80) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v0 + 1672) = v12;
    *(v12 + 2) = v5;
    *(v12 + 3) = v4;
    *(v12 + 4) = v23;
    *(v12 + 5) = v24;
    *(v12 + 6) = v25;
    *(v12 + 7) = v26;
    *(v12 + 8) = v27;
    *(v12 + 9) = v28;
    v13 = *(v2 + 32);
    v13(&v12[v11], v18, v3);
    v14 = swift_task_alloc();
    *(v0 + 1680) = v14;
    *(v14 + 16) = &unk_1001BBA30;
    *(v14 + 24) = v12;
    swift_asyncLet_begin();
    v21(v22, v6, v3);
    v15 = swift_allocObject();
    *(v0 + 1688) = v15;
    *(v15 + 2) = v19;
    *(v15 + 3) = v20;
    *(v15 + 4) = v23;
    *(v15 + 5) = v24;
    *(v15 + 6) = v25;
    *(v15 + 7) = v26;
    *(v15 + 8) = v27;
    *(v15 + 9) = v28;
    v13(&v15[v11], v22, v3);
    v16 = swift_task_alloc();
    *(v0 + 1696) = v16;
    *(v16 + 16) = &unk_1001BBA40;
    *(v16 + 24) = v15;
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017CF40(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_10017A4A0()
{
  *(v0 + 1704) = sub_10016F338(*(v0 + 1592));
  v1 = swift_task_alloc();
  *(v0 + 1712) = v1;
  *v1 = v0;
  v1[1] = sub_10017A54C;
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1656);

  return sub_1001A246C(v3, v2);
}

uint64_t sub_10017A54C()
{
  v1 = *v0;

  return _swift_asyncLet_finish(v1 + 656, v2);
}

uint64_t sub_10017A6A4()
{

  return _swift_asyncLet_finish(v0 + 16, v1);
}

uint64_t sub_10017A734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_10017A804, 0, 0);
}

uint64_t sub_10017A804()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017A898, v2, v1);
}

uint64_t sub_10017A898()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView(0, v0 + 16);
  *(v0 + 160) = sub_10016F338(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10017DB14;

  return sub_1001A1D90();
}

uint64_t sub_10017A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v10;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  v8[10] = a1;
  return _swift_task_switch(sub_10017A9B4, 0, 0);
}

uint64_t sub_10017A9B4()
{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017AA48, v2, v1);
}

uint64_t sub_10017AA48()
{
  v7 = *(v0 + 88);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v4 = *(v0 + 136);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for ArtistEventView(0, v0 + 16);
  *(v0 + 160) = sub_10016F338(v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_10017AB2C;

  return sub_1001A2108();
}

uint64_t sub_10017AB2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10017AC40()
{
  result = qword_100221FF8;
  if (!qword_100221FF8)
  {
    sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
    sub_10017ACC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221FF8);
  }

  return result;
}

unint64_t sub_10017ACC4()
{
  result = qword_100222000;
  if (!qword_100222000)
  {
    sub_10000B3DC(&qword_100222008, &qword_1001BB990);
    sub_10000B3DC(&qword_100222010, &qword_1001BB998);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_100222018, &qword_100222010, &qword_1001BB998, &protocol conformance descriptor for Button<A>);
    sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222000);
  }

  return result;
}

__n128 sub_10017AE7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10017AF5C()
{
  v1 = v0[3];
  v11[0] = v0[2];
  v11[1] = v1;
  v2 = v0[5];
  v11[2] = v0[4];
  v11[3] = v2;
  v3 = type metadata accessor for ArtistEventView(0, v11);
  v4 = (*(*(v3 - 8) + 80) + 96) & ~*(*(v3 - 8) + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v4;

  v6 = *(v3 + 88);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
  }

  v8 = *(v3 + 92);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017B11C()
{
  v2 = v0[4];
  v16 = v0[5];
  v13 = v0[7];
  v14 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v1[2] = v2;
  v1[3] = v16;
  v1[4] = v14;
  v1[5] = v13;
  v1[6] = v3;
  v1[7] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = *(type metadata accessor for ArtistEventView(0, (v1 + 2)) - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_100179FC4(v9, v10, v0 + v8, v2, v16, v14, v13, v3);
}

uint64_t sub_10017B25C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B2B4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B30C()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView(0, (v1 + 2)) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_10017A7CC(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10017B448()
{
  v2 = v0[3];
  v14 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v1[2] = v14;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v9 = *(type metadata accessor for ArtistEventView(0, (v1 + 2)) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_10017DB38;

  return sub_10017A97C(v0 + v10, v14, v2, v3, v4, v5, v6, v7);
}

double sub_10017B5A0(uint64_t a1, char *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v16[0] = v2[2];
  v4 = v16[0];
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v10;
  v12 = *(type metadata accessor for ArtistEventView(0, v16) - 8);
  *(&v14 + 1) = v11;
  *&v14 = v9;
  return sub_100178970(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v14, v10);
}

unint64_t sub_10017B6C4()
{
  result = qword_100222048;
  if (!qword_100222048)
  {
    sub_10000B3DC(&qword_100222040, &qword_1001BBA90);
    sub_10000D1EC(&qword_100222050, &qword_100222058, &qword_1001BBA98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222048);
  }

  return result;
}

uint64_t sub_10017B7CC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10017B83C()
{
  result = qword_1002220A8;
  if (!qword_1002220A8)
  {
    sub_10000B3DC(&qword_100221FD8, &qword_1001BB970);
    sub_10000B3DC(&qword_100222098, &qword_1001BBB08);
    sub_10017B930();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220A8);
  }

  return result;
}

unint64_t sub_10017B930()
{
  result = qword_1002220B0;
  if (!qword_1002220B0)
  {
    sub_10000B3DC(&qword_100222098, &qword_1001BBB08);
    sub_10017CF40(&qword_1002220B8, type metadata accessor for PromotionalPlaylistModule, &unk_1001B235C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220B0);
  }

  return result;
}

unint64_t sub_10017BA08()
{
  result = qword_1002220C0;
  if (!qword_1002220C0)
  {
    sub_10000B3DC(&qword_100222060, &qword_1001BBAD0);
    sub_10004365C();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220C0);
  }

  return result;
}

unint64_t sub_10017BAC0()
{
  result = qword_1002220C8;
  if (!qword_1002220C8)
  {
    sub_10000B3DC(&qword_100221FE0, &qword_1001BB978);
    sub_10000D1EC(&qword_1002220D0, &qword_100222068, &qword_1001BBAD8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220C8);
  }

  return result;
}

uint64_t sub_10017BBA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10017BC6C()
{
  result = qword_1002220E8;
  if (!qword_1002220E8)
  {
    sub_10000B3DC(&qword_100222070, &qword_1001BBAE0);
    sub_10000D1EC(&qword_1002220E0, &qword_1002220D8, &qword_1001BBB18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220E8);
  }

  return result;
}

unint64_t sub_10017BD28()
{
  result = qword_1002220F0;
  if (!qword_1002220F0)
  {
    sub_10000B3DC(&qword_100222078, &qword_1001BBAE8);
    sub_10000B3DC(&qword_100222070, &qword_1001BBAE0);
    sub_10017BC6C();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220F0);
  }

  return result;
}

uint64_t sub_10017BE9C(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v13[0] = *(v1 + 2);
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  v11 = *(type metadata accessor for ArtistEventView(0, v13) - 8);
  return a1(&v1[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

double sub_10017BFC4(uint64_t a1, unint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for ArtistEventView(0, v15) - 8);
  return sub_100176658(a1, a2, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10017C098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219C30, &qword_1001AECE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017C15C()
{
  v1 = v0[3];
  v13[0] = v0[2];
  v13[1] = v1;
  v2 = v0[5];
  v13[2] = v0[4];
  v13[3] = v2;
  v3 = type metadata accessor for ArtistEventView(0, v13);
  v4 = (*(*(v3 - 8) + 80) + 96) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64) + v4 + 7;
  swift_unknownObjectRelease();
  v6 = v0 + v4;

  v7 = *(v3 + 88);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(&v6[v7], v8);
  }

  else
  {
  }

  v9 = v5 & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 92);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {
  }

  if (*(v0 + v9 + 8) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017C334(uint64_t a1)
{
  v3 = v2;
  v20 = v1[4];
  v5 = v1[7];
  v4 = v1[6];
  v19 = v1[5];
  v6 = v1[8];
  v7 = v1[9];
  v9 = v1[10];
  v8 = v1[11];
  v3[2] = v20;
  v3[3] = v19;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v8;
  v10 = *(type metadata accessor for ArtistEventView(0, (v3 + 2)) - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v12 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v3[10] = v15;
  *v15 = v3;
  v15[1] = sub_10017C4B8;

  return sub_1001768D4(a1, v18, v17, v1 + v11, v13, v14, v20, v19);
}

uint64_t sub_10017C4B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10017C5AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017C604()
{
  v1 = v0[2];
  v10[0] = v0[1];
  v10[1] = v1;
  v2 = v0[4];
  v10[2] = v0[3];
  v10[3] = v2;
  v3 = type metadata accessor for ArtistEventView(0, v10);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80));

  v5 = *(v3 + 88);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(&v4[v5], v6);
  }

  else
  {
  }

  v7 = *(v3 + 92);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017C7D4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 7);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  v15[0] = *(v2 + 2);
  v3 = v15[0];
  v15[1] = v4;
  v15[2] = v5;
  v15[3] = v6;
  v15[4] = v7;
  v15[5] = v8;
  v15[6] = v9;
  v15[7] = v10;
  v11 = *(type metadata accessor for ArtistEventView(0, v15) - 8);
  return a2(a1, &v2[(*(v11 + 80) + 80) & ~*(v11 + 80)], v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10017C8AC()
{
  v1 = *(v0 + 72);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v12 = v15;
  v16 = *(v0 + 40);
  v17 = *(v0 + 56);
  v18 = v1;
  v2 = type metadata accessor for ArtistEventView(0, &v14);
  v13 = *(*(v2 - 8) + 64);
  v3 = (*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80);
  v4 = *(v12 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = *(v2 + 88);
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v2 + 92);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v3 + v13 + v5) & ~v5), v12);
  return swift_deallocObject();
}

void sub_10017CB08()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = v8;
  v9 = *(type metadata accessor for ArtistEventView(0, v11) - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  sub_100177ED0(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10017CC20@<X0>(uint64_t a1@<X8>)
{
  sub_100178110(v1[10], v1[11], v1[12], v1[13], v1[3], a1, v1[6], v1[7]);
  result = sub_100009F70(&qword_100222118, &qword_1001BBC10);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_10017CC8C()
{
  result = qword_100222120;
  if (!qword_100222120)
  {
    sub_10000B3DC(&qword_100222118, &qword_1001BBC10);
    sub_10017CD44();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222120);
  }

  return result;
}

unint64_t sub_10017CD44()
{
  result = qword_100222128;
  if (!qword_100222128)
  {
    sub_10000B3DC(&qword_100222130, &qword_1001BBC18);
    sub_10017CDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222128);
  }

  return result;
}

unint64_t sub_10017CDC8()
{
  result = qword_100222138;
  if (!qword_100222138)
  {
    sub_10000B3DC(&qword_100222140, &qword_1001BBC20);
    sub_10017CE84();
    sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow, &unk_1001B8848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222138);
  }

  return result;
}

unint64_t sub_10017CE84()
{
  result = qword_100222148;
  if (!qword_100222148)
  {
    sub_10000B3DC(&qword_100222150, &qword_1001BBC28);
    sub_10017CF40(&qword_100222158, type metadata accessor for ArtistEventRow, &unk_1001B8848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222148);
  }

  return result;
}

uint64_t sub_10017CF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017CF88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017CFEC(uint64_t a1)
{
  v2 = type metadata accessor for ArtistEventRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017D048(void **a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[4];
  v3 = a1[5];
  type metadata accessor for NavigationPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  type metadata accessor for Section();
  v73 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v75 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  v76 = type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100221FD8, &qword_1001BB970);
  v8 = v3;
  swift_getAssociatedTypeWitness();
  v58 = v3;
  swift_getAssociatedConformanceWitness();
  v60 = v2;
  v61 = swift_getAssociatedTypeWitness();
  v62 = v4;
  v63 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PromotionalAssetsEntryView(255, &v60);
  swift_getWitnessTable();
  v9 = type metadata accessor for Button();
  v10 = type metadata accessor for PlainButtonStyle();
  v11 = swift_getWitnessTable();
  v12 = sub_10017CF40(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Section();
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = &protocol witness table for EmptyView;
  v71 = OpaqueTypeConformance2;
  v72 = &protocol witness table for EmptyView;
  v15 = swift_getWitnessTable();
  v60 = v13;
  v61 = v15;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v77 = type metadata accessor for Optional();
  v78 = sub_10000B3DC(&qword_100221FE0, &qword_1001BB978);
  sub_10000B3DC(&qword_100221FE8, &qword_1001BB980);
  v16 = type metadata accessor for Array();
  v59 = *(v8->Description + 2);
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_10000B3DC(&qword_100221FF0, &qword_1001BB988);
  v19 = swift_getWitnessTable();
  v20 = swift_getAssociatedConformanceWitness();
  v60 = v16;
  v61 = v17;
  v62 = v18;
  v63 = v19;
  v64 = v20;
  type metadata accessor for ForEach();
  v21 = type metadata accessor for Section();
  v69 = sub_10017AC40();
  v22 = swift_getWitnessTable();
  v66 = &protocol witness table for EmptyView;
  v67 = v22;
  v68 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v60 = v21;
  v61 = v23;
  swift_getOpaqueTypeMetadata2();
  v79 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable();
  v60 = &type metadata for Never;
  v61 = v24;
  v62 = &protocol witness table for Never;
  v63 = v25;
  v26 = type metadata accessor for List();
  v27 = type metadata accessor for PlainListStyle();
  v28 = swift_getWitnessTable();
  v60 = v26;
  v61 = v27;
  v62 = v28;
  v63 = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v26;
  v61 = v27;
  v62 = v28;
  v63 = &protocol witness table for PlainListStyle;
  v30 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeMetadata2;
  v61 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v60 = OpaqueTypeMetadata2;
  v61 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v60 = v31;
  v61 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v60 = v31;
  v61 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v60 = v33;
  v61 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v60 = v33;
  v61 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v60 = v35;
  v61 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v60 = v35;
  v61 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v60 = v37;
  v61 = &type metadata for Bool;
  v62 = v38;
  v63 = &protocol witness table for Bool;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = sub_10000B3DC(&qword_100222020, &qword_1001BB9A0);
  v60 = v37;
  v61 = &type metadata for Bool;
  v62 = v38;
  v63 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_10000D1EC(&qword_100222028, &qword_100222020, &qword_1001BB9A0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v60 = v39;
  v61 = v40;
  v62 = v41;
  v63 = v42;
  swift_getOpaqueTypeMetadata2();
  v60 = v39;
  v61 = v40;
  v62 = v41;
  v63 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = type metadata accessor for NavigationStack();
  v44 = sub_100042730();
  v45 = sub_100042784();
  v60 = v1;
  v61 = &type metadata for ArtistFetcher;
  v62 = &type metadata for PromotionalPlaylistFetcher;
  v63 = v58;
  v64 = v44;
  v65 = v45;
  v46 = type metadata accessor for MusicEventView(255, &v60);
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v60 = v43;
  v61 = v1;
  v62 = v46;
  v63 = v47;
  v64 = v59;
  v65 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v50 = type metadata accessor for AppleMusicFetcher();
  v51 = sub_10017CF40(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher, &unk_1001BC3B0);
  v60 = v1;
  v61 = v50;
  v62 = v58;
  v63 = v51;
  v52 = type metadata accessor for PromotionalAssetsView(255, &v60);
  v60 = v43;
  v61 = v1;
  v62 = v46;
  v63 = v47;
  v64 = v59;
  v65 = v48;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = swift_getWitnessTable();
  v60 = v49;
  v61 = v1;
  v62 = v52;
  v63 = v53;
  v64 = v59;
  v65 = v54;
  swift_getOpaqueTypeMetadata2();
  v55 = type metadata accessor for ModifiedContent();
  v60 = v49;
  v61 = v1;
  v62 = v52;
  v63 = v53;
  v64 = v59;
  v65 = v54;
  swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable();
  v60 = v55;
  v61 = v56;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v60 = v55;
  v61 = v56;
  swift_getOpaqueTypeConformance2();
  sub_10017CF40(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_10017DB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10017DB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017DC0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_100009F70(&qword_10021B1F8, &qword_1001B0CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Music.Artist();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Music();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + *(*v2 + 128)) = 0;
  v15 = (v2 + *(*v2 + 136));
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 144)) = 1;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v16 = (v3 + *(*v3 + 168));
  *v16 = 0u;
  v16[1] = 0u;
  v17 = *(*v2 + 176);
  v18 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  v19 = v3 + *(*v3 + 200);
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v2 + *(*v2 + 208)) = 0;
  v20 = *(*v2 + 216);
  v21 = type metadata accessor for PromotionalContent.Video();
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  ObservationRegistrar.init()();
  v22 = *(v12 + 16);
  v22(v3 + *(*v3 + 112), a1, v11);
  v37 = v14;
  v22(v14, a1, v11);
  Music.lineup.getter();
  v23 = sub_10000D1EC(&qword_10021B1F0, &qword_10021B1F8, &qword_1001B0CE0, &unk_1001BD838);
  v24 = (*(v23 + 40))(v5, v23);
  (*(v6 + 8))(v8, v5);
  if (*(v24 + 16))
  {
    v26 = v34;
    v25 = v35;
    v27 = v36;
    (*(v35 + 16))(v34, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v36);

    v28 = Music.Artist.name.getter();
    v30 = v29;
    (*(v25 + 8))(v26, v27);
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  sub_100009F70(&qword_1002221A8, &qword_1001BBEA8);
  swift_allocObject();
  v31 = sub_10017E278(v37, v28, v30, v38);
  (*(v12 + 8))(a1, v11);
  *(v3 + *(*v3 + 120)) = v31;
  return v3;
}

uint64_t sub_10017E178(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100219278, qword_1001AFC50);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10017E220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10017E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100009F70(&qword_1002221B0, &qword_1001BBEB0);
  __chkstk_darwin(v10 - 8);
  v12 = v30 - v11;
  v13 = *(*v5 + 144);
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  v15 = *(*v5 + 112);
  v16 = type metadata accessor for Music();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a1, v16);
  v18 = (v5 + *(*v5 + 120));
  *v18 = a2;
  v18[1] = a3;
  *(v5 + *(*v5 + 128)) = a4;
  v19 = Music.playlists.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19;
    v22 = type metadata accessor for Playlist();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v12, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    (*(v23 + 56))(v12, 0, 1, v22);
  }

  else
  {

    v24 = type metadata accessor for Playlist();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  }

  v25 = v20 != 0;
  v26 = sub_10000D52C(v12, &qword_1002221B0, &qword_1001BBEB0);
  *(v5 + *(*v5 + 136)) = v25;
  v27 = *(*v5 + 152);
  if ((v25 ^ *(v5 + v27)))
  {
    __chkstk_darwin(v26);
    v30[-4] = v16;
    v30[-3] = type metadata accessor for AppleMusicFetcher();
    v30[-2] = sub_100180C60(&qword_10021CE98, &type metadata accessor for Music, &unk_1001B0CE8);
    v30[-1] = sub_100180C60(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher, &unk_1001BC3B0);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v30[-2] = v5;
    LOBYTE(v30[-1]) = v25;
    v30[1] = v5;
    sub_10000D1EC(&qword_1002221B8, &qword_1002221A8, &qword_1001BBEA8, &unk_1001BAFD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v17 + 8))(a1, v16);
  }

  else
  {
    (*(v17 + 8))(a1, v16);
    *(v5 + v27) = v25;
  }

  return v5;
}

uint64_t sub_10017E748@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v70 = sub_100009F70(&qword_100222168, &unk_1001BBD30);
  __chkstk_darwin(v70);
  v4 = (&v55 - v3);
  v60 = type metadata accessor for Music();
  v59 = *(v60 - 8);
  v5 = __chkstk_darwin(v60);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v55 - v7;
  v64 = sub_100009F70(&qword_10021B968, &qword_1001B1780);
  __chkstk_darwin(v64);
  v57 = (&v55 - v8);
  v66 = sub_100009F70(&qword_100222170, &unk_1001BBD40);
  __chkstk_darwin(v66);
  v68 = &v55 - v9;
  v61 = sub_100009F70(&qword_10021B978, &unk_1001B1790);
  __chkstk_darwin(v61);
  v63 = &v55 - v10;
  v67 = sub_100009F70(&qword_10021B980, &qword_1001BBD50);
  __chkstk_darwin(v67);
  v65 = &v55 - v11;
  v62 = sub_100009F70(&qword_10021B988, &qword_1001B17A0);
  __chkstk_darwin(v62);
  v13 = (&v55 - v12);
  v14 = sub_100009F70(&qword_1002196F8, &qword_1001B1880);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  v17 = *(v1 + 3);
  v71 = type metadata accessor for PromotionalAssetsFetcher(0);
  v72 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher, &unk_1001BD2E0);
  swift_getKeyPath();
  v73[3] = v17;
  sub_10000D1EC(&qword_100222180, &qword_1002196F0, &qword_1001BBD90, &unk_1001BC0D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_10000D58C(v17 + v18, v16, &qword_1002196F8, &qword_1001B1880);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v59;
      v21 = v58;
      v22 = v60;
      (*(v59 + 32))(v58, v16, v60);
      v23 = v56;
      (*(v20 + 16))(v56, v21, v22);
      type metadata accessor for AppleMusicFetcher();
      v24 = swift_allocObject();
      swift_defaultActor_initialize();
      sub_100009F70(&qword_100222188, &qword_1001BBD98);
      swift_allocObject();
      v73[0] = sub_10017DC0C(v23, v24);
      State.init(wrappedValue:)();
      v25 = *(&v75 + 1);
      *v4 = v75;
      v4[1] = v25;
      type metadata accessor for RemoteViewConfiguration();
      sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      v4[2] = EnvironmentObject.init()();
      v4[3] = v26;
      v27 = v70;
      v28 = *(v70 + 56);
      *(v4 + v28) = swift_getKeyPath();
      sub_100009F70(&qword_100219710, &qword_1001B29A0);
      swift_storeEnumTagMultiPayload();
      v29 = v27[15];
      *(v4 + v29) = swift_getKeyPath();
      sub_100009F70(&qword_100219718, &qword_1001B1810);
      swift_storeEnumTagMultiPayload();
      v30 = v27[16];
      *(v4 + v30) = swift_getKeyPath();
      sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
      swift_storeEnumTagMultiPayload();
      v31 = v27[17];
      *(v4 + v31) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_10000D58C(v4, v68, &qword_100222168, &unk_1001BBD30);
      swift_storeEnumTagMultiPayload();
      sub_100080A3C();
      sub_10000D1EC(&qword_100222190, &qword_100222168, &unk_1001BBD30, &unk_1001B5050);
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v4, &qword_100222168, &unk_1001BBD30);
      return (*(v20 + 8))(v21, v22);
    }

    *v13 = swift_getKeyPath();
    sub_100009F70(&qword_100219710, &qword_1001B29A0);
    swift_storeEnumTagMultiPayload();
    v48 = (v13 + *(type metadata accessor for LoadingView(0) + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v48 = EnvironmentObject.init()();
    v48[1] = v49;
    v50 = *v2;
    v76 = *(v2 + 16);
    v74 = v2[2];
    v75 = v50;
    v51 = swift_allocObject();
    v52 = v2[1];
    v51[1] = *v2;
    v51[2] = v52;
    v51[3] = v2[2];
    v53 = (v13 + *(v62 + 36));
    type metadata accessor for _TaskModifier();
    sub_1001809D4(&v75, v73);

    sub_10000D58C(&v74, v73, &qword_10021B9F0, &qword_1001B1858);
    static TaskPriority.userInitiated.getter();
    *v53 = &unk_1001BBE88;
    v53[1] = v51;
    v44 = &qword_10021B988;
    v45 = &qword_1001B17A0;
    sub_10000D58C(v13, v63, &qword_10021B988, &qword_1001B17A0);
    swift_storeEnumTagMultiPayload();
    sub_100080AC8();
    sub_100080BB4();
    v54 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v54, v68, &qword_10021B980, &qword_1001BBD50);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168, &unk_1001BBD30, &unk_1001B5050);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v54, &qword_10021B980, &qword_1001BBD50);
    v47 = v13;
  }

  else
  {
    sub_10000D52C(v16, &qword_1002196F8, &qword_1001B1880);
    KeyPath = swift_getKeyPath();
    v34 = v57;
    *v57 = KeyPath;
    sub_100009F70(&qword_100219710, &qword_1001B29A0);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ErrorView(0);
    v36 = *(v35 + 20);
    *(v34 + v36) = swift_getKeyPath();
    sub_100009F70(&qword_100219718, &qword_1001B1810);
    swift_storeEnumTagMultiPayload();
    v37 = (v34 + *(v35 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v37 = EnvironmentObject.init()();
    v37[1] = v38;
    v39 = *v2;
    v76 = *(v2 + 16);
    v74 = v2[2];
    v75 = v39;
    v40 = swift_allocObject();
    v41 = v2[1];
    *(v40 + 1) = *v2;
    *(v40 + 2) = v41;
    *(v40 + 3) = v2[2];
    v42 = v63;
    v43 = (v34 + *(v64 + 36));
    *v43 = sub_1001809CC;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
    v44 = &qword_10021B968;
    v45 = &qword_1001B1780;
    sub_10000D58C(v34, v42, &qword_10021B968, &qword_1001B1780);
    swift_storeEnumTagMultiPayload();

    sub_1001809D4(&v75, v73);
    sub_10000D58C(&v74, v73, &qword_10021B9F0, &qword_1001B1858);
    sub_100080AC8();
    sub_100080BB4();
    v46 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v46, v68, &qword_10021B980, &qword_1001BBD50);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168, &unk_1001BBD30, &unk_1001B5050);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v46, &qword_10021B980, &qword_1001BBD50);
    v47 = v34;
  }

  return sub_10000D52C(v47, v44, v45);
}

uint64_t sub_10017F330(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v4 = *a1;
  v3 = a1[1];
  if (a1[2])
  {
    v8 = sub_100180098;
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v6 = sub_10017F460;
  }

  else
  {
    v8 = sub_10017F59C;
    v5 = swift_task_alloc();
    v1[4] = v5;
    *v5 = v1;
    v6 = sub_100080584;
  }

  v5[1] = v6;

  return v8(v4, v3);
}

uint64_t sub_10017F460()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100180E28, v1, v0);
}

uint64_t sub_10017F59C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100009F70(&qword_10021E4E0, &qword_1001B8DB0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_100009F70(&qword_1002196F8, &qword_1001B1880);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v6;
  v3[17] = v5;

  return _swift_task_switch(sub_10017F708, v6, v5);
}

uint64_t sub_10017F708()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher(0);
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher, &unk_1001BD2E0);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000D1EC(&qword_100222180, &qword_1002196F0, &qword_1001BBD90, &unk_1001BC0D0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v1, &qword_1002196F8, &qword_1001B1880);
  v12 = (*(v5 + 24) + **(v5 + 24));
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10017F9AC;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return v12(v8, v9, v10, v4, v5);
}

uint64_t sub_10017F9AC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10017FDEC;
  }

  else
  {
    v5 = sub_10017FAE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017FAE8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[14];
  if (v4 == 1)
  {
    v8 = v0[8];
    sub_10000D52C(v0[9], &qword_10021E4E0, &qword_1001B8DB0);
    sub_100009F70(&qword_100222198, &qword_1001BBEA0);
    sub_10000D1EC(&qword_1002221A0, &qword_100222198, &qword_1001BBEA0, &unk_1001BC1B8);
    *v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *v9 = v5;
    v9[1] = v6;
    swift_getKeyPath();

    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    v0[4] = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v14 = v0[8];
    (*(v12 + 32))(v11, v0[9], v13);
    (*(v12 + 16))(v7, v11, v13);
    swift_storeEnumTagMultiPayload();
    v15 = swift_task_alloc();
    *v15 = v5;
    v15[1] = v6;
    swift_getKeyPath();

    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = v7;
    v0[5] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v12 + 8))(v11, v13);
  }

  sub_10000D52C(v7, &qword_1002196F8, &qword_1001B1880);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10017FDEC()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch event promotional assets: %@", v4, 0xCu);
    sub_10000D52C(v5, &qword_10021B938, &unk_1001B16A0);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v8, &qword_1002196F8, &qword_1001B1880);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100180098(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100009F70(&qword_10021E4E0, &qword_1001B8DB0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_100009F70(&qword_1002196F8, &qword_1001B1880);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v6;
  v3[17] = v5;

  return _swift_task_switch(sub_100180204, v6, v5);
}

uint64_t sub_100180204()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher(0);
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher, &unk_1001BD2E0);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000D1EC(&qword_100222180, &qword_1002196F0, &qword_1001BBD90, &unk_1001BC0D0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v1, &qword_1002196F8, &qword_1001B1880);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10018041C;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return sub_10019BCCC(v8, v9, v10);
}

uint64_t sub_10018041C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100180558;
  }

  else
  {
    v5 = sub_10017FAE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100180558()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_10000D52C(v5, &qword_10021B938, &unk_1001B16A0);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v8, &qword_1002196F8, &qword_1001B1880);

  v11 = *(v0 + 8);

  return v11();
}

void sub_100180804(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v2 = *a1;
      v3 = *(a1 + 8);

      sub_1000DCEDC(v2, v3, 14, v1);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

__n128 sub_100180978(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100180A0C()
{
  sub_1001809C4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100180A58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_10017F330((v0 + 16));
}

uint64_t sub_100180AEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  sub_100180B80(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100180B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_1002196F8, &qword_1001B1880);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180BF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A528();
  *a1 = result & 1;
  return result;
}

__n128 sub_100180C54(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100180C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100180CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100180CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100180D54()
{
  result = qword_1002221C0;
  if (!qword_1002221C0)
  {
    sub_10000B3DC(&qword_1002221C8, &unk_1001BBF80);
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168, &unk_1001BBD30, &unk_1001B5050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002221C0);
  }

  return result;
}

void sub_100180E74(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  __chkstk_darwin(v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DesignTimeImage(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  String.hash(into:)();
  String.hash(into:)();
  v16 = type metadata accessor for DesignTimeMusicAlbum(0);
  sub_10000D58C(v2 + *(v16 + 24), v15, &qword_10021E8F0, &unk_1001B8A10);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
    v17 = v22;
    v18 = v23;
  }

  else
  {
    sub_100028E88(v15, v12);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_100181AE0(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = v22;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v12[*(v9 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100181AE0(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v18 = v23;
    Hasher._combine(_:)(v12[*(v9 + 28)]);
    sub_100128D88(v12);
  }

  sub_10000D58C(v2 + *(v16 + 28), v8, qword_100218748, &unk_1001AD110);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = v21;
    (*(v18 + 32))(v21, v8, v17);
    Hasher._combine(_:)(1u);
    sub_100181AE0(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v18 + 8))(v19, v17);
  }
}

uint64_t sub_100181320(uint64_t a1)
{
  *(a1 + 8) = sub_100181AE0(&qword_100222218, type metadata accessor for DesignTimeMusicAlbum, &unk_1001BBFE4);
  result = sub_100181AE0(&qword_100222220, type metadata accessor for DesignTimeMusicAlbum, &unk_1001BBFAC);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicAlbum(uint64_t a1)
{
  result = qword_100222288;
  if (!qword_100222288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100181438()
{
  Hasher.init(_seed:)();
  sub_100180E74(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10018147C()
{
  Hasher.init(_seed:)();
  sub_100180E74(v1);
  return Hasher._finalize()();
}

BOOL sub_1001814BC(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v8 - 8);
  v46 = &v43 - v9;
  v49 = sub_100009F70(&qword_10021E8E8, &unk_1001B6570);
  __chkstk_darwin(v49);
  v50 = &v43 - v10;
  v11 = type metadata accessor for DesignTimeImage(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v14 - 8);
  v16 = (&v43 - v15);
  v17 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v43 = v7;
  v47 = v5;
  v45 = v4;
  v44 = type metadata accessor for DesignTimeMusicAlbum(0);
  v20 = *(v44 + 24);
  v21 = *(v17 + 48);
  sub_10000D58C(a1 + v20, v19, &qword_10021E8F0, &unk_1001B8A10);
  sub_10000D58C(a2 + v20, &v19[v21], &qword_10021E8F0, &unk_1001B8A10);
  v22 = *(v12 + 48);
  if (v22(v19, 1, v11) == 1)
  {
    v23 = v22(&v19[v21], 1, v11);
    v24 = v47;
    if (v23 == 1)
    {
      sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
      goto LABEL_13;
    }

LABEL_11:
    v26 = &qword_10021E8F8;
    v27 = &unk_1001B6580;
    v28 = v19;
LABEL_19:
    sub_10000D52C(v28, v26, v27);
    return 0;
  }

  sub_10000D58C(v19, v16, &qword_10021E8F0, &unk_1001B8A10);
  v25 = v22(&v19[v21], 1, v11);
  v24 = v47;
  if (v25 == 1)
  {
    sub_100128D88(v16);
    goto LABEL_11;
  }

  v29 = v48;
  sub_100028E88(&v19[v21], v48);
  v30 = sub_100022244(v16, v29);
  sub_100128D88(v29);
  sub_100128D88(v16);
  sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v31 = *(v44 + 28);
  v32 = *(v49 + 48);
  v33 = a1 + v31;
  v34 = v50;
  sub_10000D58C(v33, v50, qword_100218748, &unk_1001AD110);
  sub_10000D58C(a2 + v31, v34 + v32, qword_100218748, &unk_1001AD110);
  v35 = *(v24 + 48);
  v36 = v45;
  if (v35(v34, 1, v45) != 1)
  {
    v37 = v46;
    sub_10000D58C(v34, v46, qword_100218748, &unk_1001AD110);
    if (v35(v34 + v32, 1, v36) == 1)
    {
      (*(v24 + 8))(v37, v36);
      goto LABEL_18;
    }

    v39 = v34 + v32;
    v40 = v43;
    (*(v24 + 32))(v43, v39, v36);
    sub_100181AE0(&qword_10021D560, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = *(v24 + 8);
    v42(v40, v36);
    v42(v37, v36);
    sub_10000D52C(v34, qword_100218748, &unk_1001AD110);
    return (v41 & 1) != 0;
  }

  if (v35(v34 + v32, 1, v36) != 1)
  {
LABEL_18:
    v26 = &qword_10021E8E8;
    v27 = &unk_1001B6570;
    v28 = v34;
    goto LABEL_19;
  }

  sub_10000D52C(v34, qword_100218748, &unk_1001AD110);
  return 1;
}

uint64_t sub_100181AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100181B3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100181C8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
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
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100181DC8(uint64_t a1)
{
  sub_100181E94(319, &qword_10021E980, type metadata accessor for DesignTimeImage);
  if (v1 <= 0x3F)
  {
    sub_100181E94(319, &qword_100218E80, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100181E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100181EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromotionalAssetsController.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100181FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  KeyPath = swift_getKeyPath();
  sub_10018297C(KeyPath);

  v6 = *(*v1 + 96);
  swift_beginAccess();
  v8 = type metadata accessor for PromotionalAssetsController.State(0, v3, v4, v7);
  return (*(*(v8 - 8) + 16))(a1, v1 + v6, v8);
}

uint64_t sub_1001820F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[5] = v7;
  v8 = *(v6 + 88);
  v5[6] = v8;
  v9 = type metadata accessor for PromotionalAssetsController.State(0, v7, v8, a4);
  v5[7] = v9;
  v5[8] = *(v9 - 8);
  v5[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v11 = type metadata accessor for Optional();
  v5[11] = v11;
  v5[12] = *(v11 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v13;
  v5[18] = v12;

  return _swift_task_switch(sub_1001822FC, v13, v12);
}

uint64_t sub_1001822FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = v4[6];
  sub_100182BD0(v13, a2, a3, a4);
  v12 = (*(v13 + 32) + **(v13 + 32));
  v5 = swift_task_alloc();
  v4[19] = v5;
  *v5 = v4;
  v5[1] = sub_10018243C;
  v6 = v4[13];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[2];
  v10 = v4[3];

  return v12(v6, v9, v10, v7, v8);
}

uint64_t sub_10018243C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100182774;
  }

  else
  {
    v5 = sub_100182578;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100182578()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4 == 1)
  {
    v8 = v0[5];
    v9 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);
    type metadata accessor for PromotionalAssetsController.Error(0, v8, v9, v10);
    swift_getWitnessTable();
    *v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v11 = sub_100183234(v5);
    (*(v6 + 8))(v5, v7, v11);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[10];
    (*(v13 + 32))(v12, v0[13], v14);
    (*(v13 + 16))(v5, v12, v14);
    swift_storeEnumTagMultiPayload();
    v15 = sub_100183234(v5);
    (*(v6 + 8))(v5, v7, v15);
    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100182774()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_1000EB068(v5);
  }

  v7 = v0[20];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v11 = sub_100183234(v8);
  (*(v9 + 8))(v8, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100182A1C(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for PromotionalAssetsController.State(0, *(v4 + 80), *(v4 + 88), v6);
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

uint64_t sub_100182BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PromotionalAssetsController.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  swift_storeEnumTagMultiPayload();
  v9 = sub_100183234(v8);
  return (*(v6 + 8))(v8, v5, v9);
}

uint64_t sub_100182CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for PromotionalAssetsController.State(0, v6, *(*v4 + 88), a4);
  (*(*(v7 - 8) + 8))(v4 + v5, v7);
  (*(*(v6 - 8) + 8))(v4 + *(*v4 + 104), v6);
  v8 = *(*v4 + 112);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return v4;
}

uint64_t sub_100182DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100182CC8(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

unint64_t sub_100182E84(uint64_t a1)
{
  result = sub_10009FE14();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100182F0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_10018305C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

double sub_100183234(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100182AF8(KeyPath, sub_100183314, &v5, &type metadata for () + 8);

  return result;
}

__n128 sub_100183308(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10018334C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100183444(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1001842D0(a1, a2);
  return v4;
}

uint64_t sub_1001834C4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(v3 + 168))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = a1(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_100183654()
{
  v1 = *v0;
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - v6;
  if (sub_1000A0020(v3, v2))
  {
    v8 = 0;
  }

  else
  {
    (*(v2 + 168))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_1000FE2B8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

void sub_1001837F8(uint64_t a1)
{
  v3 = *v1;
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AD8A0;
  v5 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_10021CBD0;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_1000A199C(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_10021CBA8;
  *(v4 + 72) = v7;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_10021CC30;
  *(v4 + 112) = 2;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_10021CC08;
  *(v4 + 152) = xmmword_1001BC200;
  *(v4 + 168) = 3;
  if (*(a1 + 72))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v22 = &type metadata for AnalyticsString;
  v23 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v20 = v8;
  v21 = v9;

  v10 = sub_1001666DC(1, 5, 1, v4);
  v25 = v10;
  v11 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_1000EB0D0(4, v13, &v25, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v10;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_100211AA0;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_100183B58()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 176))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

id sub_100183CE8()
{
  result = *(v0 + *(*v0 + 112));
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v2 = result;
      v3 = [result cityWithContextUsingStyle:2];

      if (v3)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100183D90(uint64_t a1)
{
  v2 = *(*v1 + 80);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-1] - v5, v1 + *(v3 + 104), v2);
  sub_100009F70(&qword_1002224C8, &unk_1001BC300);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_100021498(v9);
    return v7;
  }

  return result;
}

uint64_t sub_100183F20()
{
  KeyPath = swift_getKeyPath();
  sub_100184158(KeyPath);

  return *(v0 + 16);
}

double sub_100183F94(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 16);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1001841F8(v7, sub_100031DC4, v8, &type metadata for () + 8);
  }

  return result;
}

_BYTE *sub_1001842D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[16] = 0;
  v6 = &v2[*(v5 + 120)];
  *v6 = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  *(v6 + 3) = v9;
  v10 = *(*v2 + 128);
  *&v2[v10] = [objc_allocWithZone(EKEventStore) init];
  ObservationRegistrar.init()();
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  *&v2[*(*v2 + 112)] = a2;
  return v2;
}

uint64_t sub_100184410()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100184538()
{
  sub_100184410();

  return swift_deallocClassInstance();
}

__n128 sub_1001845BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001845C8()
{

  return swift_deallocObject();
}

uint64_t sub_100184608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100184620@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_100009F70(a1, a2);
  sub_100186C60(a3, a1, a2);
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

uint64_t sub_1001847B0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100186D1C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10018482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009F70(&unk_10021D210, &qword_1001B3EE0);
  v4[12] = swift_task_alloc();
  v5 = sub_100009F70(&qword_1002225F8, &qword_1001BC450);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_100009F70(&qword_100222600, &qword_1001BC458);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_100009F70(&qword_100222608, &qword_1001BC460);
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

  return _swift_task_switch(sub_100184AC8, v3, 0);
}

uint64_t sub_100184AC8()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100184B90;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100184B90()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100184CA0, v1, 0);
}

uint64_t sub_100184CA0()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_100186C18(&qword_1002225D8, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
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
    sub_100186C18(&qword_100222610, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_100009F70(&qword_1002231C0, &qword_1001BC440);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001BC310;
    sub_100009F70(&qword_100222618, &qword_1001BC490);
    *(v9 + 32) = static PartialMusicProperty<A>.topSongs.getter();
    *(v9 + 40) = static PartialMusicProperty<A>.featuredPlaylists.getter();
    *(v9 + 48) = static PartialMusicProperty<A>.featuredAlbums.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_100185174;
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

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10001FDF4(v13, qword_100230610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10005D4E8(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching artist. ID: %s", v18, 0xCu);
    sub_100021498(v19);
  }

  sub_100186B3C();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100185174()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_100185674;
  }

  else
  {
    v4 = sub_1001852A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001852A0()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_100184620(&qword_1002225F8, &qword_1001BC450, &qword_100222620, &type metadata accessor for Artist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_10000D52C(v0[12], &unk_10021D210, &qword_1001B3EE0);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10005D4E8(v11, v10, &v29);
      _os_log_impl(&_mh_execute_header, v8, v9, "Artist not found. ID: %s", v12, 0xCu);
      sub_100021498(v13);
    }

    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    sub_100186B3C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);

    v21 = v0[1];
  }

  else
  {
    v22 = v0[30];
    v23 = v0[20];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[12];
    v27 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v23 + 8))(v24, v25);
    (*(v6 + 32))(v27, v26, v22);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_100185674()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10018574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009F70(&qword_1002225C0, &unk_1001BC3F8);
  v4[12] = swift_task_alloc();
  v5 = sub_100009F70(&qword_100221A80, &qword_1001BADE0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_100009F70(&qword_1002225C8, &qword_1001BC408);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_100009F70(&qword_1002225D0, &qword_1001BC410);
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

  return _swift_task_switch(sub_1001859E8, v3, 0);
}

uint64_t sub_1001859E8()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100185AB0;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100185AB0()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100185BC0, v1, 0);
}

uint64_t sub_100185BC0()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_100186C18(&qword_1002225D8, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
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
    sub_100186C18(&qword_1002225E8, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_100009F70(&qword_1002231C0, &qword_1001BC440);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001BC320;
    sub_100009F70(&qword_1002225F0, &qword_1001BC448);
    *(v9 + 32) = static PartialMusicProperty<A>.tracks.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_100186084;
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

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10001FDF4(v13, qword_100230610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10005D4E8(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching playlist. ID: %s", v18, 0xCu);
    sub_100021498(v19);
  }

  sub_100186B3C();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100186084()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_100186738;
  }

  else
  {
    v4 = sub_1001861B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001861B0()
{
  v39 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_100184620(&qword_100221A80, &qword_1001BADE0, &qword_100221AA0, &type metadata accessor for Playlist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_10000D52C(v0[12], &qword_1002225C0, &unk_1001BC3F8);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10005D4E8(v11, v10, v38);
      _os_log_impl(&_mh_execute_header, v8, v9, "Playlist not found. ID: %s", v12, 0xCu);
      sub_100021498(v13);
    }

    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    sub_100186B3C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    sub_10001FDF4(v7, qword_100230610);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[9];
      v20 = v0[10];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_10005D4E8(v21, v20, v38);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching playlist. ID: %s. Error: %@", v22, 0x16u);
      sub_10000D52C(v23, &qword_10021B938, &unk_1001B16A0);

      sub_100021498(v24);
    }

    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    swift_allocError();
    *v29 = 2;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);

    v30 = v0[1];
  }

  else
  {
    v31 = v0[30];
    v32 = v0[20];
    v33 = v0[21];
    v34 = v0[19];
    v35 = v0[12];
    v36 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v32 + 8))(v33, v34);
    (*(v6 + 32))(v36, v35, v31);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_100186738()
{
  v17 = v0;
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

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
    v16 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10005D4E8(v5, v4, &v16);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching playlist. ID: %s. Error: %@", v6, 0x16u);
    sub_10000D52C(v7, &qword_10021B938, &unk_1001B16A0);

    sub_100021498(v8);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  sub_100186B3C();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100186A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D890;

  return sub_10018574C(a1, a2, a3);
}

unint64_t sub_100186B3C()
{
  result = qword_1002225E0;
  if (!qword_1002225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002225E0);
  }

  return result;
}

uint64_t sub_100186BC0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100028124(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_100186C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100186C60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_100186CC8()
{
  result = qword_100222628[0];
  if (!qword_100222628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100222628);
  }

  return result;
}

uint64_t sub_100186D1C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100186D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v8 = type metadata accessor for VenueEventListHeader(0, a2, a4, v7);
  v9 = (a3 + v8[9]);
  *v9 = sub_100186E68(0);
  v9[1] = v10;
  v11 = v8[10];
  *(a3 + v11) = swift_getKeyPath();
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v8[11];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_100186E68(uint64_t a1)
{
  sub_100009F70(&qword_10021CD20, &qword_1001B3A50);
  State.init(wrappedValue:)();
  return v2;
}

void sub_100186EC0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100187450(319);
    if (v2 <= 0x3F)
    {
      sub_10012EB5C(319);
      if (v3 <= 0x3F)
      {
        sub_100027AA4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100186F78(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ContentSizeCategory() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (!*&a1[v13])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (!v17)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = a1[v13];
      if (!a1[v13])
      {
        goto LABEL_33;
      }
    }

    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }

    v23 = v8 + (v24 | v20);
    return (v23 + 1);
  }

LABEL_33:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 - 1;
    if (v23 < 0)
    {
      v23 = -1;
    }

    return (v23 + 1);
  }

  v21 = *(v6 + 48);

  return v21(a1, v7, v5);
}

void sub_1001871C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFE)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v22 = (a2 - 0x7FFFFFFF);
          v22[1] = 0;
        }

        else
        {
          *v22 = a2;
        }
      }

      else
      {
        v21 = *(v23 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_100187450(uint64_t a1)
{
  if (!qword_1002226B0)
  {
    sub_10000B3DC(&qword_10021CD20, &qword_1001B3A50);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1002226B0);
    }
  }
}

uint64_t sub_1001874F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v12 = sub_100009F70(&qword_1002226B8, &qword_1001BC648);
  sub_100187690(v3, v10, v11, a2 + *(v12 + 44));
  (*(v6 + 16))(v9, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  (*(v6 + 32))(v14 + v13, v9, a1);
  v15 = (a2 + *(sub_100009F70(&qword_1002226C0, &qword_1001BC660) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001BC658;
  v15[1] = v14;
  return result;
}

uint64_t sub_100187690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v5 = a2;
  v91 = a2;
  v90 = a1;
  v107 = a4;
  v7 = type metadata accessor for AccessibilityTraits();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AccessibilityChildBehavior();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100009F70(&qword_10021C078, &unk_1001B27C0);
  __chkstk_darwin(v98);
  v11 = &v82 - v10;
  v100 = sub_100009F70(&qword_10021C080, &unk_1001BC680);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v82 - v12;
  v13 = sub_100009F70(&qword_10021C088, &unk_1001B27D0);
  v14 = __chkstk_darwin(v13 - 8);
  v99 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v96 = &v82 - v16;
  v17 = type metadata accessor for RoundedRectangle();
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100009F70(&qword_1002226C8, &qword_1001BC690);
  __chkstk_darwin(v89);
  v22 = &v82 - v21;
  v93 = sub_100009F70(&qword_1002226D0, &qword_1001BC698);
  __chkstk_darwin(v93);
  v24 = &v82 - v23;
  v25 = sub_100009F70(&qword_1002226D8, &qword_1001BC6A0);
  v26 = __chkstk_darwin(v25 - 8);
  v94 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v82 - v28;
  sub_100188118(a1, v5, a3, &v113);
  v29 = v115;
  v30 = type metadata accessor for RoundedCornerStyle();
  v83 = v113;
  v82 = v114;
  v31 = *(v18 + 28);
  v86 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = *(v30 - 8);
  v85 = *(v32 + 104);
  v87 = v32 + 104;
  v85(&v20[v31]);
  __asm { FMOV            V0.2D, #10.0 }

  v84 = _Q0;
  *v20 = _Q0;
  LODWORD(v5) = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v38 = &v22[*(sub_100009F70(&qword_1002226E0, &unk_1001BC6A8) + 36)];
  sub_1000A3BD8(v20, v38);
  v39 = v38 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v40 = v111;
  *v39 = v110;
  *(v39 + 16) = v40;
  *(v39 + 32) = v112;
  v41 = sub_100009F70(&qword_1002226E8, &qword_1001BC6B8);
  v42 = (v38 + *(v41 + 52));
  *v42 = v5;
  v42[1] = 1036831949;
  *(v38 + *(v41 + 56)) = 256;
  v43 = static Alignment.center.getter();
  v45 = v44;
  sub_1000A3C3C(v20);
  v46 = (v38 + *(sub_100009F70(&qword_1002226F0, &qword_1001BC6C0) + 36));
  *v46 = v43;
  v46[1] = v45;
  v47 = static Alignment.center.getter();
  v49 = v48;
  v50 = (v38 + *(sub_100009F70(&qword_1002226F8, &qword_1001BC6C8) + 36));
  *v50 = v47;
  v50[1] = v49;
  v51 = v82;
  *v22 = v83;
  *(v22 + 1) = v51;
  v22[32] = v29;
  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = 1;
  v54 = &v22[*(sub_100009F70(&qword_100222700, &qword_1001BC700) + 36)];
  *v54 = KeyPath;
  v54[1] = sub_100189D14;
  v54[2] = v53;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = &v22[*(sub_100009F70(&qword_100222708, &qword_1001BC708) + 36)];
  *v63 = KeyPath;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = &v22[*(sub_100009F70(&qword_100222710, &qword_1001BC710) + 36)];
  v65 = v114;
  *v64 = v113;
  *(v64 + 1) = v65;
  *(v64 + 2) = v115;
  *&v22[*(sub_100009F70(&qword_100222718, &unk_1001BC718) + 36)] = 0;
  v66 = &v22[*(v89 + 36)];
  (v85)(&v66[*(v18 + 28)], v86, v30);
  *v66 = v84;
  *&v66[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  sub_100189D2C();
  View.accessibility(hidden:)();
  sub_10000D52C(v22, &qword_1002226C8, &qword_1001BC690);
  v24[*(v93 + 36)] = 1;
  sub_10018A2EC();
  v67 = v88;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v24, &qword_1002226D0, &qword_1001BC698);
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v68 = sub_100009F70(&qword_10021C110, &qword_1001B2838);
  sub_1001884C8(v90, v91, v92, &v11[*(v68 + 44)]);
  v69 = v97;
  static AccessibilityChildBehavior.combine.getter();
  v70 = sub_10000D1EC(&qword_10021C118, &qword_10021C078, &unk_1001B27C0, &protocol conformance descriptor for VStack<A>);
  v71 = v95;
  v72 = v98;
  View.accessibilityElement(children:)();
  (*(v102 + 8))(v69, v103);
  sub_10000D52C(v11, &qword_10021C078, &unk_1001B27C0);
  v73 = v104;
  static AccessibilityTraits.isHeader.getter();
  v108 = v72;
  v109 = v70;
  swift_getOpaqueTypeConformance2();
  v74 = v96;
  v75 = v100;
  View.accessibility(addTraits:)();
  (*(v105 + 8))(v73, v106);
  (*(v101 + 8))(v71, v75);
  v76 = v94;
  sub_10000D58C(v67, v94, &qword_1002226D8, &qword_1001BC6A0);
  v77 = v99;
  sub_1000916F0(v74, v99);
  v78 = v107;
  sub_10000D58C(v76, v107, &qword_1002226D8, &qword_1001BC6A0);
  v79 = sub_100009F70(&qword_1002227A0, &unk_1001BC750);
  sub_1000916F0(v77, v78 + *(v79 + 48));
  v80 = v78 + *(v79 + 64);
  *v80 = 0;
  *(v80 + 8) = 1;
  sub_100091760(v74);
  sub_10000D52C(v67, &qword_1002226D8, &qword_1001BC6A0);
  sub_100091760(v77);
  return sub_10000D52C(v76, &qword_1002226D8, &qword_1001BC6A0);
}

double sub_100188118@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for OpacityTransition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Image.ResizingMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + *(type metadata accessor for VenueEventListHeader(0, a2, a3, v18) + 36));
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  State.wrappedValue.getter();
  if (v28)
  {
    v19 = v28;
    Image.init(uiImage:)();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v15 + 8))(v17, v14);
    OpacityTransition.init()();
    (*(v8 + 16))(v11, v13, v7);
    sub_10018A538(&qword_10021D618, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v21 = AnyTransition.init<A>(_:)();
    (*(v8 + 8))(v13, v7);
    v28 = v20;
    v29 = xmmword_1001BC550;
    v30 = v21;
    v31 = 0;

    sub_100009F70(&qword_100222778, &qword_1001BC738);
    sub_10018A234();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v22 = [objc_opt_self() systemGray5Color];
    v28 = Color.init(uiColor:)();
    v29 = 0uLL;
    v30 = 0;
    v31 = 1;
    sub_100009F70(&qword_100222778, &qword_1001BC738);
    sub_10018A234();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v32;
  v24 = v33;
  v25 = v34;
  v26 = v27;
  *v27 = v32;
  v26[1] = v24;
  *(v26 + 32) = v25;
  return result;
}

uint64_t sub_1001884C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v78 = a3;
  v81 = a2;
  v77 = a1;
  v91 = a4;
  v6 = sub_100009F70(&qword_10021C128, &qword_1001B2848);
  v7 = __chkstk_darwin(v6 - 8);
  v90 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v89 = &v68[-v9];
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v68[-v15];
  v17 = sub_100009F70(&qword_10021C140, &unk_1001B2890);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v68[-v19];
  v85 = sub_100009F70(&qword_10021C148, &unk_1001B2900) - 8;
  __chkstk_darwin(v85);
  v83 = &v68[-v21];
  v87 = sub_100009F70(&qword_10021C130, &qword_1001B2850);
  __chkstk_darwin(v87);
  v86 = &v68[-v22];
  v23 = sub_100009F70(&qword_10021C138, &qword_1001B2858);
  v24 = __chkstk_darwin(v23 - 8);
  v88 = &v68[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v84 = &v68[-v26];
  LocalizedStringKey.init(stringLiteral:)();
  v71 = Text.init(_:tableName:bundle:comment:)();
  v70 = v27;
  v69 = v28;
  v72 = v29;
  v82 = *(type metadata accessor for VenueEventListHeader(0, a2, v4, v29) + 40);
  sub_100024890(v16);
  v80 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v79 = *(v11 + 104);
  v30 = v14;
  v74 = v10;
  v79(v14);
  v73 = v16;
  v75 = v14;
  LOBYTE(v4) = sub_1000B06A0(v16, v14);
  v31 = *(v11 + 8);
  v76 = v11 + 8;
  v31(v30, v10);
  v31(v16, v10);
  if (v4)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  KeyPath = swift_getKeyPath();
  v34 = &v20[*(v18 + 44)];
  v35 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v36 = enum case for Text.Case.uppercase(_:);
  v37 = type metadata accessor for Text.Case();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  v39 = v70;
  *v20 = v71;
  *(v20 + 1) = v39;
  v20[16] = v69 & 1;
  *(v20 + 3) = v72;
  *(v20 + 4) = KeyPath;
  *(v20 + 5) = v32;
  v20[48] = 0;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  v41 = swift_getKeyPath();
  v42 = v83;
  sub_10000F618(v20, v83, &qword_10021C140, &unk_1001B2890);
  v43 = &v42[*(v85 + 44)];
  *v43 = v41;
  v43[1] = v40;
  v44 = [objc_opt_self() secondaryLabelColor];
  v45 = Color.init(uiColor:)();
  v46 = v42;
  v47 = v86;
  sub_10000F618(v46, v86, &qword_10021C148, &unk_1001B2900);
  *&v47[*(v87 + 36)] = v45;
  sub_1000917E0();
  v48 = v84;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v47, &qword_10021C130, &qword_1001B2850);
  v49 = (*(v78 + 48))(v81);
  v51 = v50;
  v52 = v73;
  sub_100024890(v73);
  v53 = v75;
  v54 = v74;
  (v79)(v75, v80, v74);
  v55 = v53;
  LOBYTE(v53) = sub_1000B06A0(v52, v53);
  v31(v55, v54);
  v31(v52, v54);
  if (v53)
  {
    v56 = 3;
  }

  else
  {
    v56 = 2;
  }

  v57 = swift_getKeyPath();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v58 = Font.weight(_:)();

  v59 = swift_getKeyPath();
  v100 = 0;
  v99 = 0;
  *&v92 = v49;
  *(&v92 + 1) = v51;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = _swiftEmptyArrayStorage;
  *&v94 = v57;
  *(&v94 + 1) = v56;
  LOBYTE(v95) = 0;
  *(&v95 + 1) = v59;
  v96 = v58;
  sub_100009F70(&qword_10021C168, &unk_1001B2910);
  sub_100091A08();
  v60 = v89;
  View.accessibilityIdentifier(_:)();
  v97[2] = v94;
  v97[3] = v95;
  v98 = v96;
  v97[0] = v92;
  v97[1] = v93;
  sub_10000D52C(v97, &qword_10021C168, &unk_1001B2910);
  v61 = v48;
  v62 = v48;
  v63 = v88;
  sub_10000D58C(v62, v88, &qword_10021C138, &qword_1001B2858);
  v64 = v90;
  sub_10000D58C(v60, v90, &qword_10021C128, &qword_1001B2848);
  v65 = v91;
  sub_10000D58C(v63, v91, &qword_10021C138, &qword_1001B2858);
  v66 = sub_100009F70(&qword_10021C178, &qword_1001BC800);
  sub_10000D58C(v64, v65 + *(v66 + 48), &qword_10021C128, &qword_1001B2848);
  sub_10000D52C(v60, &qword_10021C128, &qword_1001B2848);
  sub_10000D52C(v61, &qword_10021C138, &qword_1001B2858);
  sub_10000D52C(v64, &qword_10021C128, &qword_1001B2848);
  return sub_10000D52C(v63, &qword_10021C138, &qword_1001B2858);
}

uint64_t sub_100188DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for VenueEventListHeader(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_100188E94;

  return sub_100189018(v8);
}

uint64_t sub_100188E94()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100180E28;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_10001D744;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100189018(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[11] = v5;
  v6 = *(a1 + 16);
  v2[12] = v6;
  v7 = *(a1 + 24);
  v2[13] = v7;
  *v5 = v2;
  v5[1] = sub_100189140;

  return sub_10019C8F0(v1, v6, v7);
}

uint64_t sub_100189140(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_10018983C;
  }

  else
  {
    v3[16] = v4;
    v3[17] = v5;
    v6 = sub_1001892AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001892AC()
{
  v1 = *(v0 + 40) + *(*(v0 + 32) + 44);
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = *v1;
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(*&v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = *(v0 + 16);

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(*&v2, 0);
    v9(v5, v7);
    v3 = *(v0 + 24);
  }

  v11 = v3 * 60.0;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1001894D0;
  v13 = *(v0 + 112);

  return sub_10019DEE8(v13, v4 * 60.0, v11);
}

uint64_t sub_1001894D0(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[16];
    v5 = v3[17];
    v6 = sub_10018973C;
  }

  else
  {
    v6 = sub_1001895EC;
    v4 = 0;
    v5 = 0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001895EC(uint64_t a1)
{
  *(v1 + 168) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100189678, v3, v2);
}

uint64_t sub_100189678()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[5];

  sub_1001898A8(v5, v2, v4, v3);
  if (v1)
  {
  }

  else
  {
    v7 = v0[16];
    v8 = v0[17];

    return _swift_task_switch(sub_1001897B0, v7, v8);
  }
}

uint64_t sub_10018973C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001897B0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018983C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1001898A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_10018992C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VenueEventListHeader(0, a3, a4, a4);
  v5 = a2;
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  return State.wrappedValue.setter();
}

uint64_t sub_1001899B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for VenueEventListHeader(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  v8 = v6[10];
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + v6[11]), *(v7 + v6[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_100189B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for VenueEventListHeader(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000D890;

  return sub_100188DC4(v4 + v9, v6, v7);
}

uint64_t sub_100189C20@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100189CAC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100189D2C()
{
  result = qword_100222720;
  if (!qword_100222720)
  {
    sub_10000B3DC(&qword_1002226C8, &qword_1001BC690);
    sub_100189DE4();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222720);
  }

  return result;
}

unint64_t sub_100189DE4()
{
  result = qword_100222728;
  if (!qword_100222728)
  {
    sub_10000B3DC(&qword_100222718, &unk_1001BC718);
    sub_100189E9C();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630, &qword_1001B1308, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222728);
  }

  return result;
}

unint64_t sub_100189E9C()
{
  result = qword_100222730;
  if (!qword_100222730)
  {
    sub_10000B3DC(&qword_100222710, &qword_1001BC710);
    sub_100189F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222730);
  }

  return result;
}

unint64_t sub_100189F28()
{
  result = qword_100222738;
  if (!qword_100222738)
  {
    sub_10000B3DC(&qword_100222708, &qword_1001BC708);
    sub_100189FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222738);
  }

  return result;
}

unint64_t sub_100189FB4()
{
  result = qword_100222740;
  if (!qword_100222740)
  {
    sub_10000B3DC(&qword_100222700, &qword_1001BC700);
    sub_10018A06C();
    sub_10000D1EC(&qword_10021FAB0, &qword_10021FAB8, &qword_1001B7D20, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222740);
  }

  return result;
}

unint64_t sub_10018A06C()
{
  result = qword_100222748;
  if (!qword_100222748)
  {
    sub_10000B3DC(&qword_1002226E0, &unk_1001BC6A8);
    sub_10018A124();
    sub_10000D1EC(&qword_100222780, &qword_1002226F8, &qword_1001BC6C8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222748);
  }

  return result;
}

unint64_t sub_10018A124()
{
  result = qword_100222750;
  if (!qword_100222750)
  {
    sub_10000B3DC(&qword_100222758, &qword_1001BC728);
    sub_10018A1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222750);
  }

  return result;
}

unint64_t sub_10018A1A8()
{
  result = qword_100222760;
  if (!qword_100222760)
  {
    sub_10000B3DC(&qword_100222768, &qword_1001BC730);
    sub_10018A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222760);
  }

  return result;
}

unint64_t sub_10018A234()
{
  result = qword_100222770;
  if (!qword_100222770)
  {
    sub_10000B3DC(&qword_100222778, &qword_1001BC738);
    sub_100079534();
    sub_10000D1EC(&qword_10021D670, &qword_10021D678, &unk_1001B4838, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222770);
  }

  return result;
}

unint64_t sub_10018A2EC()
{
  result = qword_100222788;
  if (!qword_100222788)
  {
    sub_10000B3DC(&qword_1002226D0, &qword_1001BC698);
    sub_10018A378();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222788);
  }

  return result;
}

unint64_t sub_10018A378()
{
  result = qword_100222790;
  if (!qword_100222790)
  {
    sub_10000B3DC(&qword_100222798, &unk_1001BC740);
    sub_100189D2C();
    sub_10018A538(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222790);
  }

  return result;
}

unint64_t sub_10018A450()
{
  result = qword_1002227A8;
  if (!qword_1002227A8)
  {
    sub_10000B3DC(&qword_1002226C0, &qword_1001BC660);
    sub_10000D1EC(&qword_1002227B0, &qword_1002227B8, &qword_1001BC808, &protocol conformance descriptor for HStack<A>);
    sub_10018A538(&qword_100218490, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002227A8);
  }

  return result;
}

uint64_t sub_10018A538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10018A610@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v34 = v7;
  v35 = v6;
  (*(v3 + 8))(v5, v2);
  v32 = 0x80000001001C20E0;
  v33 = 0x80000001001C2100;
  v8 = type metadata accessor for DesignTimeMusicPlaylist(0);
  v9 = *(v8 + 32);
  v10 = v8;
  v31 = v8;
  sub_1000214E8((a1 + v9));
  v11 = type metadata accessor for DesignTimeImage(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v9, 0, 1, v11);
  v13 = *(v10 + 36);
  v14 = type metadata accessor for URL();
  v30 = *(*(v14 - 8) + 56);
  v30(a1 + v13, 1, 1, v14);
  sub_100009F70(&qword_100222848, &unk_1001BC8E0);
  v15 = (type metadata accessor for DesignTimeSong(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001AEB90;
  v18 = (v17 + v16);
  v29 = 0x80000001001C2130;
  v19 = v15[9];
  sub_1000214E8(&v18[v19]);
  v12(&v18[v19], 0, 1, v11);
  URL.init(string:)();
  v20 = v15[11];
  v21 = type metadata accessor for PlayParameters();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v30(&v18[v15[13]], 1, 1, v14);
  *v18 = 0x61662072656B6F50;
  *(v18 + 1) = 0xEA00000000006563;
  *(v18 + 2) = 0x676147207964614CLL;
  *(v18 + 3) = 0xE900000000000061;
  v22 = v29;
  *(v18 + 4) = 0xD000000000000010;
  *(v18 + 5) = v22;
  v23 = &v18[v15[12]];
  *v23 = 0;
  v23[8] = 1;
  v18[v15[14]] = 0;
  v24 = v34;
  *a1 = v35;
  *(a1 + 8) = v24;
  v25 = v32;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = v25;
  result = 1.09334023e257;
  *(a1 + 32) = xmmword_1001BC810;
  v27 = v33;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = v27;
  *(a1 + *(v31 + 40)) = v17;
  return result;
}

void sub_10018A9C4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DesignTimeImage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 56))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 56))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v14 = type metadata accessor for DesignTimeMusicPlaylist(0);
  sub_10000D58C(v1 + v14[8], v13, &qword_10021E8F0, &unk_1001B8A10);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
    v16 = v22;
    v15 = v23;
  }

  else
  {
    sub_100028E88(v13, v10);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_10018B788(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = v23;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v10[*(v7 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_10018B788(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v16 = v22;
    Hasher._combine(_:)(v10[*(v7 + 28)]);
    sub_100128D88(v10);
  }

  sub_10000D58C(v1 + v14[9], v6, qword_100218748, &unk_1001AD110);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = v21;
    (*(v16 + 32))(v21, v6, v15);
    Hasher._combine(_:)(1u);
    sub_10018B788(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v16 + 8))(v17, v15);
  }

  v18 = *(v1 + v14[10]);
  Hasher._combine(_:)(*(v18 + 16));
  for (i = *(v18 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }
}

uint64_t sub_10018AF54(uint64_t a1)
{
  *(a1 + 8) = sub_10018B788(&qword_100222830, type metadata accessor for DesignTimeMusicPlaylist, &unk_1001BC874);
  result = sub_10018B788(&qword_100222838, type metadata accessor for DesignTimeMusicPlaylist, &unk_1001BC83C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicPlaylist(uint64_t a1)
{
  result = qword_1002228A8;
  if (!qword_1002228A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_10018B06C()
{
  Hasher.init(_seed:)();
  sub_10018A9C4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10018B0B0()
{
  Hasher.init(_seed:)();
  sub_10018A9C4(v1);
  return Hasher._finalize()();
}

uint64_t sub_10018B0EC(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - v7;
  v8 = sub_100009F70(&qword_10021E8E8, &unk_1001B6570);
  __chkstk_darwin(v8);
  v51 = &v47 - v9;
  v10 = type metadata accessor for DesignTimeImage(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v14 - 8);
  v16 = (&v47 - v15);
  v17 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v21)
  {
    goto LABEL_34;
  }

  v22 = a1[7];
  v23 = a2[7];
  if (v22)
  {
    if (!v23 || (a1[6] != a2[6] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v23)
  {
    goto LABEL_34;
  }

  v48 = v4;
  v47 = type metadata accessor for DesignTimeMusicPlaylist(0);
  v24 = *(v47 + 32);
  v25 = *(v17 + 48);
  sub_10000D58C(a1 + v24, v19, &qword_10021E8F0, &unk_1001B8A10);
  v26 = a2 + v24;
  v27 = v25;
  sub_10000D58C(v26, &v19[v25], &qword_10021E8F0, &unk_1001B8A10);
  v28 = *(v11 + 48);
  if (v28(v19, 1, v10) != 1)
  {
    sub_10000D58C(v19, v16, &qword_10021E8F0, &unk_1001B8A10);
    if (v28(&v19[v27], 1, v10) != 1)
    {
      sub_100028E88(&v19[v27], v13);
      v32 = sub_100022244(v16, v13);
      sub_100128D88(v13);
      sub_100128D88(v16);
      sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    sub_100128D88(v16);
LABEL_25:
    v29 = &qword_10021E8F8;
    v30 = &unk_1001B6580;
    v31 = v19;
LABEL_33:
    sub_10000D52C(v31, v29, v30);
    goto LABEL_34;
  }

  if (v28(&v19[v27], 1, v10) != 1)
  {
    goto LABEL_25;
  }

  sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
LABEL_27:
  v33 = v47;
  v34 = *(v47 + 36);
  v35 = *(v8 + 48);
  v36 = v51;
  sub_10000D58C(a1 + v34, v51, qword_100218748, &unk_1001AD110);
  sub_10000D58C(a2 + v34, v36 + v35, qword_100218748, &unk_1001AD110);
  v37 = v52;
  v38 = *(v52 + 48);
  v39 = v48;
  if (v38(v36, 1, v48) == 1)
  {
    if (v38(v36 + v35, 1, v39) == 1)
    {
      sub_10000D52C(v36, qword_100218748, &unk_1001AD110);
LABEL_37:
      v41 = sub_1000E4D6C(*(a1 + *(v33 + 40)), *(a2 + *(v33 + 40)));
      return v41 & 1;
    }

    goto LABEL_32;
  }

  v40 = v50;
  sub_10000D58C(v36, v50, qword_100218748, &unk_1001AD110);
  if (v38(v36 + v35, 1, v39) == 1)
  {
    (*(v37 + 8))(v40, v39);
LABEL_32:
    v29 = &qword_10021E8E8;
    v30 = &unk_1001B6570;
    v31 = v36;
    goto LABEL_33;
  }

  v43 = v36 + v35;
  v44 = v49;
  (*(v37 + 32))(v49, v43, v39);
  sub_10018B788(&qword_10021D560, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v37 + 8);
  v46(v44, v39);
  v46(v40, v39);
  sub_10000D52C(v36, qword_100218748, &unk_1001AD110);
  if (v45)
  {
    goto LABEL_37;
  }

LABEL_34:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_10018B788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10018B934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
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
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10018BA70(uint64_t a1)
{
  sub_1000F72EC();
  if (v1 <= 0x3F)
  {
    sub_10018BBC4(319, &qword_10021E980, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10018BBC4(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10018BBC4(319, &qword_10021E968, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10018BBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10018BC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v12.val[0] = *(v8 + 80);
  v12.val[1] = *(v9 + 80);
  v14 = 0;
  State.init(wrappedValue:)();
  v10 = v13[1];
  *(a7 + 32) = LOBYTE(v13[0]) & 1;
  *(a7 + 40) = v10;
  v15 = v12;
  vst2q_f64(v13, v15);
  type metadata accessor for PhoneWallpapersWatchFacesView(0, v13);
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  swift_getWitnessTable();
  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_10018BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

void sub_10018BE54(uint64_t *a1)
{
  sub_10018C248(319, &qword_10021EBD0, &type metadata for String, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    sub_10018C248(319, &qword_100222978, &type metadata for PhoneWallpapersWatchFacesConfiguration, &type metadata accessor for State);
    if (v4 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel(255, a1[2], a1[4], v3);
      type metadata accessor for Bindable();
      if (v6 <= 0x3F)
      {
        type metadata accessor for WatchFacesViewModel(255, a1[3], a1[5], v5);
        type metadata accessor for Bindable();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10018BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel(255, *(a3 + 16), *(a3 + 32), a4);
    v9 = type metadata accessor for Bindable();
    v11 = *(v9 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v9;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 60);

      return v13(v14, a2, v12);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel(255, *(a3 + 24), *(a3 + 40), v10);
      v15 = type metadata accessor for Bindable();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 64);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10018C0FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel(255, *(a4 + 16), *(a4 + 32), a4);
    v8 = type metadata accessor for Bindable();
    v10 = *(v8 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v8;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 60);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel(255, *(a4 + 24), *(a4 + 40), v9);
      v14 = type metadata accessor for Bindable();
      v15 = *(*(v14 - 8) + 56);
      v16 = v5 + *(a4 + 64);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void sub_10018C248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10018C29C()
{
  result = qword_100222980;
  if (!qword_100222980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222980);
  }

  return result;
}

uint64_t sub_10018C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WatchFacesViewModel(255, *(a1 + 24), *(a1 + 40), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10018C344@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a3;
  v4 = a1[4];
  v25 = a1[2];
  v26 = v4;
  type metadata accessor for PhoneWallpaperView(255, v25, v4, a2);
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for WatchFacesView(255, v5, v6, v7);
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_10000B3DC(&qword_100222988, &qword_1001BCA48);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  *&v18 = v25;
  *&v19 = v26;
  *(&v18 + 1) = v5;
  *(&v19 + 1) = v6;
  v30 = v18;
  v31 = v19;
  v32 = v28;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  sub_10000B5E0();
  View.background<A>(_:alignment:)();
  (*(v27 + 8))(v10, v8);
  v21 = sub_10000D1EC(&qword_100222990, &qword_100222988, &qword_1001BCA48, &protocol conformance descriptor for _BackgroundModifier<A>);
  v33 = WitnessTable;
  v34 = v21;
  swift_getWitnessTable();
  sub_100157EFC();
  v22 = *(v12 + 8);
  v22(v15, v11);
  sub_100157EFC();
  return (v22)(v17, v11);
}

uint64_t sub_10018C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a6;
  v11 = type metadata accessor for Optional();
  __chkstk_darwin(v11 - 8);
  v79 = &v75 - v12;
  v88 = a3;
  *(&v85 + 1) = a5;
  v14 = type metadata accessor for WatchFacesView(0, a3, a5, v13);
  v82 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v81 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v75 - v17;
  v18 = type metadata accessor for Optional();
  __chkstk_darwin(v18 - 8);
  v75 = &v75 - v19;
  v86 = a2;
  *&v85 = a4;
  v21 = type metadata accessor for PhoneWallpaperView(0, a2, a4, v20);
  v78 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v76 = &v75 - v24;
  v90 = v25;
  v94 = v14;
  v26 = type metadata accessor for _ConditionalContent();
  v92 = *(v26 - 8);
  v93 = v26;
  v27 = __chkstk_darwin(v26);
  v91 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v89 = &v75 - v29;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[3];
  v83 = a1[2];
  v84 = v30;
  LOBYTE(a4) = *(a1 + 32);
  v87 = a1;
  v33 = a1[5];
  LOBYTE(v107) = a4;
  *(&v107 + 1) = v33;

  sub_100009F70(&qword_100222998, &qword_1001BCA50);
  State.projectedValue.getter();
  v34 = v112;
  v35 = v113;
  type metadata accessor for RemoteViewConfiguration();
  sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  v36 = EnvironmentObject.init()();
  *&v112 = v84;
  *(&v112 + 1) = v31;
  *&v113 = v83;
  *(&v113 + 1) = v32;
  v114 = v34;
  LOBYTE(v115) = v35;
  *(&v115 + 1) = v36;
  v116 = v37;
  LOBYTE(v107) = a4;
  *(&v107 + 1) = v33;
  State.wrappedValue.getter();
  if (v101)
  {
    v38 = v88;
    *&v107 = v86;
    *(&v107 + 1) = v88;
    v108 = v85;
    v39 = type metadata accessor for PhoneWallpapersWatchFacesView(0, &v107);
    v43 = sub_10018C2F0(v39, v40, v41, v42);
    v44 = v79;
    (*(*(v38 - 8) + 56))(v79, 1, 1, v38);
    v45 = v81;
    sub_10001555C(v43, v44, v81);
    v46 = v94;
    WitnessTable = swift_getWitnessTable();
    v48 = v80;
    sub_100157EFC();
    v49 = *(v82 + 8);
    v49(v45, v46);
    sub_100157EFC();
    v50 = v90;
    v51 = swift_getWitnessTable();
    v52 = v89;
    sub_100061970(v45, v50, v46, v51, WitnessTable);
    v49(v45, v46);
    v53 = v48;
    v54 = v46;
  }

  else
  {
    v55 = v86;
    *&v107 = v86;
    *(&v107 + 1) = v88;
    v108 = v85;
    v56 = type metadata accessor for PhoneWallpapersWatchFacesView(0, &v107);
    v60 = sub_10018BDF0(v56, v57, v58, v59);
    v61 = v75;
    (*(*(v55 - 8) + 56))(v75, 1, 1, v55);
    v62 = v77;
    sub_100006C94(v60, v61, v77);
    v63 = v90;
    v64 = swift_getWitnessTable();
    v65 = v76;
    sub_100157EFC();
    v49 = *(v78 + 8);
    v49(v62, v63);
    sub_100157EFC();
    v66 = v94;
    v67 = swift_getWitnessTable();
    v52 = v89;
    sub_100061878(v62, v63, v66, v64, v67);
    v49(v62, v63);
    v53 = v65;
    v54 = v63;
  }

  v49(v53, v54);
  v103 = v114;
  v104 = v115;
  v105 = v116;
  v101 = v112;
  v102 = v113;
  v106[0] = &v101;
  v69 = v91;
  v68 = v92;
  v70 = v93;
  (*(v92 + 16))(v91, v52, v93);
  v106[1] = v69;
  sub_10018F2BC(&v112, &v107);
  v100[0] = &type metadata for PhoneWallpapersWatchFacesHeader;
  v100[1] = v70;
  v98 = sub_10018F2F4();
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v96 = v71;
  v97 = v72;
  v99 = swift_getWitnessTable();
  sub_100151024(v106, 2uLL, v100);
  sub_10018F348(&v112);
  v73 = *(v68 + 8);
  v73(v52, v70);
  v73(v69, v70);
  v109 = v103;
  v110 = v104;
  v111 = v105;
  v107 = v101;
  v108 = v102;
  return sub_10018F348(&v107);
}

uint64_t sub_10018CE68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009F70(&qword_1002229A8, &qword_1001BCB10);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_100009F70(&qword_1002229B0, &qword_1001BCB18);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  v10 = sub_100009F70(&qword_1002229B8, &qword_1001BCB20);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v14 = sub_100009F70(&qword_1002229C0, &qword_1001BCB28);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = v54 - v16;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = sub_100009F70(&qword_1002229C8, &qword_1001BCB30);
  sub_10018D1D4(v1, &v5[*(v18 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v9, &qword_1002229A8, &qword_1001BCB10);
  v19 = &v9[*(v7 + 44)];
  v20 = v54[5];
  *(v19 + 4) = v54[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v54[6];
  v21 = v54[1];
  *v19 = v54[0];
  *(v19 + 1) = v21;
  v22 = v54[3];
  *(v19 + 2) = v54[2];
  *(v19 + 3) = v22;
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000F618(v9, v13, &qword_1002229B0, &qword_1001BCB18);
  v32 = &v13[*(v11 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10000F618(v13, v17, &qword_1002229B8, &qword_1001BCB20);
  v42 = &v17[*(v15 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000F618(v17, a1, &qword_1002229C0, &qword_1001BCB28);
  result = sub_100009F70(&qword_1002229D0, &qword_1001BCB38);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_10018D1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_100009F70(&qword_1002229D8, &unk_1001BCB40);
  v3 = __chkstk_darwin(v73);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v75 = (&v66 - v5);
  v6 = sub_100009F70(&qword_10021A608, &qword_1001AFCB8);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v66 - v7;
  v8 = sub_100009F70(&qword_1002229E0, &qword_1001BCB50);
  v9 = __chkstk_darwin(v8 - 8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v105 = *(a1 + 32);
  v106 = *(a1 + 48);
  v93 = *(a1 + 32);
  LOBYTE(v94) = *(a1 + 48);
  v70 = sub_100009F70(&qword_1002229E8, &qword_1001BCB58);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v81 = v19;
  v82 = v18;
  v21 = v20;
  v83 = v22;

  sub_10000D60C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v78 = v21 & 1;
  v104 = v21 & 1;
  v102 = 0;
  v23 = *(a1 + 24);
  if (v23)
  {
    v67 = v6;
    v68 = a1;
    v69 = v12;
    v24 = *(a1 + 16);
    v93 = v105;
    LOBYTE(v94) = v106;
    Binding.wrappedValue.getter();
    sub_10018DA0C(v24, v23, v84);
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v29 = v28;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_10000D60C(v25, v27, v29 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v93 = qword_100230570;

    v35 = Text.foregroundStyle<A>(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10000D60C(v30, v32, v34 & 1);

    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v39 &= 1u;
    LOBYTE(v93) = v39;
    LOBYTE(v84) = 0;
    v44 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v92 = 0;
    *&v84 = v35;
    *(&v84 + 1) = v37;
    LOBYTE(v85) = v39;
    *(&v85 + 1) = v41;
    *&v86 = v42;
    *(&v86 + 1) = 2;
    LOBYTE(v87) = 0;
    *(&v87 + 1) = v43;
    LOBYTE(v88) = 0;
    BYTE8(v88) = v44;
    *&v89 = v45;
    *(&v89 + 1) = v46;
    *&v90 = v47;
    *(&v90 + 1) = v48;
    v91 = 0;
    sub_100009F70(&qword_10021A618, &unk_1001AFD40);
    sub_10018FB8C(&qword_10021A620, &qword_10021A618, &unk_1001AFD40, sub_10004DC70);
    v49 = v71;
    View.accessibilityIdentifier(_:)();
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    sub_10000D52C(&v93, &qword_10021A618, &unk_1001AFD40);
    v12 = v69;
    sub_10000F618(v49, v69, &qword_10021A608, &qword_1001AFCB8);
    (*(v72 + 56))(v12, 0, 1, v67);
    a1 = v68;
  }

  else
  {
    (*(v72 + 56))(v12, 1, 1, v6);
  }

  v50 = static VerticalAlignment.center.getter();
  v51 = v75;
  *v75 = v50;
  *(v51 + 8) = 0x4020000000000000;
  *(v51 + 16) = 0;
  v52 = sub_100009F70(&qword_1002229F0, &qword_1001BCBC0);
  sub_10018DB04(a1, (v51 + *(v52 + 44)));
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v54 = v74;
  v55 = v51 + *(v73 + 36);
  *v55 = v53;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  sub_10000D58C(v12, v54, &qword_1002229E0, &qword_1001BCB50);
  v60 = v77;
  sub_10018F50C(v51, v77);
  *&v84 = v82;
  *(&v84 + 1) = v81;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = *v103;
  DWORD1(v85) = *&v103[3];
  *(&v85 + 1) = v83;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v101;
  DWORD1(v87) = *&v101[3];
  *(&v87 + 1) = v79;
  LOBYTE(v88) = 0;
  v61 = v76;
  *(v76 + 64) = 0;
  v62 = v85;
  *v61 = v84;
  v61[1] = v62;
  v63 = v87;
  v61[2] = v86;
  v61[3] = v63;
  v64 = sub_100009F70(&qword_1002229F8, &qword_1001BCBC8);
  sub_10000D58C(v54, v61 + *(v64 + 48), &qword_1002229E0, &qword_1001BCB50);
  sub_10018F50C(v60, v61 + *(v64 + 64));
  sub_10000D58C(&v84, &v93, &qword_10021A630, &qword_1001BCBD0);
  sub_10018F57C(v51);
  sub_10000D52C(v12, &qword_1002229E0, &qword_1001BCB50);
  sub_10018F57C(v60);
  sub_10000D52C(v54, &qword_1002229E0, &qword_1001BCB50);
  *&v93 = v82;
  *(&v93 + 1) = v81;
  LOBYTE(v94) = v78;
  *(&v94 + 1) = *v103;
  DWORD1(v94) = *&v103[3];
  *(&v94 + 1) = v83;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v101;
  DWORD1(v96) = *&v101[3];
  *(&v96 + 1) = v79;
  LOBYTE(v97) = 0;
  return sub_10000D52C(&v93, &qword_10021A630, &qword_1001BCBD0);
}

uint64_t sub_10018DA0C(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a3)
  {
    v7 = "ts-Page-Title-Statictext";
  }

  else
  {
    v7 = "ICE_WATCHFACES_SUBHEADER ";
  }

  if (a3)
  {
    v8 = 0xD000000000000029;
  }

  else
  {
    v8 = 0xD00000000000002DLL;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v7 | 0x8000000000000000);
  v9._countAndFlagsBits = v8;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_10018DB04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v46 = sub_100009F70(&qword_100222A00, &qword_1001BCBD8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - v3;
  v47 = sub_100009F70(&qword_100222A08, &qword_1001BCBE0);
  v45 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v40 - v6;
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_100222A10, &qword_1001BCBE8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v42 = sub_100009F70(&qword_100222A18, &qword_1001BCBF0);
  v52 = *(v42 - 8);
  v14 = __chkstk_darwin(v42);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v55 = a1;
  sub_10018F2BC(a1, v56);
  sub_100009F70(&qword_100222A20, &qword_1001BCBF8);
  sub_10018F5F8();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222A60, &qword_100222A10, &qword_1001BCBE8, &protocol conformance descriptor for Button<A>);
  sub_10018F880(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  v20 = *(v53 + 8);
  v53 += 8;
  v20(v9, v7);
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  v54 = a1;
  sub_10018F2BC(a1, v56);
  sub_100009F70(&qword_100222A68, &qword_1001BCC18);
  sub_10018F930();
  v24 = v43;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222A88, &qword_100222A00, &qword_1001BCBD8, &protocol conformance descriptor for Button<A>);
  v25 = v51;
  v26 = v46;
  View.buttonStyle<A>(_:)();
  v20(v9, v7);
  (*(v48 + 8))(v24, v26);
  v27 = *(v52 + 16);
  v28 = v41;
  v29 = v42;
  v27(v41, v50, v42);
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v44;
  v33 = v25;
  v34 = v47;
  v31(v44, v33, v47);
  v35 = v49;
  v27(v49, v28, v29);
  v36 = sub_100009F70(&qword_100222A90, &qword_1001BCC28);
  v31(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v30 + 8);
  v37(v51, v34);
  v38 = *(v52 + 8);
  v38(v50, v29);
  v37(v32, v34);
  return (v38)(v28, v29);
}

void sub_10018E1FC(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 0;
  sub_100009F70(&qword_1002229E8, &qword_1001BCB58);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_100009F70(qword_100218F38, &unk_1001ADA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BC910;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100081738(&v12, v13);

    v7 = sub_1001666DC(1, 5, 1, inited);
    v11 = v7;
    sub_1000109BC(&aBlock, v13);
    sub_1000EB0D0(4, v13, &v11, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001BDDE0;
    v9[4] = v7;
    v17 = sub_100038F2C;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_1000DCA40;
    v16 = &unk_100211E38;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10018E520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100009F70(&qword_100222A48, &qword_1001BCC08);
  __chkstk_darwin(v3 - 8);
  v72 = &v66 - v4;
  v71 = sub_100009F70(&qword_100222A38, &qword_1001BCC00);
  __chkstk_darwin(v71);
  v73 = &v66 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v68 = v12;
  v69 = v13;
  v15 = v14;

  sub_10000D60C(v6, v8, v10 & 1);

  v107 = *(a1 + 32);
  v108 = *(a1 + 48);
  v89 = *(a1 + 32);
  LOBYTE(v90) = *(a1 + 48);
  v70 = sub_100009F70(&qword_1002229E8, &qword_1001BCB58);
  Binding.wrappedValue.getter();
  if (v76)
  {
    v16 = static Color.primary.getter();
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v16 = qword_100230560;
  }

  *&v89 = v16;
  v17 = v68;
  v67 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10000D60C(v11, v17, v15 & 1);

  KeyPath = swift_getKeyPath();
  v25 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v21 & 1;
  v104 = v21 & 1;
  v103 = 0;
  v102 = 0;
  v35 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v105 = 0;
  v44 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = 0;
  *&v76 = v67;
  *(&v76 + 1) = v19;
  LOBYTE(v77) = v34;
  *(&v77 + 1) = v23;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  BYTE8(v79) = v25;
  *&v80 = v27;
  *(&v80 + 1) = v29;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  LOBYTE(v82) = 0;
  BYTE8(v82) = v35;
  *&v83 = v37;
  *(&v83 + 1) = v39;
  *&v84 = v41;
  *(&v84 + 1) = v43;
  LOBYTE(v85) = 0;
  BYTE8(v85) = v44;
  *&v86 = v45;
  *(&v86 + 1) = v46;
  *&v87 = v47;
  *(&v87 + 1) = v48;
  v88 = 0;
  sub_100009F70(&qword_100222A58, &qword_1001BCC10);
  sub_10018FB8C(&qword_100222A50, &qword_100222A58, &qword_1001BCC10, sub_10018F850);
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v89 = v76;
  v90 = v77;
  sub_10000D52C(&v89, &qword_100222A58, &qword_1001BCC10);
  v76 = v107;
  LOBYTE(v77) = v108;
  Binding.wrappedValue.getter();
  if (v75)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v50 = qword_100230560;
  }

  else
  {
    v50 = static Color.primary.getter();
  }

  v51 = static Edge.Set.all.getter();
  v52 = v73;
  sub_10000F618(v49, v73, &qword_100222A48, &qword_1001BCC08);
  v53 = v52 + *(v71 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  v54 = sub_100009F70(&qword_100222A20, &qword_1001BCBF8);
  v55 = v74;
  v56 = (v74 + *(v54 + 36));
  v57 = *(type metadata accessor for RoundedRectangle() + 20);
  v58 = enum case for RoundedCornerStyle.continuous(_:);
  v59 = type metadata accessor for RoundedCornerStyle();
  (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
  __asm { FMOV            V0.2D, #16.0 }

  *v56 = _Q0;
  *&v56[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  return sub_10000F618(v52, v55, &qword_100222A38, &qword_1001BCC00);
}

void sub_10018EAE0(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 1;
  sub_100009F70(&qword_1002229E8, &qword_1001BCB58);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_100009F70(qword_100218F38, &unk_1001ADA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BC920;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100081738(&v12, v13);

    v7 = sub_1001666DC(1, 5, 1, inited);
    v11 = v7;
    sub_1000109BC(&aBlock, v13);
    sub_1000EB0D0(4, v13, &v11, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001BDDE0;
    v9[4] = v7;
    v17 = sub_100010AAC;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_1000DCA40;
    v16 = &unk_100211DE8;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_10018EE08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10000D60C(v3, v5, v7 & 1);

  sub_100009F70(&qword_1002229E8, &qword_1001BCB58);
  Binding.wrappedValue.getter();
  if (v63 == 1)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Color.primary.getter();
  }

  v13 = Text.foregroundStyle<A>(_:)();
  v60 = v14;
  v61 = v13;
  v16 = v15;
  v59 = v17;
  sub_10000D60C(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v58 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v56 = v20;
  v57 = v19;
  v54 = v22;
  v55 = v21;
  v23 = v16 & 1;
  v24 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  Binding.wrappedValue.getter();
  if (v62 == 1)
  {
    v42 = static Color.primary.getter();
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v42 = qword_100230560;
  }

  v43 = static Edge.Set.all.getter();
  v44 = (a2 + *(sub_100009F70(&qword_100222A68, &qword_1001BCC18) + 36));
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #16.0 }

  *v44 = _Q0;
  *&v44[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  *a2 = v61;
  *(a2 + 8) = v60;
  *(a2 + 16) = v23;
  *(a2 + 24) = v59;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v58;
  *(a2 + 64) = v57;
  *(a2 + 72) = v56;
  result = v54;
  *(a2 + 80) = v55;
  *(a2 + 88) = v54;
  *(a2 + 96) = 0;
  *(a2 + 104) = v24;
  *(a2 + 112) = v26;
  *(a2 + 120) = v28;
  *(a2 + 128) = v30;
  *(a2 + 136) = v32;
  *(a2 + 144) = 0;
  *(a2 + 152) = v33;
  *(a2 + 160) = v35;
  *(a2 + 168) = v37;
  *(a2 + 176) = v39;
  *(a2 + 184) = v41;
  *(a2 + 192) = 0;
  *(a2 + 200) = v42;
  *(a2 + 208) = v43;
  return result;
}

unint64_t sub_10018F2F4()
{
  result = qword_1002229A0;
  if (!qword_1002229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229A0);
  }

  return result;
}

uint64_t sub_10018F388(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  type metadata accessor for PhoneWallpaperView(255, *a1, a1[2], a4);
  type metadata accessor for WatchFacesView(255, v4, v5, v6);
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100222988, &qword_1001BCA48);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100222990, &qword_100222988, &qword_1001BCA48, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_10018F50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_1002229D8, &unk_1001BCB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018F57C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_1002229D8, &unk_1001BCB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018F5F8()
{
  result = qword_100222A28;
  if (!qword_100222A28)
  {
    sub_10000B3DC(&qword_100222A20, &qword_1001BCBF8);
    sub_10018F6B0();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A28);
  }

  return result;
}

unint64_t sub_10018F6B0()
{
  result = qword_100222A30;
  if (!qword_100222A30)
  {
    sub_10000B3DC(&qword_100222A38, &qword_1001BCC00);
    sub_10018F768();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A30);
  }

  return result;
}

unint64_t sub_10018F768()
{
  result = qword_100222A40;
  if (!qword_100222A40)
  {
    sub_10000B3DC(&qword_100222A48, &qword_1001BCC08);
    sub_10018FB8C(&qword_100222A50, &qword_100222A58, &qword_1001BCC10, sub_10018F850);
    sub_10018F880(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A40);
  }

  return result;
}

uint64_t sub_10018F880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018F8C8()
{

  return swift_deallocObject();
}

unint64_t sub_10018F930()
{
  result = qword_100222A70;
  if (!qword_100222A70)
  {
    sub_10000B3DC(&qword_100222A68, &qword_1001BCC18);
    sub_10018F9E8();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A70);
  }

  return result;
}

unint64_t sub_10018F9E8()
{
  result = qword_100222A78;
  if (!qword_100222A78)
  {
    sub_10000B3DC(&qword_100222A80, &qword_1001BCC20);
    sub_10018FB8C(&qword_100222A50, &qword_100222A58, &qword_1001BCC10, sub_10018F850);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A78);
  }

  return result;
}

uint64_t sub_10018FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018FB8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10018FC10()
{
  result = qword_100222AB0;
  if (!qword_100222AB0)
  {
    sub_10000B3DC(&qword_1002229B0, &qword_1001BCB18);
    sub_10000D1EC(&qword_100222AB8, &qword_1002229A8, &qword_1001BCB10, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222AB0);
  }

  return result;
}

uint64_t sub_10018FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_100218950, &unk_1001B5000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009F70(&qword_100219838, &qword_1001B2330);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10018FE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ErrorView(uint64_t a1)
{
  result = qword_100222B58;
  if (!qword_100222B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018FF9C(uint64_t a1)
{
  sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_10000B304(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10019008C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100222AC0 = result;
  *algn_100222AC8 = v1;
  byte_100222AD0 = v2 & 1;
  qword_100222AD8 = v3;
  return result;
}

uint64_t sub_1001900D4()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100222AE0 = result;
  *algn_100222AE8 = v1;
  byte_100222AF0 = v2 & 1;
  qword_100222AF8 = v3;
  return result;
}

uint64_t sub_10019011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a1;
  v27[1] = a2;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_100009F70(&qword_100222BC8, &qword_1001BCCA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  v13 = sub_100009F70(&qword_100222BB8, &qword_1001BCCA0);
  __chkstk_darwin(v13 - 8);
  v15 = v27 - v14;
  v16 = sub_100009F70(&qword_100222BA0, &qword_1001BCC98);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  ContentUnavailableView.init(label:description:actions:)();
  sub_10000D1EC(&qword_100222BC0, &qword_100222BC8, &qword_1001BCCA8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  View.accessibilityIdentifier(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for ErrorView(0);
  sub_100024640(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  LOBYTE(v10) = static ColorScheme.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v10)
  {
    if (qword_100218330 != -1)
    {
      swift_once();
    }

    v20 = qword_100230568;
  }

  else
  {
    v20 = static Color.black.getter();
  }

  v21 = static Edge.Set.all.getter();
  v22 = sub_100191320(v15, v18);
  v23 = &v18[*(v16 + 36)];
  *v23 = v20;
  v23[8] = v21;
  __chkstk_darwin(v22);
  sub_100009F70(&qword_10021E3C0, &qword_1001BA350);
  sub_100191180();
  v24 = sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  v25 = sub_1000DB938();
  v27[2] = v24;
  v27[3] = v25;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_100191398(v18);
}

uint64_t sub_1001905CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100218458 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_10019074C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100218460 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000D60C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100190884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009F70(&qword_10021A8A8, &qword_1001BA440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_100009F70(&qword_10021A8B8, &qword_1001B01D0);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for ErrorView(0) + 24);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000DBA94(v13);
LABEL_8:
        sub_1000DB938();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000DBA94(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100190D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_100219710, &qword_1001B29A0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000DBB04(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_10004329C;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_10019105C()
{
  sub_100009F70(&qword_100222B98, &qword_1001BCC90);
  sub_10000B3DC(&qword_100222BA0, &qword_1001BCC98);
  sub_10000B3DC(&qword_10021E3C0, &qword_1001BA350);
  sub_100191180();
  sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  sub_1000DB938();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100191180()
{
  result = qword_100222BA8;
  if (!qword_100222BA8)
  {
    sub_10000B3DC(&qword_100222BA0, &qword_1001BCC98);
    sub_100191238();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BA8);
  }

  return result;
}

unint64_t sub_100191238()
{
  result = qword_100222BB0;
  if (!qword_100222BB0)
  {
    sub_10000B3DC(&qword_100222BB8, &qword_1001BCCA0);
    sub_10000D1EC(&qword_100222BC0, &qword_100222BC8, &qword_1001BCCA8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BB0);
  }

  return result;
}

uint64_t sub_100191320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100222BB8, &qword_1001BCCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191398(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222BA0, &qword_1001BCC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100191408()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_1001914E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_100191528()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for AppStoreComponent.AppStoreCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_subtitle] = *(v0 + 32);
  sub_100009F70(&qword_100222CD8, &qword_1001BCF38);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v16;
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_metricsQuery] = v8;
  if (v2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = sub_100144F54;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_100009F70(&unk_100222CE0, &unk_1001BCF40);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen] = v11;
  v12 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onStateChange];
  *v12 = v5;
  v12[1] = v4;
  sub_10000D58C(&v17, v15, &qword_100219F00, &qword_1001AF350);
  sub_10000D58C(&v16, v15, &qword_100219F00, &qword_1001AF350);
  sub_1000BF57C(v2, v3);
  sub_1000BF57C(v5, v4);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1001916BC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F70(&unk_100222CF0, &unk_1001BCF50);
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v14];

  v6 = objc_allocWithZone(ASCAdamID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithStringValue:v7];

  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextStandard;
  if (*(v1 + 24))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() _requestWithID:v8 kind:v9 context:v10 productVariantID:v11];

  [v4 setRequest:v12];
  return v4;
}

void sub_10019188C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  os_unfair_lock_lock((v1 + 32));
  sub_10019346C((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen);
  os_unfair_lock_lock((v2 + 32));
  sub_1001934B4((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_100191928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1000F9D10(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_100144F54;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_1000BF57C(a2, a3);
}

double sub_100191A00(void *a1, void *a2)
{
  v45 = a1;
  v4 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v43[1] = v8 + 56;
  v44 = v9;
  v9(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_10013F42C(0, 0, v6, &unk_1001BCE20, v13);

  v14 = *&v10[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1001934E4;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1001934E4;
    *(v19 + 24) = v17;
    *(v14 + 16) = sub_100144F54;
    *(v14 + 24) = v19;

    os_unfair_lock_unlock((v14 + 32));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100144114;
    *(v20 + 24) = v18;
    v21 = sub_100193324;
  }

  else
  {
    os_unfair_lock_unlock((v14 + 32));
    v21 = 0;
    v20 = 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_6;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
LABEL_6:

      goto LABEL_8;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      return sub_1000F9D10(v21, v20);
    }
  }

LABEL_8:
  if (v15)
  {
    v28 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v29._object = 0x80000001001C2390;
    v29._countAndFlagsBits = 0xD000000000000026;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v46);

    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 textMetadataWithTitle:v32 subtitle:0];

    v44(v6, 1, 1, v7);
    v34 = v33;
    sub_1000BF57C(v21, v20);
    v35 = v45;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v34;
    v37[5] = v21;
    v37[6] = v20;
    v37[7] = v35;
    sub_10013F12C(0, 0, v6, &unk_1001BCE30, v37);

    sub_1000F9D10(v21, v20);
  }

  return result;
}

uint64_t sub_100191EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100191F60, v7, v6);
}

uint64_t sub_100191F60()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onStateChange);
  if (v2)
  {
    v2(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100191FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100192094, v9, v8);
}

uint64_t sub_100192094()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = objc_allocWithZone(ASCLocalOffer);
  v0[6] = v3;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001914E4;
  v0[5] = &unk_100212028;
  v6 = _Block_copy(v0 + 2);

  v7 = [v5 initWithMetadata:v4 action:v6];
  _Block_release(v6);
  v8 = [v1 lockup];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lockupWithOffer:v7];
  }

  else
  {
    v10 = 0;
  }

  [v0[11] setLockup:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100192288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100192324, v8, v7);
}

uint64_t sub_100192324()
{
  v1 = v0;
  v2 = *(v0 + 16);

  v3 = [v2 lockup];
  if (v3)
  {
    v4 = v3;
    v29 = [v3 id];
    v28 = [v4 kind];
    v27 = [v4 metrics];
    v26 = [v4 icon];
    v5 = [v4 heading];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 title];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 ageRating];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v1 = v0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 offer];
    if (v8)
    {
      v25 = String._bridgeToObjectiveC()();

      if (v12)
      {
LABEL_13:
        v24 = String._bridgeToObjectiveC()();

LABEL_16:
        v18 = String._bridgeToObjectiveC()();
        if (v16)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        v23 = *(v1 + 16);
        v20 = [objc_allocWithZone(ASCLockup) initWithID:v29 kind:v28 metrics:v27 icon:v26 heading:v25 title:v24 subtitle:v18 ageRating:v19 offer:v17];
        swift_unknownObjectRelease();

        [v23 setLockup:v20];
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21();
}

void sub_1001927A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    sub_100009F70(&qword_100222C88, &qword_1001BCDE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AEB90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;

    sub_100192E34(inited);
    swift_setDeallocating();
    sub_100192F48(inited + 32);
    v7 = objc_allocWithZone(ASCMetricsActivity);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithFields:isa];
  }

  else
  {
    v9 = [objc_allocWithZone(ASCMetricsActivity) init];
  }

  *a2 = v9;
}

uint64_t sub_100192A20(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100192A3C()
{
  sub_100009F70(&unk_100222CF0, &unk_1001BCF50);
  UIViewRepresentableContext.coordinator.getter();
  sub_10019188C();
}

id sub_100192AB8@<X0>(void *a1@<X8>)
{
  result = sub_100191528();
  *a1 = result;
  return result;
}

uint64_t sub_100192AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100193418();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100192B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100193418();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100192BA8(uint64_t a1)
{
  sub_100193418();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100192BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&qword_100222CC8, &qword_1001BCF28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D58C(v4, &v11, &qword_100222CD0, &qword_1001BCF30);
      v5 = v11;
      result = sub_1000D8BC0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100022424(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100192CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&qword_100222CA8, &qword_1001BCE38);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D58C(v4, v13, &unk_100222CB0, &qword_1001BCE40);
      result = sub_1000D8630(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100022424(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100192E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&unk_100222C98, &unk_1001BCDF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100022004(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100192F48(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222C90, &qword_1001BCDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192FB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100192FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000214E4;

  return sub_100192288(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001930C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100193108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D890;

  return sub_100191EC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1001931C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100193218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000214E4;

  return sub_100191FF8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001932EC()
{

  return swift_deallocObject();
}

uint64_t sub_10019334C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100193364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001933AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100193418()
{
  result = qword_100222CC0;
  if (!qword_100222CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222CC0);
  }

  return result;
}

uint64_t sub_10019346C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_100193504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionViewModel(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001935E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AttributionModule(uint64_t a1)
{
  result = qword_100222DB8;
  if (!qword_100222DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001936E4(uint64_t a1)
{
  type metadata accessor for AttributionViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10000B304(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100193784@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for AttributionModule(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100009F70(&qword_100222DF0, &qword_1001BCFC8);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v36 = v1;
  sub_1000DBF78(v6);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v39 = qword_100230570;

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v9, v11, v13 & 1);

  static Font.footnote.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10000D60C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v27 = v35;
  sub_100193B9C(v36, v35);
  v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v29 = swift_allocObject();
  sub_100193D60(v27, v29 + v28);
  v30 = &v8[*(v37 + 36)];
  sub_100009F70(&qword_100222DF8, &qword_1001BD000);
  OpenURLAction.init(handler:)();
  *v30 = KeyPath;
  *v8 = v19;
  *(v8 + 1) = v21;
  v8[16] = v23 & 1;
  *(v8 + 3) = v25;
  sub_100193E44();
  View.accessibilityIdentifier(_:)();
  return sub_100193F34(v8);
}

uint64_t sub_100193AC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for AttributionModule(0) + 20)))
  {

    sub_1000DC608(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }

  return static OpenURLAction.Result.systemAction.getter(v3);
}

uint64_t sub_100193B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193C00()
{
  v1 = *(type metadata accessor for AttributionModule(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for AttributionViewModel(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100193D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionModule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100193AC8(a1, v4);
}

unint64_t sub_100193E44()
{
  result = qword_100222E00;
  if (!qword_100222E00)
  {
    sub_10000B3DC(&qword_100222DF0, &qword_1001BCFC8);
    sub_100193ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E00);
  }

  return result;
}

unint64_t sub_100193ED0()
{
  result = qword_100222E08;
  if (!qword_100222E08)
  {
    sub_10000B3DC(&qword_100222DF8, &qword_1001BD000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E08);
  }

  return result;
}

uint64_t sub_100193F34(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222DF0, &qword_1001BCFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100193FA0()
{
  result = qword_100222E10;
  if (!qword_100222E10)
  {
    sub_10000B3DC(qword_100222E18, &qword_1001BD008);
    sub_100193E44();
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E10);
  }

  return result;
}

uint64_t sub_10019405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1001940C8(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100194138(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1001942B8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}