uint64_t sub_100705AF8(uint64_t a1)
{
  result = type metadata accessor for LocationViewModel(0);
  if (*(*(a1 + *(result + 28)) + 16))
  {
    return sub_100705B34();
  }

  return result;
}

uint64_t sub_100705B34()
{
  v1 = *(v0 + *(type metadata accessor for LocationViewModel(0) + 32));
  v2 = sub_100703874();
  v3 = sub_100703D6C();
  result = sub_10049B8DC(v2, v3, v1);
  if (result)
  {
    v5 = result;
    if (*(v0 + *(type metadata accessor for LocationGridView(0) + 44)))
    {
      type metadata accessor for TipCoordinator(0);

      ObservableResolver.resolve<A>(_:)();

      if (v6)
      {
        sub_1001945A4(v5);
      }

      __break(1u);
    }

    type metadata accessor for ObservableResolver();
    sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100705C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for LocationGridView(0) + 56);
  memcpy(__dst, (a1 + v11), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v31, (a1 + v11), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    v26 = v10;
    v13 = v8;
    v14 = v7;
    v15 = v12;
    os_log(_:dso:log:_:_:)();

    v7 = v14;
    v8 = v13;
    v10 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v8 + 8))(v10, v7);
  }

  if (!v31[48])
  {
    v16 = *(a1 + *(type metadata accessor for LocationViewModel(0) + 88));
    type metadata accessor for LocationComponentContainerViewModel(0);
    sub_1001B3DAC();
    sub_100879FFC();

    if ((v36 & 1) == 0)
    {
      v29 = v8;
      v18 = v32;
      v17 = v33;
      v20 = v34;
      v19 = v35;
      memcpy(v31, (a1 + v11), 0x49uLL);
      if (v31[72])
      {
        memcpy(v30, (a1 + v11), sizeof(v30));
      }

      else
      {
        v28 = v7;

        static os_log_type_t.fault.getter();
        v21 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100018144(v31, &qword_100CB71A8, &unk_100A4C930);
        (*(v29 + 8))(v10, v28);
      }

      memcpy(v37, v30, sizeof(v37));
      a2 = sub_100705F9C(v16, v37, v18, v17, v20, v19);
      v27 = v22;
      v28 = v23;
      v29 = v24;
    }
  }

  return a2;
}

uint64_t sub_100705F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  if (*(a2 + 49) == 3)
  {
    return a3;
  }

  if (qword_100CA1FD0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for MapComponentViewModel(0);
  v15 = sub_10000703C(v14, qword_100D8FC88);
  sub_10015CE24(v15, v13);
  swift_storeEnumTagMultiPayload();
  sub_1001B3DAC();
  sub_1007090A0(v13, type metadata accessor for LocationComponentViewModel);
  sub_100879FFC();

  if ((v18 & 1) != 0 || v17 >= a5 || !__OFSUB__(a6, 1))
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100706120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LocationGridView(0) + 56);
  memcpy(__dst, (v5 + v16), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v28, (v5 + v16), sizeof(v28));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v27 = v12;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = v17;
    os_log(_:dso:log:_:_:)();

    a5 = v20;
    a4 = v19;
    a3 = v18;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v13 + 8))(v15, v27);
  }

  if (v28[48])
  {
    v22 = a4 - a3;
    if (!__OFSUB__(a4, a3))
    {
      return v22;
    }

    __break(1u);
  }

  sub_10015CE24(a5, v11);
  result = swift_getEnumCaseMultiPayload();
  v22 = a4 - a3;
  v24 = __OFSUB__(a4, a3);
  if (result != 5)
  {
    if (result != 1)
    {
      goto LABEL_21;
    }

    if (v24)
    {
      __break(1u);
      goto LABEL_25;
    }

    v25 = __OFADD__(v22, 2);
    v22 += 2;
    if (!v25)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  if (v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = __OFADD__(v22++, 1);
  if (!v25)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_21:
  if (!v24)
  {
LABEL_22:
    sub_1007090A0(v11, type metadata accessor for LocationComponentViewModel);
    return v22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1007063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  if (byte_100D8FB88)
  {
    goto LABEL_12;
  }

  LOBYTE(v17) = 0;
  if (byte_100D8FB89 & 1) != 0 || (byte_100D8FB8A)
  {
    return v17 & 1;
  }

  result = sub_100703874();
  if (result)
  {
LABEL_12:
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  if (!__OFSUB__(a3, a2))
  {
    if (a3 - a2 == 2)
    {
      v19 = type metadata accessor for LocationComponentContainerViewModel(0);
      sub_10015CE24(a6 + *(v19 + 20), v16);
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v20 = a1 + *(type metadata accessor for LocationGridView(0) + 52);
        v17 = *v20;
        if (*(v20 + 8) != 1)
        {

          static os_log_type_t.fault.getter();
          v21 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000EBD74(v17, 0);
          (*(v11 + 8))(v13, v10);
          LOBYTE(v17) = v22[15];
        }
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      sub_1007090A0(v16, type metadata accessor for LocationComponentViewModel);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10070667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a11)
{
  v128 = a7;
  v127 = a6;
  v119 = a5;
  v111 = a4;
  v135 = a3;
  v112 = a8;
  v108 = type metadata accessor for EnvironmentValues();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Location.Identifier();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v19 - 8);
  v21 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LocationComponentContainerView(0);
  __chkstk_darwin(v22);
  v24 = v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v123 = v105 - v26;
  v122 = sub_10022C350(&qword_100CD4898, &unk_100A7B9C8);
  __chkstk_darwin(v122);
  v126 = v105 - v27;
  v125 = sub_10022C350(&qword_100CD4888, &qword_100A7B9C0);
  __chkstk_darwin(v125);
  v131 = v105 - v28;
  v129 = sub_10022C350(&qword_100CD4878, &qword_100A7B9B8);
  __chkstk_darwin(v129);
  v132 = v105 - v29;
  v130 = sub_10022C350(&qword_100CD4868, &qword_100A7B9B0);
  __chkstk_darwin(v130);
  v133 = v105 - v30;
  v109 = sub_10022C350(&qword_100CD4858, &qword_100A7B9A8);
  __chkstk_darwin(v109);
  v110 = v105 - v31;
  v115 = type metadata accessor for LocationComponentContainerViewModel;
  sub_10015CE24(a1, v21);
  v32 = type metadata accessor for LocationGridView(0);
  v33 = v32[7];
  v116 = *(a2 + v32[6]);
  v118 = *(a2 + v33);
  v34 = v32[9];
  v134 = *(a2 + v32[8]);
  sub_100035B30(a2 + v34, __src);
  v35 = type metadata accessor for LocationViewModel(0);
  v114 = *(a2 + *(v35 + 68));
  v124 = v16;
  v113 = *(v16 + 16);
  v113(v18, a2, v15);
  v121 = v32;
  v36 = *(a2 + v32[5]);
  v37 = *(v35 + 92);
  v117 = a2;
  LOBYTE(a2) = *(a2 + v37);
  v38 = &v24[v22[12]];
  v137 = 0;
  v136 = 0;
  v138 = 1;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CC07D8, &qword_100A84020);
  State.init(wrappedValue:)();
  v39 = v140;
  v40 = *(&v140 + 1);
  *v38 = v139;
  v38[16] = v39;
  *(v38 + 3) = v40;
  v41 = &v24[v22[13]];
  *v41 = sub_1001CA728;
  *(v41 + 1) = 0;
  v41[16] = 0;
  v42 = &v24[v22[14]];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *v42 = sub_1001CADE8;
  *(v42 + 1) = v43;
  v42[16] = 0;
  v44 = &v24[v22[15]];
  *v44 = sub_1001CACE4;
  *(v44 + 1) = 0;
  v44[16] = 0;
  v45 = &v24[v22[16]];
  LOBYTE(v136) = 0;
  State.init(wrappedValue:)();
  v46 = *(&v139 + 1);
  *v45 = v139;
  *(v45 + 1) = v46;
  v47 = v22[17];
  *&v24[v47] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  v48 = &v24[v22[18]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = &v24[v22[19]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  v50 = v22[20];
  *&v24[v50] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v51 = &v24[v22[21]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v24[v22[22]];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = &v24[v22[23]];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = &v24[v22[24]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v24[v22[25]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v24[v22[26]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v24[v22[27]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = &v24[v22[28]];
  v59 = type metadata accessor for ObservableResolver();
  v60 = sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  v105[2] = v59;
  v105[1] = v60;
  *v58 = EnvironmentObject.init()();
  v58[1] = v61;
  *&v24[v22[30]] = 0x4024000000000000;
  *&v24[v22[31]] = 0xC024000000000000;
  v120 = v21;
  sub_10015CE24(v21, v24);
  *&v24[v22[5]] = v134;
  sub_100035B30(__src, &v24[v22[6]]);
  v24[v22[7]] = v114;
  v62 = v18;
  v63 = v18;
  v64 = v15;
  v113(&v24[v22[8]], v63, v15);
  *&v24[v22[9]] = v36;
  v24[v22[10]] = a2;
  v65 = &v24[v22[11]];
  v66 = v119;
  *v65 = v135;
  *(v65 + 1) = v66;
  v67 = *(v116 + 56);

  v68 = 0;
  if ((DeviceIsVerySlow() & 1) == 0)
  {
    v68 = static Animation.linear(duration:)();
  }

  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v69 = byte_100D8FB88 | byte_100D8FB89 | byte_100D8FB8A;
  type metadata accessor for WireframeContentManager(0);
  swift_allocObject();
  v70 = v118;

  v71 = sub_1001CB2F4(v67, v70, v68, v135, v66, (v69 & 1) == 0);
  type metadata accessor for WireframeContentManagerReference();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  v136 = v72;
  State.init(wrappedValue:)();
  (*(v124 + 8))(v62, v64);
  sub_100006F14(__src);
  sub_1007090A0(v120, type metadata accessor for LocationComponentContainerViewModel);
  v73 = *(&v139 + 1);
  v74 = &v24[v22[29]];
  *v74 = v139;
  *(v74 + 1) = v73;
  v75 = v123;
  sub_1007090F4(v24, v123);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v76 = v126;
  sub_1007090F4(v75, v126);
  v77 = (v76 + *(v122 + 36));
  v78 = v140;
  *v77 = v139;
  v77[1] = v78;
  v77[2] = v141;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79 = v131;
  sub_10011C0F0(v76, v131, &qword_100CD4898, &unk_100A7B9C8);
  memcpy((v79 + *(v125 + 36)), __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v81 = v121;
  v82 = v117;
  v83 = v117 + v121[13];
  v84 = *v83;
  if (*(v83 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v85 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v86 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v84, 0);
    (*(v107 + 8))(v86, v108);
    LOBYTE(v84) = v136;
  }

  v87 = v133;
  v88 = v132;
  sub_10011C0F0(v79, v132, &qword_100CD4888, &qword_100A7B9C0);
  v89 = v88 + *(v129 + 36);
  *v89 = KeyPath;
  *(v89 + 8) = v84 & 1;
  v90 = swift_getKeyPath();
  sub_10011C0F0(v88, v87, &qword_100CD4878, &qword_100A7B9B8);
  v91 = v87 + *(v130 + 36);
  *v91 = v90;
  *(v91 + 8) = a11 > 1;
  v92 = swift_getKeyPath();
  if (*(v82 + v81[11]))
  {
    v93 = v92;
    type metadata accessor for TipCoordinator(0);

    ObservableResolver.resolve<A>(_:)();

    if (v136)
    {
      v94 = sub_100703874();
      v96 = sub_10074A5C8(v94, v135, v111, v95);
      v98 = v97;

      v99 = v110;
      sub_10011C0F0(v87, v110, &qword_100CD4868, &qword_100A7B9B0);
      v100 = (v99 + *(v109 + 36));
      *v100 = v93;
      v100[1] = v96;
      v100[2] = v98;
      v101 = swift_getKeyPath();
      v102 = v112;
      sub_10011C0F0(v99, v112, &qword_100CD4858, &qword_100A7B9A8);
      result = sub_10022C350(&qword_100CD4830, &qword_100A7B998);
      v104 = v102 + *(result + 36);
      *v104 = v101;
      *(v104 + 8) = a9;
      *(v104 + 16) = 0;
      return result;
    }

    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1007074F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v59 = a3;
  v57 = a2;
  v52 = a1;
  v47 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v47);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10022C350(&qword_100CD48E8, &unk_100A7B9F8);
  v50 = *(v56 - 8);
  __chkstk_darwin(v56);
  v49 = &v44 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10022C350(&qword_100CD4938, &qword_100A7BA30);
  __chkstk_darwin(v53);
  v55 = &v44 - v11;
  v12 = sub_10022C350(&qword_100CD4940, &qword_100A7BA38);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v54 = sub_10022C350(&qword_100CD48D8, &qword_100A7B9F0);
  __chkstk_darwin(v54);
  v51 = &v44 - v15;
  v61 = sub_10022C350(&qword_100CD4948, &unk_100A7BA40);
  __chkstk_darwin(v61);
  v17 = &v44 - v16;
  v18 = sub_10022C350(&qword_100CD4830, &qword_100A7B998);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CD48C8, &qword_100A7B9E8);
  __chkstk_darwin(v60);
  v25 = &v44 - v24;
  if (qword_100CA1F38 != -1)
  {
    v45 = &v44 - v24;
    swift_once();
    v25 = v45;
  }

  if ((byte_100D8FB88 & 1) == 0 && (byte_100D8FB89 & 1) == 0 && (byte_100D8FB8A & 1) == 0)
  {
    v45 = v25;
    v29 = type metadata accessor for LocationComponentContainerViewModel(0);
    sub_10015CE24(v52 + *(v29 + 20), v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1007090A0(v23, type metadata accessor for LocationComponentViewModel);
    if (EnumCaseMultiPayload == 5)
    {
      v31 = *(type metadata accessor for LocationGridView(0) + 40);
      if (qword_100CA24D0 != -1)
      {
        swift_once();
      }

      if (byte_100D90788 == 1)
      {
        v32 = v57 + v31;
        if (*(v32 + 8) != 1)
        {
          type metadata accessor for DisplayMetrics(0);
          if ((DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v32) && *(v32 + 17) == 1)
          {
            v59();
            sub_1000302D8(v20, v14, &qword_100CD4830, &qword_100A7B998);
            swift_storeEnumTagMultiPayload();
            sub_100708878();
            v33 = v51;
            _ConditionalContent<>.init(storage:)();
            sub_1000302D8(v33, v55, &qword_100CD48D8, &qword_100A7B9F0);
            swift_storeEnumTagMultiPayload();
            sub_100708DE4();
            sub_100006F64(&qword_100CD48E0, &qword_100CD48E8, &unk_100A7B9F8, &protocol conformance descriptor for LazyVStack<A>);
            v34 = v45;
            _ConditionalContent<>.init(storage:)();
            sub_100018144(v33, &qword_100CD48D8, &qword_100A7B9F0);
            sub_100018144(v20, &qword_100CD4830, &qword_100A7B998);
LABEL_21:
            v26 = &qword_100CD48C8;
            v27 = &qword_100A7B9E8;
            sub_1000302D8(v34, v17, &qword_100CD48C8, &qword_100A7B9E8);
            swift_storeEnumTagMultiPayload();
            sub_100708D2C();
            sub_100708878();
            _ConditionalContent<>.init(storage:)();
            v28 = v34;
            return sub_100018144(v28, v26, v27);
          }
        }
      }
    }

    v35 = type metadata accessor for LocationGridView(0);
    v36 = v57 + *(v35 + 48);
    v37 = *v36;
    LODWORD(v36) = *(v36 + 8);
    v44 = a5;
    if (v36 == 1)
    {
      if ((v37 & 1) == 0)
      {
LABEL_18:
        static HorizontalAlignment.center.getter();
        v62 = 0;
        sub_1000814E4(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
        dispatch thunk of OptionSet.init(rawValue:)();
        sub_100708878();
        v38 = v49;
        LazyVStack.init(alignment:spacing:pinnedViews:content:)();
        v39 = v50;
        v40 = v56;
        (*(v50 + 16))(v55, v38, v56);
        swift_storeEnumTagMultiPayload();
        sub_100708DE4();
        sub_100006F64(&qword_100CD48E0, &qword_100CD48E8, &unk_100A7B9F8, &protocol conformance descriptor for LazyVStack<A>);
        v34 = v45;
        _ConditionalContent<>.init(storage:)();
        (*(v39 + 8))(v38, v40);
        goto LABEL_21;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v37, 0);
      v35 = (*(v46 + 8))(v10, v8);
      if (v63 != 1)
      {
        goto LABEL_18;
      }
    }

    (v59)(v35);
    sub_1000302D8(v20, v14, &qword_100CD4830, &qword_100A7B998);
    swift_storeEnumTagMultiPayload();
    sub_100708878();
    v42 = v51;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v42, v55, &qword_100CD48D8, &qword_100A7B9F0);
    swift_storeEnumTagMultiPayload();
    sub_100708DE4();
    sub_100006F64(&qword_100CD48E0, &qword_100CD48E8, &unk_100A7B9F8, &protocol conformance descriptor for LazyVStack<A>);
    v34 = v45;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v42, &qword_100CD48D8, &qword_100A7B9F0);
    sub_100018144(v20, &qword_100CD4830, &qword_100A7B998);
    goto LABEL_21;
  }

  v59();
  v26 = &qword_100CD4830;
  v27 = &qword_100A7B998;
  sub_1000302D8(v20, v17, &qword_100CD4830, &qword_100A7B998);
  swift_storeEnumTagMultiPayload();
  sub_100708D2C();
  sub_100708878();
  _ConditionalContent<>.init(storage:)();
  v28 = v20;
  return sub_100018144(v28, v26, v27);
}

uint64_t sub_100707F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LocationGridView(0);
  sub_100003810(v12);
  return sub_100704D1C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100707FDC()
{
  v1 = type metadata accessor for LocationGridView(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_100705AF8(v3);
}

unint64_t sub_100708038()
{
  result = qword_100CD47F0;
  if (!qword_100CD47F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
    v4[0] = sub_10014A01C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD47F0);
  }

  return result;
}

uint64_t sub_1007080BC(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for LocationGridView(0) - 8;
  if (*a2 == 1)
  {
    return sub_100705B34();
  }

  return result;
}

uint64_t sub_100708128()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v15 = *(v0 + 16);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v14)
  {
    v8 = 1;
  }

  else
  {
    BYTE8(v15) = *(v0 + 8);
    *&v15 = *v0;

    if ((BYTE8(v15) & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v15, &qword_100CD4968, &unk_100A7BDE0);
      v9 = (*(v3 + 8))(v7, v1);
    }

    v12 = sub_1004237C8(v9, v10);

    v8 = v12 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1007082C0(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CD4950, &qword_100A7BDC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v23[-v5 - 8];
  sub_10022C350(&qword_100CD4958, &qword_100A7BDD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v23[-v8 - 8];
  v10 = sub_10022C350(&qword_100CD4960, &qword_100A7BDD8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v23[-v12 - 8];
  if (sub_100708128())
  {
    v15 = v1[4];
    v14 = v1[5];
    sub_10022C350(&qword_100CD4980, &qword_100A7BDF0);
    sub_1000037E8();
    (*(v16 + 16))(v13, a1);
    v17 = &v13[*(v10 + 52)];
    *v17 = v15;
    v17[1] = v14;
    sub_1000302D8(v13, v9, &qword_100CD4960, &qword_100A7BDD8);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CD4970, &qword_100CD4960, &qword_100A7BDD8, &protocol conformance descriptor for IDView<A, B>);
    sub_100006F64(&qword_100CD4978, &qword_100CD4950, &qword_100A7BDC8, &protocol conformance descriptor for IDView<A, B>);

    sub_100020A7C();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v13, &qword_100CD4960, &qword_100A7BDD8);
  }

  else
  {
    v24 = static Color.clear.getter();
    v27 = *v1;
    v28 = *(v1 + 8);
    v19 = *(v1 + 1);
    v25 = *(v1 + 2);
    v26 = v19;
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    v20[1] = *v1;
    v20[2] = v21;
    v20[3] = *(v1 + 2);
    sub_1000302D8(&v27, v23, &qword_100CD4968, &unk_100A7BDE0);
    sub_1000302D8(&v26, v23, &qword_100CA5A80, &qword_100A2FF90);
    sub_100358150(&v25, v23);
    View.onScrollVisibilityChange(threshold:_:)();

    *&v6[*(v3 + 52)] = v25;
    sub_10020DD18(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CD4970, &qword_100CD4960, &qword_100A7BDD8, &protocol conformance descriptor for IDView<A, B>);
    sub_100006F64(&qword_100CD4978, &qword_100CD4950, &qword_100A7BDC8, &protocol conformance descriptor for IDView<A, B>);

    sub_100020A7C();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v6, &qword_100CD4950, &qword_100A7BDC8);
  }
}

uint64_t sub_1007086DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationComponentContainerViewModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LocationGridView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10070667C(v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + v8 + 16), *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 8), a1, *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 71) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100708824()
{
  result = qword_100CD4840;
  if (!qword_100CD4840)
  {
    result = swift_getWitnessTable(byte_100A3DB54, &type metadata for UseLazyGridLayoutViewInputPredicate, v0, v1);
    atomic_store(result, &qword_100CD4840);
  }

  return result;
}

unint64_t sub_100708878()
{
  result = qword_100CD4848;
  if (!qword_100CD4848)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4830, &qword_100A7B998);
    v4[0] = sub_100708930();
    v4[1] = sub_100006F64(&qword_100CC2270, &qword_100CC2278, &qword_100A5AAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4848);
  }

  return result;
}

unint64_t sub_100708930()
{
  result = qword_100CD4850;
  if (!qword_100CD4850)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4858, &qword_100A7B9A8);
    v4[0] = sub_1007089E8();
    v4[1] = sub_100006F64(&qword_100CD48A8, &qword_100CD48B0, &unk_100A7B9D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4850);
  }

  return result;
}

unint64_t sub_1007089E8()
{
  result = qword_100CD4860;
  if (!qword_100CD4860)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4868, &qword_100A7B9B0);
    v4[0] = sub_100708AA0();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4860);
  }

  return result;
}

unint64_t sub_100708AA0()
{
  result = qword_100CD4870;
  if (!qword_100CD4870)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4878, &qword_100A7B9B8);
    v4[0] = sub_100708B58();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4870);
  }

  return result;
}

unint64_t sub_100708B58()
{
  result = qword_100CD4880;
  if (!qword_100CD4880)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4888, &qword_100A7B9C0);
    v4[0] = sub_100708BE4();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4880);
  }

  return result;
}

unint64_t sub_100708BE4()
{
  result = qword_100CD4890;
  if (!qword_100CD4890)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4898, &unk_100A7B9C8);
    v4[0] = sub_1000814E4(&qword_100CD48A0, type metadata accessor for LocationComponentContainerView, byte_100A590D4);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4890);
  }

  return result;
}

unint64_t sub_100708CA0()
{
  result = qword_100CD48B8;
  if (!qword_100CD48B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4838, &qword_100A7B9A0);
    v4[0] = sub_100708D2C();
    v4[1] = sub_100708878();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD48B8);
  }

  return result;
}

unint64_t sub_100708D2C()
{
  result = qword_100CD48C0;
  if (!qword_100CD48C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD48C8, &qword_100A7B9E8);
    v4[0] = sub_100708DE4();
    v4[1] = sub_100006F64(&qword_100CD48E0, &qword_100CD48E8, &unk_100A7B9F8, &protocol conformance descriptor for LazyVStack<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD48C0);
  }

  return result;
}

unint64_t sub_100708DE4()
{
  result = qword_100CD48D0;
  if (!qword_100CD48D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD48D8, &qword_100A7B9F0);
    v4[0] = sub_100708878();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD48D0);
  }

  return result;
}

unint64_t sub_100708E68()
{
  result = qword_100CD48F0;
  if (!qword_100CD48F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4808, &qword_100A7B968);
    v4[0] = sub_100708F20();
    v4[1] = sub_100006F64(&qword_100CD4918, &qword_100CD4920, &qword_100A7BA10, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD48F0);
  }

  return result;
}

unint64_t sub_100708F20()
{
  result = qword_100CD48F8;
  if (!qword_100CD48F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4800, &qword_100A7B960);
    v4[0] = sub_100708FAC();
    v4[1] = sub_10070904C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD48F8);
  }

  return result;
}

unint64_t sub_100708FAC()
{
  result = qword_100CD4900;
  if (!qword_100CD4900)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CD4908, &qword_100A7BA08);
    v4[0] = sub_100708824();
    v4[1] = sub_100708878();
    v4[2] = sub_100708CA0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CD4900);
  }

  return result;
}

unint64_t sub_10070904C()
{
  result = qword_100CD4910;
  if (!qword_100CD4910)
  {
    result = swift_getWitnessTable(byte_100A7BD78, &type metadata for LazyUntilLocationViewLoadedIfBelowTheFoldViewModifier, v0, v1);
    atomic_store(result, &qword_100CD4910);
  }

  return result;
}

uint64_t sub_1007090A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007090F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_10070918C()
{
  result = qword_100CD4988;
  if (!qword_100CD4988)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD4990, &unk_100A7BDF8);
    v4[0] = sub_100006F64(&qword_100CD4970, &qword_100CD4960, &qword_100A7BDD8, &protocol conformance descriptor for IDView<A, B>);
    v4[1] = sub_100006F64(&qword_100CD4978, &qword_100CD4950, &qword_100A7BDC8, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4988);
  }

  return result;
}

uint64_t sub_10070926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_10022C350(&qword_100CD4A38, &qword_100A7BE48);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - v13;
  (*(v11 + 16))(&v19 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = sub_1000161C0(a5, a5[3]);
  sub_10070A210(a3, a4, *v17, sub_10070A184, v16, a2);
}

uint64_t sub_1007093E4(void *a1)
{
  if (a1)
  {
  }

  sub_10022C350(&qword_100CD4A38, &qword_100A7BE48);
  return CheckedContinuation.resume(returning:)();
}

void sub_100709448(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 16);
  if (v12 || (v13 = [objc_allocWithZone(MKLocalSearchCompleter) init], v14 = objc_allocWithZone(type metadata accessor for LocationSearchCompleter()), v15 = LocationSearchCompleter.init(searchCompleter:)(v13), v16 = *(a1 + 16), *(a1 + 16) = v15, v16, (v12 = *(a1 + 16)) != 0))
  {
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    fora = a6;
    v18 = a5;
    v19 = &v12[OBJC_IVAR____TtC7Weather23LocationSearchCompleter_onError];
    swift_beginAccess();
    v20 = *v19;
    *v19 = sub_10070A318;
    v19[1] = v17;
    v21 = v12;

    sub_10002B028(v20);
    v22 = swift_allocObject();
    swift_weakInit();
    sub_100035B30(a4, v28);
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a2;
    v23[4] = a3;
    sub_10003E2A0(v28, (v23 + 5));
    v24 = &v21[OBJC_IVAR____TtC7Weather23LocationSearchCompleter_onUpdate];
    swift_beginAccess();
    v25 = *v24;
    *v24 = sub_10070A324;
    v24[1] = v23;

    sub_10002B028(v25);

    v26._countAndFlagsBits = v18;
    v26._object = fora;
    LocationSearchCompleter.searchLocations(for:)(v26);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_100709664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.intents.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "We encountered an error while updating the search term.", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(0, 0);
}

void sub_1007097D4(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100040690();
    v11 = static OS_dispatch_queue.main.getter();
    sub_100035B30(a5, v17);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    sub_10003E2A0(v17, v12 + 24);

    sub_10022C350(&qword_100CD4A40, &qword_100A7BE50);
    type metadata accessor for LocationSearcher();
    firstly<A, B>(on:disposeOn:closure:)();

    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = a3;
    v14[4] = a4;

    Promise.then<A, B>(on:disposeOn:closure:)();

    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = a3;
    v15[4] = a4;

    v16 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    a3(0, 0);
  }
}

uint64_t sub_100709A5C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v32 = sub_10022C350(&qword_100CD4A48, &unk_100A7BE58);
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v28 = a3;
    v29 = a5;
    v30 = a4;
    v31 = v5;
    v36 = _swiftEmptyArrayStorage;
    v33 = v14;
    result = sub_1006A827C(0, v14, 0);
    v17 = 0;
    v15 = v36;
    v18 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = v32;
    while (v17 < *(v13 + 16))
    {
      v20 = v10;
      sub_10070A3C0(v18 + *(v10 + 72) * v17, v12);
      static LocationSearchEntity.makeFromLocation(_:name:)(*&v12[*(v19 + 48)], *&v12[*(v19 + 48) + 8], v34);
      result = sub_100018144(v12, &qword_100CD4A48, &unk_100A7BE58);
      v36 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1006A827C((v21 > 1), v22 + 1, 1);
        v19 = v32;
        v15 = v36;
      }

      ++v17;
      v15[2] = v22 + 1;
      v23 = &v15[5 * v22];
      v24 = v34[0];
      v25 = v34[1];
      *(v23 + 64) = v35;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v10 = v20;
      if (v33 == v17)
      {
        a4 = v30;
        a3 = v28;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v26 = *(a3 + 16);
    *(a3 + 16) = 0;

    a4(v15, 0);
  }

  return result;
}

uint64_t sub_100709C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;

  return a3(0, 0);
}

void sub_100709CB8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CD4A48, &unk_100A7BE58);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Location();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_10043D538(v16, v11);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_100018144(v11, &qword_100CA65D8, &unk_100A3D9D0);
    sub_1000161C0(a2, a2[3]);
    v17 = [v16 w_calloutTitle];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v16, v18, v20);

    *(swift_allocObject() + 16) = v16;
    v21 = v16;
    v22 = zalgo.getter();
    v23 = Promise.then<A>(on:closure:)();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v24 = [v16 w_calloutTitle];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = &v8[*(v6 + 48)];
    (*(v13 + 16))(v8, v15, v12);
    *v28 = v25;
    v28[1] = v27;
    sub_10022C350(&qword_100CD4A50, &qword_100A7BE68);
    swift_allocObject();
    v23 = Promise.init(value:)();
    (*(v13 + 8))(v15, v12);
  }

  *a3 = v23;
}

uint64_t sub_100709FF4(uint64_t a1, void *a2)
{
  v4 = sub_10022C350(&qword_100CD4A48, &unk_100A7BE58);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = [a2 w_calloutTitle];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = &v8[*(v5 + 56)];
  v14 = type metadata accessor for Location();
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  *v13 = v10;
  v13[1] = v12;
  sub_10022C350(&qword_100CD4A50, &qword_100A7BE68);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10070A130()
{
  sub_100016D4C();

  return swift_deallocClassInstance();
}

uint64_t sub_10070A184(void *a1)
{
  sub_10022C350(&qword_100CD4A38, &qword_100A7BE48);

  return sub_1007093E4(a1);
}

uint64_t sub_10070A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = type metadata accessor for LocalSearchRequestManager();
  v15[4] = &off_100C6CB98;
  v15[0] = a3;
  sub_100035B30(v15, v14);
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a4;
  v12[4] = a5;
  sub_10003E2A0(v14, (v12 + 5));
  v12[10] = a1;
  v12[11] = a2;

  asyncMain(block:)();

  return sub_100006F14(v15);
}

uint64_t sub_10070A374()
{

  return swift_deallocObject();
}

uint64_t sub_10070A3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD4A48, &unk_100A7BE58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10070A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v4 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v69 = v12;
  v70 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v66 - v17;
  v19 = type metadata accessor for Date();
  sub_1000037C4();
  v68 = v20;
  __chkstk_darwin(v21);
  v66 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v67 = &v66 - v24;
  v25 = sub_10022C350(&qword_100CD19D8, &qword_100A76DD8);
  __chkstk_darwin(v25 - 8);
  v27 = &v66 - v26;
  v28 = type metadata accessor for MainStateProcessingContext(0);
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  sub_10070AC08(a2, v27);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    sub_10003FDF4(v27, &qword_100CD19D8, &qword_100A76DD8);
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C(&qword_100CA26E0);
    }

    v32 = type metadata accessor for Logger();
    sub_10000703C(v32, qword_100D90B08);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_10000389C();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "missing processingContext in DiscardStateProcessor", v35, 2u);
    }

    return 1;
  }

  sub_1006BA734(v27, v31);
  static Calendar.current.getter();
  (*(v6 + 104))(v10, enum case for Calendar.Component.second(_:), v4);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v6 + 8))(v10, v4);
  (*(v69 + 8))(v15, v70);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &unk_100CB2CF0, &unk_100A2D7F0);
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C(&qword_100CA26E0);
    }

    v36 = type metadata accessor for Logger();
    sub_10000703C(v36, qword_100D90B08);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (sub_100005954(v38))
    {
      v39 = sub_10000389C();
      sub_100019DE4(v39);
      sub_10001CB78(&_mh_execute_header, v40, v41, "missing expirationDate in DiscardStateProcessor");
      sub_1000065F4();
    }

LABEL_13:
    sub_10070AC78(v31);
    return 1;
  }

  v44 = v67;
  v43 = v68;
  (*(v68 + 32))(v67, v18, v19);
  if (qword_100CA1F30 != -1)
  {
    swift_once();
  }

  if (*(qword_100D8FB80 + 16) == 1)
  {
    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C(&qword_100CA26E0);
    }

    v45 = type metadata accessor for Logger();
    sub_10000703C(v45, qword_100D90B08);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (sub_100005954(v47))
    {
      v48 = sub_10000389C();
      sub_100019DE4(v48);
      sub_10001CB78(&_mh_execute_header, v49, v50, "Drop state due to app crashed previously");
      sub_1000065F4();
    }

    (*(v43 + 8))(v44, v19);
  }

  else
  {
    v51 = v66;
    static WeatherClock.date.getter();
    v52 = static Date.> infix(_:_:)();
    v53 = *(v43 + 8);
    v53(v51, v19);
    if ((v52 & 1) == 0)
    {
      if (qword_100CA26E0 != -1)
      {
        sub_100019C5C(&qword_100CA26E0);
      }

      v60 = type metadata accessor for Logger();
      sub_10000703C(v60, qword_100D90B08);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (sub_100005954(v62))
      {
        v63 = sub_10000389C();
        sub_100019DE4(v63);
        sub_10001CB78(&_mh_execute_header, v64, v65, "Keep fresh state");
        sub_1000065F4();
      }

      v53(v44, v19);
      goto LABEL_13;
    }

    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C(&qword_100CA26E0);
    }

    v54 = type metadata accessor for Logger();
    sub_10000703C(v54, qword_100D90B08);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (sub_100005954(v56))
    {
      v57 = sub_10000389C();
      sub_100019DE4(v57);
      sub_10001CB78(&_mh_execute_header, v58, v59, "Drop expired state");
      sub_1000065F4();
    }

    v53(v44, v19);
  }

  sub_10070AC78(v31);
  return 0;
}

uint64_t sub_10070AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD19D8, &qword_100A76DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10070AC78(uint64_t a1)
{
  v2 = type metadata accessor for MainStateProcessingContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10070ACE8()
{
  result = qword_100CD4A58;
  if (!qword_100CD4A58)
  {
    result = swift_getWitnessTable(byte_100A33E38, &type metadata for MainState, v0, v1);
    atomic_store(result, &qword_100CD4A58);
  }

  return result;
}

unint64_t sub_10070AD40()
{
  result = qword_100CD4A60;
  if (!qword_100CD4A60)
  {
    result = swift_getWitnessTable("щ ", &type metadata for MainState, v0, v1);
    atomic_store(result, &qword_100CD4A60);
  }

  return result;
}

uint64_t sub_10070ADFC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MainStateProcessingContext(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10070AE40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x6C65646F6DLL;
  *(inited + 40) = 0xE500000000000000;
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  *(inited + 72) = &type metadata for ReportWeatherViewModel;
  v5 = swift_allocObject();
  *(inited + 48) = v5;
  memcpy((v5 + 16), __dst, 0x60uLL);
  sub_10029C25C(__dst, &v7);
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CD4AC0, &unk_100A7BF20);
  a2[4] = sub_10070B024();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10070AF90(uint64_t a1)
{
  sub_10070B088();

  return ShortDescribable.description.getter();
}

unint64_t sub_10070AFD0()
{
  result = qword_100CD4AB8;
  if (!qword_100CD4AB8)
  {
    result = swift_getWitnessTable(asc_100A7BEC8, &type metadata for ReportWeatherViewState, v0, v1);
    atomic_store(result, &qword_100CD4AB8);
  }

  return result;
}

unint64_t sub_10070B024()
{
  result = qword_100CD4AC8;
  if (!qword_100CD4AC8)
  {
    v3 = sub_10022E824(&qword_100CD4AC0, &unk_100A7BF20);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD4AC8);
  }

  return result;
}

unint64_t sub_10070B088()
{
  result = qword_100CD4AD0;
  if (!qword_100CD4AD0)
  {
    result = swift_getWitnessTable(byte_100A7BEF0, &type metadata for ReportWeatherViewState, v0, v1);
    atomic_store(result, &qword_100CD4AD0);
  }

  return result;
}

uint64_t sub_10070B0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MoonDetailSelectedDate(0);
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_1006559C8(v1, v5 - v4);
  type metadata accessor for Date();
  sub_1000037E8();
  return (*(v7 + 32))(a1, v6);
}

uint64_t sub_10070B184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626275726373 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F74747562 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000)
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

uint64_t sub_10070B294(char a1)
{
  if (!a1)
  {
    return 0x7265626275726373;
  }

  if (a1 == 1)
  {
    return 0x6E6F74747562;
  }

  return 0x68636E75616CLL;
}

uint64_t sub_10070B2E4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v44 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v43 = v7 - v8;
  __chkstk_darwin(v9);
  sub_100013628();
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003C38();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  sub_10022C350(&qword_100CD4B88, &qword_100A7C050);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v42 - v24;
  v27 = *(v26 + 56);
  sub_1006559C8(a1, &v42 - v24);
  sub_1006559C8(v45, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1006559C8(v25, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100016DD0();
        v29 = v44;
        v30(v2);
        v31 = static Date.== infix(_:_:)();
        v32 = *(v5 + 8);
        v32(v2, v29);
        v33 = v19;
        v34 = v29;
LABEL_9:
        v32(v33, v34);
LABEL_13:
        sub_1003DE8B4(v25);
        return v31 & 1;
      }

      v16 = v19;
    }

    else
    {
      sub_1006559C8(v25, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100016DD0();
        v36 = v43;
        v35 = v44;
        v37(v43);
        v31 = static Date.== infix(_:_:)();
        v32 = *(v5 + 8);
        v32(v36, v35);
        v33 = v16;
        v34 = v35;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_1006559C8(v25, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100016DD0();
      v38 = v44;
      v39(v12);
      v31 = static Date.== infix(_:_:)();
      v40 = *(v5 + 8);
      v40(v12, v38);
      v40(v22, v38);
      goto LABEL_13;
    }

    v16 = v22;
  }

  (*(v5 + 8))(v16, v44);
  sub_10070C880(v25);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_10070B664(void *a1)
{
  sub_10022C350(&qword_100CD4BD0, &qword_100A7C080);
  sub_1000037C4();
  v61 = v4;
  v62 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v60 = v6;
  sub_10022C350(&qword_100CD4BD8, &qword_100A7C088);
  sub_1000037C4();
  v58 = v8;
  v59 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v57 = v10;
  v56 = sub_10022C350(&qword_100CD4BE0, &qword_100A7C090);
  sub_1000037C4();
  v53 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v55 = v13;
  v66 = type metadata accessor for Date();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003C38();
  v54 = (v17 - v18);
  __chkstk_darwin(v19);
  sub_100013628();
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CD4BE8, &qword_100A7C098);
  sub_1000037C4();
  v64 = v28;
  v65 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &v52 - v30;
  v32 = a1[3];
  sub_1000161C0(a1, v32);
  sub_10070C8E8();
  v33 = v15;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1006559C8(v63, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100049B3C();
      v35();
      v68 = 1;
      sub_10070C990();
      v36 = v57;
      sub_1000289CC(&type metadata for MoonDetailSelectedDate.ButtonCodingKeys, &v68);
      sub_10001F608();
      sub_10070CA38(v37, v38, &protocol conformance descriptor for Date);
      v39 = v59;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v58 + 8))(v36, v39);
      v22 = v1;
    }

    else
    {
      v22 = v54;
      sub_100049B3C();
      v46();
      v69 = 2;
      sub_10070C93C();
      v47 = v60;
      sub_1000289CC(&type metadata for MoonDetailSelectedDate.LaunchCodingKeys, &v69);
      sub_10001F608();
      sub_10070CA38(v48, v49, &protocol conformance descriptor for Date);
      v50 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v61 + 8))(v47, v50);
    }
  }

  else
  {
    v40 = v53;
    sub_100049B3C();
    v41();
    v67 = 0;
    sub_10070C9E4();
    v42 = v55;
    sub_1000289CC(&type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, &v67);
    sub_10001F608();
    sub_10070CA38(v43, v44, &protocol conformance descriptor for Date);
    v45 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v40 + 8))(v42, v45);
  }

  (*(v33 + 8))(v22, v32);
  return (*(v64 + 8))(v31, v26);
}

uint64_t sub_10070BBCC(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_1006559C8(v1, v11 - v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v8, v12, v2);
  Hasher._combine(_:)(EnumCaseMultiPayload);
  sub_10001F608();
  sub_10070CA38(v14, v15, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v8, v2);
}

Swift::Int sub_10070BD40()
{
  Hasher.init(_seed:)();
  sub_10070BBCC(v1);
  return Hasher._finalize()();
}

uint64_t sub_10070BD80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v89 = sub_10022C350(&qword_100CD4B90, &qword_100A7C058);
  sub_1000037C4();
  v82 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v84 = v5;
  sub_10022C350(&qword_100CD4B98, &qword_100A7C060);
  sub_1000037C4();
  v80 = v7;
  v81 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v86 = v9;
  sub_10022C350(&qword_100CD4BA0, &qword_100A7C068);
  sub_1000037C4();
  v78 = v11;
  v79 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v83 = v13;
  sub_10022C350(&qword_100CD4BA8, &unk_100A7C070);
  sub_1000037C4();
  v87 = v15;
  v88 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003C38();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  __chkstk_darwin(v28);
  v30 = &v72 - v29;
  v31 = a1[3];
  v90 = a1;
  sub_1000161C0(a1, v31);
  sub_10070C8E8();
  v32 = v91;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    return sub_100006F14(v90);
  }

  v74 = v24;
  v75 = v21;
  v76 = v27;
  v77 = v30;
  v33 = v88;
  v91 = v17;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v36 == v37 >> 1)
  {
    goto LABEL_8;
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    return result;
  }

  v38 = *(v35 + v36);
  sub_100618E7C();
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  if (v40 != v42 >> 1)
  {
LABEL_8:
    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v50 = v49;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v50 = v91;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_1000202BC();
    v52(v51, v33);
    return sub_100006F14(v90);
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v93 = 1;
      sub_10070C990();
      sub_100022EA8(&type metadata for MoonDetailSelectedDate.ButtonCodingKeys, &v93);
      v43 = v77;
      type metadata accessor for Date();
      sub_10001F608();
      sub_10070CA38(v44, v45, &protocol conformance descriptor for Date);
      v46 = v74;
      v47 = v81;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v73 = 0;
      swift_unknownObjectRelease();
      v59 = sub_1000202BC();
      v60(v59, v47);
      v61 = sub_100010544();
    }

    else
    {
      v94 = 2;
      sub_10070C93C();
      sub_100022EA8(&type metadata for MoonDetailSelectedDate.LaunchCodingKeys, &v94);
      v43 = v77;
      type metadata accessor for Date();
      sub_10001F608();
      sub_10070CA38(v57, v58, &protocol conformance descriptor for Date);
      v46 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v73 = 0;
      swift_unknownObjectRelease();
      v70 = sub_1000523CC();
      v71(v70);
      v61 = sub_100014AD8();
    }

    v62(v61);
    swift_storeEnumTagMultiPayload();
    v69 = v46;
    v68 = v90;
    v53 = v85;
  }

  else
  {
    v92 = 0;
    sub_10070C9E4();
    sub_100022EA8(&type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, &v92);
    v53 = v85;
    type metadata accessor for Date();
    sub_10001F608();
    sub_10070CA38(v54, v55, &protocol conformance descriptor for Date);
    v56 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v73 = 0;
    swift_unknownObjectRelease();
    v63 = sub_1000202BC();
    v64(v63, v56);
    v65 = sub_100014AD8();
    v66(v65);
    v67 = v76;
    swift_storeEnumTagMultiPayload();
    v68 = v90;
    v43 = v77;
    v69 = v67;
  }

  sub_1003C6614(v69, v43);
  sub_1003C6614(v43, v53);
  return sub_100006F14(v68);
}

uint64_t sub_10070C580(uint64_t a1)
{
  v2 = sub_10070C990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C5BC(uint64_t a1)
{
  v2 = sub_10070C990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070B184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070C628(uint64_t a1)
{
  v2 = sub_10070C8E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C664(uint64_t a1)
{
  v2 = sub_10070C8E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C6A0(uint64_t a1)
{
  v2 = sub_10070C93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C6DC(uint64_t a1)
{
  v2 = sub_10070C93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C718(uint64_t a1)
{
  v2 = sub_10070C9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C754(uint64_t a1)
{
  v2 = sub_10070C9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10070C79C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10070BBCC(v2);
  return Hasher._finalize()();
}

uint64_t sub_10070C880(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD4B88, &qword_100A7C050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10070C8E8()
{
  result = qword_100CD4BB0;
  if (!qword_100CD4BB0)
  {
    result = swift_getWitnessTable(byte_100A7C4D4, &type metadata for MoonDetailSelectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BB0);
  }

  return result;
}

unint64_t sub_10070C93C()
{
  result = qword_100CD4BB8;
  if (!qword_100CD4BB8)
  {
    result = swift_getWitnessTable(aM_75, &type metadata for MoonDetailSelectedDate.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BB8);
  }

  return result;
}

unint64_t sub_10070C990()
{
  result = qword_100CD4BC0;
  if (!qword_100CD4BC0)
  {
    result = swift_getWitnessTable(byte_100A7C434, &type metadata for MoonDetailSelectedDate.ButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BC0);
  }

  return result;
}

unint64_t sub_10070C9E4()
{
  result = qword_100CD4BC8;
  if (!qword_100CD4BC8)
  {
    result = swift_getWitnessTable(asc_100A7C3E4, &type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BC8);
  }

  return result;
}

uint64_t sub_10070CA38(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for MoonDetailSelectedDate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10070CB7C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10070CC2C()
{
  result = qword_100CD4BF0;
  if (!qword_100CD4BF0)
  {
    result = swift_getWitnessTable(aM_76, &type metadata for MoonDetailSelectedDate.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BF0);
  }

  return result;
}

unint64_t sub_10070CC84()
{
  result = qword_100CD4BF8;
  if (!qword_100CD4BF8)
  {
    result = swift_getWitnessTable(byte_100A7C24C, &type metadata for MoonDetailSelectedDate.ButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4BF8);
  }

  return result;
}

unint64_t sub_10070CCDC()
{
  result = qword_100CD4C00;
  if (!qword_100CD4C00)
  {
    result = swift_getWitnessTable(byte_100A7C304, &type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C00);
  }

  return result;
}

unint64_t sub_10070CD34()
{
  result = qword_100CD4C08;
  if (!qword_100CD4C08)
  {
    result = swift_getWitnessTable(aE_68, &type metadata for MoonDetailSelectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C08);
  }

  return result;
}

unint64_t sub_10070CD8C()
{
  result = qword_100CD4C10;
  if (!qword_100CD4C10)
  {
    result = swift_getWitnessTable(aM_77, &type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C10);
  }

  return result;
}

unint64_t sub_10070CDE4()
{
  result = qword_100CD4C18;
  if (!qword_100CD4C18)
  {
    result = swift_getWitnessTable(a5_34, &type metadata for MoonDetailSelectedDate.ScrubberCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C18);
  }

  return result;
}

unint64_t sub_10070CE3C()
{
  result = qword_100CD4C20;
  if (!qword_100CD4C20)
  {
    result = swift_getWitnessTable(asc_100A7C1BC, &type metadata for MoonDetailSelectedDate.ButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C20);
  }

  return result;
}

unint64_t sub_10070CE94()
{
  result = qword_100CD4C28;
  if (!qword_100CD4C28)
  {
    result = swift_getWitnessTable(byte_100A7C1E4, &type metadata for MoonDetailSelectedDate.ButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C28);
  }

  return result;
}

unint64_t sub_10070CEEC()
{
  result = qword_100CD4C30;
  if (!qword_100CD4C30)
  {
    result = swift_getWitnessTable(byte_100A7C104, &type metadata for MoonDetailSelectedDate.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C30);
  }

  return result;
}

unint64_t sub_10070CF44()
{
  result = qword_100CD4C38;
  if (!qword_100CD4C38)
  {
    result = swift_getWitnessTable(byte_100A7C12C, &type metadata for MoonDetailSelectedDate.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C38);
  }

  return result;
}

unint64_t sub_10070CF9C()
{
  result = qword_100CD4C40;
  if (!qword_100CD4C40)
  {
    result = swift_getWitnessTable(byte_100A7C32C, &type metadata for MoonDetailSelectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C40);
  }

  return result;
}

unint64_t sub_10070CFF4()
{
  result = qword_100CD4C48;
  if (!qword_100CD4C48)
  {
    result = swift_getWitnessTable(asc_100A7C354, &type metadata for MoonDetailSelectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4C48);
  }

  return result;
}

void sub_10070D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a5 && a2 == a6;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000BCFBC();
    if (v7)
    {
      sub_100003B2C();

      sub_1000BD330();
    }
  }
}

uint64_t sub_10070D0D8()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CD4D28, &unk_100A7C910);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      Dictionary.init(dictionaryLiteral:)();
      sub_10012CDA0();
      ShortDescription.init(name:_:)();
      sub_10001CB98();
      sub_1001A126C(v7 + v22, v23);
      sub_100008D68();
      sub_1001A126C(v7 + v21, v24);
      v15 = type metadata accessor for WeatherData;
      goto LABEL_7;
    case 2u:
      v27 = *v7;
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      sub_100052068(inited, xmmword_100A2C3F0);
      inited[4].n128_u64[1] = sub_10022C350(&qword_100CACE00, &qword_100A7C920);
      v19 = swift_allocObject();
      inited[3].n128_u64[0] = v19;
      *(v19 + 16) = v27;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
      goto LABEL_5;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
LABEL_5:
      ShortDescription.init(name:_:)();
      break;
    default:
      v14 = Dictionary.init(dictionaryLiteral:)();
      sub_1000B02F0(v14);
      v15 = type metadata accessor for LocationWeatherDataState;
LABEL_7:
      sub_1001A126C(v7, v15);
      break;
  }

  v0[3] = v8;
  v0[4] = sub_10012EF24(&qword_100CD4D30, &qword_100CD4D28, &unk_100A7C910);
  v25 = sub_100042FB0(v0);
  return (*(v10 + 32))(v25, v13, v8);
}

void sub_10070D3FC()
{
  sub_10000C778();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for UUID();
  sub_1000037C4();
  v55 = v10;
  v56 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100079578();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for PreprocessedWeatherData(0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v54 = v22 - v21;
  v23 = sub_1000038CC();
  v24 = type metadata accessor for WeatherData(v23);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v53 = v27 - v26;
  v28 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003C38();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v49 - v34;

  sub_1000864C0(v6, v4, v2);
  if (sub_100024D10(v35, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  v51 = v8;
  v52 = v6;
  sub_1005C1F54(v35, v32, &qword_100CA37B0, &unk_100A2D740);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100019DF0();
    sub_1001A126C(v32, v46);
    v8 = v51;
LABEL_5:
    sub_1000289EC();
    sub_1001A0E7C(v8, v18);
    sub_10003BF3C();
    swift_storeEnumTagMultiPayload();
    sub_10000496C();
    v47 = sub_1000F0034();
    sub_1001A10BC(v47, v48);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1000871F0();
    sub_1002391FC();

    goto LABEL_6;
  }

  v36 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v37 = *(v36 + 64);
  v49 = *(v36 + 48);
  v50 = v37;
  sub_100014D4C();
  v38 = v53;
  sub_1001A10BC(v32, v53);
  sub_10002307C();
  sub_1001A10BC(v32 + v49, v54);
  v49 = *(v36 + 48);
  v39 = *(v36 + 64);
  sub_1000249E4();
  sub_1001A0E7C(v38, v18);
  sub_100041B2C();
  v40 = v54;
  sub_1001A0E7C(v54, &v18[v49]);
  sub_1000289EC();
  sub_1001A0E7C(v51, &v18[v39]);
  sub_10003BF3C();
  swift_storeEnumTagMultiPayload();
  sub_10000496C();
  v41 = sub_1000F0034();
  sub_1001A10BC(v41, v42);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000871F0();
  sub_1002391FC();

  sub_100008D68();
  sub_1001A126C(v40, v43);
  sub_10001F620();
  sub_1001A126C(v53, v44);
  sub_10001CB98();
  sub_1001A126C(v32 + v50, v45);
LABEL_6:
  sub_1000180EC(v35, &qword_100CA37B0, &unk_100A2D740);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v55 + 8))(v13, v56);
  sub_10000536C();
}

void sub_10070D800()
{
  sub_10000C778();
  v77 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v68 = v7;
  type metadata accessor for UUID();
  sub_1000037C4();
  v75 = v9;
  v76 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  v70 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v69 = &v65 - v17;
  v18 = sub_1000038CC();
  v19 = type metadata accessor for NewsDataModel(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v74 = v22 - v21;
  v23 = sub_1000038CC();
  v24 = type metadata accessor for PreprocessedWeatherData(v23);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v73 = v27 - v26;
  v28 = sub_1000038CC();
  v29 = type metadata accessor for WeatherData(v28);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = (v31 - v32);
  __chkstk_darwin(v34);
  v36 = &v65 - v35;
  v37 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003C38();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v65 - v43;

  v71 = v6;
  v72 = v4;
  v45 = v6;
  v46 = v2;
  sub_1000864C0(v45, v4, v2);
  if (sub_100024D10(v44, 1, v13) != 1)
  {
    sub_1005C1F54(v44, v41, &qword_100CA37B0, &unk_100A2D740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v47 = *(v67 + 48);
      v48 = *(v67 + 64);
      sub_100014D4C();
      sub_1001A10BC(v41, v36);
      sub_10002307C();
      sub_1001A10BC(v41 + v47, v73);
      sub_100010968();
      sub_1001A10BC(v41 + v48, v74);
      v50 = *v36;
      v66 = *(v36 + 1);
      v49 = v66;
      sub_1005C1F54(&v36[v29[5]], &v33[v29[5]], &qword_100CAA9F0, qword_100A44F50);
      v51 = v29[6];
      type metadata accessor for WeatherDataModel();
      sub_1000037E8();
      (*(v52 + 16))(&v33[v51], &v36[v51]);
      sub_10003728C();
      sub_1001A0E7C(v68, &v33[v53]);
      sub_100025378();
      sub_1001A0E7C(&v36[v54], &v33[v54]);
      sub_1005C1F54(&v36[v29[9]], &v33[v29[9]], &qword_100CA75C8, &unk_100A325F0);
      *v33 = v50;
      *(v33 + 1) = v49;
      v55 = *(v67 + 48);
      v56 = *(v67 + 64);
      sub_1000249E4();
      v57 = v69;
      sub_1001A0E7C(v33, v69);
      sub_100041B2C();
      v58 = v73;
      sub_1001A0E7C(v73, v57 + v55);
      sub_1000289EC();
      v59 = v57 + v56;
      v60 = v74;
      sub_1001A0E7C(v74, v59);
      sub_10003C310();
      swift_storeEnumTagMultiPayload();
      sub_10000496C();
      sub_1001A10BC(v57, v70);

      swift_isUniquelyReferenced_nonNull_native();
      v78 = v46;
      sub_1002391FC();

      sub_1001A126C(v33, type metadata accessor for WeatherData);
      sub_10001CB98();
      sub_1001A126C(v60, v61);
      sub_100008D68();
      sub_1001A126C(v58, v62);
      v63 = sub_100003940();
    }

    else
    {
      sub_100019DF0();
      v63 = v41;
    }

    sub_1001A126C(v63, v64);
  }

  sub_1000180EC(v44, &qword_100CA37B0, &unk_100A2D740);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v75 + 8))(v12, v76);
  sub_100003940();
  sub_10000536C();
}

uint64_t sub_10070DCF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000100ABAE70 == a2)
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

uint64_t sub_10070DE10(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0xD000000000000011;
}

uint64_t sub_10070DE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1937204590 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10070DFC4(char a1)
{
  result = 0x676E6964616F6CLL;
  switch(a1)
  {
    case 1:
      result = 1937204590;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x64656C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10070E034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 12895 && a2 == 0xE200000000000000)
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

uint64_t sub_10070E144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7272456863746566 && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_10070E218(char a1)
{
  if (a1)
  {
    return 0x7272456863746566;
  }

  else
  {
    return 0x73654D726F727265;
  }
}

uint64_t sub_10070E264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070DCF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E28C(uint64_t a1)
{
  v2 = sub_1007122D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E2C8(uint64_t a1)
{
  v2 = sub_1007122D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070DE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E334(uint64_t a1)
{
  v2 = sub_100712618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E370(uint64_t a1)
{
  v2 = sub_100712618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E3DC(uint64_t a1)
{
  v2 = sub_100712714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E418(uint64_t a1)
{
  v2 = sub_100712714();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E484(uint64_t a1)
{
  v2 = sub_10071266C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E4C0(uint64_t a1)
{
  v2 = sub_10071266C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E4FC(uint64_t a1)
{
  v2 = sub_1007127BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E538(uint64_t a1)
{
  v2 = sub_1007127BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E574(uint64_t a1)
{
  v2 = sub_100712768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E5B0(uint64_t a1)
{
  v2 = sub_100712768();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t sub_10070E6F8(char a1)
{
  if (!a1)
  {
    return 0x676E6964616F6CLL;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x64656C696166;
}

uint64_t sub_10070E744(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10070E7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E7FC(uint64_t a1)
{
  v2 = sub_100712864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E838(uint64_t a1)
{
  v2 = sub_100712864();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E874(uint64_t a1)
{
  v2 = sub_10071290C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E8B0(uint64_t a1)
{
  v2 = sub_10071290C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E744(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10070E91C(uint64_t a1)
{
  v2 = sub_1007128B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E958(uint64_t a1)
{
  v2 = sub_1007128B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E994(uint64_t a1)
{
  v2 = sub_100712960();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E9D0(uint64_t a1)
{
  v2 = sub_100712960();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10070EA0C()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for PreprocessedWeatherData(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v86 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v89 = &v84 - v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for WeatherData(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v87 = (v15 - v14);
  v16 = sub_1000038CC();
  v17 = type metadata accessor for NewsDataModel(v16);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100003848();
  v85 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v88 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003C38();
  v28 = (v26 - v27);
  __chkstk_darwin(v29);
  sub_100079578();
  __chkstk_darwin(v30);
  v32 = &v84 - v31;
  v33 = sub_10022C350(&qword_100CD4D20, &unk_100A7C900);
  sub_100003810(v33);
  sub_100003828();
  __chkstk_darwin(v34);
  sub_100013348();
  v36 = (v0 + v35);
  sub_1001A0E7C(v5, v0);
  sub_1001A0E7C(v3, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100006610();
      v49 = sub_1000F0034();
      sub_1001A0E7C(v49, v50);
      v51 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v52 = *(v51 + 48);
      v53 = *(v51 + 64);
      if (sub_1000C8F20() != 1)
      {
        sub_10001CB98();
        sub_1001A126C(v1 + v53, v67);
        sub_100008D68();
        sub_1001A126C(v1 + v52, v68);
        sub_10001F620();
        v38 = v1;
        goto LABEL_19;
      }

      sub_100014D4C();
      v54 = v87;
      sub_1001A10BC(v36, v87);
      sub_1001A10BC(v1 + v52, v89);
      v55 = v88;
      sub_1001A10BC(v1 + v53, v88);
      v56 = v86;
      sub_1001A10BC(v36 + v52, v86);
      v57 = v85;
      sub_1001A10BC(v36 + v53, v85);
      v58 = sub_100883064(v1, v54);
      sub_10001F620();
      sub_1001A126C(v1, v59);
      if (v58)
      {
        v60 = v89;
        if (sub_1001D3D2C(v89, v56))
        {
          v61 = v88;
          sub_1009D82EC(v88, v57);
          sub_100020AA4();
          sub_1001A126C(v57, v62);
          sub_1001A126C(v56, type metadata accessor for PreprocessedWeatherData);
          sub_1001A126C(v61, v58);
          sub_1001A126C(v60, type metadata accessor for PreprocessedWeatherData);
          sub_10001F620();
          v64 = v54;
          goto LABEL_22;
        }

        sub_100020AA4();
        sub_1001A126C(v57, v81);
        sub_10002164C();
        sub_1001A126C(v56, v82);
        sub_1001A126C(v88, v58);
        v80 = v60;
      }

      else
      {
        sub_100020AA4();
        sub_1001A126C(v57, v78);
        sub_10002164C();
        sub_1001A126C(v56, v79);
        sub_1001A126C(v55, v58);
        v80 = v89;
      }

      sub_1001A126C(v80, type metadata accessor for NewsDataModel);
      sub_10001F620();
      sub_1001A126C(v54, v83);
      goto LABEL_25;
    case 2u:
      sub_100006610();
      sub_1001A0E7C(v0, v28);
      v40 = *v28;
      v39 = v28[1];
      if (sub_1000C8F20() != 2)
      {
        v65 = sub_100031474();
        sub_10031EF8C(v65, v66);

        goto LABEL_20;
      }

      v41 = v36[2];
      v42 = v36[3];
      if (v40 == *v36 && v39 == v36[1])
      {
      }

      else
      {
        sub_100020E44();
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          v45 = sub_10002C598();
          sub_10031EF8C(v45, v46);
          v47 = sub_100031474();
          sub_10031EF8C(v47, v48);
          goto LABEL_25;
        }
      }

      v71 = sub_100031474();
      sub_1008983B8(v71, v72, v41, v42);
      v73 = sub_100031474();
      sub_10031EF8C(v73, v74);
      v75 = sub_10002C598();
      sub_10031EF8C(v75, v76);
      goto LABEL_25;
    case 3u:
      if (sub_1000C8F20() == 3)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    default:
      sub_100006610();
      sub_1001A0E7C(v0, v32);
      if (sub_1000C8F20())
      {
        sub_10001CB98();
        v38 = v32;
LABEL_19:
        sub_1001A126C(v38, v37);
LABEL_20:
        sub_1000180EC(v0, &qword_100CD4D20, &unk_100A7C900);
      }

      else
      {
        sub_100010968();
        sub_1001A10BC(v36, v24);
        v69 = sub_100031474();
        sub_1009D82EC(v69, v70);
        sub_1001A126C(v24, type metadata accessor for NewsDataModel);
        v64 = v32;
        v63 = type metadata accessor for NewsDataModel;
LABEL_22:
        sub_1001A126C(v64, v63);
LABEL_25:
        sub_100019DF0();
        sub_1001A126C(v0, v77);
      }

      sub_10000536C();
      return;
  }
}

void sub_10070EFDC()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v28 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  sub_10003BA64();
  v15 = sub_10022C350(&qword_100CAA7E0, &qword_100A352C0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_100013348();
  v18 = (v0 + v17);
  sub_1001A0E7C(v3, v0);
  v19 = sub_100014AD8();
  sub_1001A0E7C(v19, v20);
  sub_100003940();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100049B4C();
      sub_1001A0E7C(v0, v13);
      v23 = *v13;
      v22 = v13[1];
      sub_10003C310();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v23 != *v18 || v22 != v18[1])
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_10003C310();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_18:
        sub_10000ED34();
        goto LABEL_19;
      }
    }
  }

  else
  {
    sub_100049B4C();
    sub_1001A0E7C(v0, v1);
    sub_10003C310();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v28 + 32))(v9, v18, v4);
      sub_100016DE0();
      sub_100712170(v25, v26, &protocol conformance descriptor for AvailableDataSets);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27 = *(v28 + 8);
      v27(v9, v4);
      v27(v1, v4);
      sub_10000ED34();
      goto LABEL_19;
    }

    (*(v28 + 8))(v1, v4);
  }

  sub_1000180EC(v0, &qword_100CAA7E0, &qword_100A352C0);
LABEL_19:
  sub_10000536C();
}

uint64_t sub_10070F324@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  sub_1000C83E0(inited, xmmword_100A2D320);
  sub_10022C350(&qword_100CD4D48, &qword_100A7C938);
  inited[3].n128_u64[0] = a1;
  sub_1000326A0();
  inited[4].n128_u64[1] = v8;
  inited[5].n128_u64[0] = v7 | 1;
  inited[5].n128_u64[1] = v9;
  inited[7].n128_u64[1] = sub_10022C350(&qword_100CD4D50, &qword_100A7C940);
  inited[6].n128_u64[0] = a2;

  Dictionary.init(dictionaryLiteral:)();
  a3[3] = sub_10022C350(&qword_100CD4D58, &qword_100A7C948);
  a3[4] = sub_10012EF24(&qword_100CD4D60, &qword_100CD4D58, &qword_100A7C948);
  sub_100042FB0(a3);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10070F488(uint64_t a1)
{
  sub_100712210();

  return ShortDescribable.description.getter();
}

void sub_10070F4C4()
{
  sub_10000C778();
  v2 = v0;
  v35 = v3;
  v4 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for NewsDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v10 = sub_1000115E8();
  type metadata accessor for LocationWeatherDataState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CD4D28, &unk_100A7C910);
  sub_1000037C4();
  v17 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  sub_100006610();
  sub_1001A0E7C(v2, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100712264(v14, v7);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v30 = sub_1000C83E0(inited, xmmword_100A2C3F0);
      v30[4].n128_u64[1] = v4;
      v31 = sub_100042FB0(&v30[3]);
      sub_1005C1F54(v7, v31, &qword_100CA75D8, &unk_100A32600);
      Dictionary.init(dictionaryLiteral:)();
      sub_10012CDA0();
      ShortDescription.init(name:_:)();
      sub_1000180EC(v7, &qword_100CA75D8, &unk_100A32600);
      break;
    case 2u:
      v34 = *v14;
      v25 = *(v14 + 16);
      v26 = *(v14 + 24);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v27 = swift_initStackObject();
      sub_100052068(v27, xmmword_100A2C3F0);
      v27[4].n128_u64[1] = sub_10022C350(&qword_100CACE00, &qword_100A7C920);
      v28 = swift_allocObject();
      v27[3].n128_u64[0] = v28;
      *(v28 + 16) = v34;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
      goto LABEL_5;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
LABEL_5:
      ShortDescription.init(name:_:)();
      break;
    default:
      sub_100010968();
      sub_1001A10BC(v14, v1);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_100A2C3F0;
      *(v21 + 32) = 0x617461447377656ELL;
      *(v21 + 40) = 0xE800000000000000;
      *(v21 + 72) = v8;
      sub_100042FB0((v21 + 48));
      sub_1000289EC();
      sub_1001A0E7C(v1, v22);
      v23 = Dictionary.init(dictionaryLiteral:)();
      sub_1000B02F0(v23);
      sub_10001CB98();
      sub_1001A126C(v1, v24);
      break;
  }

  v32 = v35;
  v35[3] = v15;
  v32[4] = sub_10012EF24(&qword_100CD4D30, &qword_100CD4D28, &unk_100A7C910);
  v33 = sub_100042FB0(v32);
  (*(v17 + 32))(v33, v20, v15);
  sub_10000536C();
}

uint64_t sub_10070F904(uint64_t a1)
{
  sub_100712170(&qword_100CD4D70, type metadata accessor for LocationWeatherDataState, byte_100A7C7F4);

  return ShortDescribable.description.getter();
}

void sub_10070F970()
{
  sub_10000C778();
  v4 = v1;
  sub_10000C76C();
  v5 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v9 = sub_1000115E8();
  type metadata accessor for LocationAvailableDataSetState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v14 = sub_10022C350(&qword_100CD4D78, &qword_100A7C950);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003CF8();
  sub_100049B4C();
  sub_1001A0E7C(v4, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v13;
      v20 = v13[1];
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v22 = sub_100052068(inited, xmmword_100A2C3F0);
      v22[4].n128_u64[1] = &type metadata for String;
      v22[3].n128_u64[0] = v19;
      v22[3].n128_u64[1] = v20;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
    }

    ShortDescription.init(name:_:)();
  }

  else
  {
    (*(v7 + 32))(v3, v13, v5);
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_1000326A0();
    v23[4] = v25;
    v23[5] = v24;
    v23[9] = v5;
    v26 = sub_100042FB0(v23 + 6);
    (*(v7 + 16))(v26, v3, v5);
    Dictionary.init(dictionaryLiteral:)();
    sub_10012CDA0();
    ShortDescription.init(name:_:)();
    (*(v7 + 8))(v3, v5);
  }

  v0[3] = v14;
  v0[4] = sub_10012EF24(&qword_100CD4D80, &qword_100CD4D78, &qword_100A7C950);
  v27 = sub_100042FB0(v0);
  (*(v16 + 32))(v27, v2, v14);
  sub_10000536C();
}

void sub_10070FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v23 = v22;
  v24 = sub_10022C350(&qword_100CD4DC0, &qword_100A7C960);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  sub_100003CF8();
  sub_1000161C0(v23, v23[3]);
  sub_1007122D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v20)
  {
    sub_10022C350(&qword_100CD4D48, &qword_100A7C938);
    v28 = sub_1007124A0();
    sub_1000D42B8(v28);
    sub_10022C350(&qword_100CD4D50, &qword_100A7C940);
    v29 = sub_10071255C();
    sub_1000D42B8(v29);
  }

  (*(v26 + 8))(v21, v24);
  sub_10000C8F4();
}

void sub_10070FE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v22 = v21;
  sub_10022C350(&qword_100CD4D90, &qword_100A7C958);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v23);
  v24 = sub_1000F0034();
  sub_1000161C0(v24, v25);
  sub_1007122D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10022C350(&qword_100CD4D48, &qword_100A7C938);
    sub_100712328();
    sub_1000B99FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10022C350(&qword_100CD4D50, &qword_100A7C940);
    sub_1007123E4();
    sub_1000B99FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = sub_100036E30();
    v27(v26);
  }

  sub_100006F14(v22);
  sub_100020E44();
  sub_10000C8F4();
}

void sub_100710064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v124 = v24;
  v120 = v23;
  v27 = v26;
  sub_10022C350(&qword_100CD4E50, &qword_100A7C998);
  sub_1000037C4();
  v112 = v29;
  v113 = v28;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v111 = v31;
  sub_10022C350(&qword_100CD4E58, &qword_100A7C9A0);
  sub_1000037C4();
  v115 = v33;
  v116 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v114 = v35;
  v36 = sub_1000038CC();
  v107[0] = type metadata accessor for PreprocessedWeatherData(v36);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000037D8();
  v117 = v39 - v38;
  v40 = sub_1000038CC();
  v109 = type metadata accessor for WeatherData(v40);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v118 = v43 - v42;
  sub_10022C350(&qword_100CD4E60, &qword_100A7C9A8);
  sub_1000037C4();
  v107[3] = v45;
  v108 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  v107[2] = v47;
  v48 = sub_1000038CC();
  v119 = type metadata accessor for NewsDataModel(v48);
  sub_1000037E8();
  __chkstk_darwin(v49);
  sub_100003848();
  v110 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  v53 = v107 - v52;
  sub_10022C350(&qword_100CD4E68, &qword_100A7C9B0);
  sub_1000037C4();
  v107[1] = v54;
  sub_100003828();
  __chkstk_darwin(v55);
  v56 = sub_1000115E8();
  type metadata accessor for LocationWeatherDataState(v56);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_1000037D8();
  v60 = v59 - v58;
  sub_10022C350(&qword_100CD4E70, &qword_100A7C9B8);
  sub_1000037C4();
  v122 = v61;
  v123 = v62;
  sub_100003828();
  __chkstk_darwin(v63);
  sub_100003CF8();
  sub_1000161C0(v27, v27[3]);
  sub_100712618();
  v121 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100006610();
  sub_1001A0E7C(v120, v60);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v87 = *(v86 + 48);
      v88 = *(v86 + 64);
      sub_100014D4C();
      v89 = v118;
      sub_1001A10BC(v60, v118);
      sub_10002307C();
      v90 = v117;
      sub_1001A10BC(v60 + v87, v117);
      sub_100010968();
      v91 = v110;
      sub_1001A10BC(v60 + v88, v110);
      LOBYTE(v125) = 2;
      sub_100712714();
      v92 = v114;
      v65 = v121;
      v64 = v122;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v125) = 0;
      sub_1000305A0();
      sub_100712170(v93, v94, byte_100A907D0);
      v95 = v116;
      v96 = v124;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v96)
      {
        LOBYTE(v125) = 1;
        sub_100024314();
        sub_100712170(v97, v98, byte_100A986E0);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        LOBYTE(v125) = 2;
        sub_10004E9A0();
        sub_100712170(v99, v100, byte_100AA4378);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v115 + 8))(v92, v95);
      sub_10001CB98();
      sub_1001A126C(v91, v101);
      sub_100008D68();
      sub_1001A126C(v90, v102);
      sub_10001F620();
      v72 = v89;
      goto LABEL_10;
    case 2u:
      v74 = *(v60 + 16);
      v73 = *(v60 + 24);
      LOBYTE(v125) = 3;
      sub_10071266C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v125) = 0;
      v75 = v124;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v75)
      {

        sub_10031EF8C(v74, v73);
        v76 = sub_1001707AC();
        v77(v76);
        v78 = sub_100020E44();
LABEL_11:
        v80(v78, v79);
      }

      else
      {

        v125 = v74;
        v126 = v73;
        sub_100712810();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v103 = sub_1001707AC();
        v104(v103);
        v105 = sub_100020E44();
        v106(v105);
        sub_10031EF8C(v74, v73);
      }

LABEL_12:
      sub_10000C8F4();
      return;
    case 3u:
      LOBYTE(v125) = 0;
      sub_1007127BC();
      v81 = v122;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v82 = sub_100014AD8();
      v83(v82);
      v84 = sub_1000202BC();
      v85(v84, v81);
      goto LABEL_12;
    default:
      sub_1001A10BC(v60, v53);
      LOBYTE(v125) = 1;
      sub_100712768();
      v65 = v121;
      v64 = v122;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10004E9A0();
      sub_100712170(v66, v67, byte_100AA4378);
      v68 = v108;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v69 = sub_100052730();
      v70(v69, v68);
      sub_10001CB98();
      v72 = v53;
LABEL_10:
      sub_1001A126C(v72, v71);
      v80 = *(v123 + 8);
      v78 = v65;
      v79 = v64;
      goto LABEL_11;
  }
}

void sub_100710860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v134 = v23;
  v25 = v24;
  v128 = v26;
  sub_10022C350(&qword_100CD4DE8, &qword_100A7C968);
  sub_1000037C4();
  v122 = v28;
  v123 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  v126 = v30;
  sub_10022C350(&qword_100CD4DF0, &qword_100A7C970);
  sub_1000037C4();
  v129 = v32;
  v130 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v127 = v34;
  sub_10022C350(&qword_100CD4DF8, &qword_100A7C978);
  sub_1000037C4();
  v120 = v36;
  v121 = v35;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v125 = v38;
  sub_10022C350(&qword_100CD4E00, &qword_100A7C980);
  sub_1000037C4();
  v118 = v40;
  v119 = v39;
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  v124 = v42;
  sub_10022C350(&qword_100CD4E08, &unk_100A7C988);
  sub_1000037C4();
  v131 = v44;
  v132 = v43;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_100003CF8();
  v46 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003C38();
  v50 = (v48 - v49);
  __chkstk_darwin(v51);
  v53 = &v113 - v52;
  __chkstk_darwin(v54);
  v56 = &v113 - v55;
  __chkstk_darwin(v57);
  v59 = &v113 - v58;
  v60 = v25[3];
  v133 = v25;
  sub_1000161C0(v25, v60);
  sub_100712618();
  v61 = v134;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v61)
  {
    goto LABEL_8;
  }

  v115 = v56;
  v114 = v50;
  v117 = v53;
  v116 = v59;
  v134 = v46;
  v62 = v132;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v64 == v65 >> 1)
  {
LABEL_7:
    v73 = v134;
    v74 = type metadata accessor for DecodingError();
    swift_allocError();
    v76 = v75;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v76 = v73;
    v77 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v77);
    (*(*(v74 - 8) + 104))(v76, enum case for DecodingError.typeMismatch(_:), v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    v78 = sub_1000202BC();
    v79(v78, v62);
LABEL_8:
    v80 = v133;
LABEL_9:
    sub_100006F14(v80);
    sub_10000C8F4();
    return;
  }

  v113 = 0;
  if (v64 < (v65 >> 1))
  {
    v66 = *(v63 + v64);
    sub_100618E7C();
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    if (v68 == v70 >> 1)
    {
      v71 = v128;
      switch(v66)
      {
        case 1:
          LOBYTE(v135[0]) = 1;
          sub_100712768();
          sub_100021124(&type metadata for LocationWeatherDataState.NewsCodingKeys, v135);
          type metadata accessor for NewsDataModel(0);
          sub_10004E9A0();
          sub_100712170(v87, v88, byte_100AA43A0);
          v89 = v115;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v96 = sub_1000C9078();
          v97(v96);
          sub_100020724();
          v98 = sub_10003BF3C();
          v99(v98);
          swift_storeEnumTagMultiPayload();
          sub_10000496C();
          v86 = v116;
          sub_1001A10BC(v89, v116);
          goto LABEL_13;
        case 2:
          LOBYTE(v135[0]) = 2;
          sub_100712714();
          sub_100021124(&type metadata for LocationWeatherDataState.DataCodingKeys, v135);
          type metadata accessor for WeatherData(0);
          LOBYTE(v135[0]) = 0;
          sub_1000305A0();
          sub_100712170(v81, v82, byte_100A907F8);
          sub_1000B99FC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v126 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
          v90 = *(v126 + 48);
          type metadata accessor for PreprocessedWeatherData(0);
          LOBYTE(v135[0]) = 1;
          sub_100024314();
          sub_100712170(v91, v92, aY1_1);
          sub_1000B99FC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v125 = v90;
          type metadata accessor for NewsDataModel(0);
          LOBYTE(v135[0]) = 2;
          sub_10004E9A0();
          sub_100712170(v101, v102, byte_100AA43A0);
          v103 = v130;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v108 = sub_100052730();
          v109(v108, v103);
          v110 = sub_10003BF3C();
          v111(v110);
          v112 = v117;
          goto LABEL_15;
        case 3:
          LOBYTE(v135[0]) = 3;
          sub_10071266C();
          sub_100021124(&type metadata for LocationWeatherDataState.FailedCodingKeys, v135);
          LOBYTE(v135[0]) = 0;
          v83 = v123;
          v93 = KeyedDecodingContainer.decode(_:forKey:)();
          v95 = v94;
          sub_1007126C0();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v104 = sub_1000202BC();
          v105(v104, v83);
          v106 = sub_10003BF3C();
          v107(v106);
          v112 = v114;
          *v114 = v93;
          *(v112 + 8) = v95;
          *(v112 + 16) = v135[0];
LABEL_15:
          swift_storeEnumTagMultiPayload();
          sub_10000496C();
          v86 = v116;
          sub_1001A10BC(v112, v116);
          v100 = v133;
          v71 = v128;
          break;
        default:
          LOBYTE(v135[0]) = 0;
          sub_1007127BC();
          v72 = v124;
          sub_100021124(&type metadata for LocationWeatherDataState.LoadingCodingKeys, v135);
          swift_unknownObjectRelease();
          (*(v118 + 8))(v72, v119);
          sub_100020724();
          v84 = sub_10003BF3C();
          v85(v84);
          v86 = v116;
          swift_storeEnumTagMultiPayload();
LABEL_13:
          v100 = v133;
          break;
      }

      sub_10000496C();
      sub_1001A10BC(v86, v71);
      v80 = v100;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_100711300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v78 = v24;
  v76 = v23;
  v26 = v25;
  v73 = sub_10022C350(&qword_100CD4ED8, &qword_100A7C9E0);
  sub_1000037C4();
  v71 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v68 = v29;
  v72 = sub_10022C350(&qword_100CD4EE0, &qword_100A7C9E8);
  sub_1000037C4();
  v67 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v75 = v32;
  sub_1000038CC();
  type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v69 = v34;
  v70 = v33;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v74 = v36 - v35;
  v37 = sub_10022C350(&qword_100CD4EE8, &qword_100A7C9F0);
  sub_1000037C4();
  v66[1] = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = v42 - v41;
  v77 = sub_10022C350(&qword_100CD4EF0, &qword_100A7C9F8);
  sub_1000037C4();
  v45 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  v48 = v66 - v47;
  sub_1000161C0(v26, v26[3]);
  sub_100712864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100049B4C();
  sub_1001A0E7C(v76, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1007128B8();
      v50 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = v73;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_100020724();
      v52(v50, v51);
      v53 = sub_100014AD8();
      v54(v53);
    }

    else
    {
      sub_100712960();
      v63 = v77;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v64 = sub_100052730();
      v65(v64, v37);
      (*(v45 + 8))(v48, v63);
    }
  }

  else
  {
    v55 = v67;
    v56 = v69;
    v57 = v43;
    v58 = v70;
    (*(v69 + 32))(v74, v57, v70);
    sub_10071290C();
    v59 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100016DE0();
    sub_100712170(v60, v61, &protocol conformance descriptor for AvailableDataSets);
    v62 = v72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v75, v62);
    (*(v56 + 8))(v74, v58);
    (*(v45 + 8))(v48, v59);
  }

  sub_10000C8F4();
}

void sub_1007117F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v27;
  a24 = v28;
  v112 = v24;
  v30 = v29;
  v107 = v31;
  sub_10022C350(&qword_100CD4E90, &qword_100A7C9C0);
  sub_1000037C4();
  v108 = v33;
  v109 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v106 = v35;
  sub_10022C350(&qword_100CD4E98, &qword_100A7C9C8);
  sub_1000037C4();
  v102 = v37;
  v103 = v36;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v105 = v39;
  sub_10022C350(&qword_100CD4EA0, &qword_100A7C9D0);
  sub_1000037C4();
  v100 = v41;
  v101 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v104 = v43;
  sub_10022C350(&qword_100CD4EA8, &qword_100A7C9D8);
  sub_1000037C4();
  v110 = v45;
  v111 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  v48 = &v95 - v47;
  v49 = type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_100003C38();
  sub_100079578();
  __chkstk_darwin(v51);
  v53 = &v95 - v52;
  __chkstk_darwin(v54);
  sub_10003BA64();
  sub_1000161C0(v30, v30[3]);
  sub_100712864();
  v55 = v112;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v55)
  {
    goto LABEL_10;
  }

  v96 = v26;
  v97 = v53;
  v98 = v25;
  v99 = v49;
  v112 = v30;
  v56 = v111;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v58 == v59 >> 1)
  {
LABEL_9:
    v74 = type metadata accessor for DecodingError();
    swift_allocError();
    v76 = v75;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v76 = v99;
    v77 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v77);
    (*(*(v74 - 8) + 104))(v76, enum case for DecodingError.typeMismatch(_:), v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100014A24();
    v78(v48, v56);
    v30 = v112;
LABEL_10:
    sub_100006F14(v30);
LABEL_11:
    sub_10000C8F4();
    return;
  }

  if (v58 < (v59 >> 1))
  {
    v60 = v48;
    v61 = *(v57 + v58);
    sub_100618E7C();
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    v66 = v63 == v65 >> 1;
    v68 = v108;
    v67 = v109;
    if (!v66)
    {
      v48 = v60;
      goto LABEL_9;
    }

    if (v61)
    {
      if (v61 == 1)
      {
        a13 = 1;
        sub_10071290C();
        sub_10008684C(&type metadata for LocationAvailableDataSetState.DataCodingKeys, &a13);
        v69 = v107;
        type metadata accessor for AvailableDataSets();
        sub_100016DE0();
        sub_100712170(v70, v71, &protocol conformance descriptor for AvailableDataSets);
        v72 = v97;
        v73 = v103;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v83 = sub_1000202BC();
        v84(v83, v73);
        v85 = sub_100020E44();
        v86(v85);
        swift_storeEnumTagMultiPayload();
        sub_10000CE1C();
        v87 = v98;
        sub_1001A10BC(v72, v98);
LABEL_15:
        sub_10000CE1C();
        sub_1001A10BC(v87, v69);
        sub_100006F14(v112);
        goto LABEL_11;
      }

      a14 = 2;
      sub_1007128B8();
      v80 = v106;
      sub_10008684C(&type metadata for LocationAvailableDataSetState.FailedCodingKeys, &a14);
      v88 = KeyedDecodingContainer.decode(_:forKey:)();
      v90 = v89;
      swift_unknownObjectRelease();
      (*(v68 + 8))(v80, v67);
      sub_100014A24();
      v91 = sub_100014AD8();
      v92(v91);
      v93 = v96;
      *v96 = v88;
      v93[1] = v90;
      swift_storeEnumTagMultiPayload();
      sub_10000CE1C();
      v94 = v93;
      v87 = v98;
      sub_1001A10BC(v94, v98);
    }

    else
    {
      a12 = 0;
      sub_100712960();
      v79 = v104;
      sub_10008684C(&type metadata for LocationAvailableDataSetState.LoadingCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v100 + 8))(v79, v101);
      v81 = sub_1000202BC();
      v82(v81, v56);
      v87 = v98;
      swift_storeEnumTagMultiPayload();
    }

    v69 = v107;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_100711F14(uint64_t a1)
{
  sub_100712170(&qword_100CD4D88, type metadata accessor for LocationAvailableDataSetState, byte_100A7C79C);

  return ShortDescribable.description.getter();
}

void sub_100712030(uint64_t *a1@<X8>)
{
  sub_100780068();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_100712170(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1007121BC()
{
  result = qword_100CD4D18;
  if (!qword_100CD4D18)
  {
    result = swift_getWitnessTable(byte_100A7C824, &type metadata for WeatherDataState, v0, v1);
    atomic_store(result, &qword_100CD4D18);
  }

  return result;
}

unint64_t sub_100712210()
{
  result = qword_100CD4D68;
  if (!qword_100CD4D68)
  {
    result = swift_getWitnessTable(asc_100A7C84C, &type metadata for WeatherDataState, v0, v1);
    atomic_store(result, &qword_100CD4D68);
  }

  return result;
}

uint64_t sub_100712264(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007122D4()
{
  result = qword_100CD4D98;
  if (!qword_100CD4D98)
  {
    result = swift_getWitnessTable(aA_62, &type metadata for WeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4D98);
  }

  return result;
}

unint64_t sub_100712328()
{
  result = qword_100CD4DA0;
  if (!qword_100CD4DA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4D48, &qword_100A7C938);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100712170(&qword_100CD4DA8, type metadata accessor for LocationWeatherDataState, byte_100A7C6FC);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD4DA0);
  }

  return result;
}

unint64_t sub_1007123E4()
{
  result = qword_100CD4DB0;
  if (!qword_100CD4DB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4D50, &qword_100A7C940);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100712170(&qword_100CD4DB8, type metadata accessor for LocationAvailableDataSetState, byte_100A7C6AC);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD4DB0);
  }

  return result;
}

unint64_t sub_1007124A0()
{
  result = qword_100CD4DC8;
  if (!qword_100CD4DC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4D48, &qword_100A7C938);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100712170(&qword_100CD4DD0, type metadata accessor for LocationWeatherDataState, byte_100A7C6D4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD4DC8);
  }

  return result;
}

unint64_t sub_10071255C()
{
  result = qword_100CD4DD8;
  if (!qword_100CD4DD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4D50, &qword_100A7C940);
    v4[0] = &protocol witness table for String;
    v4[1] = sub_100712170(&qword_100CD4DE0, type metadata accessor for LocationAvailableDataSetState, byte_100A7C684);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD4DD8);
  }

  return result;
}

unint64_t sub_100712618()
{
  result = qword_100CD4E10;
  if (!qword_100CD4E10)
  {
    result = swift_getWitnessTable(byte_100A7D360, &type metadata for LocationWeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4E10);
  }

  return result;
}

unint64_t sub_10071266C()
{
  result = qword_100CD4E18;
  if (!qword_100CD4E18)
  {
    result = swift_getWitnessTable(byte_100A7D310, &type metadata for LocationWeatherDataState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4E18);
  }

  return result;
}

unint64_t sub_1007126C0()
{
  result = qword_100CD4E20;
  if (!qword_100CD4E20)
  {
    result = swift_getWitnessTable(byte_100A92D90, &type metadata for WeatherFetchErrorKind, v0, v1);
    atomic_store(result, &qword_100CD4E20);
  }

  return result;
}

unint64_t sub_100712714()
{
  result = qword_100CD4E28;
  if (!qword_100CD4E28)
  {
    result = swift_getWitnessTable(a1_27, &type metadata for LocationWeatherDataState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4E28);
  }

  return result;
}

unint64_t sub_100712768()
{
  result = qword_100CD4E40;
  if (!qword_100CD4E40)
  {
    result = swift_getWitnessTable(byte_100A7D270, &type metadata for LocationWeatherDataState.NewsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4E40);
  }

  return result;
}

unint64_t sub_1007127BC()
{
  result = qword_100CD4E48;
  if (!qword_100CD4E48)
  {
    result = swift_getWitnessTable(byte_100A7D220, &type metadata for LocationWeatherDataState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4E48);
  }

  return result;
}

unint64_t sub_100712810()
{
  result = qword_100CD4E78;
  if (!qword_100CD4E78)
  {
    result = swift_getWitnessTable(asc_100A92D68, &type metadata for WeatherFetchErrorKind, v0, v1);
    atomic_store(result, &qword_100CD4E78);
  }

  return result;
}

unint64_t sub_100712864()
{
  result = qword_100CD4EB0;
  if (!qword_100CD4EB0)
  {
    result = swift_getWitnessTable(asc_100A7D1D0, &type metadata for LocationAvailableDataSetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4EB0);
  }

  return result;
}

unint64_t sub_1007128B8()
{
  result = qword_100CD4EB8;
  if (!qword_100CD4EB8)
  {
    result = swift_getWitnessTable(aQ_63, &type metadata for LocationAvailableDataSetState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4EB8);
  }

  return result;
}

unint64_t sub_10071290C()
{
  result = qword_100CD4EC0;
  if (!qword_100CD4EC0)
  {
    result = swift_getWitnessTable(byte_100A7D130, &type metadata for LocationAvailableDataSetState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4EC0);
  }

  return result;
}

unint64_t sub_100712960()
{
  result = qword_100CD4ED0;
  if (!qword_100CD4ED0)
  {
    result = swift_getWitnessTable(byte_100A7D0E0, &type metadata for LocationAvailableDataSetState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4ED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationWeatherDataState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100712AE0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationWeatherDataState.FailedCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100712C78(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100712D58()
{
  result = qword_100CD4FB0;
  if (!qword_100CD4FB0)
  {
    result = swift_getWitnessTable(byte_100A7CB10, &type metadata for WeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FB0);
  }

  return result;
}

unint64_t sub_100712DB0()
{
  result = qword_100CD4FB8;
  if (!qword_100CD4FB8)
  {
    result = swift_getWitnessTable(a9_25, &type metadata for LocationWeatherDataState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FB8);
  }

  return result;
}

unint64_t sub_100712E08()
{
  result = qword_100CD4FC0;
  if (!qword_100CD4FC0)
  {
    result = swift_getWitnessTable(byte_100A7CC80, &type metadata for LocationWeatherDataState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FC0);
  }

  return result;
}

unint64_t sub_100712E60()
{
  result = qword_100CD4FC8;
  if (!qword_100CD4FC8)
  {
    result = swift_getWitnessTable(byte_100A7CD38, &type metadata for LocationWeatherDataState.NewsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FC8);
  }

  return result;
}

unint64_t sub_100712EB8()
{
  result = qword_100CD4FD0;
  if (!qword_100CD4FD0)
  {
    result = swift_getWitnessTable(byte_100A7CE40, &type metadata for LocationWeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FD0);
  }

  return result;
}

unint64_t sub_100712F10()
{
  result = qword_100CD4FD8;
  if (!qword_100CD4FD8)
  {
    result = swift_getWitnessTable(asc_100A7CEF8, &type metadata for LocationAvailableDataSetState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FD8);
  }

  return result;
}

unint64_t sub_100712F68()
{
  result = qword_100CD4FE0;
  if (!qword_100CD4FE0)
  {
    result = swift_getWitnessTable(aQ_64, &type metadata for LocationAvailableDataSetState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FE0);
  }

  return result;
}

unint64_t sub_100712FC0()
{
  result = qword_100CD4FE8;
  if (!qword_100CD4FE8)
  {
    result = swift_getWitnessTable(aI_59, &type metadata for LocationAvailableDataSetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FE8);
  }

  return result;
}

unint64_t sub_100713018()
{
  result = qword_100CD4FF0;
  if (!qword_100CD4FF0)
  {
    result = swift_getWitnessTable(asc_100A7CFD8, &type metadata for LocationAvailableDataSetState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FF0);
  }

  return result;
}

unint64_t sub_100713070()
{
  result = qword_100CD4FF8;
  if (!qword_100CD4FF8)
  {
    result = swift_getWitnessTable(byte_100A7D000, &type metadata for LocationAvailableDataSetState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD4FF8);
  }

  return result;
}

unint64_t sub_1007130C8()
{
  result = qword_100CD5000;
  if (!qword_100CD5000)
  {
    result = swift_getWitnessTable(byte_100A7CF20, &type metadata for LocationAvailableDataSetState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5000);
  }

  return result;
}

unint64_t sub_100713120()
{
  result = qword_100CD5008;
  if (!qword_100CD5008)
  {
    result = swift_getWitnessTable(byte_100A7CF48, &type metadata for LocationAvailableDataSetState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5008);
  }

  return result;
}

unint64_t sub_100713178()
{
  result = qword_100CD5010;
  if (!qword_100CD5010)
  {
    result = swift_getWitnessTable(aY_74, &type metadata for LocationAvailableDataSetState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5010);
  }

  return result;
}

unint64_t sub_1007131D0()
{
  result = qword_100CD5018;
  if (!qword_100CD5018)
  {
    result = swift_getWitnessTable(aA_63, &type metadata for LocationAvailableDataSetState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5018);
  }

  return result;
}

unint64_t sub_100713228()
{
  result = qword_100CD5020;
  if (!qword_100CD5020)
  {
    result = swift_getWitnessTable(byte_100A7D028, &type metadata for LocationAvailableDataSetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5020);
  }

  return result;
}

unint64_t sub_100713280()
{
  result = qword_100CD5028;
  if (!qword_100CD5028)
  {
    result = swift_getWitnessTable(byte_100A7D050, &type metadata for LocationAvailableDataSetState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5028);
  }

  return result;
}

unint64_t sub_1007132D8()
{
  result = qword_100CD5030;
  if (!qword_100CD5030)
  {
    result = swift_getWitnessTable(byte_100A7CD60, &type metadata for LocationWeatherDataState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5030);
  }

  return result;
}

unint64_t sub_100713330()
{
  result = qword_100CD5038;
  if (!qword_100CD5038)
  {
    result = swift_getWitnessTable(aI_60, &type metadata for LocationWeatherDataState.LoadingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5038);
  }

  return result;
}

unint64_t sub_100713388()
{
  result = qword_100CD5040;
  if (!qword_100CD5040)
  {
    result = swift_getWitnessTable(a9_26, &type metadata for LocationWeatherDataState.NewsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5040);
  }

  return result;
}

unint64_t sub_1007133E0()
{
  result = qword_100CD5048;
  if (!qword_100CD5048)
  {
    result = swift_getWitnessTable(byte_100A7CCD0, &type metadata for LocationWeatherDataState.NewsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5048);
  }

  return result;
}

unint64_t sub_100713438()
{
  result = qword_100CD5050;
  if (!qword_100CD5050)
  {
    result = swift_getWitnessTable(byte_100A7CBF0, &type metadata for LocationWeatherDataState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5050);
  }

  return result;
}

unint64_t sub_100713490()
{
  result = qword_100CD5058;
  if (!qword_100CD5058)
  {
    result = swift_getWitnessTable(byte_100A7CC18, &type metadata for LocationWeatherDataState.DataCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5058);
  }

  return result;
}

unint64_t sub_1007134E8()
{
  result = qword_100CD5060;
  if (!qword_100CD5060)
  {
    result = swift_getWitnessTable(byte_100A7CB38, &type metadata for LocationWeatherDataState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5060);
  }

  return result;
}

unint64_t sub_100713540()
{
  result = qword_100CD5068;
  if (!qword_100CD5068)
  {
    result = swift_getWitnessTable(aQ_65, &type metadata for LocationWeatherDataState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5068);
  }

  return result;
}

unint64_t sub_100713598()
{
  result = qword_100CD5070;
  if (!qword_100CD5070)
  {
    result = swift_getWitnessTable(a1_28, &type metadata for LocationWeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5070);
  }

  return result;
}

unint64_t sub_1007135F0()
{
  result = qword_100CD5078;
  if (!qword_100CD5078)
  {
    result = swift_getWitnessTable(byte_100A7CDD8, &type metadata for LocationWeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5078);
  }

  return result;
}

unint64_t sub_100713648()
{
  result = qword_100CD5080;
  if (!qword_100CD5080)
  {
    result = swift_getWitnessTable(aA_64, &type metadata for WeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5080);
  }

  return result;
}

unint64_t sub_1007136A0()
{
  result = qword_100CD5088;
  if (!qword_100CD5088)
  {
    result = swift_getWitnessTable(asc_100A7CAA8, &type metadata for WeatherDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5088);
  }

  return result;
}

uint64_t sub_10071374C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationHeaderViewLargeText(0);
  sub_1000955E0(v1 + *(v13 + 28), v12, &qword_100CA3EE8, &qword_100A5D3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10071392C()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Font.Weight.thin.getter();
  v14 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_1000180EC(v7, &qword_100CA4020, &qword_100A2E080);
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  v15 = Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_100713C18()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Font.Weight.light.getter();
  v14 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_1000180EC(v7, &qword_100CA4020, &qword_100A2E080);
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  v15 = Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_100713F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v26 = v4;
  v27 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CD5130, &qword_100A7D488);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&qword_100CD5138, &qword_100A7D490);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v28 = sub_10022C350(&qword_100CD5140, &qword_100A7D498);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = sub_10022C350(&qword_100CD5148, &qword_100A7D4A0);
  sub_100714264(v2, &v11[*(v21 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v22 = sub_100006F64(&qword_100CD5150, &qword_100CD5130, &qword_100A7D488, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v26 + 8))(v7, v27);
  sub_1000180EC(v11, &qword_100CD5130, &qword_100A7D488);
  v32 = v8;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v14 + 8))(v17, v12);
  Solarium.init()();
  v31 = v25;
  v30 = v25;
  sub_10022C350(&qword_100CD5158, &unk_100A7D4A8);
  sub_100717878();
  sub_1007179A4();
  View.staticIf<A, B, C>(_:then:else:)();
  return sub_1000180EC(v20, &qword_100CD5140, &qword_100A7D498);
}

uint64_t sub_100714264@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a2;
  v3 = sub_10022C350(&qword_100CD5170, &qword_100A7D4B8);
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = (&v85 - v6);
  v7 = *(type metadata accessor for LocationHeaderViewLargeText(0) + 32);
  *(&v88 + 1) = a1;
  v8 = a1 + v7;
  v9 = *(a1 + v7);
  v10 = *(v8 + 8);
  *&v98 = v9;
  *(&v98 + 1) = v10;
  v11 = sub_10002D5A4();

  *&v88 = v11;
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.largeTitle.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v12, v14, v16 & 1);

  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v93 = Text.shadow(color:radius:x:y:)();
  v92 = v22;
  v24 = v23;
  v94 = v25;

  sub_10010CD64(v17, v19, v21 & 1);

  v26 = *(v8 + 24);
  v27 = *(v8 + 40) >> 6;
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(v8 + 32);
      *&v98 = *(v8 + 24);
      *(&v98 + 1) = v28;

      v29 = Text.init<A>(_:)();
      v31 = v30;
      v33 = v32;
      v34 = v24;
      static Font.footnote.getter();
      v35 = Text.font(_:)();
      v37 = v36;
      v39 = v38;

      sub_10010CD64(v29, v31, v33 & 1);

      static Color.black.getter();
      sub_100156608();
      Color.opacity(_:)();

      sub_100156634();
      sub_10015667C();
      sub_100156658();
      v40 = Text.shadow(color:radius:x:y:)();
      v42 = v41;
      v44 = v43;
      v46 = v45;

      sub_10010CD64(v35, v37, v39 & 1);

      v47 = v44 & 1;
      v24 = v34;
      *&v95 = v40;
      *(&v95 + 1) = v42;
      *&v96 = v47;
      *(&v96 + 1) = v46;
      v97 = 256;
    }

    else
    {
      LOBYTE(v97) = 0;
      v95 = 0u;
      v96 = 0u;
      _ConditionalContent<>.init(storage:)();
      v95 = v98;
      v96 = v99;
      v97 = v100;
    }

    sub_10022C350(&qword_100CD5178, &qword_100A7D4C0);
    sub_100717A78();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *&v98 = *(v8 + 16);
    *(&v98 + 1) = v26;

    v48 = Text.init<A>(_:)();
    v50 = v49;
    v52 = v51;
    static Font.footnote.getter();
    v53 = Text.font(_:)();
    v55 = v54;
    v56 = v24;
    v58 = v57;

    sub_10010CD64(v48, v50, v52 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v59 = Text.shadow(color:radius:x:y:)();
    v61 = v60;
    LOBYTE(v48) = v62;
    v64 = v63;

    sub_10010CD64(v53, v55, v58 & 1);

    v65 = v48 & 1;
    *&v95 = v59;
    *(&v95 + 1) = v61;
    *&v96 = v65;
    *(&v96 + 1) = v64;
    LOBYTE(v97) = 1;
    sub_10010CD54(v59, v61, v65);

    _ConditionalContent<>.init(storage:)();
    v95 = v98;
    v96 = v99;
    v97 = v100;
    sub_10022C350(&qword_100CD5178, &qword_100A7D4C0);
    sub_100717A78();
    v24 = v56;
    _ConditionalContent<>.init(storage:)();
    sub_10010CD64(v59, v61, v65);
  }

  v66 = v100;
  v67 = v101;
  v68 = *(&v88 + 1);
  v85 = v99;
  v86 = v98;
  v87 = v98;
  v88 = v99;
  sub_100717AFC(v98, *(&v98 + 1), v99, *(&v99 + 1), v100, v101);
  v69 = static Alignment.topLeading.getter();
  v70 = v90;
  *v90 = v69;
  *(v70 + 8) = v71;
  v72 = sub_10022C350(&qword_100CD5188, &qword_100A7D4C8);
  sub_100714A94(v68, v70 + *(v72 + 44));
  v73 = v91;
  sub_1000955E0(v70, v91, &qword_100CD5170, &qword_100A7D4B8);
  v74 = v89;
  *v89 = 0;
  *(v74 + 8) = 1;
  v75 = v93;
  v76 = v94;
  v77 = v92;
  v74[2] = v93;
  v74[3] = v77;
  v78 = v24 & 1;
  *(v74 + 32) = v78;
  v74[5] = v76;
  v79 = v85;
  *(v74 + 3) = v86;
  *(v74 + 4) = v79;
  *(v74 + 80) = v66;
  *(v74 + 81) = v67;
  v80 = sub_10022C350(&qword_100CD5190, &qword_100A7D4D0);
  sub_1000955E0(v73, v74 + *(v80 + 80), &qword_100CD5170, &qword_100A7D4B8);
  v81 = v74 + *(v80 + 96);
  sub_10010CD54(v75, v77, v78);

  v82 = v87;
  v83 = v88;
  sub_100717AFC(v87, *(&v87 + 1), v88, *(&v88 + 1), v66, v67);
  sub_100717BA4(v82, *(&v82 + 1), v83, *(&v83 + 1), v66, v67);
  *v81 = 0;
  v81[8] = 1;
  sub_1000180EC(v70, &qword_100CD5170, &qword_100A7D4B8);
  sub_1000180EC(v73, &qword_100CD5170, &qword_100A7D4B8);
  sub_100717BA4(v82, *(&v82 + 1), v83, *(&v83 + 1), v66, v67);
  sub_10010CD64(v93, v92, v78);
}

uint64_t sub_100714A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CD5198, &qword_100A7D4D8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v19 = sub_10022C350(&qword_100CD51A0, &qword_100A7D4E0);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_10022C350(&qword_100CD51A8, &qword_100A7D4E8);
  sub_100714D5C(a1);
  static AccessibilityChildBehavior.ignore.getter();
  v12 = sub_100006F64(&qword_100CD51B0, &qword_100CD5198, &qword_100A7D4D8, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v20);
  sub_1000180EC(v8, &qword_100CD5198, &qword_100A7D4D8);
  v13 = a1 + *(type metadata accessor for LocationHeaderViewLargeText(0) + 32);
  v15 = *(v13 + 136);
  v14 = *(v13 + 144);
  v24 = v15;
  v25 = v14;
  v22 = v6;
  v23 = v12;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v16 = v19;
  View.accessibilityLabel<A>(_:)();
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_100714D5C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v92 = v3;
  v4 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v4 - 8);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v76 - v7;
  v78 = type metadata accessor for EnvironmentValues();
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10022C350(&qword_100CA4000, &qword_100A4AB20);
  __chkstk_darwin(v86);
  v87 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v76 - v16;
  sub_1007156D0(v2, v104);
  v95 = *(&v104[0] + 1);
  v90 = *&v104[1];
  v91 = *&v104[0];
  v89 = *(&v104[1] + 1);
  v88 = LOBYTE(v104[2]);
  v17 = *(type metadata accessor for LocationHeaderViewLargeText(0) + 32);
  v93 = v2;
  v18 = (v2 + v17);
  v84 = *(v2 + v17 + 128);
  if (v84 != 1)
  {
    goto LABEL_9;
  }

  v19 = v18[13];
  v20 = v18[12] & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v18[15];
  v22 = v18[14] & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  if (v22)
  {
    sub_100715C64(v101);
    memcpy(v102, v101, sizeof(v102));
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v104, v102, 0x26BuLL);
  }

  else
  {
LABEL_9:
    sub_100717C4C(v104);
  }

  v23 = v18[6];
  v24 = v18[7];
  v85 = v18;
  *v102 = v23;
  *&v102[8] = v24;
  sub_10002D5A4();

  v80 = Text.init<A>(_:)();
  v81 = v25;
  v27 = v26;
  v79 = v28;
  v29 = *(v11 + 104);
  v29(v13, enum case for Font.TextStyle.title3(_:), v10);
  static Font.Weight.medium.getter();
  v30 = static Font.system(_:weight:)();
  v31 = *(v11 + 8);
  v31(v13, v10);
  v29(v13, enum case for Font.TextStyle.body(_:), v10);
  static Font.Weight.medium.getter();
  v32 = static Font.system(_:weight:)();
  v31(v13, v10);
  v33 = *v93;
  if (*(v93 + 8) == 1)
  {
    v103 = v33 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v77;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v8 + 8))(v35, v78);
    LOBYTE(v33) = v103;
  }

  v36 = enum case for Font.Leading.tight(_:);
  v37 = type metadata accessor for Font.Leading();
  v38 = v82;
  (*(*(v37 - 8) + 104))(v82, v36, v37);
  sub_10001B350(v38, 0, 1, v37);
  v39 = v83;
  sub_1000955E0(v38, v83, &qword_100CACFF0, &unk_100A48000);

  sub_1001C987C(v30, v32, v33 & 1, v39);
  LOBYTE(v37) = v27;
  v41 = v80;
  v40 = v81;
  v83 = Text.font(_:)();
  v77 = v43;
  v78 = v42;
  v45 = v44;

  sub_10010CD64(v41, v40, v37 & 1);

  sub_1000180EC(v38, &qword_100CACFF0, &unk_100A48000);
  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v46 = v83;
  v47 = v78;
  v48 = Text.shadow(color:radius:x:y:)();
  v50 = v49;
  LOBYTE(v37) = v51;

  sub_10010CD64(v46, v47, v45 & 1);

  *v102 = static HierarchicalShapeStyle.secondary.getter();
  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  LOBYTE(v39) = v55;
  v57 = v56;
  sub_10010CD64(v48, v50, v37 & 1);

  v58 = *(v86 + 36);
  v59 = enum case for BlendMode.plusLighter(_:);
  v60 = type metadata accessor for BlendMode();
  v61 = v94;
  (*(*(v60 - 8) + 104))(v94 + v58, v59, v60);
  *v61 = v52;
  *(v61 + 8) = v54;
  *(v61 + 16) = v39 & 1;
  *(v61 + 24) = v57;
  if (v84)
  {
    goto LABEL_21;
  }

  v62 = v85[13];
  v63 = v85[12] & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v62) & 0xF;
  }

  if (!v63)
  {
    goto LABEL_21;
  }

  v64 = v85[15];
  v65 = v85[14] & 0xFFFFFFFFFFFFLL;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v65 = HIBYTE(v64) & 0xF;
  }

  if (v65)
  {
    sub_100715C64(v100);
    memcpy(v101, v100, 0x26BuLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v102, v101, sizeof(v102));
  }

  else
  {
LABEL_21:
    sub_100717C4C(v102);
  }

  memcpy(v97, v104, sizeof(v97));
  v66 = v94;
  v67 = v87;
  sub_1000955E0(v94, v87, &qword_100CA4000, &qword_100A4AB20);
  memcpy(v96, v102, sizeof(v96));
  v69 = v91;
  v68 = v92;
  v70 = v95;
  *v92 = v91;
  v68[1] = v70;
  v72 = v89;
  v71 = v90;
  v68[2] = v90;
  v68[3] = v72;
  *(v68 + 32) = v88;
  memcpy(v98, v97, 0x26BuLL);
  memcpy(v68 + 5, v97, 0x26BuLL);
  v73 = sub_10022C350(&qword_100CD51B8, &qword_100A7D4F0);
  sub_1000955E0(v67, v68 + *(v73 + 64), &qword_100CA4000, &qword_100A4AB20);
  v74 = *(v73 + 80);
  memcpy(v99, v96, 0x26BuLL);
  memcpy(v68 + v74, v96, 0x26BuLL);
  sub_100717C80(v69, v70, v71);
  sub_1000955E0(v98, v101, &qword_100CD51C0, &qword_100A7D4F8);
  sub_1000955E0(v99, v101, &qword_100CD51C0, &qword_100A7D4F8);
  sub_1000180EC(v66, &qword_100CA4000, &qword_100A4AB20);
  memcpy(v100, v96, 0x26BuLL);
  sub_1000180EC(v100, &qword_100CD51C0, &qword_100A7D4F8);
  sub_1000180EC(v67, &qword_100CA4000, &qword_100A4AB20);
  memcpy(v101, v97, 0x26BuLL);
  sub_1000180EC(v101, &qword_100CD51C0, &qword_100A7D4F8);
  return sub_100717CBC(v69, v95, v71);
}

double sub_1007156D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for Font.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for LocationHeaderViewLargeText(0) + 32));
  v8 = v7[11];
  if (v8)
  {
    v9 = v7[9];
    v10 = v7[10];
    *&v81 = v7[8];
    *(&v81 + 1) = v9;
    sub_10002D5A4();
    v70 = v4;

    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    v69 = v3;
    sub_10071392C();
    v74 = Text.font(_:)();
    v73 = v16;
    v71 = v17;
    v72 = v18;

    sub_10010CD64(v11, v13, v15 & 1);

    *&v81 = v10;
    *(&v81 + 1) = v8;
    v19 = Text.init<A>(_:)();
    v21 = v20;
    LOBYTE(v11) = v22;
    sub_100713C18();
    v23 = Text.font(_:)();
    v25 = v24;
    v27 = v26;
    v68[1] = v28;

    sub_10010CD64(v19, v21, v11 & 1);

    sub_10071392C();
    sub_10071374C(v6);
    Font.capHeight(in:)();

    v29 = *(v70 + 8);
    v30 = v69;
    v29(v6, v69);
    sub_100713C18();
    sub_10071374C(v6);
    Font.capHeight(in:)();

    v29(v6, v30);
    v31 = Text.baselineOffset(_:)();
    v33 = v32;
    LOBYTE(v11) = v34;
    sub_10010CD64(v23, v25, v27 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v35 = Text.shadow(color:radius:x:y:)();
    v37 = v36;
    v39 = v38;

    sub_10010CD64(v31, v33, v11 & 1);

    LOBYTE(v33) = v71;
    v40 = v74;
    v41 = v73;
    v70 = static Text.+ infix(_:_:)();
    v69 = v42;
    LOBYTE(v11) = v43;
    v45 = v44;
    sub_10010CD64(v35, v37, v39 & 1);

    sub_10010CD64(v40, v41, v33 & 1);

    v76 = v70;
    v77 = v69;
    v78 = v11 & 1;
    v79 = v45;
    v80 = 0;
  }

  else
  {
    v46 = v7[9];
    *&v81 = v7[8];
    *(&v81 + 1) = v46;
    sub_10002D5A4();

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    sub_10071392C();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;

    sub_10010CD64(v47, v49, v51 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v57 = Text.shadow(color:radius:x:y:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_10010CD64(v52, v54, v56 & 1);

    v76 = v57;
    v77 = v59;
    v78 = v61 & 1;
    v79 = v63;
    v80 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v81;
  v65 = v82;
  v66 = v83;
  v67 = v75;
  *v75 = v81;
  v67[1] = v65;
  *(v67 + 32) = v66;
  return result;
}

void *sub_100715C64@<X0>(void *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v65 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Font.TextStyle();
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v16 = *(type metadata accessor for LocationHeaderViewLargeText(0) + 32);
  v76 = v1;
  v17 = (v1 + v16);
  if (*(v1 + v16 + 128) == 1)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainBundle];
    v83._object = 0x8000000100ADBE90;
    v20._countAndFlagsBits = 0x98ABE9809CE6;
    v83._countAndFlagsBits = 0xD000000000000051;
    v20._object = 0xA600000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v83);

    v23 = [v18 mainBundle];
    v84._object = 0x8000000100ADBEF0;
    v24._countAndFlagsBits = 0x8EBDE4809CE6;
    v24._object = 0xA600000000000000;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v84._countAndFlagsBits = 0xD000000000000050;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v84);

    v27 = static VerticalAlignment.center.getter();
    v80[0] = 0;
    sub_100716C74(v22._countAndFlagsBits, v22._object, v76, v26._countAndFlagsBits, v26._object, v82);
    memcpy(v78, v82, sizeof(v78));
    memcpy(v79, v82, sizeof(v79));
    sub_1000955E0(v78, v81, &qword_100CD51E8, &qword_100A7D510);
    sub_1000180EC(v79, &qword_100CD51E8, &qword_100A7D510);

    memcpy(&v77[7], v78, 0x250uLL);
    v81[0] = v27;
    v81[1] = 0x4020000000000000;
    LOBYTE(v81[2]) = v80[0];
    memcpy(&v81[2] + 1, v77, 0x257uLL);
    LOWORD(v81[77]) = 256;
    sub_100717DBC(v81);
    memcpy(v80, v81, sizeof(v80));
    sub_10022C350(&qword_100CD51C8, &qword_100A7D500);
    sub_100717D04();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v65 = v10;
    v66 = v9;
    v71 = v5;
    v72 = v8;
    v73 = a1;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 14920;
    v28._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17[6]);
    v29._countAndFlagsBits = 978067488;
    v29._object = 0xE400000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17[7]);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    v31 = LocalizedStringKey.init(stringInterpolation:)();
    v35 = Text.init(_:tableName:bundle:comment:)(v31, v33, v32 & 1, v34, 0, 0, 0, "High temperature and Low temperature with 2 space separation", 60, 2);
    v37 = v36;
    v39 = v38;
    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v40 = Text.shadow(color:radius:x:y:)();
    v68 = v41;
    v69 = v40;
    v67 = v42;
    v70 = v43;

    sub_10010CD64(v35, v37, v39 & 1);

    v44 = v75;
    v45 = *(v75 + 104);
    v45(v14, enum case for Font.TextStyle.title3(_:), v12);
    static Font.Weight.medium.getter();
    v46 = static Font.system(_:weight:)();
    v47 = *(v44 + 8);
    v47(v14, v12);
    v45(v14, enum case for Font.TextStyle.body(_:), v12);
    static Font.Weight.medium.getter();
    v48 = static Font.system(_:weight:)();
    v47(v14, v12);
    v49 = *v76;
    if (*(v76 + 8) == 1)
    {
      v79[0] = v49 & 1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v51 = v74;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v49, 0);
      (*(v65 + 8))(v51, v66);
      LOBYTE(v49) = v79[0];
    }

    v52 = enum case for Font.Leading.tight(_:);
    v53 = type metadata accessor for Font.Leading();
    v54 = v72;
    (*(*(v53 - 8) + 104))(v72, v52, v53);
    sub_10001B350(v54, 0, 1, v53);
    v55 = v71;
    sub_1000955E0(v54, v71, &qword_100CACFF0, &unk_100A48000);

    sub_1001C987C(v46, v48, v49 & 1, v55);
    v56 = v67;
    v57 = v68;
    v58 = v69;
    v59 = Text.font(_:)();
    v74 = v60;
    v75 = v59;
    v62 = v61;
    v76 = v63;

    sub_10010CD64(v58, v57, v56 & 1);

    sub_1000180EC(v54, &qword_100CACFF0, &unk_100A48000);
    v81[0] = v75;
    v81[1] = v74;
    LOBYTE(v81[2]) = v62 & 1;
    v81[3] = v76;
    sub_100717CF8(v81);
    memcpy(v80, v81, sizeof(v80));
    sub_10022C350(&qword_100CD51C8, &qword_100A7D500);
    sub_100717D04();
    _ConditionalContent<>.init(storage:)();
    a1 = v73;
  }

  return memcpy(a1, v82, 0x26BuLL);
}

uint64_t sub_1007164B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v4 = type metadata accessor for EnvironmentValues();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v47 = static Edge.Set.top.getter();
  v45 = type metadata accessor for LocationHeaderViewLargeText(0);
  v46 = a2;
  sub_10009D114();
  (*(v7 + 104))(v18, enum case for UserInterfaceSizeClass.regular(_:), v6);
  sub_10001B350(v18, 0, 1, v6);
  v22 = *(v10 + 56);
  sub_1000955E0(v21, v12, &qword_100CA6028, &qword_100A40610);
  sub_1000955E0(v18, &v12[v22], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v12, 1, v6) == 1)
  {
    sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v21, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v12[v22], 1, v6) == 1)
    {
      sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000955E0(v12, v15, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v12[v22], 1, v6) != 1)
    {
      v27 = v41;
      (*(v7 + 32))(v41, &v12[v22], v6);
      sub_100717A30(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v7 + 8);
      v29(v27, v6);
      sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v21, &qword_100CA6028, &qword_100A40610);
      v29(v15, v6);
      sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
      if (v28)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v21, &qword_100CA6028, &qword_100A40610);
    (*(v7 + 8))(v15, v6);
  }

  sub_1000180EC(v12, &qword_100CA64E8, &unk_100A46060);
LABEL_7:
  v23 = v46 + *(v45 + 24);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v26 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v43 + 8))(v26, v44);
  }

LABEL_10:
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v49;
  sub_1000955E0(v48, v49, &qword_100CD5140, &qword_100A7D498);
  result = sub_10022C350(&qword_100CD5158, &unk_100A7D4A8);
  v40 = v38 + *(result + 36);
  *v40 = v47;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_100716A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static Edge.Set.top.getter();
  v11 = a2 + *(type metadata accessor for LocationHeaderViewLargeText(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v7 + 8))(v9, v6);
  }

  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1000955E0(a1, a3, &qword_100CD5140, &qword_100A7D498);
  result = sub_10022C350(&qword_100CD5158, &unk_100A7D4A8);
  v23 = a3 + *(result + 36);
  *v23 = v10;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_100716C74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v62 = a6;
  v9 = type metadata accessor for Font.Leading();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = static HorizontalAlignment.center.getter();
  LOBYTE(v83[0]) = 0;
  v39 = a3;
  sub_10071739C(a1, a2, v103);
  memcpy(v92, v103, sizeof(v92));
  memcpy(v93, v103, 0xD0uLL);
  sub_1000955E0(v92, v102, &qword_100CD51F0, &qword_100A7D518);
  sub_1000180EC(v93, &qword_100CD51F0, &qword_100A7D518);
  memcpy(&v85[7], v92, 0xD0uLL);
  v60 = LOBYTE(v83[0]);
  v51 = (a3 + *(type metadata accessor for LocationHeaderViewLargeText(0) + 32));
  v13 = v51[13];
  v103[0] = v51[12];
  v103[1] = v13;
  v50 = sub_10002D5A4();

  v14 = Text.init<A>(_:)();
  v53 = v15;
  v17 = v16;
  sub_100717DC4();
  v46 = UIFontTextStyleBody;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v45 = enum case for Font.Leading.tight(_:);
  v18 = *(v10 + 104);
  v43 = v10 + 104;
  v44 = v18;
  v40 = v9;
  v18(v12);
  Font.leading(_:)();

  v19 = *(v10 + 8);
  v41 = v10 + 8;
  v42 = v19;
  v19(v12, v9);
  v20 = v53;
  v21 = Text.font(_:)();
  v55 = v22;
  v56 = v21;
  v54 = v23;
  v57 = v24;

  sub_10010CD64(v14, v20, v17 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v47 = v86;
  v49 = v88;
  v52 = v91;
  v53 = v90;
  v99 = 1;
  v97 = v87;
  v95 = v89;
  v48 = static HorizontalAlignment.center.getter();
  LOBYTE(v83[0]) = 0;
  sub_10071739C(v58, v59, v103);
  memcpy(v100, v103, sizeof(v100));
  memcpy(v101, v103, sizeof(v101));
  sub_1000955E0(v100, v102, &qword_100CD51F0, &qword_100A7D518);
  sub_1000180EC(v101, &qword_100CD51F0, &qword_100A7D518);
  memcpy(&v84[7], v100, 0xD0uLL);
  LODWORD(v59) = LOBYTE(v83[0]);
  v25 = v51[15];
  v103[0] = v51[14];
  v103[1] = v25;

  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v31 = v40;
  v44(v12, v45, v40);
  Font.leading(_:)();

  v42(v12, v31);
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v31) = v35;
  v37 = v36;

  sub_10010CD64(v26, v28, v30 & 1);

  v83[0] = v61;
  v83[1] = 0;
  LOBYTE(v83[2]) = v60;
  memcpy(&v83[2] + 1, v85, 0xD7uLL);
  v79 = v56;
  v80 = v55;
  v81 = v54 & 1;
  v82 = v57;
  v83[29] = v83;
  v83[30] = &v79;
  v68 = 0;
  v69 = v99;
  *v70 = *v98;
  *&v70[3] = *&v98[3];
  v71 = v47;
  v72 = v97;
  *v73 = *v96;
  *&v73[3] = *&v96[3];
  v74 = v49;
  v75 = v95;
  *&v76[3] = *&v94[3];
  *v76 = *v94;
  v77 = v53;
  v78 = v52;
  v83[31] = &v68;
  v67[0] = v48;
  v67[1] = 0;
  LOBYTE(v67[2]) = v59;
  memcpy(&v67[2] + 1, v84, 0xD7uLL);
  v63 = v32;
  v64 = v34;
  v65 = v31 & 1;
  v66 = v37;
  v83[32] = v67;
  v83[33] = &v63;
  sub_1003E9738();
  sub_10010CD64(v63, v64, v65);

  memcpy(v102, v67, sizeof(v102));
  sub_1000180EC(v102, &qword_100CB5DF8, &unk_100A7D520);
  sub_10010CD64(v79, v80, v81);

  memcpy(v103, v83, 0xE8uLL);
  return sub_1000180EC(v103, &qword_100CB5DF8, &unk_100A7D520);
}

unint64_t sub_1007172C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = String.index(_:offsetBy:limitedBy:)();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = String.subscript.getter();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10071739C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  static Alignment.center.getter();
  sub_100004984();
  v90 = 1;
  v88 = v75;
  v86 = v77;

  v65 = sub_1002B0AC0(1, a1, a2);
  v66 = v12;
  v67 = v13;
  v68 = v14;
  sub_10033CD14();
  v35 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_100717DC4();
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v38 = enum case for Font.Leading.tight(_:);
  v37 = *(v7 + 104);
  v37(v11);
  Font.leading(_:)();

  v36 = *(v7 + 8);
  v36(v11, v5);
  v19 = Text.font(_:)();
  v41 = v20;
  v42 = v19;
  v40 = v21;
  v43 = v22;

  sub_10010CD64(v35, v16, v18 & 1);

  sub_1007172C4(1uLL, a1, a2);
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  (v37)(v11, v38, v5);
  Font.leading(_:)();

  v36(v11, v5);
  v28 = Text.font(_:)();
  v30 = v29;
  LOBYTE(v11) = v31;
  v33 = v32;

  sub_10010CD64(v23, v25, v27 & 1);

  static Alignment.center.getter();
  sub_100004984();
  v96 = 1;
  v94 = v81;
  v92 = v83;
  v65 = 0;
  LOBYTE(v66) = 1;
  *(&v66 + 1) = *v89;
  HIDWORD(v66) = *&v89[3];
  v67 = v74[7];
  LOBYTE(v68) = v75;
  *(&v68 + 1) = *v87;
  HIDWORD(v68) = *&v87[3];
  v69 = v76;
  v70 = v77;
  *&v71[3] = *&v85[3];
  *v71 = *v85;
  v72 = v78;
  v73 = v79;
  v61 = v42;
  v62 = v41;
  v63 = v40 & 1;
  v64 = v43;
  v74[0] = &v65;
  v74[1] = &v61;
  v58 = v33;
  v59 = 0;
  v60 = 0;
  v55 = v28;
  v56 = v30;
  v57 = v11 & 1;
  v74[2] = &v59;
  v74[3] = &v55;
  v45 = 0;
  v46 = 1;
  *v47 = *v95;
  *&v47[3] = *&v95[3];
  v48 = v80;
  v49 = v81;
  *v50 = *v93;
  *&v50[3] = *&v93[3];
  v51 = v82;
  v52 = v83;
  *&v53[3] = *&v91[3];
  *v53 = *v91;
  v54 = v84;
  v74[4] = &v45;
  sub_1003E98B4(v74, a3);
  sub_10010CD64(v55, v56, v57);

  sub_10010CD64(v61, v62, v63);
}

unint64_t sub_100717878()
{
  result = qword_100CD5160;
  if (!qword_100CD5160)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD5140, &qword_100A7D498);
    v4[2] = sub_10022E824(&qword_100CD5130, &qword_100A7D488);
    v4[3] = sub_100006F64(&qword_100CD5150, &qword_100CD5130, &qword_100A7D488, &protocol conformance descriptor for VStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100717A30(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD5160);
  }

  return result;
}

unint64_t sub_1007179A4()
{
  result = qword_100CD5168;
  if (!qword_100CD5168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD5158, &unk_100A7D4A8);
    v4[0] = sub_100717878();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD5168);
  }

  return result;
}

uint64_t sub_100717A30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100717A78()
{
  result = qword_100CD5180;
  if (!qword_100CD5180)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CD5178, &qword_100A7D4C0);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = &protocol witness table for Text;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD5180);
  }

  return result;
}

void sub_100717AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_10010CD54(a1, a2, a3 & 1);
  }

  else
  {
    v6 = a5 & 1;

    sub_100717B60(a1, a2, a3, a4, v6);
  }
}

double sub_100717B60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10010CD54(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100717BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_10010CD64(a1, a2, a3 & 1);
  }

  else
  {
    v7 = a5 & 1;

    return sub_100717C08(a1, a2, a3, a4, v7);
  }
}

uint64_t sub_100717C08(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10010CD64(result, a2, a3 & 1);
  }

  return result;
}

void sub_100717C4C(uint64_t a1)
{
  bzero(a1, 0x268uLL);
  *(a1 + 618) = -1;
  *(a1 + 616) = 0;
}

double sub_100717C80(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010CD54(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_100717CBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010CD64(a1, a2, a3 & 1);
}

unint64_t sub_100717D04()
{
  result = qword_100CD51D0;
  if (!qword_100CD51D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD51C8, &qword_100A7D500);
    v4[0] = sub_100006F64(&qword_100CD51D8, &qword_100CD51E0, &qword_100A7D508, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD51D0);
  }

  return result;
}

unint64_t sub_100717DC4()
{
  result = qword_100CB8B98;
  if (!qword_100CB8B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8B98);
  }

  return result;
}

void *sub_100717E08()
{
  sub_100035B30(v0, v4);
  v1 = *(v0 + 40);
  v2 = objc_allocWithZone(type metadata accessor for NotificationsOptInNotificationPermissionView.Coordinator());
  return sub_1007184B8(v4, v1);
}

id sub_100717E54()
{
  v0 = [objc_opt_self() systemFontOfSize:60.0];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont:v0 scale:-1];

  v3 = [objc_opt_self() systemBlueColor];
  v4 = [v1 configurationWithHierarchicalColor:v3];

  sub_100169C04();
  v58 = v2;
  v5 = sub_10038F9FC(0x6461622E6C6C6562, 0xEF6C6C69662E6567, v2);
  v56 = v4;
  v57 = v5;
  if (v5)
  {
    v6 = [v5 imageByApplyingSymbolConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v14 = sub_10001F0D4(0xD000000000000013, 0x8000000100ADBFA0, v9, v10, v11, v12, v13, 0xD000000000000036);
  v16 = v15;

  v17 = [v7 mainBundle];
  v23 = sub_10001F0D4(0x10000000000000A9, 0x8000000100ADC000, v18, v19, v20, v21, v22, 0xD00000000000003DLL);
  v25 = v24;

  v26 = objc_allocWithZone(OBWelcomeController);
  v55 = v6;
  v27 = sub_10038FDF4(v14, v16, v23, v25, v6);
  v28 = [objc_opt_self() boldButton];
  v29 = [v7 mainBundle];
  v35 = sub_10001CBB0(0x65756E69746E6F43, 0xE800000000000000, v30, v31, v32, v33, v34, 0xD00000000000002ALL);
  v37 = v36;

  sub_10038FE94(v35, v37, 0, v28);
  sub_10022C350(&qword_100CD5238, &qword_100A7D688);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v28 addTarget:v59 action:"continueButtonTapped" forControlEvents:{64, 0x8000000100ADC0F0}];

  v38 = [v27 buttonTray];
  [v38 addButton:v28];

  v39 = [objc_opt_self() linkButton];
  v40 = [v7 mainBundle];
  v46 = sub_10001CBB0(0x776F4E20746F4ELL, 0xE700000000000000, v41, v42, v43, v44, v45, 0xD000000000000028);
  v48 = v47;

  sub_10038FE94(v46, v48, 0, v39);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v39 addTarget:v59 action:"notNowButtonTapped" forControlEvents:{64, 0x8000000100AC3D50}];

  v49 = [v27 buttonTray];
  [v49 addButton:v39];

  v50 = objc_opt_self();
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 linkWithBundleIdentifier:v51];

  v53 = [v27 buttonTray];
  [v53 setPrivacyLinkController:v52];

  [v27 setModalPresentationStyle:2];
  return v27;
}

void *sub_1007183A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100717E08();
  *a1 = result;
  return result;
}

uint64_t sub_1007183C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10071877C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10071842C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10071877C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100718490(uint64_t a1)
{
  sub_10071877C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void *sub_1007184B8(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  sub_100035B30(a1, &v2[OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor]);
  v2[OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_notificationKind] = a2 & 1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100006F14(a1);
  return v6;
}

uint64_t sub_100718540()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor), v1);
  return (*(v2 + 8))(*(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_notificationKind), v1, v2);
}

uint64_t sub_1007185F4()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1007186DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10071871C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10071877C()
{
  result = qword_100CD5230;
  if (!qword_100CD5230)
  {
    result = swift_getWitnessTable(byte_100A7D5C0, &type metadata for NotificationsOptInNotificationPermissionView, v0, v1);
    atomic_store(result, &qword_100CD5230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationViewerAlertState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 193 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 193) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 194;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerAlertState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
          *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100718980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100ADC120 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100ADC140 == a2)
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

unint64_t sub_100718A58(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100718A8C(void *a1, int a2)
{
  v26 = a2;
  sub_10022C350(&qword_100CD5270, &qword_100A7D748);
  sub_1000037C4();
  v24 = v4;
  v25 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v23 = &v23 - v6;
  v7 = sub_10022C350(&qword_100CD5278, &qword_100A7D750);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_10022C350(&qword_100CD5280, &qword_100A7D758);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  sub_1000161C0(a1, a1[3]);
  sub_1007194BC();
  v19 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19 < 0)
  {
    v30 = 1;
    sub_100719510();
    v20 = v23;
    sub_100008D80();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v19 & 1;
    sub_1002DD42C();
    v21 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v20, v21);
  }

  else
  {
    v28 = 0;
    sub_100719564();
    sub_100008D80();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v19;
    sub_1002DD2DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
  }

  return (*(v15 + 8))(v18, v13);
}

void *sub_100718D74(void *a1)
{
  sub_10022C350(&qword_100CD5240, &qword_100A7D728);
  sub_1000037C4();
  v43 = v3;
  v44 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  v7 = sub_10022C350(&qword_100CD5248, &qword_100A7D730);
  sub_1000037C4();
  v41 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  v12 = sub_10022C350(&qword_100CD5250, &unk_100A7D738);
  sub_1000037C4();
  v42 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  v17 = sub_1000161C0(a1, a1[3]);
  sub_1007194BC();
  v18 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_8;
  }

  v39[0] = v7;
  v39[1] = v11;
  v40 = v6;
  v20 = v43;
  v19 = v44;
  v45 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v23 == v24 >> 1)
  {
LABEL_7:
    v17 = v16;
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v32 = &type metadata for LocationViewerAlertState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v17, v12);
    a1 = v45;
LABEL_8:
    sub_100006F14(a1);
    return v17;
  }

  if (v23 < (v24 >> 1))
  {
    v46 = *(v22 + v23);
    sub_100618E7C();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v46)
      {
        v50 = 1;
        sub_100719510();
        v29 = v40;
        sub_100008D80();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1002DE304();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v20 + 8))(v29, v19);
        v33 = sub_10001CBD4();
        v34(v33);
        v17 = v49 | 0xFFFFFF80;
      }

      else
      {
        v48 = 0;
        sub_100719564();
        sub_100008D80();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1002DE2B0();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v35 = sub_100006628();
        v36(v35);
        v37 = sub_10001CBD4();
        v38(v37);
        v17 = v47;
      }

      sub_100006F14(v45);
      return v17;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007192D0(uint64_t a1)
{
  v2 = sub_100719510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10071930C(uint64_t a1)
{
  v2 = sub_100719510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100719350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100718980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100719378(uint64_t a1)
{
  v2 = sub_1007194BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007193B4(uint64_t a1)
{
  v2 = sub_1007194BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007193F0(uint64_t a1)
{
  v2 = sub_100719564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10071942C(uint64_t a1)
{
  v2 = sub_100719564();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100719474@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100718D74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1007194BC()
{
  result = qword_100CD5258;
  if (!qword_100CD5258)
  {
    result = swift_getWitnessTable(asc_100A7DA74, &type metadata for LocationViewerAlertState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5258);
  }

  return result;
}

unint64_t sub_100719510()
{
  result = qword_100CD5260;
  if (!qword_100CD5260)
  {
    result = swift_getWitnessTable(byte_100A7DA24, &type metadata for LocationViewerAlertState.AddLocationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5260);
  }

  return result;
}

unint64_t sub_100719564()
{
  result = qword_100CD5268;
  if (!qword_100CD5268)
  {
    result = swift_getWitnessTable(byte_100A7D9D4, &type metadata for LocationViewerAlertState.NotificationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerAlertState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1007196A4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100719754()
{
  result = qword_100CD5288;
  if (!qword_100CD5288)
  {
    result = swift_getWitnessTable(byte_100A7D83C, &type metadata for LocationViewerAlertState.AddLocationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5288);
  }

  return result;
}

unint64_t sub_1007197AC()
{
  result = qword_100CD5290;
  if (!qword_100CD5290)
  {
    result = swift_getWitnessTable(asc_100A7D8F4, &type metadata for LocationViewerAlertState.NotificationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5290);
  }

  return result;
}

unint64_t sub_100719804()
{
  result = qword_100CD5298;
  if (!qword_100CD5298)
  {
    result = swift_getWitnessTable(aU_64, &type metadata for LocationViewerAlertState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5298);
  }

  return result;
}

unint64_t sub_10071985C()
{
  result = qword_100CD52A0;
  if (!qword_100CD52A0)
  {
    result = swift_getWitnessTable(asc_100A7D864, &type metadata for LocationViewerAlertState.NotificationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52A0);
  }

  return result;
}

unint64_t sub_1007198B4()
{
  result = qword_100CD52A8;
  if (!qword_100CD52A8)
  {
    result = swift_getWitnessTable(aE_69, &type metadata for LocationViewerAlertState.NotificationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52A8);
  }

  return result;
}

unint64_t sub_10071990C()
{
  result = qword_100CD52B0;
  if (!qword_100CD52B0)
  {
    result = swift_getWitnessTable(a5_35, &type metadata for LocationViewerAlertState.AddLocationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52B0);
  }

  return result;
}

unint64_t sub_100719964()
{
  result = qword_100CD52B8;
  if (!qword_100CD52B8)
  {
    result = swift_getWitnessTable(byte_100A7D7D4, &type metadata for LocationViewerAlertState.AddLocationAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52B8);
  }

  return result;
}

unint64_t sub_1007199BC()
{
  result = qword_100CD52C0;
  if (!qword_100CD52C0)
  {
    result = swift_getWitnessTable(byte_100A7D91C, &type metadata for LocationViewerAlertState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52C0);
  }

  return result;
}

unint64_t sub_100719A14()
{
  result = qword_100CD52C8;
  if (!qword_100CD52C8)
  {
    result = swift_getWitnessTable(byte_100A7D944, &type metadata for LocationViewerAlertState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD52C8);
  }

  return result;
}

uint64_t sub_100719A6C(uint64_t a1, char *a2)
{
  v497[0] = a2;
  v3 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v447 - v5);
  v6 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(&v447 - v8);
  v9 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(&v447 - v11);
  v496 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v504 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v495[4] = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v505 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v509 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = sub_100003918(v26);
  v510 = type metadata accessor for TimeState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v503 = v31;
  v32 = sub_1000038CC();
  v508 = type metadata accessor for NotificationsOptInState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v502 = v36;
  v37 = sub_1000038CC();
  v507 = type metadata accessor for NotificationsState(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v501 = v41;
  v42 = sub_1000038CC();
  v506 = type metadata accessor for LocationsState(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v500 = v46;
  v47 = sub_1000038CC();
  v512 = type metadata accessor for EnvironmentState(v47);
  sub_1000037E8();
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v499 = v51;
  v52 = sub_1000038CC();
  v511 = type metadata accessor for AppConfigurationState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v498 = v56;
  v57 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  v497[9] = v72;
  v73 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v497[8] = v80;
  v81 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_10000E70C();
  sub_100003990(v88);
  v89 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_10000E70C();
  sub_100003990(v96);
  v97 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v98 = sub_100003810(v97);
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_10000E70C();
  sub_100003990(v104);
  v105 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v106 = sub_100003810(v105);
  __chkstk_darwin(v106);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_10000E70C();
  sub_100003990(v112);
  v113 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v114 = sub_100003810(v113);
  __chkstk_darwin(v114);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_10000E70C();
  v121 = sub_100003918(v120);
  v122 = type metadata accessor for MoonDetailViewState(v121);
  v123 = sub_100003810(v122);
  __chkstk_darwin(v123);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  v127 = (&v447 - v126);
  v128 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  v133 = &v447 - v132;
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  v138 = &v447 - v137;
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  v142 = &v447 - v141;
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  v146 = &v447 - v145;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v147);
  v149 = &v447 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v150);
  v152 = &v447 - v151;
  sub_10001CBE0();
  v513 = v153;
  sub_1000BCA28();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D394C();
    sub_1000BCA28();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_100028A04();
      sub_1000D394C();
      v154 = sub_100003BCC(&v515);
      sub_10001B350(v154, v155, v156, v511);
      v157 = sub_100003BCC(&v516);
      sub_10001B350(v157, v158, v159, v512);
      v160 = sub_100003BCC(&v517);
      sub_10001B350(v160, v161, v162, v506);
      v163 = sub_100003BCC(&v518);
      sub_10001B350(v163, v164, v165, v507);
      v166 = sub_100003BCC(&v519);
      sub_10001B350(v166, v167, v168, v508);
      sub_100003934();
      v169 = v510;
      sub_10001B350(v170, v171, v172, v510);
      sub_100003934();
      sub_10001B350(v173, v174, v175, v509);
      v176 = sub_1000D3F6C();
      sub_10071BF60(v176, v177);
      sub_100016DF8();
      sub_1000E0098(v127, v178);
      sub_1000E0098(v152, type metadata accessor for ModalViewState.LocationDetailModal);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v179, v180, v181, v128);
      sub_10001CBE0();
      v182 = a1;
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v183 = sub_10000C834();
      sub_1000038B4(v183, v184, v128);
      if (v185)
      {
        sub_1000180EC(v127, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v142, v303);
        sub_10001F638();
        sub_1000D394C();
      }

      v304 = v487;
      v305 = v484;
      v306 = v482;
      sub_10001F638();
      sub_1000D394C();
      v307 = *(a1 + 16);
      LODWORD(v505) = *(a1 + 24);
      sub_100051BBC();
      v308 = sub_1000201BC();
      v309 = v511;
      sub_1000038B4(v308, v310, v511);
      v311 = v507;
      v312 = v508;
      v313 = v506;
      v513 = v307;
      if (v185)
      {
        sub_100049B64();
        sub_1000BCA28();
        v314 = sub_1000201BC();
        v316 = sub_100024D10(v314, v315, v309);

        v317 = v512;
        if (v316 != 1)
        {
          sub_1000180EC(v306, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();

        v317 = v512;
      }

      v318 = v483;
      sub_100051BBC();
      v319 = sub_1000201BC();
      sub_1000038B4(v319, v320, v317);
      if (v185)
      {
        sub_10002014C(v182 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000ED5C();
        sub_1000BCA28();
        v321 = sub_1000201BC();
        sub_1000038B4(v321, v322, v317);
        v323 = v488;
        v324 = v485;
        if (!v185)
        {
          sub_1000180EC(v318, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v323 = v488;
        v324 = v485;
      }

      sub_100051BBC();
      v325 = sub_1000182B8();
      sub_1000038B4(v325, v326, v313);
      if (v185)
      {
        sub_100020ABC();
        sub_1000BCA28();
        v327 = sub_1000182B8();
        sub_1000038B4(v327, v328, v313);
        v329 = v486;
        if (!v185)
        {
          sub_1000180EC(v305, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
        v329 = v486;
      }

      sub_100051BBC();
      v330 = sub_100007FC4();
      sub_1000038B4(v330, v331, v311);
      if (v185)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v332 = sub_100007FC4();
        sub_1000038B4(v332, v333, v311);
        if (!v185)
        {
          sub_1000180EC(v324, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
      }

      sub_100051BBC();
      v334 = sub_1000175DC();
      sub_1000038B4(v334, v335, v312);
      if (v185)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v336 = sub_1000175DC();
        sub_1000038B4(v336, v337, v312);
        if (!v185)
        {
          sub_1000180EC(v329, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v338 = sub_10000C834();
      sub_1000038B4(v338, v339, v169);
      if (v185)
      {
        sub_100013B48();
        sub_1000BCA28();
        v340 = sub_10000C834();
        sub_1000038B4(v340, v341, v169);
        if (!v185)
        {
          sub_1000180EC(v304, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
      }

      sub_100051BBC();
      v342 = sub_1000131C4();
      v343 = v509;
      sub_1000038B4(v342, v344, v509);
      if (v185)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v345 = sub_1000131C4();
        sub_1000038B4(v345, v346, v343);
        if (!v185)
        {
          sub_1000180EC(v323, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v347 = sub_100037CF8();
      v349 = v498;
      v350 = v499;
      v351 = v500;
      v352 = v501;
      v353 = v502;
      v354 = v503;
      goto LABEL_115;
    }

    v127 = type metadata accessor for ModalViewState.LocationDetailModal;
    sub_1000E0098(v152, type metadata accessor for ModalViewState.LocationDetailModal);
    v187 = v149;
    v186 = type metadata accessor for ModalViewState.LocationDetailModal;
  }

  else
  {
    sub_100010980();
    v187 = v146;
  }

  sub_1000E0098(v187, v186);
  v188 = v510;
  sub_10001CBE0();
  v189 = a1;
  sub_1000BCA28();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v191 = v511;
  v192 = v512;
  if (EnumCaseMultiPayload)
  {
    sub_100010980();
    v194 = v138;
  }

  else
  {
    sub_1000305B8();
    v195 = v491;
    sub_1000D394C();
    sub_100030034();
    v196 = v489;
    sub_1000BCA28();
    sub_100020FE8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100028A04();
      v197 = v192;
      v198 = v460;
      sub_1000D394C();
      v199 = sub_100003BCC(&v502);
      sub_10001B350(v199, v200, v201, v191);
      v202 = sub_100003BCC(&v503);
      sub_10001B350(v202, v203, v204, v197);
      v205 = sub_100003BCC(&v504);
      sub_10001B350(v205, v206, v207, v506);
      v208 = sub_100003BCC(&v505);
      sub_10001B350(v208, v209, v210, v507);
      v211 = sub_100003BCC(&v508);
      sub_10001B350(v211, v212, v213, v508);
      v214 = sub_100003BCC(&v510);
      sub_10001B350(v214, v215, v216, v188);
      v217 = sub_100003BCC(&v511);
      sub_10001B350(v217, v218, v219, v509);
      type metadata accessor for PreviewLocation(0);
      v220 = v479;
      sub_100003934();
      sub_10001B350(v221, v222, v223, v224);
      v225 = v195;
      v226 = v480;
      sub_10071BF60(v497[0], v480);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v227, v228, v229, v127);
      type metadata accessor for SelectedSearchResult(0);
      v230 = v481;
      sub_100003934();
      sub_10001B350(v231, v232, v233, v234);
      sub_10043DB64(v220, v226, v230, v465);
      sub_1000180EC(v230, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v226, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v220, &qword_100CA65C8, &unk_100A31670);
      sub_100016DF8();
      sub_1000E0098(v198, v235);
      sub_100014D64();
      sub_1000E0098(v225, v236);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v237, v238, v239, v128);
      sub_10001CBE0();
      v240 = v461;
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v241 = sub_10000C834();
      sub_1000038B4(v241, v242, v128);
      if (v185)
      {
        sub_1000180EC(v230, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v240, v356);
        sub_10001F638();
        sub_100003940();
        sub_1000D394C();
      }

      v357 = v468;
      v358 = v464;
      v359 = v462;
      sub_10001F638();
      sub_1000D394C();
      v360 = *(v189 + 16);
      LODWORD(v505) = *(v189 + 24);
      sub_100051BBC();
      v361 = sub_1000175DC();
      sub_1000038B4(v361, v362, v191);
      v364 = v507;
      v363 = v508;
      v365 = v506;
      v366 = v512;
      v513 = v360;
      if (v185)
      {
        sub_100049B64();
        sub_1000BCA28();
        v367 = sub_1000175DC();
        v369 = sub_100024D10(v367, v368, v191);

        if (v369 != 1)
        {
          sub_1000180EC(v359, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();
      }

      v370 = v463;
      sub_100051BBC();
      v371 = sub_1000175DC();
      sub_1000038B4(v371, v372, v366);
      v373 = v363;
      if (v185)
      {
        sub_10002014C(v189 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000ED5C();
        sub_1000BCA28();
        v374 = sub_1000175DC();
        sub_1000038B4(v374, v375, v366);
        v376 = v469;
        v377 = v357;
        if (!v185)
        {
          sub_1000180EC(v370, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v376 = v469;
        v377 = v357;
      }

      sub_100051BBC();
      sub_1000038B4(v358, 1, v365);
      v378 = *(&v467 + 1);
      if (v185)
      {
        sub_100020ABC();
        sub_1000BCA28();
        sub_1000038B4(v358, 1, v365);
        if (!v185)
        {
          sub_1000180EC(v358, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
      }

      v379 = v467;
      sub_100051BBC();
      v380 = sub_1000182B8();
      sub_1000038B4(v380, v381, v364);
      if (v185)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v382 = sub_1000182B8();
        sub_1000038B4(v382, v383, v364);
        v384 = v510;
        if (!v185)
        {
          sub_1000180EC(v379, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
        v384 = v510;
      }

      sub_100051BBC();
      v385 = sub_100016298();
      sub_1000038B4(v385, v386, v373);
      if (v185)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v387 = sub_100016298();
        sub_1000038B4(v387, v388, v373);
        if (!v185)
        {
          sub_1000180EC(v378, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v389 = sub_10000C834();
      sub_1000038B4(v389, v390, v384);
      if (v185)
      {
        sub_100013B48();
        sub_1000BCA28();
        v391 = sub_10000C834();
        sub_1000038B4(v391, v392, v384);
        if (!v185)
        {
          sub_1000180EC(v377, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
      }

      sub_100051BBC();
      v393 = sub_1000131C4();
      v394 = v509;
      sub_1000038B4(v393, v395, v509);
      if (v185)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v396 = sub_1000131C4();
        sub_1000038B4(v396, v397, v394);
        if (!v185)
        {
          sub_1000180EC(v376, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v347 = sub_100037CF8();
      v349 = v493;
      v350 = v494;
      v351 = v495[0];
      v352 = v495[1];
      v353 = v495[2];
      v398 = &v514;
      goto LABEL_114;
    }

    sub_100014D64();
    sub_1000E0098(v195, v243);
    sub_1000372A4();
    v194 = v196;
  }

  sub_1000E0098(v194, v193);
  sub_10001CBE0();
  sub_1000BCA28();
  v244 = swift_getEnumCaseMultiPayload();
  v245 = v504;
  v246 = v505;
  if (v244 != 4)
  {
    sub_100010980();
    v250 = v133;
LABEL_20:
    sub_1000E0098(v250, v249);
    goto LABEL_21;
  }

  v247 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000038B4(v133, 1, v247);
  v248 = v509;
  if (!v185)
  {
    sub_1000305B8();
    sub_1000D394C();
    sub_100030034();
    sub_1000BCA28();
    v251 = v496;
    v252 = swift_getEnumCaseMultiPayload();
    if (v252 == 5)
    {
      sub_100028A04();
      v253 = v191;
      v254 = v448;
      sub_1000D394C();
      v255 = sub_100003BCC(&v489);
      sub_10001B350(v255, v256, v257, v253);
      v258 = sub_100003BCC(v490);
      sub_10001B350(v258, v259, v260, v192);
      v261 = sub_100003BCC(&v491);
      sub_10001B350(v261, v262, v263, v506);
      v264 = sub_100003BCC(v492);
      sub_10001B350(v264, v265, v266, v507);
      v267 = sub_100003BCC(&v493);
      sub_10001B350(v267, v268, v269, v508);
      v270 = sub_100003BCC(&v494);
      sub_10001B350(v270, v271, v272, v188);
      v273 = sub_100003BCC(v495);
      sub_10001B350(v273, v274, v275, v248);
      type metadata accessor for PreviewLocation(0);
      v276 = v479;
      sub_100003934();
      sub_10001B350(v277, v278, v279, v280);
      v281 = v246;
      v282 = sub_1000D3F6C();
      sub_10071BF60(v282, v283);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v284, v285, v286, v251);
      type metadata accessor for SelectedSearchResult(0);
      v287 = v481;
      sub_100003934();
      sub_10001B350(v288, v289, v290, v291);
      sub_10043DB64(v276, v248, v287, v453);
      sub_1000180EC(v287, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v248, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v276, &qword_100CA65C8, &unk_100A31670);
      sub_100016DF8();
      sub_1000E0098(v254, v292);
      sub_100014D64();
      sub_1000E0098(v281, v293);
      sub_10000E7B0();
      sub_10001B350(v294, v295, v296, v247);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v297, v298, v299, v128);
      sub_10001CBE0();
      v300 = v449;
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v301 = sub_10000C834();
      sub_1000038B4(v301, v302, v128);
      if (v185)
      {
        sub_1000180EC(v247, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v300, v399);
        sub_10001F638();
        sub_100003940();
        sub_1000D394C();
      }

      v400 = v457;
      v401 = v455;
      v402 = v452;
      v403 = v450;
      sub_10001F638();
      sub_1000D394C();
      v404 = *(v189 + 16);
      LODWORD(v505) = *(v189 + 24);
      sub_100051BBC();
      v405 = sub_100016298();
      v406 = v511;
      sub_1000038B4(v405, v407, v511);
      v409 = v506;
      v408 = v507;
      v410 = v510;
      v513 = v404;
      if (v185)
      {
        sub_100049B64();
        sub_1000BCA28();
        v411 = sub_100016298();
        v413 = sub_100024D10(v411, v412, v406);

        if (v413 != 1)
        {
          sub_1000180EC(v403, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();
      }

      v414 = v451;
      sub_100051BBC();
      v415 = sub_100016298();
      v416 = v512;
      sub_1000038B4(v415, v417, v512);
      if (v185)
      {
        sub_10002014C(v189 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000ED5C();
        sub_1000BCA28();
        v418 = sub_100016298();
        sub_1000038B4(v418, v419, v416);
        v420 = v458;
        if (!v185)
        {
          sub_1000180EC(v414, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v420 = v458;
      }

      sub_100051BBC();
      v421 = sub_100007FC4();
      sub_1000038B4(v421, v422, v409);
      if (v185)
      {
        sub_100020ABC();
        sub_1000BCA28();
        v423 = sub_100007FC4();
        sub_1000038B4(v423, v424, v409);
        v425 = v456;
        v426 = v410;
        if (!v185)
        {
          sub_1000180EC(v402, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
        v425 = v456;
        v426 = v410;
      }

      sub_100051BBC();
      v427 = sub_1000175DC();
      sub_1000038B4(v427, v428, v408);
      v429 = v508;
      if (v185)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v430 = sub_1000175DC();
        sub_1000038B4(v430, v431, v408);
        if (!v185)
        {
          sub_1000180EC(v401, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
      }

      sub_100051BBC();
      v432 = sub_1000182B8();
      sub_1000038B4(v432, v433, v429);
      if (v185)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v434 = sub_1000182B8();
        sub_1000038B4(v434, v435, v429);
        if (!v185)
        {
          sub_1000180EC(v425, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v436 = sub_10000C834();
      sub_1000038B4(v436, v437, v426);
      if (v185)
      {
        sub_100013B48();
        sub_1000BCA28();
        v438 = sub_10000C834();
        sub_1000038B4(v438, v439, v426);
        v440 = v509;
        if (!v185)
        {
          sub_1000180EC(v400, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
        v440 = v509;
      }

      sub_100051BBC();
      v441 = sub_1000131C4();
      sub_1000038B4(v441, v442, v440);
      if (v185)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v443 = sub_1000131C4();
        sub_1000038B4(v443, v444, v440);
        if (!v185)
        {
          sub_1000180EC(v420, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v347 = sub_100037CF8();
      v349 = v474;
      v350 = v475;
      v351 = v476;
      v352 = v477;
      v353 = v478;
      v398 = v497;
LABEL_114:
      v354 = *(v398 - 32);
LABEL_115:
      sub_10003E038(v347, v348, v349, v350, v351, v352, v353, v354, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      v189 = v445;

      return v189;
    }

    sub_100014D64();
    sub_1000E0098(v246, v355);
    sub_1000372A4();
    v250 = v245;
    goto LABEL_20;
  }

  sub_1000180EC(v133, &qword_100CA65E0, &unk_100A31400);
LABEL_21:

  return v189;
}

uint64_t sub_10071BF60@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v180 = a1;
  v184 = type metadata accessor for Location();
  v178 = *(v184 - 8);
  __chkstk_darwin(v184);
  v173 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v153 = &v147 - v4;
  __chkstk_darwin(v5);
  v174 = &v147 - v6;
  v7 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  __chkstk_darwin(v7 - 8);
  v170 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v152 = &v147 - v10;
  __chkstk_darwin(v11);
  v168 = &v147 - v12;
  __chkstk_darwin(v13);
  v149 = &v147 - v14;
  __chkstk_darwin(v15);
  v151 = &v147 - v16;
  __chkstk_darwin(v17);
  v177 = &v147 - v18;
  __chkstk_darwin(v19);
  v150 = &v147 - v20;
  __chkstk_darwin(v21);
  v154 = &v147 - v22;
  __chkstk_darwin(v23);
  v169 = &v147 - v24;
  v25 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v25 - 8);
  v163 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v157 = &v147 - v28;
  __chkstk_darwin(v29);
  v164 = &v147 - v30;
  __chkstk_darwin(v31);
  v158 = &v147 - v32;
  __chkstk_darwin(v33);
  v171 = &v147 - v34;
  __chkstk_darwin(v35);
  v167 = &v147 - v36;
  v37 = type metadata accessor for Date();
  v182 = *(v37 - 8);
  *&v183 = v37;
  __chkstk_darwin(v37);
  v39 = &v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v160 = &v147 - v41;
  v162 = type metadata accessor for DateComponents();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v43 - 8);
  v166 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v148 = &v147 - v46;
  __chkstk_darwin(v47);
  v176 = &v147 - v48;
  __chkstk_darwin(v49);
  v165 = &v147 - v50;
  __chkstk_darwin(v51);
  v147 = &v147 - v52;
  __chkstk_darwin(v53);
  v175 = &v147 - v54;
  __chkstk_darwin(v55);
  v57 = &v147 - v56;
  __chkstk_darwin(v58);
  v60 = &v147 - v59;
  __chkstk_darwin(v61);
  v172 = &v147 - v62;
  v63 = type metadata accessor for TimeZone();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Calendar();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v68 = &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for MoonDetailSelectedDate(0);
  __chkstk_darwin(v181);
  v69 = type metadata accessor for MoonDetailViewAction(0);
  __chkstk_darwin(v69);
  v71 = &v147 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCA28();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v177 = v57;
    v180 = v60;
    sub_1000D394C();
    Location.timeZone.getter();
    static Calendar.currentCalendar(with:)();
    (*(v64 + 8))(v66, v63);
    sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
    v86 = type metadata accessor for Calendar.Component();
    v87 = *(v86 - 8);
    v88 = *(v87 + 72);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_100A2D320;
    v91 = v90 + v89;
    v92 = *(v87 + 104);
    v92(v91, enum case for Calendar.Component.year(_:), v86);
    v92(v91 + v88, enum case for Calendar.Component.month(_:), v86);
    sub_10004BCB0(v90);
    v93 = v160;
    sub_10070B0DC(v160);
    v94 = v159;
    Calendar.dateComponents(_:from:)();

    v96 = v182;
    v95 = v183;
    (*(v182 + 8))(v93, v183);
    Calendar.date(from:)();
    (*(v161 + 8))(v94, v162);
    (*(v155 + 8))(v68, v156);
    v97 = v184;
    sub_10001B350(v167, 1, 1, v184);
    v98 = v169;
    sub_1000D394C();
    v99 = v181;
    sub_10001B350(v98, 0, 1, v181);
    v100 = v171;
    sub_100051BBC();
    if (sub_100024D10(v100, 1, v97) == 1)
    {
      v101 = v178;
      v102 = v185;
      (*(v178 + 16))(v174, v185, v97);
      v103 = sub_100024D10(v100, 1, v97);
      v104 = v179;
      v105 = v102;
      v106 = v154;
      v107 = v150;
      if (v103 != 1)
      {
        sub_1000180EC(v171, &qword_100CA65D8, &unk_100A3D9D0);
      }
    }

    else
    {
      v101 = v178;
      (*(v178 + 32))(v174, v100, v97);
      v104 = v179;
      v105 = v185;
      v106 = v154;
      v107 = v150;
    }

    sub_100051BBC();
    if (sub_100024D10(v107, 1, v99) == 1)
    {
      type metadata accessor for MoonDetailViewState(0);
      sub_100095588();
      if (sub_100024D10(v107, 1, v99) != 1)
      {
        sub_1000180EC(v107, qword_100CA66A0, &unk_100A314C0);
      }
    }

    else
    {
      sub_1000D394C();
      sub_10001B350(v106, 0, 1, v99);
    }

    v129 = v177;
    sub_100051BBC();
    if (sub_100024D10(v129, 1, v95) == 1)
    {
      type metadata accessor for MoonDetailViewState(0);
      sub_100095588();
      if (sub_100024D10(v129, 1, v95) != 1)
      {
        sub_1000180EC(v129, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v130 = v180;
      (*(v96 + 32))(v180, v129, v95);
      sub_10001B350(v130, 0, 1, v95);
    }

    v131 = type metadata accessor for MoonDetailViewState(0);
    v122 = (v131 + 32);
    v132 = *(v131 + 28);
    v133 = (v105 + v132);
    v108 = *(v105 + *(v131 + 32));
    v125 = *(v133 + 32);
    v126 = v104 + v132;
    v134 = *(v101 + 32);
    v135 = v133[1];
    v185 = *v133;
    v183 = v135;
    v134(v104, v174, v97);
    sub_100051BBC();
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v73 = v183;
    v74 = *(v182 + 32);
    v74(v39, v71, v183);
    v75 = v184;
    sub_10001B350(v158, 1, 1, v184);
    v76 = v181;
    sub_10001B350(v177, 1, 1, v181);
    v77 = v175;
    v74(v175, v39, v73);
    sub_10001B350(v77, 0, 1, v73);
    v78 = v164;
    sub_100051BBC();
    if (sub_100024D10(v78, 1, v75) == 1)
    {
      v79 = v178;
      v80 = v153;
      v81 = v185;
      (*(v178 + 16))(v153, v185, v75);
      v82 = sub_100024D10(v78, 1, v75) == 1;
      v83 = v151;
      v84 = v78;
      v85 = v149;
      if (!v82)
      {
        sub_1000180EC(v84, &qword_100CA65D8, &unk_100A3D9D0);
      }
    }

    else
    {
      v79 = v178;
      v80 = v153;
      (*(v178 + 32))(v153, v78, v75);
      v81 = v185;
      v83 = v151;
      v85 = v149;
    }

    sub_100051BBC();
    if (sub_100024D10(v85, 1, v76) == 1)
    {
      type metadata accessor for MoonDetailViewState(0);
      sub_100095588();
      if (sub_100024D10(v85, 1, v76) != 1)
      {
        sub_1000180EC(v85, qword_100CA66A0, &unk_100A314C0);
      }
    }

    else
    {
      sub_1000D394C();
      sub_10001B350(v83, 0, 1, v76);
    }

    v118 = v165;
    sub_100051BBC();
    if (sub_100024D10(v118, 1, v73) == 1)
    {
      type metadata accessor for MoonDetailViewState(0);
      sub_100095588();
      v82 = sub_100024D10(v118, 1, v73) == 1;
      v119 = v118;
      v104 = v179;
      if (!v82)
      {
        sub_1000180EC(v119, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v120 = v147;
      v74(v147, v118, v73);
      sub_10001B350(v120, 0, 1, v73);
      v104 = v179;
    }

    v121 = type metadata accessor for MoonDetailViewState(0);
    v122 = (v121 + 32);
    v123 = *(v121 + 28);
    v124 = (v81 + v123);
    v108 = *(v81 + *(v121 + 32));
    v125 = *(v124 + 32);
    v126 = v104 + v123;
    v127 = *(v79 + 32);
    v128 = v124[1];
    v185 = *v124;
    v183 = v128;
    v127(v104, v80, v75);
    sub_100051BBC();
LABEL_32:
    result = sub_100051BBC();
    v137 = v183;
    *v126 = v185;
    *(v126 + 16) = v137;
    goto LABEL_43;
  }

  v108 = *v71;
  v109 = v184;
  sub_10001B350(v157, 1, 1, v184);
  v110 = v181;
  sub_10001B350(v168, 1, 1, v181);
  v111 = v183;
  sub_10001B350(v176, 1, 1, v183);
  v112 = v163;
  sub_100051BBC();
  if (sub_100024D10(v112, 1, v109) == 1)
  {
    v113 = v178;
    v114 = v185;
    (*(v178 + 16))(v173, v185, v109);
    v82 = sub_100024D10(v112, 1, v109) == 1;
    v104 = v179;
    v115 = v112;
    v116 = v182;
    v117 = v152;
    if (!v82)
    {
      sub_1000180EC(v115, &qword_100CA65D8, &unk_100A3D9D0);
    }
  }

  else
  {
    v113 = v178;
    (*(v178 + 32))(v173, v112, v109);
    v104 = v179;
    v114 = v185;
    v116 = v182;
    v117 = v152;
  }

  v138 = v170;
  sub_100051BBC();
  if (sub_100024D10(v138, 1, v110) == 1)
  {
    type metadata accessor for MoonDetailViewState(0);
    sub_100095588();
    if (sub_100024D10(v138, 1, v110) != 1)
    {
      sub_1000180EC(v138, qword_100CA66A0, &unk_100A314C0);
    }
  }

  else
  {
    sub_1000D394C();
    sub_10001B350(v117, 0, 1, v110);
  }

  v139 = v166;
  sub_100051BBC();
  if (sub_100024D10(v139, 1, v111) == 1)
  {
    type metadata accessor for MoonDetailViewState(0);
    sub_100095588();
    if (sub_100024D10(v139, 1, v111) != 1)
    {
      sub_1000180EC(v139, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v140 = v148;
    (*(v116 + 32))(v148, v139, v111);
    sub_10001B350(v140, 0, 1, v111);
  }

  v141 = type metadata accessor for MoonDetailViewState(0);
  v142 = *(v141 + 28);
  v143 = (v114 + v142);
  v125 = *(v114 + v142 + 32);
  v126 = v104 + v142;
  v144 = *(v113 + 32);
  v145 = v143[1];
  v185 = *v143;
  v183 = v145;
  v144(v104, v173, v109);
  sub_100051BBC();
  result = sub_100051BBC();
  v146 = v183;
  *v126 = v185;
  *(v126 + 16) = v146;
  v122 = (v141 + 32);
LABEL_43:
  *(v126 + 32) = v125;
  *(v104 + *v122) = v108;
  return result;
}

uint64_t sub_10071D434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a2;
  v93 = a3;
  v82 = a1;
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  v5 = sub_100003AE8(v4);
  v91 = v6;
  v8 = *(v7 + 64);
  v68 = v5;
  v90 = v8;
  __chkstk_darwin(v5);
  v89 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CD5370, &unk_100A7DB40);
  __chkstk_darwin(v10 - 8);
  v86 = &v67 - v11;
  sub_1000038CC();
  type metadata accessor for DetailViewOrigin();
  sub_1000037C4();
  v84 = v13;
  v85 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v83 = v15 - v14;
  sub_1000038CC();
  v87 = type metadata accessor for DetailViewOriginationData();
  sub_1000037C4();
  v97 = v16;
  v88 = *(v17 + 64);
  __chkstk_darwin(v18);
  sub_10000FBD0();
  v96 = v19;
  __chkstk_darwin(v20);
  v95 = &v67 - v21;
  sub_1000038CC();
  type metadata accessor for ViewAction();
  sub_1000037C4();
  v80 = v23;
  v81 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v79 = v25 - v24;
  sub_1000038CC();
  v76 = type metadata accessor for ViewType();
  sub_1000037C4();
  v73 = v26;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v71 = v29 - v28;
  sub_1000038CC();
  v70 = type metadata accessor for UUID();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  v77 = type metadata accessor for ViewData();
  sub_1000037C4();
  v75 = v36;
  v78 = *(v37 + 64);
  __chkstk_darwin(v38);
  sub_10000FBD0();
  v72 = v39;
  __chkstk_darwin(v40);
  v94 = &v67 - v41;
  sub_1000038CC();
  v42 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_1000037D8();
  v48 = v47 - v46;
  v69 = v3;
  sub_1000161C0(v3 + 1, v3[4]);
  v49 = v82;
  Location.identifier.getter();
  v74 = dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)();
  (*(v44 + 8))(v48, v42);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v31 + 8))(v35, v70);
  (*(v73 + 104))(v71, enum case for ViewType.detail(_:), v76);
  (*(v80 + 104))(v79, enum case for ViewAction.unknown(_:), v81);
  v50 = v94;
  ViewData.init(viewSessionID:viewType:viewAction:)();
  v51 = v49;
  (*(v84 + 16))(v83, v49 + *(v68 + 32), v85);
  v52 = type metadata accessor for ComponentData();
  sub_10001B350(v86, 1, 1, v52);
  v53 = v95;
  DetailViewOriginationData.init(origin:componentData:)();
  v86 = *v69;
  v54 = v75;
  v55 = v72;
  v56 = v77;
  (*(v75 + 16))(v72, v50, v77);
  v57 = v89;
  sub_100275E44(v51, v89);
  v58 = v97;
  v59 = v87;
  (*(v97 + 16))(v96, v53, v87);
  v60 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v61 = (v78 + *(v91 + 80) + v60) & ~*(v91 + 80);
  v62 = v61 + v90;
  v63 = (*(v58 + 80) + v61 + v90 + 1) & ~*(v58 + 80);
  v64 = swift_allocObject();
  (*(v54 + 32))(v64 + v60, v55, v56);
  sub_10071E1E0(v57, v64 + v61);
  *(v64 + v62) = v74 & 1;
  v65 = v97;
  (*(v97 + 32))(v64 + v63, v96, v59);
  Tracker.transaction(block:)();

  (*(v65 + 8))(v95, v59);
  return (*(v54 + 8))(v94, v56);
}