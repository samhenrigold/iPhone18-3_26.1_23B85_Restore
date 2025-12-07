void sub_1007DD5BC(uint64_t a1, _BYTE *a2, void *a3)
{
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v12 = a3[15];
    v13 = a3[16];
    sub_1000161C0(a3 + 12, v12);
    (*(v13 + 16))(v12, v13);
    sub_1000161C0(a3 + 7, a3[10]);
    sub_100140210();
    (*(v6 + 16))(v8, v11, v5);
    sub_100147C14(v11, type metadata accessor for LocationViewModel);
    v14 = Location.Identifier.id.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    sub_100194F6C(v14, v16);
  }
}

uint64_t sub_1007DD78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2A30 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v17 == 1)
  {
    v16 = *(a1 + 24);
    swift_unknownObjectRetain();
    sub_100140210();
    (*(v5 + 16))(v7, v10, v4);
    sub_100147C14(v10, type metadata accessor for LocationViewModel);
    v12 = Location.Identifier.id.getter();
    v14 = v13;
    result = (*(v5 + 8))(v7, v4);
    v15 = v16;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1007DD990@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10022C350(&qword_100CD97E8, &qword_100A83BF0);
  return a1();
}

uint64_t sub_1007DD9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a13, uint64_t a15)
{
  v38 = a4;
  v39 = a8;
  v43 = a6;
  v44 = a7;
  v41 = a3;
  v42 = a5;
  v40 = a2;
  v45 = a9;
  v37 = a13;
  v36 = a11;
  v15 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CD97F0, &qword_100A83BF8);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v21 = byte_100D8FB89;
  v22 = *(a1 + 48);
  v23 = sub_10022C350(&qword_100CD97F8, &unk_100A83C00);
  v24 = *(v23 + 48);
  v46 = 0;
  sub_10022C350(&qword_100CB3198, qword_100A45980);
  State.init(wrappedValue:)();
  *&v20[v24] = v47;
  *v20 = 0x6E6F697461636F6CLL;
  *(v20 + 1) = 0xE800000000000000;
  v20[16] = v21;
  *(v20 + 3) = v22;
  v25 = *(v23 + 44);

  sub_1007DDD68(a1, v40, v41, v38 & 1, v42, v43, v44, v39 & 1, &v20[v25], v36, v37, a15);
  KeyPath = swift_getKeyPath();
  v27 = &v20[*(sub_10022C350(&qword_100CD9800, &qword_100A83C38) + 36)];
  *v27 = KeyPath;
  *(v27 + 1) = a10;
  sub_100140210();
  LOBYTE(v22) = v17[*(v15 + 68)];
  sub_100147C14(v17, type metadata accessor for LocationViewModel);
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = &v20[*(sub_10022C350(&qword_100CD9808, &qword_100A83C90) + 36)];
  *v30 = v22;
  *(v30 + 1) = v28;
  v30[16] = 0;
  *(v30 + 3) = v29;
  v30[32] = 0;
  sub_100140210();
  v31 = v17[*(v15 + 68)];
  sub_100147C14(v17, type metadata accessor for LocationViewModel);
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  LOBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v34 = &v20[*(v18 + 36)];
  *v34 = a10;
  v34[8] = v31;
  *(v34 + 2) = v32;
  v34[24] = 0;
  *(v34 + 4) = v33;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 9) = 0;
  v34[80] = 0;
  sub_1007E8280();
  View.setForegroundEffectContainer()();
  return sub_100018144(v20, &qword_100CD97F0, &qword_100A83BF8);
}

uint64_t sub_1007DDD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v102 = a8;
  v110 = a7;
  v104 = a5;
  v105 = a6;
  v103 = a3;
  v101 = a2;
  v116 = a9;
  v100 = a10;
  v99 = a11;
  v115 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v97 = *(v115 - 8);
  __chkstk_darwin(v115);
  v95 = &v93 - v14;
  v111 = sub_10022C350(&qword_100CD9848, &qword_100A83CC0);
  v94 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v93 - v15;
  v113 = sub_10022C350(&qword_100CD9850, &qword_100A83CC8);
  v98 = *(v113 - 8);
  __chkstk_darwin(v113);
  v96 = &v93 - v16;
  v107 = sub_10022C350(&qword_100CD9858, &qword_100A83CD0);
  __chkstk_darwin(v107);
  v108 = &v93 - v17;
  v18 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_10022C350(&qword_100CD9860, &qword_100A83CD8);
  __chkstk_darwin(KeyPath);
  v106 = &v93 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10022C350(&qword_100CD9868, &qword_100A83CE0);
  __chkstk_darwin(v26 - 8);
  v109 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v112 = &v93 - v29;
  v30 = sub_10022C350(&qword_100CD9870, &qword_100A83CE8);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v114 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = (&v93 - v34);
  *v35 = static Alignment.top.getter();
  v35[1] = v36;
  v37 = sub_10022C350(&qword_100CD9878, &qword_100A83CF0);
  sub_1007DEB50(a1, v101, v103, a4 & 1, v104, v105, v110, v102 & 1, v35 + *(v37 + 44), v100, *(&v100 + 1), v99, *(&v99 + 1), a12);
  v38 = *(v31 + 44);
  v110 = v35;
  *(v35 + v38) = 0x3FF0000000000000;
  sub_1007DEFE0(__src);
  v39 = *(a1 + 144);
  if (*(a1 + 152) != 1)
  {

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v39, 0);
    (*(v23 + 8))(v25, v22);
    if (LOBYTE(v125[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v60 = v106;
    sub_1007DF520(v106);
    sub_100140210();
    v61 = v60 + *(KeyPath + 36);
    v62 = type metadata accessor for Location.Identifier();
    (*(*(v62 - 8) + 16))(v61, v20, v62);
    sub_100147C14(v20, type metadata accessor for LocationViewModel);
    v63 = type metadata accessor for GridViewIdentifierModifier(0);
    v64 = v61 + v63[5];
    *v64 = swift_getKeyPath();
    *(v64 + 8) = 0;
    v65 = v61 + v63[6];
    *v65 = swift_getKeyPath();
    *(v65 + 8) = 0;
    v66 = v61 + v63[7];
    *v66 = swift_getKeyPath();
    *(v66 + 8) = 0u;
    *(v66 + 24) = 0u;
    *(v66 + 33) = 0u;
    v67 = v61 + v63[8];
    *v67 = sub_1007E2F48;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    sub_1000302D8(v60, v108, &qword_100CD9860, &qword_100A83CD8);
    swift_storeEnumTagMultiPayload();
    v107 = sub_1007E8714();
    v105 = sub_10022E824(&qword_100CD9880, &qword_100A83CF8);
    v68 = sub_10022E824(&qword_100CD9888, &qword_100A83D00);
    v69 = sub_10022E824(&qword_100CD9890, &qword_100A83D08);
    v70 = sub_10022E824(&qword_100CD9898, &qword_100A83D10);
    v71 = sub_10022E824(&qword_100CD98A0, &qword_100A83D18);
    v72 = sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
    v73 = sub_100149E14();
    v74 = sub_100708038();
    v125[0] = v71;
    v125[1] = v72;
    v125[2] = v73;
    v125[3] = v74;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v125[0] = v70;
    v125[1] = &type metadata for Bool;
    v125[2] = OpaqueTypeConformance2;
    v125[3] = &protocol witness table for Bool;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_100006F64(&qword_100CD98E8, &qword_100CD9890, &qword_100A83D08, &protocol conformance descriptor for IDView<A, B>);
    v125[0] = v68;
    v125[1] = &type metadata for Solarium;
    v125[2] = v69;
    v125[3] = v76;
    v125[4] = &protocol witness table for Solarium;
    v125[5] = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v125[0] = &type metadata for Solarium;
    v125[1] = &protocol witness table for Solarium;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_1007E8524();
    v125[0] = v111;
    v125[1] = v115;
    v125[2] = v105;
    v125[3] = v78;
    v125[4] = v79;
    v125[5] = v80;
    swift_getOpaqueTypeConformance2();
    v58 = v112;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v106, &qword_100CD9860, &qword_100A83CD8);
    goto LABEL_6;
  }

  if (v39)
  {
    goto LABEL_5;
  }

LABEL_3:
  v40 = v93;
  sub_1007DF9F4(v93);
  Solarium.init()();
  v41 = v95;
  static ViewInputPredicate.! prefix(_:)();
  v106 = sub_10022C350(&qword_100CD9880, &qword_100A83CF8);
  v42 = sub_10022E824(&qword_100CD9888, &qword_100A83D00);
  v43 = sub_10022E824(&qword_100CD9890, &qword_100A83D08);
  v44 = sub_10022E824(&qword_100CD9898, &qword_100A83D10);
  v45 = sub_10022E824(&qword_100CD98A0, &qword_100A83D18);
  v46 = sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
  v47 = sub_100149E14();
  v48 = sub_100708038();
  v125[0] = v45;
  v125[1] = v46;
  v125[2] = v47;
  v125[3] = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v125[0] = v44;
  v125[1] = &type metadata for Bool;
  v125[2] = v49;
  v125[3] = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_100006F64(&qword_100CD98E8, &qword_100CD9890, &qword_100A83D08, &protocol conformance descriptor for IDView<A, B>);
  v125[0] = v42;
  v125[1] = &type metadata for Solarium;
  v125[2] = v43;
  v125[3] = v50;
  v125[4] = &protocol witness table for Solarium;
  v125[5] = v51;
  v105 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v104 = swift_getOpaqueTypeConformance2();
  v125[0] = &type metadata for Solarium;
  v125[1] = &protocol witness table for Solarium;
  v103 = swift_getOpaqueTypeConformance2();
  v92 = sub_1007E8524();
  v52 = v96;
  v53 = v111;
  v54 = v115;
  v55 = v106;
  View.staticIf<A, B>(_:then:)();
  (*(v97 + 8))(v41, v54);
  (*(v94 + 8))(v40, v53);
  v56 = v98;
  v57 = v113;
  (*(v98 + 16))(v108, v52, v113);
  swift_storeEnumTagMultiPayload();
  sub_1007E8714();
  v125[0] = v53;
  v125[1] = v54;
  v125[2] = v55;
  v125[3] = v104;
  v125[4] = v103;
  v125[5] = v92;
  swift_getOpaqueTypeConformance2();
  v58 = v112;
  _ConditionalContent<>.init(storage:)();
  (*(v56 + 8))(v52, v57);
LABEL_6:
  KeyPath = swift_getKeyPath();
  v118[128] = 0;
  v81 = swift_getKeyPath();
  LOBYTE(v125[0]) = 0;
  v82 = v110;
  v83 = v114;
  sub_1000302D8(v110, v114, &qword_100CD9870, &qword_100A83CE8);
  memcpy(v118, __src, 0x79uLL);
  v84 = v109;
  sub_1000302D8(v58, v109, &qword_100CD9868, &qword_100A83CE0);
  v85 = v116;
  sub_1000302D8(v83, v116, &qword_100CD9870, &qword_100A83CE8);
  v86 = sub_10022C350(&qword_100CD9918, &qword_100A83D78);
  v87 = v58;
  v88 = v86[12];
  memcpy(v119, v118, 0x79uLL);
  memcpy((v85 + v88), v118, 0x79uLL);
  sub_1000302D8(v84, v85 + v86[16], &qword_100CD9868, &qword_100A83CE0);
  v89 = v86[20];
  v90 = KeyPath;
  v120[0] = KeyPath;
  LOBYTE(v120[9]) = 0;
  v120[10] = v81;
  LOBYTE(v120[11]) = 0;
  memcpy((v85 + v89), v120, 0x59uLL);
  sub_1000302D8(v119, v125, &qword_100CD9920, &qword_100A83D80);
  sub_10014A234(v120, v125);
  sub_100018144(v87, &qword_100CD9868, &qword_100A83CE0);
  sub_100018144(v82, &qword_100CD9870, &qword_100A83CE8);
  v121[0] = v90;
  v122 = 0;
  v123 = v81;
  v124 = 0;
  sub_10014A26C(v121);
  sub_100018144(v84, &qword_100CD9868, &qword_100A83CE0);
  memcpy(v125, v118, 0x79uLL);
  sub_100018144(v125, &qword_100CD9920, &qword_100A83D80);
  return sub_100018144(v83, &qword_100CD9870, &qword_100A83CE8);
}

uint64_t sub_1007DEB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v67) = a8;
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v70 = a9;
  v65 = a7;
  v66 = a14;
  v63 = a6;
  v64 = a13;
  v71 = a12;
  v61 = a5;
  v62 = a11;
  v59 = a10;
  v55 = type metadata accessor for LocationContentScrollingHeaderView(0) - 8;
  __chkstk_darwin(v55);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for LocationViewObserverView(0);
  v20 = (v19 - 8);
  __chkstk_darwin(v19);
  v68 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v54 - v23);
  sub_100140210();
  v25 = *(a1 + 136);
  *v24 = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  swift_storeEnumTagMultiPayload();
  v26 = v24 + v20[7];
  *v26 = sub_10015C5A0;
  *(v26 + 1) = 0;
  v26[16] = 0;
  *(v24 + v20[9]) = *(a1 + 24);
  v27 = (v24 + v20[10]);
  v56 = v24;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  *v27 = ObservedObject.init(wrappedValue:)();
  v27[1] = v28;
  *(v24 + v20[11]) = v25;
  v29 = v18;
  sub_100140210();
  v30 = v55;
  v31 = v29 + *(v55 + 28);
  v32 = v57;
  v33 = v58;
  *v31 = v57;
  *(v31 + 8) = v33;
  v34 = v60 & 1;
  *(v31 + 16) = v60 & 1;
  v35 = v62;
  *(v31 + 24) = v61;
  v36 = v29 + v30[8];
  v38 = v63;
  v37 = v64;
  v40 = v65;
  v39 = v66;
  *v36 = v63;
  *(v36 + 8) = v40;
  LOBYTE(v20) = v67 & 1;
  *(v36 + 16) = v67 & 1;
  *(v36 + 24) = v59;
  v41 = (v29 + v30[9]);
  v42 = v71;
  *v41 = v35;
  v41[1] = v42;
  v41[2] = v37;
  v41[3] = v39;
  v67 = v30[10];
  sub_10010CD54(v32, v33, v34);

  sub_10010CD54(v38, v40, v20);

  sub_100148118(v35, v71, v37, v39);
  Text.Measurements.init()();
  v43 = v29 + v30[11];
  KeyPath = swift_getKeyPath();
  v72 = 0;
  *v43 = KeyPath;
  *(v43 + 72) = 0;
  v45 = v29 + v30[12];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v30[13];
  *(v29 + v46) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v47 = v29 + v30[14];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  v48 = v56;
  v49 = v68;
  sub_1001495C0(v56, v68);
  v50 = v69;
  sub_1001495C0(v29, v69);
  v51 = v70;
  sub_1001495C0(v49, v70);
  v52 = sub_10022C350(&qword_100CD9AB0, &unk_100A84180);
  sub_1001495C0(v50, v51 + *(v52 + 48));
  sub_100147C14(v29, type metadata accessor for LocationContentScrollingHeaderView);
  sub_100147C14(v48, type metadata accessor for LocationViewObserverView);
  sub_100147C14(v50, type metadata accessor for LocationContentScrollingHeaderView);
  return sub_100147C14(v49, type metadata accessor for LocationViewObserverView);
}

void *sub_1007DEFE0@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for Location.Identifier();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v39);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2818 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v9, qword_100CD9400);
  (*(v10 + 104))(v12, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v9);
  LOBYTE(v13) = sub_1001497E4(v13, v12);
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v36 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = v46;
    v34 = v47;
    v33 = v48;
    v32 = v49;
    v30 = v51;
    v31 = v50;
    v14 = v1 + *(type metadata accessor for LocationContentView(0) + 64);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v43 = v15 & 1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v15, 0);
      (*(v6 + 8))(v8, v5);
      LOBYTE(v15) = v43;
    }

    v29 = *(v1 + 40);
    *&__dst[0] = 0x6F6973696C6C6F63;
    *(&__dst[0] + 1) = 0xEA00000000002D6ELL;
    sub_100140210();
    v18 = v37;
    v17 = v38;
    v19 = v40;
    (*(v37 + 16))(v38, v4, v40);
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    v20 = Location.Identifier.id.getter();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = __dst[0];
    sub_100140210();
    v25 = v4[*(v39 + 68)];
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    KeyPath = swift_getKeyPath();
    LOBYTE(__dst[0]) = 0;
    v27 = swift_getKeyPath();
    v45 = v34;
    v44 = v32;
    *v42 = v36;
    *&v42[8] = v35;
    v42[16] = v34;
    *&v42[24] = v33;
    v42[32] = v32;
    *&v42[40] = v31;
    *&v42[48] = v30;
    v42[56] = v15 & 1;
    *&v42[64] = v29;
    *&v42[72] = v24;
    v42[88] = v25;
    *&v42[96] = KeyPath;
    v42[104] = __dst[0];
    *&v42[112] = v27;
    v42[120] = 0;
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__dst, v42, 0x79uLL);
  }

  else
  {
    sub_1007E90C8(__dst);
  }

  return memcpy(v41, __dst, 0x79uLL);
}

uint64_t sub_1007DF520@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = type metadata accessor for LocationFooterView(0);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for LocationViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationFooterViewModel(0);
  __chkstk_darwin(v11);
  *&v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CD9928, &qword_100A83DF8);
  __chkstk_darwin(v13 - 8);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_10022C350(&qword_100CD9930, &qword_100A83E00);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_10022C350(&qword_100CD9938, &qword_100A83E08);
  sub_1007E17E8(v1, &v23[*(v24 + 44)]);
  sub_100140210();
  sub_1000302D8(&v10[*(v8 + 44)], v6, &qword_100CD8AB8, &qword_100A83DF0);
  sub_100147C14(v10, type metadata accessor for LocationViewModel);
  if (sub_100024D10(v6, 1, v11) == 1)
  {
    sub_100018144(v6, &qword_100CD8AB8, &qword_100A83DF0);
    sub_10001B350(v17, 1, 1, v34);
  }

  else
  {
    v25 = v32;
    sub_100149618(v6, v32);
    v26 = v34;
    sub_100149618(v25, &v3[*(v34 + 24)]);
    v32 = *(v1 + 24);
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    v27 = *(v26 + 20);
    *&v3[v27] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    *&v3[*(v26 + 28)] = v32;
    sub_100149618(v3, v17);
    sub_10001B350(v17, 0, 1, v26);
    swift_unknownObjectRetain();
  }

  sub_1000302D8(v23, v20, &qword_100CD9930, &qword_100A83E00);
  v28 = v33;
  sub_1000302D8(v17, v33, &qword_100CD9928, &qword_100A83DF8);
  v29 = v35;
  sub_1000302D8(v20, v35, &qword_100CD9930, &qword_100A83E00);
  v30 = sub_10022C350(&qword_100CD9940, &qword_100A83E10);
  sub_1000302D8(v28, v29 + *(v30 + 48), &qword_100CD9928, &qword_100A83DF8);
  sub_100018144(v17, &qword_100CD9928, &qword_100A83DF8);
  sub_100018144(v23, &qword_100CD9930, &qword_100A83E00);
  sub_100018144(v28, &qword_100CD9928, &qword_100A83DF8);
  return sub_100018144(v20, &qword_100CD9930, &qword_100A83E00);
}

uint64_t sub_1007DF9F4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = type metadata accessor for LocationViewModel(0) - 8;
  __chkstk_darwin(v61);
  v60 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LocationContentView(0);
  v4 = *(v3 - 8);
  v62 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10022C350(&qword_100CD98C0, &qword_100A83D30);
  __chkstk_darwin(v6);
  v8 = (&v50 - v7);
  v63 = sub_10022C350(&qword_100CD98A0, &qword_100A83D18);
  __chkstk_darwin(v63);
  v65 = &v50 - v9;
  v52 = sub_10022C350(&qword_100CD9898, &qword_100A83D10);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v64 = &v50 - v10;
  v11 = sub_10022C350(&qword_100CD9888, &qword_100A83D00);
  v54 = *(v11 - 8);
  v55 = v11;
  __chkstk_darwin(v11);
  v53 = &v50 - v12;
  v59 = type metadata accessor for LocationContentView;
  sub_1001495C0(v1, &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v58 = type metadata accessor for LocationContentView;
  sub_100149618(&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = static HorizontalAlignment.center.getter();
  type metadata accessor for PinnedScrollableViews();
  LODWORD(v66) = 0;
  sub_10008152C(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  v17 = v8 + v6[11];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v8 + v6[12];
  KeyPath = swift_getKeyPath();
  v71 = 0;
  *v18 = KeyPath;
  v18[72] = 0;
  *v8 = v16;
  v20 = (v8 + v6[10]);
  *v20 = sub_1007E8AD0;
  v20[1] = v15;
  sub_100006F64(&qword_100CD98C8, &qword_100CD98C0, &qword_100A83D30, byte_100A84CB4);
  v21 = v65;
  View.navigationDestinationScope()();
  sub_100018144(v8, &qword_100CD98C0, &qword_100A83D30);
  v22 = swift_getKeyPath();
  v72 = 0;
  v23 = &v21[*(sub_10022C350(&qword_100CD98B8, &qword_100A83D28) + 36)];
  *v23 = v22;
  v23[72] = 0;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = &v21[*(v63 + 36)];
  v28 = v57;
  sub_1007E1364(v27);
  v29 = (v27 + *(sub_10022C350(&qword_100CD98E0, &qword_100A83D38) + 36));
  *v29 = v24;
  v29[1] = v26;
  v30 = v60;
  sub_100140210();
  v31 = *(v30 + *(v61 + 36));

  sub_100147C14(v30, type metadata accessor for LocationViewModel);
  v66 = v31;
  sub_1001495C0(v28, &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v13;
  v61 = v5;
  v32 = v14;
  v33 = swift_allocObject() + v14;
  v34 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100149618(v34, v33);
  v35 = sub_10022C350(&qword_100CD47E0, &qword_100A83D20);
  v36 = sub_100149E14();
  v37 = sub_100708038();
  v38 = v65;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v38, &qword_100CD98A0, &qword_100A83D18);
  if (*(v28 + *(v62 + 80)))
  {
    type metadata accessor for TipCoordinator(0);

    ObservableResolver.resolve<A>(_:)();

    if (v66)
    {
      v41 = sub_10014A168(v39, v40);

      v70 = v41 & 1;
      sub_1001495C0(v28, v34);
      v42 = swift_allocObject();
      sub_100149618(v34, v42 + v32);
      v66 = v63;
      v67 = v35;
      v68 = v36;
      v69 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = v52;
      v45 = v53;
      v46 = v64;
      View.onChange<A>(of:initial:_:)();

      (*(v51 + 8))(v46, v44);
      v47 = Solarium.init()();
      __chkstk_darwin(v47);
      sub_10022C350(&qword_100CD9890, &qword_100A83D08);
      v66 = v44;
      v67 = &type metadata for Bool;
      v68 = OpaqueTypeConformance2;
      v69 = &protocol witness table for Bool;
      swift_getOpaqueTypeConformance2();
      sub_100006F64(&qword_100CD98E8, &qword_100CD9890, &qword_100A83D08, &protocol conformance descriptor for IDView<A, B>);
      v48 = v55;
      View.staticIf<A, B>(_:then:)();
      return (*(v54 + 8))(v45, v48);
    }

    __break(1u);
  }

  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1007E02A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.bottom.getter();
  KeyPath = swift_getKeyPath();
  v6 = sub_10022C350(&qword_100CD9848, &qword_100A83CC0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10022C350(&qword_100CD9880, &qword_100A83CF8);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = KeyPath;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  return result;
}

uint64_t sub_1007E0358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = type metadata accessor for LocationFooterView(0);
  __chkstk_darwin(v49);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for LocationViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = type metadata accessor for LocationFooterViewModel(0);
  __chkstk_darwin(v45);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CD9928, &qword_100A83DF8);
  __chkstk_darwin(v12 - 8);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v43 - v15;
  v16 = type metadata accessor for LocationContentView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD99A8, &qword_100A83F18);
  v21 = (v20 - 8);
  __chkstk_darwin(v20);
  v46 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v43 - v24);
  v26 = sub_10014F17C();
  sub_1001495C0(a1, v19);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = swift_allocObject();
  sub_100149618(v19, v28 + v27);
  *v25 = v26;
  v25[1] = sub_1007E8BCC;
  v25[2] = v28;
  v29 = v21[12];
  *(v25 + v29) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v30 = v25 + v21[13];
  KeyPath = swift_getKeyPath();
  v51 = 0;
  *v30 = KeyPath;
  v30[72] = 0;
  v32 = v25 + v21[14];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  sub_100140210();
  sub_1000302D8(&v10[*(v8 + 44)], v6, &qword_100CD8AB8, &qword_100A83DF0);
  sub_100147C14(v10, type metadata accessor for LocationViewModel);
  if (sub_100024D10(v6, 1, v45) == 1)
  {
    sub_100018144(v6, &qword_100CD8AB8, &qword_100A83DF0);
    v33 = v47;
    sub_10001B350(v47, 1, 1, v49);
  }

  else
  {
    v34 = v43;
    sub_100149618(v6, v43);
    v35 = v49;
    v36 = v44;
    sub_100149618(v34, &v44[*(v49 + 24)]);
    v45 = *(a1 + 24);
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    v37 = *(v35 + 20);
    *(v36 + v37) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    *(v36 + *(v35 + 28)) = v45;
    v33 = v47;
    sub_100149618(v36, v47);
    sub_10001B350(v33, 0, 1, v35);
    swift_unknownObjectRetain();
  }

  v38 = v46;
  sub_1000302D8(v25, v46, &qword_100CD99A8, &qword_100A83F18);
  v39 = v48;
  sub_1000302D8(v33, v48, &qword_100CD9928, &qword_100A83DF8);
  v40 = v50;
  sub_1000302D8(v38, v50, &qword_100CD99A8, &qword_100A83F18);
  v41 = sub_10022C350(&qword_100CD99B0, &qword_100A83F48);
  sub_1000302D8(v39, v40 + *(v41 + 48), &qword_100CD9928, &qword_100A83DF8);
  sub_100018144(v33, &qword_100CD9928, &qword_100A83DF8);
  sub_100018144(v25, &qword_100CD99A8, &qword_100A83F18);
  sub_100018144(v39, &qword_100CD9928, &qword_100A83DF8);
  return sub_100018144(v38, &qword_100CD99A8, &qword_100A83F18);
}

uint64_t sub_1007E0984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v103 = a4;
  v106 = a3;
  v110 = a5;
  v94 = sub_10022C350(&qword_100CD99B8, &qword_100A83F50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v90 - v10;
  v95 = sub_10022C350(&qword_100CD99C0, &qword_100A83F58);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v101 = v13;
  v98 = sub_10022C350(&qword_100CD99C8, &qword_100A83F60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v100 = v15;
  v97 = sub_10022C350(&qword_100CD99D0, &qword_100A83F68);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v99 = v17;
  v109 = sub_10022C350(&qword_100CD99D8, &qword_100A83F70);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v96 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v102 = &v90 - v21;
  v22 = sub_10022C350(&qword_100CD99E0, &qword_100A83F78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v105 = sub_10022C350(&qword_100CD99E8, &qword_100A83F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v90 - v27;
  v29 = sub_10022C350(&qword_100CD99F0, &qword_100A83F88);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  v104 = sub_10022C350(&qword_100CD99F8, &qword_100A83F90);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &v90 - v34;
  v36 = *(a1 + 16);
  v107 = v29;
  v108 = v32;
  if (v36 == 2)
  {
    v91 = a2;
    v37 = a1;
    v38 = *(type metadata accessor for LocationContentView(0) + 72);
    v90 = v6;
    if (*(v6 + v38))
    {
      v92 = v22;
      v93 = v25;
      type metadata accessor for TipCoordinator(0);

      sub_100087E84();

      if (v112)
      {
        v39 = type metadata accessor for LocationComponentContainerViewModel(0);
        sub_100003928();
        v41 = v40;
        v42 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v44 = sub_1001C9644(v42 + *(v43 + 20));

        if (v44)
        {
          v45 = 1;
LABEL_10:
          v65 = v93;
          v66 = &v11[*(v94 + 36)];
          KeyPath = swift_getKeyPath();
          v114 = 0;
          *v66 = KeyPath;
          v66[72] = 0;
          v68 = v37;
          v69 = v91;
          v70 = v106;
          sub_1007E2CB0(v68, v103, v11);
          if (v45)
          {
            v71 = 1.0;
          }

          else
          {
            v71 = 0.0;
          }

          v72 = v101;
          sub_10011C0F0(v11, v101, &qword_100CD99B8, &qword_100A83F50);
          *(v72 + *(v95 + 36)) = v71;
          v112 = v69;
          v113 = v70;

          if (v45)
          {
            v73 = 12589;
          }

          else
          {
            v73 = 12333;
          }

          v74 = 0xE200000000000000;
          String.append(_:)(*&v73);
          v75 = v112;
          v76 = v113;
          v77 = v100;
          sub_10011C0F0(v72, v100, &qword_100CD99C0, &qword_100A83F58);
          v78 = (v77 + *(v98 + 52));
          *v78 = v75;
          v78[1] = v76;
          v79 = swift_getKeyPath();
          v80 = v77;
          v81 = v99;
          sub_10011C0F0(v80, v99, &qword_100CD99C8, &qword_100A83F60);
          v82 = v81 + *(v97 + 36);
          *v82 = v79;
          *(v82 + 8) = 0;
          v83 = swift_getKeyPath();
          LOBYTE(v112) = 0;
          v84 = v81;
          v85 = v96;
          sub_10011C0F0(v84, v96, &qword_100CD99D0, &qword_100A83F68);
          v86 = v85 + *(v109 + 36);
          *v86 = v83;
          *(v86 + 72) = 0;
          v87 = v102;
          sub_10011C0F0(v85, v102, &qword_100CD99D8, &qword_100A83F70);
          sub_1000302D8(v87, v28, &qword_100CD99D8, &qword_100A83F70);
          swift_storeEnumTagMultiPayload();
          sub_1001CC98C();
          sub_1001CC900();
          v88 = v108;
          _ConditionalContent<>.init(storage:)();
          sub_1000302D8(v88, v65, &qword_100CD99F0, &qword_100A83F88);
          swift_storeEnumTagMultiPayload();
          sub_1001CC874();
          _ConditionalContent<>.init(storage:)();
          sub_100018144(v88, &qword_100CD99F0, &qword_100A83F88);
          sub_10000FEC4();
          return sub_100018144(v62, v63, v64);
        }

        sub_100087E84();

        if (v112)
        {
          v45 = sub_1001C9644(v42 + *(v41 + 72) + *(v39 + 20));

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    type metadata accessor for ObservableResolver();
    sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    sub_1000164CC();
    EnvironmentObject.error()();
    __break(1u);
  }

  else if (v36 == 1)
  {
    v46 = type metadata accessor for LocationComponentContainerViewModel(0);
    sub_100003810(v46);
    sub_1007E20FC(a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), 0, v103, v35);
    swift_getKeyPath();
    v111 = 0;
    v48 = sub_10022C350(&qword_100CD9A40, &qword_100A83FD8);
    sub_1000216C8(v48);
    *(v49 + 72) = 0;
    swift_getKeyPath();
    v50 = sub_10022C350(&qword_100CD9A30, &qword_100A83FD0);
    sub_1000216C8(v50);
    *(v51 + 8) = 1;
    swift_getKeyPath();
    v114 = 0;
    v52 = sub_10022C350(&qword_100CD9A20, &qword_100A83FC8);
    sub_1000216C8(v52);
    *(v53 + 72) = 0;
    v54 = &v35[*(sub_10022C350(&qword_100CD9A10, &qword_100A83FC0) + 36)];
    *v54 = a1;
    *(v54 + 1) = a2;
    *(v54 + 2) = v106;
    v55 = swift_getKeyPath();
    LOBYTE(v112) = 0;
    *(v54 + 3) = v55;
    v54[96] = 0;
    v56 = *(type metadata accessor for LocationContentRowHeightModifier(0) + 24);
    *&v54[v56] = swift_getKeyPath();
    sub_10022C350(&qword_100CAD618, &qword_100A4C660);
    swift_storeEnumTagMultiPayload();
    v57 = swift_getKeyPath();

    v58 = static Alignment.bottom.getter();
    v59 = &v35[*(v104 + 36)];
    *v59 = v57;
    v59[1] = v58;
    v59[2] = v60;
    sub_1000302D8(v35, v28, &qword_100CD99F8, &qword_100A83F90);
    swift_storeEnumTagMultiPayload();
    sub_1001CC98C();
    sub_1001CC900();
    v61 = v108;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v61, v25, &qword_100CD99F0, &qword_100A83F88);
    swift_storeEnumTagMultiPayload();
    sub_1001CC874();
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v61, &qword_100CD99F0, &qword_100A83F88);
    v62 = sub_1000053B8();
    v64 = &qword_100A83F90;
    return sub_100018144(v62, v63, v64);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E1364@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CD4930, &unk_100A7BA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0;
  sub_10022C350(&qword_100CAC480, &qword_100A76580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2C3F0;
  *(v3 + 32) = xmmword_100A3BB70;
  *(inited + 40) = v3;
  sub_10022C350(&qword_100CCB7A0, qword_100A6AE00);
  v4 = Dictionary.init(dictionaryLiteral:)();
  sub_1001498B4(v4, a1);
}

uint64_t sub_1007E1444()
{
  v0 = type metadata accessor for LocationViewModel(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140210();
  v4 = *&v3[*(v1 + 36)];

  sub_100147C14(v3, type metadata accessor for LocationViewModel);
  v5 = *(v4 + 16);

  if (v5)
  {
    return sub_100192DF0();
  }

  return result;
}

uint64_t sub_1007E1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v2 = type metadata accessor for Location.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationViewModel(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  sub_100140210();
  (*(v3 + 16))(v5, v9, v2);
  sub_100147C14(v9, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  (*(v3 + 8))(v5, v2);
  v13._object = 0x8000000100ADF480;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  sub_100140210();
  v14 = *&v9[*(v7 + 36)];

  sub_100147C14(v9, type metadata accessor for LocationViewModel);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19 = v27;
  v20 = v28;
  v21 = sub_10022C350(&qword_100CD9888, &qword_100A83D00);
  v22 = v25;
  (*(*(v21 - 8) + 16))(v25, v26, v21);
  result = sub_10022C350(&qword_100CD9890, &qword_100A83D08);
  v24 = (v22 + *(result + 52));
  *v24 = v19;
  v24[1] = v20;
  return result;
}

uint64_t sub_1007E17E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v3 = sub_10022C350(&qword_100CD9948, &qword_100A83E50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  KeyPath = swift_getKeyPath();
  v18 = KeyPath;
  v22 = 0;
  v21 = a1;
  v20 = a1;
  sub_10022C350(&qword_100CD9950, &qword_100A83E58);
  sub_10022C350(&qword_100CD9958, &qword_100A83E60);
  sub_100708824();
  sub_1007E8834();
  sub_1007E891C();
  StaticIf<>.init(_:then:else:)();
  v11 = swift_getKeyPath();
  v23 = 0;
  v12 = *(v4 + 16);
  v12(v6, v9, v3);
  v24[0] = KeyPath;
  LOBYTE(v24[9]) = 0;
  v13 = v19;
  memcpy(v19, v24, 0x49uLL);
  v14 = sub_10022C350(&qword_100CD9998, &qword_100A83E78);
  v12(&v13[*(v14 + 48)], v6, v3);
  v15 = *(v14 + 64);
  v25[0] = v11;
  LOBYTE(v25[9]) = 0;
  memcpy(&v13[v15], v25, 0x49uLL);
  sub_1007E8A00(v24, v28);
  sub_1007E8A00(v25, v28);
  v16 = *(v4 + 8);
  v16(v9, v3);
  v26[0] = v11;
  v27 = 0;
  sub_1007E8A38(v26);
  v16(v6, v3);
  v28[0] = v18;
  v29 = 0;
  return sub_1007E8A38(v28);
}

uint64_t sub_1007E1AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100140210();
  v7 = type metadata accessor for LazyLocationGridViewContainer(0);
  sub_1007DBC30();
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  v10 = *(a1 + 136);
  v11 = v7[10];
  v21 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + v11);
  *(a2 + v7[6]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[8]) = v10;
  *(a2 + v7[9]) = v21;
  v12 = a2 + v7[11];
  v22 = 0;
  *v12 = swift_getKeyPath();
  *(v12 + 72) = 0;
  v13 = a2 + v7[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  sub_1001495C0(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100149618(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  swift_unknownObjectRetain();
  v16 = static Alignment.center.getter();
  v18 = v17;
  result = sub_10022C350(&qword_100CD9950, &qword_100A83E58);
  v20 = (a2 + *(result + 36));
  *v20 = sub_1007EA890;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v18;
  return result;
}

uint64_t sub_1007E1CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = a2 + *(sub_10022C350(&qword_100CD9990, &qword_100A83E70) + 36);
  v15[8] = 0;
  *v7 = swift_getKeyPath();
  *(v7 + 72) = 0;
  sub_1007E1E60(a1, a2);
  sub_1001495C0(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100149618(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v10 = static Alignment.center.getter();
  v12 = v11;
  result = sub_10022C350(&qword_100CD9958, &qword_100A83E60);
  v14 = (a2 + *(result + 36));
  *v14 = sub_1007E8A68;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v12;
  return result;
}

__n128 sub_1007E1E60@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100140210();
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 136);
  v7 = type metadata accessor for LocationGridView(0);
  v15 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + v7[9]);

  swift_unknownObjectRetain();
  sub_1007DBC30();
  v8 = (a2 + v7[11]);
  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  *v8 = EnvironmentObject.init()();
  v8[1] = v9;
  v10 = a2 + v7[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v7[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[14];
  *v12 = swift_getKeyPath();
  *(v12 + 72) = 0;
  v13 = a2 + v7[15];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(a2 + v7[5]) = v4;
  *(a2 + v7[6]) = v5;
  *(a2 + v7[7]) = v6;
  result = v15;
  *(a2 + v7[8]) = v15;
  return result;
}

uint64_t sub_1007E2000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CD99A0, &qword_100A83E80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000CC9C();
  if (*(*a1 + 16))
  {
    sub_1001498B4(*a1, v2);
    sub_10011C0F0(v2, a2, &qword_100CD99A0, &qword_100A83E80);
    return sub_10001B350(a2, 0, 1, v5);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v5);
  }
}

uint64_t sub_1007E20FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v110 = a2;
  v7 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v7);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationComponentContainerView(0);
  __chkstk_darwin(v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v89 - v13;
  v103 = sub_10022C350(&qword_100CD9A98, &qword_100A84018);
  __chkstk_darwin(v103);
  v15 = &v89 - v14;
  v16 = type metadata accessor for Location.Identifier();
  v112 = *(v16 - 8);
  v113 = v16;
  __chkstk_darwin(v16);
  v111 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  *&v109 = &v89 - v19;
  v20 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v20);
  v100 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v99 = &v89 - v23;
  __chkstk_darwin(v24);
  v98 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  if (!*(v4 + *(type metadata accessor for LocationContentView(0) + 72)))
  {
    goto LABEL_15;
  }

  v101 = v20;
  v106 = v15;
  v107 = a4;
  type metadata accessor for TipCoordinator(0);

  ObservableResolver.resolve<A>(_:)();

  if (!v120)
  {
    __break(1u);
LABEL_15:
    type metadata accessor for ObservableResolver();
    sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v96 = *(v7 + 20);
  v97 = sub_1001C9644(a1 + v96);

  sub_100140210();
  v93 = a1;
  v29 = v112;
  v30 = *(v112 + 16);
  v89 = v112 + 16;
  v108 = v30;
  v31 = v109;
  v32 = v113;
  (v30)(v109, v28);
  sub_100147C14(v28, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v120 = dispatch thunk of CustomStringConvertible.description.getter();
  v121 = v33;
  v34 = *(v29 + 8);
  v112 = v29 + 8;
  v94 = v34;
  v34(v31, v32);
  v35._countAndFlagsBits = 45;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v93;
  v37._countAndFlagsBits = sub_1001B3DAC();
  String.append(_:)(v37);

  v95 = v120;
  v96 = v121;
  v91 = type metadata accessor for LocationComponentContainerViewModel;
  v38 = v36;
  v39 = v105;
  sub_1001495C0(v38, v105);
  v92 = *(v4 + 48);
  v93 = *(v4 + 136);
  v109 = *(v4 + 24);
  sub_100035B30(v4 + 56, &v120);
  swift_unknownObjectRetain();
  v40 = v98;
  sub_100140210();
  v41 = v101;
  v90 = *(v40 + *(v101 + 68));
  sub_100147C14(v40, type metadata accessor for LocationViewModel);
  v42 = v99;
  sub_100140210();
  v108(v111, v42, v32);
  sub_100147C14(v42, type metadata accessor for LocationViewModel);
  v43 = *(v4 + 16);

  v44 = v100;
  sub_100140210();
  v45 = *(v44 + *(v41 + 92));
  sub_100147C14(v44, type metadata accessor for LocationViewModel);
  v46 = &v11[v9[12]];
  v114 = 0;
  v115 = 0;
  v116 = 1;
  sub_10022C350(&qword_100CC07D8, &qword_100A84020);
  State.init(wrappedValue:)();
  v47 = v118;
  v48 = v119;
  *v46 = v117;
  v46[16] = v47;
  *(v46 + 3) = v48;
  v49 = &v11[v9[13]];
  *v49 = sub_1001CA728;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = &v11[v9[14]];
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *v50 = sub_1001CADE8;
  *(v50 + 1) = v51;
  v50[16] = 0;
  v52 = &v11[v9[15]];
  *v52 = sub_1001CACE4;
  *(v52 + 1) = 0;
  v52[16] = 0;
  v53 = &v11[v9[16]];
  LOBYTE(v114) = 0;
  State.init(wrappedValue:)();
  v54 = *(&v117 + 1);
  *v53 = v117;
  *(v53 + 1) = v54;
  v55 = v9[17];
  *&v11[v55] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  v56 = &v11[v9[18]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v11[v9[19]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v9[20];
  *&v11[v58] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v59 = &v11[v9[21]];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = &v11[v9[22]];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  v61 = &v11[v9[23]];
  *v61 = swift_getKeyPath();
  v61[8] = 0;
  v62 = &v11[v9[24]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v11[v9[25]];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = &v11[v9[26]];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  v65 = &v11[v9[27]];
  *v65 = swift_getKeyPath();
  v65[8] = 0;
  v66 = &v11[v9[28]];
  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  *v66 = EnvironmentObject.init()();
  v66[1] = v67;
  *&v11[v9[30]] = 0x4024000000000000;
  *&v11[v9[31]] = 0xC024000000000000;
  sub_1001495C0(v39, v11);
  *&v11[v9[5]] = v109;
  sub_100035B30(&v120, &v11[v9[6]]);
  v11[v9[7]] = v90;
  v108(&v11[v9[8]], v111, v113);
  *&v11[v9[9]] = v43;
  v11[v9[10]] = v45;
  v68 = &v11[v9[11]];
  v69 = v102;
  *v68 = v110;
  *(v68 + 1) = v69;
  v70 = *(v92 + 56);

  v71 = 0;
  if ((DeviceIsVerySlow() & 1) == 0)
  {
    v71 = static Animation.linear(duration:)();
  }

  v72 = v106;
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v73 = byte_100D8FB88 | byte_100D8FB89 | byte_100D8FB8A;
  type metadata accessor for WireframeContentManager(0);
  swift_allocObject();
  v74 = v93;

  v75 = sub_1001CB2F4(v70, v74, v71, v110, v69, (v73 & 1) == 0);
  type metadata accessor for WireframeContentManagerReference();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  v114 = v76;
  State.init(wrappedValue:)();
  v94(v111, v113);
  sub_100006F14(&v120);
  sub_100147C14(v39, type metadata accessor for LocationComponentContainerViewModel);
  v77 = *(&v117 + 1);
  v78 = &v11[v9[29]];
  *v78 = v117;
  *(v78 + 1) = v77;
  v79 = v104;
  sub_100149618(v11, v104);
  v80 = v97;
  if (v97)
  {
    v81 = 1.0;
  }

  else
  {
    v81 = 0.0;
  }

  sub_100149618(v79, v72);
  *(v72 + *(v103 + 36)) = v81;
  v82 = v107;
  v120 = v95;
  v121 = v96;
  if (v80)
  {
    v83 = 12589;
  }

  else
  {
    v83 = 12333;
  }

  v84 = 0xE200000000000000;
  String.append(_:)(*&v83);
  v85 = v120;
  v86 = v121;
  sub_10011C0F0(v72, v82, &qword_100CD9A98, &qword_100A84018);
  result = sub_10022C350(&qword_100CD9A50, &unk_100A83FE0);
  v88 = (v82 + *(result + 52));
  *v88 = v85;
  v88[1] = v86;
  return result;
}

void sub_1007E2CB0(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_10022C350(&qword_100CD9AA0, &qword_100A84110);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v30 = a3;
    v18 = *(type metadata accessor for LocationComponentContainerViewModel(0) - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    sub_1007E20FC(v19, 0, v31, v16);
    KeyPath = swift_getKeyPath();
    v21 = static Alignment.bottomLeading.getter();
    v22 = &v16[*(v5 + 36)];
    *v22 = KeyPath;
    v22[1] = v21;
    v22[2] = v23;
    if (v17 != 1)
    {
      sub_1007E20FC(v19 + *(v18 + 72), 1, v31, v13);
      v24 = swift_getKeyPath();
      v25 = static Alignment.bottomTrailing.getter();
      v26 = &v13[*(v5 + 36)];
      *v26 = v24;
      v26[1] = v25;
      v26[2] = v27;
      sub_1000302D8(v16, v10, &qword_100CD9AA0, &qword_100A84110);
      sub_1000302D8(v13, v7, &qword_100CD9AA0, &qword_100A84110);
      v28 = v30;
      sub_1000302D8(v10, v30, &qword_100CD9AA0, &qword_100A84110);
      v29 = sub_10022C350(&qword_100CD9AA8, &qword_100A84118);
      sub_1000302D8(v7, v28 + *(v29 + 48), &qword_100CD9AA0, &qword_100A84110);
      sub_100018144(v13, &qword_100CD9AA0, &qword_100A84110);
      sub_100018144(v16, &qword_100CD9AA0, &qword_100A84110);
      sub_100018144(v7, &qword_100CD9AA0, &qword_100A84110);
      sub_100018144(v10, &qword_100CD9AA0, &qword_100A84110);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1007E2F48()
{
  type metadata accessor for SceneResizeMonitor();
  swift_allocObject();
  return sub_10013EA50();
}

double sub_1007E2F80()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GridViewIdentifierModifier(0) + 28);
  v6 = *v5;
  if (*(v5 + 48) == 1)
  {
    return *v5;
  }

  v8 = *(v5 + 16);
  v14 = *(v5 + 8);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100109A54(v6, v14, v8, v9, v10, v11, 0);
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_1007E3110@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GridViewIdentifierModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v20[1] = sub_1007E2F80();
  sub_1001495C0(v1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100149618(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10022C350(&qword_100CDA030, &qword_100A85090);
  sub_100006F64(&qword_100CDA038, &qword_100CDA030, &qword_100A85090, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10013E1CC();
  View.onChange<A>(of:initial:_:)();

  if (qword_100CA27E0 != -1)
  {
    swift_once();
  }

  v9 = qword_100D90DF0;
  v8 = *algn_100D90DF8;
  v10 = a1 + *(sub_10022C350(&qword_100CDA040, &qword_100A85098) + 36);
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_10008152C(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState, asc_100A4C40C);
  *v10 = Environment.init<A>(_:)();
  *(v10 + 8) = v11 & 1;
  v12 = type metadata accessor for AppStateTransitionModifier(0);
  v13 = *(v12 + 20);
  *(v10 + v13) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  swift_storeEnumTagMultiPayload();
  v14 = (v10 + *(v12 + 24));
  *v14 = v9;
  v14[1] = v8;

  v15 = sub_1007E3580();
  v17 = v16;
  result = sub_10022C350(&qword_100CDA048, &qword_100A850A0);
  v19 = (a1 + *(result + 52));
  *v19 = v15;
  v19[1] = v17;
  return result;
}

uint64_t sub_1007E3410(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for GridViewIdentifierModifier(0);
  type metadata accessor for SceneResizeMonitor();
  sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor, byte_100A83820);
  v4 = *(StateObject.wrappedValue.getter() + 16);

  if (v4 != v3)
  {
    StateObject.wrappedValue.getter();
    sub_1007E3528(1);
  }

  *(StateObject.wrappedValue.getter() + 16) = v3;
}

uint64_t sub_1007E3528(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v3 + 32) = a1;

  sub_1003BA6D4(v4);
}

uint64_t sub_1007E3580()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007E37BC())
  {
    type metadata accessor for Location.Identifier();
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v5;
    v6._countAndFlagsBits = 45;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = v0 + *(type metadata accessor for GridViewIdentifierModifier(0) + 20);
    v8 = *v7;
    if (*(v7 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v8, 0);
      (*(v2 + 8))(v4, v1);
    }

    v11._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v11);

    return v13;
  }

  else
  {
    type metadata accessor for Location.Identifier();
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t sub_1007E37BC()
{
  type metadata accessor for GridViewIdentifierModifier(0);
  type metadata accessor for SceneResizeMonitor();
  sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor, byte_100A83820);
  v0 = *(StateObject.wrappedValue.getter() + 16);

  v1 = sub_1007E2F80();
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v8, v8[3]);
  v3 = dispatch thunk of WindowType.traitCollection.getter();
  v4 = [v3 horizontalSizeClass];

  sub_100006F14(v8);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else if (v0 == v1 && (StateObject.wrappedValue.getter(), v6 = sub_1007E3974(), , (v6 & 1) == 0))
  {
    v5 = 1;
  }

  else
  {
    StateObject.wrappedValue.getter();
    v5 = sub_1007E39B4();
  }

  return v5 & 1;
}

uint64_t sub_1007E3974()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1007E39B4()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1007E39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_10022C350(&qword_100CD9FB0, &unk_100A85018);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  sub_1007E9AB0();
  return Menu.init(content:label:)();
}

uint64_t sub_1007E3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007E3C4C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CD9FC0, &unk_100A85028);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_100006F64(&qword_100CD9FC8, &qword_100CD9FC0, &unk_100A85028, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  sub_1007E9B6C();
  return ForEach<>.init(_:content:)();
}

_UNKNOWN **sub_1007E3C4C()
{
  sub_1006A8314(0, 25, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  do
  {
    v3 = *(&off_100C43088 + v0 + 32);
    v6 = v1;
    v4 = v1[3];
    if (v2 >= v4 >> 1)
    {
      sub_1006A8314((v4 > 1), v2 + 1, 1);
      v1 = v6;
    }

    ++v0;
    v1[2] = v2 + 1;
    *(v1 + v2++ + 32) = v3;
  }

  while (v0 != 25);
  sub_10035DE18(v1);
  return &off_100C45060;
}

uint64_t sub_1007E3D28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  swift_unknownObjectRetain();

  return Button.init(action:label:)();
}

uint64_t sub_1007E3DFC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 != 25)
  {
    sub_10030D368(a1);
  }

  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1007E3ED0@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)(v2, v4, v3 & 1, v5, 0, 0, 0, 0, 0, 256);
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1007E3F50@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_1007E3F90(char a1)
{
  if (a1 == 25)
  {
    return 0xD000000000000013;
  }

  else
  {
    return sub_10030D368(a1);
  }
}

unint64_t sub_1007E3FD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007E3F90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1007E400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007E4170(*v2);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v5 = sub_10022C350(&qword_100CDA080, &qword_100A850F0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = sub_10022C350(&qword_100CDA088, &unk_100A850F8);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_1007E4170(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  sub_1003DFCEC(a1, v11);
  v21 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v11, 1, v21) != 1)
  {
    sub_1001495C0(&v11[*(v21 + 20)], v17);
    sub_100147C14(v11, type metadata accessor for LocationComponentContainerViewModel);
    sub_100149618(v17, v20);
    sub_1001495C0(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      type metadata accessor for LocationContentRowHeightModifier(0);
      sub_10009ECC8();
      (*(v3 + 32))(v5, v8, v2);
      v22 = (*(v3 + 88))(v5, v2);
      if (v22 == enum case for ContentSizeCategory.extraSmall(_:) || v22 == enum case for ContentSizeCategory.small(_:) || v22 == enum case for ContentSizeCategory.medium(_:) || v22 == enum case for ContentSizeCategory.large(_:) || v22 == enum case for ContentSizeCategory.extraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        goto LABEL_41;
      }

      if (v22 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v22 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v3 + 8))(v5, v2);
LABEL_41:
        sub_1007E45C8();
        v36 = v35;
        sub_100147C14(v20, type metadata accessor for LocationComponentViewModel);
        v33 = v36;
        sub_100147C14(v14, type metadata accessor for LocationComponentViewModel);
        return v33;
      }
    }

    sub_100147C14(v20, type metadata accessor for LocationComponentViewModel);
    sub_100147C14(v14, type metadata accessor for LocationComponentViewModel);
    return 0;
  }

  sub_100018144(v11, &qword_100CA5008, &unk_100A2F7B0);
  return 0;
}

void *sub_1007E45C8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, (v0 + 24), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v11, (v0 + 24), sizeof(v11));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v12, v11, sizeof(v12));
  sub_1000EF898();
  memcpy(v10, (v0 + 24), 0x49uLL);
  if (v10[72])
  {
    return memcpy(v9, (v0 + 24), sizeof(v9));
  }

  static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100018144(v10, &qword_100CB71A8, &unk_100A4C930);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1007E485C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  sub_1007E9D1C();
  v5 = type metadata accessor for _VariadicView.Tree();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v28 = type metadata accessor for EnvironmentValues();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v14 = *(a1 + 36);
  memcpy(__dst, (v2 + v14), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v31, (v2 + v14), sizeof(v31));
    v15 = v2;
  }

  else
  {
    v25[1] = __dst[0];

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v26 = v2;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    v18 = v13;
    v15 = v26;
    (*(v27 + 8))(v18, v28);
  }

  v19 = v31[5];
  v31[0] = static Alignment.center.getter();
  v31[1] = v20;
  v31[2] = v19;
  LOBYTE(v31[3]) = 0;
  v31[4] = v19;
  LOBYTE(v31[5]) = 0;
  __chkstk_darwin(v31[0]);
  v21 = *(v29 + 24);
  v25[-4] = v4;
  v25[-3] = v21;
  v25[-2] = v15;
  _VariadicView.Tree.init(_:content:)();
  v30[0] = sub_1007E9D70();
  v30[1] = v21;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v5, v30);
  sub_1000833D8(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_1000833D8(v11, v5, WitnessTable);
  return (v23)(v11, v5);
}

uint64_t sub_1007E4C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for EnvironmentValues();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v24 = *(a1 + 16);
  v8 = type metadata accessor for HStack();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(a1 + 36);
  memcpy(__dst, (v2 + v15), 0x49uLL);
  if (__dst[9])
  {
    v16 = memcpy(v26, (v2 + v15), sizeof(v26));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v22 = v4;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    v16 = (*(v23 + 8))(v6, v22);
  }

  __chkstk_darwin(v16);
  *(&v22 - 4) = v24;
  *(&v22 - 3) = v7;
  *(&v22 - 2) = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v8);
  sub_1000833D8(v11, v8, WitnessTable);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_1000833D8(v14, v8, WitnessTable);
  return (v20)(v14, v8);
}

uint64_t sub_1007E4F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  sub_1000037D8();
  sub_10000CC9C();
  sub_1000833D8(v7, v8, v9);
  sub_1000833D8(v3, a2, a3);
  return (*(v6 + 8))(v3, a2);
}

double sub_1007E5008@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v10 = *(a1 + 8);
  memcpy(__dst, a2, 0x49uLL);
  v23 = v7;
  if (__dst[9])
  {
    v31 = *(a2 + 40);
    v11 = *(a2 + 24);
    v29 = *(a2 + 8);
    v30 = v11;
    v32 = *(a2 + 56);
    v28 = __dst[0];
    v26 = *(a2 + 8);
    v27[0] = *(a2 + 24);
    v27[1] = *(a2 + 40);
    v27[2] = *(a2 + 56);
  }

  else
  {
    sub_1000302D8(__dst, &v28, &qword_100CD9F98, &qword_100A84FF8);
    sub_1000302D8(__dst, &v28, &qword_100CD9F98, &qword_100A84FF8);
    static os_log_type_t.fault.getter();
    HIDWORD(v22) = v10;
    v12 = v6;
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98, &qword_100A84FF8);
    v14 = *(v7 + 8);
    v14(v9, v12);
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    LOBYTE(v10) = BYTE4(v22);
    os_log(_:dso:log:_:_:)();

    v6 = v12;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98, &qword_100A84FF8);
    v14(v9, v12);
  }

  if (!BYTE8(v27[1]))
  {
    v34 = *(a2 + 88);
    v33 = *(a2 + 80);
    if (v34 != 1)
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v33, &qword_100CC09F8, &qword_100A85070);
      (*(v23 + 8))(v9, v6);
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v25;
  v18 = v26;
  v19 = *(&v26 + 1);
  v20 = v27[0];
  *a3 = v24;
  *(a3 + 8) = v10;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  result = *(v27 + 1);
  *(a3 + 48) = *(v27 + 8);
  return result;
}

double sub_1007E53E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  memcpy(__dst, a2, 0x49uLL);
  if (__dst[9])
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    v12 = *(a2 + 56);
    v23 = *(a2 + 40);
    v24 = v12;
    v20 = __dst[0];
  }

  else
  {
    sub_1000302D8(__dst, &v20, &qword_100CD9F98, &qword_100A84FF8);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98, &qword_100A84FF8);
    (*(v7 + 8))(v9, v6);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  result = *&v29;
  *(a3 + 48) = v29;
  return result;
}

uint64_t sub_1007E5618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v11 = static Edge.Set.leading.getter();
  *(inited + 32) = v11;
  v12 = static Edge.Set.trailing.getter();
  *(inited + 33) = v12;
  v13 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  if (*(v3 + 72))
  {
    v27 = *(v3 + 8);
    v28 = *(v3 + 24);
    v29 = *(v3 + 40);
    *v30 = *(v3 + 56);
  }

  else
  {
    sub_1007E9E2C(v3, v26);
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9E64(v3);
    (*(v7 + 8))(v9, v6);
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CDA070, &qword_100A850E0);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CDA078, &qword_100A850E8);
  v25 = a2 + *(result + 36);
  *v25 = v13;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

void sub_1007E5928(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 72))
  {
    v9 = *(v1 + 8);
    v10 = *(v1 + 24);
    v11 = *(v1 + 40);
    v12 = *(v1 + 56);
  }

  else
  {
    sub_1007E8A00(v1, v8);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E8A38(v1);
    (*(v4 + 8))(v6, v3);
  }

  *a1 = v12;
  *(a1 + 8) = 0;
}

void *sub_1007E5AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v54 = a2;
  v49 = sub_10022C350(&qword_100CDA090, &qword_100A85108);
  __chkstk_darwin(v49);
  v55 = &v48 - v4;
  v51 = sub_10022C350(&qword_100CDA098, &qword_100A85110);
  __chkstk_darwin(v51);
  v6 = &v48 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(v2 + 24);
  v71 = *(v2 + 8);
  v72 = v12;
  v13 = *(v2 + 56);
  v73 = *(v2 + 40);
  v74[0] = v13;
  v56 = *(v2 + 72);
  if (v56)
  {
    v14 = *(v2 + 24);
    *&v67[1] = *(v2 + 8);
    *&v67[3] = v14;
    v15 = *(v2 + 56);
    *&v67[5] = *(v2 + 40);
    *&v67[7] = v15;
    v67[0] = v11;
  }

  else
  {
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    (*(v8 + 8))(v10, v7);
  }

  memcpy(v70, v67, sizeof(v70));
  v17 = sub_1000EF898();
  v52 = v7;
  v53 = v6;
  if (v56)
  {
    v66 = v74[0];
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v62 = v11;
    v18 = *v74;
    *&v68[1] = v71;
    *&v68[3] = v72;
    *&v68[5] = v73;
    *&v68[7] = v74[0];
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    v48 = v8;
    v20 = *(v8 + 8);
    v20(v10, v7);
    v18 = *&v66;
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    v20(v10, v7);
    v8 = v48;
  }

  if ((v17 - (v18 + v18) - *&v68[5]) * 0.5 > 0.0)
  {
    v22 = (v17 - (v18 + v18) - *&v68[5]) * 0.5;
  }

  else
  {
    v22 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  v24 = sub_10022C350(&qword_100CDA0A0, &qword_100A85118);
  v25 = v55;
  (*(*(v24 - 8) + 16))(v55, v50, v24);
  v26 = v25 + *(v49 + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  *(v26 + 16) = 0;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100A2D320;
  v28 = static Edge.Set.leading.getter();
  *(v27 + 32) = v28;
  v29 = static Edge.Set.trailing.getter();
  *(v27 + 33) = v29;
  v30 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  v31 = v53;
  if (v56)
  {
    v58 = v71;
    v59 = v72;
    v60 = v73;
    v61 = v74[0];
    v57 = v11;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v3);
    (*(v8 + 8))(v10, v52);
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10011C0F0(v55, v31, &qword_100CDA090, &qword_100A85108);
  v41 = v31 + *(v51 + 36);
  *v41 = v30;
  *(v41 + 8) = v34;
  *(v41 + 16) = v36;
  *(v41 + 24) = v38;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0;
  if (v56)
  {
    *&v68[1] = v71;
    *&v68[3] = v72;
    *&v68[5] = v73;
    *&v68[7] = v74[0];
    v68[0] = v11;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v3);
    (*(v8 + 8))(v10, v52);
  }

  memcpy(v69, v68, sizeof(v69));
  v43 = sub_1000EF898();
  static Alignment.center.getter();
  if (v22 > v43)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v54;
  sub_10011C0F0(v31, v54, &qword_100CDA098, &qword_100A85110);
  v46 = sub_10022C350(&qword_100CDA0A8, &unk_100A85120);
  return memcpy((v45 + *(v46 + 36)), v68, 0x70uLL);
}

BOOL sub_1007E62F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 88);
  v5 = *(v0 + 80);
  v20 = v5;
  if (v21 == 1)
  {
    if (v5)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(&v20, &qword_100CB91B8, &qword_100A4DA50);
    (*(v2 + 8))(v4, v1);
    if (__dst[0])
    {
      return 1;
    }
  }

  memcpy(__dst, v0, 0x49uLL);
  if (__dst[9])
  {
    v8 = *(v0 + 24);
    *&__src[1] = *(v0 + 8);
    *&__src[3] = v8;
    v9 = *(v0 + 56);
    *&__src[5] = *(v0 + 40);
    *&__src[7] = v9;
    __src[0] = __dst[0];
  }

  else
  {
    sub_1000302D8(__dst, v17, &qword_100CD9F98, &qword_100A84FF8);
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98, &qword_100A84FF8);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v17, __src, 0x48uLL);
  v11 = *&v17[1];
  if (v17[4])
  {
    v12 = sub_1000FDB68();
    v13 = 20.0;
    if (BYTE1(v17[6]) - 3 < 2)
    {
      v13 = 0.0;
    }

    v14 = v11 - (*&v17[7] + *&v17[7]) - v12 - v13;
    v15 = sub_1000FDE84();
    if (*&v17[8] >= v14 / dbl_100A85330[v15])
    {
      v11 = v14 / dbl_100A85330[v15];
    }

    else
    {
      v11 = *&v17[8];
    }
  }

  return v11 <= 162.0;
}

BOOL sub_1007E65FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1008EE67C();
  v5 = *(v4 + 16);

  return v5 != 0;
}

BOOL sub_1007E666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v7 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationStackView(0, a3, a4, v14);
  v16 = *(v15 + 44);
  memcpy(__dst, (a2 + v16), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v25, (a2 + v16), sizeof(v25));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v11 + 8))(v13, v10);
  }

  v18 = v25[49];
  sub_1000FC9C8();
  v19 = a2 + *(v15 + 48);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v20) = v25[0];
  }

  type metadata accessor for LocationComponentContainerViewModel(0);
  v22 = sub_100869090(v18, v9, v20 & 1);
  sub_100147C14(v9, type metadata accessor for DisplayMetrics);
  return v22;
}

uint64_t sub_1007E695C(char a1)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  *(v3 + 32) = a1;

  sub_1003BA6D4(v4);
}

uint64_t sub_1007E69B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007E695C(1);
  }

  return result;
}

uint64_t sub_1007E6A10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007E6B04()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1007E6B9C()
{
  sub_1007E6B04();

  return swift_deallocClassInstance();
}

void sub_1007E6C44()
{
  v1 = type metadata accessor for LocationContentView(0);
  sub_100003AE8(v1);
  v4 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v5 = *(v4 + *(v3 + 64));

  sub_1007DCE74(v4, v5);
}

unint64_t sub_1007E6CC8()
{
  result = qword_100CD9630;
  if (!qword_100CD9630)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95B8, &qword_100A838F8);
    v4[0] = sub_100006F64(&qword_100CD9628, &qword_100CD95B0, &qword_100A838F0, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9630);
  }

  return result;
}

uint64_t sub_1007E6D80()
{
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  swift_unknownObjectRelease();

  sub_100006F14((v3 + 56));
  sub_100006F14((v3 + 96));

  sub_1000EBD74(*(v3 + 144), *(v3 + 152));
  v4 = v3 + v0[13];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_100028448(v0[14]);
  v7 = v0[15];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_100028448(v0[16]);
  sub_100028448(v0[17]);

  v9 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  sub_100030448();

  return swift_deallocObject();
}

void sub_1007E6F84()
{
  sub_100016F3C();
  sub_10001164C();
  v0 = sub_1000053B8();

  sub_1007DD5BC(v0, v1, v2);
}

unint64_t sub_1007E6FF0()
{
  result = qword_100CD9638;
  if (!qword_100CD9638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95C0, &qword_100A83900);
    v4[0] = sub_1007E6CC8();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9638);
  }

  return result;
}

unint64_t sub_1007E707C()
{
  result = qword_100CD9640;
  if (!qword_100CD9640)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD95D0, &qword_100A83910);
    v4[2] = sub_10022E824(&qword_100CD95C0, &qword_100A83900);
    v4[3] = &type metadata for Bool;
    v4[4] = sub_1007E6FF0();
    v4[5] = &protocol witness table for Bool;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10013E220();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9640);
  }

  return result;
}

unint64_t sub_1007E7158()
{
  result = qword_100CD9650;
  if (!qword_100CD9650)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95D8, &qword_100A83918);
    v4[0] = sub_1007E707C();
    v4[1] = sub_10013E274();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9650);
  }

  return result;
}

unint64_t sub_1007E71EC()
{
  result = qword_100CD9668;
  if (!qword_100CD9668)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95E0, &qword_100A83920);
    v4[0] = sub_1007E7158();
    v4[1] = sub_10013E2C8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9668);
  }

  return result;
}

unint64_t sub_1007E7278()
{
  result = qword_100CD9678;
  if (!qword_100CD9678)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD9660, &qword_100A839B0);
    v4[0] = sub_10014A398();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CD9678);
  }

  return result;
}

unint64_t sub_1007E72FC()
{
  result = qword_100CD9688;
  if (!qword_100CD9688)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95E8, &qword_100A83928);
    v4[0] = sub_1007E71EC();
    v4[1] = sub_100006F64(&qword_100CD9690, &qword_100CD9698, &qword_100A839B8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9688);
  }

  return result;
}

unint64_t sub_1007E73B4()
{
  result = qword_100CD96A0;
  if (!qword_100CD96A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9608, &qword_100A83948);
    v4[0] = sub_1007E7440();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD96A0);
  }

  return result;
}

unint64_t sub_1007E7440()
{
  result = qword_100CD96A8;
  if (!qword_100CD96A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9600, &qword_100A83940);
    v4[0] = sub_10013E000();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD96A8);
  }

  return result;
}

unint64_t sub_1007E74CC()
{
  result = qword_100CD96D0;
  if (!qword_100CD96D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9610, &qword_100A83950);
    v4[0] = sub_1007E73B4();
    v4[1] = sub_1007E72FC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD96D0);
  }

  return result;
}

void sub_1007E7564(const char *a1, ...)
{
  sub_100016F3C();
  sub_10001164C();
  sub_1007DD2E0();
}

uint64_t sub_1007E75B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  return sub_1007E75E8(a1 + 2);
}

uint64_t sub_1007E75E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = static Color.clear.getter();
  __src[10] = sub_10071E894;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&qword_100CA6F50, &qword_100A3E000);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270, &qword_100A31F20);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1007E9BF8;
    __src[2] = 0;
    v5 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v5;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1000302D8(__dst, __src, &qword_100CA6E88, &qword_100A31E30);
    *a2 = v3;
    sub_1000302D8(__src, (a2 + 1), &qword_100CA6E88, &qword_100A31E30);

    sub_100018144(__dst, &qword_100CA6E88, &qword_100A31E30);
    sub_100018144(__src, &qword_100CA6E88, &qword_100A31E30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1007E7798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1000161C0(a1, a1[3]);
  sub_1007E77F4(v5);
  sub_100035B30(*v3 + 16, a2);
  return memcpy((a2 + 40), v5, 0x60uLL);
}

uint64_t sub_1007E77F4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCCB0;
  v4._object = 0x8000000100ADCC90;
  v18._countAndFlagsBits = 0xD000000000000054;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADF580;
  v8._object = 0x8000000100ADF510;
  v19._countAndFlagsBits = 0xD000000000000036;
  v8._countAndFlagsBits = 0x100000000000006ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.white.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *a1 = 1;
  *(a1 + 8) = 0x616C732E69666977;
  *(a1 + 16) = 0xEA00000000006873;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

unint64_t sub_1007E7990()
{
  result = qword_100CD9710;
  if (!qword_100CD9710)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD96D8, &qword_100A839E8);
    v4[0] = sub_1007E7A48();
    v4[1] = sub_100006F64(&qword_100CD9758, &qword_100CD9760, &qword_100A83B00, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9710);
  }

  return result;
}

unint64_t sub_1007E7A48()
{
  result = qword_100CD9718;
  if (!qword_100CD9718)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9720, &qword_100A83AD0);
    v4[0] = sub_1007E7B00();
    v4[1] = sub_100006F64(&qword_100CBC3B0, &qword_100CBC3B8, &qword_100A52C60, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9718);
  }

  return result;
}

unint64_t sub_1007E7B00()
{
  result = qword_100CD9728;
  if (!qword_100CD9728)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9730, &qword_100A83AD8);
    v4[0] = sub_1007E7BB8();
    v4[1] = sub_100006F64(&qword_100CCA190, &qword_100CCA198, &unk_100A83AF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9728);
  }

  return result;
}

unint64_t sub_1007E7BB8()
{
  result = qword_100CD9738;
  if (!qword_100CD9738)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD9740, &qword_100A83AE0);
    v4[2] = sub_10022E824(&qword_100CD9748, &qword_100A83AE8);
    v4[3] = sub_100006F64(&qword_100CD9750, &qword_100CD9748, &qword_100A83AE8, &protocol conformance descriptor for ScrollView<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1005F52B4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9738);
  }

  return result;
}

unint64_t sub_1007E7CB4()
{
  result = qword_100CD9780;
  if (!qword_100CD9780)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9708, &qword_100A83A18);
    v4[0] = sub_1007E7D6C();
    v4[1] = sub_100006F64(&qword_100CD97C8, &qword_100CD9770, &qword_100A83B98, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9780);
  }

  return result;
}

unint64_t sub_1007E7D6C()
{
  result = qword_100CD9788;
  if (!qword_100CD9788)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9700, &qword_100A83A10);
    v4[0] = sub_1007E7E24();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9788);
  }

  return result;
}

unint64_t sub_1007E7E24()
{
  result = qword_100CD9790;
  if (!qword_100CD9790)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD96F8, &qword_100A83A08);
    v4[0] = sub_1007E7EDC();
    v4[1] = sub_100006F64(&qword_100CD97C0, &qword_100CD9768, &unk_100A83B58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9790);
  }

  return result;
}

unint64_t sub_1007E7EDC()
{
  result = qword_100CD9798;
  if (!qword_100CD9798)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD96F0, &qword_100A83A00);
    v4[0] = sub_1007E7F94();
    v4[1] = sub_100006F64(&qword_100CD97B0, &qword_100CD97B8, &unk_100A83BA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9798);
  }

  return result;
}

unint64_t sub_1007E7F94()
{
  result = qword_100CD97A0;
  if (!qword_100CD97A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD96E8, &qword_100A839F8);
    v4[0] = sub_1007E8050();
    v4[1] = sub_10008152C(&qword_100CD96C8, type metadata accessor for ActivityModifier, byte_100AA49F4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD97A0);
  }

  return result;
}

unint64_t sub_1007E8050()
{
  result = qword_100CD97A8;
  if (!qword_100CD97A8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CD96E0, &qword_100A839F0);
    v4[2] = sub_10022E824(&qword_100CD96D8, &qword_100A839E8);
    v4[3] = type metadata accessor for PrimaryDividerStyle();
    v4[4] = sub_1007E7990();
    v4[5] = sub_10008152C(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10008152C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD97A8);
  }

  return result;
}

uint64_t sub_1007E8198@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationContentView(0);
  sub_100003AE8(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  *&v13[24] = *(v1 + v11 + 16);
  *&v13[8] = *(v1 + v11);
  *v13 = *(v1 + v10 + 24);
  return sub_1007DD9F0(v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v9 + 16), *(v1 + v9 + 24), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v10 + 16), a1, *(v1 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8)), *v13, *&v13[16], *(v1 + v11 + 24));
}

unint64_t sub_1007E8280()
{
  result = qword_100CD9810;
  if (!qword_100CD9810)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD97F0, &qword_100A83BF8);
    v4[0] = sub_1007E830C();
    v4[1] = sub_1007E847C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9810);
  }

  return result;
}

unint64_t sub_1007E830C()
{
  result = qword_100CD9818;
  if (!qword_100CD9818)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9808, &qword_100A83C90);
    v4[0] = sub_1007E8398();
    v4[1] = sub_10014A29C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9818);
  }

  return result;
}

unint64_t sub_1007E8398()
{
  result = qword_100CD9820;
  if (!qword_100CD9820)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9800, &qword_100A83C38);
    v4[0] = sub_100006F64(&qword_100CD9828, &qword_100CD97F8, &unk_100A83C00, byte_100A45998);
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9820);
  }

  return result;
}

unint64_t sub_1007E847C()
{
  result = qword_100CD9838;
  if (!qword_100CD9838)
  {
    result = swift_getWitnessTable(byte_100A84D3C, &type metadata for ComputeLocationHeaderViewBottomYModifier, v0, v1);
    atomic_store(result, &qword_100CD9838);
  }

  return result;
}

unint64_t sub_1007E84D0()
{
  result = qword_100CD9840;
  if (!qword_100CD9840)
  {
    result = swift_getWitnessTable("}n\x1B", &_s31__Key_locationHeaderViewBottomYVN, v0, v1);
    atomic_store(result, &qword_100CD9840);
  }

  return result;
}

unint64_t sub_1007E8524()
{
  result = qword_100CD98F0;
  if (!qword_100CD98F0)
  {
    v6[18] = v0;
    v6[19] = v1;
    v3 = sub_10022E824(&qword_100CD9880, &qword_100A83CF8);
    v4 = sub_10022E824(&qword_100CD9888, &qword_100A83D00);
    v5 = sub_10022E824(&qword_100CD9890, &qword_100A83D08);
    sub_10022E824(&qword_100CD9898, &qword_100A83D10);
    sub_10022E824(&qword_100CD98A0, &qword_100A83D18);
    sub_10022E824(&qword_100CD47E0, &qword_100A83D20);
    sub_100149E14();
    sub_100708038();
    swift_getOpaqueTypeConformance2();
    v6[2] = v4;
    v6[3] = &type metadata for Solarium;
    v6[4] = v5;
    v6[5] = swift_getOpaqueTypeConformance2();
    v6[6] = &protocol witness table for Solarium;
    v6[7] = sub_100006F64(&qword_100CD98E8, &qword_100CD9890, &qword_100A83D08, &protocol conformance descriptor for IDView<A, B>);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_1005F52B4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CD98F0);
  }

  return result;
}

unint64_t sub_1007E8714()
{
  result = qword_100CD98F8;
  if (!qword_100CD98F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9860, &qword_100A83CD8);
    v4[0] = sub_100006F64(&qword_100CD9900, &qword_100CD9908, &qword_100A83D40, &protocol conformance descriptor for TupleView<A>);
    v4[1] = sub_10008152C(&qword_100CD9910, type metadata accessor for GridViewIdentifierModifier, byte_100A84C14);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD98F8);
  }

  return result;
}

unint64_t sub_1007E8834()
{
  result = qword_100CD9960;
  if (!qword_100CD9960)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9950, &qword_100A83E58);
    v4[0] = sub_10008152C(&qword_100CD9968, type metadata accessor for LazyLocationGridViewContainer, byte_100AA3EB0);
    v4[1] = sub_100006F64(&qword_100CD9970, &qword_100CD9978, &qword_100A83E68, &protocol conformance descriptor for _BackgroundPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9960);
  }

  return result;
}

unint64_t sub_1007E891C()
{
  result = qword_100CD9980;
  if (!qword_100CD9980)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9958, &qword_100A83E60);
    v4[0] = sub_100006F64(&qword_100CD9988, &qword_100CD9990, &qword_100A83E70, byte_100A84BC4);
    v4[1] = sub_100006F64(&qword_100CD9970, &qword_100CD9978, &qword_100A83E68, &protocol conformance descriptor for _BackgroundPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9980);
  }

  return result;
}

uint64_t sub_1007E8A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100016F3C();
  sub_10001164C();
  return sub_1007E2000(a1, a2);
}

uint64_t sub_1007E8AD0@<X0>(uint64_t a1@<X8>)
{
  sub_100016F3C();
  sub_10001164C();

  return sub_1007E0358(v1 + v3, a1);
}

uint64_t sub_1007E8B5C(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for LocationContentView(0) - 8;
  if (*a2 == 1)
  {
    sub_10001164C();
    return sub_100192DF0();
  }

  return result;
}

uint64_t sub_1007E8BCC()
{
  sub_100071E44();
  sub_100016F3C();
  sub_10001164C();
  v0 = sub_100036EDC();
  return sub_1007E0984(v0, v1, v2, v3, v4);
}

unint64_t sub_1007E8C30()
{
  result = qword_100CD9A08;
  if (!qword_100CD9A08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9A10, &qword_100A83FC0);
    v4[0] = sub_1007E8CEC();
    v4[1] = sub_10008152C(&qword_100CD9A68, type metadata accessor for LocationContentRowHeightModifier, "5p\x1B");
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9A08);
  }

  return result;
}

unint64_t sub_1007E8CEC()
{
  result = qword_100CD9A18;
  if (!qword_100CD9A18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9A20, &qword_100A83FC8);
    v4[0] = sub_1007E8D78();
    v4[1] = sub_1007E8F3C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9A18);
  }

  return result;
}

unint64_t sub_1007E8D78()
{
  result = qword_100CD9A28;
  if (!qword_100CD9A28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9A30, &qword_100A83FD0);
    v4[0] = sub_1007E8E30();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9A28);
  }

  return result;
}

unint64_t sub_1007E8E30()
{
  result = qword_100CD9A38;
  if (!qword_100CD9A38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9A40, &qword_100A83FD8);
    v4[0] = sub_100006F64(&qword_100CD9A48, &qword_100CD9A50, &unk_100A83FE0, &protocol conformance descriptor for IDView<A, B>);
    v4[1] = sub_1007E8EE8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9A38);
  }

  return result;
}

unint64_t sub_1007E8EE8()
{
  result = qword_100CD9A58;
  if (!qword_100CD9A58)
  {
    result = swift_getWitnessTable(byte_100A84B74, &type metadata for WidthFillingLocationComponentContainerModifier, v0, v1);
    atomic_store(result, &qword_100CD9A58);
  }

  return result;
}

unint64_t sub_1007E8F3C()
{
  result = qword_100CD9A60;
  if (!qword_100CD9A60)
  {
    result = swift_getWitnessTable(byte_100A84B24, &type metadata for GutterWidthPaddingModifier, v0, v1);
    atomic_store(result, &qword_100CD9A60);
  }

  return result;
}

unint64_t sub_1007E8F90()
{
  result = qword_100CD9A78;
  if (!qword_100CD9A78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD99D0, &qword_100A83F68);
    v4[0] = sub_100006F64(&qword_100CD9A80, &qword_100CD99C8, &qword_100A83F60, &protocol conformance descriptor for IDView<A, B>);
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9A78);
  }

  return result;
}

unint64_t sub_1007E9074()
{
  result = qword_100CD9A88;
  if (!qword_100CD9A88)
  {
    result = swift_getWitnessTable(byte_100A84A84, &type metadata for HalfWidthFillingLocationComponentContainerModifier, v0, v1);
    atomic_store(result, &qword_100CD9A88);
  }

  return result;
}

double sub_1007E90C8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1007E9114(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[81])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007E9160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1007E91BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007E9208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1007E9274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return sub_100020180(*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 > 1)
  {
    return sub_100020180(v3 ^ 0xFF);
  }

  else
  {
    return sub_100020180(-1);
  }
}

uint64_t sub_1007E92B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      return sub_10006A8FC(result, a2);
    }
  }

  return result;
}

void sub_1007E93A4(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  if (v1 <= 0x3F)
  {
    sub_10009C020(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10009C020(319, &qword_100CD9D40, &unk_100C73218, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10013790C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unsigned __int8 *sub_1007E94DC(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 72);
      if (v16 > 1)
      {
        return ((v16 ^ 0xFF) + 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_100024D10(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 73;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = sub_100020180(v7 + (v15 | v14));
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1007E9624(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 73;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v19 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v19 + 56) = 0u;
              *(v19 + 40) = 0u;
              *(v19 + 24) = 0u;
              *(v19 + 8) = 0u;
              *(v19 + 72) = 0;
              *v19 = (a2 - 255);
            }

            else
            {
              *(v19 + 72) = -a2;
            }
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    v16 = sub_100003940();
    bzero(v16, v17);
    if (v10 <= 3)
    {
      v18 = (v15 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1007E9828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return sub_100020180(*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 > 1)
  {
    return sub_100020180(v3 ^ 0xFF);
  }

  else
  {
    return sub_100020180(-1);
  }
}

uint64_t sub_1007E9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      return sub_10006A8FC(result, a2);
    }
  }

  return result;
}

unint64_t sub_1007E9AB0()
{
  result = qword_100CD9FB8;
  if (!qword_100CD9FB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD9FB0, &unk_100A85018);
    v4[0] = sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CD9FB8);
  }

  return result;
}

unint64_t sub_1007E9B6C()
{
  result = qword_100CD9FD0;
  if (!qword_100CD9FD0)
  {
    result = swift_getWitnessTable("ym\x1B", &type metadata for KnownLocationLayoutsPicker.LayoutOption, v0, v1);
    atomic_store(result, &qword_100CD9FD0);
  }

  return result;
}

uint64_t sub_1007E9C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  sub_10001164C();
  v5 = sub_1000053B8();

  return a4(v5);
}

unint64_t sub_1007E9D1C()
{
  result = qword_100CDA050;
  if (!qword_100CDA050)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for GridLayout, &type metadata for GridLayout, v0, v1);
    atomic_store(result, &qword_100CDA050);
  }

  return result;
}

unint64_t sub_1007E9D70()
{
  result = qword_100CDA058;
  if (!qword_100CDA058)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for GridLayout, &type metadata for GridLayout, v0, v1);
    atomic_store(result, &qword_100CDA058);
  }

  return result;
}

unint64_t sub_1007E9F74()
{
  result = qword_100CDA0F0;
  if (!qword_100CDA0F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0E0, &qword_100A85180);
    v4[0] = sub_1007EA000();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA0F0);
  }

  return result;
}

unint64_t sub_1007EA000()
{
  result = qword_100CDA0F8;
  if (!qword_100CDA0F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0D8, &qword_100A85178);
    v4[0] = sub_1007EA08C();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA0F8);
  }

  return result;
}

unint64_t sub_1007EA08C()
{
  result = qword_100CDA100;
  if (!qword_100CDA100)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0D0, &qword_100A85170);
    v4[0] = sub_1007EA118();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA100);
  }

  return result;
}

unint64_t sub_1007EA118()
{
  result = qword_100CDA108;
  if (!qword_100CDA108)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0C8, &qword_100A85168);
    v4[0] = sub_10008152C(&qword_100CDA110, type metadata accessor for LocationHeaderViewLargeText, asc_100A7D438);
    v4[1] = sub_10008152C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA108);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for KnownLocationLayoutsPicker.LayoutOption(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 0x19;
    v8 = v6 - 25;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 25;
    if (a2 + 25 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 25);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnownLocationLayoutsPicker.LayoutOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 25;
  if (a3 + 25 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xE7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE6)
  {
    v7 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1007EA3AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x19)
  {
    return v1 - 24;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1007EA3C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 24;
  }

  return result;
}

unint64_t sub_1007EA3E0()
{
  result = qword_100CDA208;
  if (!qword_100CDA208)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDA210, &unk_100A85250);
    v4[0] = sub_100006F64(&qword_100CDA218, &qword_100CD9FF0, &qword_100A85050, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDA208);
  }

  return result;
}

unint64_t sub_1007EA490()
{
  result = qword_100CDA220;
  if (!qword_100CDA220)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA010, &qword_100A85068);
    v4[0] = sub_100006F64(&qword_100CDA228, &qword_100CDA008, &qword_100A85060, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA220);
  }

  return result;
}

unint64_t sub_1007EA574()
{
  result = qword_100CDA278;
  if (!qword_100CDA278)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0A8, &unk_100A85120);
    v4[0] = sub_1007EA600();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA278);
  }

  return result;
}

unint64_t sub_1007EA600()
{
  result = qword_100CDA280;
  if (!qword_100CDA280)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA098, &qword_100A85110);
    v4[0] = sub_1007EA68C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA280);
  }

  return result;
}

unint64_t sub_1007EA68C()
{
  result = qword_100CDA288;
  if (!qword_100CDA288)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA090, &qword_100A85108);
    v4[0] = sub_100006F64(&qword_100CDA290, &qword_100CDA0A0, &qword_100A85118, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CC2270, &qword_100CC2278, &qword_100A5AAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA288);
  }

  return result;
}

unint64_t sub_1007EA770()
{
  result = qword_100CDA298;
  if (!qword_100CDA298)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDA2A0, qword_100A85260);
    v4[0] = sub_1007EA7F4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDA298);
  }

  return result;
}

unint64_t sub_1007EA7F4()
{
  result = qword_100CDA2A8;
  if (!qword_100CDA2A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA0E8, &qword_100A85188);
    v4[0] = sub_1007E9F74();
    v4[1] = sub_10014FB5C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA2A8);
  }

  return result;
}

uint64_t sub_1007EA8A0@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for MoonScrubberViewModel(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  __chkstk_darwin(v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25[-1] - v12;
  sub_100035B30(v2 + 16, v25);
  v14 = type metadata accessor for MoonScrubberView(0);
  v15 = a1 + v14[5];
  v16 = type metadata accessor for ScrubberDateSelection(0);
  sub_10001B350(v13, 1, 1, v16);
  sub_1002ACB5C(v13, v10);
  State.init(wrappedValue:)();
  sub_10003FDF4(v13, &qword_100CA6BC0, &unk_100A31BE0);
  v17 = v14[8];
  type metadata accessor for MoonScrubberStorage(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate;
  v20 = type metadata accessor for MoonDetailSelectedDate(0);
  sub_10001B350(v18 + v19, 1, 1, v20);
  v21 = v18 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a1 + v17) = v18;

  sub_10022C350(&qword_100CA4D38, &unk_100A7E1D0);
  sub_1007EAB68();
  *a1 = ObservedObject.init(wrappedValue:)();
  a1[1] = v22;
  sub_100035B30(v25, a1 + v14[6]);
  *(a1 + v14[7]) = a2;
  sub_100989B78();
  sub_100006F14(v25);
  sub_1002ACB5C(v7, v13);
  sub_1007EABCC(v7);
  sub_10003FDF4(v15, &qword_100CD1E18, &unk_100A77300);
  *&v15[*(sub_10022C350(&qword_100CD1E18, &unk_100A77300) + 28)] = 0;
  return sub_10042681C(v13, v15);
}

unint64_t sub_1007EAB68()
{
  result = qword_100CA4D40;
  if (!qword_100CA4D40)
  {
    v3 = sub_10022E824(&qword_100CA4D38, &unk_100A7E1D0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4D40);
  }

  return result;
}

uint64_t sub_1007EABCC(uint64_t a1)
{
  v2 = type metadata accessor for MoonScrubberViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1007EAC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV7Weather11CloseButton11Coordinator_parent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1007EAC98()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather11CloseButton11Coordinator_parent);

  v1(v2);
}

id sub_1007EAE04(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CloseButton.AccessibleCloseButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1007EAE8C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CloseButton.AccessibleCloseButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1007EAF34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1007EAFA0()
{
  type metadata accessor for CloseButton.AccessibleCloseButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType:7];
  sub_10022C350(&qword_100CDA3D0, &unk_100A854F0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v2 action:"doAction:" forControlEvents:64];

  return v0;
}

id sub_1007EB040@<X0>(void *a1@<X8>)
{
  result = sub_1007EAC28(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1007EB080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007EB174();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1007EB0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007EB174();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1007EB148(uint64_t a1)
{
  sub_1007EB174();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1007EB174()
{
  result = qword_100CDA3D8;
  if (!qword_100CDA3D8)
  {
    result = swift_getWitnessTable(byte_100A8545C, &type metadata for CloseButton, v0, v1);
    atomic_store(result, &qword_100CDA3D8);
  }

  return result;
}

uint64_t sub_1007EB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1009EED68();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

double sub_1007EB280@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t sub_1007EB28C(int a1, uint64_t a2, uint64_t *__src)
{
  v345 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  v369 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  v363 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v360 = v7;
  v8 = sub_1000038CC();
  v370 = type metadata accessor for TimeState(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003848();
  v362 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v358 = v12;
  v13 = sub_1000038CC();
  v371 = type metadata accessor for NotificationsOptInState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  v361 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_10000E70C();
  v356 = v17;
  v18 = sub_1000038CC();
  v365 = type metadata accessor for NotificationsState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v359 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v354 = v22;
  v23 = sub_1000038CC();
  v366 = type metadata accessor for LocationsState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  v357 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v352 = v27;
  v28 = sub_1000038CC();
  v368 = type metadata accessor for EnvironmentState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003848();
  v355 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v351 = v32;
  v33 = sub_1000038CC();
  v367 = type metadata accessor for AppConfigurationState(v33);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_100003848();
  v353 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_10000E70C();
  v350 = v37;
  v38 = sub_1000038CC();
  v341 = type metadata accessor for ModalViewState(v38);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003848();
  v330 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v349 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v364 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v329 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v348 = v48;
  v49 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  v340 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v327 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v326 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_10000E70C();
  v324 = v57;
  v58 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  v338 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v347 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v337 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_10000E70C();
  v346 = v66;
  v67 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  v336 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  sub_100003878();
  v344 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v335 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_10000E70C();
  v343 = v75;
  v76 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v77 = sub_100003810(v76);
  __chkstk_darwin(v77);
  sub_100003848();
  v334 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v342 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v333 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_10000E70C();
  v339 = v84;
  v85 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v86 = sub_100003810(v85);
  __chkstk_darwin(v86);
  sub_100003848();
  *(&v332 + 1) = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  v90 = &v322 - v89;
  __chkstk_darwin(v91);
  sub_100003878();
  *&v332 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_10000E70C();
  v322 = v94;
  v95 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v96 = sub_100003810(v95);
  __chkstk_darwin(v96);
  sub_100003848();
  v331 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  v100 = &v322 - v99;
  __chkstk_darwin(v101);
  sub_100003878();
  v328 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  v105 = &v322 - v104;
  v106 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v107 = sub_100003810(v106);
  __chkstk_darwin(v107);
  sub_100003848();
  v325 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  v111 = &v322 - v110;
  __chkstk_darwin(v112);
  sub_100003878();
  v323 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  v116 = &v322 - v115;
  v117 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v118 = sub_100003810(v117);
  __chkstk_darwin(v118);
  __chkstk_darwin(v119);
  __chkstk_darwin(v120);
  v122 = &v322 - v121;
  __chkstk_darwin(v123);
  v127 = &v322 - v126;
  v128 = __src;
  v129 = *__src;
  if ((~v129 & 0xF000000000000006) != 0)
  {
    v352 = v124;
    v163 = v125;
    type metadata accessor for ReportWeatherViewState._Storage();
    v164 = swift_allocObject();
    *(v164 + 16) = v129;
    memcpy((v164 + 24), v128 + 1, 0x58uLL);
    v351 = v163;
    sub_100003934();
    sub_10001B350(v165, v166, v167, v367);
    sub_100003934();
    sub_10001B350(v168, v169, v170, v368);
    v354 = v100;
    sub_100003934();
    v171 = v366;
    sub_10001B350(v172, v173, v174, v366);
    v360 = v90;
    sub_100003934();
    sub_10001B350(v175, v176, v177, v365);
    sub_100003934();
    sub_10001B350(v178, v179, v180, v371);
    sub_100003934();
    sub_10001B350(v181, v182, v183, v370);
    sub_100003934();
    sub_10001B350(v184, v185, v186, v369);
    v187 = v327;
    *v327 = v164;
    v188 = v341;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v187, 0, 1, v188);
    v189 = sub_100028B78(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v190 = v330;
    sub_1000BCAE0(v189, v330, v191);
    v192 = v187;
    v193 = v340;
    sub_1002AB08C(v192, v340, &qword_100CA65E8, &unk_100A31410);
    sub_100005404(v193);
    v194 = v171;
    v195 = v111;
    if (v162)
    {
      memcpy(v373, __dst, sizeof(v373));
      sub_10029C25C(v373, v372);
      sub_1000180EC(v340, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      memcpy(v373, __dst, sizeof(v373));
      sub_10029C25C(v373, v372);
      sub_10037B08C(v190);
      sub_100005518();
      sub_100073030(v340, v190, v205);
    }

    v206 = v325;
    sub_100005518();
    sub_100073030(v190, v207, v208);
    v209 = *(v129 + 16);
    LODWORD(v356) = *(v129 + 24);
    v210 = v352;
    sub_1002AB08C(v351, v352, &qword_100CA6640, qword_100A32640);
    v211 = sub_1000175DC();
    v212 = v367;
    sub_1000038B4(v211, v213, v367);
    v214 = v360;
    v215 = v354;
    if (v162)
    {
      v216 = sub_100013C58(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_1000BCAE0(v216, v353, v217);
      v218 = sub_1000175DC();
      v220 = sub_100024D10(v218, v219, v212);

      if (v220 != 1)
      {
        sub_1000180EC(v210, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v210, v353, v228);
    }

    sub_1002AB08C(v195, v206, &qword_100CA6638, &unk_100A31460);
    v229 = sub_1000182B8();
    v230 = v368;
    sub_1000038B4(v229, v231, v368);
    v358 = v209;
    if (v162)
    {
      v232 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100024A78();
      sub_1000BCAE0(v129 + v232, v355, v233);
      v234 = sub_1000182B8();
      sub_1000038B4(v234, v235, v230);
      v243 = v370;
      v236 = v206;
      v244 = v336;
      v245 = v342;
      if (!v162)
      {
        sub_1000180EC(v236, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v206, v355, v242);
      v243 = v370;
      v244 = v336;
      v245 = v342;
    }

    v246 = v215;
    v247 = v331;
    sub_1002AB08C(v246, v331, &qword_100CA6630, &unk_100A32630);
    sub_1000038B4(v247, 1, v194);
    v248 = v347;
    if (v162)
    {
      v249 = sub_100049D68(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v249, v357, v250);
      sub_1000038B4(v247, 1, v194);
      v258 = v334;
      if (!v162)
      {
        sub_1000180EC(v247, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v247, v357, v257);
      v258 = v334;
    }

    v259 = v214;
    v260 = *(&v332 + 1);
    sub_1002AB08C(v259, *(&v332 + 1), &qword_100CA6628, &unk_100A31450);
    sub_1000038B4(v260, 1, v365);
    if (v162)
    {
      v261 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v261, v359, v262);
      sub_100005404(v260);
      v270 = v344;
      if (!v162)
      {
        sub_1000180EC(v260, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      v268 = sub_10004EAC0();
      sub_100073030(v268, v359, v269);
      v270 = v344;
    }

    sub_1002AB08C(v245, v258, &qword_100CA6620, &unk_100A32620);
    sub_100005404(v258);
    if (v162)
    {
      v271 = sub_100016F5C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v271, v361, v272);
      sub_100005404(v258);
      v283 = v338;
      if (!v162)
      {
        sub_1000180EC(v258, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_1000134C8();
      sub_100073030(v258, v361, v282);
      v283 = v338;
    }

    sub_1002AB08C(v270, v244, &qword_100CA6618, &unk_100A31440);
    v284 = sub_1000182B8();
    sub_1000038B4(v284, v285, v243);
    if (v162)
    {
      v286 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v286, v362, v287);
      v288 = sub_1000182B8();
      sub_1000038B4(v288, v289, v243);
      v294 = v363;
      if (!v162)
      {
        sub_1000180EC(v244, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v244, v362, v293);
      v294 = v363;
    }

    sub_1002AB08C(v248, v283, &qword_100CA6610, &unk_100A32610);
    sub_1000038B4(v283, 1, v369);
    if (v162)
    {
      v295 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v295, v294, v296);
      sub_10000394C(v283);
      if (!v162)
      {
        sub_1000180EC(v283, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v283, v294, v309);
    }

    sub_100005518();
    v310 = v364;
    sub_100073030(v349, v364, v311);
    v312 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v371 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v313 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v314 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v315 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v316 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v317 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v318 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v321) = v315;
    sub_10003E038(v358, v356, v353, v355, v357, v359, v361, v362, v363, v310, v371, v312, v313, v314, v321, v316, v317, v318, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338);
  }

  else
  {
    sub_100003934();
    sub_10001B350(v130, v131, v132, v367);
    v359 = v116;
    sub_100003934();
    sub_10001B350(v133, v134, v135, v368);
    v361 = v105;
    sub_100003934();
    sub_10001B350(v136, v137, v138, v366);
    v139 = v322;
    sub_100003934();
    v140 = v365;
    sub_10001B350(v141, v142, v143, v365);
    sub_100003934();
    sub_10001B350(v144, v145, v146, v371);
    sub_100003934();
    sub_10001B350(v147, v148, v149, v370);
    sub_100003934();
    sub_10001B350(v150, v151, v152, v369);
    v153 = v324;
    v154 = v341;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v153, 0, 1, v154);
    v155 = sub_100028B78(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v156 = v329;
    sub_1000BCAE0(v155, v329, v157);
    v158 = v153;
    v159 = v326;
    sub_1002AB08C(v158, v326, &qword_100CA65E8, &unk_100A31410);
    v160 = sub_1000175DC();
    sub_1000038B4(v160, v161, v154);
    if (v162)
    {
      sub_1000180EC(v159, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_10037B08C(v156);
      sub_100005518();
      sub_100073030(v159, v156, v196);
    }

    v197 = v328;
    sub_100005518();
    sub_100073030(v156, v348, v198);
    v199 = *(v129 + 16);
    LODWORD(v362) = *(v129 + 24);
    sub_1002AB08C(v127, v122, &qword_100CA6640, qword_100A32640);
    v200 = v367;
    sub_1000038B4(v122, 1, v367);
    v201 = v140;
    v363 = v199;
    if (v162)
    {
      v202 = sub_100013C58(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_1000BCAE0(v202, v350, v203);
      v204 = sub_100024D10(v122, 1, v200);

      v222 = v360;
      v223 = v333;
      if (v204 != 1)
      {
        sub_1000180EC(v122, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v122, v350, v221);

      v222 = v360;
      v223 = v333;
    }

    v224 = v323;
    sub_1002AB08C(v359, v323, &qword_100CA6638, &unk_100A31460);
    sub_1000038B4(v224, 1, v368);
    if (v162)
    {
      v225 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100024A78();
      sub_1000BCAE0(v129 + v225, v351, v226);
      sub_10000394C(v224);
      v227 = v224;
      v238 = v343;
      if (!v162)
      {
        sub_1000180EC(v227, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v224, v351, v237);
      v238 = v343;
    }

    sub_1002AB08C(v361, v197, &qword_100CA6630, &unk_100A32630);
    sub_10000394C(v197);
    if (v162)
    {
      v239 = sub_100049D68(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v239, v352, v240);
      sub_10000394C(v197);
      v241 = v197;
      v252 = v346;
      if (!v162)
      {
        sub_1000180EC(v241, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v197, v352, v251);
      v252 = v346;
    }

    v253 = v139;
    v254 = v332;
    sub_1002AB08C(v253, v332, &qword_100CA6628, &unk_100A31450);
    sub_1000038B4(v254, 1, v201);
    if (v162)
    {
      v255 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v255, v354, v256);
      sub_1000038B4(v254, 1, v201);
      v265 = v335;
      if (!v162)
      {
        sub_1000180EC(v254, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      v263 = sub_10004EAC0();
      sub_100073030(v263, v354, v264);
      v265 = v335;
    }

    sub_1002AB08C(v339, v223, &qword_100CA6620, &unk_100A32620);
    sub_10000394C(v223);
    if (v162)
    {
      v266 = sub_100016F5C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v266, v356, v267);
      sub_10000394C(v223);
      v274 = v337;
      if (!v162)
      {
        sub_1000180EC(v223, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_1000134C8();
      sub_100073030(v223, v356, v273);
      v274 = v337;
    }

    sub_1002AB08C(v238, v265, &qword_100CA6618, &unk_100A31440);
    v275 = sub_1000175DC();
    v276 = v370;
    sub_1000038B4(v275, v277, v370);
    if (v162)
    {
      v278 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v278, v358, v279);
      v280 = sub_1000175DC();
      sub_1000038B4(v280, v281, v276);
      if (!v162)
      {
        sub_1000180EC(v265, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v265, v358, v290);
    }

    sub_1002AB08C(v252, v274, &qword_100CA6610, &unk_100A32610);
    sub_100005404(v274);
    if (v162)
    {
      v291 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v291, v222, v292);
      sub_100005404(v274);
      if (!v162)
      {
        sub_1000180EC(v274, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v274, v222, v297);
    }

    sub_100005518();
    v298 = v364;
    sub_100073030(v348, v364, v299);
    v301 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v300 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v302 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v303 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v304 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v305 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v306 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v307 = *(v129 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v321) = v304;
    sub_10003E038(v363, v362, v350, v351, v352, v354, v356, v358, v360, v298, v301, v300, v302, v303, v321, v305, v306, v307, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338);
  }

  v319 = v308;

  return v319;
}

uint64_t sub_1007EC7FC()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  (*(v9 + 104))(v13, enum case for FeatureState.enabled(_:), v7);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_100004594(37, 0x8000000100ADF6D0);
  qword_100D90E08 = result;
  return result;
}

uint64_t sub_1007EC97C()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Access.protected(_:));
  (*(v2 + 104))(v6, enum case for Domain.standard(_:), v0);
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90E10 = result;
  return result;
}

uint64_t sub_1007ECB14(uint64_t a1)
{
  v224 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v228 = v3;
  v4 = sub_1000038CC();
  v208 = type metadata accessor for TimeState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v227 = v6;
  v7 = sub_1000038CC();
  v207 = type metadata accessor for NotificationsOptInState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v226 = v9;
  v10 = sub_1000038CC();
  v205 = type metadata accessor for NotificationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v225 = v12;
  v13 = sub_1000038CC();
  v218 = type metadata accessor for LocationsState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v223 = v15;
  v16 = sub_1000038CC();
  v201 = type metadata accessor for AppConfigurationState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v222 = v18;
  v19 = sub_1000038CC();
  v197 = type metadata accessor for ModalViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v221 = v23;
  v24 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v194 = v27;
  v28 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v220 = v31;
  v32 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  v36 = &v182 - v35;
  v37 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  v216 = v40;
  v41 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v200 = v44;
  v45 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v215 = v48;
  v49 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_10000E70C();
  v214 = v52;
  v53 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v54 = sub_100003810(v53);
  __chkstk_darwin(v54);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v213 = v56;
  sub_1000038CC();
  v57 = type metadata accessor for Locale();
  v212 = *(v57 - 8);
  __chkstk_darwin(v57);
  sub_1000038E4();
  v211 = v58;
  v59 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  v62 = &v182 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v65 = &v182 - v64;
  v66 = type metadata accessor for EnvironmentState(0);
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  v217 = v68;
  __chkstk_darwin(v69);
  v71 = &v182 - v70;
  __chkstk_darwin(v72);
  v74 = &v182 - v73;
  v75 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100010C0C();
  v210 = a1;
  v182 = v75;
  sub_100181780(a1 + v75, v71, v76);
  sub_100003934();
  sub_10001B350(v77, v78, v79, v57);
  HIDWORD(v192) = UIAccessibilityIsReduceMotionEnabled();
  DWORD2(v192) = *v71;
  DWORD1(v192) = v71[1];
  LODWORD(v192) = v71[2];
  HIDWORD(v191) = v71[3];
  sub_1002AB08C(v65, v62, &qword_100CAA9F0, qword_100A44F50);
  sub_1000038B4(v62, 1, v57);
  v219 = v36;
  v190 = v57;
  if (v80)
  {
    (*(v212 + 16))(v211, &v71[v66[8]], v57);
    sub_1000038B4(v62, 1, v57);
    if (!v80)
    {
      sub_1000180EC(v62, &qword_100CAA9F0, qword_100A44F50);
    }
  }

  else
  {
    (*(v212 + 32))(v211, v62, v57);
  }

  v81 = &v71[v66[9]];
  v82 = v81[1];
  v188 = *v81;
  v83 = v66[12];
  HIDWORD(v187) = v71[v66[11]];
  HIDWORD(v189) = v71[v83];
  v84 = v66[14];
  HIDWORD(v185) = v71[v66[13]];
  v186 = *&v71[v84];
  v85 = v66[16];
  HIDWORD(v184) = v71[v66[15]];
  LODWORD(v185) = v71[v85];
  v86 = v66[18];
  HIDWORD(v183) = v71[v66[17]];
  v87 = *&v71[v86];
  v88 = *&v71[v86 + 8];
  v89 = *&v71[v86 + 16];
  v90 = *&v71[v86 + 24];
  v92 = *&v71[v86 + 32];
  v91 = *&v71[v86 + 40];
  LODWORD(v184) = v71[v66[19]];
  v93 = v91;

  v94 = v87;
  v95 = v88;
  v96 = v89;
  v97 = v90;
  v98 = v92;
  sub_1000D705C(v71, type metadata accessor for EnvironmentState);
  *v74 = BYTE8(v192);
  v74[1] = BYTE4(v192);
  v74[2] = v192;
  v74[3] = BYTE4(v191);
  (*(v212 + 32))(&v74[v66[8]], v211, v190);
  v99 = &v74[v66[9]];
  *v99 = v188;
  *(v99 + 1) = v82;
  sub_100028B04(v66[10]);
  sub_100028B04(v66[11]);
  sub_100028B04(v66[12]);
  sub_100028B04(v66[13]);
  *&v74[v66[14]] = v186;
  sub_100028B04(v66[15]);
  sub_100028B04(v66[16]);
  sub_100028B04(v66[17]);
  v100 = &v74[v66[18]];
  *v100 = v87;
  *(v100 + 1) = v88;
  *(v100 + 2) = v89;
  *(v100 + 3) = v90;
  *(v100 + 4) = v92;
  *(v100 + 5) = v91;
  sub_100028B04(v66[19]);
  sub_100003934();
  v101 = v201;
  sub_10001B350(v102, v103, v104, v201);
  sub_100004B58();
  v105 = v214;
  sub_1007EDC1C(v74, v214, v106);
  sub_10001B350(v105, 0, 1, v66);
  sub_100003934();
  sub_10001B350(v107, v108, v109, v218);
  v110 = v200;
  sub_100003934();
  v111 = v205;
  sub_10001B350(v112, v113, v114, v205);
  sub_100003934();
  v115 = v207;
  sub_10001B350(v116, v117, v118, v207);
  sub_100003934();
  v119 = v208;
  sub_10001B350(v120, v121, v122, v208);
  sub_100003934();
  sub_10001B350(v123, v124, v125, v224);
  v126 = v194;
  sub_100003934();
  v127 = v197;
  sub_10001B350(v128, v129, v130, v197);
  v131 = v210;
  v132 = v198;
  sub_100181780(v210 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v198, type metadata accessor for ModalViewState);
  v133 = v126;
  v134 = v196;
  sub_1002AB08C(v133, v196, &qword_100CA65E8, &unk_100A31410);
  sub_1000038B4(v134, 1, v127);
  if (v80)
  {
    sub_1000180EC(v134, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000D705C(v132, type metadata accessor for ModalViewState);
    sub_100006814();
    sub_1007EDC1C(v134, v132, v135);
  }

  v136 = v199;
  sub_100006814();
  sub_1007EDC1C(v132, v137, v138);
  v139 = *(v131 + 16);
  LODWORD(v211) = *(v131 + 24);
  v140 = v193;
  sub_1002AB08C(v213, v193, &qword_100CA6640, qword_100A32640);
  sub_1000038B4(v140, 1, v101);
  v212 = v139;
  if (v80)
  {
    v141 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100181780(v141, v222, v142);
    v143 = sub_100024D10(v140, 1, v101);

    v80 = v143 == 1;
    v144 = v206;
    v145 = v195;
    if (!v80)
    {
      sub_1000180EC(v140, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1007EDC1C(v140, v222, type metadata accessor for AppConfigurationState);

    v144 = v206;
    v145 = v195;
  }

  sub_1002AB08C(v214, v145, &qword_100CA6638, &unk_100A31460);
  sub_1000038B4(v145, 1, v66);
  if (v80)
  {
    sub_100010C0C();
    sub_100181780(v131 + v182, v217, v146);
    sub_1000038B4(v145, 1, v66);
    v148 = v228;
    if (!v80)
    {
      sub_1000180EC(v145, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100004B58();
    sub_1007EDC1C(v145, v217, v147);
    v148 = v228;
  }

  sub_1002AB08C(v215, v136, &qword_100CA6630, &unk_100A32630);
  v149 = v136;
  v150 = v136;
  v151 = v218;
  sub_1000038B4(v149, 1, v218);
  if (v80)
  {
    v152 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100181780(v152, v223, v153);
    sub_1000038B4(v150, 1, v151);
    v154 = v203;
    if (!v80)
    {
      sub_1000180EC(v150, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1007EDC1C(v150, v223, type metadata accessor for LocationsState);
    v154 = v203;
  }

  v155 = v110;
  v156 = v202;
  sub_1002AB08C(v155, v202, &qword_100CA6628, &unk_100A31450);
  sub_1000038B4(v156, 1, v111);
  if (v80)
  {
    v157 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100181780(v157, v225, v158);
    sub_1000038B4(v156, 1, v111);
    v159 = v224;
    if (!v80)
    {
      sub_1000180EC(v156, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1007EDC1C(v156, v225, type metadata accessor for NotificationsState);
    v159 = v224;
  }

  sub_1002AB08C(v216, v154, &qword_100CA6620, &unk_100A32620);
  sub_1000038B4(v154, 1, v115);
  if (v80)
  {
    v160 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100181780(v160, v226, v161);
    sub_1000038B4(v154, 1, v115);
    if (!v80)
    {
      sub_1000180EC(v154, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1007EDC1C(v154, v226, type metadata accessor for NotificationsOptInState);
  }

  v162 = v204;
  sub_1002AB08C(v219, v204, &qword_100CA6618, &unk_100A31440);
  sub_1000038B4(v162, 1, v119);
  if (v80)
  {
    v163 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100181780(v163, v227, v164);
    sub_1000038B4(v162, 1, v119);
    if (!v80)
    {
      sub_1000180EC(v162, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1007EDC1C(v162, v227, type metadata accessor for TimeState);
  }

  sub_1002AB08C(v220, v144, &qword_100CA6610, &unk_100A32610);
  sub_1000038B4(v144, 1, v159);
  if (v80)
  {
    v165 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_100181780(v165, v148, v166);
    sub_1000038B4(v144, 1, v159);
    if (!v80)
    {
      sub_1000180EC(v144, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1007EDC1C(v144, v148, type metadata accessor for ViewState);
  }

  sub_100006814();
  v167 = v209;
  sub_1007EDC1C(v221, v209, v168);
  v170 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v169 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v172 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v171 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v173 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v174 = v131;
  v176 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v175 = *(v131 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v177 = *(v174 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v181) = v173;
  sub_10003E038(v212, v211, v222, v217, v223, v225, v226, v227, v228, v167, v170, v169, v172, v171, v181, v176, v175, v177, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  v179 = v178;

  return v179;
}

uint64_t sub_1007EDC1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1007EDCA4(void *a1, void *a2)
{
  type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v29 - v8);
  v10 = sub_10022C350(&qword_100CB4398, &unk_100A47700);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = *a1 == *a2 && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
    goto LABEL_28;
  }

  v17 = type metadata accessor for ConditionDetailMapViewModel(0);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = v17[6];
  v19 = *(v10 + 48);
  sub_1003C8028(a1 + v18, v13);
  sub_1003C8028(a2 + v18, &v13[v19]);
  sub_10000394C(v13);
  if (!v16)
  {
    sub_1003C8028(v13, v9);
    sub_10000394C(&v13[v19]);
    if (!v20)
    {
      sub_1003BD374(&v13[v19], v6);
      v21 = sub_100883064(v9, v6);
      sub_1003C8098(v6);
      sub_1003C8098(v9);
      sub_1000180EC(v13, &qword_100CA3898, &qword_100A314D0);
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_28:
      v27 = 0;
      return v27 & 1;
    }

    sub_1003C8098(v9);
LABEL_19:
    sub_1000180EC(v13, &qword_100CB4398, &unk_100A47700);
    goto LABEL_28;
  }

  sub_10000394C(&v13[v19]);
  if (!v16)
  {
    goto LABEL_19;
  }

  sub_1000180EC(v13, &qword_100CA3898, &qword_100A314D0);
LABEL_21:
  v22 = v17[7];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v23 == *v25 && v24 == v25[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = *(a1 + v17[9]) ^ *(a2 + v17[9]) ^ 1;
  return v27 & 1;
}

uint64_t sub_1007EDF5C(uint64_t a1)
{
  v20 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v19 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  aBlock[4] = sub_1007EE57C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6DB10;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100067564(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v15)(v13, v19);
}

uint64_t SettingsMonitor.deinit()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration, &qword_100CB6198, &unk_100A49BC0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastDistanceConfiguration, &qword_100CB6180, &unk_100A8B0A0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastWindSpeedConfiguration, qword_100CB61A0, &qword_100A64160);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPressureConfiguration, &qword_100CB6190, &unk_100A8B0B0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPrecipitationConfiguration, &qword_100CB6188, &unk_100A49BB0);

  return v0;
}

uint64_t SettingsMonitor.__deallocating_deinit()
{
  SettingsMonitor.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SettingsMonitor.applicationDidEnterBackground()()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.preferredTemperatureUnit.getter();

  v6 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration;
  swift_beginAccess();
  sub_1007EE4F8(v5, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer);
  *(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer) = 0;
}

uint64_t sub_1007EE4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007EE580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_1000037E8();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t sub_1007EE5D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF77656976657250)
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

uint64_t sub_1007EE674(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_10022C350(&qword_100CDA940, &qword_100A85B40);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000200F8();
  v16 = *(v15 + 56);
  sub_1000BCB40(a1, v2);
  sub_1000BCB40(a2, v2 + v16);
  sub_1007F4464(v2, v12);
  sub_1007F4464(v2 + v16, v9);
  sub_1006E6E98();
  if (v17 & 1) != 0 && (sub_10043F9F0(&v12[*(v5 + 20)], v9 + *(v5 + 20)))
  {
    v18 = sub_1009614B0(&v12[*(v5 + 24)], v9 + *(v5 + 24));
    sub_1000E01F8(v9, type metadata accessor for LocationPreviewViewState);
    sub_1000E01F8(v12, type metadata accessor for LocationPreviewViewState);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1000E01F8(v9, type metadata accessor for LocationPreviewViewState);
    sub_1000E01F8(v12, type metadata accessor for LocationPreviewViewState);
  }

  return 0;
}

void sub_1007EE85C()
{
  sub_10000E8AC();
  v18[0] = v0;
  v3 = v2;
  v18[1] = sub_10022C350(&qword_100CDAB10, &qword_100A85C20);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001320C();
  v5 = type metadata accessor for ModalViewState.MapViewModal(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100021D38();
  v7 = sub_10022C350(&qword_100CDAB18, &qword_100A85C28);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  sub_1000161C0(v3, v3[3]);
  sub_1007F4B5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100071E5C();
  sub_1000BCB40(v18[0], v1);
  sub_1007F4BB0();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for LocationPreviewViewState(0);
  sub_100049D84();
  sub_1007F4364(v13, v14, aM_81);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10001CDBC();
  sub_1000E01F8(v1, v15);
  v16 = sub_100014268();
  v17(v16);
  (*(v9 + 8))(v12, v7);
  sub_10000C8F4();
}

void sub_1007EEAA4()
{
  sub_10000E8AC();
  v4 = v3;
  v26 = v5;
  v27 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDAAF0, &qword_100A85C10);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000200F8();
  v8 = sub_10022C350(&qword_100CDAAF8, &qword_100A85C18);
  sub_1000037C4();
  v28 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100021D38();
  sub_1000161C0(v4, v4[3]);
  sub_1007F4B5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v11 == v12 >> 1)
  {
    v13 = v8;
    goto LABEL_8;
  }

  if (v11 < (v12 >> 1))
  {
    sub_100618E7C();
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    if (v15 == v17 >> 1)
    {
      sub_1007F4BB0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for LocationPreviewViewState(0);
      sub_100049D84();
      sub_1007F4364(v22, v23, aU_75);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v24 = sub_1000E5A78();
      v25(v24);
      (*(v28 + 8))(v2, v8);
      sub_100017E28();
      sub_1007F4464(v1, v26);
LABEL_9:
      sub_100006F14(v4);
      sub_10000C8F4();
      return;
    }

    v13 = v8;
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v19 = v27;
    v20 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v20);
    sub_100003B20();
    (*(v21 + 104))(v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v2, v13);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1007EEED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xEF6C69617465446ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100ABAB30 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000100ABAB50 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100ABAB70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617465446E6F6F6DLL && a2 == 0xEA00000000006C69;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365676172657661 && a2 == 0xEE006C6961746544;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000100ABABA0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007EF170(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 11;
      goto LABEL_7;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x617465446E6F6F6DLL;
      break;
    case 5:
      result = 0x7365676172657661;
      break;
    case 6:
      result = 0x63416F546C6C6163;
      break;
    case 7:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1007EF290()
{
  sub_10000C778();
  v120 = v3;
  v121 = v4;
  v108 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v115 = v6;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v118 = v8;
  v119 = v7;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v114 = v9;
  v10 = sub_1000038CC();
  v11 = type metadata accessor for AveragesDetailViewState(v10);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000038E4();
  v112 = v13;
  v14 = sub_1000038CC();
  v15 = type metadata accessor for MoonDetailViewState(v14);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v110 = v17;
  v18 = sub_1000038CC();
  v105 = type metadata accessor for SunriseSunsetDetailViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v113 = v20;
  v21 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v111 = v23;
  v24 = sub_1000038CC();
  v107 = type metadata accessor for AirQualityDetailViewState(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v109 = v26;
  v27 = sub_1000038CC();
  v28 = type metadata accessor for ConditionDetailViewState(v27);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000038E4();
  v106 = v30;
  v31 = sub_1000038CC();
  type metadata accessor for ModalViewState.LocationDetailModal(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003C38();
  v117 = (v33 - v34);
  __chkstk_darwin(v35);
  v37 = &HourPrecipitationDetailViewState - v36;
  __chkstk_darwin(v38);
  sub_10000C930();
  __chkstk_darwin(v39);
  sub_10003A2D4();
  __chkstk_darwin(v40);
  sub_100003878();
  v116 = v41;
  __chkstk_darwin(v42);
  sub_100003878();
  v44 = v43;
  __chkstk_darwin(v45);
  v47 = &HourPrecipitationDetailViewState - v46;
  __chkstk_darwin(v48);
  v50 = &HourPrecipitationDetailViewState - v49;
  v51 = sub_10022C350(&qword_100CDA948, &unk_100A85B48);
  sub_100003810(v51);
  sub_100003828();
  __chkstk_darwin(v52);
  sub_10000C8C8();
  v54 = *(v53 + 56);
  sub_1000BCB40(v120, v0);
  sub_1000BCB40(v121, v0 + v54);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v47);
      if (sub_100087254() != 1)
      {
        sub_10012CE20();
        v89 = v47;
        goto LABEL_34;
      }

      sub_100021188();
      v79 = v0 + v54;
      v80 = v109;
      sub_1007F4464(v79, v109);
      if ((static Location.== infix(_:_:)() & 1) != 0 && v47[*(v107 + 20)] == *(v80 + *(v107 + 20)))
      {
        v95 = *(v107 + 24);
        v96 = v47[v95 + 32];
        v97 = v80 + v95;
        if ((v96 & 1) == 0 && (*(v97 + 32) & 1) == 0)
        {
          sub_10003B9F4(v97);
        }
      }

      sub_1000795A0();
      sub_1000E01F8(v80, v102);
      sub_1000E01F8(v47, v0);
      sub_10000682C();
      v101 = v0;
      goto LABEL_54;
    case 2u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v44);
      if (sub_100087254() != 2)
      {
        sub_100008F8C();
        v89 = v44;
        goto LABEL_34;
      }

      sub_10006A908();
      v62 = v0;
      v63 = v0 + v54;
      v64 = v111;
      sub_1007F4464(v63, v111);
      if (static Location.== infix(_:_:)() & 1) == 0 || (v65 = *(HourPrecipitationDetailViewState + 20), v66 = *(v44 + v65 + 32), v67 = v64 + v65, (v66) || (*(v67 + 32))
      {
        sub_100008F8C();
        sub_1000E01F8(v64, v68);
      }

      else
      {
        sub_10003B9F4(v67);
        sub_100008F8C();
        sub_1000E01F8(v64, v98);
      }

      sub_100008F8C();
      v93 = v44;
      goto LABEL_53;
    case 3u:
      sub_10001F8A0();
      v50 = v116;
      sub_1000BCB40(v0, v116);
      if (sub_100087254() != 3)
      {
        v55 = type metadata accessor for SunriseSunsetDetailViewState;
        goto LABEL_31;
      }

      sub_100036EF4();
      v62 = v0;
      v69 = v0 + v54;
      v70 = v113;
      sub_1007F4464(v69, v113);
      if (static Location.== infix(_:_:)())
      {
        v71 = *(v105 + 20);
        v72 = v50[v71 + 32];
        v73 = v70 + v71;
        if ((v72 & 1) == 0 && (*(v73 + 32) & 1) == 0)
        {
          sub_10003B9F4(v73);
        }
      }

      sub_100071818();
      sub_1000E01F8(v70, v92);
      v93 = v50;
      v94 = v0;
      goto LABEL_53;
    case 4u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v1);
      if (sub_100087254() == 4)
      {
        sub_100020388();
        v56 = v110;
        sub_1007F4464(v0 + v54, v110);
        v57 = sub_100014268();
        sub_1003C55BC(v57, v58);
        v59 = v0;
        v60 = type metadata accessor for MoonDetailViewState;
        sub_1000E01F8(v56, type metadata accessor for MoonDetailViewState);
        v61 = v1;
        goto LABEL_38;
      }

      v88 = type metadata accessor for MoonDetailViewState;
      v89 = v1;
      goto LABEL_34;
    case 5u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v2);
      if (sub_100087254() == 5)
      {
        sub_100071A20();
        v81 = v112;
        sub_1007F4464(v0 + v54, v112);
        v82 = sub_10000C8E8();
        sub_10035E570(v82, v83);
        v59 = v0;
        v60 = type metadata accessor for AveragesDetailViewState;
        sub_1000E01F8(v81, type metadata accessor for AveragesDetailViewState);
        v61 = v2;
        goto LABEL_38;
      }

      v88 = type metadata accessor for AveragesDetailViewState;
      v89 = v2;
      goto LABEL_34;
    case 6u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v37);
      if (sub_100087254() == 6)
      {
        v85 = v118;
        v84 = v119;
        (*(v118 + 32))(v114, v0 + v54, v119);
        static URL.== infix(_:_:)();
        v59 = v0;
        v86 = *(v85 + 8);
        v87 = sub_10000C8E8();
        v86(v87);
        (v86)(v37, v84);
        goto LABEL_39;
      }

      (*(v118 + 8))(v37, v119);
      goto LABEL_35;
    case 7u:
      sub_10001F8A0();
      v50 = v117;
      sub_1000BCB40(v0, v117);
      if (sub_100087254() != 7)
      {
        v55 = type metadata accessor for HomeAndWorkRefinementViewState;
        goto LABEL_31;
      }

      sub_1000B9A80();
      v62 = v0;
      v74 = v0 + v54;
      v75 = v115;
      sub_1007F4464(v74, v115);
      if ((static Location.== infix(_:_:)() & 1) != 0 && (static LocationOfInterest.== infix(_:_:)() & 1) != 0 && (v76 = *(v108 + 24), v77 = v50[v76 + 32], v78 = v75 + v76, (v77 & 1) == 0) && (*(v78 + 32) & 1) == 0)
      {
        sub_10003B9F4(v78);
        sub_100019F60();
        sub_1000E01F8(v75, v103);
      }

      else
      {
        sub_100019F60();
        sub_1000E01F8(v75, v99);
      }

      sub_100019F60();
      v93 = v50;
LABEL_53:
      sub_1000E01F8(v93, v94);
      sub_10000682C();
      v101 = v62;
LABEL_54:
      sub_1000E01F8(v101, v100);
      break;
    default:
      sub_10001F8A0();
      sub_1000BCB40(v0, v50);
      if (sub_100087254())
      {
        v55 = type metadata accessor for ConditionDetailViewState;
LABEL_31:
        v88 = v55;
        v89 = v50;
LABEL_34:
        sub_1000E01F8(v89, v88);
LABEL_35:
        sub_1000180EC(v0, &qword_100CDA948, &unk_100A85B48);
      }

      else
      {
        sub_100043AB0();
        v90 = v106;
        sub_1007F4464(v0 + v54, v106);
        sub_100437E74(v50, v90);
        v59 = v0;
        v60 = type metadata accessor for ConditionDetailViewState;
        sub_1000E01F8(v90, type metadata accessor for ConditionDetailViewState);
        v61 = v50;
LABEL_38:
        sub_1000E01F8(v61, v60);
LABEL_39:
        sub_10000682C();
        sub_1000E01F8(v59, v91);
      }

      break;
  }

  sub_10000536C();
}

void sub_1007EFC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  a26 = v33;
  a27 = v34;
  v129 = v28;
  v125 = v27;
  v36 = v35;
  sub_10022C350(&qword_100CDAAA8, &qword_100A85BC8);
  sub_1000037C4();
  v124[1] = v38;
  v124[2] = v37;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  v124[0] = v40;
  v41 = sub_1000038CC();
  type metadata accessor for HomeAndWorkRefinementViewState(v41);
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_1000038E4();
  v123 = v43;
  sub_10022C350(&qword_100CDAAB0, &qword_100A85BD0);
  sub_1000037C4();
  v121 = v45;
  v122 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  v118 = v47;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v119 = v49;
  v120 = v48;
  __chkstk_darwin(v48);
  sub_1000038E4();
  v117 = v50;
  sub_10022C350(&qword_100CDAAB8, &qword_100A85BD8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v51);
  sub_1000039BC();
  v52 = sub_1000038CC();
  type metadata accessor for AveragesDetailViewState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_1000038E4();
  v116 = v54;
  sub_10022C350(&qword_100CDAAC0, &qword_100A85BE0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v55);
  sub_1000039BC();
  v56 = sub_1000038CC();
  type metadata accessor for MoonDetailViewState(v56);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_1000038E4();
  sub_100003990(v58);
  sub_10022C350(&qword_100CDAAC8, &qword_100A85BE8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v60 = sub_1000038CC();
  type metadata accessor for SunriseSunsetDetailViewState(v60);
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_1000038E4();
  sub_100003990(v62);
  sub_10022C350(&qword_100CDAAD0, &qword_100A85BF0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v63);
  sub_1000039BC();
  v64 = sub_1000038CC();
  type metadata accessor for NextHourPrecipitationDetailViewState(v64);
  sub_1000037E8();
  __chkstk_darwin(v65);
  sub_1000038E4();
  sub_100003990(v66);
  sub_10022C350(&qword_100CDAAD8, &qword_100A85BF8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v67);
  sub_1000039BC();
  v68 = sub_1000038CC();
  type metadata accessor for AirQualityDetailViewState(v68);
  sub_1000037E8();
  __chkstk_darwin(v69);
  sub_1000038E4();
  sub_100003990(v70);
  v115 = sub_10022C350(&qword_100CDAAE0, &qword_100A85C00);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v71);
  v72 = sub_1000326D4();
  type metadata accessor for ConditionDetailViewState(v72);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_1000037D8();
  sub_10000CC9C();
  v74 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_1000037D8();
  sub_1000200F8();
  sub_10022C350(&qword_100CDAAE8, &qword_100A85C08);
  sub_1000037C4();
  v127 = v77;
  v128 = v76;
  sub_100003828();
  __chkstk_darwin(v78);
  sub_100021D38();
  sub_1000161C0(v36, v36[3]);
  sub_1007F4868();
  v126 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F8A0();
  sub_1000BCB40(v125, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000A408C(v30, v124);
      a11 = 1;
      sub_1007F4AB4();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, &a11);
      sub_100086638();
      sub_1007F4364(v102, v103, aK_5);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v104 = sub_100018774();
      v105(v104);
      v89 = type metadata accessor for AirQualityDetailViewState;
      goto LABEL_9;
    case 2u:
      sub_1000A408C(v30, &v127);
      a12 = 2;
      sub_1007F4A60();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, &a12);
      sub_10001651C();
      sub_1007F4364(v90, v91, byte_100AA5080);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v92 = sub_100018774();
      v93(v92);
      v89 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_9;
    case 3u:
      sub_1000A408C(v30, &a10);
      a13 = 3;
      sub_1007F4A0C();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, &a13);
      sub_10003BF88();
      sub_1007F4364(v94, v95, byte_100AA27D8);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v96 = sub_100018774();
      v97(v96);
      v89 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_9;
    case 4u:
      sub_1000A408C(v30, &a22);
      a14 = 4;
      sub_1007F49B8();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, &a14);
      sub_10003BBE8();
      sub_1007F4364(v85, v86, byte_100A473CC);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v87 = sub_100018774();
      v88(v87);
      v89 = type metadata accessor for MoonDetailViewState;
      goto LABEL_9;
    case 5u:
      v74 = v116;
      sub_1007F4464(v30, v116);
      a15 = 5;
      sub_1007F4964();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, &a15);
      sub_100087EA4();
      sub_1007F4364(v106, v107, byte_100A3F490);
      sub_1000524A0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v108 = sub_100018774();
      v109(v108);
      v89 = type metadata accessor for AveragesDetailViewState;
      goto LABEL_9;
    case 6u:
      (*(v119 + 32))(v117, v30, v120);
      a16 = 6;
      sub_1007F4910();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1000D433C();
      sub_1007F4364(v113, v114, &protocol conformance descriptor for URL);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v121 + 8))(v118, v122);
      (*(v119 + 8))(v117, v120);
      goto LABEL_10;
    case 7u:
      v74 = v123;
      sub_1007F4464(v30, v123);
      a17 = 7;
      sub_1007F48BC();
      sub_100069A6C(&type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, &a17);
      sub_10004385C();
      sub_1007F4364(v98, v99, byte_100A6B0E8);
      sub_1000524A0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v100 = sub_100018774();
      v101(v100);
      v89 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_9:
      sub_1000E01F8(v74, v89);
LABEL_10:
      v110 = sub_100014268();
      v112(v110, v111);
      break;
    default:
      v79 = sub_10000C8E8();
      sub_1007F4464(v79, v80);
      a10 = 0;
      sub_1007F4B08();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1000868DC();
      sub_1007F4364(v81, v82, asc_100A4DC34);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v83(v32, v115);
      sub_1000C8860();
      sub_1000E01F8(v29, v84);
      (*(v127 + 8))(v126, v128);
      break;
  }

  sub_10000C8F4();
}

void sub_1007F0938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  a26 = v32;
  a27 = v33;
  v176 = v27;
  v35 = v34;
  v168 = v36;
  v160[24] = sub_10022C350(&qword_100CDAA18, &qword_100A85B78);
  sub_1000037C4();
  v160[13] = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v167 = v39;
  v160[23] = sub_10022C350(&qword_100CDAA20, &qword_100A85B80);
  sub_1000037C4();
  v160[12] = v40;
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  v166 = v42;
  v160[22] = sub_10022C350(&qword_100CDAA28, &qword_100A85B88);
  sub_1000037C4();
  v160[11] = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v174 = v45;
  v160[21] = sub_10022C350(&qword_100CDAA30, &qword_100A85B90);
  sub_1000037C4();
  v160[10] = v46;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v165 = v48;
  v160[20] = sub_10022C350(&qword_100CDAA38, &qword_100A85B98);
  sub_1000037C4();
  v160[9] = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v164 = v51;
  v173 = sub_10022C350(&qword_100CDAA40, &qword_100A85BA0);
  sub_1000037C4();
  v160[8] = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  v163 = v54;
  v160[19] = sub_10022C350(&qword_100CDAA48, &qword_100A85BA8);
  sub_1000037C4();
  v160[7] = v55;
  sub_100003828();
  __chkstk_darwin(v56);
  sub_1000039BC();
  v162 = v57;
  v160[18] = sub_10022C350(&qword_100CDAA50, &qword_100A85BB0);
  sub_1000037C4();
  v160[6] = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v161 = v60;
  v172 = sub_10022C350(&qword_100CDAA58, &unk_100A85BB8);
  sub_1000037C4();
  v170 = v61;
  sub_100003828();
  __chkstk_darwin(v62);
  v64 = v160 - v63;
  v169 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v65);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_10003A2D4();
  __chkstk_darwin(v70);
  sub_100017E40();
  __chkstk_darwin(v71);
  sub_10003C868();
  __chkstk_darwin(v72);
  sub_10000C930();
  __chkstk_darwin(v73);
  v75 = v160 - v74;
  v76 = v35[3];
  v175 = v35;
  sub_1000161C0(v35, v76);
  sub_1007F4868();
  v171 = v64;
  v77 = v176;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v77)
  {
    goto LABEL_10;
  }

  v160[3] = v30;
  v160[4] = v31;
  v160[2] = v28;
  v160[5] = v29;
  v79 = v173;
  v78 = v174;
  v176 = v75;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v81 == v82 >> 1)
  {
    v83 = v169;
LABEL_9:
    type metadata accessor for DecodingError();
    swift_allocError();
    v96 = v95;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v96 = v83;
    v97 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v97);
    sub_100003B20();
    (*(v98 + 104))(v96);
    swift_willThrow();
    swift_unknownObjectRelease();
    v99 = sub_10002FDB4();
    v100(v99);
LABEL_10:
    v101 = v175;
LABEL_11:
    sub_100006F14(v101);
    sub_10000C8F4();
    return;
  }

  v160[1] = 0;
  if (v81 < (v82 >> 1))
  {
    v84 = *(v80 + v81);
    sub_100618E7C();
    v86 = v85;
    v88 = v87;
    swift_unknownObjectRelease();
    v89 = v176;
    if (v86 == v88 >> 1)
    {
      switch(v84)
      {
        case 1:
          a11 = 1;
          sub_1007F4AB4();
          v117 = v162;
          sub_100037DA8(&type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, &a11);
          v84 = type metadata accessor for AirQualityDetailViewState(0);
          sub_100086638();
          sub_1007F4364(v118, v119, aK_4);
          sub_1000D3C64(v84, v120);
          sub_100011858();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v149(v117, v78);
          v150 = sub_10002CAF4();
          v151(v150);
          sub_1001707FC(&v171);
          goto LABEL_19;
        case 2:
          a12 = 2;
          sub_1007F4A60();
          v106 = v163;
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, &a12);
          type metadata accessor for NextHourPrecipitationDetailViewState(0);
          sub_10001651C();
          sub_1007F4364(v107, v108, byte_100AA50A8);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v133(v106, v79);
          v134 = sub_10002FDB4();
          v135(v134);
          sub_1001707FC(&v172);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          v148 = v84;
          goto LABEL_21;
        case 3:
          a13 = 3;
          sub_1007F4A0C();
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, &a13);
          type metadata accessor for SunriseSunsetDetailViewState(0);
          sub_10003BF88();
          sub_1007F4364(v109, v110, byte_100AA2800);
          v111 = sub_100024A90();
          sub_100052778(v111, v112);
          swift_unknownObjectRelease();
          v136 = sub_10003C854();
          v137(v136);
          v138 = sub_10002FDB4();
          v139(v138);
          sub_100051B34();
          goto LABEL_20;
        case 4:
          a14 = 4;
          sub_1007F49B8();
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, &a14);
          type metadata accessor for MoonDetailViewState(0);
          sub_10003BBE8();
          sub_1007F4364(v102, v103, byte_100A473F4);
          v104 = sub_100024A90();
          sub_100052778(v104, v105);
          sub_100011858();
          swift_unknownObjectRelease();
          v129 = sub_10003C854();
          v130(v129);
          v131 = sub_10002CAF4();
          v132(v131);
          sub_100051B34();
          goto LABEL_20;
        case 5:
          a15 = 5;
          sub_1007F4964();
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, &a15);
          type metadata accessor for AveragesDetailViewState(0);
          sub_100087EA4();
          sub_1007F4364(v121, v122, byte_100A3F4B8);
          v123 = sub_100024A90();
          sub_100052778(v123, v124);
          sub_100011858();
          swift_unknownObjectRelease();
          v152 = sub_10003C854();
          v153(v152);
          v154 = sub_10002CAF4();
          v155(v154);
          sub_100051B34();
          goto LABEL_20;
        case 6:
          a16 = 6;
          sub_1007F4910();
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.CallToActionCodingKeys, &a16);
          type metadata accessor for URL();
          sub_1000D433C();
          sub_1007F4364(v125, v126, &protocol conformance descriptor for URL);
          v127 = sub_100024A90();
          sub_100052778(v127, v128);
          sub_100011858();
          swift_unknownObjectRelease();
          v156 = sub_10003C854();
          v157(v156);
          v158 = sub_10002CAF4();
          v159(v158);
          sub_100051B34();
          goto LABEL_20;
        case 7:
          a17 = 7;
          sub_1007F48BC();
          sub_10000CED8(&type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, &a17);
          type metadata accessor for HomeAndWorkRefinementViewState(0);
          sub_10004385C();
          sub_1007F4364(v113, v114, aQ_49);
          v115 = sub_100024A90();
          sub_100052778(v115, v116);
          sub_100011858();
          swift_unknownObjectRelease();
          v140 = sub_10003C854();
          v141(v140);
          v142 = sub_10002CAF4();
          v143(v142);
          sub_100051B34();
LABEL_20:
          swift_storeEnumTagMultiPayload();
          v148 = v79;
LABEL_21:
          v147 = v175;
          break;
        default:
          a10 = 0;
          sub_1007F4B08();
          v90 = v161;
          sub_100037DA8(&type metadata for ModalViewState.LocationDetailModal.ConditionDetailCodingKeys, &a10);
          v91 = type metadata accessor for ConditionDetailViewState(0);
          sub_1000868DC();
          sub_1007F4364(v92, v93, asc_100A4DC5C);
          sub_1000D3C64(v91, v94);
          sub_100011858();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v144(v90, v78);
          v145 = sub_10002CAF4();
          v146(v145);
          sub_1001707FC(&v173);
          swift_storeEnumTagMultiPayload();
          v147 = v175;
          v148 = v91;
          break;
      }

      sub_1007F4464(v148, v89);
      sub_1007F4464(v89, v168);
      v101 = v147;
      goto LABEL_11;
    }

    v83 = v169;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1007F1790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007EE5D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007F17BC(uint64_t a1)
{
  v2 = sub_1007F4B5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F17F8(uint64_t a1)
{
  v2 = sub_1007F4B5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1834(uint64_t a1)
{
  v2 = sub_1007F4BB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1870(uint64_t a1)
{
  v2 = sub_1007F4BB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F18E0(uint64_t a1)
{
  v2 = sub_1007F4AB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F191C(uint64_t a1)
{
  v2 = sub_1007F4AB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1958(uint64_t a1)
{
  v2 = sub_1007F4964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1994(uint64_t a1)
{
  v2 = sub_1007F4964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F19D0(uint64_t a1)
{
  v2 = sub_1007F4910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1A0C(uint64_t a1)
{
  v2 = sub_1007F4910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007EEED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F1A78(uint64_t a1)
{
  v2 = sub_1007F4868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1AB4(uint64_t a1)
{
  v2 = sub_1007F4868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1AF0(uint64_t a1)
{
  v2 = sub_1007F4B08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1B2C(uint64_t a1)
{
  v2 = sub_1007F4B08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1B68(uint64_t a1)
{
  v2 = sub_1007F48BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1BA4(uint64_t a1)
{
  v2 = sub_1007F48BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1BE0(uint64_t a1)
{
  v2 = sub_1007F49B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1C1C(uint64_t a1)
{
  v2 = sub_1007F49B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1C58(uint64_t a1)
{
  v2 = sub_1007F4A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1C94(uint64_t a1)
{
  v2 = sub_1007F4A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1CD0(uint64_t a1)
{
  v2 = sub_1007F4A0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1D0C(uint64_t a1)
{
  v2 = sub_1007F4A0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007F1D7C()
{
  sub_10000C778();
  v5 = v0;
  v53 = v6;
  v7 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v19 = sub_1000326D4();
  type metadata accessor for ModalViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDA968, &qword_100A85B60);
  sub_1000037C4();
  v51 = v22;
  v52 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10001320C();
  sub_100010C3C();
  sub_1000BCB40(v5, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = *v1;
      v41 = v1[1];
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0xD000000000000019;
      *(inited + 40) = 0x8000000100ADF830;
      *(inited + 72) = &type metadata for NotificationSettingsViewState;
      *(inited + 48) = v40;
      *(inited + 49) = v41;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 2u:
      v36 = *v1;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_100A2C3F0;
      *(v37 + 32) = 0xD000000000000017;
      *(v37 + 40) = 0x8000000100ABB0E0;
      *(v37 + 72) = &type metadata for NotificationsOptInViewState;
      *(v37 + 48) = v36;

      sub_1000042E4();
      goto LABEL_7;
    case 3u:
      v38 = *v1;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_100A2C3F0;
      *(v39 + 32) = 0xD000000000000012;
      *(v39 + 40) = 0x8000000100ABB100;
      *(v39 + 72) = &type metadata for ReportWeatherViewState;
      *(v39 + 48) = v38;

      sub_1000042E4();
LABEL_7:
      ShortDescription.init(name:_:)();

      goto LABEL_15;
    case 4u:
      sub_1003C9FB0(v1, v16);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_100A2C3F0;
      strcpy((v29 + 32), "mapViewModal");
      *(v29 + 45) = 0;
      *(v29 + 46) = -5120;
      v30 = sub_10002FDB4();
      sub_1007F43F4(v30, v31);
      v32 = type metadata accessor for ModalViewState.MapViewModal(0);
      if (sub_100024D10(v3, 1, v32) == 1)
      {
        sub_1000180EC(v3, &qword_100CA65E0, &unk_100A31400);
        v34 = v52;
        v33 = v53;
        v35 = v51;
      }

      else
      {
        sub_1007F2584(v56);
        sub_1000D4010();
        sub_1000E01F8(v3, v47);
        v48 = v57;
        sub_1000161C0(v56, v57);
        v55 = v48;
        sub_100043010(&v54);
        sub_100003B20();
        (*(v49 + 16))();
        sub_100006F14(v56);
        v34 = v52;
        v33 = v53;
        v35 = v51;
        if (v55)
        {
          sub_100166170(&v54, (v29 + 48));
          goto LABEL_20;
        }
      }

      *(v29 + 72) = &type metadata for String;
      *(v29 + 48) = 1701736302;
      *(v29 + 56) = 0xE400000000000000;
LABEL_20:
      sub_1000042E4();
      ShortDescription.init(name:_:)();
      sub_1000180EC(v16, &qword_100CA65E0, &unk_100A31400);
LABEL_16:
      v33[3] = v34;
      v33[4] = sub_10012EF24(&qword_100CDA970, &qword_100CDA968, &qword_100A85B60);
      v46 = sub_100043010(v33);
      (*(v35 + 32))(v46, v2, v34);
      sub_10000536C();
      return;
    case 5u:
      sub_100075018();
      sub_1007F4464(v1, v11);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100A2C3F0;
      *(v43 + 32) = 0x6C6961746564;
      *(v43 + 40) = 0xE600000000000000;
      sub_1007F2784();
      v44 = v57;
      sub_1000161C0(v56, v57);
      *(v43 + 72) = v44;
      sub_100043010((v43 + 48));
      sub_100003B20();
      (*(v45 + 16))();
      sub_100006F14(v56);
      sub_1000042E4();
      sub_100037FD4();
      sub_10008890C();
      ShortDescription.init(name:_:)();
      sub_10000682C();
      v28 = v11;
      goto LABEL_12;
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 7u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_14:
      ShortDescription.init(name:_:)();
      goto LABEL_15;
    default:
      sub_100023278();
      sub_1007F4464(v1, v4);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000B91D4();
      v24[4] = v25;
      v24[5] = 0xEC00000065746174;
      v24[9] = v17;
      sub_100043010(v24 + 6);
      sub_1000216D8();
      sub_1000BCB40(v4, v26);
      sub_10006A820();
      sub_100037FD4();
      ShortDescription.init(name:_:)();
      sub_10001CDBC();
      v28 = v4;
LABEL_12:
      sub_1000E01F8(v28, v27);
LABEL_15:
      v34 = v52;
      v33 = v53;
      v35 = v51;
      goto LABEL_16;
  }
}

uint64_t sub_1007F2584@<X0>(uint64_t *a1@<X8>)
{
  v4 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_1000200F8();
  sub_100071E5C();
  sub_1000BCB40(v1, v2);
  sub_100023278();
  sub_1007F4464(v2, v8);
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6E6F697461636F6CLL;
  *(inited + 56) = 0xEF77656976657250;
  sub_1000B91D4();
  v11[9] = &type metadata for String;
  v11[10] = v12;
  v11[11] = 0xEC00000065746174;
  v11[15] = v4;
  sub_100043010(v11 + 12);
  sub_1000216D8();
  sub_1000BCB40(v8, v13);
  Dictionary.init(dictionaryLiteral:)();
  sub_10001CDBC();
  sub_1000E01F8(v8, v14);
  a1[3] = sub_10022C350(&qword_100CDA950, &qword_100A85B58);
  a1[4] = sub_10012EF24(&qword_100CDA958, &qword_100CDA950, &qword_100A85B58);
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

void sub_1007F2784()
{
  sub_10000C778();
  v96 = v0;
  v100 = v3;
  v91 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v95 = v5;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v93 = v7;
  v94 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v92 = v8;
  v9 = sub_1000038CC();
  v88 = type metadata accessor for AveragesDetailViewState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v90 = v11;
  v12 = sub_1000038CC();
  v86 = type metadata accessor for MoonDetailViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v89 = v14;
  v15 = sub_1000038CC();
  v16 = type metadata accessor for SunriseSunsetDetailViewState(v15);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v87 = v18;
  v19 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for AirQualityDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100021D38();
  v27 = type metadata accessor for ConditionDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v29 = sub_1000326D4();
  v30 = type metadata accessor for ModalViewState.LocationDetailModal(v29);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  sub_10022C350(&qword_100CDA968, &qword_100A85B60);
  sub_1000037C4();
  v98 = v36;
  v99 = v35;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v97 = v38;
  sub_10001F8A0();
  sub_1000BCB40(v96, v34);
  sub_100014268();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100021188();
      sub_1007F4464(v34, v1);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      v71 = sub_100028B98(inited, xmmword_100A2C3F0);
      v71[4].n128_u64[1] = v25;
      v72 = sub_100043010(&v71[3]);
      sub_1000BCB40(v1, v72);
      sub_10006A820();
      sub_100020BB4();
      v30 = v97;
      ShortDescription.init(name:_:)();
      sub_10012CE20();
      v45 = v1;
      goto LABEL_11;
    case 2u:
      sub_10006A908();
      sub_1007F4464(v34, v24);
      v30 = "airQualityDetail";
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v51 = swift_initStackObject();
      v52 = sub_100028B98(v51, xmmword_100A2C3F0);
      v52[4].n128_u64[1] = HourPrecipitationDetailViewState;
      v53 = sub_100043010(&v52[3]);
      sub_1000BCB40(v24, v53);
      sub_1000042E4();
      sub_100020BB4();
      sub_100042348(0xD00000000000001BLL, 0x8000000100ABAB50, v54, v55);
      sub_100008F8C();
      v45 = v24;
      goto LABEL_11;
    case 3u:
      sub_100036EF4();
      v56 = v34;
      v57 = v87;
      sub_1007F4464(v56, v87);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v58 = swift_initStackObject();
      v59 = sub_100028B98(v58, xmmword_100A2C3F0);
      v59[4].n128_u64[1] = v16;
      v60 = sub_100043010(&v59[3]);
      sub_1000BCB40(v87, v60);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348(0xD000000000000013, 0x8000000100ABAB70, v61, v62);
      v63 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_7;
    case 4u:
      sub_100020388();
      v46 = v89;
      sub_1007F4464(v34, v89);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v47 = swift_initStackObject();
      v48 = sub_100028B98(v47, xmmword_100A2C3F0);
      v48[4].n128_u64[1] = v86;
      v49 = sub_100043010(&v48[3]);
      sub_1000BCB40(v89, v49);
      sub_10006A820();
      sub_100020BB4();
      v30 = v97;
      ShortDescription.init(name:_:)();
      v50 = type metadata accessor for MoonDetailViewState;
      goto LABEL_10;
    case 5u:
      sub_100071A20();
      v46 = v90;
      sub_1007F4464(v34, v90);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v73 = swift_initStackObject();
      v74 = sub_100028B98(v73, xmmword_100A2C3F0);
      v74[4].n128_u64[1] = v88;
      v75 = sub_100043010(&v74[3]);
      sub_1000BCB40(v90, v75);
      sub_10006A820();
      sub_100020BB4();
      sub_10008890C();
      sub_100042348(v76, v77, v78, v79);
      v50 = type metadata accessor for AveragesDetailViewState;
LABEL_10:
      v44 = v50;
      v45 = v46;
      goto LABEL_11;
    case 6u:
      (*(v93 + 32))(v92, v34, v94);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v81 = swift_initStackObject();
      v82 = sub_100028B98(v81, xmmword_100A2C3F0);
      v82[4].n128_u64[1] = v94;
      v83 = sub_100043010(&v82[3]);
      (*(v93 + 16))(v83, v92, v94);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348(0x63416F546C6C6163, 0xEC0000006E6F6974, v84, v85);
      (*(v93 + 8))(v92, v94);
      goto LABEL_12;
    case 7u:
      sub_1000B9A80();
      v64 = v34;
      v57 = v95;
      sub_1007F4464(v64, v95);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v65 = swift_initStackObject();
      v66 = sub_100028B98(v65, xmmword_100A2C3F0);
      v66[4].n128_u64[1] = v91;
      v67 = sub_100043010(&v66[3]);
      sub_1000BCB40(v95, v67);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348(0xD000000000000015, 0x8000000100ABABA0, v68, v69);
      v63 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_7:
      v44 = v63;
      v45 = v57;
      goto LABEL_11;
    default:
      sub_100043AB0();
      sub_1007F4464(v34, v2);
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      v39 = swift_initStackObject();
      v40 = sub_100028B98(v39, xmmword_100A2C3F0);
      v40[4].n128_u64[1] = v27;
      v41 = sub_100043010(&v40[3]);
      sub_1000BCB40(v2, v41);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348(0x6F697469646E6F63, 0xEF6C69617465446ELL, v42, v43);
      sub_1000C8860();
      v45 = v2;
LABEL_11:
      sub_1000E01F8(v45, v44);
LABEL_12:
      v100[3] = v99;
      v100[4] = sub_10012EF24(&qword_100CDA970, &qword_100CDA968, &qword_100A85B60);
      v80 = sub_100043010(v100);
      (*(v98 + 32))(v80, v30, v99);
      sub_10000536C();
      return;
  }
}

void sub_1007F30FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v27;
  a23 = v28;
  v72 = v29;
  v30 = sub_1000038D8();
  v69 = type metadata accessor for ModalViewState.LocationDetailModal(v30);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000038E4();
  v68 = v32;
  v33 = sub_1000038CC();
  v71 = type metadata accessor for ModalViewState.MapViewModal(v33);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_1000038E4();
  v67 = v35;
  v36 = sub_1000038CC();
  v37 = type metadata accessor for LocationPreviewViewState(v36);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v42 = sub_10022C350(&qword_100CDA980, &qword_100A85B68);
  sub_1000037C4();
  v70 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_10001320C();
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_1000037D8();
  sub_100021D38();
  v73 = v23;
  sub_1000161C0(v23, v23[3]);
  sub_1007F44C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    v46 = v23;
  }

  else
  {
    a13 = 0;
    sub_1007F4514();
    sub_1000C8664(&type metadata for ModalViewState.CodingType, &a13, v42, &type metadata for ModalViewState.CodingType);
    switch(v74)
    {
      case 1:
        sub_100049D84();
        sub_1007F4364(v54, v55, aU_75);
        sub_1000C8A9C();
        sub_1000C8664(v37, v56, v42, v37);
        v57 = sub_10000EDF8();
        v58(v57);
        v46 = v23;
        sub_100023278();
        v49 = v26;
        sub_1007F4464(v41, v26);
        break;
      case 2:
        a13 = 2;
        sub_1007F4610();
        sub_10003A37C(&type metadata for NotificationSettingsViewState);
        v50 = sub_10000EDF8();
        v51(v50);
        v49 = v26;
        *v26 = v74;
        goto LABEL_13;
      case 3:
        a13 = 3;
        sub_1007F45BC();
        sub_10003A37C(&type metadata for NotificationsOptInViewState);
        v52 = sub_10000EDF8();
        v53(v52);
        v49 = v26;
        *v26 = v74;
        goto LABEL_13;
      case 4:
        a13 = 4;
        sub_1007F4568();
        sub_10003A37C(&type metadata for ReportWeatherViewState);
        v47 = sub_10000EDF8();
        v48(v47);
        v49 = v26;
        *v26 = v74;
        goto LABEL_13;
      case 5:
        sub_1007F4364(&qword_100CDA9A0, type metadata accessor for ModalViewState.MapViewModal, byte_100A857EC);
        sub_1000C8A9C();
        sub_1000C8664(v71, v59, v42, v71);
        v60 = sub_10000EDF8();
        v61(v60);
        sub_100017E28();
        v49 = v26;
        sub_1007F4464(v67, v26);
        sub_10001B350(v26, 0, 1, v71);
        goto LABEL_13;
      case 6:
        sub_1000A7D58();
        sub_1007F4364(v62, v63, byte_100A85864);
        sub_1000C8A9C();
        sub_1000C8664(v69, v64, v42, v69);
        v65 = sub_10000EDF8();
        v66(v65);
        sub_100075018();
        v49 = v26;
        sub_1007F4464(v68, v26);
LABEL_13:
        v46 = v73;
        break;
      default:
        (*(v70 + 8))(v25, v42);
        v49 = v26;
        v46 = v73;
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1007F4464(v49, v72);
  }

  sub_100006F14(v46);
  sub_10000C8F4();
}

void sub_1007F3670()
{
  sub_10000E8AC();
  v60 = v2;
  v4 = sub_1000038D8();
  v58[3] = type metadata accessor for ModalViewState.LocationDetailModal(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v59 = v6;
  v58[2] = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v58 - v8;
  v58[1] = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDA9C8, &qword_100A85B70);
  sub_1000037C4();
  v62 = v15;
  v63 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_10000C8C8();
  v18 = v1[3];
  sub_1000161C0(v1, v18);
  sub_1007F44C0();
  v61 = v0;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100010C3C();
  v19 = sub_100014268();
  sub_1000BCB40(v19, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = *v3;
      v49 = v3[1];
      LOBYTE(v64) = 2;
      sub_1007F4664();
      sub_1000B0D08();
      v50 = v62;
      v51 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v51)
      {
        LOBYTE(v64) = v48;
        BYTE1(v64) = v49;
        sub_1007F4814();
        sub_1000B0D08();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v29 = sub_100024168();
      v31 = v50;
      break;
    case 2u:
      v34 = *v3;
      LOBYTE(v64) = 3;
      sub_1007F4664();
      v35 = sub_1000B0D08();
      sub_1000887A4(v35, v36, v37, v38, v39);
      if (v2)
      {
        goto LABEL_13;
      }

      v64 = v34;
      sub_1007F47C0();
      goto LABEL_12;
    case 3u:
      v40 = *v3;
      LOBYTE(v64) = 4;
      sub_1007F4664();
      v41 = sub_1000B0D08();
      sub_1000887A4(v41, v42, v43, v44, v45);
      if (v2)
      {
        goto LABEL_13;
      }

      v64 = v40;
      sub_1007F476C();
LABEL_12:
      sub_1000B0D08();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
LABEL_13:
      v46 = sub_100024168();
      v47(v46, v18);

      goto LABEL_25;
    case 4u:
      sub_1003C9FB0(v3, v9);
      LOBYTE(v64) = 5;
      sub_1007F4664();
      sub_1000B0D08();
      v32 = v62;
      v33 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v33)
      {
        LOBYTE(v64) = 5;
        sub_1007F46B8();
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_1000180EC(v9, &qword_100CA65E0, &unk_100A31400);
      goto LABEL_21;
    case 5u:
      sub_100075018();
      v52 = v59;
      sub_1007F4464(v3, v59);
      LOBYTE(v64) = 6;
      sub_1007F4664();
      sub_1000B0D08();
      v32 = v62;
      v53 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v53)
      {
        LOBYTE(v64) = 6;
        sub_1000A7D58();
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10000682C();
      sub_1000E01F8(v52, v56);
LABEL_21:
      v29 = sub_100024168();
      v31 = v32;
      break;
    case 6u:
      LOBYTE(v64) = 0;
      goto LABEL_23;
    case 7u:
      LOBYTE(v64) = 7;
LABEL_23:
      sub_1007F4664();
      sub_1000B0D08();
      v57 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v29 = sub_100024168();
      v31 = v57;
      break;
    default:
      sub_100023278();
      sub_1007F4464(v3, v13);
      LOBYTE(v64) = 1;
      sub_1007F4664();
      v21 = sub_1000B0D08();
      sub_1000887A4(v21, v22, v23, v24, v25);
      if (!v2)
      {
        LOBYTE(v64) = 1;
        sub_100049D84();
        sub_1007F4364(v26, v27, aM_81);
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10001CDBC();
      sub_1000E01F8(v13, v28);
      v29 = sub_100024168();
      v31 = v18;
      break;
  }

  v30(v29, v31);
LABEL_25:
  sub_10000C8F4();
}

unint64_t sub_1007F3BDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45088, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007F3C30(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4D7765695670616DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007F3D14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45150, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007F3D60(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      goto LABEL_9;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x655774726F706572;
      break;
    case 5:
      result = 7364973;
      break;
    case 6:
      sub_10008890C();
LABEL_9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007F3E78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3BDC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1007F3EA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007F3C30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1007F3EF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3C28(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007F3F18(uint64_t a1)
{
  v2 = sub_1007F44C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F3F54(uint64_t a1)
{
  v2 = sub_1007F44C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007F3FB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3D14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1007F3FE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007F3D60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007F40F8(uint64_t a1)
{
  sub_1007F4364(&qword_100CDAA10, type metadata accessor for ModalViewState, byte_100A858DC);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F4240(uint64_t a1)
{
  sub_1007F4364(&qword_100CDA960, type metadata accessor for ModalViewState.MapViewModal, "u]\x1B");

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F42B0(uint64_t a1)
{
  sub_1007F4364(&qword_100CDA978, type metadata accessor for ModalViewState.LocationDetailModal, byte_100A859AC);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F4364(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1007F43F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F4464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1007F44C0()
{
  result = qword_100CDA988;
  if (!qword_100CDA988)
  {
    result = swift_getWitnessTable("=N\x1B", &type metadata for ModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDA988);
  }

  return result;
}

unint64_t sub_1007F4514()
{
  result = qword_100CDA990;
  if (!qword_100CDA990)
  {
    result = swift_getWitnessTable(byte_100A86A8C, &type metadata for ModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDA990);
  }

  return result;
}

unint64_t sub_1007F4568()
{
  result = qword_100CDA9A8;
  if (!qword_100CDA9A8)
  {
    result = swift_getWitnessTable("Qw ", &type metadata for ReportWeatherViewState, v0, v1);
    atomic_store(result, &qword_100CDA9A8);
  }

  return result;
}

unint64_t sub_1007F45BC()
{
  result = qword_100CDA9B0;
  if (!qword_100CDA9B0)
  {
    result = swift_getWitnessTable(byte_100A34068, &type metadata for NotificationsOptInViewState, v0, v1);
    atomic_store(result, &qword_100CDA9B0);
  }

  return result;
}

unint64_t sub_1007F4610()
{
  result = qword_100CDA9B8;
  if (!qword_100CDA9B8)
  {
    result = swift_getWitnessTable(byte_100A83488, &type metadata for NotificationSettingsViewState, v0, v1);
    atomic_store(result, &qword_100CDA9B8);
  }

  return result;
}

unint64_t sub_1007F4664()
{
  result = qword_100CDA9D0;
  if (!qword_100CDA9D0)
  {
    result = swift_getWitnessTable("\rN\x1B", &type metadata for ModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDA9D0);
  }

  return result;
}

unint64_t sub_1007F46B8()
{
  result = qword_100CDA9E0;
  if (!qword_100CDA9E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA65E0, &unk_100A31400);
    v4[0] = sub_1007F4364(&qword_100CDA9E8, type metadata accessor for ModalViewState.MapViewModal, byte_100A857C4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDA9E0);
  }

  return result;
}

unint64_t sub_1007F476C()
{
  result = qword_100CDA9F0;
  if (!qword_100CDA9F0)
  {
    result = swift_getWitnessTable("iw ", &type metadata for ReportWeatherViewState, v0, v1);
    atomic_store(result, &qword_100CDA9F0);
  }

  return result;
}

unint64_t sub_1007F47C0()
{
  result = qword_100CDA9F8;
  if (!qword_100CDA9F8)
  {
    result = swift_getWitnessTable("1x ", &type metadata for NotificationsOptInViewState, v0, v1);
    atomic_store(result, &qword_100CDA9F8);
  }

  return result;
}

unint64_t sub_1007F4814()
{
  result = qword_100CDAA00;
  if (!qword_100CDAA00)
  {
    result = swift_getWitnessTable(byte_100A83460, &type metadata for NotificationSettingsViewState, v0, v1);
    atomic_store(result, &qword_100CDAA00);
  }

  return result;
}

unint64_t sub_1007F4868()
{
  result = qword_100CDAA60;
  if (!qword_100CDAA60)
  {
    result = swift_getWitnessTable(byte_100A86A14, &type metadata for ModalViewState.LocationDetailModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA60);
  }

  return result;
}

unint64_t sub_1007F48BC()
{
  result = qword_100CDAA68;
  if (!qword_100CDAA68)
  {
    result = swift_getWitnessTable("-O\x1B", &type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA68);
  }

  return result;
}

unint64_t sub_1007F4910()
{
  result = qword_100CDAA70;
  if (!qword_100CDAA70)
  {
    result = swift_getWitnessTable("}O\x1B", &type metadata for ModalViewState.LocationDetailModal.CallToActionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA70);
  }

  return result;
}

unint64_t sub_1007F4964()
{
  result = qword_100CDAA78;
  if (!qword_100CDAA78)
  {
    result = swift_getWitnessTable(byte_100A86924, &type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA78);
  }

  return result;
}

unint64_t sub_1007F49B8()
{
  result = qword_100CDAA80;
  if (!qword_100CDAA80)
  {
    result = swift_getWitnessTable(byte_100A868D4, &type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA80);
  }

  return result;
}

unint64_t sub_1007F4A0C()
{
  result = qword_100CDAA88;
  if (!qword_100CDAA88)
  {
    result = swift_getWitnessTable("mP\x1B", &type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA88);
  }

  return result;
}

unint64_t sub_1007F4A60()
{
  result = qword_100CDAA90;
  if (!qword_100CDAA90)
  {
    result = swift_getWitnessTable(byte_100A86834, &type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA90);
  }

  return result;
}

unint64_t sub_1007F4AB4()
{
  result = qword_100CDAA98;
  if (!qword_100CDAA98)
  {
    result = swift_getWitnessTable("\rQ\x1B", &type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAA98);
  }

  return result;
}

unint64_t sub_1007F4B08()
{
  result = qword_100CDAAA0;
  if (!qword_100CDAAA0)
  {
    result = swift_getWitnessTable("]Q\x1B", &type metadata for ModalViewState.LocationDetailModal.ConditionDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAAA0);
  }

  return result;
}

unint64_t sub_1007F4B5C()
{
  result = qword_100CDAB00;
  if (!qword_100CDAB00)
  {
    result = swift_getWitnessTable(byte_100A86744, &type metadata for ModalViewState.MapViewModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB00);
  }

  return result;
}

unint64_t sub_1007F4BB0()
{
  result = qword_100CDAB08;
  if (!qword_100CDAB08)
  {
    result = swift_getWitnessTable(byte_100A866F4, &type metadata for ModalViewState.MapViewModal.LocationPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB08);
  }

  return result;
}

_BYTE *sub_1007F4CA4(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1007F4D50(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModalViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007F4F0C()
{
  result = qword_100CDAB20;
  if (!qword_100CDAB20)
  {
    result = swift_getWitnessTable(byte_100A85E44, &type metadata for ModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB20);
  }

  return result;
}

unint64_t sub_1007F4F64()
{
  result = qword_100CDAB28;
  if (!qword_100CDAB28)
  {
    result = swift_getWitnessTable(byte_100A85EE4, &type metadata for ModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDAB28);
  }

  return result;
}

unint64_t sub_1007F4FBC()
{
  result = qword_100CDAB30;
  if (!qword_100CDAB30)
  {
    result = swift_getWitnessTable("eU\x1B", &type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB30);
  }

  return result;
}

unint64_t sub_1007F5014()
{
  result = qword_100CDAB38;
  if (!qword_100CDAB38)
  {
    result = swift_getWitnessTable(byte_100A86054, &type metadata for ModalViewState.LocationDetailModal.CallToActionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB38);
  }

  return result;
}

unint64_t sub_1007F506C()
{
  result = qword_100CDAB40;
  if (!qword_100CDAB40)
  {
    result = swift_getWitnessTable(byte_100A8610C, &type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB40);
  }

  return result;
}

unint64_t sub_1007F50C4()
{
  result = qword_100CDAB48;
  if (!qword_100CDAB48)
  {
    result = swift_getWitnessTable("=S\x1B", &type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB48);
  }

  return result;
}

unint64_t sub_1007F511C()
{
  result = qword_100CDAB50;
  if (!qword_100CDAB50)
  {
    result = swift_getWitnessTable(byte_100A8627C, &type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB50);
  }

  return result;
}

unint64_t sub_1007F5174()
{
  result = qword_100CDAB58;
  if (!qword_100CDAB58)
  {
    result = swift_getWitnessTable(byte_100A86334, &type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB58);
  }

  return result;
}

unint64_t sub_1007F51CC()
{
  result = qword_100CDAB60;
  if (!qword_100CDAB60)
  {
    result = swift_getWitnessTable(byte_100A863EC, &type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB60);
  }

  return result;
}

unint64_t sub_1007F5224()
{
  result = qword_100CDAB68;
  if (!qword_100CDAB68)
  {
    result = swift_getWitnessTable("]P\x1B", &type metadata for ModalViewState.LocationDetailModal.ConditionDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB68);
  }

  return result;
}

unint64_t sub_1007F527C()
{
  result = qword_100CDAB70;
  if (!qword_100CDAB70)
  {
    result = swift_getWitnessTable(byte_100A8655C, &type metadata for ModalViewState.LocationDetailModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB70);
  }

  return result;
}

unint64_t sub_1007F52D4()
{
  result = qword_100CDAB78;
  if (!qword_100CDAB78)
  {
    result = swift_getWitnessTable(byte_100A86614, &type metadata for ModalViewState.MapViewModal.LocationPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB78);
  }

  return result;
}

unint64_t sub_1007F532C()
{
  result = qword_100CDAB80;
  if (!qword_100CDAB80)
  {
    result = swift_getWitnessTable("5N\x1B", &type metadata for ModalViewState.MapViewModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB80);
  }

  return result;
}

unint64_t sub_1007F5384()
{
  result = qword_100CDAB88;
  if (!qword_100CDAB88)
  {
    result = swift_getWitnessTable("]S\x1B", &type metadata for ModalViewState.MapViewModal.LocationPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB88);
  }

  return result;
}

unint64_t sub_1007F53DC()
{
  result = qword_100CDAB90;
  if (!qword_100CDAB90)
  {
    result = swift_getWitnessTable("%R\x1B", &type metadata for ModalViewState.MapViewModal.LocationPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB90);
  }

  return result;
}

unint64_t sub_1007F5434()
{
  result = qword_100CDAB98;
  if (!qword_100CDAB98)
  {
    result = swift_getWitnessTable(byte_100A8663C, &type metadata for ModalViewState.MapViewModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAB98);
  }

  return result;
}

unint64_t sub_1007F548C()
{
  result = qword_100CDABA0;
  if (!qword_100CDABA0)
  {
    result = swift_getWitnessTable("mQ\x1B", &type metadata for ModalViewState.MapViewModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABA0);
  }

  return result;
}

unint64_t sub_1007F54E4()
{
  result = qword_100CDABA8;
  if (!qword_100CDABA8)
  {
    result = swift_getWitnessTable(byte_100A86414, &type metadata for ModalViewState.LocationDetailModal.ConditionDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABA8);
  }

  return result;
}

unint64_t sub_1007F553C()
{
  result = qword_100CDABB0;
  if (!qword_100CDABB0)
  {
    result = swift_getWitnessTable(byte_100A8643C, &type metadata for ModalViewState.LocationDetailModal.ConditionDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABB0);
  }

  return result;
}

unint64_t sub_1007F5594()
{
  result = qword_100CDABB8;
  if (!qword_100CDABB8)
  {
    result = swift_getWitnessTable(byte_100A8635C, &type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABB8);
  }

  return result;
}

unint64_t sub_1007F55EC()
{
  result = qword_100CDABC0;
  if (!qword_100CDABC0)
  {
    result = swift_getWitnessTable("MT\x1B", &type metadata for ModalViewState.LocationDetailModal.AirQualityDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABC0);
  }

  return result;
}

unint64_t sub_1007F5644()
{
  result = qword_100CDABC8;
  if (!qword_100CDABC8)
  {
    result = swift_getWitnessTable("=V\x1B", &type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABC8);
  }

  return result;
}

unint64_t sub_1007F569C()
{
  result = qword_100CDABD0;
  if (!qword_100CDABD0)
  {
    result = swift_getWitnessTable(byte_100A862CC, &type metadata for ModalViewState.LocationDetailModal.NextHourPrecipitationDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABD0);
  }

  return result;
}

unint64_t sub_1007F56F4()
{
  result = qword_100CDABD8;
  if (!qword_100CDABD8)
  {
    result = swift_getWitnessTable(byte_100A861EC, &type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABD8);
  }

  return result;
}

unint64_t sub_1007F574C()
{
  result = qword_100CDABE0;
  if (!qword_100CDABE0)
  {
    result = swift_getWitnessTable(byte_100A86214, &type metadata for ModalViewState.LocationDetailModal.SunriseSunsetDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABE0);
  }

  return result;
}

unint64_t sub_1007F57A4()
{
  result = qword_100CDABE8;
  if (!qword_100CDABE8)
  {
    result = swift_getWitnessTable(byte_100A86134, &type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABE8);
  }

  return result;
}

unint64_t sub_1007F57FC()
{
  result = qword_100CDABF0;
  if (!qword_100CDABF0)
  {
    result = swift_getWitnessTable("uV\x1B", &type metadata for ModalViewState.LocationDetailModal.MoonDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABF0);
  }

  return result;
}

unint64_t sub_1007F5854()
{
  result = qword_100CDABF8;
  if (!qword_100CDABF8)
  {
    result = swift_getWitnessTable("eX\x1B", &type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDABF8);
  }

  return result;
}

unint64_t sub_1007F58AC()
{
  result = qword_100CDAC00;
  if (!qword_100CDAC00)
  {
    result = swift_getWitnessTable("-W\x1B", &type metadata for ModalViewState.LocationDetailModal.AveragesDetailCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC00);
  }

  return result;
}

unint64_t sub_1007F5904()
{
  result = qword_100CDAC08;
  if (!qword_100CDAC08)
  {
    result = swift_getWitnessTable(byte_100A85FC4, &type metadata for ModalViewState.LocationDetailModal.CallToActionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC08);
  }

  return result;
}

unint64_t sub_1007F595C()
{
  result = qword_100CDAC10;
  if (!qword_100CDAC10)
  {
    result = swift_getWitnessTable(byte_100A85FEC, &type metadata for ModalViewState.LocationDetailModal.CallToActionCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC10);
  }

  return result;
}

unint64_t sub_1007F59B4()
{
  result = qword_100CDAC18;
  if (!qword_100CDAC18)
  {
    result = swift_getWitnessTable(byte_100A85F0C, &type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC18);
  }

  return result;
}

unint64_t sub_1007F5A0C()
{
  result = qword_100CDAC20;
  if (!qword_100CDAC20)
  {
    result = swift_getWitnessTable(byte_100A85F34, &type metadata for ModalViewState.LocationDetailModal.HomeAndWorkRefinementCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC20);
  }

  return result;
}

unint64_t sub_1007F5A64()
{
  result = qword_100CDAC28;
  if (!qword_100CDAC28)
  {
    result = swift_getWitnessTable(byte_100A864CC, &type metadata for ModalViewState.LocationDetailModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC28);
  }

  return result;
}

unint64_t sub_1007F5ABC()
{
  result = qword_100CDAC30;
  if (!qword_100CDAC30)
  {
    result = swift_getWitnessTable(byte_100A864F4, &type metadata for ModalViewState.LocationDetailModal.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC30);
  }

  return result;
}

unint64_t sub_1007F5B14()
{
  result = qword_100CDAC38;
  if (!qword_100CDAC38)
  {
    result = swift_getWitnessTable("e[\x1B", &type metadata for ModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC38);
  }

  return result;
}

unint64_t sub_1007F5B6C()
{
  result = qword_100CDAC40;
  if (!qword_100CDAC40)
  {
    result = swift_getWitnessTable("-Z\x1B", &type metadata for ModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAC40);
  }

  return result;
}

unint64_t sub_1007F5BC0()
{
  result = qword_100CDAC48;
  if (!qword_100CDAC48)
  {
    result = swift_getWitnessTable(byte_100A85E6C, &type metadata for ModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDAC48);
  }

  return result;
}

void sub_1007F5C24(uint64_t a1)
{
  if (!qword_100CDACD0)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDACD0);
    }
  }
}

uint64_t sub_1007F5C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000)
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

uint64_t sub_1007F5DA0(char a1)
{
  if (!a1)
  {
    return 0x746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0x77656976657270;
}

uint64_t sub_1007F5DF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100ABB030 == a2)
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

uint64_t sub_1007F5EC0(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1007F5EF0(void *a1)
{
  sub_10022C350(&qword_100CDAD40, &qword_100A86C10);
  sub_1000037C4();
  v63 = v3;
  v64 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v60 = v5;
  type metadata accessor for Location();
  sub_1000037C4();
  v61 = v7;
  v62 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v65 = v9 - v8;
  v59 = sub_10022C350(&qword_100CDAD48, &qword_100A86C18);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v66 = v12;
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v57 = v14;
  v58 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CDAD50, &qword_100A86C20);
  sub_1000037C4();
  v55 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  type metadata accessor for NotificationLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CDAD58, &qword_100A86C28);
  sub_1000037C4();
  v68 = v28;
  v69 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  v30 = a1[3];
  sub_1000161C0(a1, v30);
  sub_1007F72EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1007F74A0(v67, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v71 = 0;
      sub_1007F744C();
      sub_10006974C(&type metadata for NotificationLocation.CurrentCodingKeys, &v71);
      (*(v55 + 8))(v22, v18);
      v50 = sub_100019F78();
      return v51(v50, v30);
    }

    LODWORD(v67) = *(v26 + *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48));
    v33 = v61;
    v32 = v62;
    v34 = v65;
    (*(v61 + 32))(v65, v26, v62);
    v72[3] = 2;
    sub_1007F7340();
    v35 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v72[2] = 0;
    sub_100010C54();
    sub_1007F7504(v36, v37, &protocol conformance descriptor for Location);
    v38 = v70;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v38)
    {
      v39 = sub_100013CAC();
      v40(v39);
      (*(v33 + 8))(v34, v32);
    }

    else
    {
      v72[1] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      v53 = sub_100013CAC();
      v54(v53);
      (*(v33 + 8))(v65, v32);
    }

    v47 = sub_100019F78();
    v49 = v35;
  }

  else
  {
    v41 = v56;
    v42 = v57;
    v43 = v58;
    (*(v57 + 32))(v17, v26, v58);
    v72[0] = 1;
    sub_1007F73F8();
    sub_10006974C(&type metadata for NotificationLocation.LocationCodingKeys, v72);
    sub_100006844();
    sub_1007F7504(v44, v45, &protocol conformance descriptor for LocationModel);
    v46 = v59;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v41 + 8))(v66, v46);
    (*(v42 + 8))(v17, v43);
    v47 = sub_100019F78();
    v49 = v30;
  }

  return v48(v47, v49);
}