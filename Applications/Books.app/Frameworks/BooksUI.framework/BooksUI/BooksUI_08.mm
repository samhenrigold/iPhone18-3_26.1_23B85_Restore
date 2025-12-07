uint64_t sub_D6920(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726564616568;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x70756B636F6CLL;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7265746F6F66;
    }

    else
    {
      v4 = 0x726564616568;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x70756B636F6CLL;
  if (a2 != 2)
  {
    v7 = 0x726568746FLL;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x7265746F6F66;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  return v10 & 1;
}

BooksUI::NavigationBarTitleStyle_optional __swiftcall NavigationBarTitleStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_300468;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t NavigationBarTitleStyle.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  v2 = 0x656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x614C656E696C6E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_D6B88()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_D6C50(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_D6D04(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_D6DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E696C6E69;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
  }

  if (*v1)
  {
    v3 = 0x614C656E696C6E69;
    v2 = 0xEB00000000656772;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_D6EB8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *EnvironmentValues.navigationBarTransitionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  sub_D6F64();
  result = sub_261CB0();
  if (v4)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6 & 1;
  }

  else
  {
    sub_2EF0(&qword_31CB60, &qword_273BC0);
    return sub_263370();
  }

  return result;
}

unint64_t sub_D6F64()
{
  result = qword_31CB58;
  if (!qword_31CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB58);
  }

  return result;
}

void *sub_D6FB8@<X0>(uint64_t a1@<X8>)
{
  sub_D6F64();
  result = sub_261CB0();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    v5 = &v7;
    v6 = v10;
  }

  else
  {
    sub_2EF0(&qword_31CB60, &qword_273BC0);
    v5 = &v11;
    result = sub_263370();
    v3 = v12;
    v4 = v13;
    v6 = v14;
  }

  *a1 = *v5;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_D706C(uint64_t a1)
{
  sub_D6F64();

  return sub_261CC0();
}

uint64_t View.navigationStyle(_:scrollContentOffset:hideToolbarButtons:navigationBarTransitionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v73 = a6;
  v76 = a5;
  v77 = a3;
  v74 = a4;
  v75 = a2;
  v80 = a9;
  v79 = a12;
  v17 = type metadata accessor for ToolbarPrincipalType(0);
  __chkstk_darwin(v17 - 8);
  v63 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_260BD0();
  v19 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NavigationStyle(0);
  __chkstk_darwin(v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v27 = type metadata accessor for NavigationStyleViewModifier(0);
  __chkstk_darwin(v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v62 - v31;
  v78 = a8;
  v72 = sub_261730();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v34 = &v62 - v33;
  v35 = a7[1];
  v68 = *a7;
  v67 = v35;
  v36 = a7[3];
  v66 = a7[2];
  v65 = v36;
  v64 = *(a7 + 32);
  sub_E1C8C(a1, v26, type metadata accessor for NavigationStyle);
  v37 = &v29[v27[8]];
  *v37 = swift_getKeyPath();
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 16) = 0;
  v38 = &v29[v27[9]];
  v88 = 0;
  v89 = 1;
  sub_2EF0(&qword_319918, &qword_273BF0);
  sub_2631D0();
  v39 = v84;
  v40 = v85;
  *v38 = v83;
  v38[8] = v39;
  *(v38 + 2) = v40;
  v41 = v27[10];
  *&v29[v41] = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v42 = v27[11];
  *&v29[v42] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v43 = v27[12];
  *&v29[v43] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v44 = &v29[v27[13]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  sub_E1C8C(v26, &v29[v27[5]], type metadata accessor for NavigationStyle);
  sub_D78BC(v26, v23, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v45 = *(sub_2EF0(&qword_31CB68, &qword_273CB0) + 48);

    v62 = v32;
    v46 = v34;
    v47 = v63;
    sub_D78BC(&v23[v45], v63, type metadata accessor for ToolbarPrincipalType);
    v48 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    v49 = *(v19 + 32);
    v50 = v69;
    v51 = v70;
    v49(v69, v47, v70);
    v52 = v47 + v48;
    v34 = v46;
    v32 = v62;
    sub_8E80(v52, &qword_316208, &qword_268BD0);
  }

  else
  {
    sub_2EF0(&qword_31CB80, &qword_273CC8);

    v49 = *(v19 + 32);
    v50 = v69;
    v51 = v70;
    v49(v69, v23, v70);
  }

  v49(v29, v50, v51);
  v53 = &v29[v27[6]];
  v54 = v74;
  v56 = v76;
  v55 = v77;
  *v53 = v75;
  *(v53 + 1) = v55;
  *(v53 + 2) = a10;
  *(v53 + 3) = a11;
  v57 = &v29[v27[7]];
  *v57 = v54;
  *(v57 + 1) = v56;
  v57[16] = v73 & 1;
  sub_D78BC(v29, v32, type metadata accessor for NavigationStyleViewModifier);

  v58 = v79;
  sub_262E30();
  sub_E0F58(v32, type metadata accessor for NavigationStyleViewModifier);
  swift_getKeyPath();
  v83 = v68;
  v84 = v67;
  v85 = v66;
  v86 = v65;
  v87 = v64;
  v59 = sub_E0978(&qword_31CB78, type metadata accessor for NavigationStyleViewModifier, &unk_273F40);
  v81 = v58;
  v82 = v59;
  v60 = v72;
  swift_getWitnessTable();
  sub_262A90();

  return (*(v71 + 8))(v34, v60);
}

uint64_t sub_D78BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_D7928()
{
  result = qword_31CB88;
  if (!qword_31CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB88);
  }

  return result;
}

unint64_t sub_D797C(uint64_t a1)
{
  result = sub_D79A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_D79A4()
{
  result = qword_31CB90;
  if (!qword_31CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CB90);
  }

  return result;
}

uint64_t sub_D7A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31CB70, &unk_273CB8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31CB70, &unk_273CB8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_D7B0C(uint64_t a1)
{
  sub_D7C48(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_260BD0();
    if (v5 <= 0x3F)
    {
      sub_D8800(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
      v3 = v6;
      if (v7 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v3 = 0;
        *(*(a1 - 8) + 84) = v9;
      }
    }
  }

  return v3;
}

void sub_D7C48(uint64_t a1)
{
  if (!qword_31CC38)
  {
    sub_260BD0();
    sub_2F9C(&qword_316208, &qword_268BD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31CC38);
    }
  }
}

void sub_D7CE8(uint64_t a1)
{
  sub_D7D5C(319);
  if (v1 <= 0x3F)
  {
    sub_D7E84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_D7D5C(uint64_t a1)
{
  if (!qword_31CCE0)
  {
    __chkstk_darwin(a1);
    sub_260BD0();
    sub_2F9C(&qword_31C8D0, &qword_273588);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31CCE0);
    }
  }
}

void sub_D7E84(uint64_t a1)
{
  if (!qword_31CCE8)
  {
    __chkstk_darwin(a1);
    sub_2F9C(&unk_31CCF0, &qword_273ED0);
    type metadata accessor for ToolbarPrincipalType(255);
    sub_2F9C(&qword_31C8D0, &qword_273588);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31CCE8);
    }
  }
}

uint64_t sub_D7FBC(uint64_t *a1)
{
  type metadata accessor for NavigationStyleViewModifier(255);
  sub_261730();
  sub_2F9C(&qword_31CD20, &unk_273EE0);
  sub_261730();
  sub_E0978(&qword_31CB78, type metadata accessor for NavigationStyleViewModifier, &unk_273F40);
  swift_getWitnessTable();
  sub_8E38(&qword_31CD28, &qword_31CD20, &unk_273EE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_D80F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NavigationStyle(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v18 = sub_2EF0(&qword_316F68, &unk_269C50);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_D8330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for NavigationStyle(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v18 = sub_2EF0(&qword_316F68, &unk_269C50);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

void sub_D855C(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NavigationStyle(319);
    if (v2 <= 0x3F)
    {
      sub_D8800(319, &qword_31CD98, type metadata accessor for CGPoint, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_D8864(319, &qword_31CDA0, &type metadata for Bool, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_2CC54(319, &qword_31CDA8, &qword_31CDB0, &unk_273F10, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_2CC54(319, &qword_31CDB8, &qword_319918, &qword_273BF0, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_D8800(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_D8800(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_D8800(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    sub_D8864(319, &unk_319020, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
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

void sub_D8800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_D8864(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_D88E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a2;
  v153 = a3;
  v133 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v115 - v4;
  v136 = sub_2EF0(&qword_31CEE8, &qword_274040);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v115 - v5;
  v140 = sub_2EF0(&qword_31CF18, &qword_274060);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v132 = &v115 - v6;
  v138 = sub_2EF0(&qword_31CED8, &qword_274038);
  __chkstk_darwin(v138);
  v137 = &v115 - v7;
  v144 = sub_2EF0(&qword_31CF20, &qword_274068);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v115 - v8;
  v152 = sub_2EF0(&qword_31CED0, &qword_274030);
  __chkstk_darwin(v152);
  v141 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v115 - v11);
  v13 = type metadata accessor for ToolbarPrincipalType(0);
  __chkstk_darwin(v13 - 8);
  v154 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2EF0(&qword_31CF28, &qword_274070);
  __chkstk_darwin(v149);
  v150 = &v115 - v15;
  v119 = sub_262240();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v115 - v18;
  v19 = sub_2EF0(&qword_31CE78, &qword_274008);
  __chkstk_darwin(v19);
  v21 = &v115 - v20;
  v145 = sub_2EF0(&qword_31CE60, &qword_274000);
  __chkstk_darwin(v145);
  v23 = &v115 - v22;
  v122 = sub_2EF0(&qword_31CE50, &qword_273FF0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v115 - v24;
  v128 = sub_2EF0(&qword_31CF30, &qword_274078);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v115 - v25;
  v124 = sub_2EF0(&qword_31CE48, &qword_273FE8);
  __chkstk_darwin(v124);
  v125 = &v115 - v26;
  v148 = sub_2EF0(&qword_31CE38, &qword_273FE0);
  __chkstk_darwin(v148);
  v123 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v129 = &v115 - v29;
  v30 = sub_260BD0();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = (&v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for NavigationStyle(0);
  __chkstk_darwin(v34);
  v36 = (&v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for NavigationStyleViewModifier(0);
  sub_E1C8C(a1 + *(v146 + 20), v36, type metadata accessor for NavigationStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v151 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v127 = v12;
    v38 = v36[1];
    v145 = *v36;
    v129 = v38;
    v39 = v36[2];
    v40 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v41 = v40[12];
    v126 = *(v36 + v40[16]);
    v128 = *(v36 + v40[20]);
    sub_D78BC(v36 + v41, v154, type metadata accessor for ToolbarPrincipalType);
    sub_263500();
    v42 = v130;
    v43 = sub_261DF0();
    v125 = &v115;
    __chkstk_darwin(v43);
    v44 = a1;
    v45 = sub_2EF0(&qword_31CE88, &qword_274010);
    v124 = sub_2EF0(&qword_31CF00, &qword_274058);
    v46 = sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v158 = &type metadata for Solarium;
    v159 = &protocol witness table for Solarium;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v158 = v45;
    v159 = v46;
    v48 = swift_getOpaqueTypeConformance2();
    v114 = v48;
    v49 = v134;
    v50 = v133;
    sub_262E80();
    v51 = (*(v131 + 8))(v42, v50);
    v147 = &v115;
    __chkstk_darwin(v51);
    v52 = v145;
    *(&v115 - 8) = v154;
    *(&v115 - 7) = v52;
    *(&v115 - 6) = v129;
    *(&v115 - 5) = v39;
    v53 = v128;
    *(&v115 - 4) = v44;
    *(&v115 - 3) = v53;
    v54 = v126;
    v114 = v126;
    sub_2EF0(&qword_31CEF0, &qword_274048);
    v158 = v45;
    v159 = v50;
    v160 = v124;
    v161 = v46;
    v162 = OpaqueTypeConformance2;
    v163 = v48;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31CF08, &qword_31CEF0, &qword_274048, &protocol conformance descriptor for TupleToolbarContent<A>);
    v55 = v132;
    v56 = v136;
    sub_262E10();
    (*(v135 + 8))(v49, v56);
    v57 = *(v54 + 2);

    v58 = v55;
    if (v57)
    {
    }

    else
    {
      v67 = *(v128 + 16);

      if (!v67)
      {
        v68 = 0;
        goto LABEL_10;
      }
    }

    v68 = sub_263620();
LABEL_10:
    v69 = v127;
    v70 = v154;
    v71 = v151 + *(v146 + 28);
    v72 = *v71;
    v73 = *(v71 + 8);
    LOBYTE(v71) = *(v71 + 16);
    v158 = v72;
    v159 = v73;
    LOBYTE(v160) = v71;
    sub_2EF0(&qword_31CF38, &qword_274080);
    sub_263320();
    v74 = v155;
    v75 = v137;
    (*(v139 + 32))(v137, v58, v140);
    v76 = v75 + *(v138 + 36);
    *v76 = v68;
    *(v76 + 8) = v74;
    sub_E0BE0();
    v77 = v142;
    sub_262920();
    sub_8E80(v75, &qword_31CED8, &qword_274038);
    swift_getKeyPath();
    v158 = v145;
    v159 = v129;
    v160 = v39;
    sub_2EF0(&unk_31CCF0, &qword_273ED0);
    sub_263340();

    v78 = v155;
    v79 = v156;
    v80 = v157;
    KeyPath = swift_getKeyPath();
    v82 = v141;
    (*(v143 + 32))(v141, v77, v144);
    v83 = v82 + *(v152 + 36);
    *v83 = v78;
    *(v83 + 8) = v79;
    *(v83 + 16) = v80;
    *(v83 + 24) = KeyPath;
    *(v83 + 32) = 0;
    sub_22148(v82, v69, &qword_31CED0, &qword_274030);
    sub_8198(v69, v150, &qword_31CED0, &qword_274030);
    swift_storeEnumTagMultiPayload();
    sub_E05D8();
    sub_E0B18();
    sub_261F80();

    sub_8E80(v69, &qword_31CED0, &qword_274030);
    return sub_E0F58(v70, type metadata accessor for ToolbarPrincipalType);
  }

  v59 = sub_2EF0(&qword_31CB80, &qword_273CC8);
  v142 = *(v36 + v59[12]);
  v143 = *(v36 + v59[16]);
  v60 = *(v36 + v59[20]);
  v144 = v31;
  v61 = *(v31 + 32);
  v154 = v30;
  v61(v33, v36, v30);
  v62 = &v21[*(v19 + 36)];
  v63 = type metadata accessor for NavigationTitleForNonRootPage(0);
  sub_D9CC8(v33, &v62[*(v63 + 20)]);
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v64 = sub_2EF0(&qword_31CE88, &qword_274010);
  (*(*(v64 - 8) + 16))(v21, v147, v64);
  v65 = a1;
  v147 = v33;
  if (v60 > 1)
  {
    v66 = v116;
    if (v60 == 2)
    {

      sub_22148(v21, v23, &qword_31CE78, &qword_274008);
      v23[*(v145 + 36)] = 1;
      sub_262210();
      goto LABEL_16;
    }
  }

  else
  {
    v66 = v116;
  }

  v85 = sub_264F10();

  sub_22148(v21, v23, &qword_31CE78, &qword_274008);
  v23[*(v145 + 36)] = v85 & 1;
  if (v60)
  {
    if (v60 == 1)
    {
      sub_262200();
    }

    else
    {
      sub_262230();
    }
  }

  else
  {
    sub_262220();
  }

LABEL_16:
  v86 = v118;
  v87 = v117;
  v88 = v66;
  v89 = v119;
  (*(v118 + 32))(v117, v88, v119);
  v90 = sub_E0804();
  v91 = v120;
  v92 = v145;
  sub_262D20();
  (*(v86 + 8))(v87, v89);
  v93 = sub_8E80(v23, &qword_31CE60, &qword_274000);
  __chkstk_darwin(v93);
  *(&v115 - 4) = v65;
  v94 = v143;
  v95 = v142;
  *(&v115 - 3) = v143;
  v114 = v95;
  sub_2EF0(&qword_31CE58, &qword_273FF8);
  v158 = v92;
  v159 = v90;
  swift_getOpaqueTypeConformance2();
  v96 = sub_2F9C(&qword_31CEA0, &qword_274018);
  v97 = sub_E0A14();
  v158 = v96;
  v159 = v97;
  swift_getOpaqueTypeConformance2();
  v98 = v126;
  v99 = v122;
  sub_262E10();
  (*(v121 + 8))(v91, v99);
  v100 = *(v95 + 2);

  if (v100)
  {

    v101 = v154;
LABEL_19:
    v102 = sub_263620();
    goto LABEL_20;
  }

  v102 = *(v94 + 16);

  v101 = v154;
  if (v102)
  {
    goto LABEL_19;
  }

LABEL_20:
  v103 = v151 + *(v146 + 28);
  v104 = *v103;
  v105 = *(v103 + 8);
  LOBYTE(v103) = *(v103 + 16);
  v158 = v104;
  v159 = v105;
  LOBYTE(v160) = v103;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  v106 = v155;
  v107 = v125;
  v127[4](v125, v98, v128);
  v108 = &v107[*(v124 + 36)];
  *v108 = v102;
  v108[8] = v106;
  v109 = swift_getKeyPath();
  v110 = v107;
  v111 = v123;
  sub_22148(v110, v123, &qword_31CE48, &qword_273FE8);
  v112 = v111 + *(v148 + 36);
  *v112 = v109;
  *(v112 + 8) = 0;
  v113 = v129;
  sub_22148(v111, v129, &qword_31CE38, &qword_273FE0);
  sub_8198(v113, v150, &qword_31CE38, &qword_273FE0);
  swift_storeEnumTagMultiPayload();
  sub_E05D8();
  sub_E0B18();
  sub_261F80();
  sub_8E80(v113, &qword_31CE38, &qword_273FE0);
  return (*(v144 + 8))(v147, v101);
}

uint64_t sub_D9CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationStyleViewModifier(0);
  v10 = v2 + *(v9 + 32);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 32);
  LODWORD(v10) = *(v10 + 33);
  v28 = v13;
  if (v10 == 1)
  {
    v33 = v11;
    v34 = v12;
    v35 = v13;
    v36 = v14 & 1;

    v15 = v28;
  }

  else
  {

    sub_264900();
    v16 = sub_2624B0();
    v26 = v5;
    v17 = v9;
    v18 = a2;
    v19 = v16;
    sub_260D10();

    a2 = v18;
    v9 = v17;
    sub_261C80();
    swift_getAtKeyPath();
    v20 = sub_E1CF8(v11, v12, v28, *(&v28 + 1), v14, 0);
    (*(v6 + 8))(v8, v26, v20);
    v11 = v33;
    v12 = v34;
    v15 = v35;
    LOBYTE(v14) = v36;
  }

  v29 = v11;
  v30 = *&v12;
  v31 = v15;
  v32 = v14 & 1;
  sub_2EF0(&qword_31CDB0, &unk_273F10);
  sub_263320();

  if ((v38 & 1) == 0)
  {
    v21 = v37;
    v22 = v3 + *(v9 + 24);
    v23 = *(v22 + 8);
    v33 = *v22;
    v34 = v23;
    v35 = *(v22 + 16);
    sub_2EF0(&qword_31D108, &qword_2742D8);
    sub_263320();
    if (v21 >= v30)
    {
      return sub_260BC0();
    }
  }

  v24 = sub_260BD0();
  return (*(*(v24 - 8) + 16))(a2, v27, v24);
}

uint64_t sub_D9F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v49 = a2;
  v60 = a4;
  v5 = sub_2EF0(&qword_31CF40, &qword_274100);
  __chkstk_darwin(v5);
  v56 = v45 - v6;
  v7 = sub_2EF0(&qword_31CEB8, &unk_274020);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v51 = v45 - v9;
  v10 = sub_262040();
  __chkstk_darwin(v10 - 8);
  v48 = sub_2EF0(&qword_31CF48, &qword_274108);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v12 = v45 - v11;
  v13 = sub_2EF0(&qword_31CF50, &qword_274110);
  v54 = *(v13 - 8);
  v55 = v13;
  __chkstk_darwin(v13);
  v52 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v45 - v16;
  v59 = sub_2EF0(&qword_31CEA0, &qword_274018);
  __chkstk_darwin(v59);
  v57 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = v45 - v20;
  v21 = type metadata accessor for NavigationStyleViewModifier(0);
  v22 = (a1 + *(v21 + 28));
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v22) = *(v22 + 16);
  v62 = v23;
  v63 = v24;
  v64 = v22;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if (v61)
  {
    v25 = v57;
    (*(v8 + 56))(v57, 1, 1, v7);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020, &protocol conformance descriptor for TupleToolbarContent<A>);
    v26 = v58;
    sub_2620A0();
    sub_8E80(v25, &qword_31CEA0, &qword_274018);
  }

  else
  {
    v27 = sub_262020();
    v47 = v5;
    __chkstk_darwin(v27);
    v45[-2] = v49;
    v45[-1] = a1;
    v45[3] = sub_2EF0(&qword_31CF58, &qword_274118);
    v28 = sub_E1004();
    v46 = v17;
    v45[2] = v28;
    sub_261250();
    v45[1] = *(v21 + 20);
    sub_DCEEC();
    sub_8E38(&qword_31D0A0, &qword_31CF48, &qword_274108, &protocol conformance descriptor for ToolbarItem<A, B>);
    v29 = v48;
    sub_2615A0();
    v49 = v7;
    v30 = *(v50 + 8);
    v30(v12, v29);
    v31 = sub_262010();
    __chkstk_darwin(v31);
    v45[-2] = v53;
    v45[-1] = a1;
    sub_261250();
    sub_DD414();
    v32 = v52;
    sub_2615A0();
    v30(v12, v29);
    v33 = v46;
    v34 = *(v47 + 48);
    v36 = v54;
    v35 = v55;
    v37 = *(v54 + 16);
    v38 = v56;
    v37(v56, v46, v55);
    v37(&v38[v34], v32, v35);
    v39 = v51;
    sub_261E90();
    v40 = v57;
    v41 = v39;
    v42 = v49;
    (*(v8 + 16))(v57, v39, v49);
    (*(v8 + 56))(v40, 0, 1, v42);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020, &protocol conformance descriptor for TupleToolbarContent<A>);
    v26 = v58;
    sub_2620A0();
    sub_8E80(v40, &qword_31CEA0, &qword_274018);
    (*(v8 + 8))(v41, v42);
    v43 = *(v36 + 8);
    v43(v32, v35);
    v43(v33, v35);
  }

  sub_E0A14();
  sub_262090();
  return sub_8E80(v26, &qword_31CEA0, &qword_274018);
}

uint64_t sub_DA6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v244 = a1;
  v249 = a2;
  v203 = sub_2EF0(&qword_31D088, &qword_2741B8);
  __chkstk_darwin(v203);
  v204 = &v196 - v2;
  v237 = sub_2EF0(&qword_31D080, &qword_2741B0);
  __chkstk_darwin(v237);
  v210 = &v196 - v3;
  v198 = type metadata accessor for NavigationStyleViewModifier(0);
  v206 = *(v198 - 8);
  __chkstk_darwin(v198);
  v207 = v4;
  v208 = &v196 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_2EF0(&qword_31D028, &qword_274188);
  __chkstk_darwin(v200);
  v199 = (&v196 - v5);
  v201 = sub_2EF0(&qword_31D020, &qword_274180);
  __chkstk_darwin(v201);
  v202 = &v196 - v6;
  v228 = sub_2EF0(&qword_31D008, &qword_274178);
  __chkstk_darwin(v228);
  v205 = &v196 - v7;
  v232 = sub_2EF0(&qword_31D0B8, &qword_2741C8);
  v211 = *(v232 - 8);
  __chkstk_darwin(v232);
  v224 = &v196 - v8;
  v233 = sub_2EF0(&qword_31D0C0, &qword_2741D0);
  __chkstk_darwin(v233);
  v235 = &v196 - v9;
  v225 = sub_2EF0(&qword_31D0C8, &qword_2741D8);
  __chkstk_darwin(v225);
  v227 = &v196 - v10;
  v234 = sub_2EF0(&qword_31CFE8, &qword_274160);
  __chkstk_darwin(v234);
  v229 = &v196 - v11;
  v248 = sub_2EF0(&qword_31CFD8, &qword_274158);
  __chkstk_darwin(v248);
  v236 = &v196 - v12;
  v231 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v223 = *(v231 - 8);
  __chkstk_darwin(v231);
  v222 = &v196 - v13;
  v230 = sub_2EF0(&qword_31CFF0, &qword_274168);
  __chkstk_darwin(v230);
  v197 = &v196 - v14;
  v226 = sub_2EF0(&qword_31D0D0, &qword_2741E0);
  v221 = *(v226 - 8);
  __chkstk_darwin(v226);
  v220 = &v196 - v15;
  v219 = sub_2EF0(&qword_316938, &qword_274150);
  __chkstk_darwin(v219);
  v17 = &v196 - v16;
  v216 = sub_2610B0();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v212 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_2EF0(&qword_31D0D8, &unk_2741E8);
  __chkstk_darwin(v214);
  v217 = &v196 - v19;
  v242 = sub_2EF0(&qword_31CFB8, &unk_274140);
  __chkstk_darwin(v242);
  v218 = &v196 - v20;
  v21 = sub_2604E0();
  __chkstk_darwin(v21 - 8);
  v213 = sub_2EF0(&qword_316948, &qword_2689E0);
  __chkstk_darwin(v213);
  v23 = &v196 - v22;
  v24 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v24 - 8);
  v243 = &v196 - v25;
  v245 = sub_2EF0(&qword_31D0E0, &qword_2741F8);
  __chkstk_darwin(v245);
  v247 = &v196 - v26;
  v238 = sub_2EF0(&qword_31D0E8, &qword_274200);
  __chkstk_darwin(v238);
  v240 = &v196 - v27;
  v28 = sub_2EF0(&qword_31D0F0, &qword_274208);
  __chkstk_darwin(v28);
  v30 = &v196 - v29;
  v239 = sub_2EF0(&qword_31CFA0, &qword_274138);
  __chkstk_darwin(v239);
  v32 = &v196 - v31;
  v246 = sub_2EF0(&qword_31CF90, &qword_274130);
  __chkstk_darwin(v246);
  v241 = &v196 - v33;
  v34 = type metadata accessor for NavigationActionMenuButtonView(0);
  __chkstk_darwin(v34);
  v36 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ToolbarItemType(0);
  __chkstk_darwin(v37);
  v39 = &v196 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(v244, v39, type metadata accessor for ToolbarItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v144 = *(v39 + 1);
        v237 = *v39;
        v236 = v144;
        v145 = sub_2EF0(&qword_31B7C8, &qword_270F70);
        v146 = v145[12];
        v147 = v145[16];
        *&v244 = *&v39[v145[20]];
        v148 = v243;
        sub_22148(&v39[v146], v243, &qword_316960, &unk_2689F0);
        sub_F7CC(&v39[v147], &v258);
        v149 = v213;
        v150 = &v23[*(v213 + 48)];
        v151 = sub_2EF0(&qword_316950, &qword_2689E8);
        v150[3] = v151;
        v150[4] = sub_8E38(&qword_316958, &qword_316950, &qword_2689E8, &unk_268B6C);
        v152 = sub_10934(v150);
        sub_8198(v148, v152, &qword_316960, &unk_2689F0);
        sub_30CC(&v258, &v23[v149[13]]);
        v153 = swift_allocObject();
        v154 = v236;
        *(v153 + 2) = v237;
        *(v153 + 3) = v154;
        *(v153 + 4) = v244;

        sub_2604C0();
        sub_260420();
        v155 = &v23[v149[9]];
        *v155 = swift_getKeyPath();
        v155[8] = 0;
        v156 = v149[10];
        *&v23[v156] = swift_getKeyPath();
        sub_2EF0(&qword_316930, &qword_2689A0);
        swift_storeEnumTagMultiPayload();
        v157 = &v23[v149[11]];
        *v157 = swift_getKeyPath();
        v157[40] = 0;
        v158 = (v152 + *(v151 + 36));
        *v158 = sub_E236C;
        v158[1] = v153;
        sub_8198(v23, v217, &qword_316948, &qword_2689E0);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0, &protocol conformance descriptor for BooksActionButton<A>);
        sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150, &protocol conformance descriptor for BooksActionButton<A>);
        v159 = v218;
        sub_261F80();
        sub_8198(v159, v240, &qword_31CFB8, &unk_274140);
        swift_storeEnumTagMultiPayload();
        sub_E1258();
        sub_E130C();
        v160 = v241;
        sub_261F80();
        sub_8E80(v159, &qword_31CFB8, &unk_274140);
        sub_8198(v160, v247, &qword_31CF90, &qword_274130);
        swift_storeEnumTagMultiPayload();
        sub_E11CC();
        sub_E13EC();
        sub_261F80();

        sub_8E80(v160, &qword_31CF90, &qword_274130);
        sub_8E80(v23, &qword_316948, &qword_2689E0);
        v71 = &v258;
        goto LABEL_13;
      }

      v244 = *v39;
      v72 = *(v39 + 2);
      v73 = *(v34 + 28);
      *&v36[v73] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v74 = &v36[*(v34 + 32)];
      *v74 = swift_getKeyPath();
      v74[8] = 0;
      *(v36 + 8) = v244;
      *v36 = 8;
      *(v36 + 3) = v72;
      sub_E1C8C(v36, v30, type metadata accessor for NavigationActionMenuButtonView);
    }

    else
    {
      v139 = *v39;
      v140 = *(v39 + 1);
      v141 = *(v34 + 28);
      *&v36[v141] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v142 = &v36[*(v34 + 32)];
      *v142 = swift_getKeyPath();
      v142[8] = 0;
      *v36 = v139;
      *(v36 + 1) = 0;
      *(v36 + 2) = 0;
      *(v36 + 3) = v140;
      sub_E1C8C(v36, v30, type metadata accessor for NavigationActionMenuButtonView);
    }

    swift_storeEnumTagMultiPayload();
    sub_E0978(&qword_31CFA8, type metadata accessor for NavigationActionMenuButtonView, &protocol conformance descriptor for NavigationActionMenuButtonView);
    sub_261F80();
    sub_8198(v32, v240, &qword_31CFA0, &qword_274138);
    swift_storeEnumTagMultiPayload();
    sub_E1258();
    sub_E130C();
    v143 = v241;
    sub_261F80();
    sub_8E80(v32, &qword_31CFA0, &qword_274138);
    sub_8198(v143, v247, &qword_31CF90, &qword_274130);
    swift_storeEnumTagMultiPayload();
    sub_E11CC();
    sub_E13EC();
    sub_261F80();
    sub_8E80(v143, &qword_31CF90, &qword_274130);
    return sub_E0F58(v36, type metadata accessor for NavigationActionMenuButtonView);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v75 = *(v39 + 5);
      v262 = *(v39 + 4);
      v263 = v75;
      v76 = *(v39 + 7);
      v264 = *(v39 + 6);
      v265 = v76;
      v77 = *(v39 + 1);
      v258 = *v39;
      v259 = v77;
      v78 = *(v39 + 3);
      v260 = *(v39 + 2);
      v261 = v78;
      v80 = *(v39 + 16);
      v79 = *(v39 + 17);
      v82 = *(v39 + 18);
      v81 = *(v39 + 19);
      v83 = v209;
      v84 = (v209 + *(v198 + 24));
      v85 = v84[1];
      *&v244 = *v84;
      v86 = v84[2];
      v87 = v84[3];
      *&v250 = v244;
      *(&v250 + 1) = v85;
      v251 = v86;
      v252 = v87;
      sub_2EF0(&qword_31D108, &qword_2742D8);
      sub_263320();
      v255 = v257;
      v250 = xmmword_273BB0;
      sub_E1D74();
      sub_264350();
      v88 = v256;
      v89 = v256 / 20.0 * -0.25 + 1.0;
      v90 = sub_261D30();
      v91 = v199;
      *v199 = v90;
      *(v91 + 8) = 0x4030000000000000;
      *(v91 + 16) = 0;
      v92 = sub_2EF0(&qword_31D118, &unk_2742E0);
      sub_DF1B0(v83, &v258, v80, v79, v82, v81, v91 + *(v92 + 44));
      sub_2F8C4(&v258);

      v93 = sub_262510();
      sub_2610C0();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v102 = v91 + *(sub_2EF0(&qword_31D048, &qword_274198) + 36);
      *v102 = v93;
      *(v102 + 8) = v95;
      *(v102 + 16) = v97;
      *(v102 + 24) = v99;
      *(v102 + 32) = v101;
      *(v102 + 40) = 0;
      sub_2636D0();
      v103 = v91 + *(v200 + 36);
      *v103 = v89;
      *(v103 + 8) = v89;
      *(v103 + 16) = v104;
      *(v103 + 24) = v105;
      sub_263500();
      sub_2EF0(&qword_31D030, &qword_274190);
      sub_E1870();
      sub_E19B4();
      v106 = v202;
      sub_262E80();
      sub_8E80(v91, &qword_31D028, &qword_274188);
      v107 = sub_2635F0();
      v108 = (v106 + *(v201 + 36));
      *v108 = v107;
      *(v108 + 1) = v88;
      LOBYTE(v91) = sub_262530();
      sub_2634F0();
      sub_2610C0();
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v117 = v205;
      sub_22148(v106, v205, &qword_31D020, &qword_274180);
      v118 = v228;
      v119 = v117 + *(v228 + 36);
      *v119 = v91;
      *(v119 + 8) = v110;
      *(v119 + 16) = v112;
      *(v119 + 24) = v114;
      *(v119 + 32) = v116;
      *(v119 + 40) = 0;
      *&v250 = v244;
      *(&v250 + 1) = v85;
      v251 = v86;
      v252 = v87;
      sub_263320();
      *&v250 = v257;
      v120 = v208;
      sub_E1C8C(v83, v208, type metadata accessor for NavigationStyleViewModifier);
      v121 = (*(v206 + 80) + 16) & ~*(v206 + 80);
      v122 = (v207 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      sub_D78BC(v120, v123 + v121, type metadata accessor for NavigationStyleViewModifier);
      *(v123 + v122) = 0x4034000000000000;
      *(v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
      v124 = sub_E16B0();
      v125 = sub_6EBA4();
      v126 = v224;
      sub_262E50();

      sub_8E80(v117, &qword_31D008, &qword_274178);
      v127 = v211;
      (*(v211 + 16))(v227, v126, v232);
      swift_storeEnumTagMultiPayload();
      v128 = sub_2F9C(&qword_31CFF8, &qword_274170);
      v129 = sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168, &protocol conformance descriptor for BooksActionButton<A>);
      *&v250 = &type metadata for Solarium;
      *(&v250 + 1) = &protocol witness table for Solarium;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v131 = sub_261760();
      v132 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      v133 = v230;
      *&v250 = v230;
      *(&v250 + 1) = v131;
      v251 = v129;
      v252 = v132;
      v134 = swift_getOpaqueTypeConformance2();
      v250 = __PAIR128__(v231, v133);
      v251 = v128;
      v252 = v129;
      v253 = OpaqueTypeConformance2;
      v254 = v134;
      swift_getOpaqueTypeConformance2();
      *&v250 = v118;
      *(&v250 + 1) = &type metadata for CGFloat;
      v251 = v124;
      v252 = v125;
      swift_getOpaqueTypeConformance2();
      v135 = v229;
      v136 = v232;
      sub_261F80();
      sub_8198(v135, v235, &qword_31CFE8, &qword_274160);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v137 = v236;
      sub_261F80();
      sub_8E80(v135, &qword_31CFE8, &qword_274160);
      sub_8198(v137, v247, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v137, &qword_31CFD8, &qword_274158);
      return (*(v127 + 8))(v224, v136);
    }

    else
    {
      v173 = *v39;
      sub_F7CC((v39 + 8), &v258);
      v174 = v203;
      v175 = v204;
      v176 = &v204[*(v203 + 48)];
      v177 = sub_2EF0(&qword_31D0F8, &qword_274210);
      v176[3] = v177;
      v176[4] = sub_8E38(&qword_31D100, &qword_31D0F8, &qword_274210, &unk_268B6C);
      v178 = sub_10934(v176);
      (*(v215 + 56))(v178, 1, 1, v216);
      sub_30CC(&v258, v175 + v174[13]);
      v179 = swift_allocObject();
      *(v179 + 16) = v173;
      sub_2604C0();
      sub_260420();
      v180 = v175 + v174[9];
      *v180 = swift_getKeyPath();
      *(v180 + 8) = 0;
      v181 = v174[10];
      *(v175 + v181) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v182 = v175 + v174[11];
      *v182 = swift_getKeyPath();
      *(v182 + 40) = 0;
      v183 = (v178 + *(v177 + 36));
      *v183 = sub_E1D4C;
      v183[1] = v179;
      sub_263500();
      v184 = v222;
      sub_261DF0();
      sub_2EF0(&qword_31D090, &qword_2741C0);
      v185 = sub_8E38(&qword_31D098, &qword_31D088, &qword_2741B8, &protocol conformance descriptor for BooksActionButton<A>);
      *&v250 = &type metadata for Solarium;
      *(&v250 + 1) = &protocol witness table for Solarium;
      swift_getOpaqueTypeConformance2();
      v186 = sub_261760();
      v187 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      *&v250 = v174;
      *(&v250 + 1) = v186;
      v251 = v185;
      v252 = v187;
      swift_getOpaqueTypeConformance2();
      v188 = v210;
      v189 = v231;
      sub_262E80();
      (*(v223 + 8))(v184, v189);
      sub_8E80(v175, &qword_31D088, &qword_2741B8);
      v190 = (v188 + *(v237 + 36));
      v191 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
      v192 = enum case for Image.Scale.medium(_:);
      v193 = sub_2630F0();
      (*(*(v193 - 8) + 104))(v190 + v191, v192, v193);
      *v190 = swift_getKeyPath();
      sub_8198(v188, v235, &qword_31D080, &qword_2741B0);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v194 = v236;
      sub_261F80();
      sub_8198(v194, v247, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v194, &qword_31CFD8, &qword_274158);
      sub_8E80(v188, &qword_31D080, &qword_2741B0);
      return sub_3080(&v258);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v41 = *(v39 + 1);
      *&v244 = *v39;
      v242 = v41;
      v42 = sub_2EF0(&qword_31B7C0, &unk_270F60);
      v43 = *(v42 + 64);
      v44 = v243;
      sub_22148(&v39[*(v42 + 48)], v243, &qword_316960, &unk_2689F0);
      sub_F7CC(&v39[v43], &v250);
      v45 = v230;
      v46 = v197;
      v47 = &v197[*(v230 + 48)];
      v48 = sub_2EF0(&qword_31D120, &unk_2742F0);
      v47[3] = v48;
      v47[4] = sub_8E38(&qword_31D128, &qword_31D120, &unk_2742F0, &unk_268B6C);
      v49 = sub_10934(v47);
      sub_8198(v44, v49, &qword_316960, &unk_2689F0);
      sub_30CC(&v250, v46 + v45[13]);
      v50 = swift_allocObject();
      v51 = v242;
      *(v50 + 16) = v244;
      *(v50 + 24) = v51;
      sub_2604C0();
      sub_260420();
      v52 = v46 + v45[9];
      *v52 = swift_getKeyPath();
      *(v52 + 8) = 0;
      v53 = v45[10];
      *(v46 + v53) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v54 = v46 + v45[11];
      *v54 = swift_getKeyPath();
      *(v54 + 40) = 0;
      v55 = (v49 + *(v48 + 36));
      *v55 = sub_E22E8;
      v55[1] = v50;
      sub_263500();
      v56 = v222;
      sub_261DF0();
      v57 = sub_2EF0(&qword_31CFF8, &qword_274170);
      v58 = sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168, &protocol conformance descriptor for BooksActionButton<A>);
      *&v258 = &type metadata for Solarium;
      *(&v258 + 1) = &protocol witness table for Solarium;
      v59 = swift_getOpaqueTypeConformance2();
      v60 = sub_261760();
      v61 = sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      *&v258 = v45;
      *(&v258 + 1) = v60;
      v62 = v58;
      *&v259 = v58;
      *(&v259 + 1) = v61;
      v195 = swift_getOpaqueTypeConformance2();
      v63 = v220;
      v64 = v231;
      sub_262E80();
      (*(v223 + 8))(v56, v64);
      sub_8E80(v46, &qword_31CFF0, &qword_274168);
      v65 = v63;
      v66 = v226;
      (*(v221 + 16))(v227, v65, v226);
      swift_storeEnumTagMultiPayload();
      *&v258 = v230;
      *(&v258 + 1) = v64;
      *&v259 = v57;
      *(&v259 + 1) = v62;
      *&v260 = v59;
      *(&v260 + 1) = v195;
      swift_getOpaqueTypeConformance2();
      v67 = sub_E16B0();
      v68 = sub_6EBA4();
      *&v258 = v228;
      *(&v258 + 1) = &type metadata for CGFloat;
      *&v259 = v67;
      *(&v259 + 1) = v68;
      swift_getOpaqueTypeConformance2();
      v69 = v229;
      sub_261F80();
      sub_8198(v69, v235, &qword_31CFE8, &qword_274160);
      swift_storeEnumTagMultiPayload();
      sub_E1478();
      sub_E1A40();
      v70 = v236;
      sub_261F80();
      sub_8E80(v69, &qword_31CFE8, &qword_274160);
      sub_8198(v70, v247, &qword_31CFD8, &qword_274158);
      swift_storeEnumTagMultiPayload();
      sub_E11CC();
      sub_E13EC();
      sub_261F80();
      sub_8E80(v70, &qword_31CFD8, &qword_274158);
      (*(v221 + 8))(v220, v66);
      v71 = &v250;
LABEL_13:
      sub_3080(v71);
      return sub_8E80(v243, &qword_316960, &unk_2689F0);
    }

    v161 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
    v162 = v215;
    v163 = v212;
    v164 = v216;
    (*(v215 + 32))(v212, v39, v216);
    sub_F7CC(&v39[v161], &v258);
    v165 = v219;
    v166 = &v17[*(v219 + 48)];
    v166[3] = type metadata accessor for DefaultLabelButtonContent(0);
    v166[4] = sub_E0978(&qword_316940, type metadata accessor for DefaultLabelButtonContent, &unk_268B50);
    v167 = sub_10934(v166);
    (*(v162 + 16))(v167, v163, v164);
    sub_30CC(&v258, &v17[v165[13]]);
    sub_2604C0();
    sub_260420();
    v168 = &v17[v165[9]];
    *v168 = swift_getKeyPath();
    v168[8] = 0;
    v169 = v165[10];
    *&v17[v169] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v170 = &v17[v165[11]];
    *v170 = swift_getKeyPath();
    v170[40] = 0;
    sub_8198(v17, v217, &qword_316938, &qword_274150);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150, &protocol conformance descriptor for BooksActionButton<A>);
    v171 = v218;
    sub_261F80();
    sub_8198(v171, v240, &qword_31CFB8, &unk_274140);
    swift_storeEnumTagMultiPayload();
    sub_E1258();
    sub_E130C();
    v172 = v241;
    sub_261F80();
    sub_8E80(v171, &qword_31CFB8, &unk_274140);
    sub_8198(v172, v247, &qword_31CF90, &qword_274130);
    swift_storeEnumTagMultiPayload();
    sub_E11CC();
    sub_E13EC();
    sub_261F80();
    sub_8E80(v172, &qword_31CF90, &qword_274130);
    sub_8E80(v17, &qword_316938, &qword_274150);
    sub_3080(&v258);
    return (*(v162 + 8))(v212, v164);
  }
}

uint64_t sub_DCEEC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarItemType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NavigationStyle(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(v1, v11, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v13 = *(v12 + 48);

    v14 = *&v11[*(v12 + 80)];
    result = sub_E0F58(&v11[v13], type metadata accessor for ToolbarPrincipalType);
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = sub_2EF0(&qword_31CB80, &qword_273CC8);

    v14 = *&v11[*(v17 + 64)];
    v18 = sub_260BD0();
    result = (*(*(v18 - 8) + 8))(v11, v18);
    v16 = *(v14 + 16);
    if (!v16)
    {
LABEL_9:

      return 0;
    }
  }

  v19 = 0;
  while (v19 < *(v14 + 16))
  {
    sub_E1C8C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v8, type metadata accessor for ToolbarItemType);
    sub_D78BC(v8, v5, type metadata accessor for ToolbarItemType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      sub_E0F58(v5, type metadata accessor for ToolbarItemType);
      return 2;
    }

    ++v19;
    result = sub_E0F58(v5, type metadata accessor for ToolbarItemType);
    if (v16 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DD1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for NavigationStyleViewModifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v15[1] = a1;
  sub_E1C8C(a2, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationStyleViewModifier);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_D78BC(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for NavigationStyleViewModifier);

  sub_2EF0(&qword_31C8D0, &qword_273588);
  sub_2EF0(&qword_31CF80, &qword_274128);
  sub_8E38(&qword_31D0A8, &qword_31C8D0, &qword_273588, &protocol conformance descriptor for [A]);
  sub_E1140();
  sub_E0978(&qword_31D0B0, type metadata accessor for ToolbarItemType, &protocol conformance descriptor for ToolbarItemType);
  sub_2633C0();
  v13 = sub_262EF0();
  result = sub_2EF0(&qword_31CF58, &qword_274118);
  *(a5 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_DD414()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarItemType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NavigationStyle(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(v1, v11, type metadata accessor for NavigationStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = sub_2EF0(&qword_31CB68, &qword_273CB0);
    v13 = *(v12 + 48);
    v14 = *&v11[*(v12 + 64)];

    result = sub_E0F58(&v11[v13], type metadata accessor for ToolbarPrincipalType);
    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *&v11[*(sub_2EF0(&qword_31CB80, &qword_273CC8) + 48)];

    v17 = sub_260BD0();
    result = (*(*(v17 - 8) + 8))(v11, v17);
    v16 = *(v14 + 16);
    if (!v16)
    {
LABEL_9:

      return 0;
    }
  }

  v18 = 0;
  while (v18 < *(v14 + 16))
  {
    sub_E1C8C(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v8, type metadata accessor for ToolbarItemType);
    sub_D78BC(v8, v5, type metadata accessor for ToolbarItemType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      sub_E0F58(v5, type metadata accessor for ToolbarItemType);
      return 2;
    }

    ++v18;
    result = sub_E0F58(v5, type metadata accessor for ToolbarItemType);
    if (v16 == v18)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_DD710(uint64_t a1, uint64_t a2)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + *(type metadata accessor for NavigationStyleViewModifier(0) + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  sub_2EF0(&qword_31D218, &unk_2744A8);
  sub_261820();
  *(swift_allocObject() + 16) = xmmword_267D30;
  sub_261810();
  sub_2EF0(&qword_31CE88, &qword_274010);
  sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_262E20();

  return result;
}

uint64_t sub_DD97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v99 = a6;
  v94 = a5;
  v120 = a1;
  v114 = a7;
  v118 = sub_2EF0(&qword_31D160, &qword_2743F0);
  __chkstk_darwin(v118);
  v117 = &v90 - v12;
  v103 = sub_2EF0(&qword_31D168, &qword_2743F8);
  __chkstk_darwin(v103);
  v101 = &v90 - v13;
  v14 = sub_2EF0(&qword_31D170, &qword_274400);
  v115 = *(v14 - 8);
  v116 = v14;
  __chkstk_darwin(v14);
  v104 = &v90 - v15;
  v97 = sub_2EF0(&qword_31D178, &qword_274408);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v90 - v16;
  v102 = sub_2EF0(&qword_31D180, &qword_274410);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v113 = &v90 - v19;
  v20 = sub_2EF0(&qword_31D188, &qword_274418);
  __chkstk_darwin(v20 - 8);
  v112 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = &v90 - v23;
  v111 = sub_2EF0(&qword_31D190, &qword_274420);
  v106 = *(v111 - 1);
  __chkstk_darwin(v111);
  v93 = &v90 - v24;
  v107 = sub_2EF0(&qword_31D198, &qword_274428);
  v92 = *(v107 - 8);
  __chkstk_darwin(v107);
  v91 = &v90 - v25;
  v26 = sub_261C90();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_31D1A0, &qword_274430);
  __chkstk_darwin(v30 - 8);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v90 - v34;
  v36 = sub_262040();
  __chkstk_darwin(v36 - 8);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2EF0(&qword_31D1A8, &qword_274438);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v40 = &v90 - v39;
  sub_262030();
  v122 = v120;
  v123 = a2;
  v119 = a3;
  v120 = a2;
  v124 = a3;
  v125 = a8;
  sub_2EF0(&qword_31D1B0, &qword_274440);
  sub_E295C();
  v108 = v40;
  v105 = v38;
  sub_261250();
  v41 = type metadata accessor for NavigationStyleViewModifier(0);
  v42 = a4 + *(v41 + 52);
  v43 = *v42;
  if (*(v42 + 8) == 1)
  {
    if (v43)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v44 = a4;
    v45 = sub_2624B0();
    sub_260D10();

    a4 = v44;
    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v43, 0);
    (*(v27 + 8))(v29, v26);
    if (v127)
    {
LABEL_6:
      (*(v106 + 56))(v32, 1, 1, v111);
      v46 = sub_8E38(&qword_31D1D8, &qword_31D198, &qword_274428, &protocol conformance descriptor for ToolbarItem<A, B>);
      v127 = v107;
      v128 = v46;
      swift_getOpaqueTypeConformance2();
      sub_2620A0();
      sub_8E80(v32, &qword_31D1A0, &qword_274430);
      goto LABEL_8;
    }
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_6;
  }

  v47 = sub_262010();
  __chkstk_darwin(v47);
  v48 = v119;
  *(&v90 - 4) = v120;
  *(&v90 - 3) = v48;
  *(&v90 - 2) = a8;
  v90 = v41;
  sub_2EF0(&qword_31D200, &qword_274458);
  sub_E2A64(&qword_31D208, &qword_31D200, &qword_274458, sub_E2B6C);
  v49 = v91;
  sub_261250();
  v50 = sub_8E38(&qword_31D1D8, &qword_31D198, &qword_274428, &protocol conformance descriptor for ToolbarItem<A, B>);
  v51 = v93;
  v52 = v107;
  sub_262090();
  v53 = v106;
  v54 = v111;
  (*(v106 + 16))(v32, v51, v111);
  (*(v53 + 56))(v32, 0, 1, v54);
  v127 = v52;
  v128 = v50;
  swift_getOpaqueTypeConformance2();
  sub_2620A0();
  sub_8E80(v32, &qword_31D1A0, &qword_274430);
  v55 = v54;
  v41 = v90;
  (*(v53 + 8))(v51, v55);
  (*(v92 + 8))(v49, v52);
LABEL_8:
  v111 = v35;
  v56 = a4 + *(v41 + 28);
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v56) = *(v56 + 16);
  v127 = v57;
  v128 = v58;
  v129 = v56;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if (v126)
  {
    v59 = v112;
    (*(v115 + 56))(v112, 1, 1, v116);
    sub_8E38(&qword_31D1F8, &qword_31D170, &qword_274400, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_2620A0();
    sub_8E80(v59, &qword_31D188, &qword_274418);
  }

  else
  {
    v60 = sub_262020();
    __chkstk_darwin(v60);
    *(&v90 - 6) = v94;
    *(&v90 - 5) = a4;
    v61 = v119;
    *(&v90 - 4) = v120;
    *(&v90 - 3) = v61;
    *(&v90 - 2) = a8;
    v62 = a4;
    v107 = sub_2EF0(&qword_31D1E0, &qword_274450);
    sub_E2A64(&qword_31D1E8, &qword_31D1E0, &qword_274450, sub_E1004);
    v63 = v95;
    sub_261250();
    sub_DCEEC();
    sub_8E38(&qword_31D1F0, &qword_31D178, &qword_274408, &protocol conformance descriptor for ToolbarItem<A, B>);
    v64 = v97;
    sub_2615A0();
    v65 = *(v96 + 8);
    v65(v63, v64);
    v66 = sub_262010();
    __chkstk_darwin(v66);
    *(&v90 - 6) = v99;
    *(&v90 - 5) = v62;
    v67 = v119;
    *(&v90 - 4) = v120;
    *(&v90 - 3) = v67;
    *(&v90 - 2) = a8;
    sub_261250();
    sub_DD414();
    v68 = v98;
    sub_2615A0();
    v65(v63, v64);
    v69 = *(v103 + 48);
    v70 = v100;
    v71 = *(v100 + 16);
    v72 = v101;
    v73 = v113;
    v74 = v102;
    v71(v101, v113, v102);
    v71(&v72[v69], v68, v74);
    v75 = v104;
    sub_261E90();
    v77 = v115;
    v76 = v116;
    v78 = v112;
    (*(v115 + 16))(v112, v75, v116);
    (*(v77 + 56))(v78, 0, 1, v76);
    sub_8E38(&qword_31D1F8, &qword_31D170, &qword_274400, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_2620A0();
    sub_8E80(v78, &qword_31D188, &qword_274418);
    (*(v77 + 8))(v75, v76);
    v79 = *(v70 + 8);
    v79(v68, v74);
    v79(v73, v74);
  }

  v80 = v117;
  v81 = *(v118 + 48);
  v82 = *(v118 + 64);
  v83 = v109;
  v84 = v108;
  v85 = v110;
  (*(v109 + 16))(v117, v108, v110);
  v86 = v111;
  sub_8198(v111, &v80[v81], &qword_31D1A0, &qword_274430);
  v87 = &v80[v82];
  v88 = v121;
  sub_8198(v121, v87, &qword_31D188, &qword_274418);
  sub_261E90();
  sub_8E80(v88, &qword_31D188, &qword_274418);
  sub_8E80(v86, &qword_31D1A0, &qword_274430);
  return (*(v83 + 8))(v84, v85);
}

uint64_t sub_DE900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = sub_260BD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolbarPrincipalType(0);
  __chkstk_darwin(v17 - 8);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E1C8C(a1, v19, type metadata accessor for ToolbarPrincipalType);
  v20 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
  (*(v14 + 32))(v16, v19, v13);
  sub_22148(&v19[v20], v12, &qword_316208, &qword_268BD0);
  (*(v14 + 16))(a4, v16, v13);
  v21 = type metadata accessor for UberNavigationTitleView(0);
  sub_8198(v12, a4 + v21[5], &qword_316208, &qword_268BD0);
  v22 = v21[6];
  *(a4 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v23 = v21[7];
  *(a4 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v24 = a4 + v21[8];
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a5;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v33 = a2;
  v34 = a3;
  v35 = a5;

  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  sub_8E80(v12, &qword_316208, &qword_268BD0);
  (*(v14 + 8))(v16, v13);
  v26 = v31[4];
  v27 = v31[5];
  LOBYTE(v13) = v32;
  v31[0] = v21;
  v31[1] = &type metadata for Bool;
  v31[2] = sub_E0978(&qword_31D1C0, type metadata accessor for UberNavigationTitleView, &protocol conformance descriptor for UberNavigationTitleView);
  v28 = swift_getKeyPath();
  result = sub_2EF0(&qword_31D1B0, &qword_274440);
  v30 = a4 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27;
  *(v30 + 24) = v13;
  *(v30 + 32) = v28;
  return result;
}

uint64_t sub_DECDC@<X0>(uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  sub_E2B6C();
  result = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_DEDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X8>, double a8@<D0>)
{
  v14 = type metadata accessor for NavigationStyleViewModifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v29 = a1;
  sub_E1C8C(a2, v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationStyleViewModifier);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v18 = swift_allocObject();
  sub_D78BC(v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NavigationStyleViewModifier);

  sub_2EF0(&qword_31C8D0, &qword_273588);
  sub_2EF0(&qword_31CF80, &qword_274128);
  sub_8E38(&qword_31D0A8, &qword_31C8D0, &qword_273588, &protocol conformance descriptor for [A]);
  sub_E1140();
  sub_E0978(&qword_31D0B0, type metadata accessor for ToolbarItemType, &protocol conformance descriptor for ToolbarItemType);
  sub_2633C0();
  v19 = sub_262EF0();
  v20 = sub_2EF0(&qword_31CF58, &qword_274118);
  *(a7 + *(v20 + 36)) = v19;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v29 = a3;
  v30 = a4;
  v31 = a8;
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263340();

  v22 = v27[4];
  v23 = v27[5];
  LOBYTE(v17) = v28;
  v27[0] = v20;
  v27[1] = &type metadata for Bool;
  v27[2] = sub_E1004();
  v24 = swift_getKeyPath();
  result = sub_2EF0(&qword_31D1E0, &qword_274450);
  v26 = a7 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  *(v26 + 24) = v17;
  *(v26 + 32) = v24;
  return result;
}

void sub_DF0BC(uint64_t a4@<X8>)
{
  sub_10A84();

  v5 = sub_2628F0();
  v7 = v6;
  v9 = v8;
  v10 = sub_262840();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_39DBC(v5, v7, v9 & 1);

  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
}

uint64_t sub_DF1B0@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a6;
  v73 = a7;
  v70 = a4;
  v71 = a5;
  v69 = a1;
  v74 = a8;
  v9 = type metadata accessor for CoverView(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_3188E0, &qword_274300);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v67 = sub_2EF0(&qword_31D130, &qword_274308);
  __chkstk_darwin(v67);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  __chkstk_darwin(v20);
  v68 = &v67 - v21;
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  *(v12 + 6) = swift_getKeyPath();
  v12[56] = 0;
  v22 = v10[8];
  *&v12[v22] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v23 = v10[9];
  *&v12[v23] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v24 = &v12[v10[10]];
  sub_5757C(a3, v97);
  type metadata accessor for ProfileRestrictions(0);
  sub_E0978(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v24 = sub_261900();
  v24[1] = v25;
  v26 = &v12[v10[11]];
  LOBYTE(v96[0]) = 1;
  sub_2631D0();
  v27 = *(&v97[0] + 1);
  *v26 = v97[0];
  *(v26 + 1) = v27;
  v28 = &v12[v10[12]];
  v29 = a3[3];
  v31 = a3[4];
  v30 = a3[5];
  *(v28 + 4) = v31;
  *(v28 + 5) = v30;
  v32 = a3[5];
  v34 = a3[6];
  v33 = a3[7];
  *(v28 + 6) = v34;
  *(v28 + 7) = v33;
  v35 = a3[1];
  *v28 = *a3;
  *(v28 + 1) = v35;
  v36 = a3[3];
  v38 = *a3;
  v37 = a3[1];
  *(v28 + 2) = a3[2];
  *(v28 + 3) = v36;
  v39 = v10[13];
  v40 = a3[5];
  v91 = a3[4];
  v92 = v40;
  v41 = a3[7];
  v93 = a3[6];
  v94 = v41;
  v42 = a3[3];
  v89 = a3[2];
  v90 = v42;
  v43 = a3[1];
  v87 = *a3;
  v88 = v43;
  v97[2] = v89;
  v97[3] = v29;
  v12[v39] = 0;
  v97[0] = v38;
  v97[1] = v37;
  v44 = a3[7];
  v97[6] = v34;
  v97[7] = v44;
  v97[4] = v31;
  v97[5] = v32;
  sub_2F8B8(v97);
  sub_2F950(v97);
  v45 = v74;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_D78BC(v12, v15, type metadata accessor for CoverView);
  v46 = &v15[*(v13 + 36)];
  v47 = *&v86[39];
  *v46 = *&v86[23];
  *(v46 + 1) = v47;
  v48 = v87;
  *(v46 + 2) = *&v86[55];
  v96[4] = v91;
  v96[5] = v92;
  v96[6] = v93;
  v96[7] = v94;
  v96[2] = v89;
  v96[3] = v90;
  v96[0] = v48;
  v96[1] = v88;
  LODWORD(v10) = sub_2F8B8(v96);
  v49 = sub_2F950(v96);
  if (v10 || (v50 = *(v49 + 64)) == 0)
  {
    v51 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    v51 = *(v49 + 56);
  }

  *&v95[0] = v51;
  *(&v95[0] + 1) = v50;
  sub_E2390();
  sub_10A84();
  sub_262C00();

  sub_8E80(v15, &qword_3188E0, &qword_274300);
  v95[4] = v91;
  v95[5] = v92;
  v95[6] = v93;
  v95[7] = v94;
  v95[0] = v87;
  v95[1] = v88;
  v95[2] = v89;
  v95[3] = v90;
  v52 = sub_2F8B8(v95);
  v53 = sub_2F950(v95);
  if (v52 || !v53[8])
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  else
  {
    v54 = v53[9];
    v55 = v53[10];
  }

  v80 = v54;
  v81 = v55;
  v56 = v68;
  sub_261710();

  sub_8E80(v19, &qword_31D130, &qword_274308);
  v57 = sub_261E60();
  LOBYTE(v80) = 0;
  sub_DF8E0(v70, v71, v69, v72, v73, v77);
  *&v76[7] = v77[0];
  *&v76[23] = v77[1];
  *&v76[39] = v77[2];
  *&v76[55] = v77[3];
  v58 = v80;
  v59 = v75;
  sub_8198(v56, v75, &qword_31D130, &qword_274308);
  sub_8198(v59, v45, &qword_31D130, &qword_274308);
  v60 = v45 + *(sub_2EF0(&qword_31D140, &qword_274398) + 48);
  *&v78 = v57;
  *(&v78 + 1) = 0x4008000000000000;
  v79[0] = v58;
  *&v79[1] = *v76;
  *&v79[17] = *&v76[16];
  *&v79[33] = *&v76[32];
  *&v79[49] = *&v76[48];
  v61 = *&v76[63];
  *&v79[64] = *&v76[63];
  v62 = *v79;
  *v60 = v78;
  *(v60 + 16) = v62;
  v63 = *&v79[16];
  v64 = *&v79[32];
  v65 = *&v79[48];
  *(v60 + 80) = v61;
  *(v60 + 48) = v64;
  *(v60 + 64) = v65;
  *(v60 + 32) = v63;
  sub_8198(&v78, &v80, &qword_31D148, &unk_2743A0);
  sub_8E80(v56, &qword_31D130, &qword_274308);
  v80 = v57;
  v81 = 0x4008000000000000;
  v82 = v58;
  v84 = *&v76[16];
  v85 = *&v76[32];
  *v86 = *&v76[48];
  *&v86[15] = *&v76[63];
  v83 = *v76;
  sub_8E80(&v80, &qword_31D148, &unk_2743A0);
  return sub_8E80(v59, &qword_31D130, &qword_274308);
}

double sub_DF8E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v77 = a4;
  v78 = a5;
  v81 = a6;
  v82 = a3;
  v8 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v8 - 8);
  v80 = &v63 - v9;
  v79 = sub_262730();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v11 - 8);
  v83 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FontConstants.SheetHeader(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v18;
  v85 = a1;
  v86 = a2;
  v67 = sub_10A84();

  v19 = sub_2628F0();
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for NavigationStyleViewModifier(0);
  v66 = *(v24 + 40);
  sub_40D40(v18);
  v65 = type metadata accessor for FontConstants.Environment;
  v63 = v15;
  sub_D78BC(v18, v15, type metadata accessor for FontConstants.Environment);
  sub_2626A0();
  sub_2625A0();

  v70 = type metadata accessor for FontConstants.SheetHeader;
  sub_E0F58(v15, type metadata accessor for FontConstants.SheetHeader);
  v25 = sub_262840();
  v27 = v26;
  v29 = v28;
  sub_39DBC(v19, v21, v23 & 1);

  v69 = *(v24 + 48);
  v30 = v83;
  sub_404B8(v83);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v68 = type metadata accessor for ColorConstants;
  sub_E0F58(v30, type metadata accessor for ColorConstants);
  v31 = sub_2627E0();
  v73 = v32;
  v74 = v31;
  v72 = v33;
  v71 = v34;
  sub_39DBC(v25, v27, v29 & 1);

  v85 = v77;
  v86 = v78;

  v35 = sub_2628F0();
  v37 = v36;
  LOBYTE(v24) = v38;
  v39 = v64;
  sub_40D40(v64);
  v40 = v63;
  sub_D78BC(v39, v63, v65);
  v42 = v75;
  v41 = v76;
  v43 = v79;
  (*(v76 + 104))(v75, enum case for Font.TextStyle.subheadline(_:), v79);
  v44 = sub_2625C0();
  v45 = v80;
  (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
  sub_262630();
  sub_262680();
  sub_8E80(v45, &qword_318458, &unk_26B270);
  (*(v41 + 8))(v42, v43);
  sub_E0F58(v40, v70);
  v46 = sub_262840();
  v48 = v47;
  LOBYTE(v40) = v49;
  sub_39DBC(v35, v37, v24 & 1);

  v50 = v83;
  sub_404B8(v83);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_E0F58(v50, v68);
  v51 = sub_2627E0();
  v53 = v52;
  LOBYTE(v35) = v54;
  v56 = v55;
  sub_39DBC(v46, v48, v40 & 1);

  v57 = v71 & 1;
  v84 = v71 & 1;
  LOBYTE(v85) = v71 & 1;
  v87 = v35 & 1;
  v58 = v81;
  v59 = v73;
  v60 = v74;
  v61 = v72;
  *v81 = v74;
  v58[1] = v61;
  *(v58 + 16) = v57;
  v58[3] = v59;
  v58[4] = v51;
  v58[5] = v53;
  *(v58 + 48) = v35 & 1;
  v58[7] = v56;
  sub_43B58(v60, v61, v57);

  sub_43B58(v51, v53, v35 & 1);

  sub_39DBC(v51, v53, v35 & 1);

  sub_39DBC(v60, v61, v84);

  return result;
}

uint64_t sub_DFF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, a2, &qword_31D028, &qword_274188);
  result = sub_2EF0(&qword_31D030, &qword_274190);
  *(a2 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_DFF80(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NavigationStyleViewModifier(0);
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  return sub_2631F0();
}

uint64_t sub_E0008(uint64_t a1)
{
  sub_263500();
  type metadata accessor for PlainToolbarIconView(0);
  sub_E0978(&qword_31D150, type metadata accessor for PlainToolbarIconView, &protocol conformance descriptor for PlainToolbarIconView);
  sub_6684C();
  return sub_263510();
}

uint64_t sub_E00EC@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for PlainToolbarIconView(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_E0178(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = sub_261760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261750();
  sub_2EF0(a2, a3);
  sub_8E38(a4, a2, a3, &protocol conformance descriptor for BooksActionButton<A>);
  sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_262A50();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_E02EC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_2620F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_31CE08, &qword_273FC8);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  sub_D88E0(v2, a1, v17 - v10);
  sub_262510();
  v12 = v2 + *(a2 + 36);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v17[3] = v13;
  v18 = v14;
  v19 = v15;
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  sub_2631E0();
  sub_2620D0();
  sub_E04C8();
  sub_262B30();
  (*(v6 + 8))(v8, v5);
  return sub_8E80(v11, &qword_31CE08, &qword_273FC8);
}

unint64_t sub_E04C8()
{
  result = qword_31CE18;
  if (!qword_31CE18)
  {
    sub_2F9C(&qword_31CE08, &qword_273FC8);
    sub_E054C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE18);
  }

  return result;
}

unint64_t sub_E054C()
{
  result = qword_31CE20;
  if (!qword_31CE20)
  {
    sub_2F9C(&qword_31CE28, &qword_273FD8);
    sub_E05D8();
    sub_E0B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE20);
  }

  return result;
}

unint64_t sub_E05D8()
{
  result = qword_31CE30;
  if (!qword_31CE30)
  {
    sub_2F9C(&qword_31CE38, &qword_273FE0);
    sub_E0664();
    sub_E0AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE30);
  }

  return result;
}

unint64_t sub_E0664()
{
  result = qword_31CE40;
  if (!qword_31CE40)
  {
    sub_2F9C(&qword_31CE48, &qword_273FE8);
    sub_2F9C(&qword_31CE50, &qword_273FF0);
    sub_2F9C(&qword_31CE58, &qword_273FF8);
    sub_2F9C(&qword_31CE60, &qword_274000);
    sub_E0804();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31CEA0, &qword_274018);
    sub_E0A14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE40);
  }

  return result;
}

unint64_t sub_E0804()
{
  result = qword_31CE68;
  if (!qword_31CE68)
  {
    sub_2F9C(&qword_31CE60, &qword_274000);
    sub_E0890();
    sub_E09C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE68);
  }

  return result;
}

unint64_t sub_E0890()
{
  result = qword_31CE70;
  if (!qword_31CE70)
  {
    sub_2F9C(&qword_31CE78, &qword_274008);
    sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_E0978(&qword_31CE90, type metadata accessor for NavigationTitleForNonRootPage, &unk_286400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE70);
  }

  return result;
}

uint64_t sub_E0978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_E09C0()
{
  result = qword_31CE98;
  if (!qword_31CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CE98);
  }

  return result;
}

unint64_t sub_E0A14()
{
  result = qword_31CEA8;
  if (!qword_31CEA8)
  {
    sub_2F9C(&qword_31CEA0, &qword_274018);
    sub_8E38(&qword_31CEB0, &qword_31CEB8, &unk_274020, &protocol conformance descriptor for TupleToolbarContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEA8);
  }

  return result;
}

unint64_t sub_E0AC4()
{
  result = qword_31CEC0;
  if (!qword_31CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEC0);
  }

  return result;
}

unint64_t sub_E0B18()
{
  result = qword_31CEC8;
  if (!qword_31CEC8)
  {
    sub_2F9C(&qword_31CED0, &qword_274030);
    sub_2F9C(&qword_31CED8, &qword_274038);
    sub_E0BE0();
    swift_getOpaqueTypeConformance2();
    sub_E0E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEC8);
  }

  return result;
}

unint64_t sub_E0BE0()
{
  result = qword_31CEE0;
  if (!qword_31CEE0)
  {
    sub_2F9C(&qword_31CED8, &qword_274038);
    sub_2F9C(&qword_31CEE8, &qword_274040);
    sub_2F9C(&qword_31CEF0, &qword_274048);
    sub_2F9C(&qword_31CE88, &qword_274010);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31CF00, &qword_274058);
    sub_8E38(&qword_31CE80, &qword_31CE88, &qword_274010, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31CF08, &qword_31CEF0, &qword_274048, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CEE0);
  }

  return result;
}

unint64_t sub_E0E44()
{
  result = qword_31CF10;
  if (!qword_31CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF10);
  }

  return result;
}

void *sub_E0ED4@<X0>(_BYTE *a1@<X8>)
{
  sub_6E2E0();
  result = sub_261CA0();
  if (v5 == 1)
  {
    sub_E28F8();
    result = sub_261CA0();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_E0F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_E1004()
{
  result = qword_31CF60;
  if (!qword_31CF60)
  {
    sub_2F9C(&qword_31CF58, &qword_274118);
    sub_E10BC();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF60);
  }

  return result;
}

unint64_t sub_E10BC()
{
  result = qword_31CF68;
  if (!qword_31CF68)
  {
    sub_2F9C(&qword_31CF70, &qword_274120);
    sub_E1140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF68);
  }

  return result;
}

unint64_t sub_E1140()
{
  result = qword_31CF78;
  if (!qword_31CF78)
  {
    sub_2F9C(&qword_31CF80, &qword_274128);
    sub_E11CC();
    sub_E13EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF78);
  }

  return result;
}

unint64_t sub_E11CC()
{
  result = qword_31CF88;
  if (!qword_31CF88)
  {
    sub_2F9C(&qword_31CF90, &qword_274130);
    sub_E1258();
    sub_E130C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF88);
  }

  return result;
}

unint64_t sub_E1258()
{
  result = qword_31CF98;
  if (!qword_31CF98)
  {
    sub_2F9C(&qword_31CFA0, &qword_274138);
    sub_E0978(&qword_31CFA8, type metadata accessor for NavigationActionMenuButtonView, &protocol conformance descriptor for NavigationActionMenuButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CF98);
  }

  return result;
}

unint64_t sub_E130C()
{
  result = qword_31CFB0;
  if (!qword_31CFB0)
  {
    sub_2F9C(&qword_31CFB8, &unk_274140);
    sub_8E38(&qword_31CFC0, &qword_316948, &qword_2689E0, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_31CFC8, &qword_316938, &qword_274150, &protocol conformance descriptor for BooksActionButton<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFB0);
  }

  return result;
}

unint64_t sub_E13EC()
{
  result = qword_31CFD0;
  if (!qword_31CFD0)
  {
    sub_2F9C(&qword_31CFD8, &qword_274158);
    sub_E1478();
    sub_E1A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFD0);
  }

  return result;
}

unint64_t sub_E1478()
{
  result = qword_31CFE0;
  if (!qword_31CFE0)
  {
    sub_2F9C(&qword_31CFE8, &qword_274160);
    sub_2F9C(&qword_31CFF0, &qword_274168);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31CFF8, &qword_274170);
    sub_8E38(&qword_31D000, &qword_31CFF0, &qword_274168, &protocol conformance descriptor for BooksActionButton<A>);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31D008, &qword_274178);
    sub_E16B0();
    sub_6EBA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31CFE0);
  }

  return result;
}

unint64_t sub_E16B0()
{
  result = qword_31D010;
  if (!qword_31D010)
  {
    sub_2F9C(&qword_31D008, &qword_274178);
    sub_E173C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D010);
  }

  return result;
}

unint64_t sub_E173C()
{
  result = qword_31D018;
  if (!qword_31D018)
  {
    sub_2F9C(&qword_31D020, &qword_274180);
    sub_2F9C(&qword_31D028, &qword_274188);
    sub_2F9C(&qword_31D030, &qword_274190);
    sub_E1870();
    sub_E19B4();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31D068, &qword_31D070, &qword_2741A8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D018);
  }

  return result;
}

unint64_t sub_E1870()
{
  result = qword_31D038;
  if (!qword_31D038)
  {
    sub_2F9C(&qword_31D028, &qword_274188);
    sub_E18FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D038);
  }

  return result;
}

unint64_t sub_E18FC()
{
  result = qword_31D040;
  if (!qword_31D040)
  {
    sub_2F9C(&qword_31D048, &qword_274198);
    sub_8E38(&qword_31D050, &qword_31D058, &qword_2741A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D040);
  }

  return result;
}

unint64_t sub_E19B4()
{
  result = qword_31D060;
  if (!qword_31D060)
  {
    sub_2F9C(&qword_31D030, &qword_274190);
    sub_E1870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D060);
  }

  return result;
}

unint64_t sub_E1A40()
{
  result = qword_31D078;
  if (!qword_31D078)
  {
    sub_2F9C(&qword_31D080, &qword_2741B0);
    sub_2F9C(&qword_31D088, &qword_2741B8);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31D090, &qword_2741C0);
    sub_8E38(&qword_31D098, &qword_31D088, &qword_2741B8, &protocol conformance descriptor for BooksActionButton<A>);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_E0978(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D078);
  }

  return result;
}

uint64_t sub_E1C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_E1CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }

  return result;
}

unint64_t sub_E1D74()
{
  result = qword_31D110;
  if (!qword_31D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D110);
  }

  return result;
}

uint64_t sub_E1DC8()
{
  v1 = type metadata accessor for NavigationStyleViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v3 + v1[5];
  type metadata accessor for NavigationStyle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = v7 + *(sub_2EF0(&qword_31CB68, &qword_273CB0) + 48);
    v6(v8, v4);
    v9 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    if (!(*(v5 + 48))(v8 + v9, 1, v4))
    {
      v6(v8 + v9, v4);
    }
  }

  else
  {
    v6(v7, v4);
    sub_2EF0(&qword_31CB80, &qword_273CC8);
  }

  v10 = v3 + v1[8];
  sub_E1CF8(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 33));

  v11 = v3 + v1[10];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[11];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  v17 = v1[12];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_261180();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  sub_3074(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_E21F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationStyleViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_DFF80(v8, v9, a1, a2, v2 + v6);
}

uint64_t sub_E22B0()
{

  return swift_deallocObject();
}

uint64_t sub_E22E8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_E232C()
{

  return swift_deallocObject();
}

unint64_t sub_E2390()
{
  result = qword_31D138;
  if (!qword_31D138)
  {
    sub_2F9C(&qword_3188E0, &qword_274300);
    sub_E0978(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D138);
  }

  return result;
}

uint64_t sub_E2468()
{
  v1 = type metadata accessor for NavigationStyleViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v3 + v1[5];
  type metadata accessor for NavigationStyle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = v7 + *(sub_2EF0(&qword_31CB68, &qword_273CB0) + 48);
    v6(v8, v4);
    v9 = *(sub_2EF0(&qword_31CB70, &unk_273CB8) + 48);
    if (!(*(v5 + 48))(v8 + v9, 1, v4))
    {
      v6(v8 + v9, v4);
    }
  }

  else
  {
    v6(v7, v4);
    sub_2EF0(&qword_31CB80, &qword_273CC8);
  }

  v10 = v3 + v1[8];
  sub_E1CF8(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 33));

  v11 = v3 + v1[10];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[11];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  v17 = v1[12];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_261180();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  sub_3074(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

unint64_t sub_E28F8()
{
  result = qword_31D158;
  if (!qword_31D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D158);
  }

  return result;
}

unint64_t sub_E295C()
{
  result = qword_31D1B8;
  if (!qword_31D1B8)
  {
    sub_2F9C(&qword_31D1B0, &qword_274440);
    sub_E0978(&qword_31D1C0, type metadata accessor for UberNavigationTitleView, &protocol conformance descriptor for UberNavigationTitleView);
    sub_8E38(&qword_31D1C8, &qword_31D1D0, &qword_274448, &unk_2876F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D1B8);
  }

  return result;
}

uint64_t sub_E2A64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_31D1C8, &qword_31D1D0, &qword_274448, &unk_2876F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E2B6C()
{
  result = qword_31D210;
  if (!qword_31D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D210);
  }

  return result;
}

unint64_t sub_E2BC8()
{
  result = qword_31D220;
  if (!qword_31D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D220);
  }

  return result;
}

uint64_t sub_E2C1C()
{
  sub_2F9C(&qword_31CE08, &qword_273FC8);
  sub_E04C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageScrollActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for PageScrollAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_E3274(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_E32DC(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v12 = sub_2641C0();
  v13 = sub_264770();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2744E0;
  v14[5] = v11;
  v14[6] = v12;

  sub_E39C4(0, 0, v6, &unk_27DF80, v14);

  return v12;
}

uint64_t sub_E2EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = sub_264750();
  v3[10] = sub_264740();
  v4 = sub_2EF0(&qword_31D238, &qword_274588);
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_E2F94;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_E2F94()
{
  *(*v1 + 96) = v0;

  v3 = sub_264730();
  if (v0)
  {
    v4 = sub_E3210;
  }

  else
  {
    v4 = sub_E30F0;
  }

  return (_swift_task_switch)(v4, v3, v2);
}

uint64_t sub_E30F0()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[5];
  v4 = v0[6];
  sub_2E18(v0 + 2, v3);
  v10 = *(v2 + *(type metadata accessor for PageScrollAction(0) + 24));
  v5 = (*(v4 + 8))(&v10, v3, v4);
  v6 = sub_263B00();
  v7 = &enum case for ActionOutcome.performed(_:);
  if ((v5 & 1) == 0)
  {
    v7 = &enum case for ActionOutcome.unsupported(_:);
  }

  (*(*(v6 - 8) + 104))(v1, *v7, v6);
  sub_3080(v0 + 2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_E3210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E3274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageScrollAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageScrollAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3340(uint64_t a1)
{
  v4 = *(type metadata accessor for PageScrollAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_160A8;

  return sub_E2EB8(a1, v6, v1 + v5);
}

uint64_t sub_E3424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for PageScrollAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_E3274(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_E32DC(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v12 = sub_2641C0();
  v13 = sub_264770();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_274560;
  v14[5] = v11;
  v14[6] = v12;

  sub_E39C4(0, 0, v6, &unk_274568, v14);

  return v12;
}

uint64_t sub_E3648(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_263B00();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_E37A8;

  return v12(v9);
}

uint64_t sub_E37A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_E394C;
  }

  else
  {
    v2 = sub_E38BC;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_E38BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2641B0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E394C()
{
  sub_2641A0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1582C(a3, v23 - v10);
  v12 = sub_264770();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_157C4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264760();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_264730();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2644C0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_157C4(a3);

    return v21;
  }

LABEL_8:
  sub_157C4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_E3C84()
{
  result = qword_31D230;
  if (!qword_31D230)
  {
    type metadata accessor for PageScrollAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D230);
  }

  return result;
}

uint64_t sub_E3CEC()
{
  v1 = type metadata accessor for PageScrollAction(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_260620();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 20);
  v6 = sub_263AF0();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_E3E50(uint64_t a1)
{
  v4 = *(type metadata accessor for PageScrollAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_156D0;

  return sub_E2EB8(a1, v6, v1 + v5);
}

uint64_t sub_E3F38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_E3F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_156D0;

  return sub_E3648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_E405C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E4154;

  return v6(a1);
}

uint64_t sub_E4154()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E424C()
{

  return swift_deallocObject();
}

uint64_t sub_E4284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_160A8;

  return sub_E405C(a1, v4);
}

double DefaultShelfHeaderComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_E4358()
{
  sub_E46C0();

  return sub_261CB0();
}

uint64_t View._localizerForAnalytics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_30CC(a1, v5);
  sub_262A90();

  return sub_E450C(v5);
}

uint64_t sub_E44A8(uint64_t a1)
{
  sub_E4650(a1, v3);
  sub_E4650(v3, &v2);
  sub_E46C0();
  sub_261CC0();
  return sub_E450C(v3);
}

uint64_t sub_E450C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D240, &qword_279000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E4574(uint64_t *a1)
{
  sub_2F9C(&qword_31D248, &qword_2745B8);
  sub_261730();
  sub_E45EC();
  return swift_getWitnessTable();
}

unint64_t sub_E45EC()
{
  result = qword_31D250;
  if (!qword_31D250)
  {
    sub_2F9C(&qword_31D248, &qword_2745B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D250);
  }

  return result;
}

uint64_t sub_E4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31D240, &qword_279000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E46C0()
{
  result = qword_31D258;
  if (!qword_31D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D258);
  }

  return result;
}

void sub_E4788(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_E480C(uint64_t a1)
{
  v2 = sub_E4A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E4848(uint64_t a1)
{
  v2 = sub_E4A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfHeaderComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D2B8, &qword_274628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_2E18(a1, a1[3]);
  sub_E4A1C();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_31D2B0, &qword_274620);
    sub_E4A70();
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v16 = v13;
    v17 = v14;
    v10 = v15;
    v18 = v15;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
  }

  return sub_3080(a1);
}

unint64_t sub_E4A1C()
{
  result = qword_31D2C0;
  if (!qword_31D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2C0);
  }

  return result;
}

unint64_t sub_E4A70()
{
  result = qword_31D2C8;
  if (!qword_31D2C8)
  {
    sub_2F9C(&qword_31D2B0, &qword_274620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2C8);
  }

  return result;
}

unint64_t sub_E4AEC()
{
  qword_31D278 = &type metadata for DefaultShelfHeaderComponentModel;
  result = sub_E53B8();
  qword_31D280 = result;
  return result;
}

uint64_t sub_E4B80()
{
  v0 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  *&v11[0] = 0xD000000000000012;
  *(&v11[0] + 1) = 0x8000000000292090;
  v3 = type metadata accessor for EmptyComponentModel(0);
  v14 = v3;
  v15 = sub_E5A08(&qword_31D3A8, type metadata accessor for EmptyComponentModel, &protocol conformance descriptor for EmptyComponentModel);
  v4 = sub_10934(&v13);
  sub_264B70();
  v5 = sub_263E50();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *(v4 + 7) = 0u;
  v4[9] = 0;
  *(v4 + 5) = 0u;
  sub_34A0(v9, (v4 + 5), &qword_315D38, &unk_266E30);
  v7 = *(v3 + 24);
  v6(v4 + v7, 1, 1, v5);
  sub_34A0(v11, (v4 + 5), &qword_315D38, &unk_266E30);
  sub_34A0(v2, v4 + v7, &qword_315D48, &qword_266E40);
  return sub_F7CC(&v13, &unk_31D288);
}

uint64_t sub_E4DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_E4B48(a2, v5);
}

uint64_t DefaultShelfHeaderComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_263E50();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_E4EC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v10, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultShelfHeaderComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);

  return swift_storeEnumTagMultiPayload();
}

double DefaultShelfHeaderComponent.content(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_262FA0();
  sub_E4EC4(v7);
  sub_E59A0(v7, v4, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v4);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  result = *&v18;
  *(a1 + 40) = v18;
  return result;
}

uint64_t sub_E5250(uint64_t a1)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E52B0()
{
  result = qword_31D2D0;
  if (!qword_31D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2D0);
  }

  return result;
}

uint64_t type metadata accessor for DefaultShelfHeaderComponent(uint64_t a1)
{
  result = qword_31D348;
  if (!qword_31D348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_E53B8()
{
  result = qword_31D2E0;
  if (!qword_31D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D2E0);
  }

  return result;
}

uint64_t sub_E54D4(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_E593C(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5A08(&qword_31D2E8, type metadata accessor for DefaultShelfHeaderComponent, &protocol conformance descriptor for DefaultShelfHeaderComponent);
  return sub_260B30();
}

uint64_t sub_E5628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E56B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_E5730(uint64_t a1)
{
  sub_3E754(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_E57A0()
{
  result = qword_31D380;
  if (!qword_31D380)
  {
    sub_2F9C(&qword_31D388, &qword_274840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D380);
  }

  return result;
}

unint64_t sub_E5838()
{
  result = qword_31D390;
  if (!qword_31D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D390);
  }

  return result;
}

unint64_t sub_E5890()
{
  result = qword_31D398;
  if (!qword_31D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D398);
  }

  return result;
}

unint64_t sub_E58E8()
{
  result = qword_31D3A0;
  if (!qword_31D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3A0);
  }

  return result;
}

uint64_t sub_E593C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultShelfHeaderComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E59A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E5A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 CoverViewModel.init(style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double static CoverViewModel.CoverStyle.image(assetInfo:intrinsicSize:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D1>)
{
  sub_30CC(a1, v10);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(v10, v11);
  *(&v17 + 1) = a3;
  sub_230A8(v11);
  v5 = v15;
  a2[4] = v14;
  a2[5] = v5;
  v6 = v17;
  a2[6] = v16;
  a2[7] = v6;
  v7 = v11[1];
  *a2 = v11[0];
  a2[1] = v7;
  result = *&v12;
  v9 = v13;
  a2[2] = v12;
  a2[3] = v9;
  return result;
}

uint64_t CoverViewModel.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v11[4] = v1[4];
  v11[5] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  result = sub_2F8B8(v11);
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  else
  {
    v8 = sub_2F950(v11);
    v9 = v8[5];
    if (v9)
    {
      *a1 = v8[4];
      *(a1 + 8) = v9;
      *(a1 + 16) = 1;
    }

    else
    {
      v10 = v8[1];
      *a1 = *v8;
      *(a1 + 8) = v10;
      *(a1 + 16) = 0;
    }
  }

  return result;
}

uint64_t CoverViewModel.intrinsicSize.getter()
{
  v1 = v0[5];
  v11[4] = v0[4];
  v11[5] = v1;
  v2 = v0[7];
  v11[6] = v0[6];
  v11[7] = v2;
  v3 = v0[1];
  v11[0] = *v0;
  v11[1] = v3;
  v4 = v0[3];
  v11[2] = v0[2];
  v11[3] = v4;
  if (sub_2F8B8(v11))
  {
    return sub_2F950(v11);
  }

  sub_2F950(v11);
  v6 = v0[5];
  v10[4] = v0[4];
  v10[5] = v6;
  v7 = v0[7];
  v10[6] = v0[6];
  v10[7] = v7;
  v8 = v0[1];
  v10[0] = *v0;
  v10[1] = v8;
  v9 = v0[3];
  v10[2] = v0[2];
  v10[3] = v9;
  return sub_2F950(v10);
}

double CoverViewModel.aspectRatio.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_2F8B8(v8);
  v6 = sub_2F950(v8);
  if (!v5)
  {
    return *(v6 + 16);
  }

  result = 1.0;
  if (v5 != 1)
  {
    return 0.641025641;
  }

  return result;
}

unint64_t CoverViewModel.id.getter()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v9[5] = v1;
  v2 = v0[7];
  v9[6] = v0[6];
  v9[7] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  v4 = v0[3];
  v9[2] = v0[2];
  v9[3] = v4;
  v5 = sub_2F8B8(v9);
  v6 = sub_2F950(v9);
  if (v5)
  {
    if (v5 == 1)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v8 = *v6;

    return v8;
  }
}

uint64_t CoverViewModel.axCustomContentLabel.getter()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = sub_2F8B8(v10);
  v6 = sub_2F950(v10);
  if (v5)
  {
    return 0;
  }

  v7 = v6;
  result = *(v6 + 64);
  if (result)
  {
    v9 = *(v7 + 56);

    return v9;
  }

  return result;
}

uint64_t CoverViewModel.axCustomContentValue.getter()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v9[5] = v1;
  v2 = v0[7];
  v9[6] = v0[6];
  v9[7] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  v4 = v0[3];
  v9[2] = v0[2];
  v9[3] = v4;
  v5 = sub_2F8B8(v9);
  v6 = sub_2F950(v9);
  if (v5 || !*(v6 + 64))
  {
    return 0;
  }

  v7 = *(v6 + 72);

  return v7;
}

uint64_t CoverViewModel.CoverImageInfo.init(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31C238, &qword_274960);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  sub_2E18(a1, a1[3]);
  v7 = sub_2606E0();
  v40 = v8;
  v41 = v7;
  sub_2E18(a1, a1[3]);
  sub_260950();
  v10 = v9;
  sub_30CC(a1, v42);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v11 = sub_260680();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v14 = *(v11 - 8);
    v13(v6, 0, 1, v11);
    v15 = sub_260670();
    (*(v14 + 8))(v6, v11);
  }

  else
  {
    v13(v6, 1, 1, v11);
    sub_8E80(v6, &qword_31C238, &qword_274960);
    v15 = 0;
  }

  v39 = v15 & 1;
  sub_2E18(a1, a1[3]);
  v38 = sub_260860();
  sub_2E18(a1, a1[3]);
  v16 = sub_260900();
  v36 = v17;
  v37 = v16;
  sub_2E18(a1, a1[3]);
  LOBYTE(v35) = sub_260870() & 1;
  v35 = v35;
  sub_2E18(a1, a1[3]);
  v18 = sub_2609A0();
  v33 = v19;
  v34 = v18;
  sub_2E18(a1, a1[3]);
  v20 = sub_2609B0();
  v22 = v21;
  sub_2E18(a1, a1[3]);
  v23 = sub_260910();
  sub_2E18(a1, a1[3]);
  v24 = sub_2608A0();
  v26 = v25;
  sub_2E18(a1, a1[3]);
  v27 = sub_260860();
  v28 = v40;
  *a2 = v41;
  *(a2 + 8) = v28;
  *(a2 + 16) = v10;
  LOBYTE(v28) = v38;
  *(a2 + 24) = v39;
  *(a2 + 25) = v28;
  v29 = v36;
  *(a2 + 32) = v37;
  *(a2 + 40) = v29;
  *(a2 + 48) = v35;
  v30 = v33;
  *(a2 + 56) = v34;
  *(a2 + 64) = v30;
  *(a2 + 72) = v20;
  *(a2 + 80) = v22;
  *(a2 + 88) = v23 & 1;
  *(a2 + 96) = v24;
  *(a2 + 104) = v26;
  *(a2 + 112) = v27;
  return sub_3080(a1);
}

uint64_t CoverViewModel.axCoverProperties.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v11[4] = v1[4];
  v11[5] = v3;
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = sub_2F8B8(v11);
  result = sub_2F950(v11);
  if (v7)
  {
    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    v9 = *(result + 72);
    *a1 = *(result + 56);
    a1[1] = v9;
    a1[2] = *(result + 88);
    *(a1 + 41) = *(result + 97);
    return sub_8198(result + 56, &v10, &qword_31C388, &qword_2728F0);
  }

  return result;
}

uint64_t CoverViewModel.axSeriesLabel.getter()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = sub_2F8B8(v10);
  v6 = sub_2F950(v10);
  if (v5)
  {
    return 0;
  }

  v7 = v6;
  result = 0;
  if (v7[8])
  {
    if (v7[13])
    {
      v9 = v7[12];

      return v9;
    }
  }

  return result;
}

uint64_t CoverViewModel.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_E656C(v11, &v10);
}

uint64_t CoverViewModel.isRTL.getter()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v9[5] = v1;
  v2 = v0[7];
  v9[6] = v0[6];
  v9[7] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  v4 = v0[3];
  v9[2] = v0[2];
  v9[3] = v4;
  v5 = sub_2F8B8(v9);
  v6 = sub_2F950(v9);
  if (v5)
  {
    if (v5 == 1)
    {
      return 0;
    }

    v8 = 8;
  }

  else
  {
    v8 = 24;
  }

  return *(v6 + v8);
}

uint64_t CoverViewModel.assetType.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_2F8B8(v8);
  v6 = sub_2F950(v8);
  if (v5)
  {
    return v5 != 1;
  }

  else
  {
    return *(v6 + 25);
  }
}

uint64_t CoverViewModel.CoverImageInfo.accessibilityInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v2;
  v8[0] = *(v1 + 88);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 97);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_8198(v7, &v6, &qword_31C388, &qword_2728F0);
}

__n128 CoverViewModel.CoverImageInfo.init(id:aspectRatio:isRTL:assetType:coverURLString:isExplicit:accessibilityInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *(a9 + 16) = a10;
  v10 = *(a8 + 16);
  *(a9 + 56) = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 25) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v10;
  *(a9 + 88) = *(a8 + 32);
  result = *(a8 + 41);
  *(a9 + 97) = result;
  return result;
}

uint64_t CoverViewModel.AccessibilityInfo.init(title:author:isSeries:seriesName:assetType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t sub_E65A8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x63696C7078457369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7079547465737361;
  if (v1 != 3)
  {
    v4 = 0x4C52557265766F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6152746365707361;
  if (v1 != 1)
  {
    v5 = 0x4C54527369;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_E6694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_EB454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_E66C8(uint64_t a1)
{
  v2 = sub_EA5D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6704(uint64_t a1)
{
  v2 = sub_EA5D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CoverViewModel.CoverImageInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_2EF0(&qword_31D3B0, &qword_274968);
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v26 - v6;
  sub_2E18(a1, a1[3]);
  sub_EA5D4();
  v32 = v7;
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v37[0]) = 0;
    v9 = v31;
    v10 = sub_264DC0();
    v12 = v11;
    v30 = v10;
    LOBYTE(v33) = 1;
    sub_6E08();
    sub_264DF0();
    v13 = v37[0];
    LOBYTE(v37[0]) = 2;
    v14 = a1;
    v29 = sub_264DD0();
    LOBYTE(v33) = 3;
    sub_EA628();
    sub_264DF0();
    v15 = LOBYTE(v37[0]);
    LOBYTE(v37[0]) = 4;
    v26 = sub_264D70();
    v28 = v16;
    v27 = v15;
    LOBYTE(v37[0]) = 5;
    LOBYTE(v15) = sub_264DD0();
    v47 = 6;
    sub_EA67C();
    sub_264DB0();
    v29 &= 1u;
    v17 = v29;
    LOBYTE(v15) = v15 & 1;
    (*(v8 + 8))(v32, v9);
    *&v51[23] = v49;
    *&v51[7] = v48;
    *&v51[39] = v50[0];
    *&v51[48] = *(v50 + 9);
    *&v33 = v30;
    *(&v33 + 1) = v12;
    *&v34 = v13;
    BYTE8(v34) = v17;
    LOBYTE(v9) = v27;
    BYTE9(v34) = v27;
    v18 = v26;
    v19 = v28;
    *&v35 = v26;
    *(&v35 + 1) = v28;
    v36[0] = v15;
    *&v36[1] = *v51;
    *&v36[49] = *(v50 + 9);
    *&v36[33] = *&v51[32];
    *&v36[17] = *&v51[16];
    v20 = v33;
    v21 = v34;
    v22 = *v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v22;
    *a2 = v20;
    *(a2 + 16) = v21;
    v23 = *&v36[16];
    v24 = *&v36[32];
    v25 = *&v36[48];
    *(a2 + 112) = v36[64];
    *(a2 + 80) = v24;
    *(a2 + 96) = v25;
    *(a2 + 64) = v23;
    sub_EA6D0(&v33, v37);
    sub_3080(v14);
    v37[2] = v13;
    v43 = *v51;
    v44 = *&v51[16];
    v45 = *&v51[32];
    v37[0] = v30;
    v37[1] = v12;
    v38 = v29;
    v39 = v9;
    v40 = v18;
    v41 = v19;
    v42 = v15;
    v46 = *&v51[48];
    sub_EA708(v37);
  }
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.shelfID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_E6BF8()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365697265537369;
  v4 = 0x614E736569726573;
  if (v1 != 3)
  {
    v4 = 0x7079547465737361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F68747561;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E6C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_EB6B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_E6CBC(uint64_t a1)
{
  v2 = sub_EA738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6CF8(uint64_t a1)
{
  v2 = sub_EA738();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CoverViewModel.AccessibilityInfo.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D3D0, &qword_274970);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_2E18(a1, a1[3]);
  sub_EA738();
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v9 = sub_264DC0();
    v27 = v10;
    LOBYTE(v31[0]) = 1;
    v11 = sub_264DC0();
    v26 = v12;
    v24 = v11;
    LOBYTE(v31[0]) = 2;
    v36 = sub_264DD0();
    LOBYTE(v31[0]) = 3;
    v23 = sub_264D70();
    v25 = v13;
    v37 = 4;
    sub_EA628();
    sub_264DB0();
    v36 &= 1u;
    v14 = v36;
    (*(v6 + 8))(v8, v5);
    v22 = v38;
    v16 = v26;
    v15 = v27;
    *&v28 = v9;
    *(&v28 + 1) = v27;
    v17 = v24;
    v18 = v25;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    v30[0] = v14;
    v19 = v23;
    *&v30[8] = v23;
    *&v30[16] = v25;
    v30[24] = v38;
    v20 = v29;
    *a2 = v28;
    a2[1] = v20;
    a2[2] = *v30;
    *(a2 + 41) = *&v30[9];
    sub_EA78C(&v28, v31);
    sub_3080(a1);
    v31[0] = v9;
    v31[1] = v15;
    v31[2] = v17;
    v31[3] = v16;
    v32 = v36;
    v33 = v19;
    v34 = v18;
    v35 = v22;
    sub_EA7C4(v31);
  }
}

unint64_t sub_E70A4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6C6F686563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_E710C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_EB86C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_E7134(uint64_t a1)
{
  v2 = sub_EA7F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7170(uint64_t a1)
{
  v2 = sub_EA7F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E71AC()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x666E496567616D69;
  }
}

void sub_E71E8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666E496567616D69 && a2 == 0xE90000000000006FLL;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_E72C8(uint64_t a1)
{
  v2 = sub_EA8F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7304(uint64_t a1)
{
  v2 = sub_EA8F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_E7354(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_E73D8(uint64_t a1)
{
  v2 = sub_EA89C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7414(uint64_t a1)
{
  v2 = sub_EA89C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E7450()
{
  if (*v0)
  {
    return 0x4C54527369;
  }

  else
  {
    return 0x746867696568;
  }
}

void sub_E7484(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_E7558(uint64_t a1)
{
  v2 = sub_EA848();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E7594(uint64_t a1)
{
  v2 = sub_EA848();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.CoverStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v3 = sub_2EF0(&qword_31D3E0, &qword_274978);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  __chkstk_darwin(v3);
  v48 = &v40 - v5;
  v6 = sub_2EF0(&qword_31D3E8, &qword_274980);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_2EF0(&qword_31D3F0, &qword_274988);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_2EF0(&qword_31D3F8, &qword_274990);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = a1[3];
  v51 = a1;
  sub_2E18(a1, v15);
  sub_EA7F4();
  v16 = v50;
  sub_265120();
  if (!v16)
  {
    v50 = v11;
    v17 = sub_264E00();
    v18 = (2 * *(v17 + 16)) | 1;
    v87 = v17;
    v88 = v17 + 32;
    v89 = 0;
    v90 = v18;
    v19 = sub_AFAC();
    if (v19 == 3 || v89 != v90 >> 1)
    {
      v22 = sub_264C10();
      swift_allocError();
      v23 = v14;
      v25 = v24;
      sub_2EF0(&qword_315CD0, &qword_266E00);
      *v25 = &type metadata for CoverViewModel.CoverStyle;
      sub_264D60();
      sub_264BF0();
      (*(*(v22 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v49 + 8))(v23, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v12;
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v71) = 1;
          sub_EA89C();
          v20 = v8;
          sub_264D50();
          v21 = v47;
          v28 = v14;
          sub_6E08();
          v29 = v43;
          sub_264DF0();
          v30 = (v49 + 8);
          (*(v42 + 8))(v20, v29);
          (*v30)(v28, v41);
          swift_unknownObjectRelease();
          *&v71 = v63;
          sub_23050(&v71);
        }

        else
        {
          LOBYTE(v71) = 2;
          sub_EA848();
          sub_264D50();
          v21 = v47;
          LOBYTE(v71) = 0;
          sub_6E08();
          v31 = v45;
          sub_264DF0();
          v32 = v49;
          v33 = v63;
          LOBYTE(v54) = 1;
          v35 = sub_264DD0();
          (*(v46 + 8))(0, v31);
          (*(v32 + 8))(v14, v41);
          swift_unknownObjectRelease();
          *&v71 = v33;
          BYTE8(v71) = v35 & 1;
          sub_2307C(&v71);
        }

        v83 = v75;
        v84 = v76;
        v85 = v77;
        v86 = v78;
        v79 = v71;
        v80 = v72;
        v81 = v73;
        v82 = v74;
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_EA8F0();
        v26 = v50;
        sub_264D50();
        v62 = 0;
        sub_EA944();
        sub_264DF0();
        v27 = v49;
        v58 = v67;
        v59 = v68;
        v60 = v69;
        v61 = v70;
        v54 = v63;
        v55 = v64;
        v56 = v65;
        v57 = v66;
        v52 = 1;
        sub_6E08();
        sub_264DF0();
        (*(v44 + 8))(v26, v9);
        (*(v27 + 8))(v14, v41);
        swift_unknownObjectRelease();
        v75 = v58;
        v76 = v59;
        v77 = v60;
        v71 = v54;
        v72 = v55;
        v73 = v56;
        LOBYTE(v78) = v61;
        v74 = v57;
        *(&v78 + 1) = v53;
        sub_230A8(&v71);
        v83 = v75;
        v84 = v76;
        v85 = v77;
        v86 = v78;
        v79 = v71;
        v80 = v72;
        v81 = v73;
        v82 = v74;
        v21 = v47;
      }

      v36 = v84;
      v21[4] = v83;
      v21[5] = v36;
      v37 = v86;
      v21[6] = v85;
      v21[7] = v37;
      v38 = v80;
      *v21 = v79;
      v21[1] = v38;
      v39 = v82;
      v21[2] = v81;
      v21[3] = v39;
    }
  }

  return sub_3080(v51);
}

uint64_t CoverViewModel.placeholderImageName.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = v0[5];
  v14[4] = v0[4];
  v14[5] = v2;
  v3 = v0[7];
  v14[6] = v0[6];
  v14[7] = v3;
  v4 = v0[1];
  v14[0] = *v0;
  v14[1] = v4;
  v5 = v0[3];
  v14[2] = v0[2];
  v14[3] = v5;
  v6 = sub_2F8B8(v14);
  v7 = sub_2F950(v14);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0xD00000000000001BLL;
    }

    return v1;
  }

  if (!*(v7 + 25))
  {
    return 0xD00000000000001BLL;
  }

  if (*(v7 + 25) == 1)
  {
    v8 = v0[5];
    v13[4] = v0[4];
    v13[5] = v8;
    v9 = v0[7];
    v13[6] = v0[6];
    v13[7] = v9;
    v10 = v0[1];
    v13[0] = *v0;
    v13[1] = v10;
    v11 = v0[3];
    v13[2] = v0[2];
    v13[3] = v11;
    sub_2F950(v13);
    return v1;
  }

  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t CoverViewModel.axLabel.getter()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v8 = sub_264410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = v0[5];
  v64[4] = v0[4];
  v64[5] = v15;
  v16 = v0[7];
  v64[6] = v0[6];
  v64[7] = v16;
  v17 = v0[1];
  v64[0] = *v0;
  v64[1] = v17;
  v18 = v0[3];
  v64[2] = v0[2];
  v64[3] = v18;
  v19 = sub_2F8B8(v64);
  v20 = sub_2F950(v64);
  if (v19)
  {
    return 0;
  }

  v60 = v4;
  v61 = v7;
  v23 = *(v20 + 56);
  v22 = *(v20 + 64);
  v21 = v20 + 56;
  if (!v22)
  {
    return 0;
  }

  v57 = v9;
  v62 = v8;
  v58 = v2;
  v59 = v1;
  v24 = *(v20 + 80);
  v55 = *(v20 + 72);
  v54 = *(v20 + 88);
  v25 = *(v20 + 104);
  v53 = *(v20 + 96);
  v56 = *(v20 + 112);
  sub_8198(v20 + 56, v63, &qword_31C388, &qword_2728F0);

  v26 = sub_E9098(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    v26 = sub_E9098((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v29;
  v30 = &v26[16 * v28];
  *(v30 + 4) = v23;
  *(v30 + 5) = v22;
  v31 = *(v26 + 3);
  v32 = v28 + 2;

  if ((v28 + 2) > (v31 >> 1))
  {
    v26 = sub_E9098((v31 > 1), v28 + 2, 1, v26);
  }

  *(v26 + 2) = v32;
  v33 = &v26[16 * v29];
  *(v33 + 4) = v55;
  *(v33 + 5) = v24;
  if (v54)
  {
    v34 = v57;
    if (v25)
    {
      v35 = *(v26 + 3);
      v36 = v28 + 3;

      if ((v28 + 3) > (v35 >> 1))
      {
        v26 = sub_E9098((v35 > 1), v28 + 3, 1, v26);
      }

      v37 = v59;
      v38 = v58;
      *(v26 + 2) = v36;
      v39 = &v26[16 * v32];
      *(v39 + 4) = v53;
      *(v39 + 5) = v25;
    }

    else
    {
      v37 = v59;
      v38 = v58;
    }
  }

  else
  {
    v37 = v59;
    v38 = v58;
    v34 = v57;
  }

  v41 = v62;
  if (v56 > 2)
  {
    sub_8E80(v21, &qword_31C388, &qword_2728F0);
  }

  else
  {
    v42 = v37;
    sub_2643A0();
    v43 = v61;
    sub_260260();
    (*(v34 + 16))(v11, v14, v41);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v38 + 16))(v60, v43, v42);
    v45 = sub_264490();
    v47 = v46;
    (*(v38 + 8))(v43, v42);
    (*(v34 + 8))(v14, v62);
    v49 = *(v26 + 2);
    v48 = *(v26 + 3);
    if (v49 >= v48 >> 1)
    {
      v26 = sub_E9098((v48 > 1), v49 + 1, 1, v26);
    }

    sub_8E80(v21, &qword_31C388, &qword_2728F0);
    *(v26 + 2) = v49 + 1;
    v50 = &v26[16 * v49];
    *(v50 + 4) = v45;
    *(v50 + 5) = v47;
  }

  v63[0] = v26;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_DDE0();
  v51 = sub_264340();

  return v51;
}

uint64_t static CoverViewModel.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v43 = a1[4];
  v44 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v45 = a1[6];
  v46 = v5;
  v6 = a1[1];
  v40[0] = *a1;
  v40[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v41 = a1[2];
  v42 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v47[2] = a2[2];
  v47[3] = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v47[0] = v10;
  v47[1] = v13;
  v16 = a2[5];
  v17 = a2[7];
  v50 = a2[6];
  v51 = v17;
  v18 = a2[5];
  v19 = a2[3];
  v48 = a2[4];
  v49 = v18;
  v36 = v43;
  v37 = v4;
  v20 = a1[7];
  v38 = v45;
  v39 = v20;
  v32 = v9;
  v33 = v8;
  v34 = v41;
  v35 = v3;
  v28 = v48;
  v29 = v16;
  v21 = a2[7];
  v30 = v50;
  v31 = v21;
  v24 = v15;
  v25 = v11;
  v26 = v14;
  v27 = v19;
  sub_E656C(v40, v53);
  sub_E656C(v47, v53);
  v22 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v32, &v24);
  v52[4] = v28;
  v52[5] = v29;
  v52[6] = v30;
  v52[7] = v31;
  v52[0] = v24;
  v52[1] = v25;
  v52[2] = v26;
  v52[3] = v27;
  sub_EA998(v52);
  v53[4] = v36;
  v53[5] = v37;
  v53[6] = v38;
  v53[7] = v39;
  v53[0] = v32;
  v53[1] = v33;
  v53[2] = v34;
  v53[3] = v35;
  sub_EA998(v53);
  return v22 & 1;
}

void sub_E890C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_E8990(uint64_t a1)
{
  v2 = sub_EA9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E89CC(uint64_t a1)
{
  v2 = sub_EA9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CoverViewModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31D428, &qword_274998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_2E18(a1, a1[3]);
  sub_EA9C8();
  sub_265120();
  if (!v2)
  {
    sub_EAA1C();
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    v9 = v14[5];
    a2[4] = v14[4];
    a2[5] = v9;
    v10 = v14[7];
    a2[6] = v14[6];
    a2[7] = v10;
    v11 = v14[1];
    *a2 = v14[0];
    a2[1] = v11;
    v12 = v14[3];
    a2[2] = v14[2];
    a2[3] = v12;
  }

  return sub_3080(a1);
}

uint64_t sub_E8B90@<X0>(unint64_t *a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  v7 = sub_2F8B8(v12);
  v8 = sub_2F950(v12);
  if (v7)
  {
    v9 = v7 == 1;
    if (v7 == 1)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

    if (v9)
    {
      result = 0x8000000000291580;
    }

    else
    {
      result = 0x8000000000291560;
    }
  }

  else
  {
    v10 = *v8;
  }

  *a1 = v10;
  a1[1] = result;
  return result;
}

double CoverViewModel.init(assetInfo:intrinsicSize:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>, double a3@<D1>)
{
  sub_30CC(a1, &v15);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v15, v13);
  sub_3080(a1);
  v20 = v13[5];
  v21 = v13[6];
  v15 = v13[0];
  v16 = v13[1];
  v17 = v13[2];
  *&v22 = v14;
  v18 = v13[3];
  v19 = v13[4];
  *(&v22 + 1) = a3;
  sub_230A8(&v15);
  v6 = v20;
  v7 = v21;
  v8 = v18;
  a2[4] = v19;
  a2[5] = v6;
  v9 = v22;
  a2[6] = v7;
  a2[7] = v9;
  result = *&v15;
  v11 = v16;
  v12 = v17;
  *a2 = v15;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

char *sub_E8D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D548, &qword_275610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_E8E6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D560, &unk_275630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E8F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317290, &qword_2697F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E9098(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317240, &qword_269790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E91CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D4F0, &qword_2755B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_E92D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D540, &qword_275608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E941C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2EF0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_E958C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2EF0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_E9768(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D530, &qword_2755F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E9894(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_31D508, &unk_2755D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E99B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_31D520, &qword_2755E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_31D528, &qword_2755F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E9AE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2EF0(&qword_317218, &unk_269760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3160D0, &unk_270CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_E9C1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_2EF0(&qword_31D520, &qword_2755E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v55 = a1[4];
  v56 = v3;
  v4 = a1[5];
  v5 = a1[7];
  v57 = a1[6];
  v58 = v5;
  v6 = a1[1];
  v51 = *a1;
  v52 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v53 = a1[2];
  v54 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v61 = a2[2];
  v62 = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v59 = v10;
  v60 = v13;
  v16 = a2[5];
  v17 = a2[7];
  v65 = a2[6];
  v66 = v17;
  v18 = a2[3];
  v19 = a2[5];
  v63 = a2[4];
  v64 = v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v67[2] = a1[2];
  v67[3] = v22;
  v67[0] = v20;
  v67[1] = v21;
  v23 = a1[7];
  v67[6] = a1[6];
  v67[7] = v23;
  v24 = a1[5];
  v67[4] = a1[4];
  v67[5] = v24;
  v67[10] = v14;
  v67[11] = v18;
  v67[8] = v15;
  v67[9] = v11;
  v25 = a2[7];
  v67[14] = v65;
  v67[15] = v25;
  v67[12] = v63;
  v67[13] = v16;
  v68[2] = v53;
  v68[3] = v2;
  v68[0] = v9;
  v68[1] = v8;
  v26 = a1[7];
  v68[6] = v57;
  v68[7] = v26;
  v68[4] = v55;
  v68[5] = v4;
  v27 = sub_2F8B8(v68);
  if (!v27)
  {
    v30 = sub_2F950(v68);
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    if (!sub_2F8B8(&v43))
    {
      v39 = sub_2F950(&v43);
      v28 = *(v30 + 120);
      v29 = *(v39 + 120);
      if (*v30 == *v39 && *(v30 + 8) == *(v39 + 8))
      {
        sub_E656C(&v59, v42);
        sub_E656C(&v51, v42);
        goto LABEL_15;
      }

      v40 = sub_264F10();
      sub_E656C(&v59, v42);
      sub_E656C(&v51, v42);
      sub_8E80(v67, &qword_31C3F0, &unk_272A40);
      if (v40)
      {
        return v28 == v29;
      }

      return 0;
    }

    v42[4] = v55;
    v42[5] = v56;
    v42[6] = v57;
    v42[7] = v58;
    v42[0] = v51;
    v42[1] = v52;
    v42[2] = v53;
    v42[3] = v54;
    v31 = sub_2F950(v42);
    sub_8198(v31, &v41, &qword_31D550, &qword_275618);
    goto LABEL_10;
  }

  if (v27 != 1)
  {
    v32 = sub_2F950(v68);
    v33 = *v32;
    v34 = *(v32 + 8);
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v46 = v62;
    if (sub_2F8B8(&v43) == 2)
    {
      v35 = sub_2F950(&v43);
      v36 = *v35;
      v37 = *(v35 + 8);
      sub_8E80(v67, &qword_31C3F0, &unk_272A40);
      if (v33 == v36)
      {
        return v34 ^ v37 ^ 1u;
      }

      return 0;
    }

    goto LABEL_10;
  }

  v28 = *sub_2F950(v68);
  v45 = v61;
  v46 = v62;
  v43 = v59;
  v44 = v60;
  v49 = v65;
  v50 = v66;
  v47 = v63;
  v48 = v64;
  if (sub_2F8B8(&v43) != 1)
  {
LABEL_10:
    sub_E656C(&v59, &v43);
    sub_8E80(v67, &qword_31C3F0, &unk_272A40);
    return 0;
  }

  v29 = *sub_2F950(&v43);
LABEL_15:
  sub_8E80(v67, &qword_31C3F0, &unk_272A40);
  return v28 == v29;
}

uint64_t _s7BooksUI14CoverViewModelV17AccessibilityInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v19 = *(a1 + 56);
  v20 = *(a2 + 56);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_264F10() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_10:
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_264F10() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v19 == 3)
    {
      if (v20 == 3)
      {
        return 1;
      }
    }

    else if (v20 != 3)
    {
      v14 = sub_2609D0();
      v16 = v15;
      if (v14 == sub_2609D0() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_264F10();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v12 = sub_264F10();
  result = 0;
  if ((v12 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _s7BooksUI14CoverViewModelV0C9ImageInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v29 = *(a1 + 48);
  v10 = *(a1 + 9);
  v48 = *(a1 + 7);
  v49 = v10;
  v50[0] = *(a1 + 11);
  *(v50 + 9) = *(a1 + 97);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 2);
  v14 = *(a2 + 24);
  v16 = a2[4];
  v15 = a2[5];
  v17 = *(a2 + 48);
  *(v53 + 9) = *(a2 + 97);
  v18 = *(a2 + 11);
  v19 = *(a2 + 7);
  v52 = *(a2 + 9);
  v53[0] = v18;
  v51 = v19;
  if (*&v4 == *&v11 && v5 == v12)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    if ((sub_264F10() & 1) == 0)
    {
      return v20 & 1;
    }
  }

  if (v6 == v13 && ((v7 ^ v14) & 1) == 0)
  {
    v21 = sub_2609D0();
    v23 = v22;
    if (v21 == sub_2609D0() && v23 == v24)
    {
    }

    else
    {
      v25 = sub_264F10();

      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (!v9)
    {
      v20 = 0;
      if (v15)
      {
        return v20 & 1;
      }

      goto LABEL_20;
    }

    if (v15)
    {
      if (v8 == v16 && v9 == v15)
      {
        if (v29 != v17)
        {
          goto LABEL_16;
        }

LABEL_21:
        v26 = v48;
        v46 = v49;
        v47[0] = v50[0];
        *(v47 + 9) = *(v50 + 9);
        v27 = v51;
        v44 = v52;
        v45[0] = v53[0];
        *(v45 + 9) = *(v53 + 9);
        if (*(&v48 + 1))
        {
          v40 = v48;
          v41 = v49;
          v42[0] = v50[0];
          *(v42 + 9) = *(v50 + 9);
          v37 = v48;
          v38 = v49;
          v39[0] = v42[0];
          *(v39 + 9) = *(v50 + 9);
          if (*(&v51 + 1))
          {
            v35 = v52;
            v36[0] = v53[0];
            *(v36 + 9) = *(v53 + 9);
            v34 = v51;
            sub_8198(&v48, v32, &qword_31C388, &qword_2728F0);
            sub_8198(&v51, v32, &qword_31C388, &qword_2728F0);
            sub_8198(&v40, v32, &qword_31C388, &qword_2728F0);
            v20 = _s7BooksUI14CoverViewModelV17AccessibilityInfoV2eeoiySbAE_AEtFZ_0(&v37, &v34);
            v30[0] = v34;
            v30[1] = v35;
            v31[0] = v36[0];
            *(v31 + 9) = *(v36 + 9);
            sub_EA7C4(v30);
            v32[0] = v37;
            v32[1] = v38;
            v33[0] = v39[0];
            *(v33 + 9) = *(v39 + 9);
            sub_EA7C4(v32);
            v34 = v26;
            v35 = v46;
            v36[0] = v47[0];
            *(v36 + 9) = *(v47 + 9);
            sub_8E80(&v34, &qword_31C388, &qword_2728F0);
            return v20 & 1;
          }

          v34 = v40;
          v35 = v41;
          v36[0] = v42[0];
          *(v36 + 9) = *(v42 + 9);
          sub_8198(&v48, v32, &qword_31C388, &qword_2728F0);
          sub_8198(&v51, v32, &qword_31C388, &qword_2728F0);
          sub_8198(&v40, v32, &qword_31C388, &qword_2728F0);
          sub_EA7C4(&v34);
        }

        else
        {
          if (!*(&v51 + 1))
          {
            v40 = v48;
            v41 = v49;
            v42[0] = v50[0];
            *(v42 + 9) = *(v50 + 9);
            sub_8198(&v48, &v37, &qword_31C388, &qword_2728F0);
            sub_8198(&v51, &v37, &qword_31C388, &qword_2728F0);
            sub_8E80(&v40, &qword_31C388, &qword_2728F0);
            v20 = 1;
            return v20 & 1;
          }

          sub_8198(&v48, &v40, &qword_31C388, &qword_2728F0);
          sub_8198(&v51, &v40, &qword_31C388, &qword_2728F0);
        }

        v40 = v26;
        v41 = v46;
        v42[0] = v47[0];
        *(v42 + 9) = *(v47 + 9);
        v42[2] = v27;
        v42[3] = v44;
        v43[0] = v45[0];
        *(v43 + 9) = *(v45 + 9);
        sub_8E80(&v40, &qword_31D558, &unk_275620);
        v20 = 0;
        return v20 & 1;
      }

      v20 = 0;
      if ((sub_264F10() & 1) == 0)
      {
        return v20 & 1;
      }

LABEL_20:
      if ((v29 ^ v17))
      {
        return v20 & 1;
      }

      goto LABEL_21;
    }

LABEL_16:
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_EA5D4()
{
  result = qword_31D3B8;
  if (!qword_31D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3B8);
  }

  return result;
}

unint64_t sub_EA628()
{
  result = qword_31D3C0;
  if (!qword_31D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3C0);
  }

  return result;
}

unint64_t sub_EA67C()
{
  result = qword_31D3C8;
  if (!qword_31D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3C8);
  }

  return result;
}

unint64_t sub_EA738()
{
  result = qword_31D3D8;
  if (!qword_31D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3D8);
  }

  return result;
}

unint64_t sub_EA7F4()
{
  result = qword_31D400;
  if (!qword_31D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D400);
  }

  return result;
}

unint64_t sub_EA848()
{
  result = qword_31D408;
  if (!qword_31D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D408);
  }

  return result;
}

unint64_t sub_EA89C()
{
  result = qword_31D410;
  if (!qword_31D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D410);
  }

  return result;
}

unint64_t sub_EA8F0()
{
  result = qword_31D418;
  if (!qword_31D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D418);
  }

  return result;
}

unint64_t sub_EA944()
{
  result = qword_31D420;
  if (!qword_31D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D420);
  }

  return result;
}

unint64_t sub_EA9C8()
{
  result = qword_31D430;
  if (!qword_31D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D430);
  }

  return result;
}

unint64_t sub_EAA1C()
{
  result = qword_31D438;
  if (!qword_31D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D438);
  }

  return result;
}

unint64_t sub_EAA70(uint64_t a1)
{
  result = sub_EA944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAA98(uint64_t a1)
{
  result = sub_EA67C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAAC0(uint64_t a1)
{
  result = sub_EAA1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAAE8(uint64_t a1)
{
  result = sub_EAB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAB10()
{
  result = qword_31D440;
  if (!qword_31D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D440);
  }

  return result;
}

__n128 sub_EAB74(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_EABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_EABE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EAC70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1;
  v3 = *(result + 112) | (a2 << 62);
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v2;
  *(result + 112) = v3;
  return result;
}

unint64_t sub_EAD20()
{
  result = qword_31D448;
  if (!qword_31D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D448);
  }

  return result;
}

unint64_t sub_EAD78()
{
  result = qword_31D450;
  if (!qword_31D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D450);
  }

  return result;
}

unint64_t sub_EADD0()
{
  result = qword_31D458;
  if (!qword_31D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D458);
  }

  return result;
}

unint64_t sub_EAE28()
{
  result = qword_31D460;
  if (!qword_31D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D460);
  }

  return result;
}

unint64_t sub_EAE80()
{
  result = qword_31D468;
  if (!qword_31D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D468);
  }

  return result;
}

unint64_t sub_EAED8()
{
  result = qword_31D470;
  if (!qword_31D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D470);
  }

  return result;
}

unint64_t sub_EAF30()
{
  result = qword_31D478;
  if (!qword_31D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D478);
  }

  return result;
}

unint64_t sub_EAF88()
{
  result = qword_31D480;
  if (!qword_31D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D480);
  }

  return result;
}

unint64_t sub_EAFE0()
{
  result = qword_31D488;
  if (!qword_31D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D488);
  }

  return result;
}

unint64_t sub_EB038()
{
  result = qword_31D490;
  if (!qword_31D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D490);
  }

  return result;
}

unint64_t sub_EB090()
{
  result = qword_31D498;
  if (!qword_31D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D498);
  }

  return result;
}

unint64_t sub_EB0E8()
{
  result = qword_31D4A0;
  if (!qword_31D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4A0);
  }

  return result;
}

unint64_t sub_EB140()
{
  result = qword_31D4A8;
  if (!qword_31D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4A8);
  }

  return result;
}

unint64_t sub_EB198()
{
  result = qword_31D4B0;
  if (!qword_31D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4B0);
  }

  return result;
}

unint64_t sub_EB1F0()
{
  result = qword_31D4B8;
  if (!qword_31D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4B8);
  }

  return result;
}

unint64_t sub_EB248()
{
  result = qword_31D4C0;
  if (!qword_31D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4C0);
  }

  return result;
}

unint64_t sub_EB2A0()
{
  result = qword_31D4C8;
  if (!qword_31D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4C8);
  }

  return result;
}

unint64_t sub_EB2F8()
{
  result = qword_31D4D0;
  if (!qword_31D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4D0);
  }

  return result;
}

unint64_t sub_EB350()
{
  result = qword_31D4D8;
  if (!qword_31D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4D8);
  }

  return result;
}

unint64_t sub_EB3A8()
{
  result = qword_31D4E0;
  if (!qword_31D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4E0);
  }

  return result;
}

unint64_t sub_EB400()
{
  result = qword_31D4E8;
  if (!qword_31D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4E8);
  }

  return result;
}

uint64_t sub_EB454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C52557265766F63 && a2 == 0xEE00676E69727453 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002921C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_EB6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365697265537369 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E736569726573 && a2 == 0xEA0000000000656DLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_EB86C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002921E0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEF6B6F6F42726564)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_EB998()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if ((v4 & 1) == 0)
  {
    sub_406D8(v1, v2);
  }

  sub_262510();
  sub_2EF0(&qword_31D578, &qword_275838);
  sub_EBC80(&qword_31D580, &qword_31D578, &qword_275838);
  return sub_262D10();
}

uint64_t sub_EBA8C()
{
  sub_406D8(*v0, *(v0 + 8));
  sub_262510();
  sub_2EF0(&qword_31D568, &unk_275828);
  sub_EBC80(&qword_31D570, &qword_31D568, &unk_275828);
  return sub_262D10();
}

uint64_t sub_EBB30()
{
  sub_6E2E0();
  sub_261CA0();
  if (v2 != 1)
  {
    return 0;
  }

  sub_E28F8();
  sub_261CA0();
  return v1;
}

uint64_t sub_EBBAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EBBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBC80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EBD0C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_2F9C(a2, a3);
  sub_EBC80(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t EmptyAction.init()()
{
  v0 = sub_263AF0();
  __chkstk_darwin(v0 - 8);
  sub_263AC0();
  return sub_263880();
}

uint64_t Models.FlowBackAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_260620();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ClosureAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_260560();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_263AF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263B20();
  sub_1688B4(&v24);
  (*(v10 + 8))(v12, v9);
  if (v24 == 34)
  {
    goto LABEL_2;
  }

  v23 = v24;
  v22 = 25;
  v14 = Metrics.ClickActionType.rawValue.getter();
  v16 = v15;
  if (v14 == Metrics.ClickActionType.rawValue.getter() && v16 == v17)
  {

LABEL_7:
    (*(v6 + 104))(v8, enum case for ClickData.TargetType.reload(_:), v5);
    (*(v21 + 104))(v4, enum case for LinkActionType.click(_:), v2);
    sub_260610();
    v13 = 0;
    goto LABEL_8;
  }

  v18 = sub_264F10();

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_2:
  v13 = 1;
LABEL_8:
  v19 = sub_260620();
  return (*(*(v19 - 8) + 56))(a1, v13, 1, v19);
}

void CompoundAction.clickData.getter(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v37 - v6;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_263BB0();
  v11 = v10;
  v12 = v10 + 32;
  v43 = *(v10 + 16);
  if (v43)
  {
    v39 = v4;
    v40 = v10;
    v41 = a1;
    v13 = 0;
    v14 = &qword_316A30;
    v15 = &qword_2697B0;
    v16 = &qword_316BA8;
    v17 = &qword_316B98;
    v38 = v10 + 32;
    do
    {
      sub_30CC(v12, v44);
      sub_2EF0(v14, v15);
      sub_2EF0(v16, &unk_275850);
      if (swift_dynamicCast())
      {
        v19 = v17;
        v20 = v14;
        v21 = v16;
        v22 = v15;
        v23 = *(&v46 + 1);
        v24 = v47;
        sub_2E18(&v45, *(&v46 + 1));
        v25 = *(v24 + 16);
        v26 = v23;
        v14 = v20;
        v17 = v19;
        v27 = v24;
        v15 = v22;
        v16 = v21;
        v25(v26, v27);
        sub_3080(&v45);
        v28 = sub_260620();
        if ((*(*(v28 - 8) + 48))(v9, 1, v28) != 1)
        {
          sub_8E80(v9, &qword_316B98, &unk_275840);
          goto LABEL_9;
        }
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        sub_8E80(&v45, &qword_316BA0, &unk_268B90);
        v18 = sub_260620();
        (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      }

      sub_8E80(v9, v17, &unk_275840);
      ++v13;
      v12 += 40;
    }

    while (v43 != v13);
    v13 = v43;
LABEL_9:
    v11 = v40;
    a1 = v41;
    v12 = v38;
    v4 = v39;
  }

  else
  {
    v13 = 0;
  }

  v29 = *(v11 + 16);
  if (v13 == v29)
  {
    v30 = sub_260620();
    (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
LABEL_19:

    return;
  }

  if (v13 >= v29)
  {
    __break(1u);
  }

  else
  {
    sub_30CC(v12 + 40 * v13, v44);
    sub_2EF0(&qword_316A30, &qword_2697B0);
    sub_2EF0(&qword_316BA8, &unk_275850);
    if (swift_dynamicCast())
    {
      v31 = *(&v46 + 1);
      v32 = v47;
      sub_2E18(&v45, *(&v46 + 1));
      v33 = v42;
      (*(v32 + 16))(v31, v32);
      sub_3080(&v45);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_8E80(&v45, &qword_316BA0, &unk_268B90);
      v34 = sub_260620();
      v33 = v42;
      (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    }

    sub_ECAC8(v33, v4);
    v35 = sub_260620();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v4, 1, v35) != 1)
    {
      (*(v36 + 32))(a1, v4, v35);
      sub_8E80(v33, &qword_316B98, &unk_275840);
      (*(v36 + 56))(a1, 0, 1, v35);
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_EC698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    sub_2E18(&v8, *(&v9 + 1));
    (*(v4 + 16))(v3, v4);
    return sub_3080(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_8E80(&v8, &qword_316BA0, &unk_268B90);
    v6 = sub_260620();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

double sub_EC7BC@<D0>(uint64_t x8_0@<X8>)
{
  sub_263BB0();
  sub_1A7174(x8_0);

  return result;
}

uint64_t sub_EC8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_ECAC8(a1, &v10 - v5);
  v7 = sub_260620();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_EC9BC()
{
  v1 = sub_2EF0(&qword_316B98, &unk_275840);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v0[1];
    v8 = *v0 + 32;
    v9 = v0[3];
    while (1)
    {
      v7(v8, v2);
      v10 = v9(v4);
      sub_8E80(v4, &qword_316B98, &unk_275840);
      if (v10)
      {
        break;
      }

      ++v6;
      v8 += 40;
      if (v5 == v6)
      {
        return v5;
      }
    }

    return v6;
  }

  return v5;
}

uint64_t sub_ECAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BooksToolbarIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_2637A0();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_263780();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2616D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CircularIconView(0);
  __chkstk_darwin(v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v1;
  *v14 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v16 = v12[5];
  *(v14 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + v12[6];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[7];
  *(v14 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v19 = v12[8];
  *(v14 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v20 = v14 + v12[9];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v14 + v12[11];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  *(v14 + v12[10]) = v15;
  sub_2618B0();
  sub_ED1F0(&qword_31D588, type metadata accessor for CircularIconView, &protocol conformance descriptor for CircularIconView);
  sub_ED1F0(&qword_31D590, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
  v22 = v26;
  sub_262AA0();
  (*(v9 + 8))(v11, v8);
  sub_ED194(v14);
  sub_263770();
  sub_263790();
  v23 = (v22 + *(sub_2EF0(&qword_31D598, &unk_275A60) + 36));
  sub_2EF0(&qword_31A140, &qword_26E3B8);
  sub_ED1F0(&qword_31A148, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  v24 = v27;
  sub_261890();
  (*(v28 + 8))(v4, v29);
  (*(v5 + 8))(v7, v24);
  result = swift_getKeyPath();
  *v23 = result;
  return result;
}

void *sub_ED038@<X0>(_BYTE *a1@<X8>)
{
  sub_ED51C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_ED0F0@<X0>(_BYTE *a1@<X8>)
{
  sub_ED51C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_ED194(uint64_t a1)
{
  v2 = type metadata accessor for CircularIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_ED280(uint64_t a1)
{
  v2 = sub_2618A0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_261AD0();
}

unint64_t sub_ED37C()
{
  result = qword_31D5A0;
  if (!qword_31D5A0)
  {
    sub_2F9C(&qword_31D598, &unk_275A60);
    type metadata accessor for CircularIconView(255);
    sub_2616D0();
    sub_ED1F0(&qword_31D588, type metadata accessor for CircularIconView, &protocol conformance descriptor for CircularIconView);
    sub_ED1F0(&qword_31D590, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_ED4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D5A0);
  }

  return result;
}

unint64_t sub_ED4B8()
{
  result = qword_31D5A8;
  if (!qword_31D5A8)
  {
    sub_2F9C(&qword_31A140, &qword_26E3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D5A8);
  }

  return result;
}

unint64_t sub_ED51C()
{
  result = qword_31D5B0[0];
  if (!qword_31D5B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31D5B0);
  }

  return result;
}

uint64_t sub_ED570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  v9 = type metadata accessor for ListItemMetadataSharedWithYouView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

void *sub_ED60C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  v5 = v4;
  sub_40D68(v8);
  type metadata accessor for HighlightAttributionViewLoader(0);
  swift_allocObject();
  HighlightAttributionViewLoader.init(id:provider:)(v3, v5, v8);
  result = sub_2631D0();
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

void sub_ED6C8(void *a3@<X8>)
{
  sub_2EF0(&qword_31A988, &qword_26FA70);
  sub_2631E0();
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v4 = *(v6 + 16);
  v5 = v4;

  *a3 = v4;
  a3[1] = v4 != 0;
}

void sub_ED7A0(uint64_t a1)
{
  sub_EDC14(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_ED828(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 41) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 41) & ~v6);
      }

      v15 = *(a1 + 40);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_ED9AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 41) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 41] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[40] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[40] = -a2;
  }
}

void sub_EDC14(uint64_t a1)
{
  if (!qword_31D638)
  {
    sub_2F9C(&qword_31D640, qword_275B88);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31D638);
    }
  }
}

unint64_t sub_EDCD0()
{
  result = qword_31D648;
  if (!qword_31D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D648);
  }

  return result;
}

unint64_t sub_EDD48()
{
  result = qword_31A990;
  if (!qword_31A990)
  {
    type metadata accessor for HighlightAttributionViewLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A990);
  }

  return result;
}

unint64_t sub_EDDA4()
{
  result = qword_31D650;
  if (!qword_31D650)
  {
    sub_2F9C(&qword_31D658, &unk_275CC0);
    sub_EDE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D650);
  }

  return result;
}

unint64_t sub_EDE28()
{
  result = qword_31D660[0];
  if (!qword_31D660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31D660);
  }

  return result;
}

uint64_t SegmentedControlViewModel.init(pickerItems:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for SegmentedControlViewModel(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_EDF90(uint64_t a1)
{
  result = sub_2646F0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_EE020(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_EE1A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t GridItemMetadataRecommendation.init(assetInfo:title:subtitle:titleLines:subtitleLines:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = sub_F7CC(a1, (a8 + 6));
  *a8 = a2;
  a8[1] = a3;
  a8[2] = a4;
  a8[3] = a5;
  a8[4] = a6;
  a8[5] = a7;
  return result;
}

uint64_t GridItemMetadataRecommendation.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  sub_EE594(v4, a3 + v8[7]);
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = (a3 + v8[8]);
  *v11 = a1;
  v11[1] = a2;
}

__n128 sub_EE5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_EE618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_EE660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_EE6C8()
{
  result = qword_31D730;
  if (!qword_31D730)
  {
    type metadata accessor for GridItemMetadataRecommendationLockupView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D730);
  }

  return result;
}

BOOL sub_EE720()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 57) != 1)
  {
    return 0;
  }

  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    v7 = *v0;
  }

  else
  {
    v9 = v3;

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v5, v9);
    v7 = v11[15];
  }

  return v7 != 2;
}

double sub_EE888()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0.0;
  if (*(v0 + 57) == 1)
  {
    v6 = *v0;
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    if (*(v0 + 8) != 1)
    {

      sub_264900();
      v11 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_3074(v6, 0);
      (*(v2 + 8))(v4, v1);
      result = 0.0;
      LOBYTE(v6) = v15[15];
    }

    if (v6 != 2)
    {
      if ((v8 & 1) == 0)
      {

        sub_264900();
        v12 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v7, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v7) = v15[14];
      }

      if (v10)
      {
        if ((v9 & 1) == 0)
        {
LABEL_9:
          result = 32.0;
          if (v6)
          {
            result = 16.0;
          }

          if ((v7 & 1) == 0)
          {
            return 40.0;
          }

          return result;
        }
      }

      else
      {

        sub_264900();
        v13 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v9, 0);
        (*(v2 + 8))(v4, v1);
        if (v15[13] != 1)
        {
          goto LABEL_9;
        }
      }

      v14 = sub_2634F0();
      result = 32.0;
      if (v14)
      {
        return 20.0;
      }
    }
  }

  return result;
}

uint64_t sub_EEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v53 = a2;
  v43 = sub_261C90();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2620F0();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2EF0(&qword_31D758, &qword_276200);
  __chkstk_darwin(v44);
  v7 = &v41 - v6;
  v51 = sub_2EF0(&qword_31D760, &qword_276208);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v41 - v8;
  v48 = sub_2EF0(&qword_31D768, &qword_276210);
  __chkstk_darwin(v48);
  v52 = &v41 - v9;
  v10 = *v2;
  v11 = *(v2 + 8);
  v73 = v11;
  *v56 = *(v2 + 9);
  *&v56[3] = *(v2 + 12);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v72 = v13;
  v14 = *(v2 + 58);
  v63 = *&v10;
  v64 = v11;
  *v65 = *(v2 + 9);
  *&v65[3] = *(v2 + 12);
  v66 = v12;
  v67 = v13;
  v68 = *(v2 + 25);
  v69 = *(v2 + 41);
  v70 = *(v2 + 57);
  v71 = v14;
  v15 = sub_EE720();
  v54 = v10;
  v55 = v11;
  v57 = v12;
  v58 = v13;
  v59 = *(v2 + 25);
  v60 = *(v2 + 41);
  v61 = *(v2 + 57);
  v62 = v14;
  v16 = sub_EE888();
  if (v14)
  {
    v17 = sub_262540();
  }

  else
  {
    v17 = sub_2624F0();
  }

  v18 = v17;
  sub_2610C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_2EF0(&qword_31D770, &qword_276218);
  (*(*(v27 - 8) + 16))(v7, v45, v27);
  v28 = &v7[*(v44 + 36)];
  *v28 = v18;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v29 = v49;
  if (v14)
  {
    sub_2624F0();
  }

  else
  {
    sub_262540();
  }

  sub_2620E0();
  sub_EFC0C();
  sub_262B30();
  (*(v46 + 8))(v5, v47);
  sub_EFCC4(v7);
  KeyPath = swift_getKeyPath();
  if (v15)
  {
    LOBYTE(v10) = 2;
  }

  else if (v73 != 1)
  {
    sub_39D6C(v10, 0);
    sub_264900();
    v31 = sub_2624B0();
    sub_260D10();

    v32 = v41;
    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v10, 0);
    (*(v42 + 8))(v32, v43);
    LOBYTE(v10) = LOBYTE(v63);
  }

  v33 = v52;
  (*(v50 + 32))(v52, v29, v51);
  v34 = v33 + *(v48 + 36);
  *v34 = KeyPath;
  *(v34 + 8) = v10;
  v35 = swift_getKeyPath();
  if (!v15)
  {
    if (v72 == 1)
    {
      v16 = *&v12;
    }

    else
    {

      sub_264900();
      v36 = sub_2624B0();
      sub_260D10();

      v37 = v41;
      sub_261C80();
      swift_getAtKeyPath();
      sub_3074(v12, 0);
      (*(v42 + 8))(v37, v43);
      v16 = v63;
    }
  }

  v38 = v53;
  sub_EFD2C(v33, v53);
  result = sub_2EF0(&qword_31D788, &qword_276220);
  v40 = (v38 + *(result + 36));
  *v40 = v35;
  *(v40 + 1) = v16;
  return result;
}