uint64_t RewritingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for RewritingView(0);
  v4 = *(v3 - 8);
  v104 = v3 - 8;
  v97 = v4;
  v96 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v95 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000341C(&qword_100264260, &qword_1001DC4E0);
  __chkstk_darwin(v83);
  v11 = (&v81 - v10);
  v85 = sub_10000341C(&qword_100264268, &qword_1001DC4E8);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v81 - v12;
  v89 = sub_10000341C(&qword_100264270, &qword_1001DC4F0);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v82 = &v81 - v14;
  v94 = sub_10000341C(&qword_100264278, &qword_1001DC4F8);
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v84 = &v81 - v15;
  v87 = sub_10000341C(&qword_100264280, &qword_1001DC500) - 8;
  __chkstk_darwin(v87);
  v88 = &v81 - v16;
  v92 = sub_10000341C(&qword_100264288, &qword_1001DC508) - 8;
  __chkstk_darwin(v92);
  v102 = &v81 - v17;
  v93 = sub_10000341C(&qword_100264290, &qword_1001DC510) - 8;
  __chkstk_darwin(v93);
  v103 = &v81 - v18;
  v99 = sub_10000341C(&qword_100264298, &qword_1001DC518) - 8;
  __chkstk_darwin(v99);
  v98 = &v81 - v19;
  *v11 = static Alignment.center.getter();
  v11[1] = v20;
  v21 = v11 + *(sub_10000341C(&qword_1002642A0, &qword_1001DC520) + 44);
  v101 = v2;
  sub_10013F8B4(v2, v21);
  (*(v7 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v6);
  v22 = sub_100007120(&qword_1002642A8, &qword_100264260, &qword_1001DC4E0, &protocol conformance descriptor for ZStack<A>);
  v23 = v13;
  v24 = v9;
  v25 = v83;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v7 + 8))(v24, v6);
  sub_10000F500(v11, &qword_100264260, &qword_1001DC4E0);
  *&v109 = v25;
  *(&v109 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v82;
  v28 = v85;
  View.navigationBarBackButtonHidden(_:)();
  v29 = v28;
  (*(v86 + 8))(v23, v28);
  v30 = v2 + *(v104 + 52);
  v31 = *(v30 + 8);
  LOBYTE(v23) = *(v30 + 16);
  LOBYTE(v109) = *v30;
  LOBYTE(v28) = v109;
  *(&v109 + 1) = v31;
  LOBYTE(v110) = v23;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  *&v109 = v29;
  *(&v109 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v84;
  v33 = v89;
  View.navigationBarHidden(_:)();
  (*(v90 + 8))(v27, v33);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v88;
  (*(v91 + 32))(v88, v32, v94);
  v35 = (v34 + *(v87 + 44));
  v36 = v114;
  v35[4] = v113;
  v35[5] = v36;
  v35[6] = v115;
  v37 = v110;
  *v35 = v109;
  v35[1] = v37;
  v38 = v112;
  v35[2] = v111;
  v35[3] = v38;
  LOBYTE(v107) = v28;
  *(&v107 + 1) = v31;
  LOBYTE(v108) = v23;
  FocusState.wrappedValue.getter();
  LOBYTE(v27) = v105;
  v39 = v102;
  sub_10002A894(v34, v102, &qword_100264280, &qword_1001DC500);
  *(v39 + *(v92 + 44)) = v27;
  v40 = v101;
  v94 = *(v101 + 48);
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(v107) = v28;
  *(&v107 + 1) = v31;
  LOBYTE(v108) = v23;
  FocusState.wrappedValue.getter();
  LOBYTE(v23) = v105;
  v41 = v103 + *(v93 + 44);
  v42 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  v43 = v40;
  v44 = v95;
  sub_100148B68(v43, v95, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v45 = static MainActor.shared.getter();
  v46 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v44, v47 + v46, type metadata accessor for RewritingView);
  v48 = static MainActor.shared.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v50 = v107;
  LOBYTE(v46) = v108;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v41 + 8) = (v23 & 1) == 0;
  *(v41 + 9) = 0;
  v51 = v41 + v42[8];
  *v51 = v50;
  *(v51 + 16) = v46;
  v52 = v41 + v42[9];
  strcpy(v52, "RewritingView");
  *(v52 + 14) = -4864;
  v53 = v41 + v42[10];
  type metadata accessor for CGSize(0);
  v105 = 0;
  v106 = 0;
  State.init(wrappedValue:)();
  v54 = v108;
  *v53 = v107;
  *(v53 + 16) = v54;
  v55 = v41 + v42[11];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v56 = *(&v107 + 1);
  *v55 = v107;
  *(v55 + 8) = v56;
  v57 = v41 + v42[12];
  v105 = 0;
  LOBYTE(v106) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v58 = BYTE8(v107);
  v59 = v108;
  *v57 = v107;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59;
  v60 = v41 + v42[13];
  LOBYTE(v105) = 0;
  State.init(wrappedValue:)();
  v61 = *(&v107 + 1);
  *v60 = v107;
  *(v60 + 8) = v61;
  v62 = v41 + v42[14];
  type metadata accessor for PresentationModel(0);
  sub_100149490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v62 = Environment.init<A>(_:)();
  *(v62 + 8) = v63 & 1;
  v64 = v103;
  sub_10002A894(v102, v103, &qword_100264288, &qword_1001DC508);
  v65 = v101 + *(v104 + 56);
  v66 = *v65;
  v67 = *(v65 + 8);
  LOBYTE(v65) = *(v65 + 16);
  *&v107 = v66;
  *(&v107 + 1) = v67;
  LOBYTE(v108) = v65;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  Binding.wrappedValue.getter();
  LOBYTE(v33) = v105;
  v68 = Environment.init<A>(_:)();
  LOBYTE(v62) = v69;
  v70 = static Alignment.center.getter();
  v72 = v71;
  v73 = v64;
  v74 = v98;
  sub_10002A894(v73, v98, &qword_100264290, &qword_1001DC510);
  v75 = v74 + *(v99 + 44);
  *v75 = v68;
  *(v75 + 8) = v62 & 1;
  *(v75 + 9) = 1;
  *(v75 + 10) = v33;
  *(v75 + 16) = v70;
  *(v75 + 24) = v72;
  v76 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  v77 = v94;
  *&v107 = v94;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v62) = *(v77 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  v78 = v100;
  sub_10002A894(v74, v100, &qword_100264298, &qword_1001DC518);
  result = sub_10000341C(&qword_1002642B0, &qword_1001DC550);
  v80 = v78 + *(result + 36);
  *v80 = v76;
  *(v80 + 8) = v62;
  return result;
}

uint64_t type metadata accessor for RewritingView(uint64_t a1)
{
  result = qword_100264310;
  if (!qword_100264310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v3 = sub_10000341C(&qword_10025C4B0, &qword_1001D77B0);
  __chkstk_darwin(v3);
  v5 = (v21 - v4);
  v6 = sub_10000341C(&qword_1002643E8, &qword_1001DC868);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000341C(&qword_1002643F0, &unk_1001DC870);
  __chkstk_darwin(v9);
  v11 = (v21 - v10);
  v12 = *(a1 + 48);
  swift_getKeyPath();
  v21[1] = v12;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v12) = *(v12 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  v13 = static Alignment.center.getter();
  if (v12)
  {
    *v5 = v13;
    v5[1] = v14;
    v15 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
    sub_100145AB0(a1, v5 + *(v15 + 44));
    sub_1000081F8(v5, v8, &qword_10025C4B0, &qword_1001D77B0);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_1002643F8, &qword_1002643F0, &unk_1001DC870, &protocol conformance descriptor for ZStack<A>);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    v16 = v5;
    v17 = &qword_10025C4B0;
    v18 = &qword_1001D77B0;
  }

  else
  {
    *v11 = v13;
    v11[1] = v14;
    v19 = sub_10000341C(&qword_100264400, &qword_1001DC880);
    sub_10013FD28(a1, (v11 + *(v19 + 44)));
    sub_1000081F8(v11, v8, &qword_1002643F0, &unk_1001DC870);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_1002643F8, &qword_1002643F0, &unk_1001DC870, &protocol conformance descriptor for ZStack<A>);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    v16 = v11;
    v17 = &qword_1002643F0;
    v18 = &unk_1001DC870;
  }

  return sub_10000F500(v16, v17, v18);
}

uint64_t sub_10013FC34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for RewritingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10013E918(v4, a1);
}

uint64_t sub_10013FCA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013FD28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = type metadata accessor for RewritingView(0);
  v83 = *(v89 - 8);
  v4 = *(v83 + 8);
  __chkstk_darwin(v89);
  v68 = sub_10000341C(&qword_100264408, &qword_1001DC888);
  __chkstk_darwin(v68);
  v6 = &v65 - v5;
  v73 = sub_10000341C(&qword_100264410, &qword_1001DC890);
  v71 = *(v73 - 1);
  __chkstk_darwin(v73);
  v70 = &v65 - v7;
  v8 = sub_10000341C(&qword_100264418, &qword_1001DC898);
  v67 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v65 - v9;
  v74 = sub_10000341C(&qword_100264420, &qword_1001DC8A0);
  __chkstk_darwin(v74);
  v72 = &v65 - v10;
  v82 = sub_10000341C(&qword_100264428, &qword_1001DC8A8);
  v76 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v65 - v11;
  v86 = sub_10000341C(&qword_100264430, &qword_1001DC8B0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v80 = &v65 - v12;
  v13 = sub_10000341C(&qword_100264438, &qword_1001DC8B8);
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = __chkstk_darwin(v13);
  v85 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v65 - v16;
  v81 = static Color.clear.getter();
  v78 = static Edge.Set.vertical.getter();
  v77 = static SafeAreaRegions.all.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v17 = sub_10000341C(&qword_100264440, &qword_1001DC8C0);
  sub_100140908(a1, &v6[*(v17 + 44)]);
  v18 = *(a1 + 48);
  v19 = sub_100037954();
  v91 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a2;
  v90 = v4;
  v69 = v8;
  v93 = a1;
  v65 = v18;
  if ((v19 & 1) != 0 || (swift_getKeyPath(), v94 = v18, sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v20 = *(v18 + 96), v20 == 255))
  {
    v21 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_10;
  }

  v22 = *(v18 + 72);
  v21 = *(v18 + 80);
  v23 = *(v18 + 88);
  if (v20 || v22 != 5)
  {
LABEL_9:
    sub_10002879C(v22, v21, v23, v20);
    v25 = sub_100106A3C(v22, v21, v23, v20);
    v24 = v26;
    sub_1000278C0(v22, v21, v23, v20);
    v21 = v25;
    goto LABEL_10;
  }

  if (!v23)
  {
    sub_10000F3F4(v22, v21, 0, 0);
    goto LABEL_9;
  }

  sub_10002879C(v22, v21, v23, 0);
  v24 = v23;
LABEL_10:
  v94 = v21;
  v95 = v24;
  v27 = sub_100007120(&qword_100264448, &qword_100264408, &qword_1001DC888, &protocol conformance descriptor for VStack<A>);
  v28 = sub_10002AC34();
  v29 = v70;
  v30 = v68;
  View.navigationTitle<A>(_:)();

  sub_10000F500(v6, &qword_100264408, &qword_1001DC888);
  v31 = *(v93 + 80);
  v98 = *(v93 + 72);
  v99 = v31;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v32 = v96;
  v94 = v30;
  v95 = &type metadata for String;
  v96 = v27;
  v97 = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v66;
  v34 = v73;
  View.inlineFeedback(controller:completion:)();

  (*(v71 + 8))(v29, v34);
  v35 = v72;
  v36 = (*(v67 + 32))(v72, v33, v69);
  __chkstk_darwin(v36);
  v37 = v93;
  *(&v65 - 2) = v93;
  v38 = sub_10000341C(&qword_100264450, &qword_1001DC8F8);
  v39 = sub_1001486C8();
  v71 = sub_100007120(&qword_100264460, &qword_100264450, &qword_1001DC8F8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v40 = v75;
  v41 = v74;
  View.toolbar<A>(content:)();
  sub_10000F500(v35, &qword_100264420, &qword_1001DC8A0);
  swift_getKeyPath();
  v42 = v65;
  v94 = v65;
  sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v98) = *(v42 + 112);
  v73 = type metadata accessor for RewritingView;
  v43 = v91;
  sub_100148B68(v37, v91, type metadata accessor for RewritingView);
  v44 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v45 = swift_allocObject();
  v83 = type metadata accessor for RewritingView;
  sub_100148AE8(v43, v45 + v44, type metadata accessor for RewritingView);
  v94 = v41;
  v95 = v38;
  v96 = v39;
  v97 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v80;
  v48 = v82;
  View.onChange<A>(of:initial:_:)();

  (*(v76 + 8))(v40, v48);
  v49 = v93;
  v50 = v93 + *(v89 + 44);
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(v50) = *(v50 + 16);
  LOBYTE(v94) = v51;
  v95 = v52;
  LOBYTE(v96) = v50;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_100148B68(v49, v43, v73);
  v53 = swift_allocObject();
  sub_100148AE8(v43, v53 + v44, v83);
  v94 = v48;
  v95 = &type metadata for Bool;
  v96 = OpaqueTypeConformance2;
  v97 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v54 = v79;
  v55 = v86;
  View.onChange<A>(of:initial:_:)();

  (*(v84 + 8))(v47, v55);
  v57 = v87;
  v56 = v88;
  v58 = *(v87 + 16);
  v59 = v85;
  v58(v85, v54, v88);
  v60 = v92;
  v61 = v77;
  *v92 = v81;
  v60[1] = v61;
  *(v60 + 16) = v78;
  v62 = sub_10000341C(&qword_100264468, &qword_1001DC928);
  v58(v60 + *(v62 + 48), v59, v56);
  v63 = *(v57 + 8);

  v63(v54, v56);
  v63(v59, v56);
}

uint64_t sub_100140908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100264498, &qword_1001DC9E0);
  __chkstk_darwin(v4);
  v194 = &v152 - v5;
  v6 = sub_10000341C(&qword_1002644A0, &unk_1001DC9E8);
  v192 = *(v6 - 8);
  v193 = v6;
  __chkstk_darwin(v6);
  v183 = &v152 - v7;
  v184 = type metadata accessor for FeedbackView(0);
  v181 = *(v184 - 8);
  v8 = __chkstk_darwin(v184);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v176 = &v152 - v11;
  v12 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v13 = __chkstk_darwin(v12 - 8);
  v182 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v185 = &v152 - v15;
  v16 = sub_10000341C(&qword_1002644A8, &qword_1001DC9F8);
  __chkstk_darwin(v16 - 8);
  v18 = &v152 - v17;
  v178 = sub_10000341C(&qword_1002644B0, &qword_1001DCA00);
  v19 = __chkstk_darwin(v178);
  v180 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v177 = &v152 - v22;
  __chkstk_darwin(v21);
  v189 = &v152 - v23;
  v24 = sub_10000341C(&qword_1002644B8, &qword_1001DCA08);
  v25 = __chkstk_darwin(v24 - 8);
  v190 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v191 = &v152 - v27;
  v28 = sub_10000341C(&qword_1002644C0, &unk_1001DCA10);
  v186 = *(v28 - 8);
  v187 = v28;
  __chkstk_darwin(v28);
  v171 = &v152 - v29;
  v30 = type metadata accessor for Divider();
  v168 = *(v30 - 8);
  *&v169 = v30;
  __chkstk_darwin(v30);
  *(&v169 + 1) = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  *&v170 = *(v172 - 8);
  v32 = __chkstk_darwin(v172);
  v167 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v166 = &v152 - v34;
  v35 = sub_10000341C(&qword_10025B880, &qword_1001DCA20);
  v36 = __chkstk_darwin(v35 - 8);
  *(&v170 + 1) = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v152 - v38;
  v40 = sub_10000341C(&qword_1002644C8, &qword_1001DCA28);
  v41 = __chkstk_darwin(v40 - 8);
  v188 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v198 = &v152 - v43;
  v195 = sub_10000341C(&qword_1002644D0, &qword_1001DCA30);
  __chkstk_darwin(v195);
  v197 = &v152 - v44;
  v196 = type metadata accessor for InputWarningView(0);
  __chkstk_darwin(v196);
  v46 = &v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a1 + 48);
  if (sub_100037954())
  {
    if (qword_10025A810 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for LocalizedStringResource();
    v49 = sub_10000F34C(v48, qword_1002771D0);
    (*(*(v48 - 8) + 16))(v46, v49, v48);
    sub_100148B68(v46, v197, type metadata accessor for InputWarningView);
    swift_storeEnumTagMultiPayload();
    sub_100149490(&qword_100261960, type metadata accessor for InputWarningView, &unk_1001D78F4);
    sub_100007120(&qword_1002644F0, &qword_100264498, &qword_1001DC9E0, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1001494D8(v46, type metadata accessor for InputWarningView);
  }

  else
  {
    v164 = a2;
    v51 = type metadata accessor for RewritingView(0);
    v52 = *(v51 + 44);
    v179 = a1;
    v53 = (a1 + v52);
    v54 = *v53;
    v55 = *(v53 + 1);
    LODWORD(v53) = v53[16];
    LODWORD(v175) = v54;
    LOBYTE(v204) = v54;
    *(&v204 + 1) = v55;
    LODWORD(v174) = v53;
    LOBYTE(v205) = v53;
    v173 = sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v162 = v199;
    v163 = v4;
    if (v199)
    {
      v161 = 0;
    }

    else
    {
      swift_getKeyPath();
      *&v204 = v47;
      sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v161 = (*(v47 + 136) & 2) == 0;
    }

    swift_getKeyPath();
    v56 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
    *&v204 = v47;
    v57 = sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    v165 = v56;
    v160 = v57;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v47 + 96) && *(v47 + 72) == 5 && (*(&v205 + 1) = &type metadata for WritingTools, *&v206 = sub_10002AC88(), LOBYTE(v204) = 3, v60 = isFeatureEnabled(_:)(), sub_10000F4B4(&v204), (v60 & 1) != 0))
    {
      v159 = v10;
      LOBYTE(v204) = v175;
      *(&v204 + 1) = v55;
      LOBYTE(v205) = v174;
      FocusState.projectedValue.getter();
      v157 = *(&v199 + 1);
      v158 = v199;
      v156 = v200;
      v61 = v179;
      sub_10013E79C();
      v155 = sub_1000A7C14();

      v154 = sub_10013E9E4();
      v62 = (v61 + *(v51 + 52));
      v63 = v62[1];
      v153 = *v62;
      swift_getKeyPath();
      *&v204 = v47;
      sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v64 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v47 + v64, &v206 + 8, &unk_10025B1C0, &unk_1001CFA90);
      *&v204 = v158;
      *(&v204 + 1) = v157;
      LOBYTE(v205) = v156;
      BYTE1(v205) = (v155 & 2) != 0;
      BYTE2(v205) = v154 & 1;
      *(&v205 + 1) = v153;
      *&v206 = v63;
      swift_getKeyPath();
      *&v199 = v47;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
      {
        swift_getKeyPath();
        *&v199 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v65 = *(v47 + 112);
      }

      else
      {
        v65 = 1;
      }

      v122 = v172;
      KeyPath = swift_getKeyPath();
      v124 = swift_allocObject();
      *(v124 + 16) = v65;
      v201 = v206;
      v202 = v207;
      v203 = v208;
      v199 = v204;
      v200 = v205;
      v125 = static Edge.Set.top.getter();
      sub_10013E9E4();
      EdgeInsets.init(_all:)();
      LOBYTE(v218) = 0;
      v206 = v201;
      v207 = v202;
      v208 = v203;
      v204 = v199;
      v205 = v200;
      v209 = KeyPath;
      v210 = sub_100035DEC;
      v211 = v124;
      v212 = v125;
      v213 = v126;
      v214 = v127;
      v215 = v128;
      v216 = v129;
      v217 = 0;
      LOBYTE(v199) = v175;
      *(&v199 + 1) = v55;
      LOBYTE(v200) = v174;
      FocusState.wrappedValue.getter();
      if (v218)
      {
        v130 = 1;
      }

      else
      {
        Divider.init()();
        sub_10000341C(&unk_100263510, &qword_1001DAEA0);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_1001CF9E0;
        v132 = static Edge.Set.top.getter();
        *(v131 + 32) = v132;
        v133 = static Edge.Set.bottom.getter();
        *(v131 + 33) = v133;
        v134 = Edge.Set.init(rawValue:)();
        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v132)
        {
          v134 = Edge.Set.init(rawValue:)();
        }

        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v133)
        {
          v134 = Edge.Set.init(rawValue:)();
        }

        EdgeInsets.init(_all:)();
        v136 = v135;
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v143 = v167;
        (*(v168 + 32))(v167, *(&v169 + 1), v169);
        v144 = v172;
        v145 = &v143[*(v172 + 36)];
        *v145 = v134;
        v122 = v144;
        *(v145 + 1) = v136;
        *(v145 + 2) = v138;
        *(v145 + 3) = v140;
        *(v145 + 4) = v142;
        v145[40] = 0;
        v146 = v143;
        v147 = v166;
        sub_10002A894(v146, v166, &qword_10025B888, &qword_1001D0300);
        sub_10002A894(v147, v39, &qword_10025B888, &qword_1001D0300);
        v130 = 0;
      }

      (*(v170 + 56))(v39, v130, 1, v122);
      sub_1000081F8(&v204, &v199, &qword_1002644F8, &qword_1001DCC28);
      v148 = *(&v170 + 1);
      sub_1000081F8(v39, *(&v170 + 1), &qword_10025B880, &qword_1001DCA20);
      v149 = v171;
      sub_1000081F8(&v199, v171, &qword_1002644F8, &qword_1001DCC28);
      v150 = sub_10000341C(&qword_100264500, &qword_1001DCC30);
      sub_1000081F8(v148, v149 + *(v150 + 48), &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(v39, &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(&v204, &qword_1002644F8, &qword_1001DCC28);
      sub_10000F500(v148, &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(&v199, &qword_1002644F8, &qword_1001DCC28);
      v151 = v198;
      sub_10002A894(v149, v198, &qword_1002644C0, &unk_1001DCA10);
      (*(v186 + 56))(v151, 0, 1, v187);
      v58 = v179;
      v10 = v159;
    }

    else
    {
      (*(v186 + 56))(v198, 1, 1, v187);
      v58 = v179;
    }

    LOBYTE(v204) = v175;
    *(&v204 + 1) = v55;
    LOBYTE(v205) = v174;
    FocusState.wrappedValue.getter();
    if (v199)
    {
      v59 = v191;
      (*(v192 + 56))(v191, 1, 1, v193);
    }

    else
    {
      v66 = static Alignment.center.getter();
      v68 = v67;
      v69 = sub_10000341C(&qword_1002644D8, &qword_1001DCA60);
      v70 = *(v69 + 48);
      *&v18[v70] = swift_getKeyPath();
      sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
      swift_storeEnumTagMultiPayload();
      *v18 = 0;
      *(v18 + 1) = v66;
      *(v18 + 2) = v68;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      v71 = 1;
      v18[40] = 1;
      sub_10014231C(v58, &v18[*(v69 + 44)]);
      swift_getKeyPath();
      *&v204 = v47;
      sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v175 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
      if (*(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
      {
        swift_getKeyPath();
        *&v204 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v72 = *(v47 + 112);
      }

      else
      {
        v72 = 1;
      }

      v73 = swift_getKeyPath();
      v74 = swift_allocObject();
      *(v74 + 16) = v72;
      v75 = v177;
      sub_10002A894(v18, v177, &qword_1002644A8, &qword_1001DC9F8);
      v76 = (v75 + *(v178 + 36));
      *v76 = v73;
      v76[1] = sub_100035DEC;
      v76[2] = v74;
      sub_10002A894(v75, v189, &qword_1002644B0, &qword_1001DCA00);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)(&v204);
      v186 = v205;
      v187 = v204;
      v177 = *(&v206 + 1);
      v178 = v206;
      v221 = 1;
      v220 = BYTE8(v204);
      v219 = BYTE8(v205);
      v77 = type metadata accessor for FeedbackFeatureFlags();
      *(&v200 + 1) = v77;
      *&v201 = sub_100149490(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
      v78 = sub_10002DB6C(&v199);
      (*(*(v77 - 8) + 104))(v78, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v77);
      LOBYTE(v77) = isFeatureEnabled(_:)();
      sub_10000F4B4(&v199);
      if (v77)
      {
        v159 = v10;
        swift_getKeyPath();
        *&v199 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v79 = *(v47 + 72);
        v80 = *(v47 + 80);
        v81 = *(v47 + 88);
        v82 = *(v47 + 96);
        swift_getKeyPath();
        *&v199 = v47;
        v173 = v80;
        v174 = v79;
        v172 = v81;
        LODWORD(v171) = v82;
        sub_10002879C(v79, v80, v81, v82);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v83 = *(v47 + 40);
        *&v170 = *(v47 + 32);
        swift_getKeyPath();
        *&v199 = v47;
        *(&v170 + 1) = v83;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v84 = *(v47 + 56);
        *&v169 = *(v47 + 48);
        swift_getKeyPath();
        *&v199 = v47;
        *(&v169 + 1) = v84;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v85 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
        v167 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
        swift_getKeyPath();
        *&v199 = v47;
        v168 = v85;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v86 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
        if (v86)
        {
          v87 = v86;
          v88 = [v87 string];
          v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v89;
        }

        else
        {
          v166 = 0;
          v158 = 0xE000000000000000;
        }

        v90 = v159;
        swift_getKeyPath();
        *&v199 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v91 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
        v157 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
        v92 = *(v179 + 80);
        *&v199 = *(v179 + 72);
        *(&v199 + 1) = v92;

        sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
        State.wrappedValue.getter();
        v93 = v218;
        swift_getKeyPath();
        *&v199 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v47 + v175))
        {
          swift_getKeyPath();
          *&v199 = v47;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v94 = *(v47 + 112);
        }

        else
        {
          v94 = 1;
        }

        swift_getKeyPath();
        *&v199 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v96 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
        v95 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
        *(v90 + 200) = 0;
        v97 = *(v184 + 92);
        *(v90 + v97) = swift_getKeyPath();
        sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
        swift_storeEnumTagMultiPayload();
        v98 = v173;
        *(v90 + 128) = v174;
        *(v90 + 136) = v98;
        *(v90 + 144) = v172;
        *(v90 + 152) = v171;
        v99 = v170;
        *(v90 + 24) = v169;
        *(v90 + 8) = v99;
        v100 = v168;
        *(v90 + 40) = v167;
        *(v90 + 48) = v100;
        *(v90 + 56) = 0;
        *(v90 + 64) = 0;
        v101 = v157;
        v102 = v158;
        *(v90 + 72) = v166;
        *(v90 + 80) = v102;
        *(v90 + 88) = v101;
        *(v90 + 96) = v91;
        *v90 = v93;
        *(v90 + 153) = v94;
        *(v90 + 154) = 1;
        *(v90 + 156) = 0;
        v218 = 0x3FF0000000000000;

        State.init(wrappedValue:)();
        v103 = *(&v199 + 1);
        *(v90 + 208) = v199;
        *(v90 + 160) = 0u;
        *(v90 + 176) = 0u;
        *(v90 + 192) = 0;
        *(v90 + 104) = _swiftEmptyArrayStorage;
        *(v90 + 112) = _swiftEmptyArrayStorage;
        *(v90 + 120) = _swiftEmptyArrayStorage;
        *(v90 + 216) = v103;
        *(v90 + 224) = v96;
        *(v90 + 232) = v95;
        v104 = v176;
        sub_100148AE8(v90, v176, type metadata accessor for FeedbackView);
        sub_100148AE8(v104, v185, type metadata accessor for FeedbackView);
        v71 = 0;
      }

      v105 = v185;
      (*(v181 + 56))(v185, v71, 1, v184);
      v106 = v189;
      v107 = v180;
      sub_1000081F8(v189, v180, &qword_1002644B0, &qword_1001DCA00);
      v108 = v221;
      v109 = v220;
      v110 = v219;
      v111 = v182;
      sub_1000081F8(v105, v182, &qword_10025DFB0, &qword_1001D33E0);
      v112 = v183;
      sub_1000081F8(v107, v183, &qword_1002644B0, &qword_1001DCA00);
      v113 = sub_10000341C(&qword_1002644E0, &qword_1001DCAC8);
      v114 = v112 + *(v113 + 48);
      *v114 = 0;
      *(v114 + 8) = v108;
      v115 = v186;
      *(v114 + 16) = v187;
      *(v114 + 24) = v109;
      *(v114 + 32) = v115;
      *(v114 + 40) = v110;
      v116 = v177;
      *(v114 + 48) = v178;
      *(v114 + 56) = v116;
      sub_1000081F8(v111, v112 + *(v113 + 64), &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v105, &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v106, &qword_1002644B0, &qword_1001DCA00);
      sub_10000F500(v111, &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v107, &qword_1002644B0, &qword_1001DCA00);
      v59 = v191;
      sub_10002A894(v112, v191, &qword_1002644A0, &unk_1001DC9E8);
      (*(v192 + 56))(v59, 0, 1, v193);
    }

    v117 = v188;
    sub_1000081F8(v198, v188, &qword_1002644C8, &qword_1001DCA28);
    v118 = v190;
    sub_1000081F8(v59, v190, &qword_1002644B8, &qword_1001DCA08);
    v119 = v194;
    v120 = v162;
    *v194 = v161;
    *(v119 + 1) = v120;
    v121 = sub_10000341C(&qword_1002644E8, &qword_1001DCAD0);
    sub_1000081F8(v117, v119 + *(v121 + 48), &qword_1002644C8, &qword_1001DCA28);
    sub_1000081F8(v118, v119 + *(v121 + 64), &qword_1002644B8, &qword_1001DCA08);
    sub_10000F500(v118, &qword_1002644B8, &qword_1001DCA08);
    sub_10000F500(v117, &qword_1002644C8, &qword_1001DCA28);
    sub_1000081F8(v119, v197, &qword_100264498, &qword_1001DC9E0);
    swift_storeEnumTagMultiPayload();
    sub_100149490(&qword_100261960, type metadata accessor for InputWarningView, &unk_1001D78F4);
    sub_100007120(&qword_1002644F0, &qword_100264498, &qword_1001DC9E0, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v119, &qword_100264498, &qword_1001DC9E0);
    sub_10000F500(v59, &qword_1002644B8, &qword_1001DCA08);
    return sub_10000F500(v198, &qword_1002644C8, &qword_1001DCA28);
  }
}

uint64_t sub_10014231C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v86 = sub_10000341C(&qword_100264508, &qword_1001DCC38);
  __chkstk_darwin(v86);
  v75 = v71 - v3;
  v84 = sub_10000341C(&qword_100264510, &qword_1001DCC40);
  __chkstk_darwin(v84);
  v85 = v71 - v4;
  v81 = type metadata accessor for IconOnlyLabelStyle();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10000341C(&qword_100264518, &qword_1001DCC48);
  __chkstk_darwin(v77);
  v78 = (v71 - v6);
  v83 = sub_10000341C(&qword_100264520, &qword_1001DCC50);
  __chkstk_darwin(v83);
  v82 = v71 - v7;
  v8 = sub_10000341C(&qword_100264528, &qword_1001DCC58);
  v9 = __chkstk_darwin(v8 - 8);
  v90 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = v71 - v11;
  v12 = type metadata accessor for RewritingView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_10000341C(&qword_100264530, &qword_1001DCC60);
  __chkstk_darwin(v15);
  v17 = v71 - v16;
  v18 = sub_10000341C(&qword_100264538, &qword_1001DCC68);
  v19 = __chkstk_darwin(v18 - 8);
  v88 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v92 = v71 - v21;
  sub_100148B68(a1, v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v22 = *(v13 + 80);
  v23 = (v22 + 16) & ~v22;
  v73 = v14;
  v71[1] = v22;
  v24 = swift_allocObject();
  v72 = v23;
  v74 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100148AE8(v74, v24 + v23, type metadata accessor for RewritingView);
  sub_10000341C(&qword_100264540, &unk_1001DCC70);
  sub_100148BEC();
  Button.init(action:label:)();
  v87 = a1;
  v25 = *(a1 + 48);
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *&v96 = v25;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  v28 = v25[OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal];
  v93 = 0;
  v94 = 0;
  v95 = 1;
  v71[0] = sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v29 = v97;
  v30 = v98;
  v31 = v96;
  v99 = v97;
  v32 = &v17[*(v15 + 36)];
  *v32 = 0;
  v32[1] = v28;
  *(v32 + 1) = 0;
  *(v32 + 8) = v31;
  v32[24] = v29;
  *(v32 + 4) = v30;
  swift_getKeyPath();
  *&v96 = v25;
  v76 = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  v37 = v36;
  sub_100148D00();
  View.accessibilityLabel(_:)();
  sub_10002A984(v33, v35, v37 & 1);

  sub_10000F500(v17, &qword_100264530, &qword_1001DCC60);
  swift_getKeyPath();
  *&v96 = v25;
  sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v25[112])
  {
    v38 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v96 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = v25[v27];
  }

  v39 = v87;
  v40 = *(v87 + 64);
  LOBYTE(v96) = *(v87 + 56);
  *(&v96 + 1) = v40;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v93 == 1)
  {
    v41 = static VerticalAlignment.center.getter();
    v42 = v78;
    *v78 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 1;
    v43 = sub_10000341C(&qword_1002645C8, &qword_1001DCCF0);
    sub_100143218(v38, v39, v42 + *(v43 + 44));
    v44 = v79;
    IconOnlyLabelStyle.init()();
    sub_100007120(&qword_1002645A0, &qword_100264518, &qword_1001DCC48, &protocol conformance descriptor for HStack<A>);
    sub_100149490(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    v45 = v82;
    v46 = v81;
    View.labelStyle<A>(_:)();
    (*(v80 + 8))(v44, v46);
    sub_10000F500(v42, &qword_100264518, &qword_1001DCC48);
    KeyPath = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v38;
    v49 = (v45 + *(v83 + 36));
    *v49 = KeyPath;
    v49[1] = sub_100035DEC;
    v49[2] = v48;
    sub_1000081F8(v45, v85, &qword_100264520, &qword_1001DCC50);
    swift_storeEnumTagMultiPayload();
    sub_100148E88();
    sub_100149000();
    v50 = v89;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v45, &qword_100264520, &qword_1001DCC50);
LABEL_11:
    v64 = sub_10000341C(&qword_100264570, &qword_1001DCCC0);
    (*(*(v64 - 8) + 56))(v50, 0, 1, v64);
    goto LABEL_12;
  }

  swift_getKeyPath();
  *&v96 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!v25[96] && (v25[72] - 2 < 4 || !v25[72]))
  {
    v52 = v39;
    v53 = v74;
    sub_100148B68(v52, v74, type metadata accessor for RewritingView);
    v54 = v72;
    v55 = swift_allocObject();
    sub_100148AE8(v53, v55 + v54, type metadata accessor for RewritingView);
    sub_10000341C(&qword_100264580, &unk_1001DCCD0);
    sub_100148DD0();
    v56 = v75;
    Button.init(action:label:)();
    v93 = 0;
    v94 = 0;
    v95 = 1;
    State.init(wrappedValue:)();
    v57 = v96;
    v58 = v98;
    LOBYTE(v96) = v97;
    v59 = v56 + *(sub_10000341C(&qword_100264590, &qword_1001DCCE0) + 36);
    *v59 = 0;
    *(v59 + 8) = v57;
    *(v59 + 24) = v96;
    *(v59 + 32) = v58;
    v60 = swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = v38;
    v62 = v85;
    v63 = (v56 + *(v86 + 36));
    *v63 = v60;
    v63[1] = sub_100035DEC;
    v63[2] = v61;
    sub_1000081F8(v56, v62, &qword_100264508, &qword_1001DCC38);
    swift_storeEnumTagMultiPayload();
    sub_100148E88();
    sub_100149000();
    v50 = v89;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v56, &qword_100264508, &qword_1001DCC38);
    goto LABEL_11;
  }

  v51 = sub_10000341C(&qword_100264570, &qword_1001DCCC0);
  v50 = v89;
  (*(*(v51 - 8) + 56))(v89, 1, 1, v51);
LABEL_12:
  v65 = v92;
  v66 = v88;
  sub_1000081F8(v92, v88, &qword_100264538, &qword_1001DCC68);
  v67 = v90;
  sub_1000081F8(v50, v90, &qword_100264528, &qword_1001DCC58);
  v68 = v91;
  sub_1000081F8(v66, v91, &qword_100264538, &qword_1001DCC68);
  v69 = sub_10000341C(&qword_100264578, &qword_1001DCCC8);
  sub_1000081F8(v67, v68 + *(v69 + 48), &qword_100264528, &qword_1001DCC58);
  sub_10000F500(v50, &qword_100264528, &qword_1001DCC58);
  sub_10000F500(v65, &qword_100264538, &qword_1001DCC68);
  sub_10000F500(v67, &qword_100264528, &qword_1001DCC58);
  return sub_10000F500(v66, &qword_100264538, &qword_1001DCC68);
}

uint64_t sub_10014307C(uint64_t a1)
{
  swift_getKeyPath();
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100143218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v29 = a3;
  v5 = type metadata accessor for RewritingView(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10000341C(&qword_1002645D0, &qword_1001DCCF8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10000341C(&qword_1002645D8, &qword_1001DCD00);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = sub_10000341C(&qword_1002645E0, &qword_1001DCD08);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0x3FF0000000000000;
  v21[16] = 0;
  v22 = sub_10000341C(&qword_1002645E8, &unk_1001DCD10);
  sub_100143674(v4, a2, &v21[*(v22 + 44)]);
  sub_100148B68(a2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v24 = swift_allocObject();
  sub_100148AE8(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for RewritingView);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100149188();
  View.accessibilityLabel(_:)();

  sub_10000F500(v9, &qword_1002645D0, &qword_1001DCCF8);
  sub_1000081F8(v21, v19, &qword_1002645E0, &qword_1001DCD08);
  sub_1000081F8(v15, v13, &qword_1002645D8, &qword_1001DCD00);
  v25 = v29;
  sub_1000081F8(v19, v29, &qword_1002645E0, &qword_1001DCD08);
  v26 = sub_10000341C(&qword_100264600, &unk_1001DCD20);
  sub_1000081F8(v13, v25 + *(v26 + 48), &qword_1002645D8, &qword_1001DCD00);
  sub_10000F500(v15, &qword_1002645D8, &qword_1001DCD00);
  sub_10000F500(v21, &qword_1002645E0, &qword_1001DCD08);
  sub_10000F500(v13, &qword_1002645D8, &qword_1001DCD00);
  return sub_10000F500(v19, &qword_1002645E0, &qword_1001DCD08);
}

uint64_t sub_100143674@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v81 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  __chkstk_darwin(v81);
  v6 = (v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RewritingView(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v88 = v9;
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  __chkstk_darwin(v90);
  v89 = v69 - v11;
  v12 = sub_10000341C(&qword_100264610, &qword_1001DCD48);
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v92 = v69 - v13;
  v14 = sub_10000341C(&qword_100264618, &qword_1001DCD50);
  v15 = __chkstk_darwin(v14 - 8);
  v86 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v85 = v69 - v18;
  v19 = __chkstk_darwin(v17);
  v82 = v69 - v20;
  __chkstk_darwin(v19);
  v91 = v69 - v21;
  v22 = 1;
  v23 = 1;
  if ((a1 & 1) == 0)
  {
    v24 = *(a2 + 48);
    swift_getKeyPath();
    v93 = v24;
    sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v24 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) == 0;
    swift_getKeyPath();
    v93 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v24 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) == 0;
  }

  v74 = a2;
  v80 = v22;
  v79 = type metadata accessor for RewritingView;
  v75 = v10;
  sub_100148B68(a2, v10, type metadata accessor for RewritingView);
  v78 = *(v8 + 80);
  v25 = (v78 + 16) & ~v78;
  v76 = v25;
  v26 = swift_allocObject();
  v77 = type metadata accessor for RewritingView;
  sub_100148AE8(v10, v26 + v25, type metadata accessor for RewritingView);
  v73 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v72 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v27 = v89;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  v30 = v90;
  v31 = (v27 + *(v90 + 36));
  *v31 = KeyPath;
  v31[1] = sub_100035DEC;
  v31[2] = v29;
  v32 = swift_getKeyPath();
  *v6 = 1;
  v33 = v81;
  v34 = *(v81 + 24);
  *(v6 + v34) = swift_getKeyPath();
  v71 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v35 = v6 + *(v33 + 28);
  *v35 = v32;
  v35[8] = 0;
  v36 = sub_1001493AC();
  v37 = sub_100149490(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle, &unk_1001DAC48);
  v69[1] = v36;
  v38 = v6;
  v39 = v37;
  v69[0] = v37;
  View.buttonStyle<A>(_:)();
  v70 = type metadata accessor for UnevenCornerPrimaryButtonStyle;
  sub_1001494D8(v38, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  sub_10000F500(v27, &qword_100264608, &qword_1001DCD40);
  LocalizedStringKey.init(stringLiteral:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v42 = v41;
  v44 = v43;
  v93 = v30;
  v94 = v33;
  v95 = v36;
  v96 = v39;
  v69[2] = swift_getOpaqueTypeConformance2();
  v45 = v92;
  v46 = v84;
  View.accessibilityLabel(_:)();
  sub_10002A984(v40, v42, v44 & 1);

  v83 = *(v83 + 8);
  (v83)(v45, v46);
  v47 = v75;
  sub_100148B68(v74, v75, v79);
  v48 = v76;
  v49 = swift_allocObject();
  sub_100148AE8(v47, v49 + v48, v77);
  v50 = v89;
  Button.init(action:label:)();
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v80;
  v53 = (v50 + *(v90 + 36));
  *v53 = v51;
  v53[1] = sub_100035DEC;
  v53[2] = v52;
  v54 = swift_getKeyPath();
  *v38 = 256;
  v55 = *(v33 + 24);
  *(v38 + v55) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v56 = v38 + *(v33 + 28);
  *v56 = v54;
  v56[8] = 0;
  View.buttonStyle<A>(_:)();
  sub_1001494D8(v38, v70);
  sub_10000F500(v50, &qword_100264608, &qword_1001DCD40);
  LocalizedStringKey.init(stringLiteral:)();
  v57 = Text.init(_:tableName:bundle:comment:)();
  v59 = v58;
  LOBYTE(v48) = v60;
  v61 = v82;
  v62 = v92;
  View.accessibilityLabel(_:)();
  sub_10002A984(v57, v59, v48 & 1);

  (v83)(v62, v46);
  v63 = v91;
  v64 = v85;
  sub_1000081F8(v91, v85, &qword_100264618, &qword_1001DCD50);
  v65 = v86;
  sub_1000081F8(v61, v86, &qword_100264618, &qword_1001DCD50);
  v66 = v87;
  sub_1000081F8(v64, v87, &qword_100264618, &qword_1001DCD50);
  v67 = sub_10000341C(&qword_100264628, &qword_1001DCDA8);
  sub_1000081F8(v65, v66 + *(v67 + 48), &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v61, &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v63, &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v65, &qword_100264618, &qword_1001DCD50);
  return sub_10000F500(v64, &qword_100264618, &qword_1001DCD50);
}

uint64_t sub_1001440A8(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100148B68(a1, v5, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v5, v12 + v11, type metadata accessor for RewritingView);
  sub_10015C9C8(0, 0, v8, &unk_1001DCD38, v12);
}

uint64_t sub_100144288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100144320, v6, v5);
}

uint64_t sub_100144320()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1001443B8;

  return sub_1000B6880(0);
}

uint64_t sub_1001443B8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001444D8, v3, v2);
}

uint64_t sub_1001444D8(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001445A4@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(5);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001445D4(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *(a1 + 64);
  v15[16] = *(a1 + 56);
  v16 = v9;
  v15[15] = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_100148B68(a1, v5, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v5, v13 + v12, type metadata accessor for RewritingView);
  sub_10015C9C8(0, 0, v8, &unk_1001DCDB8, v13);
}

uint64_t sub_1001447F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10014488C, v6, v5);
}

uint64_t sub_10014488C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100144924;

  return sub_1000B6880(0);
}

uint64_t sub_100144924()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100149EA8, v3, v2);
}

uint64_t sub_100144A44@<X0>(uint64_t a1@<X8>)
{
  Label.init(title:icon:)();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v2 = qword_100277170;
  *(a1 + *(sub_10000341C(&qword_100264580, &unk_1001DCCD0) + 36)) = v2;
}

uint64_t sub_100144B20@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100144B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = sub_10000341C(&qword_100264470, &qword_1001DC958);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = sub_10000341C(&qword_100264478, &unk_1001DC960);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000341C(&qword_100262BD8, &qword_1001D9AD8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  static ToolbarItemPlacement.cancellationAction.getter();
  v16[8] = a1;
  sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
  sub_10006B6C0();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v16[4] = a1;
  sub_10000341C(&qword_100264480, &unk_1001DC970);
  sub_1001488D4();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  TupleToolbarContent.init(_:)();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100144E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = type metadata accessor for RewritingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  static ButtonRole.cancel.getter();
  sub_100148B68(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100148AE8(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for RewritingView);
  Button<>.init(role:action:)();
  sub_100037954();
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  LOBYTE(v11) = v16;
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
  View.accessibility(label:)();
  sub_10002A984(v13, v15, v11 & 1);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100145194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v3 - 8);
  v28 = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  __chkstk_darwin(v28);
  v5 = &v25 - v4;
  v25 = sub_10000341C(&qword_100264490, &qword_1001DC980);
  __chkstk_darwin(v25);
  v27 = &v25 - v6;
  v7 = type metadata accessor for RewritingView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v26 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v25 - v11;
  v13 = *(a1 + 48);
  if (sub_100037954())
  {
    LocalizedStringKey.init(stringLiteral:)();
    sub_100148B68(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    sub_100148AE8(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RewritingView);
    Button<>.init(_:action:)();
    v16 = v26;
    (*(v10 + 16))(v27, v12, v26);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_100048B00();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v16);
  }

  else
  {
    static ButtonRole.confirm.getter();
    sub_100148B68(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = swift_allocObject();
    sub_100148AE8(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for RewritingView);
    Button<>.init(role:action:)();
    swift_getKeyPath();
    v30 = v13;
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v13 + 112);
    KeyPath = swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = v27;
    v24 = &v5[*(v28 + 36)];
    *v24 = KeyPath;
    v24[1] = sub_10002AAC0;
    v24[2] = v22;
    sub_1000081F8(v5, v23, &qword_10025C820, &qword_1001D9AE0);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_100048B00();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v5, &qword_10025C820, &qword_1001D9AE0);
  }
}

uint64_t sub_100145710(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1 + 144) == 1)
  {
    *(v1 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100145824(uint64_t a1)
{
  sub_1000C2BCC(2, 0, 0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100145894(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10013E65C();
  swift_getKeyPath();
  sub_100149490(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 81);

  if (v2 != v4)
  {
    sub_10013E65C();
    sub_1001537FC(v2);
  }

  return result;
}

uint64_t sub_100145978(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for RewritingView(0);
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [v2 enableIntelligentEntryFieldView:v4];
    swift_unknownObjectRelease();
  }

  type metadata accessor for RewritingView(0);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100145AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  __chkstk_darwin(v22);
  v5 = &v19 - v4;
  v6 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v21 = static Color.clear.getter();
  v20 = static Edge.Set.vertical.getter();
  v19 = static SafeAreaRegions.all.getter();
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_100145DA8(&v5[*(v13 + 44)]);
  v23 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80, &protocol conformance descriptor for VStack<A>);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  sub_10000F500(v5, &qword_10025C6D8, &unk_1001D7C80);
  v14 = *(v7 + 16);
  v14(v10, v12, v6);
  v15 = v19;
  *a2 = v21;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  v16 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v14((a2 + *(v16 + 48)), v10, v6);
  v17 = *(v7 + 8);

  v17(v12, v6);
  v17(v10, v6);
}

uint64_t sub_100145DA8@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v81 = v1;
  v82 = v2;
  __chkstk_darwin(v1);
  v79 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v80 = sub_10000341C(&qword_10025C760, &unk_1001D1830) - 8;
  v7 = __chkstk_darwin(v80);
  v76 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v75 = v73 - v10;
  v11 = __chkstk_darwin(v9);
  v74 = v73 - v12;
  __chkstk_darwin(v11);
  v78 = v73 - v13;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2065736F706D6F43;
  v14._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v15._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v83 = String.init(localized:table:bundle:locale:comment:)();
  v84 = v17;
  v73[3] = sub_10002AC34();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v23 = Text.bold()();
  v25 = v24;
  v27 = v26;
  sub_10002A984(v18, v20, v22 & 1);

  LODWORD(v83) = static HierarchicalShapeStyle.primary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;
  sub_10002A984(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v83 = v28;
  v84 = v30;
  v85 = v18 & 1;
  v86 = v33;
  v87 = KeyPath;
  v88 = 1;
  v35 = v79;
  static ParagraphTypesetting.balanced.getter();
  v73[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v73[1] = sub_10004882C();
  v36 = v78;
  View.paragraphTypesetting(_:isEnabled:)();
  v37 = *(v82 + 8);
  v82 += 8;
  v37(v35, v81);
  sub_10002A984(v28, v30, v18 & 1);

  LOBYTE(v25) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v38 = v36 + *(v80 + 44);
  *v38 = v25;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = 0;
  v83 = sub_10013E31C();
  v84 = v43;
  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  LODWORD(v83) = static HierarchicalShapeStyle.secondary.getter();
  v49 = Text.foregroundStyle<A>(_:)();
  v51 = v50;
  LOBYTE(v30) = v52;
  sub_10002A984(v44, v46, v48 & 1);

  static Font.callout.getter();
  v53 = Text.font(_:)();
  v55 = v54;
  LOBYTE(v46) = v56;
  v58 = v57;

  sub_10002A984(v49, v51, v30 & 1);

  v59 = swift_getKeyPath();
  v83 = v53;
  v84 = v55;
  v85 = v46 & 1;
  v86 = v58;
  v87 = v59;
  v88 = 1;
  v60 = v79;
  static ParagraphTypesetting.balanced.getter();
  v61 = v74;
  View.paragraphTypesetting(_:isEnabled:)();
  v37(v60, v81);
  sub_10002A984(v53, v55, v46 & 1);

  LOBYTE(v44) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v62 = v61 + *(v80 + 44);
  *v62 = v44;
  *(v62 + 8) = v63;
  *(v62 + 16) = v64;
  *(v62 + 24) = v65;
  *(v62 + 32) = v66;
  *(v62 + 40) = 0;
  v67 = v78;
  v68 = v75;
  sub_1000081F8(v78, v75, &qword_10025C760, &unk_1001D1830);
  v69 = v76;
  sub_1000081F8(v61, v76, &qword_10025C760, &unk_1001D1830);
  v70 = v77;
  sub_1000081F8(v68, v77, &qword_10025C760, &unk_1001D1830);
  v71 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v69, v70 + *(v71 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v61, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v67, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v69, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v68, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_100146474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  __chkstk_darwin(v23);
  v21 = &v19 - v3;
  v22 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v20 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  static ToolbarItemPlacement.cancellationAction.getter();
  v26 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v25 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v11 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v12 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v27 = v11;
  v28 = v12;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v23 + 48);
  v15 = v20;
  v14 = v21;
  (*(v8 + 16))(v21, v10, v20);
  v16 = &v14[v13];
  v17 = v22;
  (*(v4 + 16))(v16, v6, v22);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v17);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_10014681C(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100148B68(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RewritingView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100148AE8(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for RewritingView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

void *sub_10014698C(uint64_t a1)
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C2BCC(0, 0, 0);
  type metadata accessor for RewritingView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v5 = NavigationPath.isEmpty.getter();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result endWritingTools];
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

__n128 sub_100146B08@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RewritingView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v6 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
    v26 = v8 & 1;
    v14[8] = 1;
    v18 = v7;
    v19 = v9;
    v20 = v8 & 1;
    *v21 = v17[0];
    *&v21[3] = *(v17 + 3);
    v22 = v10;
    v23 = v15;
    v24 = v16;
    v25 = 1;
  }

  else
  {
    v11 = static VerticalAlignment.center.getter();
    sub_1000405A4(v27);
    LOBYTE(v17[0]) = 1;
    v26 = v27[24];
    LOBYTE(v15) = 0;
    v18 = v11;
    v19 = 0;
    v20 = 1;
    v22 = *v27;
    v23 = *&v27[8];
    LOBYTE(v24) = v27[24];
    *(&v24 + 1) = v28;
    v25 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800, &protocol conformance descriptor for HStack<A>);
  _ConditionalContent<>.init(storage:)();
  v12 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v12;
  *(a1 + 64) = v30;
  result = *&v27[16];
  *a1 = *v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100146D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 543519573;
  v7._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v8);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.init(stringInterpolation:)();
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  static Locale.current.getter();
  v46 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v12;
  v13 = type metadata accessor for RewritingView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100148B68(a1, &v37 - v16, type metadata accessor for RewritingView);
  v17 = *(v14 + 80);
  v18 = swift_allocObject();
  sub_100148AE8(&v37 - v16, v18 + ((v17 + 16) & ~v17), type metadata accessor for RewritingView);
  sub_10002AC34();
  v41 = v5;
  v19 = Button<>.init<A>(_:action:)();
  __chkstk_darwin(v19);
  sub_100148B68(a1, &v37 - v16, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(&v37 - v16, v21 + ((v17 + 32) & ~v17), type metadata accessor for RewritingView);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v39 = type metadata accessor for _TaskModifier2();
    v40 = &v37;
    v38 = *(v39 - 8);
    __chkstk_darwin(v39);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v46 = 0xD000000000000036;
    v47 = 0x80000001001E77F0;
    v45 = 286;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    __chkstk_darwin(v29);
    (*(v23 + 16))(&v37 - v25, &v37 - v25, v22);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v23 + 8))(&v37 - v25, v22);
    v30 = v44;
    (*(v42 + 32))(v44, v41, v43);
    v31 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v38 + 32))(v30 + *(v31 + 36), v27, v39);
  }

  else
  {
    v33 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v34 = v44;
    v35 = (v44 + *(v33 + 36));
    v36 = type metadata accessor for _TaskModifier();
    (*(v23 + 32))(&v35[*(v36 + 20)], &v37 - v25, v22);
    *v35 = &unk_1001DCDC8;
    *(v35 + 1) = v21;
    return (*(v42 + 32))(v34, v41, v43);
  }
}

uint64_t sub_100147400(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  sub_1000C2BCC(0, 0, 0);
  v7 = type metadata accessor for RewritingView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v8 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v10 = *(a1 + *(v7 + 56));
  if (v10)
  {
    swift_getKeyPath();
    v13[1] = v6;
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v6 + 96))
    {
      if (*(v6 + 96) == 255)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = *(v6 + 80);
      v12 = *(v6 + 88);
      sub_10000F3F4(*(v6 + 72), v11, v12, 0);
    }

    v10(v11, v12);
  }

  return result;
}

uint64_t sub_100147688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100147720, v5, v4);
}

uint64_t sub_100147720(uint64_t a1, uint64_t a2)
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [v4 resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_1001477D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001478A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100147958(uint64_t a1)
{
  sub_100147C04(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100147C04(319, &qword_10025D688, type metadata accessor for WritingToolsModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100147CBC(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RewritingModel(319);
        if (v4 <= 0x3F)
        {
          sub_100147C68(319, &qword_10025DE40, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100147C04(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100147C04(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v7 <= 0x3F)
              {
                sub_1000275C0();
                if (v8 <= 0x3F)
                {
                  sub_100147C68(319, qword_100262780, &type metadata accessor for Binding);
                  if (v9 <= 0x3F)
                  {
                    sub_1000596F4();
                    if (v10 <= 0x3F)
                    {
                      sub_100147CBC(319, &qword_10025C560, &unk_10025C568, &unk_1001D7870, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_100147C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100147C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100147CBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_100147D24()
{
  result = qword_100264370;
  if (!qword_100264370)
  {
    sub_100003E34(&qword_1002642B0, &qword_1001DC550);
    sub_100147DDC();
    sub_100007120(&qword_1002643A0, &qword_1002643A8, &qword_1001DC5D0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264370);
  }

  return result;
}

unint64_t sub_100147DDC()
{
  result = qword_100264378;
  if (!qword_100264378)
  {
    sub_100003E34(&qword_100264298, &qword_1001DC518);
    sub_100147E94();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264378);
  }

  return result;
}

unint64_t sub_100147E94()
{
  result = qword_100264380;
  if (!qword_100264380)
  {
    sub_100003E34(&qword_100264290, &qword_1001DC510);
    sub_100147F50();
    sub_100149490(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264380);
  }

  return result;
}

unint64_t sub_100147F50()
{
  result = qword_100264388;
  if (!qword_100264388)
  {
    sub_100003E34(&qword_100264288, &qword_1001DC508);
    sub_100147FDC();
    sub_100148158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264388);
  }

  return result;
}

unint64_t sub_100147FDC()
{
  result = qword_100264390;
  if (!qword_100264390)
  {
    sub_100003E34(&qword_100264280, &qword_1001DC500);
    sub_100003E34(&qword_100264270, &qword_1001DC4F0);
    sub_100003E34(&qword_100264268, &qword_1001DC4E8);
    sub_100003E34(&qword_100264260, &qword_1001DC4E0);
    sub_100007120(&qword_1002642A8, &qword_100264260, &qword_1001DC4E0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264390);
  }

  return result;
}

unint64_t sub_100148158()
{
  result = qword_100264398;
  if (!qword_100264398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264398);
  }

  return result;
}

uint64_t sub_100148208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002643E0, &unk_1001DC858);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10014829C()
{
  v0 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0x4008000000000000;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 20) = 1;
  v4 = *(v0 + 40);
  *&v2[v4] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v5 = &v2[*(v0 + 44)];
  *v5 = KeyPath;
  v5[8] = 0;
  sub_10000341C(&qword_1002643D0, &qword_1001DC850);
  sub_100007120(&qword_1002643D8, &qword_1002643D0, &qword_1001DC850, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100149490(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
  View.buttonStyle<A>(_:)();
  return sub_1001494D8(v2, type metadata accessor for PrimaryButtonStyle);
}

uint64_t sub_100148470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x4030000000000000;
  }

  v6 = static Edge.Set.all.getter();
  v7 = sub_10000341C(&qword_1002643B0, &qword_1001DC7C8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10000341C(&qword_1002643B8, &qword_1001DC7D0);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v5;
  *(v9 + 24) = 0;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  return result;
}

__n128 sub_100148528@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v4 = sub_10000341C(&qword_1002643C0, &qword_1001DC7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(&qword_1002643C8, &qword_1001DC7E0) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

uint64_t sub_100148638@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1001486C8()
{
  result = qword_100264458;
  if (!qword_100264458)
  {
    sub_100003E34(&qword_100264420, &qword_1001DC8A0);
    sub_100003E34(&qword_100264410, &qword_1001DC890);
    sub_100003E34(&qword_100264408, &qword_1001DC888);
    sub_100007120(&qword_100264448, &qword_100264408, &qword_1001DC888, &protocol conformance descriptor for VStack<A>);
    sub_10002AC34();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264458);
  }

  return result;
}

uint64_t sub_100148824(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for RewritingView(0);

  return sub_100145894(a1, a2);
}

unint64_t sub_1001488D4()
{
  result = qword_100264488;
  if (!qword_100264488)
  {
    sub_100003E34(&qword_100264480, &unk_1001DC970);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_100048B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264488);
  }

  return result;
}

uint64_t sub_1001489A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RewritingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100148AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100148B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100148BEC()
{
  result = qword_100264548;
  if (!qword_100264548)
  {
    sub_100003E34(&qword_100264540, &unk_1001DCC70);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    sub_100148CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264548);
  }

  return result;
}

unint64_t sub_100148CA4()
{
  result = qword_100264550;
  if (!qword_100264550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264550);
  }

  return result;
}

unint64_t sub_100148D00()
{
  result = qword_100264558;
  if (!qword_100264558)
  {
    sub_100003E34(&qword_100264530, &qword_1001DCC60);
    sub_100007120(&qword_100264560, &qword_100264568, &unk_1001DCCB0, &protocol conformance descriptor for Button<A>);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264558);
  }

  return result;
}

unint64_t sub_100148DD0()
{
  result = qword_100264588;
  if (!qword_100264588)
  {
    sub_100003E34(&qword_100264580, &unk_1001DCCD0);
    sub_100148BEC();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264588);
  }

  return result;
}

unint64_t sub_100148E88()
{
  result = qword_100264598;
  if (!qword_100264598)
  {
    sub_100003E34(&qword_100264520, &qword_1001DCC50);
    sub_100003E34(&qword_100264518, &qword_1001DCC48);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&qword_1002645A0, &qword_100264518, &qword_1001DCC48, &protocol conformance descriptor for HStack<A>);
    sub_100149490(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264598);
  }

  return result;
}

unint64_t sub_100149000()
{
  result = qword_1002645A8;
  if (!qword_1002645A8)
  {
    sub_100003E34(&qword_100264508, &qword_1001DCC38);
    sub_1001490B8();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645A8);
  }

  return result;
}

unint64_t sub_1001490B8()
{
  result = qword_1002645B0;
  if (!qword_1002645B0)
  {
    sub_100003E34(&qword_100264590, &qword_1001DCCE0);
    sub_100007120(&qword_1002645B8, &qword_1002645C0, &qword_1001DCCE8, &protocol conformance descriptor for Button<A>);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645B0);
  }

  return result;
}

unint64_t sub_100149188()
{
  result = qword_1002645F0;
  if (!qword_1002645F0)
  {
    sub_100003E34(&qword_1002645D0, &qword_1001DCCF8);
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
    sub_100149240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645F0);
  }

  return result;
}

unint64_t sub_100149240()
{
  result = qword_1002645F8;
  if (!qword_1002645F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645F8);
  }

  return result;
}

uint64_t sub_100149294(uint64_t a1)
{
  v4 = *(type metadata accessor for RewritingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100144288(a1, v6, v7, v1 + v5);
}

unint64_t sub_1001493AC()
{
  result = qword_100264620;
  if (!qword_100264620)
  {
    sub_100003E34(&qword_100264608, &qword_1001DCD40);
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264620);
  }

  return result;
}

uint64_t sub_100149490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001494D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100149640(uint64_t a1)
{
  v4 = *(type metadata accessor for RewritingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1001447F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10014977C()
{
  v1 = (type metadata accessor for RewritingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  j__swift_release(*(v0 + v3 + 32), *(v0 + v3 + 40));

  v5 = v0 + v3 + v1[12];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v3 + v1[16]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100149924()
{
  v2 = *(type metadata accessor for RewritingView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100147688(v4, v5, v0 + v3);
}

uint64_t sub_100149A00()
{
  v1 = (type metadata accessor for RewritingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  j__swift_release(*(v0 + v3 + 32), *(v0 + v3 + 40));

  v5 = v0 + v3 + v1[12];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v3 + v1[16]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100149BB4()
{
  result = qword_100264630;
  if (!qword_100264630)
  {
    sub_100003E34(&qword_1002643B8, &qword_1001DC7D0);
    sub_100007120(&qword_100264638, &qword_1002643B0, &qword_1001DC7C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264630);
  }

  return result;
}

unint64_t sub_100149C70()
{
  result = qword_100264640;
  if (!qword_100264640)
  {
    sub_100003E34(&qword_1002643C8, &qword_1001DC7E0);
    sub_100007120(&qword_100264648, &qword_1002643C0, &qword_1001DC7D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264640);
  }

  return result;
}

uint64_t sub_100149D28()
{
  sub_100003E34(&qword_1002643D0, &qword_1001DC850);
  type metadata accessor for PrimaryButtonStyle(255);
  sub_100007120(&qword_1002643D8, &qword_1002643D0, &qword_1001DC850, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100149490(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
  return swift_getOpaqueTypeConformance2();
}

id sub_100149EB0(uint64_t a1, uint64_t a2)
{
  sub_1000057A8(_swiftEmptyArrayStorage);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = sub_10014A430(a1, a2);
  v9 = v8;

  v35 = &type metadata for String;
  *&v34 = v7;
  *(&v34 + 1) = v9;
  sub_100008150(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58(v33, v4, v6, isUniquelyReferenced_nonNull_native);

  sub_10014A430(a1, a2);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v35 = &type metadata for String;
    *&v34 = v12;
    *(&v34 + 1) = v14;
    sub_100008150(&v34, v33);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, v15, v17, v18);
  }

  if (sub_10014B884(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD000000000000021, 0x80000001001E7910, v19);
  }

  if (sub_10014BB94(a1, a2))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD00000000000001DLL, 0x80000001001E78F0, v20);
  }

  if (sub_10014BCF8(a1, a2))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD000000000000015, 0x80000001001E78D0, v21);
  }

  v22 = Error.localizedDescription.getter();
  v35 = &type metadata for String;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  sub_100008150(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58(v33, 0xD00000000000001DLL, 0x80000001001E78B0, v24);
  v25 = sub_10014A2E8(a1, a2);
  v26 = [v25 domain];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  v27 = sub_10014A2E8(a1, a2);
  v28 = [v27 code];

  v29 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v29 initWithDomain:v26 code:v28 userInfo:isa];

  return v31;
}

uint64_t sub_10014A284()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10002B2EC(v0, qword_1002771D0);
  sub_10000F34C(v0, qword_1002771D0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10014A2E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

uint64_t sub_10014A430(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v92 = type metadata accessor for GenerativeError.ErrorType();
  v88 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v94 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  v7 = __chkstk_darwin(v6 - 8);
  v99 = v78 - v8;
  v9 = *(a1 - 8);
  v10 = __chkstk_darwin(v7);
  v84 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v96 = v78 - v13;
  __chkstk_darwin(v12);
  v15 = v78 - v14;
  v107 = type metadata accessor for GenerativeError();
  v101 = *(v107 - 8);
  __chkstk_darwin(v107);
  v95 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  v22 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v83 = String.init(localized:table:bundle:locale:comment:)();
  v105 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v82 = String.init(localized:table:bundle:locale:comment:)();
  v106 = v24;
  v89 = "Try a longer selection.";
  v90 = 0xD000000000000011;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v87 = String.init(localized:table:bundle:locale:comment:)();
  v103 = v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v86 = String.init(localized:table:bundle:locale:comment:)();
  v100 = v26;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v79 = String.init(localized:table:bundle:locale:comment:)();
  v104 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v78[1] = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  v80 = "nticationErrorKey";
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v97 = v22;
  v98 = v19;
  v81 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v34 = *(v9 + 16);
  v35 = v102;
  v34(v15);
  v36 = v99;
  v37 = v107;
  if (swift_dynamicCast())
  {

    v38 = v101;
    (*(v101 + 56))(v36, 0, 1, v37);
    v39 = v95;
    (*(v38 + 32))(v95, v36, v37);
    v40 = GenerativeError.userFacingLocalizedMessage.getter();
    if (v41)
    {
      v42 = v40;
      v43 = v41;

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = 0x65736E6F70736552;
      v44._object = 0xEE00206D6F726620;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
      v45._countAndFlagsBits = sub_1000971C0();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v45);

      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v47 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 10256610;
      v48._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
      v49._countAndFlagsBits = v42;
      v49._object = v43;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v49);

      v50._countAndFlagsBits = 10322146;
      v50._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v38 + 8))(v39, v107);
      return v47;
    }

    v52 = v91;
    GenerativeError.type.getter();
    v53 = v88;
    v54 = v92;
    v55 = (*(v88 + 88))(v52, v92);
    if (v55 == enum case for GenerativeError.ErrorType.networking(_:) || v55 == enum case for GenerativeError.ErrorType.availability(_:) || v55 == enum case for GenerativeError.ErrorType.canceled(_:))
    {

      (*(v53 + 8))(v52, v54);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v47 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v38 + 8))(v39, v37);
      return v47;
    }

    if (v55 == enum case for GenerativeError.ErrorType.authentication(_:))
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v47 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = 0x7920657461647055;
      v56._object = 0xEC0000002072756FLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      v57._countAndFlagsBits = sub_1000971C0();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v57);

      v58._countAndFlagsBits = 0xD000000000000015;
      v58._object = 0x80000001001E7B20;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v38 + 8))(v39, v37);
      (*(v53 + 8))(v91, v92);
      return v47;
    }

    (*(v38 + 8))(v39, v37);
    (*(v53 + 8))(v52, v54);
    return v87;
  }

  v94 = v31;
  v95 = v29;
  v92 = v33;
  (*(v101 + 56))(v36, 1, 1, v37);
  sub_10014C1D0(v36);
  (v34)(v96, v35, a1);
  if (swift_dynamicCast())
  {

    if (v109 != 2)
    {
      sub_10009A8B8(v108, v109);
      return v87;
    }

    goto LABEL_6;
  }

  v51 = v93;
  if (sub_10014BB94(a1, v93))
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    goto LABEL_9;
  }

  (v34)(v84, v35, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    v59 = v108;
    v60 = sub_10014A2E8(a1, v51);
    v61 = [v60 code];

    v47 = v85;
    if (v61 != 3)
    {

      return v47;
    }

    goto LABEL_18;
  }

  v107 = a1;
  v62 = sub_10014A2E8(a1, v51);
  v63 = [v62 domain];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v85;
  if (v67 == v64 && v68 == v66)
  {

LABEL_27:

    v71 = v107;
    v72 = v93;
    v73 = sub_10014A2E8(v107, v93);
    v74 = [v73 code];

    if (v74 == 1)
    {
LABEL_18:

      return v83;
    }

    if (v74 > 0x1B)
    {
      goto LABEL_44;
    }

    if (((1 << v74) & 0xCD08000) != 0)
    {
LABEL_32:

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    if (((1 << v74) & 0x5A00) == 0 && v74 != 24)
    {
LABEL_44:
      if (v74 - 4 >= 4 && v74 != 8)
      {
        if (sub_10014BEC0(v71, v72) & 1) != 0 || (sub_10014BFF8(v71, v72))
        {
          goto LABEL_32;
        }

        if (v74 != 38)
        {
          return v47;
        }
      }
    }

LABEL_6:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
LABEL_9:
    String.init(localized:table:bundle:locale:comment:)();
    return v47;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v70)
  {
    goto LABEL_27;
  }

  if ((v64 != 0xD00000000000001ALL || 0x80000001001E4380 != v66) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if (v64 == 0xD000000000000016 && 0x80000001001E2FC0 == v66)
    {
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v76 & 1) == 0)
      {
        return v47;
      }
    }

    v77 = sub_10014A2E8(v107, v93);
    [v77 code];

    return v47;
  }

  v75 = sub_10014A2E8(v107, v93);
  [v75 code];

  return v79;
}

BOOL sub_10014B884(uint64_t a1)
{
  v2 = v1;
  v24 = type metadata accessor for GenerativeError.ErrorType();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = *(a1 - 8);
  __chkstk_darwin(v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeError();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v2, a1);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v10, 0, 1, v14);
    (*(v15 + 32))(v17, v10, v14);
    GenerativeError.type.getter();
    (*(v15 + 8))(v17, v14);
    v20 = v24;
    v21 = (*(v4 + 88))(v6, v24) == enum case for GenerativeError.ErrorType.authentication(_:);
    (*(v4 + 8))(v6, v20);
  }

  else
  {
    v19(v10, 1, 1, v14);
    sub_10014C1D0(v10);
    return 0;
  }

  return v21;
}

BOOL sub_10014BB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014A2E8(a1, a2);
  v5 = [v4 domain];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v9 == v8)
  {
    v12 = 2;
LABEL_8:

    goto LABEL_9;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    v12 = 2;
LABEL_9:

LABEL_10:
    v13 = sub_10014A2E8(a1, a2);
    v14 = [v13 code];

    return v14 == v12;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v6 && v16 == v8)
  {
    v12 = 1002;
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v18)
  {
    v12 = 1002;
    goto LABEL_10;
  }

  return result;
}

BOOL sub_10014BCF8(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  v8 = sub_10014A2E8(a1, a2);
  v9 = [v8 domain];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v10 && v13 == v12)
  {

    goto LABEL_10;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v15)
  {
LABEL_10:
    v16 = sub_10014A2E8(a1, a2);
    v17 = [v16 code];

    return v17 == 39;
  }

  return result;
}

uint64_t sub_10014BEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014A2E8(a1, a2);
  v5 = [v4 domain];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v11)
  {
LABEL_8:
    v13 = sub_10014A2E8(a1, a2);
    v14 = [v13 code];

    v15 = vdupq_n_s64(v14);
    return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100249E70, v15), vceqq_s64(unk_100249E80, v15)), vuzp1q_s32(vceqq_s64(xmmword_100249E90, v15), vceqq_s64(unk_100249EA0, v15))))) & 1;
  }

  return result;
}

uint64_t sub_10014BFF8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10014A2E8(v6, v9);
  v11 = [v10 domain];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    goto LABEL_9;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_9:
    v20 = sub_10014A2E8(a1, a2);
    v21 = [v20 code];

    v19 = v21 == 35;
    return v19 & 1;
  }

  (*(v5 + 16))(v8, v2, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {
    v18 = v23[1];
    v19 = related decl 'e' for SummarizationClientError.isSensitiveContentError.getter();
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_10014C1D0(uint64_t a1)
{
  v2 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014C240(uint64_t a1)
{
  sub_10014C8CC(319, &unk_100263298, type metadata accessor for CGSize, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_10014C8CC(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10014C358(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for DynamicTypeSize() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 41) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0xFE)
      {
        v20 = *(v6 + 48);

        return v20(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_10014C5C8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for DynamicTypeSize() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 41) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0xFE)
  {
    v22 = *(v23 + 56);

    v22(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13, a2, v9, v7);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_10014C8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10014C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10014CA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10014CB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for Image.Scale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22[0] = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 104);
  v11(v10, enum case for DynamicTypeSize.accessibility3(_:), v7);
  sub_10014DBEC();
  v22[1] = v3;
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v8 + 8);
  v13(v10, v7);
  if ((v12 & 1) == 0)
  {
    return (*(v5 + 104))(v24, enum case for Image.Scale.small(_:), v4);
  }

  v14 = v4;
  v11(v10, enum case for DynamicTypeSize.accessibility1(_:), v7);
  v15 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13(v10, v7);
  if (v15)
  {
    return (*(v5 + 16))(v24, v23, v14);
  }

  v17 = enum case for Image.Scale.small(_:);
  v18 = *(v5 + 104);
  v19 = v22[0];
  v18(v22[0], enum case for Image.Scale.small(_:), v14);
  v20 = static Image.Scale.== infix(_:_:)();
  (*(v5 + 8))(v19, v14);
  if (v20)
  {
    v21 = v17;
  }

  else
  {
    v21 = enum case for Image.Scale.medium(_:);
  }

  return v18(v24, v21, v14);
}

uint64_t sub_10014CE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for HStack();
  v44 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v41 = &v41 - v9;
  __chkstk_darwin(v8);
  v42 = &v41 - v10;
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = type metadata accessor for _ConditionalContent();
  v46 = *(v21 - 8);
  v47 = v21;
  __chkstk_darwin(v21);
  v45 = &v41 - v22;
  if (sub_10014D3D4())
  {
    __chkstk_darwin(*(v2 + 8));
    *(&v41 - 4) = v3;
    *(&v41 - 3) = v4;
    *(&v41 - 2) = v2;
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v24 = *(v12 + 16);
    v24(v20, v18, v11);
    v25 = *(v12 + 8);
    v25(v18, v11);
    v24(v15, v20, v11);
    v26 = swift_getWitnessTable();
    v27 = v45;
    sub_10014C998(v15, v11, v5, WitnessTable, v26);
    v25(v15, v11);
    v25(v20, v11);
  }

  else
  {
    __chkstk_darwin(*(v2 + 16));
    *(&v41 - 4) = v3;
    *(&v41 - 3) = v4;
    *(&v41 - 2) = v2;
    v28 = v41;
    HStack.init(alignment:spacing:content:)();
    v29 = swift_getWitnessTable();
    v30 = v44;
    v31 = *(v44 + 16);
    v32 = v42;
    v31(v42, v28, v5);
    v33 = *(v30 + 8);
    v33(v28, v5);
    v34 = v43;
    v31(v43, v32, v5);
    v35 = swift_getWitnessTable();
    v27 = v45;
    sub_10014CA90(v34, v11, v5, v35, v29);
    v33(v34, v5);
    v33(v32, v5);
  }

  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v49 = v36;
  v50 = v37;
  v38 = v47;
  swift_getWitnessTable();
  v39 = v46;
  (*(v46 + 16))(v48, v27, v38);
  return (*(v39 + 8))(v27, v38);
}

BOOL sub_10014D3D4()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10011F024(v3);
  DynamicTypeSize.isAccessibilitySize.getter();
  (*(v1 + 8))(v3, v0);
  v4 = Axis.rawValue.getter();
  return v4 == Axis.rawValue.getter();
}

uint64_t sub_10014D4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicTypeAdjustingStack(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 44), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void *sub_10014D5F8(uint64_t a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  if ((v6 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      v4 = v5;
    }

    else
    {
      v4 = *a1;
      if (*a1 <= v5)
      {
        v4 = v5;
      }
    }

    *a1 = v4;
    *(a1 + 8) = 0;
  }

  return result;
}

void sub_10014D66C(uint64_t a2@<X8>)
{
  v3 = static Color.clear.getter();
  GeometryProxy.size.getter();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
}

double sub_10014D6B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = sub_10000341C(&qword_100264710, &qword_1001DD028);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_100264718, &qword_1001DD030) + 36));
  *v11 = sub_10014D66C;
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v9;
  v16 = v15;
  *&v17 = v5;
  BYTE8(v17) = v6;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v16);
  v12 = (a2 + *(sub_10000341C(&qword_100264720, &qword_1001DD038) + 36));
  v13 = v17;
  *v12 = v16;
  v12[1] = v13;
  result = *&v18;
  v12[2] = v18;
  return result;
}

uint64_t sub_10014D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_10000341C(&qword_1002646E0, &qword_1001DCF30);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_1002646E8, &qword_1001DCF38) + 36));
  *v11 = sub_10014DA18;
  v11[1] = v9;
}

uint64_t sub_10014D9D8(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 41, 7);
}

uint64_t sub_10014DA38(void *a1)
{
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10014DB08()
{
  result = qword_1002646F0;
  if (!qword_1002646F0)
  {
    sub_100003E34(&qword_1002646E8, &qword_1001DCF38);
    sub_100007120(&qword_1002646F8, &qword_1002646E0, &qword_1001DCF30, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_100264700, &qword_100264708, qword_1001DCF68, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002646F0);
  }

  return result;
}

unint64_t sub_10014DBEC()
{
  result = qword_100260DE0;
  if (!qword_100260DE0)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DE0);
  }

  return result;
}

uint64_t sub_10014DC48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10014DC94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014DD08()
{
  result = qword_100264728;
  if (!qword_100264728)
  {
    sub_100003E34(&qword_100264720, &qword_1001DD038);
    sub_10014DD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264728);
  }

  return result;
}

unint64_t sub_10014DD94()
{
  result = qword_100264730;
  if (!qword_100264730)
  {
    sub_100003E34(&qword_100264718, &qword_1001DD030);
    sub_100007120(&qword_100264738, &qword_100264710, &qword_1001DD028, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_100264740, &qword_100264748, &unk_1001DD040, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264730);
  }

  return result;
}

void sub_10014DE88()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_100264750 = v1;
}

uint64_t static FeedbackConfigurationHelper.useReportConcernUI()()
{
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1)
  {
    v2[3] = &type metadata for WritingTools;
    v2[4] = sub_10002AC88();
    LOBYTE(v2[0]) = 14;
    v0 = isFeatureEnabled(_:)();
    sub_10000F4B4(v2);
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

id FeedbackConfigurationHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedbackConfigurationHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id FeedbackConfigurationHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_10014E120()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771E8 = result;
  return result;
}

NSString sub_10014E160()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771F0 = result;
  return result;
}

NSString sub_10014E1A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771F8 = result;
  return result;
}

uint64_t sub_10014E1D8()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10014E288@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10014E334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_10014E4A4()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10014E554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10014E600(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

id sub_10014E770()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

id sub_10014E820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_10014E8D8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_1000081B0(0, &qword_100264A18, NSMutableOrderedSet_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10014EA44()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_10014EAF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_10014EBA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *sub_10014ED10()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_10014EDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10014EE70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264A00, NSMutableArray_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_10014F000()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_10014F0B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_10014F15C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_10014F2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  ObservationRegistrar.init()();

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = [objc_allocWithZone(NSMutableOrderedSet) initWithCapacity:5];
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SmartReplyAnalytics init", v9, 2u);
  }

  return v3;
}

void sub_10014F404(void *a1)
{
  v2 = v1;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F38);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136380675;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10002510C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "reportResponseRequested: %{private}s", v8, 0xCu);
    sub_10000F4B4(v9);
  }

  v13 = IAChannelSmartReplies;
  swift_getKeyPath();
  v15 = v2;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 40))
  {

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [objc_opt_self() sendSignal:v5 toChannel:v13 withNullableUniqueStringID:v14 withPayload:0];
}

void sub_10014F638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F38);
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v60 = a3;
  v59 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v13 = 136380931;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_10002510C(v14, v15, &v64);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2085;
    v17 = Dictionary.description.getter();
    v19 = sub_10002510C(v17, v18, &v64);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "reportResponseCompleted: %{private}s resultOptions: %{sensitive}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009D1E0(a2);
  v20 = sub_10009D68C(a2);
  v22 = v21;
  sub_10009D508(a2);
  v24 = v23;
  v62 = sub_10009D5C4(a2);
  v61 = sub_10009D5D0(a2);

  sub_10014E334(v20, v22);
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v26 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v27 = v26;
  v28 = String._bridgeToObjectiveC()();
  v29 = IAPayloadKeyFeedbackServiceOriginalContent;
  *(inited + 40) = v28;
  *(inited + 48) = v29;
  v30 = v29;
  v31 = String._bridgeToObjectiveC()();

  v32 = IAPayloadKeyFeedbackServiceGeneratedContent;
  *(inited + 56) = v31;
  *(inited + 64) = v32;
  v33 = v32;

  v34 = String._bridgeToObjectiveC()();

  *(inited + 72) = v34;
  v35 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v24)
  {
    if (qword_10025A820 != -1)
    {
      swift_once();
    }

    v36 = qword_1002771E8;
    v37 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v35;
    sub_1001A9924(v37, v36, isUniquelyReferenced_nonNull_native);

    v35 = v64;
  }

  if (v62)
  {
    v39 = qword_10025A828;
    v40 = v62;
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = qword_1002771F0;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v35;
    sub_1001A9924(v40, v41, v42);

    v35 = v64;
  }

  if (v61)
  {
    v43 = qword_10025A830;
    v44 = v61;
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = qword_1002771F8;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v35;
    sub_1001A9924(v44, v45, v46);
  }

  v47 = IAChannelSmartReplies;
  swift_getKeyPath();
  v64 = v5;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 40))
  {

    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = 0;
  }

  v49 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v49 sendSignal:v59 toChannel:v47 withNullableUniqueStringID:v48 withPayload:isa];

  swift_getKeyPath();
  v64 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v5 + 48);
  v52 = String._bridgeToObjectiveC()();

  [v51 addObject:v52];

  swift_getKeyPath();
  v64 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v5 + 64))
  {

    sub_10014EBA0(v60, a4);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "reportResponseCompleted: cached base response", v55, 2u);
    }
  }

  sub_10014F15C(v60, a4);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "reportResponseCompleted: cached generated content", v58, 2u);
  }
}

void sub_10014FE30(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F38);
  v7 = a1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v47 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v10 = 136380931;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10002510C(v11, v12, &v48);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2085;
    v14 = Dictionary.description.getter();
    v16 = sub_10002510C(v14, v15, &v48);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "reportResponseFailed: %{private}s resultOptions: %{sensitive}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009D1E0(a2);
  v17 = sub_10009D68C(a2);
  v19 = v18;
  v20 = sub_10009D5C4(a2);
  v21 = sub_10009D5D0(a2);

  sub_10014E334(v17, v19);
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v23 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  v26 = IAPayloadKeyFeedbackServiceOriginalContent;
  *(inited + 40) = v25;
  *(inited + 48) = v26;
  v27 = v26;
  v28 = String._bridgeToObjectiveC()();

  v29 = IAPayloadKeySmartRepliesReasonForFailure;
  *(inited + 56) = v28;
  *(inited + 64) = v29;
  v30 = v29;
  *(inited + 72) = String._bridgeToObjectiveC()();
  v31 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v20)
  {
    v32 = qword_10025A828;
    v33 = v20;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = qword_1002771F0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v31;
    sub_1001A9924(v33, v34, isUniquelyReferenced_nonNull_native);

    v31 = v48;
  }

  if (v21)
  {
    v36 = qword_10025A830;
    v37 = v21;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = qword_1002771F8;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v31;
    sub_1001A9924(v37, v38, v39);
  }

  v40 = IAChannelSmartReplies;
  swift_getKeyPath();
  v48 = v3;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = v20;
  if (*(v3 + 40))
  {

    v42 = String._bridgeToObjectiveC()();
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v43 sendSignal:v47 toChannel:v40 withNullableUniqueStringID:v42 withPayload:isa];

  swift_getKeyPath();
  v48 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v3 + 48);
  v46 = String._bridgeToObjectiveC()();

  [v45 addObject:v46];
}

void sub_100150408(unint64_t a1)
{
  v105 = type metadata accessor for NSFastEnumerationIterator();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v3 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6F0 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    v5 = sub_10000F34C(v4, qword_100276F38);

    v110 = v5;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v122 = v9;
      *v8 = 136642819;
      type metadata accessor for QuestionnaireEntry(0);
      v10 = Array.description.getter();
      v12 = sub_10002510C(v10, v11, &v122);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "reportQuestionnaireAnswers: userFilledEntries: %{sensitive}s", v8, 0xCu);
      sub_10000F4B4(v9);
    }

    v13 = sub_10000635C(_swiftEmptyArrayStorage);
    v15 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v106 = v3;
    if (!v15)
    {
      break;
    }

    v3 = 0;
    v113 = a1 & 0xC000000000000001;
    v109 = (a1 & 0xFFFFFFFFFFFFFF8);
    *&v14 = 136642819;
    v108 = v14;
    v112 = a1;
    v111 = v15;
    while (1)
    {
      if (v113)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        goto LABEL_17;
      }

      if (v3 >= v109[2])
      {
        goto LABEL_80;
      }

      v17 = *(a1 + 8 * v3 + 32);

      v18 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

LABEL_17:
      v19 = [*(v17 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) question];
      if (!v19)
      {

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v122 = v29;
          *v28 = v108;
          type metadata accessor for QuestionnaireEntry(0);
          v30 = Array.description.getter();
          v32 = v13;
          v33 = sub_10002510C(v30, v31, &v122);
          a1 = v112;

          *(v28 + 4) = v33;
          v13 = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "reportQuestionnaireAnswers: Received nil question for filled entries: %{sensitive}s", v28, 0xCu);
          sub_10000F4B4(v29);

          v15 = v111;
        }

        goto LABEL_10;
      }

      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      swift_getKeyPath();
      *&v122 = v17;
      sub_100152214(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
      if (v24)
      {
        v114 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
        v25 = v24;
      }

      else
      {
        v25 = 0xE400000000000000;
        v114 = 1701736270;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v13;
      a1 = sub_10000511C(v21, v23);
      v36 = v13;
      v37 = v13[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_79;
      }

      v40 = v35;
      if (v36[3] >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1000F2B4C();
          if ((v40 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_1000F0938(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_10000511C(v21, v23);
        if ((v40 & 1) != (v42 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        a1 = v41;
        if ((v40 & 1) == 0)
        {
LABEL_31:
          v13 = v122;
          *(v122 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v43 = (v13[6] + 16 * a1);
          *v43 = v21;
          v43[1] = v23;
          v44 = (v13[7] + 16 * a1);
          *v44 = v114;
          v44[1] = v25;

          v45 = v13[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_81;
          }

          v13[2] = v47;
          goto LABEL_9;
        }
      }

      v13 = v122;
      v16 = (*(v122 + 56) + 16 * a1);
      *v16 = v114;
      v16[1] = v25;

LABEL_9:
      a1 = v112;
      v15 = v111;
LABEL_10:
      ++v3;
      if (v18 == v15)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
  }

LABEL_35:
  v114 = v13;
  v48 = IASignalSmartRepliesQuestionnaireAnswerModified;
  v49 = IAChannelSmartReplies;
  swift_getKeyPath();
  v50 = v107;
  *&v122 = v107;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v50 + 40))
  {

    v51 = String._bridgeToObjectiveC()();
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = String._bridgeToObjectiveC()();
  *(inited + 40) = Dictionary._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  v55 = v54;
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
  v113 = v55;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v52 sendSignal:v48 toChannel:v49 withNullableUniqueStringID:v51 withPayload:isa];

  swift_getKeyPath();
  *&v122 = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v50 + 72);
  if (v57)
  {
    v58 = v57;
    v59 = v106;
    v112 = v58;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (!v123)
    {
LABEL_74:
      (*(v104 + 8))(v59, v105);

      return;
    }

    *&v60 = 136643331;
    v108 = v60;
    while (2)
    {
      sub_100008150(&v122, &v120);
      sub_1000081B0(0, &qword_100264A08, NSMutableDictionary_ptr);
      if (swift_dynamicCast())
      {
        v61 = v118;
        v62 = String._bridgeToObjectiveC()();
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        *&v118 = v63;
        *(&v118 + 1) = v65;
        v66 = [v61 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v66)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
        }

        v120 = v118;
        v121 = v119;
        if (!*(&v119 + 1))
        {

          sub_10000F500(&v120, &qword_10025F510, &unk_1001D49B0);
          goto LABEL_42;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_54;
        }

        v67 = v114;
        if (!*(v114 + 16))
        {

          goto LABEL_42;
        }

        v68 = sub_10000511C(v116, v117);
        v70 = v69;

        if ((v70 & 1) == 0)
        {
LABEL_54:

          goto LABEL_42;
        }

        v71 = (*(v67 + 56) + 16 * v68);
        v72 = v71[1];
        v111 = *v71;

        v73 = v61;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v103 = v75;
          v76 = v73;
          v77 = v74;
          v107 = v72;
          v78 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v79 = v78;
          *v78 = v108;
          v80 = String._bridgeToObjectiveC()();
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          *&v118 = v81;
          *(&v118 + 1) = v83;
          v84 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v109 = v76;
          v85 = [v76 __swift_objectForKeyedSubscript:v84];
          swift_unknownObjectRelease();
          if (v85)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v118 = 0u;
            v119 = 0u;
          }

          v120 = v118;
          v121 = v119;
          if (*(&v119 + 1))
          {
            if (swift_dynamicCast())
            {
              v86 = v116;
              v87 = v117;
              goto LABEL_64;
            }
          }

          else
          {
            sub_10000F500(&v120, &qword_10025F510, &unk_1001D49B0);
          }

          v86 = 0;
          v87 = 0xE000000000000000;
LABEL_64:
          v88 = sub_10002510C(v86, v87, &v115);

          *(v79 + 1) = v88;
          *(v79 + 6) = 2085;
          v89 = String._bridgeToObjectiveC()();
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          *&v118 = v90;
          *(&v118 + 1) = v92;
          v93 = [v109 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v93)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v118 = 0u;
            v119 = 0u;
          }

          v59 = v106;
          v120 = v118;
          v121 = v119;
          if (*(&v119 + 1))
          {
            if (swift_dynamicCast())
            {
              v94 = v116;
              v95 = v117;
              goto LABEL_72;
            }
          }

          else
          {
            sub_10000F500(&v120, &qword_10025F510, &unk_1001D49B0);
          }

          v94 = 0;
          v95 = 0xE000000000000000;
LABEL_72:
          v96 = sub_10002510C(v94, v95, &v115);

          *(v79 + 14) = v96;
          *(v79 + 11) = 2085;
          *(v79 + 3) = sub_10002510C(v111, v107, &v115);
          _os_log_impl(&_mh_execute_header, v77, v103, "reportQuestionnaireAnswers: Updating answer for question %{sensitive}s: '%{sensitive}s' -> '%{sensitive}s'", v79, 0x20u);
          swift_arrayDestroy();

          v73 = v109;
        }

        else
        {
        }

        v97 = String._bridgeToObjectiveC()();
        v98 = String._bridgeToObjectiveC()();

        *&v120 = v97;
        [v73 __swift_setObject:v98 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
      }

LABEL_42:
      NSFastEnumerationIterator.next()();
      if (!v123)
      {
        goto LABEL_74;
      }

      continue;
    }
  }

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "reportQuestionnaireAnswers: nil cachedQuestionsOptionsAnswers - cannot update", v101, 2u);
  }
}

void sub_100151344(unint64_t a1, _UNKNOWN **a2)
{
  v78 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6F0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F38);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a2;
    v12 = swift_slowAlloc();
    *&v82 = v12;
    *v10 = 136642819;
    v13 = Dictionary.description.getter();
    v15 = sub_10002510C(v13, v14, &v82);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "reportGeneratedQuestions: resultOptions: %{sensitive}s", v10, 0xCu);
    sub_10000F4B4(v12);
    a2 = v11;
  }

  v16 = sub_10009D1E0(a1);
  v68 = v17;
  v18 = [a2 entries];
  if (!v18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v19 = v18;
  v70 = sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = v16;
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = &IASignalSmartRepliesQuestionnaireNotShown;
  if (v21 > 0)
  {
    v22 = &IASignalSmartRepliesQuestionnaireShown;
  }

  v23 = *v22;
  sub_1000081B0(0, &qword_100264A00, NSMutableArray_ptr);
  v24 = v23;
  v25 = _swiftEmptyArrayStorage;
  v79 = NSArray.init(arrayLiteral:)();
  v26 = [a2 entries];
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = v26;
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v28;
  if (v28 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
LABEL_12:
      v65 = v24;
      v66 = a2;
      v76 = sub_1000081B0(0, &qword_100264A08, NSMutableDictionary_ptr);
      v31 = v29;
      a1 = 0;
      v77 = v31 & 0xC000000000000001;
      v72 = v31 & 0xFFFFFFFFFFFFFF8;
      v73 = v31;
      v71 = v31 + 32;
      v74 = (v4 + 8);
      a2 = NSString_ptr;
      v75 = v30;
      while (1)
      {
        if (v77)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *(v72 + 16))
          {
            goto LABEL_29;
          }

          v34 = *(v71 + 8 * a1);
        }

        v35 = v34;
        if (__OFADD__(a1++, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v37 = v25;
        v38 = NSDictionary.init(dictionaryLiteral:)();
        v39 = String._bridgeToObjectiveC()();
        v80 = v35;
        v40 = [v35 question];
        if (v40)
        {
          v41 = v40;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v42 = String._bridgeToObjectiveC()();

        [v38 setObject:v42 forKeyedSubscript:v39];

        v25 = v37;
        v84 = v37;
        v43 = [v80 answerOptions];
        if (!v43)
        {
          break;
        }

        v44 = v43;
        NSOrderedSet.makeIterator()();

        NSFastEnumerationIterator.next()();
        v4 = &type metadata for Any;
        while (v83)
        {
          sub_100008150(&v82, &v81);
          sub_1000081B0(0, &qword_100264A10, NSString_ptr);
          swift_dynamicCast();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          NSFastEnumerationIterator.next()();
        }

        (*v74)(v6, v78);
        v32 = String._bridgeToObjectiveC()();
        sub_1000081B0(0, &qword_100264A10, NSString_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v38 setObject:isa forKeyedSubscript:v32];

        [v79 addObject:v38];
        if (a1 == v75)
        {

          a2 = v66;
          v24 = v65;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_12;
    }
  }

LABEL_34:
  swift_getKeyPath();
  v45 = v69;
  *&v82 = v69;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v45 + 40))
  {

    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v48 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v49 = v48;
  v50 = String._bridgeToObjectiveC()();
  v51 = IAPayloadKeySmartRepliesNumOfQuestionsProvided;
  *(inited + 40) = v50;
  *(inited + 48) = v51;
  v52 = v51;
  v53 = [a2 entries];
  if (!v53)
  {
    goto LABEL_45;
  }

  v54 = v53;
  v55 = IAChannelSmartReplies;

  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v56 >> 62)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = objc_opt_self();
  *(inited + 56) = [objc_allocWithZone(NSNumber) initWithInteger:v57];
  v59 = String._bridgeToObjectiveC()();
  v60 = v79;
  *(inited + 64) = v59;
  *(inited + 72) = v60;
  v61 = v60;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
  v62 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 sendSignal:v24 toChannel:v55 withNullableUniqueStringID:v46 withPayload:v62];

  v63 = v61;
  sub_10014EE70(v61);
}

void sub_100151D20(void *a1, Class isa)
{
  v3 = v2;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F38);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136380675;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = sub_10002510C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "sendFeedbackServiceSignal: %{private}s", v10, 0xCu);
    sub_10000F4B4(v11);
  }

  v15 = IAChannelFeedbackService;
  swift_getKeyPath();
  v17 = v3;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics, &unk_1001DD0F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v3 + 40))
  {
    v16 = 0;
    if (!isa)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = String._bridgeToObjectiveC()();

  if (isa)
  {
LABEL_7:
    type metadata accessor for IAPayloadKey(0);
    sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
    sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_8:
  [objc_opt_self() sendSignal:v7 toChannel:v15 withNullableUniqueStringID:v16 withPayload:isa];
}

uint64_t sub_100151FE4()
{

  v1 = OBJC_IVAR____TtC21WritingToolsUIService19SmartReplyAnalytics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartReplyAnalytics(uint64_t a1)
{
  result = qword_1002647B0;
  if (!qword_1002647B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100152104(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1001521DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10014EE70(v1);
}

uint64_t sub_100152214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001522C4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

void sub_100152304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t sub_10015233C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

void sub_10015237C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_1001523D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100152418()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100152458()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1001524CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100152580(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100156BD4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100152684(uint64_t result, uint64_t a2, char a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3 & 1;
  return result;
}

uint64_t sub_100152694()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 25);
}

uint64_t sub_100152704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_10015277C(uint64_t result)
{
  v2 = *(v1 + 25);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100156BD4();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 25) = result;
  return result;
}

uint64_t sub_10015286C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1001528E0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10015295C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &unk_100264E38, UIWindow_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152AD4()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100152B48@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100152BC4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &qword_100264E30, UIView_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152D3C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100152DB0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100152E2C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &qword_100264E28, UITextView_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152FA4()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100153018@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100153094(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001530C4(v1);
}

void sub_1001530C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for SceneDelegateContainerViewController();
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void *sub_10015322C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_1001532A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_10015332C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264E20, UIVisualEffectView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void *sub_10015348C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_100153504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10015358C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264E20, UIVisualEffectView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_1001536EC()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 81);
}

uint64_t sub_10015375C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_1001537FC(char a1)
{
  if (*(v1 + 81) == (a1 & 1))
  {
    *(v1 + 81) = a1 & 1;
    swift_getKeyPath();
    sub_100156BD4();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v1 + 82) = *(v1 + 81);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100153924(uint64_t a1, char a2)
{
  *(a1 + 81) = a2;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(a1 + 82) = *(a1 + 81);
  return result;
}

uint64_t sub_1001539A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676F72506E69;
  v4 = 0xEA00000000007373;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0xEA00000000007373;
  }

  else
  {
    v3 = 0x64656873696E6966;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7472617453746F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0x6572676F72506E69;
  if (*a2 != 1)
  {
    v8 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617453746F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100153AA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153B4C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100153BE0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100153C84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100156B5C(*a1);
  *a2 = result;
  return result;
}

void sub_100153CB4(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = *v1;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (v3 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617453746F6ELL;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

void sub_100153D18()
{
  sub_1001537FC(0);
  *(v0 + 82) = 0;
  *(v0 + 84) = 0;
  swift_beginAccess();
  *(v0 + 88) = _swiftEmptyArrayStorage;

  v1 = *(v0 + 96);
  *(v0 + 96) = 0;
}

void sub_100153D78()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setText:0];
  }

  if (*(v1 + 96))
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + 96);
      *(v1 + 96) = 0;

      *(v1 + 84) = 1;
      *(v1 + 82) = 0;
      swift_beginAccess();
      *(v1 + 88) = _swiftEmptyArrayStorage;

      v7 = swift_allocObject();
      swift_weakInit();

      v8 = [v5 endOfDocument];
      aBlock[4] = sub_100156F50;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001256BC;
      aBlock[3] = &unk_100250C20;
      v9 = _Block_copy(aBlock);

      [v5 insertAnimatedTextPlaceholderAtLocation:v8 numLines:v9 completion:0.0];
      _Block_release(v9);
    }

    else
    {
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000F34C(v10, qword_100276EF0);
      v8 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, v11, "ponderableTextView is nil", v12, 2u);
      }
    }
  }
}

void sub_100154048()
{
  v1 = v0;
  swift_getKeyPath();
  v26 = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 25);
  if (v2 != 3)
  {
    swift_getKeyPath();
    v26 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v0 + 24) & 1) == 0)
    {
      v3 = *(v0 + 16);
      swift_getKeyPath();
      v26 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        if (v2 == 2)
        {
          if (*(v0 + 80))
          {
            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v6 & 1) == 0)
            {
              if (qword_10025A6E0 != -1)
              {
                swift_once();
              }

              v7 = type metadata accessor for Logger();
              sub_10000F34C(v7, qword_100276F08);

              v8 = Logger.logObject.getter();
              v9 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v8, v9))
              {
                v10 = swift_slowAlloc();
                v26 = swift_slowAlloc();
                *v10 = 136315394;
                *(v10 + 4) = sub_10002510C(0xD000000000000017, 0x80000001001E7F10, &v26);
                *(v10 + 12) = 2080;
                v11 = 0xEA00000000007373;
                v12 = 0x64656873696E6966;
                if (*(v1 + 80) == 1)
                {
                  v12 = 0x6572676F72506E69;
                }

                else
                {
                  v11 = 0xE800000000000000;
                }

                if (*(v1 + 80))
                {
                  v13 = v12;
                }

                else
                {
                  v13 = 0x7472617453746F6ELL;
                }

                if (*(v1 + 80))
                {
                  v14 = v11;
                }

                else
                {
                  v14 = 0xEA00000000006465;
                }

                v15 = sub_10002510C(v13, v14, &v26);

                *(v10 + 14) = v15;
                _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring call to %s since invocationAnimationState is %s", v10, 0x16u);
                swift_arrayDestroy();
              }

              goto LABEL_37;
            }
          }

          else
          {
          }

          swift_getKeyPath();
          v26 = v0;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v16 = *(v0 + 64);
          p_name = &stru_100256FF8.name;
          if (v16)
          {
            v18 = v16;
            [v18 removeFromSuperview];
            if (*(v0 + 64))
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              v26 = v0;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              p_name = (&stru_100256FF8 + 8);
            }

            else
            {
            }
          }

          swift_getKeyPath();
          v26 = v0;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v20 = *(v0 + 72);
          if (v20)
          {
            v21 = v20;
            [v21 p_name[399]];
            if (*(v0 + 72))
            {
              v22 = swift_getKeyPath();
              __chkstk_darwin(v22);
              v26 = v0;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            else
            {
            }
          }

          v23 = [v5 rootViewController];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 view];

            if (!v25)
            {
              __break(1u);
              return;
            }

            [v25 layoutSubviews];
          }

          if (v3 == 7)
          {
            sub_100156014();
          }

          else if (v3 == 2)
          {
            sub_100154F70();
          }
        }

LABEL_37:
      }
    }
  }
}

void sub_1001545B0(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC21WritingToolsUIService15CommonUIManager___observationRegistrar;
  aBlock = v1;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!a1)
    {
      goto LABEL_17;
    }

    v41 = v4;
    v7 = a1;
    v8 = [v7 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v9;

    v10 = v2[12];
    if (v10)
    {
      v11 = [v10 string];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v18._countAndFlagsBits = v12;
    v18._object = v14;
    if (!String.hasPrefix(_:)(v18) || (v19 = String.count.getter(), String.count.getter() >= v19))
    {

      goto LABEL_16;
    }

    v20 = String.UTF16View.count.getter();

    v21 = String.UTF16View.count.getter();

    if (__OFSUB__(v21, v20))
    {
      goto LABEL_41;
    }

    v22 = [v7 attributedSubstringFromRange:{v20, v21 - v20}];
    swift_beginAccess();
    v4 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v2[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v23 = v2[12];
      v2[12] = a1;

LABEL_16:
      v4 = v41;
LABEL_17:
      if (*(v2 + 84))
      {
        break;
      }

      swift_beginAccess();
      v24 = v2[11];
      if (v24 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_29:
          swift_getKeyPath();
          aBlock = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v2 + 81) == 1 && *(v2 + 82) == 1)
          {
            [v6 frame];
            if (!CGRectIsEmpty(v48))
            {
              *(v2 + 84) = 1;
              *(v2 + 82) = 0;
              v31 = swift_allocObject();
              swift_weakInit();

              v32 = [v6 endOfDocument];
              v46 = sub_1001570B0;
              v47 = v31;
              aBlock = _NSConcreteStackBlock;
              v43 = 1107296256;
              v44 = sub_1001256BC;
              v45 = &unk_100250BF8;
              v33 = _Block_copy(&aBlock);

              [v6 insertAnimatedTextPlaceholderAtLocation:v32 numLines:v33 completion:0.0];
              _Block_release(v33);

              v6 = v32;
            }
          }

          break;
        }
      }

      else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v25 = v2[11];
      v26 = objc_allocWithZone(NSMutableAttributedString);

      v27 = [v26 init];
      if (v25 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        if (!a1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        a1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_34;
        }
      }

      if (a1 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v25 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          [v27 appendAttributedString:{v29, v41, aBlock}];
        }

        while (a1 != v28);
LABEL_34:

        v2[11] = _swiftEmptyArrayStorage;

        *(v2 + 84) = 1;
        if (*(v2 + 83))
        {
          *(v2 + 83) = 0;
          v34 = swift_allocObject();
          swift_weakInit();
          v46 = sub_1001570AC;
          v47 = v34;
          aBlock = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1001256BC;
          v45 = &unk_100250BD0;
          v35 = _Block_copy(&aBlock);

          LOBYTE(v34) = [v6 replaceAnimatedTextPlaceholderWith:v27 completion:v35];
          _Block_release(v35);
          if ((v34 & 1) == 0)
          {
            v27 = v27;
            [v6 setAttributedText:v27];
          }
        }

        else
        {
          v36 = swift_allocObject();
          swift_weakInit();

          v37 = [v6 endOfDocument];
          v38 = [v6 endOfDocument];
          v39 = [v6 textRangeFromPosition:v37 toPosition:v38];

          [v6 setSelectedTextRange:v39];
          v46 = sub_100156E30;
          v47 = v36;
          aBlock = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1001256BC;
          v45 = &unk_100250BA8;
          v40 = _Block_copy(&aBlock);

          [v6 insertAttributedText:v27 withAnimationStyle:1 completion:v40];
          _Block_release(v40);
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F34C(v15, qword_100276EF0);
    v6 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v6, v16, "ponderableTextView is nil", v17, 2u);
    }
  }
}

id Array<A>.joinAttributedStrings()(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (!Array.endIndex.getter())
  {
    return v3;
  }

  for (i = 4; ; ++i)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    result = IsNativeType ? *(a1 + 8 * i) : _ArrayBuffer._getElementSlowPath(_:)();
    v7 = result;
    v8 = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      break;
    }

    [v3 appendAttributedString:result];

    if (v8 == Array.endIndex.getter())
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100154E70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100156514();
  }

  return result;
}

uint64_t sub_100154EC8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    *(result + 83) = 1;
    swift_beginAccess();
    v3 = *(v2 + 88);
    if (v3 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    sub_1001545B0(0);
  }

  return result;
}

void sub_100154F70()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  aBlock = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setUserInteractionEnabled:0];
    v9 = v8;
    sub_10015332C(v8);
    v10 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setUserInteractionEnabled:0];
    v11 = v10;
    sub_10015358C(v10);
    [v4 addSubview:v11];
    [v4 addSubview:v9];
    v54 = objc_opt_self();
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001DD250;
    v13 = [v9 widthAnchor];
    v14 = [v4 widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v12 + 32) = v15;
    v16 = [v9 heightAnchor];
    v17 = [v4 heightAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:200.0];

    *(v12 + 40) = v18;
    v19 = [v9 centerXAnchor];
    v20 = [v4 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v12 + 48) = v21;
    v22 = [v9 topAnchor];

    v23 = [v4 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v12 + 56) = v24;
    v25 = [v11 widthAnchor];
    v26 = [v4 widthAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v12 + 64) = v27;
    v28 = [v11 heightAnchor];
    v29 = [v4 heightAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:200.0];

    *(v12 + 72) = v30;
    v31 = [v11 centerXAnchor];
    v32 = [v4 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v12 + 80) = v33;
    v34 = [v11 topAnchor];

    v35 = [v4 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v12 + 88) = v36;
    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v54 activateConstraints:isa];

    *(v1 + 80) = 1;
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    *(v39 + 16) = v9;
    *(v39 + 24) = v2;
    v60 = sub_1001570E4;
    v61 = v39;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1001256BC;
    v59 = &unk_100250978;
    v40 = _Block_copy(&aBlock);
    v41 = v9;

    v42 = swift_allocObject();
    v42[2] = v1;
    v42[3] = v41;
    v42[4] = v2;
    v60 = sub_100156CC0;
    v61 = v42;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100155E64;
    v59 = &unk_1002509C8;
    v43 = _Block_copy(&aBlock);
    v55 = v41;

    [v38 animateWithDuration:v40 animations:v43 completion:0.0];
    _Block_release(v43);
    _Block_release(v40);
    aBlock = _swiftEmptyArrayStorage;
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v44 = [objc_opt_self() sharedLight];
    v45 = static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)();

    v46 = v45;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setBackgroundEffects:v47];

    v48 = swift_allocObject();
    *(v48 + 16) = v11;
    *(v48 + 24) = v2;
    v60 = sub_100156CCC;
    v61 = v48;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1001256BC;
    v59 = &unk_100250A18;
    v49 = _Block_copy(&aBlock);
    v50 = v11;

    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v1;
    v60 = sub_100156D14;
    v61 = v51;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100155E64;
    v59 = &unk_100250A68;
    v52 = _Block_copy(&aBlock);
    v53 = v50;

    [v38 animateWithDuration:v49 animations:v52 completion:1.0];
    _Block_release(v52);
    _Block_release(v49);
  }
}

void sub_100155890(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v22 = sub_100156D50;
    v23 = v8;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1001256BC;
    v21 = &unk_100250AB8;
    v9 = _Block_copy(&v18);
    v10 = a3;

    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v10;
    v11[4] = a4;
    v22 = sub_100156D9C;
    v23 = v11;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100155E64;
    v21 = &unk_100250B08;
    v12 = _Block_copy(&v18);
    v13 = v10;

    [v7 animateWithDuration:v9 animations:v12 completion:0.7];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F34C(v14, qword_100276EF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invocation animation for popover was interrupted, setting invocationAnimationState to .finished.", v17, 2u);
    }

    *(a2 + 80) = 2;
  }
}

void sub_100155B00(void *a1)
{
  sub_1001569D8(1, 2, 1);
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setBackgroundEffects:isa];
}

void sub_100155B94(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    *(a2 + 80) = 2;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v15[4] = sub_100156DA8;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1001256BC;
    v15[3] = &unk_100250B58;
    v9 = _Block_copy(v15);
    v10 = a3;

    [v7 animateWithDuration:v9 animations:3.0];
    _Block_release(v9);
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276EF0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invocation animation for popover was interrupted, setting invocationAnimationState to .finished.", v14, 2u);
    }

    *(a2 + 80) = 2;
  }
}

void sub_100155D54(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle:10];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setBackgroundEffects:isa];
}

uint64_t sub_100155E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100155EB8(void *a1)
{
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setBackgroundEffects:isa];
}

id sub_100155F34(int a1, id a2, uint64_t a3)
{
  result = [a2 removeFromSuperview];
  if (*(a3 + 72))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100156014()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  v28 = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v28}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = v5;
    sub_10015332C(v5);
    [v4 addSubview:v6];
    v7 = objc_opt_self();
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001CE090;
    v9 = [v6 leftAnchor];
    v10 = [v4 leftAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-15.0];

    *(v8 + 32) = v11;
    v12 = [v6 rightAnchor];
    v13 = [v4 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:15.0];

    *(v8 + 40) = v14;
    v15 = [v6 topAnchor];
    v16 = [v4 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-15.0];

    *(v8 + 48) = v17;
    v18 = [v6 bottomAnchor];

    v19 = [v4 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:15.0];

    *(v8 + 56) = v20;
    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 activateConstraints:isa];

    *(v1 + 80) = 1;
    sub_1001569D8(1, 0, 1);
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    [v6 setBackgroundEffects:v22];

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v6;
    *(v24 + 24) = v2;
    v32 = sub_1001570E4;
    v33 = v24;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1001256BC;
    v31 = &unk_100250900;
    v25 = _Block_copy(&v28);
    v26 = v6;

    v32 = sub_100156CB0;
    v33 = v1;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100155E64;
    v31 = &unk_100250928;
    v27 = _Block_copy(&v28);

    [v23 animateWithDuration:v25 animations:v27 completion:3.0];
    _Block_release(v27);
    _Block_release(v25);
  }
}

void sub_100156514()
{
  *(v0 + 84) = 0;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 82) = *(v0 + 81);
  swift_beginAccess();
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v0 + 81) != 1)
      {
        return;
      }
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1001545B0(0);
}

id *sub_100156624()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC21WritingToolsUIService15CommonUIManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001566C4()
{
  sub_100156624();

  return swift_deallocClassInstance();
}

uint64_t sub_10015671C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 769;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 77) = 0;
  *(v0 + 88) = _swiftEmptyArrayStorage;
  *(v0 + 96) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t type metadata accessor for CommonUIManager(uint64_t a1)
{
  result = qword_100264A50;
  if (!qword_100264A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100156818(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10015692C()
{
  result = qword_100264E08;
  if (!qword_100264E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264E08);
  }

  return result;
}

unint64_t sub_100156984()
{
  result = qword_100264E10;
  if (!qword_100264E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264E10);
  }

  return result;
}

void *sub_1001569D8(char a1, uint64_t a2, char a3)
{
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v6 = [objc_opt_self() sharedLight];
    v7 = static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)();

    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
  }

  if (a3)
  {
    v9 = [objc_opt_self() effectWithStyle:10];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100156B5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024AC28, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100156BD4()
{
  result = qword_10025B1E0;
  if (!qword_10025B1E0)
  {
    type metadata accessor for CommonUIManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B1E0);
  }

  return result;
}

void sub_100156C30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100152BC4(v1);
}

uint64_t sub_100156C60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100156C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156CB0(uint64_t result)
{
  if (result)
  {
    *(v1 + 80) = 2;
  }

  return result;
}

uint64_t sub_100156CD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100156D20(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10015358C(v1);
}

uint64_t sub_100156D5C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 40, 7);
}

void sub_100156DC8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100152E2C(v1);
}

uint64_t sub_100156DF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100156EB4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10015295C(v1);
}

void sub_100156EE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10015332C(v1);
}

void sub_100156F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void sub_100156F90(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001530C4(v1);
}

void sub_100157050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_100157138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100157218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100157300(uint64_t a1)
{
  sub_10015B7CC(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10015B7CC(319, qword_100264EB8, type metadata accessor for PresentationModel, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1000596F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100157428@<X0>(void *(*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v8 = type metadata accessor for NavigationPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  LOBYTE(v29) = 0;
  State.init(wrappedValue:)();
  v15 = v31;
  *(a5 + 40) = v30;
  *(a5 + 48) = v15;
  LOBYTE(v29) = 0;
  State.init(wrappedValue:)();
  v16 = v31;
  *(a5 + 56) = v30;
  *(a5 + 64) = v16;
  v17 = type metadata accessor for CompositionInputDashboardView(0);
  NavigationPath.init()();
  (*(v9 + 16))(v12, v14, v8);
  State.init(wrappedValue:)();
  (*(v9 + 8))(v14, v8);
  v18 = a5 + v17[9];
  LOBYTE(v29) = 1;
  State.init(wrappedValue:)();
  v19 = v31;
  *v18 = v30;
  *(v18 + 8) = v19;
  v29 = a1;
  type metadata accessor for CompositionModel(0);

  State.init(wrappedValue:)();
  v20 = v31;
  *a5 = v30;
  *(a5 + 8) = v20;
  v22 = v27;
  v21 = v28;
  *(a5 + 16) = a2;
  *(a5 + 24) = v22;
  *(a5 + 32) = v21;
  v23 = (a5 + v17[10]);
  *v23 = sub_10015B448;
  v23[1] = a1;
  v24 = (a5 + v17[11]);
  *v24 = sub_10015B468;
  v24[1] = a1;
}

void *sub_100157670(uint64_t a1, char a2)
{
  sub_10007CE14(a2, 0, 0, 0);
  swift_getKeyPath();
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100157750@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v109 = a2;
  v3 = sub_10000341C(&qword_1002650B8, &unk_1001DD920);
  v4 = __chkstk_darwin(v3 - 8);
  v108 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v119 = v94 - v6;
  v101 = type metadata accessor for PopoverAttachmentAnchor();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = (v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CompositionInputDashboardView(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = v10;
  v12 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_1002650C0, &qword_1001CE1E8);
  v96 = v13;
  __chkstk_darwin(v13);
  v15 = v94 - v14;
  v113 = sub_10000341C(&qword_1002650C8, &qword_1001DD930);
  v102 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = v94 - v16;
  v115 = sub_10000341C(&qword_1002650D0, &qword_1001DD938);
  v103 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = v94 - v17;
  v104 = sub_10000341C(&qword_1002650D8, &qword_1001DD940);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v117 = v94 - v18;
  v107 = sub_10000341C(&qword_1002650E0, &qword_1001DD948);
  v106 = *(v107 - 8);
  v19 = __chkstk_darwin(v107);
  v118 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v94 - v21;
  sub_10015BA94(a1, v12, type metadata accessor for CompositionInputDashboardView);
  v22 = *(v9 + 80);
  v23 = (v22 + 16) & ~v22;
  v122 = v11;
  v111 = v22;
  v24 = swift_allocObject();
  sub_10015BB00(v12, v24 + v23, type metadata accessor for CompositionInputDashboardView);
  sub_10000341C(&qword_1002650E8, &unk_1001DD950);
  sub_10015BD80();
  v98 = v15;
  Button.init(action:label:)();
  v25 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = &v15[*(v13 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  LOBYTE(v26) = *(a1 + 56);
  v31 = *(a1 + 64);
  v123 = a1;
  LOBYTE(v125) = v26;
  v126 = v31;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v94[1] = BYTE8(v128);
  v120 = v12;
  v110 = type metadata accessor for CompositionInputDashboardView;
  sub_10015BA94(a1, v12, type metadata accessor for CompositionInputDashboardView);
  v121 = v23;
  v32 = swift_allocObject();
  sub_10015BB00(v12, v32 + v23, type metadata accessor for CompositionInputDashboardView);
  v33 = static Anchor.Source<A>.bounds.getter();
  v34 = v99;
  *v99 = v33;
  v35 = v100;
  v36 = v101;
  (*(v100 + 104))(v34, enum case for PopoverAttachmentAnchor.rect(_:), v101);
  *&v95 = sub_10000341C(&unk_10025AA00, &unk_1001CE1F0);
  *(&v95 + 1) = sub_10015AFB0(&unk_100265100, &qword_1002650C0, &qword_1001CE1E8, sub_100006CD4);
  v37 = sub_100003E34(&unk_100265130, &unk_1001DD970);
  v38 = sub_100003E34(&unk_10025AA40, &unk_1001CE210);
  v39 = sub_100006DE0();
  v127 = v38;
  *&v128 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v127 = v37;
  *&v128 = OpaqueTypeConformance2;
  v97 = swift_getOpaqueTypeConformance2();
  v41 = v96;
  v42 = v98;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v35 + 8))(v34, v36);
  sub_10000F500(v42, &qword_1002650C0, &qword_1001CE1E8);
  v43 = v123;
  v127 = *(v123 + 16);
  v128 = *(v123 + 24);
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v44 = v125;
  swift_getKeyPath();
  v127 = v44;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v44 + 4);
  LOBYTE(a1) = v44[40];

  v125 = v45;
  LOBYTE(v126) = a1;
  v46 = v120;
  v47 = v110;
  sub_10015BA94(v43, v120, v110);
  v48 = v121;
  v49 = swift_allocObject();
  sub_10015BB00(v46, v49 + v48, v47);
  v101 = sub_10000341C(&qword_100265178, &qword_1001DD990);
  v127 = v41;
  v128 = v95;
  v129 = v97;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_10015BEEC();
  v52 = v113;
  v53 = v112;
  View.onChange<A>(of:initial:_:)();

  (*(v102 + 1))(v53, v52);
  v54 = v43[1];
  v112 = *v43;
  v102 = v54;
  v127 = v112;
  *&v128 = v54;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  v55 = v125;
  swift_getKeyPath();
  v127 = v55;
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v53) = v55[OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state];

  LOBYTE(v125) = v53;
  v56 = v120;
  v57 = v110;
  sub_10015BA94(v43, v120, v110);
  v58 = v121;
  v59 = swift_allocObject() + v58;
  v60 = v56;
  v61 = v57;
  sub_10015BB00(v60, v59, v57);
  v127 = v113;
  *&v128 = v101;
  *(&v128 + 1) = v50;
  v129 = v51;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_100095B60();
  v64 = v114;
  v65 = v115;
  View.onChange<A>(of:initial:_:)();

  (*(v103 + 8))(v64, v65);
  v127 = v112;
  *&v128 = v102;
  State.wrappedValue.getter();
  v66 = v125;
  swift_getKeyPath();
  v127 = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v67 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v68 = *&v66[v67];

  v124 = v68;
  v69 = v120;
  v70 = v61;
  sub_10015BA94(v123, v120, v61);
  v71 = v121;
  v72 = swift_allocObject();
  sub_10015BB00(v69, v72 + v71, v70);
  sub_10000341C(&qword_10025E2C0, &unk_1001DC4C0);
  v127 = v115;
  *&v128 = &type metadata for CompositionModel.State;
  *(&v128 + 1) = v62;
  v129 = v63;
  swift_getOpaqueTypeConformance2();
  sub_10015C048();
  v73 = v116;
  v74 = v104;
  v75 = v117;
  View.onChange<A>(of:initial:_:)();

  (*(v105 + 8))(v75, v74);
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v78 = v77;
  LODWORD(v115) = v79;
  v117 = v80;
  sub_10015BA94(v123, v69, v70);
  v81 = swift_allocObject();
  sub_10015BB00(v69, v81 + v71, v70);
  v82 = v119;
  Button.init(action:label:)();
  v83 = v106;
  v84 = *(v106 + 16);
  v85 = v118;
  v86 = v73;
  v87 = v107;
  v84(v118, v86, v107);
  v88 = v108;
  sub_1000081F8(v82, v108, &qword_1002650B8, &unk_1001DD920);
  v89 = v109;
  v84(v109, v85, v87);
  v90 = sub_10000341C(&unk_1002651A8, &unk_1001DD9F8);
  v91 = &v89[*(v90 + 48)];
  *v91 = v76;
  *(v91 + 1) = v78;
  LOBYTE(v69) = v115 & 1;
  v91[16] = v115 & 1;
  *(v91 + 3) = v117;
  sub_1000081F8(v88, &v89[*(v90 + 64)], &qword_1002650B8, &unk_1001DD920);
  sub_100007D98(v76, v78, v69);

  sub_10000F500(v119, &qword_1002650B8, &unk_1001DD920);
  v92 = *(v83 + 8);
  v92(v116, v87);
  sub_10000F500(v88, &qword_1002650B8, &unk_1001DD920);
  sub_10002A984(v76, v78, v69);

  return (v92)(v118, v87);
}

uint64_t sub_100158698(uint64_t a1)
{
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  return State.wrappedValue.setter();
}

uint64_t sub_100158720@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (!v6)
  {
    sub_10000F500(v5, &qword_1002651D0, &unk_1001DDA20);
    goto LABEL_5;
  }

  sub_100027874(v5, v6);
  dispatch thunk of LLMProvider.iconSymbolName.getter();
  v3 = v2;
  sub_10000F4B4(v5);
  if (!v3)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = Image.init(_internalSystemName:)();
LABEL_6:
  *a1 = result;
  return result;
}

uint64_t sub_1001587E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = type metadata accessor for PresentationKind();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PresentationBackgroundInteraction();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for NavigationPath();
  v6 = *(v52 - 8);
  v7 = __chkstk_darwin(v52);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v49 = sub_10000341C(&unk_10025AA40, &unk_1001CE210);
  __chkstk_darwin(v49);
  v12 = &v46 - v11;
  v13 = sub_10000341C(&unk_100265130, &unk_1001DD970);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  __chkstk_darwin(v13);
  v50 = &v46 - v15;
  v62 = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_1002651B8, &qword_1001DDA18);
  v16 = type metadata accessor for CompositionView(255);
  v17 = type metadata accessor for CompositionModel(255);
  v18 = sub_10015B490(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
  v19 = sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  v21 = a1[3];
  v22 = a1[4];
  v65 = a1[2];
  v20 = v65;
  v66 = v21;
  v67 = v22;
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.projectedValue.getter();
  v23 = v63;
  v47 = v64;
  v24 = &v12[*(sub_10000341C(&unk_100265150, &unk_1001DD980) + 36)];
  v48 = v12;
  *v24 = v23;
  *(v24 + 8) = v47;
  *(v24 + 3) = 0x4077200000000000;
  v25 = type metadata accessor for CompositionInputDashboardView(0);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  v65 = v20;
  v66 = v21;
  v67 = v22;
  Binding.projectedValue.getter();
  *&v47 = v63;
  v46 = v64;
  v26 = (a1 + *(v25 + 44));
  v28 = *v26;
  v27 = v26[1];
  v29 = (a1 + *(v25 + 40));
  v30 = *v29;
  v31 = v29[1];
  v32 = v49;
  v33 = &v12[*(v49 + 36)];
  v34 = v52;
  (*(v6 + 16))(v51, v10, v52);

  State.init(wrappedValue:)();
  (*(v6 + 8))(v10, v34);
  v35 = type metadata accessor for InputDashboardNavigationModifier(0);
  v36 = &v33[v35[5]];
  *v36 = v47;
  *(v36 + 8) = v46;
  v37 = &v33[v35[6]];
  *v37 = v28;
  *(v37 + 1) = v27;
  v38 = &v33[v35[7]];
  *v38 = v30;
  *(v38 + 1) = v31;
  v39 = sub_100006DE0();
  v40 = v50;
  v41 = v48;
  View.interactiveDismissDisabled(_:)();
  sub_10000F500(v41, &unk_10025AA40, &unk_1001CE210);
  v42 = v55;
  static PresentationBackgroundInteraction.enabled.getter();
  v43 = v56;
  static PresentationKind.popover.getter();
  v65 = v32;
  v66 = v39;
  swift_getOpaqueTypeConformance2();
  v44 = v53;
  View.presentationBackgroundInteraction(_:for:)();
  (*(v59 + 8))(v43, v61);
  (*(v57 + 8))(v42, v58);
  return (*(v54 + 8))(v40, v44);
}

uint64_t sub_100158E40(uint64_t *a1)
{
  v2 = type metadata accessor for CompositionView(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CompositionInputDashboardView(0);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  v6 = a1 + *(v5 + 36);
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v24) = v7;
  v25 = v8;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v9 = v21;
  v10 = v22;
  v11 = v23;
  type metadata accessor for CompositionModel(0);
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  *(v4 + 3) = Environment.init<A>(_:)();
  v4[32] = v12 & 1;
  type metadata accessor for CommonUIManager(0);
  sub_10015B490(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *(v4 + 5) = Environment.init<A>(_:)();
  v4[48] = v13 & 1;
  v14 = &v4[*(v2 + 36)];
  *v14 = FocusState.init<>()() & 1;
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *v4 = xmmword_1001D31C0;
  v4[16] = 0;
  v17 = &v4[*(v2 + 32)];
  *v17 = v9;
  *(v17 + 1) = v10;
  v17[16] = v11;
  v18 = a1[1];
  v21 = *a1;
  v22 = v18;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  sub_10015B490(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
  View.environment<A>(_:)();

  return sub_10015C3AC(v4);
}

void *sub_1001590D8(void *result, uint64_t a2, uint64_t a3)
{
  if ((result[1] & 1) == 0 && *result == 2 && (*(a2 + 8) & 1) == 0 && *a2 == 1)
  {
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    result = State.wrappedValue.getter();
    if ((v3 & 1) == 0)
    {
      return State.wrappedValue.setter();
    }
  }

  return result;
}

void sub_10015918C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.wrappedValue.getter();
    if ((v5 & 1) == 0)
    {
      sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
      Binding.wrappedValue.getter();
      swift_getKeyPath();
      sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = *(v5 + 32);
      v4 = *(v5 + 40);

      if ((v4 & 1) == 0 && v3 == 2)
      {
        State.wrappedValue.setter();
      }
    }
  }
}

void *sub_1001592EC(uint64_t a1)
{
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if ((v2 & 1) == 0)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100159374(uint64_t a1)
{
  v2 = type metadata accessor for CompositionInputDashboardView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10015BA94(a1, v5, type metadata accessor for CompositionInputDashboardView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10015BB00(v5, v12 + v11, type metadata accessor for CompositionInputDashboardView);
  sub_10015C9C8(0, 0, v8, &unk_1001DDA10, v12);
}

uint64_t sub_100159548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1001595E0, v6, v5);
}

uint64_t sub_1001595E0()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100011F4C;

  return sub_10007C998();
}

uint64_t sub_1001596A4@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(8);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001596D4(uint64_t a1)
{
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v3 + 40);

  if ((v1 & 1) == 0)
  {
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1001597F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1 - 8);
  v8 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + *(v7 + 52));
  v16[0] = *(v3 + *(v7 + 48));
  v16[1] = v9;
  *a2 = v16[0];
  a2[1] = v9;
  v10 = (a2 + *(sub_10000341C(&qword_100265098, &qword_1001DD900) + 40));
  *v10 = 0x4010000000000000;
  v11 = *(sub_10000341C(&qword_1002650A0, &qword_1001DD908) + 44);

  sub_100157750(v3, v10 + v11);
  sub_10015BA94(v3, v8, type metadata accessor for CompositionInputDashboardView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_10015BB00(v8, v13 + v12, type metadata accessor for CompositionInputDashboardView);
  result = sub_10000341C(&unk_1002650A8, &unk_1001DD910);
  v15 = (a2 + *(result + 36));
  *v15 = sub_10015BB68;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

uint64_t sub_1001599A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v35 = a2;
  v4 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  __chkstk_darwin(v4 - 8);
  v33 = sub_10000341C(&qword_100264F68, &qword_1001DD818);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = v28 - v5;
  v34 = sub_10000341C(&qword_100264F70, &qword_1001DD820);
  v29 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = v28 - v7;
  v32 = sub_10000341C(&qword_100264F78, &qword_1001DD828);
  __chkstk_darwin(v32);
  v10 = v28 - v9;
  v11 = v2 + *(type metadata accessor for InputDashboardNavigationModifier(0) + 20);
  v36 = *v11;
  v37 = *(v11 + 8);
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v12 = v39;
  swift_getKeyPath();
  v36 = v12;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  if ((v14 & 1) != 0 || v13 == 2)
  {
    v24 = sub_10000341C(&qword_100264F80, &unk_1001DD830);
    (*(*(v24 - 8) + 16))(v10, v31, v24);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v25 = sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
    v26 = sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818, &protocol conformance descriptor for NavigationStack<A, B>);
    v27 = sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0, &protocol conformance descriptor for TupleToolbarContent<A>);
    v36 = v33;
    *&v37 = v25;
    *(&v37 + 1) = v26;
    v38 = v27;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v15 = State.projectedValue.getter();
    __chkstk_darwin(v15);
    v28[-2] = v31;
    v28[1] = sub_10000341C(&qword_100264F80, &unk_1001DD830);
    v31 = sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v16 = NavigationStack.init<>(path:root:)();
    v17 = v29;
    __chkstk_darwin(v16);
    v28[-2] = v3;
    v18 = sub_10000341C(&qword_100264F90, &unk_1001E1BD0);
    v19 = sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818, &protocol conformance descriptor for NavigationStack<A, B>);
    v20 = sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0, &protocol conformance descriptor for TupleToolbarContent<A>);
    v21 = v33;
    View.toolbar<A>(content:)();
    (*(v30 + 8))(v6, v21);
    v22 = v34;
    (*(v17 + 16))(v10, v8, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v21;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    v38 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v17 + 8))(v8, v22);
  }
}

uint64_t sub_10015A014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_10000341C(&qword_100264FA8, &unk_1001DD840);
  __chkstk_darwin(v17[0]);
  v4 = v17 - v3;
  v5 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000341C(&unk_100264FB0, &unk_1001E1BE0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  static ToolbarItemPlacement.cancellationAction.getter();
  v17[8] = a1;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v17[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  TupleToolbarContent.init(_:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_10015A2D4@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13[0] = a6;
  v13[1] = a5;
  v7 = type metadata accessor for InputDashboardNavigationModifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10015BA94(a1, v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InputDashboardNavigationModifier);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_10015BB00(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for InputDashboardNavigationModifier);
  return Button<>.init(_:action:)();
}

uint64_t sub_10015A448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a1;
  v78 = a5;
  v9 = sub_10000341C(&qword_100264EF8, &qword_1001DD790);
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v65 - v10;
  v77 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  v11 = __chkstk_darwin(v77);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v65 - v13;
  v75 = sub_10000341C(&qword_100264F08, &qword_1001DD7A0);
  __chkstk_darwin(v75);
  v76 = &v65 - v14;
  v73 = sub_10000341C(&qword_100264F10, &qword_1001DD7A8);
  v15 = __chkstk_darwin(v73);
  v66 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v65 - v17;
  v74 = sub_10000341C(&qword_100264F18, &qword_1001DD7B0);
  v19 = __chkstk_darwin(v74);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = &v65 - v22;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  v23 = a3;
  *&v81 = a4;
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v24 = v79;
  swift_getKeyPath();
  *&v80 = v24;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + 32);
  v26 = *(v24 + 40);

  if ((v26 & 1) != 0 || v25 == 2)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v80);
    v50 = sub_10000341C(&unk_100264F30, &qword_1001DD810);
    (*(*(v50 - 8) + 16))(v18, v72, v50);
    v51 = &v18[*(v73 + 36)];
    v52 = v81;
    *v51 = v80;
    *(v51 + 1) = v52;
    *(v51 + 2) = v82;
    v53 = static Edge.Set.top.getter();
    v54 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v53)
    {
      v54 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_10002A894(v18, v21, &qword_100264F10, &qword_1001DD7A8);
    v63 = &v21[*(v74 + 36)];
    *v63 = v54;
    *(v63 + 1) = v56;
    *(v63 + 2) = v58;
    *(v63 + 3) = v60;
    *(v63 + 4) = v62;
    v63[40] = 0;
    v64 = v65;
    sub_10002A894(v21, v65, &qword_100264F18, &qword_1001DD7B0);
    sub_1000081F8(v64, v76, &qword_100264F18, &qword_1001DD7B0);
    swift_storeEnumTagMultiPayload();
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v64, &qword_100264F18, &qword_1001DD7B0);
  }

  else
  {
    *&v80 = a2;
    *(&v80 + 1) = v23;
    *&v81 = a4;
    Binding.wrappedValue.getter();
    v27 = v79;
    swift_getKeyPath();
    *&v80 = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v80);
    v28 = sub_10000341C(&unk_100264F30, &qword_1001DD810);
    v29 = v66;
    (*(*(v28 - 8) + 16))(v66, v72, v28);
    v30 = (v29 + *(v73 + 36));
    v31 = v81;
    *v30 = v80;
    v30[1] = v31;
    v30[2] = v82;
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    v32 = type metadata accessor for PresentationDetent();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001CF9D0;
    static PresentationDetent.height(_:)();
    sub_10000771C(v35);
    swift_setDeallocating();
    (*(v33 + 8))(v35 + v34, v32);
    swift_deallocClassInstance();
    sub_10015AE18();
    v36 = v68;
    View.presentationDetents(_:)();

    sub_10000F500(v29, &qword_100264F10, &qword_1001DD7A8);
    LOBYTE(v32) = static Edge.Set.top.getter();
    v37 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v32)
    {
      v37 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v67;
    (*(v69 + 32))(v67, v36, v70);
    v47 = v46 + *(v77 + 36);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = v71;
    sub_10015AED0(v46, v71);
    sub_10015AF40(v48, v76);
    swift_storeEnumTagMultiPayload();
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v48, &qword_100264F00, &qword_1001DD798);
  }
}

uint64_t sub_10015ACF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_10015AE18()
{
  result = qword_100264F40;
  if (!qword_100264F40)
  {
    sub_100003E34(&qword_100264F10, &qword_1001DD7A8);
    sub_100007120(&qword_100264F48, &unk_100264F30, &qword_1001DD810, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264F40);
  }

  return result;
}

uint64_t sub_10015AED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015AF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015AFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_10015B034()
{
  result = qword_100264F58;
  if (!qword_100264F58)
  {
    sub_100003E34(&qword_100264F00, &qword_1001DD798);
    sub_100003E34(&qword_100264F10, &qword_1001DD7A8);
    sub_10015AE18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264F58);
  }

  return result;
}

uint64_t sub_10015B0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_10000341C(&qword_100264F80, &unk_1001DD830);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_10015B278()
{
  v1 = *(type metadata accessor for InputDashboardNavigationModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015B490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10015B4EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10015B5BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10015B66C(uint64_t a1)
{
  sub_10015B7CC(319, qword_100265028, type metadata accessor for CompositionModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10015B7CC(319, qword_100264EB8, type metadata accessor for PresentationModel, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10006A8F0();
      if (v3 <= 0x3F)
      {
        sub_10015B7CC(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1000596F4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10015B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10015B834()
{
  result = qword_100265078;
  if (!qword_100265078)
  {
    sub_100003E34(&qword_100265080, &qword_1001DD8A0);
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265078);
  }

  return result;
}

unint64_t sub_10015B8F0()
{
  result = qword_100265088;
  if (!qword_100265088)
  {
    sub_100003E34(&qword_100265090, &qword_1001DD8A8);
    sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100003E34(&qword_100264F68, &qword_1001DD818);
    sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
    sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265088);
  }

  return result;
}

uint64_t sub_10015BA94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015BB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015BB80()
{
  v1 = (type metadata accessor for CompositionInputDashboardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for NavigationPath();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015BD0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10015BD80()
{
  result = qword_1002650F0;
  if (!qword_1002650F0)
  {
    sub_100003E34(&qword_1002650E8, &unk_1001DD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002650F0);
  }

  return result;
}

uint64_t sub_10015BDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1001587E0(v4, a1);
}

void *sub_10015BE6C(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001590D8(a1, a2, v6);
}

unint64_t sub_10015BEEC()
{
  result = qword_100265180;
  if (!qword_100265180)
  {
    sub_100003E34(&qword_100265178, &qword_1001DD990);
    sub_10015B490(&qword_100265188, type metadata accessor for UIUserInterfaceSizeClass, &unk_1001CE814);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265180);
  }

  return result;
}

void sub_10015BFA8(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10015918C(a1, a2, v6);
}

unint64_t sub_10015C048()
{
  result = qword_100265198;
  if (!qword_100265198)
  {
    sub_100003E34(&qword_10025E2C0, &unk_1001DC4C0);
    sub_10015C0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265198);
  }

  return result;
}

unint64_t sub_10015C0CC()
{
  result = qword_1002651A0;
  if (!qword_1002651A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002651A0);
  }

  return result;
}

uint64_t sub_10015C138()
{
  v1 = (type metadata accessor for CompositionInputDashboardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[10];
  v6 = type metadata accessor for NavigationPath();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015C2B4(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100159548(a1, v6, v7, v1 + v5);
}

uint64_t sub_10015C3AC(uint64_t a1)
{
  v2 = type metadata accessor for CompositionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015C40C()
{
  result = qword_1002651D8;
  if (!qword_1002651D8)
  {
    sub_100003E34(&unk_1002650A8, &unk_1001DD910);
    sub_100007120(&unk_1002651E0, &qword_100265098, &qword_1001DD900, &unk_1001D6138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002651D8);
  }

  return result;
}

uint64_t sub_10015C4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
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

  return (v13 + 1);
}

uint64_t sub_10015C628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10015C764(uint64_t a1)
{
  sub_1001652C8(319, &qword_10025B498, sub_10015C960, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001652C8(319, &qword_100261658, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1001652C8(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1001652C8(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_1001652C8(319, &unk_100265258, type metadata accessor for QuestionnaireModel, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10006A8F0();
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

unint64_t sub_10015C960()
{
  result = qword_10025B4A0;
  if (!qword_10025B4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025B4A0);
  }

  return result;
}

uint64_t sub_10015C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000081F8(a3, v25 - v10, &unk_10025B5D0, &qword_1001D05A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F500(v11, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10015CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000081F8(a3, v25 - v10, &unk_10025B5D0, &qword_1001D05A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F500(v11, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000341C(&qword_1002654B0, &qword_1001DDEE0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000341C(&qword_1002654B0, &qword_1001DDEE0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10015CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000081F8(a3, v25 - v10, &unk_10025B5D0, &qword_1001D05A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F500(v11, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}