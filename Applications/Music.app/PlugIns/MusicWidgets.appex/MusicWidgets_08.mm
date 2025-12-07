uint64_t sub_1000E095C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100572A58();

    return sub_100572B88();
  }

  return result;
}

unint64_t sub_1000E09F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_100572A58();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_100572B88();
}

unint64_t sub_1000E0AA8()
{
  result = qword_1006E6440;
  if (!qword_1006E6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6440);
  }

  return result;
}

unint64_t sub_1000E0B00()
{
  result = qword_1006E6450;
  if (!qword_1006E6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6450);
  }

  return result;
}

unint64_t sub_1000E0B58()
{
  result = qword_1006E6458;
  if (!qword_1006E6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6458);
  }

  return result;
}

unint64_t sub_1000E0BB0()
{
  result = qword_1006E6460;
  if (!qword_1006E6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6460);
  }

  return result;
}

uint64_t sub_1000E0C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000E0D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1000E0DD4(uint64_t a1)
{
  sub_100016918(319, &qword_1006E64D0, &type metadata for MetricsEvent.Click.ActionContext);
  if (v1 <= 0x3F)
  {
    sub_1000E0F08(319);
    if (v2 <= 0x3F)
    {
      sub_100016918(319, &qword_1006ED410, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000E0F60(319, &qword_1006E64E0, &qword_1006E64E8, &qword_10058A2F0);
        if (v4 <= 0x3F)
        {
          sub_1000E0F60(319, &qword_1006E64F0, &qword_1006E64F8, &qword_100586060);
          if (v5 <= 0x3F)
          {
            sub_1000E0FB4();
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

void sub_1000E0F08(uint64_t a1)
{
  if (!qword_1006E64D8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E64D8);
    }
  }
}

void sub_1000E0F60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100010324(a3, a4);
    v5 = sub_100573C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000E0FB4()
{
  if (!qword_1006E6500)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006E6500);
    }
  }
}

uint64_t sub_1000E101C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1000E1038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E1080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1000E10C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000E11EC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1000E1200(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a1;
  v40 = a2;
  v45 = a7;
  v46 = *(a5 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = sub_100010324(&qword_1006E6588, &qword_100586190);
  v15 = sub_1000E16FC();
  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v15;
  v48 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v37 - v20;
  v21 = sub_10056F5C8();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = __chkstk_darwin();
  v47 = &v37 - v23;
  if (a3)
  {
    v46 = v14;
    __chkstk_darwin();
    *(&v37 - 8) = a5;
    *(&v37 - 7) = a6;
    *(&v37 - 6) = OpaqueTypeConformance2;
    *(&v37 - 5) = a3;
    v24 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v24;
    *(&v37 - 2) = v41;

    v25 = v48;
    sub_100570018();
    v51 = a5;
    v52 = v46;
    v53 = a6;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = *(v17 + 16);
    v27 = v38;
    v26(v38, v19, OpaqueTypeMetadata2);
    v28 = *(v17 + 8);
    v28(v19, OpaqueTypeMetadata2);
    v26(v19, v27, OpaqueTypeMetadata2);
    v14 = v46;
    sub_1000E19B8(v19, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, a6);

    v28(v19, OpaqueTypeMetadata2);
    v28(v27, OpaqueTypeMetadata2);
  }

  else
  {
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v13, OpaqueTypeConformance2, a5, v22);
    (v30)(v11, v13, a5);
    v51 = a5;
    v52 = v14;
    v53 = a6;
    v54 = v48;
    v31 = swift_getOpaqueTypeConformance2();
    sub_1000E1AB0(v11, OpaqueTypeMetadata2, a5, v31, a6);
    v32 = *(v29 + 8);
    v32(v11, a5);
    v32(v13, a5);
  }

  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = a6;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  (*(v43 + 16))(v45, v47, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t sub_1000E16FC()
{
  result = qword_1006E6590;
  if (!qword_1006E6590)
  {
    sub_100010324(&qword_1006E6588, &qword_100586190);
    sub_1000E1794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6590);
  }

  return result;
}

unint64_t sub_1000E1794()
{
  result = qword_1006E6598;
  if (!qword_1006E6598)
  {
    sub_100010324(&qword_1006E65A0, &qword_100586198);
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
    sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8, &qword_1005861A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6598);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView(uint64_t a1)
{
  result = qword_1006E66F0;
  if (!qword_1006E66F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E18C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  sub_100009DCC(&qword_1006E65A0, &qword_100586198);
  sub_1000E1794();
  sub_1000C5FB8();
  return sub_100570908();
}

uint64_t sub_1000E19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10056F5A8();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t sub_1000E1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10056F5A8();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a2;
  v63 = a1;
  v73 = a9;
  v62 = *(a10 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v59 - v16;
  v18 = sub_100010324(&qword_1006E6588, &qword_100586190);
  v19 = sub_1000E16FC();
  v81 = a10;
  v82 = v18;
  v76 = v18;
  v77 = a11;
  v83 = a11;
  v84 = a12;
  v78 = a12;
  v75 = v19;
  v85 = v19;
  v86 = a13;
  v72 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v59 - v24;
  v26 = sub_10056F5C8();
  v71 = *(v26 - 8);
  v27 = __chkstk_darwin();
  v70 = v59 - v28;
  if (a3)
  {
    v59[2] = v59;
    __chkstk_darwin();
    v62 = v26;
    v59[1] = &v59[-12];
    v29 = v77;
    v30 = v78;
    v59[-10] = a10;
    v59[-9] = v29;
    v60 = v21;
    v61 = v25;
    v31 = v72;
    v59[-8] = v30;
    v59[-7] = v31;
    v59[-6] = v74;
    v59[-5] = a3;
    v32 = OpaqueTypeMetadata2;
    v59[3] = v33;
    __chkstk_darwin();
    v59[-6] = a10;
    v59[-5] = v29;
    v34 = swift_allocObject();
    v35 = v69;
    *(v34 + 16) = v68;
    *(v34 + 24) = v35;

    v58 = v31;
    v36 = v75;
    v56 = v30;
    v57 = v75;
    v55 = v29;
    v37 = v76;
    sub_100570008();

    v81 = a10;
    v82 = v37;
    v83 = v29;
    v84 = v30;
    v85 = v36;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v60;
    v40 = *(v60 + 16);
    v41 = v61;
    v40(v61, v23, v32);
    v42 = *(v39 + 8);
    v42(v23, v32);
    v40(v23, v41, v32);
    v43 = v70;
    v44 = OpaqueTypeConformance2;
    v26 = v62;
    sub_1000E19B8(v23, v32, a10, v44, v78);

    v42(v23, v32);
    v42(v41, v32);
  }

  else
  {
    v45 = v62;
    v46 = *(v62 + 16);
    v46(v17, v74, a10, v27);
    (v46)(v15, v17, a10);
    v81 = a10;
    v82 = v76;
    v47 = v78;
    v83 = v77;
    v84 = v78;
    v31 = v72;
    v85 = v75;
    v86 = v72;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v70;
    sub_1000E1AB0(v15, OpaqueTypeMetadata2, a10, v48, v47);
    v50 = *(v45 + 8);
    v51 = v15;
    v43 = v49;
    v50(v51, a10);
    v50(v17, a10);
  }

  v81 = a10;
  v82 = v76;
  v52 = v78;
  v83 = v77;
  v84 = v78;
  v85 = v75;
  v86 = v31;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v52;
  swift_getWitnessTable();
  v53 = v71;
  (*(v71 + 16))(v73, v43, v26);
  return (*(v53 + 8))(v43, v26);
}

uint64_t sub_1000E2268@<X0>(uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v15 - v9;
  v11(v8);
  v12 = *(v5 + 16);
  v12(v10, v7, a2);
  v13 = *(v5 + 8);
  v13(v7, a2);
  v12(a3, v10, a2);
  return (v13)(v10, a2);
}

uint64_t sub_1000E23B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E2418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);

  *(a3 + 32) = sub_10056EE68();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E67A8, &qword_1005862F8);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = sub_10056E3F8();
  result = sub_100009DCC(&qword_1006E65A0, &qword_100586198);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a9;
  v11 = sub_100570AA8();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin();
  v50 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100010324(&qword_1006E65C0, &qword_1005861A8);
  v41 = v13;
  v14 = sub_1000E2ABC();
  v59 = a8;
  v60 = v13;
  v61 = a10;
  v62 = v14;
  v15 = sub_10056FCB8();
  v46 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v35 - v16;
  sub_100010324(&qword_1006E65B8, &qword_1005861A0);
  v38 = v15;
  v18 = sub_10056ECA8();
  v36 = v18;
  v45 = *(v18 - 8);
  __chkstk_darwin();
  v39 = v35 - v19;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v21 = sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8, &qword_1005861A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v57 = WitnessTable;
  v58 = v21;
  v37 = swift_getWitnessTable();
  v59 = v18;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  sub_10056FC98();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);

  v28 = v39;
  v29 = v38;
  sub_100570178();

  (*(v46 + 8))(v17, v29);
  v30 = v50;
  sub_100570A98();
  v31 = v36;
  sub_1005703D8();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v23 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v23 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_1000E2ABC()
{
  result = qword_1006E65C8;
  if (!qword_1006E65C8)
  {
    sub_100010324(&qword_1006E65C0, &qword_1005861A8);
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E65C8);
  }

  return result;
}

uint64_t sub_1000E2B84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenuView(0);
  sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
  sub_1000C5FB8();

  return sub_100570908();
}

uint64_t sub_1000E2C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);

  *(a2 + 32) = sub_10056EE68();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E67A8, &qword_1005862F8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E2DB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t sub_1000E2DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009DCC(&qword_1006E6750, &qword_100586278);
  v85 = *(v3 - 8);
  __chkstk_darwin();
  v84 = v70 - v4;
  v96 = sub_100009DCC(&qword_1006E6758, &qword_100586280);
  __chkstk_darwin();
  v98 = v70 - v5;
  v97 = sub_100009DCC(&qword_1006E6760, &qword_100586288);
  __chkstk_darwin();
  v92 = v70 - v6;
  v7 = sub_1005708A8();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin();
  v77 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6768, &qword_100586290);
  __chkstk_darwin();
  v90 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v70 - v10;
  v81 = sub_100009DCC(&qword_1006E6770, &qword_100586298);
  __chkstk_darwin();
  v86 = v70 - v11;
  v83 = sub_10056F678();
  v75 = *(v83 - 8);
  __chkstk_darwin();
  v73 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100009DCC(&qword_1006E6778, &qword_1005862A0);
  v72 = *(v80 - 8);
  __chkstk_darwin();
  v71 = v70 - v13;
  v82 = sub_100009DCC(&qword_1006E6780, &qword_1005862A8);
  v76 = *(v82 - 8);
  __chkstk_darwin();
  v74 = v70 - v14;
  sub_100009DCC(&qword_1006E6788, &qword_1005862B0);
  __chkstk_darwin();
  v87 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v70 - v16;
  v103 = sub_100009DCC(&qword_1006E6790, &qword_1005862B8);
  __chkstk_darwin();
  v95 = v70 - v17;
  v18 = *(type metadata accessor for ActionMenuView(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100009DCC(&qword_1006E6798, &qword_1005862C0);
  __chkstk_darwin();
  v99 = v70 - v21;
  v101 = sub_100009DCC(&qword_1006E67A0, &qword_1005862C8);
  __chkstk_darwin();
  v102 = v70 - v22;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);
    result = sub_10056EE58();
    __break(1u);
    return result;
  }

  v23 = v1;
  v24 = *v1;

  v26 = ActionMenu.elements(excluding:includeUnsupported:)(v25, 0);
  v100 = v27;
  v29 = v28;

  if (!*(v26 + 2))
  {

    (v100)(v42);
    swift_storeEnumTagMultiPayload();
    sub_1000E638C();
    sub_10056F5B8();
  }

  v78 = v3;
  v79 = a1;
  v104 = v26;
  swift_getKeyPath();
  sub_1000E5DEC(v23, v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_1000E5F9C(v20, v32 + v30);
  *(v32 + v31) = v26;
  swift_bridgeObjectRetain_n();
  sub_100009DCC(&qword_1006E67B0, &qword_100586300);
  sub_100009DCC(&qword_1006E67B8, &qword_100586308);
  sub_100010BC0(&qword_1006E67C0, &qword_1006E67B0, &qword_100586300, &protocol conformance descriptor for [A]);
  sub_1000E60AC();
  v33 = v99;
  sub_1005708B8();
  v34 = swift_allocObject();
  *(v34 + 16) = v100;
  *(v34 + 24) = v29;
  v35 = (v33 + *(v93 + 36));
  *v35 = sub_1000E6D8C;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = *(v24 + 32);

  v37 = v29;
  if ((MenuType.style.getter(v36) & 1) == 0)
  {
    v100 = v23;
    v44 = *(v26 + 2);
    v45 = *(v24 + 32);

    if (MenuType.rawValue.getter(v45) == 0x7463416B63697571 && v46 == 0xEB000000006E6F69)
    {

      if (v44 <= 1)
      {
LABEL_13:
        sub_10000CC8C(v33, v86, &qword_1006E6798, &qword_1005862C0);
        swift_storeEnumTagMultiPayload();
        v57 = sub_100010BC0(&qword_1006E6828, &qword_1006E6778, &qword_1005862A0, &protocol conformance descriptor for ControlGroup<A>);
        v58 = sub_1000E6B18(&qword_1006E6830, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
        v104 = v80;
        v105 = v83;
        v106 = v57;
        v107 = v58;
        swift_getOpaqueTypeConformance2();
        sub_1000E627C();
        sub_10056F5B8();
        goto LABEL_14;
      }
    }

    else
    {
      v47 = sub_100574498();

      if ((v47 & 1) == 0 || v44 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin();
    v85 = sub_1000E627C();
    v48 = v71;
    sub_10056E798();
    v49 = v73;
    sub_10056F668();
    v50 = sub_100010BC0(&qword_1006E6828, &qword_1006E6778, &qword_1005862A0, &protocol conformance descriptor for ControlGroup<A>);
    v51 = sub_1000E6B18(&qword_1006E6830, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
    v52 = v74;
    v53 = v80;
    v54 = v83;
    sub_100570168();
    (*(v75 + 8))(v49, v54);
    (*(v72 + 8))(v48, v53);
    v55 = v76;
    v56 = v82;
    (*(v76 + 16))(v86, v52, v82);
    swift_storeEnumTagMultiPayload();
    v104 = v53;
    v105 = v54;
    v106 = v50;
    v107 = v51;
    swift_getOpaqueTypeConformance2();
    sub_10056F5B8();
    (*(v55 + 8))(v52, v56);
LABEL_14:
    v60 = v88;
    v59 = v89;
    v61 = *(v100 + 8) == 1;
    v62 = v91;
    v70[1] = v37;
    if (v61)
    {
      v63 = v77;
      sub_100570898();
      (*(v60 + 32))(v62, v63, v59);
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    (*(v60 + 56))(v62, v64, 1, v59);
    v65 = v94;
    v66 = v87;
    sub_10000CC8C(v94, v87, &qword_1006E6788, &qword_1005862B0);
    v67 = v90;
    sub_10000CC8C(v62, v90, &qword_1006E6768, &qword_100586290);
    v68 = v92;
    sub_10000CC8C(v66, v92, &qword_1006E6788, &qword_1005862B0);
    v69 = sub_100009DCC(&qword_1006E6838, &qword_100586328);
    sub_10000CC8C(v67, v68 + *(v69 + 48), &qword_1006E6768, &qword_100586290);
    sub_10001036C(v67, &qword_1006E6768, &qword_100586290);
    sub_10001036C(v66, &qword_1006E6788, &qword_1005862B0);
    sub_10000CC8C(v68, v98, &qword_1006E6760, &qword_100586288);
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E6810, &qword_1006E6760, &qword_100586288, &protocol conformance descriptor for TupleView<A>);
    sub_100010BC0(&qword_1006E6818, &qword_1006E6750, &qword_100586278, &protocol conformance descriptor for Menu<A, B>);
    v41 = v95;
    sub_10056F5B8();
    sub_10001036C(v68, &qword_1006E6760, &qword_100586288);
    sub_10001036C(v62, &qword_1006E6768, &qword_100586290);
    sub_10001036C(v65, &qword_1006E6788, &qword_1005862B0);
    v33 = v99;
    goto LABEL_18;
  }

  __chkstk_darwin();
  __chkstk_darwin();
  sub_100009DCC(&qword_1006E67D8, &qword_100586310);
  sub_1000E61C4();
  sub_1000E627C();
  v38 = v84;
  sub_10056FCA8();
  v39 = v85;
  v40 = v78;
  (*(v85 + 16))(v98, v38, v78);
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E6810, &qword_1006E6760, &qword_100586288, &protocol conformance descriptor for TupleView<A>);
  sub_100010BC0(&qword_1006E6818, &qword_1006E6750, &qword_100586278, &protocol conformance descriptor for Menu<A, B>);
  v41 = v95;
  sub_10056F5B8();
  (*(v39 + 8))(v38, v40);
LABEL_18:
  sub_10000CC8C(v41, v102, &qword_1006E6790, &qword_1005862B8);
  swift_storeEnumTagMultiPayload();
  sub_1000E638C();
  sub_10056F5B8();

  sub_10001036C(v41, &qword_1006E6790, &qword_1005862B8);
  return sub_10001036C(v33, &qword_1006E6798, &qword_1005862C0);
}

uint64_t sub_1000E3EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4 < 0)
  {
    v5 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v5 = ActionType.rawValue.getter(v4);
    result = v6;
  }

  *a3 = v5;
  a3[1] = result;
  return result;
}

uint64_t sub_1000E3F30@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView(0);
  __chkstk_darwin();
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_100009DCC(&qword_1006E6848, &qword_100586338);
  __chkstk_darwin();
  v10 = &v56[-v9];
  v11 = sub_10056EBD8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = sub_100574498();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_1000E6470(v14);
    v22 = sub_10056EBB8();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_1000E66D8(v24, v67, v68, v61, v69, v62, v70);
    sub_1000E672C(v25, v26);
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);
    *(v8 + 4) = sub_10056EE68();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E67A8, &qword_1005862F8);
    swift_storeEnumTagMultiPayload();
    sub_1000E5DEC(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_1000E6168();
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
    sub_10056F5B8();
    return sub_1000E6764(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  sub_1000E672C(v30, v31);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  sub_10000C8CC(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  sub_10000C8CC(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1000CF25C(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_1000CF25C((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
  swift_arrayDestroy();
  v78[0] = v41;
  sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
  sub_100010BC0(&qword_1006E8F50, &unk_1006E84C0, &unk_1005854A0, &protocol conformance descriptor for [A]);
  v50 = sub_100572798();
  v52 = v51;

  sub_100010474(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  sub_1000E67C0(&v72, &v71);
  sub_1000E67F8(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_1000E6168();
  sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
  return sub_10056F5B8();
}

uint64_t sub_1000E4624(uint64_t *a1)
{
  v2 = sub_100009DCC(&qword_1006E67F0, &qword_100586318);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  sub_100009DCC(&qword_1006E6840, &qword_100586330);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    sub_1005705F8();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0, &qword_100586318, &protocol conformance descriptor for Label<A, B>);
    sub_10056F5B8();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    sub_1000C5FB8();
    *v7 = sub_10056FF28();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0, &qword_100586318, &protocol conformance descriptor for Label<A, B>);
    return sub_10056F5B8();
  }
}

uint64_t sub_1000E4938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_1000C5FB8();
  result = sub_10056FF28();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000E4998()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6860, &qword_100586438);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  sub_10000C8CC(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    sub_10056E558();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_10056E588();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  sub_1000E67C0(v1, v15);
  sub_100009DCC(&qword_1006E6868, &qword_100586440);
  sub_100010BC0(&qword_1006E6870, &qword_1006E6868, &qword_100586440, &protocol conformance descriptor for Label<A, B>);
  sub_1005706C8();
  return sub_100010474(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_10056E558();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_10056E588();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1000E4C44(uint64_t *a1)
{
  sub_100010324(&qword_1006E6588, &qword_100586190);
  sub_1000E16FC();
  swift_getOpaqueTypeMetadata2();
  sub_10056F5C8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000E4D1C(uint64_t *a1)
{
  sub_100010324(&qword_1006E6588, &qword_100586190);
  sub_1000E16FC();
  swift_getOpaqueTypeMetadata2();
  sub_10056F5C8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000E4E08(uint64_t *a1)
{
  sub_100010324(&qword_1006E65C0, &qword_1005861A8);
  sub_1000E2ABC();
  sub_10056FCB8();
  sub_100010324(&qword_1006E65B8, &qword_1005861A0);
  sub_10056ECA8();
  swift_getWitnessTable();
  sub_100010BC0(&qword_1006E65B0, &qword_1006E65B8, &qword_1005861A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000E4F40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E6690, &qword_1005861D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E5010(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E6690, &qword_1005861D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E50C0(uint64_t a1)
{
  type metadata accessor for ActionMenu();
  if (v1 <= 0x3F)
  {
    sub_1000E517C(319);
    if (v2 <= 0x3F)
    {
      sub_1000E51E0(319);
      if (v3 <= 0x3F)
      {
        sub_1000E5274(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E517C(uint64_t a1)
{
  if (!qword_1006E6700)
  {
    sub_100010324(&qword_1006E6180, &qword_1005853C0);
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E6700);
    }
  }
}

void sub_1000E51E0(uint64_t a1)
{
  if (!qword_1006E6708)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1000E6B18(&qword_1006E65D0, type metadata accessor for ActionMenuView.Excluding, &unk_1005861F0);
    v1 = sub_10056EE78();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E6708);
    }
  }
}

void sub_1000E5274(uint64_t a1)
{
  if (!qword_1006E6710)
  {
    sub_10056EBD8();
    v1 = sub_10056E6D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E6710);
    }
  }
}

uint64_t sub_1000E52F4(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = sub_100572F48();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_100572F08();
  sub_1000E67C0(a1, v11);
  v5 = sub_100572EF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  sub_1002B0D90(0, 0, v3, &unk_100586470, v6);
}

uint64_t sub_1000E5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100572F08();
  v4[4] = sub_100572EF8();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1000E5540;

  return v8();
}

uint64_t sub_1000E5540()
{
  *(*v1 + 48) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_1000E571C;
  }

  else
  {
    v4 = sub_1000E569C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000E569C()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E571C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5780()
{
  sub_100009DCC(&qword_1006E6878, &qword_100586448);
  sub_100009DCC(&qword_1006E6880, &qword_100586450);
  sub_1000E6A30();
  sub_1000E6B60();
  return sub_1005705F8();
}

uint64_t sub_1000E583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6898, &qword_100586458);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_100009DCC(&qword_1006E68B0, &qword_100586460);
  sub_100010BC0(&qword_1006E68B8, &qword_1006E68B0, &qword_100586460, &protocol conformance descriptor for TupleView<A>);
  sub_10056E5A8();
  v12 = *(a1 + 80);
  sub_100010BC0(&qword_1006E6890, &qword_1006E6898, &qword_100586458, &protocol conformance descriptor for LabelGroup<A>);
  sub_1000C5FB8();
  sub_100570188();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E59FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C8CC(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_10000C8CC(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_1000C5FB8();
  v9 = sub_10056FF28();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_10000C8CC(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_10056FF28();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_10002AAC4(v9, v11, v13 & 1);

  sub_10002AAC4(v18, v20, v16);

  sub_10001B5A4(v18, v20, v16);

  sub_10001B5A4(v9, v11, v13 & 1);
}

uint64_t (*sub_1000E5BD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>))(uint64_t)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C8CC(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_10000C8CC(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v12 = result;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (!result)
  {
    v21 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v21 = v12(v20);
  sub_1000E6BDC(v12, v13, v14, v15);

LABEL_8:
  *a3 = v21;
  return result;
}

uint64_t sub_1000E5D1C(uint64_t a1)
{
  sub_10056EBD8();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_10056EF38();
}

uint64_t sub_1000E5DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5E50()
{
  v1 = type metadata accessor for ActionMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  sub_100009DCC(&qword_1006E67A8, &qword_1005862F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056EBD8();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E5F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E6000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000E3F30(a1, (v2 + v6), v7, a2);
}

unint64_t sub_1000E60AC()
{
  result = qword_1006E67C8;
  if (!qword_1006E67C8)
  {
    sub_100010324(&qword_1006E67B8, &qword_100586308);
    sub_1000E6168();
    sub_1000E6B18(&qword_1006E65A8, type metadata accessor for ActionMenuView, &unk_100586228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67C8);
  }

  return result;
}

unint64_t sub_1000E6168()
{
  result = qword_1006E67D0;
  if (!qword_1006E67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67D0);
  }

  return result;
}

unint64_t sub_1000E61C4()
{
  result = qword_1006E67E0;
  if (!qword_1006E67E0)
  {
    sub_100010324(&qword_1006E67D8, &qword_100586310);
    sub_100010BC0(&qword_1006E67E8, &qword_1006E67F0, &qword_100586318, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67E0);
  }

  return result;
}

unint64_t sub_1000E627C()
{
  result = qword_1006E67F8;
  if (!qword_1006E67F8)
  {
    sub_100010324(&qword_1006E6798, &qword_1005862C0);
    sub_1000E6308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E67F8);
  }

  return result;
}

unint64_t sub_1000E6308()
{
  result = qword_1006E6800;
  if (!qword_1006E6800)
  {
    sub_100010324(&qword_1006E6808, &qword_100586320);
    sub_1000E60AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6800);
  }

  return result;
}

unint64_t sub_1000E638C()
{
  result = qword_1006E6820;
  if (!qword_1006E6820)
  {
    sub_100010324(&qword_1006E6790, &qword_1005862B8);
    sub_100010BC0(&qword_1006E6810, &qword_1006E6760, &qword_100586288, &protocol conformance descriptor for TupleView<A>);
    sub_100010BC0(&qword_1006E6818, &qword_1006E6750, &qword_100586278, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6820);
  }

  return result;
}

uint64_t sub_1000E6470@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056F198();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E67A8, &qword_1005862F8);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_10000CC8C(v2, &v14 - v8, &qword_1006E67A8, &qword_1005862F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056EBD8();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000E66A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100570538();
  *a1 = result;
  return result;
}

uint64_t sub_1000E66D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1000E672C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000E6764(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000E6838(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E6854(uint64_t a1, int a2)
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

uint64_t sub_1000E689C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000E6908()
{
  result = qword_1006E6850;
  if (!qword_1006E6850)
  {
    sub_100010324(&qword_1006E6858, &qword_1005863E0);
    sub_1000E638C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6850);
  }

  return result;
}

uint64_t sub_1000E69B0()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000E6A30()
{
  result = qword_1006E6888;
  if (!qword_1006E6888)
  {
    sub_100010324(&qword_1006E6878, &qword_100586448);
    sub_100010BC0(&qword_1006E6890, &qword_1006E6898, &qword_100586458, &protocol conformance descriptor for LabelGroup<A>);
    sub_1000E6B18(&qword_1006E68A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6888);
  }

  return result;
}

uint64_t sub_1000E6B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E6B60()
{
  result = qword_1006E68A8;
  if (!qword_1006E68A8)
  {
    sub_100010324(&qword_1006E6880, &qword_100586450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E68A8);
  }

  return result;
}

uint64_t sub_1000E6BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000E6C28()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E6C90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_1000E5434(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 2);
  if (v9)
  {
    v36 = v6;
    v39 = _swiftEmptyArrayStorage;
    sub_100573FF8();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *&v8[v10];
      v13 = *&v8[v10 + 16];
      v14 = *&v8[v10 + 32];
      v41 = *&v8[v10 + 48];
      v40[1] = v13;
      v40[2] = v14;
      v40[0] = v12;
      sub_1000E80D0(v40, v38);
      v15._rawValue = excluding._rawValue;
      sub_1000E7124(v4, v9, v15, includeUnsupported);
      sub_1000E812C(v40);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v39;
    v6 = v36;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v38[0] = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_100574178())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      v37 = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = sub_100574178();
      }

      else
      {
        v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = sub_100574498();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      sub_1000D3B98(0, &qword_1006E62C8, UIMenu_ptr);
      v44._countAndFlagsBits = v37;
      v44._object = v24;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v43.value.super.isa = v25;
      v43.is_nil = 0;
      v31.value = v26;
      v32.super.super.isa = sub_100573908(v44, v45, v43, v31, v30, v7, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      sub_100572CE8();
      if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      v7 = v38[0];
    }
  }

  v6(v21);
  v17 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id sub_1000E7124(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_100573ED8(20);

      v87 = 0xD000000000000012;
      v88 = 0x80000001005ACB00;
      sub_100572A98(v14[1]);
      if (qword_1006E5078 != -1)
      {
        swift_once();
      }

      v87 = qword_1006EE120;
      v88 = *algn_1006EE128;

      v91._countAndFlagsBits = 46;
      v91._object = 0xE100000000000000;
      sub_100572A98(v91);

      v92._countAndFlagsBits = 0xD000000000000012;
      v92._object = 0x80000001005ACB00;
      sub_100572A98(v92);

      v18 = sub_100572898();

      [v17 setAccessibilityIdentifier:v18];
    }

    return v16;
  }

  v80 = v4[5];
  v81 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v78 = v4[1];
  v79 = v4[2];
  v78(&v87, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v85 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v21 = 0;
LABEL_17:
      v22 = v89;
      v23 = v90;
      sub_10000C8CC(&v87, v89);
      v24 = (*(v23 + 32))(v22, v23);
      v83 = v25;
      v27 = v26;
      v84 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_100574498();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_100573768();
  if (v19)
  {
    goto LABEL_16;
  }

  v39 = v89;
  v40 = v90;
  sub_10000C8CC(&v87, v89);
  v41 = (*(v40 + 40))(v39, v40);
  v84 = v44;
  if (!v41)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v24 = v41;
  v27 = v43;
  v83 = v42;
  v21 = 1;
LABEL_18:
  v29 = v10();
  if (v30 == 1)
  {
    v31 = 0;
  }

  else
  {
    sub_1000CA864(v29, v30);
    v31 = 1;
  }

  v32 = v89;
  v33 = v90;
  sub_10000C8CC(&v87, v89);
  v34 = (*(v33 + 48))(v32, v33);
  v35 = v31 | 2;
  if ((v34 & 1) == 0)
  {
    v35 = v31;
  }

  v77 = v35;
  if (a2 <= 2)
  {
    v21 = 0;
  }

  v36 = v89;
  v37 = v90;
  sub_10000C8CC(&v87, v89);
  if (v21 != 1)
  {
    goto LABEL_31;
  }

  (*(v37 + 16))(v36, v37);
  if (!v38)
  {
    v36 = v89;
    v37 = v90;
    sub_10000C8CC(&v87, v89);
LABEL_31:
    (*(v37 + 8))(v36, v37);
  }

  v45 = v10;
  v46 = v89;
  v47 = v90;
  sub_10000C8CC(&v87, v89);
  (*(v47 + 24))(v46, v47);
  v82 = v27;
  v48 = v9;
  if (v24)
  {

    v27(v49);
  }

  sub_1000D3B98(0, &qword_1006E62B0, UIAction_ptr);
  v50 = v89;
  v51 = v90;
  sub_10000C8CC(&v87, v89);
  v52 = (*(v51 + 56))(v50, v51);
  v53 = swift_allocObject();
  v53[2] = v85;
  v53[3] = v78;
  v53[4] = v79;
  v53[5] = v45;
  v53[6] = v48;
  v53[7] = v80;
  v53[8] = v81;

  v76 = v53;
  v75 = v52;
  v54 = sub_100573A88();
  v55 = v89;
  v56 = v90;
  sub_10000C8CC(&v87, v89);
  v57 = *(v56 + 8);
  v16 = v54;
  v57(v55, v56);
  v86[0] = v58;
  v59 = v89;
  v60 = v90;
  sub_10000C8CC(&v87, v89);
  v61 = (*(v60 + 24))(v59, v60);
  v62 = 0;
  v86[1] = v61;
  v86[2] = v63;
  v64 = _swiftEmptyArrayStorage;
LABEL_35:
  v65 = &v86[2 * v62];
  while (++v62 != 3)
  {
    v66 = v65 + 2;
    v67 = *v65;
    v65 += 2;
    if (v67)
    {
      v68 = *(v66 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1000CF25C(0, *(v64 + 2) + 1, 1, v64);
      }

      v70 = *(v64 + 2);
      v69 = *(v64 + 3);
      if (v70 >= v69 >> 1)
      {
        v64 = sub_1000CF25C((v69 > 1), v70 + 1, 1, v64);
      }

      *(v64 + 2) = v70 + 1;
      v71 = &v64[16 * v70];
      *(v71 + 4) = v68;
      *(v71 + 5) = v67;
      goto LABEL_35;
    }
  }

  sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
  swift_arrayDestroy();
  sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
  sub_1000E81D0();
  sub_100572798();

  v72 = sub_100572898();

  [v16 setAccessibilityLabel:{v72, 0, v77, v75, sub_1000E81C8, v76}];

  sub_100573ED8(20);

  v93._countAndFlagsBits = ActionType.rawValue.getter(v85);
  sub_100572A98(v93);

  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v94._countAndFlagsBits = 46;
  v94._object = 0xE100000000000000;
  sub_100572A98(v94);

  v95._countAndFlagsBits = 0xD000000000000012;
  v95._object = 0x80000001005ACB00;
  sub_100572A98(v95);

  v73 = sub_100572898();

  [v16 setAccessibilityIdentifier:v73];
  sub_1000E6BDC(v24, v83, v82, v84);

  sub_100010474(&v87);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 2);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v39 = v6;
    v42 = _swiftEmptyArrayStorage;
    sub_100573FF8();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *&v7[v11];
      v14 = *&v7[v11 + 16];
      v15 = *&v7[v11 + 32];
      v44 = *&v7[v11 + 48];
      v43[1] = v14;
      v43[2] = v15;
      v43[0] = v13;
      sub_1000E80D0(v43, v41);
      v16._rawValue = excluding._rawValue;
      sub_1000E7124(v2, v9, v16, includeUnsupported);
      sub_1000E812C(v43);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v42;
    v8 = v39;
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v41[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_100574178())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v40 = sub_100574178();
        }

        else
        {
          v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = sub_100574498();

        if (v32)
        {
LABEL_23:
          if (v40 > 1)
          {
            v33 = 1;
LABEL_26:
            sub_1000D3B98(0, &qword_1006E62C8, UIMenu_ptr);
            v47._countAndFlagsBits = v24;
            v47._object = v26;
            v48.value._countAndFlagsBits = v28;
            v48.value._object = v27;
            v46.value.super.isa = v29;
            v46.is_nil = 0;
            v34.value = v30;
            v35.super.super.isa = sub_100573908(v47, v48, v46, v34, v33, v10, v38).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_100572CE8();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      v10 = v41[0];
    }
  }

  v8(v22);
  v18 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v35.super.super.isa = 0;
LABEL_30:
  isa = v35.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v36;
  return result;
}

uint64_t sub_1000E7CA8(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100572F08();

  v6 = sub_100572EF8();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  sub_1002B0D90(0, 0, v4, &unk_100586488, v7);
}

uint64_t sub_1000E7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_100572F08();
  v4[3] = sub_100572EF8();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000E7F10;

  return v8();
}

uint64_t sub_1000E7F10()
{
  *(*v1 + 40) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_1000E806C;
  }

  else
  {
    v4 = sub_1000C8828;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000E806C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E8180()
{

  return swift_deallocObject();
}

unint64_t sub_1000E81D0()
{
  result = qword_1006E8F50;
  if (!qword_1006E8F50)
  {
    sub_100010324(&unk_1006E84C0, &unk_1005854A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8F50);
  }

  return result;
}

uint64_t sub_1000E8234()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000E8284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_1000E7E08(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v140 = sub_10056CAE8();
  v6 = *(v140 - 8);
  __chkstk_darwin();
  v139 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = 0;
  v143 = 0xE000000000000000;
  v145._countAndFlagsBits = 8254;
  v145._object = 0xE200000000000000;
  sub_100572A98(v145);
  v8 = v2[1];
  v144[0] = *v2;
  v144[1] = v8;
  v144[2] = v2[2];
  sub_100574098();
  v9 = v142;
  v10 = v143;
  v11 = sub_1000CF25C(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_1000F336C(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_1000F3B88(1, 1, 0xD00000000000001CLL, 0x80000001005ACB20);
    }

    v121 = v15;
    *&v144[0] = v19;
    v120 = v19;

    sub_1000F2440(v144);
    v119[1] = 0;
    v13 = 0x654D6E6F69746341;
    v124 = *&v144[0];
    sub_100009DCC(&qword_1006E68E8, &qword_100586490);
    inited = swift_initStackObject();
    v134 = xmmword_10057B510;
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_10056CAB8();
    v23 = v22;
    v24 = v6[1];
    v138 = v6 + 1;
    v136 = v24;
    v24(v9, v140);
    v135 = type metadata accessor for ActionMenu();
    v25 = swift_allocObject();
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 16) = v14;
    *(v25 + 24) = v23;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    strcpy(v144, "ActionMenu: ");
    BYTE13(v144[0]) = 0;
    HIWORD(v144[0]) = -5120;

    v11 = v144;
    v137 = v21;
    v146._countAndFlagsBits = v21;
    v146._object = v15;
    sub_100572A98(v146);

    v26 = *(&v144[0] + 1);
    *(v25 + 56) = *&v144[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = _swiftEmptyArrayStorage;
    *(v25 + 72) = 1;
    *(inited + 40) = v25;
    v6 = sub_1000F3C64(inited);
    swift_setDeallocating();
    a1 = v124;
    sub_1000F3D58(inited + 32);
    v123 = *(a1 + 16);
    if (!v123)
    {
      break;
    }

    v3 = 0;
    v122 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v27 = (v122 + 56 * v3);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v10 = v27[3];
      v9 = v27[4];
      v31 = v27[5];
      v13 = v27[6];
      if (*v27 < 0)
      {
        v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v32 - 1) >= 0xA)
        {
          if (!*((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v32 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_10058693A[v28];
      }

      v14 = v6[2];
      v131 = v28;
      v132 = v29;
      v133 = v30;
      v33 = v31;
      sub_1000E66D8(v28, v29, v30, v10, v9, v31, v13);
      v34 = v33;
      v130 = v13;
      if (!v14 || (v14 = v11, v35 = sub_1000EB8B4(v11), v34 = v33, (v36 & 1) == 0))
      {
        v127 = v3;
        v129 = v9;
        v128 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v42 = v34;
            v43 = v10;
            v45 = 0;
            if (v11 == 11)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            goto LABEL_24;
          }

          sub_1000F3DC0(v131, v132, v133, v10, v9, v34, v13);
          goto LABEL_8;
        }

        v42 = v34;
        v43 = v10;
        v44 = 0;
        v45 = 1;
LABEL_24:
        v46 = sub_100009DCC(&unk_1006E63A0, &unk_100585500);
        v47 = swift_allocObject();
        *(v47 + 16) = v134;
        v48 = v132;
        *(v47 + 32) = v131;
        *(v47 + 40) = v48;
        *(v47 + 48) = v133;
        *(v47 + 56) = v43;
        v49 = v129;
        *(v47 + 64) = v129;
        *(v47 + 72) = v42;
        v50 = v130;
        *(v47 + 80) = v130;

        v125 = v43;
        v51 = v43;
        v13 = v50;
        v126 = v42;
        sub_1000E66D8(v131, v132, v133, v51, v49, v42, v50);
        v52 = v139;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_10056CAB8();
        v55 = v54;
        v136(v52, v140);
        v56 = swift_allocObject();
        *(v56 + 88) = 0;
        *(v56 + 96) = 0;
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = v128;
        *(v56 + 32) = v128;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        strcpy(v144, "ActionMenu: ");
        BYTE13(v144[0]) = 0;
        HIWORD(v144[0]) = -5120;
        v147._countAndFlagsBits = v137;
        v147._object = v15;
        sub_100572A98(v147);

        v58 = *(&v144[0] + 1);
        *(v56 + 56) = *&v144[0];
        *(v56 + 64) = v58;
        *(v56 + 80) = v47;
        *(v56 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144[0] = v6;
        sub_1000EF498(v56, v57, isUniquelyReferenced_nonNull_native);
        v6 = *&v144[0];
        if (*(*&v144[0] + 16))
        {
          v60 = sub_1000EB8B4(v44);
          if (v61)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v60);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v124;
            v10 = v125;
            if ((v81 & 1) == 0)
            {
              v14 = sub_1000CF368(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v82 = *(v14 + 24);
            if (v9 >= v82 >> 1)
            {
              v14 = sub_1000CF368((v82 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v83 = v14 + 56 * v9;
            *(v83 + 32) = v56 | 0x8000000000000000;
            *(v83 + 40) = 0u;
            *(v83 + 56) = 0u;
            *(v83 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_1000F3DC0(v131, v132, v133, v10, v129, v126, v13);

            v3 = v127;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v62 = swift_allocObject();
            *(v62 + 16) = v134;
            *(v62 + 32) = v56 | 0x8000000000000000;
            *(v62 + 40) = 0u;
            *(v62 + 56) = 0u;
            *(v62 + 72) = 0u;

            v63 = v139;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v64 = sub_10056CAB8();
            v66 = v65;
            v136(v63, v140);
            v56 = swift_allocObject();
            *(v56 + 88) = 0;
            *(v56 + 96) = 0;
            *(v56 + 16) = v64;
            *(v56 + 24) = v66;
            *(v56 + 32) = v44;
            *(v56 + 40) = 0;
            *(v56 + 48) = 0;
            strcpy(v144, "ActionMenu: ");
            BYTE13(v144[0]) = 0;
            HIWORD(v144[0]) = -5120;
            v148._countAndFlagsBits = v137;
            v148._object = v15;
            sub_100572A98(v148);

            v67 = *(&v144[0] + 1);
            *(v56 + 56) = *&v144[0];
            *(v56 + 64) = v67;
            *(v56 + 80) = v62;
            *(v56 + 72) = 1;

            v68 = swift_isUniquelyReferenced_nonNull_native();
            *&v144[0] = v6;
            v69 = sub_1000EB8B4(v44);
            v71 = v6[2];
            v72 = (v70 & 1) == 0;
            v73 = __OFADD__(v71, v72);
            v74 = v71 + v72;
            if (v73)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v90 = sub_1000EB8B4(0);
                if (v91)
                {
                  v10 = *(v6[7] + 8 * v90);
                  v92 = *(v46 + 80);

                  v93 = v139;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v94 = sub_10056CAB8();
                  v96 = v95;
                  v136(v93, v140);
                  v97 = swift_allocObject();
                  *(v97 + 88) = 0;
                  *(v97 + 96) = 0;
                  *(v97 + 16) = v94;
                  *(v97 + 24) = v96;
                  *(v97 + 32) = 6;
                  *(v97 + 40) = 0;
                  *(v97 + 48) = 0;
                  strcpy(v144, "ActionMenu: ");
                  BYTE13(v144[0]) = 0;
                  HIWORD(v144[0]) = -5120;

                  v149._countAndFlagsBits = v137;
                  v149._object = v15;
                  sub_100572A98(v149);

                  v98 = *(&v144[0] + 1);
                  *(v97 + 56) = *&v144[0];
                  *(v97 + 64) = v98;
                  *(v97 + 80) = v92;
                  *(v97 + 72) = 1;
                  v19 = v97 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v99 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v99)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v75 = v70;
            if (v6[3] < v74)
            {
              sub_1000EC970(v74, v68);
              v69 = sub_1000EB8B4(v44);
              if ((v75 & 1) != (v76 & 1))
              {
                sub_100574578();
                __break(1u);

                __break(1u);
                JUMPOUT(0x1000E953CLL);
              }

              goto LABEL_31;
            }

            if (v68)
            {
LABEL_31:
              v6 = *&v144[0];
              if (v75)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v77 = v69;
              sub_1000F09C4();
              v69 = v77;
              v6 = *&v144[0];
              if (v75)
              {
LABEL_32:
                *(v6[7] + 8 * v69) = v56;

                if (v45)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v60 = sub_1000EB8B4(0);
                  if (v80)
                  {
                    v13 = v130;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v69 >> 6) + 8] |= 1 << v69;
          *(v6[6] + v69) = v44;
          *(v6[7] + 8 * v69) = v56;
          v78 = v6[2];
          v73 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v73)
          {
            goto LABEL_60;
          }

          v6[2] = v79;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v35);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v37 & 1) == 0)
      {
        v14 = sub_1000CF368(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v38 = *(v14 + 24);
      v39 = v133;
      v40 = v132;
      if (v9 >= v38 >> 1)
      {
        v84 = sub_1000CF368((v38 > 1), v9 + 1, 1, v14);
        v40 = v132;
        v39 = v133;
        v14 = v84;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v41 = (v14 + 56 * v9);
      v41[4] = v131;
      v41[5] = v40;
      v41[6] = v39;
      v41[7] = v13;
      v41[8] = v10;
      v41[9] = v33;
      v41[10] = v130;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v124;
LABEL_9:
      if (++v3 == v123)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_1000CF25C((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v85 = sub_1000EB8B4(12);
  if (v86)
  {
    v46 = *(v6[7] + 8 * v85);
    swift_beginAccess();
    if (*(*(v46 + 80) + 16) <= 2uLL)
    {
      v87 = v6[2];

      if (v87)
      {
        sub_1000EB8B4(6);
        if ((v88 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_1000DA0F8(v89);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v103 = sub_1000EB8B4(6);
          if ((v104 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v103);
          swift_beginAccess();
          v105 = *(v17 + 10);
          v19 = *(v105 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v106 = 32;
          while (v10 < *(v105 + 16))
          {
            v108 = *(v105 + v106);
            if (v108 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*((v108 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v107 = sub_100574498();

                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_1000EB8B4(6);
                    if (v109)
                    {
                      swift_beginAccess();

                      sub_1000E9DBC(v10, v144);
                      swift_endAccess();
                      sub_1000E812C(v144);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v106 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_1000CF368(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v101 = *(v17 + 2);
          v100 = *(v17 + 3);
          if (v101 >= v100 >> 1)
          {
            v17 = sub_1000CF368((v100 > 1), v101 + 1, 1, v17);
          }

          *(v17 + 2) = v101 + 1;
          v102 = &v17[56 * v101];
          *(v102 + 4) = v19;
          *(v102 + 40) = 0u;
          *(v102 + 56) = 0u;
          *(v102 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v110 = sub_1000EB8B4(0), (v111 & 1) != 0))
  {
    v112 = *(v6[7] + 8 * v110);
  }

  else
  {
LABEL_97:
    v113 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v114 = sub_10056CAB8();
    v116 = v115;
    v136(v113, v140);
    v112 = swift_allocObject();
    *(v112 + 88) = 0;
    *(v112 + 96) = 0;
    *(v112 + 16) = v114;
    *(v112 + 24) = v116;
    *(v112 + 32) = 0;
    *(v112 + 40) = 0;
    *(v112 + 48) = 0;
    strcpy(v141, "ActionMenu: ");
    BYTE5(v141[1]) = 0;
    HIWORD(v141[1]) = -5120;
    v150._countAndFlagsBits = v137;
    v150._object = v15;
    sub_100572A98(v150);

    v117 = v141[1];
    *(v112 + 56) = v141[0];
    *(v112 + 64) = v117;
    *(v112 + 80) = v120;
    *(v112 + 72) = 1;
  }

  return v112;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v17._countAndFlagsBits = a3;
  v17._object = v12;
  sub_100572A98(v17);

  v14 = v16[0];
  v15 = v16[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = v15;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_1000E9624@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_1000CAB70();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_1000CAB1C();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_1006E5608 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_100573ED8(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v56);

      v57._object = 0x80000001005ACC20;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_100572A98(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_1000CF25C((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_100248604(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_1000CF25C(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1000CF25C((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_100572A98(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_100572A98(v54);
        if (!v27)
        {
          sub_1000CA864(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_100572A98(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_1000CF25C((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_100573ED8(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_100572A98(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x80000001005ACBF0;
      sub_100572A98(v51);
      if (!v27)
      {
        sub_1000CA864(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_100572A98(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_1000CF25C(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1000CF25C((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_100573ED8(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_100572A98(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_100572A98(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_100572A98(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_1000E9DBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F233C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_1000E9E90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F23DC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000E9F1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000F23F0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1000F5318(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000E9FCC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_100572A98(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_100572A98(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v20._countAndFlagsBits = a6;
  v20._object = v13;
  sub_100572A98(v20);

  v15 = v19[1];
  *(v11 + 56) = v19[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  v17 = *(v11 + 96);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_1000F3E14(v16, v17);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);

  return v3;
}

uint64_t MetricsEvent.Dialog.messageCode.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);

  return v3;
}

char *ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v51 = 0;
  v52 = 0xE000000000000000;
  v61._countAndFlagsBits = 8254;
  v61._object = 0xE200000000000000;
  sub_100572A98(v61);
  v60 = v2;
  type metadata accessor for ActionMenu();
  sub_100574098();
  v4 = 0;
  v5 = 0xE000000000000000;
  v6 = sub_1000CF25C(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v10 = swift_allocObject();
    *(v6 + 2) = v9;
    v11 = &v6[16 * v8];
    *(v11 + 4) = v4;
    *(v11 + 5) = v5;
    *(v10 + 16) = v6;
    v47 = (v10 + 16);
    v12 = *(v3 + 88);
    if (v12)
    {
      v13 = *(v3 + 96);

      v15 = v12(v14);
      sub_1000F3E14(v12, v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v43 = v3;
    v51 = v15;

    sub_1000DA0F8(v16);
    v8 = v51;
    v59 = &_swiftEmptySetSingleton;
    v17 = *(v51 + 2);

    v46 = v17;
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v4 = 0;
    v6 = (v8 + 40);
    v9 = _swiftEmptyArrayStorage;
    v45 = v8;
    while (1)
    {
      v7 = *(v8 + 16);
      if (v18 >= v7)
      {
        break;
      }

      v50 = v18;
      v20 = *(v6 - 1);
      v19 = *v6;
      v5 = *(v6 + 1);
      v3 = *(v6 + 2);
      v21 = *(v6 + 3);
      v22 = *(v6 + 4);
      v23 = *(v6 + 5);
      v51 = v20;
      v52 = v19;
      v53 = v5;
      v54 = v3;
      v55 = v21;
      v56 = v22;
      v57 = v23;
      sub_1000E66D8(v20, v19, v5, v3, v21, v22, v23);
      if (sub_1000EA7CC(&v51, v47, a1, a2 & 1, &v59))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v9;
        v44 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000CC5D4(0, *(v9 + 2) + 1, 1);
          v9 = v58;
        }

        v25 = v5;
        v26 = v19;
        v27 = v3;
        v28 = v21;
        v29 = v22;
        v30 = v23;
        v31 = v20;
        v33 = *(v9 + 2);
        v32 = *(v9 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_1000CC5D4((v32 > 1), v33 + 1, 1);
          v34 = v33 + 1;
          v31 = v20;
          v30 = v23;
          v29 = v22;
          v28 = v21;
          v27 = v3;
          v26 = v19;
          v25 = v5;
          v9 = v58;
        }

        *(v9 + 2) = v34;
        v35 = &v9[56 * v33];
        *(v35 + 4) = v31;
        *(v35 + 5) = v26;
        *(v35 + 6) = v25;
        *(v35 + 7) = v27;
        *(v35 + 8) = v28;
        *(v35 + 9) = v29;
        *(v35 + 10) = v30;
        v4 = v44;
      }

      else
      {
        sub_1000F3DC0(v20, v19, v5, v3, v21, v22, v23);
      }

      v18 = v50 + 1;
      v6 += 56;
      v8 = v45;
      if (v46 == v50 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v6 = sub_1000CF25C((v7 > 1), v9, 1, v6);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:
  v36 = v9;

  if (a2)
  {
    v38 = v9;
    v39 = v47;
    v40 = sub_1000F3898(v38, v47, &v59);

    v36 = v40;
    v41 = v43;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = v43;
    v39 = v47;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v39 + 2))
  {
    __break(1u);
    return result;
  }

  sub_1000F3B88(1, 1, 0xD00000000000001CLL, 0x80000001005ACB20);
LABEL_23:
  if (*(v41 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1000F233C(v36);
    }

    v42 = *(v36 + 2);
    v51 = v36 + 32;
    v52 = v42;
    sub_1000F24D4(&v51, sub_1000F5574, sub_1000F5530);
  }

  return v36;
}

uint64_t sub_1000EA7CC(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_100248604(v5, a3);
    if (v10)
    {
      sub_100573ED8(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == 1)
    {
      if (a4)
      {
        v22 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_1000EADA4(v22);
        sub_1001DFB50(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_1001B4BCC(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_100572A98(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_100572A98(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_1000CA864(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_100572A98(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_1000CF25C((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      v35 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_1000EADA4(v35);
      sub_100573ED8(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_100572A98(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x80000001005ACBF0;
      sub_100572A98(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_1000CA864(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_100572A98(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_1000CF25C((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_1000CAB70();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_1000CAB1C();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100573ED8(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_100572A98(v46);

    v11._object = 0x80000001005ACC20;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_100572A98(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_1000CF25C(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

uint64_t sub_1000EADA4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_10024F94C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000EAE80(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
  }

  v10 = 0;
  v24 = (v3 + 16);
  v11 = (v3 + 8);
  v12 = (v6 + 40);
  *&v9 = 136446210;
  v21 = v9;
  v22 = v11;
  v23 = v7;
  while (v10 < *(v6 + 16))
  {
    v13 = *v12;
    v25 = *(v12 - 1);
    if (qword_1006E4C78 != -1)
    {
      swift_once();
    }

    v14 = sub_10000C49C(v2, qword_1006E68D0);
    (*v24)(v5, v14, v2);

    v15 = sub_10056DF68();
    v16 = sub_100573448();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v2;
      v19 = v6;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v17 = v21;
      *(v17 + 4) = sub_1000C9784(v25, v13, &v26);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_100010474(v20);
      v6 = v19;
      v2 = v18;
      v7 = v23;

      v11 = v22;
    }

    result = (*v11)(v5, v2);
    ++v10;
    v12 += 2;
    if (v7 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000CF368(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000CF368((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  *(v7 + 10) = *(a1 + 6);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_1000E80D0(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_1000DA0F8(v1);
  swift_endAccess();
}

void *ActionMenu.deinit()
{

  sub_1000F3E14(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_1000F3E14(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1000EB2F0@<X0>(void *a2@<X8>)
{
  v3 = *(*v2 + 24);
  *a2 = *(*v2 + 16);
  a2[1] = v3;
}

uint64_t sub_1000EB300(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 56);

  return v3;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_1000F3E78;
}

uint64_t sub_1000EB4A8(uint64_t a1, uint64_t a2)
{

  return sub_100570548();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_1000F3F14;
}

uint64_t sub_1000EB588()
{
  v0 = sub_100572898();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return sub_100570538();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EB668(uint64_t a1, uint64_t a2)
{
  v2 = sub_100572898();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  if (v3)
  {
    return sub_100570538();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EB6CC(uint64_t a1, uint64_t a2)
{

  return sub_100570578();
}

id sub_1000EB71C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_100572898();
  v5 = [objc_opt_self() *a3];

  return v5;
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_100574678();
  sub_100574688(a1 & 1);
  return sub_1005746C8();
}

uint64_t sub_1000EB7F4(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

uint64_t sub_1000EB820()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E68D0);
  sub_10000C49C(v0, qword_1006E68D0);
  return sub_10056DF78();
}

unint64_t sub_1000EB8B4(uint64_t a1)
{
  sub_100574678();
  MenuType.rawValue.getter(a1);
  sub_1005729F8();

  v2 = sub_1005746C8();

  return sub_1000EBD40(a1, v2);
}

unint64_t sub_1000EB93C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573E58(*(v2 + 40));

  return sub_1000EC184(a1, v4);
}

unint64_t sub_1000EB980(uint64_t a1)
{
  v1 = a1;
  sub_100574678();
  sub_100574688(v1);
  v2 = sub_1005746C8();
  return sub_1000EC640(v1, v2);
}

unint64_t sub_1000EB9E8(uint64_t a1)
{
  sub_10056CAE8();
  sub_1000F4184(&qword_1006E6A68, &protocol conformance descriptor for UUID);
  v2 = sub_100572738();

  return sub_1000EC24C(a1, v2);
}

unint64_t sub_1000EBA6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573A48(*(v2 + 40));
  return sub_1000EC3F8(a1, v4, &qword_1006E9540, UIView_ptr);
}

unint64_t sub_1000EBABC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100573A48(*(v2 + 40));
  return sub_1000EC3F8(a1, v4, &qword_1006E6A58, MPCPlayerPath_ptr);
}

unint64_t sub_1000EBB0C(Swift::UInt a1, Swift::UInt a2)
{
  sub_100574678();
  sub_100574688(a1);
  sub_100574688(a2);
  v4 = sub_1005746C8();

  return sub_1000EC4C4(a1, a2, v4);
}

unint64_t sub_1000EBB8C(uint64_t a1)
{
  sub_1005728D8();
  sub_100574678();
  sub_1005729F8();
  v2 = sub_1005746C8();

  return sub_1000EC53C(a1, v2);
}

unint64_t sub_1000EBC1C(uint64_t a1)
{
  v1 = a1;
  sub_100574678();
  sub_100574688(v1 + 1);
  v2 = sub_1005746C8();
  return sub_1000EC640(v1, v2);
}

unint64_t sub_1000EBC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100574498())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EBD40(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_100574498();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000EC184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000F40D4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100573E68();
      sub_1000F4130(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000EC24C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10056CAE8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1000F4184(&qword_1006E6A70, &protocol conformance descriptor for UUID);
      v16 = sub_1005727E8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000EC3F8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000D3B98(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_100573A58();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000EC4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000EC53C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1005728D8();
      v8 = v7;
      if (v6 == sub_1005728D8() && v8 == v9)
      {
        break;
      }

      v11 = sub_100574498();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000EC640(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000EC6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B40, &qword_100586918);
  v37 = v4;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EC970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B68, &qword_100586930);
  v32 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    sub_100574678();
    sub_1005729F8();

    v15 = sub_1005746C8();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x1000ECD68);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ECD9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B48, &qword_100586920);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000F51DC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000F40D4(v23, &v36);
        sub_100081F38(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100573E58(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000F51DC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000ED054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B30, &qword_100586908);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_100574678();
      sub_100574688(v20);
      result = sub_1005746C8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ED2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6B28, &qword_100586900);
  v34 = v4;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000ED57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10056CAE8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100009DCC(&qword_1006E5C48, &qword_100583A18);
  v39 = v4;
  result = sub_1005741A8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000F4184(&qword_1006E6A68, &protocol conformance descriptor for UUID);
      result = sub_100572738();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000ED944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&unk_1006E6B10, &unk_1005868E8);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1000F51DC(v21, v32);
      }

      else
      {
        sub_100081F38(v21, v32);
        v22 = v20;
      }

      result = sub_100573A48(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1000F51DC(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000EDBBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100009DCC(&qword_1006E6AF8, &qword_1005868D8);
  v42 = v4;
  result = sub_1005741A8();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v7 + 16);
    v39 = v7;
    v43 = (v7 + 32);
    v18 = result + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v44 = *(v7 + 72);
      v25 = v24 + v44 * v23;
      if (v42)
      {
        (*v43)(v45, v25, v6);
        v26 = *(v9 + 56);
        v27 = *(v41 + 72);
        sub_1000F51EC(v26 + v27 * v23, v46);
      }

      else
      {
        (*v38)(v45, v25, v6);
        v28 = *(v9 + 56);
        v27 = *(v41 + 72);
        sub_1000F52B4(v28 + v27 * v23, v46);
      }

      sub_1000F4184(&qword_1006E6A68, &protocol conformance descriptor for UUID);
      result = sub_100572738();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v11 + 48) + v44 * v19), v45, v6);
      result = sub_1000F51EC(v46, *(v11 + 56) + v27 * v19);
      ++*(v11 + 16);
      v7 = v39;
      v9 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000EE00C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6AE8, &qword_100596590);
  v33 = v4;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000F51DC(v24, v34);
      }

      else
      {
        sub_100081F38(v24, v34);
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000F51DC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6AD0, &qword_1005868B0);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_100574678();
      sub_100574688(v23);
      sub_100574688(v22);
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE55C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6A60, &unk_100586850);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_100573A48(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EE7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v5 = *(v52 - 8);
  __chkstk_darwin();
  v51 = &v40 - v6;
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009DCC(&qword_1006E6AC8, &qword_1005868A8);
  v47 = v4;
  result = sub_1005741A8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1000F4184(&qword_1006E6A68, &protocol conformance descriptor for UUID);
      result = sub_100572738();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_1000EEC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006E6A98, &qword_100586878);
  v46 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      sub_100574678();
      sub_100574688(v49 + 1);
      result = sub_1005746C8();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000EEF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_10056D9E8();
  v5 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100009DCC(&qword_1006E6A50, &unk_100586840);
  v42 = v4;
  result = sub_1005741A8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1000EF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000F30A0(a3, a4, sub_1000EBC88);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000EC6B0(v18, a5 & 1);
      v13 = sub_1000F30A0(a3, a4, sub_1000EBC88);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000F084C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_1000EF498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000EB8B4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000EC970(v14, a3 & 1);
      result = sub_1000EB8B4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000F09C4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_1000EF5E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000EB93C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000F0B20();
      goto LABEL_7;
    }

    sub_1000ECD9C(v13, a3 & 1);
    v19 = sub_1000EB93C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000F40D4(a2, v21);
      return sub_1000F0468(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100010474(v17);

  return sub_1000F51DC(a1, v17);
}

uint64_t sub_1000EF730(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000ED2D4(v16, a4 & 1);
      v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000F0E10();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_1000EF8D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F0F80();
      goto LABEL_7;
    }

    sub_1000ED57C(v17, a3 & 1);
    v23 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000F04E4(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_100574578();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_1000EFAA0(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000EBA6C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000F11F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000ED944(v13, a3 & 1);
    v8 = sub_1000EBA6C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1000D3B98(0, &qword_1006E9540, UIView_ptr);
      result = sub_100574578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100010474(v19);

    return sub_1000F51DC(a1, v19);
  }

  else
  {
    sub_1000F059C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000EFBF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F1374();
      goto LABEL_7;
    }

    sub_1000EDBBC(v17, a3 & 1);
    v24 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000F0604(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8) + 72) * v14;

  return sub_1000F5250(a1, v22);
}

_OWORD *sub_1000EFDD8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F1678();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000EE00C(v16, a4 & 1);
    v11 = sub_1000F30A0(a2, a3, sub_1000EBC88);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100574578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100010474(v22);

    return sub_1000F51DC(a1, v22);
  }

  else
  {
    sub_1000F06E0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1000EFF50(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000EBB0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1000F181C();
    result = v19;
    goto LABEL_8;
  }

  sub_1000EE2C4(v16, a4 & 1);
  result = sub_1000EBB0C(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = sub_100574578();
  __break(1u);
  return result;
}

id sub_1000F008C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000EBABC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000EE55C(v13, a3 & 1);
      v8 = sub_1000EBABC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000D3B98(0, &qword_1006E6A58, MPCPlayerPath_ptr);
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1000F196C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1000F0208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10056CAE8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000EB9E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F1AD0();
      goto LABEL_7;
    }

    sub_1000EE7CC(v17, a3 & 1);
    v28 = sub_1000EB9E8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000F074C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_1000F0418(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1000F0468(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000F51DC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1000F04E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000F059C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000F51DC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1000F0604(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  result = sub_1000F51EC(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1000F06E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000F51DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F074C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10056CAE8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1000F084C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B40, &qword_100586918);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F09C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B68, &qword_100586930);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F0B20()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B48, &qword_100586920);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000F40D4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100081F38(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000F51DC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F0CC4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B30, &qword_100586908);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F0E10()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6B28, &qword_100586900);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000F0F80()
{
  v1 = v0;
  v31 = sub_10056CAE8();
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E5C48, &qword_100583A18);
  v3 = *v0;
  v4 = sub_100574198();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1000F11F4()
{
  v1 = v0;
  sub_100009DCC(&unk_1006E6B10, &unk_1005868E8);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100081F38(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000F51DC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000F1374()
{
  v1 = v0;
  v35 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10056CAE8();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6AF8, &qword_1005868D8);
  v4 = *v0;
  v5 = sub_100574198();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_1000F52B4(*(v4 + 56) + v25, v34);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        result = sub_1000F51EC(v24, *(v26 + 56) + v25);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000F1678()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6AE8, &qword_100596590);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100081F38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000F51DC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000F181C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6AD0, &qword_1005868B0);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F196C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6A60, &unk_100586850);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000F1AD0()
{
  v1 = v0;
  v41 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v30 - v2;
  v39 = sub_10056CAE8();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6AC8, &qword_1005868A8);
  v4 = *v0;
  v5 = sub_100574198();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1000F1E2C()
{
  sub_100009DCC(&qword_1006E6A98, &qword_100586878);
  v29 = v0;
  v1 = *v0;
  v30 = sub_100574198();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

char *sub_1000F1FE8()
{
  v1 = v0;
  v35 = sub_10056D9E8();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6A50, &unk_100586840);
  v3 = *v0;
  v4 = sub_100574198();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1000F2268(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = *(*v3 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFSUB__(1, v6);
  v8 = 1 - v6;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v4 + 3) >> 1)
  {
    if (v5 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000CFDD4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v3 = v4;
  }

  result = sub_1001E99B0();
  *v3 = v4;
  return result;
}

uint64_t sub_1000F2364(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100574178();
  }

  return sub_100573F68();
}

Swift::Int sub_1000F2440(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100303F0C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1000F24D4(v5, sub_1000F5574, sub_1000F5530);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000F24D4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_100574388(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = sub_100572D98();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t *sub_1000F25DC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_100586970 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_100586B10 + 8 * *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      v10 = result + 7;
      v11 = *result;
      if (*result < 0)
      {
        v12 = &unk_100586B10 + 8 * *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      else
      {
        v12 = &unk_100586970 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 4);
      v14 = *(result + 5);
      v15 = *(result + 6);
      v16 = *(result + 1);
      *v10 = *result;
      *(result + 9) = v16;
      *(result + 11) = *(result + 2);
      v17 = result[6];
      *result = v7;
      *(result + 1) = v13;
      *(result + 3) = v14;
      *(result + 5) = v15;
      result -= 7;
      v10[6] = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000F26C4(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_1000F2D98((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100303EF8(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          result = sub_100303E6C(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_100303EF8(v10);
    v10 = result;
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_100586B10 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v14 = &unk_100586970 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_100586B10 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v16 = &unk_100586970 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_100586B10 + 8 * *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_100586970 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_100586970 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_100586B10 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_100586970 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_100586B10 + 8 * *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = (&unk_100586B10 + 8 * *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x20));
    }

    else
    {
      v50 = (&unk_100586970 + 8 * v48);
    }

    result = *v50;
    if (*v47 >= result)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000CF5B8(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          result = sub_1000CF5B8((v57 > 1), v5 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *v107;
        if (!*v107)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_1000F2D98((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100303EF8(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          result = sub_100303E6C(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}