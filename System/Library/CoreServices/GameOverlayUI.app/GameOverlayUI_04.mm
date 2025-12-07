double sub_10008689C(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v15[1];
  }

  v13 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100086A20(v9, v13);

  return result;
}

void sub_100086A20(char a1, uint64_t a2)
{
  v154 = a2;
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v4 - 8);
  v149 = &v146 - v5;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  v170 = v6;
  v171 = v7;
  __chkstk_darwin(v6);
  v147 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v146 - v10;
  __chkstk_darwin(v12);
  v152 = &v146 - v13;
  __chkstk_darwin(v14);
  v150 = &v146 - v15;
  __chkstk_darwin(v16);
  v151 = &v146 - v17;
  __chkstk_darwin(v18);
  v20 = &v146 - v19;
  v21 = type metadata accessor for StoreTab.Identifier();
  v172 = *(v21 - 8);
  __chkstk_darwin(v21);
  v166 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v146 - v24;
  __chkstk_darwin(v26);
  v153 = &v146 - v27;
  __chkstk_darwin(v28);
  v155 = &v146 - v29;
  __chkstk_darwin(v30);
  v163 = &v146 - v31;
  __chkstk_darwin(v32);
  v34 = &v146 - v33;
  __chkstk_darwin(v35);
  v37 = &v146 - v36;
  __chkstk_darwin(v38);
  v40 = &v146 - v39;
  v159 = type metadata accessor for EnvironmentValues();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v2;
  v43 = *(v2 + 8);
  v161 = v42;
  if (a1)
  {

    v44 = v42;
    v45 = v43;
    if ((v43 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v46 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v47 = v157;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v158 + 8))(v47, v159);
      v44 = v175;
    }

    v48 = *(v44 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

    v49 = *(v48 + 16);

    v50 = v172;
    if (v49 >= 2)
    {

      if ((v45 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v51 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v52 = v157;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v158 + 8))(v52, v159);
      }

      static StoreTab.Identifier.overlayActiveCallPage.getter();
      sub_100077984(v40, v154);

      (*(v50 + 8))(v40, v21);
    }

    return;
  }

  v160 = v11;
  v156 = v40;

  v53 = v42;
  v148 = v43;
  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v55 = v157;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v158 + 8))(v55, v159);
    v53 = v175;
  }

  swift_getKeyPath();
  v175 = v53;
  v146 = sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v58 = v170;
  v57 = v171;
  v164 = *(v171 + 16);
  v165 = v171 + 16;
  v164(v20, v53 + v56, v170);

  StoreTab.identifier.getter();
  v167 = *(v57 + 8);
  v168 = v57 + 8;
  v167(v20, v58);
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  v59 = sub_10008DB20(&qword_100130080, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v162 = v59;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v175 == v179 && v176 == v180)
  {
    v60 = 1;
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v61 = v172 + 8;
  v62 = *(v172 + 8);
  v62(v34, v21);
  v169 = v62;
  v62(v37, v21);

  if (v60)
  {
    v177 = &type metadata for GameOverlayUIFeatureFlags;
    v178 = sub_10003F1EC(v63, v64, v65);
    LOBYTE(v175) = 4;
    v66 = isFeatureEnabled(_:)();
    sub_10002E6CC(&v175);
    v172 = v61;
    if ((v66 & 1) == 0)
    {
      v155 = v21;
      v77 = v161;

      v78 = v77;
      if ((v148 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v79 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v80 = v157;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v158 + 8))(v80, v159);
        v78 = v175;
      }

      v81 = *(v78 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v82 = 0;
      v83 = *(v81 + 16);
      v84 = v160;
      while (v83 != v82)
      {
        if (v82 >= *(v81 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v164(v84, v81 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v82, v58);
        StoreTab.identifier.getter();
        static StoreTab.Identifier.overlaySocialPage.getter();
        v87 = v155;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v175 == v179 && v176 == v180)
        {
          v88 = v169;
          v169(v166, v87);
          v88(v25, v87);
          v167(v160, v58);

LABEL_29:

          if ((v148 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v89 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v90 = v157;
            EnvironmentValues.init()();
            swift_getAtKeyPath();

            (*(v158 + 8))(v90, v159);
          }

          v91 = v156;
          static StoreTab.Identifier.overlaySocialPage.getter();
          sub_100077984(v91, v154);

          v169(v91, v155);
          return;
        }

        ++v82;
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v86 = v169;
        v169(v166, v87);
        v58 = v170;
        v86(v25, v87);
        v84 = v160;
        v167(v160, v58);

        if (v85)
        {
          goto LABEL_29;
        }
      }

      v96 = v161;

      v97 = v96;
      v98 = v147;
      if ((v148 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v99 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v100 = v157;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v158 + 8))(v100, v159);
        v97 = v175;
      }

      v101 = *(v97 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v102 = *(v101 + 16);
      v103 = v171;
      v104 = v155;
      v105 = v156;
      if (v102)
      {
        v106 = 0;
        v107 = v170;
        while (v106 < *(v101 + 16))
        {
          v164(v98, v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v106, v107);
          StoreTab.identifier.getter();
          v108 = v163;
          static StoreTab.Identifier.overlayActiveCallPage.getter();
          sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
          v109 = dispatch thunk of static Equatable.== infix(_:_:)();
          v110 = v108;
          v111 = v169;
          v169(v110, v104);
          v111(v105, v104);
          if ((v109 & 1) == 0)
          {

            if ((v148 & 1) == 0)
            {
              static os_log_type_t.fault.getter();
              v126 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v127 = v157;
              EnvironmentValues.init()();
              swift_getAtKeyPath();

              (*(v158 + 8))(v127, v159);
            }

            v128 = v147;
            StoreTab.identifier.getter();
            sub_100077984(v105, v154);

            v169(v105, v104);
            v125 = v128;
            goto LABEL_57;
          }

          ++v106;
          v167(v98, v107);
          v103 = v171;
          if (v102 == v106)
          {
            goto LABEL_66;
          }
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return;
      }

LABEL_66:

      return;
    }

    v67 = v161;

    v68 = v171;
    if ((v148 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v69 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v70 = v157;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v158 + 8))(v70, v159);
      v67 = v175;
    }

    swift_getKeyPath();
    v175 = v67;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
    swift_beginAccess();
    v72 = v67 + v71;
    v73 = v149;
    sub_1000035B4(v72, v149, &qword_10012E650, &qword_1000EDA30);

    v74 = (*(v68 + 48))(v73, 1, v58);
    v75 = v151;
    v76 = v150;
    if (v74 == 1)
    {
      sub_100005688(v73, &qword_10012E650, &qword_1000EDA30);
      goto LABEL_59;
    }

    (*(v68 + 32))(v151, v73, v58);
    v92 = v156;
    StoreTab.identifier.getter();
    v93 = v163;
    static StoreTab.Identifier.overlayActiveCallPage.getter();
    sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
    v94 = dispatch thunk of static Equatable.== infix(_:_:)();
    v95 = v169;
    v169(v93, v21);
    v95(v92, v21);
    if (v94)
    {
      v167(v75, v58);
LABEL_59:
      v130 = v161;

      if ((v148 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v131 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v132 = v157;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v158 + 8))(v132, v159);
        v130 = v179;
      }

      v133 = *(v130 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

      v134 = *(v133 + 16);
      v135 = v152;
      if (v134)
      {
        v136 = 0;
        while (v136 < *(v133 + 16))
        {
          v164(v135, v133 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v136, v58);
          v137 = v156;
          StoreTab.identifier.getter();
          v138 = v163;
          static StoreTab.Identifier.overlayActiveCallPage.getter();
          sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
          v139 = dispatch thunk of static Equatable.== infix(_:_:)();
          v140 = v138;
          v141 = v169;
          v169(v140, v21);
          v141(v137, v21);
          if ((v139 & 1) == 0)
          {

            if ((v148 & 1) == 0)
            {
              static os_log_type_t.fault.getter();
              v142 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v143 = v157;
              EnvironmentValues.init()();
              swift_getAtKeyPath();

              (*(v158 + 8))(v143, v159);
            }

            v144 = v156;
            v145 = v152;
            StoreTab.identifier.getter();
            sub_100077984(v144, v154);

            v169(v144, v21);
            v125 = v145;
            v129 = v58;
            goto LABEL_70;
          }

          ++v136;
          v167(v135, v58);
          v68 = v171;
          if (v134 == v136)
          {
            goto LABEL_66;
          }
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_66;
    }

    v112 = v161;

    if ((v148 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v113 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v114 = v157;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v158 + 8))(v114, v159);
      v112 = v179;
    }

    v115 = *(v112 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

    v116 = 0;
    v166 = *(v115 + 16);
    while (1)
    {
      if (v166 == v116)
      {
        v58 = v170;
        v167(v75, v170);

        goto LABEL_59;
      }

      if (v116 >= *(v115 + 16))
      {
        goto LABEL_75;
      }

      v164(v76, v115 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v116, v170);
      StoreTab.identifier.getter();
      v120 = v153;
      StoreTab.identifier.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v179 == v173 && v180 == v174)
      {
        break;
      }

      ++v116;
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v118 = v120;
      v119 = v169;
      v169(v118, v21);
      v119(v155, v21);
      v167(v76, v170);

      v68 = v171;
      if (v117)
      {
        goto LABEL_51;
      }
    }

    v121 = v169;
    v169(v120, v21);
    v121(v155, v21);
    v167(v76, v170);

LABEL_51:

    if ((v148 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v122 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v123 = v157;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v158 + 8))(v123, v159);
    }

    v124 = v156;
    StoreTab.identifier.getter();
    sub_100077984(v124, v154);

    v169(v124, v21);
    v125 = v75;
LABEL_57:
    v129 = v170;
LABEL_70:
    v167(v125, v129);
  }
}

double sub_100088264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v8 = OverlayCallCenter.hasActiveCalls.getter();

  v9 = *a3;
  v10 = *(a3 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v14[1];
  }

  v12 = *(v9 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100086A20(v8 & 1, v12);

  return result;
}

uint64_t sub_10008840C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (*a2)
  {
    v15 = *a3;
    v16 = *(a3 + 8);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      v15 = v24;
    }

    swift_getKeyPath();
    v24 = v15;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v19 = type metadata accessor for StoreTab();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v14, v15 + v18, v19);

    (*(v20 + 56))(v14, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StoreTab();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  type metadata accessor for OverlayTabBar(0);
  sub_1000035B4(v14, v11, &qword_10012E650, &qword_1000EDA30);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  FocusState.wrappedValue.setter();
  return sub_100005688(v14, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100088784(uint64_t *a1)
{
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);

  if (v11 == 1)
  {
    StoreTab.identifier.getter();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    v18[0] = v2;
    v13 = v12;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v14 = *(v7 + 8);
    v14(v9, v6);
    StoreTab.identifier.getter();

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v2 = v18[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v14(v9, v6);
    v10 = v18[1];
  }

  v16 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_100077984(v5, v16);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100088A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v66 = type metadata accessor for StoreTab();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for EnvironmentValues();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for FocusInteractions();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_100002B38(&qword_1001308A8, &qword_1000ECC98);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v54 = sub_100002B38(&qword_1001308A0, &qword_1000ECC90);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = &v49 - v14;
  v16 = sub_100002B38(&qword_1001308C8, &qword_1000ECCA8);
  v60 = *(v16 - 8);
  v61 = v16;
  __chkstk_darwin(v16);
  v52 = &v49 - v17;
  v58 = sub_100002B38(&qword_100130898, &qword_1000ECC88);
  __chkstk_darwin(v58);
  v62 = &v49 - v18;
  type metadata accessor for OverlayTabBar(0);
  sub_100002B38(&qword_100130470, &qword_1000EC948);
  ScaledMetric.wrappedValue.getter();
  v65 = a2;
  v59 = a1;
  sub_10008933C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v13[*(v11 + 36)];
  v20 = v73;
  *v19 = v72;
  *(v19 + 1) = v20;
  *(v19 + 2) = v74;
  v21 = enum case for DynamicTypeSize.xxLarge(_:);
  v22 = type metadata accessor for DynamicTypeSize();
  (*(*(v22 - 8) + 104))(v10, v21, v22);
  sub_10008DB20(&qword_10012E260, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v24 = sub_10008C7AC();
    v25 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v10, &qword_10012E1D0, &qword_1000EA5D0);
    sub_100005688(v13, &qword_1001308A8, &qword_1000ECC98);
    v26 = v55;
    static FocusInteractions.automatic.getter();
    v68 = v11;
    v69 = v8;
    v70 = v24;
    v71 = v25;
    swift_getOpaqueTypeConformance2();
    v27 = v52;
    v28 = v54;
    View.componentFocusable(_:interactions:)();
    (*(v56 + 8))(v26, v57);
    (*(v53 + 8))(v15, v28);
    v29 = *v59;
    LOBYTE(v28) = *(v59 + 8);

    if ((v28 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v31 = v49;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v50 + 8))(v31, v51);
      v29 = v68;
    }

    swift_getKeyPath();
    v68 = v29;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v34 = v63;
    v33 = v64;
    v35 = v66;
    (*(v64 + 16))(v63, v29 + v32, v66);

    LOBYTE(v32) = static StoreTab.== infix(_:_:)();
    (*(v33 + 8))(v34, v35);
    if (v32)
    {
      v36 = static HierarchicalShapeStyle.primary.getter();
    }

    else
    {
      v36 = static HierarchicalShapeStyle.secondary.getter();
    }

    v37 = v36;
    v38 = v67;
    v39 = v62;
    (*(v60 + 32))(v62, v27, v61);
    *(v39 + *(v58 + 36)) = v37;
    v40 = (v38 + *(sub_100002B38(&qword_100130880, &qword_1000ECC80) + 36));
    v41 = *(type metadata accessor for RoundedRectangle() + 20);
    v42 = enum case for RoundedCornerStyle.continuous(_:);
    v43 = type metadata accessor for RoundedCornerStyle();
    (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
    __asm { FMOV            V0.2D, #2.0 }

    *v40 = _Q0;
    v40[*(sub_100002B38(&qword_1001308C0, &qword_1000ECCA0) + 36)] = 0;
    return sub_100014830(v39, v38, &qword_100130898, &qword_1000ECC88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10008933C()
{
  StoreTab.tabImageName.getter();
  Image.init(_internalSystemName:)();
  static Font.title3.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_100002B38(&qword_10012CE08, &unk_1000E9120);
  sub_100005578();
  View.fontWeight(_:)();

  return result;
}

uint64_t sub_100089428(uint64_t a1)
{
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - v8;
  (*(v3 + 16))(&v17 - v8, a1, v2, v7);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  sub_10008DB20(&qword_100130850, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    if (qword_10012CBF8 != -1)
    {
      swift_once();
    }

    v12 = &qword_100135C40;
  }

  else
  {
    static StoreTab.Identifier.overlaySocialPage.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
    if (v13)
    {
      v11(v9, v2);
      if (qword_10012CC00 != -1)
      {
        swift_once();
      }

      v12 = &qword_100135C50;
    }

    else
    {
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v5, v2);
      v11(v9, v2);
      if ((v14 & 1) == 0)
      {
        return 0;
      }

      if (qword_10012CC08 != -1)
      {
        swift_once();
      }

      v12 = &qword_100135C60;
    }
  }

  v15 = *v12;

  return v15;
}

uint64_t sub_10008970C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DashboardTabViewState(0);
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v6 & 1;
  v7 = type metadata accessor for OverlayTabBar(0);
  v8 = v7[5];
  *(a1 + v8) = swift_getKeyPath();
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[6];
  *(a1 + v9) = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  v10 = v7[7];
  *(a1 + v10) = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v11 = a1 + v7[8];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  type metadata accessor for StoreTab();
  sub_10008DB20(&qword_100130450, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
  FocusState.init<A>()();
  v12 = a1 + v7[10];
  *v12 = FocusState.init<>()() & 1;
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  v15 = a1 + v7[11];
  *v15 = FocusState.init<>()() & 1;
  *(v15 + 8) = v16;
  *(v15 + 16) = v17 & 1;
  v18 = a1 + v7[12];
  LOBYTE(v31) = 1;
  State.init(wrappedValue:)();
  v19 = v33;
  *v18 = v32;
  *(v18 + 8) = v19;
  v20 = (a1 + v7[13]);
  type metadata accessor for GameControllerObserver();
  v31 = static GameControllerObserver.shared.getter();
  State.init(wrappedValue:)();
  v21 = v33;
  *v20 = v32;
  v20[1] = v21;
  v32 = 0x4046000000000000;
  v22 = *(v3 + 104);
  v23 = v22(v5, enum case for Font.TextStyle.title3(_:), v2);
  sub_100089D20(v23, v24, v25);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v7[15]) = 0x4050000000000000;
  v32 = 0x402C000000000000;
  v26 = v22(v5, enum case for Font.TextStyle.body(_:), v2);
  sub_100089D74(v26, v27, v28);
  result = ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v7[17]) = 0x4034000000000000;
  *(a1 + v7[18]) = 0x4034000000000000;
  *(a1 + v7[19]) = 0x4028000000000000;
  return result;
}

uint64_t type metadata accessor for OverlayTabBar(uint64_t a1)
{
  result = qword_1001304D8;
  if (!qword_1001304D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100089C18(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v2 - 8);
  sub_1000035B4(a1, &v5 - v3, &qword_100132550, &qword_1000EC170);
  return EnvironmentValues.verticalSizeClass.setter();
}

void sub_100089CC4(void *a1@<X8>)
{
  EnvironmentValues.pageSafeArea.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

unint64_t sub_100089D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100130458;
  if (!qword_100130458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130458);
  }

  return result;
}

unint64_t sub_100089D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100130460;
  if (!qword_100130460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130460);
  }

  return result;
}

uint64_t sub_100089DDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = sub_100002B38(&qword_100130468, &qword_1000EC940);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[13]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_100002B38(&qword_100130470, &qword_1000EC948);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[14];
      goto LABEL_9;
    }

    v17 = sub_100002B38(&qword_100130478, &unk_1000EC950);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[16];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10008A080(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = sub_100002B38(&qword_100130468, &qword_1000EC940);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v16 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v17 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

void sub_10008A310(uint64_t a1)
{
  sub_10008A6BC(319, &qword_1001304E8, type metadata accessor for DashboardTabViewState, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10008A6BC(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10008A6BC(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100040840(319);
        if (v4 <= 0x3F)
        {
          sub_10008A66C(319, &qword_1001304F0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_10008A5C4(319);
            if (v6 <= 0x3F)
            {
              sub_10006DFCC();
              if (v7 <= 0x3F)
              {
                sub_10008A66C(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10008A6BC(319, &qword_100130508, &type metadata accessor for GameControllerObserver, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_10008A720(319, &qword_100130510, sub_100089D20, &type metadata for Double);
                    if (v10 <= 0x3F)
                    {
                      sub_10008A720(319, &unk_100130518, sub_100089D74, &type metadata for CGFloat);
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

void sub_10008A5C4(uint64_t a1)
{
  if (!qword_1001304F8)
  {
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_10008AA7C(&qword_100130500, &qword_100130450, &protocol conformance descriptor for StoreTab, &protocol conformance descriptor for <A> A?);
    v1 = type metadata accessor for FocusState();
    if (!v2)
    {
      atomic_store(v1, &qword_1001304F8);
    }
  }
}

void sub_10008A66C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10008A6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10008A720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_10008A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10008A7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayTabBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A810(double *a1)
{
  v3 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10007FCA4(a1, v4);
}

unint64_t sub_10008A880()
{
  result = qword_1001305A8;
  if (!qword_1001305A8)
  {
    sub_100005144(&qword_100130580, &qword_1000EC9C8);
    sub_10008A938();
    sub_1000057D8(&qword_1001305C8, &qword_1001305D0, &qword_1000EC9F8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305A8);
  }

  return result;
}

unint64_t sub_10008A938()
{
  result = qword_1001305B0;
  if (!qword_1001305B0)
  {
    sub_100005144(&qword_1001305A0, &qword_1000EC9E8);
    sub_1000057D8(&qword_1001305B8, &qword_1001305C0, &qword_1000EC9F0, &protocol conformance descriptor for VStack<A>);
    sub_1000057D8(&qword_10012F750, &qword_10012F758, &qword_1000EBF68, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305B0);
  }

  return result;
}

uint64_t sub_10008AA7C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_10008DB20(a2, &type metadata accessor for StoreTab, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008AB20()
{
  result = qword_100130638;
  if (!qword_100130638)
  {
    sub_100005144(&qword_100130630, &qword_1000ECA78);
    sub_10008ABAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130638);
  }

  return result;
}

unint64_t sub_10008ABAC()
{
  result = qword_100130640;
  if (!qword_100130640)
  {
    sub_100005144(&qword_100130648, &qword_1000ECA80);
    sub_10008AC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130640);
  }

  return result;
}

unint64_t sub_10008AC38()
{
  result = qword_100130650;
  if (!qword_100130650)
  {
    sub_100005144(&qword_100130658, &qword_1000ECA88);
    sub_1000057D8(&qword_100130660, &qword_100130668, &qword_1000ECA90, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1000057D8(&qword_10012CDC8, &qword_10012CDD0, &qword_1000E90C8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130650);
  }

  return result;
}

unint64_t sub_10008AD24()
{
  result = qword_1001306B8;
  if (!qword_1001306B8)
  {
    sub_100005144(&qword_100130680, &qword_1000ECAA0);
    sub_10008ADDC();
    sub_1000057D8(&qword_10012EE08, &qword_10012EDD8, &qword_1000EB1D8, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306B8);
  }

  return result;
}

unint64_t sub_10008ADDC()
{
  result = qword_1001306C0;
  if (!qword_1001306C0)
  {
    sub_100005144(&qword_1001306C8, &qword_1000ECB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306C0);
  }

  return result;
}

unint64_t sub_10008AE60()
{
  result = qword_1001306E8;
  if (!qword_1001306E8)
  {
    sub_100005144(&qword_100130688, &qword_1000ECAA8);
    sub_10008AEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306E8);
  }

  return result;
}

unint64_t sub_10008AEEC()
{
  result = qword_1001306F0;
  if (!qword_1001306F0)
  {
    sub_100005144(&qword_1001306D8, &qword_1000ECB10);
    sub_10008AF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306F0);
  }

  return result;
}

unint64_t sub_10008AF78()
{
  result = qword_1001306F8;
  if (!qword_1001306F8)
  {
    sub_100005144(&qword_1001306B0, &qword_1000ECAF8);
    sub_10008B030();
    sub_1000057D8(&qword_100130718, &qword_1001306D0, &qword_1000ECB08, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306F8);
  }

  return result;
}

unint64_t sub_10008B030()
{
  result = qword_100130700;
  if (!qword_100130700)
  {
    sub_100005144(&qword_1001306A8, &qword_1000ECAF0);
    sub_1000057D8(&qword_100130708, &qword_100130710, &qword_1000ECB18, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130700);
  }

  return result;
}

uint64_t sub_10008B0E8(uint64_t a1)
{
  v3 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100083D3C(a1, v4);
}

unint64_t sub_10008B168()
{
  result = qword_1001307A0;
  if (!qword_1001307A0)
  {
    sub_100005144(&qword_100130790, &qword_1000ECBB0);
    sub_10008B1F4();
    sub_10008B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307A0);
  }

  return result;
}

unint64_t sub_10008B1F4()
{
  result = qword_1001307A8;
  if (!qword_1001307A8)
  {
    sub_100005144(&qword_1001307B0, &qword_1000ECBB8);
    sub_10008B278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307A8);
  }

  return result;
}

unint64_t sub_10008B278()
{
  result = qword_1001307B8;
  if (!qword_1001307B8)
  {
    sub_100005144(&qword_1001307C0, &qword_1000ECBC0);
    sub_100005144(&qword_1001307C8, &qword_1000ECBC8);
    sub_10008B370();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307B8);
  }

  return result;
}

unint64_t sub_10008B370()
{
  result = qword_1001307D0;
  if (!qword_1001307D0)
  {
    sub_100005144(&qword_1001307C8, &qword_1000ECBC8);
    sub_100005144(&qword_1001307D8, &qword_1000ECBD0);
    sub_100005144(&qword_1001307E0, &qword_1000ECBD8);
    type metadata accessor for FillFocusButtonStyle();
    sub_100005144(&qword_1001307E8, &qword_1000ECBE0);
    sub_100005144(&qword_10012E650, &qword_1000EDA30);
    sub_1000057D8(&qword_1001307F0, &qword_1001307E8, &qword_1000ECBE0, &protocol conformance descriptor for Button<A>);
    sub_10008AA7C(&qword_100130500, &qword_100130450, &protocol conformance descriptor for StoreTab, &protocol conformance descriptor for <A> A?);
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle, &protocol conformance descriptor for FillFocusButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307D0);
  }

  return result;
}

unint64_t sub_10008B5E0()
{
  result = qword_100130810;
  if (!qword_100130810)
  {
    sub_100005144(&qword_100130760, &qword_1000ECB60);
    sub_1000057D8(&qword_100130818, &qword_100130758, &qword_1000ECB58, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_100130820, &qword_100130808, &qword_1000ECBE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130810);
  }

  return result;
}

uint64_t sub_10008B6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

double sub_10008B770(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10008689C(a1, a2, v6);
}

uint64_t sub_10008B820(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_10008B8B4()
{
  result = qword_100130838;
  if (!qword_100130838)
  {
    sub_100005144(&qword_100130830, &unk_1000ECF10);
    sub_10008DB20(&qword_100130840, sub_10008B968, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130838);
  }

  return result;
}

unint64_t sub_10008B968()
{
  result = qword_100130848;
  if (!qword_100130848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130848);
  }

  return result;
}

uint64_t sub_10008B9C4()
{
  v1 = type metadata accessor for OverlayTabBar(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for StoreTab();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();
  v26 = v0;
  v6 = v0 + ((v2 + 32) & ~v2);

  v7 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v6 + v1[8];
  v15 = sub_10008A7A0(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
  v16 = v6 + v1[9];
  v17 = *(v4 + 48);
  if (!v17(v16, 1, v3, v15))
  {
    (*(v4 + 8))(v16, v3);
  }

  v18 = sub_100002B38(&qword_100130468, &qword_1000EC940);

  v19 = *(v18 + 40);
  if (!(v17)(v16 + v19, 1, v3))
  {
    (*(v4 + 8))(v16 + v19, v3);
  }

  v20 = v1[14];
  v21 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v21 - 8) + 8))(v6 + v20, v21);
  v22 = v1[16];
  v23 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v23 - 8) + 8))(v6 + v22, v23);
  (*(v4 + 8))(v26 + ((((v2 + 32) & ~v2) + v25 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10008BE64(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StoreTab() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011720;

  return sub_1000856B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10008BFF0()
{
  v1 = type metadata accessor for OverlayTabBar(0);
  v25 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for StoreTab();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + ((v25 + 16) & ~v25);

  v6 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v5 + v1[8];
  v14 = sub_10008A7A0(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  v15 = v5 + v1[9];
  v16 = *(v3 + 48);
  if (!v16(v15, 1, v2, v14))
  {
    (*(v3 + 8))(v15, v2);
  }

  v17 = sub_100002B38(&qword_100130468, &qword_1000EC940);

  v18 = *(v17 + 40);
  if (!(v16)(v15 + v18, 1, v2))
  {
    (*(v3 + 8))(v15 + v18, v2);
  }

  v19 = v1[14];
  v20 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = v1[16];
  v22 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v22 - 8) + 8))(v5 + v21, v22);
  (*(v3 + 8))(v0 + ((((v25 + 16) & ~v25) + v24 + v4) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_10008C488()
{
  v1 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for StoreTab();

  return sub_100088784((v0 + v2));
}

unint64_t sub_10008C55C()
{
  result = qword_100130888;
  if (!qword_100130888)
  {
    sub_100005144(&qword_100130880, &qword_1000ECC80);
    sub_10008C614();
    sub_1000057D8(&qword_1001308B8, &qword_1001308C0, &qword_1000ECCA0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130888);
  }

  return result;
}

unint64_t sub_10008C614()
{
  result = qword_100130890;
  if (!qword_100130890)
  {
    sub_100005144(&qword_100130898, &qword_1000ECC88);
    sub_100005144(&qword_1001308A0, &qword_1000ECC90);
    sub_100005144(&qword_1001308A8, &qword_1000ECC98);
    sub_100005144(&qword_10012E1D0, &qword_1000EA5D0);
    sub_10008C7AC();
    sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012DBC0, &qword_10012DBC8, &qword_1000E9D20, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130890);
  }

  return result;
}

unint64_t sub_10008C7AC()
{
  result = qword_1001308B0;
  if (!qword_1001308B0)
  {
    sub_100005144(&qword_1001308A8, &qword_1000ECC98);
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001308B0);
  }

  return result;
}

uint64_t sub_10008C874@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008C8A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008C924()
{
  v1 = type metadata accessor for OverlayTabBar(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
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

  v10 = v2 + v1[8];
  sub_10008A7A0(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = v2 + v1[9];
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v15 = sub_100002B38(&qword_100130468, &qword_1000EC940);

  v16 = *(v15 + 40);
  if (!v14(v11 + v16, 1, v12))
  {
    (*(v13 + 8))(v11 + v16, v12);
  }

  v17 = v1[14];
  v18 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v18 - 8) + 8))(v2 + v17, v18);
  v19 = v1[16];
  v20 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v20 - 8) + 8))(v2 + v19, v20);

  return swift_deallocObject();
}

double sub_10008CD58()
{
  v1 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100082590(v3, v2);
}

unint64_t sub_10008CDC0()
{
  result = qword_100130908;
  if (!qword_100130908)
  {
    sub_100005144(&qword_100130900, &qword_1000ECD10);
    sub_1000057D8(&qword_100130910, &qword_100130918, &qword_1000ECD18, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_100130920, &qword_100130928, &qword_1000ECD20, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130908);
  }

  return result;
}

uint64_t sub_10008CEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CF0C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008CF68()
{
  result = qword_100130940;
  if (!qword_100130940)
  {
    sub_100005144(&qword_1001308E0, &qword_1000ECCF0);
    sub_100005144(&qword_1001308D0, &qword_1000ECCE0);
    type metadata accessor for FillFocusButtonStyle();
    sub_1000057D8(&qword_100130938, &qword_1001308D0, &qword_1000ECCE0, &protocol conformance descriptor for Button<A>);
    sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle, &protocol conformance descriptor for FillFocusButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130940);
  }

  return result;
}

unint64_t sub_10008D0B4()
{
  result = qword_100130948;
  if (!qword_100130948)
  {
    sub_100005144(&qword_1001308F0, &qword_1000ECD00);
    sub_100005144(&qword_1001308E0, &qword_1000ECCF0);
    sub_10008CF68();
    swift_getOpaqueTypeConformance2();
    sub_10008DB20(&qword_100130800, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130948);
  }

  return result;
}

unint64_t sub_10008D1AC()
{
  result = qword_100130978;
  if (!qword_100130978)
  {
    sub_100005144(&qword_100130970, &qword_1000ECD48);
    sub_10008D238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130978);
  }

  return result;
}

unint64_t sub_10008D238()
{
  result = qword_100130980;
  if (!qword_100130980)
  {
    sub_100005144(&qword_100130988, &qword_1000ECD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130980);
  }

  return result;
}

uint64_t sub_10008D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_10008D440()
{
  result = qword_100130998;
  if (!qword_100130998)
  {
    sub_100005144(&qword_100130958, &qword_1000ECD30);
    sub_10008D4F8();
    sub_1000057D8(&qword_1001309A8, &qword_1001309B0, &qword_1000ECD90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130998);
  }

  return result;
}

unint64_t sub_10008D4F8()
{
  result = qword_1001309A0;
  if (!qword_1001309A0)
  {
    sub_100005144(&qword_100130990, &qword_1000ECD58);
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012E318, &qword_10012E320, &qword_1000EA788, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001309A0);
  }

  return result;
}

uint64_t sub_10008D5EC()
{
  v1 = type metadata accessor for OverlayTabBar(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v1[5];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v3 + v1[8];
  sub_10008A7A0(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));
  v12 = v3 + v1[9];
  v13 = type metadata accessor for StoreTab();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v16 = sub_100002B38(&qword_100130468, &qword_1000EC940);

  v17 = *(v16 + 40);
  if (!v15(v12 + v17, 1, v13))
  {
    (*(v14 + 8))(v12 + v17, v13);
  }

  v18 = v1[14];
  v19 = sub_100002B38(&qword_100130470, &qword_1000EC948);
  (*(*(v19 - 8) + 8))(v3 + v18, v19);
  v20 = v1[16];
  v21 = sub_100002B38(&qword_100130478, &unk_1000EC950);
  (*(*(v21 - 8) + 8))(v3 + v20, v21);

  return swift_deallocObject();
}

uint64_t sub_10008DA30(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayTabBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10008275C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008DB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008DB68()
{
  sub_100005144(&qword_100130590, &qword_1000EC9D8);
  sub_100005144(&qword_10012E650, &qword_1000EDA30);
  sub_100005144(&qword_100130588, &qword_1000EC9D0);
  sub_100005144(&qword_100130580, &qword_1000EC9C8);
  sub_10008A880();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10008AA7C(&qword_1001305D8, &qword_10012FB98, &protocol conformance descriptor for StoreTab, &protocol conformance descriptor for <A> A?);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008DDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertRequest(uint64_t a1)
{
  result = qword_100130A28;
  if (!qword_100130A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008DEC0(uint64_t a1)
{
  type metadata accessor for GameOverlayUIConfig.ServiceKind();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConnectionContext();
    if (v2 <= 0x3F)
    {
      sub_10008DF64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10008DF64(uint64_t a1)
{
  if (!qword_10012E528)
  {
    sub_100005144(&qword_10012E530, &unk_1000EA9A0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10012E528);
    }
  }
}

uint64_t sub_10008DFC8()
{
  v1 = type metadata accessor for RemoteAlertRequest(0);
  v2 = *(v0 + *(v1 + 24));
  v3 = v2[2];
  if (v3)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = *(v0 + *(v1 + 20));

    v7 = v3;
    v8 = sub_1000DFEF0(v6, v4, v5);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100011F80(v9, qword_100135C88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "RemoteAlertRequest was constructed without a valid remote audit token", v12, 2u);
    }

    return 0;
  }

  return v8;
}

double View.gameOverlayController(leftShoulderHandler:rightShoulderHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for GameControllerObserver();
  static GameControllerObserver.shared.getter();
  State.init(wrappedValue:)();
  sub_10000519C(a1, a2);
  sub_10000519C(a3, a4);
  View.modifier<A>(_:)();

  sub_10006C574(a1, a2);
  return sub_10006C574(a3, a4);
}

uint64_t sub_10008E204(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  sub_10008E268(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_10008E268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100130A70;
  if (!qword_100130A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A70);
  }

  return result;
}

__n128 sub_10008E2BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10008E2D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10008E318(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10008E390(uint64_t a1, id *a2, uint64_t a3)
{
  if (*a2)
  {
    v23 = *a2;
    v4 = [v23 extendedGamepad];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 leftShoulder];

      if (v6)
      {
        v7 = [v23 extendedGamepad];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 rightShoulder];

          if (v9)
          {
            v10 = *a3;
            v31 = *(a3 + 8);
            v11 = *(a3 + 16);
            v21 = *(a3 + 24);
            v12 = *(a3 + 32);
            v13 = *(a3 + 40);
            v14 = swift_allocObject();
            v15 = *(a3 + 16);
            v14[1] = *a3;
            v14[2] = v15;
            v14[3] = *(a3 + 32);
            v29 = sub_10008E990;
            v30 = v14;
            aBlock = _NSConcreteStackBlock;
            v26 = 1107296256;
            v27 = sub_10008E674;
            v28 = &unk_100123238;
            v16 = _Block_copy(&aBlock);
            v22 = v10;
            sub_10008E864(&v31, v24);
            sub_10000519C(v11, v21);
            sub_10000519C(v12, v13);

            [v6 setPressedChangedHandler:v16];
            _Block_release(v16);
            v17 = swift_allocObject();
            v18 = *(a3 + 16);
            v17[1] = *a3;
            v17[2] = v18;
            v17[3] = *(a3 + 32);
            v29 = sub_10008EA3C;
            v30 = v17;
            aBlock = _NSConcreteStackBlock;
            v26 = 1107296256;
            v27 = sub_10008E674;
            v28 = &unk_100123288;
            v19 = _Block_copy(&aBlock);
            v20 = v22;
            sub_10008E864(&v31, v24);
            sub_10000519C(v11, v21);
            sub_10000519C(v12, v13);

            [v9 setPressedChangedHandler:v19];
            _Block_release(v19);

            return;
          }
        }
      }
    }
  }
}

void sub_10008E674(uint64_t a1, void *a2, float a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

void sub_10008E6F8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v12[1] = v1;
  sub_100002B38(&qword_100130828, &qword_1000ECBF0);
  State.wrappedValue.getter();
  v7 = GameControllerObserver.controller.getter();

  v11 = v7;
  v12[0] = v1;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v9 = v2;
  sub_10008E864(v12, v10);
  sub_10000519C(v3, v4);
  sub_10000519C(v5, v6);
  sub_100002B38(&qword_100130A80, &qword_1000ECF08);
  sub_100002B38(&qword_100130830, &unk_1000ECF10);
  sub_10008E8D4();
  sub_10008B8B4();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10008E864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100130A78, &qword_1000ECF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008E8D4()
{
  result = qword_100130A88;
  if (!qword_100130A88)
  {
    sub_100005144(&qword_100130A80, &qword_1000ECF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A88);
  }

  return result;
}

unint64_t sub_10008E938()
{
  result = qword_100130840;
  if (!qword_100130840)
  {
    sub_10008B968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130840);
  }

  return result;
}

uint64_t sub_10008E990(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      return v3(a1);
    }
  }

  return a1;
}

uint64_t sub_10008E9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E9DC()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008EA3C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      return v3(a1);
    }
  }

  return a1;
}

uint64_t sub_10008EA70()
{
  sub_100005144(&qword_100130A80, &qword_1000ECF08);
  sub_100005144(&qword_100130830, &unk_1000ECF10);
  sub_10008E8D4();
  sub_10008B8B4();
  return swift_getOpaqueTypeConformance2();
}

id sub_10008EB44()
{
  type metadata accessor for OverlayBootstrap(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.GameOverlayUI = result;
  return result;
}

uint64_t *NSBundle.GameOverlayUI.unsafeMutableAddressor()
{
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  return &static NSBundle.GameOverlayUI;
}

id static NSBundle.GameOverlayUI.getter()
{
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.GameOverlayUI;

  return v1;
}

uint64_t sub_10008EC48()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("GAME_MODE_TITLE_ON", 18, 2, v5, 0, 0, v6, v2, "Title text when game mode is enabled", 36, 2);
  qword_100135C00 = result;
  *algn_100135C08 = v9;
  return result;
}

uint64_t sub_10008EDBC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("GAME_MODE_TITLE_OFF", 19, 2, v5, 0, 0, v6, v2, "Title text when game mode is disabled", 37, 2);
  qword_100135C10 = result;
  *algn_100135C18 = v9;
  return result;
}

uint64_t sub_10008EF30()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("GAME_MODE_ACCESS_OVERLAY_HINT_WITH_ACTIONS", 42, 2, v5, 0, 0, v6, v2, "Hint text for accessing game overlay with specific action, %@ is replaced with the key combination", 98, 2);
  qword_100135C20 = result;
  *algn_100135C28 = v9;
  return result;
}

uint64_t sub_10008F09C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("GAME_MODE_ACCESS_OVERLAY_HINT", 29, 2, v5, 0, 0, v6, v2, "Hint text for accessing game overlay through Control Center", 59, 2);
  qword_100135C30 = result;
  *algn_100135C38 = v9;
  return result;
}

uint64_t sub_10008F208()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("NOW_PLAYING_TAB_TITLE", 21, 2, v5, 0, 0, v6, v2, "Title for the Now Playing tab in the overlay", 44, 2);
  qword_100135C40 = result;
  *algn_100135C48 = v9;
  return result;
}

uint64_t sub_10008F378()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("PEOPLE_TAB_TITLE", 16, 2, v5, 0, 0, v6, v2, "Title for the People tab in the overlay", 39, 2);
  qword_100135C50 = result;
  *algn_100135C58 = v9;
  return result;
}

uint64_t sub_10008F4DC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_10012CBD0 != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.GameOverlayUI;
  v7 = static NSBundle.GameOverlayUI;
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)("CONTROLS_TAB_TITLE", 18, 2, v5, 0, 0, v6, v2, "Title for the Controls tab in the overlay", 41, 2);
  qword_100135C60 = result;
  *algn_100135C68 = v9;
  return result;
}

uint64_t sub_10008F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v65 = *(a1 - 8);
  v64 = *(v65 + 64);
  __chkstk_darwin(a1);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BootstrapResult();
  v57 = v7;
  v8 = *(a1 + 16);
  v9 = sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
  v56 = v9;
  v10 = sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
  v54 = v10;
  v63 = *(a1 + 24);
  v11 = v63;
  v12 = sub_100092798();
  v53 = v12;
  v52 = sub_100092854();
  v66 = v7;
  v67 = v8;
  v13 = v8;
  v61 = v8;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v52;
  v14 = type metadata accessor for TaskView();
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  __chkstk_darwin(v14);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v55 = &v46 - v19;
  v20 = v65;
  v21 = *(v65 + 16);
  v21(v6, v3, a1, v18);
  v22 = v21;
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  v50 = v24;
  *(v24 + 16) = v13;
  v25 = v63;
  *(v24 + 24) = v63;
  v47 = *(v20 + 32);
  v65 = v20 + 32;
  v26 = a1;
  v47(v24 + v23, v6, a1);
  v27 = v6;
  v28 = v62;
  v22(v6, v62, v26);
  v29 = v22;
  v48 = v22;
  v30 = swift_allocObject();
  v49 = v30;
  v31 = v61;
  *(v30 + 16) = v61;
  *(v30 + 24) = v25;
  v32 = v47;
  v47(v30 + v23, v27, v26);
  v29(v27, v28, v26);
  v33 = swift_allocObject();
  v34 = v63;
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  v32(v33 + v23, v27, v26);
  v48(v27, v62, v26);
  v35 = swift_allocObject();
  v36 = v61;
  *(v35 + 16) = v61;
  *(v35 + 24) = v34;
  v32(v35 + v23, v27, v26);
  *&v45 = v34;
  *(&v45 + 1) = v53;
  *(&v44 + 1) = v54;
  *(&v43 + 1) = v36;
  *&v44 = v56;
  *&v43 = v57;
  v37 = v51;
  sub_100091980(&unk_1000ED000, v50, sub_100092A0C, v49, sub_100092A98, v33, sub_100092B4C, v35, v43, v44, v45, v52);
  v38 = v58;
  swift_getWitnessTable();
  v39 = v55;
  v40 = v37;
  sub_10009B680();
  v41 = *(v59 + 8);
  v41(v40, v38);
  sub_10009B680();
  return (v41)(v39, v38);
}

uint64_t sub_10008FB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100002B38(&qword_100130C10, &qword_1000ED028);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Bag();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_100002B38(&qword_10012E458, qword_1000ECF80);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for BootstrapResult();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v8;
  v4[22] = v7;

  return _swift_task_switch(sub_10008FD1C, v8, v7);
}

uint64_t sub_10008FD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 128);
  v6 = *(v4 + 136);
  v7 = *(v4 + 120);
  v8 = type metadata accessor for OverlayBootstrapView(0, *(v4 + 32), *(v4 + 40), a4);
  *(v4 + 184) = v8;
  *(v4 + 240) = *(v8 + 44);
  *(v4 + 192) = sub_100002B38(qword_100130B28, qword_1000ECF40);
  Binding.wrappedValue.getter();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100005688(*(v4 + 120), &qword_10012E458, qword_1000ECF80);
LABEL_8:
    v11 = swift_task_alloc();
    *(v4 + 224) = v11;
    *v11 = v4;
    v11[1] = sub_100090540;
    v12 = *(v4 + 144);

    return Bootstrap.run(rootViewController:)(v12, 0);
  }

  (*(*(v4 + 136) + 32))(*(v4 + 152), *(v4 + 120), *(v4 + 128));
  if ((sub_100090A78() & 1) == 0)
  {
    (*(*(v4 + 136) + 8))(*(v4 + 152), *(v4 + 128));
    goto LABEL_8;
  }

  *(v4 + 200) = BootstrapResult.objectGraph.getter();
  v9 = swift_task_alloc();
  *(v4 + 208) = v9;
  *v9 = v4;
  v9[1] = sub_10008FF34;
  v10 = *(v4 + 96);

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_10008FF34()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_100090884;
  }

  else
  {
    v5 = sub_10009008C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009008C()
{
  v40 = v0;

  if (qword_10012CC10 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C70);
  v7 = *(v4 + 16);
  v7(v1, v2, v5);
  v7(v3, v2, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v12 = 136315394;
    v13 = [Bag.amsBag.getter() expirationDate];
    swift_unknownObjectRelease();
    if (v13)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v18 = v0[6];
    v17 = v0[7];
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v18, v14, 1, v19);
    sub_100092BE8(v18, v17);
    v21 = (*(v20 + 48))(v17, 1, v19);
    v22 = v0[7];
    if (v21 == 1)
    {
      sub_100005688(v0[7], &qword_100130C10, &qword_1000ED028);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      v24 = Date.description.getter();
      v23 = v25;
      (*(v20 + 8))(v22, v19);
    }

    v26 = v0[10];
    v27 = v0[8];
    v28 = *(v0[9] + 8);
    v28(v0[11], v27);
    v29 = sub_1000BA5C8(v24, v23, &v39);

    *(v12 + 4) = v29;
    *(v12 + 12) = 1024;
    v30 = Bag.isExpired.getter() & 1;
    v28(v26, v27);
    v16 = v28;
    *(v12 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v8, v9, "Found cached bootstrap result, with bag: %s, isExpired: %{BOOL}d", v12, 0x12u);
    sub_10002E6CC(v38);
  }

  else
  {
    v15 = v0[8];
    v16 = *(v0[9] + 8);
    v16(v0[10], v15);

    v16(v11, v15);
  }

  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[17];
  v34 = v0[12];
  v35 = v0[8];
  (*(v33 + 16))(v0[2], v31, v32);
  BootstrapResult.metricsPipelineTransformer.getter();
  MetricsPipelineTransformer.copy()();

  BootstrapResult.metricsPipelineTransformer.setter();
  BootstrapResult.freshnessWatchdog.getter();
  JSFreshnessWatchdog.willEnterForeground()();

  v16(v34, v35);
  (*(v33 + 8))(v31, v32);

  v36 = v0[1];

  return v36();
}

uint64_t sub_100090540()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_10009098C;
  }

  else
  {
    v5 = sub_10009067C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009067C()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v9 = v0[13];
  v10 = v0[2];

  BootstrapResult.objectGraph.getter();
  v6 = BootstrapResult.metricsPipelineTransformer.getter();
  sub_100090D5C(v6, v1);

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  BootstrapResult.objectGraph.setter();
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1000035B4(v5, v9, &qword_10012E458, qword_1000ECF80);
  Binding.wrappedValue.setter();
  sub_100005688(v5, &qword_10012E458, qword_1000ECF80);
  (*(v3 + 32))(v10, v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100090884()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009098C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100090A78()
{
  v0 = sub_100002B38(&qword_100130C10, &qword_1000ED028);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for BagOfflinePolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();

  ASKBagContract.bagOfflinePolicy.getter();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    static BagOfflinePolicy.standard.getter();
    if (v10(v5, 1, v6) != 1)
    {
      sub_100005688(v5, &qword_10012E660, &unk_1000ED030);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = [ASKBagContract.amsBag.getter() expirationDate];
  swift_unknownObjectRelease();
  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v2, v12, 1, v13);
  v14 = BagOfflinePolicy.isWithinDefaultMaxAge(bagExpirationDate:)();

  sub_100005688(v2, &qword_100130C10, &qword_1000ED028);
  (*(v7 + 8))(v9, v6);
  return v14 & 1;
}

uint64_t sub_100090D5C(uint64_t a1, uint64_t a2)
{
  v20[0] = type metadata accessor for Dependency();
  v4 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v12);
  (*(v10 + 16))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v13);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a2 + 16);
  (*(v10 + 32))(v15 + v14, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  MetricsPipelineTransformer.transform(_:)();

  static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DismissDashboardNotifier();
  swift_allocObject();
  v20[1] = DismissDashboardNotifier.init()();
  Dependency.init<A>(satisfying:with:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v16 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v17 = *(v4 + 8);
  v18 = v20[0];
  v17(v6, v20[0]);
  v17(v9, v18);
  return v16;
}

void sub_100091048(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100130C08, &qword_1000ED020);
  __chkstk_darwin(v2);
  v4 = (&v18[-1] - v3);
  v5 = type metadata accessor for _TaskViewDefaultWorking();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);

    v9(v18, v11);
    v12 = sub_10002D754(v18, v18[3]);
    v13 = __chkstk_darwin(v12);
    (*(v15 + 16))(&v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v16 = AnyView.init<A>(_:)();
    sub_10002E6CC(v18);
    *v4 = v16;
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking, &protocol conformance descriptor for _TaskViewDefaultWorking);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v9, v10);
  }

  else
  {
    _TaskViewDefaultWorking.init()();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking, &protocol conformance descriptor for _TaskViewDefaultWorking);
    _ConditionalContent<>.init(storage:)();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100091374(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v37 = sub_100002B38(&qword_100130C00, &unk_1000ED010);
  __chkstk_darwin(v37);
  v10 = (&v34 - v9);
  v11 = type metadata accessor for _TaskViewDefaultFailed();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100011F80(v15, qword_100135C70);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v14;
    v21 = a4;
    v22 = v11;
    v23 = v12;
    v24 = a3;
    v25 = v20;
    *v19 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Overlay bootstrap failed: %@", v19, 0xCu);
    sub_100005688(v25, &qword_100131110, &unk_1000EC870);
    a3 = v24;
    v12 = v23;
    v11 = v22;
    a4 = v21;
    v14 = v35;

    a2 = v36;
  }

  v27 = *(a4 + 32);
  if (v27)
  {
    v28 = *(a4 + 40);

    v27(v39, a1, a2, a3);
    v29 = sub_10002D754(v39, v39[3]);
    v30 = __chkstk_darwin(v29);
    (*(v32 + 16))(&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
    v33 = AnyView.init<A>(_:)();
    sub_10002E6CC(v39);
    *v10 = v33;
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed, &protocol conformance descriptor for _TaskViewDefaultFailed);

    _ConditionalContent<>.init(storage:)();
    sub_10006C574(v27, v28);
  }

  else
  {
    swift_errorRetain();

    _TaskViewDefaultFailed.init(error:retry:)();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed, &protocol conformance descriptor for _TaskViewDefaultFailed);
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100091820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v14 = *v13;
  v17 = type metadata accessor for OverlayBootstrapView(0, v15, v16, v16);
  v14(a1, *(a2 + *(v17 + 52)));
  sub_10009B680();
  v18 = *(v7 + 8);
  v18(v9, a3);
  sub_10009B680();
  return (v18)(v12, a3);
}

uint64_t sub_100091980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v21 = a6;
  v22 = a7;
  v19 = a4;
  v20 = a5;
  v18[1] = a10;
  v18[2] = a9;
  v18[0] = a11;
  v12 = type metadata accessor for TaskUpdate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_100130BF8, &qword_1000ED008);
  __chkstk_darwin(v16 - 8);
  TaskUpdate.init()();
  static Binding.constant(_:)();
  (*(v13 + 8))(v15, v12);
  return TaskView.init(_:task:working:failed:content:)();
}

double sub_100091B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for MetricsFieldExclusionRequest();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for HostAppFieldsProvider();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a3 + *(type metadata accessor for OverlayBootstrapView(0, a4, a5, v16) + 56) + 8))
  {

    HostAppFieldsProvider.init(bundleID:)();
    v22[3] = v12;
    v22[4] = sub_100092ED0(&qword_100130C18, &type metadata accessor for HostAppFieldsProvider, &protocol conformance descriptor for HostAppFieldsProvider);
    v18 = sub_100012854(v22);
    (*(v13 + 16))(v18, v15, v12);
    static MetricsFieldExclusionRequest.hostApp.getter();
    v19 = MetricsPipelineTransformer.State.aggregator.modify();
    MetricsFieldsAggregator.addOptOutProvider(_:forRequest:)();
    (*(v9 + 8))(v11, v8);
    v19(v21, 0);
    (*(v13 + 8))(v15, v12);
    return sub_10002E6CC(v22);
  }

  return result;
}

uint64_t sub_100091D84(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for NativeIntentDispatcher();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100091E44, 0, 0);
}

uint64_t sub_100091E44(uint64_t a1)
{
  NativeIntentDispatcher.init()();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_100091EE4;

  return static GameObjectGraphBuilder.intentDispatcher()(v1 + 16);
}

uint64_t sub_100091EE4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_100092110;
  }

  else
  {
    v3 = sub_100092010;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100092010()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v3[3] = v4;
  v3[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(v3);
  (*(v2 + 16))();
  sub_1000035B4((v0 + 2), (v0 + 7), &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  sub_100005688((v0 + 2), &qword_10012E678, &qword_1000EAB48);
  (*(v2 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100092110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100092178()
{
  v0 = type metadata accessor for Logger();
  sub_10006D8E0(v0, qword_100135C70);
  sub_100011F80(v0, qword_100135C70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000921F4()
{
  v0 = type metadata accessor for Logger();
  sub_10006D8E0(v0, qword_100135C88);
  sub_100011F80(v0, qword_100135C88);
  return Logger.init(subsystem:category:)();
}

void sub_100092280(uint64_t a1)
{
  sub_100013388();
  if (v1 <= 0x3F)
  {
    sub_10009265C(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009265C(319, &qword_100130BB0, &qword_10012E458, qword_1000ECF80, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bootstrap();
        if (v4 <= 0x3F)
        {
          sub_1000926C0(319);
          if (v5 <= 0x3F)
          {
            sub_100049AF0();
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

uint64_t sub_1000923D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002B38(qword_100130B28, qword_1000ECF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Bootstrap();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100092514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(qword_100130B28, qword_1000ECF40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Bootstrap();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10009265C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1000926C0(uint64_t a1)
{
  if (!qword_100130BB8)
  {
    type metadata accessor for NativeIntentDispatchableKinds();
    sub_100092ED0(&qword_100130BC0, &type metadata accessor for NativeIntentDispatchableKinds, &protocol conformance descriptor for NativeIntentDispatchableKinds);
    v1 = type metadata accessor for JSNativeIntentDispatcher();
    if (!v2)
    {
      atomic_store(v1, &qword_100130BB8);
    }
  }
}

unint64_t sub_100092798()
{
  result = qword_100130BD8;
  if (!qword_100130BD8)
  {
    sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
    sub_100092ED0(&qword_100130BE0, &type metadata accessor for _TaskViewDefaultWorking, &protocol conformance descriptor for _TaskViewDefaultWorking);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130BD8);
  }

  return result;
}

unint64_t sub_100092854()
{
  result = qword_100130BE8;
  if (!qword_100130BE8)
  {
    sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
    sub_100092ED0(&qword_100130BF0, &type metadata accessor for _TaskViewDefaultFailed, &protocol conformance descriptor for _TaskViewDefaultFailed);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130BE8);
  }

  return result;
}

uint64_t sub_100092914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for OverlayBootstrapView(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100011720;

  return sub_10008FB10(a1, v4 + v10, v7, v8);
}

void sub_100092A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for OverlayBootstrapView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100091048(v6);
}

void sub_100092A98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for OverlayBootstrapView(0, *(v5 + 16), *(v5 + 24), a4) - 8);
  v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  sub_100091374(a1, a2, a3, v11, a5);
}

uint64_t sub_100092B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for OverlayBootstrapView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100091820(a1, v9, v6, v7);
}

uint64_t sub_100092BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100130C10, &qword_1000ED028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OverlayBootstrapView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  if (*(v6 + 16))
  {
  }

  if (*(v6 + 32))
  {
  }

  v7 = v6 + v5[11];

  v8 = *(sub_100002B38(qword_100130B28, qword_1000ECF40) + 32);
  v9 = type metadata accessor for BootstrapResult();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v5[12];
  v12 = type metadata accessor for Bootstrap();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  return swift_deallocObject();
}

double sub_100092E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for OverlayBootstrapView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100091B30(a1, a2, v10, v7, v8);
}

uint64_t sub_100092ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100092F18(uint64_t *a1)
{
  type metadata accessor for BootstrapResult();
  sub_100005144(&qword_100130BC8, &qword_1000ECFE8);
  sub_100005144(&qword_100130BD0, &qword_1000ECFF0);
  sub_100092798();
  sub_100092854();
  type metadata accessor for TaskView();
  return swift_getWitnessTable();
}

uint64_t sub_100092FE4(void *a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_10003EF48(a3, v3 + 32);
  swift_endAccess();
  return v3;
}

uint64_t sub_10009309C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000944EC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1000930E4()
{
  type metadata accessor for RemoteSceneManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  qword_100135CA0 = v0;
  return result;
}

uint64_t sub_10009312C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_12;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    v11 = v9[1];
    v61[0] = *v9;
    v61[1] = v11;

    if (sub_1000938A0(v61, v1))
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v33 = *(v1 + 112);
  if (*(v33 + 16))
  {

    v34 = sub_1000C547C(v10, v11);
    if (v35)
    {
      v36 = *(*(v33 + 56) + 8 * v34);

      swift_beginAccess();
      sub_100094554(v36 + 32, &v58);

      v37 = *(&v59 + 1);

      if (v37)
      {
        sub_10003FB38(&v58, v61);
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100011F80(v38, qword_100135C88);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v58 = v42;
          *v41 = 136315138;
          v43 = sub_1000BA5C8(v10, v11, &v58);

          *(v41 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v39, v40, "dashboardDidDismiss: Requesting the dashboard [%s] to be dismissed..", v41, 0xCu);
          sub_10002E6CC(v42);
        }

        else
        {
        }

LABEL_56:
        v53 = v62;
        v54 = v63;
        sub_10002D754(v61, v62);
        v31 = (*(v54 + 32))(v53, v54);
        sub_10002E6CC(v61);
        return v31 & 1;
      }

      goto LABEL_45;
    }
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
LABEL_45:
  sub_1000944EC(&v58);
LABEL_12:
  v55 = v1;
  v12 = *(v1 + 112);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = &unk_10012C000;
  v56 = v12;
  if (!v16)
  {
LABEL_16:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_50;
      }

      if (v20 >= v17)
      {

        goto LABEL_28;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v20 = v18;
LABEL_19:
    v21 = (*(v12 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v16)))));
    v22 = *v21;
    v23 = v21[1];

    v24._object = 0x80000001000E6A60;
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v57 = v22;
    v25 = String.hasPrefix(_:)(v24);
    if (v19[387] != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100011F80(v26, qword_100135C88);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      break;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v61[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_1000BA5C8(v57, v23, v61);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v27, v28, "dashboardDidDismiss: [%s] Is this an accessPoint token? %{BOOL}d", v29, 0x12u);
    sub_10002E6CC(v30);
    v19 = &unk_10012C000;

    v12 = v56;

    if (v25)
    {
      goto LABEL_37;
    }

LABEL_25:
    v16 &= v16 - 1;

    v18 = v20;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_37:

  v44 = *(v55 + 112);
  if (!*(v44 + 16))
  {
LABEL_47:

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_48;
  }

  v45 = sub_1000C547C(v57, v23);
  if ((v46 & 1) == 0)
  {

    goto LABEL_47;
  }

  v47 = *(*(v44 + 56) + 8 * v45);

  swift_beginAccess();
  sub_100094554(v47 + 32, &v58);

  if (*(&v59 + 1))
  {
    sub_10003FB38(&v58, v61);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v58 = v51;
      *v50 = 136315138;
      v52 = sub_1000BA5C8(v57, v23, &v58);

      *(v50 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "dashboardDidDismiss: Requesting the dashboard [%s] to be dismissed..", v50, 0xCu);
      sub_10002E6CC(v51);
    }

    else
    {
    }

    goto LABEL_56;
  }

LABEL_51:

LABEL_48:
  sub_1000944EC(&v58);
LABEL_28:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1000938A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5._object = 0x80000001000E6AA0;
  v5._countAndFlagsBits = 0xD000000000000018;
  v6 = String.hasPrefix(_:)(v5);
  swift_beginAccess();
  if (*(*(a2 + 112) + 16))
  {

    sub_1000C547C(v3, v4);
    if (v7)
    {

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {

        v9 = 1;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = 0;
LABEL_7:
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100011F80(v10, qword_100135C88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1000BA5C8(v3, v4, &v16);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v6;
    *(v13 + 18) = 1024;
    *(v13 + 20) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "dashboardDidDismiss: [%s] Is this a dashboard token? %{BOOL}d, is the scene valid? %{BOOL}d", v13, 0x18u);
    sub_10002E6CC(v14);
  }

  return v6 & v9;
}

void sub_100093AC4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-v8];
  swift_beginAccess();
  if (*(*(v3 + 112) + 16))
  {

    sub_1000C547C(a1, a2);
    if ((v10 & 1) == 0)
    {

      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      return;
    }

    if (*(*(v3 + 112) + 16))
    {

      sub_1000C547C(a1, a2);
      if (v12)
      {

        v13 = swift_unknownObjectWeakLoadStrong();

LABEL_10:
        swift_beginAccess();

        sub_1000D4748(0, a1, a2);
        swift_endAccess();
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
        type metadata accessor for MainActor();
        v15 = v13;
        v16 = Strong;

        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = &protocol witness table for MainActor;
        *(v18 + 32) = v13;
        *(v18 + 40) = v16;
        *(v18 + 48) = a1;
        *(v18 + 56) = a2;
        *(v18 + 64) = a3 & 1;
        sub_100014BBC(0, 0, v9, &unk_1000ED0E0, v18);

        return;
      }
    }

    v13 = 0;
    goto LABEL_10;
  }
}

uint64_t sub_100093D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 104) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  type metadata accessor for MainActor();
  *(v8 + 96) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100093DE0, v10, v9);
}

uint64_t sub_100093DE0()
{
  v29 = v0;
  v1 = *(v0 + 64);

  if (v1)
  {
    v2 = *(v0 + 64);
    goto LABEL_11;
  }

  v3 = [*(v0 + 72) windows];
  sub_1000946F0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    v2 = 0;
    goto LABEL_11;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v2 = v6;

LABEL_11:
  v7 = qword_10012CC18;
  v8 = *(v0 + 64);
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000BA5C8(v13, v12, &v28);
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempting to dismiss remote alert for token: %s", v14, 0xCu);
    sub_10002E6CC(v15);
  }

  v16 = *(v0 + 72);
  if (*(v0 + 104) == 1)
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v0 + 48) = sub_100094774;
    *(v0 + 56) = v18;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000D431C;
    *(v0 + 40) = &unk_100123420;
    v19 = _Block_copy((v0 + 16));
    v20 = v2;

    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v0 + 48) = sub_1000947A8;
    *(v0 + 56) = v21;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000D4840;
    *(v0 + 40) = &unk_100123470;
    v22 = _Block_copy((v0 + 16));
    v23 = v16;

    [v17 animateWithDuration:v19 animations:v22 completion:0.3];

    _Block_release(v22);
    _Block_release(v19);
  }

  else
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = *(v0 + 72);
    if (v24)
    {
      v26 = v25;
      [v24 invalidate];
    }

    else
    {
      [v25 _invalidate];
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

id sub_1000941E4(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = "invalidate";
  }

  else
  {
    v4 = "_invalidate";
    v3 = a2;
  }

  return [v3 v4];
}

void sub_100094248(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(v3 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = *v13;
      v14 = v13[1];

      v16._countAndFlagsBits = a1;
      v16._object = a2;
      if (String.hasPrefix(_:)(v16))
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v3 + 112);
    if (*(v17 + 16))
    {

      v18 = sub_1000C547C(v15, v14);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        swift_beginAccess();
        sub_100094554(v20 + 32, &v23);

LABEL_17:
        sub_100093AC4(v15, v14, 0);
        *a3 = v15;
        *(a3 + 8) = v14;
        v21 = v24;
        *(a3 + 16) = v23;
        *(a3 + 32) = v21;
        *(a3 + 48) = v25;
        return;
      }
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_17;
  }

LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100094460()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000944EC(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100094554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000945C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100094614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100011720;

  return sub_100093D40(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000946F0()
{
  result = qword_100130DD0;
  if (!qword_100130DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130DD0);
  }

  return result;
}

uint64_t sub_10009473C()
{

  return swift_deallocObject();
}

id sub_100094774()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_100094790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000947BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100095A00(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100095998(v11);
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

uint64_t sub_100094A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100095A00(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100095998(v11);
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

uint64_t sub_100094D14()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonProxy];
  v3 = [v2 getGamedFiredUp];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

id sub_100094EA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100094EFC(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100094FF0;

  return v5(v2 + 16);
}

uint64_t sub_100094FF0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

void sub_100095134()
{
  v0 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_100130160 & 1) == 0)
  {
    v7 = static GameOverlayUIConfig.machServiceDomain.getter();
    v9 = v8;
    v10 = *(v4 + 104);
    v10(v6, enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:), v3);
    sub_10007C8DC(v7, v9);
    v11 = *(v4 + 8);
    v11(v6, v3);
    v10(v6, enum case for GameOverlayUIConfig.ServiceKind.auth(_:), v3);
    sub_10007C8DC(v7, v9);
    v11(v6, v3);
    v10(v6, enum case for GameOverlayUIConfig.ServiceKind.multiplayer(_:), v3);
    sub_10007C8DC(v7, v9);
    v11(v6, v3);
    v10(v6, enum case for GameOverlayUIConfig.ServiceKind.internalUse(_:), v3);
    sub_10007C8DC(v7, v9);

    v11(v6, v3);
    byte_100130160 = 1;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100011F80(v12, qword_100135C88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Listeners started", v15, 2u);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  static GameOverlayDashboardVisibilityNotifier.reset()();
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  [v16 setMutableFeatureName:v17 toValue:v18];

  static TaskPriority.high.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v2, 0, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_100094A5C(0, 0, v2, &unk_1000ED128, v20);

  sub_100095998(v2);
  v21 = objc_opt_self();
  v22 = [v21 sharedURLCache];
  [v22 setDiskCapacity:104857600];

  v23 = [v21 sharedURLCache];
  [v23 setMemoryCapacity:20971520];

  v24 = static CommandLine.argc.getter();
  v25 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v24, v25, 0, v27);
}

id sub_10009564C(void *a1, void *a2, void *a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C88);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[2] = v9;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Application: %@, configuration for connecting scene session: %@, options: %@", v12, 0x20u);
    sub_100002B38(&qword_100131110, &unk_1000EC870);
    swift_arrayDestroy();
  }

  v17 = [v8 role];
  v18 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v17];

  sub_100095868();
  [v18 setSceneClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for GameOverlayUIRemoteAlertSceneDelegate();
  [v18 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v18;
}

unint64_t sub_100095868()
{
  result = qword_100130F00;
  if (!qword_100130F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130F00);
  }

  return result;
}

uint64_t sub_1000958B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000958EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100011720;

  return sub_100094CF4(a1);
}

uint64_t sub_100095998(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100095A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095A70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014BAC;

  return sub_100094EFC(a1, v4);
}

uint64_t sub_100095B28()
{

  return swift_deallocObject();
}

uint64_t sub_100095B60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011720;

  return sub_100094EFC(a1, v4);
}

uint64_t sub_100095C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100095CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23[-1] - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v22 = v1;
  sub_1000967B0(v1, v23);
  v12 = swift_allocObject();
  sub_1000967EC(v23, v12 + 16);
  v13 = objc_opt_self();

  v14 = [v13 standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v15 = sub_100002B38(&qword_100130F20, &qword_1000ED248);
  v16 = (a1 + *(v15 + 56));
  *v16 = v10;
  v16[1] = v11;
  *a1 = sub_100096824;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  type metadata accessor for OverlayBootstrap(0);
  sub_100096AA4(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);

  Bindable<A>.init(wrappedValue:)();
  Bindable.wrappedValue.getter();
  v17 = *(v23[0] + 16);

  *(a1 + *(v15 + 52)) = v17;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v18 = *(v4 + 8);
  v18(v6, v3);
  Bindable.wrappedValue.getter();
  sub_1000BB51C();

  v18(v9, v3);
  sub_1000967B0(v22, v23);
  v19 = swift_allocObject();
  sub_1000967EC(v23, v19 + 16);
  v20 = (a1 + *(sub_100002B38(&qword_100130F28, &unk_1000ED288) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v20 = &unk_1000ED280;
  v20[1] = v19;
  return result;
}

uint64_t sub_100096050@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Dependency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v11 = *(a1 + 48);
  v15[0] = *(a1 + 40);
  v15[1] = v11;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v8 + 8))(v10, v7);
  swift_unknownObjectWeakLoadStrong();
  (*(v3 + 104))(v5, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v14[0]);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  sub_1000967B0(a1, v15);
  v12 = swift_allocObject();
  sub_1000967EC(v15, v12 + 16);
  sub_100002B38(&qword_100130F30, &qword_1000ED2B0);
  sub_1000969E8();
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

uint64_t sub_100096314@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = static Color.clear.getter();
  sub_1000967B0(a2, v9);
  v6 = swift_allocObject();
  sub_1000967EC(v9, v6 + 16);
  v7 = (a3 + *(sub_100002B38(&qword_100130F30, &qword_1000ED2B0) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v7 = &unk_1000ED2C0;
  v7[1] = v6;
  *a3 = v5;
  return result;
}

uint64_t sub_1000963C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100096460, v3, v2);
}

uint64_t sub_100096460()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 24);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000964D8(uint64_t a1)
{
  v1[9] = a1;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000965A8, v3, v2);
}

uint64_t sub_1000965A8()
{
  v1 = v0[10];
  v2 = v0[9];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1000967B0(v2, (v0 + 2));
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1000967EC((v0 + 2), v4 + 32);
  sub_1000947BC(0, 0, v1, &unk_1000ED2A0, v4);

  sub_100095998(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000966DC()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100036924;

  return sub_1000C0D0C(v3, v2, 0xD00000000000001BLL, 0x80000001000ED1B0);
}

uint64_t sub_100096834()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014BAC;

  return sub_1000964D8(v0 + 16);
}

uint64_t sub_1000968C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100096930(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014BAC;

  return sub_1000966BC(a1, v4, v5, v1 + 32);
}

unint64_t sub_1000969E8()
{
  result = qword_100130F38;
  if (!qword_100130F38)
  {
    sub_100005144(&qword_100130F30, &qword_1000ED2B0);
    sub_100096AA4(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F38);
  }

  return result;
}

uint64_t sub_100096AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100096AEC()
{
  swift_unknownObjectWeakDestroy();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100096B4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100011720;

  return sub_1000963C8(v0 + 16);
}

unint64_t sub_100096BE4()
{
  result = qword_100130F40;
  if (!qword_100130F40)
  {
    sub_100005144(&qword_100130F28, &unk_1000ED288);
    sub_100096CA0();
    sub_100096AA4(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F40);
  }

  return result;
}

unint64_t sub_100096CA0()
{
  result = qword_100130F48;
  if (!qword_100130F48)
  {
    sub_100005144(&qword_100130F20, &qword_1000ED248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F48);
  }

  return result;
}

void sub_100096D30(uint64_t a1)
{
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_100097634();
      if (v3 <= 0x3F)
      {
        sub_100097684(319, &qword_1001304E8, type metadata accessor for DashboardTabViewState);
        if (v4 <= 0x3F)
        {
          sub_100097684(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100096E48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v28 = *(a3 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v4 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7 - 1)
  {
    v11 = v7 - 1;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = type metadata accessor for LayoutDirection();
  v13 = *(v5 + 80);
  v14 = *(*(v12 - 8) + 64);
  v15 = *(v9 + 80);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v13 + 16) & ~v13) + *(v5 + 64) + v15;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v17 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v18 = v14 + ((v17 + ((((*(v9 + 64) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v11 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v8 >= v10)
      {
        v25 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v27 = (*(v5 + 48))((v25 + v13 + 8) & ~v13, v6, v28);
        }

        else
        {
          v26 = *v25;
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          v27 = v26 + 1;
        }

        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v9 + 48);

        return v24((a1 + v16) & ~v15, v10, v4);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v11 + (v18 | v23) + 1;
}

void sub_100097174(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(a4 + 16) - 8);
  v37 = v8;
  if (*(v8 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(v7 - 8);
  v35 = *(v8 + 84);
  v36 = v9;
  v11 = v9 - 1;
  v12 = *(v10 + 84);
  if (v12 <= v9 - 1)
  {
    v13 = v9 - 1;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(type metadata accessor for LayoutDirection() - 8);
  v15 = *(v8 + 80);
  v16 = ((v15 + 16) & ~v15) + *(v8 + 64);
  if (*(v14 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v14 + 64);
  }

  v18 = *(v10 + 80);
  v19 = *(v14 + 80) & 0xF8 | 7;
  v20 = v17 + ((v19 + ((((*(v10 + 64) + ((v16 + v18) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19) + 1;
  if (a3 <= v13)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v13 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
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

  if (v13 < a2)
  {
    v22 = ~v13 + a2;
    if (v20 >= 4)
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_17;
      }

      goto LABEL_63;
    }

    v23 = (v22 >> (8 * v20)) + 1;
    if (v20)
    {
      v26 = v22 & ~(-1 << (8 * v20));
      bzero(a1, v20);
      if (v20 != 3)
      {
        if (v20 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_17:
            if (v21 == 2)
            {
              *&a1[v20] = v23;
            }

            else
            {
              *&a1[v20] = v23;
            }

            return;
          }
        }

LABEL_63:
        if (v21)
        {
          a1[v20] = v23;
        }

        return;
      }

      *a1 = v26;
      a1[2] = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v20] = 0;
  }

  else if (v21)
  {
    a1[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v11 < v12)
  {
    v27 = *(v10 + 56);

    v27(&a1[v16 + v18] & ~v18, a2, v12, v7);
    return;
  }

  if (v11 < a2)
  {
    if (v16 <= 3)
    {
      v28 = ~(-1 << (8 * v16));
    }

    else
    {
      v28 = -1;
    }

    if (!v16)
    {
      return;
    }

    v29 = v28 & (a2 - v36);
    if (v16 <= 3)
    {
      v30 = v16;
    }

    else
    {
      v30 = 4;
    }

    bzero(a1, v16);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
LABEL_52:
        *a1 = v29;
        return;
      }

LABEL_77:
      *a1 = v29;
      return;
    }

    goto LABEL_78;
  }

  if (a2 >= v36)
  {
    if (v16 <= 3)
    {
      v33 = ~(-1 << (8 * v16));
    }

    else
    {
      v33 = -1;
    }

    if (!v16)
    {
      return;
    }

    v29 = v33 & (a2 - v36);
    if (v16 <= 3)
    {
      v30 = v16;
    }

    else
    {
      v30 = 4;
    }

    bzero(a1, v16);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
        goto LABEL_52;
      }

      goto LABEL_77;
    }

LABEL_78:
    if (v30 == 3)
    {
      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    else
    {
      *a1 = v29;
    }

    return;
  }

  v31 = (a2 + 1);
  v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v35 < 0)
  {
    v34 = *(v37 + 56);

    v34((v32 + v15 + 8) & ~v15, v31);
  }

  else if ((v31 & 0x80000000) != 0)
  {
    *v32 = (a2 - 0x7FFFFFFF);
  }

  else
  {
    *v32 = a2;
  }
}

void sub_100097634()
{
  if (!qword_10012EA98)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EA98);
    }
  }
}

void sub_100097684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1000976D8(uint64_t *a1)
{
  v1 = a1[3];
  v3[0] = a1[1];
  v3[1] = swift_getOpaqueTypeMetadata2();
  v3[2] = v1;
  v3[3] = swift_getOpaqueTypeConformance2();
  type metadata accessor for GameOverlayTabViewBody(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_100097818(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000979E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100097BBC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v40 = a2;
  v35 = a3;
  v41 = type metadata accessor for Subview();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v34 - v9;
  v10 = type metadata accessor for SubviewsCollection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_100131068, &unk_1000ED430);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - v17;
  (*(v11 + 16))(v13, v4, v10, v16);
  sub_10009B630(&qword_100131070, &type metadata accessor for SubviewsCollection, &protocol conformance descriptor for SubviewsCollection);
  dispatch thunk of Sequence.makeIterator()();
  v19 = *(v15 + 44);
  sub_10009B630(&qword_100131078, &type metadata accessor for SubviewsCollection, &protocol conformance descriptor for SubviewsCollection);
  dispatch thunk of Collection.endIndex.getter();
  v20 = *&v18[v19];
  v34 = v5;
  if (v20 == v42[0])
  {
    v21 = v41;
LABEL_7:
    sub_10009B45C(v18);
    v29 = 1;
    v30 = v35;
  }

  else
  {
    v22 = (v5 + 16);
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    v21 = v41;
    while (1)
    {
      v23 = dispatch thunk of Collection.subscript.read();
      v24 = v38;
      (*v22)(v38);
      v23(v42, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v25 = v21;
      v26 = *v37;
      (*v37)(v7, v24, v25);
      v27 = v43;
      v28 = v39(v7);
      if (v27)
      {
        (*v36)(v7, v41);
        return sub_10009B45C(v18);
      }

      if (v28)
      {
        break;
      }

      v43 = 0;
      v21 = v41;
      (*v36)(v7, v41);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v18[v19] == v42[0])
      {
        goto LABEL_7;
      }
    }

    sub_10009B45C(v18);
    v32 = v35;
    v33 = v41;
    v26(v35, v7, v41);
    v30 = v32;
    v21 = v33;
    v29 = 0;
  }

  return (*(v34 + 56))(v30, v29, 1, v21);
}

uint64_t sub_100097FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;
  return sub_100097BBC(sub_10009B438, v5, a4);
}

uint64_t sub_100098024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ContainerValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subview.containerValues.getter();
  v8 = ContainerValues.hasTag<A>(_:)();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_100098140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v15 = a2;
  v16 = v3;
  v17 = v2;
  v18 = v5;
  v19 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __chkstk_darwin(OpaqueTypeMetadata2);
  v8 = &v14 - v7;
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  _TabViewValue.selection.getter();
  _TabViewValue.content.getter();
  v16 = v3;
  v17 = v2;
  v18 = v5;
  v19 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_100098560(v11, v8, v2, OpaqueTypeMetadata2, v4, OpaqueTypeConformance2, v15);
}

uint64_t sub_1000982A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100079940(a1, a2, a3);
  v5 = type metadata accessor for _TabViewValue();
  return sub_100098140(v5, a4);
}

uint64_t sub_100098320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v17 = a2;
  v18 = a5;
  v16[1] = a6;
  v8 = sub_100079940(a1, a2, a3);
  v21 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = type metadata accessor for GameOverlayTabViewBody(255, &v21);
  v10 = type metadata accessor for _GraphValue();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  v19 = a3;
  v20 = a4;
  swift_getKeyPath();
  v21 = &type metadata for GameOverlayTabViewStyle;
  OpaqueTypeMetadata2 = a3;
  v23 = v8;
  OpaqueTypeConformance2 = a4;
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();

  WitnessTable = swift_getWitnessTable();
  v18(v13, v17, v9, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100098560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Binding();
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v15 = type metadata accessor for GameOverlayTabViewBody(0, &v23);
  v16 = (a7 + v15[14]);
  v27 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v17 = v24;
  *v16 = v23;
  v16[1] = v17;
  v18 = a7 + v15[15];
  type metadata accessor for DashboardTabViewState(0);
  sub_10009B630(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  *v18 = Environment.init<A>(_:)();
  *(v18 + 8) = v19 & 1;
  v20 = v15[16];
  *(a7 + v20) = swift_getKeyPath();
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 40))(a7, a1, v21);
  return (*(*(a4 - 8) + 32))(a7 + v15[13], a2, a4);
}

double sub_10009879C(uint64_t a1)
{
  sub_100002B38(&qword_10012EC18, &qword_1000EB048);
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_10009885C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10009A9B8(v2 + *(a1 + 64), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for LayoutDirection();
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

uint64_t sub_100098A48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v4 = *(a1 - 1);
  __chkstk_darwin(a1);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_100005144(&qword_100130FF0, &qword_1000ED398);
  v10 = sub_10009A7C4();
  v12 = a1[5];
  v59 = a1[3];
  v11 = v59;
  v60 = v9;
  v61 = v12;
  v62 = v10;
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  sub_100005144(&qword_100131010, &qword_1000ED3A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v45 = type metadata accessor for ZStack();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v42 - v13;
  v49 = type metadata accessor for ModifiedContent();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v46 = &v42 - v16;
  static Alignment.top.getter();
  *&v17 = a1[2];
  *(&v17 + 1) = v11;
  *&v18 = a1[4];
  *(&v18 + 1) = v12;
  v52 = v18;
  v53 = v17;
  v54 = v17;
  v55 = v18;
  v42 = v2;
  v56 = v2;
  ZStack.init(alignment:content:)();
  v19 = v4;
  v20 = *(v4 + 16);
  v20(v8, v2, a1);
  v21 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = v52;
  *(v22 + 16) = v53;
  *(v22 + 32) = v23;
  v24 = *(v19 + 32);
  v24(v22 + v21, v8, a1);
  v25 = v50;
  v20(v50, v42, a1);
  v26 = swift_allocObject();
  v27 = v52;
  *(v26 + 16) = v53;
  *(v26 + 32) = v27;
  v24(v26 + v21, v25, a1);
  v28 = v45;
  WitnessTable = swift_getWitnessTable();
  v30 = v44;
  v31 = v43;
  View.gameOverlayController(leftShoulderHandler:rightShoulderHandler:)(sub_10009A8D8, v22, sub_10009A8F0, v26, v28, WitnessTable);

  v32 = (*(v48 + 8))(v31, v28);
  v35 = sub_10008E268(v32, v33, v34);
  v57 = WitnessTable;
  v58 = v35;
  v36 = v49;
  swift_getWitnessTable();
  v37 = v47;
  v38 = *(v47 + 16);
  v39 = v46;
  v38(v46, v30, v36);
  v40 = *(v37 + 8);
  v40(v30, v36);
  v38(v51, v39, v36);
  return (v40)(v39, v36);
}

uint64_t sub_100098F68@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v127 = a2;
  v128 = a4;
  v124 = a6;
  v12 = type metadata accessor for AccessibilityChildBehavior();
  v122 = *(v12 - 8);
  v123 = v12;
  __chkstk_darwin(v12);
  v121 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v88 - v14;
  v108 = type metadata accessor for OverlayTabBar(0);
  __chkstk_darwin(v108);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100002B38(&qword_100131018, &qword_1000ED3C0);
  __chkstk_darwin(v111);
  v107 = &v88 - v16;
  v120 = sub_100002B38(&qword_100131020, &qword_1000ED3C8);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v112 = &v88 - v17;
  v115 = sub_100002B38(&qword_100131028, &qword_1000ED3D0);
  __chkstk_darwin(v115);
  v114 = &v88 - v18;
  v119 = sub_100002B38(&qword_100131010, &qword_1000ED3A8);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v113 = &v88 - v21;
  v135 = a2;
  v136 = a3;
  v137 = a4;
  v138 = a5;
  v22 = a5;
  v88 = a5;
  v23 = type metadata accessor for GameOverlayTabViewBody(0, &v135);
  v24 = *(v23 - 8);
  v126 = *(v24 + 64);
  __chkstk_darwin(v23);
  v125 = &v88 - v25;
  Description = a3[-1].Description;
  __chkstk_darwin(v27);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100005144(&qword_100130FF0, &qword_1000ED398);
  v106 = v30;
  WitnessTable = sub_10009A7C4();
  v135 = a3;
  v136 = v30;
  v137 = v22;
  v138 = WitnessTable;
  v101 = type metadata accessor for GroupElementsOfContent();
  v89 = type metadata accessor for Group();
  v129 = *(v89 - 8);
  __chkstk_darwin(v89);
  v32 = (&v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v33);
  v36 = (&v88 - v35);
  v102 = (&v88 - v35);
  v37 = v23;
  v38 = *(v23 + 52);
  v39 = Description[2];
  v40 = a1;
  v91 = a1;
  v39(v29, a1 + v38, a3, v34);
  v41 = v24;
  v97 = *(v24 + 16);
  v98 = v24 + 16;
  v42 = v125;
  v43 = v37;
  v90 = v37;
  v97(v125, v40, v37);
  v96 = *(v41 + 80);
  v44 = (v96 + 48) & ~v96;
  v93 = v44;
  v45 = swift_allocObject();
  *(v45 + 2) = v127;
  *(v45 + 3) = a3;
  v92 = a3;
  v46 = v88;
  *(v45 + 4) = v128;
  *(v45 + 5) = v46;
  v47 = *(v41 + 32);
  v94 = v41 + 32;
  v95 = v47;
  v47(&v45[v44], v42, v43);
  Group.init<A, B>(subviews:transform:)();
  v134[2] = swift_getWitnessTable();
  v48 = v89;
  WitnessTable = swift_getWitnessTable();
  v49 = v129;
  v50 = *(v129 + 16);
  v100 = v129 + 16;
  v101 = v50;
  v99 = v32;
  v50(v36, v32, v48);
  v51 = *(v49 + 8);
  v129 = v49 + 8;
  v106 = v51;
  v52 = v48;
  v51(v32, v48);
  v53 = v103;
  v54 = sub_10008970C(v103);
  v57 = sub_100069844(v54, v55, v56);
  v58 = v105;
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_100131030, &qword_1000ED3D8);
  sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar, &unk_1000EC978);
  v135 = &type metadata for GameOverlayOnPhonePredicate;
  v136 = v57;
  swift_getOpaqueTypeConformance2();
  sub_10009AAE4();
  v59 = v107;
  v60 = v109;
  View.staticIf<A, B>(_:then:)();
  (*(v110 + 8))(v58, v60);
  sub_10009ABA0(v53);
  v61 = v90;
  v62 = v91;
  v63 = sub_10009879C(v90);
  *(v59 + *(sub_100002B38(&qword_100131048, &qword_1000ED3E0) + 36)) = v63;
  v64 = v59;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  LOBYTE(v59) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  KeyPath = swift_getKeyPath();
  v66 = swift_allocObject();
  *(v66 + 16) = v59 & 1;
  v67 = (v64 + *(v111 + 36));
  *v67 = KeyPath;
  v67[1] = sub_10009ACD0;
  v67[2] = v66;
  static ZoomCoordinator.shared.getter();
  LOBYTE(v59) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  LOBYTE(v135) = v59 & 1;
  v68 = v125;
  v97(v125, v62, v61);
  v69 = v93;
  v70 = swift_allocObject();
  v71 = v92;
  *(v70 + 2) = v127;
  *(v70 + 3) = v71;
  *(v70 + 4) = v128;
  *(v70 + 5) = v46;
  v95(&v70[v69], v68, v61);
  sub_10009AFC0();
  v72 = v112;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v64, &qword_100131018, &qword_1000ED3C0);
  static ZoomCoordinator.shared.getter();
  LOBYTE(v61) = dispatch thunk of ZoomCoordinator.presentingOverlay.getter();

  if (v61)
  {
    v73 = -1.0;
  }

  else
  {
    v73 = 1.0;
  }

  v74 = v114;
  (*(v118 + 32))(v114, v72, v120);
  v75 = v115;
  *(v74 + *(v115 + 36)) = v73;
  v76 = v121;
  static AccessibilityChildBehavior.contain.getter();
  v77 = sub_10009B1E8();
  v78 = v113;
  v79 = v75;
  View.accessibilityElement(children:)();
  (*(v122 + 8))(v76, v123);
  sub_100005688(v74, &qword_100131028, &qword_1000ED3D0);
  v80 = v99;
  v81 = v102;
  v101(v99, v102, v52);
  v135 = v80;
  v82 = v117;
  v83 = v116;
  v84 = v119;
  (*(v117 + 16))(v116, v78, v119);
  v136 = v83;
  v134[0] = v52;
  v134[1] = v84;
  v131 = v77;
  v132 = WitnessTable;
  v130 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100097818(&v135, 2uLL, v134);
  v85 = *(v82 + 8);
  v85(v78, v84);
  v86 = v106;
  v106(v81, v52);
  v85(v83, v84);
  return v86(v80, v52);
}

uint64_t sub_100099C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25[0] = a4;
  v25[1] = a1;
  v29 = a5;
  v26 = *(a3 - 8);
  v27 = a2;
  __chkstk_darwin(a1);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100002B38(&qword_100131008, &qword_1000ED3A0);
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = v25 - v9;
  v11 = type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  v16 = *(v11 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = v25 - v19;
  (*(v13 + 16))(v15, v27, v12, v18);
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v21 = 1;
    v22 = v29;
  }

  else
  {
    (*(v16 + 32))(v20, v15, v11);
    Binding.wrappedValue.getter();
    v31 = a3;
    v32 = v25[0];
    v33 = v7;
    sub_100097BBC(sub_10009B438, v30, v10);
    (*(v26 + 8))(v7, a3);
    (*(v16 + 8))(v20, v11);
    v23 = v29;
    sub_10009B3C8(v10, v29);
    v21 = 0;
    v22 = v23;
  }

  return (*(v8 + 56))(v22, v21, 1, v28);
}

uint64_t sub_100099FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.top.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10009B364(a1, a2);
  result = sub_100002B38(&qword_100131030, &qword_1000ED3D8);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_10009A040(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static Animation.easeIn(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_10009A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = type metadata accessor for EnvironmentValues();
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin(v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a2;
  v36[1] = a3;
  v36[2] = a4;
  v36[3] = a5;
  v20 = type metadata accessor for GameOverlayTabViewBody(0, v36);
  v21 = (a1 + *(v20 + 60));
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    v33[1] = a1;
    v25 = v23;
    v26 = v24;
    os_log(_:dso:log:_:_:)();

    v23 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v34 + 8))(v19, v35);
  }

  sub_10009885C(v20, v16);
  (*(v11 + 104))(v13, enum case for LayoutDirection.leftToRight(_:), v10);
  v27 = static LayoutDirection.== infix(_:_:)();
  v28 = *(v11 + 8);
  v28(v13, v10);
  v28(v16, v10);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v34 + 8))(v19, v35);
    v22 = v36[0];
  }

  if (v27)
  {
    v30 = -1;
  }

  else
  {
    v30 = 1;
  }

  v31 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_10007747C(v30, v31);

  return result;
}

double sub_10009A454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = type metadata accessor for EnvironmentValues();
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin(v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a2;
  v36[1] = a3;
  v36[2] = a4;
  v36[3] = a5;
  v20 = type metadata accessor for GameOverlayTabViewBody(0, v36);
  v21 = (a1 + *(v20 + 60));
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    v33[1] = a1;
    v25 = v23;
    v26 = v24;
    os_log(_:dso:log:_:_:)();

    v23 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v34 + 8))(v19, v35);
  }

  sub_10009885C(v20, v16);
  (*(v11 + 104))(v13, enum case for LayoutDirection.leftToRight(_:), v10);
  v27 = static LayoutDirection.== infix(_:_:)();
  v28 = *(v11 + 8);
  v28(v13, v10);
  v28(v16, v10);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v34 + 8))(v19, v35);
    v22 = v36[0];
  }

  if (v27)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  v31 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  sub_10007747C(v30, v31);

  return result;
}

unint64_t sub_10009A7C4()
{
  result = qword_100130FF8;
  if (!qword_100130FF8)
  {
    sub_100005144(&qword_100130FF0, &qword_1000ED398);
    sub_10009A848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FF8);
  }

  return result;
}

unint64_t sub_10009A848()
{
  result = qword_100131000;
  if (!qword_100131000)
  {
    sub_100005144(&qword_100131008, &qword_1000ED3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131000);
  }

  return result;
}

uint64_t sub_10009A908(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for GameOverlayTabViewBody(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_10009A9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for GameOverlayTabViewBody(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_100099C44(a1, v10, v5, v7, a2);
}

unint64_t sub_10009AAE4()
{
  result = qword_100131040;
  if (!qword_100131040)
  {
    sub_100005144(&qword_100131030, &qword_1000ED3D8);
    sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar, &unk_1000EC978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131040);
  }

  return result;
}

uint64_t sub_10009ABA0(uint64_t a1)
{
  v2 = type metadata accessor for OverlayTabBar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009ABFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009AC2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009ACE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v10 = v1;
  v9 = *(v0 + 24);
  v11 = v9;
  v12 = v2;
  v3 = type metadata accessor for GameOverlayTabViewBody(0, &v10);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80));
  v5 = type metadata accessor for Binding();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    (*(*(v1 - 8) + 8))(v4 + *(v5 + 32), v1);
  }

  (*(*(v9 - 8) + 8))(v4 + *(v3 + 52));

  v6 = *(v3 + 64);
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_10009AF04(uint64_t a1, char *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for GameOverlayTabViewBody(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10009A040(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_10009AFC0()
{
  result = qword_100131050;
  if (!qword_100131050)
  {
    sub_100005144(&qword_100131018, &qword_1000ED3C0);
    sub_10009B078();
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131050);
  }

  return result;
}

unint64_t sub_10009B078()
{
  result = qword_100131058;
  if (!qword_100131058)
  {
    sub_100005144(&qword_100131048, &qword_1000ED3E0);
    type metadata accessor for OverlayTabBar(255);
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_100131030, &qword_1000ED3D8);
    v1 = sub_10009B630(&qword_100131038, type metadata accessor for OverlayTabBar, &unk_1000EC978);
    sub_100069844(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_10009AAE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131058);
  }

  return result;
}

unint64_t sub_10009B1E8()
{
  result = qword_100131060;
  if (!qword_100131060)
  {
    sub_100005144(&qword_100131028, &qword_1000ED3D0);
    sub_100005144(&qword_100131018, &qword_1000ED3C0);
    sub_10009AFC0();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012ED20, &qword_10012ED28, &unk_1000ED420, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131060);
  }

  return result;
}

uint64_t sub_10009B2F0()
{
  if (*(v0 + 56))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = type metadata accessor for GameOverlayTabViewBody(0, v5);
  return sub_1000987FC(v3, v1);
}

uint64_t sub_10009B364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayTabBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100131008, &qword_1000ED3A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B45C(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131068, &unk_1000ED430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009B4D4(uint64_t a1)
{
  sub_100005144(&qword_100130FF0, &qword_1000ED398);
  sub_10009A7C4();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  sub_100005144(&qword_100131010, &qword_1000ED3A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  sub_10008E268(WitnessTable, v1, v2);
  return swift_getWitnessTable();
}

__n128 sub_10009B624(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10009B630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10009B690()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = &_swiftEmptyDictionarySingleton;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10009B73C(uint64_t a1)
{
  v1 = type metadata accessor for RemoteAlertHandleObserver();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = &_swiftEmptyDictionarySingleton;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, "init");
  qword_100135CA8 = result;
  return result;
}

uint64_t sub_10009B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v6 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_10009B864, 0, 0);
}

uint64_t sub_10009B864()
{
  v1 = *(v0 + 312);
  sub_1000035B4(v1 + 24, v0 + 176, &qword_100131118, &unk_1000ED6E0);
  if (!*(v0 + 200))
  {
    sub_100005688(v0 + 176, &qword_100131118, &unk_1000ED6E0);
LABEL_7:
    sub_1000035B4(v1 + 24, v0 + 208, &qword_100131118, &unk_1000ED6E0);
    if (*(v0 + 232))
    {
      sub_100002B38(&qword_100131130, &qword_1000EF000);
      if (swift_dynamicCast())
      {
        v18 = *(v0 + 312);
        v19 = *(v0 + 296);
        v20 = [objc_allocWithZone(NSError) initWithDomain:GKErrorDomain code:2 userInfo:0];
        [v19 didFinishOnboardingWithError:v20];

        v21 = *(v18 + 144);
        v22 = *(v18 + 152);

        v10 = sub_1000DFEF0(6u, v21, v22);
        v12 = v23;
LABEL_18:
        swift_unknownObjectRelease();

        goto LABEL_21;
      }
    }

    else
    {
      sub_100005688(v0 + 208, &qword_100131118, &unk_1000ED6E0);
    }

    goto LABEL_11;
  }

  sub_100002B38(&qword_100131138, &qword_1000ED598);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  sub_100011E2C();
  v4.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  isa = v4.super.super.isa;
  v6 = *v3;
  if (*v3 != _TtC13GameOverlayUI26DashboardConnectionContext)
  {
    if (v6 == _TtC13GameOverlayUI28AccessPointConnectionContext)
    {
      [v2 isPresentingDashboardFromAccessPoint:v4.super.super.isa];
      v24 = BSValueWithRect();
      if (!v24)
      {
        __break(1u);
        return _swift_task_switch(v24, v25, v26);
      }

      v27 = v24;
      v28 = *(v0 + 312);
      [v2 updateAccessPointFrameCoordinates:v24];

      v29 = *(v28 + 144);
      v30 = *(v28 + 152);

      v31 = 0;
      goto LABEL_17;
    }

    if (v6 == _TtC13GameOverlayUI29InGameBannerConnectionContext)
    {
      v32 = *(v0 + 312);
      v29 = *(v32 + 144);
      v30 = *(v32 + 152);

      v31 = 1;
LABEL_17:
      v10 = sub_1000DFEF0(v31, v29, v30);
      v12 = v33;

      goto LABEL_18;
    }

    swift_unknownObjectRelease();
LABEL_11:
    v10 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v40 = v4.super.super.isa;
  v7 = *(v0 + 312);
  [v2 didDismissDashboard];
  v8 = *(v7 + 144);
  v9 = *(v7 + 152);

  v10 = sub_1000DFEF0(2u, v8, v9);
  v12 = v11;

  swift_beginAccess();
  sub_1000035B4(v7 + 64, v0 + 136, &unk_100131120, &unk_1000EAAF0);
  v13 = *(v0 + 160);
  if (v13)
  {
    v14 = *(v0 + 168);
    v15 = sub_10002D754((v0 + 136), *(v0 + 160));
    v16 = *(v13 - 8);
    v17 = swift_task_alloc();
    (*(v16 + 16))(v17, v15, v13);
    sub_100005688(v0 + 136, &unk_100131120, &unk_1000EAAF0);
    (*(v14 + 16))(v13, v14);
    (*(v16 + 8))(v17, v13);
  }

  else
  {
    sub_100005688(v0 + 136, &unk_100131120, &unk_1000EAAF0);
  }

  v34 = *(v0 + 336);
  v35 = *(v0 + 344);
  v36 = *(v0 + 328);
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v34 + 104))(v35, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v36);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v35, v36);
LABEL_21:
  *(v0 + 352) = v10;
  *(v0 + 360) = v12;
  v37 = *(v0 + 312);
  swift_beginAccess();
  sub_1000035B4(v37 + 64, v0 + 56, &unk_100131120, &unk_1000EAAF0);
  if (*(v0 + 80))
  {
    sub_10003FB38((v0 + 56), v0 + 16);
    if (qword_10012CC38 != -1)
    {
      swift_once();
    }

    v25 = qword_100135CD8;
    *(v0 + 368) = qword_100135CD8;
    v24 = sub_10009BE70;
    v26 = 0;

    return _swift_task_switch(v24, v25, v26);
  }

  sub_100005688(v0 + 56, &unk_100131120, &unk_1000EAAF0);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10009BE70()
{
  v1 = v0[46];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_10002D754(v0 + 2, v2);
  sub_1000CFE50(v4, 1, v1, v2, v3);

  return _swift_task_switch(sub_10009BF00, 0, 0);
}

uint64_t sub_10009BF00()
{
  if (v0[45])
  {
    v1 = v0[46];
    v2 = sub_10009C014;
LABEL_5:

    return _swift_task_switch(v2, v1, 0);
  }

  sub_10002E8A8((v0 + 2), (v0 + 12));
  sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  type metadata accessor for RemoteAlertGameModeBannerContext(0);
  if (swift_dynamicCast())
  {
    v3 = v0[46];

    v2 = sub_10009C180;
    v1 = v3;
    goto LABEL_5;
  }

  sub_10002E6CC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009C014()
{
  sub_1000C6540(*(v0 + 352), *(v0 + 360));

  return _swift_task_switch(sub_10009C08C, 0, 0);
}

uint64_t sub_10009C08C()
{
  sub_10002E8A8((v0 + 2), (v0 + 12));
  sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  type metadata accessor for RemoteAlertGameModeBannerContext(0);
  if (swift_dynamicCast())
  {
    v1 = v0[46];

    return _swift_task_switch(sub_10009C180, v1, 0);
  }

  else
  {
    sub_10002E6CC(v0 + 2);

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10009C180()
{
  sub_1000C75A8();

  return _swift_task_switch(sub_10009C1E8, 0, 0);
}

uint64_t sub_10009C1E8()
{
  sub_10002E6CC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

double sub_10009C254(void *a1)
{
  v2 = v1;
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RemoteAlertHandle did deactivate.", v10, 2u);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;

  v13 = a1;
  sub_100014BBC(0, 0, v6, &unk_1000ED5A8, v12);

  return result;
}

uint64_t sub_10009C424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009C4C4, a4, 0);
}

uint64_t sub_10009C4C4()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = sub_1000E106C(v1);
  swift_endAccess();
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[7];
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v2;
      v6[5] = v3;
      v7 = v3;

      sub_100014BBC(0, 0, v4, &unk_1000ED5B0, v6);
    }
  }

  v8 = v0[1];

  return v8();
}

double sub_10009C65C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v12 + 4) = v14;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "RemoteAlertHandle did invalidate. Error: %@", v12, 0xCu);
    sub_100005688(v13, &qword_100131110, &unk_1000EC870);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v3;
  v17[5] = a1;

  v18 = a1;
  sub_100014BBC(0, 0, v8, &unk_1000ED568, v17);

  return result;
}

uint64_t sub_10009C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009C954, a4, 0);
}

uint64_t sub_10009C954()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = sub_1000E106C(v1);
  swift_endAccess();
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[7];
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v2;
      v6[5] = v3;
      v7 = v3;

      sub_100014BBC(0, 0, v4, &unk_1000ED580, v6);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10009CB38(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_10009CB6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10009C8B4(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10009B7A4(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10009C424(a1, v4, v5, v7, v6);
}

uint64_t sub_10009CDAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009CEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsPipeline();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointAnchoring();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10009D034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsPipeline();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointAnchoring();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessPointPageView(uint64_t a1)
{
  result = qword_1001311A8;
  if (!qword_1001311A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009D1A4(uint64_t a1)
{
  sub_10009D320(319);
  if (v1 <= 0x3F)
  {
    sub_10009D378();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricsPipeline();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessPointAnchoring();
        if (v4 <= 0x3F)
        {
          sub_10009D448(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10009D3E4(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GameDashboardLaunchContext();
              if (v7 <= 0x3F)
              {
                sub_10009D448(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for BaseObjectGraph();
                  if (v9 <= 0x3F)
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

void sub_10009D320(uint64_t a1)
{
  if (!qword_10012CED0)
  {
    type metadata accessor for RemoteAlertAccessPointContext(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10012CED0);
    }
  }
}

unint64_t sub_10009D378()
{
  result = qword_1001311B8;
  if (!qword_1001311B8)
  {
    type metadata accessor for AccessPointContainer();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1001311B8);
  }

  return result;
}

void sub_10009D3E4(uint64_t a1)
{
  if (!qword_10012E3D8)
  {
    sub_100005144(&qword_10012E0C0, &qword_1000EA820);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10012E3D8);
    }
  }
}

void sub_10009D448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10009D4B4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_100002B38(&qword_100131208, &qword_1000ED680);
  __chkstk_darwin(v37);
  v33 = v28 - v2;
  v34 = type metadata accessor for IntentViewConfiguration();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v28 - v5;
  v7 = type metadata accessor for AccessPointPageView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = sub_100002B38(&qword_100131210, &qword_1000ED688);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  __chkstk_darwin(v14);
  v30 = v28 - v16;
  sub_1000A151C(v1, v13, type metadata accessor for AccessPointPageView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = swift_allocObject();
  sub_1000A14B4(v13, v29 + v17, type metadata accessor for AccessPointPageView);
  sub_1000A151C(v1, v10, type metadata accessor for AccessPointPageView);
  v18 = swift_allocObject();
  sub_1000A14B4(v10, v18 + v17, type metadata accessor for AccessPointPageView);
  v28[1] = static Transaction._loading.getter();
  IntentViewConfiguration.init()();
  v19 = sub_10002D754((v1 + 16), *(v1 + 40));
  v20 = __chkstk_darwin(v19);
  (*(v22 + 16))(v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  type metadata accessor for AccessPointContainer();
  AnyIntentModel.init<A>(_:)();
  v23 = v32;
  v24 = v34;
  (*(v32 + 16))(v31, v6, v34);
  sub_100002B38(&qword_100131218, &qword_1000ED690);
  sub_1000A0F38();
  sub_1000A0F9C();
  v25 = v30;
  IntentView.init(what:transaction:configuration:working:failed:content:)();
  (*(v23 + 8))(v6, v24);
  sub_1000A13FC(&qword_100131278, &type metadata accessor for AccessPointContainer, &protocol conformance descriptor for AccessPointContainer);
  v26 = v35;
  IntentView<>.pageRenderMetrics(onTopic:pipeline:)();
  return (*(v36 + 8))(v25, v26);
}

uint64_t sub_10009D9DC@<X0>(uint64_t *a2@<X8>)
{
  result = static Color.clear.getter();
  *a2 = result;
  return result;
}

void sub_10009DA04(uint64_t a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100011F80(v1, qword_100135C88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Jet View with Startup coordinator failed with error: %@", v3, 0xCu);
    sub_100005688(v4, &qword_100131110, &unk_1000EC870);
  }
}

uint64_t sub_10009DB60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v58 = sub_100002B38(&qword_100131280, &qword_1000ED6B8);
  __chkstk_darwin(v58);
  v59 = v44 - v5;
  v6 = sub_100002B38(&qword_100131288, &unk_1000ED6C0);
  __chkstk_darwin(v6 - 8);
  v53 = v44 - v7;
  v8 = sub_100002B38(&qword_10012DC70, &qword_1000E9E48);
  __chkstk_darwin(v8 - 8);
  v52 = v44 - v9;
  v10 = type metadata accessor for PageID();
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AutomationSemantics();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100002B38(&qword_100131248, &qword_1000ED6A8);
  __chkstk_darwin(v54);
  v17 = v44 - v16;
  v55 = sub_100002B38(&qword_100131240, &qword_1000ED6A0);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = v44 - v18;
  v57 = sub_100002B38(&qword_100131290, &qword_1000ED6D0);
  v51 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = v44 - v19;
  v20 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  __chkstk_darwin(v20);
  v56 = v44 - v21;
  v22 = sub_100002B38(&qword_100131298, &qword_1000ED6D8);
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  v25 = a1;
  v26 = a2;
  if (sub_10009E3E4())
  {
    swift_storeEnumTagMultiPayload();
    sub_1000A1028();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v44[2] = v22;
    v44[3] = v20;
    v28 = *(AccessPointContainer.items.getter() + 16);

    if (v28)
    {
      v44[1] = v26;
      sub_10009EC80(v25, v26, v17);
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      AccessPointContainer.id.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v45 + 8))(v12, v10);
      memset(v61, 0, 32);
      static AutomationSemantics.page(name:id:)();

      sub_100005688(v61, &qword_100131118, &unk_1000ED6E0);
      v29 = sub_1000A1134();
      v30 = v48;
      v31 = v54;
      View.automationSemantics(_:)();
      (*(v46 + 8))(v15, v47);
      sub_100005688(v17, &qword_100131248, &qword_1000ED6A8);
      v32 = v52;
      AccessPointContainer.pageMetrics.getter();
      v33 = type metadata accessor for PageMetrics();
      (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      type metadata accessor for AccessPointPageView(0);
      v34 = type metadata accessor for ClickLocationConfiguration();
      v35 = v53;
      (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
      *&v61[0] = v31;
      *(&v61[0] + 1) = v29;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v37 = v50;
      v38 = v55;
      View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)();
      sub_100005688(v35, &qword_100131288, &unk_1000ED6C0);
      sub_100005688(v32, &qword_10012DC70, &qword_1000E9E48);
      (*(v49 + 8))(v30, v38);
      v39 = v51;
      v40 = v57;
      (*(v51 + 16))(v59, v37, v57);
      swift_storeEnumTagMultiPayload();
      *&v61[0] = v38;
      *(&v61[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v41 = v56;
      _ConditionalContent<>.init(storage:)();
      (*(v39 + 8))(v37, v40);
    }

    else
    {
      sub_1000A0394();
      swift_storeEnumTagMultiPayload();
      v42 = sub_1000A1134();
      *&v61[0] = v54;
      *(&v61[0] + 1) = v42;
      v43 = swift_getOpaqueTypeConformance2();
      *&v61[0] = v55;
      *(&v61[0] + 1) = v43;
      swift_getOpaqueTypeConformance2();
      v41 = v56;
      _ConditionalContent<>.init(storage:)();
    }

    sub_1000A12A4(v41, v24);
    swift_storeEnumTagMultiPayload();
    sub_1000A1028();
    _ConditionalContent<>.init(storage:)();
    return sub_1000A1314(v41);
  }
}

uint64_t sub_10009E3E4()
{
  v1 = type metadata accessor for AccessPointPageView(0);
  v63 = *(v1 - 1);
  __chkstk_darwin(v1);
  v64 = v2;
  v65 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v3 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for AccessPointAnchoring();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[9];
  v66 = v0;
  v13 = (v0 + v12);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v68) = *v13;
  v69 = v15;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  result = v67;
  if (v67 == 1)
  {
    v59 = 1;
    LOBYTE(v68) = v14;
    v69 = v15;
    LOBYTE(v67) = 0;
    State.wrappedValue.setter();
    v17 = *(AccessPointContainer.items.getter() + 16);

    v18 = v66;
    if (v17 >= 3)
    {
      sub_1000035B4(v66 + v1[10], &v68, &unk_100131120, &unk_1000EAAF0);
      if (v70)
      {
        sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
        type metadata accessor for RemoteAlertAccessPointContext(0);
        if (swift_dynamicCast())
        {
          v19 = v67;
          if (*(v67 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) == 1)
          {
            v20 = AccessPointContainer.items.getter();
            v21 = *(AccessPointContainer.items.getter() + 16);

            if (v21)
            {
              v22 = *(v20 + 16);
              if (v22 >= v21)
              {
                if (v22 == v21 - 1)
                {
LABEL_9:
                  v23 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
                  swift_beginAccess();
                  v24 = *(v19 + v23);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v19 + v23) = v24;
                  v58 = v20;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v24 = sub_1000CC1CC(0, v24[2] + 1, 1, v24);
                    *(v19 + v23) = v24;
                  }

                  v27 = v24[2];
                  v26 = v24[3];
                  if (v27 >= v26 >> 1)
                  {
                    v24 = sub_1000CC1CC((v26 > 1), v27 + 1, 1, v24);
                  }

                  v24[2] = v27 + 1;
                  v24[v27 + 4] = v58;
                  *(v19 + v23) = v24;
                  swift_endAccess();
                  v18 = v66;
                  v28 = *v66;
                  v29 = *(v66 + 8);

                  if ((v29 & 1) == 0)
                  {
                    static os_log_type_t.fault.getter();
                    v30 = static Log.runtimeIssuesLog.getter();
                    os_log(_:dso:log:_:_:)();

                    v18 = v66;
                    EnvironmentValues.init()();
                    swift_getAtKeyPath();

                    (*(v60 + 8))(v11, v9);
                    v28 = v68;
                  }

                  swift_getKeyPath();
                  v68 = v28;
                  sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v31 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
                  swift_beginAccess();
                  (*(v61 + 16))(v8, v28 + v31, v62);

                  result = sub_1000BCC80(v8);
                  v32 = *(v19 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion);
                  v33 = __OFADD__(v32, 1);
                  v34 = v32 + 1;
                  if (v33)
                  {
                    __break(1u);
                    return result;
                  }

                  *(v19 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = v34;
                  v35 = (v18 + v1[12]);
                  v36 = v35[1];
                  v37 = v63;
                  if (!v36)
                  {

                    v39 = v65;
                    goto LABEL_23;
                  }

                  v62 = *v35;
                  v38 = type metadata accessor for TaskPriority();
                  (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
                  v39 = v65;
                  sub_1000A151C(v18, v65, type metadata accessor for AccessPointPageView);
                  type metadata accessor for MainActor();

                  v40 = static MainActor.shared.getter();
                  v41 = (*(v37 + 80) + 48) & ~*(v37 + 80);
                  v42 = swift_allocObject();
                  v42[2] = v40;
                  v43 = v62;
                  v42[3] = &protocol witness table for MainActor;
                  v42[4] = v43;
                  v42[5] = v36;
                  sub_1000A14B4(v39, v42 + v41, type metadata accessor for AccessPointPageView);
                  v44 = v42;
                  v18 = v66;
                  sub_100014BBC(0, 0, v5, &unk_1000ED7E0, v44);

                  goto LABEL_22;
                }

LABEL_28:
                sub_1000A1968(v20, v20 + 32, 1, (2 * v21) | 1);
                v56 = v55;

                v20 = v56;
                goto LABEL_9;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_100005688(&v68, &unk_100131120, &unk_1000EAAF0);
      }
    }

    v45 = (v18 + v1[12]);
    v46 = v45[1];
    v39 = v65;
    v37 = v63;
    if (!v46)
    {
LABEL_23:
      v51 = type metadata accessor for TaskPriority();
      (*(*(v51 - 8) + 56))(v5, 1, 1, v51);
      sub_1000A151C(v18, v39, type metadata accessor for AccessPointPageView);
      type metadata accessor for MainActor();
      v52 = static MainActor.shared.getter();
      v53 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v52;
      *(v54 + 24) = &protocol witness table for MainActor;
      sub_1000A14B4(v39, v54 + v53, type metadata accessor for AccessPointPageView);
      sub_100014EBC(0, 0, v5, &unk_1000ED790, v54);

      return v59;
    }

    v47 = *v45;
    v48 = type metadata accessor for TaskPriority();
    (*(*(v48 - 8) + 56))(v5, 1, 1, v48);
    type metadata accessor for MainActor();

    v49 = static MainActor.shared.getter();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = &protocol witness table for MainActor;
    v50[4] = v47;
    v50[5] = v46;
    sub_100014BBC(0, 0, v5, &unk_1000ED7A0, v50);
LABEL_22:

    goto LABEL_23;
  }

  return result;
}

id sub_10009EC80@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a1;
  v146 = a3;
  v4 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  __chkstk_darwin(v4 - 8);
  v130 = &v124 - v5;
  v145 = type metadata accessor for AccessPointAnimationView(0);
  __chkstk_darwin(v145);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v134 = &v124 - v9;
  v143 = sub_100002B38(&qword_1001312A0, &qword_1000ED6F0);
  __chkstk_darwin(v143);
  v144 = &v124 - v10;
  v125 = type metadata accessor for AccessPointUseCase();
  v129 = *(v125 - 8);
  __chkstk_darwin(v125);
  v141 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = &v124 - v13;
  v131 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  __chkstk_darwin(v131);
  v132 = &v124 - v14;
  v15 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v15 - 8);
  v133 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v124 - v18;
  __chkstk_darwin(v19);
  v149 = &v124 - v20;
  v21 = type metadata accessor for AccessPointAnchoring();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v135 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v150 = &v124 - v25;
  __chkstk_darwin(v26);
  v127 = &v124 - v27;
  __chkstk_darwin(v28);
  v148 = &v124 - v29;
  v153 = type metadata accessor for AccessPointContainer();
  v30 = *(v153 - 8);
  __chkstk_darwin(v153);
  v126 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v152 = &v124 - v33;
  __chkstk_darwin(v34);
  v36 = &v124 - v35;
  v151 = type metadata accessor for AccessPointShaderTransitionView(0);
  __chkstk_darwin(v151);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v128 = &v124 - v40;
  result = [objc_opt_self() shared];
  if (result)
  {
    v42 = result;
    v43 = [result accessPointCustomTransition];

    v138 = v30;
    v44 = *(v30 + 16);
    v45 = (v22 + 16);
    v147 = v22;
    v137 = v44;
    v136 = v22 + 16;
    if (v43)
    {
      v44(v36, v139, v153);
      v46 = type metadata accessor for AccessPointPageView(0);
      v47 = *v45;
      (*v45)(v148, a2 + v46[8], v21);
      sub_10009FF04(v149);
      v48 = *(a2 + v46[11]);
      v49 = *(a2 + v46[13]);
      *v38 = 0;
      type metadata accessor for RemoteAlertAccessPointContext(0);
      sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);

      *(v38 + 1) = Environment.init<A>(_:)();
      v38[16] = v50 & 1;
      *(v38 + 24) = xmmword_1000ED5C0;
      LOBYTE(v154) = 0;
      State.init(wrappedValue:)();
      v51 = *(&v157 + 1);
      v38[40] = v157;
      *(v38 + 6) = v51;
      *&v154 = 0;
      State.init(wrappedValue:)();
      *(v38 + 56) = v157;
      LOBYTE(v154) = 0;
      State.init(wrappedValue:)();
      v52 = *(&v157 + 1);
      v38[72] = v157;
      *(v38 + 10) = v52;
      LOBYTE(v154) = 0;
      State.init(wrappedValue:)();
      v53 = *(&v157 + 1);
      v38[88] = v157;
      *(v38 + 12) = v53;
      type metadata accessor for CGPoint(0);
      v154 = 0uLL;
      State.init(wrappedValue:)();
      v54 = v158;
      *(v38 + 104) = v157;
      *(v38 + 15) = v54;
      LOBYTE(v154) = 0;
      State.init(wrappedValue:)();
      v55 = *(&v157 + 1);
      v38[128] = v157;
      *(v38 + 17) = v55;
      v56 = v21;
      v57 = v151;
      v58 = *(v151 + 64);
      v59 = type metadata accessor for Game();
      v60 = *(*(v59 - 8) + 56);
      LODWORD(v152) = 1;
      v60(&v38[v58], 1, 1, v59);
      v137(&v38[v57[17]], v36, v153);
      sub_1000A138C(v149, &v38[v58]);
      *&v38[v57[18]] = v48;
      *&v38[v57[19]] = v49;
      v61 = v57[15];
      v62 = v56;
      v63 = &v38[v61];
      v47(&v38[v61], v148, v56);
      v64 = v131;
      *&v63[*(v131 + 28)] = 0;
      AccessPointContainer.useCase.getter();
      v65 = v129;
      v66 = v125;
      (*(v129 + 104))(v141, enum case for AccessPointUseCase.accessPointOnly(_:), v125);
      sub_1000A13FC(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v157 != v154)
      {
        LODWORD(v152) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v67 = *(v65 + 8);
      v67(v141, v66);
      v67(v140, v66);
      sub_100005688(v149, &qword_100132410, &unk_1000E9F30);
      (*(v138 + 8))(v36, v153);

      v68 = v147;
      v69 = v127;
      if (v152)
      {
        v70 = *(v147 + 32);
        v70(v127, v148, v62);
      }

      else
      {
        (*(v147 + 8))(v148, v62);
        (*(v68 + 104))(v69, enum case for AccessPointAnchoring.topCentered(_:), v62);
        v70 = *(v68 + 32);
      }

      v111 = v132;
      *&v132[*(v64 + 28)] = 0;
      v70(v111, v69, v62);
      sub_1000A1444(v111, &v38[*(v151 + 56)]);
      v112 = v38;
      v113 = v128;
      sub_1000A14B4(v112, v128, type metadata accessor for AccessPointShaderTransitionView);
      sub_1000A151C(v113, v144, type metadata accessor for AccessPointShaderTransitionView);
      swift_storeEnumTagMultiPayload();
      sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView, &unk_1000E9268);
      sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView, &unk_1000E9F5C);
      _ConditionalContent<>.init(storage:)();
      v114 = type metadata accessor for AccessPointShaderTransitionView;
    }

    else
    {
      v44(v152, v139, v153);
      v71 = type metadata accessor for AccessPointPageView(0);
      v72 = a2 + v71[8];
      v148 = *v45;
      (v148)(v150, v72, v21);
      v73 = v142;
      sub_10009FF04(v142);
      v74 = *(a2 + v71[11]);
      v75 = *(a2 + v71[13]);
      *v7 = 0;
      type metadata accessor for RemoteAlertAccessPointContext(0);
      sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
      v149 = v21;
      v141 = v74;

      *(v7 + 1) = Environment.init<A>(_:)();
      v7[16] = v76 & 1;
      v77 = v145;
      v78 = *(v145 + 24);
      *&v7[v78] = swift_getKeyPath();
      sub_100002B38(&qword_100132570, &unk_1000E9C70);
      swift_storeEnumTagMultiPayload();
      v79 = &v7[v77[8]];
      LOBYTE(v154) = 0;
      State.init(wrappedValue:)();
      v80 = *(&v157 + 1);
      *v79 = v157;
      *(v79 + 1) = v80;
      v81 = &v7[v77[9]];
      if (qword_10012CB70 != -1)
      {
        swift_once();
      }

      v82 = qword_100135BA8;
      swift_getKeyPath();
      *&v157 = v82;
      sub_1000A13FC(&qword_10012DC68, type metadata accessor for GameModeNotifier, &unk_1000E9BB4);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LOBYTE(v154) = *(v82 + 16);
      State.init(wrappedValue:)();
      v83 = *(&v157 + 1);
      *v81 = v157;
      *(v81 + 1) = v83;
      v84 = &v7[v77[10]];
      *&v154 = 0x3FF0000000000000;
      State.init(wrappedValue:)();
      v85 = *(&v157 + 1);
      *v84 = v157;
      *(v84 + 1) = v85;
      v86 = v77[11];
      type metadata accessor for GameOverlayDashboardVisibilityMonitor();
      swift_allocObject();
      *&v7[v86] = GameOverlayDashboardVisibilityMonitor.init()();
      v87 = v77[12];
      v88 = type metadata accessor for Game();
      v89 = *(v88 - 8);
      (*(v89 + 56))(&v7[v87], 1, 1, v88);
      v90 = &v7[v77[15]];
      v91 = type metadata accessor for AccessPointHighlight();
      v92 = v130;
      (*(*(v91 - 8) + 56))(v130, 1, 1, v91);
      static AccessPointHighlight.cornerRadii(highlight:)();
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v100 = v99;
      sub_100005688(v92, &qword_10012DC78, &unk_1000E9E50);
      *&v154 = v94;
      *(&v154 + 1) = v96;
      v155 = v98;
      v156 = v100;
      State.init(wrappedValue:)();
      v101 = v159;
      v102 = v158;
      *v90 = v157;
      *(v90 + 1) = v102;
      *(v90 + 4) = v101;
      sub_1000A138C(v73, &v7[v87]);
      *&v7[v77[13]] = v141;
      *&v7[v77[14]] = v75;
      v103 = v126;
      v137(v126, v152, v153);
      v104 = v135;
      (v148)(v135, v150, v149);
      type metadata accessor for AccessPointModel(0);
      swift_allocObject();
      v105 = sub_10001651C(v103, v104);
      v106 = &v7[v77[7]];
      *&v154 = v105;
      State.init(wrappedValue:)();
      v107 = v157;
      *v106 = v157;
      v157 = v107;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v108 = v133;
      sub_1000035B4(v73, v133, &qword_100132410, &unk_1000E9F30);
      if ((*(v89 + 48))(v108, 1, v88) == 1)
      {
        sub_100005688(v108, &qword_100132410, &unk_1000E9F30);
        v109 = 0;
        v110 = 0;
      }

      else
      {
        v115 = Game.bundleID.getter();
        v117 = v116;
        (*(v89 + 8))(v108, v88);
        v110 = v117;
        v109 = v115;
      }

      v118 = v138;
      sub_1000160D4(v109, v110);

      v119 = *(AccessPointContainer.items.getter() + 16);

      v120 = v149;
      v121 = v153;
      v122 = v142;
      if (v119 >= 2)
      {
        v157 = v107;
        State.wrappedValue.getter();
        v123 = v135;
        (*(v147 + 104))(v135, enum case for AccessPointAnchoring.topCentered(_:), v120);
        sub_10001590C(v123);
      }

      sub_100005688(v122, &qword_100132410, &unk_1000E9F30);
      (*(v147 + 8))(v150, v120);
      (*(v118 + 8))(v152, v121);
      v113 = v134;
      sub_1000A14B4(v7, v134, type metadata accessor for AccessPointAnimationView);
      sub_1000A151C(v113, v144, type metadata accessor for AccessPointAnimationView);
      swift_storeEnumTagMultiPayload();
      sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView, &unk_1000E9268);
      sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView, &unk_1000E9F5C);
      _ConditionalContent<>.init(storage:)();
      v114 = type metadata accessor for AccessPointAnimationView;
    }

    return sub_1000A1584(v113, v114);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009FF04@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for InGameBannerRequiredData();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&qword_1001312A8, &qword_1000ED760);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for InGameBannerPageIntent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_1001312B0, &qword_1000ED768);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for AccessPointPageIntent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E8A8(v1 + 16, v33);
  sub_100002B38(&qword_1001312B8, &unk_1000ED770);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    (*(v15 + 32))(v17, v13, v14);
    v20 = v32;
    AccessPointPageIntent.game.getter();
    (*(v15 + 8))(v17, v14);
    v21 = type metadata accessor for Game();
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v23 = v32;
    v19(v13, 1, 1, v14);
    sub_100005688(v13, &qword_1001312B0, &qword_1000ED768);
    sub_10002E8A8(v1 + 16, v33);
    v24 = swift_dynamicCast();
    v25 = *(v8 + 56);
    if (v24)
    {
      v25(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      v26 = v29;
      InGameBannerPageIntent.requiredData.getter();
      InGameBannerRequiredData.game.getter();
      (*(v30 + 8))(v26, v31);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v25(v6, 1, 1, v7);
      sub_100005688(v6, &qword_1001312A8, &qword_1000ED760);
      v27 = type metadata accessor for Game();
      return (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    }
  }
}

void sub_1000A0394()
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100011F80(v0, qword_100135C88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "AccessPointContainer did not contain any items to show", v2, 2u);
  }
}

uint64_t sub_1000A047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v6[9] = swift_task_alloc();
  v7 = type metadata accessor for EnvironmentValues();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[14] = v9;
  v6[15] = v8;

  return _swift_task_switch(sub_1000A05AC, v9, v8);
}

uint64_t sub_1000A05AC()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = qword_100135CD8;
  v0[16] = qword_100135CD8;
  v3 = *v1;
  v4 = *(v1 + 8);

  if ((v4 & 1) == 0)
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[5];
  }

  v0[17] = v3;

  return _swift_task_switch(sub_1000A0700, v2, 0);
}

uint64_t sub_1000A0700()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_1000E0F14(v3, v2, v1);
  sub_100005688(v1, &qword_10012DC30, &qword_1000EEC90);
  swift_endAccess();

  v4 = v0[14];
  v5 = v0[15];

  return _swift_task_switch(sub_1000A07C8, v4, v5);
}

uint64_t sub_1000A07C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000A08D4, v7, v6);
}

uint64_t sub_1000A08D4()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 56) = qword_100135CD8;

  return _swift_task_switch(sub_1000A096C, v1, 0);
}

uint64_t sub_1000A096C()
{
  sub_1000C88DC(v0[2], v0[3]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1000268C8, v1, v2);
}

uint64_t sub_1000A09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A0AC8, v7, v6);
}

uint64_t sub_1000A0AC8()
{
  v1 = *(v0 + 40);

  v2 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  swift_getKeyPath();
  *(v0 + 24) = v2;
  sub_1000A13FC(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong invalidate];
  }

  **(v0 + 32) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

void sub_1000A0C94(uint64_t a1)
{
  type metadata accessor for AccessPointPageView(0);

  sub_10009DA04(a1);
}

uint64_t sub_1000A0D2C()
{
  v1 = type metadata accessor for AccessPointPageView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_10002E6CC((v2 + 16));

  v3 = v1[7];
  v4 = type metadata accessor for MetricsPipeline();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = type metadata accessor for AccessPointAnchoring();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = (v2 + v1[10]);
  if (v7[3])
  {
    sub_10002E6CC(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A0EB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009DB60(a1, v6, a2);
}

unint64_t sub_1000A0F38()
{
  result = qword_100131220;
  if (!qword_100131220)
  {
    sub_100005144(&qword_100131208, &qword_1000ED680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131220);
  }

  return result;
}

unint64_t sub_1000A0F9C()
{
  result = qword_100131228;
  if (!qword_100131228)
  {
    sub_100005144(&qword_100131218, &qword_1000ED690);
    sub_1000A1028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131228);
  }

  return result;
}

unint64_t sub_1000A1028()
{
  result = qword_100131230;
  if (!qword_100131230)
  {
    sub_100005144(&qword_100131238, &qword_1000ED698);
    sub_100005144(&qword_100131240, &qword_1000ED6A0);
    sub_100005144(&qword_100131248, &qword_1000ED6A8);
    sub_1000A1134();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131230);
  }

  return result;
}

unint64_t sub_1000A1134()
{
  result = qword_100131250;
  if (!qword_100131250)
  {
    sub_100005144(&qword_100131248, &qword_1000ED6A8);
    sub_1000A11B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131250);
  }

  return result;
}

unint64_t sub_1000A11B8()
{
  result = qword_100131258;
  if (!qword_100131258)
  {
    sub_100005144(&qword_100131260, &qword_1000ED6B0);
    sub_1000A13FC(&qword_100131268, type metadata accessor for AccessPointShaderTransitionView, &unk_1000E9268);
    sub_1000A13FC(&qword_100131270, type metadata accessor for AccessPointAnimationView, &unk_1000E9F5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131258);
  }

  return result;
}

uint64_t sub_1000A12A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1314(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131238, &qword_1000ED698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A138C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A13FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A1444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A14B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A1584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A15E4()
{
  v1 = type metadata accessor for AccessPointPageView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  sub_10002E6CC((v0 + v2 + 16));

  v3 = v1[7];
  v4 = type metadata accessor for MetricsPipeline();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[8];
  v6 = type metadata accessor for AccessPointAnchoring();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  v7 = (v0 + v2 + v1[10]);
  if (v7[3])
  {
    sub_10002E6CC(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A1778(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointPageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000A09D4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000A1868()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A18A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000A083C(a1, v4, v5, v7, v6);
}

void sub_1000A1968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100002B38(&qword_1001312C0, &qword_1000ED7F8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000A1A6C()
{
  v1 = type metadata accessor for AccessPointPageView(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  sub_10002E6CC((v0 + v2 + 16));

  v3 = v1[7];
  v4 = type metadata accessor for MetricsPipeline();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[8];
  v6 = type metadata accessor for AccessPointAnchoring();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  v7 = (v0 + v2 + v1[10]);
  if (v7[3])
  {
    sub_10002E6CC(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A1C08(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointPageView(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014BAC;

  return sub_1000A047C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000A1D14()
{
  sub_100005144(&qword_100131208, &qword_1000ED680);
  sub_100005144(&qword_100131218, &qword_1000ED690);
  sub_1000A0F38();
  sub_1000A0F9C();
  sub_1000A13FC(&qword_100131278, &type metadata accessor for AccessPointContainer, &protocol conformance descriptor for AccessPointContainer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A1E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v49 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v38 - v8;
  v9 = type metadata accessor for DashboardOverlayView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_100002B38(&qword_1001313B8, &unk_1000ED958);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  v19 = a1[1];
  v41 = *a1;
  v39 = v19;
  sub_1000AC6F0(a1, v15, type metadata accessor for DashboardOverlayView);
  v20 = *(v10 + 80);
  v21 = (v20 + 16) & ~v20;
  v40 = swift_allocObject();
  v45 = v15;
  sub_1000AB7F8(v15, v40 + v21, type metadata accessor for DashboardOverlayView);
  v48 = a1;
  sub_1000AC6F0(a1, v12, type metadata accessor for DashboardOverlayView);
  v42 = v20;
  v22 = swift_allocObject();
  sub_1000AB7F8(v12, v22 + v21, type metadata accessor for DashboardOverlayView);
  v23 = objc_opt_self();
  v24 = v39;

  v25 = [v23 standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v26 = (v18 + *(v16 + 56));
  *v26 = v41;
  v26[1] = v24;
  v27 = v40;
  *v18 = sub_1000AB2FC;
  v18[1] = v27;
  v18[2] = sub_1000482C4;
  v18[3] = 0;
  v18[4] = sub_1000AB600;
  v18[5] = v22;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  type metadata accessor for OverlayBootstrap(0);
  sub_1000AB720(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);

  v28 = v44;
  Bindable<A>.init(wrappedValue:)();
  v29 = v47;
  Bindable.wrappedValue.getter();
  v30 = *(v53 + 16);

  *(v18 + *(v16 + 52)) = v30;
  v31 = v43;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v32 = *(v46 + 8);
  v32(v31, v29);
  Bindable.wrappedValue.getter();
  sub_1000BB51C();

  v32(v28, v29);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v33 = v49;
  dispatch thunk of ZoomCoordinator.dashboardVisibility.getter();

  v34 = v45;
  sub_1000AC6F0(v48, v45, type metadata accessor for DashboardOverlayView);
  v35 = swift_allocObject();
  sub_1000AB7F8(v34, v35 + v21, type metadata accessor for DashboardOverlayView);
  sub_1000057D8(&qword_1001313C0, &qword_1001313B8, &unk_1000ED958, &unk_1000ECF98);
  sub_1000AB720(&qword_1001313C8, &type metadata accessor for ZoomCoordinator.DashboardVisibilityState, &protocol conformance descriptor for ZoomCoordinator.DashboardVisibilityState);
  v36 = v52;
  View.onChange<A>(of:initial:_:)();

  (*(v51 + 8))(v33, v36);
  return sub_100005688(v18, &qword_1001313B8, &unk_1000ED958);
}

uint64_t sub_1000A2480@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_100002B38(&qword_1001313D8, &qword_1000ED998);
  sub_1000A2640(a3, a1, a2, (a4 + *(v8 + 44)));
  v9 = static Alignment.center.getter();
  v11 = v10;
  v12 = static Color.clear.getter();
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = static SafeAreaRegions.all.getter();
  v17 = static Edge.Set.all.getter();
  v18 = (a3 + *(type metadata accessor for DashboardOverlayView(0) + 52));
  v19 = *v18;
  v20 = v18[1];
  v32 = v19;
  v33 = v20;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v21 = 1.0 - *&v27;
  *&v27 = v12;
  *(&v27 + 1) = sub_1000A45FC;
  *&v28 = 0;
  *(&v28 + 1) = v13;
  *&v29 = v15;
  *(&v29 + 1) = v16;
  LOBYTE(v30) = v17;
  *(&v30 + 1) = v21;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  v22 = (a4 + *(sub_100002B38(&qword_1001313E0, &qword_1000ED9A0) + 36));
  v23 = v30;
  v22[2] = v29;
  v22[3] = v23;
  v22[4] = v31;
  v24 = v28;
  *v22 = v27;
  v22[1] = v24;
  v32 = v12;
  v33 = sub_1000A45FC;
  v34 = 0;
  v35 = v13;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v21;
  v40 = v9;
  v41 = v11;
  sub_1000035B4(&v27, &v26, &qword_1001313E8, &qword_1000ED9A8);
  return sub_100005688(&v32, &qword_1001313E8, &qword_1000ED9A8);
}

uint64_t sub_1000A2640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v115 = a3;
  v130 = a4;
  v6 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v6 - 8);
  v128 = v99 - v7;
  v8 = type metadata accessor for DashboardOverlayView(0);
  v108 = *(v8 - 8);
  v109 = *(v108 + 64);
  __chkstk_darwin(v8);
  v106 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for BootstrapResult();
  v103 = *(v104 - 8);
  v105 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v101 = *(v107 - 8);
  __chkstk_darwin(v107);
  v12 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v13 - 8);
  v99[2] = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Dependency();
  v15 = *(v129 - 8);
  __chkstk_darwin(v129);
  v17 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100002B38(&qword_1001313F0, &qword_1000ED9B0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v100 = v99 - v18;
  v110 = sub_100002B38(&qword_1001313F8, &qword_1000ED9B8);
  __chkstk_darwin(v110);
  v114 = v99 - v19;
  v113 = sub_100002B38(&qword_100131400, &qword_1000ED9C0);
  __chkstk_darwin(v113);
  v118 = v99 - v20;
  v117 = sub_100002B38(&qword_100131408, &qword_1000ED9C8);
  __chkstk_darwin(v117);
  v120 = v99 - v21;
  v119 = sub_100002B38(&qword_100131410, &qword_1000ED9D0);
  __chkstk_darwin(v119);
  v123 = v99 - v22;
  v122 = sub_100002B38(&qword_100131418, &qword_1000ED9D8);
  __chkstk_darwin(v122);
  v125 = v99 - v23;
  v124 = sub_100002B38(&qword_100131420, &unk_1000ED9E0);
  __chkstk_darwin(v124);
  v127 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v121 = v99 - v26;
  __chkstk_darwin(v27);
  v126 = v99 - v28;
  v29 = objc_opt_self();
  v30 = [v29 currentDevice];
  v116 = [v30 userInterfaceIdiom];

  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v31 = (a1 + *(v8 + 48));
  v33 = *v31;
  v32 = v31[1];
  *&v137 = v33;
  *(&v137 + 1) = v32;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v99[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v15 + 8))(v17, v129);
  v129 = v8;
  v34 = a1;
  v99[0] = swift_unknownObjectWeakLoadStrong();
  (*(v101 + 104))(v12, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v107);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v35 = v103;
  v36 = v102;
  v37 = v104;
  (*(v103 + 16))(v102, a2, v104);
  v107 = v34;
  v38 = v106;
  sub_1000AC6F0(v34, v106, type metadata accessor for DashboardOverlayView);
  v39 = v35;
  v40 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v41 = (v105 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v108 + 80) + v41 + 8) & ~*(v108 + 80);
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v40, v36, v37);
  v44 = v115;
  *(v43 + v41) = v115;
  v45 = v100;
  v46 = v29;
  sub_1000AB7F8(v38, v43 + v42, type metadata accessor for DashboardOverlayView);
  type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  sub_1000AB720(&qword_10012E638, type metadata accessor for DashboardOverlayView.OverlayContentView, &unk_1000EDB40);
  v47 = v44;
  ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
  v48 = [v29 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if (v49)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = v114;
  (*(v111 + 32))(v114, v45, v112);
  v51 = (v50 + *(v110 + 36));
  v52 = v135;
  *v51 = v134;
  v51[1] = v52;
  v51[2] = v136;
  v53 = [v46 currentDevice];
  [v53 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v118;
  sub_100014830(v50, v118, &qword_1001313F8, &qword_1000ED9B8);
  v55 = (v54 + *(v113 + 36));
  v56 = v142;
  v55[4] = v141;
  v55[5] = v56;
  v55[6] = v143;
  v57 = v138;
  *v55 = v137;
  v55[1] = v57;
  v58 = v140;
  v55[2] = v139;
  v55[3] = v58;
  v59 = static Edge.Set.trailing.getter();
  v60 = [v46 currentDevice];
  v61 = [v60 userInterfaceIdiom];

  v62 = v107;
  v63 = v129;
  v64 = v128;
  v65 = v120;
  if (v61)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.iPadTrailingPadding.getter();
  }

  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_100014830(v54, v65, &qword_100131400, &qword_1000ED9C0);
  v74 = v65 + *(v117 + 36);
  *v74 = v59;
  *(v74 + 8) = v67;
  *(v74 + 16) = v69;
  *(v74 + 24) = v71;
  *(v74 + 32) = v73;
  *(v74 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v76 = [v46 currentDevice];
  v77 = [v76 userInterfaceIdiom];

  if (v77)
  {
    v78 = enum case for UserInterfaceSizeClass.compact(_:);
    v79 = type metadata accessor for UserInterfaceSizeClass();
    v80 = *(v79 - 8);
    (*(v80 + 104))(v64, v78, v79);
    (*(v80 + 56))(v64, 0, 1, v79);
  }

  else
  {
    sub_10007A224(v64);
  }

  v81 = v116 == 0;
  v82 = v116 != 0;
  v83 = v123;
  v84 = &v123[*(v119 + 36)];
  v85 = sub_100002B38(&qword_100131428, &qword_1000EDA20);
  sub_100014830(v64, v84 + *(v85 + 28), &qword_100132550, &qword_1000EC170);
  *v84 = KeyPath;
  sub_100014830(v65, v83, &qword_100131408, &qword_1000ED9C8);
  v86 = (v62 + *(v63 + 52));
  v88 = v86[1];
  v132 = *v86;
  v87 = v132;
  v133 = v88;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v89 = 1.0 - v131;
  v90 = v125;
  sub_100014830(v83, v125, &qword_100131410, &qword_1000ED9D0);
  *(v90 + *(v122 + 36)) = v89;
  v132 = v87;
  v133 = v88;
  State.wrappedValue.getter();
  v91 = v131 * -50.0;
  v92 = v121;
  sub_100014830(v90, v121, &qword_100131418, &qword_1000ED9D8);
  v93 = v92 + *(v124 + 36);
  *v93 = 0;
  *(v93 + 8) = v91;
  v94 = v126;
  sub_100014830(v92, v126, &qword_100131420, &unk_1000ED9E0);
  v95 = v127;
  sub_1000035B4(v94, v127, &qword_100131420, &unk_1000ED9E0);
  v96 = v130;
  *v130 = 0;
  *(v96 + 8) = v82;
  *(v96 + 9) = v81;
  v97 = sub_100002B38(&qword_100131430, &qword_1000EDA28);
  sub_1000035B4(v95, v96 + *(v97 + 48), &qword_100131420, &unk_1000ED9E0);
  sub_100005688(v94, &qword_100131420, &unk_1000ED9E0);
  return sub_100005688(v95, &qword_100131420, &unk_1000ED9E0);
}

id sub_1000A34EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v154 = a4;
  v162 = a1;
  v163 = a3;
  v165 = a2;
  v167 = a6;
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v7 - 8);
  v138 = &v132 - v8;
  v9 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v9 - 8);
  v156 = &v132 - v10;
  v160 = type metadata accessor for StoreTab();
  v157 = *(v160 - 8);
  __chkstk_darwin(v160);
  v134 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v132 - v13;
  __chkstk_darwin(v14);
  v136 = &v132 - v15;
  __chkstk_darwin(v16);
  v143 = &v132 - v17;
  __chkstk_darwin(v18);
  v144 = &v132 - v19;
  v20 = type metadata accessor for StoreTab.Identifier();
  v158 = *(v20 - 8);
  v159 = v20;
  __chkstk_darwin(v20);
  v137 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v155 = &v132 - v23;
  __chkstk_darwin(v24);
  v139 = &v132 - v25;
  __chkstk_darwin(v26);
  v166 = &v132 - v27;
  v28 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  __chkstk_darwin(v28 - 8);
  v133 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v135 = &v132 - v31;
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  v35 = type metadata accessor for CommonOnboardingStatus();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  __chkstk_darwin(v39 - 8);
  v41 = &v132 - v40;
  v42 = type metadata accessor for BootstrapResult();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v43;
  v47 = *(v43 + 16);
  v48 = v163;
  v163 = v49;
  v151 = (v43 + 16);
  v150 = v47;
  (v47)(v46, v48, v44);
  v50 = a5[1];
  v148 = *a5;
  v51 = v162;
  v162 = v41;
  sub_1000035B4(v51, v41, &qword_10012E478, &unk_1000EA8E0);
  v145 = v36;
  v52 = *(v36 + 16);
  v53 = v165;
  v164 = v38;
  v165 = v35;
  v153 = v36 + 16;
  v152 = v52;
  v52(v38, v53, v35);
  v54 = objc_opt_self();
  v149 = v50;

  result = [v54 defaultWorkspace];
  if (!result)
  {
    goto LABEL_23;
  }

  v56 = result;
  v57 = type metadata accessor for DashboardOverlayView(0);
  v58 = String._bridgeToObjectiveC()();
  v147 = [v56 applicationIsInstalled:v58];

  sub_1000035B4(a5 + v57[5], v34, &qword_10012E4B0, qword_1000EA960);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v59 = *(a5 + v57[7]);
  sub_1000035B4(a5 + v57[9], v171, &unk_100131120, &unk_1000EAAF0);
  v60 = (a5 + v57[6]);
  v62 = *v60;
  v61 = v60[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v63 = v34;
  v64 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  v65 = v167;
  v66 = v167 + v64[11];
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v67 = v64[12];
  v146 = v64[13];
  v68 = (v65 + v67);
  swift_unknownObjectWeakInit();
  v140 = v46;
  v69 = v46;
  v70 = v64;
  v150(v65, v69, v163);
  v71 = v64[5];
  v72 = v154;
  *(v65 + v71) = v154;
  v73 = (v65 + v70[6]);
  v74 = v149;
  *v73 = v148;
  v73[1] = v74;
  sub_1000035B4(v162, v65 + v70[7], &qword_10012E478, &unk_1000EA8E0);
  v152(v65 + v70[8], v164, v165);
  *(v65 + v70[9]) = v147;
  sub_1000035B4(v63, v65 + v70[10], &qword_10012E4B0, qword_1000EA960);
  sub_10000519C(v62, v61);
  v75 = v72;
  sub_1000AD1EC(v171, v66, &unk_100131120, &unk_1000EAAF0);
  *v68 = v62;
  v68[1] = v61;
  swift_unknownObjectWeakAssign();
  v76 = v160;
  v77 = v63;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    static StoreTab.Identifier.overlaySystemSettingsPage.getter();
    v88 = type metadata accessor for URL();
    (*(*(v88 - 8) + 56))(v156, 1, 1, v88);
    sub_1000D9414(_swiftEmptyArrayStorage);
    v89 = v144;
    StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
    sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
    v90 = v157;
    v91 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1000EA7D0;
    v93 = *(v90 + 16);
    v93(v92 + v91, v89, v76);
    v94 = (v65 + v70[15]);
    v168 = v92;
    sub_100002B38(&qword_10012E658, &qword_1000EAB00);
    State.init(wrappedValue:)();
    v95 = v170;
    *v94 = v169;
    v94[1] = v95;
    v96 = v143;
    v93(v143, v89, v76);
    v93(v136, v96, v76);
    State.init(wrappedValue:)();
    v97 = *(v90 + 8);
    v97(v96, v76);
    v97(v89, v76);
    v84 = v158;
    v98 = v159;
    v100 = v165;
    v99 = v166;
    v102 = v162;
    v101 = v163;
    v103 = v140;
LABEL_20:
    BootstrapResult.objectGraph.getter();
    type metadata accessor for DismissDashboardNotifier();
    BaseObjectGraph.inject<A>(_:)();

    sub_100005688(v171, &unk_100131120, &unk_1000EAAF0);
    (*(v84 + 8))(v99, v98);
    sub_100005688(v77, &qword_10012E4B0, qword_1000EA960);
    (*(v145 + 8))(v164, v100);
    sub_100005688(v102, &qword_10012E478, &unk_1000EA8E0);
    result = (*(v142 + 8))(v103, v101);
    *(v167 + v70[14]) = v169;
    return result;
  }

  v154 = v70;
  v78 = (v65 + v70[15]);
  v168 = v59;
  v153 = v59;

  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  State.init(wrappedValue:)();
  v79 = v170;
  *v78 = v169;
  v78[1] = v79;
  v80 = v135;
  sub_1000035B4(v63, v135, &qword_10012E4B0, qword_1000EA960);
  v81 = type metadata accessor for GameDashboardDestination();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v80, 1, v81);
  v84 = v158;
  v85 = v166;
  v86 = v139;
  v87 = v137;
  if (v83 != 1)
  {
    v104 = v133;
    sub_1000035B4(v80, v133, &qword_10012E4B0, qword_1000EA960);
    v105 = (*(v82 + 88))(v104, v81);
    if (v105 == enum case for GameDashboardDestination.friendInvites(_:))
    {
      static StoreTab.Identifier.overlaySocialPage.getter();
      goto LABEL_10;
    }

    if (v105 == enum case for GameDashboardDestination.systemSettings(_:))
    {
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      goto LABEL_10;
    }

    (*(v82 + 8))(v104, v81);
  }

  (*(v84 + 16))(v86, v85, v159);
LABEL_10:
  v132 = v63;
  sub_100005688(v80, &qword_10012E4B0, qword_1000EA960);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  sub_100011F80(v106, qword_100135C88);
  v107 = *(v84 + 16);
  v98 = v159;
  v107(v87, v86, v159);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v151 = v107;
    v112 = v111;
    v169 = v111;
    *v110 = 136315138;
    v113 = StoreTab.Identifier.rawValue.getter();
    v114 = v87;
    v116 = v115;
    v152 = *(v84 + 8);
    (v152)(v114, v98);
    v117 = sub_1000BA5C8(v113, v116, &v169);

    *(v110 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v108, v109, "OverlayContentView: initial tab set to %s", v110, 0xCu);
    sub_10002E6CC(v112);
    v107 = v151;
  }

  else
  {

    v152 = *(v84 + 8);
    (v152)(v87, v98);
  }

  v118 = v138;
  v107(v155, v86, v98);
  v119 = type metadata accessor for URL();
  (*(*(v119 - 8) + 56))(v156, 1, 1, v119);
  sub_1000D9414(_swiftEmptyArrayStorage);
  v120 = StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  __chkstk_darwin(v120);
  v121 = v153;
  sub_1000979E8(sub_10004DA04, v153, v118);
  v122 = v157;
  v123 = v160;
  if ((*(v157 + 48))(v118, 1, v160) != 1)
  {
    v128 = v134;
    (*(v122 + 32))(v134, v118, v123);
    v129 = *(v122 + 16);
    v130 = v144;
    v129(v144, v128, v123);
    v129(v143, v130, v123);
    State.init(wrappedValue:)();
    v127 = *(v122 + 8);
    v127(v130, v123);
    v131 = v128;
    v86 = v139;
    v127(v131, v123);
    goto LABEL_19;
  }

  result = sub_100005688(v118, &qword_10012E650, &qword_1000EDA30);
  if (*(v121 + 16))
  {
    v124 = *(v122 + 16);
    v125 = v121 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v126 = v144;
    v124(v144, v125, v123);
    v124(v143, v126, v123);
    State.init(wrappedValue:)();
    v127 = *(v122 + 8);
    v127(v126, v123);
LABEL_19:
    (v152)(v86, v98);
    v127(v141, v123);
    v100 = v165;
    v99 = v166;
    v102 = v162;
    v101 = v163;
    v103 = v140;
    v70 = v154;
    v77 = v132;
    goto LABEL_20;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}