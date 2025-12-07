double sub_1000A45FC()
{
  v0 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v1 + 104))(v3, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v0);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();

  return result;
}

uint64_t sub_1000A46E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for FallbackDashboardOverlayView(0);
  __chkstk_darwin(v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = type metadata accessor for DashboardOverlayView(0);
  v14 = *(a2 + v13[7]);
  sub_1000035B4(a2 + v13[9], v47, &unk_100131120, &unk_1000EAAF0);
  v15 = a2 + v13[5];
  v44 = v10;
  sub_1000035B4(v15, v10, &qword_10012E4B0, qword_1000EA960);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = (a2 + v13[6]);
  v17 = *v16;
  v18 = v16[1];
  a3[3] = v5;
  a3[4] = sub_1000AB720(&qword_1001313D0, type metadata accessor for FallbackDashboardOverlayView, &unk_1000EA9D0);
  v19 = sub_100012854(a3);
  v20 = v7 + v5[8];
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v40 = v20;
  v41 = v5[10];
  swift_unknownObjectWeakInit();
  v38 = v12;
  *v7 = v12;
  v7[1] = v11;
  swift_bridgeObjectRetain_n();
  v43 = v14;

  v42 = v18;
  sub_10000519C(v17, v18);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100011F80(v21, qword_100135C88);

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = v27;
    *v25 = 136315394;
    if (v11)
    {
      v28 = v38;
    }

    else
    {
      v28 = 0;
    }

    if (!v11)
    {
      v11 = 0xE000000000000000;
    }

    v29 = v17;
    v30 = sub_1000BA5C8(v28, v11, &v46);

    *(v25 + 4) = v30;
    v17 = v29;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v31;
    *v26 = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "FallbackDashboardOverlayView: Initialized for gameBundleId: %s, error: %@", v25, 0x16u);
    sub_100005688(v26, &qword_100131110, &unk_1000EC870);

    sub_10002E6CC(v27);

    v19 = v37;
  }

  else
  {
  }

  *(v7 + v5[7]) = v43;
  sub_10003EF48(v47, v40);
  v32 = (v7 + v5[6]);
  v33 = v42;
  *v32 = v17;
  v32[1] = v33;
  sub_100014830(v44, v7 + v5[5], &qword_10012E4B0, qword_1000EA960);
  v34 = Strong;
  swift_unknownObjectWeakAssign();

  *(v7 + v5[9]) = v45;
  sub_1000AB7F8(v7, v19, type metadata accessor for FallbackDashboardOverlayView);
  return swift_errorRetain();
}

uint64_t sub_1000A4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AnimationCompletionCriteria();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DashboardOverlayView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11, v13);
  LODWORD(a2) = (*(v12 + 88))(v15, v11);
  v16 = enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:);
  result = (*(v12 + 8))(v15, v11);
  if (a2 == v16)
  {
    v18 = static Animation.easeIn(duration:)();
    __chkstk_darwin(v18);
    *(&v21 - 2) = a3;
    sub_1000AC6F0(a3, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView);
    v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v20 = swift_allocObject();
    sub_1000AB7F8(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DashboardOverlayView);
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v22 + 8))(v7, v23);
  }

  return result;
}

uint64_t sub_1000A4E5C(uint64_t a1, double a2)
{
  type metadata accessor for DashboardOverlayView(0);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A4ED8()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  StoreTab.identifier.getter();
  StoreTab.identifier.getter();
  sub_1000AB720(&qword_100130080, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1000A50AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v3 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v4 = (v1 + *(v3 + 60));
  v6 = *v4;
  v5 = v4[1];
  v136 = v6;
  v137 = v5;
  sub_100002B38(&qword_100131528, &qword_1000EDB90);
  v7 = State.wrappedValue.getter();
  v132 = v140;
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DashboardOverlayView.OverlayContentView;
  v134 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1000AC6F0(v2, v10, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v135 = *(v8 + 80);
  v11 = (v135 + 16) & ~v135;
  v130 = v11;
  v131 = swift_allocObject();
  v126 = type metadata accessor for DashboardOverlayView.OverlayContentView;
  sub_1000AB7F8(v10, v131 + v11, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v12 = sub_100002B38(&qword_100131530, &qword_1000EDB98);
  v124 = *(v12 - 8);
  v125 = v12;
  __chkstk_darwin(v12);
  v123 = &v111 - v13;
  v14 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
  v121 = *(v14 - 8);
  v122 = v14;
  __chkstk_darwin(v14);
  v129 = &v111 - v15;
  v120 = sub_100002B38(&qword_10012CC70, &unk_1000E8E70);
  __chkstk_darwin(v120);
  v128 = (&v111 - v16);
  v118 = sub_100002B38(&qword_100131538, &qword_1000EDBB0);
  __chkstk_darwin(v118);
  v119 = &v111 - v17;
  v18 = sub_100002B38(&qword_100131540, &qword_1000EDBB8);
  v19 = (v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = type metadata accessor for BootstrapResult();
  (*(*(v22 - 8) + 16))(v21, v2, v22);
  v23 = *(v2 + *(v3 + 20));
  sub_1000035B4(v2 + *(v3 + 28), &v21[v19[12]], &qword_10012E478, &unk_1000EA8E0);
  v24 = v19[14];
  v25 = sub_100002B38(&qword_100131548, &unk_1000EDBC0);
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  v117 = v23;

  sub_100002B38(&qword_100131438, &qword_1000EDA38);
  State.projectedValue.getter();
  Binding.wrappedValue.getter();
  sub_100005688(v27, &qword_100131548, &unk_1000EDBC0);
  v28 = type metadata accessor for StoreTab();
  (*(*(v28 - 8) + 56))(&v21[v24], 0, 1, v28);
  v29 = *(v3 + 32);
  v30 = v19[16];
  v31 = type metadata accessor for CommonOnboardingStatus();
  v32 = (*(*(v31 - 8) + 16))(&v21[v30], v2 + v29, v31);
  __chkstk_darwin(v32);
  v33 = &v111 - v134;
  sub_1000AC6F0(v2, &v111 - v134, v133);
  v133 = v9;
  v34 = v130;
  v35 = swift_allocObject();
  sub_1000AB7F8(v33, v35 + v34, v126);
  v36 = &v21[v19[20]];
  sub_100002B38(&qword_10012E490, &qword_1000EA900);
  swift_allocObject();
  v140 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v37 = v137;
  *v36 = v136;
  v36[1] = v37;
  v38 = &v21[v19[21]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  *&v21[v19[11]] = v117;
  *&v21[v19[15]] = 0;
  v39 = &v21[v19[13]];
  v40 = v131;
  *v39 = v132;
  *(v39 + 1) = sub_1000AC75C;
  *(v39 + 2) = v40;
  v41 = &v21[v19[17]];
  *v41 = sub_1000ACADC;
  *(v41 + 1) = v35;
  v42 = &v21[v19[18]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v21[v19[19]];
  *v43 = 0;
  *(v43 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v126 = v3;
  v45 = *(v3 + 44);
  v134 = v2;
  sub_1000035B4(v2 + v45, &v136, &unk_100131120, &unk_1000EAAF0);
  v46 = v138;
  if (v138)
  {
    v47 = v139;
    sub_10002D754(&v136, v138);
    v48 = (*(v47 + 16))(v46, v47);
    v46 = v49;
    sub_10002E6CC(&v136);
  }

  else
  {
    sub_100005688(&v136, &unk_100131120, &unk_1000EAAF0);
    v48 = 0;
  }

  v50 = v135;
  v51 = v119;
  sub_100014830(v21, v119, &qword_100131540, &qword_1000EDBB8);
  v52 = (v51 + *(v118 + 9));
  *v52 = KeyPath;
  v52[1] = v48;
  v52[2] = v46;
  v53 = static Edge.Set.bottom.getter();
  v54 = [objc_opt_self() currentDevice];
  v55 = [v54 userInterfaceIdiom];

  v56 = v128;
  if (v55)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  v57 = static SafeAreaRegions.all.getter();
  v58 = sub_100014830(v51, v56, &qword_100131538, &qword_1000EDBB0);
  v117 = &v111;
  v59 = v56 + *(v120 + 36);
  *v59 = v57;
  *(v59 + 8) = v53;
  v60 = v133;
  __chkstk_darwin(v58);
  sub_1000AC6F0(v134, &v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v116 = type metadata accessor for MainActor();
  v61 = static MainActor.shared.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = &protocol witness table for MainActor;
  v118 = ((v50 + 32) & ~v50);
  sub_1000AB7F8(&v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0), v118 + v62, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v63 = type metadata accessor for TaskPriority();
  v114 = &v111;
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = &v111 - v66;
  static TaskPriority.userInitiated.getter();
  v115 = sub_1000E13F8(2, 26, 4, 0);
  v120 = v63;
  v119 = v64;
  if (v115)
  {
    v112 = type metadata accessor for _TaskModifier2();
    v113 = &v111;
    v111 = *(v112 - 8);
    __chkstk_darwin(v112);
    v69 = &v111 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    v136 = 0;
    v137 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v136 = 0xD000000000000035;
    v137 = 0x80000001000E7CC0;
    v140 = 415;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v72 = __chkstk_darwin(v71);
    (*(v64 + 16))(&v111 - v66, v67, v63, v72);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v64 + 8))(v67, v63);
    v73 = v129;
    sub_100014830(v128, v129, &qword_10012CC70, &unk_1000E8E70);
    v74 = sub_100002B38(&qword_10012CC78, &qword_1000EDC40);
    v75 = (*(v111 + 32))(v73 + *(v74 + 36), v69, v112);
  }

  else
  {
    v76 = sub_100002B38(&qword_10012CC80, &unk_1000E8E80);
    v77 = v129;
    v78 = (v129 + *(v76 + 36));
    v79 = type metadata accessor for _TaskModifier();
    (*(v64 + 32))(&v78[*(v79 + 20)], v67, v63);
    *v78 = &unk_1000EDC38;
    *(v78 + 1) = v62;
    v75 = sub_100014830(v56, v77, &qword_10012CC70, &unk_1000E8E70);
  }

  v80 = v133;
  __chkstk_darwin(v75);
  sub_1000AC6F0(v134, &v111 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v81 = static MainActor.shared.getter();
  v82 = v118;
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = &protocol witness table for MainActor;
  v84 = sub_1000AB7F8(&v111 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0), v82 + v83, type metadata accessor for DashboardOverlayView.OverlayContentView);
  __chkstk_darwin(v84);
  v85 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v111 - v85;
  static TaskPriority.userInitiated.getter();
  if (v115)
  {
    v116 = type metadata accessor for _TaskModifier2();
    v117 = &v111;
    v87 = *(v116 - 8);
    __chkstk_darwin(v116);
    v128 = &v111;
    v89 = &v111 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    v136 = 0;
    v137 = 0xE000000000000000;
    v118 = &v111;
    _StringGuts.grow(_:)(17);

    v136 = 0xD000000000000035;
    v137 = 0x80000001000E7CC0;
    v140 = 418;
    v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v90);

    v92 = __chkstk_darwin(v91);
    v93 = v119;
    v94 = &v111 - v85;
    v95 = &v111 - v85;
    v96 = v120;
    (*(v119 + 16))(v94, v95, v120, v92);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v93 + 8))(v86, v96);
    v97 = v123;
    (*(v121 + 32))(v123, v129, v122);
    v98 = sub_100002B38(&qword_10012CC90, &qword_1000E8E90);
    (*(v87 + 32))(&v97[*(v98 + 36)], v89, v116);
  }

  else
  {
    v99 = sub_100002B38(&qword_10012CC98, &qword_1000E8E98);
    v97 = v123;
    v100 = &v123[*(v99 + 36)];
    v101 = type metadata accessor for _TaskModifier();
    (*(v119 + 32))(&v100[*(v101 + 20)], v86, v120);
    *v100 = &unk_1000EDC50;
    *(v100 + 1) = v83;
    (*(v121 + 32))(v97, v129, v122);
  }

  v102 = v134;
  v103 = dispatch thunk of DismissDashboardNotifier.dismissalPublisher.getter();

  v105 = v133;
  __chkstk_darwin(v104);
  sub_1000AC6F0(v102, &v111 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v106 = v130;
  v107 = swift_allocObject();
  sub_1000AB7F8(&v111 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0), v107 + v106, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v108 = v127;
  (*(v124 + 32))(v127, v97, v125);
  result = sub_100002B38(&qword_100131550, &unk_1000EDC60);
  *(v108 + *(result + 52)) = v103;
  v110 = (v108 + *(result + 56));
  *v110 = sub_1000AD080;
  v110[1] = v107;
  return result;
}

uint64_t sub_1000A6158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v41[1] = a1;
  v59 = a3;
  v3 = type metadata accessor for FlowOrigin();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v58 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for FlowAnimationBehavior();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v53 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v51 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  __chkstk_darwin(v10 - 8);
  v46 = v41 - v11;
  v12 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v12 - 8);
  v45 = v41 - v13;
  v14 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v14 - 8);
  v44 = v41 - v15;
  v42 = type metadata accessor for FlowPage();
  v16 = *(v42 - 8);
  __chkstk_darwin(v42);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StoreTab.Identifier();
  v43 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v41 - v24;
  StoreTab.identifier.getter();
  v26 = StoreTab.Identifier.rawValue.getter();
  v28 = v27;
  v29 = *(v20 + 8);
  v30 = v25;
  v31 = v46;
  v29(v30, v19);
  *&v60 = v26;
  *(&v60 + 1) = v28;
  v32 = v45;
  AnyHashable.init<A>(_:)();
  v33 = *(v16 + 104);
  v47 = v18;
  v34 = v44;
  v33(v18, enum case for FlowPage.games(_:), v42);
  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = type metadata accessor for ReferrerData();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  StoreTab.identifier.getter();
  type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();
  v29(v22, v43);
  v37 = type metadata accessor for FlowDestination();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v31, 1, v37) == 1)
  {
    sub_100005688(v31, &qword_10012E4A0, &unk_1000EA940);
    v60 = 0u;
    v61 = 0u;
  }

  else
  {
    *(&v61 + 1) = v37;
    v39 = sub_100012854(&v60);
    (*(v38 + 32))(v39, v31, v37);
  }

  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v49 + 104))(v53, enum case for FlowPresentationContext.infer(_:), v50);
  (*(v52 + 104))(v55, enum case for FlowAnimationBehavior.infer(_:), v54);
  (*(v56 + 104))(v58, enum case for FlowOrigin.inapp(_:), v57);
  type metadata accessor for FlowAction();
  swift_allocObject();
  result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  *v59 = result;
  return result;
}

uint64_t sub_1000A6898@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100002B38(&qword_100131558, &qword_1000EDC80);
  return sub_1000A6900(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_1000A6900@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a1;
  v173 = a3;
  v174 = sub_100002B38(&qword_100131560, &qword_1000EDC88);
  v172 = *(v174 - 8);
  __chkstk_darwin(v174);
  v171 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v4;
  __chkstk_darwin(v5);
  v169 = &v147 - v6;
  v168 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v147 - v7;
  v165 = sub_100002B38(&qword_10012CCA0, &qword_1000E8EA0) - 8;
  __chkstk_darwin(v165);
  v185 = &v147 - v8;
  v163 = sub_100002B38(&qword_100131568, &qword_1000EDCA0);
  v164 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v147 - v9;
  v10 = type metadata accessor for DashboardContentView(0);
  __chkstk_darwin(v10);
  v12 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for OverlayFlowAuthorityProvider(0);
  BaseObjectGraph.inject<A>(_:)();
  v177 = v194;
  v13 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v14 = (a2 + v13[15]);
  v16 = *v14;
  v15 = v14[1];
  v192 = v16;
  v193 = v15;
  sub_100002B38(&qword_100131528, &qword_1000EDB90);
  State.wrappedValue.getter();
  v160 = v190;
  v187 = type metadata accessor for StoreTab();
  v179 = *(v187 - 8);
  v158 = *(v179 + 64);
  __chkstk_darwin(v187);
  v159 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = &v147 - v159;
  sub_100002B38(&qword_100131438, &qword_1000EDA38);
  State.wrappedValue.getter();
  v18 = v13[7];
  v19 = (a2 + v13[6]);
  v21 = *v19;
  v20 = v19[1];
  v180 = v21;
  v175 = v20;
  v22 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v154 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v155 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v147 - v155;
  sub_1000035B4(a2 + v18, &v147 - v155, &qword_10012E478, &unk_1000EA8E0);
  v178 = type metadata accessor for CommonOnboardingStatus();
  v183 = *(v178 - 1);
  v24 = v183;
  v151 = *(v183 + 64);
  v25 = __chkstk_darwin(v178);
  v152 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v182 = &v147 - v152;
  v27 = *(v24 + 16);
  v149 = v24 + 16;
  v150 = v27;
  v27(v25);
  v157 = *(a2 + v13[9]);
  v28 = v13[11];
  v161 = v13;
  v186 = a2;
  sub_1000035B4(a2 + v28, &v192, &unk_100131120, &unk_1000EAAF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = (a2 + v13[12]);
  v30 = *v29;
  v148 = v29[1];
  v31 = v10[6];
  v32 = type metadata accessor for Player();
  (*(*(v32 - 8) + 56))(&v12[v31], 1, 1, v32);
  v33 = &v12[v10[7]];
  v34 = &v12[v10[8]];
  *(v34 + 32) = 0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  swift_unknownObjectWeakInit();
  v35 = v10[10];
  *&v12[v35] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v153 = v10;
  sub_1000AB720(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  v36 = v175;

  Bindable<A>.init(wrappedValue:)();
  v37 = v180;
  *v12 = v188;
  *(v12 + 1) = v37;
  *(v12 + 2) = v36;

  v38 = v176;
  sub_1000AD1EC(v176, &v12[v31], &qword_10012E478, &unk_1000EA8E0);
  sub_1000AD1EC(&v192, v34, &unk_100131120, &unk_1000EAAF0);
  v147 = v12;
  swift_unknownObjectWeakAssign();
  v39 = v148;
  *v33 = v30;
  v33[1] = v39;
  v40 = &v12[v10[11]];
  sub_10000519C(v30, v39);
  type metadata accessor for FlowAction();
  sub_1000AB720(&qword_10012CCD8, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_1000AB720(&qword_10012CCE0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  FlowFullScreenCoverAuthority.init()();
  v41 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  *&v40[*(v41 + 28)] = 0;
  __chkstk_darwin(v41);
  v42 = &v147 - v155;
  v43 = sub_1000035B4(v38, &v147 - v155, &qword_10012E478, &unk_1000EA8E0);
  v44 = __chkstk_darwin(v43);
  v45 = &v147 - v152;
  v46 = (v150)(&v147 - v152, v182, v178, v44);
  v47 = __chkstk_darwin(v46);
  v48 = &v147 - v159;
  v49 = v179;
  v50 = v187;
  (*(v179 + 16))(&v147 - v159, v184, v187, v47);
  type metadata accessor for DashboardTabViewState(0);
  v51 = swift_allocObject();
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = 0;
  v52 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  v53 = *(v49 + 56);
  v53(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab, 1, 1, v50);
  type metadata accessor for GameControllerObserver();
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver) = static GameControllerObserver.shared.getter();
  ObservationRegistrar.init()();
  sub_100014830(v42, v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_player, &qword_10012E478, &unk_1000EA8E0);
  v54 = (v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID);
  v55 = v175;
  *v54 = v180;
  v54[1] = v55;
  v56 = v45;
  v57 = v178;
  (*(v183 + 32))(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_commonOnboardingStatus, v56, v178);
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_isGamesAppInstalled) = v157;
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs) = v160;
  v58 = *(v49 + 32);
  v59 = v187;
  v58(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab, v48, v187);
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 0;
  v60 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v61 = __chkstk_darwin(v60 - 8);
  v63 = &v147 - v62;
  (v53)(&v147 - v62, 1, 1, v59, v61);
  sub_100005688(v51 + v52, &qword_10012E650, &qword_1000EDA30);
  sub_100014830(v63, v51 + v52, &qword_10012E650, &qword_1000EDA30);
  v64 = v188;
  *(v51 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph) = v188;
  v65 = v153;
  v66 = v147;
  v67 = (v147 + v153[12]);
  v189 = v51;
  v68 = v64;

  State.init(wrappedValue:)();

  sub_100005688(&v192, &unk_100131120, &unk_1000EAAF0);
  (*(v183 + 8))(v182, v57);
  sub_100005688(v176, &qword_10012E478, &unk_1000EA8E0);
  (*(v179 + 8))(v184, v187);
  v69 = v191;
  *v67 = v190;
  v67[1] = v69;
  v70 = sub_1000AB720(&qword_100131570, type metadata accessor for DashboardContentView, &unk_1000EC3E0);
  v71 = v162;
  View.optOutFromMetricsValidations()();
  sub_1000AD254(v66, type metadata accessor for DashboardContentView);
  v190 = v68;

  v192 = v65;
  v193 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000AD2B4(OpaqueTypeConformance2, v73, v74);
  v75 = v185;
  v76 = v163;
  View._navigationStackStyle<A>(_:)();
  (*(v164 + 8))(v71, v76);

  KeyPath = swift_getKeyPath();
  v78 = sub_100002B38(&qword_100131580, &qword_1000EDD10);
  v79 = v75 + *(v78 + 36);
  v80 = v75;
  *v79 = KeyPath;
  *(v79 + 8) = 1;
  v81 = *(v161 - 1);
  v82 = *(v81 + 64);
  __chkstk_darwin(v78);
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = v186;
  sub_1000AC6F0(v186, &v147 - v83, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v85 = *(v81 + 80);
  v182 = ~v85;
  v86 = swift_allocObject();
  v87 = sub_1000AB7F8(&v147 - v83, v86 + ((v85 + 16) & ~v85), type metadata accessor for DashboardOverlayView.OverlayContentView);
  v88 = (v80 + *(v165 + 44));
  *v88 = sub_1000AD360;
  v88[1] = v86;
  v88[2] = 0;
  v88[3] = 0;
  __chkstk_darwin(v87);
  v89 = &v147 - v83;
  sub_1000AC6F0(v84, v89, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v90 = type metadata accessor for MainActor();
  v91 = v188;

  v92 = static MainActor.shared.getter();
  v93 = (v85 + 32) & ~v85;
  v183 = v82;
  v94 = swift_allocObject();
  *(v94 + 16) = v92;
  *(v94 + 24) = &protocol witness table for MainActor;
  sub_1000AB7F8(v89, v94 + v93, type metadata accessor for DashboardOverlayView.OverlayContentView);
  *(v94 + ((v82 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)) = v91;
  v95 = type metadata accessor for TaskPriority();
  v96 = *(v95 - 8);
  v97 = *(v96 + 8);
  __chkstk_darwin(v95);
  v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = &v147 - v98;
  static TaskPriority.userInitiated.getter();
  LODWORD(Strong) = sub_1000E13F8(2, 26, 4, 0);
  v187 = v95;
  v184 = v96;
  if (Strong)
  {
    v177 = type metadata accessor for _TaskModifier2();
    v178 = &v147;
    v176 = *(v177 - 8);
    __chkstk_darwin(v177);
    v179 = v90;
    v180 = v97;
    v101 = &v147 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    v192 = 0;
    v193 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v192 = 0xD000000000000035;
    v193 = 0x80000001000E7CC0;
    v190 = 366;
    v102._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v102);

    v104 = __chkstk_darwin(v103);
    (*(v96 + 2))(&v147 - v98, v99, v95, v104);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v96 + 1))(v99, v95);
    v105 = v166;
    sub_100014830(v185, v166, &qword_10012CCA0, &qword_1000E8EA0);
    v106 = sub_100002B38(&qword_10012CCA8, &qword_1000E8EA8);
    v107 = v101;
    v97 = v180;
    v108 = (*(v176 + 32))(v105 + *(v106 + 36), v107, v177);
  }

  else
  {
    v109 = sub_100002B38(&qword_10012CCB0, &unk_1000E8EB0);
    v105 = v166;
    v110 = (v166 + *(v109 + 36));
    v111 = type metadata accessor for _TaskModifier();
    (*(v96 + 4))(&v110[*(v111 + 20)], &v147 - v98, v95);
    *v110 = &unk_1000EDD20;
    *(v110 + 1) = v94;
    v108 = sub_100014830(v185, v105, &qword_10012CCA0, &qword_1000E8EA0);
  }

  v112 = v183;
  __chkstk_darwin(v108);
  v113 = &v147 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AC6F0(v186, v113, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v114 = v188;

  v115 = static MainActor.shared.getter();
  v116 = (v85 + 40) & v182;
  v117 = swift_allocObject();
  v117[2] = v115;
  v117[3] = &protocol witness table for MainActor;
  v117[4] = v114;
  v118 = sub_1000AB7F8(v113, v117 + v116, type metadata accessor for DashboardOverlayView.OverlayContentView);
  __chkstk_darwin(v118);
  v119 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v120 = &v147 - v119;
  static TaskPriority.userInitiated.getter();
  if (Strong)
  {
    v185 = type metadata accessor for _TaskModifier2();
    v186 = &v147;
    v183 = *(v185 - 8);
    __chkstk_darwin(v185);
    v188 = &v147;
    v122 = &v147 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
    v192 = 0;
    v193 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v192 = 0xD000000000000035;
    v193 = 0x80000001000E7CC0;
    v190 = 385;
    v123._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v123);

    v182 = &v147;
    v125 = __chkstk_darwin(v124);
    v126 = v184;
    v127 = &v147 - v119;
    v128 = &v147 - v119;
    v129 = v187;
    (*(v184 + 2))(v127, v128, v187, v125);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v126 + 1))(v120, v129);
    v130 = v169;
    (*(v167 + 32))(v169, v105, v168);
    v131 = sub_100002B38(&qword_10012CCC0, &unk_1000E8EC0);
    (*(v183 + 32))(&v130[*(v131 + 36)], v122, v185);
  }

  else
  {
    v132 = sub_100002B38(&qword_10012CCC8, &unk_1000EDD50);
    v130 = v169;
    v133 = &v169[*(v132 + 36)];
    v134 = type metadata accessor for _TaskModifier();
    (*(v184 + 4))(&v133[*(v134 + 20)], &v147 - v119, v187);
    *v133 = &unk_1000EDD38;
    *(v133 + 1) = v117;
    (*(v167 + 32))(v130, v105, v168);
  }

  v135 = v172;
  v136 = v171;
  v137 = v174;
  v138 = (*(v172 + 32))(v171, v130, v174);
  v139 = __chkstk_darwin(v138);
  v141 = &v147 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v135 + 16);
  v142(v141, v136, v137, v139);
  v143 = v173;
  (v142)(v173, v141, v137);
  v144 = v143 + *(sub_100002B38(&qword_100131588, &qword_1000EDD48) + 48);
  *v144 = 0;
  *(v144 + 8) = 1;
  v145 = *(v135 + 8);
  v145(v136, v137);
  return (v145)(v141, v137);
}

uint64_t sub_1000A7F64(uint64_t a1)
{
  v2 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  sub_1000035B4(a1 + *(v6 + 44), v11, &unk_100131120, &unk_1000EAAF0);
  v7 = v12;
  if (v12)
  {
    v8 = v13;
    sub_10002D754(v11, v12);
    (*(v8 + 16))(v7, v8);
    sub_10002E6CC(v11);
  }

  else
  {
    sub_100005688(v11, &unk_100131120, &unk_1000EAAF0);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v3 + 104))(v5, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v2);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000A8110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  sub_100002B38(&qword_100131590, &unk_1000EDD60);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for StoreTab.Identifier();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for StoreTab();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Player();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v9;
  v4[18] = v8;

  return _swift_task_switch(sub_1000A832C, v9, v8);
}

uint64_t sub_1000A832C()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: Fetching LocalPlayerProvider to perform deeplink action", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = v0[3];

  v9 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v0[20] = v9;
  sub_1000035B4(v8 + *(v9 + 28), v7, &qword_10012E478, &unk_1000EA8E0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v0[12];

    sub_100005688(v10, &qword_10012E478, &unk_1000EA8E0);

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v13 = type metadata accessor for LocalPlayerProvider();
    v14 = swift_task_alloc();
    v0[21] = v14;
    *v14 = v0;
    v14[1] = sub_1000A85A8;

    return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v13, v13);
  }
}

uint64_t sub_1000A85A8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1000A8C3C;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1000A86CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000A86CC(uint64_t a1)
{
  v2 = v1[2];
  v1[22] = v2;
  if (v2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: Successfully fetched LocalPlayerProvider", v5, 2u);
    }

    v6 = v1[20];
    v8 = v1[10];
    v7 = v1[11];
    v9 = v1[9];
    v10 = v1[5];
    v11 = v1[3];

    sub_100002B38(&qword_100131438, &qword_1000EDA38);
    State.wrappedValue.getter();
    StoreTab.identifier.getter();
    (*(v8 + 8))(v7, v9);
    v12 = type metadata accessor for Page.Background();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = v6[8];
    v14 = (v11 + v6[6]);
    v16 = *v14;
    v15 = v14[1];
    v17 = v6[10];
    v18 = swift_task_alloc();
    v1[23] = v18;
    *v18 = v1;
    v18[1] = sub_1000A89C8;
    v19 = v1[15];
    v20 = v1[4];
    v21 = v1[5];

    return StoreTab.Identifier.performDeepLinkAction(background:player:commonOnboardingStatus:bundleID:destination:objectGraph:)(v21, v19, v11 + v13, v16, v15, v11 + v17, v20);
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v1[14];
    v25 = v1[15];
    v27 = v1[13];
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "OverlayContentView: LocalPlayerProvider not available in the object graph", v28, 2u);
    }

    (*(v26 + 8))(v25, v27);

    v29 = v1[1];

    return v29();
  }
}

uint64_t sub_1000A89C8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  sub_100005688(v5, &qword_100131590, &unk_1000EDD60);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 144);
  v7 = *(v1 + 136);

  return _swift_task_switch(sub_1000A8B78, v7, v6);
}

uint64_t sub_1000A8B78()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A8C3C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "OverlayContentView: LocalPlayerProvider not available in the object graph", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1000A8E40, v6, v5);
}

uint64_t sub_1000A8E40()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: Fetching LocalPlayerProvider to prefetch social tab data", v4, 2u);
  }

  v5 = type metadata accessor for LocalPlayerProvider();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1000A8FB0;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 16, v5, v5);
}

uint64_t sub_1000A8FB0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000A967C;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000A90D4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000A90D4(uint64_t a1)
{
  v2 = v1[2];
  v1[11] = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: Successfully fetched LocalPlayerProvider", v6, 2u);
    }

    v7 = v1[4];

    v8 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
    v9 = v8[7];
    v10 = (v7 + v8[6]);
    v12 = *v10;
    v11 = v10[1];
    v13 = v8[8];
    v14 = swift_task_alloc();
    v1[12] = v14;
    *v14 = v1;
    v14[1] = sub_1000A932C;
    v15 = v1[3];
    v16 = v7 + v9;
    v17 = v7 + v13;
  }

  else
  {
    if (v5)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "OverlayContentView: LocalPlayerProvider not available in the object graph", v18, 2u);
    }

    v20 = v1[4];
    v19 = v1[5];

    v21 = type metadata accessor for Player();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
    v23 = (v20 + *(v22 + 24));
    v12 = *v23;
    v11 = v23[1];
    v24 = *(v22 + 32);
    v25 = swift_task_alloc();
    v1[13] = v25;
    *v25 = v1;
    v25[1] = sub_1000A94C0;
    v15 = v1[3];
    v17 = v20 + v24;
    v16 = v1[5];
  }

  return static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(v16, v12, v11, v17, v15);
}

uint64_t sub_1000A932C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000A944C, v3, v2);
}

uint64_t sub_1000A944C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A94C0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_100005688(v2, &qword_10012E478, &unk_1000EA8E0);
  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_1000A9614, v4, v3);
}

uint64_t sub_1000A9614()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A967C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayContentView: LocalPlayerProvider not available in the object graph", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];

  v7 = type metadata accessor for Player();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v9 = (v6 + *(v8 + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v8 + 32);
  v13 = swift_task_alloc();
  v1[13] = v13;
  *v13 = v1;
  v13[1] = sub_1000A94C0;
  v14 = v1[5];
  v15 = v1[3];

  return static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(v14, v11, v10, v6 + v12, v15);
}

uint64_t sub_1000A97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v3[3] = swift_task_alloc();
  v3[4] = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A9904, v5, v4);
}

uint64_t sub_1000A9904()
{
  v31 = v0;

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);
  sub_1000AC6F0(v3, v2, type metadata accessor for DashboardOverlayView.OverlayContentView);
  sub_1000AC6F0(v3, v1, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = (v8 + *(v9 + 24));
    if (v11[1])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = v0[5];
    v16 = v0[6];
    v18 = v0[3];
    v17 = v0[4];

    sub_1000AD254(v16, type metadata accessor for DashboardOverlayView.OverlayContentView);
    v19 = sub_1000BA5C8(v12, v13, &v30);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2080;
    sub_1000035B4(v15 + *(v17 + 28), v18, &qword_10012E478, &unk_1000EA8E0);
    v20 = type metadata accessor for Player();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v18, 1, v20);
    v23 = v0[3];
    if (v22 == 1)
    {
      sub_100005688(v0[3], &qword_10012E478, &unk_1000EA8E0);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v25 = Player.playerID.getter();
      v24 = v26;
      (*(v21 + 8))(v23, v20);
    }

    sub_1000AD254(v0[5], type metadata accessor for DashboardOverlayView.OverlayContentView);
    v27 = sub_1000BA5C8(v25, v24, &v30);

    *(v10 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v5, v6, "rendering tabbed dashboard overlay with: bundleID %s for playerID %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[5];

    sub_1000AD254(v14, type metadata accessor for DashboardOverlayView.OverlayContentView);
    sub_1000AD254(v8, type metadata accessor for DashboardOverlayView.OverlayContentView);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000A9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3[3] = v4;
  v3[4] = *(v4 + 64);
  v3[5] = swift_task_alloc();
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A9DCC, v6, v5);
}

uint64_t sub_1000A9DCC()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000AC6F0(v3, v2, type metadata accessor for DashboardOverlayView.OverlayContentView);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1000AB7F8(v2, v7 + v6, type metadata accessor for DashboardOverlayView.OverlayContentView);
  sub_1000947BC(0, 0, v1, &unk_1000EDC78, v7);

  sub_100005688(v1, &unk_100130F10, &qword_1000EA660);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A9F60()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100036924;

  return sub_1000C0D0C(v4, v3, 0xD000000000000014, 0x80000001000ED8A0);
}

char *sub_1000AA04C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(CCUIOverlayBackgroundView) init];
  *&v2[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView] = v5;
  v6 = &v2[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_10000519C(a1, a2);
  v26.receiver = v2;
  v26.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  v7 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView;
  v9 = *&v7[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView];
  v10 = v7;
  [v10 addSubview:v9];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [*&v7[v8] leadingAnchor];
  v12 = [v10 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [v13 setActive:1];
  v14 = [*&v7[v8] trailingAnchor];
  v15 = [v10 trailingAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v7[v8] topAnchor];
  v18 = [v10 topAnchor];

  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [*&v7[v8] bottomAnchor];
  v21 = [v10 bottomAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  [*&v7[v8] setPresentationProgress:1.0];
  v23 = [objc_opt_self() blackColor];
  v24 = [v23 colorWithAlphaComponent:0.001];

  [v10 setBackgroundColor:v24];
  sub_10006C574(a1, a2);

  return v10;
}

id sub_1000AA3F8(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = 0.0;
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}] != 1)
  {
    [v1 bounds];
    MaxX = CGRectGetMaxX(v19);
    v4 = [objc_opt_self() currentTraitCollection];
    if ([v4 verticalSizeClass] == 1)
    {
      [v1 bounds];
      v5 = CGRectGetMaxX(v20);
    }

    else
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v7 = v6;
      static ZoomCoordinator.iPadTrailingPadding.getter();
      v9 = v8;

      v5 = v7 + v9 + 20.0;
    }

    v2 = MaxX - v5;
  }

  v10 = *&v1[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_overlayBackgroundView];
  v11 = [objc_opt_self() currentTraitCollection];
  if ([v11 verticalSizeClass] == 1)
  {
    [v1 bounds];
    v12 = CGRectGetMaxX(v21);
  }

  else
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v14 = v13;
    static ZoomCoordinator.iPadTrailingPadding.getter();
    v16 = v15;

    v12 = v14 + v16 + 20.0;
  }

  [v1 bounds];
  return [v10 setContentFrame:{v2, 0.0, v12, CGRectGetHeight(v22)}];
}

uint64_t sub_1000AA634(void *a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  if ([v6 type])
  {
LABEL_3:

    return 0;
  }

  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v3, "semanticContentAttribute")}] != 1)
  {
    [v3 bounds];
    MaxX = CGRectGetMaxX(v33);
    v10 = [objc_opt_self() currentTraitCollection];
    if ([v10 verticalSizeClass] == 1)
    {
      [v3 bounds];
      v11 = CGRectGetMaxX(v34);
    }

    else
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v17 = v16;
      static ZoomCoordinator.iPadTrailingPadding.getter();
      v19 = v18;

      v11 = v17 + v19 + 20.0;
    }

    if (MaxX - v11 > a2)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  if ([v7 verticalSizeClass] != 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v13 = v12;
    static ZoomCoordinator.iPadTrailingPadding.getter();
    v15 = v14;

    if (v13 + v15 + 20.0 < a2)
    {
      goto LABEL_17;
    }

LABEL_14:
    [v3 safeAreaInsets];
    if (v20 <= a3)
    {
      [v3 safeAreaInsets];
      if (v21 <= a2)
      {
        [v3 bounds];
        v22 = CGRectGetMaxX(v35);
        [v3 safeAreaInsets];
        if (v22 - v23 >= a2)
        {
          goto LABEL_3;
        }
      }
    }

    goto LABEL_17;
  }

  [v3 bounds];
  v8 = CGRectGetMaxX(v32);

  if (v8 >= a2)
  {
    goto LABEL_14;
  }

LABEL_17:
  v24 = *&v3[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction];
  if (!v24)
  {
    goto LABEL_3;
  }

  v25 = *&v3[OBJC_IVAR____TtCV13GameOverlayUI23DashboardBackgroundView23BackgroundContainerView_dismissAction + 8];
  v26 = qword_10012CC18;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100011F80(v27, qword_100135C88);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "BackgroundContainerView: Overlay background view was dismissed", v30, 2u);
  }

  v24();
  sub_10006C574(v24, v25);
  return 0;
}

id sub_1000AAA34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DashboardBackgroundView.BackgroundContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1000AAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "BackgroundContainerView: Overlay background view is about to be presented", v8, 2u);
  }

  v9 = objc_allocWithZone(type metadata accessor for DashboardBackgroundView.BackgroundContainerView());
  sub_10000519C(a2, a3);
  return sub_1000AA04C(a2, a3);
}

uint64_t sub_1000AAC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000ADBE4(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000AACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000ADBE4(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000AAD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000ADBE4(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000AAD48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000AAE9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_1000AAFFC(uint64_t a1)
{
  sub_1000AB28C(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000AC4D0(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000AC46C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AC4D0(319, &qword_10012E538, &type metadata accessor for StoreTab, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000AC46C(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000AC4D0(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_1000AB28C(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_1000AC46C(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
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

void sub_1000AB28C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000AB2FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1000A2480(a1, a2, v8, a3);
}

uint64_t sub_1000AB384()
{
  v1 = type metadata accessor for DashboardOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = type metadata accessor for GameDashboardDestination();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[6]))
  {
  }

  swift_unknownObjectWeakDestroy();
  v6 = (v2 + v1[9]);
  if (v6[3])
  {
    sub_10002E6CC(v6);
  }

  swift_unknownObjectWeakDestroy();

  v7 = v1[14];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000AB600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1000A46E4(a1, v6, a2);
}

uint64_t sub_1000AB6A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000A4B30(a1, a2, v6);
}

uint64_t sub_1000AB720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AB784()
{
  v1 = type metadata accessor for DashboardOverlayView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1000AB7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AB860()
{
  v1 = type metadata accessor for BootstrapResult();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for DashboardOverlayView(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;

  v8 = v5[5];
  v9 = type metadata accessor for GameDashboardDestination();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (*(v7 + v5[6]))
  {
  }

  swift_unknownObjectWeakDestroy();
  v11 = (v7 + v5[9]);
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  swift_unknownObjectWeakDestroy();

  v12 = v5[14];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1000ABB6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for BootstrapResult() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for DashboardOverlayView(0) - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_1000A34EC(a1, a2, v3 + v8, v11, v12, a3);
}

uint64_t sub_1000ABC90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1000ABCEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000ABD60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for CommonOnboardingStatus();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = sub_100002B38(&qword_100131438, &qword_1000EDA38);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[16];

  return v19(v20, a2, v18);
}

uint64_t sub_1000ABF9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BootstrapResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for CommonOnboardingStatus();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = sub_100002B38(&qword_100131438, &qword_1000EDA38);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[16];

  return v19(v20, a2, a2, v18);
}

void sub_1000AC1C4(uint64_t a1)
{
  type metadata accessor for BootstrapResult();
  if (v1 <= 0x3F)
  {
    sub_1000926C0(319);
    if (v2 <= 0x3F)
    {
      sub_1000AB28C(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000AC4D0(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonOnboardingStatus();
          if (v5 <= 0x3F)
          {
            sub_1000AC4D0(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1000AC46C(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1000AC46C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for DismissDashboardNotifier();
                  if (v9 <= 0x3F)
                  {
                    sub_1000AC46C(319, &qword_1001314A8, &qword_10012E658, &qword_1000EAB00, &type metadata accessor for State);
                    if (v10 <= 0x3F)
                    {
                      sub_1000AC4D0(319, &unk_1001314B0, &type metadata accessor for StoreTab, &type metadata accessor for State);
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

void sub_1000AC46C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000AC4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000AC538()
{
  result = qword_100131510;
  if (!qword_100131510)
  {
    sub_100005144(&qword_100131518, &qword_1000EDA58);
    sub_100005144(&qword_1001313B8, &unk_1000ED958);
    type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
    sub_1000057D8(&qword_1001313C0, &qword_1001313B8, &unk_1000ED958, &unk_1000ECF98);
    sub_1000AB720(&qword_1001313C8, &type metadata accessor for ZoomCoordinator.DashboardVisibilityState, &protocol conformance descriptor for ZoomCoordinator.DashboardVisibilityState);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131510);
  }

  return result;
}

unint64_t sub_1000AC680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131520;
  if (!qword_100131520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131520);
  }

  return result;
}

uint64_t sub_1000AC6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000AC75C(uint64_t a1)
{
  v3 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v4[2] = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_100047C68(sub_1000ADBC4, v4, a1);
}

uint64_t sub_1000AC7F0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for BootstrapResult();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[7];
  v5 = type metadata accessor for Player();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = v1[8];
  v8 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = v1[10];
  v10 = type metadata accessor for GameDashboardDestination();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = (v2 + v1[11]);
  if (v12[3])
  {
    sub_10002E6CC(v12);
  }

  if (*(v2 + v1[12]))
  {
  }

  swift_unknownObjectWeakDestroy();

  v13 = v2 + v1[16];
  v14 = type metadata accessor for StoreTab();
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_100002B38(&qword_100131438, &qword_1000EDA38);

  return swift_deallocObject();
}

uint64_t sub_1000ACADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1000A6898(a1, v6, a2);
}

uint64_t sub_1000ACB64@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.dashboardID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000ACBD4()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000A97F8(v4, v5, v0 + v3);
}

uint64_t sub_1000ACCB0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for BootstrapResult();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[7];
  v6 = type metadata accessor for Player();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[8];
  v9 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[10];
  v11 = type metadata accessor for GameDashboardDestination();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = (v3 + v1[11]);
  if (v13[3])
  {
    sub_10002E6CC(v13);
  }

  if (*(v3 + v1[12]))
  {
  }

  swift_unknownObjectWeakDestroy();

  v14 = v3 + v1[16];
  v15 = type metadata accessor for StoreTab();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_100002B38(&qword_100131438, &qword_1000EDA38);

  return swift_deallocObject();
}

uint64_t sub_1000ACFA4()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000A9C9C(v4, v5, v0 + v3);
}

uint64_t sub_1000AD080()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 56) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1000AD0F4(uint64_t a1)
{
  v4 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000A9F40(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000AD1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000AD254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000AD2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131578;
  if (!qword_100131578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131578);
  }

  return result;
}

uint64_t sub_1000AD308@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentedInOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AD360()
{
  v1 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A7F64(v2);
}

uint64_t sub_1000AD3C0()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for BootstrapResult();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[7];
  v6 = type metadata accessor for Player();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[8];
  v9 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[10];
  v11 = type metadata accessor for GameDashboardDestination();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = (v3 + v1[11]);
  if (v13[3])
  {
    sub_10002E6CC(v13);
  }

  if (*(v3 + v1[12]))
  {
  }

  swift_unknownObjectWeakDestroy();

  v14 = v3 + v1[16];
  v15 = type metadata accessor for StoreTab();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_100002B38(&qword_100131438, &qword_1000EDA38);

  return swift_deallocObject();
}

uint64_t sub_1000AD6C8()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011720;

  return sub_1000A8110(v4, v5, v0 + v3, v6);
}

uint64_t sub_1000AD7DC()
{
  v1 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for BootstrapResult();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = v1[7];
  v6 = type metadata accessor for Player();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[8];
  v9 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[10];
  v11 = type metadata accessor for GameDashboardDestination();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = (v3 + v1[11]);
  if (v13[3])
  {
    sub_10002E6CC(v13);
  }

  if (*(v3 + v1[12]))
  {
  }

  swift_unknownObjectWeakDestroy();

  v14 = v3 + v1[16];
  v15 = type metadata accessor for StoreTab();
  (*(*(v15 - 8) + 8))(v14, v15);
  sub_100002B38(&qword_100131438, &qword_1000EDA38);

  return swift_deallocObject();
}

uint64_t sub_1000ADAD8()
{
  v2 = *(type metadata accessor for DashboardOverlayView.OverlayContentView(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014BAC;

  return sub_1000A8D70(v4, v5, v6, v0 + v3);
}

unint64_t sub_1000ADBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131598;
  if (!qword_100131598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131598);
  }

  return result;
}

uint64_t sub_1000ADCB0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for AccessPointAnchoring();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AccessPointUseCase();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1000ADE3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AccessPointAnchoring();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AccessPointUseCase();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for AccessPointView(uint64_t a1)
{
  result = qword_100131600;
  if (!qword_100131600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AE000(uint64_t a1)
{
  sub_1000AE1A4(319, &qword_10012E3A8, &type metadata accessor for GameDashboardLaunchContext, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_1000AE1A4(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessPointAnchoring();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessPointUseCase();
        if (v4 <= 0x3F)
        {
          sub_10009D3E4(319);
          if (v5 <= 0x3F)
          {
            sub_100049AF0();
            if (v6 <= 0x3F)
            {
              sub_1000AE1A4(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
              if (v7 <= 0x3F)
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

void sub_1000AE1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000AE224@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_100002B38(&qword_100131660, &qword_1000EDDF0);
  __chkstk_darwin(v57);
  v56 = &v44 - v2;
  v3 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v44 - v6;
  v7 = type metadata accessor for AccessPointView(0);
  v8 = v7 - 8;
  v48 = *(v7 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v7);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100002B38(&qword_10012E448, &qword_1000EA898);
  __chkstk_darwin(v54);
  v11 = (&v44 - v10);
  v12 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Game();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v55 = &v44 - v19;
  v20 = *(v8 + 28);
  v21 = v1;
  v23 = v22;
  sub_1000035B4(v1 + v20, v14, &qword_100132410, &unk_1000E9F30);
  if ((*(v23 + 48))(v14, 1, v15) == 1)
  {
    sub_100005688(v14, &qword_100132410, &unk_1000E9F30);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898, &unk_1000ECF98);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v45 = *(v23 + 32);
    v25 = v55;
    v45(v55, v14, v15);
    v26 = Game.bundleID.getter();
    v46 = v27;
    v47 = v26;
    v28 = v21;
    v29 = v23;
    v30 = v49;
    sub_1000B0C98(v28, v49);
    (*(v29 + 16))(v17, v25, v15);
    v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v32 = (v9 + *(v29 + 80) + v31) & ~*(v29 + 80);
    v33 = swift_allocObject();
    sub_1000B1EE8(v30, v33 + v31, type metadata accessor for AccessPointView);
    v45((v33 + v32), v17, v15);
    v34 = [objc_opt_self() standardUserDefaults];
    NSUserDefaults.registerGamesDefaults()();

    v35 = v54;
    v36 = (v11 + *(v54 + 56));
    v37 = v46;
    *v36 = v47;
    v36[1] = v37;
    *v11 = sub_1000B0F54;
    v11[1] = v33;
    v11[2] = sub_100049778;
    v11[3] = 0;
    v11[4] = sub_100049778;
    v11[5] = 0;
    v38 = v15;
    if (qword_10012CC40 != -1)
    {
      swift_once();
    }

    type metadata accessor for OverlayBootstrap(0);
    sub_1000B1F74(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);

    v39 = v51;
    Bindable<A>.init(wrappedValue:)();
    v40 = v53;
    Bindable.wrappedValue.getter();
    v41 = *(v59 + 16);

    *(v11 + *(v35 + 52)) = v41;
    v42 = v50;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v43 = *(v52 + 8);
    v43(v42, v40);
    Bindable.wrappedValue.getter();
    sub_1000BB51C();

    v43(v39, v40);
    sub_1000035B4(v11, v56, &qword_10012E448, &qword_1000EA898);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898, &unk_1000ECF98);
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v11, &qword_10012E448, &qword_1000EA898);
    return (*(v29 + 8))(v55, v38);
  }
}

uint64_t sub_1000AE960@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v50 = a2;
  v51 = a5;
  v39[0] = a1;
  v48 = type metadata accessor for BootstrapResult();
  v53 = *(v48 - 8);
  v49 = *(v53 + 64);
  __chkstk_darwin(v48);
  v52 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointView(0);
  v8 = v7 - 8;
  v46 = *(v7 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v7);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Game();
  v41 = *(v10 - 8);
  v42 = v10;
  v43 = *(v41 + 64);
  __chkstk_darwin(v10);
  v40 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  __chkstk_darwin(v12 - 8);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v15 - 8);
  v39[1] = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Dependency();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v21 = (a3 + *(v8 + 64));
  v23 = *v21;
  v22 = v21[1];
  v54 = v23;
  v55 = v22;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v39[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v18 + 8))(v20, v17);
  v39[2] = swift_unknownObjectWeakLoadStrong();
  sub_1000AEE8C(v14);
  sub_1000AF188();
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 16))(v40, v47, v42);
  v27 = v44;
  sub_1000B0C98(a3, v44);
  v28 = v53;
  v29 = v48;
  (*(v53 + 16))(v52, v39[0], v48);
  v30 = v24;
  v31 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v32 = (v43 + *(v46 + 80) + v31) & ~*(v46 + 80);
  v33 = (v45 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v30 + 32))(v35 + v31, v25, v26);
  sub_1000B1EE8(v27, v35 + v32, type metadata accessor for AccessPointView);
  (*(v53 + 32))(v35 + v33, v52, v29);
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = v36;
  sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000057D8(&qword_10012E470, &qword_10012E468, &qword_1000EA8D8, &unk_1000EE138);
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

uint64_t sub_1000AEE8C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for AccessPointUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AccessPointView(0) + 28);
  v9 = *(v3 + 104);
  v9(v7, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v2);
  sub_1000B1F74(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
  v18 = v8;
  v19 = v1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v23 == v22)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = *(v3 + 8);
  v11(v7, v2);

  v12 = &enum case for ImpedimentFlowConfig.UseCase.welcomeBanner(_:);
  if ((v10 & 1) == 0)
  {
    v13 = v20;
    v9(v20, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v23 == v22)
    {
      v11(v13, v2);
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11(v13, v2);

      if ((v14 & 1) == 0)
      {
        v12 = &enum case for ImpedimentFlowConfig.UseCase.inGame(_:);
      }
    }
  }

  v15 = *v12;
  v16 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  return (*(*(v16 - 8) + 104))(v21, v15, v16);
}

uint64_t sub_1000AF188()
{
  v1 = type metadata accessor for AccessPointUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v16 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = *(type metadata accessor for AccessPointView(0) + 28);
  v8 = *(v2 + 104);
  v8(v6, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v1);
  sub_1000B1F74(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
  v14[1] = v7;
  v15 = v0;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v19 == v17 && v20 == v18)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10 = *(v2 + 8);
  v10(v6, v1);

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v12 = v16;
    v8(v16, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v1);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v19 == v17 && v20 == v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v10(v12, v1);
  }

  return v11 & 1;
}

id sub_1000AF414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a5;
  v87 = a6;
  v95 = a2;
  v96 = a4;
  v93 = a3;
  v94 = a7;
  v91 = a1;
  v7 = type metadata accessor for AccessPointView(0);
  v84 = *(v7 - 8);
  v97 = *(v84 + 64);
  __chkstk_darwin(v7 - 8);
  v92 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = type metadata accessor for CommonOnboardingStatus();
  v81 = *(v83 - 8);
  v9 = *(v81 + 8);
  __chkstk_darwin(v83);
  v69 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = type metadata accessor for Game();
  v98 = *(v90 - 8);
  v89 = *(v98 + 64);
  __chkstk_darwin(v90);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = v11;
  v12 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v68[-v14];
  v16 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68[-v17];
  v19 = type metadata accessor for StoreTab.Identifier();
  __chkstk_darwin(v19 - 8);
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  v82 = type metadata accessor for StoreTab();
  v80 = *(v82 - 8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000EA7D0;
  v85 = v20;
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v22 = v15;
  v70 = v15;
  sub_1000035B4(v91, v15, &qword_10012E478, &unk_1000EA8E0);
  v23 = v98;
  v24 = *(v98 + 16);
  v78 = v98 + 16;
  v79 = v24;
  v25 = v11;
  v26 = v90;
  v24(v25, v93, v90);
  v27 = v81;
  v28 = *(v81 + 2);
  v73 = v81 + 16;
  v75 = v28;
  v29 = v83;
  v28(&v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v95, v83);
  sub_1000B0C98(v96, v92);
  v30 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v31 = *(v77 + 80);
  v71 = v31;
  v32 = *(v23 + 80);
  v77 = v13 + v32;
  v33 = (v13 + v32 + v30) & ~v32;
  v74 = v32;
  v34 = (v89 + *(v27 + 80) + v33) & ~*(v27 + 80);
  v35 = *(v84 + 80);
  v72 = v31 | v32 | v35 | 7;
  v36 = swift_allocObject();
  v37 = v36 + v30;
  v38 = v36;
  v84 = v36;
  sub_1000490F8(v22, v37);
  v39 = *(v23 + 32);
  v98 = v23 + 32;
  v76 = v39;
  v39(v38 + v33, v88, v26);
  (*(v27 + 4))(v38 + v34, v69, v29);
  v81 = type metadata accessor for AccessPointView;
  v40 = v38 + ((v9 + v35 + v34) & ~v35);
  v41 = v92;
  sub_1000B1EE8(v92, v40, type metadata accessor for AccessPointView);
  v42 = type metadata accessor for BootstrapResult();
  v43 = v94;
  (*(*(v42 - 8) + 16))(v94, v86, v42);
  v44 = sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  v45 = v91;
  sub_1000035B4(v91, v43 + v44[10], &qword_10012E478, &unk_1000EA8E0);
  v46 = v43;
  (*(v80 + 56))(v43 + v44[12], 1, 1, v82);
  v47 = v96;
  v48 = v96[1];
  v100 = *v96;
  v101 = v48;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v86 = v99;
  v75(v46 + v44[14], v95, v29);
  sub_1000B0C98(v47, v41);
  v49 = v70;
  sub_1000035B4(v45, v70, &qword_10012E478, &unk_1000EA8E0);
  v50 = v88;
  v51 = v90;
  v79(v88, v93, v90);
  v52 = (v35 + 16) & ~v35;
  v53 = (v97 + v71 + v52) & ~v71;
  v54 = (v77 + v53) & ~v74;
  v55 = swift_allocObject();
  sub_1000B1EE8(v41, v55 + v52, v81);
  sub_1000490F8(v49, v55 + v53);
  v76(v55 + v54, v50, v51);
  v56 = v94;
  v57 = (v94 + v44[18]);
  sub_100002B38(&qword_10012E490, &qword_1000EA900);
  swift_allocObject();
  v99 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v58 = v101;
  *v57 = v100;
  v57[1] = v58;
  v59 = v56 + v44[19];
  *v59 = swift_getKeyPath();
  *(v59 + 8) = 0;
  v61 = v86;
  v60 = v87;
  *(v56 + v44[9]) = v87;
  *(v56 + v44[13]) = v61;
  v62 = (v56 + v44[11]);
  v63 = v84;
  *v62 = v85;
  v62[1] = sub_1000B189C;
  v62[2] = v63;
  v64 = (v56 + v44[15]);
  *v64 = sub_1000B1D94;
  v64[1] = v55;
  v65 = (v56 + v44[16]);
  *v65 = sub_100049778;
  v65[1] = 0;
  v66 = (v56 + v44[17]);
  *v66 = sub_100049778;
  v66[1] = 0;

  return v60;
}

id sub_1000AFCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v50 = a4;
  v64 = a3;
  v49 = a2;
  v62 = a1;
  v61 = a5;
  v5 = type metadata accessor for FlowOrigin();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FlowPresentationContext();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  __chkstk_darwin(v12 - 8);
  v47 = &v46 - v13;
  v14 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v14 - 8);
  v67 = &v46 - v15;
  v16 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v63 = type metadata accessor for FlowPage();
  v19 = *(v63 - 8);
  __chkstk_darwin(v63);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StoreTab.Identifier();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v46 - v27;
  StoreTab.identifier.getter();
  v29 = StoreTab.Identifier.rawValue.getter();
  v31 = v30;
  v32 = *(v23 + 8);
  v46 = v22;
  v33 = v22;
  v34 = v32;
  v32(v28, v33);
  *&v65 = v29;
  *(&v65 + 1) = v31;
  AnyHashable.init<A>(_:)();
  v35 = *(v19 + 104);
  v48 = v21;
  v35(v21, enum case for FlowPage.games(_:), v63);
  v36 = type metadata accessor for URL();
  v37 = *(*(v36 - 8) + 56);
  v63 = v18;
  v37(v18, 1, 1, v36);
  v38 = type metadata accessor for ReferrerData();
  (*(*(v38 - 8) + 56))(v67, 1, 1, v38);
  StoreTab.identifier.getter();
  Game.bundleID.getter();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v40 = result;
    v41 = String._bridgeToObjectiveC()();
    [v40 applicationIsInstalled:v41];

    v42 = v47;
    StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();

    v34(v25, v46);
    v43 = type metadata accessor for FlowDestination();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_100005688(v42, &qword_10012E4A0, &unk_1000EA940);
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v43;
      v45 = sub_100012854(&v65);
      (*(v44 + 32))(v45, v42, v43);
    }

    static ActionMetrics.notInstrumented.getter();
    static FlowActionPresentation.tabSelect.getter();
    (*(v51 + 104))(v56, enum case for FlowPresentationContext.infer(_:), v52);
    (*(v54 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v55);
    (*(v58 + 104))(v60, enum case for FlowOrigin.inapp(_:), v59);
    type metadata accessor for FlowAction();
    swift_allocObject();
    result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    *v61 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B04B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v55 = a3;
  v70 = a5;
  v71 = a1;
  v6 = type metadata accessor for AccessPointAnchoring();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v73 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricsPipeline();
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  __chkstk_darwin(v8);
  v72 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  __chkstk_darwin(v11);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Game();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Player();
  v16 = *(v56 - 8);
  __chkstk_darwin(v56);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for AccessPointUseCase();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AccessPointPageView(0);
  __chkstk_darwin(v65);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccessPointView(0);
  (*(v23 + 16))(v25, &a2[v28[7]], v22);
  v29 = v28[9];
  v58 = a2[v28[8]];
  v57 = a2[v29];
  type metadata accessor for LocalPlayerProvider();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v77[0])
  {
    LocalPlayerProvider.current.getter();

    v30 = v56;
    (*(v16 + 32))(v21, v18, v56);
    (*(v16 + 56))(v21, 0, 1, v30);
  }

  else
  {
    sub_1000035B4(v55, v21, &qword_10012E478, &unk_1000EA8E0);
  }

  (*(v59 + 16))(v15, v64, v60);
  v77[3] = type metadata accessor for AccessPointPageIntent();
  v77[4] = sub_1000B1F74(&qword_100131668, &type metadata accessor for AccessPointPageIntent, &protocol conformance descriptor for AccessPointPageIntent);
  sub_100012854(v77);
  AccessPointPageIntent.init(useCase:showHighlights:newToGameCenter:player:game:)();
  v32 = v61;
  v31 = v62;
  BaseObjectGraph.inject<A>(_:)();
  v64 = Bag.metricsPageRenderTopic.getter();
  v60 = v33;
  (*(v63 + 8))(v32, v31);
  v34 = v66;
  BaseObjectGraph.inject<A>(_:)();
  v36 = v68;
  v35 = v69;
  v37 = *(v68 + 16);
  v37(v73, &a2[v28[6]], v69);
  v38 = *(a2 + 1);
  v75 = *a2;
  v76 = v38;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v62 = v74;
  v39 = v28[11];
  LODWORD(v61) = a2[v28[10]];
  v40 = v65;
  sub_1000035B4(&a2[v39], &v27[*(v65 + 40)], &unk_100131120, &unk_1000EAAF0);
  v41 = &a2[v28[12]];
  v42 = *(v41 + 1);
  v63 = *v41;
  v59 = v42;
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_1000B1F74(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);

  *v27 = Environment.init<A>(_:)();
  v27[8] = v43 & 1;
  v44 = &v27[v40[12]];
  sub_10002E8A8(v77, (v27 + 16));
  v45 = v73;
  v37(&v27[v40[8]], v73, v35);
  v46 = v60;
  *(v27 + 7) = v64;
  *(v27 + 8) = v46;
  v47 = v67;
  v48 = v72;
  (*(v67 + 16))(&v27[v40[7]], v72, v34);
  *&v27[v40[11]] = v62;
  v49 = &v27[v40[9]];
  LOBYTE(v74) = v61;
  State.init(wrappedValue:)();
  (*(v36 + 8))(v45, v35);
  (*(v47 + 8))(v48, v34);
  sub_10002E6CC(v77);
  v50 = v76;
  *v49 = v75;
  *(v49 + 1) = v50;
  v51 = v59;
  *v44 = v63;
  *(v44 + 1) = v51;
  v52 = v70;
  *&v27[v40[13]] = v71;
  sub_1000B1EE8(v27, v52, type metadata accessor for AccessPointPageView);
}

uint64_t sub_1000B0C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0CFC()
{
  v1 = type metadata accessor for AccessPointView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[5];
  if (!(*(v6 + 48))(v0 + v3 + v9, 1, v5))
  {
    (*(v6 + 8))(v8 + v9, v5);
  }

  v10 = v1[6];
  v11 = type metadata accessor for AccessPointAnchoring();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = v1[7];
  v13 = type metadata accessor for AccessPointUseCase();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = (v8 + v1[11]);
  if (v14[3])
  {
    sub_10002E6CC(v14);
  }

  swift_unknownObjectWeakDestroy();

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1000B0F54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AccessPointView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Game() - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1000AE960(a1, a2, v3 + v8, v11, a3);
}

uint64_t sub_1000B1048(__n128 a1)
{
  v2 = type metadata accessor for Game();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for AccessPointView(0);
  v22 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v22) & ~v22;
  v21 = *(*(v6 - 1) + 64);
  v23 = type metadata accessor for BootstrapResult();
  v8 = *(v23 - 8);
  v9 = *(v8 + 80);
  v20 = *(v8 + 64);
  v10 = *(v3 + 8);
  v10(v1 + v4, v2);
  v24 = v1;
  v11 = v1 + v7;

  v12 = v6[5];
  if (!(*(v3 + 48))(v11 + v12, 1, v2))
  {
    v10(v11 + v12, v2);
  }

  v13 = v6[6];
  v14 = type metadata accessor for AccessPointAnchoring();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v6[7];
  v16 = type metadata accessor for AccessPointUseCase();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  v17 = (v11 + v6[11]);
  if (v17[3])
  {
    sub_10002E6CC(v17);
  }

  v18 = (v7 + v21 + v9) & ~v9;

  swift_unknownObjectWeakDestroy();

  (*(v8 + 8))(v24 + v18, v23);

  return swift_deallocObject();
}

id sub_1000B134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(type metadata accessor for Game() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for AccessPointView(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for BootstrapResult() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AF414(a1, a2, v4 + v9, (v4 + v12), v4 + v15, v16, a3);
}

uint64_t sub_1000B14C8()
{
  v1 = v0;
  v2 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for CommonOnboardingStatus();
  v10 = *(v9 - 8);
  v26 = v7;
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for AccessPointView(0);
  v27 = *(*(v13 - 1) + 80);
  v25 = (v11 + v12 + v27) & ~v27;
  v14 = type metadata accessor for Player();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v1 + v3, 1, v14))
  {
    (*(v15 + 8))(v1 + v3, v14);
  }

  v16 = *(v6 + 8);
  v16(v1 + v26, v5);
  (*(v10 + 8))(v1 + v11, v9);
  v17 = v1 + v25;

  v18 = v13[5];
  if (!(*(v6 + 48))(v1 + v25 + v18, 1, v5))
  {
    v16(v17 + v18, v5);
  }

  v19 = v13[6];
  v20 = type metadata accessor for AccessPointAnchoring();
  (*(*(v20 - 8) + 8))(v17 + v19, v20);
  v21 = v13[7];
  v22 = type metadata accessor for AccessPointUseCase();
  (*(*(v22 - 8) + 8))(v17 + v21, v22);
  v23 = (v17 + v13[11]);
  if (v23[3])
  {
    sub_10002E6CC(v23);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1000B189C(uint64_t a1)
{
  v3 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Game() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CommonOnboardingStatus() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for AccessPointView(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14[2] = v1 + v4;
  v14[3] = v1 + v7;
  v14[4] = v1 + v10;
  v14[5] = v1 + v13;
  sub_100047C68(sub_1000B1F50, v14, a1);
}

uint64_t sub_1000B1A5C()
{
  v1 = type metadata accessor for AccessPointView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  v5 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v6 = *(v5 + 80);
  v7 = v4 + v6;
  v22 = *(v5 + 64);
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v0 + v3;

  v12 = v1[5];
  if (!(*(v9 + 48))(v11 + v12, 1, v8))
  {
    (*(v9 + 8))(v11 + v12, v8);
  }

  v13 = v7 & ~v6;
  v14 = v1[6];
  v15 = type metadata accessor for AccessPointAnchoring();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v1[7];
  v17 = type metadata accessor for AccessPointUseCase();
  (*(*(v17 - 8) + 8))(v11 + v16, v17);
  v18 = (v11 + v1[11]);
  if (v18[3])
  {
    sub_10002E6CC(v18);
  }

  swift_unknownObjectWeakDestroy();

  v19 = type metadata accessor for Player();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v13, 1, v19))
  {
    (*(v20 + 8))(v0 + v13, v19);
  }

  (*(v9 + 8))(v0 + ((v13 + v22 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_1000B1D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Game() - 8);
  v12 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1000B04B4(a1, (v2 + v6), v2 + v9, v12, a2);
}

uint64_t sub_1000B1EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B1F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B1FC0()
{
  result = qword_100131670;
  if (!qword_100131670)
  {
    sub_100005144(&qword_100131678, &unk_1000EDE50);
    sub_1000057D8(&qword_10012E4A8, &qword_10012E448, &qword_1000EA898, &unk_1000ECF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131670);
  }

  return result;
}

uint64_t OverlayTabsInfoProvider.setupFlowAuthority(asPartOf:defaultTab:selectedTabId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v26[1] = a7;
  v27 = a6;
  v28 = a1;
  v29 = a5;
  v26[0] = a4;
  v8 = type metadata accessor for StoreTab.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  v15 = type metadata accessor for StoreTab();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B4(a3, v14, &qword_10012E650, &qword_1000EDA30);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v29;

    sub_1000B23C8(v14);
    v20 = v26[0];
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v19 = v29;

    StoreTab.identifier.getter();
    v21 = StoreTab.Identifier.rawValue.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v30 = v21;
    v31 = v23;
    AnyHashable.init<A>(_:)();
    sub_100002B38(&qword_10012FB90, &qword_1000EC300);
    v24 = v26[0];
    Binding.wrappedValue.setter();
    (*(v16 + 8))(v18, v15);
    v20 = v24;
  }

  v27(v19);
  sub_1000035B4(v20, v32, &qword_10012FB90, &qword_1000EC300);
  type metadata accessor for FlowAction();
  sub_1000B2430(&qword_10012CCD8, &protocol conformance descriptor for FlowAction);
  sub_1000B2430(&qword_10012CCE0, &protocol conformance descriptor for Action);
  FlowAuthority.init(tabSelection:tabContent:)();
  return v19;
}

uint64_t sub_1000B23C8(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B2430(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B2474(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B24BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000B2520()
{
  BaseObjectGraph.optional<A>(_:)();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    type metadata accessor for ASDInAppPurchaseStateProvider();
    swift_allocObject();
    ASDInAppPurchaseStateProvider.init()();
    type metadata accessor for InAppPurchaseStateDataSource();
    swift_allocObject();
    InAppPurchaseStateDataSource.init(withStateProvider:)();
    InAppPurchaseStateDataSource.refreshData()();
    type metadata accessor for InAppPurchaseInstallPagePresenter();
    static InAppPurchaseInstallPagePresenter.use(stateDataSource:)();
    type metadata accessor for InAppPurchaseOfferButtonPresenter();
    static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
    type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
  }

  return result;
}

uint64_t sub_1000B260C(void *a1)
{
  v67 = a1;
  v1 = type metadata accessor for ModernAppStateDataSource();
  v2 = *(v1 - 8);
  v65 = v1;
  v66 = v2;
  __chkstk_darwin(v1);
  v71 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = v56 - v5;
  v59 = type metadata accessor for AppStoreType();
  v6 = *(v59 - 1);
  __chkstk_darwin(v59);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceAppQuery();
  v58 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ASDDeviceAppFetcher();
  v64 = *(v13 - 8);
  v14 = v64;
  __chkstk_darwin(v13);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B2520();
  updated = type metadata accessor for DeviceUpdateRegistry();
  v70 = DeviceUpdateRegistry.__allocating_init()();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  ASDDeviceAppFetcher.init(regulatoryLogger:)();
  v68 = type metadata accessor for DeviceAppStateDataSource();
  v17 = v10 + 104;
  v18 = *(v10 + 104);
  *&v57 = v17;
  v19 = v12;
  v18(v12, enum case for DeviceAppQuery.betaApps(_:), v9);
  v69 = v13;
  *(&v78 + 1) = v13;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v20 = sub_100012854(&v77);
  v21 = *(v14 + 16);
  v61 = v16;
  v21(v20, v16, v13);
  v62 = v21;
  v63 = v14 + 16;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v22 = enum case for AppStoreType.default(_:);
  v23 = v6 + 104;
  v24 = *(v6 + 104);
  v56[1] = v23;
  v25 = v59;
  v24(v8, enum case for AppStoreType.default(_:), v59);
  v56[0] = v19;
  v60 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  v18(v19, enum case for DeviceAppQuery.allStoreApps(_:), v58);
  v26 = v69;
  *(&v78 + 1) = v69;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v27 = sub_100012854(&v77);
  v21(v27, v16, v26);
  *(&v75 + 1) = updated;
  v76 = &protocol witness table for DeviceUpdateRegistry;
  *&v74 = v70;
  v24(v8, v22, v25);

  v58 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  type metadata accessor for PurchaseHistoryAppStateDataSource();

  v28 = PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)();
  sub_100002B38(&qword_100131680, &qword_1000EDF28);
  v29 = type metadata accessor for App.Kind();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v57 = xmmword_1000EA7D0;
  *(v32 + 16) = xmmword_1000EA7D0;
  v33 = enum case for App.Kind.store(_:);
  v34 = *(v30 + 104);
  v34(v32 + v31, enum case for App.Kind.store(_:), v29);
  v59 = v28;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  type metadata accessor for RemotePersonalizationAppStateDataSource();

  v35 = RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)();
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  v34(v36 + v31, v33, v29);
  v67 = v35;
  v37 = v71;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  sub_100002B38(&qword_100131688, &unk_1000EDF30);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000EDEC0;
  v39 = type metadata accessor for WaitingAppStateDataSource();
  swift_allocObject();
  v40 = WaitingAppStateDataSource.init()();
  *(v38 + 56) = v39;
  *(v38 + 64) = &protocol witness table for WaitingAppStateDataSource;
  *(v38 + 32) = v40;
  v41 = v68;
  *(v38 + 96) = v68;
  *(v38 + 104) = &protocol witness table for DeviceAppStateDataSource;
  *(v38 + 72) = v60;
  *(v38 + 136) = v41;
  *(v38 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v38 + 112) = v58;
  v42 = v65;
  *(v38 + 176) = v65;
  v43 = sub_1000B2E14();
  *(v38 + 184) = v43;
  v44 = sub_100012854((v38 + 152));
  v45 = v66;
  v46 = *(v66 + 16);
  v46(v44, v73, v42);
  *(v38 + 216) = v42;
  *(v38 + 224) = v43;
  v47 = sub_100012854((v38 + 192));
  v46(v47, v37, v42);
  v48 = type metadata accessor for DefaultAppStateDataSource();
  swift_allocObject();

  v49 = DefaultAppStateDataSource.init()();
  *(v38 + 256) = v48;
  *(v38 + 264) = &protocol witness table for DefaultAppStateDataSource;
  *(v38 + 232) = v49;
  v50 = v69;
  *(&v78 + 1) = v69;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v51 = sub_100012854(&v77);
  v52 = v61;
  v62(v51, v61, v50);
  *(&v75 + 1) = updated;
  v76 = &protocol witness table for DeviceUpdateRegistry;
  *&v74 = v70;

  v53 = makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)();

  v54 = *(v45 + 8);
  v54(v71, v42);
  v54(v73, v42);
  (*(v64 + 8))(v52, v50);
  sub_10002E6CC(&v74);
  sub_10002E6CC(&v77);
  return v53;
}

unint64_t sub_1000B2E14()
{
  result = qword_100131690;
  if (!qword_100131690)
  {
    type metadata accessor for ModernAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131690);
  }

  return result;
}

uint64_t sub_1000B2E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a1;
  a5(v8, v10, v11, a4);
}

void sub_1000B2F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RemoteAlertRequest(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(FBSSystemService) init];
  v12 = [v11 isPasscodeLockedOrBlocked];

  if (v12)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100011F80(v13, qword_100135C88);
    v25 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v25, v14, "Skipping onboarding flow request because device is locked or blocked.", v15, 2u);
    }

    v16 = v25;
  }

  else
  {
    v17 = [objc_opt_self() currentContext];
    type metadata accessor for AuthenticationConnectionContext();
    v18 = swift_allocObject();
    v18[20] = a1;
    v18[21] = a2;
    v18[22] = 0;
    v18[23] = 0;

    v19 = sub_1000E0554(v17);
    *(v19 + 144) = a3;
    *(v19 + 152) = a4;

    v20 = enum case for GameOverlayUIConfig.ServiceKind.auth(_:);
    v21 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    (*(*(v21 - 8) + 104))(v10, v20, v21);
    v10[v8[5]] = 6;
    *&v10[v8[6]] = v19;
    v22 = &v10[v8[7]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v10[v8[8]];
    *v23 = 0;
    *(v23 + 1) = 0;
    sub_1000D0750(v10, 0, 0, 0);
    sub_10002D820(v10);
  }
}

uint64_t sub_1000B31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RemoteAlertRequest(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentContext];
  type metadata accessor for AuthenticationConnectionContext();
  v13 = swift_allocObject();
  v13[20] = 0;
  v13[21] = 0;
  v13[22] = a1;
  v13[23] = a2;

  v14 = sub_1000E0554(v12);
  *(v14 + 144) = a3;
  *(v14 + 152) = a4;

  v15 = enum case for GameOverlayUIConfig.ServiceKind.auth(_:);
  v16 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  v11[v9[7]] = 7;
  *&v11[v9[8]] = v14;
  v17 = &v11[v9[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v11[v9[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1000D0750(v11, 0, 0, 0);
  return sub_10002D820(v11);
}

GameOverlayUI::DeviceLanguageSource __swiftcall DeviceLanguageSource.init(languages:)(Swift::OpaquePointer_optional languages)
{
  if (languages.value._rawValue)
  {
    rawValue = languages.value._rawValue;
    if (Array.isNotEmpty.getter())
    {
      return rawValue;
    }
  }

  return static Locale.preferredLanguages.getter();
}

uint64_t DeviceLanguageSource.fetchLanguages()(uint64_t a1)
{
  v4 = *(v1 + 8);

  return v4(v2);
}

uint64_t DeviceLanguageSource.locale(forLanguage:)@<X0>(uint64_t a3@<X8>)
{
  v24 = a3;
  v22 = type metadata accessor for Calendar.Identifier();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;

  Locale.init(identifier:)();
  static Calendar.current.getter();
  v25 = 0;
  v26 = 0xE000000000000000;
  v16._countAndFlagsBits = Locale.identifier.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x61646E656C616340;
  v17._object = 0xEA00000000003D72;
  String.append(_:)(v17);
  Calendar.identifier.getter();
  v18 = v22;
  _print_unlocked<A, B>(_:_:)();
  (*(v3 + 8))(v5, v18);
  Locale.init(identifier:)();
  (*(v6 + 8))(v8, v23);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1000B3914(v15, v24);
  return (v19)(v15, v9);
}

uint64_t sub_1000B372C()
{
  v0 = type metadata accessor for Calendar.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  v8._countAndFlagsBits = Locale.identifier.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x61646E656C616340;
  v9._object = 0xEA00000000003D72;
  String.append(_:)(v9);
  Calendar.identifier.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  Locale.init(identifier:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000B3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for Locale();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_100002B38(&qword_100131698, &qword_1000EDFC8);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v39 = a1;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v17 = *(v6 + 8);
  v38 = v5;
  v17(v10, v5);
  v18 = type metadata accessor for Locale.LanguageCode();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    v21 = Locale.LanguageCode.identifier.getter();
    v23 = v22;
    v24 = v16;
    v25 = *(v19 + 8);
    v25(v24, v18);
    if (v21 == 29281 && v23 == 0xE200000000000000)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        return (*(v41 + 16))(v40, v39, v42);
      }
    }

    v28 = v37;
    static Locale.current.getter();
    v29 = v36;
    Locale.language.getter();
    (*(v41 + 8))(v28, v42);
    Locale.Language.languageCode.getter();
    v17(v29, v38);
    if (v20(v13, 1, v18) != 1)
    {
      v31 = Locale.LanguageCode.identifier.getter();
      v33 = v32;
      v25(v13, v18);
      if (v31 == 29281 && v33 == 0xE200000000000000)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          return (*(v41 + 16))(v40, v39, v42);
        }
      }

      return static Locale.current.getter();
    }

    v16 = v13;
  }

  sub_1000B3EB0(v16);
  return (*(v41 + 16))(v40, v39, v42);
}

uint64_t sub_1000B3CFC()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1000B3D68@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;

  Locale.init(identifier:)();
  sub_1000B372C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1000B3914(v10, a3);
  return (v11)(v10, v4);
}

uint64_t sub_1000B3EB0(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131698, &qword_1000EDFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000B40E8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000B4154()
{
  type metadata accessor for GameLayerBackgroundRemover.RemoverView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

uint64_t sub_1000B41E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B42D0(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B4244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B42D0(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B42A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B42D0(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000B42D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001316C8[0];
  if (!qword_1001316C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001316C8);
  }

  return result;
}

void sub_1000B432C(uint64_t a1)
{
  type metadata accessor for BootstrapResult();
  if (v1 <= 0x3F)
  {
    sub_1000926C0(319);
    if (v2 <= 0x3F)
    {
      sub_1000B490C(319, &qword_10012FC08, &type metadata accessor for Player);
      if (v3 <= 0x3F)
      {
        sub_1000B490C(319, &unk_10012FC10, &type metadata accessor for StoreTab);
        if (v4 <= 0x3F)
        {
          sub_1000B490C(319, &qword_100131750, &type metadata accessor for GameDashboardLaunchContext);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CommonOnboardingStatus();
            if (v6 <= 0x3F)
            {
              sub_100013388();
              if (v7 <= 0x3F)
              {
                sub_1000B4960(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1000B4960(319, &qword_100131758, &qword_10012E490, &qword_1000EA900, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_1000B49C4();
                    if (v10 <= 0x3F)
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

uint64_t sub_1000B4538(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[9]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[12];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CommonOnboardingStatus();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_1000B4720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for BootstrapResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  v17 = type metadata accessor for CommonOnboardingStatus();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

void sub_1000B490C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1000B4960(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000B49C4()
{
  if (!qword_10012EAA8)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EAA8);
    }
  }
}

uint64_t sub_1000B4A58()
{
  v0 = type metadata accessor for MediaArtwork.BundleImageProtocol.Configuration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  MediaArtwork.BundleImageProtocol.Configuration.init()();
  sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000EE0F0;
  *(v5 + 32) = [objc_opt_self() mainBundle];
  sub_1000B9B18();
  *(v5 + 40) = static NSBundle.currentStoreKit.getter();
  v7[1] = v5;
  sub_100002B38(&qword_1001317F8, &qword_1000EE1C8);
  sub_1000057D8(&qword_100131800, &qword_1001317F8, &qword_1000EE1C8, &protocol conformance descriptor for [A]);
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)();

  (*(v1 + 8))(v3, v0);
  return MediaArtwork.BundleImageProtocol.init(_:)();
}

uint64_t sub_1000B4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a1;
  v202 = a2;
  v213 = type metadata accessor for MediaArtwork.BundleImageProtocol();
  v201 = *(v213 - 8);
  __chkstk_darwin(v213);
  v200 = v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for PlayerMonogramProtocol();
  v199 = *(v215 - 8);
  __chkstk_darwin(v215);
  v197 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_100002B38(&qword_100131760, &qword_1000EE188);
  v198 = *(v211 - 8);
  __chkstk_darwin(v211);
  v196 = v140 - v5;
  v214 = type metadata accessor for AppIconProtocol();
  v195 = *(v214 - 8);
  __chkstk_darwin(v214);
  v193 = v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100002B38(&qword_100131768, &qword_1000EE190);
  v194 = *(v206 - 8);
  __chkstk_darwin(v206);
  v192 = v140 - v7;
  v207 = type metadata accessor for ContactAvatarProtocol();
  v191 = *(v207 - 8);
  __chkstk_darwin(v207);
  v188 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_100002B38(&qword_100131770, &qword_1000EE198);
  v190 = *(v205 - 8);
  __chkstk_darwin(v205);
  v189 = v140 - v9;
  started = type metadata accessor for JetStartUpDecoration();
  v186 = *(started - 8);
  __chkstk_darwin(started);
  v185 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = *(a1 - 8);
  v218 = *(v217 + 64);
  __chkstk_darwin(v11);
  v184 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v183 = v140 - v14;
  v203 = type metadata accessor for JetStartUpProcedure();
  v182 = *(v203 - 1);
  __chkstk_darwin(v203);
  v212 = v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = *(a1 + 16);
  type metadata accessor for _TaskModifier();
  v16 = type metadata accessor for ModifiedContent();
  v209 = *(a1 + 24);
  v17 = v209;
  v18 = sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  v226 = v17;
  v227 = v18;
  WitnessTable = swift_getWitnessTable();
  v220 = v16;
  v221 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = sub_100005144(&qword_100131778, &qword_1000EE1A0);
  v220 = v16;
  v221 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v24 = sub_100005144(&qword_10012E490, &qword_1000EA900);
  v216 = v24;
  v25 = sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol, &protocol conformance descriptor for MediaArtwork.URLImageProtocol);
  v26 = sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900, &protocol conformance descriptor for LRUMultiCache<A, B>);
  v220 = v23;
  v221 = v24;
  v222 = v25;
  v223 = v26;
  v27 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v220 = OpaqueTypeMetadata2;
  v221 = v21;
  v222 = OpaqueTypeConformance2;
  v223 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v176 = v29;
  v30 = sub_100005144(&qword_100131790, &qword_1000EE1A8);
  v175 = v30;
  v31 = sub_100005144(&qword_100131798, &qword_1000EE1B0);
  v174 = v31;
  v220 = OpaqueTypeMetadata2;
  v221 = v21;
  v222 = OpaqueTypeConformance2;
  v223 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v173 = v32;
  v33 = sub_1000B973C();
  v172 = v33;
  v170 = sub_1000B97F8();
  v220 = v29;
  v221 = v30;
  v222 = v31;
  v223 = v32;
  v224 = v33;
  v225 = v170;
  v34 = type metadata accessor for Jet();
  v178 = *(v34 - 8);
  __chkstk_darwin(v34);
  v169 = v140 - v35;
  v36 = swift_getWitnessTable();
  v220 = v34;
  v221 = v36;
  v37 = v34;
  v160 = v34;
  v38 = v36;
  v161 = v36;
  v39 = swift_getOpaqueTypeMetadata2();
  v181 = *(v39 - 8);
  __chkstk_darwin(v39);
  v204 = v140 - v40;
  v220 = v37;
  v221 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v171 = sub_1000BAC3C(&qword_1001317C0, &type metadata accessor for ContactAvatarProtocol, &protocol conformance descriptor for ContactAvatarProtocol);
  v42 = v216;
  v220 = v207;
  v221 = v216;
  v222 = v171;
  v223 = v27;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v39;
  v164 = v39;
  v220 = v39;
  v45 = v205;
  v221 = v205;
  v222 = v41;
  v166 = v41;
  v223 = v43;
  v46 = v43;
  v165 = v43;
  v47 = swift_getOpaqueTypeMetadata2();
  v180 = *(v47 - 8);
  __chkstk_darwin(v47);
  v163 = v140 - v48;
  v220 = v44;
  v221 = v45;
  v222 = v41;
  v223 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v168 = sub_1000BAC3C(&qword_1001317C8, &type metadata accessor for AppIconProtocol, &protocol conformance descriptor for AppIconProtocol);
  v220 = v214;
  v221 = v42;
  v50 = v42;
  v222 = v168;
  v223 = v27;
  v51 = v27;
  v140[2] = v27;
  v52 = swift_getOpaqueTypeConformance2();
  v157 = v47;
  v53 = v206;
  v220 = v47;
  v221 = v206;
  v222 = v49;
  v223 = v52;
  v54 = v49;
  v159 = v49;
  v55 = v52;
  v158 = v52;
  v56 = swift_getOpaqueTypeMetadata2();
  v179 = *(v56 - 8);
  __chkstk_darwin(v56);
  v156 = v140 - v57;
  v220 = v47;
  v221 = v53;
  v222 = v54;
  v223 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v167 = sub_1000BAC3C(&qword_1001317D0, &type metadata accessor for PlayerMonogramProtocol, &protocol conformance descriptor for PlayerMonogramProtocol);
  v220 = v215;
  v221 = v50;
  v222 = v167;
  v223 = v51;
  v59 = swift_getOpaqueTypeConformance2();
  v153 = v56;
  v60 = v211;
  v220 = v56;
  v221 = v211;
  v222 = v58;
  v223 = v59;
  v155 = v58;
  v61 = v59;
  v154 = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v177 = *(v62 - 8);
  __chkstk_darwin(v62);
  v152 = v140 - v63;
  v220 = v56;
  v221 = v60;
  v222 = v58;
  v223 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_1000BAC3C(&qword_1001317D8, &type metadata accessor for MediaArtwork.BundleImageProtocol, &protocol conformance descriptor for MediaArtwork.BundleImageProtocol);
  v144 = v62;
  v66 = v213;
  v220 = v62;
  v221 = v213;
  v222 = v64;
  v223 = v65;
  v67 = v64;
  v146 = v64;
  v68 = v65;
  v145 = v65;
  v69 = swift_getOpaqueTypeMetadata2();
  v148 = v69;
  v162 = *(v69 - 8);
  __chkstk_darwin(v69);
  v143 = v140 - v70;
  v220 = v62;
  v221 = v66;
  v222 = v67;
  v223 = v68;
  v147 = swift_getOpaqueTypeConformance2();
  v220 = v69;
  v221 = v147;
  v149 = &opaque type descriptor for <<opaque return type of View.limitDynamicTypeSizeForSeedBuild()>>;
  v150 = swift_getOpaqueTypeMetadata2();
  v151 = *(v150 - 8);
  __chkstk_darwin(v150);
  v141 = v140 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v72);
  v142 = v140 - v74;
  (*(v182 + 104))(v212, enum case for JetStartUpProcedure.lazy(_:), v203, v73);
  v75 = v217;
  v203 = *(v217 + 16);
  v76 = v183;
  v77 = v219;
  v78 = v208;
  v203(v183, v219, v208);
  v79 = v75;
  v80 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v81 = swift_allocObject();
  v182 = v81;
  v82 = v209;
  v83 = v210;
  *(v81 + 16) = v210;
  *(v81 + 24) = v82;
  v84 = *(v79 + 32);
  v84(v81 + v80, v76, v78);
  v217 = v79 + 32;
  v140[0] = v84;
  v85 = v184;
  v86 = v77;
  v87 = v203;
  v203(v184, v86, v78);
  v88 = swift_allocObject();
  v183 = v88;
  v89 = v209;
  *(v88 + 16) = v83;
  *(v88 + 24) = v89;
  v84(v88 + v80, v85, v78);
  v90 = v85;
  v91 = v219;
  v92 = v78;
  v87(v85, v219, v78);
  v93 = swift_allocObject();
  v140[1] = v93;
  v94 = v210;
  *(v93 + 16) = v210;
  *(v93 + 24) = v89;
  v95 = v85;
  v96 = v140[0];
  (v140[0])(v93 + v80, v95, v92);
  v97 = v91;
  v98 = v92;
  v203(v90, v97, v92);
  v99 = swift_allocObject();
  *(v99 + 16) = v94;
  *(v99 + 24) = v89;
  v100 = v98;
  v96(v99 + v80, v90, v98);
  static Transaction._loading.getter();
  v101 = v169;
  Jet.init(startUpProcedure:transaction:makeObjects:working:failed:content:)();
  v102 = v186;
  v103 = v185;
  v104 = started;
  (*(v186 + 104))(v185, enum case for JetStartUpDecoration.none(_:), started);
  v105 = v160;
  View.startUpDecoration(_:)();
  (*(v102 + 8))(v103, v104);
  (*(v178 + 8))(v101, v105);
  v106 = v188;
  ContactAvatarProtocol.init()();
  v107 = (v219 + *(v100 + 72));
  v109 = *v107;
  v108 = v107[1];
  v217 = v109;
  v218 = v108;
  v220 = v109;
  v221 = v108;
  sub_100002B38(&qword_1001317E0, &qword_1000EE1B8);
  State.wrappedValue.getter();
  v110 = v189;
  v111 = v207;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v191 + 8))(v106, v111);
  v112 = v163;
  v113 = v164;
  v114 = v205;
  v115 = v204;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v190 + 8))(v110, v114);
  (*(v181 + 8))(v115, v113);
  v116 = v193;
  AppIconProtocol.init()();
  v220 = v109;
  v117 = v218;
  v221 = v218;
  State.wrappedValue.getter();
  v118 = v192;
  v119 = v214;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v195 + 8))(v116, v119);
  v120 = v156;
  v121 = v157;
  v122 = v206;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v194 + 8))(v118, v122);
  (*(v180 + 8))(v112, v121);
  v123 = v197;
  PlayerMonogramProtocol.init()();
  v220 = v217;
  v221 = v117;
  State.wrappedValue.getter();
  v124 = v196;
  v125 = v215;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v199 + 8))(v123, v125);
  v126 = v152;
  v127 = v153;
  v128 = v211;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v198 + 8))(v124, v128);
  (*(v179 + 8))(v120, v127);
  v129 = v200;
  sub_1000B4A58();
  v130 = v143;
  v131 = v144;
  v132 = v213;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v201 + 8))(v129, v132);
  (*(v177 + 8))(v126, v131);
  v133 = v141;
  v134 = v148;
  v135 = v147;
  View.limitDynamicTypeSizeForSeedBuild()();
  (*(v162 + 8))(v130, v134);
  v220 = v134;
  v221 = v135;
  swift_getOpaqueTypeConformance2();
  v136 = v142;
  v137 = v150;
  sub_10009B680();
  v138 = *(v151 + 8);
  v138(v133, v137);
  sub_10009B680();
  return (v138)(v136, v137);
}

uint64_t sub_1000B63A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v6 = type metadata accessor for DefaultOverlayJetView(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Dependency();
  v20 = *(v10 - 8);
  v21 = v10;
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseObjectGraph();
  BootstrapResult.objectGraph.getter();
  BaseObjectGraph.__allocating_init(_:)();
  type metadata accessor for OverlayFlowAuthorityProvider(0);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  (*(v7 + 32))(v14 + v13, v9, v6);

  Dependency.init<A>(satisfying:with:)();
  sub_1000B6778(v6);

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v16 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  (*(v20 + 8))(v12, v21);
  return v16;
}

void sub_1000B6630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v12 = type metadata accessor for DefaultOverlayJetView(0, a2, a3, v11);
  v13 = (a1 + *(v12 + 44));
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  sub_1000035B4(a1 + *(v12 + 48), v10, &qword_10012E650, &qword_1000EDA30);
  type metadata accessor for BaseObjectGraph();

  static BaseObjectGraph.current.getter();
  type metadata accessor for OverlayFlowAuthorityProvider(0);
  swift_allocObject();
  v17 = sub_100071D1C(v14, v15, v16, v10);

  *a4 = v17;
}

uint64_t sub_1000B6778(uint64_t a1)
{
  v2 = v1;
  v109 = type metadata accessor for EnvironmentValues();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PlayerID();
  __chkstk_darwin(v117);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShimGameServicesRoot();
  v136 = *(v6 - 8);
  v137 = v6;
  __chkstk_darwin(v6);
  v115 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v7;
  __chkstk_darwin(v8);
  v135 = &v107 - v9;
  v10 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  v127 = *(v10 - 8);
  v128 = v10;
  __chkstk_darwin(v10);
  v111 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v107 - v13;
  v133 = type metadata accessor for Player();
  v141 = *(v133 - 8);
  __chkstk_darwin(v133);
  v113 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v14;
  __chkstk_darwin(v15);
  v140 = &v107 - v16;
  v17 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  __chkstk_darwin(v17 - 8);
  v118 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v22 = *(a1 - 8);
  __chkstk_darwin(v23);
  v126 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v24;
  __chkstk_darwin(v25);
  v27 = &v107 - v26;
  v28 = type metadata accessor for Dependency();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v131 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v121 = &v107 - v32;
  __chkstk_darwin(v33);
  v120 = &v107 - v34;
  __chkstk_darwin(v35);
  v119 = &v107 - v36;
  __chkstk_darwin(v37);
  v39 = &v107 - v38;
  sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v130 = v39;
  Dependency.init<A>(satisfying:with:)();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100011F80(v40, qword_100135C88);
  v42 = *(v22 + 16);
  v123 = v22 + 16;
  v122 = v42;
  v42(v27, v1, a1);
  v110 = v41;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v132 = v28;
  v138 = a1;
  v139 = v1;
  v129 = v29;
  v134 = v22;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = a1;
    v49 = v47;
    v142[0] = v47;
    *v46 = 136315138;
    sub_1000035B4(&v27[*(v48 + 40)], v21, &qword_10012E478, &unk_1000EA8E0);
    v50 = v141;
    v51 = v133;
    if ((*(v141 + 48))(v21, 1, v133) == 1)
    {
      sub_100005688(v21, &qword_10012E478, &unk_1000EA8E0);
      v52 = 0xE700000000000000;
      v53 = 0x6E776F6E6B6E75;
    }

    else
    {
      v53 = Player.playerID.getter();
      v52 = v55;
      (*(v50 + 8))(v21, v51);
    }

    v54 = v51;
    v56 = v138;
    (*(v134 + 8))(v27, v138);
    v57 = sub_1000BA5C8(v53, v52, v142);

    *(v46 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v43, v44, "DefaultOverlayJetView: player found: %s", v46, 0xCu);
    sub_10002E6CC(v49);
    a1 = v56;

    v28 = v132;
    v2 = v139;
    v29 = v129;
  }

  else
  {

    (*(v22 + 8))(v27, a1);
    v54 = v133;
  }

  v59 = v140;
  v58 = v141;
  v60 = v118;
  sub_1000035B4(v2 + *(a1 + 40), v118, &qword_10012E478, &unk_1000EA8E0);
  v61 = (*(v58 + 48))(v60, 1, v54);
  v62 = v135;
  if (v61 == 1)
  {
    sub_100005688(v60, &qword_10012E478, &unk_1000EA8E0);
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();

    goto LABEL_19;
  }

  v63 = v58 + 32;
  v64 = *(v58 + 32);
  v64(v59, v60, v54);
  Player.playerID.getter();
  v65 = v125;
  Ref<A>.init(internalID:)();
  (*(v127 + 16))(v111, v65, v128);
  ShimGameServicesRoot.init(localPlayer:)();
  v111 = v64;
  v118 = v63;
  sub_100002B38(&qword_100131818, &qword_1000EE1F8);
  v66 = v137;
  v142[3] = v137;
  v142[4] = sub_1000BAC3C(&qword_100131820, &type metadata accessor for ShimGameServicesRoot, &protocol conformance descriptor for ShimGameServicesRoot);
  v67 = sub_100012854(v142);
  v68 = *(v136 + 16);
  v68(v67, v62, v66);
  Dependency.init<A>(satisfying:with:)();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "DefaultOverlayJetView: adding LPP to objectGraph", v71, 2u);
  }

  type metadata accessor for LocalPlayerProvider();
  v72 = v141 + 16;
  v73 = v113;
  (*(v141 + 16))(v113, v140, v54);
  v74 = v115;
  v75 = v62;
  v76 = v137;
  v68(v115, v75, v137);
  v77 = (*(v72 + 64) + 16) & ~*(v72 + 64);
  v78 = v136;
  v79 = (v112 + *(v136 + 80) + v77) & ~*(v136 + 80);
  v80 = swift_allocObject();
  (v111)(v80 + v77, v73, v54);
  (*(v78 + 32))(v80 + v79, v74, v76);
  Dependency.init<A>(satisfying:with:)();
  Player.playerID.getter();
  PlayerID.init(playerID:)();
  Dependency.init<A>(satisfying:with:)();
  v81 = v139 + *(v138 + 76);
  v82 = *v81;
  if (*(v81 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v83 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v84 = v107;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v85 = sub_1000682AC(v82, 0);
    (*(v108 + 8))(v84, v109, v85);
    v28 = v132;
    v29 = v129;
    if ((v142[0] & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();
    goto LABEL_18;
  }

  v28 = v132;
  v29 = v129;
  if (v82)
  {
    goto LABEL_17;
  }

LABEL_15:
  BootstrapResult.metricsPipelineTransformer.getter();
  static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)();

LABEL_18:
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v86 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1000EA7D0;
  v88 = v119;
  (*(v29 + 16))(v87 + v86, v119, v28);

  BaseObjectGraph.__allocating_init(name:_:)();
  v89 = v120;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v90 = v121;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v91 = *(v29 + 8);

  v91(v90, v28);
  v91(v89, v28);
  v91(v88, v28);
  (*(v136 + 8))(v135, v137);
  (*(v127 + 8))(v125, v128);
  (*(v141 + 8))(v140, v133);
  a1 = v138;
  v2 = v139;
LABEL_19:
  BootstrapResult.metricsPipelineTransformer.getter();
  v92 = v126;
  v122(v126, v2, a1);
  v93 = v134;
  v94 = a1;
  v95 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = *(v94 + 16);
  (*(v93 + 32))(v96 + v95, v92, v94);
  MetricsPipelineTransformer.transform(_:)();

  v97 = *(v2 + *(v94 + 52));
  if (v97)
  {
    type metadata accessor for GameDashboardLaunchContext();
    v142[0] = v97;
    swift_retain_n();
    v98 = v131;
    Dependency.init<A>(satisfying:with:)();
    type metadata accessor for BaseObjectGraph();
    sub_100002B38(&qword_10012E690, &qword_1000EAB50);
    v99 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1000EA7D0;
    (*(v29 + 16))(v100 + v99, v98, v28);
    BaseObjectGraph.__allocating_init(name:_:)();
    (*(v29 + 8))(v98, v28);
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    BaseObjectGraph.__allocating_init(name:_:)();
    v98 = v131;
  }

  type metadata accessor for NetworkConnectionMonitor();

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v101 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1000EA7D0;
  v103 = v130;
  (*(v29 + 16))(v102 + v101, v130, v28);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v104 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v105 = *(v29 + 8);
  v105(v98, v28);
  v105(v103, v28);
  return v104;
}

void sub_1000B78DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&qword_100131810, &unk_1000EE1E8);
  __chkstk_darwin(v6);
  v8 = (&v24[-1] - v7);
  v9 = type metadata accessor for _JetViewDefaultWorking();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(type metadata accessor for DefaultOverlayJetView(0, a2, a3, v13) + 64);
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 8);

    v15(v24, v17);
    v18 = sub_10002D754(v24, v24[3]);
    v19 = __chkstk_darwin(v18);
    (*(v21 + 16))(&v24[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    v22 = AnyView.init<A>(_:)();
    sub_10002E6CC(v24);
    *v8 = v22;
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking, &protocol conformance descriptor for _JetViewDefaultWorking);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v15, v16);
  }

  else
  {
    _JetViewDefaultWorking.init()();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking, &protocol conformance descriptor for _JetViewDefaultWorking);
    _ConditionalContent<>.init(storage:)();
    (*(v10 + 8))(v12, v9);
  }
}

void sub_1000B7C28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a7;
  v29 = sub_100002B38(&qword_100131808, &qword_1000EE1E0);
  __chkstk_darwin(v29);
  v14 = (&v28 - v13);
  v15 = type metadata accessor for _JetViewDefaultFailed();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4 + *(type metadata accessor for DefaultOverlayJetView(0, a5, a6, v19) + 68);
  v21 = *v20;
  if (*v20)
  {
    v22 = *(v20 + 8);

    v21(v31, a1, a2, a3);
    v23 = sub_10002D754(v31, v31[3]);
    v24 = __chkstk_darwin(v23);
    (*(v26 + 16))(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v27 = AnyView.init<A>(_:)();
    sub_10002E6CC(v31);
    *v14 = v27;
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed, &protocol conformance descriptor for _JetViewDefaultFailed);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v21, v22);
  }

  else
  {
    swift_errorRetain();

    _JetViewDefaultFailed.init(error:retry:)();
    (*(v16 + 16))(v14, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed, &protocol conformance descriptor for _JetViewDefaultFailed);
    _ConditionalContent<>.init(storage:)();
    (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_1000B7FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a1;
  v110 = a5;
  v8 = sub_100002B38(&qword_100131778, &qword_1000EE1A0);
  v90 = v8;
  v109 = *(v8 - 8);
  __chkstk_darwin(v8);
  v108 = &v71 - v9;
  v10 = type metadata accessor for TaskPriority();
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v104 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4;
  v80 = a4;
  v95 = type metadata accessor for DefaultOverlayJetView(0, a3, a4, v13);
  v96 = *(v95 - 8);
  v98 = *(v96 + 64);
  __chkstk_darwin(v95);
  v94 = &v71 - v14;
  v15 = a3;
  v103 = *(a3 - 8);
  __chkstk_darwin(v16);
  v84 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _TaskModifier();
  v18 = type metadata accessor for ModifiedContent();
  v102 = *(v18 - 8);
  __chkstk_darwin(v18);
  v93 = &v71 - v19;
  v20 = sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  v117 = v12;
  v118 = v20;
  WitnessTable = swift_getWitnessTable();
  v113 = v18;
  v114 = WitnessTable;
  v81 = v18;
  v22 = WitnessTable;
  v83 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = OpaqueTypeMetadata2;
  v105 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v82 = &v71 - v24;
  v113 = v18;
  v114 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = OpaqueTypeConformance2;
  v26 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v78 = v26;
  v27 = sub_100005144(&qword_10012E490, &qword_1000EA900);
  v87 = v27;
  v28 = sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol, &protocol conformance descriptor for MediaArtwork.URLImageProtocol);
  v86 = v28;
  v85 = sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900, &protocol conformance descriptor for LRUMultiCache<A, B>);
  v113 = v26;
  v114 = v27;
  v115 = v28;
  v116 = v85;
  v88 = swift_getOpaqueTypeConformance2();
  v113 = OpaqueTypeMetadata2;
  v114 = v8;
  v115 = OpaqueTypeConformance2;
  v116 = v88;
  v97 = &opaque type descriptor for <<opaque return type of View.mediaArtworkProtocol<A>(_:)>>;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = *(v29 - 8);
  v99 = v29;
  v100 = v30;
  __chkstk_darwin(v29);
  v79 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v92 = &v71 - v33;
  v34 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration();
  v111 = v34;
  v72 = *(v34 - 8);
  v35 = v72;
  __chkstk_darwin(v34);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v37;
  __chkstk_darwin(v38);
  v74 = &v71 - v39;
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ArtworkLoaderURLSession();
  BaseObjectGraph.inject<A>(_:)();

  v40 = v113;
  v77 = v113;
  MediaArtwork.URLImageProtocol.Configuration.init()();
  v41 = [v40 session];
  MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)();

  v42 = *(v35 + 8);
  v75 = v35 + 8;
  v76 = v42;
  v42(v37, v34);
  v43 = v95;
  v44 = *(v95 + 60);
  v73 = a2;
  v45 = v84;
  v46 = v101;
  (*(a2 + v44))(v101);
  v47 = v96;
  v48 = v94;
  (*(v96 + 16))(v94, a2, v43);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = (v98 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v15;
  *(v51 + 24) = v80;
  (*(v47 + 32))(v51 + v49, v48, v43);
  *(v51 + v50) = v46;

  v52 = v104;
  static TaskPriority.userInitiated.getter();
  v53 = v93;
  View.task(priority:_:)();

  (*(v106 + 8))(v52, v107);
  (*(v103 + 8))(v45, v15);
  v54 = v82;
  v55 = v81;
  View.componentContentBuilder(with:)();
  (*(v102 + 8))(v53, v55);
  v56 = v74;
  (*(v72 + 16))(v71, v74, v111);
  swift_checkMetadataState();
  swift_allocObject();
  v57 = MediaArtwork.URLImageProtocol.init(_:)();
  v58 = (v73 + *(v43 + 72));
  v60 = *v58;
  v59 = v58[1];
  v112 = v57;
  v113 = v60;
  v114 = v59;
  sub_100002B38(&qword_1001317E0, &qword_1000EE1B8);
  State.wrappedValue.getter();
  v61 = v108;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  v62 = v79;
  v63 = v91;
  v64 = v90;
  v65 = v89;
  v66 = v88;
  View.mediaArtworkProtocol<A>(_:)();

  (*(v109 + 8))(v61, v64);
  (*(v105 + 8))(v54, v63);
  v76(v56, v111);
  v113 = v63;
  v114 = v64;
  v115 = v65;
  v116 = v66;
  swift_getOpaqueTypeConformance2();
  v67 = v92;
  v68 = v99;
  sub_10009B680();
  v69 = *(v100 + 8);
  v69(v62, v68);
  sub_10009B680();
  return (v69)(v67, v68);
}

uint64_t sub_1000B8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B8B38, v6, v5);
}

uint64_t sub_1000B8B38()
{
  v1 = v0[5];
  v2 = v0[4];

  type metadata accessor for DefaultOverlayJetView(0, v2, v1, v3);

  JSNativeIntentDispatcher.objectGraph.setter();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B8BCC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100002B38(&qword_10012FFD0, &qword_1000EC530);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_100002B38(&qword_100131838, &unk_1000EE210);
  __chkstk_darwin(v4 - 8);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = &v22 - v7;
  v26 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v22 - v8;
  v10 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for OverlayFlowAuthorityProvider(0);
  BaseObjectGraph.inject<A>(_:)();

  sub_1000BAC3C(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  v23 = v16;
  Bindable<A>.init(wrappedValue:)();
  ActionDispatcher.init()();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v17 = *(v11 + 8);
  v22 = v11 + 8;
  v17(v13, v10);
  v18 = v25;
  static GameObjectGraphBuilder.actionDispatcher<A>(following:window:)();
  sub_100005688(v3, &qword_10012FFD0, &qword_1000EC530);
  v19 = v24;
  v20 = v26;
  (*(v24 + 56))(v18, 0, 1, v26);
  (*(v19 + 16))(v28, v9, v20);
  sub_1000035B4(v18, v27, &qword_100131838, &unk_1000EE210);
  ActionDispatcher.next.setter();
  sub_100005688(v18, &qword_100131838, &unk_1000EE210);
  (*(v19 + 8))(v9, v20);
  return (v17)(v23, v10);
}

uint64_t sub_1000B8FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  v7[2] = a1;
  v7[3] = a2;
  result = sub_1000B921C(sub_1000BABCC, v7, "GameOverlayUI/DefaultOverlayJetView.swift", 41, 2, 187);
  *a3 = result;
  return result;
}

uint64_t sub_1000B9060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Player();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ArcadeSubscription();
  BaseObjectGraph.inject<A>(_:)();

  v10 = type metadata accessor for ShimGameServicesRoot();
  v13[3] = v10;
  v13[4] = sub_1000BAC3C(&qword_100131820, &type metadata accessor for ShimGameServicesRoot, &protocol conformance descriptor for ShimGameServicesRoot);
  v11 = sub_100012854(v13);
  (*(*(v10 - 8) + 16))(v11, a2, v10);
  type metadata accessor for LocalPlayerProvider();
  swift_allocObject();
  result = LocalPlayerProvider.init(current:gameServices:arcadeSubscription:)();
  *a3 = result;
  return result;
}

uint64_t sub_1000B921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1000BABF8(v17);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v17[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v14._object = 0x80000001000E7DF0;
  v14._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_1000B93D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[0] = a3;
  v23[1] = a1;
  v24 = type metadata accessor for MetricsFieldExclusionRequest();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CommonOnboardingStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GameOverlayPreConsentFieldsProvider();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DefaultOverlayJetView(0, a4, a5, v18);
  (*(v11 + 16))(v13, v23[0] + *(v19 + 56), v10);
  GameOverlayPreConsentFieldsProvider.init(commonOnboardingStatus:)();
  v26[3] = v14;
  v26[4] = sub_1000BAC3C(&qword_100131830, &type metadata accessor for GameOverlayPreConsentFieldsProvider, &protocol conformance descriptor for GameOverlayPreConsentFieldsProvider);
  v20 = sub_100012854(v26);
  (*(v15 + 16))(v20, v17, v14);
  static MetricsFieldExclusionRequest.gameOverlayPreConsent.getter();
  v21 = MetricsPipelineTransformer.State.aggregator.modify();
  MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)();
  (*(v7 + 8))(v9, v24);
  v21(v25, 0);
  (*(v15 + 8))(v17, v14);
  return sub_10002E6CC(v26);
}

void sub_1000B96A4(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  type metadata accessor for NetworkConnectionMonitor();
  swift_allocObject();
  v2 = NetworkConnectionMonitor.init(bagContract:)();

  *a1 = v2;
}

unint64_t sub_1000B973C()
{
  result = qword_1001317A0;
  if (!qword_1001317A0)
  {
    sub_100005144(&qword_100131790, &qword_1000EE1A8);
    sub_1000BAC3C(&qword_1001317A8, &type metadata accessor for _JetViewDefaultWorking, &protocol conformance descriptor for _JetViewDefaultWorking);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317A0);
  }

  return result;
}

unint64_t sub_1000B97F8()
{
  result = qword_1001317B0;
  if (!qword_1001317B0)
  {
    sub_100005144(&qword_100131798, &qword_1000EE1B0);
    sub_1000BAC3C(&qword_1001317B8, &type metadata accessor for _JetViewDefaultFailed, &protocol conformance descriptor for _JetViewDefaultFailed);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317B0);
  }

  return result;
}

uint64_t sub_1000B98B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for DefaultOverlayJetView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000B63A4(v9, v5, v6, v7);
}

void sub_1000B993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DefaultOverlayJetView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_1000B78DC(v8, v5, v6);
}

void sub_1000B99C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(type metadata accessor for DefaultOverlayJetView(0, v10, v11, a4) - 8);
  v13 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

  sub_1000B7C28(a1, a2, a3, v13, v10, v11, a5);
}

uint64_t sub_1000B9A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DefaultOverlayJetView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000B7FA8(a1, v9, v6, v7, a3);
}

unint64_t sub_1000B9B18()
{
  result = qword_1001317F0;
  if (!qword_1001317F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001317F0);
  }

  return result;
}

uint64_t sub_1000B9B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DefaultOverlayJetView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v5[10];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = v5[12];
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v5[14];
  v15 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);

  if (*(v6 + v5[16]))
  {
  }

  if (*(v6 + v5[17]))
  {
  }

  sub_1000682AC(*(v6 + v5[19]), *(v6 + v5[19] + 8));

  return swift_deallocObject();
}

uint64_t sub_1000B9E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DefaultOverlayJetView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100011720;

  return sub_1000B8A9C(v4 + v9, v10, v6, v7);
}

void sub_1000B9F4C(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for DefaultOverlayJetView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_1000B6630(v7, v4, v5, a2);
}

uint64_t sub_1000BA000(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000BA5C8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000BA05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DefaultOverlayJetView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v5[10];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = v5[12];
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v5[14];
  v15 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);

  if (*(v6 + v5[16]))
  {
  }

  if (*(v6 + v5[17]))
  {
  }

  sub_1000682AC(*(v6 + v5[19]), *(v6 + v5[19] + 8));

  return swift_deallocObject();
}

double sub_1000BA310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for DefaultOverlayJetView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1000B93D4(a1, a2, v10, v7, v8);
}

uint64_t sub_1000BA3AC()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ShimGameServicesRoot();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000BA4F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Player() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShimGameServicesRoot() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000B8FDC(v1 + v4, v7, a1);
}

unint64_t sub_1000BA5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000BA694(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000BA7A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002E6CC(v11);
  return v7;
}

unint64_t sub_1000BA694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000BA7FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000BA7A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1000BA7FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000BA848(a1, a2);
  sub_1000BA978(&off_1001205C8);
  return v3;
}

char *sub_1000BA848(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000BAA64(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000BAA64(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000BA978(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000BAAD8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000BAA64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002B38(&qword_100131828, &unk_1000EE200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000BAAD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002B38(&qword_100131828, &unk_1000EE200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1000BABF8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1000BAC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BAC8C(uint64_t *a1)
{
  type metadata accessor for _TaskModifier();
  type metadata accessor for ModifiedContent();
  sub_1000BAC3C(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131778, &qword_1000EE1A0);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for MediaArtwork.URLImageProtocol();
  sub_100005144(&qword_10012E490, &qword_1000EA900);
  sub_1000BAC3C(&qword_100131780, &type metadata accessor for MediaArtwork.URLImageProtocol, &protocol conformance descriptor for MediaArtwork.URLImageProtocol);
  sub_1000057D8(&qword_100131788, &qword_10012E490, &qword_1000EA900, &protocol conformance descriptor for LRUMultiCache<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131790, &qword_1000EE1A8);
  sub_100005144(&qword_100131798, &qword_1000EE1B0);
  swift_getOpaqueTypeConformance2();
  sub_1000B973C();
  sub_1000B97F8();
  type metadata accessor for Jet();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131770, &qword_1000EE198);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ContactAvatarProtocol();
  sub_1000BAC3C(&qword_1001317C0, &type metadata accessor for ContactAvatarProtocol, &protocol conformance descriptor for ContactAvatarProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131768, &qword_1000EE190);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for AppIconProtocol();
  sub_1000BAC3C(&qword_1001317C8, &type metadata accessor for AppIconProtocol, &protocol conformance descriptor for AppIconProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100005144(&qword_100131760, &qword_1000EE188);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PlayerMonogramProtocol();
  sub_1000BAC3C(&qword_1001317D0, &type metadata accessor for PlayerMonogramProtocol, &protocol conformance descriptor for PlayerMonogramProtocol);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for MediaArtwork.BundleImageProtocol();
  swift_getOpaqueTypeConformance2();
  sub_1000BAC3C(&qword_1001317D8, &type metadata accessor for MediaArtwork.BundleImageProtocol, &protocol conformance descriptor for MediaArtwork.BundleImageProtocol);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for GameOverlayUIFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GameOverlayUIFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BB39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131840;
  if (!qword_100131840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131840);
  }

  return result;
}

const char *sub_1000BB3F0()
{
  if ((*v0 & 0xFE) == 2)
  {
    return "GameCenter";
  }

  else
  {
    return "gseui";
  }
}

const char *sub_1000BB424()
{
  v1 = *v0;
  v2 = "gameoverlayui_friend_inbox_banner";
  v3 = "ma1h52";
  if (v1 != 3)
  {
    v3 = "end_active_call_tab_behavior";
  }

  if (v1 < 2)
  {
    v2 = "de7bbd8e";
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BB484@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000BC3B4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  return sub_1000BC2CC(v5 + v3, a1);
}

uint64_t sub_1000BB51C()
{
  v0 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = type metadata accessor for ASKBootstrapV2.TargetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for Bag.Profile();
  __chkstk_darwin(v10 - 8);
  Bag.Profile.init(name:version:)();
  if (qword_10012CC30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for BagOfflinePolicy();
  v12 = sub_100011F80(v11, qword_100131848);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v9, v12, v11);
  v14 = (*(v13 + 56))(v9, 0, 1, v11);
  v22[8] = &type metadata for ModernAppStateControllerFactory;
  v22[9] = sub_1000BC090(v14, v15, v16);
  (*(v4 + 104))(v6, enum case for ASKBootstrapV2.TargetType.app(_:), v3);
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);

  v18 = static Locale.preferredLanguages.getter();
  v22[3] = &type metadata for DeviceLanguageSource;
  v22[4] = sub_1000BC278(v18, v19, v20);
  v22[0] = v18;
  return Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)();
}

uint64_t sub_1000BB898()
{
  v0 = type metadata accessor for BagOfflinePolicy();
  sub_10006D8E0(v0, qword_100131848);
  sub_100011F80(v0, qword_100131848);
  return BagOfflinePolicy.init(defaultMaxAge:offlineMaxAge:)();
}

uint64_t sub_1000BB8FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000BB91C, 0, 0);
}

uint64_t sub_1000BB91C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000BB9C0;
  v3 = v0[2];

  return makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)(v3, v1);
}

uint64_t sub_1000BB9C0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000BBAC0(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  sub_1000BC33C(a1, v1 + v10);
  swift_endAccess();
  swift_getKeyPath();
  v13 = v1;
  sub_1000BC3B4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000BC2CC(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000BBDEC(a1);
    return sub_1000BBDEC(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    BootstrapResult.objectGraph.getter();
    JSNativeIntentDispatcher.objectGraph.setter();
    sub_1000BBDEC(a1);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000BBCD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  sub_1000BC2CC(a2, &v7 - v4);
  return sub_1000BBAC0(v5);
}

uint64_t OverlayBootstrap.deinit()
{
  sub_1000BBDEC(v0 + OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult);
  v1 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000BBDEC(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OverlayBootstrap.__deallocating_deinit()
{
  sub_1000BBDEC(v0 + OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult);
  v1 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayBootstrap(uint64_t a1)
{
  result = qword_100131898;
  if (!qword_100131898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BBF5C(uint64_t a1)
{
  sub_1000BC038(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BC038(uint64_t a1)
{
  if (!qword_1001318A8)
  {
    type metadata accessor for BootstrapResult();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001318A8);
    }
  }
}

unint64_t sub_1000BC090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131938;
  if (!qword_100131938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131938);
  }

  return result;
}

uint64_t sub_1000BC0E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000BC17C;

  return sub_1000BB8FC(a1, v1);
}

uint64_t sub_1000BC17C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1000BC278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131940;
  if (!qword_100131940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131940);
  }

  return result;
}

uint64_t sub_1000BC2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BC33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BC3B4()
{
  result = qword_10012E450;
  if (!qword_10012E450)
  {
    type metadata accessor for OverlayBootstrap(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E450);
  }

  return result;
}

uint64_t sub_1000BC40C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = &off_1000E6A60;
  if (a1 <= 3u)
  {
    v4 = "action:in-game-banner-overlay";
    v5 = 0xD000000000000018;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
      v4 = "action:dashboard-overlay";
    }

    v8 = "action:access-point-overlay";
    if (a1)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v9 = 0xD00000000000001BLL;
    }

    if (!a1)
    {
      v8 = &off_1000E6A60;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "action:authentication-overlay";
    v5 = 0xD000000000000019;
    v6 = "action:onboarding-overlay";
    v7 = 0xD000000000000028;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001FLL;
      v6 = "sharing-reprompt-overlay";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "action:multiplayer-overlay";
    v9 = 0xD000000000000025;
    if (a1 != 4)
    {
      v9 = 0xD00000000000001DLL;
      v8 = "d-multiplayer-overlay";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "action:authentication-overlay";
        v2 = 0xD000000000000019;
      }

      else if (a2 == 7)
      {
        v3 = "action:onboarding-overlay";
        v2 = 0xD000000000000028;
      }

      else
      {
        v3 = "sharing-reprompt-overlay";
        v2 = 0xD00000000000001FLL;
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v3 = "action:multiplayer-overlay";
      v2 = 0xD000000000000025;
      goto LABEL_41;
    }

    v13 = "action:authentication-overlay";
LABEL_40:
    v3 = (v13 - 32);
    goto LABEL_41;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0xD00000000000001BLL;
      goto LABEL_41;
    }

    v13 = "action:in-game-banner-overlay";
    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v3 = "action:in-game-banner-overlay";
    v2 = 0xD000000000000018;
  }

  else
  {
    v3 = "action:dashboard-overlay";
    v2 = 0xD00000000000001ALL;
  }

LABEL_41:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_1000BC63C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v4 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000BC734()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

void sub_1000BC7F8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = a1 & 1;

    sub_1000BDCB4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000BC948()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

void *sub_1000BC9F4()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  v2 = v1;
  return v1;
}

uint64_t sub_1000BCACC()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
}

double sub_1000BCB74(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000BCC80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessPointAnchoring();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1000C0BA8(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

unint64_t sub_1000BCF00(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    v3 = 0xD000000000000028;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000025;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1000BD00C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000BD05C(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000BD05C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_1000BD188(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000BD05C(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000BD1CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C19BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000BD1FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000BCF00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BD228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BD2D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000BD314(v1, v2);
}

uint64_t sub_1000BD314(uint64_t a1, uint64_t a2)
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
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
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

uint64_t sub_1000BD484(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v5 = type metadata accessor for AccessPointAnchoring();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

id sub_1000BD540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  *a2 = v4;

  return v4;
}

void sub_1000BD600(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BD630(v1);
}

void sub_1000BD630(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame;
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10003F788(0, &qword_10012E050, GKGame_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000BD840@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1000BD8F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BD924(v1);
}

void sub_1000BD924(void *a1)
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
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_10003F788(0, &qword_100130F00, SBSUIRemoteAlertScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1000BDAE8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_1000BDBB0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000BDCB4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard;
  v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "RemoteAlertAccessPointContext: isShowingDashboard is %{BOOL}d", v7, 8u);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + v2) & 1) == 0)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "RemoteAlertAccessPointContext: Setting dismissDashboardRequested to false.", v10, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    }
  }
}

void sub_1000BDF80(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1000BE034()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100011F80(v3, qword_100135C88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "RemoteAlertAccessPointContext: requestDismissDashboard called. Is the Access Point expanded to show the dashboard? %{BOOL}d", v6, 8u);
  }

  if (v2)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "RemoteAlertAccessPointContext: requestDismissDashboard called. Setting dismissDashboardRequested to true.", v9, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) == 1)
    {
      *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return v2;
}

uint64_t sub_1000BE2C8()
{

  v1 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  v2 = type metadata accessor for AccessPointAnchoring();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10006C574(*(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler), *(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler + 8));
  swift_unknownObjectWeakDestroy();
  sub_1000C1B54(v0 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_remoteTarget);
  v3 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
  v4 = type metadata accessor for AccessPointUseCase();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1000BE40C()
{
  sub_1000BE2C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BE48C(uint64_t a1)
{
  result = type metadata accessor for AccessPointAnchoring();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccessPointUseCase();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000BE5F4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1000BE6A4()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1000BE6D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested);
}

uint64_t sub_1000BE7A8()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000BE858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BE904(uint64_t a1, uint64_t a2)
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
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
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

uint64_t sub_1000BEA74()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1000BEB14(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

void sub_1000BEBBC(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000BECCC()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000BED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(v3 + 40) = v10;
  *(v3 + 48) = v12;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = 0;
  return v3;
}

uint64_t sub_1000BEEAC()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RemoteAlertDashboardContext: requestDismissDashboard called. Setting dismissDashboardRequested to true.", v5, 2u);
  }

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return 1;
}

uint64_t sub_1000BF078()
{

  sub_1000C1B54(v0 + 56);
  v1 = OBJC_IVAR____TtC13GameOverlayUI27RemoteAlertDashboardContext___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF154(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BF20C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1000BF2BC()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1000BF2F0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 32);
}

uint64_t sub_1000BF3B8()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000BF468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BF514(uint64_t a1, uint64_t a2)
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
    sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
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

uint64_t sub_1000BF684()
{
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1000BF724(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

void sub_1000BF7CC(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000BF8DC()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertAuthenticationContext___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF9C0(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BFA7C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1000BFB2C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&qword_100131D88, type metadata accessor for RemoteAlertAuthenticationContext, &unk_1000EE658);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 32);
}

uint64_t sub_1000BFBCC()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000BFC7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1000BFD28(uint64_t a1, uint64_t a2)
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
    sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
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

uint64_t sub_1000BFE98()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_1000BFF38(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

void sub_1000BFFE0(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000C00F0()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1000C0194(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C01D0()
{
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

uint64_t sub_1000C0278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(v4 + 48) = v12;
  *(v4 + 56) = v14;
  *(v4 + 64) = 0;
  ObservationRegistrar.init()();

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = 0;
  *(v4 + 72) = 2;
  return v4;
}

uint64_t sub_1000C03A8()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertGameModeBannerContext___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C048C(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteAlertIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteAlertIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C06B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100131D78;
  if (!qword_100131D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D78);
  }

  return result;
}

uint64_t sub_1000C0704()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1000C07B4()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_1000C07E8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000C0BA8(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 40);
}

uint64_t sub_1000C0888(uint64_t a1, void *a2)
{
  v3 = sub_10002D754((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100002B38(&unk_10012E548, &qword_1000EA9B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000C0934(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1000C0980(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1000C0990(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000C09B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000C0BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C0CAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000C0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_1000C0D30, 0, 0);
}

uint64_t sub_1000C0D30()
{
  v20 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_100011F80(v1, qword_100135C88);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[29];
    v4 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000BA5C8(v5, v4, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Notifying gamed Game Center UI is about to be presented.", v6, 0xCu);
    sub_10002E6CC(v7);
  }

  v8 = v0[28];
  if (v8)
  {
    v9 = v0[27];
    v10 = objc_opt_self();
    sub_100002B38(&qword_100131D90, &qword_1000EEA08);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000EA7D0;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;

    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1000C1090;
    v13 = swift_continuation_init();
    v0[25] = sub_100002B38(&qword_100131D98, &unk_1000EEA10);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1000C1D0C;
    v0[21] = &unk_100124110;
    v0[22] = v13;
    [v10 loadGamesWithBundleIDs:isa withCompletionHandler:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unexpectedly found a nil Game bundle ID.", v16, 2u);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000C1090()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1000C1628;
  }

  else
  {
    v2 = sub_1000C11A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C11A0()
{
  v18 = v0;
  v1 = *(v0 + 208);

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
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
      return _swift_continuation_await(v2);
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 gameDescriptor];
  *(v0 + 272) = v5;

  if (v5)
  {
    v6 = [objc_opt_self() proxyForLocalPlayer];
    v7 = [v6 utilityServicePrivate];
    *(v0 + 280) = v7;

    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1000C14B0;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_100002B38(&qword_100131DA0, &unk_1000EEA20);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1000C0888;
    *(v0 + 168) = &unk_100124138;
    *(v0 + 176) = v8;
    [v7 willLaunchGameCenterUIForGameDescriptor:v5 completionHandler:v0 + 144];
    v2 = v0 + 80;

    return _swift_continuation_await(v2);
  }

LABEL_12:

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000BA5C8(v12, v11, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to find a valid game descriptor for game with bundle ID %s.", v13, 0xCu);
    sub_10002E6CC(v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000C14B0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1000C17EC;
  }

  else
  {
    v2 = sub_1000C15C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C15C0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C1628()
{
  v13 = v0;
  v1 = v0[32];
  swift_willThrow();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[29];
    v4 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000BA5C8(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Error notifying gamed: %@", v6, 0x16u);
    sub_10007D290(v7);

    sub_10002E6CC(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000C17EC()
{
  v13 = v0;
  v1 = v0[34];
  swift_willThrow();

  swift_unknownObjectRelease();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[29];
    v4 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000BA5C8(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Error notifying gamed: %@", v6, 0x16u);
    sub_10007D290(v7);

    sub_10002E6CC(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

unint64_t sub_1000C19BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001205F0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

void sub_1000C1A78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BD924(v1);
}

void sub_1000C1AD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BD630(v1);
}

void sub_1000C1B04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = v2;
  v4 = v2;
}

uint64_t sub_1000C1C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000C547C(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

double sub_1000C1CA8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000C5624(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1000BA7A0(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000C1D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002D754((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002B38(&unk_10012E548, &qword_1000EA9B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10003F788(0, &qword_10012E050, GKGame_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000C1DFC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1000C62BC(v5, v7) & 1;
}

char *DashboardRequest.init(initialState:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_statusBarHeight] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_hostPID] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldLayoutRTL] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_preferredLocalizations] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = -1;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope] = 2;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = 1;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForChallenge] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForTurnBasedMatch] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowQuitForTurnBasedMatch] = 0;
  v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_isArcade] = 0;
  v4 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal] = 0;
  v8 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_activityIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerAlias];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardSetID];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 3;
  v294.receiver = v2;
  v294.super_class = type metadata accessor for DashboardRequest();
  v15 = objc_msgSendSuper2(&v294, "init");
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (*(a1 + 16))
  {
    v19 = v16;
    v20 = v15;
    v21 = sub_1000C547C(v19, v18);
    v23 = v22;

    v24 = 0;
    if (v23)
    {
      v290 = *(*(a1 + 56) + 8 * v21);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v24 = v293;
      }
    }
  }

  else
  {
    v25 = v15;

    v24 = 0;
  }

  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_statusBarHeight] = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v28 = sub_1000C547C(v26, v27);
    v30 = v29;

    if (v30)
    {
      v290 = *(*(a1 + 56) + 8 * v28);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v31 = v293;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v31 = 0;
LABEL_12:
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_hostPID] = v31;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    sub_1000C547C(v32, v33);
    v35 = v34;

    if (v35)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v36 = 0;
LABEL_18:
  v37 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  v38 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = v36;

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    sub_1000C547C(v39, v40);
    v42 = v41;

    if (v42)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v43 = 0;
LABEL_24:
  v44 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer] = v43;

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v47 = sub_1000C547C(v45, v46);
    v49 = v48;

    if (v49)
    {
      v290 = *(*(a1 + 56) + 8 * v47);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v50 = v293;
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v50 = 0;
LABEL_30:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldLayoutRTL] = v50;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v53 = sub_1000C547C(v51, v52);
    v55 = v54;

    if (v55)
    {
      v290 = *(*(a1 + 56) + 8 * v53);
      swift_unknownObjectRetain();
      sub_100002B38(&qword_10012E3D0, &qword_1000EA818);
      if (swift_dynamicCast())
      {
        v56 = v293;
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  v56 = &_swiftEmptyArrayStorage;
LABEL_36:
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_preferredLocalizations] = v56;

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v59 = sub_1000C547C(v57, v58);
    v61 = v60;

    if (v61)
    {
      v290 = *(*(a1 + 56) + 8 * v59);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v62 = v293;
        goto LABEL_42;
      }
    }
  }

  else
  {
  }

  v62 = -1;
LABEL_42:
  v287 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = v62;
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v65 = sub_1000C547C(v63, v64);
    v67 = v66;

    if (v67)
    {
      v290 = *(*(a1 + 56) + 8 * v65);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v68 = v293;
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  v68 = -1;
LABEL_48:
  v69 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope] = v68;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v72 = sub_1000C547C(v70, v71);
    v74 = v73;

    if (v74)
    {
      v290 = *(*(a1 + 56) + 8 * v72);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v75 = v293;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v75 = -1;
LABEL_54:
  v289 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope;
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = v75;
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_59;
  }

  v78 = sub_1000C547C(v76, v77);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
LABEL_59:
    v82 = 0;
    v83 = 0;
    goto LABEL_60;
  }

  v293 = *(*(a1 + 56) + 8 * v78);
  swift_unknownObjectRetain();
  v81 = swift_dynamicCast();
  v82 = v290;
  v83 = v292;
  if (!v81)
  {
    v82 = 0;
    v83 = 0;
  }

LABEL_60:
  v84 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardSetID];
  *v84 = v82;
  *(v84 + 1) = v83;

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v87 = sub_1000C547C(v85, v86);
    v89 = v88;

    if (v89)
    {
      v290 = *(*(a1 + 56) + 8 * v87);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v90 = v293;
        goto LABEL_66;
      }
    }
  }

  else
  {
  }

  v90 = 0;
LABEL_66:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForChallenge] = v90;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v93 = sub_1000C547C(v91, v92);
    v95 = v94;

    if (v95)
    {
      v290 = *(*(a1 + 56) + 8 * v93);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v96 = v293;
        goto LABEL_72;
      }
    }
  }

  else
  {
  }

  v96 = 0;
LABEL_72:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowPlayForTurnBasedMatch] = v96;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v99 = sub_1000C547C(v97, v98);
    v101 = v100;

    if (v101)
    {
      v290 = *(*(a1 + 56) + 8 * v99);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v102 = v293;
        goto LABEL_78;
      }
    }
  }

  else
  {
  }

  v102 = 0;
LABEL_78:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_shouldShowQuitForTurnBasedMatch] = v102;
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v105 = sub_1000C547C(v103, v104);
    v107 = v106;

    if (v107)
    {
      v290 = *(*(a1 + 56) + 8 * v105);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v108 = v293;
        goto LABEL_84;
      }
    }
  }

  else
  {
  }

  v108 = 0;
LABEL_84:
  v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_isArcade] = v108;
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_89;
  }

  v111 = sub_1000C547C(v109, v110);
  v113 = v112;

  if ((v113 & 1) == 0)
  {
LABEL_89:
    v115 = 0;
    v116 = 0;
    goto LABEL_90;
  }

  v293 = *(*(a1 + 56) + 8 * v111);
  swift_unknownObjectRetain();
  v114 = swift_dynamicCast();
  v115 = v290;
  v116 = v292;
  if (!v114)
  {
    v115 = 0;
    v116 = 0;
  }

LABEL_90:
  v117 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext];
  *v117 = v115;
  *(v117 + 1) = v116;
  v288 = v117;

  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_95;
  }

  v120 = sub_1000C547C(v118, v119);
  v122 = v121;

  if ((v122 & 1) == 0)
  {
LABEL_95:
    v124 = 0;
    v125 = 0;
    goto LABEL_96;
  }

  v293 = *(*(a1 + 56) + 8 * v120);
  swift_unknownObjectRetain();
  v123 = swift_dynamicCast();
  v124 = v290;
  v125 = v292;
  if (!v123)
  {
    v124 = 0;
    v125 = 0;
  }

LABEL_96:
  v126 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier];
  *v126 = v124;
  *(v126 + 1) = v125;
  v284 = v126;

  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_101;
  }

  v129 = sub_1000C547C(v127, v128);
  v131 = v130;

  if ((v131 & 1) == 0)
  {
LABEL_101:
    v133 = 0;
    v134 = 0;
    goto LABEL_102;
  }

  v293 = *(*(a1 + 56) + 8 * v129);
  swift_unknownObjectRetain();
  v132 = swift_dynamicCast();
  v133 = v290;
  v134 = v292;
  if (!v132)
  {
    v133 = 0;
    v134 = 0;
  }

LABEL_102:
  v135 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  *v135 = v133;
  *(v135 + 1) = v134;
  v285 = v135;

  v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    sub_1000C547C(v136, v137);
    v139 = v138;

    if (v139)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v140 = swift_dynamicCastObjCClass();
      if (v140)
      {
        goto LABEL_108;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v140 = 0;
LABEL_108:
  v141 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardInternal] = v140;

  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_113;
  }

  v144 = sub_1000C547C(v142, v143);
  v146 = v145;

  if ((v146 & 1) == 0)
  {
LABEL_113:
    v148 = 0;
    v149 = 0;
    goto LABEL_114;
  }

  v293 = *(*(a1 + 56) + 8 * v144);
  swift_unknownObjectRetain();
  v147 = swift_dynamicCast();
  v148 = v290;
  v149 = v292;
  if (!v147)
  {
    v148 = 0;
    v149 = 0;
  }

LABEL_114:
  v150 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTitle];
  *v150 = v148;
  v150[1] = v149;

  v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_119;
  }

  v153 = sub_1000C547C(v151, v152);
  v155 = v154;

  if ((v155 & 1) == 0)
  {
LABEL_119:
    v157 = 0;
    v158 = 0;
    goto LABEL_120;
  }

  v293 = *(*(a1 + 56) + 8 * v153);
  swift_unknownObjectRetain();
  v156 = swift_dynamicCast();
  v157 = v290;
  v158 = v292;
  if (!v156)
  {
    v157 = 0;
    v158 = 0;
  }

LABEL_120:
  v159 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier];
  *v159 = v157;
  *(v159 + 1) = v158;
  v283 = v159;

  v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_125;
  }

  v162 = sub_1000C547C(v160, v161);
  v164 = v163;

  if ((v164 & 1) == 0)
  {
LABEL_125:
    v166 = 0;
    v167 = 0;
    goto LABEL_126;
  }

  v293 = *(*(a1 + 56) + 8 * v162);
  swift_unknownObjectRetain();
  v165 = swift_dynamicCast();
  v166 = v290;
  v167 = v292;
  if (!v165)
  {
    v166 = 0;
    v167 = 0;
  }

LABEL_126:
  v168 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_activityIdentifier];
  *v168 = v166;
  v168[1] = v167;

  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_131;
  }

  v171 = sub_1000C547C(v169, v170);
  v173 = v172;

  if ((v173 & 1) == 0)
  {
LABEL_131:
    v175 = 0;
    v176 = 0;
    goto LABEL_132;
  }

  v293 = *(*(a1 + 56) + 8 * v171);
  swift_unknownObjectRetain();
  v174 = swift_dynamicCast();
  v175 = v290;
  v176 = v292;
  if (!v174)
  {
    v175 = 0;
    v176 = 0;
  }

LABEL_132:
  v177 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
  *v177 = v175;
  *(v177 + 1) = v176;
  v286 = v177;

  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v180 = sub_1000C1C58(v178, v179, a1);

  if (v180)
  {
    v293 = v180;
    v181 = swift_dynamicCast();
    v182 = v290;
    v183 = v292;
    if (!v181)
    {
      v182 = 0;
      v183 = 0;
    }
  }

  else
  {
    v182 = 0;
    v183 = 0;
  }

  v184 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerAlias];
  *v184 = v182;
  v184[1] = v183;

  if (!*&v15[v37] && sub_1000C1C58(0x65746E49656D6167, 0xEC0000006C616E72, a1))
  {
    objc_opt_self();
    v198 = swift_dynamicCastObjCClass();
    if (v198)
    {
      v199 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v198];
      swift_unknownObjectRelease();
      v200 = *&v15[v37];
      *&v15[v37] = v199;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  static AutomationSupport.bundleIdOverride.getter();
  if (v185)
  {
    v186 = [objc_allocWithZone(GKGameInternal) init];
    v187 = String._bridgeToObjectiveC()();

    [v186 setBundleIdentifier:v187];

    v188 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v186];
    v189 = *&v15[v37];
    *&v15[v37] = v188;
  }

  v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v192 = sub_1000C1C58(v190, v191, a1);

  if (!v192)
  {
    goto LABEL_182;
  }

  v291 = v192;
  sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_182;
  }

  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v195 = sub_1000C1C58(v193, v194, v293);

  if (v195 && (swift_dynamicCast() & 1) != 0)
  {
    v197 = v192;
    v196 = v292;
  }

  else
  {
    v197 = 0;
    v196 = 0xE000000000000000;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v197 && v201 == v196)
  {

LABEL_152:

    *&v15[v287] = 0;
    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v205 = sub_1000C1C58(v203, v204, v293);

    if (v205)
    {
      v206 = swift_dynamicCast();
      v207 = v192;
      v208 = v292;
      if (!v206)
      {
        v207 = 0;
        v208 = 0;
      }
    }

    else
    {
      v207 = 0;
      v208 = 0;
    }

    *v284 = v207;
    v284[1] = v208;

    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v211 = sub_1000C1C58(v209, v210, v293);

    if (v211)
    {
      v212 = swift_dynamicCast();
      v213 = v192;
      v214 = v292;
      if (!v212)
      {
        v213 = 0;
        v214 = 0;
      }
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    *v150 = v213;
    v150[1] = v214;

    v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v217 = sub_1000C1C58(v215, v216, v293);

    if (v217)
    {
      v218 = swift_dynamicCast();
      v219 = v192;
      v220 = v292;
      if (!v218)
      {
        v219 = 0;
        v220 = 0;
      }
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    *v286 = v219;
    v286[1] = v220;

    v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = sub_1000C1C58(v221, v222, v293);

    if (v223)
    {
      v224 = swift_dynamicCast();
      v225 = v192;
      v226 = v292;
      if (!v224)
      {
        v225 = 0;
        v226 = 0;
      }
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

    v227 = v285;
LABEL_170:
    *v227 = v225;
    v227[1] = v226;
LABEL_171:

    goto LABEL_172;
  }

  v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v202)
  {
    goto LABEL_152;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v197 && v234 == v196)
  {

LABEL_185:

    *&v15[v287] = 3;
    v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v239 = sub_1000C1C58(v237, v238, v293);

    if (v239)
    {
      v240 = swift_dynamicCast();
      v225 = v192;
      v226 = v292;
      if (!v240)
      {
        v225 = 0;
        v226 = 0;
      }
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

    v227 = v286;
    goto LABEL_170;
  }

  v236 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v236)
  {
    goto LABEL_185;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v197 && v241 == v196)
  {

LABEL_194:

    *&v15[v287] = 1;
    v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v245 = sub_1000C1C58(v243, v244, v293);

    if (v245)
    {
      v246 = swift_dynamicCast();
      v247 = v192;
      v248 = v292;
      if (!v246)
      {
        v247 = 0;
        v248 = 0;
      }
    }

    else
    {
      v247 = 0;
      v248 = 0;
    }

    *v283 = v247;
    v283[1] = v248;

    v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v251 = sub_1000C1C58(v249, v250, v293);

    if (v251)
    {
      v252 = swift_dynamicCast();
      v253 = v192;
      v254 = v292;
      if (!v252)
      {
        v253 = 0;
        v254 = 0;
      }
    }

    else
    {
      v253 = 0;
      v254 = 0;
    }

    *v285 = v253;
    v285[1] = v254;

    v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v257 = sub_1000C1C58(v255, v256, v293);

    if (v257)
    {
      v258 = swift_dynamicCast();
      v259 = v192;
      v260 = v292;
      if (!v258)
      {
        v259 = 0;
        v260 = 0;
      }
    }

    else
    {
      v259 = 0;
      v260 = 0;
    }

    *v286 = v259;
    v286[1] = v260;

    v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v263 = sub_1000C1C58(v261, v262, v293);

    if (v263)
    {
      v264 = swift_dynamicCast();
      v265 = v192;
      v266 = v292;
      if (!v264)
      {
        v265 = 0;
        v266 = 0;
      }
    }

    else
    {
      v265 = 0;
      v266 = 0;
    }

    *v184 = v265;
    v184[1] = v266;
    goto LABEL_171;
  }

  v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v242)
  {
    goto LABEL_194;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v197 && v267 == v196)
  {

LABEL_215:

    *&v15[v287] = 4;
    v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v271 = sub_1000C1C58(v269, v270, v293);

    if (v271)
    {
      v272 = swift_dynamicCast();
      v273 = v192;
      v274 = v292;
      if (!v272)
      {
        v273 = 0;
        v274 = 0;
      }
    }

    else
    {
      v273 = 0;
      v274 = 0;
    }

    *v168 = v273;
    v168[1] = v274;
    goto LABEL_171;
  }

  v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v268)
  {
    goto LABEL_215;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v197 && v275 == v196)
  {

LABEL_224:
    v277 = &v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
    v278 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
    v279 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
    v280 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
    v281 = *&v15[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
    *v277 = 7;
    *(v277 + 1) = 0;
    *(v277 + 2) = 0;
    *(v277 + 3) = 0;
    v282 = v277[32];
    v277[32] = 3;
    sub_100030C94(v278, v279, v280, v281, v282);
    goto LABEL_172;
  }

  v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v276)
  {
    goto LABEL_224;
  }

  *&v15[v287] = -1;
LABEL_172:
  *&v15[v69] = 2;
  *&v15[v289] = 1;
  if (!v288[1])
  {
    v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v230 = sub_1000C1C58(v228, v229, a1);

    if (v230)
    {
      v231 = swift_dynamicCast();
      v232 = v291;
      v233 = v292;
      if (!v231)
      {
        v232 = 0;
        v233 = 0;
      }
    }

    else
    {
      v232 = 0;
      v233 = 0;
    }

    *v288 = v232;
    v288[1] = v233;
LABEL_182:

    return v15;
  }

  return v15;
}