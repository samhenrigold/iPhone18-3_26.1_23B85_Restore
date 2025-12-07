uint64_t sub_10094D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10022C350(&qword_100CE7688, &qword_100A9AE78);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_10022C350(&qword_100CE7690, &qword_100A9AE80);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v27 = &v26 - v9;
  v28 = sub_10022C350(&qword_100CE7698, &qword_100A9AE88) - 8;
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  State.wrappedValue.getter();
  v15 = *(a1 + 72);
  __src[0] = *(a1 + 56);
  *&__src[1] = v15;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.getter();
  v17 = v30;
  v16 = v31;
  v18 = static Color.green.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = sub_10022C350(&qword_100CE76A8, &qword_100A9AE98);
  sub_10094E894(0xD000000000000012, 0x8000000100AE6C90, v14, v17, v16, &v6[*(v19 + 44)]);

  v20 = static Edge.Set.all.getter();
  v21 = &v6[*(v4 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v27;
  sub_10002F758(v6, v27, &qword_100CE7688, &qword_100A9AE78);
  memcpy((v22 + *(v8 + 44)), __src, 0x70uLL);
  v23 = Color.opacity(_:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  sub_10002F758(v22, v11, &qword_100CE7690, &qword_100A9AE80);
  v24 = &v11[*(v28 + 44)];
  *v24 = v23;
  v24[8] = v17;
  sub_10094BEAC(v18, v29);

  sub_1000180EC(v11, &qword_100CE7698, &qword_100A9AE88);
  return sub_1000180EC(v14, &qword_100CCBB98, &unk_100A9AD00);
}

uint64_t sub_10094D434@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a3;
  v105 = a4;
  v5 = type metadata accessor for SyncedData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v100 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CE7678, &qword_100A9AE70);
  __chkstk_darwin(v8);
  v113 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v97[-v11];
  v13 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v13 - 8);
  v99 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v115 = &v97[-v16];
  __chkstk_darwin(v17);
  v109 = &v97[-v18];
  __chkstk_darwin(v19);
  v101 = &v97[-v20];
  __chkstk_darwin(v21);
  v23 = &v97[-v22];
  __chkstk_darwin(v24);
  v26 = &v97[-v25];
  v27 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v27 - 8);
  v110 = &v97[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v31._object = 0x8000000100AE6C30;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  v32 = static SyncedData.== infix(_:_:)();
  v33 = (v32 & 1) == 0;
  if (v32)
  {
    v34 = 0x7078452820736559;
  }

  else
  {
    v34 = 0x58454E5528206F4ELL;
  }

  if (v33)
  {
    v35 = 0xEF29444554434550;
  }

  else
  {
    v35 = 0xEE00296465746365;
  }

  v36 = v35;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v34);

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v38 = LocalizedStringKey.init(stringInterpolation:)();
  v111 = Text.init(_:tableName:bundle:comment:)(v38, v40, v39 & 1, v41, 0, 0, 0, 0, 0, 256);
  v112 = v42;
  v117 = v43;
  v108 = v44;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._object = 0x8000000100AE6C50;
  v45._countAndFlagsBits = 0xD000000000000013;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
  v114 = v6;
  v46 = *(v6 + 16);
  v107 = a1;
  v104 = v46;
  v46(v26, a1, v5);
  sub_10001B350(v26, 0, 1, v5);
  v103 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v102 = sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  State.wrappedValue.getter();
  v106 = v8;
  v47 = *(v8 + 48);
  sub_1000955E0(v26, v12, &qword_100CCBB98, &unk_100A9AD00);
  sub_1000955E0(v23, &v12[v47], &qword_100CCBB98, &unk_100A9AD00);
  if (sub_100024D10(v12, 1, v5) == 1)
  {
    sub_1000180EC(v23, &qword_100CCBB98, &unk_100A9AD00);
    sub_1000180EC(v26, &qword_100CCBB98, &unk_100A9AD00);
    if (sub_100024D10(&v12[v47], 1, v5) == 1)
    {
      sub_1000180EC(v12, &qword_100CCBB98, &unk_100A9AD00);
      v48 = 0xE300000000000000;
      v49 = 7562585;
      v50 = v113;
      v51 = v109;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1000955E0(v12, v101, &qword_100CCBB98, &unk_100A9AD00);
  if (sub_100024D10(&v12[v47], 1, v5) == 1)
  {
    sub_1000180EC(v23, &qword_100CCBB98, &unk_100A9AD00);
    sub_1000180EC(v26, &qword_100CCBB98, &unk_100A9AD00);
    (*(v114 + 8))(v101, v5);
LABEL_12:
    sub_1000180EC(v12, &qword_100CE7678, &qword_100A9AE70);
    v50 = v113;
    v51 = v109;
LABEL_13:
    v48 = 0xE200000000000000;
    v49 = 28494;
    goto LABEL_14;
  }

  v68 = v100;
  (*(v114 + 32))(v100, &v12[v47], v5);
  sub_10094FCA0(&qword_100CE7680, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  v69 = v101;
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  v70 = *(v114 + 8);
  v70(v68, v5);
  sub_1000180EC(v23, &qword_100CCBB98, &unk_100A9AD00);
  sub_1000180EC(v26, &qword_100CCBB98, &unk_100A9AD00);
  v70(v69, v5);
  sub_1000180EC(v12, &qword_100CCBB98, &unk_100A9AD00);
  v50 = v113;
  v51 = v109;
  if ((v98 & 1) == 0)
  {
    goto LABEL_13;
  }

  v48 = 0xE300000000000000;
  v49 = 7562585;
LABEL_14:
  v52 = v48;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v49);

  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
  v54 = LocalizedStringKey.init(stringInterpolation:)();
  LOWORD(v95) = 256;
  v109 = Text.init(_:tableName:bundle:comment:)(v54, v56, v55 & 1, v57, 0, 0, 0, 0, 0, v95);
  v110 = v58;
  v60 = v59;
  v113 = v61;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0xD000000000000014;
  v62._object = 0x8000000100AE6C70;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
  v104(v51, v107, v5);
  sub_10001B350(v51, 0, 1, v5);
  v63 = v115;
  State.wrappedValue.getter();
  v64 = *(v106 + 48);
  sub_1000955E0(v51, v50, &qword_100CCBB98, &unk_100A9AD00);
  sub_1000955E0(v63, v50 + v64, &qword_100CCBB98, &unk_100A9AD00);
  if (sub_100024D10(v50, 1, v5) == 1)
  {
    sub_1000180EC(v63, &qword_100CCBB98, &unk_100A9AD00);
    sub_1000180EC(v51, &qword_100CCBB98, &unk_100A9AD00);
    if (sub_100024D10(v50 + v64, 1, v5) == 1)
    {
      sub_1000180EC(v50, &qword_100CCBB98, &unk_100A9AD00);
LABEL_24:
      v66 = 0xE300000000000000;
      v67 = 7562585;
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v65 = v99;
  sub_1000955E0(v50, v99, &qword_100CCBB98, &unk_100A9AD00);
  if (sub_100024D10(v50 + v64, 1, v5) == 1)
  {
    sub_1000180EC(v115, &qword_100CCBB98, &unk_100A9AD00);
    sub_1000180EC(v51, &qword_100CCBB98, &unk_100A9AD00);
    (*(v114 + 8))(v65, v5);
LABEL_19:
    sub_1000180EC(v50, &qword_100CE7678, &qword_100A9AE70);
    goto LABEL_20;
  }

  v71 = v65;
  v72 = v114;
  v73 = v100;
  (*(v114 + 32))(v100, v50 + v64, v5);
  sub_10094FCA0(&qword_100CE7680, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  LODWORD(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
  v74 = *(v72 + 8);
  v74(v73, v5);
  sub_1000180EC(v115, &qword_100CCBB98, &unk_100A9AD00);
  sub_1000180EC(v51, &qword_100CCBB98, &unk_100A9AD00);
  v74(v71, v5);
  sub_1000180EC(v50, &qword_100CCBB98, &unk_100A9AD00);
  if (v116)
  {
    goto LABEL_24;
  }

LABEL_20:
  v66 = 0xE200000000000000;
  v67 = 28494;
LABEL_25:
  v75 = v66;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v67);

  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);
  v77 = LocalizedStringKey.init(stringInterpolation:)();
  LOWORD(v96) = 256;
  v81 = Text.init(_:tableName:bundle:comment:)(v77, v79, v78 & 1, v80, 0, 0, 0, 0, 0, v96);
  v83 = v82;
  v84 = v108 & 1;
  v122 = v108 & 1;
  v121 = v60 & 1;
  v120 = v108 & 1;
  v119 = v60 & 1;
  v86 = v85 & 1;
  v118 = v85 & 1;
  v88 = v111;
  v87 = v112;
  v89 = v105;
  v90 = v117;
  *v105 = v111;
  v89[1] = v90;
  *(v89 + 16) = v84;
  v92 = v109;
  v91 = v110;
  v89[3] = v87;
  v89[4] = v92;
  v89[5] = v91;
  *(v89 + 48) = v60 & 1;
  v89[7] = v113;
  v89[8] = v81;
  v89[9] = v82;
  *(v89 + 80) = v85 & 1;
  v89[11] = v93;
  sub_10010CD54(v88, v90, v84);

  sub_10010CD54(v92, v91, v60 & 1);

  sub_10010CD54(v81, v83, v86);

  sub_10010CD64(v81, v83, v86);

  sub_10010CD64(v92, v91, v121);

  sub_10010CD64(v88, v117, v122);
}

uint64_t sub_10094DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v70 = a2;
  v2 = sub_10022C350(&qword_100CE7688, &qword_100A9AE78) - 8;
  v57 = v2;
  __chkstk_darwin(v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v56 - v6;
  v64 = sub_10022C350(&qword_100CE7690, &qword_100A9AE80) - 8;
  __chkstk_darwin(v64);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v63 = sub_10022C350(&qword_100CE7698, &qword_100A9AE88) - 8;
  __chkstk_darwin(v63);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v16 - 8);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v56 - v19;
  v21 = sub_10022C350(&qword_100CE76A0, &qword_100A9AE90);
  __chkstk_darwin(v21 - 8);
  v67 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v66 = &v56 - v24;
  __chkstk_darwin(v25);
  v65 = &v56 - v26;
  __chkstk_darwin(v27);
  v58 = &v56 - v28;
  v61 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v59 = sub_10022C350(&qword_100CE7510, &unk_100A9AD10);
  State.wrappedValue.getter();
  v29 = static Color.yellow.getter();
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = sub_10022C350(&qword_100CE76A8, &qword_100A9AE98);
  sub_10094E894(0x64656772654DLL, 0xE600000000000000, v20, 0, 0, &v7[*(v30 + 44)]);
  v31 = static Edge.Set.all.getter();
  v32 = &v7[*(v2 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F758(v7, v11, &qword_100CE7688, &qword_100A9AE78);
  v33 = v64;
  memcpy(&v11[*(v64 + 44)], __src, 0x70uLL);
  v34 = Color.opacity(_:)();
  LOBYTE(v7) = static Edge.Set.all.getter();
  sub_10002F758(v11, v15, &qword_100CE7690, &qword_100A9AE80);
  v35 = v63;
  v36 = &v15[*(v63 + 44)];
  *v36 = v34;
  v36[8] = v7;
  v37 = v58;
  sub_10094BEAC(v29, v58);

  sub_1000180EC(v15, &qword_100CE7698, &qword_100A9AE88);
  sub_1000180EC(v20, &qword_100CCBB98, &unk_100A9AD00);
  v38 = v62;
  State.wrappedValue.getter();
  v39 = static Color.pink.getter();
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_10094E894(0x2D65737265766552, 0xEE0064656772654DLL, v38, 0, 0, &v4[*(v30 + 44)]);
  v40 = static Edge.Set.all.getter();
  v41 = &v4[*(v57 + 44)];
  *v41 = v40;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v42 = v4;
  v43 = v69;
  sub_10002F758(v42, v69, &qword_100CE7688, &qword_100A9AE78);
  memcpy((v43 + *(v33 + 44)), v72, 0x70uLL);
  v44 = Color.opacity(_:)();
  LOBYTE(v34) = static Edge.Set.all.getter();
  v45 = v43;
  v46 = v68;
  sub_10002F758(v45, v68, &qword_100CE7690, &qword_100A9AE80);
  v47 = v46 + *(v35 + 44);
  *v47 = v44;
  *(v47 + 8) = v34;
  v48 = v65;
  sub_10094BEAC(v39, v65);

  sub_1000180EC(v46, &qword_100CE7698, &qword_100A9AE88);
  sub_1000180EC(v38, &qword_100CCBB98, &unk_100A9AD00);
  v49 = v66;
  sub_1000955E0(v37, v66, &qword_100CE76A0, &qword_100A9AE90);
  v50 = v48;
  v51 = v48;
  v52 = v67;
  sub_1000955E0(v50, v67, &qword_100CE76A0, &qword_100A9AE90);
  v53 = v70;
  sub_1000955E0(v49, v70, &qword_100CE76A0, &qword_100A9AE90);
  v54 = sub_10022C350(&qword_100CE76B0, &qword_100A9AEA0);
  sub_1000955E0(v52, v53 + *(v54 + 48), &qword_100CE76A0, &qword_100A9AE90);
  sub_1000180EC(v51, &qword_100CE76A0, &qword_100A9AE90);
  sub_1000180EC(v37, &qword_100CE76A0, &qword_100A9AE90);
  sub_1000180EC(v52, &qword_100CE76A0, &qword_100A9AE90);
  return sub_1000180EC(v49, &qword_100CE76A0, &qword_100A9AE90);
}

uint64_t sub_10094E74C(uint64_t a1)
{
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.getter();
  if (!v5)
  {
    sub_10022C350(&qword_100CD12B8, &unk_100A76660);
    type metadata accessor for URL();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100A2C3F0;
    v3 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
    sub_1000161C0((a1 + *(v3 + 52)), *(a1 + *(v3 + 52) + 24));
    dispatch thunk of SyncedDataContextProviderType.coherenceDataStorageURL.getter();
    sub_10094A71C(0, v2, 0);
  }
}

uint64_t sub_10094E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v136 = a5;
  v137 = a6;
  v121 = a4;
  v123 = a3;
  v134 = sub_10022C350(&qword_100CE76B8, &qword_100A9AEA8);
  __chkstk_darwin(v134);
  v119 = (&v109[-2] - v8);
  v141 = sub_10022C350(&qword_100CE76C0, &qword_100A9AEB0);
  v130 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = &v109[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v109[-2] - v11;
  v12 = type metadata accessor for Divider();
  v117 = *(v12 - 8);
  v118 = v12;
  __chkstk_darwin(v12);
  v138 = &v109[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = &v109[-2] - v15;
  __chkstk_darwin(v16);
  v126 = &v109[-2] - v17;
  __chkstk_darwin(v18);
  v127 = &v109[-2] - v19;
  v116 = sub_10022C350(&qword_100CE76C8, &qword_100A9AEB8);
  v122 = *(v116 - 8);
  __chkstk_darwin(v116);
  v21 = &v109[-2] - v20;
  v22 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v22 - 8);
  v23 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v23 - 8);
  v25 = &v109[-2] - v24;
  v26 = type metadata accessor for SyncedData();
  v125 = *(v26 - 8);
  __chkstk_darwin(v26);
  v124 = &v109[-2] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CE76D0, &qword_100A9AEC0);
  __chkstk_darwin(v28 - 8);
  v135 = &v109[-2] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v142 = &v109[-2] - v31;
  __dst[0] = a1;
  __dst[1] = a2;
  v32 = sub_10002D5A4();

  v120 = v32;
  v33 = Text.init<A>(_:)();
  v35 = v34;
  LOBYTE(v32) = v36;
  static Font.title.getter();
  v37 = Text.font(_:)();
  v131 = v38;
  v132 = v37;
  v129 = v39;
  v133 = v40;

  sub_10010CD64(v33, v35, v32 & 1);

  sub_1000955E0(v123, v25, &qword_100CCBB98, &unk_100A9AD00);
  if (sub_100024D10(v25, 1, v26) == 1)
  {
    sub_1000180EC(v25, &qword_100CCBB98, &unk_100A9AD00);
    v41 = v142;
    v42 = v142;
    v43 = 1;
  }

  else
  {
    v44 = *(v125 + 32);
    v111 = v26;
    v44(v124, v25, v26);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    SyncedData.savedLocations.getter();
    v46 = v116;
    v47 = CROrderedDictionary.count.getter();
    v48 = *(v122 + 8);
    v48(v21, v46);
    __dst[0] = v47;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v49._countAndFlagsBits = 0x6F697461636F6C20;
    v49._object = 0xEA0000000000736ELL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    v50 = LocalizedStringKey.init(stringInterpolation:)();
    v122 = Text.init(_:tableName:bundle:comment:)(v50, v52, v51 & 1, v53, 0, 0, 0, 0, 0, 256);
    v123 = v54;
    v115 = v55;
    v110 = v56;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
    SyncedData.savedLocations.getter();
    v58 = CROrderedDictionary.insertionCount.getter();
    v48(v21, v46);
    __dst[0] = v58;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v59._countAndFlagsBits = 0x69747265736E6920;
    v59._object = 0xEB00000000736E6FLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v59);
    v60 = LocalizedStringKey.init(stringInterpolation:)();
    LOWORD(v107) = 256;
    v64 = Text.init(_:tableName:bundle:comment:)(v60, v62, v61 & 1, v63, 0, 0, 0, 0, 0, v107);
    v112 = v65;
    v113 = v64;
    v109[0] = v66;
    v114 = v67;
    v68 = v127;
    Divider.init()();
    SyncedData.savedLocations.getter();
    v69 = CROrderedDictionary._map<A>(_:)();
    v48(v21, v46);
    __dst[0] = v69;
    swift_getKeyPath();
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_10022C350(&qword_100CE76E8, &qword_100A9AF00);
    sub_100006F64(&qword_100CE76F0, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
    sub_10094F914();
    v70 = v128;
    ForEach<>.init(_:id:content:)();
    v71 = v126;
    Divider.init()();
    LOBYTE(__dst[0]) = v110 & 1;
    LOBYTE(v145[0]) = v109[0] & 1;
    v72 = v117;
    v73 = *(v117 + 16);
    v74 = v68;
    v75 = v118;
    v73(v139, v74, v118);
    *v109 = *(v130 + 16);
    (*v109)(v140, v70, v141);
    v73(v138, v71, v75);
    v76 = __dst[0];
    v110 = LOBYTE(__dst[0]);
    v77 = v119;
    v78 = v115;
    *v119 = v122;
    *(v77 + 8) = v78;
    *(v77 + 16) = v76;
    v79 = v145[0];
    LODWORD(v116) = LOBYTE(v145[0]);
    v80 = v112;
    v81 = v113;
    *(v77 + 24) = v123;
    *(v77 + 32) = v81;
    *(v77 + 40) = v80;
    *(v77 + 48) = v79;
    *(v77 + 56) = v114;
    v82 = sub_10022C350(&qword_100CE7700, &qword_100A9AF08);
    v73((v77 + v82[16]), v139, v75);
    (*v109)(v77 + v82[20], v140, v141);
    v73((v77 + v82[24]), v138, v75);
    v83 = v115;
    sub_10010CD54(v122, v115, v110);

    sub_10010CD54(v81, v80, v116);
    v84 = *(v72 + 8);

    v84(v126, v75);
    v85 = *(v130 + 8);
    v86 = v141;
    v85(v128, v141);
    v84(v127, v75);
    (*(v125 + 8))(v124, v111);
    v84(v138, v75);
    v85(v140, v86);
    v84(v139, v75);
    sub_10010CD64(v113, v112, v145[0]);

    sub_10010CD64(v122, v83, __dst[0]);

    v41 = v142;
    sub_10002F758(v77, v142, &qword_100CE76B8, &qword_100A9AEA8);
    v42 = v41;
    v43 = 0;
  }

  sub_10001B350(v42, v43, 1, v134);
  if (v136)
  {
    __dst[0] = v121;
    __dst[1] = v136;

    v87 = Text.init<A>(_:)();
    v89 = v88;
    v91 = v90;
    static Font.caption.getter();
    Font.monospaced()();

    v92 = Text.font(_:)();
    v94 = v93;
    v96 = v95;
    v98 = v97;

    sub_10010CD64(v87, v89, v91 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v144[0] = v96 & 1;
    v145[0] = v92;
    v145[1] = v94;
    v41 = v142;
    LOBYTE(v145[2]) = v96 & 1;
    v145[3] = v98;
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__dst, v145, 0x90uLL);
  }

  else
  {
    sub_10094F90C(__dst);
  }

  v99 = v135;
  sub_1000955E0(v41, v135, &qword_100CE76D0, &qword_100A9AEC0);
  memcpy(v143, __dst, sizeof(v143));
  v100 = v137;
  v101 = v131;
  v102 = v132;
  *v137 = v132;
  v100[1] = v101;
  v103 = v129 & 1;
  *(v100 + 16) = v129 & 1;
  v100[3] = v133;
  v104 = sub_10022C350(&qword_100CE76D8, &qword_100A9AEC8);
  sub_1000955E0(v99, v100 + *(v104 + 48), &qword_100CE76D0, &qword_100A9AEC0);
  v105 = *(v104 + 64);
  memcpy(v144, v143, sizeof(v144));
  memcpy(v100 + v105, v143, 0x90uLL);
  sub_10010CD54(v102, v101, v103);

  sub_1000955E0(v144, v145, &qword_100CE76E0, &unk_100A9AED0);
  sub_1000180EC(v142, &qword_100CE76D0, &qword_100A9AEC0);
  memcpy(v145, v143, sizeof(v145));
  sub_1000180EC(v145, &qword_100CE76E0, &unk_100A9AED0);
  sub_1000180EC(v99, &qword_100CE76D0, &qword_100A9AEC0);
  sub_10010CD64(v102, v101, v103);
}

void *sub_10094F59C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  __src[0] = *a1;
  __src[1] = v3;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  Font.monospaced()();

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_10010CD64(v4, v6, v8 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  KeyPath = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  result = memcpy((a2 + 32), __src, 0x70uLL);
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  return result;
}

unint64_t sub_10094F710()
{
  result = qword_100CE75E0;
  if (!qword_100CE75E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE75D8, &qword_100A9AD98);
    v4[0] = sub_100006F64(&qword_100CE75E8, &qword_100CE75F0, &qword_100A9ADA0, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE75E0);
  }

  return result;
}

uint64_t sub_10094F7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10094F82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10094F8DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10094F8B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10094F914()
{
  result = qword_100CE76F8;
  if (!qword_100CE76F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE76E8, &qword_100A9AF00);
    v4[0] = sub_1003F04CC();
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE76F8);
  }

  return result;
}

unint64_t sub_10094F9EC()
{
  result = qword_100CE7730;
  if (!qword_100CE7730)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE76A0, &qword_100A9AE90);
    v4[0] = sub_10094FAA4();
    v4[1] = sub_100006F64(&qword_100CE7760, &qword_100CE7670, &qword_100A9AE68, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7730);
  }

  return result;
}

unint64_t sub_10094FAA4()
{
  result = qword_100CE7738;
  if (!qword_100CE7738)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7698, &qword_100A9AE88);
    v4[0] = sub_10094FB5C();
    v4[1] = sub_100006F64(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7738);
  }

  return result;
}

unint64_t sub_10094FB5C()
{
  result = qword_100CE7740;
  if (!qword_100CE7740)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7690, &qword_100A9AE80);
    v4[0] = sub_10094FBE8();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7740);
  }

  return result;
}

unint64_t sub_10094FBE8()
{
  result = qword_100CE7748;
  if (!qword_100CE7748)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7688, &qword_100A9AE78);
    v4[0] = sub_100006F64(&qword_100CE7750, &qword_100CE7758, &qword_100A9AF68, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7748);
  }

  return result;
}

uint64_t sub_10094FCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10094FD18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DebugLocationSyncingPlaygroundView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10094FDAC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(type metadata accessor for DebugLocationSyncingPlaygroundView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

unint64_t sub_10094FE40()
{
  result = qword_100CE7778;
  if (!qword_100CE7778)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE75F8, &unk_100A9ADA8);
    v4[0] = sub_100006F64(&qword_100CE7780, &qword_100CE7788, &qword_100A9AF78, &protocol conformance descriptor for ScrollView<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7778);
  }

  return result;
}

uint64_t sub_10094FEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a1;
  v223 = a2;
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  sub_1000038E4();
  sub_100003918(v3);
  v195 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v194 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v6);
  v207 = type metadata accessor for Locale();
  sub_1000037C4();
  v206 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003918(v9);
  v205 = type metadata accessor for RoundedPrecipitation();
  sub_1000037C4();
  v204 = v10;
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003990(v12);
  v236 = sub_10022C350(&qword_100CB5468, &unk_100A95C40);
  sub_1000037C4();
  v199 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003990(&v190 - v15);
  v200 = sub_10022C350(&qword_100CE4B40, &unk_100A9AFC0);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v190 - v17;
  v239 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v198 = v19;
  __chkstk_darwin(v20);
  sub_100003848();
  v234 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_100003878();
  v235 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v201 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v237 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  v210 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_100003990(&v190 - v31);
  sub_10022C350(&unk_100CE7790, &unk_100A9AFD0);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003918(&v190 - v33);
  v238 = type metadata accessor for MonthPrecipitationStatistics();
  sub_1000037C4();
  v197 = v34;
  __chkstk_darwin(v35);
  sub_100003848();
  countAndFlagsBits = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003990(&v190 - v38);
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_100003918(&v190 - v40);
  v226 = type metadata accessor for Date();
  sub_1000037C4();
  v232 = v41;
  __chkstk_darwin(v42);
  sub_100003848();
  v231 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003918(&v190 - v45);
  type metadata accessor for DateComponents();
  sub_1000037C4();
  v228 = v47;
  v229 = v46;
  __chkstk_darwin(v46);
  sub_100003848();
  object = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v51 = &v190 - v50;
  v221 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v220 = v52;
  __chkstk_darwin(v53);
  sub_1000038E4();
  v225 = v54;
  Calendar.timeZone.getter();
  v218 = sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v55 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v57 = v56;
  v59 = *(v58 + 72);
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v217 = (v60 + 2 * v59);
  v213 = v59;
  v61 = swift_allocObject();
  v216 = xmmword_100A2D320;
  *(v61 + 16) = xmmword_100A2D320;
  LODWORD(v215) = enum case for Calendar.Component.year(_:);
  v62 = *(v57 + 104);
  v62(v61 + v60);
  LODWORD(v214) = enum case for Calendar.Component.month(_:);
  v62(v61 + v60 + v59);
  sub_10004BCB0(v61);
  v208 = type metadata accessor for MonthlyAveragesChartInput(0);
  v63 = v227;
  v224 = v51;
  Calendar.dateComponents(_:from:)();

  v64 = v63;
  v65 = v219;
  v66 = swift_allocObject();
  *(v66 + 16) = v216;
  (v62)(v66 + v60, v215, v55);
  (v62)(v66 + v60 + v213, v214, v55);
  v67 = v228;
  v68 = v226;
  sub_10004BCB0(v66);
  v69 = v231;
  Date.startOfDay.getter();
  v70 = object;
  Calendar.dateComponents(_:from:)();

  v71 = v232 + 8;
  v72 = v69;
  v73 = v229;
  v218 = *(v232 + 8);
  v218(v72, v68);
  Calendar.date(from:)();
  v76 = *(v67 + 8);
  v75 = v67 + 8;
  v74 = v76;
  v77 = v70;
  v78 = v68;
  v76(v77, v73);
  if (sub_100024D10(v65, 1, v68) == 1)
  {
    v74(v224, v73);
    v79 = sub_10001A264();
    v80(v79);
    sub_10003FDF4(v65, &unk_100CB2CF0, &unk_100A2D7F0);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v81, v82, v83, v84);
  }

  v214 = v74;
  v215 = v71;
  v86 = v222;
  (*(v232 + 32))(v222, v65, v68);
  sub_100119F7C();
  v87 = v225;
  v219 = static NSDateFormatter.shortMonthNameFormatter(with:)();
  v217 = static NSDateFormatter.longMonthNameFormatter(with:)();
  *&v216 = static NSDateFormatter.longMonthNameFormatter(with:)();
  v88 = *(v208 + 32);
  v89 = v209;
  sub_1003DFBFC();
  v90 = v238;
  if (sub_100024D10(v89, 1, v238) == 1)
  {
    sub_10003FDF4(v89, &unk_100CE7790, &unk_100A9AFD0);
    if (qword_100CA2728 != -1)
    {
      sub_1000151AC(&qword_100CA2728);
    }

    v91 = type metadata accessor for Logger();
    sub_10000703C(v91, qword_100D90BD0);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v220;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "The monthly statistics array is empty.", v96, 2u);
    }

    v214(v224, v229);
    (*(v95 + 8))(v87, v221);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    sub_10001B350(v97, v98, v99, v100);
    v101 = v86;
LABEL_27:
    v172 = v78;
    return (v218)(v101, v172);
  }

  v228 = v75;
  v102 = v197 + 32;
  (*(v197 + 32))(v211, v89, v90);
  v103 = v210;
  MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
  v104 = v198 + 16;
  (*(v198 + 16))(v237, v103, v239);
  (*(v199 + 16))(v196, v64 + v88, v236);
  sub_100006F64(&qword_100CE4B48, &qword_100CB5468, &unk_100A95C40, &protocol conformance descriptor for MonthlyWeatherStatistics<A>);
  dispatch thunk of Sequence.makeIterator()();
  v105 = *(v200 + 36);
  sub_100006F64(&qword_100CB5470, &qword_100CB5468, &unk_100A95C40, &protocol conformance descriptor for MonthlyWeatherStatistics<A>);
  object = (v102 - 16);
  v231 = (v102 - 24);
  v232 = v104 - 8;
  v106 = (v104 + 16);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v18[v105] == v241)
    {
      break;
    }

    v107 = dispatch thunk of Collection.subscript.read();
    v108 = countAndFlagsBits;
    v109 = v238;
    (*object)(countAndFlagsBits);
    v107(&v241, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v110 = v234;
    MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
    sub_100006F64(&qword_100CBD780, &qword_100CAB938, &qword_100A51040, &protocol conformance descriptor for Measurement<A>);
    v111 = v18;
    v112 = v237;
    v113 = v239;
    v114 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*v231)(v108, v109);
    if (v114)
    {
      v115 = v112;
    }

    else
    {
      v115 = v110;
    }

    if (v114)
    {
      v116 = v110;
    }

    else
    {
      v116 = v112;
    }

    (*v232)(v115, v113);
    v117 = *v106;
    v118 = v235;
    (*v106)(v235, v116, v113);
    v119 = v112;
    v18 = v111;
    v117(v119, v118, v113);
  }

  sub_10003FDF4(v18, &qword_100CE4B40, &unk_100A9AFC0);
  v120 = *v232;
  v121 = v239;
  (*v232)(v210, v239);
  v122 = v212;
  (*v106)(v212, v237, v121);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v123 = v203;
  static Locale.current.getter();
  v124 = v202;
  Measurement<>.convertAndRoundPrecipitation(unitManager:locale:)();

  (*(v206 + 8))(v123, v207);
  v125 = v201;
  RoundedPrecipitation.measurement.getter();
  (*(v204 + 8))(v124, v205);
  v126 = Measurement.unit.getter();
  v237 = v120;
  v127 = (v120)(v125, v121);
  __chkstk_darwin(v127);
  v128 = v222;
  *(&v190 - 8) = v227;
  *(&v190 - 7) = v128;
  v129 = v217;
  *(&v190 - 6) = v219;
  *(&v190 - 5) = v129;
  *(&v190 - 4) = v216;
  *(&v190 - 3) = v122;
  v246._object = v126;
  sub_100744690(sub_100952520, (&v190 - 10), 1, 13, v130, v131, v132, v133, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v135 = v134;
  if (qword_100CA2840 != -1)
  {
    swift_once();
  }

  v136 = qword_100D90E18;

  sub_10064C8F0(2, v135, v136, &v241);
  v137 = v224;
  if (!v242)
  {
    v236 = v126;
    if (qword_100CA2728 != -1)
    {
      sub_1000151AC(&qword_100CA2728);
    }

    v173 = type metadata accessor for Logger();
    sub_10000703C(v173, qword_100D90BD0);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    v176 = os_log_type_enabled(v174, v175);
    v78 = v226;
    v177 = v229;
    v178 = v221;
    v179 = v220;
    v180 = v225;
    if (v176)
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
    }

    v182 = sub_100075318();
    v183(v182);
    v214(v137, v177);
    (*(v179 + 8))(v180, v178);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    sub_10001B350(v184, v185, v186, v187);
    v188 = sub_100028E1C();
    v189(v188);
    v101 = v222;
    goto LABEL_27;
  }

  v139 = v244;
  v138 = v245;
  v236 = v243;
  LODWORD(v235) = v241;
  v140 = v193;
  v234 = v242;
  sub_100951FFC(v224, v191, v126, v193);
  v141 = [objc_opt_self() mainBundle];
  v246._object = 0x8000000100ABCA10;
  v142._object = 0x8000000100ABC9F0;
  v246._countAndFlagsBits = 0xD00000000000006ELL;
  v142._countAndFlagsBits = 0xD000000000000010;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v144 = NSLocalizedString(_:tableName:bundle:value:comment:)(v142, 0, v141, v143, v246);
  countAndFlagsBits = v144._countAndFlagsBits;
  object = v144._object;

  v145 = v126;
  v146 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v147 = v223;
  sub_100003934();
  v148 = v195;
  sub_10001B350(v149, v150, v151, v195);
  v152 = v147 + v146[7];
  static Font.body.getter();
  WeatherDescription.formatted(font:color:)();

  v153 = Text.init(_:)();
  v155 = v154;
  v157 = v156;
  v159 = v158;

  (*(v194 + 8))(v140, v148);
  v160 = sub_100075318();
  v161(v160);
  v214(v224, v229);
  v162 = sub_10001A264();
  v163(v162);
  v240 = 0;
  *v152 = v153;
  *(v152 + 8) = v155;
  *(v152 + 16) = v157 & 1;
  *(v152 + 24) = v159;
  *(v152 + 32) = v235;
  v164 = v236;
  *(v152 + 40) = v234;
  *(v152 + 48) = v164;
  *(v152 + 56) = v139;
  *(v152 + 64) = v138;
  *(v152 + 89) = 0;
  v165 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v166, v167, v168, v165);
  *v147 = xmmword_100A2F600;
  *(v147 + 16) = 2;
  v169 = object;
  *(v147 + 24) = countAndFlagsBits;
  *(v147 + 32) = v169;
  *(v147 + v146[9]) = 0;
  *(v147 + v146[10]) = 0;
  sub_10001B350(v147, 0, 1, v146);
  v170 = sub_100028E1C();
  v171(v170);
  v101 = v222;
  v172 = v226;
  return (v218)(v101, v172);
}

uint64_t sub_1009512EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>)
{
  v100 = a8;
  v99 = a7;
  v94 = a6;
  v93 = a5;
  v92 = a4;
  v116 = a3;
  v119 = a9;
  v10 = type metadata accessor for WeatherFormatPlaceholder();
  v108 = *(v10 - 8);
  v109 = v10;
  __chkstk_darwin(v10);
  v107 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v12 - 8);
  v104 = &v86 - v13;
  v14 = type metadata accessor for WeatherFormatScaling();
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v97 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v18 = *(v17 - 8);
  v105 = v17;
  v106 = v18;
  __chkstk_darwin(v17);
  v115 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v112 = &v86 - v22;
  v23 = sub_10022C350(&unk_100CE7790, &unk_100A9AFD0);
  __chkstk_darwin(v23 - 8);
  v25 = &v86 - v24;
  v117 = type metadata accessor for MonthPrecipitationStatistics();
  v111 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Calendar.Component();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v86 - v32;
  v34 = type metadata accessor for Date();
  v118 = *(v34 - 1);
  v35 = __chkstk_darwin(v34);
  v37 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v30, enum case for Calendar.Component.month(_:), v27, v35);
  Calendar.date(bySetting:value:of:)();
  (*(v28 + 8))(v30, v27);
  if (sub_100024D10(v33, 1, v34) == 1)
  {
    sub_10003FDF4(v33, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  else
  {
    (*(v118 + 32))(v37, v33, v34);
    v38 = type metadata accessor for MonthlyAveragesChartInput(0);
    __chkstk_darwin(v38);
    *(&v86 - 2) = a2;
    *(&v86 - 1) = v37;
    v39 = v120;
    sub_1008DC218();
    v120 = v39;
    if (sub_100024D10(v25, 1, v117) != 1)
    {
      (*(v111 + 32))(v110, v25, v117);
      MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v47 = [v92 stringFromDate:isa];

      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v48;

      v49 = Date._bridgeToObjectiveC()().super.isa;
      v50 = [v93 stringFromDate:v49];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v51;

      v52 = Date._bridgeToObjectiveC()().super.isa;
      v53 = [v94 stringFromDate:v52];

      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v54;

      v88 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
      v55 = *(v88 + 20);
      v94 = v34;
      v56 = v119;
      v87 = (v119 + v55);
      Measurement.value.getter();
      v58 = v57;
      Measurement.value.getter();
      v60 = v58 / v59;
      Measurement<>.converted(to:)();
      v61 = v96;
      v62 = *(v96 + 104);
      v100 = v37;
      v63 = v95;
      v64 = v98;
      v62(v95, enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:), v98);
      v66 = v102;
      v65 = v103;
      v67 = v97;
      (*(v102 + 104))(v97, enum case for WeatherFormatScaling.asProvidedButRounded(_:), v103);
      v68 = type metadata accessor for Locale();
      v69 = v104;
      sub_10001B350(v104, 1, 1, v68);
      static Set<>.full.getter();
      static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

      sub_10003FDF4(v69, &qword_100CAA9F0, qword_100A44F50);
      (*(v66 + 8))(v67, v65);
      (*(v61 + 8))(v63, v64);
      v71 = v107;
      v70 = v108;
      v72 = v109;
      (*(v108 + 104))(v107, enum case for WeatherFormatPlaceholder.none(_:), v109);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100123738();
      v74 = v114;
      v73 = v115;
      v75 = v105;
      v76 = v113;
      v77 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v103 = v78;
      v104 = v77;

      (*(v70 + 8))(v71, v72);
      (*(v106 + 8))(v73, v75);
      v79 = *(v101 + 8);
      v79(v76, v74);
      v79(v112, v74);
      (*(v111 + 8))(v110, v117);
      v80 = v87;
      *v87 = 0.0;
      v80[1] = v60;
      v80[2] = 0.0;
      v80[3] = 0.0;
      v81 = v103;
      *(v80 + 4) = v104;
      *(v80 + 5) = v81;
      type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
      swift_storeEnumTagMultiPayload();
      v82 = v92;
      *v56 = v116;
      v56[1] = v82;
      v83 = v91;
      v56[2] = v93;
      v56[3] = v83;
      v84 = v89;
      v56[4] = v90;
      v56[5] = v84;
      v85 = v88;
      *(v56 + *(v88 + 24)) = 2;
      sub_10001B350(v56, 0, 1, v85);
      return (*(v118 + 8))(v100, v94);
    }

    sub_10003FDF4(v25, &unk_100CE7790, &unk_100A9AFD0);
    (*(v118 + 8))(v37, v34);
  }

  if (qword_100CA2728 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000703C(v40, qword_100D90BD0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to find this month's precipitation averages for the Averages L2 Chart summary.", v43, 2u);
  }

  v44 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  return sub_10001B350(v119, 1, 1, v44);
}

BOOL sub_100951ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MonthPrecipitationStatistics.month.getter();
  (*(v4 + 104))(v6, enum case for Calendar.Component.month(_:), v3);
  v8 = Calendar.component(_:from:)();
  (*(v4 + 8))(v6, v3);
  return v7 == v8;
}

uint64_t sub_100951FFC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, double (*a3)(char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v43 = a4;
  v5 = type metadata accessor for Calendar.Identifier();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10022C350(&unk_100CE7790, &unk_100A9AFD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for MonthPrecipitationStatistics();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MonthlyAveragesChartInput(0);
  v44 = a1;
  sub_1008DC218();
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &unk_100CE7790, &unk_100A9AFD0);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000703C(v23, qword_100D90B68);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v26, 2u);
    }

    return static WeatherDescription.string(_:)();
  }

  else
  {
    v34 = v19;
    v35 = v20;
    (*(v20 + 32))(v22, v18, v19);
    sub_1000161C0(v38, v38[3]);
    MonthPrecipitationStatistics.averagePrecipitationAmount.getter();
    v28 = v37;
    Measurement<>.converted(to:)();
    v39 = *(v36 + 8);
    v39(v12, v28);
    v38 = MonthPrecipitationStatistics.month.getter();
    Calendar.identifier.getter();
    v29 = v40;
    v30 = v41;
    v31 = v42;
    (*(v41 + 104))(v40, enum case for Calendar.Identifier.gregorian(_:), v42);
    v32 = static Calendar.Identifier.== infix(_:_:)();
    v33 = *(v30 + 8);
    v33(v29, v31);
    v33(v9, v31);
    sub_10062EC58(v15, v38, (v32 & 1) == 0, v43);
    v39(v15, v28);
    return (*(v35 + 8))(v22, v34);
  }
}

uint64_t sub_1009524D0(double a1)
{
  v1 = MonthPrecipitationStatistics.month.getter();
  v2 = v1 == DateComponents.month.getter();
  return v2 & ~v3;
}

uint64_t sub_100952598(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100952650()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Weather16TapTestParameter_testName);

  return v1;
}

uint64_t sub_10095270C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7Weather16TapTestParameter_testName);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1009527D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Weather16TapTestParameter_completionHandler);
  sub_10007A47C(v1);
  return v1;
}

id (*sub_10095281C())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_1009529FC;
}

uint64_t sub_100952A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100952AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A40(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_airQuality, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A24(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_severeAlert, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather17MinorAlertContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailPlatterViewModel.PlatterStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1009543CC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100954420(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CE7868, &qword_100A9B138);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v62 = &v57 - v11;
  v63 = sub_10022C350(&qword_100CE7A80, &qword_100A9B3B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v64 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v23 = sub_10022C350(&qword_100CB7680, &unk_100A9B3C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  v27 = *a1;
  v28 = *a2;
  v29 = a2[1];
  v30 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_60;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
    if (v30 != 1)
    {
      goto LABEL_60;
    }

LABEL_6:
    v31 = v27 == v28 && a1[1] == v29;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_28:
    v33 = a1[4];
    v34 = a2[4];
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_60;
      }

      v35 = a1[3] == a2[3] && v33 == v34;
      if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_37:
      v61 = v4;
      v58 = v8;
      v59 = v14;
      v60 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v36 = *(v23 + 48);
      sub_10040492C();
      sub_10040492C();
      sub_100003A40(v26);
      if (v31)
      {
        sub_100003A40(&v26[v36]);
        if (v31)
        {
          sub_1000180EC(v26, &qword_100CAE8E8, &unk_100A49400);
LABEL_48:
          v47 = v60;
          if ((sub_100955424(a1 + *(v60 + 28), a2 + *(v60 + 28)) & 1) == 0)
          {
            goto LABEL_60;
          }

          v48 = *(v63 + 48);
          v49 = v59;
          sub_10040492C();
          v50 = v49;
          sub_10040492C();
          sub_100003BDC(v49);
          if (v31)
          {
            sub_100003BDC(v49 + v48);
            if (v31)
            {
              sub_1000180EC(v49, &qword_100CE7868, &qword_100A9B138);
              goto LABEL_59;
            }
          }

          else
          {
            v51 = v62;
            sub_10040492C();
            sub_100003BDC(v50 + v48);
            if (!v52)
            {
              v54 = v58;
              sub_100955DF4();
              v55 = sub_100955424(v51, v54);
              sub_100955D9C(v54, type metadata accessor for ConditionDetailPlatterViewModel.Body);
              sub_100955D9C(v51, type metadata accessor for ConditionDetailPlatterViewModel.Body);
              sub_1000180EC(v50, &qword_100CE7868, &qword_100A9B138);
              if ((v55 & 1) == 0)
              {
                goto LABEL_60;
              }

LABEL_59:
              if (*(a1 + *(v47 + 36)) == *(a2 + *(v47 + 36)))
              {
                v32 = *(a1 + *(v47 + 40)) ^ *(a2 + *(v47 + 40)) ^ 1;
                return v32 & 1;
              }

              goto LABEL_60;
            }

            sub_10001FD8C();
            sub_100955D9C(v51, v53);
          }

          v40 = &qword_100CE7A80;
          v41 = &qword_100A9B3B8;
          v42 = v50;
          goto LABEL_46;
        }
      }

      else
      {
        sub_10040492C();
        sub_100003A40(&v26[v36]);
        if (!v37)
        {
          v43 = v64;
          (*(v64 + 32))(v20, &v26[v36], v15);
          sub_100955F04(&qword_100CB7688, &type metadata accessor for WeatherDescription, &protocol conformance descriptor for WeatherDescription);
          v44 = dispatch thunk of static Equatable.== infix(_:_:)();
          v45 = *(v43 + 8);
          v45(v20, v15);
          v46 = sub_100031474();
          (v45)(v46);
          sub_1000180EC(v26, &qword_100CAE8E8, &unk_100A49400);
          if ((v44 & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_48;
        }

        v38 = sub_100031474();
        v39(v38);
      }

      v40 = &qword_100CB7680;
      v41 = &unk_100A9B3C0;
      v42 = v26;
LABEL_46:
      sub_1000180EC(v42, v40, v41);
      goto LABEL_60;
    }

    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_60:
    v32 = 0;
    return v32 & 1;
  }

  switch(v27)
  {
    case 1:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 1)
      {
        goto LABEL_27;
      }

      break;
    case 2:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 2)
      {
        goto LABEL_27;
      }

      break;
    case 3:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 3)
      {
        goto LABEL_27;
      }

      break;
    case 4:
      if (v30 != 2)
      {
        goto LABEL_60;
      }

      v32 = 0;
      if (v28 == 4)
      {
LABEL_27:
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      break;
    default:
      v32 = 0;
      if (v30 == 2 && !(v29 | v28))
      {
        goto LABEL_28;
      }

      break;
  }

  return v32 & 1;
}

double sub_100954A6C(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = static Solarium.isEnabled.getter();
  if (v4 & 1) != 0 && (a2)
  {
    if (qword_100CA21A0 != -1)
    {
      v4 = sub_1000151CC(&qword_100CA21A0);
    }

    sub_100016ED0(v4);
    sub_1004BA278();
    swift_endAccess();
    return 10.0;
  }

  else
  {
    if (v3)
    {
      if (qword_100CA21A0 != -1)
      {
        v4 = sub_1000151CC(&qword_100CA21A0);
      }

      v6 = sub_100016ED0(v4);
      v7 = sub_1004BA700(v6);
    }

    else
    {
      if (qword_100CA21A0 != -1)
      {
        v4 = sub_1000151CC(&qword_100CA21A0);
      }

      v8 = sub_100016ED0(v4);
      v7 = sub_1004BA4FC(v8);
    }

    v5 = v7;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_100954B84()
{
  v35[1] = type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000038E4();
  v41 = v1;
  v40 = type metadata accessor for AttributedString.CharacterView();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v38 = v3;
  v39 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v37 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CE7868, &qword_100A9B138);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v35 - v24;
  type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_10040492C();
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_1000180EC(v18, &qword_100CE7868, &qword_100A9B138);
    return 0;
  }

  else
  {
    sub_100955DF4();
    sub_100955D38(v25, v22);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_10001FD8C();
        sub_100955D9C(v25, v32);
        return *v22;
      case 2u:
        v28 = v37;
        v29 = v39;
        (*(v37 + 32))(v8, v22, v39);
        AttributedString.characters.getter();
        sub_100955F04(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
        v26 = String.init<A>(_:)();
        (*(v28 + 8))(v8, v29);
        goto LABEL_14;
      case 3u:
      case 5u:
      case 6u:
      case 7u:
        sub_100955D9C(v25, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        sub_100955D9C(v22, type metadata accessor for ConditionDetailPlatterViewModel.Body);
        return 0;
      case 4u:
        v30 = v41;
        sub_100955DF4();
        if (v30[1])
        {
          v26 = *v30;
        }

        else
        {
          v26 = sub_1006EC1DC();
        }

        sub_10001A284();
        sub_100955D9C(v30, v33);
        goto LABEL_14;
      default:
        v31 = v36;
        (*(v36 + 32))(v14, v22, v9);
        v26 = WeatherDescription.string.getter();
        (*(v31 + 8))(v14, v9);
LABEL_14:
        sub_10001FD8C();
        sub_100955D9C(v25, v34);
        break;
    }
  }

  return v26;
}

uint64_t sub_100955018()
{
  sub_100003A00();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);

  return static AttributedString.== infix(_:_:)();
}

void sub_100955090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A00();
  if (!v4)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 6;
LABEL_5:
    Hasher._combine(_:)(v5);
    sub_100003B2C();

    String.hash(into:)();
    return;
  }

  switch(v3)
  {
    case 1:
      v6 = 2;
      break;
    case 2:
      v6 = 3;
      break;
    case 3:
      v6 = 4;
      break;
    case 4:
      v6 = 5;
      break;
    default:
      v6 = 0;
      break;
  }

  Hasher._combine(_:)(v6);
}

Swift::Int sub_100955150(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100955090(v5, a1, a2);
  return Hasher._finalize()();
}

unint64_t sub_1009551BC()
{
  result = qword_100CE7A68;
  if (!qword_100CE7A68)
  {
    result = swift_getWitnessTable(byte_100A9B33C, &type metadata for ConditionDetailPlatterViewModel.PlatterIdentifier, v0, v1);
    atomic_store(result, &qword_100CE7A68);
  }

  return result;
}

Swift::Int sub_100955228(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_100955090(v5, v2, v3);
  return Hasher._finalize()();
}

unint64_t sub_100955284()
{
  result = qword_100CE7A70;
  if (!qword_100CE7A70)
  {
    result = swift_getWitnessTable(asc_100A9B2DC, &type metadata for ConditionDetailPlatterViewModel.PlatterStyle, v0, v1);
    atomic_store(result, &qword_100CE7A70);
  }

  return result;
}

unint64_t sub_1009552DC()
{
  result = qword_100CE7A78;
  if (!qword_100CE7A78)
  {
    result = swift_getWitnessTable("\r", &type metadata for ConditionDetailPlatterViewModel.PlatterIdentifier, v0, v1);
    atomic_store(result, &qword_100CE7A78);
  }

  return result;
}

uint64_t sub_100955330(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

double sub_100955410@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_100955F4C(v2, v3, v4);
}

uint64_t sub_100955424(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v3 = type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v5);
  v110 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037C4();
  v109 = v6;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v9 = sub_100003918(v8);
  v10 = type metadata accessor for DetailComponentContainerViewModel(v9);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  v100 = v12;
  v108 = sub_10022C350(&qword_100CB5C78, &qword_100A49428);
  sub_1000037C4();
  v107 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003918(&v98 - v15);
  v106 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v105 = v16;
  __chkstk_darwin(v17);
  sub_1000038E4();
  sub_100003918(v18);
  v104 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v103 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = sub_100003918(v21);
  v23 = type metadata accessor for ConditionDetailPlatterViewModel.Body(v22);
  sub_1000037E8();
  __chkstk_darwin(v24);
  v102 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v101 = &v98 - v27;
  __chkstk_darwin(v28);
  v30 = &v98 - v29;
  __chkstk_darwin(v31);
  v33 = (&v98 - v32);
  __chkstk_darwin(v34);
  v36 = &v98 - v35;
  __chkstk_darwin(v37);
  v39 = &v98 - v38;
  __chkstk_darwin(v40);
  v42 = &v98 - v41;
  __chkstk_darwin(v43);
  v45 = &v98 - v44;
  v46 = sub_10022C350(&qword_100CE7A88, &unk_100A9B3D0);
  sub_100003810(v46);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v98 - v48;
  v51 = (&v98 + *(v50 + 56) - v48);
  sub_100955D38(v111, &v98 - v48);
  sub_100955D38(a2, v51);
  v52 = v49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100955D38(v49, v42);
      v76 = *v42;
      v75 = *(v42 + 1);
      if (sub_100013E60() != 1)
      {

        goto LABEL_33;
      }

      if (v76 == *v51 && v75 == v51[1])
      {
      }

      else
      {
        sub_100003B2C();
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v78 & 1) == 0)
        {
          sub_10001FD8C();
          sub_100955D9C(v49, v79);
          goto LABEL_34;
        }
      }

      sub_10001FD8C();
      sub_100955D9C(v49, v97);
      v23 = 1;
      return v23 & 1;
    case 2u:
      sub_100955D38(v49, v39);
      if (sub_100013E60() == 2)
      {
        v61 = v105;
        v62 = v99;
        v63 = v106;
        (*(v105 + 32))(v99, v51, v106);
        v23 = static AttributedString.== infix(_:_:)();
        v64 = *(v61 + 8);
        v64(v62, v63);
        v64(v39, v63);
        goto LABEL_37;
      }

      sub_10000E73C();
      v54 = v39;
      v55 = &v115;
      goto LABEL_27;
    case 3u:
      sub_100955D38(v49, v36);
      if (sub_100013E60() == 3)
      {
        sub_100017170();
        v65 = sub_100049F40();
        v66 = v108;
        v67(v65);
        v68 = sub_10022C350(&qword_100CB5CA8, &qword_100A494D0);
        sub_100062C08();
        sub_100955E50();
        static NonEmpty<>.== infix(_:_:)();
        v69 = sub_10004EDE4();
        v68(v69, v66);
        v68(v36, v66);
        goto LABEL_37;
      }

      sub_10000E73C();
      v54 = v36;
      v55 = &v116;
      goto LABEL_27;
    case 4u:
      sub_100955D38(v49, v33);
      if (sub_100013E60() == 4)
      {
        v56 = type metadata accessor for DetailComponentContainerViewModel;
        v57 = v100;
        sub_100955DF4();
        v23 = sub_100428860(v33, v57);
        v58 = sub_100003B2C();
        sub_100955D9C(v58, v59);
        v60 = v33;
        goto LABEL_12;
      }

      sub_10001A284();
      v88 = v33;
      goto LABEL_29;
    case 5u:
      sub_100955D38(v49, v30);
      memcpy(__dst, v30, 0x5AuLL);
      if (sub_100013E60() == 5)
      {
        memcpy(v113, v51, 0x5AuLL);
        v23 = sub_1003335B4(__dst, v113);
        sub_1003F09B4(v113);
        sub_1003F09B4(__dst);
        goto LABEL_37;
      }

      sub_1003F09B4(__dst);
      goto LABEL_33;
    case 6u:
      v80 = v101;
      sub_100955D38(v49, v101);
      if (sub_100013E60() == 6)
      {
        sub_100017170();
        v81 = sub_100049F40();
        v82 = v110;
        v83(v81);
        static PrecipitationTotalPlatterViewModel.== infix(_:_:)();
        v84 = sub_10004EDE4();
        (v42)(v84, v82);
        (v42)(v80, v82);
        sub_10001FD8C();
        v86 = v49;
        goto LABEL_38;
      }

      sub_10000E73C();
      v89(v80, v110);
      v52 = v49;
      goto LABEL_33;
    case 7u:
      v70 = v102;
      sub_100955D38(v49, v102);
      if (sub_100013E60() == 7)
      {
        v56 = type metadata accessor for ConditionDetailDynamicContentIdentifier;
        sub_100955DF4();
        v71 = sub_100031474();
        v23 = sub_1008C90F0(v71, v72);
        v73 = sub_100003B2C();
        sub_100955D9C(v73, v74);
        v60 = v70;
LABEL_12:
        sub_100955D9C(v60, v56);
        goto LABEL_37;
      }

      v87 = type metadata accessor for ConditionDetailDynamicContentIdentifier;
      v88 = v70;
LABEL_29:
      sub_100955D9C(v88, v87);
      goto LABEL_33;
    default:
      sub_100955D38(v49, v45);
      if (sub_100013E60())
      {
        sub_10000E73C();
        v54 = v45;
        v55 = &v114;
LABEL_27:
        v53(v54, *(v55 - 32));
LABEL_33:
        sub_1000180EC(v52, &qword_100CE7A88, &unk_100A9B3D0);
LABEL_34:
        v23 = 0;
      }

      else
      {
        sub_100017170();
        v90 = sub_100049F40();
        v91 = v104;
        v92(v90);
        static WeatherDescription.== infix(_:_:)();
        v93 = sub_10004EDE4();
        (v42)(v93, v91);
        v94 = sub_100031474();
        (v42)(v94, v95);
LABEL_37:
        sub_10001FD8C();
        v86 = v52;
LABEL_38:
        sub_100955D9C(v86, v85);
      }

      return v23 & 1;
  }
}

uint64_t sub_100955D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100955D9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100955DF4()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_100955E50()
{
  result = qword_100CE7A90;
  if (!qword_100CE7A90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB5CA8, &qword_100A494D0);
    v4[0] = sub_100955F04(&qword_100CE7A98, type metadata accessor for ConditionDetailPlatterViewModel.TextSection, byte_100A9B234);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CE7A90);
  }

  return result;
}

uint64_t sub_100955F04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_100955F4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t type metadata accessor for DailyForecastEditorView(uint64_t a1)
{
  result = qword_100CE7AF8;
  if (!qword_100CE7AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100955FD8(uint64_t a1)
{
  sub_100956104(319, &qword_100CA6D20, &qword_100CA6D28, &qword_100A4CEA0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000F4460(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v3 <= 0x3F)
      {
        sub_10013DB50();
        if (v4 <= 0x3F)
        {
          sub_100956104(319, &unk_100CE7B08, &qword_100CDE6B0, &qword_100A9B400, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100956104(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100956184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_10084BCB8(v2, &v15 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100463960(v12, a1);
  }

  static os_log_type_t.fault.getter();
  v14 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v4);
}

void sub_10095632C(unint64_t a1)
{
  v35 = type metadata accessor for Date();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DayWeather();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = (v1 + *(type metadata accessor for DailyForecastEditorView(0) + 36));
  v17 = *v15;
  v16 = v15[1];
  v38._countAndFlagsBits = v17;
  v38._object = v16;
  sub_10022C350(&qword_100CE7B98, &unk_100A9B498);
  State.wrappedValue.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v36 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v31 = v11;
  v32 = a1;
  v33 = v9;
  v18 = *(v9 + 16);
  v19 = v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1;
  v30 = v8;
  v18(v14, v19, v8);

  DayWeather.date.getter();
  v20 = Date.formattedShortMonth(timeZone:)();
  v22 = v21;
  v23 = *(v3 + 8);
  v24 = v35;
  v23(v7, v35);
  v38._countAndFlagsBits = v20;
  v38._object = v22;
  Date.init(timeIntervalSince1970:)();
  DayWeather.date.getter();
  LOBYTE(v22) = Date.isSameDay(as:timeZone:)();
  v23(v7, v24);
  if (v22)
  {
    v25._countAndFlagsBits = 0x297961646F742820;
    v25._object = 0xE800000000000000;
    String.append(_:)(v25);
  }

  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v26 = v31;
  Forecast.subscript.getter();
  sub_100957E08(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  v27 = v30;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v33 + 8);
  v29(v26, v27);
  if ((v28 & 1) == 0)
  {
    v36 = 42;
    v37 = 0xE100000000000000;
    String.append(_:)(v38);
  }

  v23(v34, v35);
  v29(v14, v27);
}

uint64_t sub_100956720@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for DailyForecastEditorView(0);
  v57 = *(v2 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v2 - 8);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1000037C4();
  v58 = v4;
  v59 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v55 = &v47 - v7;
  v8 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CE7B48, &qword_100A9B460);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  sub_10022C350(&qword_100CE7B50, &qword_100A9B468);
  sub_1000037C4();
  v50 = v20;
  v51 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  sub_10022C350(&qword_100CE7B58, &qword_100A9B470);
  sub_1000037C4();
  v52 = v25;
  v53 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v48 = &v47 - v28;
  v61 = v1;
  sub_10022C350(&qword_100CE7B60, &qword_100A9B478);
  sub_100957A04();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100011068();
  v32 = sub_100006F64(v29, v30, &qword_100A9B460, v31);
  View.listStyle<A>(_:)();
  (*(v10 + 8))(v13, v8);
  (*(v16 + 8))(v19, v14);
  LocalizedStringKey.init(stringLiteral:)();
  v62 = v14;
  v63 = v8;
  v64 = v32;
  v65 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v50;
  View.navigationTitle(_:)();

  v36 = v35;
  (*(v51 + 8))(v24, v35);
  LocalizedStringKey.init(stringLiteral:)();
  v37 = v54;
  sub_100957B4C(v49, v54);
  v38 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v39 = swift_allocObject();
  sub_100957BB0(v37, v39 + v38);
  v40 = v55;
  Button<>.init(_:action:)();
  v62 = v36;
  v63 = OpaqueTypeConformance2;
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v41, &qword_100CA5528, &qword_100A2F940, v42);
  v43 = v40;
  v44 = v52;
  v45 = v58;
  View.navigationBarItems<A>(trailing:)();
  (*(v59 + 8))(v43, v45);
  return (*(v53 + 8))(v34, v44);
}

uint64_t sub_100956CB8(uint64_t a1)
{
  v1 = LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)(v1, v3, v2 & 1, v4, 0, 0, 0, 0, 0, 256);
  sub_10022C350(&qword_100CE7B78, &qword_100A9B480);
  sub_100957A9C();
  return Section<>.init(header:content:)();
}

uint64_t sub_100956D84(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastEditorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (a1 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v14 = v8;
  v15 = v7;
  sub_10022C350(&qword_100CE7B98, &unk_100A9B498);
  State.wrappedValue.getter();
  v9 = *(v13[1] + 16);

  v14 = 0;
  v15 = v9;
  swift_getKeyPath();
  sub_100957B4C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_100957BB0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_10022C350(&qword_100CBD760, &unk_100A6AE90);
  sub_10022C350(&qword_100CE7B88, &unk_100A9B488);
  sub_100512BF0();
  sub_100006F64(&qword_100CE7B80, &qword_100CE7B88, &unk_100A9B488, &protocol conformance descriptor for NavigationLink<A, B>);
  return ForEach<>.init(_:id:content:)();
}

void sub_100956F70(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for DailyForecastEditorView(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = v6;
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayWeather();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for DayWeatherEditorView(0);
  __chkstk_darwin(v19);
  v56 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v63 = v5;
  v22 = (a2 + *(v5 + 36));
  v24 = *v22;
  v23 = v22[1];
  v66 = v24;
  v67 = v23;
  v60 = v23;
  v59 = sub_10022C350(&qword_100CE7B98, &unk_100A9B498);
  State.wrappedValue.getter();
  v64 = v21;
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v52 = v24;
  if (v64 >= *(v65 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v50 = v13;
  v51 = v19;
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v26 = v64;
  v27 = *(v11 + 72) * v64;
  v49 = *(v11 + 16);
  v49(v18, v65 + v25 + v27, v10);

  DayWeather.date.getter();
  v48 = *(v11 + 8);
  v48(v18, v10);
  v63 = a2;
  v28 = Date.formattedShortMonth(timeZone:)();
  v47 = v29;
  (*(v61 + 8))(v9, v62);
  v66 = v52;
  v67 = v60;
  State.wrappedValue.getter();
  if (v26 < *(v65 + 16))
  {
    v30 = v28;
    v31 = v49;
    v49(v18, v65 + v25 + v27, v10);

    v32 = v55;
    sub_100957B4C(v63, v55);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v54 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v62 = v35;
    sub_100957BB0(v32, v35 + v33);
    *(v35 + v34) = v64;
    KeyPath = swift_getKeyPath();
    v37 = v56;
    *v56 = KeyPath;
    sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
    swift_storeEnumTagMultiPayload();
    v38 = v51;
    v39 = (v37 + *(v51 + 20));
    v40 = v47;
    *v39 = v30;
    v39[1] = v40;
    v31(v37 + *(v38 + 24), v18, v10);
    v41 = v57;
    v31(v57, v18, v10);
    v31(v50, v41, v10);
    State.init(wrappedValue:)();
    v42 = v48;
    v48(v41, v10);
    v43 = v42(v18, v10);
    v44 = (v37 + *(v38 + 28));
    v45 = v62;
    *v44 = sub_100957D64;
    v44[1] = v45;
    __chkstk_darwin(v43);
    v46 = v64;
    *(&v47 - 2) = v63;
    *(&v47 - 1) = v46;
    sub_100957E08(&qword_100CE7BA0, type metadata accessor for DayWeatherEditorView, a1_36);
    NavigationLink.init(destination:label:)();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100957534(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for DailyForecastEditorView(0);

  sub_10022C350(&qword_100CE7B98, &unk_100A9B498);
  State.wrappedValue.getter();
  v5 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1008FBD78();
  v5 = v7;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a3)
  {
    v6 = type metadata accessor for DayWeather();
    (*(*(v6 - 8) + 24))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a3, a1, v6);
    State.wrappedValue.setter();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100957670@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10095632C(a1);
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1009576D0(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v20 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v19);
  v5 = v17 - v4;
  v6 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for DailyForecastEditorView(0);
  v12 = *(v11 + 36);
  v13 = (a1 + *(v11 + 32));
  v14 = *v13;
  v17[1] = v13[1];
  v18 = v14;
  v17[0] = a1;
  v15 = *(a1 + v12 + 8);
  v21 = *(a1 + v12);
  v22 = v15;
  sub_10022C350(&qword_100CE7B98, &unk_100A9B498);
  State.wrappedValue.getter();
  Forecast.metadata.getter();
  type metadata accessor for DayWeather();
  sub_100957E08(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_100957E08(&qword_100CB0C58, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_100957E08(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  Forecast.init(_:metadata:)();
  v18(v10);
  (*(v8 + 8))(v10, v7);
  sub_100956184(v5);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_100957C74(v5);
}

unint64_t sub_100957A04()
{
  result = qword_100CE7B68;
  if (!qword_100CE7B68)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CE7B60, &qword_100A9B478);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100957A9C();
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE7B68);
  }

  return result;
}

unint64_t sub_100957A9C()
{
  result = qword_100CE7B70;
  if (!qword_100CE7B70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CE7B78, &qword_100A9B480);
    v4[0] = sub_100006F64(&qword_100CE7B80, &qword_100CE7B88, &unk_100A9B488, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CE7B70);
  }

  return result;
}

uint64_t sub_100957B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100957BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastEditorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100957C14()
{
  v1 = *(type metadata accessor for DailyForecastEditorView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1009576D0(v2);
}

uint64_t sub_100957C74(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100957CE4(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DailyForecastEditorView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100956F70(a1, v6, a2);
}

void sub_100957D64(uint64_t a1)
{
  v3 = *(type metadata accessor for DailyForecastEditorView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100957534(a1, v1 + v4, v5);
}

uint64_t sub_100957E08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_100957E50()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  *(v0 + 104) = 0x4074000000000000;
  *(v0 + 112) = 0;
  return 320.0;
}

double sub_100957E74()
{
  qword_100D913E8 = 0;
  result = 0.0;
  xmmword_100D913C8 = 0u;
  unk_100D913D8 = 0u;
  byte_100D913F0 = 1;
  qword_100D913F8 = 0;
  byte_100D91400 = 1;
  xmmword_100D91408 = 0u;
  unk_100D91418 = 0u;
  byte_100D91428 = 1;
  qword_100D91430 = 0;
  byte_100D91438 = 1;
  unk_100D91440 = 0u;
  unk_100D91450 = 0u;
  byte_100D91460 = 1;
  return result;
}

uint64_t sub_100957ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MapComponentView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = (a1 + v2[7]);
  type metadata accessor for ObservableResolver();
  sub_10095B898(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = v2[8];
  *(a1 + v7) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v2[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v2[10];
  *v9 = swift_getKeyPath();
  *(v9 + 72) = 0;
  v10 = a1 + v2[11];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a1 + v2[12];
  State.init(wrappedValue:)();
  *v11 = v13;
  *(v11 + 8) = v14;
  return sub_10019454C();
}

uint64_t sub_10095808C()
{
  type metadata accessor for MapComponentView(0);
  sub_10022C350(&qword_100CE7DD0, &unk_100A9B8C0);
  State.wrappedValue.getter();
  if (v1 != 1)
  {
    return static Color.clear.getter();
  }

  static WeatherMapBackground.backgroundColor(for:)();
  return Color.init(_:)();
}

uint64_t sub_100958114()
{
  sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v17 - v1;
  v3 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for MapComponentViewModel(0);
  sub_100095588();
  v8 = sub_1000162A4();
  if (sub_100024D10(v8, v9, v3) == 1)
  {
    sub_1000180EC(v2, &qword_100CA3898, &qword_100A314D0);
    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    sub_10019454C();
    sub_10022C350(&qword_100CE7E00, &qword_100A9B928);
    v11 = *(sub_10022C350(&qword_100CE7E08, &qword_100A9B930) - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2C3F0;
    v14 = (v13 + v12);
    *v14 = Location.id.getter();
    v14[1] = v15;
    sub_10095BE74();
    v10 = Dictionary.init(dictionaryLiteral:)();
    sub_10095BECC(v7, type metadata accessor for WeatherData);
  }

  return v10;
}

uint64_t sub_100958384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = sub_10022C350(&qword_100CE7D48, &qword_100A9B7F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v95 - v5;
  v105 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v9 - v8);
  v10 = type metadata accessor for MapComponentView(0);
  sub_1000037C4();
  v96 = v11;
  __chkstk_darwin(v12);
  v107 = sub_10022C350(&qword_100CE7D50, &qword_100A9B800);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = (&v95 - v14);
  v100 = sub_10022C350(&qword_100CE7D58, &qword_100A9B808);
  sub_1000037C4();
  v98 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(&v95 - v18);
  v97 = sub_10022C350(&qword_100CE7D60, &qword_100A9B810);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003990(&v95 - v20);
  v99 = sub_10022C350(&qword_100CE7D68, &qword_100A9B818);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  sub_100003990(&v95 - v22);
  v109 = sub_10022C350(&qword_100CE7D70, &qword_100A9B820);
  sub_1000037E8();
  __chkstk_darwin(v23);
  v101 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  sub_100003990(&v95 - v26);
  v27 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v113 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_100003990(v31 - v30);
  v32 = v1 + v10[6];
  v33 = *v32;
  v34 = *(v32 + 8) == 1;
  v112 = a1;
  v111 = v6;
  if (v34)
  {
    if ((v33 & 0x10000) == 0)
    {
LABEL_7:
      *v6 = 0;
      v6[8] = 0;
      swift_storeEnumTagMultiPayload();
      sub_10095B93C();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    v49 = v114;
    os_log(_:dso:log:_:_:)();

    v2 = v1;
    v50 = v113;
    v6 = v111;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v50 + 8))(v49, v27);
    if (BYTE2(__dst[0]) != 1)
    {
      goto LABEL_7;
    }
  }

  v95 = v27;
  v35 = static Color.clear.getter();
  v36 = v15 + *(sub_10022C350(&qword_100CE7DA8, &qword_100A9B830) + 36);
  KeyPath = swift_getKeyPath();
  v118 = 0;
  *v36 = KeyPath;
  v36[72] = 0;
  ShouldShowMapModifier = type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0);
  v39 = *(ShouldShowMapModifier + 20);
  *&v36[v39] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v40 = &v36[*(ShouldShowMapModifier + 24)];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *v15 = v35;
  sub_10095BE74();
  v41 = swift_allocObject();
  sub_10019454C();
  v42 = static Alignment.center.getter();
  v43 = (v15 + *(v107 + 36));
  *v43 = sub_10095BDE8;
  v43[1] = v41;
  v43[2] = v42;
  v43[3] = v44;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v116 = 0xD000000000000010;
  v117 = 0x8000000100AD7220;
  type metadata accessor for MapComponentViewModel(0);
  v45._countAndFlagsBits = Location.id.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 45;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v10[10];
  memcpy(__dst, (v2 + v47), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v2 + v47), sizeof(__src));
  }

  else
  {

    v52 = static os_log_type_t.fault.getter();
    v53 = static Log.runtimeIssuesLog.getter();
    sub_100028E34(v52, &_mh_execute_header, v54, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
    v55 = sub_100004F10();
    v56(v55);
  }

  memcpy(v120, __src, sizeof(v120));
  v57._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v57);

  v58 = v116;
  v59 = v117;
  v96 = v10;
  v60 = v2 + v10[9];
  v61 = *v60;
  v62 = *(v60 + 8);
  if (*(v60 + 9) == 1)
  {
    if ((v62 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v63 = static os_log_type_t.fault.getter();
  v64 = static Log.runtimeIssuesLog.getter();
  sub_100028E34(v63, &_mh_execute_header, v65, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100109A3C(v61, v62, 0);
  v66 = sub_100004F10();
  v67(v66);
  if (LOBYTE(__src[1]) == 1)
  {
LABEL_13:
    Namespace.wrappedValue.getter();
  }

LABEL_14:
  v68 = sub_10095808C();
  __src[0] = v58;
  __src[1] = v59;
  __chkstk_darwin(v68);
  sub_10022C350(&qword_100CE7D90, &qword_100A9B828);
  sub_10095BC00();
  v69 = sub_10022E824(&qword_100CBA9F0, &unk_100A503E0);
  v116 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
  v117 = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = v69;
  v117 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.matchedTransitionSource<A, B>(id:in:configuration:)();

  sub_1000180EC(v15, &qword_100CE7D50, &qword_100A9B800);

  v71 = static Edge.Set.horizontal.getter();
  v72 = v2 + v96[5];
  v73 = *v72;
  if (*(v72 + 8) != 1)
  {

    v74 = static os_log_type_t.fault.getter();
    v75 = static Log.runtimeIssuesLog.getter();
    sub_100028E34(v74, &_mh_execute_header, v76, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    v77 = v114;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v73, 0);
    (*(v113 + 8))(v77, v95);
  }

  EdgeInsets.init(_all:)();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v103;
  (*(v98 + 32))(v103, v108, v100);
  v87 = v86 + *(v97 + 36);
  *v87 = v71;
  *(v87 + 8) = v79;
  *(v87 + 16) = v81;
  *(v87 + 24) = v83;
  *(v87 + 32) = v85;
  *(v87 + 40) = 0;
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  v89 = v106;
  (*(v88 + 16))(v106, v2);
  type metadata accessor for AutomationCellInfo(0);
  sub_1000201F8();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v90 = v102 + *(v99 + 36);
  type metadata accessor for AutomationInfoProperty(0);
  sub_10095BE74();
  sub_10095BECC(v89, type metadata accessor for AutomationInfo);
  *v90 = 0;
  *(v90 + 8) = 0xE000000000000000;
  *(v90 + 16) = swift_getKeyPath();
  *(v90 + 24) = 0;
  sub_100051BBC();
  v91 = swift_getKeyPath();
  v92 = v101;
  sub_100051BBC();
  v93 = &v92[*(v109 + 36)];
  *v93 = v91;
  v93[8] = 0;
  v94 = v104;
  sub_100051BBC();
  sub_100223098();
  swift_storeEnumTagMultiPayload();
  sub_10095B93C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000180EC(v94, &qword_100CE7D70, &qword_100A9B820);
}

uint64_t sub_1009590A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MapComponentViewModel(0);
  __chkstk_darwin(v6);
  v96 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CBEDF0, &unk_100A56650);
  __chkstk_darwin(v8 - 8);
  v84 = &v74 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapDisplayMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for WeatherMap();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v86 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CE7DD8, &qword_100A9B8D0);
  v93 = *(v19 - 8);
  v94 = v19;
  __chkstk_darwin(v19);
  v88 = &v74 - v20;
  v92 = sub_10022C350(&qword_100CE7DE0, &qword_100A9B8D8);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v87 = &v74 - v21;
  v85 = sub_10022C350(&qword_100CE7DE8, &qword_100A9B8E0);
  __chkstk_darwin(v85);
  v91 = &v74 - v22;
  v23 = sub_10022C350(&qword_100CE7DF0, &qword_100A9B8E8);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  if (*a1 == 1)
  {
    v79 = v11;
    v80 = &v74 - v26;
    v81 = v27;
    v82 = v25;
    v83 = a3;
    v28 = *(sub_10022C350(&qword_100CBEDF8, &qword_100A9B8F0) + 48);
    v29 = enum case for WeatherMapDisplayMode.SnapshotSizingBehavior.autoSizing(_:);
    v30 = type metadata accessor for WeatherMapDisplayMode.SnapshotSizingBehavior();
    (*(*(v30 - 8) + 104))(v17, v29, v30);
    if (qword_100CA21B8 != -1)
    {
      swift_once();
    }

    *&v17[v28] = qword_100D90340;
    (*(v15 + 104))(v17, enum case for WeatherMapDisplayMode.snapshot(_:), v14);
    v78 = type metadata accessor for MapComponentView(0);
    v31 = a2 + *(v78 + 44);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (*(v31 + 17) == 1)
    {
      v77 = *v31;
      v76 = v33;
      v75 = v34;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1004BFF94(v32, v33, v34, 0);
      (*(v79 + 8))(v13, v10);
      v77 = v103;
      v76 = v104;
      v75 = BYTE8(v104);
    }

    sub_10022C350(&qword_100CBEE00, &qword_100A56660);
    v37 = type metadata accessor for Location();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100A2C3F0;
    v41 = *(v6 + 20);
    (*(v38 + 16))(v40 + v39, a2 + v41, v37);
    type metadata accessor for WeatherMapOverlayKind();
    static Binding.constant(_:)();
    v107 = Location.id.getter();
    v108 = v42;
    sub_10022C350(&qword_100CA6078, &unk_100A30870);
    static Binding.constant(_:)();

    v74 = v104;
    sub_100958114();
    type metadata accessor for WeatherData(0);
    type metadata accessor for WeatherDataModel();
    Dictionary.mapKeysAndValues<A, B>(_:)();

    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v107 = 0xD000000000000013;
    v108 = 0x8000000100AE6DD0;
    v79 = v41;
    v43._countAndFlagsBits = Location.name.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 93;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = v86;
    WeatherMap.init(displayMode:startsFocused:preferredMapSize:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:)();
    v46 = v78;
    v47 = *(a2 + *(v78 + 28));
    if (v47)
    {
      sub_10095BE74();
      v48 = (a2 + *(v46 + 48));
      v49 = *v48;
      v50 = *(v48 + 1);
      LOBYTE(v107) = v49;
      v108 = v50;
      swift_retain_n();
      sub_10022C350(&qword_100CE7DD0, &unk_100A9B8C0);
      State.projectedValue.getter();
      v51 = v103;
      v52 = v104;
      v53 = BYTE8(v104);
      v54 = type metadata accessor for MapComponentWeatherMapDelegate(0);
      v55 = swift_allocObject();
      v55[5] = type metadata accessor for ObservableResolver();
      v55[6] = &protocol witness table for ObservableResolver;
      v55[2] = v47;
      sub_10019454C();
      v56 = v55 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState;
      *v56 = v51;
      *(v56 + 1) = v52;
      v56[16] = v53;

      v105 = v54;
      v106 = sub_10095B898(&qword_100CE7DF8, type metadata accessor for MapComponentWeatherMapDelegate);
      v103 = v55;
      v57 = sub_10095B898(&qword_100CBEDD8, &type metadata accessor for WeatherMap);
      v58 = v88;
      v59 = v95;
      View.delegate(_:)();
      (*(v89 + 8))(v45, v59);
      sub_100006F14(&v103);
      v107 = v59;
      v108 = v57;
      swift_getOpaqueTypeConformance2();
      v60 = v87;
      v61 = v94;
      View.systemColorScheme()();
      (*(v93 + 8))(v58, v61);
      static UnitPoint.center.getter();
      v62 = static AnyTransition.scale(scale:anchor:)();
      v63 = v91;
      (*(v90 + 32))(v91, v60, v92);
      *&v63[*(v85 + 36)] = v62;
      v64 = Location.id.getter();
      v66 = v65;
      KeyPath = swift_getKeyPath();
      v68 = swift_getKeyPath();
      v69 = swift_getKeyPath();
      v97 = 0;
      v102 = 0;
      v99 = 0;
      v70 = v81;
      sub_100051BBC();
      v71 = v82;
      v72 = v70 + *(v82 + 36);
      *v72 = KeyPath;
      *(v72 + 8) = 0;
      *(v72 + 9) = v102;
      *(v72 + 10) = v100;
      *(v72 + 14) = v101;
      *(v72 + 16) = v68;
      *(v72 + 24) = v99;
      *(v72 + 25) = v107;
      *(v72 + 28) = *(&v107 + 3);
      *(v72 + 32) = v69;
      *(v72 + 104) = 0;
      *(v72 + 108) = *&v98[3];
      *(v72 + 105) = *v98;
      *(v72 + 112) = v64;
      *(v72 + 120) = v66;
      sub_100051BBC();
      v73 = v83;
      sub_100051BBC();
      return sub_10001B350(v73, 0, 1, v71);
    }

    else
    {
      type metadata accessor for ObservableResolver();
      sub_10095B898(&qword_100CB0468, &type metadata accessor for ObservableResolver);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v25);
  }

  return result;
}

uint64_t sub_100959D88(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a2, 0);
    (*(v6 + 8))(v8, v5);
  }

  sub_10022C350(&qword_100CE7EC8, &qword_100A9BCE0);
  sub_10006768C(&qword_100CE7ED0, &qword_100CE7EC8, &qword_100A9BCE0);
  return View.weatherMapShouldSuspendSnapshotUpdates(_:)();
}

uint64_t sub_100959F40()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_10095B898(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
      v20(v9, v0);
      sub_1000180EC(v6, &qword_100CA6028, &qword_100A40610);
      return v17 & 1;
    }

    sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
  sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000180EC(v6, &qword_100CA64E8, &unk_100A46060);
    v17 = 0;
    return v17 & 1;
  }

  sub_1000180EC(v6, &qword_100CA6028, &qword_100A40610);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10095A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, v2, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v18, v2, sizeof(v18));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v6 + 8))(v8, v5);
  }

  if (v18[49] == 3)
  {
    v10 = &v2[*(type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier(0) + 24)];
    v11 = *v10;
    if (v10[8] == 1)
    {
      v12 = *v10;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v11, 0);
      (*(v6 + 8))(v8, v5);
      v12 = v18[0];
    }

    if ((v12 & 0xC0) == 0x40)
    {
      v13 = sub_100959F40();
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_10022C350(&qword_100CE7EB8, &qword_100A9BCC8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = sub_10022C350(&qword_100CE7EC0, &unk_100A9BCD0);
  *(a2 + *(result + 36)) = v13 & 1;
  return result;
}

char *sub_10095A634(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_10095A684()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 4);
  v5 = *v0;
  v9 = *v0;
  if (HIBYTE(v10) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v9, &qword_100CE7EE8, &qword_100A9BCF8);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t sub_10095A7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v31 = 0xD000000000000010;
  v32 = 0x8000000100AD7220;
  String.append(_:)(*(v2 + 112));
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  memcpy(__dst, (v2 + 32), 0x49uLL);
  if (__dst[9])
  {
    *&__src[1] = *(v2 + 40);
    *&__src[3] = *(v2 + 56);
    *&__src[5] = *(v2 + 72);
    *&__src[7] = *(v2 + 88);
    __src[0] = __dst[0];
  }

  else
  {
    sub_100095588();
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CD9F98, &qword_100A84FF8);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(v29, __src, sizeof(v29));
  v11._countAndFlagsBits = sub_10012EC4C();
  String.append(_:)(v11);

  v12 = v31;
  v13 = v32;
  v14 = sub_10095A684();
  if (v15)
  {
    v14 = Namespace.wrappedValue.getter();
  }

  v16 = v14;
  LOBYTE(__src[1]) = *(v3 + 24);
  v17 = *(v3 + 16);
  __src[0] = v17;
  if (LOBYTE(__src[1]) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__src, &qword_100CB91B8, &qword_100A4DA50);
    (*(v6 + 8))(v8, v5);
    if (v31 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v18 = static MatchedGeometryProperties.frame.getter();
    goto LABEL_11;
  }

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = 0;
LABEL_11:
  static UnitPoint.center.getter();
  v21 = v20;
  v23 = v22;
  v24 = sub_10022C350(&qword_100CE7ED8, &qword_100A9BCE8);
  (*(*(v24 - 8) + 16))(a2, v28, v24);
  result = sub_10022C350(&qword_100CE7EE0, &qword_100A9BCF0);
  v26 = a2 + *(result + 36);
  *v26 = v12;
  *(v26 + 8) = v13;
  *(v26 + 16) = v16;
  *(v26 + 24) = v18;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;
  *(v26 + 48) = 1;
  return result;
}

uint64_t sub_10095AC10(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMap.Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100040690();
  v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10095B834;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C77290;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10095B898(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

void *sub_10095AFC0(void *a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for WeatherMap.Event();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for WeatherMapPurpose();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Location.Identifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1 + 2, a1[5]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v39)
  {
    sub_10003E2A0(&v37, v40);
    type metadata accessor for MapComponentViewModel(0);
    Location.identifier.getter();
    v14 = Location.Identifier.id.getter();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    sub_1000161C0(v40, v41);
    v31 = v14;
    *v8 = v14;
    v8[1] = v16;
    v17 = v32;
    (*(v6 + 104))(v8, enum case for WeatherMapPurpose.snapshot(_:), v32);

    v18 = sub_100404FD8();
    __chkstk_darwin(v18);
    v19 = v33;
    v28 = v33;
    v29 = v8;
    sub_10051ACEC(sub_10095B8DC, (&v30 - 4), v18);

    (*(v6 + 8))(v8, v17);
    v21 = v34;
    v20 = v35;
    (*(v34 + 16))(v5, v19, v35);
    v22 = (*(v21 + 88))(v5, v20);
    if (v22 == enum case for WeatherMap.Event.didFinishLoading(_:))
    {
      (*(v21 + 96))(v5, v20);
      v23 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 8);
      v24 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 16);
      if (*v5 == 1)
      {
        *&v37 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
        *(&v37 + 1) = v23;
        v38 = v24;
        v25 = 1;
      }

      else
      {
        *&v37 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
        *(&v37 + 1) = v23;
        v38 = v24;
        v25 = 2;
      }

      v36 = v25;
      sub_10022C350(&qword_100CE7C88, &qword_100A9B668);
      Binding.wrappedValue.setter();
      sub_1000161C0(v40, v41);
      sub_100194F6C(v31, v16);
      goto LABEL_9;
    }

    if (v22 == enum case for WeatherMap.Event.overlay(_:))
    {

      (*(v21 + 8))(v5, v20);
      return sub_100006F14(v40);
    }

    if (v22 == enum case for WeatherMap.Event.willStartLoading(_:))
    {

      v26 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 8);
      v27 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState + 16);
      *&v37 = *(a1 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate__loadingState);
      *(&v37 + 1) = v26;
      v38 = v27;
      v36 = 0;
      sub_10022C350(&qword_100CE7C88, &qword_100A9B668);
      Binding.wrappedValue.setter();
      return sub_100006F14(v40);
    }

    if (v22 == enum case for WeatherMap.Event.loadingWasInterruptedByUserInteraction(_:))
    {
LABEL_9:

      return sub_100006F14(v40);
    }

    LODWORD(v29) = 0;
    v28 = 230;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10095B4EC()
{
  sub_100006F14((v0 + 16));
  sub_10095BECC(v0 + OBJC_IVAR____TtC7WeatherP33_C14BAF130D1FBB6553AE19180CC1F33830MapComponentWeatherMapDelegate_model, type metadata accessor for MapComponentViewModel);

  return v0;
}

uint64_t sub_10095B554()
{
  sub_10095B4EC();

  return swift_deallocClassInstance();
}

uint64_t sub_10095B5D0(uint64_t a1)
{
  result = type metadata accessor for MapComponentViewModel(319);
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

_BYTE *storeEnumTagSinglePayload for MapComponentLoadingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10095B754()
{
  result = qword_100CE7C78;
  if (!qword_100CE7C78)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for MapComponentLoadingState, v0, v1);
    atomic_store(result, &qword_100CE7C78);
  }

  return result;
}

void *sub_10095B834()
{
  v1 = *(type metadata accessor for WeatherMap.Event() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10095AFC0(v2, v3);
}

uint64_t sub_10095B898(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10095B93C()
{
  result = qword_100CE7D78;
  if (!qword_100CE7D78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7D70, &qword_100A9B820);
    v4[0] = sub_10095B9C8();
    v4[1] = sub_10095BD94();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7D78);
  }

  return result;
}

unint64_t sub_10095B9C8()
{
  result = qword_100CE7D80;
  if (!qword_100CE7D80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7D68, &qword_100A9B818);
    v4[0] = sub_10095BA84();
    v4[1] = sub_10095B898(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7D80);
  }

  return result;
}

unint64_t sub_10095BA84()
{
  result = qword_100CE7D88;
  if (!qword_100CE7D88)
  {
    v7[14] = v0;
    v7[15] = v1;
    v3 = sub_10022E824(&qword_100CE7D60, &qword_100A9B810);
    v4 = sub_10022E824(&qword_100CE7D50, &qword_100A9B800);
    v5 = sub_10022E824(&qword_100CE7D90, &qword_100A9B828);
    v6 = sub_10095BC00();
    sub_10022E824(&qword_100CBA9F0, &unk_100A503E0);
    type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
    swift_getOpaqueTypeConformance2();
    v7[2] = v4;
    v7[3] = &type metadata for String;
    v7[4] = v5;
    v7[5] = v6;
    v7[6] = &protocol witness table for String;
    v7[7] = swift_getOpaqueTypeConformance2();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v7);
    atomic_store(result, &qword_100CE7D88);
  }

  return result;
}

unint64_t sub_10095BC00()
{
  result = qword_100CE7D98;
  if (!qword_100CE7D98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7D50, &qword_100A9B800);
    v4[0] = sub_10095BCB8();
    v4[1] = sub_10006768C(&qword_100CE7DB8, &qword_100CE7DC0, &unk_100A9B838);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7D98);
  }

  return result;
}

unint64_t sub_10095BCB8()
{
  result = qword_100CE7DA0;
  if (!qword_100CE7DA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7DA8, &qword_100A9B830);
    v4[0] = &protocol witness table for Color;
    v4[1] = sub_10095B898(&qword_100CE7DB0, type metadata accessor for DetermineWhetherMapComponentShouldShowMapModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7DA0);
  }

  return result;
}

unint64_t sub_10095BD94()
{
  result = qword_100CE7DC8;
  if (!qword_100CE7DC8)
  {
    result = swift_getWitnessTable(byte_100A9BC28, &type metadata for SkipUpdatingMapSnapshotDuringInteractiveResizeModifier, v0, v1);
    atomic_store(result, &qword_100CE7DC8);
  }

  return result;
}

uint64_t sub_10095BDE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapComponentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1009590A0(a1, v6, a2);
}

uint64_t sub_10095BE74()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10095BECC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10095BF40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_10095BF80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10095C028(uint64_t a1)
{
  sub_10009C0C0(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10010F438(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610);
    if (v2 <= 0x3F)
    {
      sub_10009C0C0(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10095C124()
{
  result = qword_100CE7EA8;
  if (!qword_100CE7EA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7EB0, qword_100A9BB88);
    v4[0] = sub_10095B93C();
    v4[1] = &protocol witness table for Spacer;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7EA8);
  }

  return result;
}

unint64_t sub_10095C204()
{
  result = qword_100CE7EF0;
  if (!qword_100CE7EF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7EC0, &unk_100A9BCD0);
    v4[0] = sub_10006768C(&qword_100CE7EF8, &qword_100CE7EB8, &qword_100A9BCC8);
    v4[1] = sub_10006768C(&qword_100CE7F00, &qword_100CE7F08, &unk_100A9BD00);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7EF0);
  }

  return result;
}

unint64_t sub_10095C2E8()
{
  result = qword_100CE7F10;
  if (!qword_100CE7F10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE7EE0, &qword_100A9BCF0);
    v4[0] = sub_10006768C(&qword_100CE7F18, &qword_100CE7ED8, &qword_100A9BCE8);
    v4[1] = sub_10006768C(&qword_100CB3460, &qword_100CB3468, &qword_100A45EA8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE7F10);
  }

  return result;
}

char *sub_10095C3CC()
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  sub_1000037C4();
  __chkstk_darwin(v5);
  v6 = sub_100075330();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002820C();
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  sub_100017D24();
  __chkstk_darwin(v12);
  v13 = sub_100004F2C();
  v14(v13);
  v15 = sub_10000810C();
  v17 = v16(v15);
  if (v17 != enum case for MoonRiseSetEvent.today(_:))
  {
    if (v17 == enum case for MoonRiseSetEvent.tomorrow(_:))
    {
      v24 = sub_100011084();
      v25(v24);
      sub_100069CA0();
      v26();
      (*(v8 + 16))(v0, v2, v6);
      sub_10004EDF4();
      v27 = sub_100003B2C();
      v29 = v28(v27);
      if (v29 == enum case for MoonRiseSet.rise(_:))
      {
        v4 = ".: 'Moonset: 10:43am'";
        v30 = [objc_opt_self() mainBundle];
        sub_100013F14();
        v32 = v31 | 1;
        v33 = 0x8000000100AE6F40;
        v34 = v31 + 151;
      }

      else
      {
        if (v29 != enum case for MoonRiseSet.set(_:))
        {
          v52 = *(v8 + 8);
          v53 = sub_1000046B4();
          v52(v53);
          v54 = sub_100003B2C();
          v52(v54);
          return 0;
        }

        v4 = "hen the moon rises.";
        v46 = [objc_opt_self() mainBundle];
        sub_100013F14();
        v33 = 0x8000000100AE6E70;
        v34 = v47 + 149;
        v32 = 0xD000000000000010;
      }

      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, 0, v1, v48, *(&v56 - 1));
      sub_100006C00();

      v49 = *(v8 + 8);
      v50 = sub_1000046B4();
      v49(v50);
      v51 = sub_100003B2C();
      v49(v51);
      return v4;
    }

    if (v17 != enum case for MoonRiseSetEvent.future(_:))
    {
      v42 = sub_10000810C();
      v43(v42);
      return 0;
    }
  }

  v18 = sub_100011084();
  v19(v18);
  v20 = *(v8 + 32);
  sub_100069CA0();
  v20();
  (v20)(v1, v3, v6);
  sub_10004EDF4();
  v21 = sub_1000053B8();
  v23 = v22(v21);
  if (v23 != enum case for MoonRiseSet.rise(_:) && v23 != enum case for MoonRiseSet.set(_:))
  {
    v44 = sub_1000053B8();
    v45(v44);
    return 0;
  }

  v35 = [objc_opt_self() mainBundle];
  sub_100023590();
  sub_1000080F4();
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v38, v39, *(&v56 - 1));
  sub_100006C00();

  v40 = sub_1000053B8();
  v41(v40);
  return v4;
}

uint64_t sub_10095C874()
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  sub_1000037C4();
  __chkstk_darwin(v5);
  v6 = sub_100075330();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10002820C();
  __chkstk_darwin(v10);
  sub_100017D24();
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v13 = sub_100004F2C();
  v14(v13);
  v15 = sub_10000810C();
  v17 = v16(v15);
  if (v17 != enum case for MoonRiseSetEvent.today(_:))
  {
    if (v17 == enum case for MoonRiseSetEvent.tomorrow(_:))
    {
      v33 = sub_100011084();
      v34(v33);
      sub_100069CA0();
      v35();
      (*(v8 + 16))(v0, v1, v6);
      sub_10004EDF4();
      v36 = sub_100003B2C();
      v38 = v37(v36);
      if (v38 == enum case for MoonRiseSet.rise(_:))
      {
        v4 = 0x8000000100AE6E30;
        v39 = [objc_opt_self() mainBundle];
        v40 = sub_100009330();
        v41 = 0xED0000657369726ELL;
        v43 = v42 + 7;
      }

      else
      {
        if (v38 != enum case for MoonRiseSet.set(_:))
        {
          v56 = *(v8 + 8);
          v57 = sub_1000053B8();
          v56(v57);
          v58 = sub_100003B2C();
          v56(v58);
          return 0;
        }

        v4 = 0x8000000100AE6DF0;
        v50 = [objc_opt_self() mainBundle];
        v40 = sub_100009330();
        v41 = 0xEC0000007465736ELL;
        v43 = v51 + 6;
      }

      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v40, 0, v2, v52, *(&v61 - 1));
      sub_100006C00();

      v53 = *(v8 + 8);
      v54 = sub_1000053B8();
      v53(v54);
      v55 = sub_100003B2C();
      v53(v55);
      return v4;
    }

    if (v17 != enum case for MoonRiseSetEvent.future(_:))
    {
      v46 = sub_10000810C();
      v47(v46);
      return 0;
    }
  }

  v18 = sub_100011084();
  v19(v18);
  v20 = *(v8 + 32);
  sub_100069CA0();
  v20();
  (v20)(v2, v3, v6);
  sub_10004EDF4();
  v21 = sub_1000046B4();
  v23 = v22(v21);
  if (v23 != enum case for MoonRiseSet.rise(_:))
  {
    if (v23 == enum case for MoonRiseSet.set(_:))
    {
      v24 = [objc_opt_self() mainBundle];
      v60 = 0x8000000100AE56F0;
      sub_1000080F4();
      v32 = 0xD00000000000002CLL;
      goto LABEL_9;
    }

    v48 = sub_1000046B4();
    v49(v48);
    return 0;
  }

  v24 = [objc_opt_self() mainBundle];
  v60 = 0x8000000100AE56A0;
  sub_1000080F4();
LABEL_9:
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, *&v27, v29, *&v30, *&v32);
  sub_100006C00();

  v44 = sub_1000046B4();
  v45(v44);
  return v4;
}

uint64_t sub_10095CD24()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v27 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v25 = v8;
  v26 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  sub_100040690();
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v14 + 8);
  v24(v17, v12);
  aBlock[4] = sub_10095D9DC;
  v29 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C77450;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v27 + 8))(v6, v1);
  (*(v25 + 8))(v11, v26);
  return (v24)(v20, v12);
}

uint64_t sub_10095D050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v53 = v7;
  v54 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = (v18 - v17);
  sub_100040690();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = _dispatchPreconditionTest(_:)();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  v22(v19, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  v51 = v9;
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(v3 + 40);

  v24 = sub_100879F64(a1, a2, v23);
  v26 = v25;

  if (v26)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24;
  }

  v50 = a2;
  a2 = a1;
  if (qword_100CA2710 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v27 = qword_100D90B98;
  v55 = qword_100D90B98;
  OSSignpostID.init(_:)();
  v28 = static os_signpost_type_t.begin.getter();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v29 = swift_allocObject();
  v49 = v21;
  v30 = v29;
  *(v29 + 16) = xmmword_100A2D320;
  v31 = v12;
  v33 = *(v3 + 16);
  v32 = *(v3 + 24);
  *(v29 + 56) = &type metadata for String;
  v34 = sub_100035744();
  v30[4] = v33;
  v30[5] = v32;
  v30[12] = &type metadata for String;
  v30[13] = v34;
  v30[8] = v34;
  v30[9] = a2;
  v35 = v50;
  v30[10] = v50;

  os_signpost(_:dso:log:name:signpostID:_:_:)(v28, &_mh_execute_header, v27, "WireframeInterest", 17, 2, v12, "%{public} - %{public}s", 22, 2, v30);

  v36 = v52;
  v37 = v53;
  v38 = *(v53 + 16);
  v48 = v31;
  v39 = v54;
  v38(v52, v31, v54);
  v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v41 = (v51 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v55;
  (*(v37 + 32))(v42 + v40, v36, v39);
  *(v42 + v41) = v3;
  v43 = (v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v43 = a2;
  v43[1] = v35;
  type metadata accessor for WireframeInterestToken();
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = sub_10095D93C;
  *(result + 24) = v42;
  if (v49 == -1)
  {
    __break(1u);
  }

  else
  {
    v45 = result;
    swift_beginAccess();

    v46 = v55;

    swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v3 + 40);
    sub_100239434();
    *(v3 + 40) = v56;
    swift_endAccess();
    dispatch_group_enter(*(v3 + 32));
    (*(v37 + 8))(v48, v39);
    return v45;
  }

  return result;
}

void sub_10095D4C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  v13 = a3[2];
  v12 = a3[3];
  *(v11 + 56) = &type metadata for String;
  v14 = sub_100035744();
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v14;
  *(v11 + 64) = v14;
  *(v11 + 72) = a4;
  *(v11 + 80) = a5;

  v16 = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v10, &_mh_execute_header, a1, "WireframeInterest", 17, 2, a2, "%{public}s - %{public}s", 23, v16, v11);

  v15 = a3[4];

  dispatch_group_leave(v15);
}

void sub_10095D5E4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_100040690();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    v10 = static OS_dispatch_queue.main.getter();
    OS_dispatch_group.notifySyncIfEmpty(queue:block:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10095D714()
{

  return v0;
}

uint64_t sub_10095D744()
{
  sub_10095D714();

  return swift_deallocClassInstance();
}

uint64_t sub_10095D7E8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_100040690();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      result = (*(v1 + 16))(result);
      *(v1 + 32) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10095D904()
{

  return swift_deallocClassInstance();
}

void sub_10095D93C()
{
  v1 = *(type metadata accessor for OSSignpostID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_10095D4C0(v4, v0 + v2, v5, v7, v8);
}

void sub_10095D9E0(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = qword_100CE80C8;
  swift_beginAccess();
  sub_1000E594C(v1 + v9, v8);
  v10 = type metadata accessor for URL();
  if (sub_100024D10(v8, 1, v10) == 1)
  {
    sub_1000E6774(v8);
    sub_10095DB8C();
    (*(*(v10 - 8) + 16))(v5, a1, v10);
    sub_10001B350(v5, 0, 1, v10);
    swift_beginAccess();
    sub_10032A9F8(v5, v1 + v9);
    swift_endAccess();
  }

  else
  {
    (*(*(v10 - 8) + 32))(a1, v8, v10);
  }
}

uint64_t sub_10095DB8C()
{
  v0 = type metadata accessor for URL();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v25[-v7];
  v9 = WDWeatherLibraryDirectory();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [objc_opt_self() mainBundle];
  sub_1000380CC(v10);
  if (v11)
  {
    URL.appendingPathComponent(_:isDirectory:)();

    v12 = objc_opt_self();
    v13 = [v12 defaultManager];
    URL.path.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 fileExistsAtPath:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [v12 defaultManager];
      URL._bridgeToObjectiveC()(v17);
      v19 = v18;
      v26 = 0;
      v20 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v26];

      if (v20)
      {
        v21 = v26;
      }

      else
      {
        v23 = v26;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    sub_10001D330();
    URL.appendingPathComponent(_:)();
    v24 = *(v2 + 8);
    v24(v5, v0);
    return (v24)(v8, v0);
  }

  else
  {
    sub_10001D330();
    URL.appendingPathComponent(_:)();
    return (*(v2 + 8))(v8, v0);
  }
}

void sub_10095DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    v12 = 0;
    v9 = [v3 removeItemAtURL:v7 error:&v12];

    if (v9)
    {
      v10 = v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  Data.write(to:options:)();
}

void sub_10095DFCC(uint64_t a1)
{
  v2 = *v1;
  v3 = type metadata accessor for URL();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  UnfairLock.lock()();
  if (*(v1 + 16) == 1)
  {
    *(v1 + qword_100CE80E0) = 1;
    type metadata accessor for BinaryEncoder();
    v12 = v2[6];
    v38[0] = v2[5];
    v38[1] = v12;
    v38[2] = v2[7];
    v13 = type metadata accessor for StatePersistenceData(0, v38);
    swift_getWitnessTable(asc_100A913D0, v13);
    swift_getWitnessTable(a9_0, v13);
    v14 = static BinaryEncoder.encode<A>(_:)();
    v37 = v5;
    v16 = v15;
    v17 = v14;
    v18 = *(v1 + qword_100CE80F0);

    sub_10095D9E0(v11);
    v18(v17, v16, v11);
    v36 = *(v37 + 8);
    v37 += 8;
    v36(v11, v3);

    if (qword_100CA26E0 != -1)
    {
      sub_100019C5C(&qword_100CA26E0);
    }

    v19 = type metadata accessor for Logger();
    sub_10000703C(v19, qword_100D90B08);
    v20 = v17;
    v21 = v17;
    v22 = v16;
    sub_1006DE088(v21, v16);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v38[0] = v35;
      *v25 = 134349314;
      v26 = 0;
      switch(v22 >> 62)
      {
        case 1uLL:
          LODWORD(v26) = HIDWORD(v20) - v20;
          if (!__OFSUB__(HIDWORD(v20), v20))
          {
            v26 = v26;
            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_18;
        case 2uLL:
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (!v29)
          {
            goto LABEL_15;
          }

LABEL_18:
          __break(1u);
          return;
        case 3uLL:
          goto LABEL_15;
        default:
          v26 = BYTE6(v22);
LABEL_15:
          *(v25 + 4) = v26 / 1024;
          sub_10030F778(v20, v22);
          *(v25 + 12) = 2082;
          sub_10095D9E0(v8);
          sub_10095E6B4();
          v30 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v31;
          v36(v8, v3);
          v33 = sub_100078694(v30, v32, v38);

          *(v25 + 14) = v33;
          _os_log_impl(&_mh_execute_header, v23, v24, "Save state to disk with size %{public}ld kb to file %{public}s", v25, 0x16u);
          v34 = v35;
          sub_100006F14(v35);
          sub_100003884(v34);
          sub_100003884(v25);
          goto LABEL_16;
      }
    }

    sub_10030F778(v20, v22);
LABEL_16:
    sub_10030F778(v20, v22);

    sub_10095E578();
  }

  else
  {

    sub_10095E578();
  }
}

uint64_t sub_10095E5A4()
{
  sub_1000E6774(v0 + qword_100CE80C8);
  sub_1003B3404(*(v0 + qword_100CE80D8), *(v0 + qword_100CE80D8 + 8));

  return v0;
}

uint64_t sub_10095E618()
{
  sub_10095E5A4();

  return swift_deallocClassInstance();
}

unint64_t sub_10095E6B4()
{
  result = qword_100CA5728;
  if (!qword_100CA5728)
  {
    v3 = type metadata accessor for URL();
    result = swift_getWitnessTable(&protocol conformance descriptor for URL, v3, v0, v1);
    atomic_store(result, &qword_100CA5728);
  }

  return result;
}

uint64_t sub_10095E70C(uint64_t a1)
{
  v168 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v171 = v3;
  v4 = sub_1000038CC();
  v184 = type metadata accessor for TimeState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v170 = v6;
  v7 = sub_1000038CC();
  v182 = type metadata accessor for NotificationsOptInState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v188 = v9;
  v10 = sub_1000038CC();
  v181 = type metadata accessor for NotificationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v169 = v12;
  v13 = sub_1000038CC();
  v179 = type metadata accessor for LocationsState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v187 = v15;
  v16 = sub_1000038CC();
  v177 = type metadata accessor for EnvironmentState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v186 = v18;
  v19 = sub_1000038CC();
  v162 = type metadata accessor for AppConfigurationState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v185 = v21;
  v22 = sub_1000038CC();
  v159 = type metadata accessor for ModalViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v183 = v26;
  sub_1000038CC();
  v158 = type metadata accessor for UUID();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v28 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v33 = v32;
  v34 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_10000E70C();
  v180 = v37;
  v38 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v178 = v41;
  v42 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v176 = v45;
  v46 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  v175 = v49;
  v50 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  v174 = v53;
  v54 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  v57 = &v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  sub_10000E70C();
  v173 = v59;
  v60 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  v63 = &v153 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v153 - v65;
  v164 = a1;

  v68 = sub_10095F5A0(v67, sub_10095FE60, sub_10095FE60);

  v70 = sub_10095F5A0(v69, sub_10095F71C, sub_10095F71C);
  v172 = v68;
  sub_1000BCFBC();
  v72 = v71;

  if (v72)
  {
    sub_1000BD330();
    v74 = v73;

    if (v74)
    {

      return 1;
    }
  }

  else
  {
  }

  v155 = v70;
  sub_100003934();
  v76 = v162;
  sub_10001B350(v77, v78, v79, v162);
  sub_100003934();
  sub_10001B350(v80, v81, v82, v177);
  sub_100003934();
  sub_10001B350(v83, v84, v85, v179);
  sub_100003934();
  sub_10001B350(v86, v87, v88, v181);
  sub_100003934();
  sub_10001B350(v89, v90, v91, v182);
  sub_100003934();
  sub_10001B350(v92, v93, v94, v184);
  sub_100003934();
  v95 = v168;
  sub_10001B350(v96, v97, v98, v168);
  sub_100003934();
  sub_10001B350(v99, v100, v101, v159);
  UUID.init()();
  v154 = UUID.uuidString.getter();
  v153 = v102;
  (*(v157 + 8))(v28, v158);
  v103 = v164;
  v104 = v160;
  sub_1000BCCAC(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v160, type metadata accessor for ModalViewState);
  v105 = v156;
  sub_100051B60(v33, v156, &qword_100CA65E8, &unk_100A31410);
  sub_100003BFC(v105);
  if (v106)
  {
    sub_1000180EC(v105, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000E0300(v104, type metadata accessor for ModalViewState);
    sub_100005518();
    sub_100072F7C(v105, v104, v107);
  }

  v108 = v171;
  sub_100005518();
  sub_100072F7C(v104, v109, v110);
  v111 = *(v103 + 16);
  LODWORD(v171) = *(v103 + 24);
  sub_100051B60(v66, v63, &qword_100CA6640, qword_100A32640);
  sub_1000038B4(v63, 1, v76);
  v112 = v177;
  if (v106)
  {
    v113 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BCCAC(v113, v185, v114);
    v115 = sub_100024D10(v63, 1, v76);

    v116 = v182;
    if (v115 != 1)
    {
      sub_1000180EC(v63, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100072F7C(v63, v185, type metadata accessor for AppConfigurationState);

    v116 = v182;
  }

  sub_100051B60(v173, v57, &qword_100CA6638, &unk_100A31460);
  v117 = v95;
  if (sub_100024D10(v57, 1, v112) == 1)
  {
    v118 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000BCCAC(v103 + v118, v186, type metadata accessor for EnvironmentState);
    sub_100003BFC(v57);
    v119 = v170;
    v120 = v184;
    if (!v106)
    {
      sub_1000180EC(v57, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100072F7C(v57, v186, type metadata accessor for EnvironmentState);
    v119 = v170;
    v120 = v184;
  }

  v184 = v111;
  v121 = v161;
  sub_100051B60(v174, v161, &qword_100CA6630, &unk_100A32630);
  v122 = v179;
  v123 = v108;
  if (sub_100024D10(v121, 1, v179) == 1)
  {
    v124 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BCCAC(v124, v187, v125);
    sub_1000038B4(v121, 1, v122);
    v126 = v169;
    if (!v106)
    {
      sub_1000180EC(v121, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100072F7C(v121, v187, type metadata accessor for LocationsState);
    v126 = v169;
  }

  v127 = v163;
  sub_100051B60(v175, v163, &qword_100CA6628, &unk_100A31450);
  sub_100003BFC(v127);
  if (v106)
  {
    v128 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BCCAC(v128, v126, v129);
    sub_100003BFC(v127);
    if (!v106)
    {
      sub_1000180EC(v127, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100072F7C(v127, v126, type metadata accessor for NotificationsState);
  }

  v130 = *(&v163 + 1);
  sub_100051B60(v176, *(&v163 + 1), &qword_100CA6620, &unk_100A32620);
  sub_1000038B4(v130, 1, v116);
  if (v106)
  {
    v131 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BCCAC(v131, v188, v132);
    sub_1000038B4(v130, 1, v116);
    v133 = v123;
    if (!v106)
    {
      sub_1000180EC(v130, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100072F7C(v130, v188, type metadata accessor for NotificationsOptInState);
    v133 = v123;
  }

  v134 = v165;
  sub_100051B60(v178, v165, &qword_100CA6618, &unk_100A31440);
  sub_1000038B4(v134, 1, v120);
  v135 = v184;
  if (v106)
  {
    v136 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BCCAC(v136, v119, v137);
    sub_1000038B4(v134, 1, v120);
    if (!v106)
    {
      sub_1000180EC(v134, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100072F7C(v134, v119, type metadata accessor for TimeState);
  }

  v138 = v166;
  sub_100051B60(v180, v166, &qword_100CA6610, &unk_100A32610);
  sub_1000038B4(v138, 1, v117);
  if (v106)
  {
    v139 = sub_100028E50(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_1000BCCAC(v139, v133, v140);
    sub_1000038B4(v138, 1, v117);
    if (!v106)
    {
      sub_1000180EC(v138, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    v141 = sub_100003940();
    sub_100072F7C(v141, v142, v143);
  }

  sub_100005518();
  v144 = v167;
  sub_100072F7C(v183, v167, v145);
  v146 = *(v103 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v147 = *(v103 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v148 = *(v103 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v149 = *(v103 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v152) = v146;
  sub_10003E038(v135, v171, v185, v186, v187, v126, v188, v119, v133, v144, v154, v153, v172, v155, v152, v147, v148, v149, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
  v75 = v150;

  return v75;
}

void *sub_10095F5A0(_BYTE *a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = a1[32];
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1009601C0(v12, v7, v5, a3);

      return v5;
    }
  }

  __chkstk_darwin(a1);
  sub_1006A76B8(0, v7, &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

void sub_10095F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a1;
  v65 = type metadata accessor for AvailableDataSets();
  v4 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_10022C350(&qword_100CAA7E0, &qword_100A352C0);
  __chkstk_darwin(v71);
  v78 = &v55[-v6];
  v70 = sub_10022C350(&qword_100CAA7F0, &qword_100A352D0);
  __chkstk_darwin(v70);
  v76 = &v55[-v7];
  v77 = type metadata accessor for LocationAvailableDataSetState(0);
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v64 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v55[-v10];
  __chkstk_darwin(v12);
  v75 = &v55[-v13];
  __chkstk_darwin(v14);
  v16 = &v55[-v15];
  v17 = 0;
  v72 = a3;
  v20 = *(a3 + 64);
  v19 = a3 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v59 = (v4 + 32);
  v61 = 0;
  v62 = (v4 + 8);
  v67 = v24;
  v68 = &v55[-v15];
  v63 = v11;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v73 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v17 << 6);
    v29 = *(v72 + 56);
    v30 = (*(v72 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v69 + 72);
    v66 = v28;
    sub_1000BCCAC(v29 + v33 * v28, v16, type metadata accessor for LocationAvailableDataSetState);
    v34 = v76;
    *v76 = v31;
    v34[1] = v32;
    v74 = v32;
    v35 = *(v70 + 48);
    sub_1000BCCAC(v16, v34 + v35, type metadata accessor for LocationAvailableDataSetState);
    v36 = v75;
    swift_storeEnumTagMultiPayload();
    v37 = &v78[*(v71 + 48)];
    sub_1000BCCAC(v34 + v35, v78, type metadata accessor for LocationAvailableDataSetState);
    sub_1000BCCAC(v36, v37, type metadata accessor for LocationAvailableDataSetState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v39 = v64;
        sub_1000BCCAC(v78, v64, type metadata accessor for LocationAvailableDataSetState);
        v40 = *v39;
        v41 = v39[1];
        v42 = swift_getEnumCaseMultiPayload();
        v24 = v67;
        v23 = v73;
        if (v42 != 1)
        {
          swift_bridgeObjectRetain_n();

          v16 = v68;
LABEL_29:
          sub_1000180EC(v78, &qword_100CAA7E0, &qword_100A352C0);
          goto LABEL_30;
        }

        v43 = *v37;
        v44 = v37[1];
        v45 = v40 == v43 && v41 == v44;
        v16 = v68;
        if (v45)
        {
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_bridgeObjectRetain_n();

          if ((v56 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v52 = swift_getEnumCaseMultiPayload();
        swift_bridgeObjectRetain_n();
        v24 = v67;
        v16 = v68;
        v23 = v73;
        if (v52 != 2)
        {
          goto LABEL_29;
        }
      }

LABEL_26:
      sub_1000E0300(v78, type metadata accessor for LocationAvailableDataSetState);
      sub_1000E0300(v75, type metadata accessor for LocationAvailableDataSetState);
      sub_1000180EC(v76, &qword_100CAA7F0, &qword_100A352D0);
      sub_1000E0300(v16, type metadata accessor for LocationAvailableDataSetState);
    }

    else
    {
      v46 = v63;
      sub_1000BCCAC(v78, v63, type metadata accessor for LocationAvailableDataSetState);
      if (swift_getEnumCaseMultiPayload())
      {
        v53 = *v62;
        swift_bridgeObjectRetain_n();
        v53(v46, v65);
        v24 = v67;
        v16 = v68;
        v23 = v73;
        goto LABEL_29;
      }

      v47 = v60;
      v48 = v65;
      (*v59)(v60, v37, v65);
      sub_100960168();
      swift_bridgeObjectRetain_n();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v49 = *v62;
      (*v62)(v47, v48);
      v50 = v80;
      v51 = v79;
      v49(v46, v48);
      v24 = v67;
      v16 = v68;
      v23 = v73;
      if (v50 == v51)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_1000E0300(v78, type metadata accessor for LocationAvailableDataSetState);
LABEL_30:
      sub_1000E0300(v75, type metadata accessor for LocationAvailableDataSetState);
      sub_1000180EC(v76, &qword_100CAA7F0, &qword_100A352D0);
      sub_1000E0300(v16, type metadata accessor for LocationAvailableDataSetState);

      *(v58 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      if (__OFADD__(v61++, 1))
      {
        __break(1u);
LABEL_33:
        sub_10067341C();
        return;
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      goto LABEL_33;
    }

    v27 = *(v19 + 8 * v17);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v73 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10095FE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a1;
  v41 = sub_10022C350(&qword_100CAA808, &qword_100A352E0);
  __chkstk_darwin(v41);
  v37 = (&v32 - v4);
  v5 = type metadata accessor for LocationWeatherDataState(0);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v32 - v8;
  v34 = 0;
  v9 = 0;
  v42 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = *(v42 + 56);
    v22 = (*(v42 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v39 + 72);
    v35 = v20;
    v26 = v36;
    sub_1000BCCAC(v21 + v25 * v20, v36, type metadata accessor for LocationWeatherDataState);
    v27 = v37;
    *v37 = v23;
    *(v27 + 8) = v24;
    sub_1000BCCAC(v26, v27 + *(v41 + 48), type metadata accessor for LocationWeatherDataState);
    v28 = v38;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    sub_10070EA0C();
    v30 = v29;
    sub_1000E0300(v28, type metadata accessor for LocationWeatherDataState);
    sub_1000180EC(v27, &qword_100CAA808, &qword_100A352E0);
    sub_1000E0300(v26, type metadata accessor for LocationWeatherDataState);

    v15 = v43;
    if ((v30 & 1) == 0)
    {
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100673648();
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_100960168()
{
  result = qword_100CAA7F8;
  if (!qword_100CAA7F8)
  {
    v3 = type metadata accessor for AvailableDataSets();
    result = swift_getWitnessTable(&protocol conformance descriptor for AvailableDataSets, v3, v0, v1);
    atomic_store(result, &qword_100CAA7F8);
  }

  return result;
}

void *sub_1009601C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t static LocationCompositionState.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v190 = type metadata accessor for LocationOfInterest();
  v186 = *(v190 - 8);
  __chkstk_darwin(v190);
  v183 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10022C350(&qword_100CB9E68, &unk_100A4F430);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v185 = (v6 - v7);
  sub_10000386C();
  __chkstk_darwin(v8);
  v184 = &v175 - v9;
  v10 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v10 - 8);
  sub_100003C38();
  v182 = v11 - v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v189 = &v175 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v188 = &v175 - v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v19 = &v175 - v18;
  __chkstk_darwin(v20);
  v192 = &v175 - v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v191 = &v175 - v23;
  type metadata accessor for LocationCompositionState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  v30 = (&v175 - v29);
  v31 = sub_10022C350(&qword_100CE81E0, &unk_100A9BEC0);
  __chkstk_darwin(v31 - 8);
  v33 = &v175 - v32;
  v35 = (&v175 + *(v34 + 56) - v32);
  sub_100961058(a1, &v175 - v32);
  sub_100961058(a2, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100961058(v33, v27);
    v37 = *v27;
    v36 = v27[1];
    v39 = v27[2];
    v38 = v27[3];
    v40 = sub_10022C350(&qword_100CC4190, &qword_100A5D798);
    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    LODWORD(v192) = *(v27 + v42);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v37;
      v191 = v38;
      v181 = v33;
      v44 = *v35;
      v45 = v35[1];
      v46 = v35[3];
      v180 = v35[2];
      v184 = v46;
      v47 = *(v35 + v42);
      v48 = v27 + v41;
      v49 = v188;
      sub_1001A5050(v48, v188);
      v50 = v189;
      sub_1001A5050(v35 + v41, v189);
      v51 = v36;
      if (v36)
      {
        v52 = v39;
        v53 = v43;
        if (v45)
        {
          v54 = v43 == v44 && v51 == v45;
          if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v140 = sub_100008408();
            sub_100429240(v140, v141);
            sub_100429240(v43, v51);

            v142 = sub_100008408();
            sub_1001A6184(v142, v143);
            sub_1001A6184(v43, v51);

            goto LABEL_75;
          }

          if (v39 != v180 || v191 != v184)
          {
            LODWORD(v179) = _stringCompareWithSmolCheck(_:_:expecting:)();
            v56 = sub_100008408();
            sub_100429240(v56, v57);
            v58 = sub_10001D348();
            sub_100429240(v58, v59);

            v60 = sub_100008408();
            sub_1001A6184(v60, v61);
            v62 = sub_10001D348();
            sub_1001A6184(v62, v63);

            v50 = v189;
            if (v179)
            {
              goto LABEL_41;
            }

LABEL_75:
            sub_10000FEC4();
            sub_1000180EC(v166, v167, v168);
            sub_10000FEC4();
LABEL_76:
            sub_1000180EC(v123, v121, v122);
            goto LABEL_77;
          }

          v96 = sub_100008408();
          sub_100429240(v96, v97);
          v98 = sub_10001D348();
          sub_100429240(v98, v99);

          v100 = sub_100008408();
          sub_1001A6184(v100, v101);
          v102 = sub_10001D348();
          sub_1001A6184(v102, v103);

          v50 = v189;
LABEL_41:
          v104 = v47;
          v105 = *(v187 + 48);
          v106 = v185;
          sub_1005AC2E8(v49, v185);
          sub_1005AC2E8(v50, v106 + v105);
          v107 = v190;
          if (sub_100024D10(v106, 1, v190) == 1)
          {
            sub_10000FEC4();
            sub_1000180EC(v108, v109, v110);
            sub_10000FEC4();
            sub_1000180EC(v111, v112, v113);
            if (sub_100024D10(v106 + v105, 1, v107) == 1)
            {
              sub_1000180EC(v106, &qword_100CA3588, &unk_100A4F350);
LABEL_60:
              v152 = v192 ^ v104;
              sub_1009610BC(v181);
              return v152 ^ 1u;
            }
          }

          else
          {
            v114 = v182;
            sub_1005AC2E8(v106, v182);
            if (sub_100024D10(v106 + v105, 1, v107) != 1)
            {
              v148 = v186;
              v149 = v183;
              (*(v186 + 32))(v183, v106 + v105, v107);
              sub_100188240();
              v150 = dispatch thunk of static Equatable.== infix(_:_:)();
              v151 = *(v148 + 8);
              v151(v149, v107);
              sub_100028E5C(v50);
              sub_100028E5C(v188);
              v151(v114, v107);
              sub_100028E5C(v106);
              if (v150)
              {
                goto LABEL_60;
              }

              goto LABEL_77;
            }

            sub_10000FEC4();
            sub_1000180EC(v115, v116, v117);
            sub_10000FEC4();
            sub_1000180EC(v118, v119, v120);
            (*(v186 + 8))(v114, v107);
          }

          v121 = &qword_100CB9E68;
          v122 = &unk_100A4F430;
          v123 = v106;
          goto LABEL_76;
        }
      }

      else
      {
        v52 = v39;
        v53 = v43;
        if (!v45)
        {
          goto LABEL_41;
        }
      }

      v193 = v53;
      v194 = v51;
      v195 = v52;
      v196 = v191;
      v197 = v44;
      v198 = v45;
      v199 = v180;
      v200 = v184;
      sub_1000180EC(&v193, &qword_100CE81E8, &unk_100A9BED0);
      goto LABEL_75;
    }

    sub_1000180EC(v27 + v41, &qword_100CA3588, &unk_100A4F350);
    sub_1001A6184(v37, v36);
LABEL_19:
    sub_1000180EC(v33, &qword_100CE81E0, &unk_100A9BEC0);
    return 0;
  }

  v185 = v19;
  sub_100961058(v33, v30);
  v64 = *v30;
  v189 = v30[1];
  v65 = v30[2];
  v66 = v30[3];
  v67 = sub_10022C350(&qword_100CC4198, &unk_100A5D7A0);
  v188 = *(v67 + 48);
  v68 = *(v67 + 64);
  v69 = *(v30 + v68 + 8);
  v180 = *(v30 + v68);
  v70 = *(v30 + v68 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001A6184(v64, v189);

    sub_1000180EC(v30 + v188, &qword_100CA3588, &unk_100A4F350);
    goto LABEL_19;
  }

  v71 = v69;
  v182 = v64;
  v176 = v70;
  v181 = v33;
  v73 = *v35;
  v72 = v35[1];
  v74 = v35[3];
  v179 = v35[2];
  v75 = *(v35 + v68 + 8);
  v177 = *(v35 + v68);
  v178 = v75;
  v175 = *(v35 + v68 + 16);
  v76 = v188;
  v77 = v30 + v188;
  v78 = v191;
  sub_1001A5050(v77, v191);
  v79 = v35 + v76;
  v80 = v192;
  sub_1001A5050(v79, v192);
  if (!v189)
  {
    v81 = v190;
    if (!v72)
    {
      goto LABEL_49;
    }

    v82 = v66;
    v94 = v189;

    v95 = v182;
LABEL_39:
    v193 = v95;
    v194 = v94;
    v195 = v65;
    v196 = v82;
    v197 = v73;
    v198 = v72;
    v199 = v179;
    v200 = v74;
    sub_1000180EC(&v193, &qword_100CE81E8, &unk_100A9BED0);
    goto LABEL_75;
  }

  v81 = v190;
  v82 = v66;
  if (!v72)
  {
    v94 = v189;

    sub_1000235AC();

    v95 = v182;
    sub_1001A6184(v182, v94);
    goto LABEL_39;
  }

  v83 = v73;
  if (v182 != v73 || v189 != v72)
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v83 = v73;
    if ((v85 & 1) == 0)
    {
      sub_100429240(v73, v72);
      sub_100006C10();
      sub_100429240(v144, v145);

      sub_1000235AC();

      sub_1001A6184(v73, v72);
      sub_100006C10();
      sub_1001A6184(v146, v147);

      goto LABEL_75;
    }
  }

  if (v65 == v179 && v66 == v74)
  {
    sub_100006C10();
    sub_100429240(v124, v125);
    v126 = sub_10001FDA4();
    sub_100429240(v126, v127);

    sub_100006C10();
    sub_1001A6184(v128, v129);
    v130 = sub_10001FDA4();
    sub_1001A6184(v130, v131);
  }

  else
  {
    v87 = v83;
    LODWORD(v189) = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100429240(v87, v72);
    v88 = sub_10001FDA4();
    sub_100429240(v88, v89);

    sub_1001A6184(v87, v72);
    v90 = sub_10001FDA4();
    sub_1001A6184(v90, v91);
    if ((v189 & 1) == 0)
    {
      sub_1000235AC();

      v92 = sub_10001FDA4();
      sub_1001A6184(v92, v93);
      goto LABEL_75;
    }
  }

  v132 = sub_10001FDA4();
  sub_1001A6184(v132, v133);
  v78 = v191;
  v80 = v192;
LABEL_49:
  v134 = v71;
  v135 = *(v187 + 48);
  v136 = v184;
  sub_1005AC2E8(v78, v184);
  sub_1005AC2E8(v80, v136 + v135);
  sub_10000394C(v136);
  if (v54)
  {
    sub_10000394C(v136 + v135);
    if (v54)
    {
      sub_1000180EC(v136, &qword_100CA3588, &unk_100A4F350);
      v137 = v178;
      goto LABEL_63;
    }

    sub_1000235AC();

LABEL_61:
    sub_1000180EC(v136, &qword_100CB9E68, &unk_100A4F430);
    goto LABEL_75;
  }

  v138 = v185;
  sub_1005AC2E8(v136, v185);
  sub_10000394C(v136 + v135);
  if (v139)
  {
    sub_1000235AC();

    (*(v186 + 8))(v138, v81);
    goto LABEL_61;
  }

  v154 = v186;
  v155 = v183;
  (*(v186 + 32))(v183, v136 + v135, v81);
  sub_100188240();
  v156 = dispatch thunk of static Equatable.== infix(_:_:)();
  v157 = *(v154 + 8);
  v80 = v192;
  v157(v155, v81);
  v157(v138, v81);
  v78 = v191;
  sub_1000180EC(v136, &qword_100CA3588, &unk_100A4F350);
  v137 = v178;
  if ((v156 & 1) == 0)
  {

    goto LABEL_74;
  }

LABEL_63:
  if (!v134)
  {
    sub_10000FEC4();
    sub_1000180EC(v160, v161, v162);
    sub_10000FEC4();
    sub_1000180EC(v163, v164, v165);
    if (v137)
    {
      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (!v137)
  {
LABEL_74:

    goto LABEL_75;
  }

  if (v180 == v177 && v134 == v137)
  {
    sub_10000FEC4();
    sub_1000180EC(v169, v170, v171);
    sub_10000FEC4();
    sub_1000180EC(v172, v173, v174);
  }

  else
  {
    v159 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100028E5C(v80);
    sub_100028E5C(v78);
    if ((v159 & 1) == 0)
    {

LABEL_72:

LABEL_77:
      sub_1009610BC(v181);
      return 0;
    }
  }

  if ((v175 ^ v176))
  {
    goto LABEL_77;
  }

LABEL_81:
  sub_1009610BC(v181);
  return 1;
}

uint64_t sub_100961058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCompositionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009610BC(uint64_t a1)
{
  v2 = type metadata accessor for LocationCompositionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100961118(uint64_t a1)
{
  if (!qword_100CE8288)
  {
    sub_10022E824(&qword_100CE8278, &qword_100A9BFC0);
    sub_10022E824(&qword_100CA3588, &unk_100A4F350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CE8288);
    }
  }
}

uint64_t type metadata accessor for SelectedSearchResult(uint64_t a1)
{
  result = qword_100CE8328;
  if (!qword_100CE8328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009611F8(uint64_t a1)
{
  result = sub_10096126C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10096126C()
{
  result = qword_100CE8338;
  if (!qword_100CE8338)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CE8338);
  }

  return result;
}

uint64_t sub_100961294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C686372616573 && a2 == 0xEE006E6F69746163;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AE7390 == a2;
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

uint64_t sub_1009613B4(char a1)
{
  if (!a1)
  {
    return 0x6F4C686372616573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 1701736302;
}

uint64_t sub_100961414(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5474756F6C6C6163 && a2 == 0xEC000000656C7469)
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

uint64_t sub_1009614B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100008064();
  __chkstk_darwin(v13);
  v15 = (&v29 - v14);
  sub_10022C350(&qword_100CE8368, &qword_100A9C0F0);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v20 = (&v29 + *(v19 + 56) - v17);
  sub_100962610(a1, &v29 - v17);
  sub_100962610(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100962610(v18, v15);
    v25 = *v15;
    v24 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v25 == *v20 && v24 == v20[1])
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          sub_1009626DC(v18);
          goto LABEL_11;
        }
      }

LABEL_19:
      sub_1009626DC(v18);
      v22 = 1;
      return v22 & 1;
    }

LABEL_10:
    sub_100962674(v18);
LABEL_11:
    v22 = 0;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_100962610(v18, v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v2, v5);
    goto LABEL_10;
  }

  (*(v7 + 32))(v11, v20, v5);
  v22 = static LocationOfInterest.== infix(_:_:)();
  v23 = *(v7 + 8);
  v23(v11, v5);
  v23(v2, v5);
  sub_1009626DC(v18);
  return v22 & 1;
}

uint64_t sub_100961788(void *a1)
{
  v42 = sub_10022C350(&qword_100CE83B0, &qword_100A9C120);
  sub_1000037C4();
  v40 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v38 = v4;
  sub_10022C350(&qword_100CE83B8, &qword_100A9C128);
  sub_1000037C4();
  v45 = v6;
  v46 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v41 = v8;
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v43 = v10;
  v44 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v39 = v12 - v11;
  v13 = sub_10022C350(&qword_100CE83C0, &qword_100A9C130);
  sub_1000037C4();
  v37 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v48 = sub_10022C350(&qword_100CE83C8, &qword_100A9C138);
  sub_1000037C4();
  v23 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  sub_1000161C0(a1, a1[3]);
  sub_100962738();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100962610(v47, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v43;
      v28 = v44;
      v30 = v39;
      (*(v43 + 32))(v39, v21, v44);
      v50 = 1;
      sub_100962844();
      v31 = v41;
      sub_100049F50(&type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, &v50);
      sub_1009628EC(&qword_100CC7ED8, &protocol conformance descriptor for LocationOfInterest);
      v32 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v45 + 8))(v31, v32);
      (*(v29 + 8))(v30, v28);
    }

    else
    {
      v51 = 2;
      sub_10096278C();
      v35 = v38;
      sub_100049F50(&type metadata for SelectedSearchResult.NoneCodingKeys, &v51);
      (*(v40 + 8))(v35, v42);
    }

    return (*(v23 + 8))(v26, v21);
  }

  else
  {
    v49 = 0;
    sub_100962898();
    v34 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v37 + 8))(v17, v13);
    return (*(v23 + 8))(v26, v34);
  }
}

uint64_t sub_100961C5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_10022C350(&qword_100CE8370, &qword_100A9C0F8);
  sub_1000037C4();
  v66 = v5;
  v67 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v70 = v7;
  v75 = sub_10022C350(&qword_100CE8378, &qword_100A9C100);
  sub_1000037C4();
  v68 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v71 = v10;
  sub_10022C350(&qword_100CE8380, &qword_100A9C108);
  sub_1000037C4();
  v64 = v12;
  v65 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v69 = v14;
  sub_10022C350(&qword_100CE8388, &unk_100A9C110);
  sub_1000037C4();
  v73 = v16;
  v74 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100008064();
  __chkstk_darwin(v22);
  v24 = (&v59 - v23);
  __chkstk_darwin(v25);
  v27 = &v59 - v26;
  sub_1000161C0(a1, a1[3]);
  sub_100962738();
  v28 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return sub_100006F14(a1);
  }

  v59 = v24;
  v60 = v2;
  v29 = v74;
  v61 = v27;
  v63 = v20;
  v76 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v32 == v33 >> 1)
  {
LABEL_9:
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v43 = v63;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v19, v29);
    a1 = v76;
    return sub_100006F14(a1);
  }

  v62 = v19;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    return result;
  }

  v34 = v29;
  v35 = *(v31 + v32);
  sub_100618E7C();
  v37 = v36;
  v39 = v38;
  swift_unknownObjectRelease();
  if (v37 != v39 >> 1)
  {
    v19 = v62;
    goto LABEL_9;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v78 = 1;
      sub_100962844();
      sub_100006C1C(&type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, &v78);
      type metadata accessor for LocationOfInterest();
      sub_1009628EC(&qword_100CC7E10, &protocol conformance descriptor for LocationOfInterest);
      v40 = v60;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v49 = sub_100028E74();
      v50(v49);
      v51 = sub_1000235C4();
      v52(v51);
      swift_storeEnumTagMultiPayload();
      v53 = v61;
      sub_1009627E0(v40, v61);
    }

    else
    {
      v79 = 2;
      sub_10096278C();
      v45 = v70;
      sub_100006C1C(&type metadata for SelectedSearchResult.NoneCodingKeys, &v79);
      swift_unknownObjectRelease();
      (*(v66 + 8))(v45, v67);
      v47 = sub_100010434();
      v48(v47);
      v53 = v61;
      swift_storeEnumTagMultiPayload();
    }

    v44 = v72;
  }

  else
  {
    v77 = 0;
    sub_100962898();
    sub_100006C1C(&type metadata for SelectedSearchResult.SearchLocationCodingKeys, &v77);
    v44 = v72;
    v75 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = v73;
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = sub_100004B88();
    v57(v56);
    (*(v46 + 8))(v62, v34);
    v58 = v59;
    *v59 = v75;
    *(v58 + 8) = v55;
    swift_storeEnumTagMultiPayload();
    v53 = v61;
    sub_1009627E0(v58, v61);
  }

  sub_1009627E0(v53, v44);
  return sub_100006F14(v76);
}

uint64_t sub_100962374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100961294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10096239C(uint64_t a1)
{
  v2 = sub_100962738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009623D8(uint64_t a1)
{
  v2 = sub_100962738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962414(uint64_t a1)
{
  v2 = sub_10096278C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100962450(uint64_t a1)
{
  v2 = sub_10096278C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100961414(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1009624BC(uint64_t a1)
{
  v2 = sub_100962898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009624F8(uint64_t a1)
{
  v2 = sub_100962898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962534(uint64_t a1)
{
  v2 = sub_100962844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100962570(uint64_t a1)
{
  v2 = sub_100962844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100962610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100962674(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE8368, &qword_100A9C0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009626DC(uint64_t a1)
{
  v2 = type metadata accessor for SelectedSearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100962738()
{
  result = qword_100CE8390;
  if (!qword_100CE8390)
  {
    result = swift_getWitnessTable(byte_100A9C504, &type metadata for SelectedSearchResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8390);
  }

  return result;
}

unint64_t sub_10096278C()
{
  result = qword_100CE8398;
  if (!qword_100CE8398)
  {
    result = swift_getWitnessTable(asc_100A9C4B4, &type metadata for SelectedSearchResult.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8398);
  }

  return result;
}

uint64_t sub_1009627E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedSearchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100962844()
{
  result = qword_100CE83A0;
  if (!qword_100CE83A0)
  {
    result = swift_getWitnessTable(byte_100A9C464, &type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83A0);
  }

  return result;
}

unint64_t sub_100962898()
{
  result = qword_100CE83A8;
  if (!qword_100CE83A8)
  {
    result = swift_getWitnessTable(byte_100A9C414, &type metadata for SelectedSearchResult.SearchLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83A8);
  }

  return result;
}

uint64_t sub_1009628EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LocationOfInterest();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectedSearchResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100962A1C(_BYTE *result, int a2, int a3)
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

unint64_t sub_100962ADC()
{
  result = qword_100CE83D0;
  if (!qword_100CE83D0)
  {
    result = swift_getWitnessTable(byte_100A9C27C, &type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83D0);
  }

  return result;
}

unint64_t sub_100962B34()
{
  result = qword_100CE83D8;
  if (!qword_100CE83D8)
  {
    result = swift_getWitnessTable(byte_100A9C334, &type metadata for SelectedSearchResult.SearchLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83D8);
  }

  return result;
}

unint64_t sub_100962B8C()
{
  result = qword_100CE83E0;
  if (!qword_100CE83E0)
  {
    result = swift_getWitnessTable(byte_100A9C3EC, &type metadata for SelectedSearchResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83E0);
  }

  return result;
}

unint64_t sub_100962BE4()
{
  result = qword_100CE83E8;
  if (!qword_100CE83E8)
  {
    result = swift_getWitnessTable(asc_100A9C2A4, &type metadata for SelectedSearchResult.SearchLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83E8);
  }

  return result;
}

unint64_t sub_100962C3C()
{
  result = qword_100CE83F0;
  if (!qword_100CE83F0)
  {
    result = swift_getWitnessTable(byte_100A9C2CC, &type metadata for SelectedSearchResult.SearchLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83F0);
  }

  return result;
}

unint64_t sub_100962C94()
{
  result = qword_100CE83F8;
  if (!qword_100CE83F8)
  {
    result = swift_getWitnessTable(byte_100A9C1EC, &type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE83F8);
  }

  return result;
}

unint64_t sub_100962CEC()
{
  result = qword_100CE8400;
  if (!qword_100CE8400)
  {
    result = swift_getWitnessTable(byte_100A9C214, &type metadata for SelectedSearchResult.SuggestedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8400);
  }

  return result;
}

unint64_t sub_100962D44()
{
  result = qword_100CE8408;
  if (!qword_100CE8408)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for SelectedSearchResult.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8408);
  }

  return result;
}

unint64_t sub_100962D9C()
{
  result = qword_100CE8410;
  if (!qword_100CE8410)
  {
    result = swift_getWitnessTable(asc_100A9C1C4, &type metadata for SelectedSearchResult.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8410);
  }

  return result;
}

unint64_t sub_100962DF4()
{
  result = qword_100CE8418;
  if (!qword_100CE8418)
  {
    result = swift_getWitnessTable(byte_100A9C35C, &type metadata for SelectedSearchResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8418);
  }

  return result;
}

unint64_t sub_100962E4C()
{
  result = qword_100CE8420;
  if (!qword_100CE8420)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for SelectedSearchResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE8420);
  }

  return result;
}

uint64_t sub_100962EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 154))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100962EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100962F64(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = sub_100003B38();
  type metadata accessor for MainState._Storage(v2);
  sub_100003B2C();
  sub_100073248();
  return v3 & 1;
}

uint64_t sub_100962FAC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v160 = a1;
  v167 = a2;
  v3 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v146[2] = v5;
  v6 = sub_1000038CC();
  v146[1] = type metadata accessor for LocationsState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v158 = v8;
  v9 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v150 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v151 = v13;
  v14 = sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState(v14);
  v16 = sub_100003810(active);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v156 = v17;
  v18 = sub_1000038CC();
  v164 = type metadata accessor for ViewState.SecondaryViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v165 = v20;
  v21 = sub_1000038CC();
  v166 = type metadata accessor for ViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v163 = v23;
  v24 = sub_1000038CC();
  v148 = type metadata accessor for PreviewLocation(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003848();
  v159 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v147 = v28;
  v29 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  v152 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v154 = v33;
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v161 = v35;
  v162 = v34;
  __chkstk_darwin(v34);
  sub_100003848();
  v157 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v149 = v146 - v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v153 = v146 - v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v43 = v146 - v42;
  v44 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  v146[0] = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  v49 = v146 - v48;
  __chkstk_darwin(v50);
  sub_10003A2D4();
  __chkstk_darwin(v51);
  v53 = v146 - v52;
  v54 = type metadata accessor for Location();
  sub_1000037C4();
  v155 = v55;
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = v58 - v57;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000037D8();
  v63 = v62 - v61;
  v64 = type metadata accessor for LocationPreviewViewState(0);
  v65 = sub_100003810(v64);
  __chkstk_darwin(v65);
  sub_1000037D8();
  v68 = v67 - v66;
  sub_10001FDB8();
  sub_1000BCD08();
  if (!swift_getEnumCaseMultiPayload())
  {
    v73 = v49;
    v74 = v43;
    v75 = v159;
    v76 = v160;
    sub_10003CA50();
    sub_100003B2C();
    sub_1000D3AB8();
    sub_1006E6234(v53);
    sub_10000394C(v53);
    if (v91)
    {
      sub_1000180EC(v53, &qword_100CA65D8, &unk_100A3D9D0);
      if ((v76 & 1) == 0)
      {
        v72 = type metadata accessor for LocationPreviewViewState;
        goto LABEL_22;
      }

      sub_100004F50();
      v77 = v147;
      sub_1000BCD08();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_10001D35C();
        sub_1000E0358(v68, v139);
        v110 = type metadata accessor for PreviewLocation;
        v111 = v77;
        goto LABEL_23;
      }

      sub_1000E0358(v77, type metadata accessor for PreviewLocation);
      sub_100004F50();
      sub_1000BCD08();
      sub_1006E6430();
      sub_1006E6834();
      sub_1006E6B60();
      v78 = v153;
      Location.Identifier.init(id:name:coordinate:)();
      sub_1000E0358(v75, type metadata accessor for PreviewLocation);
      sub_10001D35C();
      sub_1000E0358(v68, v79);
      v80 = v161;
      v81 = v162;
      v82 = v167;
      (*(v161 + 16))(v167, v78, v162);
      v83 = type metadata accessor for PresentedLocation(0);
      (*(v80 + 32))(v82 + *(v83 + 20), v78, v81);
      sub_10000E7B0();
      sub_10001B350(v84, v85, v86, v81);
      *(v82 + *(v83 + 24)) = 1;
    }

    else
    {
      v90 = v155;
      (*(v155 + 32))(v59, v53, v54);
      sub_100964314(v2);
      Location.identifier.getter();
      sub_100035AD0(v2, v73, &qword_100CA65D8, &unk_100A3D9D0);
      sub_10000394C(v73);
      if (v91)
      {
        sub_1000180EC(v2, &qword_100CA65D8, &unk_100A3D9D0);
        (*(v90 + 8))(v59, v54);
        sub_10001D35C();
        sub_1000E0358(v68, v92);
        sub_1000180EC(v73, &qword_100CA65D8, &unk_100A3D9D0);
        v119 = 1;
        v116 = v154;
      }

      else
      {
        v116 = v154;
        Location.identifier.getter();
        sub_1000180EC(v2, &qword_100CA65D8, &unk_100A3D9D0);
        v117 = *(v90 + 8);
        v117(v59, v54);
        sub_10001D35C();
        sub_1000E0358(v68, v118);
        v117(v73, v54);
        v119 = 0;
      }

      v120 = v162;
      sub_10001B350(v116, v119, 1, v162);
      v121 = v167;
      (*(v161 + 32))(v167, v74, v120);
      v83 = type metadata accessor for PresentedLocation(0);
      sub_1000E90D8(v116, v121 + *(v83 + 20));
      *(v121 + *(v83 + 24)) = 1;
    }

LABEL_36:
    sub_10000E7B0();
    v112 = v83;
    return sub_10001B350(v113, v114, v115, v112);
  }

  sub_100006C40();
  sub_1000E0358(v63, v69);
  sub_10001A29C();
  v70 = v163;
  sub_1000BCD08();
  v68 = v165;
  v71 = v166;
  sub_1000BCD08();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100075358();
    v72 = type metadata accessor for ViewState.SecondaryViewState;
LABEL_22:
    v110 = v72;
    v111 = v68;
LABEL_23:
    sub_1000E0358(v111, v110);
    goto LABEL_24;
  }

  if (*(v70 + v71[9] + 8) != 1)
  {
    sub_100075358();
    v88 = v162;
    v89 = v158;
LABEL_16:
    v68 = v156;
    sub_1000BCD08();
    v93 = sub_10000C834();
    sub_1000038B4(v93, v94, v88);
    if (v91)
    {

      v72 = type metadata accessor for LocationViewerActiveLocationState;
      goto LABEL_22;
    }

    v95 = v161;
    v96 = v149;
    v166 = *(v161 + 32);
    (v166)(v149, v68, v88);
    sub_100013F28();
    sub_1000BCD08();
    v97 = v153;
    static CurrentLocation.placeholderIdentifier.getter();
    v98 = static Location.Identifier.== infix(_:_:)();
    v165 = *(v95 + 8);
    v99 = v165(v97, v88);
    if (v98)
    {
      sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
      type metadata accessor for CurrentLocation();
      v100 = v151;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for LocationOfInterest();
      v101 = sub_10000C7F0();
      sub_10001B350(v101, v102, 1, v103);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      v104 = enum case for LocationModel.current(_:);
      v105 = type metadata accessor for LocationModel();
      sub_1000037E8();
      (*(v106 + 104))(v100, v104, v105);
      sub_10000E7B0();
      sub_10001B350(v107, v108, v109, v105);
    }

    else
    {
      __chkstk_darwin(v99);
      v146[-2] = v96;
      v122 = v151;
      sub_100030C98(sub_100079458, &v146[-4], v123);
      v100 = v122;
    }

    sub_1000E0358(v89, type metadata accessor for LocationsState);
    (*(v161 + 16))(v157, v96, v88);
    v124 = v150;
    sub_100035AD0(v100, v150, &unk_100CE2F20, &unk_100A2D7D0);
    v125 = type metadata accessor for LocationModel();
    v126 = sub_10000C7F0();
    sub_1000038B4(v126, v127, v125);
    if (v91)
    {

      sub_1000180EC(v100, &unk_100CE2F20, &unk_100A2D7D0);
      v128 = sub_10003200C();
      v129(v128);
      v130 = v124;
      v131 = &unk_100CE2F20;
      v132 = &unk_100A2D7D0;
    }

    else
    {
      v133 = v146[0];
      LocationModel.coalesceLocation.getter();
      v134 = sub_100003B2C();
      v135(v134);
      sub_10000394C(v133);
      if (!v136)
      {
        Location.identifier.getter();

        sub_1000180EC(v100, &unk_100CE2F20, &unk_100A2D7D0);
        v140 = sub_10003200C();
        v141(v140);
        (*(v155 + 8))(v133, v54);
        v142 = 0;
LABEL_35:
        v143 = v152;
        sub_10001B350(v152, v142, 1, v88);
        v144 = v167;
        (v166)(v167, v157, v88);
        v83 = type metadata accessor for PresentedLocation(0);
        sub_1000E90D8(v143, v144 + *(v83 + 20));
        *(v144 + *(v83 + 24)) = 0;
        goto LABEL_36;
      }

      sub_1000180EC(v100, &unk_100CE2F20, &unk_100A2D7D0);
      v137 = sub_10003200C();
      v138(v137);
      v131 = &qword_100CA65D8;
      v132 = &unk_100A3D9D0;
      v130 = v133;
    }

    sub_1000180EC(v130, v131, v132);
    v142 = 1;
    goto LABEL_35;
  }

  v87 = [objc_opt_self() currentDevice];
  [v87 userInterfaceIdiom];

  LOBYTE(v87) = *(v70 + v71[7]);
  sub_100075358();
  v88 = v162;
  v89 = v158;
  if (v87)
  {
    goto LABEL_16;
  }

LABEL_24:
  v112 = type metadata accessor for PresentedLocation(0);
  v113 = v167;
  v114 = 1;
  v115 = 1;
  return sub_10001B350(v113, v114, v115, v112);
}

void sub_100963D14()
{
  type metadata accessor for MainAction(0);
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      sub_1000BCD08();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v9 = type metadata accessor for MainAction;
      if (EnumCaseMultiPayload == 6 && (type metadata accessor for ViewAction(0), v10 = swift_getEnumCaseMultiPayload(), v9 = type metadata accessor for ViewAction, v10 == 1))
      {
        type metadata accessor for LocationViewerViewAction(0);
        v11 = swift_getEnumCaseMultiPayload();
        sub_1000E0358(v4, type metadata accessor for LocationViewerViewAction);
        if (!v11)
        {
          return;
        }
      }

      else
      {
        sub_1000E0358(v4, v9);
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100963EB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A30470;
  strcpy((inited + 32), "appLifecycle");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = *(a1 + 24);
  *(inited + 72) = &type metadata for AppLifecycleState;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000100ABE5C0;
  *(inited + 120) = type metadata accessor for AppConfigurationState(0);
  sub_100042FB0((inited + 96));
  sub_100024C68();
  sub_1000BCD08();
  *(inited + 128) = 0x6D6E6F7269766E65;
  *(inited + 136) = 0xEB00000000746E65;
  *(inited + 168) = type metadata accessor for EnvironmentState(0);
  sub_100042FB0((inited + 144));
  swift_beginAccess();
  sub_100069CAC();
  sub_1000BCD08();
  strcpy((inited + 176), "notifications");
  *(inited + 190) = -4864;
  *(inited + 216) = type metadata accessor for NotificationsState(0);
  sub_100042FB0((inited + 192));
  sub_10004EE00();
  sub_1000BCD08();
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000100ABAF40;
  *(inited + 264) = type metadata accessor for NotificationsOptInState(0);
  sub_100042FB0((inited + 240));
  sub_100020D18();
  sub_1000BCD08();
  strcpy((inited + 272), "modalViewState");
  *(inited + 287) = -18;
  *(inited + 312) = type metadata accessor for ModalViewState(0);
  sub_100042FB0((inited + 288));
  sub_10001FDB8();
  sub_1000BCD08();
  *(inited + 320) = 1701669236;
  *(inited + 328) = 0xE400000000000000;
  *(inited + 360) = type metadata accessor for TimeState(0);
  sub_100042FB0((inited + 336));
  sub_10000D004();
  sub_1000BCD08();
  *(inited + 368) = 2003134838;
  *(inited + 376) = 0xE400000000000000;
  *(inited + 408) = type metadata accessor for ViewState(0);
  sub_100042FB0((inited + 384));
  sub_10001A29C();
  sub_1000BCD08();
  *(inited + 416) = 0x4472656874616577;
  *(inited + 424) = 0xEB00000000617461;
  v6 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v5 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v7 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v8 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  *(inited + 456) = &type metadata for WeatherDataState;
  v9 = swift_allocObject();
  *(inited + 432) = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v7;
  v9[5] = v8;
  *(inited + 464) = 0x6174536775626564;
  *(inited + 472) = 0xEA00000000006574;
  v10 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v11 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v12 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  *(inited + 496) = *(v10 + 16);
  *(inited + 504) = &type metadata for DebugState;
  *(inited + 480) = v11;
  *(inited + 488) = v12;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CBCED8, &unk_100A63660);
  a2[4] = sub_100056774();
  sub_100042FB0(a2);
  type metadata accessor for MainAction(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1009642D8(uint64_t a1)
{
  sub_1009644D0();

  return ShortDescribable.description.getter();
}

uint64_t sub_100964314@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationOfInterest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewLocation(0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCD08();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    LocationOfInterest.location.getter();
    (*(v3 + 8))(v5, v2);
    v9 = 0;
  }

  else
  {
    sub_1000E0358(v8, type metadata accessor for PreviewLocation);
    v9 = 1;
  }

  v10 = type metadata accessor for Location();
  return sub_10001B350(a1, v9, 1, v10);
}

unint64_t sub_1009644D0()
{
  result = qword_100CE8430[0];
  if (!qword_100CE8430[0])
  {
    result = swift_getWitnessTable(byte_100A9C6A8, &type metadata for MainState, v0, v1);
    atomic_store(result, qword_100CE8430);
  }

  return result;
}

uint64_t sub_100964524(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  if (v10)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v6 + 64) + 7;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v13 >= a2)
  {
LABEL_33:
    v30 = (a1 + v14 + 10) & ~v14;
    if (v7 == v13)
    {

      return sub_100024D10(v30, v7, v5);
    }

    else
    {
      v31 = ((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {
        v33 = sub_100024D10((v20 + ((((((v31 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v19, v10, v16);
        if (v33 >= 2)
        {
          return v33 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v32 = *v31;
        if (*v31 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  else
  {
    v21 = ((v15 + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((v17 + ((v14 + 10) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v19) + 8;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v13 + 1;
    }

    result = 4;
    if (v23 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v23 < 0x100)
    {
      v25 = 1;
    }

    if (v23 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 2:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

LABEL_30:
        v28 = v27 - 1;
        if (v22)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        result = v13 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_33;
    }
  }

  return result;
}

void sub_1009647CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Date();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64) + 7;
  v19 = *(v12 + 80) & 0xF8;
  v20 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + 23;
  v22 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v22;
  }

  v23 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20) + 8;
  if (v16 < a3)
  {
    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) == -8)
    {
      v24 = a3 - v16 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) == -8)
    {
      v26 = a2 - v16;
    }

    else
    {
      v26 = 1;
    }

    if (((v22 + 7) & 0xFFFFFFF8) + ((v21 + ((((((((v18 + ((v17 + 10) & ~v17)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & v20) != -8)
    {
      v27 = ~v16 + a2;
      bzero(a1, v23);
      *a1 = v27;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v23) = v26;
        break;
      case 2:
        *(a1 + v23) = v26;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *(a1 + v23) = v26;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      *(a1 + v23) = 0;
      if (a2)
      {
        goto LABEL_40;
      }

      return;
    case 2:
      *(a1 + v23) = 0;
      if (a2)
      {
        goto LABEL_40;
      }

      return;
    case 3:
LABEL_57:
      __break(1u);
      return;
    case 4:
      *(a1 + v23) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return;
      }

LABEL_40:
      v28 = (a1 + v17 + 10) & ~v17;
      if (v9 == v16)
      {
        v29 = a2;
        v13 = v9;
        v10 = v7;
LABEL_42:

        sub_10001B350(v28, v29, v13, v10);
        return;
      }

      v30 = ((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
          v30[1] = 0;
        }

        else
        {
          v31 = (a2 - 1);
        }

        *v30 = v31;
        return;
      }

      v32 = ((v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20);
      if (v14 >= a2)
      {
        v29 = (a2 + 1);
        v28 = (v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20;
        goto LABEL_42;
      }

      v33 = (v22 + 7) & 0xFFFFFFF8;
      if (v33 != -8)
      {
        v34 = ~v14 + a2;
        bzero(((v21 + ((((((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v20), (v33 + 8));
        *v32 = v34;
      }

      return;
  }
}

uint64_t sub_100964B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v105 = *(a1 - 8);
  v104 = *(v105 + 64);
  __chkstk_darwin(a1);
  v97 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = v78 - v7;
  v103 = *(v8 + 16);
  v9 = type metadata accessor for ModifiedContent();
  v85 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v78 - v10;
  v80 = v9;
  v12 = type metadata accessor for ModifiedContent();
  v91 = *(v12 - 8);
  __chkstk_darwin(v12);
  v100 = v78 - v13;
  v102 = *(a1 + 24);
  v14 = v102;
  v15 = sub_1001B8300();
  v110[0] = v14;
  v110[1] = v15;
  v98 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v110);
  v79 = WitnessTable;
  v17 = sub_100965958();
  v109[0] = WitnessTable;
  v109[1] = v17;
  v18 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v109);
  *&__src[0] = v12;
  *(&__src[0] + 1) = v18;
  v19 = v12;
  v81 = v12;
  v82 = v18;
  v20 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = OpaqueTypeMetadata2;
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v101 = v78 - v22;
  *&__src[0] = v19;
  *(&__src[0] + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&__src[0] = OpaqueTypeMetadata2;
  *(&__src[0] + 1) = OpaqueTypeConformance2;
  v92 = &opaque type descriptor for <<opaque return type of View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)>>;
  v88 = swift_getOpaqueTypeMetadata2();
  v95 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = v78 - v23;
  v93 = type metadata accessor for ModifiedContent();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v84 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v89 = v78 - v26;
  v27 = a1;
  v28 = (v3 + *(a1 + 48));
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  memset(__dst, 0, 32);
  sub_100148118(v29, v30, v31, v32);
  sub_10022C350(&qword_100CDB3D8, &qword_100A88120);
  State.init(wrappedValue:)();
  v33 = *&__src[2];
  v34 = __src[0];
  v35 = __src[1];
  *&__src[0] = v29;
  *(&__src[0] + 1) = v30;
  *&__src[1] = v31;
  *(&__src[1] + 1) = v32;
  __src[2] = v34;
  __src[3] = v35;
  *&__src[4] = v33;
  View.modifier<A>(_:)();
  memcpy(__dst, __src, 0x48uLL);
  sub_100965A00(__dst);
  v36 = (v3 + *(v27 + 52));
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  memset(v108, 0, 32);
  sub_100148118(v37, v38, v39, v40);
  State.init(wrappedValue:)();
  *&v108[0] = v37;
  *(&v108[0] + 1) = v38;
  *&v108[1] = v39;
  *(&v108[1] + 1) = v40;
  v108[2] = __src[0];
  v108[3] = __src[1];
  *&v108[4] = *&__src[2];
  v41 = v80;
  View.modifier<A>(_:)();
  memcpy(__src, v108, 0x48uLL);
  sub_100965A30(__src);
  (*(v85 + 8))(v11, v41);
  v42 = v105;
  v43 = v105 + 16;
  v85 = *(v105 + 16);
  v44 = v90;
  v45 = v27;
  (v85)(v90, v3, v27);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v78[1] = *(v42 + 80);
  v79 = v43;
  v47 = swift_allocObject();
  v48 = v102;
  *(v47 + 16) = v103;
  *(v47 + 24) = v48;
  v80 = *(v42 + 32);
  v105 = v42 + 32;
  v49 = v44;
  v80(v47 + v46, v44, v27);
  v50 = v100;
  v51 = v81;
  View.onTapGesture(count:perform:)();

  (*(v91 + 8))(v50, v51);
  v52 = v49;
  v53 = v49;
  v54 = v85;
  (v85)(v53, v3, v27);
  v55 = swift_allocObject();
  v57 = v102;
  v56 = v103;
  *(v55 + 16) = v103;
  *(v55 + 24) = v57;
  v58 = v80;
  v80(v55 + v46, v52, v45);
  v59 = v97;
  v54(v97, v3, v45);
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v57;
  v61 = v45;
  v58(v60 + v46, v59, v45);
  v62 = v83;
  v63 = v86;
  v64 = OpaqueTypeConformance2;
  v65 = v101;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  (*(v94 + 8))(v65, v63);
  v66 = (v3 + *(v61 + 56));
  v67 = *v66;
  v68 = *(v66 + 1);
  LOBYTE(v108[0]) = v67;
  *(&v108[0] + 1) = v68;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  LOBYTE(v65) = v107;
  *&v108[0] = v63;
  *(&v108[0] + 1) = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v84;
  v71 = v88;
  sub_100965924(v65, v88, v69);
  (*(v95 + 8))(v62, v71);
  v72 = sub_1009659AC();
  v106[0] = v69;
  v106[1] = v72;
  v73 = v93;
  v74 = swift_getWitnessTable(v98, v93, v106);
  v75 = v89;
  sub_1000833D8(v70, v73, v74);
  v76 = *(v96 + 8);
  v76(v70, v73);
  sub_1000833D8(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_100965430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v17 = type metadata accessor for WeatherComponentButton(0, a2, a3, v16);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.getter();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1001AEDF4(v8);
    v18 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v10 + 8);
    v21(v12, v9);
    v21(v15, v9);
    v18 = v20 > 0.3;
  }

  return (*(a1 + *(v17 + 44)))(v18);
}

uint64_t sub_100965648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherComponentButton(0, v9, v10, v11);
  sub_1000833D8(a1 + *(v12 + 40), a2, a3);
  sub_1000833D8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void sub_100965740(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  if (a1)
  {
    Date.init()();
    v13 = type metadata accessor for Date();
    sub_10001B350(v12, 0, 1, v13);
    type metadata accessor for WeatherComponentButton(0, a3, a4, v14);
    sub_1000D47CC(v12, v9);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    sub_1001AEDF4(v12);
  }
}

uint64_t sub_100965864(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeatherComponentButton(0, a3, a4, a4);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

unint64_t sub_100965958()
{
  result = qword_100CE84C0;
  if (!qword_100CE84C0)
  {
    result = swift_getWitnessTable(byte_100A9CA34, &type metadata for WeatherComponentButtonAccessibilityValueModifier, v0, v1);
    atomic_store(result, &qword_100CE84C0);
  }

  return result;
}

unint64_t sub_1009659AC()
{
  result = qword_100CE84D8;
  if (!qword_100CE84D8)
  {
    result = swift_getWitnessTable(byte_100A9C974, &type metadata for DefaultButtonStyleModifier, v0, v1);
    atomic_store(result, &qword_100CE84D8);
  }

  return result;
}

uint64_t sub_100965A88(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_10003C724();
  v8 = *(type metadata accessor for WeatherComponentButton(v5, v6, v4, v7) - 8);
  return sub_1009658E0(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3, v4, a1);
}

uint64_t sub_100965B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for WeatherComponentButton(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100965430(v8, v5, v6);
}

uint64_t sub_100965BAC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = sub_10003C724();
  v9 = *(type metadata accessor for WeatherComponentButton(v6, v7, v5, v8) - 8);
  v10 = v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for DefaultButtonStyleModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100965D54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100965DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100965E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a1;
  v20 = a2;
  v4 = sub_10022C350(&qword_100CE84E0, &qword_100A9CAD8);
  __chkstk_darwin(v4 - 8);
  v19 = &v17 - v5;
  v18 = sub_10022C350(&qword_100CE84E8, &qword_100A9CAE0);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = *(v2 + 3);
  v28 = *(v2 + 2);
  v29 = v8;
  v30 = v2[8];
  v9 = *(v2 + 3);
  v21 = *(v2 + 2);
  v22 = v9;
  v23 = v2[8];
  sub_10022C350(&qword_100CE84F0, &qword_100A9CAE8);
  State.wrappedValue.getter();
  if (v27)
  {
    v10 = v24;
    v11 = v25;
    LOBYTE(v12) = v26;
    if (v2[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2[3])
    {
      v12 = *(v2 + 4);
      v10 = *v2;
      v11 = v2[1];
      sub_10010CD54(*v2, v11, v12 & 1);

      goto LABEL_9;
    }

    LOBYTE(v12) = 0;
    v10 = 0x444553554E55;
    v11 = 0xE600000000000000;
  }

  v21 = v28;
  v22 = v29;
  v23 = v30;
  State.wrappedValue.getter();
  if (v27)
  {
    sub_10014A53C(v24, v25, v26, v27);
  }

LABEL_9:
  sub_10022C350(&qword_100CE84F8, &qword_100A9CAF0);
  sub_100006F64(&qword_100CE8500, &qword_100CE84F8, &qword_100A9CAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v13 = v19;
  View.accessibilityLabel(_:isEnabled:)();
  sub_10010CD64(v10, v11, v12 & 1);

  v14 = swift_allocObject();
  memcpy((v14 + 16), v3, 0x48uLL);
  sub_1005AD458(v13, v7, &qword_100CE84E0, &qword_100A9CAD8);
  v15 = &v7[*(v18 + 36)];
  *v15 = sub_100191400;
  v15[1] = v14;
  sub_1005AD458(v7, v20, &qword_100CE84E8, &qword_100A9CAE0);
  return sub_10096693C(v3, &v21);
}