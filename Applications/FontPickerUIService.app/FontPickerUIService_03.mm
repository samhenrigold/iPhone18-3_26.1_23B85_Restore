uint64_t sub_1000409FC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A0BC0, &qword_10007AAF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v87[-v6];
  v94 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v94);
  v95 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v9 = __chkstk_darwin(v8);
  v100 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v97 = &v87[-v11];
  v12 = type metadata accessor for Divider();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = __chkstk_darwin(v12);
  v96 = &v87[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v110 = &v87[-v15];
  v16 = sub_1000130DC(&qword_1000A0BC8, &qword_10007AAF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v87[-v20];
  v22 = sub_1000130DC(&qword_1000A0B60, &qword_10007AAB8);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v24);
  v111 = &v87[-v28];
  v88 = *a1;
  v107 = v5;
  v108 = v4;
  v105 = v27;
  v106 = v19;
  v102 = v26;
  if (v88)
  {
    v29 = &off_1000967A8;
  }

  else
  {
    if (qword_10009F2E8 != -1)
    {
      swift_once();
    }
  }

  v103 = v21;
  v104 = v23;
  v109 = a2;
  v116 = v29;
  v30 = *(a1 + 1);
  v31 = *(a1 + 3);
  v32 = a1[32];
  v33 = a1[33];
  v34 = swift_allocObject();
  v35 = *(a1 + 1);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  v93 = a1;
  *(v34 + 48) = *(a1 + 16);

  v92 = v31;
  v91 = v32;
  v90 = v33;
  sub_10004E184(v31, v32, v33);
  sub_1000130DC(&qword_1000A0198, &qword_10007AAD0);
  sub_100015A00(&qword_1000A0B78, &qword_1000A0198, &qword_10007AAD0, &protocol conformance descriptor for [A]);
  sub_10004E2EC();
  sub_100051C20();
  ForEach<>.init(_:content:)();
  if (v30)
  {

    v36 = sub_100021400();
    v89 = v30;

    v37 = (v36 + 4);
    v38 = *(v36 + 2);
    while (1)
    {
      if (!v38)
      {

        v40 = 1;
        v41 = v108;
        v42 = v109;
        v44 = v106;
        v43 = v107;
        v46 = v104;
        v45 = v105;
        v47 = v103;
        goto LABEL_25;
      }

      if (*v37 > 2u)
      {
        break;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v37;
      --v38;
      if (v39)
      {
        goto LABEL_14;
      }
    }

LABEL_14:

    Divider.init()();
    type metadata accessor for MainActor();
    v48 = static MainActor.shared.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = &protocol witness table for MainActor;

    v50 = v92;
    v51 = v91;
    v52 = v90;
    sub_10004E184(v92, v91, v90);
    v53 = static MainActor.shared.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    *(v54 + 24) = &protocol witness table for MainActor;
    v55 = v93;
    v56 = *(v93 + 1);
    *(v54 + 32) = *v93;
    *(v54 + 48) = v56;
    *(v54 + 64) = *(v55 + 16);
    Binding.init(get:set:)();
    v57 = v116;
    v58 = v117;
    v59 = v118;
    v60 = sub_10000A634(v50, v51 | (v52 << 8));
    v61 = v95;
    if ((v62 & 1) == 0 && (v60 == 1 || v60 == 2 && (v88 & 1) == 0))
    {
      if (qword_10009F230 != -1)
      {
        swift_once();
      }

      v63 = qword_1000A4F78;
      v64 = qword_1000A4F80;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v65 = v94;
    static SymbolRenderingMode.hierarchical.getter();
    *v61 = xmmword_100078DA0;
    v66 = (v61 + v65[6]);
    *v66 = v63;
    v66[1] = v64;
    *(v61 + v65[7]) = 1;
    v67 = v61 + v65[8];
    *v67 = v57;
    *(v67 + 1) = v58;
    v67[16] = v59;
    v68 = v61 + v65[9];
    *v68 = swift_getKeyPath();
    v68[8] = 0;
    v113 = v57;
    v114 = v58;
    v115 = v59;

    sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
    Binding.wrappedValue.getter();
    v69 = v112;
    if (qword_10009F230 != -1)
    {
      v86 = v112;
      swift_once();
      v69 = v86;
    }

    v70 = v97;
    sub_10002DF08(v69, 0, qword_1000A4F78, qword_1000A4F80, v97);

    sub_10004F14C(v61, type metadata accessor for TFToggle);
    v72 = v98;
    v71 = v99;
    v73 = *(v98 + 16);
    v74 = v96;
    v75 = v110;
    v73(v96, v110, v99);
    v76 = v100;
    sub_100015AC0(v70, v100, &qword_1000A02F8, &qword_100079E20);
    v77 = v101;
    v73(v101, v74, v71);
    v78 = sub_1000130DC(&qword_1000A0BD0, &qword_10007AB08);
    sub_100015AC0(v76, v77 + *(v78 + 48), &qword_1000A02F8, &qword_100079E20);
    sub_1000156F8(v70, &qword_1000A02F8, &qword_100079E20);
    v79 = *(v72 + 8);
    v79(v75, v71);
    sub_1000156F8(v76, &qword_1000A02F8, &qword_100079E20);
    v79(v74, v71);
    v47 = v103;
    sub_10001471C(v77, v103, &qword_1000A0BC0, &qword_10007AAF0);
    v40 = 0;
    v41 = v108;
    v42 = v109;
    v44 = v106;
    v43 = v107;
    v46 = v104;
    v45 = v105;
LABEL_25:
    v80 = v102;
    (*(v43 + 56))(v47, v40, 1, v41);
    v81 = *(v46 + 16);
    v82 = v111;
    v81(v80, v111, v45);
    sub_100015AC0(v47, v44, &qword_1000A0BC8, &qword_10007AAF8);
    v81(v42, v80, v45);
    v83 = sub_1000130DC(&qword_1000A0BD8, &unk_10007AB10);
    sub_100015AC0(v44, &v42[*(v83 + 48)], &qword_1000A0BC8, &qword_10007AAF8);
    sub_1000156F8(v47, &qword_1000A0BC8, &qword_10007AAF8);
    v84 = *(v46 + 8);
    v84(v82, v45);
    sub_1000156F8(v44, &qword_1000A0BC8, &qword_10007AAF8);
    return (v84)(v80, v45);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000414DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v40 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v40);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v41 = *a1;
  v47 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  type metadata accessor for MainActor();
  sub_100015AC0(&v47, &v44, &qword_1000A03B0, &qword_100079F30);
  sub_10004E184(v8, v9, v10);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a2 + 32);
  *(v12 + 66) = v7;
  sub_100015AC0(&v47, &v44, &qword_1000A03B0, &qword_100079F30);
  sub_10004E184(v8, v9, v10);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 32);
  *(v15 + 66) = v7;
  Binding.init(get:set:)();
  v18 = v44;
  v17 = v45;
  v19 = *&aListBullistDas[8 * v7];
  v20 = v46;
  v21 = v9 | (v10 << 8);
  v22 = *&aListBullistDas[8 * v7 + 32];
  v23 = sub_10000A634(v8, v21);
  if (v24)
  {
    v25 = v19;
    v26 = 0;
    v27 = 0;
    v28 = v41;
  }

  else
  {
    v28 = v41;
    if (v23 == 1 || v23 == 2 && (*a2 & 1) == 0)
    {
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          v25 = v19;
          if (qword_10009F248 != -1)
          {
            swift_once();
          }

          v29 = &qword_1000A4FA8;
        }

        else
        {
          v25 = v19;
          if (qword_10009F230 != -1)
          {
            swift_once();
          }

          v29 = &qword_1000A4F78;
        }
      }

      else if (v41)
      {
        v25 = v19;
        if (qword_10009F240 != -1)
        {
          swift_once();
        }

        v29 = &qword_1000A4F98;
      }

      else
      {
        v25 = v19;
        if (qword_10009F238 != -1)
        {
          swift_once();
        }

        v29 = &qword_1000A4F88;
      }

      v26 = *v29;
      v27 = v29[1];
    }

    else
    {
      v25 = v19;
      v26 = 0;
      v27 = 0;
    }
  }

  v30 = v40;
  static SymbolRenderingMode.hierarchical.getter();
  *v6 = v25;
  v6[1] = v22;
  v31 = (v6 + v30[6]);
  *v31 = v26;
  v31[1] = v27;
  *(v6 + v30[7]) = 1;
  v32 = v6 + v30[8];
  *v32 = v18;
  *(v32 + 1) = v17;
  v32[16] = v20;
  v33 = v6 + v30[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v44 = v18;
  v45 = v17;
  v46 = v20;

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  v34 = v43;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (qword_10009F248 != -1)
      {
        swift_once();
      }

      v35 = &qword_1000A4FA8;
    }

    else
    {
      if (qword_10009F230 != -1)
      {
        swift_once();
      }

      v35 = &qword_1000A4F78;
    }
  }

  else if (v28)
  {
    if (qword_10009F240 != -1)
    {
      swift_once();
    }

    v35 = &qword_1000A4F98;
  }

  else
  {
    if (qword_10009F238 != -1)
    {
      swift_once();
    }

    v35 = &qword_1000A4F88;
  }

  v36 = *v35;
  v37 = v35[1];

  sub_10002DF08(v34, 0, v36, v37, v42);

  return sub_10004F14C(v6, type metadata accessor for TFToggle);
}

uint64_t sub_100041A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {

    sub_1000216D4(_swiftEmptyArrayStorage);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100041AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    v3 = sub_100021400();

    if (*(v3 + 2))
    {
      v4 = *(v3 + 32);

      v5 = *&aListBullistDas[8 * v4];
      v6 = *&aListBullistDas[8 * v4 + 32];
    }

    else
    {

      v6 = 0xEB0000000074656CLL;
      v5 = 0x6C75622E7473696CLL;
    }

    v7 = static Font.title3.getter();
    v8 = type metadata accessor for TFSymbol(0);
    static SymbolRenderingMode.hierarchical.getter();
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + v8[9]) = 1;
    *(a2 + v8[10]) = 1;
    v9 = a2 + v8[11];
    *v9 = swift_getKeyPath();
    *(v9 + 8) = 0;
    v10 = a2 + v8[12];
    *v10 = swift_getKeyPath();
    *(v10 + 8) = 0;
    v11 = sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
    v12 = a2 + v11[9];
    State.init(wrappedValue:)();
    *v12 = v17;
    *(v12 + 8) = v18;
    v13 = a2 + v11[10];
    *v13 = swift_getKeyPath();
    *(v13 + 8) = 0;
    v14 = a2 + v11[11];
    *v14 = swift_getKeyPath();
    *(v14 + 8) = 0;
    v15 = a2 + v11[12];
    result = swift_getKeyPath();
    *v15 = result;
    *(v15 + 8) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100041CF4@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v4 = sub_100021400();

    v5 = v4 + 4;
    v6 = *(v4 + 2);
    v7 = a2;
    do
    {
      v9 = v6;
      if (v6-- == 0)
      {
        break;
      }

      v11 = *v5;
      if (v11 == 2)
      {
        v12 = 0x6C616D69636564;
      }

      else
      {
        v12 = 0x726568746FLL;
      }

      if (v11 == 2)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (*v5)
      {
        v14 = 0x6E6568707968;
      }

      else
      {
        v14 = 1668508004;
      }

      if (*v5)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (*v5 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (*v5 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v7 == 2)
      {
        v18 = 0x6C616D69636564;
      }

      else
      {
        v18 = 0x726568746FLL;
      }

      if (v7 == 2)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v7)
      {
        v20 = 0x6E6568707968;
      }

      else
      {
        v20 = 1668508004;
      }

      if (v7)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v7 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v7 <= 1)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v16 == v22 && v17 == v23)
      {

        break;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v5;
    }

    while ((v8 & 1) == 0);

    *a3 = v9 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100041EDC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      sub_1000130DC(&qword_10009FA28, &qword_100078010);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1000784C0;
      *(v6 + 32) = a5;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    sub_1000216D4(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100042010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A0BE0, &qword_10007AB20);
  v5 = v4[12];
  v6 = type metadata accessor for HoverEffect();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_10004221C(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  State.init(wrappedValue:)();
  *v10 = v18;
  *(v10 + 8) = v19;
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(sub_1000130DC(&qword_1000A0BE8, &qword_10007AB58) + 36));
  v13 = *(sub_1000130DC(&qword_1000A0BF0, &qword_10007AB60) + 28);
  v14 = enum case for UserInterfaceSizeClass.compact(_:);
  v15 = type metadata accessor for UserInterfaceSizeClass();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v12 + v13, v14, v15);
  result = (*(v16 + 56))(v12 + v13, 0, 1, v15);
  *v12 = KeyPath;
  return result;
}

uint64_t sub_10004221C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1000130DC(&qword_1000A0C00, &qword_10007AB70);
  __chkstk_darwin(v3 - 8);
  v5 = (&v72 - v4);
  v78 = sub_1000130DC(&qword_1000A0C08, &qword_10007AB78);
  __chkstk_darwin(v78);
  v7 = (&v72 - v6);
  v82 = sub_1000130DC(&qword_1000A0C10, &qword_10007AB80);
  __chkstk_darwin(v82);
  v77 = &v72 - v8;
  v80 = sub_1000130DC(&qword_1000A0C18, &qword_10007AB88);
  __chkstk_darwin(v80);
  v81 = &v72 - v9;
  v10 = type metadata accessor for BorderlessButtonStyle();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000130DC(&qword_1000A0C20, &qword_10007AB90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v76 = sub_1000130DC(&qword_1000A0C28, &qword_10007AB98);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v18 = &v72 - v17;
  v79 = sub_1000130DC(&qword_1000A0C30, &qword_10007ABA0);
  __chkstk_darwin(v79);
  v75 = &v72 - v19;
  v20 = *(a1 + 16);
  LODWORD(v19) = *(a1 + 24);
  v84 = *(a1 + 25);
  v85 = v19;
  v21 = sub_10000A634(v20, v19 | (v84 << 8));
  if ((v22 & 1) != 0 || v21 > 2)
  {
    v93[0] = *a1;
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    v91 = *(a1 + 48);
    v92 = *(a1 + 56);
    v40 = swift_allocObject();
    v41 = *(a1 + 48);
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 64) = v41;
    *(v40 + 80) = *(a1 + 64);
    v42 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v42;
    *v7 = 0x10000;
    sub_10004E184(v20, v85, v84);
    sub_100015AC0(v93, &v86, &qword_1000A03B0, &qword_100079F30);
    sub_100051F08(v38, v39);
    sub_100015AC0(&v91, &v86, &qword_1000A08D8, &unk_10007A770);
    v75 = v38;
    LODWORD(v74) = v39;
    v43 = sub_10000A468(v38, v39);
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v45 = v78;
    if (byte_1000A51D8)
    {
      goto LABEL_9;
    }

    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    v47 = 12.0;
    if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_9:
      sub_1000693D0(0, v43, v44);
      v47 = v46 * 0.75;
    }

    v76 = v20;
    v48 = v45[12];
    *v5 = static VerticalAlignment.center.getter();
    v5[1] = v47;
    *(v5 + 16) = 0;
    v49 = sub_1000130DC(&qword_1000A0C38, &qword_10007ABA8);
    sub_100043770(a1, v5 + *(v49 + 44));
    sub_10001471C(v5, v7 + v48, &qword_1000A0C00, &qword_10007AB70);
    v50 = (v7 + v45[13]);
    *v50 = sub_100053600;
    v50[1] = v40;
    v51 = v7 + v45[14];
    v89 = 0;
    v90 = 1;
    sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
    State.init(wrappedValue:)();
    v52 = BYTE8(v86);
    v53 = v87;
    *v51 = v86;
    v51[8] = v52;
    *(v51 + 2) = v53;
    v54 = v45[15];
    v89 = 0;
    sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
    State.init(wrappedValue:)();
    *(v7 + v54) = v86;
    v55 = v7 + v45[16];
    *v55 = swift_getKeyPath();
    v55[8] = 0;
    if (qword_10009F1C0 != -1)
    {
      swift_once();
    }

    v86 = xmmword_1000A4E98;
    sub_10004E904();

    v56 = Text.init<A>(_:)();
    v58 = v57;
    v60 = v59;
    sub_100015A00(&qword_1000A0C40, &qword_1000A0C08, &qword_10007AB78, &unk_10007B3C0);
    v61 = v77;
    View.accessibilityLabel(_:)();
    sub_10004F02C(v56, v58, v60 & 1);

    sub_1000156F8(v7, &qword_1000A0C08, &qword_10007AB78);
    v62 = swift_allocObject();
    v63 = *(a1 + 48);
    *(v62 + 48) = *(a1 + 32);
    *(v62 + 64) = v63;
    *(v62 + 80) = *(a1 + 64);
    v64 = *(a1 + 16);
    *(v62 + 16) = *a1;
    *(v62 + 32) = v64;
    v65 = *(sub_1000130DC(&qword_1000A0C48, &qword_10007ABB0) + 36);
    v66 = enum case for CoordinateSpace.global(_:);
    v67 = type metadata accessor for CoordinateSpace();
    (*(*(v67 - 8) + 104))(v61 + v65, v66, v67);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1000535EC;
    *(v68 + 24) = v62;
    v69 = v81;
    v70 = (v61 + *(v82 + 36));
    *v70 = sub_100051F14;
    v70[1] = v68;
    sub_100015AC0(v61, v69, &qword_1000A0C10, &qword_10007AB80);
    swift_storeEnumTagMultiPayload();
    sub_10004E184(v76, v85, v84);
    sub_100015AC0(v93, &v86, &qword_1000A03B0, &qword_100079F30);
    sub_100051F08(v75, v74);
    sub_100015AC0(&v91, &v86, &qword_1000A08D8, &unk_10007A770);
    sub_100051F1C();
    sub_100052098();
    _ConditionalContent<>.init(storage:)();
    v35 = v61;
    v36 = &qword_1000A0C10;
    v37 = &qword_10007AB80;
  }

  else
  {
    v93[0] = *a1;
    v91 = *(a1 + 32);
    v92 = *(a1 + 40);
    v89 = *(a1 + 48);
    v90 = *(a1 + 56);
    v23 = swift_allocObject();
    v78 = &v72;
    v24 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(a1 + 64);
    v25 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v25;
    __chkstk_darwin(v23);
    *(&v72 - 2) = a1;
    sub_100015AC0(v93, &v86, &qword_1000A03B0, &qword_100079F30);
    sub_10004E184(v20, v85, v84);
    sub_100015AC0(&v91, &v86, &qword_1000A0320, &qword_100079E48);
    sub_100015AC0(&v89, &v86, &qword_1000A08D8, &unk_10007A770);
    sub_1000130DC(&qword_1000A0C98, &qword_10007ABC8);
    sub_100052318();
    Button.init(action:label:)();
    BorderlessButtonStyle.init()();
    v26 = sub_100015A00(&qword_1000A0C58, &qword_1000A0C20, &qword_10007AB90, &protocol conformance descriptor for Button<A>);
    v27 = sub_10004E2A4(&qword_1000A0C60, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    View.buttonStyle<A>(_:)();
    (*(v73 + 8))(v12, v10);
    (*(v14 + 8))(v16, v13);
    if (qword_10009F1C0 != -1)
    {
      swift_once();
    }

    v86 = xmmword_1000A4E98;
    sub_10004E904();

    v28 = Text.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    *&v86 = v13;
    *(&v86 + 1) = v10;
    v87 = v26;
    v88 = v27;
    swift_getOpaqueTypeConformance2();
    v33 = v75;
    v34 = v76;
    View.accessibilityLabel(_:)();
    sub_10004F02C(v28, v30, v32 & 1);

    (*(v74 + 8))(v18, v34);
    sub_100015AC0(v33, v81, &qword_1000A0C30, &qword_10007ABA0);
    swift_storeEnumTagMultiPayload();
    sub_100051F1C();
    sub_100052098();
    _ConditionalContent<>.init(storage:)();
    v35 = v33;
    v36 = &qword_1000A0C30;
    v37 = &qword_10007ABA0;
  }

  return sub_1000156F8(v35, v36, v37);
}

uint64_t sub_100042E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v60 = sub_1000130DC(&qword_1000A0D10, &qword_10007AC00);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v4 = &v57 - v3;
  v58 = sub_1000130DC(&qword_1000A0D00, &qword_10007ABF8);
  __chkstk_darwin(v58);
  v6 = &v57 - v5;
  v61 = sub_1000130DC(&qword_1000A0CE0, &qword_10007ABE8);
  __chkstk_darwin(v61);
  v8 = &v57 - v7;
  v62 = sub_1000130DC(&qword_1000A0CD0, &qword_10007ABE0);
  __chkstk_darwin(v62);
  v63 = &v57 - v9;
  v67 = sub_1000130DC(&qword_1000A0CB8, &qword_10007ABD8);
  __chkstk_darwin(v67);
  v66 = &v57 - v10;
  v70 = sub_1000130DC(&qword_1000A0D18, &qword_10007AC08);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v65 = &v57 - v11;
  v64 = sub_1000130DC(&qword_1000A0CB0, &qword_10007ABD0);
  __chkstk_darwin(v64);
  v68 = &v57 - v12;
  v13 = *a1;
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  ColorPicker.init(selection:supportsOpacity:label:)();
  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D9 == 1)
  {
    v14 = 1.0;
  }

  else
  {
    v15 = sub_10000A468(a1[4], *(a1 + 40));
    if (!v13)
    {
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v16 = v15;

    v17 = String._bridgeToObjectiveC()();
    sub_1000691F0(v17, v13, v16);
    v19 = v18;

    v14 = floor(v19 / *(a1 + 8) + v19 / *(a1 + 8)) * 0.5;
  }

  static UnitPoint.center.getter();
  v21 = v20;
  v23 = v22;
  (*(v59 + 32))(v6, v4, v60);
  v24 = &v6[*(v58 + 36)];
  *v24 = v14;
  *(v24 + 1) = v14;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  v74 = a1[2];
  v75 = *(a1 + 12);
  v25 = a1[4];
  v26 = *(a1 + 40);
  v27 = a1[6];
  v28 = *(a1 + 56);
  v29 = swift_allocObject();
  v30 = *(a1 + 3);
  *(v29 + 48) = *(a1 + 2);
  *(v29 + 64) = v30;
  *(v29 + 80) = a1[8];
  v31 = *(a1 + 1);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v32 = *(sub_1000130DC(&qword_1000A0CF0, &qword_10007ABF0) + 36);
  v33 = enum case for CoordinateSpace.global(_:);
  v34 = type metadata accessor for CoordinateSpace();
  (*(*(v34 - 8) + 104))(&v8[v32], v33, v34);
  sub_10001471C(v6, v8, &qword_1000A0D00, &qword_10007ABF8);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000528BC;
  *(v35 + 24) = v29;
  v36 = &v8[*(v61 + 36)];
  *v36 = sub_10005371C;
  v36[1] = v35;

  sub_100015AC0(&v74, v73, &qword_1000A0360, &qword_100079E98);
  sub_100051F08(v25, v26);
  sub_100051F08(v27, v28);
  v37 = sub_10000A468(v25, v26);
  sub_100068F00(v37, v38);
  v39 = sub_10000A468(v25, v26);
  sub_100069AB8(v39, v40);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v63;
  sub_10001471C(v8, v63, &qword_1000A0CE0, &qword_10007ABE8);
  v42 = (v41 + *(v62 + 36));
  v43 = v72[1];
  *v42 = v72[0];
  v42[1] = v43;
  v42[2] = v72[2];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v44 = v66;
  sub_10001471C(v41, v66, &qword_1000A0CD0, &qword_10007ABE0);
  v45 = (v44 + *(v67 + 36));
  v46 = v73[5];
  v45[4] = v73[4];
  v45[5] = v46;
  v45[6] = v73[6];
  v47 = v73[1];
  *v45 = v73[0];
  v45[1] = v47;
  v48 = v73[3];
  v45[2] = v73[2];
  v45[3] = v48;
  sub_100052498();
  v49 = v65;
  View.labelsHidden()();
  sub_1000156F8(v44, &qword_1000A0CB8, &qword_10007ABD8);
  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = 1;
  v52 = v68;
  (*(v69 + 32))(v68, v49, v70);
  v53 = (v52 + *(v64 + 36));
  *v53 = KeyPath;
  v53[1] = sub_100053720;
  v53[2] = v51;
  if (sub_10000A814(v27, v28))
  {
    v54 = 1.0;
  }

  else
  {
    v54 = 0.7;
  }

  v55 = v71;
  sub_10001471C(v52, v71, &qword_1000A0CB0, &qword_10007ABD0);
  result = sub_1000130DC(&qword_1000A0C98, &qword_10007ABC8);
  *(v55 + *(result + 36)) = v54;
  return result;
}

uint64_t sub_100043770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_1000130DC(&qword_1000A0D10, &qword_10007AC00);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v36 - v3;
  v43 = sub_1000130DC(&qword_1000A0D20, &qword_10007AC38);
  __chkstk_darwin(v43);
  v6 = &v36 - v5;
  v7 = sub_1000130DC(&qword_1000A0D28, &qword_10007AC40);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v41 = &v36 - v8;
  v39 = sub_1000130DC(&qword_1000A0D30, &qword_10007AC48);
  __chkstk_darwin(v39);
  v37 = &v36 - v9;
  v42 = sub_1000130DC(&qword_1000A0D38, &qword_10007AC50);
  v10 = __chkstk_darwin(v42);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v38 = &v36 - v15;
  v16 = *a1;
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  ColorPicker.init(selection:supportsOpacity:label:)();
  v17 = sub_10000A468(a1[4], *(a1 + 40));
  if (v16)
  {
    v18 = v17;

    v19 = String._bridgeToObjectiveC()();
    sub_1000691F0(v19, v16, v18);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v40 + 32))(v6, v4, v44);
    v20 = &v6[*(v43 + 36)];
    v21 = v50;
    *v20 = v49;
    *(v20 + 1) = v21;
    *(v20 + 2) = v51;
    sub_100052744(&qword_1000A0D40, &qword_1000A0D20, &qword_10007AC38);
    v22 = v41;
    View.labelsHidden()();
    sub_1000156F8(v6, &qword_1000A0D20, &qword_10007AC38);
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = 1;
    v25 = v37;
    (*(v45 + 32))(v37, v22, v46);
    v26 = (v25 + *(v39 + 36));
    *v26 = KeyPath;
    v26[1] = sub_100053720;
    v26[2] = v24;
    if (sub_10000A814(a1[6], *(a1 + 56)))
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.7;
    }

    sub_10001471C(v25, v14, &qword_1000A0D30, &qword_10007AC48);
    *&v14[*(v42 + 36)] = v27;
    v28 = v38;
    sub_10001471C(v14, v38, &qword_1000A0D38, &qword_10007AC50);
    if (qword_10009F280 != -1)
    {
      swift_once();
    }

    v30 = qword_1000A5018;
    v29 = unk_1000A5020;
    v31 = swift_getKeyPath();
    v32 = v47;
    sub_100015AC0(v28, v47, &qword_1000A0D38, &qword_10007AC50);
    v33 = v48;
    sub_100015AC0(v32, v48, &qword_1000A0D38, &qword_10007AC50);
    v34 = v33 + *(sub_1000130DC(&qword_1000A0D48, &qword_10007AC58) + 48);
    *v34 = v30;
    *(v34 + 8) = v29;
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = 0;
    swift_bridgeObjectRetain_n();
    sub_100051F08(v31, 0);
    sub_1000156F8(v28, &qword_1000A0D38, &qword_10007AC50);

    sub_100013A58(v31, 0);
    return sub_1000156F8(v32, &qword_1000A0D38, &qword_10007AC50);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100043DDC(void *a1)
{
  if (*a1)
  {
    v1 = *(*a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_pickColor);

    v1(v2);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_100043E94(void *result, double a2, double a3, double a4, double a5)
{
  if (*result)
  {
    v5 = (*result + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_colorPickerRect);
    *v5 = a2;
    v5[1] = a3;
    v5[2] = a4;
    v5[3] = a5;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100043F24(uint64_t a1)
{
  v2 = sub_1000130DC(&qword_1000A0BF8, &qword_10007AB68);
  __chkstk_darwin(v2 - 8);
  sub_100015AC0(a1, &v5 - v3, &qword_1000A0BF8, &qword_10007AB68);
  return EnvironmentValues.horizontalSizeClass.setter();
}

void *sub_100044010@<X0>(void (*a1)(void, void, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, uint64_t, uint64_t, uint64_t)@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v16 = sub_1000130DC(&qword_1000A0AF8, &qword_10007AA70);
  v17 = v16[12];
  v18 = type metadata accessor for HoverEffect();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 9) = 257;
  *(a9 + 11) = 0;
  sub_100044194(a1, a2, a3, a4 & 0x1FF, a5, a6, a7, a8, (a9 + v16[13]));
  v19 = a9 + v16[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a9 + v16[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a9 + v16[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v16[17];
  result = State.init(wrappedValue:)();
  *v22 = v26;
  *(v22 + 8) = v27;
  return result;
}

uint64_t sub_100044194@<X0>(void (*a1)(void, void, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, uint64_t, uint64_t, uint64_t)@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, void *a9@<X8>)
{
  v51 = a7;
  v52 = a8;
  v53 = a5;
  v54 = a6;
  v57 = a1;
  v58 = a2;
  v63 = a9;
  v62 = sub_1000130DC(&qword_1000A0B00, &qword_10007AA78);
  __chkstk_darwin(v62);
  v12 = &v51 - v11;
  v13 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v51 - v18;
  v20 = __chkstk_darwin(v17);
  v56 = &v51 - v21;
  __chkstk_darwin(v20);
  v55 = &v51 - v22;
  v59 = sub_1000130DC(&qword_1000A0B08, &qword_10007AA80);
  __chkstk_darwin(v59);
  v24 = &v51 - v23;
  v60 = sub_1000130DC(&qword_1000A0B10, &qword_10007AA88);
  v25 = *(v60 - 8);
  __chkstk_darwin(v60);
  v27 = &v51 - v26;
  v61 = sub_1000130DC(&qword_1000A0B18, &qword_10007AA90);
  v28 = *(v61 - 8);
  __chkstk_darwin(v61);
  v30 = &v51 - v29;
  v31 = sub_10000A634(a3, a4 & 0x1FF);
  if ((v32 & 1) != 0 || v31 != 1)
  {
    v41 = a4;
    v42 = a4 & 0x100;
    v43 = a4 & 0x1FF;
    v44 = v55;
    v54 = v24;
    v46 = v57;
    v45 = v58;
    v51(0, v57, v58, a3, v43);
    v47 = v56;
    v52(0, v46, v45, a3, v42 | v41);
    sub_100015AC0(v44, v19, &qword_1000A02F8, &qword_100079E20);
    sub_100015AC0(v47, v16, &qword_1000A02F8, &qword_100079E20);
    sub_100015AC0(v19, v12, &qword_1000A02F8, &qword_100079E20);
    v48 = sub_1000130DC(&qword_1000A0B20, &qword_10007AA98);
    sub_100015AC0(v16, &v12[*(v48 + 48)], &qword_1000A02F8, &qword_100079E20);
    sub_1000156F8(v16, &qword_1000A02F8, &qword_100079E20);
    sub_1000156F8(v19, &qword_1000A02F8, &qword_100079E20);
    sub_100015AC0(v12, v54, &qword_1000A0B00, &qword_10007AA78);
    swift_storeEnumTagMultiPayload();
    v49 = sub_100015A00(&qword_1000A0B28, &qword_1000A0B10, &qword_10007AA88, &protocol conformance descriptor for Menu<A, B>);
    v50 = sub_10004E3D8();
    v65 = v60;
    v66 = &type metadata for TFMenuStyle;
    v67 = v49;
    v68 = v50;
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0B30, &qword_1000A0B00, &qword_10007AA78, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v12, &qword_1000A0B00, &qword_10007AA78);
    sub_1000156F8(v47, &qword_1000A02F8, &qword_100079E20);
    return sub_1000156F8(v44, &qword_1000A02F8, &qword_100079E20);
  }

  else
  {
    v56 = &v51;
    __chkstk_darwin(1);
    v33 = v58;
    *(&v51 - 4) = v57;
    *(&v51 - 3) = v33;
    *(&v51 - 2) = a3;
    *(&v51 - 8) = a4;
    *(&v51 - 7) = HIBYTE(a4) & 1;
    sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
    sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
    v58 = sub_100015A00(&qword_1000A0B30, &qword_1000A0B00, &qword_10007AA78, &protocol conformance descriptor for TupleView<A>);
    Menu.init(content:label:)();
    v64 = 0;
    State.init(wrappedValue:)();
    v34 = v65;
    v35 = v66;
    LOBYTE(v65) = 0;
    LOBYTE(v66) = v34;
    v67 = v35;
    v36 = sub_100015A00(&qword_1000A0B28, &qword_1000A0B10, &qword_10007AA88, &protocol conformance descriptor for Menu<A, B>);
    v37 = sub_10004E3D8();
    v38 = v60;
    View.menuStyle<A>(_:)();

    (*(v25 + 8))(v27, v38);
    v39 = v61;
    (*(v28 + 16))(v24, v30, v61);
    swift_storeEnumTagMultiPayload();
    v65 = v38;
    v66 = &type metadata for TFMenuStyle;
    v67 = v36;
    v68 = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v28 + 8))(v30, v39);
  }
}

uint64_t sub_1000448B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v11 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v26 - v19;
  __chkstk_darwin(v18);
  v22 = &v26 - v21;
  v26(1, a1, a2, a3, a4 & 0x1FF);
  v27(1, a1, a2, a3, a4 & 0x1FF);
  sub_100015AC0(v22, v17, &qword_1000A02F8, &qword_100079E20);
  sub_100015AC0(v20, v14, &qword_1000A02F8, &qword_100079E20);
  v23 = v28;
  sub_100015AC0(v17, v28, &qword_1000A02F8, &qword_100079E20);
  v24 = sub_1000130DC(&qword_1000A0B20, &qword_10007AA98);
  sub_100015AC0(v14, v23 + *(v24 + 48), &qword_1000A02F8, &qword_100079E20);
  sub_1000156F8(v20, &qword_1000A02F8, &qword_100079E20);
  sub_1000156F8(v22, &qword_1000A02F8, &qword_100079E20);
  sub_1000156F8(v14, &qword_1000A02F8, &qword_100079E20);
  return sub_1000156F8(v17, &qword_1000A02F8, &qword_100079E20);
}

uint64_t sub_100044AC0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = type metadata accessor for AccessibilityTraits();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v9 = __chkstk_darwin(v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v43 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v43 - v14;
  __chkstk_darwin(v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_10009F278 != -1)
    {
      swift_once();
    }

    v18 = qword_1000A5008;
    v19 = unk_1000A5010;
  }

  v43 = 0x800000010007D640;
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = v45;

  v23 = v47;
  sub_10004E184(v47, a5, BYTE1(a5) & 1);
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  v26 = v46;
  *(v25 + 32) = v22;
  *(v25 + 40) = v26;
  *(v25 + 48) = v23;
  *(v25 + 56) = a5;
  *(v25 + 57) = BYTE1(a5) & 1;
  Binding.init(get:set:)();
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v57;
  static SymbolRenderingMode.hierarchical.getter();
  *v30 = 0xD000000000000013;
  v30[1] = v43;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v27;
  *(v32 + 1) = v28;
  v32[16] = v29;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_10009F278 != -1)
  {
    swift_once();
  }

  v58 = qword_1000A5008;
  v59 = unk_1000A5010;
  sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
  sub_10004E904();
  v34 = v49;
  View.accessibilityLabel<A>(_:)();
  v35 = v44;
  static AccessibilityTraits.isToggle.getter();
  v36 = v50;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_1000156F8(v34, &qword_1000A02F8, &qword_100079E20);
  static AccessibilityTraits.isButton.getter();
  v39 = v52;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v36, &qword_1000A02F8, &qword_100079E20);
  v58 = _swiftEmptyArrayStorage;
  v55 = sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v54;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v39, &qword_1000A02F8, &qword_100079E20);
  sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000784C0;
  static AccessibilityTraits.isSelected.getter();
  v58 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v40, &qword_1000A02F8, &qword_100079E20);
  return sub_10004F14C(v57, type metadata accessor for TFToggle);
}

uint64_t sub_100045164@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = type metadata accessor for AccessibilityTraits();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v9 = __chkstk_darwin(v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v43 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v43 - v14;
  __chkstk_darwin(v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_10009F270 != -1)
    {
      swift_once();
    }

    v18 = qword_1000A4FF8;
    v19 = unk_1000A5000;
  }

  v43 = 0x800000010007D620;
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = v45;

  v23 = v47;
  sub_10004E184(v47, a5, BYTE1(a5) & 1);
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  v26 = v46;
  *(v25 + 32) = v22;
  *(v25 + 40) = v26;
  *(v25 + 48) = v23;
  *(v25 + 56) = a5;
  *(v25 + 57) = BYTE1(a5) & 1;
  Binding.init(get:set:)();
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v57;
  static SymbolRenderingMode.hierarchical.getter();
  *v30 = 0xD000000000000013;
  v30[1] = v43;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v27;
  *(v32 + 1) = v28;
  v32[16] = v29;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_10009F270 != -1)
  {
    swift_once();
  }

  v58 = qword_1000A4FF8;
  v59 = unk_1000A5000;
  sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
  sub_10004E904();
  v34 = v49;
  View.accessibilityLabel<A>(_:)();
  v35 = v44;
  static AccessibilityTraits.isToggle.getter();
  v36 = v50;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_1000156F8(v34, &qword_1000A02F8, &qword_100079E20);
  static AccessibilityTraits.isButton.getter();
  v39 = v52;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v36, &qword_1000A02F8, &qword_100079E20);
  v58 = _swiftEmptyArrayStorage;
  v55 = sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v54;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v39, &qword_1000A02F8, &qword_100079E20);
  sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000784C0;
  static AccessibilityTraits.isSelected.getter();
  v58 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v40, &qword_1000A02F8, &qword_100079E20);
  return sub_10004F14C(v57, type metadata accessor for TFToggle);
}

uint64_t sub_100045814@<X0>(__n128 *a2@<X8>, __n128 a3@<Q0>)
{
  v4 = static Font.title3.getter();
  v5 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a2 = a3;
  a2[1].n128_u8[0] = 0;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = 0;
  a2->n128_u8[v5[9]] = 1;
  a2->n128_u8[v5[10]] = 1;
  v6 = a2 + v5[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v5[12];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  v9 = a2 + v8[9];
  State.init(wrappedValue:)();
  *v9 = v15;
  *(v9 + 1) = v16;
  v10 = a2 + v8[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v8[11];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + v8[12];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

uint64_t sub_100045960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v10 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v14 = *(a4 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    (*(v11 + 104))(v13, *a8, v10);

    v14(v13, 0);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100045B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v29[-v11];
  v13 = sub_1000130DC(&qword_1000A0D50, &qword_10007AC60);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29[-v15];
  v17 = v14[14];
  v18 = type metadata accessor for HoverEffect();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  *v16 = 0;
  v16[8] = 1;
  *(v16 + 9) = 257;
  v16[11] = 0;
  sub_100045F28(a1, a2, a3, a4 & 0x1FF, &v16[v14[15]]);
  v19 = &v16[v14[16]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v16[v14[17]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v16[v14[18]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v16[v14[19]];
  v29[7] = 0;
  State.init(wrappedValue:)();
  v23 = v30;
  *v22 = v29[8];
  *(v22 + 1) = v23;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v24 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v24 - 8) + 48))(v12, 1, v24))
    {

      sub_1000156F8(v12, &qword_10009FAB0, &qword_1000781B8);
      v25 = 0;
    }

    else
    {
      v26 = UITextFormattingViewController.FormattingDescriptor._blockquote.getter();

      sub_1000156F8(v12, &qword_10009FAB0, &qword_1000781B8);
      v25 = v26 == 1;
    }

    if (qword_10009F2C8 != -1)
    {
      v28 = v25;
      swift_once();
      v25 = v28;
    }

    sub_10002E4C4(v25, 0, qword_1000A50A8, unk_1000A50B0, a5);
    return sub_1000156F8(v16, &qword_1000A0D50, &qword_10007AC60);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100045F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (a4 >> 8) & 1;
  type metadata accessor for MainActor();

  sub_10004E184(a3, a4, v10);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 57) = v10;

  sub_10004E184(a3, a4, v10);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 57) = v10;
  Binding.init(get:set:)();
  v15 = type metadata accessor for TFToggle(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a5 = 0xD000000000000016;
  a5[1] = 0x800000010007D660;
  v16 = (a5 + v15[6]);
  *v16 = 0;
  v16[1] = 0;
  *(a5 + v15[7]) = 0;
  v17 = a5 + v15[8];
  *v17 = v20;
  *(v17 + 1) = v21;
  v17[16] = v22;
  v18 = a5 + v15[9];
  result = swift_getKeyPath();
  *v18 = result;
  v18[8] = 0;
  return result;
}

uint64_t sub_1000460F4@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>)
{
  v5 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v8 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      result = sub_1000156F8(v7, &qword_10009FAB0, &qword_1000781B8);
      v10 = 0;
    }

    else
    {
      v11 = UITextFormattingViewController.FormattingDescriptor._blockquote.getter();

      result = sub_1000156F8(v7, &qword_10009FAB0, &qword_1000781B8);
      v10 = v11 == 1;
    }

    *a3 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000462BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v11 = *a1;
    v12 = *(a4 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    *v10 = v11;
    (*(v8 + 104))(v10, enum case for UITextFormattingViewController.ChangeValue.toggleBlockquote(_:), v7);

    v12(v10, 0);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_100046498@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  v5 = byte_1000A51D9;
  v6 = sub_1000130DC(&qword_1000A0428, &qword_10007A018);
  v7 = v6[12];
  v8 = type metadata accessor for HoverEffect();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = v5;
  sub_100046614(v3, (a1 + v6[13]));
  v9 = a1 + v6[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[15];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a1 + v6[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v6[17];
  result = State.init(wrappedValue:)();
  *v12 = v14;
  *(v12 + 8) = v15;
  return result;
}

uint64_t sub_100046614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v3 = sub_1000130DC(&qword_1000A0430, &qword_10007A020);
  __chkstk_darwin(v3);
  v5 = &v72 - v4;
  v6 = sub_1000130DC(&qword_1000A0438, &qword_10007A028);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_1000130DC(&qword_1000A0440, &qword_10007A030);
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  v82 = sub_1000130DC(&qword_1000A0448, &qword_10007A038);
  v12 = __chkstk_darwin(v82);
  v89 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v72 - v14;
  v15 = sub_1000130DC(&qword_1000A0450, &qword_10007A040);
  v84 = *(v15 - 8);
  v85 = v15;
  __chkstk_darwin(v15);
  v83 = &v72 - v16;
  v81 = sub_1000130DC(&qword_1000A0458, &qword_10007A048);
  v17 = __chkstk_darwin(v81);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v79 = &v72 - v20;
  __chkstk_darwin(v19);
  v87 = &v72 - v21;
  v22 = sub_1000130DC(&qword_1000A0460, &qword_10007A050);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v26 = sub_1000130DC(&qword_1000A0468, &qword_10007A058);
  v27 = __chkstk_darwin(v26 - 8);
  __chkstk_darwin(v27);
  v90 = &v72 - v29;
  if ((*a1 & 1) == 0)
  {
    sub_1000471AC(v25);
    sub_100015AC0(v25, v5, &qword_1000A0460, &qword_10007A050);
    swift_storeEnumTagMultiPayload();
    sub_100015A00(&qword_1000A0470, &qword_1000A0438, &qword_10007A028, &protocol conformance descriptor for TupleView<A>);
    sub_10004EBEC();
    _ConditionalContent<>.init(storage:)();
    v33 = v25;
    v34 = &qword_1000A0460;
    v35 = &qword_10007A050;
    return sub_1000156F8(v33, v34, v35);
  }

  v72 = v9;
  v73 = v28;
  v88 = v22;
  v30 = sub_10000A634(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  v76 = v6;
  v77 = v5;
  v75 = v3;
  v74 = v8;
  if ((v31 & 1) != 0 || v30 >= 2)
  {
    sub_1000471AC(v25);
    v36 = v90;
    sub_10001471C(v25, v90, &qword_1000A0460, &qword_10007A050);
    v32 = (*(v23 + 56))(v36, 0, 1, v88);
  }

  else
  {
    v32 = (*(v23 + 56))(v90, 1, 1, v88);
  }

  v37 = __chkstk_darwin(v32);
  *(&v72 - 2) = a1;
  __chkstk_darwin(v37);
  *(&v72 - 2) = a1;
  sub_1000130DC(&qword_1000A04A0, &qword_10007A078);
  sub_1000130DC(&qword_1000A04A8, &qword_10007A080);
  sub_100015A00(&qword_1000A04B0, &qword_1000A04A0, &qword_10007A078, &unk_10007B2E8);
  sub_10004EE2C();
  Menu.init(content:label:)();
  v38 = v72;
  if (qword_10009F2D8 != -1)
  {
    swift_once();
  }

  v92 = qword_1000A50C8;
  v93 = unk_1000A50D0;
  sub_10004E904();

  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  sub_100015A00(&qword_1000A04E8, &qword_1000A0440, &qword_10007A030, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityLabel(_:)();
  sub_10004F02C(v39, v41, v43 & 1);

  (*(v78 + 8))(v11, v38);
  if (*(a1 + 8))
  {

    sub_100023394();
    if (v44)
    {
      v45 = v44;
      v46 = [v44 title];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      sub_100023394();
      if (!v50 || (v51 = v50, v52 = [v50 color], v51, !v52))
      {
        v52 = [objc_opt_self() secondaryLabelColor];
      }

      v53 = [v52 CGColor];

      v46 = AXNameFromColor(v53);
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v54;
    }

    v92 = v47;
    v93 = v49;
    v55 = v80;
    v56 = v89;
    ModifiedContent<>.accessibilityValue<A>(_:)();

    sub_1000156F8(v56, &qword_1000A0448, &qword_10007A038);
    v95[0] = 0;
    State.init(wrappedValue:)();
    v57 = v92;
    v58 = v93;
    LOBYTE(v92) = 0;
    LOBYTE(v93) = v57;
    v94 = v58;
    sub_10004F03C();
    sub_10004E3D8();
    v59 = v83;
    View.menuStyle<A>(_:)();

    sub_1000156F8(v55, &qword_1000A0448, &qword_10007A038);
    v60 = sub_100049174();
    KeyPath = swift_getKeyPath();
    v62 = swift_allocObject();
    *(v62 + 16) = v60 & 1;
    v63 = v79;
    (*(v84 + 32))(v79, v59, v85);
    v64 = (v63 + *(v81 + 36));
    *v64 = KeyPath;
    v64[1] = sub_10004F13C;
    v64[2] = v62;
    v65 = v87;
    sub_10001471C(v63, v87, &qword_1000A0458, &qword_10007A048);
    v66 = v90;
    v67 = v73;
    sub_100015AC0(v90, v73, &qword_1000A0468, &qword_10007A058);
    v68 = v86;
    sub_100015AC0(v65, v86, &qword_1000A0458, &qword_10007A048);
    v69 = v74;
    sub_100015AC0(v67, v74, &qword_1000A0468, &qword_10007A058);
    v70 = sub_1000130DC(&qword_1000A04F8, &qword_10007A0C8);
    sub_100015AC0(v68, v69 + *(v70 + 48), &qword_1000A0458, &qword_10007A048);
    sub_1000156F8(v68, &qword_1000A0458, &qword_10007A048);
    sub_1000156F8(v67, &qword_1000A0468, &qword_10007A058);
    sub_100015AC0(v69, v77, &qword_1000A0438, &qword_10007A028);
    swift_storeEnumTagMultiPayload();
    sub_100015A00(&qword_1000A0470, &qword_1000A0438, &qword_10007A028, &protocol conformance descriptor for TupleView<A>);
    sub_10004EBEC();
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v69, &qword_1000A0438, &qword_10007A028);
    sub_1000156F8(v65, &qword_1000A0458, &qword_10007A048);
    v33 = v66;
    v34 = &qword_1000A0468;
    v35 = &qword_10007A058;
    return sub_1000156F8(v33, v34, v35);
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000471AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v45 - v6);
  v46 = sub_1000130DC(&qword_1000A0488, &qword_10007A060);
  __chkstk_darwin(v46);
  v9 = &v45 - v8;
  type metadata accessor for MainActor();
  sub_100015560(v1, &v48);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = v1[3];
  *(v11 + 64) = v1[2];
  *(v11 + 80) = v12;
  v13 = v1[5];
  *(v11 + 96) = v1[4];
  *(v11 + 112) = v13;
  v14 = v1[1];
  *(v11 + 32) = *v1;
  *(v11 + 48) = v14;
  sub_100015560(v1, &v48);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  v17 = v1[3];
  *(v16 + 64) = v1[2];
  *(v16 + 80) = v17;
  v18 = v1[5];
  *(v16 + 96) = v1[4];
  *(v16 + 112) = v18;
  v19 = v1[1];
  *(v16 + 32) = *v1;
  *(v16 + 48) = v19;
  Binding.init(get:set:)();
  v20 = v48;
  v21 = v49;
  v22 = type metadata accessor for TFToggle(0);

  static SymbolRenderingMode.hierarchical.getter();
  *v7 = xmmword_100078DC0;
  v23 = (v7 + v22[6]);
  *v23 = 0;
  v23[1] = 0;
  *(v7 + v22[7]) = 0;
  v24 = v7 + v22[8];
  *v24 = v20;
  v45 = *(&v20 + 1);
  v24[16] = v21;
  v25 = v7 + v22[9];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  LOBYTE(v25) = sub_100049174();
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25 & 1;
  v28 = (v7 + *(v5 + 44));
  *v28 = KeyPath;
  v28[1] = sub_100053720;
  v28[2] = v27;
  if (*v2)
  {
    v29 = sub_10000A634(*(v2 + 3), *(v2 + 32) | (*(v2 + 33) << 8));
    v47 = 0;
    if ((v30 & 1) == 0 && v29 >= 4)
    {
      v31 = sub_10000A468(*(v2 + 7), *(v2 + 64));
      sub_100068F00(v31, v32);
      v47 = v33;
    }
  }

  else
  {
    v47 = 0;
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001471C(v7, v9, &qword_1000A0498, &qword_10007A068);
  v34 = &v9[*(v46 + 36)];
  v35 = v53;
  *(v34 + 4) = v52;
  *(v34 + 5) = v35;
  *(v34 + 6) = v54;
  v36 = v49;
  *v34 = v48;
  *(v34 + 1) = v36;
  v37 = v51;
  *(v34 + 2) = v50;
  *(v34 + 3) = v37;
  if (*(v2 + 1))
  {

    sub_10002259C();
    v39 = v38;

    v40 = v39;
    if (v39 >> 62)
    {
      goto LABEL_12;
    }

    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      while ((v40 & 0xC000000000000001) == 0)
      {
        v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v42)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_12:
        v43 = v40;
        v41 = _CocoaArrayWrapper.endIndex.getter();
        v40 = v43;
        if (!v41)
        {
          goto LABEL_15;
        }
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
    }

LABEL_15:

LABEL_16:
    if (qword_10009F2D0 != -1)
    {
      swift_once();
    }

    sub_10002EA90(v41 != 0, 0, qword_1000A50B8, unk_1000A50C0, a1);

    return sub_1000156F8(v9, &qword_1000A0488, &qword_10007A060);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004771C(uint64_t a1, double a2)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    if (qword_10009F340 != -1)
    {
      swift_once();
    }

    goto LABEL_7;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v3 = v9[0];
LABEL_7:
    v9[12] = v3;
    swift_getKeyPath();
    v4 = swift_allocObject();
    v5 = *(a1 + 48);
    v4[3] = *(a1 + 32);
    v4[4] = v5;
    v6 = *(a1 + 80);
    v4[5] = *(a1 + 64);
    v4[6] = v6;
    v7 = *(a1 + 16);
    v4[1] = *a1;
    v4[2] = v7;
    sub_100015560(a1, v9);
    sub_1000130DC(&qword_10009FF10, &qword_100078538);
    sub_1000130DC(&qword_1000A04C8, &qword_10007A088);
    sub_100015A00(&qword_1000A0540, &qword_10009FF10, &qword_100078538, &protocol conformance descriptor for [A]);
    sub_10004EEB0();
    return ForEach<>.init(_:id:content:)();
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_100047958(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 styleKey];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1000479B0@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v45 = type metadata accessor for ButtonToggleStyle();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000130DC(&qword_1000A04D0, &qword_10007A090);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = v42 - v7;
  v9 = sub_1000130DC(&qword_1000A0548, &qword_10007A1C0);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  __chkstk_darwin(v9);
  v12 = v42 - v11;
  v13 = *a1;
  type metadata accessor for MainActor();
  sub_100015560(a2, &v52);
  v14 = v13;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  v17 = a2[3];
  *(v16 + 64) = a2[2];
  *(v16 + 80) = v17;
  v18 = a2[5];
  *(v16 + 96) = a2[4];
  *(v16 + 112) = v18;
  v19 = a2[1];
  *(v16 + 32) = *a2;
  *(v16 + 48) = v19;
  *(v16 + 128) = v14;
  sub_100015560(a2, &v52);
  v20 = v14;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  v23 = a2[3];
  *(v22 + 64) = a2[2];
  *(v22 + 80) = v23;
  v24 = a2[5];
  *(v22 + 96) = a2[4];
  *(v22 + 112) = v24;
  v25 = a2[1];
  *(v22 + 32) = *a2;
  *(v22 + 48) = v25;
  *(v22 + 128) = v20;
  Binding.init(get:set:)();
  v26 = v53;
  v50 = v20;
  v51 = a2;
  v42[2] = v52;

  v42[1] = v26;

  sub_1000130DC(&qword_1000A0550, &qword_10007A1C8);
  sub_100015A00(&qword_1000A0558, &qword_1000A0550, &qword_10007A1C8, &protocol conformance descriptor for Label<A, B>);
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  v27 = sub_100015A00(&qword_1000A04D8, &qword_1000A04D0, &qword_10007A090, &protocol conformance descriptor for Toggle<A>);
  v28 = sub_10004E2A4(&qword_1000A04E0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v29 = v12;
  v30 = v43;
  v31 = v45;
  View.toggleStyle<A>(_:)();
  (*(v46 + 8))(v6, v31);
  (*(v44 + 8))(v8, v30);
  v32 = [v20 title];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v52 = v33;
  v53 = v35;
  sub_10004E904();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v6) = v39;
  v52 = v30;
  v53 = v31;
  v54 = v27;
  v55 = v28;
  swift_getOpaqueTypeConformance2();
  v40 = v47;
  View.accessibilityLabel(_:)();
  sub_10004F02C(v36, v38, v6 & 1);

  return (*(v48 + 8))(v29, v40);
}

uint64_t sub_100047EFC@<X0>(uint64_t a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    sub_10002259C();
    v5 = v4;

    v20 = a3;
    if (v5 >> 62)
    {
LABEL_18:
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    do
    {
      v8 = v6;
      if (v23 == v6)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v11 = [v9 styleKey];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [a2 styleKey];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        break;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = v8 + 1;
    }

    while ((v7 & 1) == 0);

    *v20 = v23 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100048138(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_100077630;
      *(v6 + 4) = a5;

      v7 = a5;
    }

    else if (*(a4 + 1))
    {

      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_100077630;
      v8 = qword_10009F308;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = qword_1000A50F0;
      *(v6 + 4) = qword_1000A50F0;
      v10 = v9;
    }

    sub_100022A04(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000482C0(uint64_t a1, uint64_t a2)
{
  sub_1000130DC(&qword_1000A0560, &qword_10007A1D0);
  sub_10004F334();
  return Label.init(title:icon:)();
}

uint64_t sub_10004835C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10004E904();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000483E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v5 = [a2 styleKey];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v14 + 16))
    {
      v9 = sub_10000C53C(v6, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v14 + 56) + 8 * v9);

        result = Image.init(uiImage:)();
LABEL_7:
        *a3 = result;
        return result;
      }
    }

    else
    {
    }

    result = 0;
    goto LABEL_7;
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100048568@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_100048638(a2);
  v3 = sub_1000130DC(&qword_1000A04A0, &qword_10007A078);
  v4 = a1 + v3[9];
  State.init(wrappedValue:)();
  *v4 = v9;
  *(v4 + 8) = v10;
  v5 = a1 + v3[10];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v3[11];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_100048638(uint64_t a1)
{
  v3 = sub_1000130DC(&qword_1000A0500, &qword_10007A118);
  __chkstk_darwin(v3);
  v5 = &v19[-v4];
  v6 = sub_1000130DC(&qword_1000A0508, &qword_10007A120);
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for TFSymbol(0);
  __chkstk_darwin(v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10000A634(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v13 & 1) != 0 || v12 > 1)
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v18 = sub_1000130DC(&qword_1000A0510, &qword_10007A128);
    sub_1000489C8(a1, &v5[*(v18 + 44)]);
    sub_100015AC0(v5, v8, &qword_1000A0500, &qword_10007A118);
    swift_storeEnumTagMultiPayload();
    sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    sub_100015A00(&qword_1000A0518, &qword_1000A0500, &qword_10007A118, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000156F8(v5, &qword_1000A0500, &qword_10007A118);
  }

  else
  {
    v14 = static Font.title3.getter();
    static SymbolRenderingMode.hierarchical.getter();
    *v11 = xmmword_100078DC0;
    v11[16] = 0;
    *(v11 + 3) = v14;
    *(v11 + 4) = 0;
    v11[v9[9]] = 1;
    v11[v9[10]] = 1;
    v15 = &v11[v9[11]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = &v11[v9[12]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_1000516A0(v11, v8, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    sub_100015A00(&qword_1000A0518, &qword_1000A0500, &qword_10007A118, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10004F14C(v11, type metadata accessor for TFSymbol);
  }
}

uint64_t sub_1000489C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A0520, &qword_10007A130);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v10 = &v55[-v9 - 8];
  v11 = sub_10004905C();
  v12 = static Font.title3.getter();
  v13 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *v10 = xmmword_100078DD0;
  v10[16] = 0;
  *(v10 + 3) = v12;
  *(v10 + 4) = v11;
  v10[v13[9]] = 1;
  v10[v13[10]] = 1;
  v14 = &v10[v13[11]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = &v10[v13[12]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v10[*(v5 + 44)];
  v17 = *(sub_1000130DC(&qword_1000A0528, &qword_10007A138) + 28);
  v18 = enum case for Image.Scale.small(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  if (*(a1 + 8))
  {

    sub_100023394();
    v21 = v20;

    if (v21)
    {
      v22 = [v21 title];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (*a1)
      {
        v26 = sub_10000A634(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
        if ((v27 & 1) == 0 && v26 >= 4 && *(a1 + 88) < sub_10000A9D4(*(a1 + 40), *(a1 + 48)))
        {
          KeyPath = swift_getKeyPath();
          v28 = static Edge.Set.horizontal.getter();
          v29 = sub_10000A468(*(a1 + 56), *(a1 + 64));
          if (qword_10009F368 != -1)
          {
            swift_once();
          }

          if (byte_1000A51D8)
          {
            goto LABEL_10;
          }

          if (qword_10009F370 != -1)
          {
            swift_once();
          }

          if ((byte_1000A51D9 & 1) == 0)
          {
            v45 = _UISolariumEnabled();
            v30 = 11.0;
            if (v45)
            {
LABEL_10:
              sub_1000693D0(0, v29, v30);
            }
          }

          EdgeInsets.init(_all:)();
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v53 = v52;
          LOBYTE(v69[0]) = 0;
          LOBYTE(v56) = 0;
          static Alignment.leading.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          *&v55[55] = v89[3];
          *&v55[71] = v89[4];
          *&v55[87] = v89[5];
          *&v55[103] = v90;
          *&v55[7] = v89[0];
          *&v55[23] = v89[1];
          *&v55[39] = v89[2];
          *&v70 = v23;
          *(&v70 + 1) = v25;
          LOBYTE(v71) = 0;
          *(&v71 + 1) = KeyPath;
          LOBYTE(v72) = 0;
          BYTE8(v72) = v28;
          *&v73 = v47;
          *(&v73 + 1) = v49;
          *&v74 = v51;
          *(&v74 + 1) = v53;
          LOBYTE(v75[0]) = 0;
          *(&v75[4] + 1) = *&v55[64];
          *(&v75[5] + 1) = *&v55[80];
          *(&v75[6] + 1) = *&v55[96];
          *(v75 + 1) = *v55;
          *(&v75[1] + 1) = *&v55[16];
          *(&v75[2] + 1) = *&v55[32];
          *(&v75[3] + 1) = *&v55[48];
          *&v75[7] = *(&v90 + 1);
          *(&v75[7] + 1) = 0x3FF0000000000000;
          nullsub_1();
          v86 = v75[5];
          v87 = v75[6];
          v88 = v75[7];
          v82 = v75[1];
          v83 = v75[2];
          v84 = v75[3];
          v85 = v75[4];
          v78 = v72;
          v79 = v73;
          v80 = v74;
          v81 = v75[0];
          v76 = v70;
          v77 = v71;
          goto LABEL_13;
        }
      }
    }

    sub_10004F210(&v76);
LABEL_13:
    sub_100015AC0(v10, v8, &qword_1000A0520, &qword_10007A130);
    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v56 = v76;
    sub_100015AC0(v8, a2, &qword_1000A0520, &qword_10007A130);
    v31 = *(sub_1000130DC(&qword_1000A0530, &qword_10007A170) + 48);
    v32 = v65;
    v69[10] = v66;
    v69[11] = v67;
    v33 = v67;
    v69[12] = v68;
    v34 = v61;
    v35 = v62;
    v69[6] = v62;
    v69[7] = v63;
    v36 = v63;
    v37 = v64;
    v69[8] = v64;
    v69[9] = v65;
    v38 = v59;
    v39 = v60;
    v69[4] = v60;
    v69[5] = v61;
    v40 = v57;
    v41 = v58;
    v69[2] = v58;
    v69[3] = v59;
    v42 = v56;
    v69[0] = v56;
    v69[1] = v57;
    v43 = (a2 + v31);
    v43[10] = v66;
    v43[11] = v33;
    v43[12] = v68;
    v43[6] = v35;
    v43[7] = v36;
    v43[8] = v37;
    v43[9] = v32;
    v43[2] = v41;
    v43[3] = v38;
    v43[4] = v39;
    v43[5] = v34;
    *v43 = v42;
    v43[1] = v40;
    sub_100015AC0(v69, &v70, &qword_1000A0538, qword_10007A178);
    sub_1000156F8(v10, &qword_1000A0520, &qword_10007A130);
    v75[5] = v66;
    v75[6] = v67;
    v75[7] = v68;
    v75[1] = v62;
    v75[2] = v63;
    v75[3] = v64;
    v75[4] = v65;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75[0] = v61;
    v70 = v56;
    v71 = v57;
    sub_1000156F8(&v70, &qword_1000A0538, qword_10007A178);
    return sub_1000156F8(v8, &qword_1000A0520, &qword_10007A130);
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10004905C()
{
  if (*(v0 + 8))
  {

    sub_100023394();
    if (!v1 || (v2 = v1, v3 = [v1 color], v2, !v3))
    {
      v4 = [objc_opt_self() secondaryLabelColor];
    }

    Color.init(uiColor:)();
    return AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100049174()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v5 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();

      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
LABEL_5:
        v2 = sub_10000A814(*(v0 + 72), *(v0 + 80)) ^ 1;
        return v2 & 1;
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000492BC@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  if (*(a1 + 8))
  {

    sub_10002259C();
    v4 = v3;

    result = v4;
    if (v4 >> 62)
    {
      goto LABEL_7;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while ((result & 0xC000000000000001) == 0)
      {
        v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_7:
        v8 = result;
        v6 = _CocoaArrayWrapper.endIndex.getter();
        result = v8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
    }

LABEL_10:

LABEL_11:
    *a2 = v6 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000493E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 8))
  {
    goto LABEL_31;
  }

  v5 = *a1;
  swift_retain_n();
  v6 = sub_100023454();
  v7 = v6;
  if ((*(a4 + 1) & 1) == 0)
  {

    if (!v5)
    {
      if (qword_10009F308 != -1)
      {
        swift_once();
      }

      v12 = qword_1000A50F0;
      v13 = qword_1000A50F0;
      goto LABEL_25;
    }

    if ((*a4 & 1) == 0)
    {
      if (qword_10009F310 != -1)
      {
        swift_once();
      }

      v12 = qword_1000A50F8;
      v13 = qword_1000A50F8;
      goto LABEL_25;
    }

    if (v7)
    {
      v13 = v7;
      v12 = v7;
      goto LABEL_25;
    }

LABEL_12:
    v12 = 0;
    v14 = _swiftEmptyArrayStorage;
LABEL_26:
    sub_100022A04(v14);

    return;
  }

  if (!v5 || !v6)
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.getter();

  v10 = v19;
  v19 = v8;
  __chkstk_darwin(v9);
  v18[2] = &v19;
  v11 = sub_100029BFC(sub_10004F3FC, v18, v10);

  if (v11)
  {

    v12 = v7;
    v13 = v8;
LABEL_25:
    v17 = v13;
    sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_100077630;
    *(v14 + 4) = v12;
    goto LABEL_26;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v19;
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    goto LABEL_12;
  }

LABEL_21:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_24:
    v12 = v16;

    v13 = v12;
    goto LABEL_25;
  }

  __break(1u);
LABEL_31:
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_1000497A0@<X0>(uint64_t a1@<X8>)
{
  v52 = sub_1000130DC(&qword_1000A02C0, &unk_100079D50);
  __chkstk_darwin(v52);
  v4 = &v49 - v3;
  v5 = sub_1000130DC(&qword_1000A14B0, &unk_10007B460);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = *v1;
  v9 = [*v1 _textAnimationName];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if ((byte_1000A51D8 & 1) == 0)
  {
    static HoverEffect.lift.getter();
    v11 = type metadata accessor for HoverEffect();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  else
  {
LABEL_5:
    v10 = type metadata accessor for HoverEffect();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v12 = sub_10000A468(*(v1 + 40), *(v1 + 48));
  v13 = *(v1 + 8);
  if (v13)
  {
    v14 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v15 = v58;
    v51 = v59;
    v16 = *(v13 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation);
    v55 = v7;
    v56 = a1;
    v54 = v8;
    if (v16)
    {

      v50 = 0;
    }

    else
    {
      v17 = *(v13 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController);

      v50 = v17 ^ 1;
    }

    v53 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics;
    v18 = *(v13 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics);

    v19 = String._bridgeToObjectiveC()();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v20 == v23 && v22 == v25)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v30 = v1;
        if ((v14 - 2) >= 3u)
        {
          goto LABEL_21;
        }

        if ((v51 & 1) == 0)
        {
          if (v14 == 4)
          {
            v43 = 2.0;
          }

          else
          {
            v43 = 4.0;
          }

          v44 = sub_10006864C(v50 & 1, v18, v14, 4.0);
          v46 = v44 + v45;
          v47 = v15 - v46;
          sub_10006A740(v46, v18, v14);
          v29 = (v47 - v48 - v43 * sub_100068C8C(v18, v14, v48)) / v43;
          goto LABEL_16;
        }

        if (v18)
        {
          v29 = 34.0;
        }

        else
        {
LABEL_21:
          sub_100069AB8(v14, v26);
          v29 = v42;
        }

LABEL_16:
        v31 = v52;
        v32 = v55;
        sub_100015AC0(v55, &v4[*(v52 + 48)], &qword_1000A14B0, &unk_10007B460);
        *v4 = v29;
        v4[8] = 0;
        *(v4 + 9) = 257;
        v4[11] = 0;
        sub_100049D88(v30, &v4[v31[13]]);
        v33 = &v4[v31[14]];
        *v33 = swift_getKeyPath();
        v33[8] = 0;
        v34 = &v4[v31[15]];
        *v34 = swift_getKeyPath();
        v34[8] = 0;
        v35 = &v4[v31[16]];
        *v35 = swift_getKeyPath();
        v35[8] = 0;
        v36 = &v4[v31[17]];
        v57 = 0;
        State.init(wrappedValue:)();
        v37 = v59;
        *v36 = LOBYTE(v58);
        *(v36 + 1) = v37;
        sub_10004E030(v54);
        sub_100015A00(&qword_1000A02C8, &qword_1000A02C0, &unk_100079D50, &unk_10007B410);
        v38 = v56;
        View.accessibilityIdentifier(_:)();

        sub_1000156F8(v4, &qword_1000A02C0, &unk_100079D50);
        KeyPath = swift_getKeyPath();
        sub_1000156F8(v32, &qword_1000A14B0, &unk_10007B460);
        LOBYTE(v31) = *(v13 + v53);

        result = sub_1000130DC(&qword_1000A02D0, &qword_100079DF8);
        v41 = v38 + *(result + 36);
        *v41 = KeyPath;
        *(v41 + 8) = v31;
        return result;
      }
    }

    sub_10006A740(v26, v18, v14);
    v29 = v28;
    v30 = v1;
    goto LABEL_16;
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100049D88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v153 = a2;
  v142 = sub_1000130DC(&qword_1000A02E0, &qword_100079E00);
  __chkstk_darwin(v142);
  v143 = &v130 - v3;
  v136 = sub_1000130DC(&qword_1000A02E8, &qword_100079E08);
  __chkstk_darwin(v136);
  v137 = (&v130 - v4);
  v141 = sub_1000130DC(&qword_1000A02F0, &unk_100079E10);
  __chkstk_darwin(v141);
  v138 = &v130 - v5;
  v140 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v144 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  v8 = __chkstk_darwin(v7 - 8);
  v134 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v132 = &v130 - v11;
  v12 = __chkstk_darwin(v10);
  v133 = &v130 - v13;
  __chkstk_darwin(v12);
  v139 = &v130 - v14;
  v15 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v15);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  __chkstk_darwin(v18);
  v20 = &v130 - v19;
  v148 = sub_1000130DC(&qword_1000A0300, &qword_100079E28);
  __chkstk_darwin(v148);
  v152 = &v130 - v21;
  v150 = sub_1000130DC(&qword_1000A0308, &qword_100079E30);
  v145 = *(v150 - 8);
  __chkstk_darwin(v150);
  v23 = &v130 - v22;
  v151 = sub_1000130DC(&qword_1000A0310, &qword_100079E38);
  v147 = *(v151 - 8);
  __chkstk_darwin(v151);
  v146 = &v130 - v24;
  v25 = sub_1000130DC(&qword_1000A0318, &qword_100079E40);
  __chkstk_darwin(v25);
  v27 = &v130 - v26;
  v28 = a1;
  v29 = *a1;
  v30 = [v29 _subcomponents];
  v149 = v25;
  if (v30)
  {
    v31 = v30;

    sub_1000132E4(0, &qword_1000A0368, _UITextFormattingViewControllerCustomComponent_ptr);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v144 = &v130;
    v34 = __chkstk_darwin(v33);
    *(&v130 - 2) = v32;
    *(&v130 - 1) = v28;
    __chkstk_darwin(v34);
    *(&v130 - 2) = v28;
    sub_1000130DC(&qword_1000A0370, &qword_100079EB0);
    sub_1000130DC(&qword_1000A0378, &qword_100079EB8);
    sub_100015A00(&qword_1000A0380, &qword_1000A0370, &qword_100079EB0, &unk_10007B2E8);
    sub_100051D5C(&qword_1000A0388, &qword_1000A0378, &qword_100079EB8, sub_10004E4D4);
    Menu.init(content:label:)();

    LOBYTE(v161) = 0;
    State.init(wrappedValue:)();
    v35 = v156;
    v36 = *(&v156 + 1);
    LOBYTE(v156) = 0;
    BYTE8(v156) = v35;
    v157 = v36;
    v37 = sub_100015A00(&qword_1000A0348, &qword_1000A0308, &qword_100079E30, &protocol conformance descriptor for Menu<A, B>);
    v38 = sub_10004E3D8();
    v39 = v146;
    v40 = v150;
    View.menuStyle<A>(_:)();

    (v145[1])(v23, v40);
    v41 = v147;
    v42 = v151;
    (*(v147 + 16))(v152, v39, v151);
    swift_storeEnumTagMultiPayload();
    *&v156 = v40;
    *(&v156 + 1) = &type metadata for TFMenuStyle;
    v157 = v37;
    v158 = v38;
    swift_getOpaqueTypeConformance2();
    sub_10004E42C();
    _ConditionalContent<>.init(storage:)();
    return (*(v41 + 8))(v39, v42);
  }

  v44 = v139;
  v130 = v15;
  v145 = v17;
  v131 = v20;
  v146 = v27;
  v147 = v18;
  v45 = [v29 _textAnimationName];
  if (!v45)
  {
    v59 = [v29 systemImageName];
    v60 = v28;
    if (v59)
    {
      v61 = v59;
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v62;
    }

    else
    {
      v139 = 0;
      v138 = 0;
    }

    v87 = v145;
    v88 = v28[3];
    v89 = *(v28 + 32);
    v90 = *(v28 + 33);
    v91 = sub_10000A634(v88, v89 | (v90 << 8));
    if ((v92 & 1) != 0 || v91 > 2 || (v93 = [v29 systemImageName]) == 0)
    {
      v94 = [v29 title];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v95;
    }

    else
    {

      v137 = 0;
      v136 = 0;
    }

    v96 = v28[1];
    v135 = v60[2];
    v161 = v60[5];
    LOBYTE(v162) = *(v60 + 48);
    type metadata accessor for MainActor();

    v97 = v29;
    sub_10004E184(v88, v89, v90);
    sub_100015AC0(&v161, &v156, &qword_1000A0320, &qword_100079E48);
    v98 = static MainActor.shared.getter();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = &protocol witness table for MainActor;
    v100 = *(v60 + 1);
    *(v99 + 32) = *v60;
    *(v99 + 48) = v100;
    *(v99 + 64) = *(v60 + 2);
    *(v99 + 80) = *(v60 + 48);
    *(v99 + 88) = v97;
    v101 = v97;

    sub_10004E184(v88, v89, v90);
    sub_100015AC0(&v161, &v156, &qword_1000A0320, &qword_100079E48);
    v102 = static MainActor.shared.getter();
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = &protocol witness table for MainActor;
    v104 = *(v60 + 1);
    *(v103 + 32) = *v60;
    *(v103 + 48) = v104;
    *(v103 + 64) = *(v60 + 2);
    *(v103 + 80) = *(v60 + 48);
    v105 = v101;
    *(v103 + 88) = v101;
    Binding.init(get:set:)();
    v106 = v156;
    LOBYTE(v97) = v157;
    v107 = v130;
    static SymbolRenderingMode.hierarchical.getter();
    v108 = v138;
    *v87 = v139;
    v87[1] = v108;
    v109 = (v87 + v107[6]);
    v110 = v136;
    *v109 = v137;
    v109[1] = v110;
    *(v87 + v107[7]) = 0;
    v111 = v87 + v107[8];
    *v111 = v106;
    v111[16] = v97;
    v112 = v87 + v107[9];
    *v112 = swift_getKeyPath();
    v112[8] = 0;
    if (v96)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v113 = v134;
      static Published.subscript.getter();

      v114 = (v144[6])(v113, 1, v140);
      v115 = v143;
      v116 = v131;
      if (v114)
      {
        sub_1000156F8(v113, &qword_10009FAB0, &qword_1000781B8);
        v117 = 0;
      }

      else
      {
        UITextFormattingViewController.FormattingDescriptor._customComponentKeys.getter();
        sub_1000156F8(v113, &qword_10009FAB0, &qword_1000781B8);
        v118 = [v105 componentKey];
        v117 = sub_100015B54();
      }

      v86 = v150;
      v119 = [v105 accessibilityLabel];
      if (!v119)
      {
        v119 = [v105 title];
      }

      v120 = v119;
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      v124 = v145;
      sub_10002DF08(v117 & 1, 0, v121, v123, v116);

      sub_10004F14C(v124, type metadata accessor for TFToggle);
      sub_100015AC0(v116, v115, &qword_1000A02F8, &qword_100079E20);
      swift_storeEnumTagMultiPayload();
      sub_10004E1BC();
      sub_10004E2EC();
      v84 = v146;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v116, &qword_1000A02F8, &qword_100079E20);
      v85 = v152;
      goto LABEL_32;
    }

LABEL_36:
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v46 = v45;
  v145 = v29;

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = v28;
  v51 = v28[1];
  v52 = v140;
  if (!v51)
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_36;
  }

  v131 = v47;
  v134 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v53 = v144[6];
  v54 = (v53)(v44, 1, v52);
  v55 = v138;
  v56 = v135;
  if (v54)
  {
    sub_1000156F8(v44, &qword_10009FAB0, &qword_1000781B8);
    v57 = v51[OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isTextAnimationsUI];

    if ((v57 & 1) == 0)
    {
      v58 = 0;
LABEL_14:

      v66 = v58;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  UITextFormattingViewController.FormattingDescriptor._customComponentKeys.getter();
  sub_1000156F8(v44, &qword_10009FAB0, &qword_1000781B8);
  v63 = [v145 componentKey];
  v58 = sub_100015B54();

  LOBYTE(v63) = v51[OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isTextAnimationsUI];

  if ((v63 & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((v58 & 1) == 0)
  {
LABEL_15:

    v58 = 0;
    v66 = 0;
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v133;
  static Published.subscript.getter();

  v65 = v132;
  sub_100015AC0(v64, v132, &qword_10009FAB0, &qword_1000781B8);
  if ((v53)(v65, 1, v52) == 1)
  {
    sub_1000156F8(v64, &qword_10009FAB0, &qword_1000781B8);
    v58 = 1;
    v66 = 1;
  }

  else
  {
    v127 = v144;
    (v144[4])(v56, v65, v52);
    v128 = UITextFormattingViewController.FormattingDescriptor._customComponentKeys.getter();
    (v127[1])(v56, v52);
    sub_1000156F8(v64, &qword_10009FAB0, &qword_1000781B8);
    v129 = *(v128 + 16);

    v66 = v129 == 1;
    v58 = 1;
  }

LABEL_16:
  v67 = v136;
  v161 = v50[3];
  v162 = *(v50 + 16);
  v159 = v50[5];
  v160 = *(v50 + 48);
  v68 = swift_allocObject();
  v69 = *(v50 + 1);
  *(v68 + 16) = *v50;
  *(v68 + 32) = v69;
  *(v68 + 48) = *(v50 + 2);
  *(v68 + 64) = *(v50 + 48);
  v70 = v137;
  *v137 = 256;
  v71 = v67[12];
  v72 = v145;

  sub_100015AC0(&v161, &v156, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v159, &v156, &qword_1000A0320, &qword_100079E48);
  sub_10004C07C(v50, v131, v134, v66, v70 + v71);

  v73 = (v70 + v67[13]);
  *v73 = sub_10004E4BC;
  v73[1] = v68;
  v74 = v70 + v67[14];
  v154 = 0;
  v155 = 1;
  sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
  State.init(wrappedValue:)();
  v75 = BYTE8(v156);
  v76 = v157;
  *v74 = v156;
  *(v74 + 8) = v75;
  *(v74 + 16) = v76;
  v77 = v67[15];
  v154 = 0;
  sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
  State.init(wrappedValue:)();
  *(v70 + v77) = v156;
  v78 = v70 + v67[16];
  *v78 = swift_getKeyPath();
  *(v78 + 8) = 0;
  v79 = [v72 accessibilityLabel];
  if (!v79)
  {
    v79 = [v72 title];
  }

  v80 = v79;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  sub_10002F028(v58 & 1, 0, v81, v83, v55);

  sub_1000156F8(v70, &qword_1000A02E8, &qword_100079E08);
  sub_100015AC0(v55, v143, &qword_1000A02F0, &unk_100079E10);
  swift_storeEnumTagMultiPayload();
  sub_10004E1BC();
  sub_10004E2EC();
  v84 = v146;
  _ConditionalContent<>.init(storage:)();
  sub_1000156F8(v55, &qword_1000A02F0, &unk_100079E10);
  v85 = v152;
  v86 = v150;
LABEL_32:
  sub_100015AC0(v84, v85, &qword_1000A0318, &qword_100079E40);
  swift_storeEnumTagMultiPayload();
  v125 = sub_100015A00(&qword_1000A0348, &qword_1000A0308, &qword_100079E30, &protocol conformance descriptor for Menu<A, B>);
  v126 = sub_10004E3D8();
  *&v156 = v86;
  *(&v156 + 1) = &type metadata for TFMenuStyle;
  v157 = v125;
  v158 = v126;
  swift_getOpaqueTypeConformance2();
  sub_10004E42C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000156F8(v84, &qword_1000A0318, &qword_100079E40);
}

uint64_t sub_10004B1C8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_100015AC0(&v14, v8, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v12, v8, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v10, v8, &qword_1000A0320, &qword_100079E48);
  sub_1000130DC(&qword_1000A03B8, &qword_100079F38);
  sub_1000130DC(&qword_1000A0398, &qword_100079EC0);
  sub_100015A00(&qword_1000A03C0, &qword_1000A03B8, &qword_100079F38, &protocol conformance descriptor for [A]);
  sub_10004E4D4();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004B388@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v63 = type metadata accessor for TFToggle(0);
  v5 = __chkstk_darwin(v63);
  v57 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v58 = &v56 - v7;
  v64 = sub_1000130DC(&qword_1000A03C8, &qword_100079F40);
  __chkstk_darwin(v64);
  v67 = &v56 - v8;
  v65 = sub_1000130DC(&qword_1000A03A0, &qword_100079EC8);
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = &v56 - v9;
  v66 = sub_1000130DC(&qword_1000A03D0, &qword_100079F48);
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v56 - v10;
  v11 = *v2;
  v78[0] = *(v2 + 8);
  v76 = *(v2 + 24);
  v77 = *(v2 + 32);
  v74 = *(v2 + 40);
  v75 = *(v2 + 48);
  type metadata accessor for MainActor();
  v12 = v11;
  v13 = a1;
  sub_100015AC0(v78, &v70, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v76, &v70, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v74, &v70, &qword_1000A0320, &qword_100079E48);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  v16 = *(v2 + 16);
  *(v15 + 32) = *v2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(v2 + 32);
  *(v15 + 80) = *(v2 + 48);
  *(v15 + 88) = v13;
  v17 = v12;
  v18 = v13;
  sub_100015AC0(v78, &v70, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v76, &v70, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v74, &v70, &qword_1000A0320, &qword_100079E48);
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  v21 = *(v2 + 16);
  *(v20 + 32) = *v2;
  *(v20 + 48) = v21;
  *(v20 + 64) = *(v2 + 32);
  *(v20 + 80) = *(v2 + 48);
  *(v20 + 88) = v18;
  Binding.init(get:set:)();
  v23 = v70;
  v22 = v71;
  v24 = v72;
  v25 = [v18 _subcomponents];
  if (v25)
  {
    v26 = v25;
    sub_1000132E4(0, &qword_1000A0368, _UITextFormattingViewControllerCustomComponent_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = &v56;
    v29 = __chkstk_darwin(v28);
    *(&v56 - 2) = v27;
    *(&v56 - 1) = v3;
    __chkstk_darwin(v29);
    *(&v56 - 4) = v18;
    *(&v56 - 3) = v23;
    v56 = v23;
    *(&v56 - 2) = v22;
    *(&v56 - 8) = v24;
    sub_1000130DC(&qword_1000A03D8, &unk_100079F50);
    v58 = sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    sub_10004E824();
    v30 = v59;
    Menu.init(content:label:)();

    v69 = 0;
    State.init(wrappedValue:)();
    v31 = v70;
    v32 = v71;
    LOBYTE(v70) = 0;
    LOBYTE(v71) = v31;
    v72 = v32;
    v33 = sub_100015A00(&qword_1000A03A8, &qword_1000A03A0, &qword_100079EC8, &protocol conformance descriptor for Menu<A, B>);
    v34 = sub_10004E3D8();
    v35 = v61;
    v36 = v65;
    View.menuStyle<A>(_:)();

    (*(v60 + 8))(v30, v36);
    v37 = v62;
    v38 = v66;
    (*(v62 + 16))(v67, v35, v66);
    swift_storeEnumTagMultiPayload();
    v70 = v36;
    v71 = &type metadata for TFMenuStyle;
    v72 = v33;
    v73 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();

    return (*(v37 + 8))(v35, v38);
  }

  else
  {
    v40 = v63;
    v41 = [v18 systemImageName];
    if (v41)
    {
      v42 = v41;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v62 = 0;
      v44 = 0;
    }

    v45 = [v18 title];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = v57;
    static SymbolRenderingMode.hierarchical.getter();
    *v49 = v62;
    v49[1] = v44;
    v50 = (v49 + v40[6]);
    *v50 = v46;
    v50[1] = v48;
    *(v49 + v40[7]) = 1;
    v51 = v49 + v40[8];
    *v51 = v23;
    *(v51 + 1) = v22;
    v51[16] = v24;
    v52 = v49 + v40[9];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = v58;
    sub_10005170C(v49, v58, type metadata accessor for TFToggle);
    sub_1000516A0(v53, v67, type metadata accessor for TFToggle);
    swift_storeEnumTagMultiPayload();
    v54 = sub_100015A00(&qword_1000A03A8, &qword_1000A03A0, &qword_100079EC8, &protocol conformance descriptor for Menu<A, B>);
    v55 = sub_10004E3D8();
    v70 = v65;
    v71 = &type metadata for TFMenuStyle;
    v72 = v54;
    v73 = v55;
    swift_getOpaqueTypeConformance2();
    sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    _ConditionalContent<>.init(storage:)();

    return sub_10004F14C(v53, type metadata accessor for TFToggle);
  }
}

uint64_t sub_10004BC8C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_10004BD5C(a2, a1);
  v3 = sub_1000130DC(&qword_1000A0370, &qword_100079EB0);
  v4 = a1 + v3[9];
  State.init(wrappedValue:)();
  *v4 = v9;
  *(v4 + 1) = v10;
  v5 = a1 + v3[10];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a1 + v3[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a1 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_10004BD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = *a1;
  v8 = [*a1 systemImageName];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_10000A634(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v14 & 1) != 0 || v13 > 2 || (v15 = [v7 systemImageName]) == 0)
  {
    v18 = [v7 title];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v19;
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v20 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v20 - 8) + 48))(v6, 1, v20))
    {
      sub_1000156F8(v6, &qword_10009FAB0, &qword_1000781B8);
      v21 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor._customComponentKeys.getter();
      sub_1000156F8(v6, &qword_10009FAB0, &qword_1000781B8);
      v22 = [v7 componentKey];
      v21 = sub_100015B54();
    }

    v23 = type metadata accessor for TFLabel(0);
    static SymbolRenderingMode.hierarchical.getter();
    *a2 = v10;
    a2[1] = v12;
    v24 = (a2 + v23[6]);
    *v24 = v16;
    v24[1] = v17;
    *(a2 + v23[7]) = v21 & 1;
    v25 = a2 + v23[8];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = a2 + v23[9];
    result = swift_getKeyPath();
    *v26 = result;
    v26[8] = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C07C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v37 = a2;
  v38 = a3;
  v41 = a5;
  v42 = type metadata accessor for AccessibilityChildBehavior();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TFAnimatedText(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000130DC(&qword_1000A0400, &qword_100079F68);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_1000130DC(&qword_1000A0408, &qword_100079F70);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v19 = [*a1 title];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *v11 = v20;
  *(v11 + 1) = v22;
  v23 = v38;
  *(v11 + 2) = v37;
  *(v11 + 3) = v23;
  LOBYTE(v19) = v39;
  v11[32] = v39;
  v24 = v9[9];
  *&v11[v24] = swift_getKeyPath();
  sub_1000130DC(&qword_1000A16B0, qword_100078020);
  swift_storeEnumTagMultiPayload();
  v25 = v9[10];
  *&v11[v25] = swift_getKeyPath();
  sub_1000130DC(&qword_10009FA38, &qword_100079FE0);
  swift_storeEnumTagMultiPayload();
  v26 = &v11[v9[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v11[v9[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v11[v9[13]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10005170C(v11, v15, type metadata accessor for TFAnimatedText);
  v29 = &v15[*(v13 + 44)];
  v30 = v48;
  *(v29 + 4) = v47;
  *(v29 + 5) = v30;
  *(v29 + 6) = v49;
  v31 = v44;
  *v29 = v43;
  *(v29 + 1) = v31;
  v32 = v46;
  *(v29 + 2) = v45;
  *(v29 + 3) = v32;
  v33 = static AnyTransition.identity.getter();
  sub_10001471C(v15, v18, &qword_1000A0400, &qword_100079F68);
  v34 = &v18[*(v16 + 36)];
  *v34 = 0;
  v34[1] = v19;
  *(v34 + 1) = 0;
  *(v34 + 1) = v33;
  static AccessibilityChildBehavior.ignore.getter();
  sub_10004EA50();
  View.accessibilityElement(children:)();
  (*(v40 + 8))(v7, v42);
  return sub_1000156F8(v18, &qword_1000A0408, &qword_100079F70);
}

uint64_t sub_10004C478(uint64_t a1)
{
  v2 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    v8 = *a1;

    *v5 = [v8 componentKey];
    (*(v3 + 104))(v5, enum case for UITextFormattingViewController.ChangeValue.customComponentSelected(_:), v2);
    v7(v5, 0);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C620(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_100015AC0(&v14, v8, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v12, v8, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v10, v8, &qword_1000A0320, &qword_100079E48);
  sub_1000130DC(&qword_1000A03B8, &qword_100079F38);
  sub_100015A00(&qword_1000A03C0, &qword_1000A03B8, &qword_100079F38, &protocol conformance descriptor for [A]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004C7C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A0398, &qword_100079EC0);
  __chkstk_darwin(v4);
  sub_10004B388(*a1, (&v7 - v5));
  sub_10004E4D4();
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10004C878@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 systemImageName];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 title];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  static SymbolRenderingMode.hierarchical.getter();
  *v11 = v14;
  v11[1] = v16;
  v21 = (v11 + v9[6]);
  *v21 = v18;
  v21[1] = v20;
  *(v11 + v9[7]) = 0;
  v22 = v11 + v9[8];
  *v22 = a2;
  *(v22 + 1) = a3;
  v22[16] = a4 & 1;
  v23 = v11 + v9[9];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  sub_10005170C(v11, v26, type metadata accessor for TFToggle);
}

uint64_t sub_10004CA08@<X0>(uint64_t a1@<X2>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v9 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      result = sub_1000156F8(v8, &qword_10009FAB0, &qword_1000781B8);
      v11 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor._customComponentKeys.getter();
      sub_1000156F8(v8, &qword_10009FAB0, &qword_1000781B8);
      v12 = [a2 componentKey];
      v13 = sub_100015B54();

      v11 = v13 & 1;
    }

    *a3 = v11;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a4 + 8);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);

    *v10 = [a5 componentKey];
    (*(v8 + 104))(v10, enum case for UITextFormattingViewController.ChangeValue.customComponentSelected(_:), v7);
    v12(v10, 0);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_10004CDEC@<X0>(_BYTE *a1@<X8>)
{
  sub_10004E6B0();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10004CED8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004CF08@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004CF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

__n128 sub_10004D03C@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1000130DC(&qword_1000A01F0, &qword_100078ED0);
  State.init(wrappedValue:)();
  result = v10;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = KeyPath;
  a1[1].n128_u8[8] = 0;
  a1[1].n128_u8[9] = 0;
  a1[2].n128_u64[0] = v6;
  a1[2].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v7;
  a1[3].n128_u8[8] = 0;
  a1[4].n128_u64[0] = v8;
  a1[4].n128_u8[8] = 0;
  a1[5] = v10;
  a1[6].n128_u64[0] = v11;
  return result;
}

__n128 sub_10004D1B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004D1CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10004D214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004D274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10004D290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_10004D2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10004D368(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10004D3A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_10004D400(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10004D474(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004D488(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_10004D4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10004D55C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
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

uint64_t sub_10004D5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10004D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000130DC(&qword_1000A01F8, &unk_1000793F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10004D710(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000130DC(&qword_1000A01F8, &unk_1000793F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TFTextAlignmentControl(uint64_t a1)
{
  result = qword_1000A0258;
  if (!qword_1000A0258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004D80C(uint64_t a1)
{
  sub_10004D8D0(319);
  if (v1 <= 0x3F)
  {
    sub_10004D964(319);
    if (v2 <= 0x3F)
    {
      sub_10004D9C8(319);
      if (v3 <= 0x3F)
      {
        sub_10004DA20();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004D8D0(uint64_t a1)
{
  if (!qword_1000A0268)
  {
    type metadata accessor for TextFormattingState(255);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A0268);
    }
  }
}

void sub_10004D964(uint64_t a1)
{
  if (!qword_1000A0270)
  {
    sub_100013694(&qword_1000A0278, &qword_10007C190);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A0270);
    }
  }
}

void sub_10004D9C8(uint64_t a1)
{
  if (!qword_1000A0280)
  {
    type metadata accessor for LayoutDirection();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A0280);
    }
  }
}

void sub_10004DA20()
{
  if (!qword_1000A1000)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A1000);
    }
  }
}

uint64_t sub_10004DA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_10004DACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10004DB48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004DB5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_10004DBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10004DC28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004DC44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_10004DCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10004DD14(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10004DD40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_10004DD9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_10004DF94@<X0>(_BYTE *a1@<X8>)
{
  sub_10004E130();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10004E030(void *a1)
{
  v2 = [a1 _textAnimationName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11 = 0x6566666574786574;
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v11 = 0xD000000000000010;
    v7 = [a1 componentKey];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v8;
  }

  v9._countAndFlagsBits = v4;
  v9._object = v6;
  String.append(_:)(v9);

  return v11;
}

unint64_t sub_10004E130()
{
  result = qword_1000A02D8;
  if (!qword_1000A02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A02D8);
  }

  return result;
}

uint64_t sub_10004E184(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

unint64_t sub_10004E1BC()
{
  result = qword_1000A0328;
  if (!qword_1000A0328)
  {
    sub_100013694(&qword_1000A02F0, &unk_100079E10);
    sub_100015A00(&qword_1000A0330, &qword_1000A02E8, &qword_100079E08, &unk_10007B3C0);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0328);
  }

  return result;
}

uint64_t sub_10004E2A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004E2EC()
{
  result = qword_1000A0338;
  if (!qword_1000A0338)
  {
    sub_100013694(&qword_1000A02F8, &qword_100079E20);
    sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0338);
  }

  return result;
}

unint64_t sub_10004E3D8()
{
  result = qword_1000A0350;
  if (!qword_1000A0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0350);
  }

  return result;
}

unint64_t sub_10004E42C()
{
  result = qword_1000A0358;
  if (!qword_1000A0358)
  {
    sub_100013694(&qword_1000A0318, &qword_100079E40);
    sub_10004E1BC();
    sub_10004E2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0358);
  }

  return result;
}

unint64_t sub_10004E4D4()
{
  result = qword_1000A0390;
  if (!qword_1000A0390)
  {
    sub_100013694(&qword_1000A0398, &qword_100079EC0);
    sub_100013694(&qword_1000A03A0, &qword_100079EC8);
    sub_100015A00(&qword_1000A03A8, &qword_1000A03A0, &qword_100079EC8, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E3D8();
    swift_getOpaqueTypeConformance2();
    sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0390);
  }

  return result;
}

void *sub_10004E614@<X0>(_BYTE *a1@<X8>)
{
  sub_10004E6B0();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10004E6B0()
{
  result = qword_1000A0F70;
  if (!qword_1000A0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0F70);
  }

  return result;
}

id sub_10004E710@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 componentKey];
  *a2 = result;
  return result;
}

uint64_t sub_10004E74C@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004E7A0()
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_100013A58(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_10004E824()
{
  result = qword_1000A03E0;
  if (!qword_1000A03E0)
  {
    sub_100013694(&qword_1000A03D8, &unk_100079F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A03E0);
  }

  return result;
}

uint64_t sub_10004E8A0()
{

  sub_100015A48(*(v0 + 40), *(v0 + 48), *(v0 + 49));
  sub_100013A58(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_10004E904()
{
  result = qword_1000A03E8;
  if (!qword_1000A03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A03E8);
  }

  return result;
}

uint64_t sub_10004EA20@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10004EA50()
{
  result = qword_1000A0410;
  if (!qword_1000A0410)
  {
    sub_100013694(&qword_1000A0408, &qword_100079F70);
    sub_10004EADC();
    sub_10004EB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0410);
  }

  return result;
}

unint64_t sub_10004EADC()
{
  result = qword_1000A0418;
  if (!qword_1000A0418)
  {
    sub_100013694(&qword_1000A0400, &qword_100079F68);
    sub_10004E2A4(&qword_1000A0420, type metadata accessor for TFAnimatedText, &unk_10007B260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0418);
  }

  return result;
}

unint64_t sub_10004EB98()
{
  result = qword_1000A1550;
  if (!qword_1000A1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1550);
  }

  return result;
}

unint64_t sub_10004EBEC()
{
  result = qword_1000A0478;
  if (!qword_1000A0478)
  {
    sub_100013694(&qword_1000A0460, &qword_10007A050);
    sub_10004ECA8();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0478);
  }

  return result;
}

unint64_t sub_10004ECA8()
{
  result = qword_1000A0480;
  if (!qword_1000A0480)
  {
    sub_100013694(&qword_1000A0488, &qword_10007A060);
    sub_10004ED34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0480);
  }

  return result;
}

unint64_t sub_10004ED34()
{
  result = qword_1000A0490;
  if (!qword_1000A0490)
  {
    sub_100013694(&qword_1000A0498, &qword_10007A068);
    sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    sub_100015A00(&qword_10009FA18, &qword_10009FA20, &qword_10007A070, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0490);
  }

  return result;
}

unint64_t sub_10004EE2C()
{
  result = qword_1000A04B8;
  if (!qword_1000A04B8)
  {
    sub_100013694(&qword_1000A04A8, &qword_10007A080);
    sub_10004EEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A04B8);
  }

  return result;
}

unint64_t sub_10004EEB0()
{
  result = qword_1000A04C0;
  if (!qword_1000A04C0)
  {
    sub_100013694(&qword_1000A04C8, &qword_10007A088);
    sub_100013694(&qword_1000A04D0, &qword_10007A090);
    type metadata accessor for ButtonToggleStyle();
    sub_100015A00(&qword_1000A04D8, &qword_1000A04D0, &qword_10007A090, &protocol conformance descriptor for Toggle<A>);
    sub_10004E2A4(&qword_1000A04E0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
    swift_getOpaqueTypeConformance2();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A04C0);
  }

  return result;
}

uint64_t sub_10004F02C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10004F03C()
{
  result = qword_1000A04F0;
  if (!qword_1000A04F0)
  {
    sub_100013694(&qword_1000A0448, &qword_10007A038);
    sub_100015A00(&qword_1000A04E8, &qword_1000A0440, &qword_10007A030, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A04F0);
  }

  return result;
}

uint64_t sub_10004F14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10004F210(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10004F290()
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_100013A58(*(v0 + 72), *(v0 + 80));
  sub_100013A58(*(v0 + 88), *(v0 + 96));
  sub_100013A58(*(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 136, 7);
}

unint64_t sub_10004F334()
{
  result = qword_1000A0568;
  if (!qword_1000A0568)
  {
    sub_100013694(&qword_1000A0560, &qword_10007A1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0568);
  }

  return result;
}

unint64_t sub_10004F46C()
{
  result = qword_1000A05F0;
  if (!qword_1000A05F0)
  {
    sub_100013694(&qword_1000A0580, &qword_10007A238);
    sub_100015A00(&qword_1000A05F8, &qword_1000A0600, &qword_10007A2A0, &protocol conformance descriptor for ScrollView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A05F0);
  }

  return result;
}

unint64_t sub_10004F534()
{
  result = qword_1000A0608;
  if (!qword_1000A0608)
  {
    sub_100013694(&qword_1000A0588, &qword_10007A240);
    sub_100013694(&qword_1000A0580, &qword_10007A238);
    sub_10004F46C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0608);
  }

  return result;
}

unint64_t sub_10004F610()
{
  result = qword_1000A0618;
  if (!qword_1000A0618)
  {
    sub_100013694(&qword_1000A05C8, &qword_10007A280);
    sub_10004F69C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0618);
  }

  return result;
}

unint64_t sub_10004F69C()
{
  result = qword_1000A0620;
  if (!qword_1000A0620)
  {
    sub_100013694(&qword_1000A05C0, &qword_10007A278);
    sub_100015A00(&qword_1000A0628, &qword_1000A05B8, &qword_10007A270, &unk_10007B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0620);
  }

  return result;
}

unint64_t sub_10004F754()
{
  result = qword_1000A0630;
  if (!qword_1000A0630)
  {
    sub_100013694(&qword_1000A05A8, &qword_10007A260);
    sub_100013694(&qword_1000A0598, &qword_10007A250);
    sub_100013694(&qword_1000A0590, &qword_10007A248);
    sub_100013694(&qword_1000A0588, &qword_10007A240);
    sub_10004F534();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0610, &qword_1000A0570, &qword_10007A228, &unk_10007B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0630);
  }

  return result;
}

uint64_t sub_10004F8C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100013694(a2, a3);
    sub_100015A00(&qword_1000A0668, &qword_1000A0670, &qword_10007A2C8, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F964@<X0>(uint64_t *a2@<X8>)
{
  result = UITextFormattingViewController.FormattingStyle.styleKey.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004F99C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for UITextFormattingViewController.FormattingStyle();

  return sub_10002B9EC((v1 + 32), a1);
}

uint64_t sub_10004FA14()
{
  v1 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_100015A48(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_100013A58(*(v0 + 64), *(v0 + 72));
  sub_100013A58(*(v0 + 80), *(v0 + 88));
  sub_100013A58(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004FB24(_BYTE *a1)
{
  type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v3 = v1[2];
  v4 = v1[3];

  return sub_10002BC0C(a1, v3, v4, v1 + 4);
}

uint64_t sub_10004FBAC(uint64_t a1)
{

  sub_100015A48(*(v1 + 32), *(v1 + 40), *(v1 + 41));
  sub_100013A58(*(v1 + 48), *(v1 + 56));
  sub_100013A58(*(v1 + 64), *(v1 + 72));
  sub_100013A58(*(v1 + 80), *(v1 + 88));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10004FC40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FC78(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1000130DC(&qword_1000A06E0, &qword_10007A3B8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_10004FCE0()
{
  result = qword_1000A06A8;
  if (!qword_1000A06A8)
  {
    sub_100013694(&qword_1000A0698, &qword_10007A398);
    sub_100015A00(&qword_1000A0688, &qword_10009FF00, &qword_100078530, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A06A8);
  }

  return result;
}

unint64_t sub_10004FD90()
{
  result = qword_1000A06B0;
  if (!qword_1000A06B0)
  {
    sub_100013694(&qword_1000A06A0, &qword_10007A3A0);
    sub_10004FE4C();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A06B0);
  }

  return result;
}

unint64_t sub_10004FE4C()
{
  result = qword_1000A06B8;
  if (!qword_1000A06B8)
  {
    sub_100013694(&qword_1000A06C0, &qword_10007A3A8);
    sub_100013694(&qword_1000A06C8, &qword_10007A3B0);
    sub_100015A00(&qword_1000A06D0, &qword_1000A06C8, &qword_10007A3B0, &protocol conformance descriptor for Button<A>);
    sub_10004FF5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A06B8);
  }

  return result;
}

unint64_t sub_10004FF5C()
{
  result = qword_1000A06D8;
  if (!qword_1000A06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A06D8);
  }

  return result;
}

uint64_t sub_10004FFB0()
{
  v1 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  sub_100015A48(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_100013A58(*(v0 + 48), *(v0 + 56));
  sub_100013A58(*(v0 + 64), *(v0 + 72));
  sub_100013A58(*(v0 + 80), *(v0 + 88));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000500B8()
{
  v1 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle() - 8);
  v2 = v0 + ((*(v1 + 80) + 120) & ~*(v1 + 80));

  return sub_10002CD34((v0 + 16), v2);
}

unint64_t sub_100050124()
{
  result = qword_1000A06F8;
  if (!qword_1000A06F8)
  {
    sub_100013694(&qword_1000A06F0, &qword_10007A3C8);
    sub_1000501E0();
    sub_10004E2A4(&qword_1000A0700, type metadata accessor for TFFontModifier, &unk_10007C2DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A06F8);
  }

  return result;
}

unint64_t sub_1000501E0()
{
  result = qword_1000A1880;
  if (!qword_1000A1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A1880);
  }

  return result;
}

uint64_t sub_1000503B8()
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_100013A58(*(v0 + 64), *(v0 + 72));
  sub_100013A58(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_100050428()
{
  result = qword_1000A07C8;
  if (!qword_1000A07C8)
  {
    sub_100013694(&qword_1000A0798, &qword_10007A5D0);
    sub_100013694(&qword_1000A07A0, &qword_10007A5D8);
    sub_100015A00(&qword_1000A07D0, &qword_1000A07A0, &qword_10007A5D8, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E3D8();
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A07D8, &qword_1000A0780, &qword_10007A5B8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A07C8);
  }

  return result;
}

unint64_t sub_100050564()
{
  result = qword_1000A07E0;
  if (!qword_1000A07E0)
  {
    sub_100013694(&qword_1000A0770, &qword_10007A5A8);
    sub_100015A00(&qword_1000A07B8, &qword_1000A0778, &qword_10007A5B0, &protocol conformance descriptor for TupleView<A>);
    sub_100015A00(&qword_1000A07C0, &qword_1000A0760, &qword_10007A598, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A07E0);
  }

  return result;
}

unint64_t sub_10005064C()
{
  result = qword_1000A0800;
  if (!qword_1000A0800)
  {
    sub_100013694(&qword_1000A07F8, &qword_10007A600);
    sub_1000506D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0800);
  }

  return result;
}

unint64_t sub_1000506D0()
{
  result = qword_1000A0808;
  if (!qword_1000A0808)
  {
    sub_100013694(&qword_1000A0810, &qword_10007A608);
    sub_100013694(&qword_1000A0818, &qword_10007A610);
    sub_100015A00(&qword_1000A0820, &qword_1000A0818, &qword_10007A610, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E3D8();
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0828, &qword_1000A0830, &qword_10007A618, &unk_10007B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0808);
  }

  return result;
}

uint64_t sub_10005081C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000508D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_100050948(a1, a2, a3 & 1);
  }

  else
  {
    sub_100050948(a1, a2, a3 & 1);
  }
}

uint64_t sub_100050948(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100050958()
{
  result = qword_1000A0898;
  if (!qword_1000A0898)
  {
    sub_100013694(&qword_1000A0890, &qword_10007A6C8);
    sub_1000509E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0898);
  }

  return result;
}

unint64_t sub_1000509E4()
{
  result = qword_1000A08A0;
  if (!qword_1000A08A0)
  {
    sub_100013694(&qword_1000A08A8, &qword_10007A6D0);
    sub_100050A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A08A0);
  }

  return result;
}

unint64_t sub_100050A68()
{
  result = qword_1000A08B0;
  if (!qword_1000A08B0)
  {
    sub_100013694(&qword_1000A08B8, &qword_10007A6D8);
    sub_100050AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A08B0);
  }

  return result;
}

unint64_t sub_100050AF4()
{
  result = qword_1000A08C0;
  if (!qword_1000A08C0)
  {
    sub_100013694(&qword_1000A08C8, &qword_10007A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A08C0);
  }

  return result;
}

uint64_t sub_100050B78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_10004F02C(a1, a2, a3 & 1);
  }

  else
  {
    sub_10004F02C(a1, a2, a3 & 1);
  }
}

id sub_100050BE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fontDescriptor];
  *a2 = result;
  return result;
}

unint64_t sub_100050C2C()
{
  result = qword_1000A08E8;
  if (!qword_1000A08E8)
  {
    sub_1000132E4(255, &qword_10009FC40, UIFontDescriptor_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A08E8);
  }

  return result;
}

uint64_t sub_100050CD4()
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_100013A58(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100050D48()
{

  sub_100015A48(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_100013A58(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

unint64_t sub_100050DD0()
{
  result = qword_1000A0960;
  if (!qword_1000A0960)
  {
    sub_100013694(&qword_1000A0950, &qword_10007A810);
    sub_100050E8C();
    sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0960);
  }

  return result;
}

unint64_t sub_100050E8C()
{
  result = qword_1000A0968;
  if (!qword_1000A0968)
  {
    sub_100013694(&qword_1000A0970, &qword_10007A820);
    sub_100050F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0968);
  }

  return result;
}

unint64_t sub_100050F18()
{
  result = qword_1000A0978;
  if (!qword_1000A0978)
  {
    sub_100013694(&qword_1000A0980, &qword_10007A828);
    sub_100050FD0();
    sub_100015A00(&unk_1000A1710, &qword_10009F7F8, &qword_10007A850, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0978);
  }

  return result;
}

unint64_t sub_100050FD0()
{
  result = qword_1000A0988;
  if (!qword_1000A0988)
  {
    sub_100013694(&qword_1000A0990, &qword_10007A830);
    sub_100051088();
    sub_100015A00(&qword_10009F7E8, &qword_10009F7F0, &unk_100077C70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0988);
  }

  return result;
}

unint64_t sub_100051088()
{
  result = qword_1000A0998;
  if (!qword_1000A0998)
  {
    sub_100013694(&qword_1000A09A0, &qword_10007A838);
    sub_1000501E0();
    sub_100015A00(&qword_1000A09A8, &qword_1000A1A30, &unk_10007A840, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0998);
  }

  return result;
}

uint64_t sub_100051148@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000511F4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100051250@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_10005129C()
{
  result = qword_1000A0A08;
  if (!qword_1000A0A08)
  {
    sub_100013694(&qword_1000A09F8, &qword_10007A8F8);
    sub_100050E8C();
    sub_100015A00(&qword_1000A1750, &qword_1000A0A10, &qword_10007B760, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0A08);
  }

  return result;
}

uint64_t sub_100051398(void (*a1)(void, void), void (*a2)(void, void))
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v2 + 56), *(v2 + 64), *(v2 + 65));
  sub_100013A58(*(v2 + 72), *(v2 + 80));
  a1(*(v2 + 88), *(v2 + 96));
  a2(*(v2 + 104), *(v2 + 112));

  return _swift_deallocObject(v2, 128, 7);
}

uint64_t sub_10005143C(void (*a1)(void, void), void (*a2)(void, void), uint64_t a3)
{

  sub_100015A48(*(v3 + 40), *(v3 + 48), *(v3 + 49));
  sub_100013A58(*(v3 + 56), *(v3 + 64));
  a1(*(v3 + 72), *(v3 + 80));
  a2(*(v3 + 88), *(v3 + 96));

  return _swift_deallocObject(v3, a3, 7);
}

unint64_t sub_1000514CC()
{
  result = qword_1000A0AB8;
  if (!qword_1000A0AB8)
  {
    sub_100013694(&qword_1000A0758, &qword_10007A518);
    sub_10004ED34();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0AB8);
  }

  return result;
}

unint64_t sub_100051588()
{
  result = qword_1000A0AC8;
  if (!qword_1000A0AC8)
  {
    sub_100013694(&qword_1000A0AA8, &qword_10007A9A0);
    sub_100015A00(&qword_1000A0AD0, &qword_1000A0AA0, &qword_10007A998, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0AC8);
  }

  return result;
}

uint64_t sub_1000516A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005170C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051774@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10003E02C(v4, a1);
}

uint64_t sub_100051814()
{
  v1 = type metadata accessor for TFTextAlignmentControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_100015A48(*(v5 + 24), *(v5 + 32), *(v5 + 33));
  v6 = *(v1 + 28);
  sub_1000130DC(&qword_10009FA00, &unk_100078000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_100013A58(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10005197C(char *a1)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_10003E10C(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_100051AA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051B54()
{

  sub_100015A48(*(v0 + 32), *(v0 + 40), *(v0 + 41));

  return _swift_deallocObject(v0, 42, 7);
}

unint64_t sub_100051C20()
{
  result = qword_1000A0B80;
  if (!qword_1000A0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0B80);
  }

  return result;
}

unint64_t sub_100051C74()
{
  result = qword_1000A0B90;
  if (!qword_1000A0B90)
  {
    sub_100013694(&qword_1000A0B88, &qword_10007AAD8);
    sub_100015A00(&qword_1000A0B98, &qword_1000A0BA0, &qword_10007AAE0, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0B90);
  }

  return result;
}

uint64_t sub_100051D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100013694(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100051DE8()
{

  sub_100015A48(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_100051E80(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v1 + 56), *(v1 + 64), *(v1 + 65));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100051F08(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100051F1C()
{
  result = qword_1000A0C50;
  if (!qword_1000A0C50)
  {
    sub_100013694(&qword_1000A0C30, &qword_10007ABA0);
    sub_100013694(&qword_1000A0C20, &qword_10007AB90);
    type metadata accessor for BorderlessButtonStyle();
    sub_100015A00(&qword_1000A0C58, &qword_1000A0C20, &qword_10007AB90, &protocol conformance descriptor for Button<A>);
    sub_10004E2A4(&qword_1000A0C60, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0C50);
  }

  return result;
}

unint64_t sub_100052098()
{
  result = qword_1000A0C68;
  if (!qword_1000A0C68)
  {
    sub_100013694(&qword_1000A0C10, &qword_10007AB80);
    sub_100052150();
    sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0C68);
  }

  return result;
}

unint64_t sub_100052150()
{
  result = qword_1000A0C70;
  if (!qword_1000A0C70)
  {
    sub_100013694(&qword_1000A0C48, &qword_10007ABB0);
    sub_10005220C();
    sub_10004E2A4(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0C70);
  }

  return result;
}

unint64_t sub_10005220C()
{
  result = qword_1000A0C78;
  if (!qword_1000A0C78)
  {
    sub_100013694(&qword_1000A0C80, &qword_10007ABB8);
    sub_100015A00(&qword_1000A0C40, &qword_1000A0C08, &qword_10007AB78, &unk_10007B3C0);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0C78);
  }

  return result;
}

unint64_t sub_100052318()
{
  result = qword_1000A0CA0;
  if (!qword_1000A0CA0)
  {
    sub_100013694(&qword_1000A0C98, &qword_10007ABC8);
    sub_1000523A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CA0);
  }

  return result;
}

unint64_t sub_1000523A4()
{
  result = qword_1000A0CA8;
  if (!qword_1000A0CA8)
  {
    sub_100013694(&qword_1000A0CB0, &qword_10007ABD0);
    sub_100013694(&qword_1000A0CB8, &qword_10007ABD8);
    sub_100052498();
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_10009FA18, &qword_10009FA20, &qword_10007A070, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CA8);
  }

  return result;
}

unint64_t sub_100052498()
{
  result = qword_1000A0CC0;
  if (!qword_1000A0CC0)
  {
    sub_100013694(&qword_1000A0CB8, &qword_10007ABD8);
    sub_100052524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CC0);
  }

  return result;
}

unint64_t sub_100052524()
{
  result = qword_1000A0CC8;
  if (!qword_1000A0CC8)
  {
    sub_100013694(&qword_1000A0CD0, &qword_10007ABE0);
    sub_1000525B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CC8);
  }

  return result;
}

unint64_t sub_1000525B0()
{
  result = qword_1000A0CD8;
  if (!qword_1000A0CD8)
  {
    sub_100013694(&qword_1000A0CE0, &qword_10007ABE8);
    sub_100052668();
    sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CD8);
  }

  return result;
}

unint64_t sub_100052668()
{
  result = qword_1000A0CE8;
  if (!qword_1000A0CE8)
  {
    sub_100013694(&qword_1000A0CF0, &qword_10007ABF0);
    sub_100052744(&qword_1000A0CF8, &qword_1000A0D00, &qword_10007ABF8);
    sub_10004E2A4(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0CE8);
  }

  return result;
}

uint64_t sub_100052744(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100013694(a2, a3);
    sub_100015A00(&qword_1000A0D08, &qword_1000A0D10, &qword_10007AC00, &protocol conformance descriptor for ColorPicker<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000527E8@<X0>(uint64_t *a1@<X8>)
{
  sub_10001CAC4();
  result = Color.init(uiColor:)();
  *a1 = result;
  return result;
}

uint64_t sub_100052818(void *a1)
{

  sub_100028F34(v1);
}

uint64_t sub_10005285C()
{

  sub_100015A48(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_100013A58(*(v0 + 48), *(v0 + 56));
  sub_100013A58(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000529C0(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_100015A48(*(v1 + 48), *(v1 + 56), *(v1 + 57));

  return _swift_deallocObject(v1, a1, 7);
}

__n128 sub_100052A40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100052A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100052AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_100052B3C()
{
  result = qword_1000A0D68;
  if (!qword_1000A0D68)
  {
    sub_100013694(&qword_1000A02D0, &qword_100079DF8);
    sub_100052BF4();
    sub_100015A00(&unk_1000A1710, &qword_10009F7F8, &qword_10007A850, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0D68);
  }

  return result;
}

unint64_t sub_100052BF4()
{
  result = qword_1000A0D70;
  if (!qword_1000A0D70)
  {
    sub_100013694(&qword_1000A0D78, &qword_10007AD48);
    sub_100015A00(&qword_1000A02C8, &qword_1000A02C0, &unk_100079D50, &unk_10007B410);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0D70);
  }

  return result;
}

unint64_t sub_100052D24()
{
  result = qword_1000A0D88;
  if (!qword_1000A0D88)
  {
    sub_100013694(&qword_1000A0D90, &qword_10007AD50);
    sub_10004F610();
    sub_10004F754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0D88);
  }

  return result;
}

unint64_t sub_100052DB4()
{
  result = qword_1000A0D98;
  if (!qword_1000A0D98)
  {
    sub_100013694(&qword_1000A0DA0, &qword_10007AD58);
    sub_100015A00(&qword_1000A0728, &qword_1000A0720, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
    sub_100015A00(&qword_1000A0730, &qword_1000A0710, &qword_10007A470, &unk_10007B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0D98);
  }

  return result;
}

unint64_t sub_100052E9C()
{
  result = qword_1000A0DA8;
  if (!qword_1000A0DA8)
  {
    sub_100013694(&qword_1000A0DB0, &qword_10007AD60);
    sub_10005064C();
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0DA8);
  }

  return result;
}

unint64_t sub_100052F5C()
{
  result = qword_1000A0DB8;
  if (!qword_1000A0DB8)
  {
    sub_100013694(&qword_1000A0DC0, &qword_10007AD68);
    sub_100015A00(&qword_1000A0940, &qword_1000A0938, &qword_10007A808, &unk_10007B410);
    sub_100015A00(&qword_1000A0948, &qword_1000A0920, &qword_10007A7F0, &unk_10007B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0DB8);
  }

  return result;
}

unint64_t sub_1000530C8()
{
  result = qword_1000A0DD8;
  if (!qword_1000A0DD8)
  {
    sub_100013694(&qword_1000A0DE0, &qword_10007AD70);
    sub_100015A00(&qword_1000A0B50, &qword_1000A0B40, &qword_10007AAA8, &unk_10007B410);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0DD8);
  }

  return result;
}

unint64_t sub_1000531F8()
{
  result = qword_1000A0DF0;
  if (!qword_1000A0DF0)
  {
    sub_100013694(&qword_1000A0BE8, &qword_10007AB58);
    sub_100015A00(&qword_1000A0DF8, &qword_1000A0BE0, &qword_10007AB20, &unk_10007B410);
    sub_100015A00(&qword_1000A0E00, &qword_1000A0BF0, &qword_10007AB60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0DF0);
  }

  return result;
}

unint64_t sub_1000532E0()
{
  result = qword_1000A0E08;
  if (!qword_1000A0E08)
  {
    sub_100013694(&qword_1000A0D58, &qword_10007AC68);
    sub_100015A00(&qword_1000A0D60, &qword_1000A0D50, &qword_10007AC60, &unk_10007B410);
    sub_10004E2A4(&qword_1000A16A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0E08);
  }

  return result;
}

uint64_t sub_100053478()
{

  sub_100013A58(*(v0 + 56), *(v0 + 64));
  sub_100013A58(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_1000534DC()
{
  result = qword_1000A0E80;
  if (!qword_1000A0E80)
  {
    sub_100013694(&qword_1000A0E20, &qword_10007ADC0);
    sub_100013694(&qword_1000A0E10, &qword_10007ADB0);
    sub_100015A00(&qword_1000A0E28, &qword_1000A0E10, &qword_10007ADB0, &unk_10007B410);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0E80);
  }

  return result;
}

uint64_t sub_100053734(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

void *sub_100053904(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void *sub_1000539FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100053B28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v155 = a2;
  v154 = type metadata accessor for ControlSize();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000130DC(&qword_1000A14B0, &unk_10007B460);
  __chkstk_darwin(v4 - 8);
  v149 = &v103 - v5;
  v158 = type metadata accessor for HoverEffect();
  v151 = *(v158 - 8);
  v6 = __chkstk_darwin(v158);
  v150 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v148 = v8;
  __chkstk_darwin(v6);
  v146 = v9;
  v147 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000130DC(&qword_1000A14B8, &qword_10007C370);
  v157 = v10;
  __chkstk_darwin(v10);
  v143 = &v103 - v11;
  v12 = *(a1 + 24);
  v156 = sub_100013694(&qword_1000A14C0, &qword_10007B470);
  type metadata accessor for ModifiedContent();
  v145 = v12;
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(a1 + 32);
  v140 = sub_100015A00(&qword_1000A14C8, &qword_1000A14C0, &qword_10007B470, &protocol conformance descriptor for _ClipEffect<A>);
  v184 = v14;
  v185 = v140;
  WitnessTable = swift_getWitnessTable();
  v183 = v14;
  v144 = v14;
  v132 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  v15 = swift_getWitnessTable();
  v16 = sub_1000637D4();
  v180 = v15;
  v181 = v16;
  v178 = swift_getWitnessTable();
  v179 = &protocol witness table for _FrameLayout;
  v17 = swift_getWitnessTable();
  v141 = v13;
  v134 = v17;
  v18 = type metadata accessor for HStack();
  v136 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v103 - v19;
  v20 = type metadata accessor for ModifiedContent();
  v138 = *(v20 - 8);
  __chkstk_darwin(v20);
  v128 = &v103 - v21;
  v137 = v18;
  v110 = swift_getWitnessTable();
  v176 = v110;
  v177 = &protocol witness table for _FlexFrameLayout;
  v22 = swift_getWitnessTable();
  v23 = sub_100015A00(&qword_1000A14D8, &qword_1000A14B8, &qword_10007C370, &protocol conformance descriptor for ClosedRange<A>);
  v172 = v20;
  v173 = v10;
  v174 = v22;
  v175 = v23;
  v127 = &opaque type descriptor for <<opaque return type of View.dynamicTypeSize<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v129 = &v103 - v25;
  v26 = type metadata accessor for ModifiedContent();
  v135 = OpaqueTypeMetadata2;
  v27 = type metadata accessor for _ConditionalContent();
  v126 = *(v27 - 8);
  __chkstk_darwin(v27);
  v117 = &v103 - v28;
  v29 = type metadata accessor for ModifiedContent();
  v120 = *(v29 - 8);
  __chkstk_darwin(v29);
  v114 = &v103 - v30;
  sub_100013694(&qword_1000A14E0, &qword_10007B478);
  v31 = type metadata accessor for ModifiedContent();
  v131 = *(v31 - 8);
  __chkstk_darwin(v31);
  v122 = &v103 - v32;
  v33 = type metadata accessor for ModifiedContent();
  v139 = *(v33 - 8);
  __chkstk_darwin(v33);
  v156 = &v103 - v34;
  v118 = v20;
  v172 = v20;
  v173 = v157;
  v130 = v22;
  v174 = v22;
  v175 = v23;
  v121 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = OpaqueTypeConformance2;
  v171 = v140;
  v119 = v26;
  v103 = swift_getWitnessTable();
  v168 = v103;
  v169 = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v127 = v27;
  v104 = swift_getWitnessTable();
  v166 = v104;
  v167 = &protocol witness table for _FixedSizeLayout;
  v123 = v29;
  v36 = swift_getWitnessTable();
  v37 = sub_100015A00(&qword_1000A14E8, &qword_1000A14E0, &qword_10007B478, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v105 = v36;
  v164 = v36;
  v165 = v37;
  v132 = v31;
  v38 = swift_getWitnessTable();
  v39 = sub_100063828();
  v107 = v38;
  v162 = v38;
  v163 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_10006387C(&qword_1000A14F8, &type metadata accessor for HoverEffect, &protocol conformance descriptor for HoverEffect);
  v140 = v33;
  v172 = v33;
  v173 = v158;
  v113 = v40;
  v174 = v40;
  v175 = v41;
  v109 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v112 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v103 - v43;
  sub_100013694(&qword_1000A1500, &qword_10007B480);
  v116 = v42;
  v45 = type metadata accessor for ModifiedContent();
  v46 = v142;
  v108 = v45;
  v125 = *(v45 - 8);
  v47 = __chkstk_darwin(v45);
  v111 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v115 = &v103 - v50;
  __chkstk_darwin(v49);
  v51 = v145;
  v52 = v144;
  v99 = v145;
  v100 = v144;
  v101 = v46;
  static VerticalAlignment.center.getter();
  v53 = v124;
  HStack.init(alignment:spacing:content:)();
  v54 = v159;
  sub_10000A9D4(*(v46 + *(v159 + 56)), *(v46 + *(v159 + 56) + 8));
  v55 = static Alignment.center.getter();
  v102 = v110;
  v56 = v137;
  v100 = v57;
  v101 = v137;
  v99 = v55;
  LOBYTE(v98) = 1;
  v97 = 0;
  v58 = v128;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v136 + 8))(v53, v56);
  v59 = sub_10000A468(*(v46 + *(v54 + 60)), *(v46 + *(v54 + 60) + 8));
  v60 = v143;
  sub_100069C88(v59, v143);
  v61 = v129;
  v62 = v118;
  View.dynamicTypeSize<A>(_:)();
  sub_1000156F8(v60, &qword_1000A14B8, &qword_10007C370);
  (*(v138 + 8))(v58, v62);
  v63 = __chkstk_darwin(*(v46 + 10));
  v99 = v51;
  v100 = v52;
  v101 = v46;
  v64 = v117;
  v65 = v135;
  sub_1000553B0(v63, sub_1000638D0, &v97, v135, v119, v106, v103, v117);
  (*(v133 + 8))(v61, v65);
  v66 = v114;
  v67 = v127;
  View.fixedSize(horizontal:vertical:)();
  (*(v126 + 8))(v64, v67);
  sub_100055AA8(v54);
  v68 = v122;
  v69 = v123;
  View.zIndex(_:)();
  (*(v120 + 8))(v66, v69);
  v70 = v148;
  v71 = v147;
  (*(v148 + 16))(v147, v46, v54);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v51;
  *(v73 + 24) = v52;
  (*(v70 + 32))(v73 + v72, v71, v54);
  v74 = v132;
  View.onHover(perform:)();

  (*(v131 + 8))(v68, v74);
  v75 = v149;
  sub_100015AC0(v46 + *(v54 + 48), v149, &qword_1000A14B0, &unk_10007B460);
  v76 = v151;
  v77 = *(v151 + 48);
  v78 = v158;
  if (v77(v75, 1, v158) == 1)
  {
    v79 = v150;
    static HoverEffect.automatic.getter();
    if (v77(v75, 1, v78) != 1)
    {
      sub_1000156F8(v75, &qword_1000A14B0, &unk_10007B460);
    }
  }

  else
  {
    v79 = v150;
    (*(v76 + 32))(v150, v75, v78);
  }

  sub_100055BA8(v159);
  v80 = v140;
  v81 = v113;
  v82 = v109;
  v83 = v156;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v76 + 8))(v79, v78);
  (*(v139 + 8))(v83, v80);
  v84 = v153;
  v85 = v152;
  v86 = v154;
  (*(v153 + 104))(v152, enum case for ControlSize.regular(_:), v154);
  v172 = v80;
  v173 = v78;
  v174 = v81;
  v175 = v82;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v111;
  v89 = v116;
  View.controlSize(_:)();
  (*(v84 + 8))(v85, v86);
  (*(v112 + 8))(v44, v89);
  v90 = sub_100015A00(&qword_1000A1508, &qword_1000A1500, &qword_10007B480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v160 = v87;
  v161 = v90;
  v91 = v108;
  swift_getWitnessTable();
  v92 = v125;
  v93 = *(v125 + 16);
  v94 = v115;
  v93(v115, v88, v91);
  v95 = *(v92 + 8);
  v95(v88, v91);
  v93(v155, v94, v91);
  return (v95)(v94, v91);
}

uint64_t sub_100054DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a4;
  sub_100013694(&qword_1000A14C0, &qword_10007B470);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for _ConditionalContent();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v36 - v12;
  v41 = v13;
  v14 = type metadata accessor for ModifiedContent();
  v44 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v42 = &v36 - v17;
  v37 = type metadata accessor for TFComponent(0, a2, a3, v18);
  v19 = *(a1 + 10);
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v20 = sub_100015A00(&qword_1000A14C8, &qword_1000A14C0, &qword_10007B470, &protocol conformance descriptor for _ClipEffect<A>);
  v56 = a3;
  v57 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v19;
  v23 = v38;
  sub_1000553B0(v22, sub_100063BC4, v46, a2, v7, a3, WitnessTable, v10);
  v54 = WitnessTable;
  v55 = a3;
  v24 = swift_getWitnessTable();
  sub_100055740(v8, v24);
  (*(v39 + 8))(v10, v8);
  if (*(a1 + 8))
  {
    v25 = sub_10000A468(*(a1 + *(v37 + 60)), *(a1 + *(v37 + 60) + 8));
    sub_100069AB8(v25, v26);
  }

  static Alignment.center.getter();
  v27 = sub_1000637D4();
  v52 = v24;
  v53 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  v30 = v40;
  View.frame(width:height:alignment:)();
  (*(v43 + 8))(v23, v28);
  v50 = v29;
  v51 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v42;
  v32(v42, v30, v14);
  v34 = *(v31 + 8);
  v34(v30, v14);
  v32(v45, v33, v14);
  return (v34)(v33, v14);
}

uint64_t sub_100055278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 11);
  v5 = type metadata accessor for TFComponent(0, a3, a4, a4);
  sub_10005531C(v4, v5);
  sub_100063B1C();
  View.clipShape<A>(_:style:)();
}

uint64_t sub_10005531C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_10000A468(*(v2 + *(a2 + 60)), *(v2 + *(a2 + 60) + 8));
    v5 = sub_10000A814(*(v2 + *(a2 + 64)), *(v2 + *(a2 + 64) + 8));
    sub_1000693D0(v5 & 1, v4, v6);
  }

  sub_100063B70();
  return AnyShape.init<A>(_:)();
}

uint64_t sub_1000553B0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v37 = a1;
  v36 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - v15;
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  v39 = type metadata accessor for _ConditionalContent();
  v24 = *(v39 - 8);
  __chkstk_darwin(v39);
  v26 = &v34 - v25;
  if (v37)
  {
    v35(v38);
    v27 = *(v18 + 16);
    v27(v23, v21, a5);
    v38 = a8;
    v28 = *(v18 + 8);
    v28(v21, a5);
    v27(v21, v23, a5);
    sub_100053904(v21, a5);
    v28(v21, a5);
    v28(v23, a5);
    a8 = v38;
  }

  else
  {
    v29 = v36;
    v30 = *(v36 + 16);
    v30(v16, v38, a4);
    v30(v13, v16, a4);
    sub_1000539FC(v13, a5, a4);
    v31 = *(v29 + 8);
    v31(v13, a4);
    v31(v16, a4);
  }

  v42 = v40;
  v43 = v41;
  v32 = v39;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v26, v32);
  return (*(v24 + 8))(v26, v32);
}

uint64_t sub_100055740(uint64_t a1, uint64_t a2)
{
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

uint64_t sub_1000557CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 11);
  v5 = type metadata accessor for TFComponent(0, a3, a4, a4);
  sub_10005531C((v4 & 1) == 0, v5);
  sub_100013694(&qword_1000A14C0, &qword_10007B470);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100015A00(&qword_1000A14C8, &qword_1000A14C0, &qword_10007B470, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000637D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A14B8, &qword_10007C370);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100015A00(&qword_1000A14D8, &qword_1000A14B8, &qword_10007C370, &protocol conformance descriptor for ClosedRange<A>);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100063B1C();
  View.clipShape<A>(_:style:)();
}

double sub_100055AA8(uint64_t a1)
{
  if (sub_100055BA8(a1) && (sub_1000130DC(&qword_1000A1510, &qword_10007B488), State.wrappedValue.getter(), (v2 & 1) != 0))
  {
    return 1000.0;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_100055B2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TFComponent(0, a3, a4, a4);
  sub_1000130DC(&qword_1000A1510, &qword_10007B488);
  return State.wrappedValue.setter();
}

BOOL sub_100055BA8(uint64_t a1)
{
  v3 = sub_1000130DC(&qword_1000A14B0, &unk_10007B460);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_100015AC0(v1 + *(a1 + 48), &v9 - v4, &qword_1000A14B0, &unk_10007B460);
  v6 = type metadata accessor for HoverEffect();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_1000156F8(v5, &qword_1000A14B0, &unk_10007B460);
  return v7;
}

uint64_t sub_100055D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = sub_1000130DC(&qword_1000A1AC8, &qword_10007BEF0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_1000130DC(&qword_1000A1AD0, &qword_10007BEF8) + 36));
  *v9 = sub_100067B24;
  v9[1] = v7;
  KeyPath = swift_getKeyPath();

  sub_1000130DC(&qword_1000A1510, &qword_10007B488);
  State.wrappedValue.getter();
  result = sub_1000130DC(&qword_1000A1AD8, &qword_10007BF00);
  v12 = a2 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = v13;
  return result;
}

double sub_100055E60@<D0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for RoundedCornerStyle();
  __chkstk_darwin(v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for RoundedCornerStyle.continuous(_:));
  Path.init(roundedRect:cornerSize:style:)();
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v14;
  return result;
}

uint64_t (*sub_100055FAC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100056034;
}

void sub_100056034(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100056080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100063B70();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000560E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100063B70();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100056148(uint64_t a1, uint64_t a2)
{
  v3 = sub_100063B70();

  return Shape.body.getter(a1, v3);
}

uint64_t sub_100056194@<X0>(void *a1@<X8>)
{
  v182 = a1;
  v173 = sub_1000130DC(&qword_1000A15A0, &qword_10007B540);
  v145 = *(v173 - 8);
  __chkstk_darwin(v173);
  v144 = &v134 - v2;
  v155 = sub_1000130DC(&qword_1000A15A8, &qword_10007B548);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v172 = &v134 - v3;
  v181 = sub_1000130DC(&qword_1000A15B0, &qword_10007B550);
  v4 = __chkstk_darwin(v181);
  v176 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v158 = &v134 - v6;
  v177 = type metadata accessor for AccessibilityTraits();
  v183 = *(v177 - 1);
  v7 = __chkstk_darwin(v177);
  v156 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v151 = &v134 - v10;
  v11 = __chkstk_darwin(v9);
  v160 = &v134 - v12;
  __chkstk_darwin(v11);
  v157 = &v134 - v13;
  v175 = type metadata accessor for HighlightHoverEffect();
  v150 = *(v175 - 8);
  __chkstk_darwin(v175);
  v149 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for AccessibilityActionKind();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TFToggle(0);
  v167 = *(v16 - 1);
  __chkstk_darwin(v16);
  v169 = v17;
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TFLabel(0);
  __chkstk_darwin(v19);
  v21 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1000130DC(&qword_1000A15B8, &qword_10007B558);
  __chkstk_darwin(v137);
  v138 = &v134 - v22;
  v140 = sub_1000130DC(&qword_1000A15C0, &qword_10007B560);
  __chkstk_darwin(v140);
  v139 = &v134 - v23;
  v142 = sub_1000130DC(&qword_1000A15C8, &qword_10007B568);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v168 = &v134 - v24;
  v170 = sub_1000130DC(&qword_1000A15D0, &qword_10007B570);
  __chkstk_darwin(v170);
  v143 = &v134 - v25;
  v153 = sub_1000130DC(&qword_1000A15D8, &qword_10007B578);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v171 = &v134 - v26;
  v166 = sub_1000130DC(&qword_1000A15E0, &qword_10007B580);
  v27 = __chkstk_darwin(v166);
  v174 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v159 = &v134 - v29;
  v179 = sub_1000130DC(&qword_1000A15E8, &qword_10007B588);
  __chkstk_darwin(v179);
  v180 = &v134 - v30;
  v163 = sub_1000130DC(&qword_1000A15F0, &qword_10007B590);
  __chkstk_darwin(v163);
  v164 = &v134 - v31;
  v178 = sub_1000130DC(&qword_1000A15F8, &qword_10007B598);
  __chkstk_darwin(v178);
  v165 = &v134 - v32;
  v162 = type metadata accessor for ButtonToggleStyle();
  v135 = *(v162 - 8);
  __chkstk_darwin(v162);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1000130DC(&qword_1000A1600, &qword_10007B5A0);
  v35 = *(v161 - 8);
  __chkstk_darwin(v161);
  v37 = &v134 - v36;
  v38 = sub_1000130DC(&qword_1000A1608, &qword_10007B5A8);
  v39 = __chkstk_darwin(v38);
  v42 = &v134 - v41;
  v43 = v1;
  if (v1[v16[7]] != 1)
  {
    goto LABEL_5;
  }

  if (qword_10009F370 != -1)
  {
    v136 = v39;
    v133 = v40;
    swift_once();
    v40 = v133;
    v39 = v136;
  }

  if ((byte_1000A51D9 & 1) == 0)
  {
    v96 = &v43[v16[8]];
    v97 = *v96;
    v98 = *(v96 + 1);
    LOBYTE(v96) = v96[16];
    *&v189 = v97;
    *(&v189 + 1) = v98;
    LOBYTE(v190) = v96;
    v136 = v39;
    v183 = v40;
    sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
    v99 = Binding.projectedValue.getter();
    v177 = &v134;
    __chkstk_darwin(v99);
    sub_10006387C(&qword_1000A1620, type metadata accessor for TFLabel, &unk_10007B120);
    Toggle.init(isOn:label:)();
    ButtonToggleStyle.init()();
    v100 = sub_100015A00(&unk_1000A1670, &qword_1000A1600, &qword_10007B5A0, &protocol conformance descriptor for Toggle<A>);
    v101 = sub_10006387C(&qword_1000A04E0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
    v102 = v161;
    v103 = v162;
    View.toggleStyle<A>(_:)();
    (*(v135 + 8))(v34, v103);
    (*(v35 + 8))(v37, v102);
    v104 = v183;
    v105 = v136;
    (*(v183 + 16))(v164, v42, v136);
    swift_storeEnumTagMultiPayload();
    *&v189 = v102;
    *(&v189 + 1) = v103;
    *&v190 = v100;
    *(&v190 + 1) = v101;
    swift_getOpaqueTypeConformance2();
    sub_10006418C();
    v106 = v165;
    _ConditionalContent<>.init(storage:)();
    sub_100015AC0(v106, v180, &qword_1000A15F8, &qword_10007B598);
    swift_storeEnumTagMultiPayload();
    sub_100064040();
    sub_100064540();
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v106, &qword_1000A15F8, &qword_10007B598);
    return (*(v104 + 8))(v42, v105);
  }

  else
  {
LABEL_5:
    if (qword_10009F368 != -1)
    {
      v132 = v39;
      swift_once();
      v39 = v132;
    }

    if (byte_1000A51D8 == 1)
    {
      v136 = v39;
      v156 = v18;
      v45 = *v43;
      v44 = *(v43 + 1);
      v46 = v16[5];
      v47 = v19[5];
      v48 = type metadata accessor for SymbolRenderingMode();
      (*(*(v48 - 8) + 16))(&v21[v47], &v43[v46], v48);
      v49 = &v43[v16[6]];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = &v43[v16[8]];
      v176 = *v52;
      v173 = v52[1];
      LODWORD(v172) = *(v52 + 16);
      *&v189 = v176;
      *(&v189 + 1) = v173;
      LOBYTE(v190) = v172;

      v158 = sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
      Binding.wrappedValue.getter();
      v53 = v184;
      *v21 = v45;
      *(v21 + 1) = v44;
      v54 = &v21[v19[6]];
      *v54 = v51;
      *(v54 + 1) = v50;
      v21[v19[7]] = v53;
      v55 = &v21[v19[8]];
      *v55 = swift_getKeyPath();
      v55[8] = 0;
      v56 = &v21[v19[9]];
      *v56 = swift_getKeyPath();
      v56[8] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v57 = v138;
      sub_100063EE4(v21, v138, type metadata accessor for TFLabel);
      v58 = (v57 + *(v137 + 36));
      v59 = v194;
      v58[4] = v193;
      v58[5] = v59;
      v58[6] = v195;
      v60 = v190;
      *v58 = v189;
      v58[1] = v60;
      v61 = v192;
      v58[2] = v191;
      v58[3] = v61;
      v62 = v140;
      v63 = v139;
      v64 = &v139[*(v140 + 36)];
      v134 = v43;
      sub_1000580EC(v64);
      v65 = static Alignment.center.getter();
      v67 = v66;
      v68 = (v64 + *(sub_1000130DC(&qword_1000A1630, &qword_10007B5B8) + 36));
      *v68 = v65;
      v68[1] = v67;
      sub_10001471C(v57, v63, &qword_1000A15B8, &qword_10007B558);
      v69 = v43;
      v70 = v156;
      sub_100065740(v69, v156, type metadata accessor for TFToggle);
      v71 = (*(v167 + 80) + 16) & ~*(v167 + 80);
      v72 = swift_allocObject();
      v167 = type metadata accessor for TFToggle;
      sub_100063EE4(v70, v72 + v71, type metadata accessor for TFToggle);
      v73 = sub_1000643CC();
      View.onTapGesture(count:perform:)();

      sub_1000156F8(v63, &qword_1000A15C0, &qword_10007B560);
      sub_100065740(v134, v70, type metadata accessor for TFToggle);
      v74 = swift_allocObject();
      sub_100063EE4(v70, v74 + v71, v167);
      v75 = v146;
      static AccessibilityActionKind.default.getter();
      v184 = v62;
      v185 = v73;
      swift_getOpaqueTypeConformance2();
      v76 = v143;
      v77 = v142;
      v78 = v168;
      View.accessibilityAction(_:_:)();

      (*(v147 + 8))(v75, v148);
      (*(v141 + 8))(v78, v77);
      v79 = v149;
      static CustomHoverEffect<>.highlight.getter();
      v80 = sub_1000642D4();
      v81 = sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
      v82 = v175;
      View.hoverEffect<A>(_:isEnabled:)();
      (*(v150 + 8))(v79, v82);
      sub_1000156F8(v76, &qword_1000A15D0, &qword_10007B570);
      v184 = v176;
      v185 = v173;
      LOBYTE(v186) = v172;
      Binding.wrappedValue.getter();
      LODWORD(v78) = v188;
      sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
      if (v78 == 1)
      {
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_100077640;
        static AccessibilityTraits.isToggle.getter();
        static AccessibilityTraits.isSelected.getter();
      }

      else
      {
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1000784C0;
        static AccessibilityTraits.isToggle.getter();
      }

      v184 = v83;
      sub_10006387C(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
      sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
      v108 = v157;
      v109 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v184 = v170;
      v185 = v175;
      v186 = v80;
      v187 = v81;
      swift_getOpaqueTypeConformance2();
      v110 = v153;
      v111 = v171;
      View.accessibilityAddTraits(_:)();
      v112 = *(v183 + 8);
      v112(v108, v109);
      (*(v152 + 8))(v111, v110);
      v184 = v176;
      v185 = v173;
      LOBYTE(v186) = v172;
      Binding.wrappedValue.getter();
      if (v188 == 1)
      {
        v184 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_1000784C0;
        static AccessibilityTraits.isSelected.getter();
        v184 = v118;
      }

      sub_10006387C(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
      sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
      v119 = v160;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v120 = v159;
      v121 = v174;
      ModifiedContent<>.accessibilityRemoveTraits(_:)();
      v112(v119, v109);
      v122 = &qword_1000A15E0;
      v123 = &qword_10007B580;
      sub_1000156F8(v121, &qword_1000A15E0, &qword_10007B580);
      sub_100015AC0(v120, v164, &qword_1000A15E0, &qword_10007B580);
      swift_storeEnumTagMultiPayload();
      v124 = sub_100015A00(&unk_1000A1670, &qword_1000A1600, &qword_10007B5A0, &protocol conformance descriptor for Toggle<A>);
      v125 = sub_10006387C(&qword_1000A04E0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
      v184 = v161;
      v185 = v162;
      v186 = v124;
      v187 = v125;
      swift_getOpaqueTypeConformance2();
      sub_10006418C();
      v126 = v165;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v126, v180, &qword_1000A15F8, &qword_10007B598);
      swift_storeEnumTagMultiPayload();
      sub_100064040();
      sub_100064540();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v126, &qword_1000A15F8, &qword_10007B598);
      v127 = v120;
    }

    else
    {
      sub_100065740(v43, v18, type metadata accessor for TFToggle);
      v84 = (*(v167 + 80) + 16) & ~*(v167 + 80);
      v85 = swift_allocObject();
      v86 = sub_100063EE4(v18, v85 + v84, type metadata accessor for TFToggle);
      __chkstk_darwin(v86);
      sub_1000130DC(&qword_1000A1610, &qword_10007B5B0);
      sub_100063F58();
      v87 = v144;
      Button.init(action:label:)();
      KeyPath = swift_getKeyPath();
      v189 = 0uLL;
      LOBYTE(v190) = 0;
      *(&v190 + 1) = KeyPath;
      LOBYTE(v191) = 0;
      v89 = sub_100015A00(&qword_1000A1638, &qword_1000A15A0, &qword_10007B540, &protocol conformance descriptor for Button<A>);
      v90 = sub_100063BD0();
      v91 = v173;
      View.buttonStyle<A>(_:)();

      (*(v145 + 8))(v87, v91);
      v92 = &v43[v16[8]];
      v93 = *v92;
      v94 = *(v92 + 1);
      LODWORD(v92) = v92[16];
      v175 = v93;
      *&v189 = v93;
      *(&v189 + 1) = v94;
      v174 = v94;
      LODWORD(v171) = v92;
      LOBYTE(v190) = v92;
      v170 = sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
      Binding.wrappedValue.getter();
      LODWORD(v87) = v184;
      sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
      if (v87 == 1)
      {
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_100077640;
        static AccessibilityTraits.isToggle.getter();
        static AccessibilityTraits.isSelected.getter();
      }

      else
      {
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1000784C0;
        static AccessibilityTraits.isToggle.getter();
      }

      *&v189 = v95;
      sub_10006387C(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
      sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
      v113 = v151;
      v114 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *&v189 = v173;
      *(&v189 + 1) = &type metadata for TFPressedButtonStyle;
      *&v190 = v89;
      *(&v190 + 1) = v90;
      swift_getOpaqueTypeConformance2();
      v115 = v155;
      v116 = v172;
      View.accessibilityAddTraits(_:)();
      v117 = *(v183 + 8);
      v117(v113, v114);
      (*(v154 + 8))(v116, v115);
      *&v189 = v175;
      *(&v189 + 1) = v174;
      LOBYTE(v190) = v171;
      Binding.wrappedValue.getter();
      if (v184 == 1)
      {
        *&v189 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_1000784C0;
        static AccessibilityTraits.isSelected.getter();
        *&v189 = v128;
      }

      sub_10006387C(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
      sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
      v129 = v156;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v130 = v158;
      v131 = v176;
      ModifiedContent<>.accessibilityRemoveTraits(_:)();
      v117(v129, v114);
      v122 = &qword_1000A15B0;
      v123 = &qword_10007B550;
      sub_1000156F8(v131, &qword_1000A15B0, &qword_10007B550);
      sub_100015AC0(v130, v180, &qword_1000A15B0, &qword_10007B550);
      swift_storeEnumTagMultiPayload();
      sub_100064040();
      sub_100064540();
      _ConditionalContent<>.init(storage:)();
      v127 = v130;
    }

    return sub_1000156F8(v127, v122, v123);
  }
}

uint64_t sub_100057FA0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = type metadata accessor for SymbolRenderingMode();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[*(v6 + 24)];
  v13 = *v11;
  v12 = *(v11 + 1);

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  *a2 = v5;
  *(a2 + 1) = v4;
  v14 = &a2[v8[6]];
  *v14 = v13;
  *(v14 + 1) = v12;
  a2[v8[7]] = v18;
  v15 = &a2[v8[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &a2[v8[9]];
  result = swift_getKeyPath();
  *v16 = result;
  v16[8] = 0;
  return result;
}

uint64_t sub_1000580EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TFToggle(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  if ((sub_10000A468(*v3, v5) - 2) > 2u)
  {
    v6 = 0;
  }

  else
  {
    sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
    Binding.wrappedValue.getter();
    v6 = v20 ^ 1;
  }

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  v7 = (sub_10000A468(v4, v5) - 2) < 3u;
  v8 = static AnyTransition.identity.getter();
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = type metadata accessor for TFComponentBackground(0);
  *(a1 + v11[10]) = v10;
  sub_1000130DC(&qword_1000A16B0, qword_100078020);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *a1 = v6 & 1;
  *(a1 + 1) = v20;
  *(a1 + 2) = v7;
  *(a1 + 3) = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  v14 = a1 + v11[11];
  *v14 = v12;
  *(v14 + 8) = 0;
  v15 = a1 + v11[12];
  *v15 = v13;
  *(v15 + 8) = 0;
  v16 = a1 + v11[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a1 + v11[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a1 + v11[15];
  result = swift_getKeyPath();
  *v18 = result;
  *(v18 + 8) = 0;
  return result;
}

uint64_t sub_10005831C(uint64_t a1)
{
  type metadata accessor for TFToggle(0);

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.setter();
}

uint64_t sub_1000583E0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = type metadata accessor for SymbolRenderingMode();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[*(v6 + 24)];
  v13 = *v11;
  v12 = *(v11 + 1);

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  *a2 = v5;
  *(a2 + 1) = v4;
  v14 = &a2[v8[6]];
  *v14 = v13;
  *(v14 + 1) = v12;
  a2[v8[7]] = v23;
  v15 = &a2[v8[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &a2[v8[9]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &a2[*(sub_1000130DC(&qword_1000A1610, &qword_10007B5B0) + 36)];
  sub_1000580EC(v17);
  v18 = static Alignment.center.getter();
  v20 = v19;
  result = sub_1000130DC(&qword_1000A1630, &qword_10007B5B8);
  v22 = &v17[*(result + 36)];
  *v22 = v18;
  v22[1] = v20;
  return result;
}

__n128 sub_1000585A8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A1838, &qword_10007B8E0);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  sub_100058710(v2);
  v7 = type metadata accessor for TFLabel(0);
  v8 = sub_10000AE2C(*(v2 + *(v7 + 36)), *(v2 + *(v7 + 36) + 8));
  if (v8 == 2 || (v8 & 1) == 0)
  {
    static Alignment.center.getter();
  }

  else
  {
    static Alignment.leading.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001471C(v6, a1, &qword_1000A1838, &qword_10007B8E0);
  v9 = a1 + *(sub_1000130DC(&qword_1000A1840, &qword_10007B8E8) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_100058710(uint64_t a1)
{
  v3 = sub_1000130DC(&qword_1000A1848, &qword_10007B8F0);
  __chkstk_darwin(v3);
  v5 = (v45 - v4);
  v6 = sub_1000130DC(&qword_1000A1850, &qword_10007B8F8);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_1000130DC(&qword_1000A1858, &qword_10007B900);
  v50 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = v45 - v10;
  v11 = sub_1000130DC(&qword_1000A1860, &qword_10007B908);
  v12 = __chkstk_darwin(v11);
  v49 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v45 - v14;
  v16 = type metadata accessor for TFLabel(0);
  v17 = (a1 + *(v16 + 24));
  v18 = v17[1];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = *v17;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v16;
    v47 = v6;
    v45[1] = v45;
    v22 = __chkstk_darwin(v16);
    v45[-4] = v24;
    v45[-3] = v23;
    v45[-2] = a1;
    __chkstk_darwin(v22);
    v45[-2] = a1;
    sub_1000501E0();
    v46 = v8;
    sub_100065670();
    v48 = v3;
    v25 = v9;
    v26 = v46;
    Label.init(title:icon:)();
    v27 = static Edge.Set.horizontal.getter();
    if (sub_10000AE2C(*(a1 + *(v21 + 36)), *(a1 + *(v21 + 36) + 8)) == 2)
    {
      v28 = sub_10000A468(*(a1 + *(v21 + 32)), *(a1 + *(v21 + 32) + 8));
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D8)
      {
        goto LABEL_9;
      }

      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      if ((byte_1000A51D9 & 1) == 0)
      {
        v33 = _UISolariumEnabled();
        v29 = 12.0;
        if (v33)
        {
LABEL_9:
          sub_1000693D0(0, v28, v29);
        }
      }
    }

    EdgeInsets.init(_all:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v49;
    (*(v50 + 32))(v49, v51, v25);
    v43 = v42 + *(v11 + 36);
    *v43 = v27;
    *(v43 + 8) = v35;
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;
    *(v43 + 32) = v41;
    *(v43 + 40) = 0;
    v30 = &qword_10007B908;
    sub_10001471C(v42, v15, &qword_1000A1860, &qword_10007B908);
    sub_100015AC0(v15, v26, &qword_1000A1860, &qword_10007B908);
    swift_storeEnumTagMultiPayload();
    sub_1000655B8();
    _ConditionalContent<>.init(storage:)();
    v31 = v15;
    v32 = &qword_1000A1860;
  }

  else
  {
LABEL_10:
    sub_100058F90(v5);
    v30 = &qword_10007B8F0;
    sub_100015AC0(v5, v8, &qword_1000A1848, &qword_10007B8F0);
    swift_storeEnumTagMultiPayload();
    sub_1000655B8();
    sub_100065670();
    _ConditionalContent<>.init(storage:)();
    v31 = v5;
    v32 = &qword_1000A1848;
  }

  return sub_1000156F8(v31, v32, v30);
}

uint64_t sub_100058C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + *(type metadata accessor for TFLabel(0) + 28));
  KeyPath = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
}

void *sub_100058CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A1888, &qword_10007B910);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for TFSymbol(0);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  if (v10)
  {
    v11 = *a1;
    v12 = type metadata accessor for TFLabel(0);
    v13 = *(a1 + v12[7]);
    v14 = v12[5];
    v15 = *(a1 + v12[6] + 8);
    v23[1] = a2;
    v16 = v15 == 0;

    v17 = static Font.title3.getter();
    *v9 = v11;
    *(v9 + 1) = v10;
    v9[16] = v13;
    *(v9 + 3) = v17;
    *(v9 + 4) = 0;
    v18 = v7[8];
    v19 = type metadata accessor for SymbolRenderingMode();
    (*(*(v19 - 8) + 16))(&v9[v18], a1 + v14, v19);
    v9[v7[9]] = 0;
    v9[v7[10]] = v16;
    v20 = &v9[v7[11]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    v21 = &v9[v7[12]];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    sub_100065740(v9, v6, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    _ConditionalContent<>.init(storage:)();
    return sub_1000657A8(v9, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    return _ConditionalContent<>.init(storage:)();
  }
}

void *sub_100058F90@<X0>(void *a1@<X8>)
{
  v3 = sub_1000130DC(&qword_1000A1888, &qword_10007B910);
  __chkstk_darwin(v3);
  v5 = v22 - v4;
  v6 = type metadata accessor for TFSymbol(0);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[1];
  if (v9)
  {
    v10 = *v1;
    v11 = type metadata accessor for TFLabel(0);
    v12 = *(v1 + v11[7]);
    v13 = v11[5];
    v14 = *(v1 + v11[6] + 8);
    v22[1] = a1;
    v15 = v14 == 0;

    v16 = static Font.title3.getter();
    *v8 = v10;
    *(v8 + 1) = v9;
    v8[16] = v12;
    *(v8 + 3) = v16;
    *(v8 + 4) = 0;
    v17 = v6[8];
    v18 = type metadata accessor for SymbolRenderingMode();
    (*(*(v18 - 8) + 16))(&v8[v17], v1 + v13, v18);
    v8[v6[9]] = 0;
    v8[v6[10]] = v15;
    v19 = &v8[v6[11]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v8[v6[12]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    sub_100065740(v8, v5, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    _ConditionalContent<>.init(storage:)();
    return sub_1000657A8(v8, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10006387C(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10005925C()
{
  sub_10004E6B0();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000592C0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1000130DC(&qword_1000A17C0, &qword_10007B7C0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v42 = sub_1000130DC(&qword_1000A17C8, &qword_10007B7C8);
  __chkstk_darwin(v42);
  v44 = &v35 - v6;
  v43 = sub_1000130DC(&qword_1000A17D0, &qword_10007B7D0);
  __chkstk_darwin(v43);
  v45 = &v35 - v7;
  v41 = static HorizontalAlignment.center.getter();
  v40 = static VerticalAlignment.firstTextBaseline.getter();
  sub_100059720(&v47);
  v37 = *(&v47 + 1);
  v38 = v47;
  v8 = v48[0];
  v39 = *&v48[8];
  v9 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  LOBYTE(v47) = v8;

  v35 = sub_10005981C();
  v10 = &v5[*(v3 + 44)];
  v11 = *(sub_1000130DC(&qword_1000A17D8, &qword_10007B808) + 28);
  v12 = type metadata accessor for TFSymbol(0);
  v13 = v12[8];
  v14 = type metadata accessor for SymbolRenderingMode();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v11, v1 + v13, v14);
  (*(v15 + 56))(v10 + v11, 0, 1, v14);
  *v10 = swift_getKeyPath();
  v16 = v40;
  *v5 = v41;
  *(v5 + 1) = v16;
  v17 = v37;
  *(v5 + 2) = v38;
  *(v5 + 3) = v17;
  v5[32] = v8;
  *(v5 + 9) = *&v53[3];
  *(v5 + 33) = *v53;
  *(v5 + 40) = v39;
  *(v5 + 7) = KeyPath;
  *(v5 + 8) = v9;
  *(v5 + 9) = v35;
  v18 = v12[11];
  v19 = *(v1 + v18);
  v20 = *(v1 + v18 + 8);
  v21 = sub_10000AE2C(v19, v20);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    static Alignment.center.getter();
  }

  else
  {
    static Alignment.leading.getter();
  }

  v22 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v44;
  sub_10001471C(v5, v44, &qword_1000A17C0, &qword_10007B7C0);
  v24 = (v23 + *(v42 + 36));
  v25 = v51;
  v24[4] = v50;
  v24[5] = v25;
  v24[6] = v52;
  v26 = *v48;
  *v24 = v47;
  v24[1] = v26;
  v27 = v49;
  v24[2] = *&v48[16];
  v24[3] = v27;
  v28 = v45;
  sub_10001471C(v23, v45, &qword_1000A17C8, &qword_10007B7C8);
  *(v28 + *(v43 + 36)) = 0;
  if (*(v1 + v12[9]) == 1 && *(v1 + 16) == 1)
  {
    v22 = sub_10000AE2C(v19, v20);
  }

  v29 = *(v1 + 16);
  v30 = static AnyTransition.identity.getter();
  v31 = v28;
  v32 = v46;
  sub_10001471C(v31, v46, &qword_1000A17D0, &qword_10007B7D0);
  result = sub_1000130DC(&qword_1000A17E0, &qword_10007B840);
  v34 = v32 + *(result + 36);
  *v34 = v22 & 1;
  *(v34 + 1) = v29;
  *(v34 + 2) = 0;
  *(v34 + 8) = v30;
  return result;
}

uint64_t sub_100059720@<X0>(uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = Image.init(_internalSystemName:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  sub_100050948(v3, v5, v7 & 1);

  sub_10004F02C(v3, v5, v7 & 1);
}

uint64_t sub_10005981C()
{
  if (*(v0 + 32))
  {
    v1 = v0 + *(type metadata accessor for TFSymbol(0) + 48);
    v2 = *v1;
    v3 = *(v1 + 8);

    sub_10000A814(v2, v3);
    v4 = &qword_1000A1800;
    v5 = &qword_10007B858;
    sub_1000130DC(&qword_1000A1800, &qword_10007B858);
    v6 = &unk_1000A1808;
LABEL_7:
    sub_100015A00(v6, v4, v5, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    return AnyShapeStyle.init<A>(_:)();
  }

  if (*(v0 + 16) != 1 || (v7 = type metadata accessor for TFSymbol(0), v8 = sub_10000AE2C(*(v0 + *(v7 + 44)), *(v0 + *(v7 + 44) + 8)), v8 != 2) && (v8 & 1) != 0)
  {
    static HierarchicalShapeStyle.primary.getter();
    v9 = type metadata accessor for TFSymbol(0);
    sub_10000A814(*(v0 + *(v9 + 48)), *(v0 + *(v9 + 48) + 8));
    v4 = &qword_1000A17F0;
    v5 = &qword_10007B850;
    sub_1000130DC(&qword_1000A17F0, &qword_10007B850);
    v6 = &qword_1000A17F8;
    goto LABEL_7;
  }

  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D8 == 1)
  {
    static Color.black.getter();
    sub_10000A814(*(v0 + *(v7 + 48)), *(v0 + *(v7 + 48) + 8));
    Color.opacity(_:)();
  }

  else
  {
    static Color.white.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

double sub_100059A38@<D0>(uint64_t a1@<X8>)
{
  static Font.callout.getter();
  v2 = Font.bold()();

  LODWORD(v9) = static HierarchicalShapeStyle.secondary.getter();
  v3 = AnyShapeStyle.init<A>(_:)();
  v4 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000010007D7F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + v4[9]) = 1;
  *(a1 + v4[10]) = 1;
  v5 = a1 + v4[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a1 + *(sub_1000130DC(&qword_1000A1758, &qword_10007B768) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

Swift::Int sub_100059BBC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100059C2C@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  a1();
  State.init(wrappedValue:)();
  result = sub_1000130DC(a2, a3);
  v8 = a4 + *(result + 36);
  *v8 = v9;
  *(v8 + 8) = v10;
  return result;
}

Swift::Int sub_100059CCC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100059B94(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_100059D0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_100013694(&qword_1000A1528, &qword_10007B490);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_100013694(&unk_1000A1530, &unk_10007B498);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TFFrameTracker(255);
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90, &qword_10007ABC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1540, &qword_10007B4A8);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v46 = sub_100015A00(&qword_1000A1548, &unk_1000A1530, &unk_10007B498, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v43 = swift_getWitnessTable();
  v44 = &protocol witness table for _FlexFrameLayout;
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _PaddingLayout;
  v39 = swift_getWitnessTable();
  v40 = sub_10004EB98();
  v37 = swift_getWitnessTable();
  v38 = sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
  v35 = swift_getWitnessTable();
  v36 = sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v33 = swift_getWitnessTable();
  v34 = &protocol witness table for _FrameLayout;
  v22 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v31 = swift_getWitnessTable();
  v32 = sub_100015A00(&qword_1000A1568, &qword_1000A1540, &qword_10007B4A8, &protocol conformance descriptor for _TraitWritingModifier<A>);
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  sub_100063BD0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for HighlightHoverEffect();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v2 = sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v27 = OpaqueTypeMetadata2;
  v28 = v20;
  v29 = OpaqueTypeConformance2;
  v30 = v2;
  v3 = swift_getOpaqueTypeMetadata2();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &OpaqueTypeConformance2 - v5;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &OpaqueTypeConformance2 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &OpaqueTypeConformance2 - v12;
  sub_10005A3F4(v23, v6);
  v27 = OpaqueTypeMetadata2;
  v28 = v20;
  v29 = OpaqueTypeConformance2;
  v30 = v2;
  v14 = swift_getOpaqueTypeConformance2();
  sub_100055740(v3, v14);
  (*(v4 + 8))(v6, v3);
  v15 = sub_1000637D4();
  v25 = v14;
  v26 = v15;
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v11, v7);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v16(v24, v13, v7);
  return (v17)(v13, v7);
}

uint64_t sub_10005A3F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a1;
  v75 = a2;
  v77 = type metadata accessor for HighlightHoverEffect();
  v74 = *(v77 - 8);
  v3 = __chkstk_darwin(v77);
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a1 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v3);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_100013694(&qword_1000A1528, &qword_10007B490);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_100013694(&unk_1000A1530, &unk_10007B498);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TFFrameTracker(255);
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90, &qword_10007ABC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1540, &qword_10007B4A8);
  v76 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_100015A00(&qword_1000A1548, &unk_1000A1530, &unk_10007B498, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v100 = WitnessTable;
  v101 = v7;
  v98 = swift_getWitnessTable();
  v99 = &protocol witness table for _FlexFrameLayout;
  v96 = swift_getWitnessTable();
  v97 = &protocol witness table for _PaddingLayout;
  v8 = swift_getWitnessTable();
  v9 = sub_10004EB98();
  v94 = v8;
  v95 = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
  v92 = v10;
  v93 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v90 = v12;
  v91 = v13;
  v88 = swift_getWitnessTable();
  v89 = &protocol witness table for _FrameLayout;
  v14 = swift_getWitnessTable();
  v15 = sub_100015A00(&qword_1000A1568, &qword_1000A1540, &qword_10007B4A8, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v86 = v14;
  v87 = v15;
  v63 = swift_getWitnessTable();
  v16 = type metadata accessor for Button();
  v64 = *(v16 - 8);
  __chkstk_darwin(v16);
  v61 = &v54 - v17;
  v18 = swift_getWitnessTable();
  v19 = sub_100063BD0();
  v81 = v16;
  v82 = &type metadata for TFPressedButtonStyle;
  v20 = v16;
  v56 = v16;
  v83 = v18;
  v84 = v19;
  v58 = v18;
  v21 = v19;
  v57 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v54 - v23;
  v81 = v20;
  v82 = &type metadata for TFPressedButtonStyle;
  v83 = v18;
  v84 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v66 = OpaqueTypeMetadata2;
  v81 = OpaqueTypeMetadata2;
  v82 = v77;
  v62 = OpaqueTypeConformance2;
  v83 = OpaqueTypeConformance2;
  v84 = v25;
  v60 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v59 = &v54 - v31;
  v32 = v70;
  v33 = v67;
  v34 = v73;
  v35 = v68;
  (*(v70 + 16))(v67, v73, v68);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v35;
  v39 = *(v35 + 24);
  v40 = v69;
  *(v37 + 16) = v69;
  *(v37 + 24) = v39;
  v41 = v37 + v36;
  v42 = v72;
  v43 = v33;
  v44 = v55;
  (*(v32 + 32))(v41, v43, v38);
  v78 = v40;
  v79 = v39;
  v80 = v34;
  v45 = v61;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v81 = 0;
  v82 = 0;
  LOBYTE(v83) = 0;
  v84 = KeyPath;
  v85 = 0;
  v47 = v56;
  View.buttonStyle<A>(_:)();

  (*(v64 + 8))(v45, v47);
  static CustomHoverEffect<>.highlight.getter();
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  v48 = v66;
  v49 = v77;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v74 + 8))(v42, v49);
  (*(v65 + 8))(v44, v48);
  v50 = *(v27 + 16);
  v51 = v59;
  v50(v59, v30, v26);
  v52 = *(v27 + 8);
  v52(v30, v26);
  v50(v75, v51, v26);
  return (v52)(v51, v26);
}

uint64_t sub_10005AE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28[3] = a1;
  v29 = a4;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_100013694(&qword_1000A1528, &qword_10007B490);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_100013694(&unk_1000A1530, &unk_10007B498);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v28[1] = type metadata accessor for ModifiedContent();
  type metadata accessor for TFFrameTracker(255);
  v28[2] = type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90, &qword_10007ABC0);
  v28[5] = type metadata accessor for ModifiedContent();
  v28[4] = type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1540, &qword_10007B4A8);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v14 = type metadata accessor for TFButton(0, a2, a3, v13);
  sub_10005B2EC(v14, v10);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_100015A00(&qword_1000A1548, &unk_1000A1530, &unk_10007B498, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v44 = WitnessTable;
  v45 = v16;
  v42 = swift_getWitnessTable();
  v43 = &protocol witness table for _FlexFrameLayout;
  v40 = swift_getWitnessTable();
  v41 = &protocol witness table for _PaddingLayout;
  v17 = swift_getWitnessTable();
  v18 = sub_10004EB98();
  v38 = v17;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
  v36 = v19;
  v37 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v34 = v21;
  v35 = v22;
  v32 = swift_getWitnessTable();
  v33 = &protocol witness table for _FrameLayout;
  v23 = swift_getWitnessTable();
  v24 = sub_100015A00(&qword_1000A1568, &qword_1000A1540, &qword_10007B4A8, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  v25 = *(v7 + 16);
  v25(v12, v10, v6);
  v26 = *(v7 + 8);
  v26(v10, v6);
  v25(v29, v12, v6);
  return (v26)(v12, v6);
}

uint64_t sub_10005B2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v5 = type metadata accessor for TFFrameTracker(0);
  v6 = __chkstk_darwin(v5);
  v100 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v99 = v8;
  __chkstk_darwin(v6);
  v97 = v9;
  v98 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_100013694(&qword_1000A1528, &qword_10007B490);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v79 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74[-v12];
  sub_100013694(&unk_1000A1530, &unk_10007B498);
  v14 = type metadata accessor for ModifiedContent();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v74[-v15];
  v17 = type metadata accessor for ModifiedContent();
  v81 = *(v17 - 8);
  __chkstk_darwin(v17);
  v80 = &v74[-v18];
  v82 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v84 = *(v20 - 8);
  __chkstk_darwin(v20);
  v83 = &v74[-v21];
  v85 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v87 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = &v74[-v24];
  v88 = v25;
  v26 = type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90, &qword_10007ABC0);
  v89 = v26;
  v27 = type metadata accessor for ModifiedContent();
  v92 = *(v27 - 8);
  __chkstk_darwin(v27);
  v90 = &v74[-v28];
  v93 = v29;
  v95 = type metadata accessor for ModifiedContent();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v74[-v30];
  v31 = &v3[*(a1 + 72)];
  v32 = v31[8];
  v76 = *v31;
  v75 = v32;
  sub_10000A468(v76, v32);
  v33 = *(a1 + 32);
  v96 = v10;
  v103 = v10;
  v78 = v33;
  v104 = v33;
  v105 = v3;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D8 == 1)
  {
    LODWORD(v112) = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v112 = static Color.primary.getter();
  }

  v112 = AnyShapeStyle.init<A>(_:)();
  WitnessTable = swift_getWitnessTable();
  View.foregroundStyle<A>(_:)();

  (*(v79 + 8))(v13, v11);
  v35 = v3;
  LODWORD(v79) = *v3;
  if (v79 == 1)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  v36 = sub_100015A00(&qword_1000A1548, &unk_1000A1530, &unk_10007B498, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v121 = WitnessTable;
  v122 = v36;
  v37 = swift_getWitnessTable();
  v38 = v80;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v77 + 8))(v16, v14);
  static Edge.Set.horizontal.getter();
  if (v3[2] == 1)
  {
    v39 = sub_10000A468(v76, v75);
    if (byte_1000A51D8)
    {
      goto LABEL_11;
    }

    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_11:
      sub_1000693D0(0, v39, v40);
    }
  }

  v119 = v37;
  v120 = &protocol witness table for _FlexFrameLayout;
  v41 = v82;
  v42 = swift_getWitnessTable();
  v43 = v83;
  View.padding(_:_:)();
  (*(v81 + 8))(v38, v41);
  v44 = v3[1];
  v45 = static AnyTransition.identity.getter();
  v117 = v42;
  v118 = &protocol witness table for _PaddingLayout;
  v46 = v85;
  v47 = swift_getWitnessTable();
  LOBYTE(v112) = v44;
  *(&v112 + 1) = 0;
  BYTE3(v112) = 0;
  v113 = v45;
  v48 = v86;
  View.modifier<A>(_:)();

  (*(v84 + 8))(v43, v46);
  v49 = v99;
  v50 = v98;
  v51 = v101;
  (*(v99 + 16))(v98, v35, v101);
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = swift_allocObject();
  v54 = v78;
  *(v53 + 16) = v96;
  *(v53 + 24) = v54;
  (*(v49 + 32))(v53 + v52, v50, v51);
  v55 = sub_10004EB98();
  v115 = v47;
  v116 = v55;
  v56 = v88;
  v57 = swift_getWitnessTable();
  v58 = enum case for CoordinateSpace.global(_:);
  v59 = type metadata accessor for CoordinateSpace();
  v60 = v100;
  (*(*(v59 - 8) + 104))(v100, v58, v59);
  v61 = v90;
  sub_1000698A0(sub_100063DEC, v53, v57, v90);

  sub_1000657A8(v60, type metadata accessor for TFFrameTracker);
  (*(v87 + 8))(v48, v56);
  v62 = &v35[*(v51 + 56)];
  v63 = *v62;
  v64 = v62[8];
  v65 = *(v62 + 2);
  v112 = v63;
  LOBYTE(v113) = v64;
  v114 = v65;
  sub_1000130DC(&qword_1000A1580, &qword_10007B4D8);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  v66 = sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
  v110 = v57;
  v111 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v108 = v67;
  v109 = v68;
  v69 = v93;
  v70 = swift_getWitnessTable();
  v71 = v91;
  View.frame(width:height:alignment:)();
  (*(v92 + 8))(v61, v69);
  v106 = v70;
  v107 = &protocol witness table for _FrameLayout;
  v72 = v95;
  swift_getWitnessTable();
  View.layoutPriority(_:)();
  return (*(v94 + 8))(v71, v72);
}

uint64_t sub_10005C028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v43 = type metadata accessor for TFSymbol(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000130DC(&qword_1000A1528, &qword_10007B490);
  v8 = __chkstk_darwin(v44);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v38 - v10;
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for _ConditionalContent();
  v39 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  type metadata accessor for TFButton(0, a2, a3, v18);
  v19 = *(a1 + 3);
  v49 = a2;
  v50 = a3;
  v54[4] = a3;
  v54[5] = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_1000553B0(v19, sub_100063E18, v48, a2, v11, a3, WitnessTable, v15);
  v54[2] = WitnessTable;
  v54[3] = a3;
  v40 = swift_getWitnessTable();
  v21 = *(v39 + 16);
  v42 = v17;
  v22 = v17;
  v23 = v39;
  v21(v22, v15, v12);
  v24 = *(v23 + 8);
  v24(v15, v12);
  if (v19 == 1)
  {
    LODWORD(v54[0]) = static HierarchicalShapeStyle.secondary.getter();
    v25 = AnyShapeStyle.init<A>(_:)();
    v26 = static Font.title3.getter();
    v27 = v43;
    v28 = v38;
    static SymbolRenderingMode.hierarchical.getter();
    *v28 = xmmword_10007AE90;
    *(v28 + 16) = 0;
    *(v28 + 24) = v26;
    *(v28 + 32) = v25;
    *(v28 + v27[9]) = 0;
    *(v28 + v27[10]) = 0;
    v29 = v28 + v27[11];
    *v29 = swift_getKeyPath();
    *(v29 + 8) = 0;
    v30 = v28 + v27[12];
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    v31 = v41;
    sub_100063EE4(v28, v41, type metadata accessor for TFSymbol);
    v32 = 0;
    v33 = v27;
    v34 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v43;
    v34 = v41;
  }

  (*(v45 + 56))(v34, v32, 1, v33);
  v35 = v42;
  v21(v15, v42, v12);
  v54[0] = v15;
  v36 = v46;
  sub_100015AC0(v34, v46, &qword_1000A1528, &qword_10007B490);
  v54[1] = v36;
  v53[0] = v12;
  v53[1] = v44;
  v51 = v40;
  v52 = sub_100063E20();
  sub_100053734(v54, 2uLL, v53);
  sub_1000156F8(v34, &qword_1000A1528, &qword_10007B490);
  v24(v35, v12);
  sub_1000156F8(v36, &qword_1000A1528, &qword_10007B490);
  return (v24)(v15, v12);
}

uint64_t sub_10005C590(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8)
{
  type metadata accessor for TFButton(0, a2, a3, a8);
  sub_1000130DC(&qword_1000A1580, &qword_10007B4D8);
  return State.wrappedValue.setter();
}

uint64_t sub_10005C62C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000130DC(&qword_1000A1AE0, &qword_10007BF08);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1000130DC(&qword_1000A1AE8, &qword_10007BF10);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  ButtonStyleConfiguration.label.getter();
  v11 = 1.0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    if ((sub_10000A468(v9, v10) - 2) >= 3u)
    {
      v11 = 0.7;
    }

    else
    {
      v11 = 0.5;
    }
  }

  sub_10001471C(v5, v8, &qword_1000A1AE0, &qword_10007BF08);
  *&v8[*(v6 + 36)] = v11;
  sub_10001471C(v8, a1, &qword_1000A1AE8, &qword_10007BF10);
  result = sub_1000130DC(&qword_1000A1AF0, &qword_10007BF18);
  v13 = (a1 + *(result + 36));
  *v13 = sub_100037834;
  v13[1] = 0;
  return result;
}

uint64_t sub_10005C7D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v119 = a2;
  v4 = type metadata accessor for TFFrameTracker(0);
  v5 = __chkstk_darwin(v4);
  v118 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v115 = v7;
  __chkstk_darwin(v5);
  v113 = v8;
  v114 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A1728, &qword_10007B750);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v88 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v85[-v11];
  sub_100013694(&unk_1000A1730, &qword_10007B758);
  v13 = type metadata accessor for ModifiedContent();
  v90 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v85[-v14];
  v16 = type metadata accessor for ModifiedContent();
  v94 = *(v16 - 8);
  __chkstk_darwin(v16);
  v92 = &v85[-v17];
  v95 = v18;
  v19 = type metadata accessor for ModifiedContent();
  v96 = *(v19 - 8);
  __chkstk_darwin(v19);
  v93 = &v85[-v20];
  sub_100013694(&qword_1000A0A10, &qword_10007B760);
  v97 = v19;
  v21 = type metadata accessor for ModifiedContent();
  v99 = *(v21 - 8);
  __chkstk_darwin(v21);
  v98 = &v85[-v22];
  v100 = v23;
  v24 = type metadata accessor for ModifiedContent();
  v102 = *(v24 - 8);
  __chkstk_darwin(v24);
  v101 = &v85[-v25];
  v104 = v26;
  v27 = type metadata accessor for ModifiedContent();
  sub_100013694(&qword_1000A0C90, &qword_10007ABC0);
  v103 = v27;
  v28 = type metadata accessor for ModifiedContent();
  v108 = *(v28 - 8);
  __chkstk_darwin(v28);
  v105 = &v85[-v29];
  v109 = v30;
  v111 = type metadata accessor for ModifiedContent();
  v110 = *(v111 - 8);
  v31 = __chkstk_darwin(v111);
  v106 = &v85[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v107 = &v85[-v33];
  v34 = v2 + *(a1 + 52);
  v35 = *(v34 + 8);
  v87 = *v34;
  v86 = v35;
  sub_10000A468(v87, v35);
  v36 = *(a1 + 32);
  v112 = v9;
  v120 = v9;
  v91 = v36;
  v121 = v36;
  v122 = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getKeyPath();
  v37 = *(a1 + 44);
  WitnessTable = v2;
  v38 = (v2 + v37);
  v40 = *(v38 + 1);
  v140 = *v38;
  v39 = v140;
  v141 = v40;
  sub_1000130DC(&qword_1000A1510, &qword_10007B488);
  State.wrappedValue.getter();
  v140 = v139;
  v41 = swift_getWitnessTable();
  v89 = v15;
  View.environment<A>(_:_:)();

  (*(v88 + 8))(v12, v10);
  static Edge.Set.leading.getter();
  v140 = v39;
  v141 = v40;
  State.wrappedValue.getter();
  if (v139 == 1)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v42 = v92;
    if ((byte_1000A51D8 & 1) == 0)
    {
      v43 = sub_10000A468(v87, v86);
      if (byte_1000A51D8)
      {
        goto LABEL_8;
      }

      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
      {
LABEL_8:
        sub_1000693D0(0, v43, v44);
      }
    }
  }

  else
  {
    v42 = v92;
  }

  v45 = sub_100015A00(&qword_1000A1740, &unk_1000A1730, &qword_10007B758, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v137 = v41;
  v138 = v45;
  v46 = swift_getWitnessTable();
  v47 = v89;
  View.padding(_:_:)();
  (*(v90 + 8))(v47, v13);
  static Edge.Set.trailing.getter();
  v140 = v39;
  v141 = v40;
  State.wrappedValue.getter();
  if (v139 == 1)
  {
    if (qword_10009F368 == -1)
    {
      if (byte_1000A51D8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_once();
      if (byte_1000A51D8)
      {
        goto LABEL_16;
      }
    }

    v81 = sub_10000A468(v87, v86);
    if (byte_1000A51D8)
    {
      goto LABEL_19;
    }

    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_19:
      sub_1000693D0(0, v81, v82);
    }
  }

LABEL_16:
  v135 = v46;
  v136 = &protocol witness table for _PaddingLayout;
  v48 = v95;
  v49 = swift_getWitnessTable();
  v50 = v93;
  View.padding(_:_:)();
  (*(v94 + 8))(v42, v48);
  v133 = v49;
  v134 = &protocol witness table for _PaddingLayout;
  v51 = v97;
  v52 = swift_getWitnessTable();
  sub_100064F18();
  v53 = v98;
  View.contentShape<A>(_:eoFill:)();
  (*(v96 + 8))(v50, v51);
  static Alignment.center.getter();
  v54 = sub_100015A00(&qword_1000A1750, &qword_1000A0A10, &qword_10007B760, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v131 = v52;
  v132 = v54;
  v83 = v100;
  v84 = swift_getWitnessTable();
  v55 = v101;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v99 + 8))(v53, v83);
  v56 = v115;
  v57 = v114;
  v58 = v117;
  (*(v115 + 16))(v114, WitnessTable, v117);
  v59 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v60 = swift_allocObject();
  v61 = v91;
  *(v60 + 16) = v112;
  *(v60 + 24) = v61;
  (*(v56 + 32))(v60 + v59, v57, v58);
  v129 = v84;
  v130 = &protocol witness table for _FlexFrameLayout;
  v62 = v104;
  v63 = swift_getWitnessTable();
  v64 = enum case for CoordinateSpace.global(_:);
  v65 = type metadata accessor for CoordinateSpace();
  v66 = v118;
  (*(*(v65 - 8) + 104))(v118, v64, v65);
  v67 = v105;
  sub_1000698A0(sub_10006509C, v60, v63, v105);

  sub_1000657A8(v66, type metadata accessor for TFFrameTracker);
  (*(v102 + 8))(v55, v62);
  v68 = sub_10006387C(&qword_1000A0C88, type metadata accessor for TFFrameTracker, &unk_10007C28C);
  v127 = v63;
  v128 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_100015A00(&qword_1000A1560, &qword_1000A0C90, &qword_10007ABC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v125 = v69;
  v126 = v70;
  v71 = v109;
  v72 = swift_getWitnessTable();
  v73 = v106;
  sub_100055740(v71, v72);
  (*(v108 + 8))(v67, v71);
  v74 = sub_1000637D4();
  v123 = v72;
  v124 = v74;
  v75 = v111;
  swift_getWitnessTable();
  v76 = v110;
  v77 = *(v110 + 16);
  v78 = v107;
  v77(v107, v73, v75);
  v79 = *(v76 + 8);
  v79(v73, v75);
  v77(v119, v78, v75);
  return (v79)(v78, v75);
}

uint64_t sub_10005D70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v45 = sub_1000130DC(&qword_1000A1758, &qword_10007B768);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v36 = &v36 - v7;
  v43 = sub_1000130DC(&qword_1000A1728, &qword_10007B750);
  v8 = __chkstk_darwin(v43);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v44 = &v36 - v11;
  v12 = *(a2 - 8);
  __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v41 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v36 - v20;
  __chkstk_darwin(v19);
  v48 = &v36 - v22;
  (*(v12 + 16))(v14, a1, a2);
  v24 = (a1 + *(type metadata accessor for TFMenuLabel(0, a2, a3, v23) + 36));
  v25 = *v24;
  v26 = *(v24 + 1);
  v38 = v25;
  LOBYTE(v52) = v25;
  v39 = v26;
  v53 = v26;
  sub_1000130DC(&qword_1000A1510, &qword_10007B488);
  State.wrappedValue.getter();
  if (LOBYTE(v51[0]) == 1)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  v27 = 1;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v12 + 8))(v14, a2);
  v51[2] = a3;
  v51[3] = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  v28 = *(v16 + 16);
  v28(v48, v21, v15);
  v29 = *(v16 + 8);
  v40 = v16 + 8;
  v29(v21, v15);
  LOBYTE(v52) = v38;
  v53 = v39;
  State.wrappedValue.getter();
  v30 = v44;
  if (LOBYTE(v51[0]) == 1)
  {
    v31 = v36;
    sub_100059A38(v36);
    sub_10001471C(v31, v30, &qword_1000A1758, &qword_10007B768);
    v27 = 0;
  }

  (*(v42 + 56))(v30, v27, 1, v45);
  v32 = v41;
  v33 = v48;
  v28(v41, v48, v15);
  v52 = v32;
  v34 = v46;
  sub_100015AC0(v30, v46, &qword_1000A1728, &qword_10007B750);
  v53 = v34;
  v51[0] = v15;
  v51[1] = v43;
  v49 = WitnessTable;
  v50 = sub_100065198();
  sub_100053734(&v52, 2uLL, v51);
  sub_1000156F8(v30, &qword_1000A1728, &qword_10007B750);
  v29(v33, v15);
  sub_1000156F8(v34, &qword_1000A1728, &qword_10007B750);
  return (v29)(v32, v15);
}

uint64_t sub_10005DC48(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  CGRectGetWidth(*&a4);
  v11 = a1 + *(type metadata accessor for TFMenuLabel(0, a2, a3, v10) + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = sub_10000A468(*v11, v13);
  sub_100068F00(v14, v15);
  sub_10000A468(v12, v13);
  v16 = sub_10000A468(v12, v13);
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D8)
  {
    goto LABEL_4;
  }

  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D9 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_4:
    sub_1000693D0(0, v16, v17);
  }

  sub_1000130DC(&qword_1000A1510, &qword_10007B488);
  return State.wrappedValue.setter();
}

uint64_t sub_10005DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000652D8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10005DE5C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1000130DC(&unk_1000A1810, &qword_10007B860);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = *(v1 + 8);
  v32 = *v1;
  v33 = v6;
  sub_10004E904();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v32 = sub_100065430(*(v1 + 16) & 1, v12, v13, v14);
  v29 = Text.foregroundStyle<A>(_:)();
  v30 = v15;
  v17 = v16;
  v28 = v18;
  sub_10004F02C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = &v5[*(v3 + 44)];
  v21 = *(sub_1000130DC(&qword_1000A1820, &qword_10007B898) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = type metadata accessor for Text.TruncationMode();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v5 = v29;
  *(v5 + 1) = v17;
  v5[16] = v28 & 1;
  *(v5 + 3) = v30;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  if (sub_10000A814(v12, v13))
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.5;
  }

  v25 = v31;
  sub_10001471C(v5, v31, &unk_1000A1810, &qword_10007B860);
  result = sub_1000130DC(&qword_1000A1828, &qword_10007B8D0);
  *(v25 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_10005E0BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  LODWORD(v63) = a2;
  v71 = a5;
  v7 = type metadata accessor for HighlightHoverEffect();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000130DC(&qword_1000A16C0, &qword_10007B6B0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_1000130DC(&qword_1000A16C8, &qword_10007B6B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v57 = &v56 - v15;
  v59 = sub_1000130DC(&qword_1000A16D0, &qword_10007B6C0);
  __chkstk_darwin(v59);
  v60 = &v56 - v16;
  v67 = sub_1000130DC(&qword_1000A16D8, &qword_10007B6C8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v56 - v17;
  v62 = sub_1000130DC(&qword_1000A16E0, &qword_10007B6D0);
  __chkstk_darwin(v62);
  v65 = &v56 - v18;
  v19 = type metadata accessor for MenuStyleConfiguration();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v61 = v20;
  v26 = *(v20 + 16);
  v26(&v56 - v24, a1, v19);
  v27 = swift_allocObject();
  v28 = v63;
  *(v27 + 16) = v63;
  v58 = v28 & 1;
  *(v27 + 24) = v72;
  *(v27 + 32) = a4;
  v56 = a4;

  MenuStyleConfiguration.onPresentationChanged.setter();
  v63 = v19;
  v26(v23, v25, v19);
  Menu<>.init(_:)();
  KeyPath = swift_getKeyPath();
  v30 = &v12[*(v10 + 44)];
  *v30 = KeyPath;
  v30[8] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v12;
  v32 = v57;
  sub_10001471C(v31, v57, &qword_1000A16C0, &qword_10007B6B0);
  v33 = (v32 + *(v14 + 44));
  v34 = v81;
  v33[4] = v80;
  v33[5] = v34;
  v33[6] = v82;
  v35 = v77;
  *v33 = v76;
  v33[1] = v35;
  v36 = v79;
  v33[2] = v78;
  v33[3] = v36;
  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  if (byte_1000A51D9)
  {
    v37 = 1;
    v38 = v68;
    v39 = v60;
    v40 = v59;
  }

  else
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v38 = v68;
    v39 = v60;
    v40 = v59;
    if (byte_1000A51D8 == 1)
    {
      LOBYTE(v74) = v72 & 1;
      v75 = v56;
      sub_1000130DC(&qword_1000A1510, &qword_10007B488);
      State.wrappedValue.getter();
      v37 = v73;
    }

    else
    {
      v37 = 0;
    }
  }

  v41 = static AnyTransition.identity.getter();
  sub_10001471C(v32, v39, &qword_1000A16C8, &qword_10007B6B8);
  v42 = v39 + *(v40 + 36);
  *v42 = v37;
  *(v42 + 1) = 0;
  *(v42 + 2) = v58;
  *(v42 + 8) = v41;
  static CustomHoverEffect<>.highlight.getter();
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  sub_100064AD8();
  sub_10006387C(&qword_1000A1578, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  v43 = v64;
  v44 = v70;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v69 + 8))(v38, v44);
  sub_1000156F8(v39, &qword_1000A16D0, &qword_10007B6C0);
  if (byte_1000A51D8 == 1)
  {
    v45 = static Color.clear.getter();
  }

  else
  {
    v45 = static Color.primary.getter();
  }

  v46 = v45;
  v47 = swift_getKeyPath();
  v74 = v46;
  v48 = AnyShapeStyle.init<A>(_:)();
  v49 = v65;
  (*(v66 + 32))(v65, v43, v67);
  v50 = &v49[*(v62 + 36)];
  *v50 = v47;
  v50[1] = v48;
  v73 = 0;
  State.init(wrappedValue:)();
  (*(v61 + 8))(v25, v63);
  LOBYTE(v48) = v74;
  v51 = v75;
  v52 = v49;
  v53 = v71;
  sub_100064E9C(v52, v71);
  result = sub_1000130DC(&qword_1000A1720, &qword_10007B748);
  v55 = v53 + *(result + 36);
  *v55 = v48;
  *(v55 + 8) = v51;
  return result;
}

__n128 sub_10005E8C8@<Q0>(uint64_t a2@<X8>)
{
  v4 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v5 = static Alignment.center.getter();
  v7 = v6;
  v8 = type metadata accessor for TFAnimatedText(0);
  v9 = sub_10000A814(*(v2 + *(v8 + 36)), *(v2 + *(v8 + 36) + 8));
  sub_10005EA3C();
  if ((v9 & 1) == 0)
  {
    swift_getKeyPath();
  }

  sub_100065358();
  sub_1000653AC();
  _ConditionalContent<>.init(storage:)();
  result = v11;
  *(a2 + 56) = v17;
  *(a2 + 72) = v18;
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 8) = v14;
  *(a2 + 24) = v15;
  *a2 = v4;
  *(a2 + 40) = v16;
  *(a2 + 120) = 0;
  *(a2 + 128) = v11;
  *(a2 + 144) = v12;
  *(a2 + 145) = v13;
  *(a2 + 152) = v5;
  *(a2 + 160) = v7;
  return result;
}

void *sub_10005EA3C()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_opt_self();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v6 animationWithName:v9];

  v11 = type metadata accessor for TFAnimatedText(0);
  sub_10000B288(v5);
  if (v7 == 6777186 && v8 == 0xE300000000000000 || (v12 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = sub_10000A814(*(v1 + *(v11 + 36)), *(v1 + *(v11 + 36) + 8));
  }

  v13 = sub_10000A9D4(*(v1 + *(v11 + 40)), *(v1 + *(v11 + 40) + 8));
  v14 = sub_10005EC04(v5, v10, v12 & 1, v13);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v14;
}