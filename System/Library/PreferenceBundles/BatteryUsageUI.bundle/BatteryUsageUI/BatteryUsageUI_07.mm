void sub_ED8FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
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
    v21 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

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

__n128 sub_EDB68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EDB7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_EDBC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_EDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_190D80;
  if (!qword_190D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190D80);
  }

  return result;
}

unint64_t sub_EDD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_190D88[0];
  if (!qword_190D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190D88);
  }

  return result;
}

uint64_t sub_EDDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 32);
  sub_4869C(a1, a2, a3);

  v7 = sub_116900();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(*v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing);
  result = swift_getKeyPath();
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v13;
  *(a4 + 32) = result;
  *(a4 + 40) = v14;
  return result;
}

unint64_t sub_EDE78()
{
  result = qword_186A50;
  if (!qword_186A50)
  {
    sub_47A1C(&qword_186A48, &qword_12C278);
    sub_48800(&qword_186A58, &qword_186A60, &qword_12C280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A50);
  }

  return result;
}

uint64_t sub_EDF30@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = sub_115ED0();
  v7 = sub_115ED0();
  v8 = sub_115ED0();
  result = sub_115EC0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = (*(*v4 + 536))(v5, v6, v7 == 0, v8 == result - 1);
    sub_4869C(v28, v10, v11);
    v12 = sub_116900();
    v14 = v13;
    v16 = v15;
    v17 = sub_5A754();
    swift_beginAccess();

    v18 = sub_1168C0();
    v20 = v19;
    v22 = v21;
    v27 = v23;

    sub_48928(v12, v14, v16 & 1);

    swift_beginAccess();
    v24 = *(*v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing);
    KeyPath = swift_getKeyPath();
    swift_beginAccess();
    v26 = *(*v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
    *a2 = v18;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22 & 1;
    *(a2 + 24) = v27;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = v24;
    *(a2 + 48) = v26;
  }

  return result;
}

unint64_t sub_EE11C()
{
  result = qword_186A78;
  if (!qword_186A78)
  {
    sub_47A1C(&qword_186A70, &unk_12C2C0);
    sub_EDE78();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A78);
  }

  return result;
}

uint64_t sub_EE1D4(uint64_t a1)
{
  sub_46F9C(&qword_186AA0, &unk_12C2F8);
  sub_116CC0();
  return v2;
}

uint64_t sub_EE22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 1;
  *(a7 + 8) = a1;
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v9 = type metadata accessor for BreakdownListView(0, v17);
  v10 = *(v9 + 56);
  v11 = sub_116DC0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a7 + v10, a2, v11);

  v13 = sub_117370();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v15 = sub_117350();
      v15[2] = v13;
      bzero(v15 + 4, v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    result = (*(v12 + 8))(a2, v11);
    v16 = (a7 + *(v9 + 60));
    *v16 = v15;
    v16[1] = 0;
  }

  return result;
}

uint64_t sub_EE390@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v4 = sub_47A1C(&qword_186540, &qword_12B980);
  type metadata accessor for BreakdownCellButtonStyle(255);
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for BreakdownEntryView(255, v5, v6, v7);
  WitnessTable = swift_getWitnessTable();
  sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  v29 = v4;
  v30 = &type metadata for Int;
  v31 = sub_116480();
  v32 = sub_E3CB0();
  v33 = &protocol witness table for Int;
  sub_116E30();
  v27 = swift_getWitnessTable();
  v28 = WitnessTable;
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_116D30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  sub_1163F0();
  *&v16 = a1[2];
  *(&v16 + 1) = v5;
  *&v17 = a1[4];
  *(&v17 + 1) = v6;
  v23 = v16;
  v24 = v17;
  v25 = v2;
  sub_116D20();
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v12, v9);
  v19 = *(v10 + 8);
  v19(v12, v9);
  v18(v22, v15, v9);
  return (v19)(v15, v9);
}

uint64_t type metadata accessor for BreakdownCellButtonStyle(uint64_t a1)
{
  result = qword_1910B0;
  if (!qword_1910B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EE758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a2;
  v46 = a6;
  v52 = a2;
  v53 = a3;
  v47 = a4;
  v54 = a4;
  v55 = a5;
  v9 = type metadata accessor for BreakdownListView(0, &v52);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  v12 = sub_47A1C(&qword_186540, &qword_12B980);
  v48 = a5;
  v14 = type metadata accessor for BreakdownEntryView(255, a3, a5, v13);
  v15 = type metadata accessor for BreakdownCellButtonStyle(255);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
  v52 = v14;
  v53 = v15;
  v42 = WitnessTable;
  v54 = WitnessTable;
  v55 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  v18 = a1;
  swift_getTupleTypeMetadata2();
  v40[1] = sub_116F20();
  v19 = sub_116480();
  v20 = sub_E3CB0();
  v52 = v12;
  v53 = &type metadata for Int;
  v54 = v19;
  v55 = v20;
  v56 = &protocol witness table for Int;
  v21 = sub_116E30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v40 - v26;
  v41 = a3;
  result = sub_117370();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = v43;
    v30 = *(v43 + 16);
    v40[0] = result;
    v31 = v18;
    v32 = v44;
    v30(v11, v31, v44);
    v33 = (*(v29 + 80) + 48) & ~*(v29 + 80);
    v34 = swift_allocObject();
    v35 = v41;
    *(v34 + 2) = v45;
    *(v34 + 3) = v35;
    v36 = v48;
    *(v34 + 4) = v47;
    *(v34 + 5) = v36;
    (*(v29 + 32))(&v34[v33], v11, v32);
    v50 = swift_getWitnessTable();
    v51 = v42;
    v37 = swift_getWitnessTable();
    sub_116E20();
    v49 = v37;
    swift_getWitnessTable();
    v38 = *(v22 + 16);
    v38(v27, v24, v21);
    v39 = *(v22 + 8);
    v39(v24, v21);
    v38(v46, v27, v21);
    return (v39)(v27, v21);
  }

  return result;
}

uint64_t sub_EEBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X8>)
{
  v152 = a1;
  v153 = a2;
  v143 = a7;
  v160 = type metadata accessor for BreakdownEntryView(255, a4, a6, a4);
  v161 = type metadata accessor for BreakdownCellButtonStyle(255);
  WitnessTable = swift_getWitnessTable();
  v162 = WitnessTable;
  v163 = sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
  v136 = v163;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  v13 = sub_116F20();
  v128 = *(v13 - 8);
  __chkstk_darwin(v13);
  v127 = &v117 - v14;
  v124 = sub_46F9C(&qword_184F40, &unk_12C690);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v117 - v15;
  v126 = v12;
  __chkstk_darwin(v16);
  v125 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v117 - v19;
  v135 = swift_checkMetadataState();
  __chkstk_darwin(v135);
  v134 = &v117 - v20;
  v21 = swift_checkMetadataState();
  v147 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v146 = &v117 - v25;
  v139 = OpaqueTypeMetadata2;
  v137 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(v26);
  v133 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v132 = &v117 - v29;
  v30 = a3;
  v160 = a3;
  v161 = a4;
  v154 = a5;
  v155 = a6;
  v162 = a5;
  v163 = a6;
  v144 = type metadata accessor for BreakdownListView(0, &v160);
  v130 = *(v144 - 8);
  v31 = *(v130 + 64);
  __chkstk_darwin(v144);
  v33 = &v117 - v32;
  v142 = v13;
  v148 = v21;
  v141 = sub_116480();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v35 = &v117 - v34;
  v150 = *(a4 - 8);
  __chkstk_darwin(v36);
  v145 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v117 - v39;
  v41 = v153;
  v131 = *(v153 + 8);
  v156 = a4;
  sub_1173C0();
  v42 = *v41 == 1;
  v149 = v40;
  if (!v42)
  {
    v102 = v150;
    v103 = v145;
    v104 = v156;
    (*(v150 + 16))(v145, v40, v156);
    v163 = v30;
    v164 = v154;
    sub_A8370(&v160);
    sub_116DC0();
    sub_116D60();
    sub_EFAC0(v103, 0, &v160, 0, 0, 0, v104, v155, v23);
    v105 = v147;
    v106 = *(v147 + 16);
    v107 = v146;
    v108 = v148;
    v106(v146, v23, v148);
    v109 = *(v105 + 8);
    v109(v23, v108);
    v106(v23, v107, v108);
    v110 = v142;
    v111 = swift_getWitnessTable();
    v112 = WitnessTable;
    sub_8E6BC(v23, v110, v108, v111, WitnessTable);
    v109(v23, v108);
    v109(v107, v108);
    (*(v102 + 8))(v149, v156);
    v113 = v35;
LABEL_7:
    v114 = v143;
    v159[2] = swift_getWitnessTable();
    v159[3] = v112;
    v115 = v141;
    swift_getWitnessTable();
    v116 = v140;
    (*(v140 + 16))(v114, v113, v115);
    return (*(v116 + 8))(v113, v115);
  }

  v118 = v35;
  v129 = v30;
  v43 = v130;
  v121 = *(v130 + 16);
  v44 = v33;
  v45 = v144;
  v121(v33, v41, v144);
  v120 = sub_1173F0();
  v46 = sub_1173E0();
  v47 = (*(v43 + 80) + 64) & ~*(v43 + 80);
  v119 = v47;
  v48 = (v31 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = v46;
  *(v49 + 3) = &protocol witness table for MainActor;
  v50 = v156;
  *(v49 + 4) = v129;
  *(v49 + 5) = v50;
  v51 = v155;
  *(v49 + 6) = v154;
  *(v49 + 7) = v51;
  v52 = *(v43 + 32);
  v52(&v49[v47], v44, v45);
  v54 = v152;
  v53 = v153;
  *&v49[v48] = v152;
  v121(v44, v53, v45);
  v55 = sub_1173E0();
  v56 = swift_allocObject();
  *(v56 + 2) = v55;
  v57 = v129;
  *(v56 + 3) = &protocol witness table for MainActor;
  *(v56 + 4) = v57;
  v59 = v154;
  v58 = v155;
  *(v56 + 5) = v156;
  *(v56 + 6) = v59;
  *(v56 + 7) = v58;
  v52(&v56[v119], v44, v45);
  v60 = v156;
  *&v56[v48] = v54;
  sub_116DA0();
  v61 = v160;
  v62 = v161;
  LOBYTE(v52) = v162;
  v63 = v145;
  (*(v150 + 16))(v145, v149, v60);
  v163 = v57;
  v164 = v154;
  sub_A8370(&v160);
  sub_116DC0();
  sub_116D60();

  v64 = v146;
  sub_EFAC0(v63, 1, &v160, v61, v62, v52, v60, v155, v146);
  LOBYTE(v159[0]) = 0;

  sub_116CB0();
  v65 = v161;
  v66 = v134;
  *v134 = v160;
  *(v66 + 8) = v65;
  v67 = v135;
  v68 = *(v135 + 28);
  *(v66 + v68) = swift_getKeyPath();
  sub_46F9C(&qword_186AB0, &qword_12C340);
  swift_storeEnumTagMultiPayload();
  *(v66 + 16) = 0;
  *(v66 + 24) = v61;
  *(v66 + 32) = v62;
  *(v66 + 40) = v52;
  v69 = v133;
  v70 = v148;
  v71 = WitnessTable;
  v72 = v136;
  sub_116A00();
  v73 = v137;
  sub_47B6C(v66);
  (*(v147 + 8))(v64, v70);
  v160 = v70;
  v161 = v67;
  v162 = v71;
  v163 = v72;
  v74 = v139;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = *(v73 + 16);
  v77 = v132;
  v76(v132, v69, v74);
  v155 = *(v73 + 8);
  v155(v69, v74);
  result = sub_117370();
  if (!__OFSUB__(result, 1))
  {
    v79 = v69;
    v153 = v62;
    v154 = v61;
    v80 = 1;
    v81 = v124;
    if (result - 1 > v152)
    {
      v82 = v122;
      sub_116DD0();
      v83 = sub_116630();
      sub_8D6E4();
      sub_115FD0();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v92 = &v82[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
      *v92 = v83;
      v74 = v139;
      *(v92 + 1) = v85;
      *(v92 + 2) = v87;
      *(v92 + 3) = v89;
      *(v92 + 4) = v91;
      v92[40] = 0;
      v93 = sub_116600();
      v94 = &v82[*(v81 + 36)];
      *v94 = v93;
      *(v94 + 8) = 0u;
      *(v94 + 24) = 0u;
      v94[40] = 1;
      v95 = v82;
      v79 = v69;
      sub_548D0(v95, v138, &qword_184F40, &unk_12C690);
      v80 = 0;
    }

    v96 = v138;
    (*(v123 + 56))(v138, v80, 1, v81);
    v76(v79, v77, v74);
    v160 = v79;
    v97 = v125;
    sub_479B4(v96, v125, &qword_186AA8, &qword_12C308);
    v161 = v97;
    v159[0] = v74;
    v159[1] = v126;
    v157 = OpaqueTypeConformance2;
    v158 = sub_F58EC();
    v98 = v127;
    sub_7A8C4(&v160, 2uLL, v159);
    sub_488C8(v97, &qword_186AA8, &qword_12C308);
    v99 = v155;
    v155(v79, v74);
    v100 = v142;
    v101 = swift_getWitnessTable();
    v113 = v118;
    v112 = WitnessTable;
    sub_8E5C4(v98, v100, v148, v101, WitnessTable);

    (*(v128 + 8))(v98, v100);
    sub_488C8(v96, &qword_186AA8, &qword_12C308);
    v99(v77, v74);
    (*(v150 + 8))(v149, v156);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_EFAC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for BreakdownEntryView(0, a7, a8, a4);
  v17 = v16[9];
  v18 = *(a7 - 8);
  (*(v18 + 16))(a9, a1, a7);
  *(a9 + v17) = a2;
  sub_719FC(a3, a9 + v16[10]);
  if (a5)
  {
    sub_6ACB4(a3);
    result = (*(v18 + 8))(a1, a7);
    v20 = a9 + v16[11];
    *v20 = a4;
    *(v20 + 8) = a5;
    *(v20 + 16) = a6 & 1;
  }

  else
  {
    sub_116DB0();
    sub_6ACB4(a3);
    result = (*(v18 + 8))(a1, a7);
    v21 = a9 + v16[11];
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_EFC40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_116CB0();
  *a5 = v12;
  *(a5 + 8) = v13;
  v10 = *(type metadata accessor for BreakdownCellButtonStyle(0) + 28);
  *(a5 + v10) = swift_getKeyPath();
  sub_46F9C(&qword_186AB0, &qword_12C340);
  result = swift_storeEnumTagMultiPayload();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_EFD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_EFE84(v4, *(a1 + 16), *(a1 + 24), a4, v6);
  sub_46F9C(&qword_186AC0, &qword_12C350);
  sub_46F9C(&qword_186AC8, &qword_12C358);
  sub_48800(&qword_186AD0, &qword_186AC0, &qword_12C350, &protocol conformance descriptor for HStack<A>);
  sub_F2BAC(&qword_186AD8, &qword_186AC8, &qword_12C358, sub_F2B7C);
  return sub_1160F0();
}

uint64_t sub_EFE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = type metadata accessor for BreakdownEntryView(0, a2, a3, a4);
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  v32 = &v26 - v9;
  v11 = (a1 + *(v10 + 40));
  v12 = v11[3];
  v13 = v11[4];
  sub_66DE0(v11, v12);
  v36 = a2;
  v37 = a3;
  v30 = a3;
  v14 = sub_A8370(v35);
  v15 = *(*(a2 - 8) + 16);
  v29 = a1;
  v15(v14, a1, a2);
  (*(v13 + 8))(v35, v12, v13);
  sub_6ACB4(v35);
  v36 = a2;
  v37 = a3;
  v16 = sub_A8370(v35);
  v27 = a2;
  v15(v16, a1, a2);
  sub_CB30C(v35, a5);
  v18 = v32;
  v17 = v33;
  v28 = *(v33 + 16);
  v19 = v31;
  v28(v32, a1, v31);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  v23 = *(v17 + 32);
  v23(v21 + v20, v18, v19);
  a5[7] = sub_F51A0;
  a5[8] = v21;
  a5[9] = 0;
  a5[10] = 0;
  v28(v18, v29, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = v27;
  *(v24 + 24) = v22;
  result = (v23)(v24 + v20, v18, v19);
  a5[11] = 0;
  a5[12] = 0;
  a5[13] = sub_F52B0;
  a5[14] = v24;
  return result;
}

uint64_t sub_F0110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a4;
  v7 = sub_46F9C(&qword_186C50, &qword_12C560);
  __chkstk_darwin(v7 - 8);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v119 - v11;
  v146 = sub_46F9C(&qword_186C58, &qword_12C568);
  __chkstk_darwin(v146);
  v147 = &v119 - v13;
  v122 = sub_46F9C(&qword_186C60, &qword_12C570);
  __chkstk_darwin(v122);
  v123 = &v119 - v14;
  v129 = sub_46F9C(&qword_186C68, &qword_12C578);
  __chkstk_darwin(v129);
  v124 = &v119 - v15;
  v126 = sub_46F9C(&qword_186C70, &qword_12C580);
  __chkstk_darwin(v126);
  v128 = &v119 - v16;
  v17 = sub_46F9C(&qword_186C78, &qword_12C588);
  __chkstk_darwin(v17);
  v19 = &v119 - v18;
  v135 = sub_46F9C(&qword_186C80, &qword_12C590);
  __chkstk_darwin(v135);
  v136 = &v119 - v20;
  v142 = sub_46F9C(&qword_186C88, &qword_12C598);
  __chkstk_darwin(v142);
  v137 = &v119 - v21;
  v127 = sub_46F9C(&qword_186C90, &qword_12C5A0);
  __chkstk_darwin(v127);
  v125 = &v119 - v22;
  v133 = sub_46F9C(&qword_186C98, &qword_12C5A8);
  __chkstk_darwin(v133);
  v130 = &v119 - v23;
  v139 = sub_46F9C(&qword_186CA0, &qword_12C5B0);
  __chkstk_darwin(v139);
  v141 = &v119 - v24;
  v131 = sub_46F9C(&qword_186CA8, &qword_12C5B8);
  __chkstk_darwin(v131);
  v132 = &v119 - v25;
  v140 = sub_46F9C(&qword_186CB0, &qword_12C5C0);
  __chkstk_darwin(v140);
  v134 = &v119 - v26;
  v27 = sub_46F9C(&qword_186CB8, &qword_12C5C8);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v119 - v29;
  v143 = sub_46F9C(&qword_186CC0, &qword_12C5D0);
  __chkstk_darwin(v143);
  v138 = &v119 - v31;
  v32 = sub_46F9C(&qword_186CC8, &qword_12C5D8);
  __chkstk_darwin(v32 - 8);
  v145 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v144 = &v119 - v36;
  v37 = *(a3 + 48);
  v149 = a1;
  v150 = a2;
  v151 = a3;
  v38 = v37(a2, a3, v35);
  if (v38 != 6)
  {
    v39 = v38;
    v40 = (*(v151 + 24))(v150);
    if (v41)
    {
      v42 = v41;
      v43 = v39;
      v121 = v9;
      if (v39 == 4)
      {

        v65 = objc_allocWithZone(ISIcon);
        v66 = sub_117170();
        v67 = [v65 initWithBundleIdentifier:v66];

        v68 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v69 = v67;
        v134 = v68;
        sub_1159A0();
        v70 = v28;
        (*(v28 + 16))(v136, v30, v27);
        swift_storeEnumTagMultiPayload();
        sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
        v71 = v137;
        sub_116470();
        sub_479B4(v71, v141, &qword_186C88, &qword_12C598);
        swift_storeEnumTagMultiPayload();
        sub_F4BF0();
        sub_F4DC0();
        v53 = v138;
        sub_116470();

        sub_488C8(v71, &qword_186C88, &qword_12C598);
        (*(v70 + 8))(v30, v27);
        v45 = v144;
LABEL_20:
        sub_479B4(v53, v147, &qword_186CC0, &qword_12C5D0);
        swift_storeEnumTagMultiPayload();
        sub_F4B64();
        sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
        sub_116470();
        sub_488C8(v53, &qword_186CC0, &qword_12C5D0);
        v9 = v121;
        goto LABEL_21;
      }

      v44 = v40;
      if (v39 != 1)
      {
        v45 = v144;
        if (v43)
        {

          v72 = objc_allocWithZone(ISIcon);
          v73 = sub_117170();
          v74 = [v72 initWithBundleIdentifier:v73];

          v75 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
          v76 = v74;
          v134 = v75;
          sub_1159A0();
          v77 = v28;
          (*(v28 + 16))(v136, v30, v27);
          swift_storeEnumTagMultiPayload();
          sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
          v78 = v137;
          sub_116470();
          sub_479B4(v78, v141, &qword_186C88, &qword_12C598);
          swift_storeEnumTagMultiPayload();
          sub_F4BF0();
          sub_F4DC0();
          v53 = v138;
          sub_116470();

          sub_488C8(v78, &qword_186C88, &qword_12C598);
          (*(v77 + 8))(v30, v27);
        }

        else
        {
          v46 = objc_allocWithZone(ISIcon);
          v47 = sub_117170();

          v48 = [v46 initWithBundleIdentifier:v47];

          v49 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
          v136 = v48;
          v137 = v49;
          sub_1159A0();
          v50 = v28;
          v51 = v27;
          (*(v28 + 16))(v132, v30, v27);
          swift_storeEnumTagMultiPayload();
          sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
          sub_F4CA8();
          v52 = v134;
          sub_116470();
          sub_479B4(v52, v141, &qword_186CB0, &qword_12C5C0);
          swift_storeEnumTagMultiPayload();
          sub_F4BF0();
          sub_F4DC0();
          v53 = v138;
          sub_116470();

          sub_488C8(v52, &qword_186CB0, &qword_12C5C0);
          (*(v50 + 8))(v30, v51);
        }

        goto LABEL_20;
      }

      v60 = objc_opt_self();
      v61 = sub_117170();
      v62 = [v60 iconUTTypeIdentifierForNonApp:v61];

      if (v62)
      {

        v63 = [objc_allocWithZone(ISIcon) initWithType:v62];

        v64 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v123 = v63;
        v124 = v64;
        sub_1159A0();
        (*(v28 + 16))(v136, v30, v27);
      }

      else
      {
        if ((v44 != 0x6E4F737961776C41 || v42 != 0xEF79616C70736944) && (sub_1179E0() & 1) == 0)
        {
          if (v44 == 0xD000000000000010 && v42 == 0x80000000001367B0 || (sub_1179E0() & 1) != 0)
          {

            v95 = BatteryUIResourceBundle();
            v152 = sub_116C40();
            v153 = 0;
          }

          else
          {
            if ((v44 != 0xD000000000000015 || v42 != 0x80000000001367D0) && (sub_1179E0() & 1) == 0)
            {
              v120 = v28;
              if (v44 == 1769105747 && v42 == 0xE400000000000000 || (sub_1179E0() & 1) != 0)
              {

                v99 = objc_allocWithZone(ISIcon);
                v100 = sub_117170();
                v101 = [v99 initWithBundleIdentifier:v100];

                v102 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                v119 = v101;
                v125 = v102;
                sub_1159A0();
                v103 = *(v28 + 16);
                v104 = v27;
                v103(v136, v30, v27);
              }

              else
              {
                if (v44 == 0x74694B656D6F48 && v42 == 0xE700000000000000)
                {
                }

                else
                {
                  v107 = sub_1179E0();

                  if ((v107 & 1) == 0)
                  {
                    v113 = objc_allocWithZone(ISIcon);
                    v114 = sub_117170();
                    v115 = [v113 initWithBundleIdentifier:v114];

                    v116 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                    v117 = v115;
                    v137 = v116;
                    sub_1159A0();
                    (*(v28 + 16))(v123, v30, v27);
                    swift_storeEnumTagMultiPayload();
                    sub_F4DC0();
                    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
                    v118 = v124;
                    sub_116470();
                    sub_479B4(v118, v128, &qword_186C68, &qword_12C578);
                    swift_storeEnumTagMultiPayload();
                    sub_F4D34();
                    sub_F4EEC();
                    v85 = v130;
                    sub_116470();

                    v86 = v118;
                    v87 = &qword_186C68;
                    v88 = &qword_12C578;
                    goto LABEL_17;
                  }
                }

                v108 = objc_allocWithZone(ISIcon);
                v109 = sub_117170();
                v110 = [v108 initWithBundleIdentifier:v109];

                v111 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                v119 = v110;
                v125 = v111;
                sub_1159A0();
                v112 = *(v28 + 16);
                v104 = v27;
                v112(v136, v30, v27);
              }

              swift_storeEnumTagMultiPayload();
              sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
              v105 = v137;
              sub_116470();
              sub_479B4(v105, v123, &qword_186C88, &qword_12C598);
              swift_storeEnumTagMultiPayload();
              sub_F4DC0();
              v106 = v124;
              sub_116470();
              sub_488C8(v105, &qword_186C88, &qword_12C598);
              sub_479B4(v106, v128, &qword_186C68, &qword_12C578);
              swift_storeEnumTagMultiPayload();
              sub_F4D34();
              sub_F4EEC();
              v85 = v130;
              sub_116470();

              sub_488C8(v106, &qword_186C68, &qword_12C578);
              (*(v120 + 8))(v30, v104);
              goto LABEL_18;
            }

            v98 = BatteryUIResourceBundle();
            v152 = sub_116C40();
            v153 = 1;
          }

          sub_116470();
          v96 = v155;
          *v19 = v154;
          v19[8] = v96;
          swift_storeEnumTagMultiPayload();
          sub_46F9C(&qword_186D08, &qword_12C5E0);
          sub_F4DC0();
          sub_F4E70();
          v97 = v125;
          sub_116470();
          sub_479B4(v97, v128, &qword_186C90, &qword_12C5A0);
          swift_storeEnumTagMultiPayload();
          sub_F4D34();
          sub_F4EEC();
          v85 = v130;
          sub_116470();

          sub_488C8(v97, &qword_186C90, &qword_12C5A0);
          v45 = v144;
          goto LABEL_19;
        }

        v79 = objc_allocWithZone(ISIcon);
        v80 = sub_117170();
        v81 = [v79 initWithType:v80];

        v82 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v123 = v81;
        v124 = v82;
        sub_1159A0();
        (*(v28 + 16))(v136, v30, v27);
      }

      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
      v83 = v137;
      sub_116470();
      sub_479B4(v83, v19, &qword_186C88, &qword_12C598);
      swift_storeEnumTagMultiPayload();
      sub_46F9C(&qword_186D08, &qword_12C5E0);
      sub_F4DC0();
      sub_F4E70();
      v84 = v125;
      sub_116470();
      sub_488C8(v83, &qword_186C88, &qword_12C598);
      sub_479B4(v84, v128, &qword_186C90, &qword_12C5A0);
      swift_storeEnumTagMultiPayload();
      sub_F4D34();
      sub_F4EEC();
      v85 = v130;
      sub_116470();

      v86 = v84;
      v87 = &qword_186C90;
      v88 = &qword_12C5A0;
LABEL_17:
      sub_488C8(v86, v87, v88);
      (*(v28 + 8))(v30, v27);
LABEL_18:
      v45 = v144;
LABEL_19:
      sub_479B4(v85, v132, &qword_186C98, &qword_12C5A8);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
      sub_F4CA8();
      v89 = v134;
      sub_116470();
      sub_479B4(v89, v141, &qword_186CB0, &qword_12C5C0);
      swift_storeEnumTagMultiPayload();
      sub_F4BF0();
      sub_F4DC0();
      v53 = v138;
      sub_116470();
      sub_488C8(v89, &qword_186CB0, &qword_12C5C0);
      sub_488C8(v85, &qword_186C98, &qword_12C5A8);
      goto LABEL_20;
    }
  }

  v54 = objc_allocWithZone(ISIcon);
  v55 = sub_117170();
  v56 = [v54 initWithBundleIdentifier:v55];

  v57 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v58 = v56;
  v59 = v57;
  sub_1159A0();
  (*(v28 + 16))(v147, v30, v27);
  swift_storeEnumTagMultiPayload();
  sub_F4B64();
  sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
  v45 = v144;
  sub_116470();

  (*(v28 + 8))(v30, v27);
LABEL_21:
  *v12 = sub_116320();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v90 = sub_46F9C(&qword_186D18, &qword_12C5E8);
  sub_F1D44(v149, v150, v151, &v12[*(v90 + 44)]);
  v91 = v145;
  sub_479B4(v45, v145, &qword_186CC8, &qword_12C5D8);
  sub_479B4(v12, v9, &qword_186C50, &qword_12C560);
  v92 = v148;
  sub_479B4(v91, v148, &qword_186CC8, &qword_12C5D8);
  v93 = sub_46F9C(&qword_186D20, &unk_12C5F0);
  sub_479B4(v9, v92 + *(v93 + 48), &qword_186C50, &qword_12C560);
  sub_488C8(v12, &qword_186C50, &qword_12C560);
  sub_488C8(v45, &qword_186CC8, &qword_12C5D8);
  sub_488C8(v9, &qword_186C50, &qword_12C560);
  return sub_488C8(v91, &qword_186CC8, &qword_12C5D8);
}

uint64_t sub_F1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a4;
  v7 = sub_46F9C(&qword_182E20, &qword_124800);
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v104 = &v104 - v8;
  v9 = sub_46F9C(&qword_186D28, &qword_12C600);
  __chkstk_darwin(v9 - 8);
  v111 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v104 - v12;
  v120 = sub_1163F0();
  LOBYTE(v126) = 1;
  v132 = (*(a3 + 16))(a2, a3);
  v133 = v13;
  v15 = sub_4869C(v132, v13, v14);
  v16 = sub_116900();
  v118 = v17;
  v119 = v16;
  v19 = v18;
  v122 = v20;
  KeyPath = swift_getKeyPath();
  v116 = a1;
  v117 = KeyPath;
  v22 = *(a3 + 32);
  v114 = a2;
  v115 = a3;
  v23 = v22(a2, a3);
  v107 = v15;
  if (v24)
  {
    v132 = v23;
    v133 = v24;
    v25 = sub_116900();
    v27 = v26;
    v28 = v19;
    v30 = v29;
    v32 = v31;
    v33 = swift_getKeyPath();
    v34 = sub_116670();
    v35 = swift_getKeyPath();
    v36 = v30 & 1;
    v19 = v28;
    LOBYTE(v132) = v36;
    LOBYTE(v124) = 1;
    v37 = v36;
    v38 = 1;
    v39 = sub_116B40();
    v40 = v25;
  }

  else
  {
    v40 = 0;
    v27 = 0;
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v34 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
  }

  v41 = v19 & 1;
  LOBYTE(v140) = v41;
  LOBYTE(v131[0]) = 1;
  *&v124 = v40;
  *(&v124 + 1) = v27;
  *&v125[0] = v37;
  *(&v125[0] + 1) = v32;
  v125[1] = v33;
  *&v125[2] = v38;
  *(&v125[2] + 1) = v35;
  *&v125[3] = v34;
  *(&v125[3] + 1) = v39;
  *(v156 + 7) = v124;
  *(&v156[4] + 7) = v125[3];
  *(&v156[3] + 7) = v125[2];
  *(&v156[2] + 7) = v33;
  *(&v156[1] + 7) = v125[0];
  LODWORD(v108) = v41;
  LODWORD(v113) = 1;
  v132 = v40;
  v133 = v27;
  *v134 = v37;
  *&v134[8] = v32;
  *&v134[16] = v33;
  *&v134[24] = 0;
  *&v134[32] = v38;
  *&v134[40] = v35;
  *&v134[48] = v34;
  *&v134[56] = v39;
  v43 = v118;
  v42 = v119;
  sub_488B8(v119, v118, v41);
  v44 = v122;

  v45 = v117;

  sub_479B4(&v124, v144, &qword_186D50, &qword_12C688);
  sub_488C8(&v132, &qword_186D50, &qword_12C688);
  sub_48928(v42, v43, v41);

  *&v143[1] = v156[0];
  *&v143[17] = v156[1];
  *&v143[80] = *(&v156[4] + 15);
  *&v143[65] = v156[4];
  *&v143[49] = v156[3];
  *&v143[33] = v156[2];
  v152 = v156[1];
  *(&v141 + 1) = v124;
  DWORD1(v141) = *(&v124 + 3);
  *&v140 = v42;
  *(&v140 + 1) = v43;
  LOBYTE(v141) = v108;
  *(&v141 + 1) = v44;
  v142 = v45;
  v143[0] = v113;
  v144[0] = v42;
  v144[1] = v43;
  v145 = v108;
  *&v146[3] = *(&v124 + 3);
  *v146 = v124;
  v147 = v44;
  v148 = v45;
  v149 = 0;
  v150 = v113;
  v151 = v156[0];
  *&v155[15] = *(&v156[4] + 15);
  *v155 = v156[4];
  v154 = v156[3];
  v153 = v156[2];
  sub_479B4(&v140, &v132, &qword_186D30, &qword_12C608);
  sub_488C8(v144, &qword_186D30, &qword_12C608);
  *(&v139[5] + 7) = *&v143[32];
  *(&v139[6] + 7) = *&v143[48];
  *(&v139[7] + 7) = *&v143[64];
  *(&v139[1] + 7) = v141;
  *(&v139[2] + 7) = v142;
  *(&v139[3] + 7) = *v143;
  *(&v139[4] + 7) = *&v143[16];
  *(&v139[8] + 7) = *&v143[80];
  *(v139 + 7) = v140;
  LODWORD(v119) = v126;
  v47 = v115;
  v46 = v116;
  v48 = v114;
  v49 = (*(v115 + 40))(v114, v115);
  if (v50)
  {
    v52 = v49;
    v53 = v50;
    v108 = sub_116320();
    v118 = *sub_8D6CC();
    LOBYTE(v124) = 0;
    v54 = *(v47 + 56);
    if (v54(v48, v47))
    {
      v55 = sub_116C00();
      v56 = sub_116B80();
      v122 = v55;

      v113 = v56;
    }

    else
    {
      v122 = 0;
      v113 = 0;
    }

    v132 = v52;
    v133 = v53;
    v117 = v53;

    v58 = sub_116900();
    v60 = v59;
    v62 = v61;
    if (v54(v48, v47))
    {
      v63 = sub_116B80();
    }

    else
    {
      v63 = sub_116B40();
    }

    v132 = v63;
    v64 = sub_116890();
    v66 = v65;
    v68 = v67;
    sub_48928(v58, v60, v62 & 1);

    sub_1166B0();
    v69 = sub_116810();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_48928(v64, v66, v68 & 1);

    v76 = v122;
    v77 = v113;
    sub_F511C(v122, v113);
    sub_488B8(v69, v71, v73 & 1);

    sub_F515C(v76, v77);
    v123 = v73 & 1;
    v106 = v71;
    v107 = v69;
    sub_48928(v69, v71, v73 & 1);
    v105 = v75;

    sub_F515C(v76, v77);

    v57 = v124;
    v117 = v123;
    v47 = v115;
    v46 = v116;
    v48 = v114;
  }

  else
  {
    v107 = 0;
    v108 = 0;
    v117 = 0;
    v118 = 0;
    v122 = 0;
    v113 = 0;
    v105 = 0;
    v106 = 0;
    v57 = 0;
  }

  v78 = type metadata accessor for BreakdownEntryView(0, v48, v47, v51);
  v79 = 1;
  v80 = v110;
  if (*(v46 + *(v78 + 36)) == 1)
  {
    v81 = sub_116C00();
    v82 = sub_116720();
    v83 = swift_getKeyPath();
    v132 = v81;
    v133 = v83;
    *v134 = v82;
    sub_1166A0();
    sub_46F9C(&qword_182E30, &unk_127C70);
    sub_48748();
    v84 = v104;
    sub_1169E0();

    v85 = [objc_opt_self() systemGray3Color];
    *(v84 + *(v80 + 36)) = sub_116BE0();
    sub_F50AC(v84, v121);
    v79 = 0;
  }

  v86 = v121;
  (*(v109 + 56))(v121, v79, 1, v80);
  v87 = v86;
  v88 = v111;
  sub_479B4(v87, v111, &qword_186D28, &qword_12C600);
  *(&v125[2] + 1) = v139[2];
  *(&v125[1] + 1) = v139[1];
  *(&v125[5] + 1) = v139[5];
  *(&v125[6] + 1) = v139[6];
  *(&v125[7] + 1) = v139[7];
  v125[8] = *(&v139[7] + 15);
  *(&v125[3] + 1) = v139[3];
  v124 = v120;
  LOBYTE(v125[0]) = v119;
  *(&v125[4] + 1) = v139[4];
  *(v125 + 1) = v139[0];
  v89 = v125[6];
  v90 = v112;
  *(v112 + 96) = v125[5];
  *(v90 + 112) = v89;
  v91 = v125[8];
  *(v90 + 128) = v125[7];
  *(v90 + 144) = v91;
  v92 = v125[2];
  *(v90 + 32) = v125[1];
  *(v90 + 48) = v92;
  v93 = v125[4];
  *(v90 + 64) = v125[3];
  *(v90 + 80) = v93;
  v94 = v125[0];
  *v90 = v124;
  *(v90 + 16) = v94;
  *(v90 + 160) = 0;
  *(v90 + 168) = 1;
  v95 = v107;
  v96 = v108;
  *&v126 = v108;
  *(&v126 + 1) = v118;
  *&v127 = v57;
  *(&v127 + 1) = v122;
  v116 = v57;
  v97 = v113;
  *&v128 = v113;
  *(&v128 + 1) = v107;
  v98 = v105;
  v99 = v106;
  *&v129 = v106;
  *(&v129 + 1) = v117;
  v130 = v105;
  *(v90 + 240) = v105;
  v100 = v129;
  *(v90 + 208) = v128;
  *(v90 + 224) = v100;
  v101 = v127;
  *(v90 + 176) = v126;
  *(v90 + 192) = v101;
  v102 = sub_46F9C(&qword_186D38, &qword_12C610);
  sub_479B4(v88, v90 + *(v102 + 80), &qword_186D28, &qword_12C600);
  sub_479B4(&v124, &v132, &qword_186D40, &qword_12C618);
  sub_479B4(&v126, &v132, &qword_186D48, &qword_12C620);
  sub_488C8(v121, &qword_186D28, &qword_12C600);
  sub_488C8(v88, &qword_186D28, &qword_12C600);
  v131[0] = v96;
  v131[1] = v118;
  v131[2] = v116;
  v131[3] = v122;
  v131[4] = v97;
  v131[5] = v95;
  v131[6] = v99;
  v131[7] = v117;
  v131[8] = v98;
  sub_488C8(v131, &qword_186D48, &qword_12C620);
  v136 = v139[5];
  v137 = v139[6];
  *v138 = v139[7];
  *&v138[15] = *(&v139[7] + 15);
  *&v134[17] = v139[1];
  *&v134[33] = v139[2];
  *&v134[49] = v139[3];
  v135 = v139[4];
  v132 = v120;
  v133 = 0;
  v134[0] = v119;
  *&v134[1] = v139[0];
  return sub_488C8(&v132, &qword_186D40, &qword_12C618);
}

uint64_t sub_F280C@<X0>(void *a1@<X8>)
{
  v3 = sub_1162F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_186AB0, &qword_12C340);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BreakdownCellButtonStyle(0);
  sub_479B4(v1 + *(v10 + 28), v9, &qword_186AB0, &qword_12C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_115FF0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1174D0();
    v13 = sub_1165F0();
    sub_1159B0();

    sub_1162E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_F2A38(uint64_t a1)
{
  v2 = sub_115FF0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1161B0();
}

uint64_t sub_F2B00@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = sub_116320();
  v8 = *sub_8D6C0();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  v9 = sub_46F9C(&qword_186C48, &qword_12C558);
  return sub_F0110(v6, v4, v5, a2 + *(v9 + 44));
}

uint64_t sub_F2BAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F2C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186AF0;
  if (!qword_186AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186AF0);
  }

  return result;
}

uint64_t sub_F2C84@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for BreakdownCellButtonStyle(0);
  v61 = *(v1 - 8);
  v2 = *(v61 + 8);
  __chkstk_darwin(v1 - 8);
  v3 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_46F9C(&qword_186AF8, &qword_12C370);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v54 - v6;
  v8 = sub_46F9C(&qword_186B00, &qword_12C378);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v54 - v10;
  v12 = sub_46F9C(&qword_186B08, &qword_12C380);
  __chkstk_darwin(v12);
  v14 = v54 - v13;
  v59 = sub_46F9C(&qword_186B10, &qword_12C388);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54[0] = v54 - v15;
  v58 = sub_46F9C(&qword_186B18, &qword_12C390);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = v54 - v16;
  sub_116500();
  v17 = sub_116600();
  v18 = &v7[*(v5 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_116660();
  v20 = v54[1];
  sub_115FD0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_548D0(v7, v11, &qword_186AF8, &qword_12C370);
  v29 = &v11[*(v9 + 44)];
  *v29 = v19;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_548D0(v11, v14, &qword_186B00, &qword_12C378);
  v14[*(v12 + 36)] = 0;
  LOBYTE(v63) = sub_116510() & 1;
  v30 = v20;
  v31 = 1;
  sub_F32B8(v30, v3);
  v32 = (v61[80] + 16) & ~v61[80];
  v60 = v2;
  v33 = v12;
  v34 = swift_allocObject() + v32;
  v61 = v3;
  v35 = v3;
  v36 = v54[0];
  v37 = v30;
  sub_F3320(v35, v34);
  v38 = sub_F3424();
  sub_116AE0();

  sub_488C8(v14, &qword_186B08, &qword_12C380);
  v39 = *(v30 + 8);
  LOBYTE(v63) = *v30;
  v64 = v39;
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  v40 = sub_116CC0();
  if ((v67 & 1) == 0)
  {
    v41 = *(v30 + 32);
    v42 = *(v30 + 40);
    v63 = *(v30 + 24);
    v64 = v41;
    LOBYTE(v65) = v42;
    sub_46F9C(&qword_186AB8, &qword_12C348);
    v40 = sub_116D60();
    v31 = v67;
  }

  __chkstk_darwin(v40);
  v54[-2] = v30;
  v43 = sub_46F9C(&qword_186B50, &qword_12C3A0);
  v63 = v33;
  v64 = &type metadata for Bool;
  v65 = v38;
  v66 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_F3838();
  v46 = v55;
  v47 = v31;
  v48 = v59;
  sub_8E234(v47, sub_F3830, &v54[-4], v59, v43, OpaqueTypeConformance2, v45, v55);
  (*(v57 + 8))(v36, v48);
  v49 = v61;
  sub_F32B8(v37, v61);
  v50 = swift_allocObject();
  sub_F3320(v49, v50 + v32);
  v51 = v62;
  (*(v56 + 32))(v62, v46, v58);
  result = sub_46F9C(&qword_186B70, qword_12C3B0);
  v53 = (v51 + *(result + 36));
  *v53 = sub_F3A6C;
  v53[1] = v50;
  v53[2] = 0;
  v53[3] = 0;
  return result;
}

uint64_t sub_F32B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3384(uint64_t a1, char *a2)
{
  type metadata accessor for BreakdownCellButtonStyle(0);
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  return sub_116CD0();
}

unint64_t sub_F3424()
{
  result = qword_186B20;
  if (!qword_186B20)
  {
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3508(&qword_186B28, &qword_186B00, &qword_12C378, sub_F358C);
    sub_48800(&qword_186B40, &qword_186B48, &qword_12C398, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B20);
  }

  return result;
}

uint64_t sub_F3508(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F358C()
{
  result = qword_186B30;
  if (!qword_186B30)
  {
    sub_47A1C(&qword_186AF8, &qword_12C370);
    sub_F599C(&qword_186B38, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B30);
  }

  return result;
}

uint64_t sub_F3648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_115FF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v20 = sub_116EB0();
  v11 = v10;
  v12 = sub_116EB0();
  v14 = v13;
  sub_F280C(v9);
  (*(v4 + 104))(v6, enum case for ColorScheme.light(_:), v3);
  v15 = sub_115FE0();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  v17 = sub_46F9C(&qword_186B10, &qword_12C388);
  (*(*(v17 - 8) + 16))(a2, v21, v17);
  result = sub_46F9C(&qword_186B50, &qword_12C3A0);
  v19 = a2 + *(result + 36);
  *v19 = v12;
  *(v19 + 8) = v14;
  *(v19 + 16) = (v15 & 1) == 0;
  *(v19 + 24) = v20;
  *(v19 + 32) = v11;
  return result;
}

unint64_t sub_F3838()
{
  result = qword_186B58;
  if (!qword_186B58)
  {
    sub_47A1C(&qword_186B50, &qword_12C3A0);
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3424();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_186B60, &qword_186B68, &qword_12C3A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B58);
  }

  return result;
}

uint64_t sub_F3940()
{
  v1 = (type metadata accessor for BreakdownCellButtonStyle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  sub_46F9C(&qword_186AB0, &qword_12C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_115FF0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_F3A6C()
{
  type metadata accessor for BreakdownCellButtonStyle(0);
  sub_46F9C(&qword_186AB8, &qword_12C348);
  return sub_116D70();
}

void sub_F3BB4(uint64_t a1)
{
  sub_1173A0();
  if (v1 <= 0x3F)
  {
    sub_116DC0();
    if (v2 <= 0x3F)
    {
      sub_F3FF0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_F3C68(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-17 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    v19 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((v19 + v9 + 16) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v20 = *(v19 + 8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

uint64_t sub_F3DEC(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      v18 = result & 0xFFFFFFFFFFFFFFF8;
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *(v18 + 8) = v19;
      }

      else
      {
        v20 = *(v5 + 56);

        return v20((v8 + ((((v18 + (v8 | 7) + 16) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
      }

      return result;
    }
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_F3FF0(uint64_t a1)
{
  if (!qword_186B78)
  {
    sub_47A1C(&qword_186A98, &qword_12C2F0);
    v1 = sub_116CF0();
    if (!v2)
    {
      atomic_store(v1, &qword_186B78);
    }
  }
}

void sub_F4054(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_F4458();
    if (v2 <= 0x3F)
    {
      sub_F472C(319, &qword_186B88, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_F4118(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_F426C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *(v19 + 8) = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 32) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

unint64_t sub_F4458()
{
  result = qword_186B80;
  if (!qword_186B80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_186B80);
  }

  return result;
}

uint64_t sub_F44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_186B90, &qword_12C528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_F45A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_186B90, &qword_12C528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F4650(uint64_t a1)
{
  sub_F472C(319, &qword_186BF0, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_F472C(319, &qword_186B88, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_F4780(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_F472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void sub_F4780(uint64_t a1)
{
  if (!qword_186BF8)
  {
    sub_115FF0();
    v1 = sub_116000();
    if (!v2)
    {
      atomic_store(v1, &qword_186BF8);
    }
  }
}

uint64_t sub_F47D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_47A1C(&qword_186540, &qword_12B980);
  type metadata accessor for BreakdownEntryView(255, v1, v2, v3);
  type metadata accessor for BreakdownCellButtonStyle(255);
  swift_getWitnessTable();
  sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  sub_116480();
  sub_E3CB0();
  sub_116E30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_116D30();
  return swift_getWitnessTable();
}

unint64_t sub_F4A20()
{
  result = qword_186C40;
  if (!qword_186C40)
  {
    sub_47A1C(&qword_186B70, qword_12C3B0);
    sub_47A1C(&qword_186B10, &qword_12C388);
    sub_47A1C(&qword_186B50, &qword_12C3A0);
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3424();
    swift_getOpaqueTypeConformance2();
    sub_F3838();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186C40);
  }

  return result;
}

unint64_t sub_F4B64()
{
  result = qword_186CD0;
  if (!qword_186CD0)
  {
    sub_47A1C(&qword_186CC0, &qword_12C5D0);
    sub_F4BF0();
    sub_F4DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CD0);
  }

  return result;
}

unint64_t sub_F4BF0()
{
  result = qword_186CD8;
  if (!qword_186CD8)
  {
    sub_47A1C(&qword_186CB0, &qword_12C5C0);
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
    sub_F4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CD8);
  }

  return result;
}

unint64_t sub_F4CA8()
{
  result = qword_186CE8;
  if (!qword_186CE8)
  {
    sub_47A1C(&qword_186C98, &qword_12C5A8);
    sub_F4D34();
    sub_F4EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CE8);
  }

  return result;
}

unint64_t sub_F4D34()
{
  result = qword_186CF0;
  if (!qword_186CF0)
  {
    sub_47A1C(&qword_186C90, &qword_12C5A0);
    sub_F4DC0();
    sub_F4E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CF0);
  }

  return result;
}

unint64_t sub_F4DC0()
{
  result = qword_186CF8;
  if (!qword_186CF8)
  {
    sub_47A1C(&qword_186C88, &qword_12C598);
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CF8);
  }

  return result;
}

unint64_t sub_F4E70()
{
  result = qword_186D00;
  if (!qword_186D00)
  {
    sub_47A1C(&qword_186D08, &qword_12C5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D00);
  }

  return result;
}

unint64_t sub_F4EEC()
{
  result = qword_186D10;
  if (!qword_186D10)
  {
    sub_47A1C(&qword_186C68, &qword_12C578);
    sub_F4DC0();
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D10);
  }

  return result;
}

char *sub_F4FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_186D68, &unk_12C6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_F50AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182E20, &qword_124800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F511C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_F515C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_F51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for BreakdownEntryView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  sub_6ACB4((v7 + v6[12]));

  return swift_deallocObject();
}

uint64_t sub_F5324()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = (type metadata accessor for BreakdownListView(0, v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v3 + v2[16];

  v5 = sub_116DC0();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);

  return swift_deallocObject();
}

uint64_t sub_F545C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for BreakdownListView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_EEBB0(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_F551C@<X0>(_BYTE *a1@<X8>)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v7 = *(type metadata accessor for BreakdownListView(0, &v12) - 8);
  v8 = *(v1 + ((*(v7 + 64) + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v9 = type metadata accessor for BreakdownListView(0, &v12);
  result = sub_EE1D4(v9);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > v8)
  {
    v11 = *(result + v8 + 32);

    *a1 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_F5618()
{
  v1 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = (type metadata accessor for BreakdownListView(0, v8) - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3 + v2[16];

  v5 = sub_116DC0();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);

  return swift_deallocObject();
}

void sub_F5764(char *a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v15 = v1[4];
  v3 = v15;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v7 = *(type metadata accessor for BreakdownListView(0, &v15) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v11 = (v1 + *(type metadata accessor for BreakdownListView(0, &v15) + 60) + v8);
  v12 = v11[1];
  v15 = *v11;
  v16 = v12;

  sub_46F9C(&qword_186AA0, &unk_12C2F8);
  sub_116CC0();
  v13 = v14;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = sub_F4FA4(v14);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v13 + 2) > v9)
  {
    v13[v9 + 32] = v10;
    sub_116CD0();

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_F58EC()
{
  result = qword_186D58;
  if (!qword_186D58)
  {
    sub_47A1C(&qword_186AA8, &qword_12C308);
    sub_F3508(&qword_186D60, &qword_184F40, &unk_12C690, sub_AAF8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D58);
  }

  return result;
}

uint64_t sub_F599C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F59F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  v7[3] = a1;
  v7[4] = v4;
  v5 = sub_A8370(v7);
  (*(*(v3 - 8) + 16))(v5, v2, v3);
  LOBYTE(v3) = sub_115950();
  sub_6ACB4(v7);
  return v3 & 1;
}

unint64_t sub_F5A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186D70;
  if (!qword_186D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D70);
  }

  return result;
}

const char *sub_F5ADC()
{
  if (*v0)
  {
    return "bui_25";
  }

  else
  {
    return "bui_graph_intervals_iOS";
  }
}

uint64_t sub_F5B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v7[3] = a1;
  v7[4] = sub_F5B84(a1, a2, a3);
  LOBYTE(v7[0]) = v4;
  v5 = sub_115950();
  sub_6ACB4(v7);
  return v5 & 1;
}

unint64_t sub_F5B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_F5B84(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_F5B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186D78;
  if (!qword_186D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D78);
  }

  return result;
}

void sub_F5BE8()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  __chkstk_darwin(v8);
  v50 = &v47 - v9;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v51 = &v47 - v14;
  v52 = v0;
  v15 = type metadata accessor for AppDetailViewModel(0);
  v16 = sub_FC2E4(&qword_186E48, type metadata accessor for AppDetailViewModel, &unk_12C8E0);
  v17 = sub_881D0(v15, v16);
  if (!*(v17 + 16))
  {

    return;
  }

  v48 = v7;
  v49 = v4;
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v47 = *(v2 + 16);
  v47(v12, v17 + v18, v1);

  v19 = *(v2 + 32);
  v20 = v12;
  v21 = v1;
  v19(v51, v20, v1);
  v52 = v0;
  v22 = sub_881D0(v15, v16);
  v23 = *(v22 + 16);
  if (!v23)
  {

    (*(v2 + 8))(v51, v1);
    return;
  }

  v24 = v22 + v18 + *(v2 + 72) * (v23 - 1);
  v25 = v48;
  v47(v48, v24, v1);

  v26 = v50;
  v19(v50, v25, v1);
  sub_115710();
  v28 = v27;
  v29 = v51;
  v30 = sub_115710();
  v32 = v28 - v31;
  v33 = v21;
  v34 = *(*v0 + 208);
  v35 = *(v34(v30) + 16);

  v37 = v32 / v35;
  v38 = v49;
  (*(*v0 + 160))(v36);
  sub_115710();
  v40 = v39;
  v41 = *(v2 + 8);
  v49 = (v2 + 8);
  v41(v38, v33);
  v42 = sub_115710();
  v44 = (v40 - v43) / v37;
  if (COERCE__INT64(fabs(v44)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v45 = *(v34(v42) + 16);

  v46 = v45 - 1;
  if (v45 - 1 >= v44)
  {
    v46 = v44;
  }

  (*(*v0 + 264))(v46 & ~(v46 >> 63));
  v41(v26, v33);
  v41(v29, v33);
}

void (*sub_F6024(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_F6088;
}

void sub_F6088(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_F5BE8();
  }
}

uint64_t sub_F60BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 488))();

  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  v4 = sub_115760();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_F61CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 168))(v7);
}

uint64_t sub_F62B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_FC2E4(&qword_183550, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = a1;
  LOBYTE(a1) = sub_117160();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_F5BE8();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 496))(v12);
  }

  return (v10)(v15, v4);
}

uint64_t sub_F6558(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_F5BE8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t (*sub_F66B8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel, &unk_12C8FC);
  sub_115920();

  v4[7] = sub_F6024(v4);
  return sub_F6808;
}

uint64_t type metadata accessor for AppDetailViewModel(uint64_t a1)
{
  result = qword_191530;
  if (!qword_191530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_F68C0()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  swift_beginAccess();

  return result;
}

uint64_t sub_F694C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_F6998(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

uint64_t sub_F69EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown;
  swift_beginAccess();

  v5 = sub_FBBE0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 496))(v8);
  }
}

uint64_t (*sub_F6B1C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel, &unk_12C8FC);
  sub_115920();

  v4[7] = sub_F6860(v4);
  return sub_F6C6C;
}

uint64_t sub_F6CD8()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_F6D60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

double sub_F6E04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    (*(*v1 + 496))(v6);
  }

  return result;
}

uint64_t (*sub_F6F04(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel, &unk_12C8FC);
  sub_115920();

  v4[7] = sub_F6C78(v4);
  return sub_F7054;
}

double sub_F70C0()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = v0 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize;
  swift_beginAccess();
  return *v1;
}

void sub_F71F0(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    (*(*v2 + 496))(v8);
  }
}

uint64_t (*sub_F7308(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel, &unk_12C8FC);
  sub_115920();

  v4[7] = sub_F7060(v4);
  return sub_F7458;
}

uint64_t sub_F74C4()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_F754C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    (*(*v1 + 496))(v5);
  }
}

uint64_t (*sub_F7650(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel, &unk_12C8FC);
  sub_115920();

  v4[7] = sub_F7464(v4);
  return sub_F77A0;
}

uint64_t sub_F77AC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  sub_F7814(a1, a2, a3 & 1, a4);
  return v8;
}

uint64_t sub_F7814(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = sub_115760();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  *v13 = 0;
  v13[1] = 0;
  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide) = 0;
  sub_115930();
  v14 = *(a1 + 16);
  v15 = sub_8D6F0();
  v17 = v14 - *v15;
  if (__OFSUB__(v14, *v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 > v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(a1 + 16);
  if (v17 <= v18 && v18 >= v14)
  {
    v16 = v17 & ~(v17 >> 63);
    if (v18 == v14 - v16)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  sub_FBFEC(a1, a1 + 32, v16, (2 * v14) | 1);
  v22 = v21;

  a1 = v22;
LABEL_6:
  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown) = a1;
  sub_719FC(a4, v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry);

  sub_115750();
  sub_6ACB4(a4);
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate, v12, v9);
  if (a3)
  {
    v19 = *(a1 + 16);

    a2 = v19 - 1;
  }

  else
  {
  }

  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay) = a2;
  return v4;
}

uint64_t sub_F7A08()
{
  v1 = sub_1158D0();
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v32 - v8;
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = *(*v0 + 392);
  v13(v38, v10);
  v63 = v38[10];
  v64 = v38[11];
  v65 = v38[12];
  v66 = v39;
  v59 = v38[6];
  v60 = v38[7];
  v61 = v38[8];
  v62 = v38[9];
  v55 = v38[2];
  v56 = v38[3];
  v57 = v38[4];
  v58 = v38[5];
  v54[0] = v38[0];
  v54[1] = v38[1];
  if (sub_68BD4(v54) == 1 || (v14 = BYTE8(v55), v15 = sub_488C8(v38, &qword_186D88, &unk_12C870), (v14 & 1) != 0) || ((v13)(v40, v15), v50 = v40[10], v51 = v40[11], v52 = v40[12], v53 = v41, v46 = v40[6], v47 = v40[7], v48 = v40[8], v49 = v40[9], v42[2] = v40[2], v43 = v40[3], v44 = v40[4], v45 = v40[5], v42[0] = v40[0], v42[1] = v40[1], sub_68BD4(v42) == 1) || (v16 = BYTE8(v43), sub_488C8(v40, &qword_186D88, &unk_12C870), (v16 & 1) != 0))
  {
    sub_46F9C(&qword_184260, &unk_128570);
    v36 = *(v5 + 72);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1248A0;
    v18 = v3;
    sub_1158A0();
    sub_115750();
    sub_115830();
    v19 = v37;
    v20 = v1;
    v21 = *(v5 + 8);
    v21(v12, v4);
    v35 = v4;
    v22 = *(v19 + 8);
    v22(v18, v20);
    sub_1158A0();
    sub_1156F0();
    sub_115830();
    v21(v12, v35);
    v23 = v17;
    v22(v18, v20);
  }

  else
  {
    sub_1158A0();
    v25 = v36;
    sub_115700();
    sub_115830();
    v33 = *(v5 + 8);
    v33(v25, v4);
    v34 = v5 + 8;
    v37 = *(v37 + 8);
    (v37)(v3, v1);
    sub_1158A0();
    v26 = v35;
    sub_115700();
    sub_115830();
    v27 = v26;
    v28 = v33;
    v33(v27, v4);
    (v37)(v3, v1);
    sub_46F9C(&qword_184260, &unk_128570);
    v29 = *(v5 + 72);
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1248A0;
    v31 = v23 + v30;
    (*(v5 + 16))(v31, v12, v4);
    (*(v5 + 32))(v31 + v29, v25, v4);
    v28(v12, v4);
  }

  return v23;
}

void sub_F7F28(uint64_t a1@<X8>)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  if ((*v3)() < 0 || (v5 = *(*v1 + 208), v6 = *(v5() + 16), v7 = , !v6))
  {
    sub_FC0DC(&v55);
    goto LABEL_7;
  }

  v8 = (v4)(v7);
  v9 = v5();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v9 + 16))
  {
    v10 = v9 + 216 * v8;
    v11 = *(v10 + 48);
    v27 = *(v10 + 32);
    v28 = v11;
    v12 = *(v10 + 64);
    v13 = *(v10 + 80);
    v14 = *(v10 + 112);
    v31 = *(v10 + 96);
    v32 = v14;
    v29 = v12;
    v30 = v13;
    v15 = *(v10 + 128);
    v16 = *(v10 + 144);
    v17 = *(v10 + 176);
    v35 = *(v10 + 160);
    v36 = v17;
    v33 = v15;
    v34 = v16;
    v18 = *(v10 + 192);
    v19 = *(v10 + 208);
    v20 = *(v10 + 224);
    v40 = *(v10 + 240);
    v38 = v19;
    v39 = v20;
    v37 = v18;
    sub_68C0C(&v27, &v55);

    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v41 = v27;
    v42 = v28;
    nullsub_4();
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v64 = v50;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v60 = v46;
    v55 = v41;
    v56 = v42;
LABEL_7:
    v21 = v66;
    *(a1 + 160) = v65;
    *(a1 + 176) = v21;
    *(a1 + 192) = v67;
    *(a1 + 208) = v68;
    v22 = v62;
    *(a1 + 96) = v61;
    *(a1 + 112) = v22;
    v23 = v64;
    *(a1 + 128) = v63;
    *(a1 + 144) = v23;
    v24 = v58;
    *(a1 + 32) = v57;
    *(a1 + 48) = v24;
    v25 = v60;
    *(a1 + 64) = v59;
    *(a1 + 80) = v25;
    v26 = v56;
    *a1 = v55;
    *(a1 + 16) = v26;
    return;
  }

  __break(1u);
}

double sub_F8130@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + 392))(v18);
  v27 = v18[10];
  v28 = v18[11];
  v29 = v18[12];
  v30 = v19;
  v23 = v18[6];
  v24 = v18[7];
  v25 = v18[8];
  v26 = v18[9];
  v20[2] = v18[2];
  v20[3] = v18[3];
  v21 = v18[4];
  v22 = v18[5];
  v20[0] = v18[0];
  v20[1] = v18[1];
  if (sub_68BD4(v20) == 1)
  {
    sub_68BEC(&v31);
  }

  else
  {
    v14 = v27;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v10 = v23;
    v11 = v24;
    v12 = v25;
    v13 = v26;
    v8 = v21;
    v9 = v22;
    sub_479B4(&v8, &v31, &qword_1835F0, &unk_12B240);
    sub_488C8(v18, &qword_186D88, &unk_12C870);
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v31 = v8;
    v32 = v9;
  }

  v3 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v3;
  *(a1 + 128) = v39;
  *(a1 + 144) = v40;
  v4 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v4;
  v5 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v5;
  result = *&v31;
  v7 = v32;
  *a1 = v31;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_F82B4()
{
  (*(*v0 + 400))(v3);
  v5[6] = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v4;
  v5[2] = v3[2];
  v5[3] = v3[3];
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v1 = v6;
  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  return v1;
}

void sub_F8398()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 408))(v4);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = (*v0 + 392);
    v11 = *v10;
    (*v10)(v171);
    v209 = v171[10];
    v210 = v171[11];
    v211 = v171[12];
    v212 = v172;
    v205 = v171[6];
    v206 = v171[7];
    v207 = v171[8];
    v208 = v171[9];
    v202[2] = v171[2];
    v202[3] = v171[3];
    v203 = v171[4];
    v204 = v171[5];
    v202[0] = v171[0];
    v202[1] = v171[1];
    if (sub_68BD4(v202) != 1)
    {
      v219 = v209;
      v220 = v210;
      v221 = v211;
      v222 = v212;
      v215 = v205;
      v216 = v206;
      v217 = v207;
      v218 = v208;
      v213 = v203;
      v214 = v204;
      sub_479B4(&v213, v154, &qword_1835F0, &unk_12B240);
      sub_488C8(v171, &qword_186D88, &unk_12C870);
      v224 = v219;
      v225 = v220;
      v226 = v221;
      v227 = v222;
      v223[2] = v215;
      v223[3] = v216;
      v223[4] = v217;
      v223[5] = v218;
      v223[0] = v213;
      v223[1] = v214;
      if (sub_68BD4(v223) != 1)
      {
        v12 = *(&v224 + 1);
        v11(v173);
        v198 = v173[10];
        v199 = v173[11];
        v200 = v173[12];
        v201 = v174;
        v194 = v173[6];
        v195 = v173[7];
        v196 = v173[8];
        v197 = v173[9];
        v190 = v173[2];
        v191 = v173[3];
        v192 = v173[4];
        v193 = v173[5];
        v189[0] = v173[0];
        v189[1] = v173[1];
        if (sub_68BD4(v189) == 1)
        {
          goto LABEL_26;
        }

        v13 = BYTE8(v190);
        sub_488C8(v173, &qword_186D88, &unk_12C870);
        if (v13)
        {
          goto LABEL_26;
        }

        sub_115700();
        v101 = sub_E6648();
        v106 = v14;
        v15 = v11(&v175);
        v16 = *(*v1 + 208);
        v105 = *v1 + 208;
        v17 = (v16)(v15);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = v17 + 216 * v18;
          v20 = *(v19 - 184);
          v153[1] = *(v19 - 168);
          v153[0] = v20;
          v21 = *(v19 - 152);
          v22 = *(v19 - 136);
          v23 = *(v19 - 120);
          v153[5] = *(v19 - 104);
          v153[4] = v23;
          v153[3] = v22;
          v153[2] = v21;
          v24 = *(v19 - 88);
          v25 = *(v19 - 72);
          v26 = *(v19 - 56);
          v153[9] = *(v19 - 40);
          v153[8] = v26;
          v153[7] = v25;
          v153[6] = v24;
          v27 = *(v19 - 24);
          v28 = *(v19 - 8);
          v29 = *(v19 + 8);
          LOWORD(v153[13]) = *(v19 + 24);
          v153[12] = v29;
          v153[11] = v28;
          v153[10] = v27;
          memmove(v154, (v19 - 184), 0xD2uLL);
          nullsub_4();
          sub_68C0C(v153, v155);

          v167 = v154[10];
          v168 = v154[11];
          v169 = v154[12];
          v170 = v154[13];
          v163 = v154[6];
          v164 = v154[7];
          v165 = v154[8];
          v166 = v154[9];
          v159 = v154[2];
          v160 = v154[3];
          v161 = v154[4];
          v162 = v154[5];
          v157 = v154[0];
          v158 = v154[1];
        }

        else
        {

          sub_FC0DC(&v157);
        }

        v154[10] = v185;
        v154[11] = v186;
        v154[12] = v187;
        v154[6] = v181;
        v154[7] = v182;
        v154[8] = v183;
        v154[9] = v184;
        v154[2] = v177;
        v154[3] = v178;
        v154[4] = v179;
        v154[5] = v180;
        v154[0] = v175;
        v154[1] = v176;
        *(&v154[24] + 8) = v168;
        *(&v154[25] + 8) = v169;
        *(&v154[20] + 8) = v164;
        *(&v154[21] + 8) = v165;
        *(&v154[22] + 8) = v166;
        *(&v154[23] + 8) = v167;
        *(&v154[16] + 8) = v160;
        *(&v154[17] + 8) = v161;
        *(&v154[18] + 8) = v162;
        *(&v154[19] + 8) = v163;
        *(&v154[15] + 8) = v159;
        *(&v154[13] + 8) = v157;
        *(&v154[14] + 8) = v158;
        v155[10] = v185;
        v155[11] = v186;
        v155[12] = v187;
        v155[6] = v181;
        v155[7] = v182;
        v155[8] = v183;
        v155[9] = v184;
        v155[2] = v177;
        v155[3] = v178;
        v155[4] = v179;
        v155[5] = v180;
        LOWORD(v154[13]) = v188;
        WORD4(v154[26]) = v170;
        v156 = v188;
        v155[0] = v175;
        v155[1] = v176;
        if (sub_68BD4(v155) == 1)
        {
          v153[10] = *(&v154[23] + 8);
          v153[11] = *(&v154[24] + 8);
          v153[12] = *(&v154[25] + 8);
          LOWORD(v153[13]) = WORD4(v154[26]);
          v153[6] = *(&v154[19] + 8);
          v153[7] = *(&v154[20] + 8);
          v153[8] = *(&v154[21] + 8);
          v153[9] = *(&v154[22] + 8);
          v153[2] = *(&v154[15] + 8);
          v153[3] = *(&v154[16] + 8);
          v153[4] = *(&v154[17] + 8);
          v153[5] = *(&v154[18] + 8);
          v153[0] = *(&v154[13] + 8);
          v153[1] = *(&v154[14] + 8);
          if (sub_68BD4(v153) == 1)
          {
            v149 = v185;
            v150 = v186;
            v151 = v187;
            v152 = v188;
            v145 = v181;
            v146 = v182;
            v147 = v183;
            v148 = v184;
            v141 = v177;
            v142 = v178;
            v143 = v179;
            v144 = v180;
            v139 = v175;
            v140 = v176;
            sub_488C8(&v139, &qword_186D88, &unk_12C870);
            v30 = 1;
            goto LABEL_16;
          }
        }

        else
        {
          v149 = v185;
          v150 = v186;
          v151 = v187;
          v145 = v181;
          v146 = v182;
          v147 = v183;
          v148 = v184;
          v141 = v177;
          v142 = v178;
          v143 = v179;
          v144 = v180;
          v139 = v175;
          v140 = v176;
          v135 = v185;
          v136 = v186;
          v137 = v187;
          v131 = v181;
          v132 = v182;
          v133 = v183;
          v134 = v184;
          v127 = v177;
          v128 = v178;
          v129 = v179;
          v130 = v180;
          v152 = v188;
          v138 = v188;
          v125 = v175;
          v126 = v176;
          v153[10] = *(&v154[23] + 8);
          v153[11] = *(&v154[24] + 8);
          v153[12] = *(&v154[25] + 8);
          LOWORD(v153[13]) = WORD4(v154[26]);
          v153[6] = *(&v154[19] + 8);
          v153[7] = *(&v154[20] + 8);
          v153[8] = *(&v154[21] + 8);
          v153[9] = *(&v154[22] + 8);
          v153[2] = *(&v154[15] + 8);
          v153[3] = *(&v154[16] + 8);
          v153[4] = *(&v154[17] + 8);
          v153[5] = *(&v154[18] + 8);
          v153[0] = *(&v154[13] + 8);
          v153[1] = *(&v154[14] + 8);
          if (sub_68BD4(v153) != 1)
          {
            v121 = *(&v154[23] + 8);
            v122 = *(&v154[24] + 8);
            v123 = *(&v154[25] + 8);
            v124 = WORD4(v154[26]);
            v117 = *(&v154[19] + 8);
            v118 = *(&v154[20] + 8);
            v119 = *(&v154[21] + 8);
            v120 = *(&v154[22] + 8);
            v113 = *(&v154[15] + 8);
            v114 = *(&v154[16] + 8);
            v115 = *(&v154[17] + 8);
            v116 = *(&v154[18] + 8);
            v111 = *(&v154[13] + 8);
            v112 = *(&v154[14] + 8);
            v31 = sub_479B4(&v139, v109, &qword_186D88, &unk_12C870);
            sub_6933C(v31, v32, v33);
            v30 = sub_117160();
            v107[10] = v121;
            v107[11] = v122;
            v107[12] = v123;
            v108 = v124;
            v107[6] = v117;
            v107[7] = v118;
            v107[8] = v119;
            v107[9] = v120;
            v107[2] = v113;
            v107[3] = v114;
            v107[4] = v115;
            v107[5] = v116;
            v107[0] = v111;
            v107[1] = v112;
            sub_68C44(v107);
            v109[10] = v135;
            v109[11] = v136;
            v109[12] = v137;
            v110 = v138;
            v109[6] = v131;
            v109[7] = v132;
            v109[8] = v133;
            v109[9] = v134;
            v109[2] = v127;
            v109[3] = v128;
            v109[4] = v129;
            v109[5] = v130;
            v109[0] = v125;
            v109[1] = v126;
            sub_68C44(v109);
            v121 = v185;
            v122 = v186;
            v123 = v187;
            v124 = v188;
            v117 = v181;
            v118 = v182;
            v119 = v183;
            v120 = v184;
            v113 = v177;
            v114 = v178;
            v115 = v179;
            v116 = v180;
            v111 = v175;
            v112 = v176;
            sub_488C8(&v111, &qword_186D88, &unk_12C870);
LABEL_16:
            if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v12 > -9.22337204e18)
            {
              v104 = v16;
              if (v12 < 9.22337204e18)
              {
                LODWORD(v103) = v30;
                v34 = v9 - v12;
                if (!__OFSUB__(v9, v12))
                {
                  v35 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
                  v36 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
                  v102 = (v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry);
                  sub_66DE0((v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v35);
                  v37 = (*(v36 + 48))(v35, v36);
                  if (v37 == 6 || (LOBYTE(v154[0]) = v37, LOBYTE(v153[0]) = 0, sub_68F60(v37, v38, v39), (sub_117160() & 1) == 0))
                  {
                    v40 = 0xE600000000000000;
                    v41 = 0x524548544F5FLL;
                  }

                  else
                  {
                    v40 = 0xE400000000000000;
                    v41 = 1347436895;
                  }

                  v42 = sub_E639C();
                  if (v42 == 7)
                  {
                    goto LABEL_25;
                  }

                  LOBYTE(v43) = v42;
                  if (!v34)
                  {
                    goto LABEL_36;
                  }

                  v44 = v34;
                  if ((v34 & 0x8000000000000000) == 0 || (v44 = -v34, !__OFSUB__(0, v34)))
                  {
                    v45 = [objc_opt_self() localizedStringWithPercentage:v44];
                    if (!v45)
                    {
LABEL_25:
                      (*(v3 + 8))(v6, v2);

LABEL_26:
                      sub_488C8(&v213, &qword_1835F0, &unk_12B240);
                      return;
                    }

                    v46 = v45;
                    v99 = sub_1171B0();
                    v100 = v47;

                    if (v34 < 1)
                    {
                      v71 = 0xD000000000000022;
                      if (v103)
                      {
                        *&v154[0] = 0xD000000000000029;
                        *(&v154[0] + 1) = 0x80000000001368C0;
                        v231._countAndFlagsBits = v41;
                        v231._object = v40;
                        sub_117220(v231);
                        v72 = sub_117170();

                        v48 = BatteryUILocalization(v72);

                        if (!v48)
                        {
LABEL_56:
                          __break(1u);
                          goto LABEL_57;
                        }

                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      if (v103)
                      {
                        *&v154[0] = 0xD00000000000002ALL;
                        *(&v154[0] + 1) = 0x8000000000136920;
                        v228._countAndFlagsBits = v41;
                        v228._object = v40;
                        sub_117220(v228);
                        v43 = sub_117170();

                        v48 = BatteryUILocalization(v43);

                        if (!v48)
                        {
                          __break(1u);
LABEL_36:
                          if ((v103 & 1) == 0)
                          {
                            *&v154[0] = 0xD000000000000022;
                            *(&v154[0] + 1) = 0x8000000000136950;
                            v230._countAndFlagsBits = v41;
                            v230._object = v40;
                            sub_117220(v230);
                            sub_E622C(*&v154[0], *(&v154[0] + 1), v43);

                            v59 = sub_117170();

                            v60 = BatteryUILocalization(v59);

                            if (v60)
                            {

                              sub_488C8(&v213, &qword_1835F0, &unk_12B240);
                              v103 = sub_1171B0();

                              sub_46F9C(&qword_182EF8, &unk_125990);
                              v61 = swift_allocObject();
                              *(v61 + 16) = xmmword_1246D0;
                              v63 = v102[3];
                              v62 = v102[4];
                              sub_66DE0(v102, v63);
                              v64 = (*(v62 + 16))(v63, v62);
                              v66 = v65;
                              *(v61 + 56) = &type metadata for String;
                              v68 = sub_53EE8(v64, v65, v67);
                              *(v61 + 32) = v64;
                              *(v61 + 40) = v66;
                              *(v61 + 96) = &type metadata for String;
                              *(v61 + 104) = v68;
                              v69 = v101;
                              *(v61 + 64) = v68;
                              *(v61 + 72) = v69;
                              *(v61 + 80) = v106;
                              v70 = *(v104() + 16);

                              *(v61 + 136) = &type metadata for Int;
                              *(v61 + 144) = &protocol witness table for Int;
                              *(v61 + 112) = v70 - 1;
                              goto LABEL_48;
                            }

                            goto LABEL_55;
                          }

                          *&v154[0] = 0xD000000000000028;
                          *(&v154[0] + 1) = 0x8000000000136980;
                          v229._countAndFlagsBits = v41;
                          v229._object = v40;
                          sub_117220(v229);
                          v49 = sub_117170();

                          v50 = BatteryUILocalization(v49);

                          if (v50)
                          {

                            sub_488C8(&v213, &qword_1835F0, &unk_12B240);
                            v106 = sub_1171B0();

                            sub_46F9C(&qword_182EF8, &unk_125990);
                            v51 = swift_allocObject();
                            *(v51 + 16) = xmmword_1248A0;
                            v53 = v102[3];
                            v52 = v102[4];
                            sub_66DE0(v102, v53);
                            v54 = (*(v52 + 16))(v53, v52);
                            v56 = v55;
                            *(v51 + 56) = &type metadata for String;
                            *(v51 + 64) = sub_53EE8(v54, v55, v57);
                            *(v51 + 32) = v54;
                            *(v51 + 40) = v56;
                            v58 = *(v104() + 16);

                            *(v51 + 96) = &type metadata for Int;
                            *(v51 + 104) = &protocol witness table for Int;
                            *(v51 + 72) = v58 - 1;
LABEL_48:
                            sub_117180();

                            (*(v3 + 8))(v6, v2);
                            return;
                          }

LABEL_54:
                          __break(1u);
LABEL_55:
                          __break(1u);
                          goto LABEL_56;
                        }

LABEL_43:

                        sub_488C8(&v213, &qword_1835F0, &unk_12B240);
                        v106 = sub_1171B0();

                        sub_46F9C(&qword_182EF8, &unk_125990);
                        v73 = swift_allocObject();
                        *(v73 + 16) = xmmword_1246D0;
                        v75 = v102[3];
                        v74 = v102[4];
                        sub_66DE0(v102, v75);
                        v76 = (*(v74 + 16))(v75, v74);
                        v78 = v77;
                        *(v73 + 56) = &type metadata for String;
                        v80 = sub_53EE8(v76, v77, v79);
                        *(v73 + 32) = v76;
                        *(v73 + 40) = v78;
                        *(v73 + 96) = &type metadata for String;
                        *(v73 + 104) = v80;
                        v82 = v99;
                        v81 = v100;
                        *(v73 + 64) = v80;
                        *(v73 + 72) = v82;
                        *(v73 + 80) = v81;
                        v83 = *(v104() + 16);

                        *(v73 + 136) = &type metadata for Int;
                        *(v73 + 144) = &protocol witness table for Int;
                        *(v73 + 112) = v83 - 1;
                        goto LABEL_48;
                      }

                      *&v154[0] = 0xD000000000000024;
                      *(&v154[0] + 1) = 0x80000000001368F0;
                      v232._countAndFlagsBits = v41;
                      v232._object = v40;
                      sub_117220(v232);
                      sub_E622C(*&v154[0], *(&v154[0] + 1), v43);
                      v41 = v84;

                      v43 = sub_117170();

                      v85 = BatteryUILocalization(v43);

                      if (v85)
                      {
LABEL_47:

                        sub_488C8(&v213, &qword_1835F0, &unk_12B240);
                        v103 = sub_1171B0();

                        sub_46F9C(&qword_182EF8, &unk_125990);
                        v87 = swift_allocObject();
                        *(v87 + 16) = xmmword_129E30;
                        v89 = v102[3];
                        v88 = v102[4];
                        sub_66DE0(v102, v89);
                        v90 = (*(v88 + 16))(v89, v88);
                        v92 = v91;
                        *(v87 + 56) = &type metadata for String;
                        v94 = sub_53EE8(v90, v91, v93);
                        *(v87 + 32) = v90;
                        *(v87 + 40) = v92;
                        *(v87 + 96) = &type metadata for String;
                        *(v87 + 104) = v94;
                        v96 = v99;
                        v95 = v100;
                        *(v87 + 64) = v94;
                        *(v87 + 72) = v96;
                        *(v87 + 80) = v95;
                        *(v87 + 136) = &type metadata for String;
                        *(v87 + 144) = v94;
                        v97 = v106;
                        *(v87 + 112) = v101;
                        *(v87 + 120) = v97;
                        v98 = *(v104() + 16);

                        *(v87 + 176) = &type metadata for Int;
                        *(v87 + 184) = &protocol witness table for Int;
                        *(v87 + 152) = v98 - 1;
                        goto LABEL_48;
                      }

                      __break(1u);
                    }

                    *&v154[0] = v71 + 1;
                    *(&v154[0] + 1) = 0x8000000000136890;
                    v233._countAndFlagsBits = v41;
                    v233._object = v40;
                    sub_117220(v233);
                    sub_E622C(*&v154[0], *(&v154[0] + 1), v43);

                    v86 = sub_117170();

                    v85 = BatteryUILocalization(v86);

                    if (!v85)
                    {
LABEL_57:
                      __break(1u);
                      return;
                    }

                    goto LABEL_47;
                  }

LABEL_53:
                  __break(1u);
                  goto LABEL_54;
                }

LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            __break(1u);
            goto LABEL_51;
          }

          v121 = v135;
          v122 = v136;
          v123 = v137;
          v124 = v138;
          v117 = v131;
          v118 = v132;
          v119 = v133;
          v120 = v134;
          v113 = v127;
          v114 = v128;
          v115 = v129;
          v116 = v130;
          v111 = v125;
          v112 = v126;
          sub_479B4(&v139, v109, &qword_186D88, &unk_12C870);
          sub_68C44(&v111);
        }

        memcpy(v153, v154, 0x1AAuLL);
        sub_488C8(v153, &qword_186D90, &unk_12C880);
        v30 = 0;
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_F9668(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_115760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_5D9C0(a1) & 1) == 0)
  {
    v34 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
    v35 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
    sub_66DE0((v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v34);
    v36 = (*(v35 + 48))(v34, v35);
    return sub_5E120(a2, a3, v36, a1);
  }

  v11 = *(*v3 + 392);
  v54 = v3;
  v11(v111);
  v115[8] = v111[10];
  v115[9] = v111[11];
  v115[10] = v111[12];
  LOWORD(v115[11]) = v112;
  v115[4] = v111[6];
  v115[5] = v111[7];
  v115[6] = v111[8];
  v115[7] = v111[9];
  v115[0] = v111[2];
  v115[1] = v111[3];
  v115[2] = v111[4];
  v115[3] = v111[5];
  v113 = v111[0];
  v114 = v111[1];
  if (sub_68BD4(&v113) == 1)
  {
    return 0;
  }

  v126 = v113;
  v127 = v114;
  v12 = *&v115[0];
  v13 = BYTE8(v115[0]);
  v123 = *(&v115[7] + 9);
  v124 = *(&v115[8] + 9);
  v125[0] = *(&v115[9] + 9);
  *(v125 + 9) = *(&v115[10] + 2);
  v120 = *(&v115[4] + 9);
  v121 = *(&v115[5] + 9);
  v122 = *(&v115[6] + 9);
  v116 = *(v115 + 9);
  v117 = *(&v115[1] + 9);
  v118 = *(&v115[2] + 9);
  v119 = *(&v115[3] + 9);
  v128[6] = v115[8];
  v128[7] = v115[9];
  v129 = v115[10];
  v130 = v115[11];
  v128[2] = v115[4];
  v128[3] = v115[5];
  v128[4] = v115[6];
  v128[5] = v115[7];
  v128[0] = v115[2];
  v128[1] = v115[3];
  if (sub_68BD4(v128) == 1 || (v130 & 1) != 0 || (v14 = [sub_8D8B4()[8] stringFromTimeInterval:*(&v129 + 1)]) == 0)
  {
    sub_488C8(v111, &qword_186D88, &unk_12C870);
    return 0;
  }

  v50 = v8;
  v52 = v13;
  v15 = v14;
  v51 = sub_1171B0();
  v53 = v16;

  v84[0] = v126;
  v84[1] = v127;
  v94 = v123;
  v95 = v124;
  v96[0] = v125[0];
  *(v96 + 9) = *(v125 + 9);
  v90 = v119;
  v91 = v120;
  v92 = v121;
  v93 = v122;
  v87 = v116;
  v88 = v117;
  v85 = v12;
  v17 = v52;
  v86 = v52;
  v89 = v118;
  v18 = (*(*v54 + 208))();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 216 * v19;
    v21 = *(v20 - 168);
    v56 = *(v20 - 184);
    v57 = v21;
    v22 = *(v20 - 152);
    v23 = *(v20 - 136);
    v24 = *(v20 - 104);
    v60 = *(v20 - 120);
    v61 = v24;
    v58 = v22;
    v59 = v23;
    v25 = *(v20 - 88);
    v26 = *(v20 - 72);
    v27 = *(v20 - 40);
    v64 = *(v20 - 56);
    v65 = v27;
    v62 = v25;
    v63 = v26;
    v28 = *(v20 - 24);
    v29 = *(v20 - 8);
    v30 = *(v20 + 8);
    v69 = *(v20 + 24);
    v67 = v29;
    v68 = v30;
    v66 = v28;
    memmove(&v70, (v20 - 184), 0xD2uLL);
    nullsub_4();
    sub_68C0C(&v56, &v55);

    v107 = v80;
    v108 = v81;
    v109 = v82;
    v110 = v83;
    v103 = v76;
    v104 = v77;
    v105 = v78;
    v106 = v79;
    v99 = v72;
    v100 = v73;
    v101 = v74;
    v102 = v75;
    v97 = v70;
    v98 = v71;
  }

  else
  {

    sub_FC0DC(&v97);
  }

  v66 = v107;
  v67 = v108;
  v68 = v109;
  v69 = v110;
  v62 = v103;
  v63 = v104;
  v64 = v105;
  v65 = v106;
  v58 = v99;
  v59 = v100;
  v60 = v101;
  v61 = v102;
  v56 = v97;
  v57 = v98;
  v38 = sub_FC104(v31, v32, v33);
  v39 = sub_64404(v84, &v56, &type metadata for PerAppBreakdownBucket, v38);
  v80 = v66;
  v81 = v67;
  v82 = v68;
  v83 = v69;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  v79 = v65;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v70 = v56;
  v71 = v57;
  sub_488C8(&v70, &qword_186D88, &unk_12C870);
  sub_488C8(v111, &qword_186D88, &unk_12C870);
  if ((v39 & 1) == 0)
  {
    v45 = v54;
    if ((v17 & 1) == 0)
    {
      sub_115700();
      v46 = *(v45 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
      v47 = *(v45 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
      sub_66DE0((v45 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v46);
      v48 = (*(v47 + 48))(v46, v47);
      sub_5E6D8(a2, a3, v51, v53, v10, v48, a1);
      v44 = v49;

      (*(v50 + 8))(v10, v7);
      return v44;
    }

    return 0;
  }

  v40 = *(v54 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
  v41 = *(v54 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
  sub_66DE0((v54 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v40);
  v42 = (*(v41 + 48))(v40, v41);
  sub_5E4D8(a2, a3, v51, v53, v42, a1);
  v44 = v43;

  return v44;
}

BOOL sub_F9CE4(uint64_t a1, double a2, double a3)
{
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115760();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_115710();
  v18 = v17;
  sub_115710();
  if (v18 < a2 || v19 > a3)
  {
    return 0;
  }

  v21 = v19;
  sub_1158A0();
  sub_115700();
  sub_115830();
  v22 = *(v11 + 8);
  v22(v13, v10);
  (*(v7 + 8))(v9, v6);
  sub_115710();
  v24 = v23;
  v22(v16, v10);
  return v21 <= v24;
}

BOOL sub_F9F18()
{
  (*(*v0 + 400))(v3);
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = v4;
  v5[2] = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v2 = v6;
  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  return *(&v2 + 1) >= 60.0 || *&v2 >= 60.0;
}

uint64_t sub_FA010()
{
  (*(*v0 + 400))(v3);
  v5[6] = v3[6];
  v5[7] = v3[7];
  v6 = v3[8];
  v7 = v4;
  v5[2] = v3[2];
  v5[3] = v3[3];
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v1 = v6;

  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  result = v1;
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *sub_FA0E8()
{
  v1 = (*(*v0 + 448))();
  if (v1)
  {
    return v1;
  }

  v3 = (*(*v0 + 208))();
  v4 = *(v3 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v24 = _swiftEmptyArrayStorage;
  sub_7122C(0, v4, 0);
  v5 = 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = *(v3 + v5 + 16);
    v25[0] = *(v3 + v5);
    v25[1] = v6;
    v7 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v9 = *(v3 + v5 + 80);
    v25[4] = *(v3 + v5 + 64);
    v25[5] = v9;
    v25[2] = v7;
    v25[3] = v8;
    v10 = *(v3 + v5 + 96);
    v11 = *(v3 + v5 + 112);
    v12 = *(v3 + v5 + 144);
    v25[8] = *(v3 + v5 + 128);
    v25[9] = v12;
    v25[6] = v10;
    v25[7] = v11;
    v13 = *(v3 + v5 + 160);
    v14 = *(v3 + v5 + 176);
    v15 = *(v3 + v5 + 192);
    v26 = *(v3 + v5 + 208);
    v25[11] = v14;
    v25[12] = v15;
    v25[10] = v13;
    sub_68C0C(v25, &v23);
    v16 = COERCE_DOUBLE(sub_62F94());
    v18 = v17;
    result = sub_68C44(v25);
    v20 = (v18 & 1) != 0 ? 0.0 : v16;
    if ((v18 & 1) == 0 && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      break;
    }

    if (v20 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v20 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v24 = v2;
    v22 = v2[2];
    v21 = v2[3];
    if (v22 >= v21 >> 1)
    {
      sub_7122C((v21 > 1), v22 + 1, 1);
      v2 = v24;
    }

    v2[2] = v22 + 1;
    v2[v22 + 4] = v20;
    v5 += 216;
    if (!--v4)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_FA300()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 392))(v14, v3);
  v25 = v14[10];
  v26 = v14[11];
  v27 = v14[12];
  v28 = v15;
  v21 = v14[6];
  v22 = v14[7];
  v23 = v14[8];
  v24 = v14[9];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  v16[0] = v14[0];
  v16[1] = v14[1];
  if (sub_68BD4(v16) == 1)
  {
    return 0;
  }

  v6 = BYTE8(v17);
  v7 = BYTE8(v18);
  sub_488C8(v14, &qword_186D88, &unk_12C870);
  if (v6 & 1) != 0 || (v7)
  {
    return 0;
  }

  sub_115700();
  v9 = sub_8D8B4()[7];
  isa = sub_1156B0().super.isa;
  v11 = [v9 stringFromDate:isa];

  v12 = sub_1171B0();
  (*(v2 + 8))(v5, v1);
  return v12;
}

uint64_t sub_FA530@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_186DA0, &qword_12C890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_46F9C(&qword_186DA8, &unk_12C898);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v53 = &v48 - v13;
  (*(*v1 + 392))(v93, v12);
  v102 = v93[10];
  v103 = v93[11];
  v104 = v93[12];
  v105 = v94;
  v98 = v93[6];
  v99 = v93[7];
  v100 = v93[8];
  v101 = v93[9];
  v95[2] = v93[2];
  v95[3] = v93[3];
  v96 = v93[4];
  v97 = v93[5];
  v95[0] = v93[0];
  v95[1] = v93[1];
  v14 = 0.0;
  if (sub_68BD4(v95) != 1)
  {
    v112 = v102;
    v113 = v103;
    v114 = v104;
    v115 = v105;
    v108 = v98;
    v109 = v99;
    v110 = v100;
    v111 = v101;
    v106 = v96;
    v107 = v97;
    sub_479B4(&v106, &v75, &qword_1835F0, &unk_12B240);
    sub_488C8(v93, &qword_186D88, &unk_12C870);
    v117 = v112;
    v118 = v113;
    v119 = v114;
    v120 = v115;
    v116[2] = v108;
    v116[3] = v109;
    v116[4] = v110;
    v116[5] = v111;
    v116[0] = v106;
    v116[1] = v107;
    if (sub_68BD4(v116) != 1)
    {
      v14 = *(&v117 + 1);
      sub_488C8(&v106, &qword_1835F0, &unk_12B240);
    }
  }

  v15 = [objc_opt_self() localizedStringWithPercentage:v14];
  if (!v15)
  {
    return (*(v9 + 56))(a1, 1, 1, v8);
  }

  v48 = v5;
  v49 = v4;
  v50 = v9;
  v51 = v8;
  v52 = a1;
  v16 = v15;
  v17 = sub_1171B0();
  v19 = v18;

  v20 = (*(*v2 + 256))();
  v21 = *((*(*v2 + 208))() + 16);

  if (v20 >= (v21 >> 1))
  {
    v22 = sub_116400();
  }

  else
  {
    v22 = sub_1163F0();
  }

  v24 = v22;
  v91 = 0;
  sub_FACD8(v17, v19, v2, &v75);
  v70 = v81;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v64 = v75;
  v65 = v76;
  v74[6] = v81;
  v74[7] = v82;
  v74[8] = v83;
  v74[9] = v84;
  v74[2] = v77;
  v74[3] = v78;
  v74[4] = v79;
  v74[5] = v80;
  v74[0] = v75;
  v74[1] = v76;
  sub_479B4(&v64, &v59, &qword_1838F0, &qword_1272F0);
  sub_488C8(v74, &qword_1838F0, &qword_1272F0);

  *&v90[103] = v70;
  *&v90[119] = v71;
  *&v90[135] = v72;
  *&v90[151] = v73;
  *&v90[39] = v66;
  *&v90[55] = v67;
  *&v90[71] = v68;
  *&v90[87] = v69;
  *&v90[7] = v64;
  *&v90[23] = v65;
  v25 = v91;
  v26 = sub_116600();
  sub_115FD0();
  *(&v60[7] + 1) = *&v90[112];
  *(&v60[8] + 1) = *&v90[128];
  *(&v60[9] + 1) = *&v90[144];
  *(&v60[3] + 1) = *&v90[48];
  *(&v60[4] + 1) = *&v90[64];
  *(&v60[5] + 1) = *&v90[80];
  *(&v60[6] + 1) = *&v90[96];
  *(v60 + 1) = *v90;
  *(&v60[1] + 1) = *&v90[16];
  v92 = 0;
  v59 = v24;
  LOBYTE(v60[0]) = v25;
  *&v60[10] = *&v90[159];
  *(&v60[2] + 1) = *&v90[32];
  BYTE8(v60[10]) = v26;
  *&v61 = v27;
  *(&v61 + 1) = v28;
  *&v62 = v29;
  *(&v62 + 1) = v30;
  v63 = 0;
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v2;
  type metadata accessor for CGSize(0);
  swift_retain_n();
  sub_116DA0();
  v33 = v55;
  v34 = v56;
  v35 = v57;
  v36 = v58;
  sub_46F9C(&qword_1838F8, &qword_1272F8);
  v37 = sub_71B78();
  sub_8EB40(v33, v34, v37, v7, v35, v36);

  v87 = v61;
  v88 = v62;
  v89 = v63;
  v83 = v60[7];
  v84 = v60[8];
  v85 = v60[9];
  v86 = v60[10];
  v79 = v60[3];
  v80 = v60[4];
  v81 = v60[5];
  v82 = v60[6];
  v75 = v59;
  v76 = v60[0];
  v77 = v60[1];
  v78 = v60[2];
  v38 = sub_488C8(&v75, &qword_1838F8, &qword_1272F8);
  (*(*v2 + 304))(v38);
  v40 = v39 + -2.0 + -8.0;
  v41 = v54;
  (*(v48 + 32))(v54, v7, v49);
  v42 = v51;
  v43 = &v41[*(v51 + 36)];
  *v43 = 0;
  *(v43 + 1) = v40;
  v44 = v41;
  v45 = v53;
  sub_FC200(v44, v53);
  v46 = v45;
  v47 = v52;
  sub_FC200(v46, v52);
  return (*(v50 + 56))(v47, 0, 1, v42);
}

uint64_t sub_FACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v101 = a4;
  v6 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = sub_116740();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v162 = a1;
  *(&v162 + 1) = a2;
  v16 = sub_4869C(v13, v14, v15);

  v100 = v16;
  v102 = sub_116900();
  v98 = v18;
  v99 = v17;
  v20 = v19;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title(_:), v9);
  v21 = enum case for Font.Design.rounded(_:);
  v22 = sub_116690();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v8, v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_1166E0();
  sub_488C8(v8, &qword_182FF8, &qword_124E30);
  (*(v10 + 8))(v12, v9);
  v24 = v96;
  v25 = v102;
  v26 = v99;
  v27 = sub_1168C0();
  v104 = v28;
  v103 = v29;

  sub_48928(v25, v26, v20 & 1);

  (*(*v24 + 392))(v146, v30);
  v158 = v146[10];
  v159 = v146[11];
  v160 = v146[12];
  v161 = v147;
  v154 = v146[6];
  v155 = v146[7];
  v156 = v146[8];
  v157 = v146[9];
  v150 = v146[2];
  v151 = v146[3];
  v152 = v146[4];
  v153 = v146[5];
  v148 = v146[0];
  v149 = v146[1];
  if (sub_68BD4(&v148) == 1 || (v172 = v158, v173 = v159, v174 = v160, v175 = v161, v168 = v154, v169 = v155, v170 = v156, v171 = v157, v164 = v150, v165 = v151, v166 = v152, v167 = v153, v162 = v148, v163 = v149, v31 = sub_62FFC(), sub_488C8(v146, &qword_186D88, &unk_12C870), (v31 & 1) == 0))
  {
    v32 = sub_116B30();
  }

  else
  {
    v32 = sub_116B80();
  }

  *&v113 = v32;
  v33 = v103;
  v34 = v104;
  v35 = sub_116890();
  v36 = v27;
  v38 = v37;
  v40 = v39;
  sub_48928(v36, v34, v33 & 1);

  sub_1166B0();
  v41 = sub_116810();
  v97 = v42;
  v98 = v41;
  v44 = v43;
  v99 = v45;
  sub_48928(v35, v38, v40 & 1);

  LODWORD(v104) = sub_116620();
  sub_115FD0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LODWORD(v102) = v44 & 1;
  v142 = v44 & 1;
  v139 = 0;
  v103 = sub_116610();
  v54 = sub_115FD0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v143 = 0;
  *&v113 = (*(*v24 + 464))(v54);
  *(&v113 + 1) = v63;
  v64 = sub_116900();
  v66 = v65;
  v68 = v67;
  sub_116700();
  v69 = sub_1168C0();
  v71 = v70;
  v73 = v72;

  sub_48928(v64, v66, v68 & 1);

  sub_1166B0();
  v74 = sub_116810();
  v76 = v75;
  LOBYTE(v64) = v77;
  sub_48928(v69, v71, v73 & 1);

  LODWORD(v113) = sub_1164D0();
  v78 = sub_116890();
  v80 = v79;
  LOBYTE(v69) = v81;
  v83 = v82;
  sub_48928(v74, v76, v64 & 1);

  v85 = v97;
  v84 = v98;
  *&v106 = v98;
  *(&v106 + 1) = v97;
  LOBYTE(v107) = v102;
  *(&v107 + 1) = *v141;
  DWORD1(v107) = *&v141[3];
  v86 = v99;
  *(&v107 + 1) = v99;
  LOBYTE(v108) = v104;
  *(&v108 + 1) = *v140;
  DWORD1(v108) = *&v140[3];
  *(&v108 + 1) = v47;
  *&v109 = v49;
  *(&v109 + 1) = v51;
  *&v110 = v53;
  BYTE8(v110) = 0;
  *(&v110 + 9) = *v145;
  HIDWORD(v110) = *&v145[3];
  LOBYTE(v111) = v103;
  DWORD1(v111) = *&v144[3];
  *(&v111 + 1) = *v144;
  *(&v111 + 1) = v56;
  *&v112[0] = v58;
  *(&v112[0] + 1) = v60;
  *&v112[1] = v62;
  BYTE8(v112[1]) = 0;
  v115 = v108;
  v116 = v109;
  v113 = v106;
  v114 = v107;
  *(v119 + 9) = *(v112 + 9);
  v118 = v111;
  v119[0] = v112[0];
  v117 = v110;
  v105 = v69 & 1;
  v87 = v106;
  v88 = v107;
  v89 = v109;
  v90 = v101;
  *(v101 + 32) = v108;
  *(v90 + 48) = v89;
  *v90 = v87;
  *(v90 + 16) = v88;
  v91 = v117;
  v92 = v118;
  v93 = v119[1];
  *(v90 + 96) = v119[0];
  *(v90 + 112) = v93;
  *(v90 + 64) = v91;
  *(v90 + 80) = v92;
  *(v90 + 128) = v78;
  *(v90 + 136) = v80;
  *(v90 + 144) = v69 & 1;
  *(v90 + 152) = v83;
  sub_479B4(&v106, v120, &qword_183CF8, &qword_1273E8);
  sub_488B8(v78, v80, v69 & 1);

  sub_48928(v78, v80, v69 & 1);

  v120[0] = v84;
  v120[1] = v85;
  v121 = v102;
  *v122 = *v141;
  *&v122[3] = *&v141[3];
  v123 = v86;
  v124 = v104;
  *v125 = *v140;
  *&v125[3] = *&v140[3];
  v126 = v47;
  v127 = v49;
  v128 = v51;
  v129 = v53;
  v130 = 0;
  *&v131[3] = *&v145[3];
  *v131 = *v145;
  v132 = v103;
  *&v133[3] = *&v144[3];
  *v133 = *v144;
  v134 = v56;
  v135 = v58;
  v136 = v60;
  v137 = v62;
  v138 = 0;
  return sub_488C8(v120, &qword_183CF8, &qword_1273E8);
}

uint64_t sub_FB604()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  v2 = sub_115760();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_6ACB4((v0 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry));
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  v4 = sub_115940();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t (*sub_FB884(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 320))();
  return sub_55900;
}

double sub_FBA08@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 392))(v10);
  v3 = v10[11];
  *(a1 + 160) = v10[10];
  *(a1 + 176) = v3;
  *(a1 + 192) = v10[12];
  *(a1 + 208) = v11;
  v4 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v4;
  v5 = v10[9];
  *(a1 + 128) = v10[8];
  *(a1 + 144) = v5;
  v6 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v6;
  v7 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v7;
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  return result;
}

uint64_t (*sub_FBB4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 176))();
  return sub_57B6C;
}

uint64_t sub_FBBE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v96 = v2;
  v97 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 144);
    v75 = *(v5 + 160);
    v76 = v8;
    v10 = *(v5 + 176);
    v77 = *(v5 + 192);
    v11 = *(v5 + 112);
    v12 = *(v5 + 80);
    v71 = *(v5 + 96);
    v72 = v11;
    v13 = *(v5 + 112);
    v14 = *(v5 + 144);
    v73 = *(v5 + 128);
    v74 = v14;
    v15 = *(v5 + 48);
    v16 = *(v5 + 16);
    v67 = *(v5 + 32);
    v68 = v15;
    v17 = *(v5 + 48);
    v18 = *(v5 + 80);
    v69 = *(v5 + 64);
    v70 = v18;
    v19 = *(v5 + 16);
    v66[0] = *v5;
    v66[1] = v19;
    v62 = v75;
    v63 = v10;
    v64 = *(v5 + 192);
    v58 = v71;
    v59 = v13;
    v60 = v73;
    v61 = v9;
    v54 = v67;
    v55 = v17;
    v56 = v69;
    v57 = v12;
    v52 = v66[0];
    v53 = v16;
    v20 = *(v6 + 176);
    v21 = *(v6 + 144);
    v88 = *(v6 + 160);
    v89 = v20;
    v22 = *(v6 + 176);
    v90 = *(v6 + 192);
    v23 = *(v6 + 112);
    v24 = *(v6 + 80);
    v84 = *(v6 + 96);
    v85 = v23;
    v25 = *(v6 + 112);
    v26 = *(v6 + 144);
    v86 = *(v6 + 128);
    v87 = v26;
    v27 = *(v6 + 48);
    v28 = *(v6 + 16);
    v80 = *(v6 + 32);
    v81 = v27;
    v29 = *(v6 + 48);
    v30 = *(v6 + 80);
    v82 = *(v6 + 64);
    v83 = v30;
    v31 = *(v6 + 16);
    v79[0] = *v6;
    v79[1] = v31;
    v48 = v88;
    v49 = v22;
    v50 = *(v6 + 192);
    v44 = v84;
    v45 = v25;
    v46 = v86;
    v47 = v21;
    v40 = v80;
    v41 = v29;
    v42 = v82;
    v43 = v24;
    v78 = *(v5 + 208);
    v65 = *(v5 + 208);
    v91 = *(v6 + 208);
    v51 = *(v6 + 208);
    v38 = v79[0];
    v39 = v28;
    sub_68C0C(v66, v37);
    v32 = sub_68C0C(v79, v37);
    sub_6933C(v32, v33, v34);
    v35 = sub_117160();
    v92[10] = v48;
    v92[11] = v49;
    v92[12] = v50;
    v93 = v51;
    v92[6] = v44;
    v92[7] = v45;
    v92[8] = v46;
    v92[9] = v47;
    v92[2] = v40;
    v92[3] = v41;
    v92[4] = v42;
    v92[5] = v43;
    v92[0] = v38;
    v92[1] = v39;
    sub_68C44(v92);
    v94[10] = v62;
    v94[11] = v63;
    v94[12] = v64;
    v94[6] = v58;
    v94[7] = v59;
    v94[8] = v60;
    v94[9] = v61;
    v94[2] = v54;
    v94[3] = v55;
    v94[4] = v56;
    v94[5] = v57;
    v94[0] = v52;
    v95 = v65;
    v94[1] = v53;
    sub_68C44(v94);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 216;
    v5 += 216;
  }

  return 1;
}

uint64_t sub_FBE6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_FBED8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_FBF30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
}

void sub_FBF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_FBFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_46F9C(&qword_183D00, &unk_1273F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 216);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

double sub_FC0DC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_FC104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186D98;
  if (!qword_186D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D98);
  }

  return result;
}

uint64_t sub_FC200(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_186DA8, &unk_12C898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_FC290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186DB0;
  if (!qword_186DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186DB0);
  }

  return result;
}

uint64_t sub_FC2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FC330(uint64_t a1)
{
  result = sub_FC2E4(&qword_186E48, type metadata accessor for AppDetailViewModel, &unk_12C8E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FC394(uint64_t a1)
{
  result = sub_115760();
  if (v2 <= 0x3F)
  {
    result = sub_115940();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_FC498()
{
  result = qword_187120;
  if (!qword_187120)
  {
    sub_47A1C(&qword_187128, &unk_12C980);
    sub_FC51C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187120);
  }

  return result;
}

unint64_t sub_FC51C()
{
  result = qword_187130;
  if (!qword_187130)
  {
    sub_47A1C(&qword_186DA8, &unk_12C898);
    sub_47A1C(&qword_1838F8, &qword_1272F8);
    sub_71B78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187130);
  }

  return result;
}

void sub_FC5F4(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_46F9C(&qword_187150, &qword_12C9B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v25 = sub_46F9C(&qword_187158, &qword_12C9B8);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v23 - v8;
  v24 = sub_46F9C(&qword_187160, &qword_12C9C0);
  __chkstk_darwin(v24);
  v11 = &v23 - v10;
  v27 = v2;
  sub_46F9C(&qword_187168, &qword_12C9C8);
  sub_48800(&qword_187170, &qword_187168, &qword_12C9C8, &protocol conformance descriptor for TupleView<A>);
  sub_116750();
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (v13)
  {
    v14 = sub_1171B0();
    v16 = v15;

    *&v29 = v14;
    *(&v29 + 1) = v16;
    v17 = sub_48800(&qword_187178, &qword_187150, &qword_12C9B0, &protocol conformance descriptor for List<A, B>);
    sub_4869C(v17, v18, v19);
    sub_116A40();

    (*(v4 + 8))(v6, v3);
    v30 = *(v2 + 8);
    v29 = *(v2 + 16);
    v20 = swift_allocObject();
    v21 = *(v2 + 16);
    *(v20 + 16) = *v2;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v2 + 32);
    (*(v7 + 32))(v11, v9, v25);
    v22 = &v11[*(v24 + 36)];
    *v22 = sub_FF44C;
    v22[1] = v20;
    v22[2] = 0;
    v22[3] = 0;
    sub_548D0(v11, v26, &qword_187160, &qword_12C9C0);

    sub_479B4(&v30, v28, &qword_187140, &qword_12C998);
    sub_479B4(&v29, v28, &qword_182D78, &qword_12C9A0);
  }

  else
  {
    __break(1u);
  }
}

void sub_FC9A8(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_46F9C(&qword_1871E8, &qword_12CB80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v80 = v76 - v5;
  v6 = sub_46F9C(&qword_1871F0, &qword_12CB88);
  __chkstk_darwin(v6 - 8);
  v84 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v76 - v9;
  v79 = sub_46F9C(&qword_1871F8, &qword_12CB90);
  __chkstk_darwin(v79);
  v12 = v76 - v11;
  v13 = sub_46F9C(&qword_187200, &qword_12CB98);
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin(v13);
  v78 = v76 - v14;
  v15 = sub_46F9C(&qword_187208, &qword_12CBA0);
  __chkstk_darwin(v15 - 8);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = v76 - v19;
  v20 = sub_46F9C(&qword_187210, &qword_12CBA8);
  v86 = *(v20 - 8);
  v87 = v20;
  __chkstk_darwin(v20);
  v85 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v76 - v23;
  v91 = a1;
  v25 = sub_117170();
  v26 = BatteryUILocalization(v25);

  if (v26)
  {
    v81 = v17;
    v27 = sub_1171B0();
    v29 = v28;

    *&v94 = v27;
    *(&v94 + 1) = v29;
    sub_4869C(v30, v31, v32);
    *&v94 = sub_116900();
    *(&v94 + 1) = v33;
    v95 = v34 & 1;
    v96 = v35;
    sub_46F9C(&qword_187218, &qword_12CBB0);
    v36 = sub_47A1C(&qword_187220, &qword_12CBB8);
    v39 = sub_101E00(v36, v37, v38);
    *&v93 = &type metadata for ShowAllUsageGraphSectionView;
    *(&v93 + 1) = v39;
    v40 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v93 = v36;
    *(&v93 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v89 = v24;
    sub_116E40();
    v93 = *a1;
    v94 = v93;
    sub_46F9C(&qword_187138, &qword_12C990);
    v42 = sub_116CC0();
    v43 = a1;
    v44 = (*(*v92 + 480))(v42);

    v45 = *(v44 + 16);

    v77 = v43;
    if (v45)
    {
      *v12 = sub_1163F0();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v46 = sub_46F9C(&qword_187230, &qword_12CBC0);
      sub_FD600(&v12[*(v46 + 44)]);
      v47 = sub_116620();
      v48 = sub_115FD0();
      v76[1] = v76;
      v49 = &v12[*(v79 + 36)];
      *v49 = v47;
      *(v49 + 1) = v50;
      *(v49 + 2) = v51;
      *(v49 + 3) = v52;
      *(v49 + 4) = v53;
      v49[40] = 0;
      __chkstk_darwin(v48);
      v76[-2] = v43;
      sub_46F9C(&qword_187238, &qword_12CBC8);
      sub_101E5C();
      sub_48800(&qword_187258, &qword_187238, &qword_12CBC8, &protocol conformance descriptor for TupleView<A>);
      v54 = v78;
      sub_116E40();
      v56 = v82;
      v55 = v83;
      v57 = v90;
      (*(v82 + 32))(v90, v54, v83);
      v40 = 0;
    }

    else
    {
      v57 = v90;
      v56 = v82;
      v55 = v83;
    }

    v58 = 1;
    (*(v56 + 56))(v57, v40, 1, v55);
    v93 = v94;
    v59 = sub_116CC0();
    v60 = (*(*v92 + 528))(v59);

    v61 = *(v60 + 16);

    if (v61)
    {
      __chkstk_darwin(v62);
      v76[-2] = v77;
      sub_46F9C(&qword_187260, &qword_12CBD8);
      sub_48800(&qword_187268, &qword_187260, &qword_12CBD8, &protocol conformance descriptor for TupleView<A>);
      v63 = v80;
      sub_116E50();
      (*(v4 + 32))(v10, v63, v3);
      v58 = 0;
    }

    v64 = v10;
    (*(v4 + 56))(v10, v58, 1, v3);
    v66 = v85;
    v65 = v86;
    v67 = *(v86 + 16);
    v68 = v87;
    v67(v85, v89, v87);
    v69 = v90;
    v70 = v81;
    sub_479B4(v90, v81, &qword_187208, &qword_12CBA0);
    v71 = v10;
    v72 = v84;
    sub_479B4(v71, v84, &qword_1871F0, &qword_12CB88);
    v73 = v88;
    v67(v88, v66, v68);
    v74 = sub_46F9C(&qword_187270, &qword_12CBE0);
    sub_479B4(v70, &v73[*(v74 + 48)], &qword_187208, &qword_12CBA0);
    sub_479B4(v72, &v73[*(v74 + 64)], &qword_1871F0, &qword_12CB88);
    sub_488C8(v64, &qword_1871F0, &qword_12CB88);
    sub_488C8(v69, &qword_187208, &qword_12CBA0);
    v75 = *(v65 + 8);
    v75(v89, v68);
    sub_488C8(v72, &qword_1871F0, &qword_12CB88);
    sub_488C8(v70, &qword_187208, &qword_12CBA0);
    v75(v66, v68);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FD344@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_46F9C(&qword_187220, &qword_12CBB8);
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v28 = *a1;
  sub_46F9C(&qword_187138, &qword_12C990);
  sub_116CE0();
  v7 = v33;
  v8 = v34;
  v33 = *a1;
  v9 = sub_116CC0();
  v10 = (*(*v28 + 368))(v9);
  v12 = v11;

  v33 = v7;
  v34 = v8;
  v35 = v10;
  v36 = v12;
  v31 = *a1;
  sub_116CE0();
  v13 = v28;
  v14 = v29;
  swift_getKeyPath();
  v31 = v13;
  v32 = v14;
  sub_46F9C(&qword_187180, &qword_12C9D0);
  sub_116D80();

  v15 = v28;
  v16 = v29;
  v17 = v30;

  v21 = sub_101E00(v18, v19, v20);
  sub_8EB40(v15, *(&v15 + 1), v21, v6, v16, v17);

  sub_116030();
  *&v33 = &type metadata for ShowAllUsageGraphSectionView;
  *(&v33 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_116A50();
  return (*(v26 + 8))(v6, v22);
}

void sub_FD600(uint64_t a1@<X8>)
{
  v94 = a1;
  v97 = sub_46F9C(&qword_185198, &qword_129BC0);
  __chkstk_darwin(v97);
  v93 = v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v90 = v86 - v3;
  __chkstk_darwin(v4);
  v92 = v86 - v5;
  __chkstk_darwin(v6);
  v8 = v86 - v7;
  v96 = sub_46F9C(&qword_187340, &qword_12CCD8);
  __chkstk_darwin(v96);
  v91 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = v86 - v11;
  __chkstk_darwin(v12);
  v98 = v86 - v13;
  v14 = sub_117170();
  v15 = BatteryUILocalization(v14);

  if (v15)
  {
    v16 = sub_1171B0();
    v18 = v17;

    v99 = v16;
    v100 = v18;
    v89 = sub_4869C(v19, v20, v21);
    v22 = sub_116900();
    v24 = v23;
    v26 = v25;
    sub_116680();
    v27 = sub_1168C0();
    v29 = v28;
    v31 = v30;

    sub_48928(v22, v24, v26 & 1);

    sub_116BB0();
    v32 = sub_116880();
    v34 = v33;
    v36 = v35;

    sub_48928(v27, v29, v31 & 1);

    sub_1166C0();
    v37 = sub_116810();
    v39 = v38;
    LOBYTE(v27) = v40;
    v42 = v41;
    sub_48928(v32, v34, v36 & 1);

    v43 = &v8[*(v97 + 36)];
    v88 = sub_46F9C(&qword_1851B0, &qword_12CCE0);
    v44 = *(v88 + 28);
    v45 = sub_1168B0();
    v46 = *(v45 - 8);
    v87 = *(v46 + 56);
    v86[1] = v46 + 56;
    v87(v43 + v44, 1, 1, v45);
    *v43 = swift_getKeyPath();
    *v8 = v37;
    *(v8 + 1) = v39;
    v8[16] = v27 & 1;
    *(v8 + 3) = v42;
    LOBYTE(v37) = sub_116620();
    sub_115FD0();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v95;
    sub_548D0(v8, v95, &qword_185198, &qword_129BC0);
    v56 = v55 + *(v96 + 36);
    *v56 = v37;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    sub_548D0(v55, v98, &qword_187340, &qword_12CCD8);
    v57 = sub_117170();
    v58 = BatteryUILocalization(v57);

    if (v58)
    {
      v59 = sub_1171B0();
      v61 = v60;

      v99 = v59;
      v100 = v61;
      v62 = sub_116900();
      v64 = v63;
      LOBYTE(v61) = v65;
      sub_116670();
      v66 = sub_1168C0();
      v68 = v67;
      v70 = v69;

      sub_48928(v62, v64, v61 & 1);

      sub_116BC0();
      v71 = sub_116880();
      v73 = v72;
      v75 = v74;
      v77 = v76;

      sub_48928(v66, v68, v70 & 1);

      v78 = v90;
      v79 = &v90[*(v97 + 36)];
      v87(v79 + *(v88 + 28), 1, 1, v45);
      *v79 = swift_getKeyPath();
      *v78 = v71;
      *(v78 + 8) = v73;
      *(v78 + 16) = v75 & 1;
      *(v78 + 24) = v77;
      v80 = v92;
      sub_548D0(v78, v92, &qword_185198, &qword_129BC0);
      v81 = v98;
      v82 = v91;
      sub_479B4(v98, v91, &qword_187340, &qword_12CCD8);
      v83 = v93;
      sub_479B4(v80, v93, &qword_185198, &qword_129BC0);
      v84 = v94;
      sub_479B4(v82, v94, &qword_187340, &qword_12CCD8);
      v85 = sub_46F9C(&qword_187348, &qword_12CD18);
      sub_479B4(v83, v84 + *(v85 + 48), &qword_185198, &qword_129BC0);
      sub_488C8(v80, &qword_185198, &qword_129BC0);
      sub_488C8(v81, &qword_187340, &qword_12CCD8);
      sub_488C8(v83, &qword_185198, &qword_129BC0);
      sub_488C8(v82, &qword_187340, &qword_12CCD8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_FDCA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v95 = a2;
  v83 = sub_46F9C(&qword_1872C0, &qword_12CC40);
  __chkstk_darwin(v83);
  v82 = &v81 - v2;
  v89 = sub_46F9C(&qword_1872C8, &qword_12CC48);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v81 - v3;
  v4 = sub_46F9C(&qword_1872D0, &qword_12CC50);
  __chkstk_darwin(v4 - 8);
  v94 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v81 - v7;
  v8 = sub_46F9C(&qword_1872D8, &qword_12CC58);
  v92 = *(v8 - 8);
  v93 = v8;
  __chkstk_darwin(v8);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v81 - v11;
  v85 = sub_1163D0();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  __chkstk_darwin(v14 - 8);
  v87 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v81 - v17;
  v18 = sub_117170();
  v19 = BatteryUILocalization(v18);

  if (v19)
  {
    v20 = sub_1171B0();
    v22 = v21;

    *&v100 = v20;
    *(&v100 + 1) = v22;
    sub_4869C(v23, v24, v25);
    v26 = sub_116900();
    v28 = v27;
    LOBYTE(v22) = v29;
    sub_116670();
    v30 = sub_1168C0();
    v32 = v31;
    v34 = v33;

    sub_48928(v26, v28, v22 & 1);

    sub_116BC0();
    v35 = sub_116880();
    v37 = v36;
    v39 = v38;

    sub_48928(v30, v32, v34 & 1);

    sub_1166B0();
    v40 = sub_116810();
    v42 = v41;
    LOBYTE(v26) = v43;
    v45 = v44;
    sub_48928(v35, v37, v39 & 1);

    *&v100 = v40;
    *(&v100 + 1) = v42;
    v101 = v26 & 1;
    v102 = v45;
    sub_1163C0();
    sub_116A90();
    (*(v84 + 8))(v13, v85);
    sub_48928(v40, v42, v26 & 1);

    v46 = v86;
    v47 = v86[1];
    *&v100 = *v86;
    v48 = v100;
    *(&v100 + 1) = v47;
    sub_46F9C(&qword_187138, &qword_12C990);
    v49 = sub_116CC0();
    v50 = (*(*v98[0] + 480))(v49);

    sub_101B5C(v50);
    v52 = v51;

    v99 = v52;
    KeyPath = swift_getKeyPath();
    v103[0] = v47;
    v100 = *(v46 + 1);
    v54 = swift_allocObject();
    v55 = *(v46 + 1);
    *(v54 + 16) = *v46;
    *(v54 + 32) = v55;
    *(v54 + 48) = v46[4];
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1022A0;
    *(v56 + 24) = v54;

    sub_479B4(v103, v98, &qword_187140, &qword_12C998);
    sub_479B4(&v100, v98, &qword_182D78, &qword_12C9A0);
    v57 = sub_46F9C(&qword_1872E0, &qword_12CC90);
    v58 = sub_46F9C(&qword_1872E8, &qword_12CC98);
    v59 = sub_48800(&qword_1872F0, &qword_1872E0, &qword_12CC90, &protocol conformance descriptor for [A]);
    v60 = sub_10235C();
    v61 = v96;
    sub_116E10(&v99, KeyPath, sub_1022E0, v56, v57, v58, v59, &protocol witness table for String, v60);
    v98[0] = v48;
    v98[1] = v47;
    v62 = sub_116CC0();
    v63 = (*(*v99 + 480))(v62);

    v64 = *(v63 + 16);

    if (v46[4] >= v64)
    {
      v71 = 1;
      v70 = v91;
    }

    else
    {
      v65 = swift_allocObject();
      v66 = *(v46 + 1);
      *(v65 + 16) = *v46;
      *(v65 + 32) = v66;
      *(v65 + 48) = v46[4];
      __chkstk_darwin(v65);

      sub_479B4(v103, v98, &qword_187140, &qword_12C998);
      sub_479B4(&v100, v98, &qword_182D78, &qword_12C9A0);
      sub_46F9C(&qword_183530, &qword_12CCB0);
      sub_5CC8C();
      v67 = v82;
      sub_116D00();
      v68 = (v67 + *(v83 + 36));
      *v68 = sub_FEDCC;
      v68[1] = 0;
      sub_102690();
      v69 = v81;
      sub_116AA0();
      sub_488C8(v67, &qword_1872C0, &qword_12CC40);
      v70 = v91;
      sub_548D0(v69, v91, &qword_1872C8, &qword_12CC48);
      v71 = 0;
    }

    (*(v88 + 56))(v70, v71, 1, v89);
    v72 = v87;
    sub_479B4(v97, v87, &qword_185EA8, &unk_12B1D0);
    v73 = v92;
    v74 = v93;
    v75 = *(v92 + 16);
    v76 = v90;
    v75(v90, v61, v93);
    v77 = v94;
    sub_479B4(v70, v94, &qword_1872D0, &qword_12CC50);
    v78 = v95;
    sub_479B4(v72, v95, &qword_185EA8, &unk_12B1D0);
    v79 = sub_46F9C(&qword_187310, &qword_12CCA8);
    v75((v78 + *(v79 + 48)), v76, v74);
    sub_479B4(v77, v78 + *(v79 + 64), &qword_1872D0, &qword_12CC50);
    sub_488C8(v70, &qword_1872D0, &qword_12CC50);
    v80 = *(v73 + 8);
    v80(v96, v74);
    sub_488C8(v97, &qword_185EA8, &unk_12B1D0);
    sub_488C8(v77, &qword_1872D0, &qword_12CC50);
    v80(v76, v74);
    sub_488C8(v72, &qword_185EA8, &unk_12B1D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FE760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5EAC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_FE7C4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v39 = sub_46F9C(&qword_187330, &qword_12CCC0);
  __chkstk_darwin(v39);
  v8 = &v36 - v7;
  v40 = sub_46F9C(&qword_187288, &unk_12CC20);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v36 - v9;
  v38 = sub_46F9C(&qword_187308, &qword_12CCA0);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  v56[0] = *a3;
  sub_46F9C(&qword_187138, &qword_12C990);
  v13 = sub_116CC0();
  v14 = (*(*v46 + 480))(v13);

  v15 = *(v14 + 16);

  v16 = *(a3 + 4);
  if (v16 < v15 && (v56[0] = a3[1], sub_46F9C(&qword_182D78, &qword_12C9A0), sub_116CC0(), v46 == 1))
  {
    if (v16 <= a1)
    {
      v24 = 1;
    }

    else
    {
      v17 = a2[7];
      v52 = a2[6];
      v53 = v17;
      v54 = a2[8];
      v55 = *(a2 + 72);
      v18 = a2[3];
      v48 = a2[2];
      v49 = v18;
      v19 = a2[5];
      v50 = a2[4];
      v51 = v19;
      v20 = a2[1];
      v46 = *a2;
      v47 = v20;
      v42 = *a3;
      sub_6B280(a2, v56);
      sub_116CC0();
      v44 = type metadata accessor for ShowAllUsageViewModel(0);
      v45 = &off_166FA0;
      v23 = sub_6A95C(v44, v21, v22);
      sub_EFAC0(&v46, 0, v43, 0, 0, 0, &type metadata for BreakdownAppInfo, v23, v56);
      sub_5EEBC();
      strcpy(&v46, "AppBreakdown");
      BYTE13(v46) = 0;
      HIWORD(v46) = -5120;
      sub_117220(v57);

      sub_46F9C(&qword_1872B0, &qword_12CC30);
      sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30, &unk_12C408);
      sub_116AA0();

      sub_488C8(v56, &qword_1872B0, &qword_12CC30);
      sub_548D0(v10, v12, &qword_187288, &unk_12CC20);
      v24 = 0;
    }

    (*(v37 + 56))(v12, v24, 1, v40);
    v32 = &qword_187308;
    v33 = &qword_12CCA0;
    sub_479B4(v12, v8, &qword_187308, &qword_12CCA0);
    swift_storeEnumTagMultiPayload();
    sub_1023E8();
    sub_102170();
    sub_116470();
    v34 = v12;
  }

  else
  {
    v25 = a2[7];
    v52 = a2[6];
    v53 = v25;
    v54 = a2[8];
    v55 = *(a2 + 72);
    v26 = a2[3];
    v48 = a2[2];
    v49 = v26;
    v27 = a2[5];
    v50 = a2[4];
    v51 = v27;
    v28 = a2[1];
    v46 = *a2;
    v47 = v28;
    v42 = *a3;
    sub_6B280(a2, v56);
    sub_116CC0();
    v44 = type metadata accessor for ShowAllUsageViewModel(0);
    v45 = &off_166FA0;
    v31 = sub_6A95C(v44, v29, v30);
    sub_EFAC0(&v46, 0, v43, 0, 0, 0, &type metadata for BreakdownAppInfo, v31, v56);
    sub_5EEBC();
    strcpy(&v46, "AppBreakdown");
    BYTE13(v46) = 0;
    HIWORD(v46) = -5120;
    sub_117220(v58);

    sub_46F9C(&qword_1872B0, &qword_12CC30);
    sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30, &unk_12C408);
    sub_116AA0();

    sub_488C8(v56, &qword_1872B0, &qword_12CC30);
    v32 = &qword_187288;
    v33 = &unk_12CC20;
    sub_479B4(v10, v8, &qword_187288, &unk_12CC20);
    swift_storeEnumTagMultiPayload();
    sub_1023E8();
    sub_102170();
    sub_116470();
    v34 = v10;
  }

  return sub_488C8(v34, v32, v33);
}

void sub_FEDF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v69 = a2;
  v2 = sub_46F9C(&qword_187278, &unk_12CBE8);
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v62 - v5;
  v64 = sub_1163D0();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  __chkstk_darwin(v8 - 8);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v62 - v11;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (v13)
  {
    v14 = sub_1171B0();
    v16 = v15;

    *&v75 = v14;
    *(&v75 + 1) = v16;
    sub_4869C(v17, v18, v19);
    v20 = sub_116900();
    v22 = v21;
    LOBYTE(v16) = v23;
    LODWORD(v75) = sub_1164D0();
    v24 = sub_116890();
    v26 = v25;
    v28 = v27;
    sub_48928(v20, v22, v16 & 1);

    sub_116670();
    v29 = sub_1168C0();
    v31 = v30;
    v33 = v32;

    sub_48928(v24, v26, v28 & 1);

    sub_1166B0();
    v34 = sub_116810();
    v36 = v35;
    LOBYTE(v20) = v37;
    v39 = v38;
    sub_48928(v29, v31, v33 & 1);

    *&v75 = v34;
    *(&v75 + 1) = v36;
    v76 = v20 & 1;
    v77 = v39;
    sub_1163C0();
    v40 = v72;
    sub_116A90();
    (*(v63 + 8))(v7, v64);
    sub_48928(v34, v36, v20 & 1);

    v41 = v65;
    v42 = v65[1];
    *&v75 = *v65;
    *(&v75 + 1) = v42;
    sub_46F9C(&qword_187138, &qword_12C990);
    v43 = sub_116CC0();
    v44 = (*(*v73[0] + 528))(v43);

    v74 = v44;
    KeyPath = swift_getKeyPath();
    v78 = v42;
    v75 = *(v41 + 1);
    v46 = swift_allocObject();
    v47 = *(v41 + 1);
    *(v46 + 16) = *v41;
    *(v46 + 32) = v47;
    *(v46 + 48) = v41[4];

    sub_479B4(&v78, v73, &qword_187140, &qword_12C998);
    sub_479B4(&v75, v73, &qword_182D78, &qword_12C9A0);
    v48 = sub_46F9C(&qword_187280, &qword_12CC18);
    v49 = sub_46F9C(&qword_187288, &unk_12CC20);
    v50 = sub_48800(&qword_187290, &qword_187280, &qword_12CC18, &protocol conformance descriptor for [A]);
    v51 = sub_1020F4();
    v52 = sub_102170();
    v53 = v67;
    sub_116E10(&v74, KeyPath, sub_101F1C, v46, v48, v49, v50, v51, v52);
    v54 = v66;
    sub_479B4(v40, v66, &qword_185EA8, &unk_12B1D0);
    v56 = v70;
    v55 = v71;
    v57 = *(v70 + 16);
    v58 = v68;
    v57(v68, v53, v71);
    v59 = v69;
    sub_479B4(v54, v69, &qword_185EA8, &unk_12B1D0);
    v60 = sub_46F9C(&qword_1872B8, &qword_12CC38);
    v57((v59 + *(v60 + 48)), v58, v55);
    v61 = *(v56 + 8);
    v61(v53, v55);
    sub_488C8(v72, &qword_185EA8, &unk_12B1D0);
    v61(v58, v55);
    sub_488C8(v54, &qword_185EA8, &unk_12B1D0);
  }

  else
  {
    __break(1u);
  }
}

double sub_FF44C()
{
  v4[4] = sub_FF548;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_83460;
  v4[3] = &unk_169ED0;
  v0 = _Block_copy(v4);
  v1 = @"com.apple.batteryui";
  AnalyticsSendEventLazy();
  _Block_release(v0);

  sub_A77E8(sub_FF614, 0);
  v2 = sub_1171E0();
  notify_post((v2 + 32));

  return result;
}

unint64_t sub_FF548()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000000136B20;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void *sub_FF630@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for ShowAllUsageViewModel(0);
  sub_116CB0();
  result = sub_116CB0();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = 5;
  return result;
}

void sub_FF6F0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_46F9C(&qword_1871A8, &qword_12CB30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v180[-v7];
  v194 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  __chkstk_darwin(v194);
  v193 = &v180[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_46F9C(&qword_1871B0, &qword_12CB38);
  v206 = *(v10 - 8);
  v207 = v10;
  __chkstk_darwin(v10);
  v195 = &v180[-v11];
  v12 = sub_46F9C(&qword_1871B8, &qword_12CB40);
  __chkstk_darwin(v12 - 8);
  v205 = &v180[-v13];
  v14 = type metadata accessor for BUIChartViewData(0);
  v203 = *(v14 - 8);
  v204 = v14;
  __chkstk_darwin(v14);
  v191 = &v180[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v192 = &v180[-v17];
  v18 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  __chkstk_darwin(v18 - 8);
  v20 = &v180[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v180[-v22];
  v202 = sub_46F9C(&qword_1871C8, &unk_12CB50);
  __chkstk_darwin(v202);
  v25 = &v180[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v215 = &v180[-v27];
  v28 = sub_116DE0();
  v200 = *(v28 - 8);
  v201 = v28;
  __chkstk_darwin(v28);
  v199 = &v180[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = sub_46F9C(&qword_184EA0, &qword_129180);
  __chkstk_darwin(v209);
  v211 = &v180[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v212 = &v180[-v32];
  __chkstk_darwin(v33);
  v213 = &v180[-v34];
  __chkstk_darwin(v35);
  v198 = &v180[-v36];
  __chkstk_darwin(v37);
  v214 = &v180[-v38];
  v39 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v39 - 8);
  v197 = &v180[-v40];
  v261 = *v2;
  v262 = *(v2 + 16);
  v222[0] = *v2;
  v210 = v2;
  *&v222[1] = *(v2 + 16);
  v208 = sub_46F9C(&qword_187180, &qword_12C9D0);
  v41 = sub_116D60();
  (*(**&v221[0] + 400))(v243, v41);

  v257 = v243[6];
  v258 = v243[7];
  v259[0] = v244[0];
  *(v259 + 9) = *(v244 + 9);
  v253 = v243[2];
  v254 = v243[3];
  v255 = v243[4];
  v256 = v243[5];
  v251 = v243[0];
  v252 = v243[1];
  if (sub_719E4(&v251) == 1)
  {
    goto LABEL_6;
  }

  v259[8] = v257;
  v259[9] = v258;
  v260[0] = v259[0];
  *(v260 + 9) = *(v259 + 9);
  v259[4] = v253;
  v259[5] = v254;
  v259[6] = v255;
  v259[7] = v256;
  v259[2] = v251;
  v259[3] = v252;
  v239[4] = v256;
  v240 = v257;
  v241 = v258;
  v239[0] = v252;
  v239[1] = v253;
  v242 = v259[0];
  v239[2] = v254;
  v239[3] = v255;
  if (!v256)
  {
    sub_488C8(v243, &qword_1838E8, &unk_1272E0);
LABEL_6:
    (*(v6 + 56))(v4, 1, 1, v5);
    return;
  }

  v184 = v5;
  v185 = v4;
  v228[6] = v257;
  v228[7] = v258;
  v229[0] = v259[0];
  *(v229 + 9) = *(v259 + 9);
  v228[2] = v253;
  v228[3] = v254;
  v228[4] = v255;
  v228[5] = v256;
  v228[0] = v251;
  v228[1] = v252;
  v222[0] = *v210;
  *&v222[1] = *(v210 + 16);
  v42 = v240;

  v43 = v42;
  v44 = sub_116D60();
  v45 = (*(**&v221[0] + 272))(v44);

  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 160 * v46);
    v48 = *(v47 - 8);
    v221[1] = *(v47 - 7);
    v221[0] = v48;
    v49 = *(v47 - 6);
    v50 = *(v47 - 5);
    v51 = *(v47 - 4);
    v221[5] = *(v47 - 3);
    v221[4] = v51;
    v221[3] = v50;
    v221[2] = v49;
    v52 = *(v47 - 2);
    v53 = *(v47 - 1);
    v54 = *v47;
    *(&v221[8] + 9) = *(v47 + 9);
    v221[8] = v54;
    v221[7] = v53;
    v221[6] = v52;
    memmove(v222, v47 - 8, 0x99uLL);
    nullsub_4();
    sub_68C74(v221, v220);

    v236 = v222[6];
    v237 = v222[7];
    v238[0] = v222[8];
    *(v238 + 9) = *(&v222[8] + 9);
    v232 = v222[2];
    v233 = v222[3];
    v234 = v222[4];
    v235 = v222[5];
    v230 = v222[0];
    v231 = v222[1];
  }

  else
  {

    sub_719C4(&v230);
  }

  v222[6] = v236;
  v222[7] = v237;
  v222[8] = v238[0];
  *(&v222[8] + 9) = *(v238 + 9);
  v222[2] = v232;
  v222[3] = v233;
  v222[4] = v234;
  v222[5] = v235;
  v222[0] = v230;
  v222[1] = v231;
  v58 = sub_6940C(v55, v56, v57);
  v59 = sub_62DA4(v228, v222, &type metadata for DayBreakdownBucket, v58);
  v226[6] = v222[6];
  v226[7] = v222[7];
  v227[0] = v222[8];
  *(v227 + 9) = *(&v222[8] + 9);
  v226[2] = v222[2];
  v226[3] = v222[3];
  v226[4] = v222[4];
  v226[5] = v222[5];
  v226[0] = v222[0];
  v226[1] = v222[1];
  sub_488C8(v226, &qword_1838E8, &unk_1272E0);
  v196 = v23;
  v182 = v8;
  v183 = v6;
  v189 = v25;
  v190 = v20;
  if (v59)
  {
    sub_63B20();
    if (v61)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_63828();
  if (!v61)
  {
LABEL_10:
    v60 = 0;
    v61 = 0xE000000000000000;
  }

LABEL_11:
  *&v222[0] = v60;
  *(&v222[0] + 1) = v61;
  sub_4869C(v60, v61, v62);
  v63 = sub_116900();
  v65 = v64;
  v67 = v66;
  sub_116670();
  v84 = sub_1168C0();
  v69 = v68;
  v71 = v70;

  sub_48928(v63, v65, v67 & 1);

  sub_1166C0();
  v72 = sub_116810();
  v74 = v73;
  v76 = v75;
  sub_48928(v84, v69, v71 & 1);

  v77 = enum case for Font.Design.rounded(_:);
  v78 = sub_116690();
  v79 = *(v78 - 8);
  v80 = v197;
  (*(v79 + 104))(v197, v77, v78);
  (*(v79 + 56))(v80, 0, 1, v78);
  v81 = sub_116800();
  v186 = v82;
  v187 = v81;
  LODWORD(v84) = v83;
  v188 = v85;
  sub_48928(v72, v74, v76 & 1);

  sub_488C8(v80, &qword_182FF8, &qword_124E30);
  v86 = v199;
  sub_116DD0();
  sub_46F9C(&qword_182E10, &qword_1247F0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1248A0;
  LOBYTE(v78) = sub_116610();
  *(v87 + 32) = v78;
  v88 = sub_116620();
  *(v87 + 33) = v88;
  v89 = sub_116640();
  sub_116640();
  if (sub_116640() != v78)
  {
    v89 = sub_116640();
  }

  sub_116640();
  v90 = sub_116640();
  v91 = v196;
  v92 = v210;
  if (v90 != v88)
  {
    v89 = sub_116640();
  }

  v93 = v198;
  (*(v200 + 32))(v198, v86, v201);
  v94 = v93 + *(v209 + 36);
  *v94 = v89;
  *(v94 + 8) = 0u;
  *(v94 + 24) = 0u;
  *(v94 + 40) = 1;
  sub_548D0(v93, v214, &qword_184EA0, &qword_129180);
  v222[0] = v261;
  *&v222[1] = v262;
  v95 = sub_116D60();
  (*(**&v221[0] + 320))(v95);

  sub_116EB0();
  sub_116070();
  v200 = v247;
  v201 = v245;
  v198 = v250;
  v199 = v249;
  v225 = 1;
  v224 = v246;
  v223 = v248;
  v222[0] = v261;
  *&v222[1] = v262;
  sub_116D90();
  *&v222[0] = *&v221[0];
  *(v222 + 8) = *(v221 + 8);
  v96 = type metadata accessor for ShowAllUsageViewModel(0);
  v97 = sub_102258(&qword_1871D0, type metadata accessor for ShowAllUsageViewModel, &unk_127308);
  v98 = v215;
  sub_7AA94(v222, v96, v97, v215);
  LOBYTE(v96) = sub_116620();
  sub_115FD0();
  v99 = &v98[*(v202 + 36)];
  *v99 = v96;
  *(v99 + 1) = v100;
  *(v99 + 2) = v101;
  *(v99 + 3) = v102;
  *(v99 + 4) = v103;
  v99[40] = 0;
  v222[0] = v261;
  *&v222[1] = v262;
  v104 = sub_116D60();
  v105 = v205;
  (*(**&v221[0] + 408))(v104);

  if ((*(v203 + 48))(v105, 1, v204) == 1)
  {
    sub_488C8(v105, &qword_1871B8, &qword_12CB40);
    v106 = 1;
    v107 = v207;
  }

  else
  {
    v108 = v192;
    sub_101A80(v105, v192);
    type metadata accessor for BUIChartViewModel(0);
    v109 = v191;
    sub_E8088(v108, v191);
    v110 = sub_AF42C(v109);
    v111.n128_f64[0] = *(v92 + 24) + 32.0;
    v112 = (*(*v110 + 440))(v111);

    v114 = v193;
    sub_D9090(v113, v193, v112);
    sub_46F9C(&qword_184160, &unk_127D70);
    sub_102258(&qword_1871E0, type metadata accessor for Battery24HrBatteryLevelChart, &unk_12BAB8);
    sub_7DDE8();
    v115 = v195;
    sub_116990();
    sub_101AE4(v114, type metadata accessor for Battery24HrBatteryLevelChart);
    LOBYTE(v114) = sub_116610();

    sub_101AE4(v108, type metadata accessor for BUIChartViewData);
    v107 = v207;
    v116 = v115 + *(v207 + 36);
    *v116 = v114;
    *(v116 + 8) = 0u;
    *(v116 + 24) = 0u;
    *(v116 + 40) = 1;
    sub_548D0(v115, v91, &qword_1871B0, &qword_12CB38);
    v106 = 0;
  }

  (*(v206 + 56))(v91, v106, 1, v107);
  v117 = v213;
  sub_116DD0();
  v118 = sub_116620();
  sub_115FD0();
  v119 = &v117[*(v209 + 36)];
  *v119 = v118;
  *(v119 + 1) = v120;
  *(v119 + 2) = v121;
  *(v119 + 3) = v122;
  *(v119 + 4) = v123;
  v119[40] = 0;
  v124 = sub_116320();
  v217 = 1;
  v222[0] = *v92;
  *&v222[1] = *(v92 + 16);
  sub_46F9C(&qword_187180, &qword_12C9D0);
  v125 = sub_116D60();
  (*(**&v221[0] + 400))(v279, v125);

  v298 = v279[6];
  v299 = v279[7];
  v300[0] = v280[0];
  *(v300 + 9) = *(v280 + 9);
  v294 = v279[2];
  v295 = v279[3];
  v296 = v279[4];
  v297 = v279[5];
  v292 = v279[0];
  v293 = v279[1];
  if (sub_719E4(&v292) == 1)
  {
    goto LABEL_31;
  }

  v302 = v297;
  v303 = v298;
  v304 = v299;
  v305 = v300[0];
  v301[0] = v293;
  v301[1] = v294;
  v301[2] = v295;
  v301[3] = v296;
  sub_479B4(v301, v222, &qword_1835C8, &qword_1259C0);
  sub_488C8(v279, &qword_1838E8, &unk_1272E0);
  if (!v302)
  {
    goto LABEL_31;
  }

  v126 = *(v301 + 1);
  sub_488C8(v301, &qword_1835C8, &qword_1259C0);
  v222[0] = *v92;
  *&v222[1] = *(v92 + 16);
  v127 = sub_116D60();
  (*(**&v221[0] + 400))(v281, v127);

  v289 = v281[6];
  v290 = v281[7];
  v291[0] = v282[0];
  *(v291 + 9) = *(v282 + 9);
  v285 = v281[2];
  v286 = v281[3];
  v287 = v281[4];
  v288 = v281[5];
  v283 = v281[0];
  v284 = v281[1];
  if (sub_719E4(&v283) == 1)
  {
    goto LABEL_31;
  }

  v307 = v288;
  v308 = v289;
  v309 = v290;
  v310 = v291[0];
  v306[0] = v284;
  v306[1] = v285;
  v306[2] = v286;
  v306[3] = v287;
  sub_479B4(v306, v222, &qword_1835C8, &qword_1259C0);
  sub_488C8(v281, &qword_1838E8, &unk_1272E0);
  if (!v307)
  {
    goto LABEL_31;
  }

  v128 = *v306;
  sub_488C8(v306, &qword_1835C8, &qword_1259C0);
  if (v126 + v128 > 86400.0)
  {
    v129 = 86400.0 / (v126 + v128);
    v126 = v126 * v129;
    v128 = v128 * v129;
  }

  v130 = sub_8D8B4();
  v131 = [v130[8] stringFromTimeInterval:v126];
  if (!v131)
  {
    goto LABEL_34;
  }

  v132 = v131;
  v133 = sub_1171B0();
  v135 = v134;

  v136 = AXDurationStringForDurationWithSeconds();
  if (!v136)
  {

LABEL_34:
    sub_D1C5C(v216);
    goto LABEL_37;
  }

  v181 = v84;
  v137 = v136;
  v210 = sub_1171B0();
  v139 = v138;

  if ([objc_opt_self() hasAOD])
  {
    v84 = sub_117170();
    v140 = BatteryUILocalization(v84);

    if (!v140)
    {
      __break(1u);
LABEL_31:
      sub_D1C20(v222);
LABEL_32:
      memcpy(v221, v222, 0x160uLL);
      memcpy(v218, v221, sizeof(v218));
      memcpy(v219, v221, sizeof(v219));
      sub_479B4(v218, v222, &qword_185EB0, &unk_12B1E0);
      sub_488C8(v219, &qword_185EB0, &unk_12B1E0);
      memcpy(v222 + 7, v218, 0x160uLL);
      v220[0] = v124;
      LOBYTE(v220[1]) = v217;
      memcpy(&v220[1] + 1, v222, 0x167uLL);
      v141 = v84 & 1;
      LOBYTE(v278[0]) = v84 & 1;
      v142 = v212;
      sub_479B4(v214, v212, &qword_184EA0, &qword_129180);
      LODWORD(v208) = v225;
      LODWORD(v209) = v224;
      LODWORD(v210) = v223;
      v143 = v189;
      sub_479B4(v215, v189, &qword_1871C8, &unk_12CB50);
      v144 = v190;
      sub_1019A8(v196, v190);
      v145 = v211;
      sub_479B4(v213, v211, &qword_184EA0, &qword_129180);
      memcpy(v216, v220, sizeof(v216));
      v146 = v182;
      v147 = v186;
      *v182 = v187;
      *(v146 + 8) = v147;
      *(v146 + 16) = v141;
      *(v146 + 24) = v188;
      v148 = sub_46F9C(&qword_1871D8, &unk_12CB60);
      sub_479B4(v142, v146 + v148[12], &qword_184EA0, &qword_129180);
      v149 = v146 + v148[16];
      *v149 = 0;
      *(v149 + 8) = v208;
      *(v149 + 16) = v201;
      *(v149 + 24) = v209;
      *(v149 + 32) = v200;
      *(v149 + 40) = v210;
      v150 = v198;
      *(v149 + 48) = v199;
      *(v149 + 56) = v150;
      sub_479B4(v143, v146 + v148[20], &qword_1871C8, &unk_12CB50);
      sub_1019A8(v144, v146 + v148[24]);
      sub_479B4(v145, v146 + v148[28], &qword_184EA0, &qword_129180);
      v151 = v148[32];
      memcpy(v221, v216, 0x178uLL);
      v152 = v186;
      v153 = v187;
      sub_488B8(v187, v186, v141);

      sub_479B4(v220, v222, &qword_185ED0, &qword_12B1F8);
      sub_488B8(v153, v152, v141);

      sub_479B4(v221, v222, &qword_185ED0, &qword_12B1F8);
      sub_488C8(v239, &qword_1835C8, &qword_1259C0);
      sub_488C8(v243, &qword_1838E8, &unk_1272E0);
      sub_48928(v153, v152, v141);

      sub_488C8(v220, &qword_185ED0, &qword_12B1F8);
      memcpy((v146 + v151), v221, 0x178uLL);
      sub_488C8(v213, &qword_184EA0, &qword_129180);
      sub_101A18(v196);
      sub_488C8(v215, &qword_1871C8, &unk_12CB50);
      sub_488C8(v214, &qword_184EA0, &qword_129180);
      memcpy(v222, v216, 0x178uLL);
      sub_488C8(v222, &qword_185ED0, &qword_12B1F8);
      sub_488C8(v211, &qword_184EA0, &qword_129180);
      sub_101A18(v190);
      sub_488C8(v189, &qword_1871C8, &unk_12CB50);
      sub_488C8(v212, &qword_184EA0, &qword_129180);
      sub_48928(v153, v152, v278[0]);

      v154 = v185;
      sub_548D0(v146, v185, &qword_1871A8, &qword_12CB30);
      (*(v183 + 56))(v154, 0, 1, v184);
      return;
    }
  }

  else
  {
    v155 = sub_117170();
    v140 = BatteryUILocalization(v155);

    if (!v140)
    {
      __break(1u);
      goto LABEL_48;
    }
  }

  v84 = sub_1171B0();
  v157 = v156;

  v158 = [objc_opt_self() secondaryLabelColor];
  v159 = sub_116BE0();
  v160 = sub_CF268(v159);
  sub_CE6E0(v84, v157, v133, v135, v210, v139, v159, v160, v263);
  sub_116E80();
  sub_116190();
  v222[8] = v263[8];
  v222[9] = v263[9];
  v222[10] = v263[10];
  v222[4] = v263[4];
  v222[5] = v263[5];
  v222[7] = v263[7];
  v222[6] = v263[6];
  v222[0] = v263[0];
  v222[1] = v263[1];
  v222[3] = v263[3];
  v222[2] = v263[2];
  nullsub_4();
  *&v216[128] = v222[8];
  *&v216[144] = v222[9];
  *&v216[160] = v222[10];
  *&v216[64] = v222[4];
  *&v216[80] = v222[5];
  *&v216[96] = v222[6];
  *&v216[112] = v222[7];
  *v216 = v222[0];
  *&v216[16] = v222[1];
  *&v216[32] = v222[2];
  *&v216[48] = v222[3];
  LODWORD(v84) = v181;
LABEL_37:
  v161 = [v130[8] stringFromTimeInterval:v128];
  if (!v161)
  {
LABEL_43:
    sub_D1C5C(v219);
LABEL_46:
    v273 = *&v216[128];
    v274 = *&v216[144];
    v275 = *&v216[160];
    v269 = *&v216[64];
    v270 = *&v216[80];
    v272 = *&v216[112];
    v271 = *&v216[96];
    v265 = *v216;
    v266 = *&v216[16];
    v268 = *&v216[48];
    v267 = *&v216[32];
    v278[8] = v219[8];
    v278[9] = v219[9];
    v278[10] = v219[10];
    v278[4] = v219[4];
    v278[5] = v219[5];
    v278[7] = v219[7];
    v278[6] = v219[6];
    v278[0] = v219[0];
    v278[1] = v219[1];
    v278[3] = v219[3];
    v278[2] = v219[2];
    v276[8] = *&v216[128];
    v276[9] = *&v216[144];
    v276[10] = *&v216[160];
    v276[4] = *&v216[64];
    v276[5] = *&v216[80];
    v276[7] = *&v216[112];
    v276[6] = *&v216[96];
    v276[0] = *v216;
    v276[1] = *&v216[16];
    v276[3] = *&v216[48];
    v276[2] = *&v216[32];
    v220[8] = *&v216[128];
    v220[9] = *&v216[144];
    v220[4] = *&v216[64];
    v220[5] = *&v216[80];
    v220[7] = *&v216[112];
    v220[6] = *&v216[96];
    v220[0] = *v216;
    v220[1] = *&v216[16];
    v220[3] = *&v216[48];
    v220[2] = *&v216[32];
    v277[8] = v219[8];
    v277[9] = v219[9];
    v277[10] = v219[10];
    v277[4] = v219[4];
    v277[5] = v219[5];
    v277[7] = v219[7];
    v277[6] = v219[6];
    v277[0] = v219[0];
    v277[1] = v219[1];
    v277[3] = v219[3];
    v277[2] = v219[2];
    v220[18] = v219[7];
    v220[19] = v219[8];
    v220[20] = v219[9];
    v220[21] = v219[10];
    v220[14] = v219[3];
    v220[15] = v219[4];
    v220[16] = v219[5];
    v220[17] = v219[6];
    v220[10] = *&v216[160];
    v220[11] = v219[0];
    v220[12] = v219[1];
    v220[13] = v219[2];
    sub_479B4(v276, v222, &qword_185EE0, &unk_12CB70);
    sub_479B4(v277, v222, &qword_185EE0, &unk_12CB70);
    sub_488C8(v278, &qword_185EE0, &unk_12CB70);
    v218[8] = v273;
    v218[9] = v274;
    v218[10] = v275;
    v218[4] = v269;
    v218[5] = v270;
    v218[6] = v271;
    v218[7] = v272;
    v218[0] = v265;
    v218[1] = v266;
    v218[2] = v267;
    v218[3] = v268;
    sub_488C8(v218, &qword_185EE0, &unk_12CB70);
    memcpy(v221, v220, 0x160uLL);
    nullsub_4();
    memcpy(v222, v221, 0x160uLL);
    goto LABEL_32;
  }

  v162 = v161;
  v163 = sub_1171B0();
  v165 = v164;

  v166 = AXDurationStringForDurationWithSeconds();
  if (!v166)
  {
LABEL_42:

    goto LABEL_43;
  }

  v167 = v166;
  v168 = sub_1171B0();
  v170 = v169;

  v171 = [objc_opt_self() hasAOD];
  v181 = v84;
  if (v171)
  {
    v172 = sub_117170();
    v173 = BatteryUILocalization(v172);

    if (!v173)
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_45:
    v175 = sub_1171B0();
    v84 = v176;

    v177 = [objc_opt_self() secondaryLabelColor];
    v178 = sub_116BE0();
    v179 = sub_CF268(v178);
    sub_CE6E0(v175, v84, v163, v165, v168, v170, v178, v179, v264);
    sub_116E80();
    sub_116190();
    v222[8] = v264[8];
    v222[9] = v264[9];
    v222[10] = v264[10];
    v222[4] = v264[4];
    v222[5] = v264[5];
    v222[7] = v264[7];
    v222[6] = v264[6];
    v222[0] = v264[0];
    v222[1] = v264[1];
    v222[3] = v264[3];
    v222[2] = v264[2];
    nullsub_4();
    v219[8] = v222[8];
    v219[9] = v222[9];
    v219[10] = v222[10];
    v219[4] = v222[4];
    v219[5] = v222[5];
    v219[7] = v222[7];
    v219[6] = v222[6];
    v219[0] = v222[0];
    v219[1] = v222[1];
    v219[3] = v222[3];
    v219[2] = v222[2];
    LOBYTE(v84) = v181;
    goto LABEL_46;
  }

  v174 = sub_117170();
  v173 = BatteryUILocalization(v174);

  if (v173)
  {
    goto LABEL_45;
  }

LABEL_48:
  __break(1u);
}

void sub_101750(uint64_t a2@<X8>)
{
  *a2 = sub_1163F0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_46F9C(&qword_187188, &qword_12C9D8);
  sub_FF6F0(v2);
}

uint64_t sub_1017A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1017E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101854()
{
  result = qword_187190;
  if (!qword_187190)
  {
    sub_47A1C(&qword_187160, &qword_12C9C0);
    sub_47A1C(&qword_187150, &qword_12C9B0);
    v3 = sub_48800(&qword_187178, &qword_187150, &qword_12C9B0, &protocol conformance descriptor for List<A, B>);
    sub_4869C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187190);
  }

  return result;
}

uint64_t sub_1019A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101A18(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_101B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = a1 + 32;
    v34 = *(a1 + 16);
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = *(v6 + 112);
      v9 = *(v6 + 80);
      v41 = *(v6 + 96);
      v42 = v8;
      v10 = *(v6 + 112);
      v43 = *(v6 + 128);
      v11 = *(v6 + 48);
      v12 = *(v6 + 16);
      v37 = *(v6 + 32);
      v38 = v11;
      v13 = *(v6 + 48);
      v14 = *(v6 + 80);
      v39 = *(v6 + 64);
      v40 = v14;
      v15 = *(v6 + 16);
      v36[0] = *v6;
      v36[1] = v15;
      v51 = v41;
      v52 = v10;
      v53 = *(v6 + 128);
      v47 = v37;
      v48 = v13;
      v49 = v39;
      v50 = v9;
      v44 = *(v6 + 144);
      v54 = *(v6 + 144);
      v45 = v36[0];
      v46 = v12;
      if (v4)
      {
        sub_6B280(v36, v35);
        v2 = v7;
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v7[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        sub_46F9C(&qword_187338, &unk_12CCC8);
        v2 = swift_allocObject();
        v20 = (j__malloc_size(v2) - 32) / 160;
        v2[2] = v19;
        v2[3] = 2 * v20;
        v21 = v7[3] >> 1;
        v22 = 20 * v21;
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        v5 = &v2[20 * v21 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v22 + 4] && v2 == v7)
          {
            sub_6B280(v36, v35);
          }

          else
          {
            sub_6B280(v36, v35);
            memmove(v2 + 4, v7 + 4, v22 * 8);
          }

          v7[2] = 0;

          v1 = v34;
          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }
        }

        else
        {
          sub_6B280(v36, v35);

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v24 = v51;
      v25 = v52;
      v26 = v53;
      *(v5 + 76) = v54;
      v27 = v45;
      *(v5 + 3) = v46;
      *(v5 + 1) = v27;
      v28 = v47;
      v29 = v48;
      v30 = v49;
      *(v5 + 11) = v50;
      *(v5 + 9) = v30;
      *(v5 + 7) = v29;
      *(v5 + 5) = v28;
      *(v5 + 17) = v26;
      *(v5 + 15) = v25;
      *(v5 + 13) = v24;
      v5 += 20;
      v6 += 152;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v31 = v2[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v16 = __OFSUB__(v32, v4);
    v33 = v32 - v4;
    if (v16)
    {
      goto LABEL_30;
    }

    v2[2] = v33;
  }
}

unint64_t sub_101E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_187228;
  if (!qword_187228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187228);
  }

  return result;
}

unint64_t sub_101E5C()
{
  result = qword_187240;
  if (!qword_187240)
  {
    sub_47A1C(&qword_1871F8, &qword_12CB90);
    sub_48800(&qword_187248, &qword_187250, &qword_12CBD0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187240);
  }

  return result;
}

uint64_t sub_101F1C(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v24 = *(a1 + 96);
  v25 = v1;
  v3 = *(a1 + 112);
  v26 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v20 = *(a1 + 32);
  v21 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v16[6] = v24;
  v16[7] = v3;
  v16[8] = *(a1 + 128);
  v16[2] = v20;
  v16[3] = v6;
  v16[4] = v22;
  v16[5] = v2;
  v27 = *(a1 + 144);
  v17 = *(a1 + 144);
  v16[0] = v19[0];
  v16[1] = v5;
  sub_6B280(v19, v18);
  sub_46F9C(&qword_187138, &qword_12C990);
  sub_116CC0();
  v14 = type metadata accessor for ShowAllUsageViewModel(0);
  v15 = &off_166FA0;
  v11 = sub_6A95C(v14, v9, v10);
  sub_EFAC0(v16, 0, v13, 0, 0, 0, &type metadata for BreakdownAppInfo, v11, v18);
  sub_5EEBC();
  *&v16[0] = 0x72427070416E6F4ELL;
  *(&v16[0] + 1) = 0xEF6E776F646B6165;
  sub_117220(v28);

  sub_46F9C(&qword_1872B0, &qword_12CC30);
  sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30, &unk_12C408);
  sub_116AA0();

  return sub_488C8(v18, &qword_1872B0, &qword_12CC30);
}

unint64_t sub_1020F4()
{
  result = qword_187298;
  if (!qword_187298)
  {
    sub_47A1C(&qword_185118, &qword_129A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187298);
  }

  return result;
}

unint64_t sub_102170()
{
  result = qword_1872A0;
  if (!qword_1872A0)
  {
    sub_47A1C(&qword_187288, &unk_12CC20);
    sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30, &unk_12C408);
    sub_102258(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1872A0);
  }

  return result;
}

uint64_t sub_102258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1022A8()
{

  return swift_deallocObject();
}

uint64_t sub_1022E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 15);
  v9[6] = *(a1 + 13);
  v9[7] = v4;
  v9[8] = *(a1 + 17);
  v10 = *(a1 + 76);
  v5 = *(a1 + 7);
  v9[2] = *(a1 + 5);
  v9[3] = v5;
  v6 = *(a1 + 11);
  v9[4] = *(a1 + 9);
  v9[5] = v6;
  v7 = *(a1 + 3);
  v9[0] = *(a1 + 1);
  v9[1] = v7;
  return v2(v3, v9);
}

unint64_t sub_10235C()
{
  result = qword_1872F8;
  if (!qword_1872F8)
  {
    sub_47A1C(&qword_1872E8, &qword_12CC98);
    sub_1023E8();
    sub_102170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1872F8);
  }

  return result;
}

unint64_t sub_1023E8()
{
  result = qword_187300;
  if (!qword_187300)
  {
    sub_47A1C(&qword_187308, &qword_12CCA0);
    sub_102170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187300);
  }

  return result;
}

uint64_t sub_10246C()
{

  return swift_deallocObject();
}

double sub_1024B4()
{
  sub_116F00();
  sub_1160D0();

  return result;
}

void sub_102530(uint64_t a1@<X8>)
{
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  sub_116CC0();
  if (v20 == 1)
  {
    v2 = sub_117170();
    v3 = BatteryUILocalization(v2);

    if (v3)
    {
LABEL_5:
      sub_1171B0();

      sub_4869C(v5, v6, v7);
      v8 = sub_116900();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = sub_116660();
      sub_115FD0();
      *a1 = v8;
      *(a1 + 8) = v10;
      *(a1 + 16) = v12 & 1;
      *(a1 + 24) = v14;
      *(a1 + 32) = v15;
      *(a1 + 40) = v16;
      *(a1 + 48) = v17;
      *(a1 + 56) = v18;
      *(a1 + 64) = v19;
      *(a1 + 72) = 0;
      return;
    }

    __break(1u);
  }

  v4 = sub_117170();
  v3 = BatteryUILocalization(v4);

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

unint64_t sub_102690()
{
  result = qword_187318;
  if (!qword_187318)
  {
    sub_47A1C(&qword_1872C0, &qword_12CC40);
    sub_48800(&qword_187320, &qword_187328, &qword_12CCB8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187318);
  }

  return result;
}

uint64_t sub_102748()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 16);
  v3[1] = *(v1 + 16);
  v5 = *(&v4 + 1);
  sub_479B4(&v5, v3, &qword_187148, &qword_12C9A8);
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  sub_116CC0();
  v3[0] = v4;
  sub_116CD0();
  return sub_488C8(&v4, &qword_182D78, &qword_12C9A0);
}

uint64_t sub_10282C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v120 = a2;
  v116 = a1;
  v118 = *(a1 - 8);
  v119 = *(v118 + 64);
  __chkstk_darwin(a1);
  v117 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v4 - 8);
  v115 = &v75 - v5;
  v110 = *(a1 + 16);
  v114 = *(v110 - 8);
  __chkstk_darwin(v6);
  v113 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = sub_1173A0();
  v9 = sub_47A1C(&qword_187350, &qword_12CD58);
  WitnessTable = swift_getWitnessTable();
  v128 = v8;
  v129 = &type metadata for Int;
  v130 = v9;
  v131 = WitnessTable;
  v132 = &protocol witness table for Int;
  v108 = sub_116E30();
  v127 = sub_103558();
  v107 = swift_getWitnessTable();
  v11 = sub_115DD0();
  v109 = *(v11 - 8);
  __chkstk_darwin(v11);
  v101 = &v75 - v12;
  v13 = sub_47A1C(&qword_184160, &unk_127D70);
  v14 = swift_getWitnessTable();
  v15 = sub_7DDE8();
  v128 = v11;
  v129 = v13;
  v97 = v11;
  v100 = v13;
  v130 = v14;
  v131 = v15;
  v99 = v14;
  v16 = v15;
  v98 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v102 = &v75 - v18;
  v19 = sub_47A1C(&qword_187370, &unk_12CD78);
  v128 = v11;
  v129 = v13;
  v130 = v14;
  v131 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_48800(&qword_187378, &qword_187370, &unk_12CD78, &protocol conformance descriptor for AxisMarks<A>);
  v82 = OpaqueTypeMetadata2;
  v128 = OpaqueTypeMetadata2;
  v129 = v19;
  v85 = v19;
  v130 = OpaqueTypeConformance2;
  v131 = v21;
  v22 = OpaqueTypeConformance2;
  v84 = OpaqueTypeConformance2;
  v23 = v21;
  v83 = v21;
  v24 = swift_getOpaqueTypeMetadata2();
  v106 = *(v24 - 8);
  __chkstk_darwin(v24);
  v86 = &v75 - v25;
  v26 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v128 = OpaqueTypeMetadata2;
  v129 = v19;
  v130 = v22;
  v131 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_7E000();
  v128 = v24;
  v129 = v26;
  v87 = v26;
  v130 = v27;
  v131 = v28;
  v29 = v27;
  v89 = v27;
  v88 = v28;
  v30 = swift_getOpaqueTypeMetadata2();
  v104 = *(v30 - 8);
  __chkstk_darwin(v30);
  v91 = &v75 - v31;
  v32 = sub_47A1C(&qword_187380, &qword_12CD88);
  v128 = v24;
  v129 = v26;
  v130 = v29;
  v131 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_48800(&qword_187388, &qword_187380, &qword_12CD88, &protocol conformance descriptor for AxisMarks<A>);
  v128 = v30;
  v129 = v32;
  v35 = v30;
  v76 = v30;
  v79 = v32;
  v130 = v33;
  v131 = v34;
  v36 = v33;
  v78 = v33;
  v37 = v34;
  v77 = v34;
  v38 = swift_getOpaqueTypeMetadata2();
  v92 = v38;
  v103 = *(v38 - 8);
  __chkstk_darwin(v38);
  v80 = &v75 - v39;
  v40 = sub_47A1C(&qword_185150, &qword_12CD90);
  v95 = v40;
  v128 = v35;
  v129 = v32;
  v130 = v36;
  v131 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v94 = v41;
  v93 = sub_48800(&qword_185160, &qword_185150, &qword_12CD90, &protocol conformance descriptor for GeometryReader<A>);
  v128 = v38;
  v129 = v40;
  v130 = v41;
  v131 = v93;
  v96 = swift_getOpaqueTypeMetadata2();
  v90 = *(v96 - 8);
  __chkstk_darwin(v96);
  v75 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v81 = &v75 - v44;
  v45 = v110;
  v46 = v111;
  v124 = v110;
  v125 = v111;
  v47 = v112;
  v126 = v112;
  v48 = v101;
  sub_115DC0();
  v49 = v102;
  v50 = v97;
  sub_116990();
  (*(v109 + 8))(v48, v50);
  v51 = v86;
  v52 = v82;
  sub_116930();
  (*(v105 + 8))(v49, v52);
  sub_116DC0();
  v53 = v113;
  sub_116D60();
  v54 = (*(*(v46 + 8) + 24))(v45);
  v55 = v53;
  v56 = v45;
  (*(v114 + 8))(v55, v45);
  v128 = v54;
  v57 = sub_115F00();
  v58 = v115;
  (*(*(v57 - 8) + 56))(v115, 1, 1, v57);
  v59 = v91;
  sub_116960();
  sub_488C8(v58, &qword_184138, &qword_127D50);

  (*(v106 + 8))(v51, v24);
  v121 = v56;
  v122 = v46;
  v123 = v47;
  v60 = v80;
  v61 = v76;
  sub_116910();
  (*(v104 + 8))(v59, v61);
  v63 = v117;
  v62 = v118;
  v64 = v116;
  (*(v118 + 16))(v117, v47, v116);
  v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v56;
  *(v66 + 24) = v46;
  (*(v62 + 32))(v66 + v65, v63, v64);
  sub_116EB0();
  v67 = v75;
  v68 = v92;
  sub_116980();

  (*(v103 + 8))(v60, v68);
  v69 = v90;
  v70 = *(v90 + 16);
  v71 = v81;
  v72 = v96;
  v70(v81, v67, v96);
  v73 = *(v69 + 8);
  v73(v67, v72);
  v70(v120, v71, v72);
  return (v73)(v71, v72);
}

unint64_t sub_103558()
{
  result = qword_187358;
  if (!qword_187358)
  {
    sub_47A1C(&qword_187350, &qword_12CD58);
    sub_1035DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187358);
  }

  return result;
}

unint64_t sub_1035DC()
{
  result = qword_187360;
  if (!qword_187360)
  {
    sub_47A1C(&qword_187368, &unk_12CD60);
    sub_47A1C(&qword_184208, &unk_127DE0);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_184420, &qword_12CD70);
    sub_47A1C(&qword_184150, &unk_127D60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187360);
  }

  return result;
}

uint64_t sub_10380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v33 = a1;
  v44 = a4;
  v34 = type metadata accessor for DailyUsageTimeView(0, a2, a3, a5);
  v42 = *(v34 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v34);
  v41 = &v33 - v7;
  v8 = *(a2 - 8);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1173A0();
  v40 = v12;
  v13 = sub_47A1C(&qword_187350, &qword_12CD58);
  v39 = v13;
  WitnessTable = swift_getWitnessTable();
  v49 = v12;
  v50 = &type metadata for Int;
  v51 = v13;
  v52 = WitnessTable;
  v53 = &protocol witness table for Int;
  v14 = sub_116E30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v37 = &v33 - v18;
  sub_116DC0();
  sub_116D60();
  v19 = (*(a3 + 32))(a2, a3);
  (*(v8 + 8))(v11, a2);
  v48 = v19;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();

  v48 = v49;
  sub_117830();
  swift_getWitnessTable();
  v49 = sub_1173B0();
  v45 = a2;
  v46 = a3;
  swift_getKeyPath();
  v20 = v41;
  v21 = v42;
  v22 = v34;
  (*(v42 + 16))(v41, v33, v34);
  v23 = v21;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v23 + 32))(v25 + v24, v20, v22);
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = sub_10AAC4;
  v26[5] = v25;
  v32 = sub_103558();
  v27 = v36;
  sub_116E00();
  v47 = v32;
  swift_getWitnessTable();
  v28 = *(v15 + 16);
  v29 = v37;
  v28(v37, v27, v14);
  v30 = *(v15 + 8);
  v30(v27, v14);
  v28(v44, v29, v14);
  return (v30)(v29, v14);
}

uint64_t sub_103D34@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v245 = a3;
  v232 = a1;
  v248 = a6;
  v210 = sub_46F9C(&qword_1874C8, &qword_12CF68);
  __chkstk_darwin(v210);
  v208 = &v174 - v9;
  v10 = sub_46F9C(&qword_187368, &unk_12CD60);
  v247 = *(v10 - 8);
  __chkstk_darwin(v10);
  v209 = &v174 - v11;
  v204 = sub_46F9C(&qword_184150, &unk_127D60);
  v202 = *(v204 - 8);
  __chkstk_darwin(v204);
  v200 = &v174 - v12;
  v13 = sub_46F9C(&qword_184420, &qword_12CD70);
  v203 = *(v13 - 8);
  __chkstk_darwin(v13);
  v201 = &v174 - v14;
  v207 = sub_46F9C(&qword_1874D0, &qword_12CF70);
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v221 = &v174 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_117620();
  v243 = *(v19 - 8);
  __chkstk_darwin(v19);
  v231 = &v174 - v20;
  v230 = sub_116390();
  v242 = *(v230 - 8);
  __chkstk_darwin(v230);
  v229 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v22 - 8);
  v197 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  *&v212 = &v174 - v25;
  v226 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v226);
  v225 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v224 = &v174 - v28;
  v234 = sub_115760();
  v239 = *(v234 - 8);
  __chkstk_darwin(v234);
  v236 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v235 = &v174 - v31;
  v222 = sub_46F9C(&qword_185930, &qword_12BDF0);
  __chkstk_darwin(v222);
  v223 = &v174 - v32;
  v33 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v33 - 8);
  v195 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v211 = &v174 - v36;
  v227 = sub_115E00();
  v240 = *(v227 - 8);
  __chkstk_darwin(v227);
  v196 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v174 - v39;
  v228 = sub_46F9C(&qword_184158, &unk_1285C0);
  *&v241 = *(v228 - 8);
  __chkstk_darwin(v228);
  v219 = &v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v233 = &v174 - v43;
  v217 = sub_46F9C(&qword_184210, &qword_128640);
  v215 = *(v217 - 8);
  __chkstk_darwin(v217);
  v213 = &v174 - v44;
  v218 = sub_46F9C(&qword_184208, &unk_127DE0);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = &v174 - v45;
  v199 = sub_46F9C(&qword_1874D8, &qword_12CF78);
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v220 = &v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v174 - v48;
  v49 = *(a4 - 1);
  __chkstk_darwin(v50);
  v244 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = *(AssociatedConformanceWitness + 8);
  v53 = (*(v52 + 32))(AssociatedTypeWitness, v52);
  if (v54 & 1) != 0 || (v55 = *&v53, v56 = *(v52 + 40), v194 = a2, *&v57 = COERCE_DOUBLE(v56(AssociatedTypeWitness, v52)), (v59) || (v190 = AssociatedTypeWitness, v192 = v19, v60 = v55, v61 = *&v57, v62 = a5, v63 = v246, type metadata accessor for DailyUsageTimeView(0, v246, v62, v58), v64 = sub_116DC0(), v65 = v244, v189 = v64, sub_116D60(), v193 = v62, v66 = (*(*(v62 + 8) + 24))(v63), v67 = *(v49 + 8), v191 = v49 + 8, v188 = v67, v67(v65, v63), swift_getWitnessTable(), v68 = sub_7C860(v66, v60, v61), , (v68 & 1) == 0))
  {
    v108 = 1;
    v110 = v247;
    v109 = v248;
    return v110[7](v109, v108, 1, v10);
  }

  v186 = v40;
  v180 = v13;
  v181 = v10;
  v183 = sub_116370();
  v185 = v69;
  LODWORD(v182) = v70;
  v184 = v71;
  v72 = v235;
  sub_115700();
  v73 = v236;
  sub_115700();
  v74 = sub_10ABAC(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v75 = v234;
  v187 = v74;
  result = sub_117130();
  if (result)
  {
    v77 = v239;
    v78 = v239 + 32;
    v79 = *(v239 + 32);
    v80 = v224;
    v79(v224, v72, v75);
    v81 = v226;
    v79((v80 + *(v226 + 48)), v73, v75);
    v82 = v225;
    sub_479B4(v80, v225, &qword_185928, &unk_12A520);
    v83 = *(v81 + 48);
    v84 = v223;
    v79(v223, v82, v75);
    v85 = *(v77 + 8);
    v85(v82 + v83, v75);
    sub_548D0(v80, v82, &qword_185928, &unk_12A520);
    v86 = v84 + *(v222 + 36);
    v87 = v82 + *(v81 + 48);
    v179 = v78;
    v178 = v79;
    v79(v86, v87, v75);
    v239 = v77 + 8;
    v177 = v85;
    v85(v82, v75);
    sub_115C50();

    sub_488C8(v84, &qword_185930, &qword_12BDF0);
    sub_116370();
    v88 = v194;
    v89 = v190;
    v90 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v190));
    if (v91)
    {
      v90 = 0.0;
    }

    if (v90 < 0.0)
    {
      v90 = 0.0;
    }

    v254 = v90;
    v92 = v88;
    sub_115C60();

    v93 = v186;
    sub_115DF0();
    v94 = v242;
    v95 = *(v242 + 104);
    v96 = v229;
    LODWORD(v185) = enum case for RoundedCornerStyle.continuous(_:);
    v97 = v230;
    v211 = (v242 + 104);
    v184 = v95;
    v95(v229);
    v98 = v227;
    sub_115AE0();
    v99 = *(v94 + 8);
    v242 = v94 + 8;
    v183 = v99;
    v99(v96, v97);
    v100 = *(v240 + 8);
    v240 += 8;
    v182 = v100;
    v100(v93, v98);
    v101 = v244;
    sub_116D60();
    v102 = *(v193 + 40);
    v103 = v231;
    v104 = v246;
    v186 = (v193 + 40);
    v176 = v102;
    v102(v246);
    v188(v101, v104);
    LOBYTE(v93) = sub_64404(v92, v103, v89, AssociatedConformanceWitness);
    v105 = *(v243 + 8);
    v243 += 8;
    v175 = v105;
    v105(v103, v192);
    if (v93)
    {
      v106 = sub_5A754();
      swift_beginAccess();
      v107 = *(*v106 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnBUI25Color);
    }

    else
    {
      sub_116BC0();
      v107 = sub_116BA0();
    }

    sub_5B018(0, v107, &v254);
    v111 = v241;
    v112 = *&v254;
    v241 = v255;
    v212 = v256;

    v251 = v112;
    v252 = v241;
    v253 = v212;
    v249 = v98;
    v250 = &protocol witness table for BarMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v114 = v213;
    v115 = v228;
    v116 = v233;
    sub_115AF0();

    v117 = *(v111 + 8);
    *&v241 = v111 + 8;
    *&v212 = v117;
    v117(v116, v115);
    v251 = v232;
    v257._countAndFlagsBits = sub_1179B0();
    v251 = 0xD000000000000013;
    *&v252 = 0x8000000000136C60;
    sub_117220(v257);

    v251 = v115;
    *&v252 = &type metadata for LinearGradient;
    v233 = OpaqueTypeConformance2;
    *(&v252 + 1) = OpaqueTypeConformance2;
    *&v253 = &protocol witness table for LinearGradient;
    v118 = swift_getOpaqueTypeConformance2();
    v119 = v214;
    v120 = v217;
    sub_115B30();

    (*(v215 + 8))(v114, v120);
    v251 = v120;
    *&v252 = v118;
    swift_getOpaqueTypeConformance2();
    v121 = v218;
    sub_115B70();
    (*(v216 + 8))(v119, v121);
    v216 = sub_116370();
    v218 = v122;
    LODWORD(v215) = v123;
    v217 = v124;
    v125 = v235;
    sub_115700();
    v126 = v236;
    sub_115700();
    v127 = v234;
    result = sub_117130();
    if (result)
    {
      v128 = v224;
      v129 = v178;
      v178(v224, v125, v127);
      v130 = v226;
      v129(v128 + *(v226 + 48), v126, v127);
      v131 = v225;
      sub_479B4(v128, v225, &qword_185928, &unk_12A520);
      v132 = *(v130 + 48);
      v133 = v223;
      v129(v223, v131, v127);
      v134 = v177;
      v177(v131 + v132, v127);
      sub_548D0(v128, v131, &qword_185928, &unk_12A520);
      v129(v133 + *(v222 + 36), (v131 + *(v130 + 48)), v127);
      v134(v131, v127);
      sub_115C50();

      sub_488C8(v133, &qword_185930, &qword_12BDF0);
      sub_116370();
      v135 = AssociatedConformanceWitness;
      v136 = v194;
      v137 = v190;
      v138 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 24))(v190, AssociatedConformanceWitness));
      if (v139)
      {
        v138 = 0.0;
      }

      if (v138 < 0.0)
      {
        v138 = 0.0;
      }

      v251 = *&v138;
      sub_115C60();

      v140 = v196;
      sub_115DF0();
      v141 = v229;
      v142 = v230;
      v184(v229, v185, v230);
      v143 = v227;
      sub_115AE0();
      v183(v141, v142);
      v182(v140, v143);
      v144 = v244;
      sub_116D60();
      v145 = v231;
      v146 = v246;
      v176(v246, v193);
      v188(v144, v146);
      LOBYTE(v146) = sub_64404(v136, v145, v137, v135);
      v175(v145, v192);
      if (v146)
      {
        v147 = sub_5A754();
        swift_beginAccess();
        v148 = *(*v147 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor);
      }

      else
      {
        sub_116BC0();
        v148 = sub_116BA0();
      }

      v110 = v247;
      v149 = v204;
      v150 = v203;
      v151 = v202;
      v251 = v148;
      v152 = v200;
      v153 = v228;
      v154 = v233;
      v155 = v219;
      sub_115AF0();

      (v212)(v155, v153);
      v251 = v232;
      v258._countAndFlagsBits = sub_1179B0();
      v251 = 0xD000000000000013;
      *&v252 = 0x8000000000136C80;
      sub_117220(v258);

      v251 = v153;
      *&v252 = &type metadata for Color;
      *(&v252 + 1) = v154;
      *&v253 = &protocol witness table for Color;
      v156 = swift_getOpaqueTypeConformance2();
      v157 = v201;
      sub_115B30();

      (*(v151 + 8))(v152, v149);
      v251 = v149;
      *&v252 = v156;
      swift_getOpaqueTypeConformance2();
      v158 = v221;
      v159 = v180;
      sub_115B70();
      (*(v150 + 8))(v157, v159);
      v160 = v198;
      v247 = *(v198 + 16);
      v161 = v220;
      v162 = v199;
      (v247)(v220, v237, v199);
      v163 = v206;
      v246 = *(v206 + 16);
      v164 = v205;
      v165 = v158;
      v166 = v207;
      (v246)(v205, v165, v207);
      v167 = v208;
      (v247)(v208, v161, v162);
      v168 = v210;
      v169 = *(v210 + 48);
      (v246)(&v167[v169], v164, v166);
      v170 = v209;
      (*(v160 + 32))(v209, v167, v162);
      (*(v163 + 32))(v170 + *(v168 + 48), &v167[v169], v166);
      v171 = *(v163 + 8);
      v171(v221, v166);
      v172 = *(v160 + 8);
      v172(v237, v162);
      v171(v164, v166);
      v172(v220, v162);
      v173 = v248;
      sub_10ABF4(v170, v248);
      v108 = 0;
      v10 = v181;
      v109 = v173;
      return v110[7](v109, v108, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1059AC(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_105A4C()
{
  v0 = sub_115C80();
  __chkstk_darwin(v0 - 8);
  v1 = sub_115BE0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_115C10();
  __chkstk_darwin(v2 - 8);
  sub_66C80(v3, v4, v5);
  sub_115C00();
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_1874A0, &qword_12CF28);
  sub_10A8C8();
  return sub_115E90();
}

uint64_t sub_105BE0@<X0>(uint64_t a1@<X8>)
{
  v64 = sub_46F9C(&qword_1874C0, &unk_12CF38);
  __chkstk_darwin(v64);
  v63 = &v48 - v2;
  v58 = sub_115A40();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_46F9C(&qword_1843A0, &unk_128120);
  v5 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_115D00();
  __chkstk_darwin(v10 - 8);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_115DA0();
  __chkstk_darwin(v12 - 8);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_46F9C(&qword_184390, &qword_128110);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v48 - v14;
  v59 = sub_46F9C(&qword_184380, &qword_128108);
  v16 = *(v59 - 8);
  __chkstk_darwin(v59);
  v18 = &v48 - v17;
  v19 = sub_46F9C(&qword_1874B8, &qword_12CF30);
  __chkstk_darwin(v19 - 8);
  v60 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  sub_115EB0();
  v65 = a1;
  if (BYTE8(v70))
  {
    v24 = 1;
  }

  else
  {
    v51 = v23;
    v25 = *&v70;
    v26 = sub_8D8B4()[8];
    v27 = [v26 stringFromTimeInterval:v25];
    if (v27)
    {
      v28 = v27;
      sub_1171B0();
      v49 = v15;

      v50 = &v48;
      __chkstk_darwin(v29);
      sub_115D90();
      sub_115CF0();
      v47[3] = &protocol witness table for Text;
      v47[1] = v47;
      v47[2] = &type metadata for Text;
      v47[0] = sub_8D334;
      v30 = v49;
      sub_115C30();

      v31 = v54;
      v32 = v55;
      (*(v54 + 32))(v18, v30, v55);
      v33 = 0;
    }

    else
    {

      v33 = 1;
      v32 = v55;
      v31 = v54;
    }

    (*(v31 + 56))(v18, v33, 1, v32);
    v23 = v51;
    sub_548D0(v18, v51, &qword_184380, &qword_128108);
    v24 = 0;
  }

  (*(v16 + 56))(v23, v24, 1, v59);
  sub_116010();
  v70 = v67;
  v71 = v68;
  v72 = v69;
  sub_115A30();
  v34 = sub_5A754();
  swift_beginAccess();
  v66 = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v35 = v58;
  sub_115E10();
  (*(v57 + 8))(v4, v35);
  v36 = v60;
  sub_479B4(v23, v60, &qword_1874B8, &qword_12CF30);
  v56 = v9;
  v37 = *(v5 + 16);
  v38 = v61;
  v39 = v23;
  v40 = v62;
  v37(v61, v9, v62);
  sub_10A3B8(&qword_1874B0, &qword_1874B8, &qword_12CF30, sub_8C9D0);
  v41 = v63;
  sub_479B4(v36, v63, &qword_1874B8, &qword_12CF30);
  v42 = v64;
  v43 = *(v64 + 48);
  v37((v41 + v43), v38, v40);
  v44 = v65;
  sub_548D0(v41, v65, &qword_1874B8, &qword_12CF30);
  (*(v5 + 32))(v44 + *(v42 + 48), v41 + v43, v40);
  v45 = *(v5 + 8);
  v45(v56, v40);
  sub_488C8(v39, &qword_1874B8, &qword_12CF30);
  v45(v38, v40);
  return sub_488C8(v36, &qword_1874B8, &qword_12CF30);
}

uint64_t sub_10642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v33 = a4;
  v6 = sub_115C80();
  __chkstk_darwin(v6 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_115BE0();
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for DailyUsageTimeView(0, a2, a3, v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_1158B0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_115C10();
  v22 = __chkstk_darwin(v21 - 8);
  (*(v18 + 104))(v20, enum case for Calendar.Component.day(_:), v17, v22);
  v23 = sub_1158D0();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_115BF0();
  sub_488C8(v16, &qword_1842B8, &qword_129030);
  (*(v18 + 8))(v20, v17);
  (*(v11 + 16))(v13, v31, v10);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v30;
  *(v25 + 16) = v29;
  *(v25 + 24) = v26;
  (*(v11 + 32))(v25 + v24, v13, v10);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_187390, &qword_12CE78);
  sub_10A3B8(&qword_187398, &qword_187390, &qword_12CE78, sub_109FFC);
  return sub_115E90();
}

uint64_t sub_106850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v230 = a4;
  v229 = a3;
  v231 = a2;
  v238 = a5;
  v194 = sub_46F9C(&qword_187450, &qword_12CED8);
  __chkstk_darwin(v194);
  v193 = &v182 - v6;
  v7 = sub_46F9C(&qword_187448, &qword_12CED0);
  __chkstk_darwin(v7 - 8);
  v195 = &v182 - v8;
  v9 = sub_46F9C(&qword_187438, &qword_12CEC8);
  __chkstk_darwin(v9 - 8);
  v203 = &v182 - v10;
  v208 = sub_46F9C(&qword_187458, &qword_12CEE0);
  __chkstk_darwin(v208);
  v207 = &v182 - v11;
  v12 = sub_46F9C(&qword_1873F8, &qword_12CEA8);
  __chkstk_darwin(v12 - 8);
  v209 = &v182 - v13;
  v192 = sub_46F9C(&qword_187460, &qword_12CEE8);
  __chkstk_darwin(v192);
  v190 = &v182 - v14;
  v205 = sub_46F9C(&qword_187428, &qword_12CEC0);
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v191 = &v182 - v15;
  v189 = sub_115A40();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v202 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v201 = &v182 - v18;
  v19 = sub_46F9C(&qword_187418, &qword_12CEB8);
  __chkstk_darwin(v19 - 8);
  v206 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v210 = &v182 - v22;
  v213 = sub_46F9C(&qword_187408, &qword_12CEB0);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v200 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v211 = &v182 - v25;
  __chkstk_darwin(v26);
  v221 = &v182 - v27;
  v28 = sub_46F9C(&qword_1873B8, &qword_12CE88);
  __chkstk_darwin(v28 - 8);
  v224 = &v182 - v29;
  v218 = sub_46F9C(&qword_187468, &unk_12CEF0);
  __chkstk_darwin(v218);
  v217 = &v182 - v30;
  v31 = sub_46F9C(&qword_1873C8, &qword_12CE90);
  __chkstk_darwin(v31 - 8);
  v219 = &v182 - v32;
  v227 = sub_115E40();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v199 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v222 = &v182 - v35;
  v36 = sub_46F9C(&qword_1873E8, &qword_12CEA0);
  __chkstk_darwin(v36 - 8);
  v196 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v197 = &v182 - v39;
  __chkstk_darwin(v40);
  v223 = &v182 - v41;
  __chkstk_darwin(v42);
  v220 = &v182 - v43;
  v44 = sub_115D00();
  __chkstk_darwin(v44 - 8);
  v236 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_115DA0();
  __chkstk_darwin(v46 - 8);
  v228 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_46F9C(&qword_1873D8, &qword_12CE98);
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v198 = &v182 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v214 = &v182 - v50;
  __chkstk_darwin(v51);
  v225 = &v182 - v52;
  v53 = sub_46F9C(&qword_1873A8, &qword_12CE80);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v232 = &v182 - v55;
  v235 = sub_1158B0();
  v56 = *(v235 - 8);
  __chkstk_darwin(v235);
  v58 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1158D0();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v60 = &v182 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v61 - 8);
  v63 = &v182 - v62;
  v64 = sub_115760();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v182 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = a1;
  sub_115EB0();
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    sub_488C8(v63, &qword_182EF0, &unk_124BB0);
    return (*(v54 + 56))(v238, 1, 1, v53);
  }

  v187 = v54;
  v185 = v53;
  v69 = *(v65 + 32);
  v186 = v64;
  v69(v67, v63, v64);
  sub_1158A0();
  v70 = v235;
  (*(v56 + 104))(v58, enum case for Calendar.Component.day(_:), v235);
  v71 = sub_1158C0();
  (*(v56 + 8))(v58, v70);
  (*(v233 + 8))(v60, v234);
  v72 = sub_115ED0();
  v184 = v65;
  v183 = v67;
  if (!v72)
  {
    __chkstk_darwin(0);
    sub_115D90();
    sub_115CF0();
    v180 = sub_46F9C(&qword_187480, &qword_12CF10);
    v181 = sub_48800(&qword_187488, &qword_187480, &qword_12CF10, &protocol conformance descriptor for VStack<A>);
    v178 = sub_10AC70;
    v179 = &v178;
    v110 = 1;
    sub_115C30();
    v112 = type metadata accessor for DailyUsageTimeView(0, v229, v230, v111);
    v113 = v227;
    v114 = v226;
    if ((*(v231 + *(v112 + 36)) & 1) == 0)
    {
      v115 = sub_5A754();
      swift_beginAccess();
      v116 = *(**v115 + 560);

      v116(v117);

      sub_8D6B4();
      sub_116010();
      v248 = v245;
      v249 = v246;
      v250 = v247;
      v118 = v222;
      sub_115E30();
      (*(v114 + 32))(v220, v118, v113);
      v110 = 0;
    }

    v119 = v220;
    (*(v114 + 56))(v220, v110, 1, v113);
    v120 = v215;
    v121 = *(v215 + 16);
    v122 = v214;
    v123 = v225;
    v124 = v216;
    v121(v214, v225, v216);
    v125 = v223;
    sub_479B4(v119, v223, &qword_1873E8, &qword_12CEA0);
    sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98, &protocol conformance descriptor for AxisValueLabel<A>);
    v126 = v217;
    v121(v217, v122, v124);
    sub_10A224();
    v127 = v218;
    v128 = *(v218 + 48);
    sub_479B4(v125, &v126[v128], &qword_1873E8, &qword_12CEA0);
    v129 = v219;
    (*(v120 + 32))(v219, v126, v124);
    sub_548D0(&v126[v128], v129 + *(v127 + 48), &qword_1873E8, &qword_12CEA0);
    sub_488C8(v119, &qword_1873E8, &qword_12CEA0);
    v130 = *(v120 + 8);
    v130(v123, v124);
    sub_488C8(v125, &qword_1873E8, &qword_12CEA0);
    v130(v122, v124);
    v109 = v224;
    sub_548D0(v129, v224, &qword_1873C8, &qword_12CE90);
    sub_46F9C(&qword_187490, &qword_12CF18);
    goto LABEL_12;
  }

  v73 = sub_115ED0();
  result = sub_115EC0();
  if (!__OFSUB__(result, 1))
  {
    if (v73 != result - 1)
    {
      __chkstk_darwin(result);
      v180 = v67;
      sub_115D90();
      sub_115CF0();
      if (v71 == 1)
      {
        v180 = sub_46F9C(&qword_187480, &qword_12CF10);
        v181 = sub_48800(&qword_187488, &qword_187480, &qword_12CF10, &protocol conformance descriptor for VStack<A>);
        v178 = sub_10A4F0;
        v179 = &v178;
        v132 = 1;
        sub_115C30();
        v134 = type metadata accessor for DailyUsageTimeView(0, v229, v230, v133);
        v135 = v227;
        v136 = v226;
        if ((*(v231 + *(v134 + 36)) & 1) == 0)
        {
          v137 = sub_5A754();
          swift_beginAccess();
          v138 = *(**v137 + 560);

          v138(v139);

          sub_8D6B4();
          sub_116010();
          v248 = v245;
          v249 = v246;
          v250 = v247;
          v140 = v222;
          sub_115E30();
          (*(v136 + 32))(v197, v140, v135);
          v132 = 0;
        }

        v141 = v197;
        (*(v136 + 56))(v197, v132, 1, v135);
        v142 = v215;
        v143 = *(v215 + 16);
        v144 = v214;
        v145 = v198;
        v146 = v216;
        v143(v214, v198, v216);
        v147 = v223;
        sub_479B4(v141, v223, &qword_1873E8, &qword_12CEA0);
        sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98, &protocol conformance descriptor for AxisValueLabel<A>);
        v148 = v217;
        v143(v217, v144, v146);
        sub_10A224();
        v149 = v218;
        v150 = *(v218 + 48);
        sub_479B4(v147, &v148[v150], &qword_1873E8, &qword_12CEA0);
        v151 = v219;
        (*(v142 + 32))(v219, v148, v146);
        sub_548D0(&v148[v150], v151 + *(v149 + 48), &qword_1873E8, &qword_12CEA0);
        sub_488C8(v141, &qword_1873E8, &qword_12CEA0);
        v152 = *(v142 + 8);
        v152(v145, v146);
        sub_488C8(v147, &qword_1873E8, &qword_12CEA0);
        v152(v144, v146);
        v153 = v203;
        sub_548D0(v151, v203, &qword_1873C8, &qword_12CE90);
      }

      else
      {
        v180 = sub_46F9C(&qword_184328, &qword_1280D0);
        v181 = sub_8C768();
        v178 = sub_10AC6C;
        v179 = &v178;
        v154 = 1;
        sub_115C30();
        v156 = type metadata accessor for DailyUsageTimeView(0, v229, v230, v155);
        v157 = v227;
        v158 = v226;
        if ((*(v231 + *(v156 + 36)) & 1) == 0)
        {
          v159 = sub_5A754();
          swift_beginAccess();
          v160 = *(**v159 + 560);

          v160(v161);

          v250 = 0;
          v248 = 0u;
          v249 = 0u;
          v162 = v222;
          sub_115E30();
          (*(v158 + 32))(v196, v162, v157);
          v154 = 0;
        }

        v163 = v196;
        (*(v158 + 56))(v196, v154, 1, v157);
        v164 = v212;
        v165 = *(v212 + 16);
        v166 = v211;
        v167 = v200;
        v168 = v213;
        v165(v211, v200, v213);
        v169 = v223;
        sub_479B4(v163, v223, &qword_1873E8, &qword_12CEA0);
        sub_48800(&qword_187400, &qword_187408, &qword_12CEB0, &protocol conformance descriptor for AxisValueLabel<A>);
        v170 = v193;
        v165(v193, v166, v168);
        sub_10A224();
        v171 = v194;
        v172 = *(v194 + 48);
        sub_479B4(v169, &v170[v172], &qword_1873E8, &qword_12CEA0);
        v173 = v195;
        (*(v164 + 32))(v195, v170, v168);
        sub_548D0(&v170[v172], v173 + *(v171 + 48), &qword_1873E8, &qword_12CEA0);
        sub_488C8(v163, &qword_1873E8, &qword_12CEA0);
        v174 = *(v164 + 8);
        v174(v167, v168);
        sub_488C8(v169, &qword_1873E8, &qword_12CEA0);
        v174(v166, v168);
        v153 = v203;
        sub_548D0(v173, v203, &qword_187448, &qword_12CED0);
      }

      v131 = v232;
      sub_46F9C(&qword_187470, &qword_12CF00);
      swift_storeEnumTagMultiPayload();
      sub_548D0(v153, v131, &qword_187438, &qword_12CEC8);
      goto LABEL_21;
    }

    __chkstk_darwin(result);
    sub_115D90();
    sub_115CF0();
    v180 = sub_46F9C(&qword_184328, &qword_1280D0);
    v181 = sub_8C768();
    v178 = sub_10A4F4;
    v179 = &v178;
    v74 = 1;
    sub_115C30();
    v76 = type metadata accessor for DailyUsageTimeView(0, v229, v230, v75);
    if ((*(v231 + *(v76 + 36)) & 1) == 0)
    {
      sub_8D6B4();
      sub_116010();
      v248 = v239;
      v249 = v240;
      v250 = v241;
      v77 = v201;
      sub_115A30();
      v78 = sub_5A754();
      swift_beginAccess();
      v79 = *(**v78 + 560);

      v79(v80);

      sub_116010();
      v245 = v242;
      v246 = v243;
      v247 = v244;
      v81 = v222;
      sub_115E30();
      v82 = v188;
      v83 = *(v188 + 16);
      v84 = v202;
      v85 = v189;
      v83(v202, v77, v189);
      v86 = v226;
      v87 = *(v226 + 16);
      v88 = v81;
      v89 = v227;
      v87(v199, v88, v227);
      v90 = v190;
      v83(v190, v84, v85);
      v91 = v192;
      v92 = *(v192 + 48);
      v93 = v199;
      v87(&v90[v92], v199, v89);
      v94 = v191;
      (*(v82 + 32))(v191, v90, v85);
      (*(v86 + 32))(v94 + *(v91 + 48), &v90[v92], v89);
      v95 = *(v86 + 8);
      v95(v222, v89);
      v96 = *(v82 + 8);
      v96(v201, v85);
      v95(v93, v89);
      v96(v202, v85);
      sub_548D0(v94, v210, &qword_187428, &qword_12CEC0);
      v74 = 0;
    }

    v97 = v210;
    (*(v204 + 56))(v210, v74, 1, v205);
    v98 = v212;
    v99 = *(v212 + 16);
    v100 = v211;
    v101 = v221;
    v102 = v213;
    v99(v211, v221, v213);
    v103 = v206;
    sub_479B4(v97, v206, &qword_187418, &qword_12CEB8);
    sub_48800(&qword_187400, &qword_187408, &qword_12CEB0, &protocol conformance descriptor for AxisValueLabel<A>);
    v104 = v207;
    v99(v207, v100, v102);
    sub_10A388();
    v105 = v208;
    v106 = *(v208 + 48);
    sub_479B4(v103, &v104[v106], &qword_187418, &qword_12CEB8);
    v107 = v209;
    (*(v98 + 32))(v209, v104, v102);
    sub_548D0(&v104[v106], v107 + *(v105 + 48), &qword_187418, &qword_12CEB8);
    sub_488C8(v97, &qword_187418, &qword_12CEB8);
    v108 = *(v98 + 8);
    v108(v101, v102);
    sub_488C8(v103, &qword_187418, &qword_12CEB8);
    v108(v100, v102);
    v109 = v224;
    sub_548D0(v107, v224, &qword_1873F8, &qword_12CEA8);
    sub_46F9C(&qword_187490, &qword_12CF18);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v131 = v232;
    sub_548D0(v109, v232, &qword_1873B8, &qword_12CE88);
LABEL_21:
    v175 = v238;
    v176 = v185;
    v177 = v187;
    sub_46F9C(&qword_187478, &qword_12CF08);
    swift_storeEnumTagMultiPayload();
    sub_548D0(v131, v175, &qword_1873A8, &qword_12CE80);
    (*(v177 + 56))(v175, 0, 1, v176);
    return (*(v184 + 8))(v183, v186);
  }

  __break(1u);
  return result;
}

uint64_t sub_108778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v23 = a1;
  v24 = a4;
  v25 = a5;
  v7 = type metadata accessor for DailyUsageTimeView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_115A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v23, v11, v14);
  (*(v8 + 16))(v10, a2, v7);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = a3;
  *(v18 + 24) = v19;
  (*(v12 + 32))(v18 + v16, v15, v11);
  result = (*(v8 + 32))(v18 + v17, v10, v7);
  v21 = v25;
  *v25 = sub_109BE0;
  v21[1] = v18;
  return result;
}

uint64_t sub_1089B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DailyUsageTimeView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_108778(a1, v9, v6, v7, a3);
}

uint64_t sub_108A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v31 = a4;
  v33 = a3;
  v29 = a1;
  v36 = a6;
  v35 = sub_116490();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DailyUsageTimeView(0, a4, a5, v10);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v29 - v12;
  v14 = sub_115A20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v18 = v47;
  v19 = v48;
  v20 = sub_116B50();
  sub_1167F0();
  *&v38 = v20;
  WORD4(v38) = 256;
  *(&v38 + 10) = v45;
  HIWORD(v38) = v46;
  v39 = v42;
  v40 = v43;
  v41 = v44;
  (*(v15 + 16))(v17, a2, v14);
  v21 = v30;
  (*(v11 + 16))(v13, v33, v30);
  v22 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v23 = (v16 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  *(v24 + 32) = v18;
  *(v24 + 48) = v19;
  (*(v15 + 32))(v24 + v22, v17, v14);
  (*(v11 + 32))(v24 + v23, v13, v21);
  v26 = v34;
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v27 = v35;
  sub_116A10();

  (*(v37 + 8))(v26, v27);
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  return sub_488C8(&v47, &qword_184280, &unk_128080);
}

void sub_108EB0(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __chkstk_darwin(a1);
  v16 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_115760();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v28 - v24;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  MaxX = CGRectGetMaxX(v30);
  if (MinX > MaxX)
  {
    __break(1u);
  }

  else if (MinX <= a2 && MaxX > a2)
  {
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetMinX(v31);
    sub_115A00();
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_488C8(v18, &qword_182EF0, &unk_124BB0);
    }

    else
    {
      (*(v20 + 32))(v25, v18, v19);
      (*(v20 + 16))(v22, v25, v19);
      sub_116DC0();
      sub_116D60();
      (*(*(a9 + 8) + 56))(v22, a8);
      sub_116D70();
      (*(v20 + 8))(v25, v19);
    }
  }
}

uint64_t sub_1091FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_109238(uint64_t a1)
{
  result = sub_116DC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1092B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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