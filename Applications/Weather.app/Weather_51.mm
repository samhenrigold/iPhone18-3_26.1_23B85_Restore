uint64_t sub_1005726FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC5C00, &qword_100AA1510);
  *(a1 + 80) = sub_10071E970;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = v2;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v4, &unk_100CAF270, &qword_100A31F20);
  if (v5)
  {
    sub_100013188(&v4, a1 + 24);
    *(a1 + 8) = sub_100572814;
    *(a1 + 16) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a1 + 64) = _swiftEmptyArrayStorage;
    *(a1 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100572848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10056CA4C(a1, v8, type metadata accessor for ConditionDetailPlatterViewModel);
  v9 = (a2 + *(type metadata accessor for MoonDetailRootContentView(0) + 32));
  v10 = v9[3];
  v11 = v9[4];
  v12 = sub_1000161C0(v9, v10);
  v19[3] = v10;
  v19[4] = *(v11 + 8);
  v13 = sub_100042FB0(v19);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  sub_10056CA4C(v8, a3, type metadata accessor for ConditionDetailPlatterViewModel);
  v14 = sub_10022C350(&qword_100CA7198, &qword_100A322B8);
  sub_10042F370(v19, a3 + v14[10]);
  *(a3 + v14[9]) = 0;
  v15 = (a3 + v14[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v14[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(a3 + v16) = sub_1004BA278();
  swift_endAccess();
  sub_10057681C(v8, type metadata accessor for ConditionDetailPlatterViewModel);
  return sub_100006F14(v19);
}

uint64_t sub_100572A24()
{
  sub_10056CAA8();
  static Edge.Set.top.getter();
  sub_10022C350(&qword_100CC5B00, &qword_100A613A0);
  sub_100576D78();
  return View.scrollEdgeEffectDisabled(_:for:)();
}

uint64_t sub_100572AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CC5B60, &qword_100A613E0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  if (sub_10056CAA8())
  {
    *v6 = static VerticalAlignment.top.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v7 = sub_10022C350(&qword_100CC5B80, &qword_100A61400);
    sub_100572BD0(a1, &v6[*(v7 + 44)]);
    v6[*(v4 + 36)] = 0;
    sub_10011C0F0(v6, a2, &qword_100CC5B60, &qword_100A613E0);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_100572BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MoonDetailRootContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10022C350(&qword_100CC5B88, &qword_100A61408);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  sub_10056CA4C(a1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonDetailRootContentView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100576B20(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MoonDetailRootContentView);
  v22[1] = sub_100578098;
  v22[2] = v15;
  v23 = 257;
  sub_10022C350(&qword_100CC5B90, &unk_100A61410);
  sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_1005780E8();
  sub_10006768C(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0);
  View.accessibilityShowsLargeContentViewer<A>(_:)();

  v16 = static Edge.Set.trailing.getter();
  v17 = &v13[*(sub_10022C350(&qword_100CC5BA8, &qword_100A61420) + 36)];
  *v17 = v16;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  v18 = static Edge.Set.top.getter();
  v19 = &v13[*(v8 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  sub_1000302D8(v13, v10, &qword_100CC5B88, &qword_100A61408);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = sub_10022C350(&qword_100CC5BB0, &qword_100A61428);
  sub_1000302D8(v10, a2 + *(v20 + 48), &qword_100CC5B88, &qword_100A61408);
  sub_100018144(v13, &qword_100CC5B88, &qword_100A61408);
  return sub_100018144(v10, &qword_100CC5B88, &qword_100A61408);
}

uint64_t sub_100572EF8()
{
  v0 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_10056C7B4(&v5 - v2);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_100018144(v3, &qword_100CA6D28, &qword_100A4CEA0);
}

uint64_t sub_10057300C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100573070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_10056CAA8() & 1) == 0 || (v4 = static Edge.Set.top.getter(), v5 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v4))
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  sub_1000302D8(a1, a2, &qword_100CC5AC0, &qword_100A61368);
  result = sub_10022C350(&qword_100CC5AD0, &unk_100A61378);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_100573120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverviewTableViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CompactOverviewTableView();
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v44 = sub_100857ECC();
  sub_10085808C();
  swift_endAccess();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v43 = v50;
  v14 = v51;
  v42 = v52;
  v39 = v53;
  v41 = v54;
  v40 = v55;
  (*(v5 + 16))(v7, a1, v4);
  sub_1008580AC();
  sub_1008580D0();
  CompactOverviewTableView.init(model:columnSpacing:columnHorizontalPadding:showDividerOnFirstRow:)();
  swift_beginAccess();
  v15 = sub_100857ECC();
  sub_1008580F0();
  swift_endAccess();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v56;
  v16 = v57;
  v37 = v58;
  v17 = v59;
  v36 = v60;
  v35 = v61;
  v49 = v14;
  v48 = v39;
  v18 = v13;
  v19 = *(v8 + 16);
  v20 = v10;
  v21 = v10;
  v22 = v45;
  v19(v21, v18, v45);
  v47 = v16;
  v46 = v17;
  v23 = v49;
  v24 = v48;
  v25 = v43;
  *a2 = v44;
  *(a2 + 8) = v25;
  *(a2 + 16) = v23;
  *(a2 + 24) = v42;
  *(a2 + 32) = v24;
  v26 = v40;
  *(a2 + 40) = v41;
  *(a2 + 48) = v26;
  v27 = sub_10022C350(&qword_100CC5D00, &qword_100A615F8);
  v19((a2 + *(v27 + 48)), v20, v22);
  v28 = a2 + *(v27 + 64);
  v29 = v47;
  v30 = v46;
  v31 = v38;
  *v28 = v15;
  *(v28 + 8) = v31;
  *(v28 + 16) = v29;
  *(v28 + 24) = v37;
  *(v28 + 32) = v30;
  v32 = v35;
  *(v28 + 40) = v36;
  *(v28 + 48) = v32;
  v33 = *(v8 + 8);

  v33(v18, v22);

  v33(v20, v22);
}

uint64_t sub_100573554(uint64_t *a1, uint64_t a2)
{
  result = sub_10056CAA8();
  if (result)
  {
    type metadata accessor for MoonDetailRootContentView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1005735D4(uint64_t *a1, uint64_t a2)
{
  result = sub_10056CAA8();
  if (result)
  {
    type metadata accessor for MoonDetailRootContentView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100573654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = type metadata accessor for MoonScrubberHeaderViewModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MoonScrubberHeaderView(0);
  __chkstk_darwin(v95);
  v98 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v78 - v8;
  __chkstk_darwin(v10);
  v97 = &v78 - v11;
  v12 = type metadata accessor for MoonDetailRootContentView(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CC5DA8, &qword_100A61680);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v96 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v78 - v20);
  *v21 = static Alignment.center.getter();
  v21[1] = v22;
  v23 = sub_10022C350(&qword_100CC5DB0, &qword_100A61688);
  sub_100573F5C(a1, v21 + *(v23 + 44));
  sub_10056CA4C(a1, v15, type metadata accessor for MoonDetailRootContentView);
  v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v25 = swift_allocObject();
  sub_100576B20(v15, v25 + v24, type metadata accessor for MoonDetailRootContentView);
  v26 = *(v17 + 44);
  v93 = v21;
  v27 = (v21 + v26);
  *v27 = sub_100578CC4;
  v27[1] = 0;
  v27[2] = sub_10057863C;
  v27[3] = v25;
  v28 = (a1 + v12[14]);
  v29 = *v28;
  v30 = v28[1];
  v103 = v29;
  v104 = v30;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.projectedValue.getter();
  v90 = *(&v105 + 1);
  v91 = v105;
  v92 = v106;
  v31 = (a1 + v12[15]);
  v32 = *v31;
  v33 = v31[1];
  v103 = *v31;
  v104 = v33;
  State.projectedValue.getter();
  v87 = *(&v105 + 1);
  v88 = v105;
  v89 = v106;
  sub_10042F370(a1 + v12[8], &v105);
  v34 = a1 + v12[7];
  v35 = v34 + *(type metadata accessor for MoonDetailViewModel.Model(0) + 32);
  v94 = v5;
  sub_10056CA4C(v35, v5, type metadata accessor for MoonScrubberHeaderViewModel);
  v86 = sub_10056CAA8();
  v36 = (a1 + v12[9]);
  v37 = *v36;
  v38 = v36[1];
  v103 = v37;
  v84 = v38;
  v104 = v38;
  State.wrappedValue.getter();
  v85 = v101;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v83 = sub_100857F5C();
  v39 = (a1 + v12[10]);
  v41 = v39[1];
  v101 = *v39;
  v40 = v101;
  v102 = v41;
  State.wrappedValue.getter();
  v82 = v100;
  v42 = (a1 + v12[12]);
  v44 = v42[1];
  v101 = *v42;
  v43 = v101;
  v102 = v44;
  State.wrappedValue.getter();
  v81 = v100;
  v45 = (a1 + v12[13]);
  v47 = v45[1];
  v101 = *v45;
  v46 = v101;
  v102 = v47;
  State.wrappedValue.getter();
  v80 = v100;
  v101 = v32;
  v102 = v33;
  State.wrappedValue.getter();
  v79 = v100;
  v101 = v40;
  v102 = v41;
  State.wrappedValue.getter();
  v78 = v100;
  v101 = v43;
  v102 = v44;
  State.wrappedValue.getter();
  v48 = v100;
  v101 = v46;
  v102 = v47;
  State.wrappedValue.getter();
  v49 = v100;
  v101 = v32;
  v102 = v33;
  State.wrappedValue.getter();
  v50 = v100;
  v51.n128_f64[0] = sub_100857F5C();
  v52 = v51.n128_f64[0];
  v53 = sub_100857F98(v51);
  v101 = v37;
  v102 = v84;
  State.wrappedValue.getter();
  v54 = v100;
  v55 = sub_100857FD4();
  v56 = sub_100858000();
  sub_100858020();
  v58 = v57;
  if (v59)
  {
    v58 = 0.0;
  }

  v85 = v85 + v83;
  v84 = v82 + v81 - v80 + v79;
  v60 = v95;
  v61 = *(v95 + 48);
  v62 = (a1 + v12[16]);
  v63 = v62[1];
  v64 = v78 + v48 - v49 + v50 + v52 - v53 + v54 - v55 - v56 - v58;
  v101 = *v62;
  v102 = v63;

  AnyHashable.init<A>(_:)();
  v65 = enum case for CoordinateSpace.named(_:);
  v66 = type metadata accessor for CoordinateSpace();
  (*(*(v66 - 8) + 104))(&v9[v61], v65, v66);
  v67 = v90;
  *v9 = v91;
  *(v9 + 1) = v67;
  *(v9 + 2) = v92;
  v68 = v87;
  *(v9 + 3) = v88;
  *(v9 + 4) = v68;
  *(v9 + 5) = v89;
  sub_100013188(&v105, (v9 + 48));
  sub_100576B20(v94, &v9[v60[7]], type metadata accessor for MoonScrubberHeaderViewModel);
  v9[v60[8]] = v86 & 1;
  *&v9[v60[9]] = v85;
  *&v9[v60[10]] = v84;
  *&v9[v60[11]] = v64;
  v69 = &v9[v60[13]];
  v100 = 0.0;
  State.init(wrappedValue:)();
  v70 = v102;
  *v69 = v101;
  v69[1] = v70;
  v71 = v97;
  sub_100576B20(v9, v97, type metadata accessor for MoonScrubberHeaderView);
  v72 = v93;
  v73 = v96;
  sub_1000302D8(v93, v96, &qword_100CC5DA8, &qword_100A61680);
  v74 = v98;
  sub_10056CA4C(v71, v98, type metadata accessor for MoonScrubberHeaderView);
  v75 = v99;
  sub_1000302D8(v73, v99, &qword_100CC5DA8, &qword_100A61680);
  v76 = sub_10022C350(&qword_100CC5DB8, &qword_100A61690);
  sub_10056CA4C(v74, v75 + *(v76 + 48), type metadata accessor for MoonScrubberHeaderView);
  sub_10057681C(v71, type metadata accessor for MoonScrubberHeaderView);
  sub_100018144(v72, &qword_100CC5DA8, &qword_100A61680);
  sub_10057681C(v74, type metadata accessor for MoonScrubberHeaderView);
  return sub_100018144(v73, &qword_100CC5DA8, &qword_100A61680);
}

uint64_t sub_100573F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_10022C350(&qword_100CC5DC0, &qword_100A61698);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for MoonDetailRootContentView(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10022C350(&qword_100CC5DC8, &qword_100A616A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_10022C350(&qword_100CC5DD0, &qword_100A616A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  if (sub_10056CAA8())
  {
    v33 = v12;
    v21 = a1;
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = sub_100857ECC();
    v32 = v22;
    swift_endAccess();
    v36 = v22;
    sub_10056CA4C(v21, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonDetailRootContentView);
    v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v24 = swift_allocObject();
    sub_100576B20(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for MoonDetailRootContentView);
    sub_10022C350(&qword_100CA4680, &unk_100A59690);
    v25 = type metadata accessor for EmptyVisualEffect();
    v26 = sub_100576898(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
    v37 = v25;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    View.visualEffect<A>(_:)();
    a1 = v21;

    (*(v33 + 32))(v20, v14, v11);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  sub_10001B350(v20, v27, 1, v11);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v28 = sub_10022C350(&qword_100CC5DD8, &qword_100A616B0);
  sub_100574838(a1, &v8[*(v28 + 44)]);
  sub_1000302D8(v20, v17, &qword_100CC5DD0, &qword_100A616A8);
  sub_1000302D8(v8, v5, &qword_100CC5DC0, &qword_100A61698);
  v29 = v35;
  sub_1000302D8(v17, v35, &qword_100CC5DD0, &qword_100A616A8);
  v30 = sub_10022C350(&qword_100CC5DE0, &qword_100A616B8);
  sub_1000302D8(v5, v29 + *(v30 + 48), &qword_100CC5DC0, &qword_100A61698);
  sub_100018144(v8, &qword_100CC5DC0, &qword_100A61698);
  sub_100018144(v20, &qword_100CC5DD0, &qword_100A616A8);
  sub_100018144(v5, &qword_100CC5DC0, &qword_100A61698);
  return sub_100018144(v17, &qword_100CC5DD0, &qword_100A616A8);
}

uint64_t sub_100574458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a3 + *(type metadata accessor for MoonDetailRootContentView(0) + 64));
  v9 = v8[1];
  v19[0] = *v8;
  v19[1] = v9;

  AnyHashable.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for CoordinateSpace.named(_:), v4);
  GeometryProxy.frame(in:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_100574634(v11, v13, v15, v17);
  type metadata accessor for EmptyVisualEffect();
  sub_100576898(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

double sub_100574634(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = sub_100857F5C();
  v9 = 0.0;
  if (sub_10056CAA8())
  {
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    if (CGRectGetMinY(v17) < v8)
    {
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      MinY = CGRectGetMinY(v18);
      type metadata accessor for MoonDetailRootContentView(0);
      sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      v11 = v16 + v16 - v16 + v16;
      v12 = v8 - MinY;
      v9 = v12 + 0.0;
      v13 = sub_10056CD6C();
      if (v12 >= v11)
      {
        v14 = v9 - v13;
        if (v14 <= 0.0)
        {
          return v16 + v16 - v16 + v16;
        }

        else
        {
          return v11 + v14;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_100574838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for MoonContainerView(0);
  __chkstk_darwin(v3);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v72 - v6);
  if (sub_10056CAA8())
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100858048();
  }

  else
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100858020();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v80 = v90;
  v79 = v92;
  v78 = v94;
  v77 = v95;
  v89 = 1;
  v88 = v91;
  v87 = v93;
  v8 = type metadata accessor for MoonDetailRootContentView(0);
  v9 = a1 + v8[7];
  v10 = type metadata accessor for MoonDetailViewModel.Model(0);
  sub_10056CA4C(v9 + *(v10 + 28), v7 + v3[8], type metadata accessor for MoonViewModel);
  sub_10042F370(a1 + v8[8], v7 + v3[9]);
  v11 = (a1 + v8[10]);
  v12 = *v11;
  v13 = v11[1];
  v96 = *v11;
  v97 = v13;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  v14 = v86[0];
  v15 = (a1 + v8[12]);
  v16 = *v15;
  v17 = v15[1];
  v96 = *v15;
  v97 = v17;
  State.wrappedValue.getter();
  v18 = v14 + v86[0];
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = sub_100857F5C();
  v20 = v19 + sub_100858048();
  v21 = v3[12];
  v22 = (a1 + v8[16]);
  v23 = v22[1];
  v96 = *v22;
  v97 = v23;

  AnyHashable.init<A>(_:)();
  v24 = enum case for CoordinateSpace.named(_:);
  v25 = type metadata accessor for CoordinateSpace();
  (*(*(v25 - 8) + 104))(v7 + v21, v24, v25);
  v96 = v12;
  v97 = v13;
  State.wrappedValue.getter();
  v26 = v85;
  v96 = v16;
  v97 = v17;
  State.wrappedValue.getter();
  v27 = v26 + v85;
  v28 = (a1 + v8[13]);
  v30 = v28[1];
  v96 = *v28;
  v29 = v96;
  v97 = v30;
  State.wrappedValue.getter();
  v31 = v27 - v85;
  v32 = (a1 + v8[15]);
  v34 = v32[1];
  v96 = *v32;
  v33 = v96;
  v97 = v34;
  State.wrappedValue.getter();
  v35 = v31 + v85;
  v96 = v12;
  v97 = v13;
  State.wrappedValue.getter();
  v36 = v85;
  v96 = v16;
  v97 = v17;
  State.wrappedValue.getter();
  v37 = v36 + v85;
  v96 = v29;
  v97 = v30;
  State.wrappedValue.getter();
  v38 = v37 - v85;
  v96 = v33;
  v97 = v34;
  State.wrappedValue.getter();
  v39 = v38 + v85;
  v40.n128_f64[0] = sub_100857F5C();
  v41 = v39 + v40.n128_f64[0] - sub_100857F98(v40);
  v96 = v12;
  v97 = v13;
  State.wrappedValue.getter();
  v42 = v85;
  v96 = v16;
  v97 = v17;
  State.wrappedValue.getter();
  v43 = v42 + v85;
  v96 = v29;
  v97 = v30;
  State.wrappedValue.getter();
  v44 = v43 - v85;
  v96 = v33;
  v97 = v34;
  State.wrappedValue.getter();
  v45 = v44 + v85;
  v46.n128_f64[0] = sub_100857F5C();
  v47 = v45 + v46.n128_f64[0] - sub_100857F98(v46);
  v48 = (a1 + v8[9]);
  v49 = *v48;
  v50 = v48[1];
  v96 = v49;
  v97 = v50;
  State.wrappedValue.getter();
  v51 = v47 + v85;
  v52 = v51 - sub_100857FD4();
  *v7 = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = v7 + v3[5];
  *v55 = KeyPath;
  v55[8] = 0;
  v56 = v7 + v3[6];
  *v56 = v54;
  v56[8] = 0;
  v57 = v7 + v3[7];
  LOBYTE(v85) = 0;
  State.init(wrappedValue:)();
  v58 = v97;
  *v57 = v96;
  *(v57 + 1) = v58;
  *(v7 + v3[10]) = v18;
  *(v7 + v3[11]) = v20;
  *(v7 + v3[13]) = v35;
  *(v7 + v3[14]) = v41;
  *(v7 + v3[15]) = v52;
  *(v7 + v3[16]) = 0;
  if (sub_10056CAA8())
  {
    sub_1008581FC();
  }

  else
  {
    sub_100858220();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v76 = v96;
  v75 = v98;
  v74 = v100;
  v73 = v101;
  LOBYTE(v85) = 1;
  v84 = v97;
  v83 = v99;
  v59 = v89;
  v60 = v88;
  v61 = v87;
  v62 = v81;
  sub_10056CA4C(v7, v81, type metadata accessor for MoonContainerView);
  v63 = LOBYTE(v85);
  v64 = v84;
  v65 = v83;
  v66 = v82;
  *v82 = 0;
  *(v66 + 8) = v59;
  v66[2] = v80;
  *(v66 + 24) = v60;
  v66[4] = v79;
  *(v66 + 40) = v61;
  v67 = v77;
  v66[6] = v78;
  v66[7] = v67;
  v68 = sub_10022C350(&qword_100CC5DE8, &qword_100A616F8);
  sub_10056CA4C(v62, v66 + *(v68 + 48), type metadata accessor for MoonContainerView);
  v69 = v66 + *(v68 + 64);
  *v69 = 0;
  v69[8] = v63;
  *(v69 + 2) = v76;
  v69[24] = v64;
  *(v69 + 4) = v75;
  v69[40] = v65;
  v70 = v73;
  *(v69 + 6) = v74;
  *(v69 + 7) = v70;
  sub_10057681C(v7, type metadata accessor for MoonContainerView);
  return sub_10057681C(v62, type metadata accessor for MoonContainerView);
}

uint64_t sub_1005750B0(uint64_t *a1, uint64_t a2)
{
  result = sub_10056CAA8();
  if (result)
  {
    type metadata accessor for MoonDetailRootContentView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100575130(uint64_t *a1, uint64_t a2)
{
  result = sub_10056CAA8();
  if (result)
  {
    type metadata accessor for MoonDetailRootContentView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1005751B0@<X0>(void *a1@<X8>)
{
  type metadata accessor for LocalCoordinateSpace();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100005888();
  static CoordinateSpaceProtocol<>.local.getter();
  sub_100003984();
  GeometryProxy.frame<A>(in:)();
  v4 = v3;
  v5 = sub_100003984();
  result = v6(v5);
  *a1 = v4;
  return result;
}

uint64_t sub_100575280(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MoonDetailRootContentView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  return State.wrappedValue.setter();
}

uint64_t sub_1005752F8(uint64_t (*a1)(void))
{
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  v4 = (v1 + *(a1(0) + 24));
  v5 = *v4;
  if (*(v4 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    sub_100016B34(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    sub_100003984();
    swift_getAtKeyPath();
    v8 = sub_100021008();
    v9(v8);
    LOBYTE(v5) = v11;
  }

  return v5 & 1;
}

uint64_t sub_100575418()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MoonContainerView(0);
  v6 = v0 + *(v5 + 32);
  if (*(v6 + *(type metadata accessor for MoonViewModel(0) + 32)) != 1)
  {
    goto LABEL_4;
  }

  v7 = v0 + *(v5 + 20);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v8, 0);
    (*(v2 + 8))(v4, v1);
    if (v12[15])
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = sub_1005752F8(type metadata accessor for MoonContainerView) ^ 1;
    return v9 & 1;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1005755C8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_10022C350(&qword_100CC5EC8, &qword_100A61818);
  return sub_100575614(v2, a1 + *(v5 + 44));
}

uint64_t sub_100575614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for MoonContainerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10022C350(&qword_100CC5ED0, &qword_100A61820);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_10022C350(&qword_100CC5ED8, &qword_100A61828);
  sub_100575884(a1, &v11[*(v12 + 44)]);
  v13 = static VerticalAlignment.center.getter();
  sub_10056CA4C(a1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoonContainerView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_100576B20(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MoonContainerView);
  sub_1000302D8(v11, v8, &qword_100CC5ED0, &qword_100A61820);
  v16 = v20;
  sub_1000302D8(v8, v20, &qword_100CC5ED0, &qword_100A61820);
  v17 = v16 + *(sub_10022C350(&qword_100CC5EE0, &unk_100A61830) + 48);
  *v17 = v13;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v17 + 24) = 0;
  *(v17 + 32) = 1;
  *(v17 + 40) = sub_1005788B8;
  *(v17 + 48) = v15;

  sub_100018144(v11, &qword_100CC5ED0, &qword_100A61820);

  return sub_100018144(v8, &qword_100CC5ED0, &qword_100A61820);
}

uint64_t sub_100575884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for MoonContainerView(0);
  v4 = v3 - 8;
  v60 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = v5;
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MoonView.RenderBehavior();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MoonView();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(&qword_100CC5EE8, &qword_100A61840);
  __chkstk_darwin(v54);
  v17 = &v52 - v16;
  v58 = sub_10022C350(&qword_100CC5EF0, &qword_100A61848);
  __chkstk_darwin(v58);
  v55 = &v52 - v18;
  v65 = sub_10022C350(&qword_100CC5EF8, &qword_100A61850);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v59 = &v52 - v22;
  v23 = *(v11 + 16);
  v53 = a1 + *(v4 + 40);
  v23(v13, v21);
  v24 = a1;
  (*(v7 + 104))(v9, enum case for MoonView.RenderBehavior.pauseAnimationWhenIdle(_:), v6);
  MoonView.init(date:renderBehavior:forceUpdateFlag:)();
  if (sub_100575418())
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1008582FC();
  }

  else
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100858320();
  }

  if (sub_100575418())
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1008582FC();
  }

  else
  {
    if (qword_100CA2910 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100858320();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v56 + 32))(v17, v15, v57);
  v25 = &v17[*(v54 + 36)];
  v26 = v70;
  *v25 = v69;
  *(v25 + 1) = v26;
  *(v25 + 2) = v71;
  v27 = *(v53 + *(type metadata accessor for MoonViewModel(0) + 20)) * 0.0174532925;
  static UnitPoint.center.getter();
  v29 = v28;
  v31 = v30;
  v32 = v55;
  sub_10011C0F0(v17, v55, &qword_100CC5EE8, &qword_100A61840);
  v33 = v32 + *(v58 + 36);
  *v33 = v27;
  *(v33 + 8) = v29;
  *(v33 + 16) = v31;
  v34 = v24;
  v35 = v64;
  sub_10056CA4C(v34, v64, type metadata accessor for MoonContainerView);
  v36 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v37 = swift_allocObject();
  sub_100576B20(v35, v37 + v36, type metadata accessor for MoonContainerView);
  sub_10022C350(&qword_100CA4738, &qword_100A2E8E8);
  sub_100578B7C();
  v38 = sub_10022E824(&qword_100CA4740, &qword_100A2E8F0);
  v39 = type metadata accessor for EmptyVisualEffect();
  v40 = sub_100576898(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v67 = v39;
  v68 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v38;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v59;
  View.visualEffect<A>(_:)();

  sub_100018144(v32, &qword_100CC5EF0, &qword_100A61848);
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v62;
  v46 = v65;
  v44(v62, v42, v65);
  v47 = v66;
  *v66 = 0;
  *(v47 + 8) = 1;
  v48 = sub_10022C350(&qword_100CC5F18, &qword_100A61858);
  v44(v47 + *(v48 + 48), v45, v46);
  v49 = v47 + *(v48 + 64);
  *v49 = 0;
  v49[8] = 1;
  v50 = *(v43 + 8);
  v50(v42, v46);
  return (v50)(v45, v46);
}

uint64_t sub_10057611C@<X0>(uint64_t a2@<X8>)
{
  v21[1] = a2;
  v2 = sub_10022C350(&qword_100CA4740, &qword_100A2E8F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  type metadata accessor for MoonContainerView(0);
  GeometryProxy.frame(in:)();
  sub_100576320(v6, v7, v8, v9);
  GeometryProxy.frame(in:)();
  sub_100576320(v10, v11, v12, v13);
  static UnitPoint.top.getter();
  v14 = type metadata accessor for EmptyVisualEffect();
  v15 = sub_100576898(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.scaleEffect(x:y:anchor:)();
  GeometryProxy.frame(in:)();
  sub_1005764AC(v16, v17, v18, v19);
  v21[2] = v14;
  v21[3] = v15;
  swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  return (*(v3 + 8))(v5, v2);
}

double sub_100576320(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = 1.0;
  if (sub_100575418())
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    MinY = CGRectGetMinY(v24);
    v11 = type metadata accessor for MoonContainerView(0);
    v12 = *(v4 + *(v11 + 44));
    if (MinY < v12)
    {
      v13 = v11;
      v25.origin.x = a1;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      v14 = CGRectGetMinY(v25);
      if (qword_100CA2910 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = sub_100857FD4();
      v16 = *(v4 + *(v13 + 52));
      v17 = v12 - v14 + 0.0 - v16;
      if (v17 >= 0.0)
      {
        v18 = *(v4 + *(v13 + 60)) - v16;
        if (sub_100575418())
        {
          v19 = sub_1008582FC();
        }

        else
        {
          v19 = sub_100858320();
        }

        v20 = fabs(v17 / v18);
        v21 = 1.0 - v15 / v19;
        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        v22 = 0.0;
        if (v17 / v18 != 0.0)
        {
          v22 = v20;
        }

        return 1.0 - v22 * v21;
      }
    }
  }

  return v9;
}

double sub_1005764AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = 0.0;
  if (sub_100575418())
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    MinY = CGRectGetMinY(v19);
    v11 = type metadata accessor for MoonContainerView(0);
    v12 = *(v4 + *(v11 + 44));
    if (MinY < v12)
    {
      v13 = v11;
      v20.origin.x = a1;
      v20.origin.y = a2;
      v20.size.width = a3;
      v20.size.height = a4;
      v14 = v12 - CGRectGetMinY(v20);
      v9 = v14 + 0.0;
      v15 = *(v4 + *(v13 + 52));
      v16 = v14 + 0.0 - v15;
      if (v16 >= 0.0)
      {
        v17 = *(v4 + *(v13 + 56));
        if (v14 >= v17)
        {
          return v9 + v15 - v17;
        }

        else
        {
          return v9 - v16;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_100576590(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100576600(uint64_t a1, char a2)
{
  type metadata accessor for MoonContainerView(0);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_100576688@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = sub_10022C350(&qword_100CC5EC0, &qword_100A61810);
  *(a1 + 80) = sub_10071E984;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = v5;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v7, &unk_100CAF270, &qword_100A31F20);
  if (v8)
  {
    sub_100013188(&v7, a1 + 24);
    *(a1 + 8) = sub_1005788B0;
    *(a1 + 16) = v4;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a1 + 64) = _swiftEmptyArrayStorage;
    *(a1 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10057681C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100576898(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = sub_1000201F8();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

void sub_100576904(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    sub_10009BF80(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MoonDetailViewModel.Model(319);
      if (v3 <= 0x3F)
      {
        sub_1003DB098();
        if (v4 <= 0x3F)
        {
          sub_10009BF80(319, &qword_100CAD690, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100576A4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100576A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {

    return sub_1004372D4(a2, a3);
  }

  else
  {
  }
}

uint64_t sub_100576B20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100576B7C(double a1)
{
  sub_100014914();
  sub_10001164C();

  return sub_10056D1FC(v1 + v3, a1);
}

unint64_t sub_100576BF4()
{
  result = qword_100CC5AE0;
  if (!qword_100CC5AE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5AD0, &unk_100A61378);
    v4[0] = sub_10006768C(&qword_100CC5AD8, &qword_100CC5AC0, &qword_100A61368);
    v4[1] = &protocol witness table for _SafeAreaIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5AE0);
  }

  return result;
}

unint64_t sub_100576CB8()
{
  result = qword_100CC5B18;
  if (!qword_100CC5B18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5B10, &qword_100A613B0);
    v4[0] = sub_10006768C(&qword_100CC5B20, &qword_100CC5B28, &unk_100A613B8);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5B18);
  }

  return result;
}

unint64_t sub_100576D78()
{
  result = qword_100CC5B40;
  if (!qword_100CC5B40)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CC5B00, &qword_100A613A0);
    v4[2] = sub_10022E824(&qword_100CC5AF0, &qword_100A61390);
    v4[3] = sub_10006768C(&qword_100CC5B30, &qword_100CC5AF0, &qword_100A61390);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10006768C(&qword_100CBC3B0, &qword_100CBC3B8, &qword_100A52C60);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5B40);
  }

  return result;
}

unint64_t sub_100576EA8()
{
  result = qword_100CC5B50;
  if (!qword_100CC5B50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC5B48, &qword_100A613D8);
    v4[0] = sub_100576F2C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CC5B50);
  }

  return result;
}

unint64_t sub_100576F2C()
{
  result = qword_100CC5B58;
  if (!qword_100CC5B58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5B60, &qword_100A613E0);
    v4[0] = sub_10006768C(&qword_100CC5B68, &qword_100CC5B70, &qword_100A613E8);
    v4[1] = sub_10006768C(&qword_100CBDD58, &qword_100CBDD60, &qword_100A613F0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5B58);
  }

  return result;
}

uint64_t sub_100577010()
{
  type metadata accessor for MoonDetailRootContentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  sub_100017A54(v0[5]);
  sub_100017A54(v0[6]);
  v7 = v3 + v0[7];
  type metadata accessor for MoonDetailSelectedDate(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v8 + 8))(v7);
  }

  v9 = type metadata accessor for MoonDetailViewModel.Model(0);

  v10 = v7 + v9[7];
  v11 = type metadata accessor for Date();
  sub_1000037E8();
  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = type metadata accessor for MoonViewModel(0);
  v15 = *(v14 + 24);
  if (!sub_10000CAFC(v10 + v15))
  {
    v13(v10 + v15, v11);
  }

  v16 = *(v14 + 28);
  if (!sub_10000CAFC(v10 + v16))
  {
    v13(v10 + v16, v11);
  }

  v17 = v7 + v9[8];

  v18 = type metadata accessor for MoonScrubberHeaderViewModel(0);
  v13(v17 + *(v18 + 32), v11);
  v141 = v13;
  v13(v17 + *(v18 + 36), v11);
  v19 = v9[9];
  v20 = type metadata accessor for OverviewTableViewModel();
  sub_1000037E8();
  v22 = *(v21 + 8);
  v22(v7 + v19, v20);
  v143 = v9;
  v23 = v7 + v9[10];
  v24 = type metadata accessor for MoonCompactOverviewTableViewModel(0);
  if (!sub_100024D10(v23, 1, v24))
  {
    v22(v23, v20);
    v25 = *(v24 + 20);
    if (!sub_100024D10(v23 + v25, 1, v20))
    {
      v22(v23 + v25, v20);
    }
  }

  v26 = v7 + v143[11];
  sub_100576A4C(*v26, *(v26 + 8), *(v26 + 16));

  v27 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v28 = v27[6];
  v29 = type metadata accessor for WeatherDescription();
  if (!sub_100024D10(v26 + v28, 1, v29))
  {
    sub_100003B20();
    (*(v30 + 8))(v26 + v28, v29);
  }

  v31 = v26 + v27[7];
  v32 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_100003B20();
      (*(v33 + 8))(v31, v29);
      goto LABEL_36;
    case 1u:
      goto LABEL_30;
    case 2u:
      type metadata accessor for AttributedString();
      goto LABEL_35;
    case 3u:
      sub_10022C350(&qword_100CB5C78, &qword_100A49428);
      goto LABEL_35;
    case 4u:
      v137 = v29;
      if (*(v31 + 8))
      {
      }

      v135 = type metadata accessor for DetailComponentContainerViewModel(0);
      v34 = v31 + *(v135 + 20);
      type metadata accessor for NewsArticleComponentViewModel(0);
      sub_1000201F8();
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v127 = type metadata accessor for NewsArticleComponentContentViewModel(0);
        v35 = v127[5];
        v36 = type metadata accessor for URL();
        v130 = v35;
        v37 = v34 + v35;
        v38 = v36;
        if (!sub_100024D10(v37, 1, v36))
        {
          sub_100003B20();
          (*(v39 + 8))(v34 + v130);
        }

        v131 = v34;

        v126 = *(*(v38 - 8) + 8);
        v126(v34 + v127[7], v38);
        v40 = v127[8];
        if (!sub_100024D10(v131 + v40, 1, v38))
        {
          v126(v131 + v40, v38);
        }
      }

      v41 = *(v135 + 24);
      v42 = type metadata accessor for DetailComponentAction(0);
      v29 = v137;
      if (sub_100024D10(v31 + v41, 1, v42))
      {
        goto LABEL_36;
      }

      type metadata accessor for URL();
      goto LABEL_97;
    case 5u:
      if (*(v31 + 24))
      {
        sub_10010CD64(*v31, *(v31 + 8), *(v31 + 16));
      }

      sub_100576A64(*(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 89));
      goto LABEL_36;
    case 6u:
      type metadata accessor for PrecipitationTotalPlatterViewModel();
LABEL_35:
      sub_100003D98();
      (*(v44 + 8))(v31, v45);
      goto LABEL_36;
    case 7u:
      type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
      v43 = swift_getEnumCaseMultiPayload();
      if (v43 == 1)
      {

        v77 = type metadata accessor for ConditionDetailMapViewModel(0);
        v138 = *(v77 + 20);
        type metadata accessor for Location();
        sub_100003D98();
        (*(v78 + 8))(v31 + v138);
        v136 = v77;
        v79 = v31 + *(v77 + 24);
        v139 = type metadata accessor for WeatherData(0);
        if (!sub_100024D10(v79, 1, v139))
        {

          v132 = v139[5];
          v128 = type metadata accessor for Locale();
          if (!sub_100024D10(v79 + v132, 1, v128))
          {
            sub_100003B20();
            (*(v80 + 8))(v79 + v81);
          }

          v133 = v139[6];
          type metadata accessor for WeatherDataModel();
          sub_100003D98();
          (*(v82 + 8))(v79 + v133);
          v134 = v79;
          v83 = v79 + v139[7];
          v84 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
          v129 = v83;
          v85 = v83;
          v86 = v84;
          if (!sub_100024D10(v85, 1, v84))
          {
            sub_1000139A8();
            v87();
            v88 = *(v86 + 48);
            v89 = type metadata accessor for WeatherDataRelevancy(0);
            if (!sub_100024D10(v129 + v88, 1, v89))
            {
              sub_1000139A8();
              v90();
            }
          }

          v91 = v134 + v139[8];
          type metadata accessor for WeatherData.WeatherStatisticsState(0);
          sub_1000201F8();
          v92 = swift_getEnumCaseMultiPayload();
          if (v92 == 1)
          {
            type metadata accessor for WeatherStatisticsModel();
            sub_100003D98();
            (*(v111 + 8))(v91);
          }

          else if (!v92)
          {
          }

          v112 = v134 + v139[9];
          v113 = type metadata accessor for WeatherDataOverrides(0);
          v140 = v112;
          v114 = v112;
          v115 = v113;
          if (!sub_100024D10(v114, 1, v113))
          {
            if (!sub_10000CAFC(v140))
            {
              v141(v140, v11);
            }

            v116 = *(v115 + 20);
            if (!sub_10000CAFC(v140 + v116))
            {
              v141(v140 + v116, v11);
            }
          }
        }

        v41 = *(v136 + 32);
        type metadata accessor for WeatherMapOverlayKind();
LABEL_97:
        sub_100003D98();
        (*(v117 + 8))(v31 + v41, v118);
      }

      else if (!v43)
      {

LABEL_30:
      }

LABEL_36:
      v46 = v26 + v27[8];
      if (!sub_100024D10(v46, 1, v32))
      {
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_100003B20();
            (*(v47 + 8))(v46, v29);
            break;
          case 1u:
            goto LABEL_53;
          case 2u:
            type metadata accessor for AttributedString();
            goto LABEL_58;
          case 3u:
            sub_10022C350(&qword_100CB5C78, &qword_100A49428);
            goto LABEL_58;
          case 4u:
            if (*(v46 + 8))
            {
            }

            v48 = type metadata accessor for DetailComponentContainerViewModel(0);
            v49 = v46 + *(v48 + 20);
            type metadata accessor for NewsArticleComponentViewModel(0);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              v50 = type metadata accessor for NewsArticleComponentContentViewModel(0);
              v51 = v50[5];
              v52 = type metadata accessor for URL();
              if (!sub_100024D10(v49 + v51, 1, v52))
              {
                sub_100003B20();
                (*(v53 + 8))(v49 + v51, v52);
              }

              v54 = (*(v52 - 8) + 8);
              v142 = *v54;
              (*v54)(v49 + v50[7], v52);
              v55 = v50[8];
              if (!sub_100024D10(v49 + v55, 1, v52))
              {
                v142(v49 + v55, v52);
              }
            }

            v56 = *(v48 + 24);
            v57 = type metadata accessor for DetailComponentAction(0);
            if (sub_100024D10(v46 + v56, 1, v57))
            {
              break;
            }

            type metadata accessor for URL();
            goto LABEL_105;
          case 5u:
            if (*(v46 + 24))
            {
              sub_10010CD64(*v46, *(v46 + 8), *(v46 + 16));
            }

            sub_100576A64(*(v46 + 32), *(v46 + 40), *(v46 + 48), *(v46 + 56), *(v46 + 64), *(v46 + 72), *(v46 + 80), *(v46 + 88), *(v46 + 89));
            break;
          case 6u:
            type metadata accessor for PrecipitationTotalPlatterViewModel();
LABEL_58:
            sub_100003D98();
            (*(v59 + 8))(v46, v60);
            break;
          case 7u:
            type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
            v58 = swift_getEnumCaseMultiPayload();
            if (v58 == 1)
            {

              v93 = type metadata accessor for ConditionDetailMapViewModel(0);
              v94 = v93[5];
              type metadata accessor for Location();
              sub_100003D98();
              (*(v95 + 8))(v46 + v94);
              v96 = v46 + v93[6];
              v97 = type metadata accessor for WeatherData(0);
              if (!sub_100024D10(v96, 1, v97))
              {

                v98 = v97[5];
                v99 = type metadata accessor for Locale();
                if (!sub_100024D10(v96 + v98, 1, v99))
                {
                  sub_100003B20();
                  (*(v100 + 8))(v96 + v98, v99);
                }

                v101 = v97[6];
                type metadata accessor for WeatherDataModel();
                sub_100003D98();
                (*(v102 + 8))(v96 + v101);
                v103 = v96 + v97[7];
                v104 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
                if (!sub_100024D10(v103, 1, v104))
                {
                  sub_1000139A8();
                  v105();
                  v106 = *(v104 + 48);
                  v107 = type metadata accessor for WeatherDataRelevancy(0);
                  if (!sub_100024D10(v103 + v106, 1, v107))
                  {
                    sub_1000139A8();
                    v108();
                  }
                }

                v109 = v96 + v97[8];
                type metadata accessor for WeatherData.WeatherStatisticsState(0);
                sub_1000201F8();
                v110 = swift_getEnumCaseMultiPayload();
                if (v110 == 1)
                {
                  type metadata accessor for WeatherStatisticsModel();
                  sub_100003D98();
                  (*(v119 + 8))(v109);
                }

                else if (!v110)
                {
                }

                v120 = v96 + v97[9];
                v121 = type metadata accessor for WeatherDataOverrides(0);
                if (!sub_100024D10(v120, 1, v121))
                {
                  if (!sub_10000CAFC(v120))
                  {
                    sub_1000139A8();
                    v122();
                  }

                  if (!sub_10000CAFC(v120 + *(v121 + 20)))
                  {
                    sub_1000139A8();
                    v123();
                  }
                }
              }

              v56 = v93[8];
              type metadata accessor for WeatherMapOverlayKind();
LABEL_105:
              sub_100003D98();
              (*(v124 + 8))(v46 + v56, v125);
            }

            else if (!v58)
            {

LABEL_53:
            }

            break;
          default:
            break;
        }
      }

      v61 = v143;

      v62 = v7 + v143[13];
      v63 = type metadata accessor for DetailComponentContainerViewModel(0);
      if (!sub_100024D10(v62, 1, v63))
      {
        if (*(v62 + 8))
        {
        }

        v64 = v62 + *(v63 + 20);
        type metadata accessor for NewsArticleComponentViewModel(0);
        sub_1000201F8();
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v65 = type metadata accessor for NewsArticleComponentContentViewModel(0);
          v66 = v65[5];
          v67 = type metadata accessor for URL();
          if (!sub_100024D10(v64 + v66, 1, v67))
          {
            sub_100003B20();
            (*(v68 + 8))(v64 + v66, v67);
          }

          v69 = *(*(v67 - 8) + 8);
          v69(v64 + v65[7], v67);
          v70 = v65[8];
          if (!sub_100024D10(v64 + v70, 1, v67))
          {
            v69(v64 + v70, v67);
          }
        }

        v71 = *(v63 + 24);
        v72 = type metadata accessor for DetailComponentAction(0);
        v61 = v143;
        if (!sub_100024D10(v62 + v71, 1, v72))
        {
          type metadata accessor for URL();
          sub_100003D98();
          (*(v73 + 8))(v62 + v71);
        }
      }

      v74 = v61[14];
      type metadata accessor for Location();
      sub_100003D98();
      (*(v75 + 8))(v7 + v74);
      sub_100006F14((v3 + v0[8]));
      sub_10001673C(v0[9]);

      sub_10001673C(v0[10]);

      sub_10001673C(v0[11]);

      sub_10001673C(v0[12]);

      sub_10001673C(v0[13]);

      sub_10001673C(v0[14]);

      sub_10001673C(v0[15]);

      sub_10001673C(v0[16]);

      return swift_deallocObject();
    default:
      goto LABEL_36;
  }
}

uint64_t sub_100578098()
{
  sub_100014914();
  sub_10001164C();

  return sub_100572EF8();
}

unint64_t sub_1005780E8()
{
  result = qword_100CC5B98;
  if (!qword_100CC5B98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5B90, &unk_100A61410);
    v4[0] = sub_100578174();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5B98);
  }

  return result;
}

unint64_t sub_100578174()
{
  result = qword_100CC5BA0;
  if (!qword_100CC5BA0)
  {
    result = swift_getWitnessTable("U^\x1B", &type metadata for CloseButton, v0, v1);
    atomic_store(result, &qword_100CC5BA0);
  }

  return result;
}

uint64_t sub_100578224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100014914();
  sub_10001164C();
  return sub_100570F3C(a1, a2);
}

uint64_t sub_1005782E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  a3(0);
  sub_10001164C();

  return a4(a1, a2, v4 + v7);
}

uint64_t sub_100578394(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100014914();
  sub_10001164C();

  return a2(a1, v2 + v4);
}

uint64_t sub_100578444(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, __n128))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v2 + v5);
  v7.n128_u64[0] = *(v2 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_100578550(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100014914();
  sub_10001164C();

  return a2(a1, v2 + v4);
}

void sub_1005786D8(uint64_t a1)
{
  sub_100578820(319);
  if (v1 <= 0x3F)
  {
    sub_10009BF80(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10009BF80(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MoonViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_1003DB098();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CoordinateSpace();
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

void sub_100578820(uint64_t a1)
{
  if (!qword_100CA3C68)
  {
    type metadata accessor for LayoutDirection();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA3C68);
    }
  }
}

uint64_t sub_1005788B8(uint64_t a1)
{
  type metadata accessor for MoonContainerView(0);
  sub_10001164C();

  return sub_100576590(a1);
}

uint64_t sub_100578944()
{
  type metadata accessor for MoonContainerView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  sub_100017A54(v0[5]);
  sub_100017A54(v0[6]);
  sub_10001673C(v0[7]);

  v6 = v4 + v0[8];
  v7 = type metadata accessor for Date();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = type metadata accessor for MoonViewModel(0);
  v11 = *(v10 + 24);
  if (!sub_100024D10(v6 + v11, 1, v7))
  {
    v9(v6 + v11, v7);
  }

  v12 = *(v10 + 28);
  if (!sub_100024D10(v6 + v12, 1, v7))
  {
    v9(v6 + v12, v7);
  }

  sub_100006F14((v4 + v0[9]));
  v13 = v0[12];
  type metadata accessor for CoordinateSpace();
  sub_100003D98();
  (*(v14 + 8))(v4 + v13);

  return swift_deallocObject();
}

unint64_t sub_100578B7C()
{
  result = qword_100CC5F00;
  if (!qword_100CC5F00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5EF0, &qword_100A61848);
    v4[0] = sub_100578C08();
    v4[1] = &protocol witness table for _RotationEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5F00);
  }

  return result;
}

unint64_t sub_100578C08()
{
  result = qword_100CC5F08;
  if (!qword_100CC5F08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC5EE8, &qword_100A61840);
    v4[0] = sub_100576898(&qword_100CC5F10, &type metadata accessor for MoonView);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC5F08);
  }

  return result;
}

uint64_t sub_100578CD0(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100578D30(uint64_t a1)
{
  type metadata accessor for Location();
  sub_10001F0BC();
  sub_1005796EC(v1, v2, &protocol conformance descriptor for Location);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  type metadata accessor for Date();
  sub_100010374();
  sub_1005796EC(v3, v4, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100578DE8()
{
  Hasher.init(_seed:)();
  type metadata accessor for Location();
  sub_10001F0BC();
  sub_1005796EC(v0, v1, &protocol conformance descriptor for Location);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  type metadata accessor for Date();
  sub_100010374();
  sub_1005796EC(v2, v3, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100578EC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Location();
  sub_1005796EC(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1005796EC(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100578FAC(uint64_t a1)
{

  Cache.subscript.getter();
}

uint64_t sub_100579004(uint64_t a1, uint64_t a2)
{
  v5 = sub_10022C350(&qword_100CA58A0, &qword_100A2FD10);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Location();
  __chkstk_darwin(v8);
  sub_100006168();
  (*(v9 + 16))(v2, a1);
  sub_100579790(a2, v7);
  v10 = type metadata accessor for SunriseSunsetMonthlyViewModel(0);
  sub_10001B350(v7, 0, 1, v10);

  Cache.subscript.setter();
}

uint64_t sub_100579164(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  sub_100006168();
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v7 + 16))(v2, a1);
  v8 = *(v6 + 28);
  type metadata accessor for Date();
  sub_100003A9C();
  (*(v9 + 16))(v2 + v8, a2);

  Cache.subscript.getter();

  sub_100579734(v2);
  return v11;
}

uint64_t sub_100579268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v13 + 16))(v12, a1);
  v14 = *(v7 + 28);
  type metadata accessor for Date();
  sub_100003A9C();
  (*(v15 + 16))(&v12[v14], a2);
  sub_100579790(v12, v9);
  v17[1] = a3;

  Cache.subscript.setter();

  return sub_100579734(v12);
}

uint64_t sub_1005793D0()
{

  return v0;
}

uint64_t sub_1005793F8()
{
  sub_1005793D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(uint64_t a1)
{
  result = qword_100CC6040;
  if (!qword_100CC6040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005794C4(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100579590()
{
  type metadata accessor for Location();
  v1 = sub_1000038D8();
  type metadata accessor for SunriseSunsetMonthlyViewModel(v1);
  sub_10001F0BC();
  sub_1005796EC(v2, v3, &protocol conformance descriptor for Location);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CC6080, &unk_100A61970);
  swift_allocObject();
  *(v0 + 16) = Cache.init(_:)();
  type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  sub_10022C350(&qword_100CA58D8, &qword_100A2FDA0);
  sub_1005796EC(&qword_100CC6088, type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey, aM_25);
  Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CC6090, &unk_100A61980);
  swift_allocObject();
  *(v0 + 24) = Cache.init(_:)();
  return v0;
}

uint64_t sub_1005796EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100579734(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetDetailViewDataCache.ElevationCacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100579790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_100003A9C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100579810(uint64_t a1)
{
  result = type metadata accessor for CurrentWeather();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100579884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (static CurrentWeather.== infix(_:_:)())
  {
    v28 = *(type metadata accessor for DailyForecastComponent(0) + 20);
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);

    sub_1009ED6CC(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1005798E4(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC6140, &qword_100A61A28);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100579E50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for CurrentWeather();
  sub_1004499CC(&qword_100CBA800, &protocol conformance descriptor for CurrentWeather);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for DailyForecastComponent(0) + 20));
    v12[15] = 1;
    sub_100579FB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100579A94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v23 = v4;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC6128, &qword_100A61A20);
  sub_1000037C4();
  v24 = v8;
  v25 = v9;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DailyForecastComponent(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100579E50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v21 = v10;
  v13 = v23;
  v29 = 0;
  sub_1004499CC(&qword_100CBA7E8, &protocol conformance descriptor for CurrentWeather);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v13 + 32);
  v20 = v12;
  v15(v12, v7, v14);
  v28 = 1;
  sub_100579EA4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_10001C5FC();
  v17(v16);
  v18 = v20;
  *&v20[*(v21 + 20)] = v27;
  sub_100579EF8(v18, v22);
  sub_100006F14(a1);
  return sub_100579F5C(v18);
}

uint64_t sub_100579DA4(uint64_t a1)
{
  v2 = sub_100579E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100579DE0(uint64_t a1)
{
  v2 = sub_100579E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100579E50()
{
  result = qword_100CC6130;
  if (!qword_100CC6130)
  {
    result = swift_getWitnessTable(byte_100A61AF4, &type metadata for DailyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6130);
  }

  return result;
}

unint64_t sub_100579EA4()
{
  result = qword_100CC6138;
  if (!qword_100CC6138)
  {
    result = swift_getWitnessTable(byte_100AA59FC, &type metadata for DailyForecastComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CC6138);
  }

  return result;
}

uint64_t sub_100579EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100579F5C(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100579FB8()
{
  result = qword_100CC6148;
  if (!qword_100CC6148)
  {
    result = swift_getWitnessTable(byte_100AA59D4, &type metadata for DailyForecastComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CC6148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyForecastComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10057A0EC()
{
  result = qword_100CC6150;
  if (!qword_100CC6150)
  {
    result = swift_getWitnessTable(a5_25, &type metadata for DailyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6150);
  }

  return result;
}

unint64_t sub_10057A144()
{
  result = qword_100CC6158;
  if (!qword_100CC6158)
  {
    result = swift_getWitnessTable(byte_100A61A3C, &type metadata for DailyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6158);
  }

  return result;
}

unint64_t sub_10057A19C()
{
  result = qword_100CC6160;
  if (!qword_100CC6160)
  {
    result = swift_getWitnessTable(aM_54, &type metadata for DailyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6160);
  }

  return result;
}

void *sub_10057A1F0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6218, &qword_100A61BE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for PerformanceTestRunner();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6210, &qword_100A61BE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6208, &qword_100A61BD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v17)
  {
    v4 = sub_10002D7F8(v18, v19);
    v5 = __chkstk_darwin(v4);
    v7 = (&v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = sub_10002D7F8(v16, v17);
    v10 = __chkstk_darwin(v9);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = sub_10057AAF0(&v20, v3, *v7, *v12);
    sub_100006F14(v16);
    sub_100006F14(v18);
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10057A4A0()
{
  sub_10022C350(&qword_100CC6208, &qword_100A61BD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6210, &qword_100A61BE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PerformanceTestRunner();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6218, &qword_100A61BE8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10057A5C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for StubPPTWeatherDataManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v7 = type metadata accessor for LegacyPerformanceTestRunner();
    swift_allocObject();
    result = sub_1007AEC2C(v11, v12, v5, v6, &v9, v8);
    a2[3] = v7;
    a2[4] = &off_100C6BC80;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10057A750@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LegacyPerformanceTestManager();
  result = swift_allocObject();
  *(result + 16) = 33;
  a1[3] = v2;
  a1[4] = &off_100C50B88;
  *a1 = result;
  return result;
}

void *sub_10057A7A0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for StubPPTWeatherDataManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE208, &unk_100A55900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5600, &qword_100A60C08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v8 = v11;
  if (v11)
  {
    v9 = v12;
    sub_100035B30(a1, v10);
    type metadata accessor for PerformanceTestRunner();
    swift_allocObject();
    return sub_100628ABC(v3, v4, v5, v6, &v13, v7, v8, v9, v10);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10057A9CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_Mac();
    v5 = &off_100C49BD0;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_iPad();
    v5 = &off_100C6F220;
LABEL_7:
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = v5;
    *a1 = result;
    return result;
  }

  if (!v3)
  {
    v4 = type metadata accessor for PerformanceTestDefinitions_iPhone();
    v5 = &off_100C63E60;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10057AAF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for LegacyPerformanceTestManager();
  v27[3] = v9;
  v27[4] = &off_100C50B88;
  v27[0] = a3;
  v25 = v8;
  v26 = &off_100C6BC80;
  v24[0] = a4;
  type metadata accessor for PerformanceTestManager();
  v10 = swift_allocObject();
  v11 = sub_10002D7F8(v27, v9);
  v12 = __chkstk_darwin(v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = sub_10002D7F8(v24, v25);
  v17 = __chkstk_darwin(v16);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v10[11] = v9;
  v10[12] = &off_100C50B88;
  v10[8] = v21;
  v10[16] = v8;
  v10[17] = &off_100C6BC80;
  v10[13] = v22;
  sub_100013188(a1, (v10 + 2));
  v10[7] = a2;
  sub_100006F14(v24);
  sub_100006F14(v27);
  return v10;
}

uint64_t sub_10057AD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MapComponentViewModel(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057AF98(a2);
  v12 = v11;
  v13 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  v30 = *(v14 + 16);
  v30(v9, a2, v13);
  v15 = v7[7];
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v16 + 16))(&v9[v15], a1);
  v17 = v7[8];
  v18 = type metadata accessor for MapComponent(0);
  sub_1001113FC(a2 + *(v18 + 20), &v9[v17], type metadata accessor for WeatherData);
  v19 = type metadata accessor for WeatherData(0);
  sub_10001B350(&v9[v17], 0, 1, v19);
  v20 = &v9[v7[9]];
  *v20 = v10;
  v20[1] = v12;
  *a3 = sub_10057B600(a2);
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v23;
  *(a3 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1001113FC(v9, a3 + v24[5], type metadata accessor for MapComponentViewModel);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v25 = v24[8];
  v30((a3 + v25), a2, v13);
  v26 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a3 + v25, 0, 1, v26);
  sub_10013D288();
  v27 = Dictionary.init(dictionaryLiteral:)();
  result = sub_10057BE74(v9);
  *(a3 + v24[6]) = 259;
  *(a3 + v24[7]) = v27;
  return result;
}

uint64_t sub_10057AF98(uint64_t a1)
{
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v41 = &v33 - v6;
  v42 = type metadata accessor for WeatherCondition();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CurrentWeather();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for WeatherMapOverlayKind();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 != enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    if (v22 == enum case for WeatherMapOverlayKind.airQuality(_:))
    {
      type metadata accessor for MapComponent(0);
      type metadata accessor for WeatherData(0);
      WeatherDataModel.airQuality.getter();
      v24 = type metadata accessor for AirQuality();
      if (sub_100024D10(v16, 1, v24) != 1)
      {
        v23 = AirQuality.displayDescription.getter();
        (*(*(v24 - 8) + 8))(v16, v24);
        return v23;
      }

      sub_10057BED0(v16);
    }

    else
    {
      if (v22 == enum case for WeatherMapOverlayKind.temperature(_:))
      {
        type metadata accessor for MapComponent(0);
        type metadata accessor for WeatherData(0);
        WeatherDataModel.currentWeather.getter();
        CurrentWeather.temperature.getter();
        (*(v11 + 8))(v13, v10);
        v25 = v35;
        static WeatherFormatStyle<>.weather.getter();
        v27 = v39;
        v26 = v40;
        v28 = v37;
        (*(v39 + 104))(v37, enum case for WeatherFormatPlaceholder.none(_:), v40);
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        sub_100114168();
        v29 = v34;
        v30 = v38;
        v31 = v41;
        v23 = Measurement.formatted<A>(_:placeholder:unitManager:)();

        (*(v27 + 8))(v28, v26);
        (*(v36 + 8))(v25, v30);
        (*(v33 + 8))(v31, v29);
        return v23;
      }

      (*(v18 + 8))(v21, v17);
    }

    return 0;
  }

  type metadata accessor for MapComponent(0);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.condition.getter();
  (*(v11 + 8))(v13, v10);
  v23 = WeatherCondition.description.getter();
  (*(v7 + 8))(v9, v42);
  (*(v18 + 8))(v21, v17);
  return v23;
}

uint64_t sub_10057B600(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityScaleCategory();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AirQualityScale();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = type metadata accessor for AirQuality();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapOverlayKind();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    v20 = [objc_opt_self() mainBundle];
    v47 = 0x8000000100AD4F20;
    v21 = 0x7469706963657250;
    v22 = 0xED00006E6F697461;
    v23 = 0xD000000000000021;
    v24 = 0x8000000100AD5150;
    v25 = 0xD000000000000043;
    v26.super.isa = v20;
LABEL_3:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, 0, v26, *&v21, *&v25)._countAndFlagsBits;

    (*(v15 + 8))(v18, v14);
    return countAndFlagsBits;
  }

  if (v19 != enum case for WeatherMapOverlayKind.airQuality(_:))
  {
    if (v19 == enum case for WeatherMapOverlayKind.temperature(_:))
    {
      v32 = [objc_opt_self() mainBundle];
      v54._object = 0x8000000100AD5100;
      v33._countAndFlagsBits = 0x74617265706D6554;
      v33._object = 0xEB00000000657275;
      v34._object = 0x8000000100AD50E0;
      v54._countAndFlagsBits = 0xD000000000000041;
      v34._countAndFlagsBits = 0xD00000000000001FLL;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v32, v33, v54)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    if (v19 == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
    {
      v44 = [objc_opt_self() mainBundle];
      v45._countAndFlagsBits = 0xD000000000000018;
      v56._object = 0x8000000100AD50A0;
      v46._countAndFlagsBits = 0x70614D20646E6957;
      v45._object = 0x8000000100AD5080;
      v56._countAndFlagsBits = 0xD00000000000003ALL;
      v46._object = 0xE800000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v56)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v20 = [objc_opt_self() mainBundle];
    v47 = 0x8000000100AD4F20;
    v23 = 0x7469706963657250;
    v24 = 0xED00006E6F697461;
    v25 = 0xD000000000000043;
    v26.super.isa = v20;
    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_3;
  }

  type metadata accessor for MapComponent(0);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.airQuality.getter();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_10057BED0(v9);
    v29 = [objc_opt_self() mainBundle];
    v53._object = 0x8000000100AD4F90;
    v30._countAndFlagsBits = 0x6C61755120726941;
    v30._object = 0xEF70614D20797469;
    v31._object = 0x8000000100AD4F70;
    v53._countAndFlagsBits = 0xD000000000000041;
    v31._countAndFlagsBits = 0xD00000000000001FLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v30, v53)._countAndFlagsBits;
  }

  else
  {
    v35 = v11;
    (*(v11 + 32))(v13, v9, v10);
    v36 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100AD4FE0;
    v37._countAndFlagsBits = 0x70614D204025;
    v55._countAndFlagsBits = 0xD000000000000090;
    v37._object = 0xE600000000000000;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v48[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v55)._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100A2C3F0;
    AirQuality.scale.getter();
    v40 = AirQualityScale.displayLabel.getter();
    v42 = v41;
    (*(v49 + 8))(v6, v4);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100035744();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    v43 = v50;
    AirQuality.currentScaleCategory.getter();
    AirQualityScaleCategory.glyph.getter();
    (*(v51 + 8))(v43, v52);
    (*(v35 + 8))(v13, v10);
  }

  return countAndFlagsBits;
}

uint64_t sub_10057BE74(uint64_t a1)
{
  v2 = type metadata accessor for MapComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10057BED0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10057BF38(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2218 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2228 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2220 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2210 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2208 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_10057C0A4(char a1, char a2, uint64_t a3)
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
  sub_10057BF38(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_map;
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
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_10057C728(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
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
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
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
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_severeAlert, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    sub_100016B54();
    v120 = v69;
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_severeAlert, v70 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_10057CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
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
  v16[1] = xmmword_100A4C530;
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
  v12[1] = xmmword_100A3BC30;
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
  qword_100D90408 = v8;
}

void sub_10057D100()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
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
  v5[1] = xmmword_100A3BC50;
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
  qword_100D90410 = v0;
}

void sub_10057D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BB80;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BB80;
  v26 = v21;
  v27 = v20;
  v18[0] = 0;
  v18[1] = 4;
  v19 = xmmword_100A3BBD0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC50;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A2C3F0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90418 = v8;
}

void sub_10057D328()
{
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BBB0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3AEB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC50;
  v19 = v14;
  v20 = v13;
  v10 = 0;
  v11 = xmmword_100A3BC70;
  v12 = 2;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC60;
  v21 = &v10;
  v22 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100552E50();
  qword_100D90420 = v0;
}

void sub_10057D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  v23[0] = xmmword_100A3BC50;
  v23[1] = xmmword_100A3BC60;
  v25 = v24;
  v26 = v23;
  v20 = xmmword_100A3BB70;
  v21 = 1;
  v22 = 4;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v27 = &v20;
  v28 = v19;
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v29 = v18;
  v30 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v31 = v16;
  v32 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC40;
  v33 = v14;
  v34 = v13;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A2C3F0;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v35 = v12;
  v36 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v37 = v10;
  v38 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90428 = v8;
}

uint64_t sub_10057D56C(uint64_t a1, void (*a2)(char *), uint64_t a3)
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v6);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_airQuality, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiMinorAlertConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008, &unk_100A2F7B0);
  v28 = v34;
  sub_10031694C(v14, v34, type metadata accessor for LocationComponentContainerViewModel);
  v29 = v35;
  sub_10031694C(v3, v35, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiMinorAlertContent._Storage(0);
  swift_allocObject();
  v30 = sub_1002BEB48(v33, v22, v28, v29);
  sub_1003169AC(v3, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
  return v30;
}

uint64_t sub_10057D8BC()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for AutomationInfoProperty(0);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10057DB6C(v1, v10 - v9);
  v12 = *(v11 + 16);
  if (*(v11 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v12, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v12) = v21;
  }

  sub_10057DBD0(v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AutomationInfo(0);
  sub_10057DC2C();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  static String.Encoding.utf8.getter();
  v17 = String.init(data:encoding:)();
  v19 = v18;
  sub_10030F778(v14, v16);
  if (!v19)
  {
    __break(1u);
LABEL_6:
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *v1 = v17;
  v1[1] = v19;
  return result;
}

uint64_t sub_10057DB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfoProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057DBD0(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfoProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10057DC2C()
{
  result = qword_100CC6358;
  if (!qword_100CC6358)
  {
    v3 = type metadata accessor for AutomationInfo(255);
    result = swift_getWitnessTable(byte_100A8E0B8, v3, v0, v1);
    atomic_store(result, &qword_100CC6358);
  }

  return result;
}

void *sub_10057DC84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6408, &qword_100A61DB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B28, &unk_100A2EDF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NextHourPrecipitationStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = sub_10002D7F8(v23, v24);
    v8 = __chkstk_darwin(v7);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    HourPrecipitationDetailInteractor = type metadata accessor for NextHourPrecipitationDetailInteractor();
    v22[3] = HourPrecipitationDetailInteractor;
    v22[4] = &off_100C60760;
    v22[0] = v12;
    HourPrecipitationDetailModule = type metadata accessor for NextHourPrecipitationDetailModule();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v22, HourPrecipitationDetailInteractor);
    v17 = __chkstk_darwin(v16);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[5] = HourPrecipitationDetailInteractor;
    v15[6] = &off_100C60760;
    v15[2] = v21;
    v15[7] = v5;
    v15[8] = v6;
    sub_100006F14(v22);
    result = sub_100006F14(v23);
    a2[3] = HourPrecipitationDetailModule;
    a2[4] = &off_100C6AC78;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10057DF58()
{
  sub_10022C350(&qword_100CC6400, &qword_100A61DB0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6408, &qword_100A61DB8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6410, &unk_100A61DC0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6418, &qword_100A678A0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6420, &qword_100A61DD0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for NextHourPrecipitationStringBuilder();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC6428, &qword_100A61DD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B28, &unk_100A2EDF0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10057E178@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918, &unk_100A2EC30);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for NextHourPrecipitationDetailTracker;
      a2[4] = &off_100C79F70;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10057E2C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v27;
  if (v27)
  {
    v23 = v28;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC6400, &qword_100A61DB0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v26)
    {
      v6 = sub_10002D7F8(v25, v26);
      v7 = __chkstk_darwin(v6);
      v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v24[3] = &type metadata for NextHourPrecipitationDetailTracker;
      v24[4] = &off_100C79F70;
      v11 = swift_allocObject();
      v24[0] = v11;
      v12 = v9[1];
      v11[1] = *v9;
      v11[2] = v12;
      v11[3] = v9[2];
      HourPrecipitationDetailInteractor = type metadata accessor for NextHourPrecipitationDetailInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v24, &type metadata for NextHourPrecipitationDetailTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v14[7] = &type metadata for NextHourPrecipitationDetailTracker;
      v14[8] = &off_100C79F70;
      v20 = swift_allocObject();
      v21 = v18[1];
      v20[1] = *v18;
      v20[2] = v21;
      v20[3] = v18[2];
      v14[2] = v5;
      v14[3] = v23;
      v14[4] = v20;
      sub_100006F14(v24);
      result = sub_100006F14(v25);
      a2[3] = HourPrecipitationDetailInteractor;
      a2[4] = &off_100C60760;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10057E5A4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_10057E5F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = sub_10057EB94();
    a2[3] = &type metadata for NextHourPrecipitationLeadingValueRule;
    a2[4] = v4;
    result = swift_allocObject();
    *a2 = result;
    result[2] = v5;
    *(result + 3) = v6;
    result[5] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10057E6AC()
{
  type metadata accessor for NextHourPrecipitationStringBuilder();
  swift_allocObject();
  return NextHourPrecipitationStringBuilder.init()();
}

void *sub_10057E6E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6418, &qword_100A678A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NextHourPrecipitationStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherForecastDescriptionStringBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    HourPrecipitationDetailViewModelFactory = type metadata accessor for NextHourPrecipitationDetailViewModelFactory();
    swift_allocObject();
    result = sub_100346FA0(&v8, v5, v6);
    a2[3] = HourPrecipitationDetailViewModelFactory;
    a2[4] = &off_100C4F7B8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10057E814(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6410, &unk_100A61DC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  HourPrecipitationDetailInputFactory = type metadata accessor for NextHourPrecipitationDetailInputFactory();
  v16 = &off_100C510D0;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10057EB84;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6428, &qword_100A61DD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    HourPrecipitationDetailInputFactory = type metadata accessor for NextHourPrecipitationDetailViewModelFactory();
    v16 = &off_100C4F7B8;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10057EB8C;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4B28, &unk_100A2EDF0);
    swift_allocObject();
    return sub_10024B4B0(v3, v6, v5, v4, sub_100266DE8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10057EB94()
{
  result = qword_100CC6430;
  if (!qword_100CC6430)
  {
    result = swift_getWitnessTable(byte_100A4F320, &type metadata for NextHourPrecipitationLeadingValueRule, v0, v1);
    atomic_store(result, &qword_100CC6430);
  }

  return result;
}

void *sub_10057EBE8()
{
  sub_100035B30(v0, v4);
  v1 = *(v0 + 40) | (*(v0 + 42) << 16);
  v2 = objc_allocWithZone(type metadata accessor for SevereWeatherFeatureView.Coordinator());
  return sub_10057F2E4(v4, v1);
}

id sub_10057EC3C()
{
  v0 = [objc_opt_self() systemFontOfSize:60.0];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont:v0 scale:-1];

  v3 = [objc_opt_self() systemBlueColor];
  v42 = [v1 configurationWithHierarchicalColor:v3];

  sub_100169C04();
  v44 = v2;
  v43 = sub_10038F9FC(0x6461622E6C6C6562, 0xEF6C6C69662E6567, v2);
  v4 = [v43 imageByApplyingSymbolConfiguration:v42];
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v12 = sub_10001F0D4(0xD000000000000021, 0x8000000100AD5250, v7, v8, v9, v10, v11, 0xD000000000000052);
  v14 = v13;

  v15 = [v5 mainBundle];
  v21 = sub_10001F0D4(0xD00000000000007ELL, 0x8000000100AD52E0, v16, v17, v18, v19, v20, 0xD000000000000061);
  v23 = v22;

  v24 = objc_allocWithZone(OBWelcomeController);
  v41 = v4;
  v25 = sub_10038FDF4(v12, v14, v21, v23, v4);
  v26 = [objc_opt_self() boldButton];
  v27 = sub_10057F10C();
  sub_10038FE94(v27, v28, 0, v26);
  sub_10022C350(&qword_100CC6478, &qword_100A61F28);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v26 addTarget:v45 action:"continueButtonTapped" forControlEvents:64];

  v29 = [v25 buttonTray];
  [v29 addButton:v26];

  v30 = [objc_opt_self() linkButton];
  v31 = [v5 mainBundle];
  v46._object = 0x8000000100AC3D50;
  v32._countAndFlagsBits = 0x776F4E20746F4ELL;
  v46._countAndFlagsBits = 0xD000000000000028;
  v32._object = 0xE700000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v46);

  sub_10038FE94(v34._countAndFlagsBits, v34._object, 0, v30);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v30 addTarget:v45 action:"notNowButtonTapped" forControlEvents:64];

  v35 = [v25 buttonTray];
  [v35 addButton:v30];

  v36 = objc_opt_self();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 linkWithBundleIdentifier:v37];

  v39 = [v25 buttonTray];
  [v39 setPrivacyLinkController:v38];

  [v25 setModalPresentationStyle:2];
  return v25;
}

uint64_t sub_10057F10C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100AD53F0;
  v1._countAndFlagsBits = 0x776F6C6C41;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000004DLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

void *sub_10057F1CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10057EBE8();
  *a1 = result;
  return result;
}

uint64_t sub_10057F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057F5D4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10057F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10057F5D4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10057F2BC(uint64_t a1)
{
  sub_10057F5D4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void *sub_10057F2E4(void *a1, int a2)
{
  ObjectType = swift_getObjectType();
  sub_100035B30(a1, &v2[OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor]);
  v6 = &v2[OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus];
  v6[2] = BYTE2(a2);
  *v6 = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100006F14(a1);
  return v7;
}

uint64_t sub_10057F374()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor), v1);
  return (*(v2 + 8))(*(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus) | (*(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_optInUserStatus + 2) << 16), v1, v2);
}

uint64_t sub_10057F434()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather24SevereWeatherFeatureView11Coordinator_interactor), v1);
  return (*(v2 + 16))(v1, v2);
}

__n128 sub_10057F51C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10057F530(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_10057F570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10057F5D4()
{
  result = qword_100CC6470;
  if (!qword_100CC6470)
  {
    result = swift_getWitnessTable(asc_100A61E5C, &type metadata for SevereWeatherFeatureView, v0, v1);
    atomic_store(result, &qword_100CC6470);
  }

  return result;
}

uint64_t sub_10057F628()
{
  sub_1005805F0(v0 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoonScrubberStorage(uint64_t a1)
{
  result = qword_100CC64A8;
  if (!qword_100CC64A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057F6E0(uint64_t a1)
{
  sub_10057F778(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10057F778(uint64_t a1)
{
  if (!qword_100CB4108)
  {
    type metadata accessor for MoonDetailSelectedDate(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB4108);
    }
  }
}

uint64_t sub_10057F7E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261776B636162 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64726177726F66 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10057F8F0(char a1)
{
  if (!a1)
  {
    return 0x647261776B636162;
  }

  if (a1 == 1)
  {
    return 0x64726177726F66;
  }

  return 1701736302;
}

uint64_t sub_10057F940(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CC6580, &qword_100A620E8);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CC6588, &qword_100A620F0);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CC6590, &qword_100A620F8);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CC6598, &unk_100A62100);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_1005804A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_100580548();
      sub_10000C88C(&type metadata for MoonScrubberHeaderArrowKind.ForwardCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1005804F4();
      v24 = v30;
      sub_10000C88C(&type metadata for MoonScrubberHeaderArrowKind.NoneCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10058059C();
    sub_10000C88C(&type metadata for MoonScrubberHeaderArrowKind.BackwardCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10057FC5C(void *a1)
{
  v62 = sub_10022C350(&qword_100CC6540, &qword_100A620C0);
  sub_1000037C4();
  v60 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v58 = &v52 - v4;
  v59 = sub_10022C350(&qword_100CC6548, &qword_100A620C8);
  sub_1000037C4();
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = sub_10022C350(&qword_100CC6550, &qword_100A620D0);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10022C350(&qword_100CC6558, &unk_100A620D8);
  sub_1000037C4();
  v61 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_1005804A0();
  v18 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_100618E7C();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_100580548();
          v34 = v54;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = sub_100003C88();
            v36(v35);
LABEL_21:
            sub_100006F14(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_1005804F4();
          v17 = v58;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = sub_100003C88();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = sub_100003C88();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_10058059C();
        v42 = v53;
        sub_10000803C();
        v43 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = sub_100003C78();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = sub_100003C78();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v39 = &type metadata for MoonScrubberHeaderArrowKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_100003C78();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005801F0(uint64_t a1)
{
  v2 = sub_10058059C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058022C(uint64_t a1)
{
  v2 = sub_10058059C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10057F7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100580298(uint64_t a1)
{
  v2 = sub_1005804A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005802D4(uint64_t a1)
{
  v2 = sub_1005804A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580310(uint64_t a1)
{
  v2 = sub_100580548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058034C(uint64_t a1)
{
  v2 = sub_100580548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580388(uint64_t a1)
{
  v2 = sub_1005804F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005803C4(uint64_t a1)
{
  v2 = sub_1005804F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100580400@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10057FC5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10058044C()
{
  result = qword_100CC6538;
  if (!qword_100CC6538)
  {
    result = swift_getWitnessTable(byte_100A6201C, &type metadata for MoonScrubberHeaderArrowKind, v0, v1);
    atomic_store(result, &qword_100CC6538);
  }

  return result;
}

unint64_t sub_1005804A0()
{
  result = qword_100CC6560;
  if (!qword_100CC6560)
  {
    result = swift_getWitnessTable(byte_100A623FC, &type metadata for MoonScrubberHeaderArrowKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6560);
  }

  return result;
}

unint64_t sub_1005804F4()
{
  result = qword_100CC6568;
  if (!qword_100CC6568)
  {
    result = swift_getWitnessTable(aE_53, &type metadata for MoonScrubberHeaderArrowKind.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6568);
  }

  return result;
}

unint64_t sub_100580548()
{
  result = qword_100CC6570;
  if (!qword_100CC6570)
  {
    result = swift_getWitnessTable(byte_100A6235C, &type metadata for MoonScrubberHeaderArrowKind.ForwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6570);
  }

  return result;
}

unint64_t sub_10058059C()
{
  result = qword_100CC6578;
  if (!qword_100CC6578)
  {
    result = swift_getWitnessTable(byte_100A6230C, &type metadata for MoonScrubberHeaderArrowKind.BackwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC6578);
  }

  return result;
}

uint64_t sub_1005805F0(uint64_t a1)
{
  v2 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_100580658(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100580768()
{
  result = qword_100CC65A0;
  if (!qword_100CC65A0)
  {
    result = swift_getWitnessTable(byte_100A622E4, &type metadata for MoonScrubberHeaderArrowKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65A0);
  }

  return result;
}

unint64_t sub_1005807C0()
{
  result = qword_100CC65A8;
  if (!qword_100CC65A8)
  {
    result = swift_getWitnessTable(asc_100A62204, &type metadata for MoonScrubberHeaderArrowKind.BackwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65A8);
  }

  return result;
}

unint64_t sub_100580818()
{
  result = qword_100CC65B0;
  if (!qword_100CC65B0)
  {
    result = swift_getWitnessTable(byte_100A6222C, &type metadata for MoonScrubberHeaderArrowKind.BackwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65B0);
  }

  return result;
}

unint64_t sub_100580870()
{
  result = qword_100CC65B8;
  if (!qword_100CC65B8)
  {
    result = swift_getWitnessTable(asc_100A621B4, &type metadata for MoonScrubberHeaderArrowKind.ForwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65B8);
  }

  return result;
}

unint64_t sub_1005808C8()
{
  result = qword_100CC65C0;
  if (!qword_100CC65C0)
  {
    result = swift_getWitnessTable(byte_100A621DC, &type metadata for MoonScrubberHeaderArrowKind.ForwardCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65C0);
  }

  return result;
}

unint64_t sub_100580920()
{
  result = qword_100CC65C8;
  if (!qword_100CC65C8)
  {
    result = swift_getWitnessTable(asc_100A62164, &type metadata for MoonScrubberHeaderArrowKind.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65C8);
  }

  return result;
}

unint64_t sub_100580978()
{
  result = qword_100CC65D0;
  if (!qword_100CC65D0)
  {
    result = swift_getWitnessTable(aE_54, &type metadata for MoonScrubberHeaderArrowKind.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65D0);
  }

  return result;
}

unint64_t sub_1005809D0()
{
  result = qword_100CC65D8;
  if (!qword_100CC65D8)
  {
    result = swift_getWitnessTable(byte_100A62254, &type metadata for MoonScrubberHeaderArrowKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65D8);
  }

  return result;
}

unint64_t sub_100580A28()
{
  result = qword_100CC65E0;
  if (!qword_100CC65E0)
  {
    result = swift_getWitnessTable(aU_53, &type metadata for MoonScrubberHeaderArrowKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CC65E0);
  }

  return result;
}

uint64_t sub_100580A80(uint64_t a1)
{
  Location.coordinate.getter();
  Location.coordinate.getter();

  return LocationData.init(latitudeDouble:longitudeDouble:)();
}

uint64_t sub_100580AEC(unsigned __int8 *a1)
{
  v2 = sub_10022C350(&qword_100CC6688, &qword_100A624A8);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = sub_10022C350(&qword_100CC6690, &unk_100A624B0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100580C54(a1[72], a1[73], &v17 - v15);
  sub_100580D00(a1[112], a1[113], v12);
  sub_100580D00(a1[152], a1[153], v9);
  sub_100580D00(a1[192], a1[193], v6);
  return ConditionsFeedbackData.init(sunnyReport:cloudCoverReport:rainReport:sleetReport:snowReport:)();
}

uint64_t sub_100580C54@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CloudCover();
  v7 = v6;
  if (a1)
  {
    (*(*(v6 - 8) + 104))(a3, **(&off_100C5EC10 + a2), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10001B350(a3, v8, 1, v7);
}

uint64_t sub_100580D00@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    switch(a2)
    {
      case 1:
      case 4:
      case 7:
        v4 = &enum case for PrecipitationIntensity.light(_:);
        break;
      case 2:
      case 5:
      case 8:
        v4 = &enum case for PrecipitationIntensity.moderate(_:);
        break;
      case 3:
      case 6:
      case 9:
        v4 = &enum case for PrecipitationIntensity.heavy(_:);
        break;
      default:
        v4 = &enum case for PrecipitationIntensity.enabled(_:);
        break;
    }

    v8 = *v4;
    v9 = type metadata accessor for PrecipitationIntensity();
    (*(*(v9 - 8) + 104))(a3, v8, v9);
    v6 = a3;
    v7 = 0;
    v5 = v9;
  }

  else
  {
    v5 = type metadata accessor for PrecipitationIntensity();
    v6 = a3;
    v7 = 1;
  }

  return sub_10001B350(v6, v7, 1, v5);
}

uint64_t sub_100580DFC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  v32[2] = a2;
  v33 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v9 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for TemperatureFeedback();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003C38();
  v22 = v20 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = v32 - v25;
  (*(v18 + 104))(v32 - v25, **(&off_100C5EC30 + a1), v16, v24);
  (*(v18 + 16))(v22, v26, v16);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.dewPoint.getter();
  (*(v11 + 8))(v15, v9);
  v27 = v33;
  Measurement.value.getter();
  v29 = v28;
  result = (*(v5 + 8))(v8, v27);
  v31 = round(v29);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v31 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v31 < 2147483650.0)
  {
    TemperatureFeedbackData.init(reportedTemperature:currrentDewPoint:)();
    return (*(v18 + 8))(v26, v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005810C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v53[1] = a3;
  v62 = type metadata accessor for WindFeedback();
  sub_1000037C4();
  v66 = v4;
  __chkstk_darwin(v5);
  sub_100003848();
  v64 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v65 = v53 - v8;
  v9 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = v53 - v11;
  v13 = type metadata accessor for Wind();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003848();
  v58 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  v20 = v53 - v19;
  v21 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003848();
  v56 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  v28 = v53 - v27;
  v29 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  v63 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  v55 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  v35 = v53 - v34;
  v61 = a2;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.wind.getter();
  v36 = *(v23 + 8);
  v57 = v21;
  v54 = v36;
  v36(v28, v21);
  Wind.gust.getter();
  v37 = *(v15 + 8);
  v59 = v13;
  v37(v20, v13);
  v38 = sub_100024D10(v12, 1, v29);
  if (v38 == 1)
  {
    sub_10003FDF4(v12, &qword_100CAEC90, &unk_100A5CFE0);
    v53[0] = 0;
    v39 = v63;
    goto LABEL_7;
  }

  v39 = v63;
  (*(v63 + 32))(v35, v12, v29);
  Measurement.value.getter();
  v41 = v40;
  v42 = v40;
  result = (*(v39 + 8))(v35, v29);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v41 <= -2147483650.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v41 < 2147483650.0)
  {
    v53[0] = v41;
LABEL_7:
    v44 = v65;
    v45 = v66;
    v46 = v62;
    (*(v66 + 104))(v65, **(&off_100C5EC48 + v60), v62);
    (*(v45 + 16))(v64, v44, v46);
    v47 = v56;
    WeatherDataModel.currentWeather.getter();
    v48 = v58;
    CurrentWeather.wind.getter();
    v54(v47, v57);
    v49 = v55;
    Wind.speed.getter();
    v37(v48, v59);
    Measurement.value.getter();
    v51 = v50;
    v52 = v50;
    result = (*(v39 + 8))(v49, v29);
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v51 > -2147483650.0)
    {
      if (v51 < 2147483650.0)
      {
        v67 = v38 == 1;
        WindFeedbackData.init(reportedWind:currrentWind:currrentWindGust:)();
        return (*(v66 + 8))(v65, v46);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100581604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v3 = type metadata accessor for AQIFeedback();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003848();
  v35 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_10022C350(&qword_100CC41C0, &qword_100A5D7E0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for AQIData();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v34 - v27;
  v29 = type metadata accessor for WeatherDataModel();
  (*(*(v29 - 8) + 16))(v14, v36, v29);
  sub_10001B350(v14, 0, 1, v29);
  sub_100727954(v14, v18);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CC41C0, &qword_100A5D7E0);
    v30 = 1;
    v31 = v37;
  }

  else
  {
    (*(v21 + 32))(v28, v18, v19);
    (*(v5 + 104))(v10, **(&off_100C5EC60 + v34), v3);
    (*(v5 + 16))(v35, v10, v3);
    (*(v21 + 16))(v25, v28, v19);
    v31 = v37;
    AQIFeedbackData.init(reportedAQI:currentAQI:)();
    (*(v5 + 8))(v10, v3);
    (*(v21 + 8))(v28, v19);
    v30 = 0;
  }

  v32 = type metadata accessor for AQIFeedbackData();
  return sub_10001B350(v31, v30, 1, v32);
}

uint64_t sub_100581974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1[2])
  {
    v9 = 0;
    v10 = 0;
    v7 = 0;
LABEL_24:
    v13 = 0;
LABEL_25:
    v15 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v4 = a1 + 7;
  sub_10001F0F8();
  sub_10002524C();
  if (v5)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v6)
      {
        case 1:
          goto LABEL_8;
        case 2:
          sub_100037BAC();
          goto LABEL_8;
        case 3:
          sub_100022DC8();
          goto LABEL_8;
        case 4:
          sub_10000EB50();
          goto LABEL_8;
        case 5:
          sub_1000139B4();
LABEL_8:
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v7)
          {
            goto LABEL_13;
          }

          sub_100014934();
          if ((v8 & 1) == 0)
          {
            goto LABEL_13;
          }

          continue;
        default:

          v7 = 1;
          goto LABEL_13;
      }
    }
  }

  v7 = 0;
LABEL_13:
  if (!a1[2])
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_24;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v11)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v12)
      {
        case 1:

          v13 = 1;
          goto LABEL_31;
        case 2:
          sub_100037BAC();
          goto LABEL_20;
        case 3:
          sub_100022DC8();
          goto LABEL_20;
        case 4:
          sub_10000EB50();
          goto LABEL_20;
        case 5:
          sub_1000139B4();
          goto LABEL_20;
        default:
LABEL_20:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_31;
          }

          sub_100014934();
          if ((v14 & 1) == 0)
          {
            goto LABEL_31;
          }

          continue;
      }
    }
  }

  v13 = 0;
LABEL_31:
  if (!a1[2])
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v17)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v18)
      {
        case 1:
          sub_100028740();
          goto LABEL_38;
        case 2:
          sub_100037BAC();
          goto LABEL_38;
        case 3:
          sub_100022DC8();
          goto LABEL_38;
        case 4:

          v10 = 1;
          goto LABEL_43;
        case 5:
          sub_1000139B4();
          goto LABEL_38;
        default:
LABEL_38:
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            goto LABEL_43;
          }

          sub_100014934();
          if ((v19 & 1) == 0)
          {
            goto LABEL_43;
          }

          continue;
      }
    }
  }

  v10 = 0;
LABEL_43:
  if (!a1[2])
  {
    v9 = 0;
    goto LABEL_25;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  sub_10002524C();
  if (v20)
  {
    while (2)
    {
      sub_10000CC84();
      switch(v21)
      {
        case 1:
          sub_100028740();
          goto LABEL_50;
        case 2:

          v15 = 1;
          goto LABEL_55;
        case 3:
          sub_100022DC8();
          goto LABEL_50;
        case 4:
          sub_10000EB50();
          goto LABEL_50;
        case 5:
          sub_1000139B4();
          goto LABEL_50;
        default:
LABEL_50:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            goto LABEL_55;
          }

          sub_100014934();
          if ((v22 & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
      }
    }
  }

  v15 = 0;
LABEL_55:
  if (!a1[2])
  {
    v9 = 0;
    goto LABEL_26;
  }

  sub_100031D98();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100006180();
  sub_100011658();
  if (v24)
  {
    v25 = ~v23;
    while (2)
    {
      switch(*(a1[6] + a2))
      {
        case 1:
          sub_100028740();
          goto LABEL_60;
        case 3:

          v9 = 1;
          goto LABEL_66;
        default:
LABEL_60:
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            goto LABEL_66;
          }

          a2 = (a2 + 1) & v25;
          sub_1000304CC();
          if ((v26 & 1) == 0)
          {
            goto LABEL_66;
          }

          continue;
      }
    }
  }

  v9 = 0;
LABEL_66:
  if (a1[2])
  {
    sub_100031D98();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100006180();
    v29 = v28 & ~v27;
    if ((*(v4 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v31 = ~v27;
      while (2)
      {
        switch(*(a1[6] + v29))
        {
          case 1:
            sub_100028740();
            goto LABEL_71;
          case 5:

            v16 = 1;
            goto LABEL_27;
          default:
LABEL_71:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              goto LABEL_27;
            }

            v29 = (v29 + 1) & v31;
            if (((*(v4 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_27;
            }

            continue;
        }
      }
    }
  }

  v16 = 0;
LABEL_27:

  return OtherConditionsFeedbackData.init(rainbowsReport:lightningReport:fogReport:hailReport:smokeReport:hazeReport:)(v7 & 1, v13 & 1, v10 & 1, v15 & 1, v9 & 1, v16 & 1);
}

uint64_t sub_100581FD0(uint64_t a1)
{
  v3 = 0x746E617361656C70;
  v4 = 0x617361656C706E75;
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    v11 = 0;
    v9 = 0;
LABEL_36:
    v20 = 0;
LABEL_37:
    v52 = 0;
    goto LABEL_38;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  v5 = a1 + 56;
  sub_10001F0F8();
  if ((*(a1 + 56 + v7) >> v55))
  {
    v1 = ~v6;
    while (2)
    {
      sub_10000CC84();
      switch(v8)
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 6:
        case 7:
          goto LABEL_6;
        case 3:
          sub_100024204();
LABEL_6:
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            goto LABEL_11;
          }

          sub_100020880();
          if ((v10 & 1) == 0)
          {
            goto LABEL_11;
          }

          continue;
        default:

          v9 = 1;
          goto LABEL_11;
      }
    }
  }

  v9 = 0;
LABEL_11:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    v11 = 0;
    goto LABEL_36;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001F0F8();
  if ((*(v5 + v13) >> v55))
  {
    v1 = ~v12;
    while (2)
    {
      sub_10000CC84();
      switch(v14)
      {
        case 1:

          v11 = 1;
          goto LABEL_21;
        case 3:
          sub_100024204();
          goto LABEL_16;
        default:
LABEL_16:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_21;
          }

          sub_100020880();
          if ((v15 & 1) == 0)
          {
            goto LABEL_21;
          }

          continue;
      }
    }
  }

  v11 = 0;
LABEL_21:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    goto LABEL_36;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001038C();
  if (v17)
  {
    v18 = ~v16;
    while (2)
    {
      sub_10003A258();
      switch(v19)
      {
        case 1:
          sub_10002C858();
          goto LABEL_32;
        case 2:

          v20 = 1;
          goto LABEL_57;
        case 3:
          sub_100019A54();
          goto LABEL_32;
        case 4:
          sub_100017A84();
          goto LABEL_32;
        case 5:
          sub_100016B64();
          goto LABEL_32;
        case 6:
          sub_10004E710();
          goto LABEL_32;
        case 7:
          sub_100049984();
          goto LABEL_32;
        default:
LABEL_32:
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_57;
          }

          v1 = (v1 + 1) & v18;
          sub_100074BF8();
          if ((v21 & 1) == 0)
          {
            goto LABEL_57;
          }

          continue;
      }
    }
  }

  v20 = 0;
LABEL_57:
  if (!*(a1 + 16))
  {
    sub_10002FF28();
    goto LABEL_37;
  }

  sub_100031674();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001038C();
  if ((v29 & 1) == 0)
  {
    v54 = 0;
    goto LABEL_74;
  }

  v53 = ~v28;
  while (2)
  {
    sub_10003A258();
    switch(v30)
    {
      case 1:
        sub_10002C858();
        goto LABEL_68;
      case 2:
        sub_1000696D4();
        goto LABEL_68;
      case 3:

        v54 = 1;
        goto LABEL_74;
      case 4:
        sub_100017A84();
        goto LABEL_68;
      case 5:
        sub_100016B64();
        goto LABEL_68;
      case 6:
        sub_10004E710();
        goto LABEL_68;
      case 7:
        sub_100049984();
        goto LABEL_68;
      default:
LABEL_68:
        v31 = v4;
        v32 = v3;
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v54 = v33;
        if ((v33 & 1) == 0)
        {
          v1 = (v1 + 1) & v53;
          sub_100074BF8();
          v3 = v32;
          v4 = v31;
          if ((v34 & 1) == 0)
          {
            goto LABEL_74;
          }

          continue;
        }

        v4 = v31;
LABEL_74:
        if (!*(a1 + 16))
        {
          v50 = 0;
          goto LABEL_37;
        }

        sub_100031674();
        String.hash(into:)();
        Hasher._finalize()();
        sub_10001038C();
        if (v36)
        {
          v51 = ~v35;
          while (2)
          {
            sub_10003A258();
            switch(v37)
            {
              case 1:
                sub_10002C858();
                goto LABEL_84;
              case 2:
                sub_1000696D4();
                goto LABEL_84;
              case 3:
                sub_100019A54();
                goto LABEL_84;
              case 4:

                v52 = 1;
                goto LABEL_89;
              case 5:
                sub_100016B64();
                goto LABEL_84;
              case 6:
                sub_10004E710();
                goto LABEL_84;
              case 7:
                sub_100049984();
                goto LABEL_84;
              default:
LABEL_84:
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v52 = v38;
                if (v38)
                {
                  goto LABEL_89;
                }

                v1 = (v1 + 1) & v51;
                sub_100074BF8();
                if ((v39 & 1) == 0)
                {
                  goto LABEL_89;
                }

                continue;
            }
          }
        }

        v52 = 0;
LABEL_89:
        if (*(a1 + 16))
        {
          sub_100031674();
          String.hash(into:)();
          Hasher._finalize()();
          sub_10001038C();
          if (v41)
          {
            v49 = ~v40;
            while (2)
            {
              sub_10003A258();
              switch(v42)
              {
                case 1:
                  sub_10002C858();
                  goto LABEL_99;
                case 3:
                  sub_100019A54();
                  goto LABEL_99;
                case 4:
                  sub_100017A84();
                  goto LABEL_99;
                case 5:

                  v50 = 1;
                  goto LABEL_106;
                case 6:
                  sub_10004E710();
                  goto LABEL_99;
                case 7:
                  sub_100049984();
                  goto LABEL_99;
                default:
LABEL_99:
                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v50 = v43;
                  if (v43)
                  {
                    goto LABEL_106;
                  }

                  v1 = (v1 + 1) & v49;
                  sub_100074BF8();
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_106;
                  }

                  continue;
              }
            }
          }

          v50 = 0;
LABEL_106:
          if (*(a1 + 16))
          {
            sub_100031674();
            String.hash(into:)();
            Hasher._finalize()();
            sub_100006180();
            v47 = v46 & ~v45;
            if ((*(v5 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
            {
              v4 = ~v45;
              while (2)
              {
                switch(*(*(a1 + 48) + v47))
                {
                  case 1:
                    sub_10002C858();
                    goto LABEL_115;
                  case 2:
                    sub_1000696D4();
                    goto LABEL_115;
                  case 3:
                    sub_100019A54();
                    goto LABEL_115;
                  case 5:
                    sub_100016B64();
                    goto LABEL_115;
                  case 6:

                    v22 = 1;
                    goto LABEL_39;
                  case 7:
                    sub_100049984();
                    goto LABEL_115;
                  default:
LABEL_115:
                    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v22)
                    {
                      goto LABEL_39;
                    }

                    v47 = (v47 + 1) & v4;
                    if (((*(v5 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    continue;
                }
              }
            }
          }
        }

        else
        {
          v50 = 0;
        }

LABEL_38:
        v22 = 0;
LABEL_39:
        if (*(a1 + 16))
        {
          sub_100031674();
          String.hash(into:)();
          Hasher._finalize()();
          sub_100006180();
          sub_100011658();
          if (v24)
          {
            v25 = ~v23;
            while (2)
            {
              switch(*(*(a1 + 48) + v4))
              {
                case 1:
                  sub_10002C858();
                  goto LABEL_49;
                case 2:
                  sub_1000696D4();
                  goto LABEL_49;
                case 3:
                  sub_100019A54();
                  goto LABEL_49;
                case 4:
                  sub_100017A84();
                  goto LABEL_49;
                case 5:
                  sub_100016B64();
                  goto LABEL_49;
                case 6:
                  sub_10004E710();
                  goto LABEL_49;
                case 7:

                  v26 = 1;
                  goto LABEL_53;
                default:
LABEL_49:
                  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v26)
                  {
                    goto LABEL_53;
                  }

                  v4 = (v4 + 1) & v25;
                  sub_1000304CC();
                  if ((v27 & 1) == 0)
                  {
                    goto LABEL_53;
                  }

                  continue;
              }
            }
          }
        }

        v26 = 0;
LABEL_53:

        return DescriptionFeedbackData.init(pleasantReport:unpleasantReport:hotReport:chillyReport:muggyReport:dryReport:windyReport:calmReport:)(v9 & 1, v11 & 1, v20 & 1, v54 & 1, v52 & 1, v50 & 1, v22 & 1, v26 & 1);
    }
  }
}

uint64_t sub_1005828F4@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for String.Encoding();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_100582CCC();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (v13)
  {
    WeatherJSONData.init(json:)();
    sub_10030F778(v9, v11);

    v14 = type metadata accessor for WeatherJSONData();
    return sub_10001B350(a2, 0, 1, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100582CCC()
{
  result = qword_100CC6680;
  if (!qword_100CC6680)
  {
    v3 = type metadata accessor for WeatherDataModel();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherDataModel, v3, v0, v1);
    atomic_store(result, &qword_100CC6680);
  }

  return result;
}

void sub_100582D24(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC3788, &qword_100A5C580);
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v9[-v6];
  swift_beginAccess();
  sub_100095588();
  v8 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CC3788, &qword_100A5C580);
    static Settings.VFX.animatedBackgrounds.getter();
    Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

    sub_100585060();
    Configurable.setting<A>(_:)();

    (*(*(v8 - 8) + 16))(v4, a1, v8);
    sub_10001B350(v4, 0, 1, v8);
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
  }

  else
  {
    (*(*(v8 - 8) + 32))(a1, v7, v8);
  }
}

uint64_t sub_100582F70(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___permitDuplicateLocations;
  v3 = *(v1 + OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___permitDuplicateLocations);
  if (v3 == 2)
  {
    if (qword_100CA2A20 != -1)
    {
      swift_once();
    }

    sub_100585060();
    Configurable.setting<A>(_:)();
    LOBYTE(v3) = v5;
    *(v1 + v2) = v5;
  }

  return v3 & 1;
}

uint64_t sub_100583034@<X0>(uint64_t a2@<X8>)
{
  v112 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v109 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v111 = v6;
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  type metadata accessor for LocationPreviewModalViewModel(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_100003918(v11);
  v12 = type metadata accessor for WeatherConditionBackgroundModel();
  sub_1000037C4();
  v104 = v13;
  __chkstk_darwin(v14);
  sub_1000038E4();
  v16 = sub_100003918(v15);
  v17 = type metadata accessor for PreviewLocation(v16);
  __chkstk_darwin(v17 - 8);
  sub_1000038E4();
  sub_100003918(v18);
  v93 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  sub_1000037C4();
  v92 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  sub_100003918(v21);
  v91 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  sub_1000037C4();
  v90 = v22;
  __chkstk_darwin(v23);
  sub_1000038E4();
  sub_100003918(v24);
  v89 = type metadata accessor for VFXEffectViewID();
  sub_1000037C4();
  v88 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003918(v27);
  v100 = type metadata accessor for WeatherConditionBackgroundOptions();
  sub_1000037C4();
  v99 = v28;
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003918(v30);
  v31 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_1000037D8();
  v37 = v36 - v35;
  v106 = type metadata accessor for BackgroundAnimationKind();
  sub_1000037C4();
  v105 = v38;
  __chkstk_darwin(v39);
  sub_1000038E4();
  v107 = v40;
  v41 = type metadata accessor for LocationPreviewInput(0);
  __chkstk_darwin(v41 - 8);
  sub_1000037D8();
  v44 = v43 - v42;
  v45 = type metadata accessor for LocationPreviewContentInput(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  sub_100584FB0();
  if (sub_100024D10(v44, 1, v45) == 1)
  {
    sub_1005850B8(v44, type metadata accessor for LocationPreviewInput);
    v50 = type metadata accessor for LocationPreviewViewContentModel(0);
    v51 = a2;
    v52 = 1;
  }

  else
  {
    sub_100585008();
    sub_100582D24(v37);
    v53 = (*(v33 + 88))(v37, v31);
    if (v53 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
    {
      *v107 = (*(v49 + v45[6]) & 1) == 0;
      (*(v105 + 104))(v107, enum case for BackgroundAnimationKind.vfx(_:), v106);
    }

    else if (v53 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:))
    {
      (*(v105 + 104))(v107, enum case for BackgroundAnimationKind.mica(_:), v106);
    }

    else
    {
      *v107 = 1;
      (*(v105 + 104))();
      (*(v33 + 8))(v37, v31);
    }

    v86 = v12;
    v97 = v49;
    v54 = *(v49 + v45[7]);
    v55 = *(v54 + 16);
    v87 = a2;
    if (v55)
    {
      v114[0] = _swiftEmptyArrayStorage;
      sub_10000369C(0, v55, 0);
      v56 = _swiftEmptyArrayStorage;
      v57 = v109 + 16;
      v58 = v54 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v108 = *(v109 + 72);
      v110 = *(v109 + 16);
      v59 = (v57 - 8);
      do
      {
        v110(v111, v58, v112);
        v60 = Location.Identifier.uniqueID.getter();
        v62 = v61;
        (*v59)(v111, v112);
        v114[0] = v56;
        v64 = v56[2];
        v63 = v56[3];
        if (v64 >= v63 >> 1)
        {
          sub_10000369C((v63 > 1), v64 + 1, 1);
          v56 = v114[0];
        }

        v56[2] = v64 + 1;
        v65 = &v56[2 * v64];
        v65[4] = v60;
        v65[5] = v62;
        v58 += v108;
        --v55;
      }

      while (v55);
      v66 = v2;
    }

    else
    {
      v66 = v2;
    }

    (*(v88 + 104))(v94, enum case for VFXEffectViewID.locationPreview(_:), v89);
    (*(v90 + 104))(v95, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v91);
    (*(v92 + 104))(v96, enum case for WeatherConditionBackgroundOptions.DisplayLocation.locationPreview(_:), v93);
    v67 = objc_opt_self();
    v68 = [v67 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(v114, v114[3]);
    dispatch thunk of WindowType.bounds.getter();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = [v67 sharedApplication];
    UIApplication.expectedWindow.getter();

    sub_1000161C0(v113, v113[3]);
    dispatch thunk of WindowType.displayScale.getter();
    WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)(v70, v72, v74, v76, v78);
    sub_100006F14(v113);
    sub_100006F14(v114);
    sub_100584FB0();
    sub_100583C90(v97, v66, v107, v98, v103);
    v79 = sub_100584B90(v66);
    v80 = *(v97 + v45[9]) ^ 1;
    sub_100584FB0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 7u:
      case 8u:
        sub_100008938();
        swift_storeEnumTagMultiPayload();
        sub_1005850B8(v101, type metadata accessor for LocationPreviewModalViewState);
        goto LABEL_24;
      case 6u:
        sub_100585008();
        sub_100008938();
        goto LABEL_22;
      case 9u:
        sub_100008938();
        goto LABEL_22;
      default:
        type metadata accessor for URL();
        sub_1000037E8();
        (*(v81 + 32))();
        sub_100008938();
LABEL_22:
        swift_storeEnumTagMultiPayload();
LABEL_24:
        sub_1000161C0(v66 + 22, v66[25]);
        v82 = sub_100495F00(v102, *(v97 + v45[8]));
        (*(v99 + 8))(v98, v100);
        (*(v105 + 8))(v107, v106);
        a2 = v87;
        sub_100585008();
        v83 = type metadata accessor for LocationPreviewViewContentModel(0);
        *(v87 + v83[5]) = v79 & 1;
        *(v87 + v83[6]) = v82;
        *(v87 + v83[7]) = v80 & 1;
        (*(v104 + 32))(v87 + v83[8], v103, v86);
        sub_100585008();
        sub_1005850B8(v97, type metadata accessor for LocationPreviewContentInput);
        v51 = v87;
        v52 = 0;
        v50 = v83;
        break;
    }
  }

  sub_10001B350(v51, v52, 1, v50);
  v84 = type metadata accessor for LocationPreviewViewModel(0);
  return sub_10001B350(a2, 0, 1, v84);
}

uint64_t sub_100583C90@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v110 = a4;
  v111 = a3;
  v104 = a2;
  v101 = a1;
  v115 = a5;
  v5 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  __chkstk_darwin(v5 - 8);
  v86 = &v86 - v6;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v114 = &v86 - v8;
  v9 = sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  __chkstk_darwin(v9 - 8);
  v113 = &v86 - v10;
  v107 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v112 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for WeatherConditionBackgroundOptions();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v125 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CACCC0, &unk_100A5D780);
  __chkstk_darwin(v13 - 8);
  v124 = &v86 - v14;
  v15 = sub_10022C350(&qword_100CA58B8, &qword_100A2FD30);
  __chkstk_darwin(v15 - 8);
  v123 = &v86 - v16;
  v117 = type metadata accessor for Date();
  v99 = *(v117 - 8);
  __chkstk_darwin(v117);
  v122 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for BackgroundAnimationKind();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v121 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  __chkstk_darwin(v95);
  v120 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v21 - 8);
  v91 = &v86 - v22;
  v89 = type metadata accessor for Location.Identifier();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Location();
  v94 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v27 - 8);
  v93 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v90 = &v86 - v30;
  __chkstk_darwin(v31);
  v33 = &v86 - v32;
  v34 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  __chkstk_darwin(v34 - 8);
  v119 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v86 - v37;
  __chkstk_darwin(v39);
  v41 = &v86 - v40;
  v42 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v42 - 8);
  v97 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v86 - v45;
  __chkstk_darwin(v47);
  v49 = &v86 - v48;
  sub_1006E6234(&v86 - v48);
  v50 = type metadata accessor for WeatherCondition();
  sub_10001B350(v41, 1, 1, v50);
  v116 = type metadata accessor for WeatherData(0);
  sub_10001B350(v33, 1, 1, v116);
  v118 = v49;
  v51 = v24;
  sub_100095588();
  v52 = sub_100024D10(v46, 1, v24);
  v100 = v41;
  if (v52 == 1)
  {
    sub_1000180EC(v46, &qword_100CA65D8, &unk_100A3D9D0);
    v53 = v112;
    v54 = v101;
  }

  else
  {
    v55 = v26;
    (*(v94 + 32))(v26, v46, v51);
    v56 = type metadata accessor for LocationPreviewContentInput(0);
    v57 = v101;
    v58 = *(v101 + *(v56 + 44) + 8);
    v59 = v87;
    Location.identifier.getter();
    v60 = Location.Identifier.id.getter();
    sub_100113300(v60, v61, v58);

    (*(v88 + 8))(v59, v89);
    sub_1000180EC(v41, &qword_100CA2CD8, &unk_100A2C420);
    sub_1003C7D1C(v38, v41);
    v62 = *(v57 + *(v56 + 56) + 16);
    v63 = Location.id.getter();
    v64 = v91;
    sub_1000864C0(v63, v65, v62);

    v66 = type metadata accessor for LocationWeatherDataState(0);
    v54 = v57;
    if (sub_100024D10(v64, 1, v66) == 1)
    {
      (*(v94 + 8))(v55, v51);
      sub_1000180EC(v64, &qword_100CA37B0, &unk_100A2D740);
      sub_10001B350(v90, 1, 1, v116);
    }

    else
    {
      sub_1001A0D3C();
      (*(v94 + 8))(v55, v51);
      sub_1005850B8(v64, type metadata accessor for LocationWeatherDataState);
    }

    v53 = v112;
    sub_100097AA4();
  }

  v92 = v33;
  v67 = v104;
  sub_1000161C0(v104 + 12, v104[15]);
  v68 = v93;
  sub_100095588();
  v69 = type metadata accessor for LocationPreviewContentInput(0);
  v70 = v120;
  sub_1000756B0(v118, v68, v54 + *(v69 + 48), v120);
  sub_1000180EC(v68, &qword_100CA3898, &qword_100A314D0);
  sub_100035B30((v67 + 7), v126);
  v112 = v126[4];
  v104 = sub_1000161C0(v126, v126[3]);
  (*(v96 + 16))(v121, v111, v98);
  (*(v99 + 16))(v122, v70, v117);
  sub_100095588();
  sub_100095588();
  v71 = v100;
  sub_100095588();
  LODWORD(v101) = *(v54 + *(v69 + 52));
  sub_100095588();
  (*(v102 + 16))(v125, v110, v103);
  BackgroundAnimationKind.gradientContext.getter();
  (*(v105 + 104))(v53, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v107);
  v72 = v92;
  v73 = v116;
  if (sub_100024D10(v92, 1, v116))
  {
    v74 = type metadata accessor for WeatherDataModel();
    v75 = v113;
    v76 = 1;
  }

  else
  {
    v77 = *(v73 + 24);
    v78 = type metadata accessor for WeatherDataModel();
    v79 = v113;
    (*(*(v78 - 8) + 16))(v113, v72 + v77, v78);
    v75 = v79;
    v76 = 0;
    v74 = v78;
    v73 = v116;
  }

  sub_10001B350(v75, v76, 1, v74);
  v80 = sub_100024D10(v72, 1, v73);
  v81 = v114;
  if (!v80)
  {
    v82 = v86;
    sub_100095588();
    v83 = type metadata accessor for WeatherDataOverrides(0);
    if (sub_100024D10(v82, 1, v83) != 1)
    {
      sub_100095588();
      sub_1005850B8(v82, type metadata accessor for WeatherDataOverrides);
      goto LABEL_14;
    }

    sub_1000180EC(v82, &qword_100CA75C8, &unk_100A325F0);
  }

  sub_10001B350(v81, 1, 1, v117);
LABEL_14:
  v84 = v106;
  WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)();
  dispatch thunk of WeatherConditionBackgroundModelFactoryType.makeModel(from:)();
  (*(v108 + 8))(v84, v109);
  sub_1005850B8(v120, type metadata accessor for WeatherConditionBackgroundTimeData);
  sub_1000180EC(v71, &qword_100CA2CD8, &unk_100A2C420);
  sub_1000180EC(v118, &qword_100CA65D8, &unk_100A3D9D0);
  sub_100006F14(v126);
  return sub_1000180EC(v72, &qword_100CA3898, &qword_100A314D0);
}

uint64_t sub_100584B90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100582F70(v12))
  {
    return 1;
  }

  sub_1006E6234(v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CA65D8, &unk_100A3D9D0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1000161C0((a1 + 16), *(a1 + 40));
    Location.coordinate.getter();
    v14 = Location.name.getter();
    sub_1001A34D0(v14, v15);

    (*(v9 + 8))(v11, v8);
    v16 = type metadata accessor for SavedLocation();
    v13 = sub_100024D10(v4, 1, v16) == 1;
    sub_1000180EC(v4, &qword_100CA6890, &qword_100A31680);
  }

  return v13;
}

void *sub_100584DF8()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___locationAnimationKind, &qword_100CC3788, &qword_100A5C580);
  return v0;
}

uint64_t sub_100584E58()
{
  sub_100584DF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationPreviewViewModelFactory(uint64_t a1)
{
  result = qword_100CC66D0;
  if (!qword_100CC66D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100584F04(uint64_t a1)
{
  sub_100043F4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100584FB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100585008()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100585060()
{
  result = qword_100CC6788;
  if (!qword_100CC6788)
  {
    v3 = type metadata accessor for LocationPreviewViewModelFactory(255);
    result = swift_getWitnessTable(byte_100A62560, v3, v0, v1);
    atomic_store(result, &qword_100CC6788);
  }

  return result;
}

uint64_t sub_1005850B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100585110(int a1, int a2, uint64_t a3, unsigned __int8 a4, char a5, int a6, unsigned int a7, int a8, char a9)
{
  v32 = a8;
  v33 = a6;
  v36 = a3;
  v34 = a2;
  v37 = a1;
  v12 = type metadata accessor for Calendar();
  sub_1000037C4();
  v35 = v13;
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;
  if (a9 == 2)
  {
    return 0;
  }

  sub_10001C610();
  v31 = a7;
  switch(a4)
  {
    case 2u:

      goto LABEL_7;
    case 4u:
      sub_1000103B0();
      break;
    default:
      break;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_7:
    if (a5 == 1)
    {
      result = 0;
      if (v31 & 1) == 0 || (v32)
      {
        return result;
      }
    }
  }

  static Calendar.current.getter();
  Date.wc_addDays(_:calendar:)();
  (*(v35 + 8))(v16, v12);
  static WeatherClock.date.getter();
  v28 = static Date.> infix(_:_:)();
  v29 = *(v19 + 8);
  v29(v22, v17);
  v29(v25, v17);
  result = 0;
  if ((v37 & 1) == 0 && (v28 & 1) == 0 && (v34 & 1) == 0)
  {
    return (a4 - 1 < 2) & (v33 | v31);
  }

  return result;
}

uint64_t sub_100585418(int a1, int a2, int a3, uint64_t a4, char a5, char a6, int a7, char a8)
{
  v31 = a3;
  v32 = a7;
  v34 = a4;
  v35 = a2;
  v12 = type metadata accessor for Calendar();
  sub_1000037C4();
  v33 = v13;
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v31 - v24;
  if (a8 == 2)
  {
    goto LABEL_9;
  }

  if (a6 == 1)
  {
    sub_10001C610();
    switch(a5)
    {
      case 2:

        goto LABEL_7;
      case 4:
        sub_1000103B0();
        break;
      default:
        break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((a1 & ~v26 & 1) == 0)
    {
LABEL_7:
      if (v32)
      {
        goto LABEL_9;
      }
    }
  }

  static Calendar.current.getter();
  Date.wc_addDays(_:calendar:)();
  (*(v33 + 8))(v16, v12);
  static WeatherClock.date.getter();
  v27 = static Date.> infix(_:_:)();
  v28 = *(v19 + 8);
  v28(v22, v17);
  v28(v25, v17);
  if ((v35 & 1) == 0)
  {
    v29 = (v31 | v27) ^ 1;
    return v29 & 1;
  }

LABEL_9:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_100585768()
{
  v0 = type metadata accessor for News();
  sub_100007074(v0, qword_100D90440);
  v1 = sub_10000703C(v0, qword_100D90440);
  return sub_1005857B4(v1);
}

uint64_t sub_1005857B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArticlePlacementLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v126 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v129 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticlePlacement();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v109 - v12;
  __chkstk_darwin(v14);
  v123 = &v109 - v15;
  __chkstk_darwin(v16);
  v122 = &v109 - v17;
  __chkstk_darwin(v18);
  v20 = &v109 - v19;
  __chkstk_darwin(v21);
  v121 = &v109 - v22;
  __chkstk_darwin(v23);
  v120 = &v109 - v24;
  __chkstk_darwin(v25);
  v119 = &v109 - v26;
  __chkstk_darwin(v27);
  v118 = &v109 - v28;
  __chkstk_darwin(v29);
  v117 = &v109 - v30;
  __chkstk_darwin(v31);
  v124 = &v109 - v32;
  __chkstk_darwin(v33);
  v116 = &v109 - v34;
  __chkstk_darwin(v35);
  v115 = &v109 - v36;
  __chkstk_darwin(v37);
  v114 = &v109 - v38;
  __chkstk_darwin(v39);
  v41 = &v109 - v40;
  if (qword_100CA25E8 != -1)
  {
    swift_once();
  }

  if (dispatch thunk of SettingGroup.isEnabled.getter())
  {
    v110 = v20;
    v42 = type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2570 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v127 = v42;
    v128 = v8;
    v112 = v10;
    v113 = a1;
    v125 = v7;
    v111 = v13;
    if (v144 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      v43 = v126;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      v44 = v3;
      (*(v3 + 104))(v43, enum case for ArticlePlacementLocation.airQualityDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      sub_10069FB8C();
      v46 = v45;
      v47 = v45[2];
      if (v47 >= v45[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v80;
      }

      v46[2] = v47 + 1;
      v7 = v125;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v47, v41);
      v3 = v44;
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    static SettingReader.shared.getter();
    if (qword_100CA2578 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v143 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      v49 = v3;
      v50 = v2;
      (*(v49 + 104))(v126, enum case for ArticlePlacementLocation.feelsLikeDetail(_:), v2);
      v51 = v114;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v81;
      }

      v52 = v46[2];
      v53 = v125;
      if (v52 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v82;
      }

      v54 = v128;
      v46[2] = v52 + 1;
      v55 = v53;
      (*(v54 + 32))(v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, v51, v53);
      v2 = v50;
      v3 = v49;
    }

    else
    {
      v55 = v7;
    }

    static SettingReader.shared.getter();
    if (qword_100CA2580 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    v56 = v126;
    if (v142 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.humidityDetail(_:), v2);
      v57 = v115;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v83;
      }

      v58 = v46[2];
      v55 = v125;
      if (v58 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v84;
      }

      v46[2] = v58 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v58, v57, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2588 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v141 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.moonDetail(_:), v2);
      v59 = v116;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v85;
      }

      v60 = v46[2];
      if (v60 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v86;
      }

      v46[2] = v60 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v60, v59, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2590 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v140 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.precipitationDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v87;
      }

      v61 = v46[2];
      v55 = v125;
      if (v61 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v88;
      }

      v46[2] = v61 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v61, v124, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA2598 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v139 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.precipitationAveragesDetail(_:), v2);
      v62 = v117;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v89;
      }

      v63 = v46[2];
      if (v63 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v90;
      }

      v46[2] = v63 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v63, v62, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25A0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v138 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.pressureDetail(_:), v2);
      v64 = v118;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v91;
      }

      v65 = v46[2];
      if (v65 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v92;
      }

      v46[2] = v65 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v65, v64, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25A8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v137 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.severe(_:), v2);
      v66 = v119;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v93;
      }

      v67 = v46[2];
      if (v67 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v94;
      }

      v46[2] = v67 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v67, v66, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25B0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v136 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.sunriseSunsetDetail(_:), v2);
      v68 = v120;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v95;
      }

      v69 = v46[2];
      if (v69 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v96;
      }

      v46[2] = v69 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v69, v68, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25B8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v135 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.temperatureDetail(_:), v2);
      v70 = v121;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v97;
      }

      v71 = v46[2];
      if (v71 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v98;
      }

      v46[2] = v71 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v71, v70, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25C0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v134 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.temperatureAveragesDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v99;
      }

      v72 = v46[2];
      v55 = v125;
      if (v72 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v100;
      }

      v46[2] = v72 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v72, v110, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25C8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v133 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.trend(_:), v2);
      v73 = v122;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v101;
      }

      v74 = v46[2];
      if (v74 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v102;
      }

      v46[2] = v74 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v74, v73, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25D0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v132 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.uvIndexDetail(_:), v2);
      v75 = v123;
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v103;
      }

      v76 = v46[2];
      if (v76 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v104;
      }

      v46[2] = v76 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v76, v75, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25D8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v131 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.visibilityDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v105;
      }

      v77 = v46[2];
      if (v77 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v106;
      }

      v46[2] = v77 + 1;
      (*(v128 + 32))(v46 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v77, v111, v55);
    }

    static SettingReader.shared.getter();
    if (qword_100CA25E0 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v130 == 1)
    {
      sub_10022C350(&qword_100CC68C0, &unk_100A76690);
      type metadata accessor for Article();
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      Locale.init(identifier:)();
      Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)();
      (*(v3 + 104))(v56, enum case for ArticlePlacementLocation.windDetail(_:), v2);
      ArticlePlacement.init(articles:location:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FB8C();
        v46 = v107;
      }

      v78 = v128;
      v79 = v46[2];
      if (v79 >= v46[3] >> 1)
      {
        sub_10069FB8C();
        v46 = v108;
      }

      v46[2] = v79 + 1;
      (*(v78 + 32))(v46 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v79, v112, v55);
    }
  }

  return News.init(placements:)();
}

BOOL sub_100587B64(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 1;
  }

  if (*(a1 + 88) & 1) != 0 || (*(a1 + 128) & 1) != 0 || (*(a1 + 168) & 1) != 0 || (*(a1 + 208))
  {
    return 1;
  }

  if (*(a1 + 232))
  {
    if (*(a1 + 232) == 1)
    {

      goto LABEL_13;
    }

    v3 = 1684828003;
  }

  else
  {
    v3 = 1836212599;
  }

  v4 = sub_10001F114(v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000, 0xE600000000000000);

  if ((v4 & 1) == 0)
  {
    return 1;
  }

LABEL_13:
  if (*(a1 + 256))
  {
    if (*(a1 + 256) == 1)
    {

      goto LABEL_19;
    }

    v5 = "lessThanForecast";
  }

  else
  {
    v5 = "moreThanForecast";
  }

  v6 = sub_10001F114(0xD000000000000010, (v5 - 32) | 0x8000000000000000);

  if ((v6 & 1) == 0)
  {
    return 1;
  }

LABEL_19:
  if (!*(a1 + 296))
  {
    v7 = 0xD000000000000012;
    v8 = "lessThanForecast";
    goto LABEL_24;
  }

  if (*(a1 + 296) != 1)
  {
    v8 = "betterThanForecast";
    v7 = 0xD000000000000011;
LABEL_24:
    v9 = sub_10001F114(v7, v8 | 0x8000000000000000);

    if ((v9 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_25;
  }

LABEL_25:
  if (!*(*(a1 + 304) + 16))
  {
    return *(*(a1 + 312) + 16) != 0;
  }

  return 1;
}

uint64_t sub_100587D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A30470;
  sub_1000103C4();
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = v6;
  memcpy(__dst, (a1 + 16), 0xC2uLL);
  *(inited + 72) = &type metadata for ReportWeatherConditionsViewModel;
  v7 = swift_allocObject();
  *(inited + 48) = v7;
  memcpy((v7 + 16), __dst, 0xC2uLL);
  sub_1000103C4();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = v8;
  v9 = *(a1 + 224);
  *(inited + 96) = *(a1 + 216);
  *(inited + 104) = v9;
  sub_1000103C4();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = v10;
  *(inited + 144) = *(a1 + 232);
  *(inited + 168) = &unk_100C5D330;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000100ABEA30;
  v11 = *(a1 + 248);
  *(inited + 192) = *(a1 + 240);
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x69746152646E6977;
  *(inited + 232) = 0xEA0000000000676ELL;
  *(inited + 240) = *(a1 + 256);
  *(inited + 264) = &unk_100C5D2A0;
  *(inited + 272) = 0x696C617551726961;
  *(inited + 280) = 0xEF656C7469547974;
  v12 = *(a1 + 264);
  if (*(a1 + 272))
  {
    v13 = *(a1 + 272);
  }

  else
  {
    v12 = 7104878;
    v13 = 0xE300000000000000;
  }

  *(inited + 288) = v12;
  *(inited + 296) = v13;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = v16;
  v17 = *(a1 + 280);
  if (*(a1 + 288))
  {
    v18 = *(a1 + 288);
  }

  else
  {
    v17 = v14;
    v18 = v15;
  }

  *(inited + 336) = v17;
  *(inited + 344) = v18;
  sub_1000103C4();
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = v19;
  *(inited + 384) = *(a1 + 296);
  *(inited + 408) = &unk_100C5D210;
  *(inited + 416) = 0x6E6F43726568746FLL;
  *(inited + 424) = 0xEF736E6F69746964;
  v20 = *(a1 + 304);
  v21 = sub_10022C350(&qword_100CAA998, &qword_100A35370);
  *(inited + 432) = v20;
  *(inited + 456) = v21;
  strcpy((inited + 464), "descriptions");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v22 = *(a1 + 312);
  *(inited + 504) = sub_10022C350(&qword_100CAA9B0, &qword_100A35378);
  *(inited + 480) = v22;
  sub_1002DD184(__dst, v24);

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CC68D0, &unk_100A626A0);
  a2[4] = sub_1005880F0();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10058805C(uint64_t a1)
{
  sub_100588154();

  return ShortDescribable.description.getter();
}

unint64_t sub_10058809C()
{
  result = qword_100CC68C8;
  if (!qword_100CC68C8)
  {
    result = swift_getWitnessTable(byte_100A62648, &type metadata for ReportWeatherContentViewModel, v0, v1);
    atomic_store(result, &qword_100CC68C8);
  }

  return result;
}

unint64_t sub_1005880F0()
{
  result = qword_100CC68D8;
  if (!qword_100CC68D8)
  {
    v3 = sub_10022E824(&qword_100CC68D0, &unk_100A626A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CC68D8);
  }

  return result;
}

unint64_t sub_100588154()
{
  result = qword_100CC68E0;
  if (!qword_100CC68E0)
  {
    result = swift_getWitnessTable(asc_100A62670, &type metadata for ReportWeatherContentViewModel, v0, v1);
    atomic_store(result, &qword_100CC68E0);
  }

  return result;
}

void sub_1005881A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90CA8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 141558531;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_100078694(a2, a3, &v17);
      *(v8 + 22) = 2082;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v17);

      *(v8 + 24) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to donate location interaction. persistentIdentifier=%{private,mask.hash}s, error=%{public}s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90CA8);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      *(v14 + 14) = sub_100078694(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully donated location interaction. persistentIdentifier=%{private,mask.hash}s", v14, 0x16u);
      sub_100006F14(v15);
    }

    else
    {
    }
  }
}

void sub_10058851C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100588588()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v21 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v20 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = Location.Identifier.intentIdentifier.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100588E0C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C5EDB8;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100006190();
  sub_100067444(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_100067638(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v5, v0);
  (*(v7 + 8))(v11, v20);
}

void sub_10058881C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_100588E14;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10058851C;
  v9[3] = &unk_100C5EE08;
  v8 = _Block_copy(v9);

  [v4 deleteInteractionsWithIdentifiers:isa completion:v8];
  _Block_release(v8);
}

void sub_100588974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90CA8);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v8 = 141558531;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_100078694(a2, a3, &v19);
      *(v8 + 22) = 2082;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v19);

      *(v8 + 24) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete donated location interaction. persistentIdentifier=%{private,mask.hash}s, error=%{public}s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100CA2770 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90CA8);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315651;
      *(v14 + 4) = sub_100078694(a2, a3, &v19);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      sub_10022C350(&qword_100CC69C0, &unk_100A62750);
      v15 = String.init<A>(describing:)();
      v17 = sub_100078694(v15, v16, &v19);

      *(v14 + 24) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully deleted donated location interaction. persistentIdentifier=%s, error=%{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100588D40()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather26InteractionDonationManager_previousDonatedLocationIdentifier, &qword_100CADBA0, &qword_100A3D250);

  return v0;
}

uint64_t sub_100588DA4()
{
  sub_100588D40();

  return swift_deallocClassInstance();
}

uint64_t sub_100588E2C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_10022C350(&qword_100CC69D8, &qword_100A62770);
  if (swift_dynamicCast())
  {
    v4 = v9;
    v5 = v10;
    sub_1000161C0(v8, v9);
    v6 = (*(v5 + 16))(v4, v5);
    sub_100006F14(v8);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v8, &qword_100CC69E0, &qword_100A62778);
    return 0;
  }

  return v6;
}

uint64_t sub_100588F78()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v9[0]);
  v3(v2);
  v4 = sub_10022C350(&qword_100CC69E8, &qword_100A62780);
  if (sub_1000061A8(v4))
  {
    v5 = sub_1000103D0();
    v6(v5);
    return sub_100006F14(v9);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v9, &qword_100CC69F0, &qword_100A62788);
    v8 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000061CC(v8);
  }
}

uint64_t sub_100589060()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v10[0]);
  v3(v2);
  v4 = sub_10022C350(&qword_100CC6A08, &qword_100A627A0);
  if (sub_1000061A8(v4))
  {
    v5 = sub_1000103D0();
    v6(v5);
    v7 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000044F0(v7);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v10, &qword_100CC6A10, &qword_100A627A8);
    v9 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000061CC(v9);
  }
}

uint64_t sub_10058914C()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v10[0]);
  v3(v2);
  v4 = sub_10022C350(&qword_100CC69C8, &qword_100A62760);
  if (sub_1000061A8(v4))
  {
    v5 = sub_1000103D0();
    v6(v5);
    v7 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000044F0(v7);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v10, &qword_100CC69D0, &qword_100A62768);
    v9 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000061CC(v9);
  }
}

uint64_t sub_100589238()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v10[0]);
  v3(v2);
  v4 = sub_10022C350(&qword_100CC6A18, &qword_100A627B0);
  if (sub_1000061A8(v4))
  {
    v5 = sub_1000103D0();
    v6(v5);
    v7 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000044F0(v7);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v10, qword_100CC6A20, &qword_100A627B8);
    v9 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000061CC(v9);
  }
}

uint64_t sub_100589324()
{
  sub_10001C624();
  __chkstk_darwin(v0);
  v2 = sub_10001F134(v1, v10[0]);
  v3(v2);
  v4 = sub_10022C350(&qword_100CC69F8, &qword_100A62790);
  if (sub_1000061A8(v4))
  {
    v5 = sub_1000103D0();
    v6(v5);
    v7 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000044F0(v7);
  }

  else
  {
    sub_100008948();
    sub_10003FDF4(v10, &qword_100CC6A00, &qword_100A62798);
    v9 = type metadata accessor for LocationComponentContainerViewModel(0);
    return sub_1000061CC(v9);
  }
}

uint64_t sub_100589410(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_10058954C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_100589768()
{
  sub_100018514();
  v45 = v2;
  v46 = v3;
  sub_100017A94();
  v4 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000115E8();
  v6 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v44 = v9 - v8;
  v10 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v47 = v0;
  v22 = *(v0 + 16);
  v22(&v48, v19);
  v23 = v48;
  sub_10001C644();
  sub_1000BC84C(v23 + v24, v21, v25);

  sub_1001A00C8(v21, v13);
  sub_10001F158();
  sub_1000DFF38(v21, v26);
  LODWORD(v23) = sub_100024D10(v13, 1, v6);
  v27 = sub_1000180EC(v13, &unk_100CE49F0, &unk_100A3AFA0);
  if (v23 != 1)
  {
    (v22)(&v48, v27);
    v28 = v48;
    sub_10001C644();
    sub_1000BC84C(v28 + v29, v17, v30);

    v31 = *&v17[*(v14 + 24)];

    sub_10001F158();
    sub_1000DFF38(v17, v32);
    sub_100169AC0(v31, v1);

    v33 = type metadata accessor for LocationModel();
    if (sub_100024D10(v1, 1, v33) == 1)
    {
      sub_1000180EC(v1, &unk_100CE2F20, &unk_100A2D7D0);
    }

    else
    {
      sub_100007FD0();
      v35 = v34;
      if ((*(v36 + 88))(v1, v33) == enum case for LocationModel.current(_:))
      {
        (*(v35 + 96))(v1, v33);
        v37 = *(sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0) + 48);
        v38 = v44;
        sub_1000D382C(v1, v44, &type metadata accessor for CurrentLocation);
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v39 + 8))(v1 + v37);
        sub_1000161C0((v47 + 48), *(v47 + 72));
        CurrentLocation.name.getter();
        CurrentLocation.coordinate.getter();
        sub_10002089C();
        sub_100017600();
        LOBYTE(v37) = sub_100024844(v40, v41);

        if ((v37 & 1) == 0)
        {
          sub_100017600();
          sub_100589B78();
        }

        sub_100028754();
        sub_1000DFF38(v38, v42);
      }

      else
      {
        (*(v35 + 8))(v1, v33);
      }
    }
  }

  sub_10000CC90();
  sub_1000135C8();
}

void sub_100589B78()
{
  sub_100018514();
  v66 = v2;
  v67 = v3;
  sub_100017A94();
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v69 = &v62 - v6;
  v70 = type metadata accessor for Location();
  sub_100007FD0();
  v65 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v63 = v10 - v9;
  v11 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = sub_1000115E8();
  v18 = type metadata accessor for LocationsState(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v62 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v64 = v0;
  v28 = *(v0 + 16);
  v28(&v71, v25);
  v29 = v71;
  sub_10001C644();
  sub_1000BC84C(v29 + v30, v27, v31);

  sub_1001A00C8(v27, v1);
  sub_10001F158();
  sub_1000DFF38(v27, v32);
  v33 = type metadata accessor for CurrentLocation();
  LODWORD(v29) = sub_100024D10(v1, 1, v33);
  v34 = sub_1000180EC(v1, &unk_100CE49F0, &unk_100A3AFA0);
  if (v29 != 1)
  {
    (v28)(&v71, v34);
    v35 = v71;
    sub_10001C644();
    sub_1000BC84C(v35 + v36, v23, v37);

    v38 = *&v23[*(v18 + 24)];

    sub_10001F158();
    sub_1000DFF38(v23, v39);
    sub_100169AC0(v38, v14);

    v40 = type metadata accessor for LocationModel();
    if (sub_100024D10(v14, 1, v40) == 1)
    {
      v41 = &unk_100CE2F20;
      v42 = &unk_100A2D7D0;
      v43 = v14;
    }

    else
    {
      sub_100007FD0();
      v45 = v44;
      if ((*(v46 + 88))(v14, v40) != enum case for LocationModel.current(_:))
      {
        (*(v45 + 8))(v14, v40);
        goto LABEL_9;
      }

      (*(v45 + 96))(v14, v40);
      v47 = *(sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0) + 48);
      sub_100028754();
      sub_1000DFF38(v14, v48);
      type metadata accessor for LocationModelData();
      sub_1000037E8();
      v50 = (*(v49 + 8))(&v14[v47]);
      (v28)(&v71, v50);
      v51 = v71;
      sub_10001C644();
      v53 = v68;
      sub_1000BC84C(v51 + v52, v68, v54);

      v55 = v69;
      sub_1007BCB1C();
      sub_10001F158();
      sub_1000DFF38(v53, v56);
      v57 = v70;
      if (sub_100024D10(v55, 1, v70) != 1)
      {
        v58 = v65;
        v59 = v63;
        (*(v65 + 32))(v63, v55, v57);
        sub_1000161C0((v64 + 48), *(v64 + 72));
        Location.name.getter();
        Location.coordinate.getter();
        sub_10002089C();
        sub_100017600();
        sub_100024844(v60, v61);

        (*(v58 + 8))(v59, v57);
        goto LABEL_9;
      }

      v41 = &qword_100CA65D8;
      v42 = &unk_100A3D9D0;
      v43 = v55;
    }

    sub_1000180EC(v43, v41, v42);
  }

LABEL_9:
  sub_10000CC90();
  sub_1000135C8();
}

void sub_10058A09C()
{
  sub_100018514();
  v3 = v2;
  sub_100017A94();
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v5 = sub_1000115E8();
  v6 = type metadata accessor for LocationPreviewViewState(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    (*(v0 + 16))(&v17);
    v11 = v17;
  }

  sub_100022DDC();
  sub_1000BC84C(v11 + v12, v1, v13);
  swift_retain_n();

  if (swift_getEnumCaseMultiPayload())
  {

    sub_100019A68();
    sub_1000DFF38(v1, v14);
  }

  else
  {
    sub_100004528();
    sub_1000D382C(v1, v10, v15);
    sub_1000161C0((v0 + 48), *(v0 + 72));
    sub_1006E6834();
    sub_1006E6B60();
    sub_10002089C();
    sub_100017600();
    dispatch thunk of LocationMatchHelperType.isSameLocation(first:second:)();

    sub_100014950();
    sub_1000DFF38(v10, v16);
  }

  sub_10000CC90();
  sub_1000135C8();
}

uint64_t sub_10058A254@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for LocationPreviewViewState(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  (*(v1 + 16))(&v21);
  v12 = v21;
  sub_100022DDC();
  sub_1000BC84C(v12 + v13, v6, v14);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_100019A68();
    sub_1000DFF38(v6, v15);
    v16 = 1;
  }

  else
  {
    sub_100004528();
    sub_1000D382C(v6, v11, v17);
    sub_1000BC84C(v11, a1, type metadata accessor for PreviewLocation);
    sub_100014950();
    sub_1000DFF38(v11, v18);
    v16 = 0;
  }

  v19 = type metadata accessor for PreviewLocation(0);
  return sub_10001B350(a1, v16, 1, v19);
}

void sub_10058A3B8()
{
  sub_100018514();
  sub_100017A94();
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v3 = sub_100003810(active);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Location.Identifier();
  sub_100007FD0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v11 = sub_1000115E8();
  type metadata accessor for ViewState.SecondaryViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  v16 = type metadata accessor for ViewState(0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  (*(v0 + 16))(&v23);
  sub_1000BC84C(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v20, type metadata accessor for ViewState);

  sub_1000BC84C(v20 + *(v17 + 28), v15, type metadata accessor for ViewState.SecondaryViewState);
  sub_1000DFF38(v20, type metadata accessor for ViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for ViewState.SecondaryViewState;
    v22 = v15;
  }

  else
  {
    sub_1000BC84C(*v15 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v6, type metadata accessor for LocationViewerActiveLocationState);
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      (*(v9 + 32))(v1, v6, v7);
      sub_1000161C0((v0 + 48), *(v0 + 72));
      Location.Identifier.name.getter();
      Location.Identifier.coordinate.getter();
      sub_10002089C();
      sub_100017600();
      dispatch thunk of LocationMatchHelperType.isSameLocation(first:second:)();

      (*(v9 + 8))(v1, v7);
      goto LABEL_7;
    }

    v21 = type metadata accessor for LocationViewerActiveLocationState;
    v22 = v6;
  }

  sub_1000DFF38(v22, v21);
LABEL_7:
  sub_10000CC90();
  sub_1000135C8();
}

uint64_t sub_10058A6D0()
{

  sub_100006F14((v0 + 48));

  return swift_deallocClassInstance();
}

void sub_10058A724(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC6BE0, &qword_100A628C8);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  sub_1000304E0();
  sub_100024218();
  v10 = sub_10022C350(&qword_100CBD080, &qword_100A53EB0);
  sub_1000038B4(v9, 1, v10);
  if (v11)
  {
    sub_1000180EC(v9, &qword_100CC6BE0, &qword_100A628C8);
    sub_10058AA2C();
    sub_1000302D8(a1, v6, &qword_100CBD080, &qword_100A53EB0);
    sub_100017AA0();
    sub_100041A60();
    swift_endAccess();
  }

  else
  {
    v12 = sub_100003984();
    sub_10011C0F0(v12, v13, v14, v15);
  }
}

void sub_10058A8A8(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC6BD8, &unk_100A628B8);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  sub_1000304E0();
  sub_100024218();
  v10 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_1000038B4(v9, 1, v10);
  if (v11)
  {
    sub_1000180EC(v9, &qword_100CC6BD8, &unk_100A628B8);
    sub_10058AA2C();
    sub_1000302D8(a1, v6, &qword_100CC6BC0, &qword_100A62888);
    sub_100017AA0();
    sub_100041A60();
    swift_endAccess();
  }

  else
  {
    v12 = sub_100003984();
    sub_10011C0F0(v12, v13, v14, v15);
  }
}

void sub_10058AA2C()
{
  sub_10000C778();
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB2D08, &qword_100A452A0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = (&v17 - v4);
  v6 = type metadata accessor for Expression();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v1();
  dispatch thunk of Table.query.getter();

  SubscriptionEntity.id.getter();
  dispatch thunk of Column.value.getter();

  if (v18)
  {
    sub_100010408(v18);
    == infix(_:_:)();
    sub_100006F14(&v19);
    sub_100014968();
    *v5 = v13 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    v5[1] = 0xE700000000000000;
    v14 = enum case for OrderBy.descending(_:);
    v15 = type metadata accessor for OrderBy();
    sub_1000037E8();
    (*(v16 + 104))(v5, v14, v15);
    sub_10001B350(v5, 0, 1, v15);
    dispatch thunk of Query.first(_:orderBy:)();

    sub_1000180EC(v5, &qword_100CB2D08, &qword_100A452A0);
    (*(v8 + 8))(v12, v6);
    sub_10000536C();
  }

  else
  {
    __break(1u);
  }
}

id sub_10058ACC0()
{
  v1 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    sub_100021524([v4 setDateStyle:1], "setTimeStyle:");
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10058AD54(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___fetchSchedule;
  v6 = sub_10022C350(&qword_100CBD080, &qword_100A53EB0);
  sub_10000E830(&v2[v5], v7, v8, v6);
  v9 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___deliverySchedule;
  v10 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_10000E830(&v2[v9], v11, v12, v10);
  *&v2[OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController_notificationStore] = a1;
  v13 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController_subscription;
  v14 = type metadata accessor for SubscriptionEntity();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v2[v13], a2, v14);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for DebugNotificationSubscriptionViewController(0);
  v16 = objc_msgSendSuper2(&v18, "initWithStyle:", 2);
  (*(v15 + 8))(a2, v14);
  return v16;
}

void sub_10058AE94()
{
  v1 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___fetchSchedule;
  v2 = sub_10022C350(&qword_100CBD080, &qword_100A53EB0);
  sub_10000E830(v0 + v1, v3, v4, v2);
  v5 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___deliverySchedule;
  v6 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_10000E830(v0 + v5, v7, v8, v6);
  *(v0 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10058AF60()
{
  v1 = v0;
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000CC9C();
  v3 = sub_10022C350(&qword_100CBD088, &qword_100A53EB8);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DebugNotificationSubscriptionViewController(0);
  v20.receiver = v0;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v8 = [v0 tableView];
  if (v8)
  {
    v9 = v8;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = String._bridgeToObjectiveC()();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    SubscriptionEntity.location.getter();
    dispatch thunk of Column.value.getter();

    v12 = sub_10022C350(&qword_100CBD090, &qword_100A53EC0);
    sub_1000038B4(v6, 1, v12);
    if (!v13)
    {
      JSON.value.getter();
      sub_100003B20();
      (*(v14 + 8))(v6, v12);
      v15 = Location.name.getter();
      v17 = v16;
      v18 = sub_100003984();
      v19(v18);
      sub_1003C1790(v15, v17, v1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10058B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_10022C350(&qword_100CBD080, &qword_100A53EB0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_10000CC9C();
  switch(a2)
  {
    case 0:
      return 8;
    case 2:
      sub_10058A8A8(v7);
      v13 = type metadata accessor for DeliveryScheduleEntity();
      v14 = sub_100024D10(v7, 1, v13);
      sub_1000180EC(v7, &qword_100CC6BC0, &qword_100A62888);
      if (v14 == 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }

    case 1:
      sub_10058A724(v2);
      ScheduleEntity = type metadata accessor for FetchScheduleEntity();
      v11 = sub_100024D10(v2, 1, ScheduleEntity);
      sub_1000180EC(v2, &qword_100CBD080, &qword_100A53EB0);
      if (v11 == 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }

    default:
      return 0;
  }
}

uint64_t sub_10058B398(uint64_t a1, uint64_t a2)
{
  v2 = 0x6353206863746546;
  v3 = 0x6E6F697461636F4CLL;
  if (a2)
  {
    v3 = 0;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

id sub_10058B464(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      IndexPath.row.getter();
      sub_1000139C4();
      sub_10058C56C();
    }

    else if (IndexPath.section.getter() == 2)
    {
      IndexPath.row.getter();
      sub_1000139C4();
      sub_10058CB34();
    }
  }

  else
  {
    IndexPath.row.getter();
    sub_1000139C4();
    sub_10058BE3C();
  }

  return v4;
}

void sub_10058B648()
{
  sub_10000C778();
  v54 = v0;
  v2 = sub_10022C350(&qword_100CC6BC0, &qword_100A62888);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v53 - v4;
  v6 = type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v53[0] = v7;
  __chkstk_darwin(v8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_10022C350(&qword_100CB2D08, &qword_100A452A0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003C38();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  sub_10004E424();
  type metadata accessor for Expression();
  sub_1000037C4();
  v53[1] = v22;
  v53[2] = v21;
  __chkstk_darwin(v21);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = v53 - v27;
  if (IndexPath.section.getter() == 1 && IndexPath.row.getter() == 1)
  {
    v29 = v54;
    NotificationStore.fetchSchedules.getter();
    dispatch thunk of Table.query.getter();

    SubscriptionEntity.id.getter();
    dispatch thunk of Column.value.getter();

    if (v55)
    {
      sub_100010408(v55);
      == infix(_:_:)();
      sub_100006F14(v56);
      sub_100014968();
      *v1 = v30 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      v1[1] = 0xE700000000000000;
      v31 = enum case for OrderBy.descending(_:);
      v32 = type metadata accessor for OrderBy();
      sub_1000037E8();
      (*(v33 + 104))(v1, v31, v32);
      sub_10001B350(v1, 0, 1, v32);
      v34 = dispatch thunk of Query.where(_:orderBy:limit:)();

      sub_1000180EC(v1, &qword_100CB2D08, &qword_100A452A0);
      sub_10003C5FC();
      v35(v28);
      objc_allocWithZone(type metadata accessor for DebugNotificationFetchSchedulesViewController());
      v36 = sub_100987374(v34);
      v37 = [v29 navigationController];
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    if (IndexPath.section.getter() != 2)
    {
      goto LABEL_16;
    }

    if (!IndexPath.row.getter())
    {
      v1 = v54;
      sub_10058A8A8(v5);
      sub_1000038B4(v5, 1, v6);
      if (!v38)
      {
        v48 = v53[0];
        (*(v53[0] + 32))(v14, v5, v6);
        (*(v48 + 16))(v11, v14, v6);
        objc_allocWithZone(type metadata accessor for DebugNotificationDeliveryScheduleViewController(0));
        sub_1007BA4F4();
        v36 = v49;
        v50 = [v1 navigationController];
        if (v50)
        {
          v51 = v50;
          [v50 pushViewController:v36 animated:1];

          (*(v48 + 8))(v14, v6);
          goto LABEL_16;
        }

        (*(v48 + 8))(v14, v6);
        goto LABEL_15;
      }

      sub_1000180EC(v5, &qword_100CC6BC0, &qword_100A62888);
    }

    if (IndexPath.row.getter() != 1)
    {
LABEL_16:
      sub_10000536C();
      return;
    }

    v39 = v54;
    NotificationStore.deliverySchedules.getter();
    dispatch thunk of Table.query.getter();

    SubscriptionEntity.id.getter();
    dispatch thunk of Column.value.getter();

    if (v55)
    {
      sub_100010408(v55);
      == infix(_:_:)();
      sub_100006F14(v56);
      sub_100014968();
      *v19 = v40 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      v19[1] = 0xE700000000000000;
      v41 = enum case for OrderBy.descending(_:);
      v42 = type metadata accessor for OrderBy();
      sub_1000037E8();
      (*(v43 + 104))(v19, v41, v42);
      sub_10001B350(v19, 0, 1, v42);
      v44 = dispatch thunk of Query.where(_:orderBy:limit:)();

      sub_1000180EC(v19, &qword_100CB2D08, &qword_100A452A0);
      sub_10003C5FC();
      v45(v25);
      objc_allocWithZone(type metadata accessor for DebugNotificationDeliverySchedulesViewController());
      v36 = sub_10078E880(v44);
      v37 = [v39 navigationController];
LABEL_13:
      v46 = v37;
      if (v46)
      {
        v47 = v46;
        [v46 pushViewController:v36 animated:1];
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  __break(1u);

  sub_1000180EC(v1, &qword_100CB2D08, &qword_100A452A0);
  sub_10003C5FC();
  v52(v28);
  swift_unexpectedError();
  __break(1u);
}

void sub_10058BE3C()
{
  sub_10000C778();
  v2 = v1;
  v60 = v3;
  type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v51 = v5;
  v52 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v50 = v7 - v6;
  v55 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v53 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_100003C38();
  v54 = v15 - v16;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v58 = v21;
  v59 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10000CC9C();
  v22 = sub_10022C350(&qword_100CBD088, &qword_100A53EB8);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v49 - v24;
  type metadata accessor for Location();
  sub_1000037C4();
  v56 = v27;
  v57 = v26;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v30 = v29 - v28;
  SubscriptionEntity.location.getter();
  dispatch thunk of Column.value.getter();

  v31 = sub_10022C350(&qword_100CBD090, &qword_100A53EC0);
  sub_1000038B4(v25, 1, v31);
  if (v32)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    JSON.value.getter();
    sub_100003B20();
    (*(v33 + 8))(v25, v31);
    static UIListContentConfiguration.valueCell()();
    switch(v2)
    {
      case 0:
        UIListContentConfiguration.text.setter();
        Location.id.getter();
        goto LABEL_17;
      case 1:
        UIListContentConfiguration.text.setter();
        Location.name.getter();
        goto LABEL_17;
      case 2:
        UIListContentConfiguration.text.setter();
        v34 = sub_10058ACC0();
        SubscriptionEntity.created.getter();
        dispatch thunk of Column.value.getter();
        v35 = type metadata accessor for Date();
        sub_1000038B4(v19, 1, v35);
        if (v32)
        {
          goto LABEL_20;
        }

        v36.super.isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100003B20();
        (*(v37 + 8))(v19, v35);
        v38 = [v34 stringFromDate:v36.super.isa];

        goto LABEL_9;
      case 3:
        sub_100014978(0x6465696669646F4DLL);
        v39 = sub_10058ACC0();
        SubscriptionEntity.modified.getter();
        v40 = v54;
        dispatch thunk of Column.value.getter();
        v41 = type metadata accessor for Date();
        sub_1000038B4(v40, 1, v41);
        if (v32)
        {
          goto LABEL_21;
        }

        v36.super.isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100003B20();
        (*(v42 + 8))(v40, v41);
        v38 = [v39 stringFromDate:v36.super.isa];

LABEL_9:
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100003940();
        goto LABEL_17;
      case 4:
        sub_100014978(0x656E6F5A656D6954);
        Location.timeZone.getter();
        TimeZone.identifier.getter();
        (*(v53 + 8))(v12, v55);
        goto LABEL_17;
      case 5:
        sub_100014978(0x656475746974614CLL);
        sub_100018530();
        Location.coordinate.getter();
        goto LABEL_16;
      case 6:
        UIListContentConfiguration.text.setter();
        sub_100018530();
        Location.coordinate.getter();
LABEL_16:
        Double.write<A>(to:)();
LABEL_17:
        UIListContentConfiguration.secondaryText.setter();
        break;
      case 7:
        SubscriptionEntity.precipitation.getter();
        dispatch thunk of Column.value.getter();

        if (LOBYTE(v62[0]) == 3)
        {
          goto LABEL_22;
        }

        SubscriptionEntity.severe.getter();
        dispatch thunk of Column.value.getter();

        if (v61 == 3)
        {
          goto LABEL_23;
        }

        v43 = v50;
        NotificationSubscription.Kind.init(precipitation:severe:)();
        UIListContentConfiguration.text.setter();
        NotificationSubscription.Kind.description.getter();
        UIListContentConfiguration.secondaryText.setter();
        (*(v51 + 8))(v43, v52);
        break;
      default:
        break;
    }

    v44 = v59;
    v62[3] = v59;
    v62[4] = &protocol witness table for UIListContentConfiguration;
    v45 = sub_100042FB0(v62);
    v46 = v58;
    (*(v58 + 16))(v45, v0, v44);
    v47 = v60;
    UITableViewCell.contentConfiguration.setter();
    [v47 setSelectionStyle:0];
    (*(v46 + 8))(v0, v44);
    sub_10003C5FC();
    v48(v30);
    sub_10000536C();
  }
}

void sub_10058C56C()
{
  sub_10000C778();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  sub_10002FF34();
  __chkstk_darwin(v11);
  sub_100031DB0();
  __chkstk_darwin(v12);
  sub_10004E424();
  v13 = sub_10022C350(&qword_100CBD080, &qword_100A53EB0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000114FC();
  type metadata accessor for FetchScheduleEntity();
  sub_1000037C4();
  v58 = v16;
  v59 = v15;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_10000CC9C();
  static UIListContentConfiguration.subtitleCell()();
  if (v6 == 1)
  {
    v24 = sub_1000696E4();
    sub_100021524(v24, "setAccessoryType:");
    v23 = 3;
    goto LABEL_18;
  }

  if (v6)
  {
LABEL_19:
    v61[3] = v20;
    v61[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v61);
    sub_100025258();
    v51();
    UITableViewCell.contentConfiguration.setter();
    v52 = sub_100003984();
    v53(v52);
    sub_10000536C();
    return;
  }

  sub_10058A724(v3);
  sub_1000038B4(v3, 1, v59);
  if (v22)
  {
    sub_1000180EC(v3, &qword_100CBD080, &qword_100A53EB0);
    sub_1000371D0();
    v23 = 0;
LABEL_18:
    [v8 setSelectionStyle:v23];
    goto LABEL_19;
  }

  v54 = v8;
  (*(v58 + 32))(v19, v3, v59);
  v61[0] = 91;
  v61[1] = 0xE100000000000000;
  FetchScheduleEntity.valid.getter();
  dispatch thunk of Column.value.getter();

  if (v60 == 2)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v60)
  {
    v25 = 0x64696C6156;
  }

  else
  {
    v25 = 0x64696C61766E49;
  }

  if (v60)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v56 = v4;
  v29 = sub_10058ACC0();
  FetchScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v30 = type metadata accessor for Date();
  sub_1000038B4(v1, 1, v30);
  if (v22)
  {
    goto LABEL_21;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  sub_100003B20();
  v55 = *(v32 + 8);
  v55(v1, v30);
  v33 = [v29 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = sub_100049994();
  v36._object = v35;
  String.append(_:)(v36);

  sub_10003A264();
  UIListContentConfiguration.text.setter();
  sub_100018530();
  _StringGuts.grow(_:)(25);

  sub_100014968();
  sub_100051ED4(v37);
  v38 = OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter;
  v39 = *(v56 + OBJC_IVAR____TtC7Weather43DebugNotificationSubscriptionViewController____lazy_storage___dateFormatter);
  FetchScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v2, 1, v30);
  if (v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = Date._bridgeToObjectiveC()().super.isa;
  v55(v2, v30);
  v41 = [v39 stringFromDate:v40];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = sub_100049994();
  v44._object = v43;
  String.append(_:)(v44);

  sub_100016B74();
  v45 = *(v56 + v38);
  FetchScheduleEntity.modified.getter();
  dispatch thunk of Column.value.getter();
  sub_1000038B4(v57, 1, v30);
  if (!v22)
  {

    v46 = Date._bridgeToObjectiveC()().super.isa;
    v55(v57, v30);
    v47 = [v45 stringFromDate:v46];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50._countAndFlagsBits = sub_100049994();
    v50._object = v49;
    String.append(_:)(v50);

    sub_10003A264();
    UIListContentConfiguration.secondaryText.setter();
    (*(v58 + 8))(v19, v59);
    v23 = 0;
    v8 = v54;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}