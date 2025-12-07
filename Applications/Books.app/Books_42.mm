void sub_10056E5E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_10079BC44() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((v17 + ((v15 + 95) & ~(v15 | 7))) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
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
  v25 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v11 > 0x7FFFFFFE)
  {
    v26 = *(v10 + 56);

    v26((v17 + ((((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 40) & ~v16)) & ~v13, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v25 = 0;
    v25[1] = 0;
    *v25 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v25 = a2;
  }
}

void sub_10056E90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10056E9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  sub_10079DFE4();
  *(a6 + 32) = v16;
  *(a6 + 40) = *(&v16 + 1);
  type metadata accessor for CGRect(0);
  sub_10079DFE4();
  *(a6 + 48) = v16;
  *(a6 + 64) = v17;
  *(a6 + 80) = v18;
  v13 = *(type metadata accessor for PopoverListHighlight(0, a4, a5, v12) + 52);
  *(a6 + v13) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  v14 = swift_storeEnumTagMultiPayload();
  return a3(v14);
}

uint64_t sub_10056EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v174 = *(a1 + 16);
  v164 = *(v174 - 8);
  __chkstk_darwin(a1);
  v163 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v118 - v5;
  v150 = sub_10079CD04();
  __chkstk_darwin(v150);
  v148 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10079BCC4();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1001F1160(&qword_100AD7B78, &unk_1008312C0);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v118 - v8;
  v9 = sub_1001F1160(&qword_100AD7B80, &qword_100814CC8);
  v156 = *(v9 - 8);
  __chkstk_darwin(v9);
  v154 = &v118 - v10;
  v165 = a1;
  v160 = *(a1 - 8);
  __chkstk_darwin(v11);
  v145 = v12;
  v149 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1001F1160(&qword_100AEA280, &unk_1008312D0);
  __chkstk_darwin(v162);
  v161 = &v118 - v13;
  sub_1001F1234(&qword_100AE4630, &qword_100827188);
  v14 = sub_10079C2A4();
  v132 = *(v14 - 8);
  __chkstk_darwin(v14);
  v129 = &v118 - v15;
  v16 = sub_10079C2A4();
  v131 = *(v16 - 8);
  __chkstk_darwin(v16);
  v127 = &v118 - v17;
  v18 = sub_10079C2A4();
  v135 = *(v18 - 8);
  __chkstk_darwin(v18);
  v128 = &v118 - v19;
  sub_1001F1234(&qword_100AEA288, &unk_1008312E0);
  v20 = sub_10079C2A4();
  v137 = *(v20 - 8);
  __chkstk_darwin(v20);
  v136 = &v118 - v21;
  sub_1001F1234(&qword_100AD7B98, &qword_100814CD8);
  v22 = sub_10079C2A4();
  v147 = *(v22 - 8);
  __chkstk_darwin(v22);
  v169 = &v118 - v23;
  v24 = *(a1 + 24);
  v25 = sub_100005920(&qword_100AE46E0, &qword_100AE4630, &qword_100827188, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v175 = v24;
  v203 = v24;
  v204 = v25;
  v134 = v14;
  WitnessTable = swift_getWitnessTable();
  v201 = WitnessTable;
  v202 = &protocol witness table for _PaddingLayout;
  v133 = v16;
  v125 = swift_getWitnessTable();
  v199 = v125;
  v200 = &protocol witness table for _PaddingLayout;
  v159 = v18;
  v26 = swift_getWitnessTable();
  v27 = v173;
  v28 = sub_100005920(&qword_100AEA290, &qword_100AEA288, &unk_1008312E0, &protocol conformance descriptor for _BackgroundModifier<A>);
  v126 = v26;
  v197 = v26;
  v198 = v28;
  v138 = v20;
  v29 = swift_getWitnessTable();
  v30 = sub_100005920(&unk_100AD7C30, &qword_100AD7B98, &qword_100814CD8, &protocol conformance descriptor for _GeometryActionModifier<A>);
  v130 = v29;
  v195 = v29;
  v196 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_100005920(&qword_100AD7BA0, &qword_100AD7B80, &qword_100814CC8, &protocol conformance descriptor for _EndedGesture<A>);
  v191 = v22;
  v192 = v9;
  v172 = v9;
  v171 = v31;
  v193 = v31;
  v194 = v32;
  v170 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v141 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v139 = &v118 - v34;
  v143 = v35;
  v36 = sub_10079C2A4();
  v144 = *(v36 - 8);
  __chkstk_darwin(v36);
  v142 = &v118 - v37;
  v38 = sub_10079C2A4();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v146 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v140 = &v118 - v42;
  __chkstk_darwin(v43);
  v45 = &v118 - v44;
  v46 = sub_10079C3D4();
  __chkstk_darwin(v46);
  v48 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_10079CCB4();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v50 = &v118 - v49;
  if (*(v27 + 16))
  {
    v164 = *(v27 + 16);
    v118 = v45;
    v119 = v39;
    v120 = &v118 - v49;
    v121 = v38;
    v122 = v36;
    v123 = v22;
    v51 = *(v27 + 24);
    v52 = *(v46 + 20);
    v53 = enum case for RoundedCornerStyle.continuous(_:);
    v54 = sub_10079C9E4();
    (*(*(v54 - 8) + 104))(&v48[v52], v53, v54);
    __asm { FMOV            V0.2D, #4.0 }

    *v48 = _Q0;
    v60 = v165;
    sub_100570930(&qword_100AE4510, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v163 = v51;

    v61 = v129;
    sub_10079D754();
    sub_10079D284();
    v62 = v127;
    v63 = v134;
    sub_10079DBE4();
    (*(v132 + 8))(v61, v63);
    sub_10079D2F4();
    v64 = v128;
    v65 = v133;
    sub_10079DBE4();
    (*(v131 + 8))(v62, v65);
    v66 = *(v27 + 40);
    LOBYTE(v191) = *(v27 + 32);
    v192 = v66;
    sub_1001F1160(&qword_100ADB850, &qword_100814020);
    sub_10079DFF4();
    v67 = v175;
    if (v180 == 1)
    {
      sub_10079DD34();
      sub_10057029C();
      v68 = sub_10079DE24();
    }

    else
    {
      v68 = sub_10079DDC4();
    }

    v76 = v161;
    sub_1002B63BC(v48, v161);
    v77 = v162;
    *(v76 + *(v162 + 52)) = v68;
    *(v76 + *(v77 + 56)) = 256;
    sub_10079E474();
    sub_100005920(&qword_100AEA298, &qword_100AEA280, &unk_1008312D0, &protocol conformance descriptor for _ShapeView<A, B>);
    v78 = v136;
    v79 = v159;
    sub_10079D654();
    sub_100570634(v76);
    (*(v135 + 1))(v64, v79);
    v80 = v160;
    v81 = v160 + 16;
    v162 = *(v160 + 16);
    v135 = v48;
    v82 = v149;
    (v162)(v149, v27, v60);
    v134 = v81;
    v159 = *(v80 + 80);
    v83 = v60;
    v145 += (v159 + 32) & ~v159;
    v84 = (v159 + 32) & ~v159;
    v161 = v84;
    v85 = swift_allocObject();
    v86 = v174;
    *(v85 + 16) = v174;
    *(v85 + 24) = v67;
    v87 = v86;
    v160 = *(v80 + 32);
    (v160)(v85 + v84, v82, v60);
    type metadata accessor for CGSize(0);
    sub_100570930(&unk_100AE40C0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    v88 = v138;
    sub_10079D874();

    (*(v137 + 8))(v78, v88);
    sub_10079CF74();
    v89 = v151;
    sub_10079BC64();
    (v162)(v82, v173, v60);
    v90 = v145;
    v91 = swift_allocObject();
    v92 = v175;
    *(v91 + 16) = v87;
    *(v91 + 24) = v92;
    (v160)(v91 + v161, v82, v83);
    sub_100570930(&qword_100AD7BB0, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_100570930(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
    v93 = v155;
    v94 = v153;
    sub_10079E2A4();

    (*(v152 + 8))(v89, v94);
    (v162)(v82, v173, v83);
    v95 = swift_allocObject();
    *(v95 + 16) = v174;
    *(v95 + 24) = v92;
    (v160)(v95 + v161, v82, v83);
    v96 = (v95 + ((v90 + 7) & 0xFFFFFFFFFFFFFFF8));
    v97 = v163;
    *v96 = v164;
    v96[1] = v97;
    sub_100005920(&qword_100AD7BC0, &qword_100AD7B78, &unk_1008312C0, &protocol conformance descriptor for _ChangedGesture<A>);

    v98 = v154;
    v99 = v158;
    sub_10079E294();

    (*(v157 + 8))(v93, v99);
    sub_10079BCE4();
    v100 = v139;
    v22 = v123;
    v101 = v172;
    v102 = v171;
    v103 = v170;
    v104 = v169;
    sub_10079D994();
    (*(v156 + 8))(v98, v101);
    (*(v147 + 8))(v104, v22);
    sub_10079D284();
    v191 = v22;
    v192 = v101;
    v193 = v102;
    v194 = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v106 = v142;
    v107 = v143;
    sub_10079DBE4();
    (*(v141 + 8))(v100, v107);
    sub_10079D2F4();
    v178 = OpaqueTypeConformance2;
    v179 = &protocol witness table for _PaddingLayout;
    v108 = v122;
    v109 = swift_getWitnessTable();
    v110 = v140;
    sub_10079DBE4();
    (*(v144 + 8))(v106, v108);
    v176 = v109;
    v177 = &protocol witness table for _PaddingLayout;
    v111 = v121;
    v112 = swift_getWitnessTable();
    v113 = v118;
    sub_10039232C();
    v114 = *(v119 + 8);
    v114(v110, v111);
    v115 = v146;
    sub_10039232C();
    v50 = v120;
    sub_10028B610(v115, v111, v174, v112, v175);
    sub_100007020(v164, v163);
    v114(v115, v111);
    v114(v113, v111);
    sub_1002B6360(v135);
    v75 = v172;
  }

  else
  {
    v69 = v123;
    v70 = v174;
    v71 = v175;
    sub_10039232C();
    v72 = v163;
    sub_10039232C();
    v191 = v22;
    v192 = v172;
    v193 = v171;
    v194 = v170;
    v189 = swift_getOpaqueTypeConformance2();
    v190 = &protocol witness table for _PaddingLayout;
    v187 = swift_getWitnessTable();
    v188 = &protocol witness table for _PaddingLayout;
    v73 = swift_getWitnessTable();
    sub_10028B708(v72, v38, v70, v73, v71);
    v74 = *(v164 + 8);
    v74(v72, v70);
    v74(v69, v70);
    v75 = v172;
  }

  v191 = v22;
  v192 = v75;
  v193 = v171;
  v194 = v170;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = &protocol witness table for _PaddingLayout;
  v183 = swift_getWitnessTable();
  v184 = &protocol witness table for _PaddingLayout;
  v181 = swift_getWitnessTable();
  v182 = v175;
  v116 = v167;
  swift_getWitnessTable();
  sub_10039232C();
  return (*(v166 + 8))(v50, v116);
}

double sub_10057029C()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1005A27F8(&v10 - v5);
  (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 0.12;
  if (v7)
  {
    return 0.15;
  }

  return result;
}

double sub_1005703F8(__int128 *a1, uint64_t a2)
{
  sub_1001F1160(&qword_100AEA2A0, &qword_1008312F0);
  sub_10079E004();
  return result;
}

double sub_10057045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PopoverListHighlight(0, a3, a4, a4);
  sub_1005704E0();
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  return result;
}

BOOL sub_1005704E0()
{
  sub_1001F1160(&qword_100AEA2A0, &qword_1008312F0);
  sub_10079DFF4();
  sub_10079BCA4();
  v4.x = v0;
  v4.y = v1;
  return CGRectContainsPoint(v3, v4);
}

uint64_t sub_100570574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  type metadata accessor for PopoverListHighlight(0, a5, a6, v9);
  result = sub_1005704E0();
  if (result)
  {
    return a3();
  }

  return result;
}

uint64_t sub_100570634(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEA280, &unk_1008312D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10057069C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for PopoverListHighlight(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1005703F8(a1, v7);
}

uint64_t sub_100570728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PopoverListHighlight(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  if (*(v7 + 16))
  {
  }

  v8 = *(v6 + 52);
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079BC44();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 56), v5);

  return swift_deallocObject();
}

double sub_1005708A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PopoverListHighlight(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_10057045C(a1, v9, v6, v7);
}

uint64_t sub_100570930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100570978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PopoverListHighlight(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_100570574(a1, v4 + v9, v11, v12, v6, v7);
}

BOOL static RETestDriver.closeBook(viewController:)(uint64_t a1)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    sub_10056D8CC(1);
  }

  swift_unknownObjectRelease();
  return v1 != 0;
}

BOOL static RETestDriver.turnToInitialPage(viewController:)(uint64_t a1)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007A0994();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v1 != 0;
}

uint64_t static RETestDriver.performScrollTest(viewController:name:iterations:delta:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v9 = sub_100569664(a2, a3, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRelease();
  return v9 & 1;
}

uint64_t static RETestDriver.simulateManualPageTurn(viewController:rtl:time:)(uint64_t a1, char a2, double a3)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v5 = sub_1005698A0(a2 & 1, a3);
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5 & 1;
}

id RETestDriver.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RETestDriver();
  return objc_msgSendSuper2(&v2, "init");
}

id RETestDriver.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RETestDriver();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t _s5Books12RETestDriverC23getBookControllerLayout04viewF0SSSgyXl_tFZ_0(uint64_t a1)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  v1 = sub_10079F4F4();
  if (v1 > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
LABEL_11:
      v3 = sub_1007A2254();
      swift_unknownObjectRelease();
      return v3;
    }
  }

  else
  {
    if (!v1)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return 0;
    }

    if (v1 == 1)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for BookLayoutMode(0);
  result = sub_1007A3AF4();
  __break(1u);
  return result;
}

double _s5Books12RETestDriverC23setBookControllerLayout_04viewF0ySS_yXltFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    if (sub_1007A2254() == a1 && v5 == a2)
    {
    }

    else
    {
      v7 = sub_1007A3AB4();

      if ((v7 & 1) == 0)
      {
        if (sub_1007A2254() == a1 && v9 == a2)
        {

          v12 = 2;
        }

        else
        {
          v11 = sub_1007A3AB4();

          if (v11)
          {
            v12 = 2;
          }

          else if (sub_1007A2254() == a1 && v14 == a2)
          {

            v12 = 3;
          }

          else
          {
            v15 = sub_1007A3AB4();

            if (v15)
            {
              v12 = 3;
            }

            else
            {
              v12 = 0;
            }
          }
        }

        goto LABEL_15;
      }
    }

    v12 = 1;
LABEL_15:
    sub_100569548(v12, v8);
  }

  swift_unknownObjectRelease();
  return result;
}

BOOL _s5Books12RETestDriverC8turnPage14viewController7forwardSbyXl_SbtFZ_0(uint64_t a1, char a2)
{
  v3 = sub_1007A0404();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BookReaderContainerViewController(0);
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    if (a2)
    {
      sub_1007A0364();
    }

    else
    {
      sub_1007A0384();
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007A0974();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v7 != 0;
}

unint64_t sub_100571524()
{
  result = qword_100AEA2D0;
  if (!qword_100AEA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2D0);
  }

  return result;
}

unint64_t sub_10057157C()
{
  result = qword_100AEA2D8;
  if (!qword_100AEA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2D8);
  }

  return result;
}

uint64_t sub_100571608()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23518);
  v21 = sub_100008B98(v3, qword_100B23518);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005719AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1850 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100571A54(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AEA2F8, &unk_100831480);
  __chkstk_darwin(v2 - 8);
  sub_1007961E4();
  return sub_1007961A4();
}

uint64_t sub_100571B28(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  sub_1007A26F4();
  v2[13] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_100571BC4, v5, v4);
}

uint64_t sub_100571BC4()
{
  sub_100795A94();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100571C60;

  return sub_1004EEC44();
}

uint64_t sub_100571C60()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100571E1C;
  }

  else
  {

    swift_unknownObjectRelease();
    *(v2 + 80) = *(v2 + 40);
    sub_100571F5C(v2 + 80);
    *(v2 + 72) = *(v2 + 48);
    v6 = v2 + 72;
    sub_100571F5C(v6);
    v3 = *(v6 + 40);
    v4 = *(v6 + 48);
    v5 = sub_100571DAC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100571DAC()
{

  sub_100795D24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100571E1C()
{
  swift_unknownObjectRelease();

  *(v0 + 64) = *(v0 + 40);
  sub_100571F5C(v0 + 64);
  *(v0 + 56) = *(v0 + 48);
  sub_100571F5C(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100571EBC(uint64_t a1)
{
  v2 = sub_100571F08();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100571F08()
{
  result = qword_100AEA2F0;
  if (!qword_100AEA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2F0);
  }

  return result;
}

uint64_t sub_100571F5C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE6A50, &qword_10082AB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100571FF4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1007A2254();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  *v8 = v6;
  *(v8 + 1) = v7;
  v9 = a1;

  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
}

id sub_1005721DC()
{
  v1 = *&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText + 8];
  if (v1)
  {

    v2 = [v0 font];
    if (v2)
    {
      v3 = v2;
      v16 = sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
      v15[0] = v3;
      sub_1000076D4(v15, v14);
      v4 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002F61A8(v14, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    }

    v6 = [v0 textColor];
    if (v6)
    {
      v7 = v6;
      v16 = sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
      v15[0] = v7;
      sub_1000076D4(v15, v14);
      v8 = v7;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_1002F61A8(v14, NSForegroundColorAttributeName, v9);
    }

    v10 = objc_allocWithZone(NSAttributedString);
    v11 = sub_1007A2214();

    type metadata accessor for Key(0);
    sub_100282B6C();
    isa = sub_1007A2024().super.isa;

    v1 = [v10 initWithString:v11 attributes:isa];
  }

  return v1;
}

void sub_100572430()
{
  if (*&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText + 8])
  {
    v1 = objc_allocWithZone(UILabel);

    v2 = [v1 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v3 = sub_1007A2214();
    [v2 setText:v3];

    v4 = [v0 font];
    [v2 setFont:v4];

    [v2 sizeThatFits:{0.0, 0.0}];
    v6 = v5;

    [v0 frame];
    if (v6 > v7)
    {
      if (*&v0[OBJC_IVAR___BKLibraryBookshelfInfoBadge_fallbackBadgeText + 8])
      {
        v8 = objc_allocWithZone(UILabel);

        v9 = [v8 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v10 = sub_1007A2214();
        [v9 setText:v10];

        v11 = [v0 font];
        [v9 setFont:v11];

        [v9 sizeThatFits:{0.0, 0.0}];
      }
    }

    v12 = sub_1007A2214();

    [v0 setText:v12];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for LibraryBookshelfInfoBadge();
    objc_msgSendSuper2(&v13, "layoutSubviews");
  }
}

id sub_1005726C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryBookshelfInfoBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100572770(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    if ([v3 length] >= 1)
    {
      v4 = [v3 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_100282B6C();
      v5 = sub_1007A2044();

      if (*(v5 + 16))
      {
        v6 = sub_1002F9CF4();
        if (v7)
        {
          sub_100007484(*(v5 + 56) + 32 * v6, v18);
          sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
          if (swift_dynamicCast())
          {
            [v2 setFont:v17];
          }
        }
      }

      if (*(v5 + 16) && (v8 = sub_1002F9CF4(), (v9 & 1) != 0))
      {
        sub_100007484(*(v5 + 56) + 32 * v8, v18);

        sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
        if (swift_dynamicCast())
        {
          v10 = v17;
          [v2 setTextColor:v10];
        }
      }

      else
      {
      }
    }

    v13 = [v3 string];
    v11 = sub_1007A2254();
    v12 = v14;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v15 = &v2[OBJC_IVAR___BKLibraryBookshelfInfoBadge_badgeText];
  *v15 = v11;
  v15[1] = v12;

  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

uint64_t sub_1005729AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005729F4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100572A6C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_10079CF24();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10079C824();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079CCC4();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin(v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079CDF4();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1001F1160(&qword_100AEA338, &qword_100831598);
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v43 - v13;
  v49 = sub_1001F1160(&qword_100AEA340, &qword_1008315A0);
  __chkstk_darwin(v49);
  v16 = &v43 - v15;
  v56 = sub_1001F1160(&qword_100AEA348, &qword_1008315A8);
  __chkstk_darwin(v56);
  v18 = &v43 - v17;
  v57 = sub_1001F1160(&qword_100AEA350, &qword_1008315B0);
  __chkstk_darwin(v57);
  v58 = &v43 - v19;
  v48 = v1;
  v20 = *(v1 + 40);
  v63 = v1;

  sub_1001F1160(&qword_100AEA358, &qword_1008315B8);
  sub_100005920(&qword_100AEA360, &qword_100AEA358, &qword_1008315B8, &protocol conformance descriptor for ZStack<A>);
  v50 = v20;
  sub_10079E054();
  sub_10079CDE4();
  sub_100005920(&qword_100AEA368, &qword_100AEA338, &qword_100831598, &protocol conformance descriptor for Button<A>);
  sub_100573DA0(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v21 = v47;
  v22 = v51;
  sub_10079D6A4();
  v23 = v11;
  v24 = v18;
  (*(v52 + 8))(v23, v22);
  (*(v12 + 8))(v14, v21);
  v16[*(sub_1001F1160(&qword_100AEA370, &qword_1008315C0) + 36)] = 0;
  v25 = &v16[*(v49 + 36)];
  sub_1001F1160(&qword_100AE10D0, &qword_1008218A0);
  sub_10079C444();
  *v25 = 0;
  v26 = v53;
  sub_10079C454();
  sub_1005738B8();
  sub_100573DA0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v27 = v54;
  sub_10079D6F4();
  (*(v55 + 8))(v26, v27);
  sub_100007840(v16, &qword_100AEA340, &qword_1008315A0);
  v67 = *(v48 + 24);
  v28 = *(v48 + 16);
  v66 = v28;
  v29 = v67;

  if ((v29 & 1) == 0)
  {
    v30 = sub_1007A29C4();
    v31 = sub_10079D244();
    sub_10079AB44(v30, &_mh_execute_header, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v32 = v44;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v66, &qword_100AEA388, &qword_100831BD0);
    (*(v45 + 8))(v32, v46);
    v28 = v64;
  }

  KeyPath = swift_getKeyPath();
  v64 = v28;
  v34 = sub_10079BE64();
  v35 = (v24 + *(v56 + 36));
  *v35 = KeyPath;
  v35[1] = v34;
  v64 = sub_1003C9964();
  v65 = v36;
  sub_100573AE8();
  sub_100206ECC();
  v37 = v58;
  sub_10079D8E4();

  sub_100007840(v24, &qword_100AEA348, &qword_1008315A8);
  v38 = v59;
  sub_10079CF14();
  v39 = v62;
  sub_10079C214();
  (*(v60 + 8))(v38, v61);
  sub_100007840(v37, &qword_100AEA350, &qword_1008315B0);
  v40 = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AEA3A8, &qword_100831628);
  v42 = v39 + *(result + 36);
  *v42 = v40;
  *(v42 + 8) = 0;
  return result;
}

uint64_t sub_100573270@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10079E474();
  a2[1] = v4;
  v5 = sub_1001F1160(&qword_100AEA3B0, &qword_100831630);
  return sub_1005732C0(a1, a2 + *(v5 + 44));
}

uint64_t sub_1005732C0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1001F1160(&qword_100AEA3B8, &qword_100831638);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v30 = sub_1001F1160(&qword_100AEA3C0, &qword_100831640);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  if (qword_100AD1510 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  *&v32[6] = v33;
  *&v32[22] = v34;
  *&v32[38] = v35;
  v31 = sub_10079DF24();
  sub_10079E414();
  sub_1001F1160(&qword_100ADBD70, &qword_10081A670);
  sub_10031A988();
  sub_10079DC54();

  sub_10079D3F4();
  v17 = sub_10079D3A4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_10079D424();
  sub_100007840(v5, &unk_100AD1FC0, &unk_10080B850);
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v6 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = *v29;
  if (*v29)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_10079B9A4(&v31);

    v23 = v31;
    v24 = swift_getKeyPath();
    sub_10020B3C8(v8, v13, &qword_100AEA3B8, &qword_100831638);
    v25 = &v13[*(v30 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_10020B3C8(v13, v16, &qword_100AEA3C0, &qword_100831640);
    sub_100041488(v16, v10);
    *a2 = 256;
    v26 = *&v32[16];
    *(a2 + 2) = *v32;
    *(a2 + 18) = v26;
    *(a2 + 34) = *&v32[32];
    *(a2 + 48) = *&v32[46];
    v27 = sub_1001F1160(&qword_100AEA3C8, &qword_1008316F0);
    sub_100041488(v10, a2 + *(v27 + 48));
    sub_100007840(v16, &qword_100AEA3C0, &qword_100831640);
    return sub_100007840(v10, &qword_100AEA3C0, &qword_100831640);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100573DA0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_1005737A0@<D0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = (a3 + *(sub_1001F1160(&qword_100ADBD70, &qword_10081A670) + 36));
  v7 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v8 = *a2;
  v9 = sub_10079DF84();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  *a3 = v5;

  return result;
}

unint64_t sub_1005738B8()
{
  result = qword_100AEA378;
  if (!qword_100AEA378)
  {
    sub_1001F1234(&qword_100AEA340, &qword_1008315A0);
    sub_100573970();
    sub_100005920(&qword_100AE10F0, &qword_100AE10D0, &qword_1008218A0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA378);
  }

  return result;
}

unint64_t sub_100573970()
{
  result = qword_100AEA380;
  if (!qword_100AEA380)
  {
    sub_1001F1234(&qword_100AEA370, &qword_1008315C0);
    sub_1001F1234(&qword_100AEA338, &qword_100831598);
    sub_10079CDF4();
    sub_100005920(&qword_100AEA368, &qword_100AEA338, &qword_100831598, &protocol conformance descriptor for Button<A>);
    sub_100573DA0(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA380);
  }

  return result;
}

unint64_t sub_100573AE8()
{
  result = qword_100AEA390;
  if (!qword_100AEA390)
  {
    sub_1001F1234(&qword_100AEA348, &qword_1008315A8);
    sub_1001F1234(&qword_100AEA340, &qword_1008315A0);
    sub_10079CCC4();
    sub_1005738B8();
    sub_100573DA0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0, &qword_100831A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA390);
  }

  return result;
}

unint64_t sub_100573C2C()
{
  result = qword_100AEA3D0;
  if (!qword_100AEA3D0)
  {
    sub_1001F1234(&qword_100AEA3A8, &qword_100831628);
    sub_100573CE4();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA3D0);
  }

  return result;
}

unint64_t sub_100573CE4()
{
  result = qword_100AEA3D8;
  if (!qword_100AEA3D8)
  {
    sub_1001F1234(&qword_100AEA350, &qword_1008315B0);
    sub_100573AE8();
    sub_100573DA0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA3D8);
  }

  return result;
}

uint64_t sub_100573DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100573DE8()
{
  v0 = sub_1007A2214();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v3 widthAnchor];
    v5 = [v4 constraintEqualToConstant:13.0];

    [v5 setActive:1];
    v6 = [v3 heightAnchor];
    v7 = [v3 widthAnchor];

    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100573F70()
{
  v0 = sub_1007A2214();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

    v3 = [objc_opt_self() bc_booksWhite];
    [v2 setTintColor:v3];

    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100574058(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_hasSupplementalContent] = 0;
  v9 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView;
  sub_100573DE8();
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView;
  sub_100573F70();
  *&v4[v11] = v12;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  v13 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView;
  v15 = *&v13[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView];
  v16 = v13;
  [v16 addSubview:v15];
  v17 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView]];
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10081F2E0;
  v19 = [*&v13[v14] topAnchor];
  v20 = [v16 imageView];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 topAnchor];

    v23 = [v19 constraintEqualToAnchor:v22 constant:-2.0];
    *(v18 + 32) = v23;
    v24 = [*&v13[v14] trailingAnchor];
    v25 = [v16 imageView];

    if (v25)
    {
      v41 = objc_opt_self();
      v26 = [v25 trailingAnchor];

      v27 = [v24 constraintEqualToAnchor:v26 constant:4.0];
      *(v18 + 40) = v27;
      v28 = [*&v16[v17] centerXAnchor];
      v29 = [*&v13[v14] centerXAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v18 + 48) = v30;
      v31 = [*&v16[v17] centerYAnchor];
      v32 = [*&v13[v14] centerYAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      *(v18 + 56) = v33;
      v34 = [*&v16[v17] widthAnchor];
      v35 = [*&v13[v14] widthAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v18 + 64) = v36;
      v37 = [*&v16[v17] heightAnchor];
      v38 = [*&v13[v14] heightAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v18 + 72) = v39;
      sub_10002267C();
      isa = sub_1007A25D4().super.isa;

      [v41 activateConstraints:isa];

      sub_100574568();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100574568()
{
  v1 = OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_hasSupplementalContent;
  v2 = sub_1007A2214();

  v3 = [objc_opt_self() imageNamed:v2];

  if (v3)
  {
    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];

    v5.receiver = v0;
    v5.super_class = type metadata accessor for AudiobookTOCToolbarButton();
    objc_msgSendSuper2(&v5, "setImage:forState:", v4, 0);

    [*&v0[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalBackgroundView] setHidden:(v0[v1] & 1) == 0];
    [*&v0[OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView] setHidden:(v0[v1] & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1005746A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books25AudiobookTOCToolbarButton_supplementalIconView);
}

id sub_1005746E8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudiobookTOCToolbarButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10057479C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

__n128 sub_1005747F0(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10057481C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100574864(uint64_t result, int a2, int a3)
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
      *(result + 114) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005748F0()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 72);
  v5 = *(v0 + 64);
  v11 = v5;
  v6 = v12;

  if ((v6 & 1) == 0)
  {
    v7 = sub_1007A29C4();
    v8 = sub_10079D244();
    sub_10079AB44(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v11, &qword_100AEA388, &qword_100831BD0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_100574A4C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v73 = sub_1001F1160(&qword_100AE1108, &qword_100831A20);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v62 - v2;
  v3 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_10079D4D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v62 - v12);
  v63 = sub_1001F1160(&qword_100AEA4F0, &qword_100831A38);
  __chkstk_darwin(v63);
  v15 = &v62 - v14;
  v64 = sub_1001F1160(&qword_100AEA4E0, &qword_100831A30);
  __chkstk_darwin(v64);
  v65 = &v62 - v16;
  v66 = sub_1001F1160(&qword_100AEA4C0, &qword_100831A18);
  __chkstk_darwin(v66);
  v18 = &v62 - v17;
  v70 = sub_1001F1160(&qword_100AEA540, &qword_100831B28);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v76 = &v62 - v19;
  v68 = sub_1001F1160(&qword_100AEA4B8, &qword_100831A10);
  __chkstk_darwin(v68);
  v67 = &v62 - v20;
  v79 = *(v1 + 96);
  LOBYTE(v80) = *(v1 + 112);
  sub_1001F1160(&qword_100AEA448, &qword_1008319D0);
  sub_10079E1C4();
  v74 = v1;
  v21 = sub_100575440(v77);
  (*(v7 + 104))(v9, enum case for Font.TextStyle.callout(_:), v6);
  v22 = sub_10079D3A4();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_10079D434();
  sub_100007840(v5, &unk_100AD1FC0, &unk_10080B850);
  (*(v7 + 8))(v9, v6);
  sub_10079D3F4();
  v23 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v25 = (v13 + *(v11 + 44));
  v26 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v27 = enum case for Image.Scale.large(_:);
  v28 = sub_10079DF84();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v13 = v21;
  v13[1] = KeyPath;
  v13[2] = v23;
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  LOBYTE(v26) = sub_10079D2A4();
  *(inited + 32) = v26;
  v30 = sub_10079D2B4();
  *(inited + 33) = v30;
  v31 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v26)
  {
    v31 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v30)
  {
    v31 = sub_10079D2D4();
  }

  v32 = v74;
  sub_10079BBA4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10020B3C8(v13, v15, &qword_100AD1CD8, &unk_10080B710);
  v41 = &v15[*(v63 + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_10079E474();
  sub_10079C414();
  v42 = v65;
  sub_10020B3C8(v15, v65, &qword_100AEA4F0, &qword_100831A38);
  v43 = (v42 + *(v64 + 36));
  v44 = v84;
  v45 = v85;
  v43[4] = v83;
  v43[5] = v44;
  v43[6] = v45;
  v46 = v80;
  *v43 = v79;
  v43[1] = v46;
  v47 = v82;
  v43[2] = v81;
  v43[3] = v47;
  v48 = sub_1005748F0();
  v49 = sub_10079D294();
  sub_10020B3C8(v42, v18, &qword_100AEA4E0, &qword_100831A30);
  v50 = &v18[*(v66 + 36)];
  *v50 = v48;
  v50[8] = v49;
  sub_10079E414();
  v51 = v71;
  v52 = sub_10079C9F4();
  __chkstk_darwin(v52);
  sub_1001F1160(&qword_100AEA4C8, &qword_100831A28);
  sub_100577394();
  v77 = &type metadata for Solarium;
  v78 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_100577564();
  v53 = v73;
  sub_10079DC64();
  (*(v72 + 8))(v51, v53);
  sub_100007840(v18, &qword_100AEA4C0, &qword_100831A18);
  if (*v32)
  {
    v54 = *v32;
    v55 = ChromeStyle.accentColor.getter();

    v56 = swift_getKeyPath();
    v77 = v55;
    v57 = sub_10079BE64();
    v58 = v67;
    (*(v69 + 32))(v67, v76, v70);
    v59 = (v58 + *(v68 + 36));
    *v59 = v56;
    v59[1] = v57;
    v60 = v75;
    sub_1000415F0(v58, v75);
    result = sub_1001F1160(&qword_100AEA458, &qword_1008319E0);
    *(v60 + *(result + 36)) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100577A04(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100575440(unsigned __int8 a1)
{
  v3 = sub_10079AA44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100AD1C40 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23C08;
    }

    else if (*(v1 + 113))
    {
      if (qword_100AD1C38 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23BF0;
    }

    else
    {
      if (qword_100AD1C50 != -1)
      {
        swift_once();
      }

      v7 = qword_100B23C38;
    }
  }

  else if (a1)
  {
    if (qword_100AD1C48 != -1)
    {
      swift_once();
    }

    v7 = qword_100B23C20;
  }

  else
  {
    if (qword_100AD1C30 != -1)
    {
      swift_once();
    }

    v7 = qword_100B23BD8;
  }

  v8 = sub_100008B98(v3, v7);
  (*(v4 + 16))(v6, v8, v3);
  return sub_10079DFB4();
}

uint64_t sub_100575660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079C824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 56);
  v10 = *(a2 + 48);
  v22 = v10;
  v11 = v23;

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v22, &qword_100AD8538, &qword_10083FC00);
    (*(v7 + 8))(v9, v6);
    v12 = v21;
  }

  sub_100577AA4(a1, a3);
  v15 = a3 + *(sub_1001F1160(&qword_100AEA508, &qword_100831A48) + 36);
  *v15 = v12;
  *(v15 + 8) = 256;

  if ((v11 & 1) == 0)
  {
    v16 = sub_1007A29C4();
    v17 = sub_10079D244();
    sub_10079AB44(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v22, &qword_100AD8538, &qword_10083FC00);
    (*(v7 + 8))(v9, v6);
    v10 = v21;
  }

  result = sub_1001F1160(&qword_100AEA4C8, &qword_100831A28);
  v19 = a3 + *(result + 36);
  *v19 = v10;
  *(v19 + 8) = 0;
  return result;
}

uint64_t sub_1005758CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v61 = a1;
  v59 = sub_10079C124();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10079E584();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10079CCC4();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AEA420, &qword_1008319A8);
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v46 = sub_1001F1160(&qword_100AEA428, &qword_1008319B0);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v42 - v11;
  v44 = sub_1001F1160(&qword_100AEA430, &qword_1008319B8);
  __chkstk_darwin(v44);
  v14 = &v42 - v13;
  v53 = sub_1001F1160(&qword_100AEA438, &qword_1008319C0);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v42 - v15;
  v55 = sub_1001F1160(&qword_100AEA440, &qword_1008319C8);
  __chkstk_darwin(v55);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v42 - v18;
  v70 = *(v2 + 96);
  v71 = *(v2 + 112);
  v65 = *(v2 + 96);
  LOBYTE(v66) = *(v2 + 112);
  v45 = sub_1001F1160(&qword_100AEA448, &qword_1008319D0);
  sub_10079E1F4();
  v65 = v68;
  LOBYTE(v66) = v69;
  v64 = v2;
  v63 = v2;
  sub_1001F1160(&qword_100AEA450, &qword_1008319D8);
  sub_1001F1160(&qword_100AEA458, &qword_1008319E0);
  sub_100576E74();
  sub_100576EC8();
  sub_10057718C();
  sub_10079E104();
  sub_10079C454();
  v19 = sub_100005920(&qword_100AEA510, &qword_100AEA420, &qword_1008319A8, &protocol conformance descriptor for Picker<A, B, C>);
  v20 = sub_100577A04(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v21 = v49;
  sub_10079D6F4();
  (*(v50 + 8))(v7, v21);
  (*(v43 + 8))(v10, v8);
  v22 = v51;
  sub_10079E574();
  *&v65 = v8;
  *(&v65 + 1) = v21;
  v66 = v19;
  v67 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v46;
  sub_10079DCB4();
  (*(v56 + 8))(v22, v57);
  (*(v48 + 8))(v12, v23);
  KeyPath = swift_getKeyPath();
  v25 = v44;
  v26 = &v14[*(v44 + 36)];
  *v26 = KeyPath;
  v26[8] = 2;
  v27 = v58;
  sub_10079C114();
  v28 = sub_100577728();
  v29 = v42;
  v30 = v25;
  v31 = v59;
  sub_10079D704();
  (*(v60 + 8))(v27, v31);
  sub_100007840(v14, &qword_100AEA430, &qword_1008319B8);
  v68 = *(v3 + 80);
  *&v65 = v30;
  *(&v65 + 1) = v31;
  v66 = v28;
  v67 = &protocol witness table for MenuPickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v32 = v47;
  v33 = v53;
  sub_10079D8E4();
  (*(v54 + 8))(v29, v33);
  v65 = v70;
  LOBYTE(v66) = v71;
  sub_10079E1C4();
  *&v65 = sub_1007A0A04();
  *(&v65 + 1) = v34;
  v35 = v52;
  sub_10079C1E4();

  sub_100007840(v32, &qword_100AEA440, &qword_1008319C8);
  v62 = v3;
  sub_1001F1160(&qword_100AE2D20, &qword_100831AA0);
  sub_1005778E4();
  sub_100005920(&qword_100AE2D30, &qword_100AE2D20, &qword_100831AA0, &protocol conformance descriptor for VStack<A>);
  v36 = v61;
  sub_10079DAC4();
  sub_100007840(v35, &qword_100AEA440, &qword_1008319C8);
  v37 = swift_getKeyPath();
  v38 = v36 + *(sub_1001F1160(&qword_100AEA528, &qword_100831AD8) + 36);
  *v38 = v37;
  *(v38 + 8) = 0;
  v39 = swift_getKeyPath();
  v40 = (v36 + *(sub_1001F1160(&qword_100AEA530, &qword_100831B10) + 36));
  sub_1001F1160(&qword_100AEA538, &unk_100831B18);
  result = sub_10079E574();
  *v40 = v39;
  return result;
}

__n128 sub_1005762C8@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_10079CB24();
  sub_100576344(&v8);
  v4 = v8;
  v5 = v10;
  v6 = v11;
  result = v9;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v4;
  a2[2] = result;
  a2[3].n128_u8[0] = v5;
  a2[3].n128_u64[1] = v6;
  return result;
}

double sub_100576344@<D0>(uint64_t a2@<X8>)
{
  sub_1001F1160(&qword_100AEA448, &qword_1008319D0);
  sub_10079E1C4();
  v3 = sub_100575440(v11);
  sub_100206ECC();

  v4 = sub_10079D5D4();
  v6 = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = v7 & 1;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;

  sub_1001F1894(v4, v6, v8);

  sub_10020B430(v4, v6, v8);

  return result;
}

uint64_t sub_10057644C(uint64_t a1, double a2)
{
  v3 = sub_10079E584();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_10079C7E4();
}

uint64_t sub_100576514(uint64_t a1)
{
  v8 = &off_100A0D550;
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_100577B1C(a1, v7);
  sub_1001F1160(&qword_100AEA548, &qword_100831BD8);
  sub_1001F1160(&qword_100AEA478, &qword_1008319E8);
  sub_100005920(&qword_100AEA550, &qword_100AEA548, &qword_100831BD8, &protocol conformance descriptor for [A]);
  sub_100576F4C();
  sub_100577B54();
  return sub_10079E274();
}

uint64_t sub_100576658@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v5 = sub_10079D074();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079CEC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AEA498, &unk_100831A00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v33 = sub_1001F1160(&qword_100AEA490, &qword_1008319F8);
  v15 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = &v31 - v16;
  v34 = *a1;
  v41 = v34;
  v39 = a2;
  v40 = v34;
  sub_1001F1160(&qword_100AEA560, &qword_100831BE0);
  sub_100577BBC();
  sub_10079DFC4();
  sub_10079CEB4();
  v18 = sub_100005920(&qword_100AEA4A0, &qword_100AEA498, &unk_100831A00, &protocol conformance descriptor for Label<A, B>);
  v19 = sub_100577A04(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  sub_10079D674();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v20 = v35;
  sub_10079D054();
  *&v42 = v11;
  *(&v42 + 1) = v7;
  v43 = v18;
  v44 = v19;
  v21 = v36;
  v22 = 1;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  sub_10079D9A4();
  (*(v37 + 8))(v20, v38);
  (*(v15 + 8))(v17, v23);
  v42 = *(v32 + 96);
  LOBYTE(v43) = *(v32 + 112);
  sub_1001F1160(&qword_100AEA448, &qword_1008319D0);
  sub_10079E1C4();
  v24 = sub_1007A0A14();
  v26 = v25;
  if (v24 != sub_1007A0A14() || v26 != v27)
  {
    v22 = sub_1007A3AB4();
  }

  *(v21 + *(sub_1001F1160(&qword_100AEA488, &qword_1008319F0) + 36)) = v22 & 1;
  KeyPath = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AEA478, &qword_1008319E8);
  v30 = v21 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_100576B48@<X0>(uint64_t a1@<X8>)
{
  sub_1007A09F4();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100576BA0@<X0>(void **a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_10079BC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v13 = sub_100575440(a2);
  v14 = *a1;
  if (*a1)
  {
    v15 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v14;
    sub_10079B9A4(v12);

    (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
    v17 = sub_10079BC34();
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    if (v17)
    {
      v19 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v19 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v20 = v19;

    KeyPath = swift_getKeyPath();
    v23[1] = v20;
    result = sub_10079BE64();
    *a3 = v15;
    a3[1] = KeyPath;
    a3[2] = result;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100577A04(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

unint64_t sub_100576E74()
{
  result = qword_100AEA460;
  if (!qword_100AEA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA460);
  }

  return result;
}

unint64_t sub_100576EC8()
{
  result = qword_100AEA468;
  if (!qword_100AEA468)
  {
    sub_1001F1234(&qword_100AEA450, &qword_1008319D8);
    sub_100576F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA468);
  }

  return result;
}

unint64_t sub_100576F4C()
{
  result = qword_100AEA470;
  if (!qword_100AEA470)
  {
    sub_1001F1234(&qword_100AEA478, &qword_1008319E8);
    sub_100577004();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA470);
  }

  return result;
}

unint64_t sub_100577004()
{
  result = qword_100AEA480;
  if (!qword_100AEA480)
  {
    sub_1001F1234(&qword_100AEA488, &qword_1008319F0);
    sub_1001F1234(&qword_100AEA490, &qword_1008319F8);
    sub_1001F1234(&qword_100AEA498, &unk_100831A00);
    sub_10079CEC4();
    sub_100005920(&qword_100AEA4A0, &qword_100AEA498, &unk_100831A00, &protocol conformance descriptor for Label<A, B>);
    sub_100577A04(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA480);
  }

  return result;
}

unint64_t sub_10057718C()
{
  result = qword_100AEA4A8;
  if (!qword_100AEA4A8)
  {
    sub_1001F1234(&qword_100AEA458, &qword_1008319E0);
    sub_100577218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4A8);
  }

  return result;
}

unint64_t sub_100577218()
{
  result = qword_100AEA4B0;
  if (!qword_100AEA4B0)
  {
    sub_1001F1234(&qword_100AEA4B8, &qword_100831A10);
    sub_1001F1234(&qword_100AEA4C0, &qword_100831A18);
    sub_1001F1234(&qword_100AE1108, &qword_100831A20);
    sub_1001F1234(&qword_100AEA4C8, &qword_100831A28);
    sub_100577394();
    swift_getOpaqueTypeConformance2();
    sub_100577564();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0, &qword_100831A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4B0);
  }

  return result;
}

unint64_t sub_100577394()
{
  result = qword_100AEA4D0;
  if (!qword_100AEA4D0)
  {
    sub_1001F1234(&qword_100AEA4C0, &qword_100831A18);
    sub_10057744C();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4D0);
  }

  return result;
}

unint64_t sub_10057744C()
{
  result = qword_100AEA4D8;
  if (!qword_100AEA4D8)
  {
    sub_1001F1234(&qword_100AEA4E0, &qword_100831A30);
    sub_1005774D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4D8);
  }

  return result;
}

unint64_t sub_1005774D8()
{
  result = qword_100AEA4E8;
  if (!qword_100AEA4E8)
  {
    sub_1001F1234(&qword_100AEA4F0, &qword_100831A38);
    sub_1001F1584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4E8);
  }

  return result;
}

unint64_t sub_100577564()
{
  result = qword_100AEA4F8;
  if (!qword_100AEA4F8)
  {
    sub_1001F1234(&qword_100AEA4C8, &qword_100831A28);
    sub_10057761C();
    sub_100005920(&qword_100AE2D10, &qword_100AE2D18, &qword_10083FB80, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA4F8);
  }

  return result;
}

unint64_t sub_10057761C()
{
  result = qword_100AEA500;
  if (!qword_100AEA500)
  {
    sub_1001F1234(&qword_100AEA508, &qword_100831A48);
    sub_100577394();
    sub_100005920(&qword_100ADC320, &qword_100ADC300, &unk_100831A50, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA500);
  }

  return result;
}

uint64_t sub_1005776D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6B4();
  *a1 = result;
  return result;
}

unint64_t sub_100577728()
{
  result = qword_100AEA518;
  if (!qword_100AEA518)
  {
    sub_1001F1234(&qword_100AEA430, &qword_1008319B8);
    sub_1001F1234(&qword_100AEA428, &qword_1008319B0);
    sub_1001F1234(&qword_100AEA420, &qword_1008319A8);
    sub_10079CCC4();
    sub_100005920(&qword_100AEA510, &qword_100AEA420, &qword_1008319A8, &protocol conformance descriptor for Picker<A, B, C>);
    sub_100577A04(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD9C80, &qword_100AD9C88, &qword_1008173D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA518);
  }

  return result;
}

unint64_t sub_1005778E4()
{
  result = qword_100AEA520;
  if (!qword_100AEA520)
  {
    sub_1001F1234(&qword_100AEA440, &qword_1008319C8);
    sub_1001F1234(&qword_100AEA430, &qword_1008319B8);
    sub_10079C124();
    sub_100577728();
    swift_getOpaqueTypeConformance2();
    sub_100577A04(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA520);
  }

  return result;
}

uint64_t sub_100577A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100577A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C764();
  *a1 = result;
  return result;
}

uint64_t sub_100577AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEA4C0, &qword_100831A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100577B54()
{
  result = qword_100AEA558;
  if (!qword_100AEA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA558);
  }

  return result;
}

unint64_t sub_100577BBC()
{
  result = qword_100AEA568;
  if (!qword_100AEA568)
  {
    sub_1001F1234(&qword_100AEA560, &qword_100831BE0);
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0, &qword_100831A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA568);
  }

  return result;
}

unint64_t sub_100577C74()
{
  result = qword_100AEA570;
  if (!qword_100AEA570)
  {
    sub_1001F1234(&qword_100AEA530, &qword_100831B10);
    sub_100577D2C();
    sub_100005920(&qword_100AEA580, &qword_100AEA538, &unk_100831B18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA570);
  }

  return result;
}

unint64_t sub_100577D2C()
{
  result = qword_100AEA578;
  if (!qword_100AEA578)
  {
    sub_1001F1234(&qword_100AEA528, &qword_100831AD8);
    sub_1001F1234(&qword_100AEA440, &qword_1008319C8);
    sub_1001F1234(&qword_100AE2D20, &qword_100831AA0);
    sub_1005778E4();
    sub_100005920(&qword_100AE2D30, &qword_100AE2D20, &qword_100831AA0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA578);
  }

  return result;
}

void sub_100577EBC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  *a2 = *(v3 + 17);
}

uint64_t sub_100577F8C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEA588);
  sub_100008B98(v0, qword_100AEA588);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t sub_100578010()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1005780B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_100578168(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A04();

  return result;
}

uint64_t sub_100578238()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100578300()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return swift_weakLoadStrong();
}

uint64_t sub_1005783C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay;
  swift_beginAccess();
  return sub_10046210C(v5 + v3, a1);
}

void sub_100578588(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage;
  v5 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  sub_10000A7C4(0, &qword_100ADDB48, UIImage_ptr);
  v6 = v5;
  v7 = sub_1007A3184();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

id sub_100578710(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1005787FC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return *(v2 + *a2);
}

void sub_10057889C(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a4 = *(v6 + *a3);
}

void sub_100578978(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

uint64_t sub_100578A7C()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
}

double sub_100578B24(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return result;
}

void sub_100578C44(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
  if (sub_10079BB94())
  {
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

double sub_100578E24(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return *(v2 + *a2);
}

__n128 sub_100578EE0@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v7 = v6 + *a3;
  result = *v7;
  v9 = *(v7 + 16);
  *a4 = *v7;
  a4[1] = v9;
  return result;
}

void sub_100578F98(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  sub_100578FC4(a2, a3, a4, a5);
}

void sub_100578FC4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin);
  *&v6.f64[0] = a1.n128_u64[0];
  *&v6.f64[1] = a2.n128_u64[0];
  *&v7.f64[0] = a3.n128_u64[0];
  *&v7.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin), v6), vceqq_f64(*(v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16), v7)))))
  {
    *v5 = a1.n128_u64[0];
    v5[1] = a2.n128_u64[0];
    v5[2] = a3.n128_u64[0];
    v5[3] = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

double sub_10057912C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor);

  return result;
}

double sub_10057920C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor;

  v4 = sub_10079DD54();

  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return result;
}

id sub_100579390@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1005794A8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
  v9 = v8;
  v10 = sub_1007A3184();

  if (v10)
  {
    v11 = *(v5 + v7);
    *(v5 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

uint64_t sub_100579640(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10057F6DC(&qword_100AEB098, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v14[0] = a1;
  LOBYTE(a1) = sub_1007A2124();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return (v10)(v14[0], v4);
}

double sub_100579A04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return result;
}

double sub_100579AA8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return result;
}

double sub_100579BF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return *(v2 + *a2);
}

double sub_100579CAC@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, double *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

void sub_100579DB0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *a1) == a4)
  {
    *(v4 + *a1) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

uint64_t sub_100579F34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  return sub_10057F354(v5 + v3, a1, type metadata accessor for BookReaderChromeState);
}

uint64_t sub_10057A010(unsigned __int8 *a1)
{
  v3 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_10057F354(v1 + v6, v5, type metadata accessor for BookReaderChromeState);
  v7 = sub_100641198(v5, a1);
  sub_10057F52C(v5, type metadata accessor for BookReaderChromeState);
  if (v7)
  {
    sub_10057F354(a1, v5, type metadata accessor for BookReaderChromeState);
    swift_beginAccess();
    sub_10057F5C4(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return sub_10057F52C(a1, type metadata accessor for BookReaderChromeState);
}

uint64_t sub_10057A220(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  a4(a2, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_10057A3FC@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v8 = *a2;
  swift_beginAccess();
  v9 = (a3)(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

uint64_t sub_10057A4FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  swift_beginAccess();
  v5 = sub_10079C104();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10057A5F4(uint64_t a1)
{
  v2 = sub_10079C104();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10057A6C0(v5);
}

uint64_t sub_10057A6C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079C104();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10057F6DC(&qword_100AEB090, &type metadata accessor for LayoutDirection, &protocol conformance descriptor for LayoutDirection);
  v14[0] = a1;
  LOBYTE(a1) = sub_1007A2124();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_10057A960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void, __n128))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = (a4)(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_10057AA80()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  return *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);
}

void sub_10057AB28(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }
}

void *sub_10057AC7C@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  result = sub_10079B904();
  *a3 = v5;
  return result;
}

uint64_t sub_10057ADE4(uint64_t a1)
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  sub_10079B904();
  return v2;
}

void sub_10057AEB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  sub_10079B904();
  if (v4 != v6)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100797A04();

    if ((a1 & 1) == 0)
    {
      byte_100B23530 = 1;
      if (qword_100AD1860 != -1)
      {
        swift_once();
      }

      v8 = qword_100AEA5A0;
      v9 = sub_1007A2214();
      [v8 setBool:1 forKey:v9];
    }
  }
}

double sub_10057B0D4()
{
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  swift_beginAccess();

  return result;
}

double sub_10057B194@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_10057B25C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1004A1070(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  return result;
}

void sub_10057B3AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

double sub_10057B444()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AEB020, &unk_100832088);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v32 - v4;
  v5 = sub_1001F1160(&unk_100AEA120, &qword_100831170);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v42 = v32 - v7;
  v8 = sub_1001F1160(&qword_100AEB028, &qword_100832098);
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  __chkstk_darwin(v8);
  v43 = v32 - v10;
  v41 = sub_1001F1160(&qword_100AEB030, &qword_1008320A0);
  v11 = *(v41 - 1);
  __chkstk_darwin(v41);
  v13 = v32 - v12;
  v55 = sub_1001F1160(&qword_100AEB038, &qword_1008320A8);
  __chkstk_darwin(v55);
  v32[1] = v32 - v14;
  v35 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  __chkstk_darwin(v35);
  v32[0] = v32 - v15;
  v33 = sub_1001F1160(&qword_100AE5DE0, &qword_1008291B8);
  __chkstk_darwin(v33);
  v36 = sub_1001F1160(&qword_100AEB040, &unk_1008320B0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v17 = v32 - v16;
  swift_beginAccess();
  sub_1001F1160(&qword_100AE3D00, &qword_100838CA0);
  sub_10079B974();
  swift_endAccess();
  v18 = v0[11];
  v45 = v0[10];
  v46 = v18;
  ObjectType = swift_getObjectType();
  v56 = sub_10079F504();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  sub_10079B974();
  swift_endAccess();
  v57 = *(v0[17] + 88);
  sub_1001F1160(&qword_100ADFED8, &qword_1008201E8);
  v38 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_100005920(&qword_100AEB048, &qword_100ADFED8, &qword_1008201E8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v57 = sub_10079BA14();
  sub_1001F1160(&qword_100AEB050, &unk_1008320C0);
  v54 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&qword_100AEB058, &qword_100AEB050, &unk_1008320C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BA74();

  sub_100005920(&qword_100AEB060, &qword_100AEB030, &qword_1008320A0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v41;
  sub_10079BAF4();
  (*(v11 + 8))(v13, v19);
  v39 = sub_1001F1160(&unk_100AEA1A0, &unk_10082E830);
  v34 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&qword_100AE5DF0, &qword_100AE5DE0, &qword_1008291B8, &protocol conformance descriptor for Published<A>.Publisher);
  v40 = sub_100005920(&qword_100AF2900, &unk_100AEA1A0, &unk_10082E830, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);
  v41 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100005920(&qword_100AEB068, &qword_100AEB038, &qword_1008320A8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10079B7C4();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10057F23C;
  *(v21 + 24) = v20;
  sub_100005920(&qword_100AEB070, &qword_100AEB040, &unk_1008320B0, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v22 = v36;
  sub_10079BB04();

  (*(v37 + 8))(v17, v22);
  swift_getKeyPath();
  v57 = v1;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v55 = OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables;
  swift_beginAccess();
  v37 = sub_1001F1160(&unk_100AF27C0, &unk_10083E0E0);
  v36 = sub_100005920(&qword_100AEBCC0, &unk_100AF27C0, &unk_10083E0E0, &protocol conformance descriptor for [A]);
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  v57 = *(v1[14] + 288);
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40, &unk_10080B800, v38);
  v56 = sub_10079BA14();
  swift_beginAccess();
  sub_1001F1160(&unk_100AF2880, qword_1008275D0);
  v23 = v42;
  sub_10079B974();
  swift_endAccess();
  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, v54);
  sub_100005920(&unk_100AEA130, &unk_100AEA120, &qword_100831170, v34);
  v24 = v43;
  v25 = v47;
  sub_10079BA44();
  (*(v48 + 8))(v23, v25);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10057F27C;
  *(v27 + 24) = v26;
  sub_100005920(&qword_100AEB078, &qword_100AEB028, &qword_100832098, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v28 = v49;
  sub_10079BB04();

  (*(v50 + 8))(v24, v28);
  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  v57 = sub_10079F504();
  sub_10057F6DC(&qword_100ADC558, type metadata accessor for BookLayoutMode, &unk_10080C068);
  v29 = v51;
  sub_10079BAF4();

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AEB080, &qword_100AEB020, &unk_100832088, v41);
  v30 = v52;
  sub_10079BB04();

  (*(v53 + 8))(v29, v30);
  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  swift_getObjectType();
  v57 = sub_1007A13F4();
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100AE8798, &unk_10082E480);
  sub_100005920(&qword_100AEB890, &qword_100AE8798, &unk_10082E480, v54);
  sub_10079BB04();

  swift_getKeyPath();
  v57 = v1;
  sub_100797A14();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A34();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v57 = v1;
  swift_getKeyPath();
  sub_100797A24();

  return result;
}

uint64_t sub_10057C404@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_1001F1160(&qword_100ADFED0, &qword_100820190);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  swift_storeEnumTagMultiPayload();
  v20 = *(v11 + 56);
  sub_10057F354(a1, v13, type metadata accessor for PageTurnViewModel.State);
  sub_10057F354(v19, &v13[v20], type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10057F52C(&v13[v20], type metadata accessor for PageTurnViewModel.State);
      v24 = v13;
LABEL_9:
      result = sub_10057F52C(v24, type metadata accessor for PageTurnViewModel.State);
      v22 = 1;
      goto LABEL_12;
    }

LABEL_11:
    result = sub_100007840(v13, &qword_100ADFED0, &qword_100820190);
    v22 = 0;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = v13;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_10057F354(v13, v16, type metadata accessor for PageTurnViewModel.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
    sub_10057F52C(v16, type metadata accessor for PageTurnViewModel.State.Active);
    goto LABEL_11;
  }

  sub_10057F3BC(v16, v9);
  sub_10057F3BC(&v13[v20], v6);
  v22 = sub_1003AE8EC(v9, v6);
  sub_10057F52C(v6, type metadata accessor for PageTurnViewModel.State.Active);
  sub_10057F52C(v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_10057F52C(v19, type metadata accessor for PageTurnViewModel.State);
  result = sub_10057F52C(v13, type metadata accessor for PageTurnViewModel.State);
LABEL_12:
  *a2 = v22;
  return result;
}

double sub_10057C78C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v10 = sub_10079FE94();
  v12 = v11;
  v13 = 1;
  if (v10 != sub_10079FE94() || v12 != v14)
  {
    v13 = sub_1007A3AB4();
  }

  sub_10057D8C4(v13 & 1, a3 & 1);
  swift_getKeyPath();
  sub_100797A14();

  v16 = sub_10079FE94();
  v18 = v17;
  if (v16 == sub_10079FE94() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_1007A3AB4();

    if ((v20 & 1) == 0)
    {
      if (a2 == 2 || (a3 & 1) != 0 || (a4 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_16;
  }

LABEL_12:
  a1 = sub_10079DDC4();
LABEL_17:

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v21 = sub_10079DD54();

  if (v21)
  {
  }

  else
  {
    sub_10057920C(a1);
  }

  return result;
}

uint64_t sub_10057CA7C(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  if (a1)
  {
    v10 = type metadata accessor for OverlayViewModel.Overlay(0);
    v11 = (*(*(v10 - 8) + 48))(a2, 1, v10) == 1;
    v12 = (v9 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible);
    if (((v11 ^ *(v9 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible)) & 1) == 0)
    {
LABEL_4:
      *v12 = v11;

      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
    v12 = (Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible);
    if ((*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v17[-2] = v9;
  LOBYTE(v17[-1]) = v11;
  v17[1] = v9;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A04();

LABEL_7:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10046210C(a2, v7);
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    v17[-2] = v15;
    v17[-1] = v7;
    v17[0] = v15;
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();

    return sub_100007840(v7, &qword_100ADB1C0, &qword_10082A4E0);
  }

  return result;
}

double sub_10057CD9C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1007A2BB4() & 1;
    swift_getKeyPath();
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    if (v5 != *(v4 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100797A04();
    }

    sub_10057E32C();
  }

  return result;
}

double sub_10057CF28(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10057D79C(v2);
    v6 = sub_1007A0A14();
    v8 = v7;
    if (v6 == sub_1007A0A14() && v8 == v9)
    {

      v12 = (v5 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode);
      v11 = 1;
      if ((*(v5 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = sub_1007A3AB4();

      v12 = (v5 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode);
      if ((v11 & 1) != *(v5 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode))
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
        sub_100797A04();

LABEL_10:
        sub_10057E32C();

        return result;
      }
    }

    *v12 = v11 & 1;
    goto LABEL_10;
  }

  return result;
}

double sub_10057D110(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_100AD1858 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AEA588);
    oslog = sub_10079ACC4();
    v4 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "failed to get cover image with error", v5, 2u);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100578588([objc_allocWithZone(UIImage) initWithCGImage:a1]);
    }
  }

  return result;
}

void sub_10057D260()
{
  v1 = v0;
  v2 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(ObjectType, v2);
  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) == v4)
  {
    *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  v6 = (*(v2 + 32))(ObjectType, v2);
  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) == v6)
  {
    *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = v6;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F814();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_10079F6B4();
    if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) == v8)
    {
      *(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = v8;
    }

    else
    {
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      sub_100797A04();
    }

    v10 = sub_1007A0CE4();
    v12 = v11;
    if (v10 != sub_1007A0CE4() || v12 != v13)
    {
      sub_1007A3AB4();
    }

    (*(v2 + 96))(ObjectType, v2);
    sub_10079BBB4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = (v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
    if (sub_10079BB94())
    {
      *v22 = v15;
      v22[1] = v17;
      v22[2] = v19;
      v22[3] = v21;
    }

    else
    {
      v23 = swift_getKeyPath();
      __chkstk_darwin(v23);
      sub_100797A04();
    }

    swift_getObjectType();
    v24 = sub_1007A1384();
    sub_10057D79C(v24);
    swift_unknownObjectRelease();
  }
}

void sub_10057D79C(uint64_t a1)
{
  v2 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v4.n128_f64[0] = (*(v2 + 96))(ObjectType, v2);
  sub_1003AC4B4(v4, v5, v6, v7);
  v8 = sub_1007A0A14();
  v10 = v9;
  if (v8 == sub_1007A0A14() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v13);

  sub_10057D8C4(v12 & 1, v13);
}

void sub_10057D8C4(int a1, int a2)
{
  v3 = v2;
  v50 = a1;
  v5 = sub_10079C104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v53 = v2;
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v51 = sub_10079F814();
    v47 = v9;
    swift_unknownObjectRelease();
    v10 = [objc_opt_self() sharedApplication];
    v44 = [v10 userInterfaceLayoutDirection];

    v48 = *(v3 + 224);
    v49 = a2;
    v45 = v6;
    v46 = v5;
    if (v48 == 1)
    {
      LOBYTE(v11) = 0;
      v12 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle);
      if ((*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle) & 1) == 0)
      {
LABEL_4:
        *v12 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      swift_getKeyPath();
      v53 = v3;
      sub_100797A14();

      v17 = v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v11 = *(v17 + *(type metadata accessor for BookReaderChromeState(0) + 32));
      v12 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle);
      if (v11 == *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle))
      {
        goto LABEL_4;
      }
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v44 - 2) = v3;
    *(&v44 - 8) = v11;
    v52 = v3;
    sub_100797A04();

LABEL_12:
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    v19 = OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow;
    if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow) == 1)
    {
      LOBYTE(v20) = 0;
      v21 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge);
      if ((*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge) & 1) == 0)
      {
LABEL_14:
        *v21 = v20;
        goto LABEL_17;
      }
    }

    else
    {
      swift_getKeyPath();
      v52 = v3;
      sub_100797A14();

      v20 = *v12;
      v21 = (v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge);
      if (v20 == *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge))
      {
        goto LABEL_14;
      }
    }

    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    *(&v44 - 2) = v3;
    *(&v44 - 8) = v20;
    v52 = v3;
    sub_100797A04();

LABEL_17:
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    if (*v12 == 1)
    {
      v23 = v46;
      v24 = v44;
      if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL))
      {
LABEL_19:
        v25 = &enum case for LayoutDirection.rightToLeft(_:);
        goto LABEL_22;
      }
    }

    else
    {
      v24 = v44;
      v23 = v46;
      if (v44 == 1)
      {
        goto LABEL_19;
      }
    }

    v25 = &enum case for LayoutDirection.leftToRight(_:);
LABEL_22:
    v26 = v24 == 1;
    (*(v45 + 104))(v8, *v25, v23);
    sub_10057A6C0(v8);
    v27 = ((v26 ^ *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL)) ^ 1) & 1;
    if (v27 == *(v3 + v19))
    {
      *(v3 + v19) = v27;
    }

    else
    {
      v28 = swift_getKeyPath();
      __chkstk_darwin(v28);
      *(&v44 - 2) = v3;
      *(&v44 - 8) = v27;
      v52 = v3;
      sub_100797A04();
    }

    v29 = v49;
    swift_getObjectType();
    v30 = sub_10079F684();
    swift_getKeyPath();
    v52 = v3;
    sub_100797A14();

    if (*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) == 1)
    {
      v31 = 0;
      v32 = *(v3 + 136);
      if ((v32[17] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v31 = v29 & (v50 ^ 1);
      v32 = *(v3 + 136);
      if ((v31 & 1) == v32[17])
      {
LABEL_27:
        v32[17] = v31 & 1;
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_38;
      }
    }

    v47 = v30;
    v37 = swift_getKeyPath();
    __chkstk_darwin(v37);
    *(&v44 - 2) = v32;
    *(&v44 - 8) = v31 & 1;
    v52 = v32;
    sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
    sub_100797A04();

    v30 = v47;
    if ((v49 & 1) == 0)
    {
LABEL_28:
      if (v48)
      {
        v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
        v34 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
        if ((v50 & (v30 == 2)) != 0)
        {
          if (v34 == 30)
          {
            swift_unknownObjectRelease();
            v35 = 30;
LABEL_46:
            *(v3 + v33) = v35;
            return;
          }

          v40 = swift_getKeyPath();
          __chkstk_darwin(v40);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 30;
          v52 = v3;
        }

        else
        {
          if (v34 == 31)
          {
            swift_unknownObjectRelease();
            v35 = 31;
            goto LABEL_46;
          }

          v42 = swift_getKeyPath();
          __chkstk_darwin(v42);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 31;
          v52 = v3;
        }
      }

      else
      {
        v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
        v36 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode);
        if (v31 & 1 | v50 & (v30 == 2))
        {
          if (v36 == 28)
          {
            swift_unknownObjectRelease();
            v35 = 28;
            goto LABEL_46;
          }

          v41 = swift_getKeyPath();
          __chkstk_darwin(v41);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 28;
          v52 = v3;
        }

        else
        {
          if (v36 == 29)
          {
            swift_unknownObjectRelease();
            v35 = 29;
            goto LABEL_46;
          }

          v43 = swift_getKeyPath();
          __chkstk_darwin(v43);
          *(&v44 - 2) = v3;
          *(&v44 - 1) = 29;
          v52 = v3;
        }
      }

LABEL_40:
      sub_100797A04();

      swift_unknownObjectRelease();
      return;
    }

LABEL_38:
    v38 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode;
    if (!*(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode))
    {
      swift_unknownObjectRelease();
      *(v3 + v38) = 0;
      return;
    }

    v39 = swift_getKeyPath();
    __chkstk_darwin(v39);
    *(&v44 - 2) = v3;
    *(&v44 - 1) = 0;
    v52 = v3;
    goto LABEL_40;
  }

  if (qword_100AD1858 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AEA588);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Must have a contentLayoutProvider", v16, 2u);
  }
}

void sub_10057E32C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10057F6DC(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  if (*(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) != 1 || (swift_getKeyPath(), sub_100797A14(), , v2 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState, swift_beginAccess(), v3 = 1.0, (*(v1 + v2) & 1) == 0))
  {
    v3 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) == v3)
  {
    *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100797A04();
  }
}

void sub_10057E4EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057F354(a1, v6, type metadata accessor for BookReaderChromeState);
  sub_10057A010(v6);
  sub_10057E32C();
  v7 = *(v2 + 136);
  swift_getKeyPath();
  v15 = v7;
  sub_10057F6DC(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  sub_100797A14();

  v8 = sub_10079FE94();
  v10 = v9;
  v11 = 1;
  if (v8 != sub_10079FE94() || v10 != v12)
  {
    v11 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4((&v14 + 7));

  sub_10057D8C4(v11 & 1, HIBYTE(v14));
}

uint64_t sub_10057E6BC()
{
  sub_10002B130(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002B130(v0 + 144);
  swift_weakDestroy();

  sub_1000074E0((v0 + 184));
  v1 = OBJC_IVAR____TtC5Books19BookReaderViewModel_preorderedPublisher;
  v2 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay, &qword_100ADB1C0, &qword_10082A4E0);

  v3 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  v4 = sub_10079BC44();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10057F52C(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState, type metadata accessor for BookReaderChromeState);
  v5 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  v6 = sub_10079C104();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100039DA8(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__paginatingService);
  sub_100039DA8(v0 + OBJC_IVAR____TtC5Books19BookReaderViewModel__pageNumberProvider);

  v7 = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  v8 = sub_100797A54();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_10057EA34()
{
  sub_10057E6BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BookReaderViewModel(uint64_t a1)
{
  result = qword_100AEA6D0;
  if (!qword_100AEA6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057EAE0(uint64_t a1)
{
  sub_10057EDA0();
  if (v1 <= 0x3F)
  {
    sub_10057EDF0(319);
    if (v2 <= 0x3F)
    {
      sub_10079BC44();
      if (v3 <= 0x3F)
      {
        type metadata accessor for BookReaderChromeState(319);
        if (v4 <= 0x3F)
        {
          sub_10079C104();
          if (v5 <= 0x3F)
          {
            sub_100797A54();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10057EDA0()
{
  if (!qword_100AEA6E0)
  {
    v0 = sub_10079B9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEA6E0);
    }
  }
}

void sub_10057EDF0(uint64_t a1)
{
  if (!qword_100AEA6E8)
  {
    type metadata accessor for OverlayViewModel.Overlay(255);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEA6E8);
    }
  }
}

uint64_t sub_10057EE48()
{
  v1 = v0;
  sub_1007A3744(154);
  v13._countAndFlagsBits = 0xD000000000000031;
  v13._object = 0x80000001008DDAF0;
  sub_1007A23D4(v13);
  v12 = *(v0 + 56);
  sub_1001F1160(&qword_100AEB010, &qword_100831DF8);
  sub_1007A3894();
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x80000001008DDB30;
  sub_1007A23D4(v14);
  v11 = *(v0 + 64);
  sub_1001F1160(&qword_100AEB018, &unk_100831E00);
  sub_1007A3894();
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x80000001008DDB50;
  sub_1007A23D4(v15);
  v2 = [*(v0 + 96) description];
  v3 = sub_1007A2254();
  v5 = v4;

  v16._countAndFlagsBits = v3;
  v16._object = v5;
  sub_1007A23D4(v16);

  v17._object = 0x80000001008DDB70;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v17);
  v6 = [*(v1 + 104) description];
  v7 = sub_1007A2254();
  v9 = v8;

  v18._countAndFlagsBits = v7;
  v18._object = v9;
  sub_1007A23D4(v18);

  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001008DDB90;
  sub_1007A23D4(v19);
  type metadata accessor for REActionMenuState(0);
  sub_1007A3894();
  return 0;
}

uint64_t sub_10057F0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10057F118()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = result;
  return result;
}

double sub_10057F1D4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = result;
  return result;
}

double sub_10057F1EC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = result;
  return result;
}

double sub_10057F204()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = result;
  return result;
}

__n128 sub_10057F21C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_10057F284(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1001F1160(&qword_100AEB088, &qword_100832100);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10057F354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10057F3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10057F5C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookReaderChromeState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookReaderChromeState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057F6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10057F75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor) = v2;
  v4 = v2;
}

void sub_10057F7BC(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

__n128 sub_10057F830()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

void sub_10057F850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor) = v2;
  v4 = v2;
}

void sub_10057F890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage) = v2;
  v4 = v2;
}

id ServiceCenter.__allocating_init(appConfiguration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAppConfiguration:a1];

  return v3;
}

id ServiceCenter.init(appConfiguration:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = sub_100013574(a1, v2);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10057FB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = OBJC_IVAR___BKServiceCenter_services;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_10000E53C(a1, a2), (v10 & 1) != 0))
  {
    sub_10057FF80(*(v8 + 56) + 56 * v9, &v13);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AEB0E0, &unk_1008353A0);
    a3(0);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

void sub_10057FC5C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  (a3)(0, a2);
  v10 = a1;
  sub_1001F1160(a4, a5);
  v11 = sub_1007A22E4();
  v13 = sub_10057FB10(v11, v12, a6);

  if (v13)
  {

    v14 = v13;
  }

  else
  {
    __break(1u);
  }
}

void sub_10057FD3C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  a1(0);
  sub_1001F1160(a2, a3);
  v7 = sub_1007A22E4();
  v9 = sub_10057FB10(v7, v8, a4);

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ServiceCenter.priceTrackingService.getter()
{
  type metadata accessor for PriceTrackingService();
  sub_1001F1160(&qword_100AEB0B0, &qword_100835520);
  v0 = sub_1007A22E4();
  v2 = sub_10057FB10(v0, v1, type metadata accessor for PriceTrackingService);

  return v2;
}

uint64_t sub_10057FF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADAE70, &unk_100832440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10057FFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADAE70, &unk_100832440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100580060(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    result = sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = *a2;
      if (*(*a2 + 16))
      {
        v11 = sub_10000E53C(*&v8[OBJC_IVAR___BKRootBarItem_identifier], *&v8[OBJC_IVAR___BKRootBarItem_identifier + 8]);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
          v14 = v13;
          if (sub_1007A3184())
          {
            v15 = v9;
          }

          else
          {
            v15 = v14;
          }
        }
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return result;
}

uint64_t sub_100580218(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1005802C4(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;
      sub_1002B6C38(v8);
      v9 = a1(&v12);
      sub_1002B6C54(v8);
      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10058036C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_10058041C(uint64_t (*a1)(char *), uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_1007A0F74();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1001F1160(&unk_100AF4270, &qword_100832560);
  AssociatedConformanceWitness = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_1001F1160(&unk_100AEB390, &qword_100832568);
  v25 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  (*(v10 + 16))(v12, v30, v9, v14);
  swift_getOpaqueTypeConformance2();
  v29 = v16;
  sub_1007A24C4();
  v30 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (v24 + 48);
  v18 = (v24 + 32);
  v19 = (v24 + 8);
  do
  {
    sub_1007A3474();
    v20 = (*v17)(v8, 1, v3);
    if (v20 == 1)
    {
      break;
    }

    (*v18)(v5, v8, v3);
    v21 = v26(v5);
    if (v2)
    {
      (*v19)(v5, v3);
      break;
    }

    v22 = v21;
    (*v19)(v5, v3);
  }

  while ((v22 & 1) == 0);
  (*(v25 + 8))(v29, v30);
  return v20 != 1;
}

uint64_t sub_1005807A0(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100580844(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1007A38D4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_10058096C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100007484(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100019288(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    v16 = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100019288(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100580C48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100ADAD00, &unk_100821F50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = sub_1001F1160(&qword_100AD4F30, &unk_100816940);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v29 = v8 >> 6;

    v30 = 0;
LABEL_31:
    if (!v7)
    {
      goto LABEL_33;
    }

    do
    {
      v32 = v30;
LABEL_36:
      v33 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_1000077D8(*(a1 + 56) + 40 * (v33 | (v32 << 6)), v48, &unk_100AF1C40, &unk_100818DB0);
      v43 = v48[0];
      v44 = v48[1];
      v45 = v49;

      swift_dynamicCast();
      v34 = v53;
      v53 = v43;
      v54 = v44;
      *&v55 = v45;
      v35 = sub_1002EC958(v34, *(&v34 + 1));
      if (v36)
      {
        *(v2[6] + 16 * v35) = v34;
        v31 = v35;

        sub_1002391EC(&v53, v2[7] + 40 * v31, &unk_100AF1C40, &unk_100818DB0);
        v30 = v32;
        goto LABEL_31;
      }

      if (v2[2] >= v2[3])
      {
        goto LABEL_46;
      }

      *(v2 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
      *(v2[6] + 16 * v35) = v34;
      v37 = v2[7] + 40 * v35;
      v38 = v53;
      v39 = v54;
      *(v37 + 32) = v55;
      *v37 = v38;
      *(v37 + 16) = v39;
      v40 = v2[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_47;
      }

      v2[2] = v42;
      v30 = v32;
    }

    while (v7);
LABEL_33:
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

LABEL_42:

        return;
      }

      v7 = *(v4 + 8 * v32);
      ++v30;
      if (v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 8;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v17 = __clz(__rbit64(v7)) | (v11 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_1000077D8(*(a1 + 56) + 40 * v17, &v54, &unk_100AF1C40, &unk_100818DB0);
      *&v53 = v20;
      *(&v53 + 1) = v19;
      v50 = v54;
      v51 = v55;
      v52 = v56;

      swift_dynamicCast();
      sub_1007A3C04();
      if (v47)
      {
        sub_1007A3C24(1u);
        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1007A3C24(0);
      }

      v21 = sub_1007A3C44();
      v22 = -1 << *(v2 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~v10[v23 >> 6]) == 0)
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
          v28 = v10[v24];
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_44;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~v10[v23 >> 6])) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (v2[6] + 16 * v12);
      *v13 = v46;
      v13[1] = v47;
      v14 = v2[7] + 40 * v12;
      v15 = v51;
      *v14 = v50;
      *(v14 + 16) = v15;
      *(v14 + 32) = v52;
      ++v2[2];
    }

    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        goto LABEL_42;
      }

      v7 = *(v4 + 8 * v16);
      ++v11;
      if (v7)
      {
        v11 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_100581100(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    v14 = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100019288(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1005813B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    v14 = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100019288(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100581680(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD35C8, &unk_10080CB40);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_100007484(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_100019288(v27, &v22);

        sub_1001F1160(&qword_100ADD660, &qword_10081CA28);
        swift_dynamicCast();
        sub_100019288(&v23, v25);
        sub_100019288(v25, v26);
        sub_100019288(v26, &v24);
        v17 = sub_10000E53C(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          sub_1000074E0(v9);
          sub_100019288(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_100019288(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100581920(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AD36E0, &unk_100822000);
    v3 = sub_1007A3924();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 8;

  v9 = 0;
  while (v6)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a1 + 48) + v12);
    v29 = *(*(a1 + 56) + v12);
    v14 = v29;
    sub_10000A7C4(0, a2, a3);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_100019288((v30 + 8), v28);
    sub_100019288(v28, v30);
    sub_1007A2254();
    sub_1007A3C04();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1007A3C44();

    v18 = -1 << *(v3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v8[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v8[v20];
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~v8[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v6 &= v6 - 1;
    *(v3[6] + 8 * v10) = v15;
    sub_100019288(v30, (v3[7] + 32 * v10));
    ++v3[2];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100581BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100019288(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100019288(v29, v30);
    v14 = sub_1007A3694(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100019288(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100581E84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AEB3B0, &unk_1008325C0);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);

        v17 = v16;
        v18 = sub_10000E53C(v15, v14);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v15;
          v8[1] = v14;
          v9 = v18;

          *(v2[7] + 8 * v9) = v17;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v15;
          v20[1] = v14;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100582064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&unk_100AD3C10, &unk_10082EED0);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_100019288(&v22, v24);
        sub_100019288(v24, v25);
        sub_100019288(v25, &v23);
        v16 = sub_10000E53C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_1000074E0(v10);
          sub_100019288(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_100019288(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1005822BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100ADAD40, &unk_100821F90);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10000E53C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10058249C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD35B8, &qword_10080CB30);
    v1 = sub_1007A3924();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v6;
    if (v4)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        sub_100007484(*(a1 + 56) + 32 * v10, v32);
        *&v31 = v12;
        *(&v31 + 1) = v13;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v14 = v31;
        sub_100019288(v30, &v23);

        sub_1001F1160(&unk_100AD5B40, &unk_100811300);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        v15 = sub_10000E53C(v14, *(&v14 + 1));
        if (v16)
        {
          *(v1[6] + 16 * v15) = v14;
          v7 = v15;

          sub_1002391EC(&v24, v1[7] + 32 * v7, &unk_100AD5B40, &unk_100811300);
          v6 = v8;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          *(v1[6] + 16 * v15) = v14;
          v17 = (v1[7] + 32 * v15);
          v18 = v25;
          *v17 = v24;
          v17[1] = v18;
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v6 = v8;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v8 = v6;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100582728(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    v16 = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100019288(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1005829F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v2 = sub_1007A3924();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100007484(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_100019288(v33, v32);
    sub_1001F1160(&qword_100ADD660, &qword_10081CA28);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019288(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019288(v31, v32);
    v16 = sub_1007A3694(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100019288(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *TabBarController.__allocating_init(viewControllerProvider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1000204C4(a1);
  swift_unknownObjectRelease();
  return v4;
}

id sub_100582D38(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = [v1 viewController];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    if (v3)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 contentNavigationController];

    return v7;
  }
}

void sub_100582E04(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = [v1 viewController];
  if (v2)
  {
    v4 = &selRef_bc_analyticsVisibilityUpdateSubtree;
  }

  else
  {
    if (v3)
    {
      v5 = v3;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {

        v3 = 0;
      }
    }

    v4 = &selRef_didUpdateContentViewController;
  }

  v6 = v3;
  [v3 *v4];
}

void *MiniPlayerHostingTabBarController.bc_preferredTabBarScrollEdgeAppearance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance);
  v2 = v1;
  return v1;
}

void MiniPlayerHostingTabBarController.bc_preferredTabBarScrollEdgeAppearance.setter(void *a1)
{
  sub_10058C820(a1);
}

void *MiniPlayerHostingTabBarController.miniPlayerViewController.getter()
{
  v1 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10058309C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_100583104(v5);
}

void sub_100583104(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }

    if (!a1)
    {
      [v1 shouldAutomaticallyForwardAppearanceMethods];
      goto LABEL_11;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 willMoveToParentViewController:0];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = v8;
  [v8 setInsetsLayoutMarginsFromSafeArea:1];

  if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v40 = a1;
    sub_1004A6BE8(v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], 0x80u, ObjectType, &off_100A1ED78);
  }

  [a1 removeFromParentViewController];
LABEL_11:
  v11 = _UISolariumEnabled();
  v12 = *&v2[v4];
  if (v11)
  {
    if (v12)
    {
      v13 = swift_getObjectType();
      v14 = v12;
      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        [v2 addChildViewController:v14];
        v17 = [objc_allocWithZone(UITabAccessory) initWithContentView:v16];
        [v2 setBottomAccessory:v17];

        if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
        {
          v40 = v14;
          sub_1004A6BE8(128, v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], v13, &off_100A1ED78);
        }

        [v14 didMoveToParentViewController:{v2, v40}];

        return;
      }
    }

    [v2 setBottomAccessory:0];
    return;
  }

  if (v12)
  {
    v18 = swift_getObjectType();
    v19 = v12;
    [v2 addChildViewController:v19];
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      [v20 setInsetsLayoutMarginsFromSafeArea:0];

      v22 = sub_100021C08();
      v24 = v23;
      v25 = [v19 view];
      if (v25)
      {
        v26 = v25;
        v27 = swift_getObjectType();
        (*(v24 + 64))(v26, v27, v24);

        if (([v2 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
        {
          v40 = v19;
          sub_1004A6BE8(128, v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState], v18, &off_100A1ED78);
        }

        [v19 didMoveToParentViewController:{v2, v40}];

        goto LABEL_23;
      }

LABEL_37:
      __break(1u);
      return;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:
  v28 = sub_100021C08();
  [v28 setHidden:*&v2[v4] == 0];

  v29 = [v2 tabBar];
  if (*&v2[v4])
  {
    v30 = [v2 tabBar];
    v31 = [v30 standardAppearance];
  }

  else
  {
    v31 = [v2 bc_preferredTabBarScrollEdgeAppearance];
  }

  [v29 setScrollEdgeAppearance:v31];

  v32 = [v2 selectedViewController];
  if (v32)
  {
    v33 = v32;
    v34 = &v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
    if (([*&v2[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView] isHidden] & 1) == 0)
    {
      v35 = *v34;
      v36 = *(v34 + 1);
      v37 = swift_getObjectType();
      v38 = *(v36 + 8);
      v39 = v35;
      v38(v37, v36);
    }

    [v33 additionalSafeAreaInsets];
    [v33 setAdditionalSafeAreaInsets:?];
  }

  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = v2;
  if (v4 > 0x3F || ((v4 ^ v2)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = -127;
  if (v4 != 129 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", v2);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = v2 | 0x40;
  if ((v4 & 0xC0) != 0x40 || ((v4 ^ v2)) && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1);
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  if (v4 != 128 && ([v1 shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v1[v5])
    {
      ObjectType = swift_getObjectType();
      sub_1004A6BE8(v4, v1[v3], ObjectType, &off_100A1ED78);
    }
  }
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v2 = sub_100021C08();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = [v1 tabBar];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  Height = CGRectGetHeight(v20);
  v16 = (*(v4 + 32))(v18, ObjectType, v4);
  *(v17 + 16) = Height;
  v16(v18, 0);

  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

void MiniPlayerHostingTabBarController.viewControllers.setter(uint64_t a1)
{
  if (a1)
  {
    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v2.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v3, "setViewControllers:", v2.super.isa);
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController._rebuildTabBarItems(animated:)(Swift::Bool animated)
{
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v5, "_rebuildTabBarItemsAnimated:", animated);
  v1[v3] = v4;
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController._updateLayout(for:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v5, "_updateLayoutForTraitCollection:", isa);
  v1[v3] = v4;
}

void MiniPlayerHostingTabBarController.mutableChildViewControllers.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  objc_msgSendSuper2(&v3, "setMutableChildViewControllers:", a1);
}

id MiniPlayerHostingTabBarController.init(tabs:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint] = 0;
  v2 = &v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 0;
  sub_10000A7C4(0, &qword_100AEB148, UITab_ptr);
  isa = sub_1007A25D4().super.isa;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v4 = objc_msgSendSuper2(&v6, "initWithTabs:", isa);

  return v4;
}

id MiniPlayerHostingTabBarController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t MiniPlayerHostingTabBarController.dockMiniPlayer(_:)(void *a1)
{
  v3 = sub_1007A1C54();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1CA4();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = sub_1007A2D74();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10058C97C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A23AD0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022A14(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

void sub_1005842CC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
  sub_100583104(v5);
}

Swift::Void __swiftcall MiniPlayerHostingTabBarController.undockMiniPlayer()()
{
  v1 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
  sub_100583104(v2);
}

uint64_t TabBarController.rootBarEventPublisher.getter()
{
  sub_1001F1160(&unk_100AD2090, &qword_10080B860);
  sub_100005920(&qword_100AEB170, &unk_100AD2090, &qword_10080B860, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t sub_1005844F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

double TabBarController._rootBarCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TabBarController._rootBarCoordinator.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BKTabBarController__rootBarCoordinator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002E75AC;
}

char *TabBarController.init(viewControllerProvider:)(uint64_t a1)
{
  v1 = sub_1000204C4(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_100584740(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100586338();
  }
}

Swift::Void __swiftcall TabBarController.setStandardItems(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  v3 = v2;
  LOBYTE(v4) = animated;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v6 = sub_1007A2D74();
  v7 = &_dispatch_main_q;
  if (v6 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v68 = _swiftEmptyDictionarySingleton;
  v8 = OBJC_IVAR___BKTabBarController_items;
  v9 = *&v2[OBJC_IVAR___BKTabBarController_items];
  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v10; i = v4)
  {
    rawValue = _._rawValue;
    v59 = v8;
    v60 = v3;
    v66 = v9 & 0xC000000000000001;
    v62 = v9 & 0xFFFFFFFFFFFFFF8;

    v11 = 0;
    v4 = _swiftEmptyDictionarySingleton;
    buf = v9;
    while (1)
    {
      if (v66)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        if (v11 >= *(v62 + 16))
        {
          goto LABEL_28;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v8 = v14;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v3 = v10;
      v17 = *&v14[OBJC_IVAR___BKRootBarItem_identifier];
      v16 = *&v14[OBJC_IVAR___BKRootBarItem_identifier + 8];

      v8 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v4;
      v9 = v4;
      _._rawValue = sub_10000E53C(v17, v16);
      v20 = v4;
      v21 = *(v4 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_26;
      }

      v24 = v19;
      if (*(v20 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v19)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = &v67;
          sub_1002F0EC8();
          if (v24)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1003D4190(v23, isUniquelyReferenced_nonNull_native);
        v9 = v67;
        v25 = sub_10000E53C(v17, v16);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_49;
        }

        _._rawValue = v25;
        if (v24)
        {
LABEL_6:

          v4 = v67;
          v12 = v67[7];
          v13 = *(v12 + 8 * _._rawValue);
          *(v12 + 8 * _._rawValue) = v8;

          goto LABEL_7;
        }
      }

      v4 = v67;
      v67[(_._rawValue >> 6) + 8] |= 1 << SLOBYTE(_._rawValue);
      v27 = (*(v4 + 48) + 16 * _._rawValue);
      *v27 = v17;
      v27[1] = v16;
      *(*(v4 + 56) + 8 * _._rawValue) = v8;

      v28 = *(v4 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      *(v4 + 16) = v30;
LABEL_7:
      ++v11;
      v10 = v3;
      v9 = buf;
      if (v15 == v3)
      {
        v68 = v4;

        LOBYTE(v4) = i;
        v8 = v59;
        v3 = v60;
        _._rawValue = rawValue;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v10 = sub_1007A38D4();
  }

LABEL_30:
  *&v8[v3] = sub_100580060(_._rawValue, &v68);

  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AEB0F0);
  v32 = v3;
  v33 = sub_10079ACC4();
  v34 = sub_1007A29D4();

  if (!os_log_type_enabled(v33, v34))
  {
    goto LABEL_46;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v67 = v36;
  *v35 = 67109378;
  *(v35 + 4) = v4 & 1;
  *(v35 + 8) = 2082;
  v37 = *&v8[v3];
  v63 = v36;
  bufa = v35;
  if (v37 >> 62)
  {
    v55 = *&v8[v3];
    v56 = sub_1007A38D4();
    v37 = v55;
    v38 = v56;
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
LABEL_45:
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
    v51 = sub_1007A20B4();
    v53 = v52;

    v54 = sub_1000070F4(v51, v53, &v67);

    *(bufa + 10) = v54;
    _os_log_impl(&_mh_execute_header, v33, v34, "Asked to set RootBarItems (animated=%{BOOL}d to: %{public}s", bufa, 0x12u);
    sub_1000074E0(v63);

LABEL_46:

    sub_1005869D0(v4 & 1);

    return;
  }

  v39 = v37;

  sub_1003BD0CC(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v58 = v34;
    v40 = 0;
    v41 = v39;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = sub_1007A3784();
      }

      else
      {
        v42 = *(v41 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 description];
      v45 = sub_1007A2254();
      v47 = v46;

      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];
      if (v49 >= v48 >> 1)
      {
        sub_1003BD0CC((v48 > 1), v49 + 1, 1);
      }

      ++v40;
      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = v45;
      v50[5] = v47;
      v41 = v39;
    }

    while (v38 != v40);

    LOBYTE(v4) = i;
    v34 = v58;
    goto LABEL_45;
  }

  __break(1u);
LABEL_49:
  sub_1007A3B24();
  __break(1u);
}

Swift::Void __swiftcall TabBarController.select(identifier:isUserAction:)(Swift::String identifier, Swift::Bool isUserAction)
{
  v3 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = sub_1007A2D74();
  v8 = &_dispatch_main_q;
  if (v7 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v9 = sub_100586590(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if ((*(v3 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) & 1) == 0 && isUserAction)
    {
      v12 = [v3 bk_rootBarCoordinator];
      if (v12)
      {
        v13 = [v12 rootViewController];
        swift_unknownObjectRelease();
        [v13 bc_dismissIfSafeAnimated:0];
      }
    }

    [v3 bc_setSelectedIndex:v11];

    sub_100020ED0();
  }
}

Swift::Bool __swiftcall TabBarController.hasStandardItem(withIdentifier:)(Swift::String withIdentifier)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(countAndFlagsBits, object);
  return (v5 & 1) == 0;
}

UINavigationController_optional __swiftcall TabBarController.navigationController(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = sub_100586590(countAndFlagsBits, object);
  if (v6)
  {
    v7 = 0;
  }

  else
  {

    v7 = sub_100586864(v5);
  }

  result.value.super.super.super.isa = v7;
  result.is_nil = v6;
  return result;
}

UIViewController_optional __swiftcall TabBarController.topViewController(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = sub_1007A2D74();
  v6 = &_dispatch_main_q;
  if (v5 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v7 = sub_100586590(countAndFlagsBits, object);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_100586864(v7);
  }

  v10 = [v9 topViewController];

  v12 = v10;
  result.value.super.super.isa = v12;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall TabBarController._setSelectedViewController(_:performUpdates:)(UIViewController_optional _, Swift::Bool performUpdates)
{
  is_nil = _.is_nil;
  isa = _.value.super.super.isa;
  v44 = sub_10079AD54();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079AD84();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079AD44();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079AD64();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10079ADB4();
  v39 = *(v41 - 8);
  v14 = __chkstk_darwin(v41);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 selectedViewController];
  if (v17)
  {
    v18 = v17;
    v45 = [v17 bc_deepestVisibleChildViewControllerIncludePresented:1];
  }

  else
  {
    v45 = 0;
  }

  v19 = type metadata accessor for TabBarController(0);
  v51.receiver = v2;
  v51.super_class = v19;
  objc_msgSendSuper2(&v51, "_setSelectedViewController:performUpdates:", isa, is_nil);
  v20 = OBJC_IVAR___BKTabBarController_isPopulatingItems;
  if (*(v2 + OBJC_IVAR___BKTabBarController_isPopulatingItems) == 1)
  {
    v21 = [v2 bk_rootBarCoordinator];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = [v21 hostingViewController];

    swift_unknownObjectRelease();
    if (v22 != v2)
    {
      goto LABEL_16;
    }
  }

  if (isa)
  {
    v23 = [(objc_class *)isa tab];
    if (v23)
    {
      v24 = v23;
      sub_100587884(v23);
    }
  }

  if ((*(v2 + v20) & 1) != 0 || (*(v2 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) & 1) != 0 || (v25 = TabBarController.selectedItem.getter()) == 0)
  {
LABEL_16:
  }

  else
  {
    v26 = v25;
    (*(v35 + 104))(v13, enum case for FigaroClickEvent.ActionContext.tabBarController(_:), v11);
    (*(v36 + 104))(v40, enum case for FigaroActionType.focus(_:), v9);
    v36 = *&v26[OBJC_IVAR___BKRootBarItem_url];
    sub_1001F1160(&qword_100ADAF48, &unk_10082A660);
    sub_10079ADA4();
    *(swift_allocObject() + 16) = xmmword_10080B690;

    [v2 selectedIndex];
    (*(v37 + 104))(v8, enum case for FigaroClickEvent.Location.Type.tabItem(_:), v38);
    sub_10079AD94();
    (*(v42 + 104))(v43, enum case for FigaroClickEvent.TargetType.tabItem(_:), v44);

    sub_100019158(_swiftEmptyArrayStorage);
    sub_10079AD74();
    sub_100022A14(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent, &protocol conformance descriptor for FigaroClickEvent);
    v27 = v41;
    sub_10079AE74();
    (*(v39 + 8))(v16, v27);
    v50 = _swiftEmptyDictionarySingleton;
    v28 = v45;
    if (v45 && (v29 = [v45 ba_effectiveAnalyticsTracker]) != 0)
    {
      v30 = v29;
      v49 = sub_100798454();
      *&v48 = v30;
      sub_100019288(&v48, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = _swiftEmptyDictionarySingleton;
      sub_1002F4B78(v47, 0x72656B63617274, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v50 = v46;
    }

    else
    {
      sub_1002EEBD0(0x72656B63617274, 0xE700000000000000, &v48);
      sub_100007840(&v48, &unk_100AD5B40, &unk_100811300);
    }

    v32 = objc_opt_self();
    type metadata accessor for FigaroKey(0);
    sub_100022A14(&qword_100AD36A0, type metadata accessor for FigaroKey, &unk_10080CADC);
    v33 = sub_1007A2024().super.isa;

    sub_10058096C(v50);

    v34 = sub_1007A2024().super.isa;

    [v32 recordNativeEvent:v33 additionalInfo:v34];
  }
}

Swift::Void __swiftcall TabBarController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  v9 = 0;
  sub_10079B8C4();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TabBarController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAccessibilityElementsHidden:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TabBarController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  v9 = 2;
  sub_10079B8C4();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TabBarController(0);
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1);
  if (_AXSAutomationEnabled())
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAccessibilityElementsHidden:1];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100585BE8(char a1, char a2, SEL *a3)
{
  v9 = 0;
  v10 = 0;
  v8 = a1 & 1;
  v11 = a2;
  sub_10079B8C4();
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TabBarController(0);
  return objc_msgSendSuper2(&v7, *a3, a1 & 1);
}

void TabBarController.viewWillTransition(to:with:)(double (*a1)(uint64_t a1, uint64_t a2), double a2, double a3)
{
  v4 = v3;
  v11 = *&a2;
  v12 = *&a3;
  v13 = a1;
  LOBYTE(v14) = 4;
  swift_unknownObjectRetain();
  sub_10079B8C4();
  swift_unknownObjectRelease();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for TabBarController(0);
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3, v11, v12, v13, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_10058C98C;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100569BDC;
  v14 = &unk_100A23B20;
  v9 = _Block_copy(&v11);
  v10 = v4;

  [a1 animateAlongsideTransition:0 completion:v9];
  _Block_release(v9);
}

Swift::Void __swiftcall TabBarController.didReceiveMemoryWarning()()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for TabBarController(0);
  objc_msgSendSuper2(&v35, "didReceiveMemoryWarning");
  v1 = [v0 selectedTab];
  v2 = [v0 tabs];
  sub_10000A7C4(0, &qword_100AEB148, UITab_ptr);
  v3 = sub_1007A25E4();

  if (v3 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v33 = v3 + 32;
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = &selRef_textContainer;
    v30 = v1;
    v31 = v3 & 0xC000000000000001;
    v28 = i;
    v29 = v3;
    while (1)
    {
      if (v6)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_39;
        }

        v8 = *(v33 + 8 * v5);
      }

      v9 = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      if (v1 && v8 == v1)
      {
        goto LABEL_4;
      }

      v11 = _UISolariumEnabled();
      v12 = [v9 v7[366]];
      v13 = v12;
      if (!v11)
      {
        if (v12)
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (!v16)
          {
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = [v16 contentNavigationController];

        if (v17)
        {
          v15 = v17;
LABEL_23:
          v18 = [v15 viewControllers];
          sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
          v19 = sub_1007A25E4();

          if (v19 >> 62)
          {
            v20 = sub_1007A38D4();
            if (!v20)
            {
              goto LABEL_36;
            }

LABEL_25:
            if (v20 < 1)
            {
              goto LABEL_40;
            }

            v32 = v15;
            for (j = 0; j != v20; ++j)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = sub_1007A3784();
              }

              else
              {
                v22 = *(v19 + 8 * j + 32);
              }

              v23 = v22;
              objc_opt_self();
              v24 = swift_dynamicCastObjCClass();
              if (v24)
              {
                v25 = v24;
                v26 = v23;
                v27 = sub_1007A2214();
                [v25 suspendAndTeardownForReason:v27];
              }
            }

            v3 = v29;
            v1 = v30;
            i = v28;
          }

          else
          {
            v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20)
            {
              goto LABEL_25;
            }

LABEL_36:
          }

          v6 = v31;
          v7 = &selRef_textContainer;
          goto LABEL_5;
        }

LABEL_4:

        goto LABEL_5;
      }

      if (!v12)
      {
        goto LABEL_4;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        goto LABEL_23;
      }

LABEL_5:
      if (v5 == i)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:
}

Swift::Bool __swiftcall TabBarController.bc_analyticsVisibility(ofChild:)(UIViewController ofChild)
{
  v3 = [v1 selectedViewController];
  if (v3)
  {
    v4 = v3;

    LOBYTE(v3) = v4 == ofChild.super.super.isa;
  }

  return v3;
}

void sub_100586338()
{
  v1 = v0;
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v5 = sub_1007A2D74();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_1007A1D34();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_10079AEC4();
  v7 = sub_10079AEB4();
  v8 = sub_10079AE84();

  if (v8)
  {
    return;
  }

  if (qword_100AD1870 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AEB0F0);
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting items due to JSABridge reload", v12, 2u);
  }

  *&v1[OBJC_IVAR___BKTabBarController_items] = _swiftEmptyArrayStorage;

  sub_10000A7C4(0, &qword_100AEB148, UITab_ptr);
  isa = sub_1007A25D4().super.isa;
  [v1 setTabs:isa];
}

unint64_t sub_100586590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v6 = sub_1007A2D74();
  v7 = &_dispatch_main_q;
  if (v6 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v8 = *(v3 + OBJC_IVAR___BKTabBarController_items);
  if (v8 >> 62)
  {
LABEL_30:
    v9 = sub_1007A38D4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      v16 = 0;
      v17 = -1;
      goto LABEL_23;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    if (*&v11[OBJC_IVAR___BKRootBarItem_identifier] == a1 && *&v11[OBJC_IVAR___BKRootBarItem_identifier + 8] == a2)
    {

      goto LABEL_22;
    }

    v14 = sub_1007A3AB4();

    if (v14)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }
  }

LABEL_22:
  v17 = v10;
  v16 = v10;
LABEL_23:
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v18 = sub_10079ACE4();
  sub_100008B98(v18, qword_100AEB0F0);

  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1000070F4(a1, a2, &v24);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "Index of RootBarItem with identifier %{public}s: %ld", v21, 0x16u);
    sub_1000074E0(v22);
  }

  return v16;
}

id sub_100586864(uint64_t a1)
{
  v2 = v1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = [v2 tabs];
  sub_10000A7C4(0, &qword_100AEB148, UITab_ptr);
  sub_1007A25E4();

  sub_1001F1160(&qword_100AEB1B0, &qword_100832468);
  sub_100005920(&qword_100AEB1B8, &qword_100AEB1B0, &qword_100832468, &protocol conformance descriptor for [A]);
  sub_1007A28B4();

  if (!v9)
  {
    return 0;
  }

  v7 = sub_100582D38(v6);

  return v7;
}

void sub_1005869D0(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  ObjectType = swift_getObjectType();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v4 = sub_1007A2D74();
  v5 = &_dispatch_main_q;
  if (v4 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  AriadneTrace_AppLaunchMilestone_PopulateTabsStart();
  v65 = OBJC_IVAR___BKTabBarController_isPopulatingItems;
  v1[OBJC_IVAR___BKTabBarController_isPopulatingItems] = 1;
  v6 = [v1 tabs];
  sub_10000A7C4(0, &qword_100AEB148, UITab_ptr);
  v7 = sub_1007A25E4();

  v8 = [v1 bk_rootBarCoordinator];
  if (v8)
  {
    v9 = [v8 hostingViewController];

    swift_unknownObjectRelease();
    v73 = v9 == v2;
  }

  else
  {
    v73 = 0;
  }

  v83 = _swiftEmptyArrayStorage;
  v10 = *&v2[OBJC_IVAR___BKTabBarController_items];
  if (v10 >> 62)
  {
    goto LABEL_80;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = v7 >> 62;
  v72 = v2;
  v64 = v3;
  if (!v11)
  {
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v70 = v11;
  v63 = v7 >> 62;
  v13 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v12)
  {
    v53 = v10;
    v80 = sub_1007A38D4();
    v10 = v53;
  }

  else
  {
    v80 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v10 & 0xC000000000000001;
  v66 = v10 + 32;
  v67 = v10 & 0xFFFFFFFFFFFFFF8;
  v78 = v7 & 0xC000000000000001;

  v69 = 0;
  v74 = 0;
  v75 = v7;
  v76 = v7 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v71)
    {
      v14 = v74;
      v10 = sub_1007A3784();
    }

    else
    {
      v14 = v74;
      if (v74 >= *(v67 + 16))
      {
        goto LABEL_79;
      }

      v10 = *(v66 + 8 * v74);
    }

    v15 = v10;
    v16 = __OFADD__(v14, 1);
    v17 = v14 + 1;
    if (v16)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v74 = v17;
    if (!v80)
    {
LABEL_45:
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v73;
      *(v34 + 32) = ObjectType;
      aBlock[4] = sub_10058D05C;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10038D350;
      aBlock[3] = &unk_100A23D68;
      v35 = _Block_copy(aBlock);

      v36 = [v15 createTabWithViewControllerProvider:v35];
      _Block_release(v35);
      v37 = 0;
      v69 = 1;
      goto LABEL_49;
    }

    v3 = 0;
    v79 = (v10 + OBJC_IVAR___BKRootBarItem_identifier);
    v81 = (v10 + OBJC_IVAR___BKRootBarItem_url);
    v77 = v10;
    while (1)
    {
      if (v78)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_76;
        }

        v10 = *(v7 + 8 * v3 + 32);
      }

      v2 = v10;
      v22 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v23 = [v10 rootBarItem];
      v24 = *(&v23->isa + OBJC_IVAR___BKRootBarItem_identifier) == *v79 && *(&v23[1].isa + OBJC_IVAR___BKRootBarItem_identifier) == v79[1];
      if (v24 || (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

LABEL_21:

      ++v3;
      if (v22 == v80)
      {
        goto LABEL_45;
      }
    }

    v25 = *(&v23[1].isa + OBJC_IVAR___BKRootBarItem_url);
    v26 = v81[1];
    if (!v25)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

LABEL_40:
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v28 = sub_10079ACE4();
      sub_100008B98(v28, qword_100AEB0F0);
      v29 = v23;
      v30 = v15;
      v23 = sub_10079ACC4();
      v31 = v15;
      v32 = sub_1007A29D4();

      if (os_log_type_enabled(v23, v32))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543618;
        *(v18 + 4) = v29;
        *(v18 + 12) = 2114;
        *(v18 + 14) = v30;
        *v19 = v29;
        v19[1] = v31;
        v20 = v29;
        v21 = v30;
        _os_log_impl(&_mh_execute_header, v23, v32, "Replacing VC for BKRootBarItem due to URL change: %{public}@ => %{public}@", v18, 0x16u);
        sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
        swift_arrayDestroy();
        v7 = v75;

        v13 = v76;
      }

      else
      {
        v20 = v23;
        v23 = v29;
      }

      v2 = v20;
      v15 = v77;
      goto LABEL_21;
    }

    if (!v26)
    {
      goto LABEL_40;
    }

    v27 = *(&v23->isa + OBJC_IVAR___BKRootBarItem_url) == *v81 && v25 == v26;
    if (!v27 && (sub_1007A3AB4() & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_46:

    v36 = v2;
    v2 = [v36 rootBarItem];
    type metadata accessor for RootBarItem();
    v38 = sub_1007A3184();

    if ((v38 & 1) == 0)
    {
      [v36 setRootBarItem:v15];
    }

    v37 = v36;
LABEL_49:
    v39 = v36;
    sub_1007A25C4();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1007A2614();
    }

    sub_1007A2644();
    v3 = v83;
    if (!v73)
    {
      goto LABEL_57;
    }

    if (!(v83 >> 62))
    {
      v10 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = (v10 - 1);
      if (!__OFSUB__(v10, 1))
      {
        goto LABEL_54;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v52 = v10;
      v11 = sub_1007A38D4();
      v10 = v52;
      goto LABEL_8;
    }

    v10 = sub_1007A38D4();
    v40 = (v10 - 1);
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_78;
    }

LABEL_54:
    if (v40 == [v72 selectedIndex])
    {
      v41 = [v39 viewController];
      if (v41)
      {

        sub_100587884(v39);
        goto LABEL_57;
      }

      v43 = v39;
      v44 = [v43 rootBarItem];
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v45 = sub_10079ACE4();
      sub_100008B98(v45, qword_100AEB0F0);
      v39 = v44;
      v42 = sub_10079ACC4();
      v2 = sub_1007A29C4();

      if (os_log_type_enabled(v42, v2))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412546;
        *(v46 + 4) = v43;
        *(v46 + 12) = 2112;
        *(v46 + 14) = v39;
        *v47 = v43;
        v47[1] = v39;
        v48 = v43;
        v39 = v39;
        _os_log_impl(&_mh_execute_header, v42, v2, "Tab did not provide a view controller: %@, RootBarItem: %@", v46, 0x16u);
        sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
        swift_arrayDestroy();

        v13 = v76;
      }

      else
      {

        v42 = v15;
        v15 = v37;
      }
    }

    else
    {
LABEL_57:
      v42 = v37;
    }
  }

  while (v74 != v70);

  v12 = v63;
  if (v69)
  {
    goto LABEL_84;
  }

LABEL_71:
  if (v3 >> 62)
  {
    v54 = v12;
    v55 = sub_1007A38D4();
    v12 = v54;
    v49 = v55;
    v50 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v12)
    {
      goto LABEL_83;
    }

LABEL_73:
    if (v49 == *(v50 + 16))
    {
      goto LABEL_74;
    }

LABEL_84:
    if (v12)
    {
      v58 = sub_1007A38D4();
    }

    else
    {
      v58 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = v58 != 0;
    isa = sub_1007A25D4().super.isa;
    v61 = v59 & v64;
    v51 = v72;
    [v72 setTabs:isa animated:v61];
  }

  else
  {
    v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
      goto LABEL_73;
    }

LABEL_83:
    v56 = v12;
    v57 = sub_1007A38D4();
    v12 = v56;
    if (v49 != v57)
    {
      goto LABEL_84;
    }

LABEL_74:

    v51 = v72;
  }

  v51[v65] = 0;
  v62 = [objc_opt_self() defaultCenter];
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  [v62 postNotificationName:static NSNotificationName.rootBarReady object:v51];

  AriadneTrace_AppLaunchMilestone_PopulateTabsEnd();
  if (v73)
  {
    sub_100020ED0();
  }
}

id sub_100587458(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 rootBarItem];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (_UISolariumEnabled())
    {
      v7 = sub_100587598(v4);
    }

    else
    {
      if (a3)
      {
        v9 = sub_100587598(v4);
      }

      else
      {
        v9 = 0;
      }

      v7 = [objc_allocWithZone(BSUIRootBarWrapperViewController) initWithContentNavigationController:v9];

      v4 = v9;
    }
  }

  else
  {
    v8 = isPhone();
    v7 = sub_10058C718(v4, v8);
  }

  return v7;
}

uint64_t *NSNotificationName.rootBarReady.unsafeMutableAddressor()
{
  if (qword_100AD1868 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.rootBarReady;
}

id sub_100587598(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1F44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = [Strong navigationControllerForItem:a1];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = [objc_allocWithZone(BSUINavigationController) init];
  }

  v12 = sub_10058C718(a1, [v2 im_isCompactWidth]);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100811390;
  *(v13 + 32) = v12;
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v14 = v11;
  v15 = v12;
  isa = sub_1007A25D4().super.isa;

  [v14 setViewControllers:isa];

  result = [v14 view];
  if (result)
  {
    v18 = result;
    v19 = [a1 automationID];
    sub_1007A2254();

    memset(v20, 0, sizeof(v20));
    sub_1007A1F24();

    sub_100007840(v20, &unk_100AD5B40, &unk_100811300);
    sub_1007A30E4();

    (*(v5 + 8))(v7, v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100587884(void *a1)
{
  v2 = v1;
  v4 = sub_100582D38(a1);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [a1 rootBarItem];
  v7 = OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController;
  v8 = *&v2[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController];
  v35 = v5;
  v9 = [v8 containsObject:v35];
  v10 = [v35 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v11 = sub_1007A25E4();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }

    LODWORD(v7) = 0;
    v10 = 0;
LABEL_14:

    if (qword_100AD1870 == -1)
    {
LABEL_15:
      v13 = sub_10079ACE4();
      sub_100008B98(v13, qword_100AEB0F0);
      v14 = v6;
      v15 = sub_10079ACC4();
      v16 = sub_1007A29D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v36 = v19;
        *v17 = 136315906;
        *(v17 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, &v36);
        *(v17 + 12) = 2114;
        *(v17 + 14) = v14;
        *v18 = v14;
        *(v17 + 22) = 1024;
        *(v17 + 24) = v9;
        *(v17 + 28) = 1024;
        *(v17 + 30) = v7;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s: Skipping creating content VC for %{public}@. isCreatingVC: %{BOOL}d, hasValidVC: %{BOOL}d", v17, 0x22u);
        sub_100007840(v18, &unk_100AD9480, &qword_1008113B0);

        sub_1000074E0(v19);

        return;
      }

      goto LABEL_24;
    }

LABEL_29:
    swift_once();
    goto LABEL_15;
  }

  if (!sub_1007A38D4())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1007A3784();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(v11 + 32);
  }

  v10 = v12;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    LODWORD(v7) = 1;
    goto LABEL_14;
  }

  if (v9)
  {
    LODWORD(v7) = 0;
    goto LABEL_14;
  }

LABEL_18:
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v21 = sub_10079ACE4();
  sub_100008B98(v21, qword_100AEB0F0);
  v22 = v10;
  v23 = v6;
  v24 = sub_10079ACC4();
  v25 = sub_1007A29D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v7;
    v28 = swift_slowAlloc();
    v36 = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, &v36);
    *(v26 + 12) = 2114;
    *(v26 + 14) = v22;
    *(v26 + 22) = 2114;
    *(v26 + 24) = v23;
    *v27 = v10;
    v27[1] = v23;
    v29 = v22;
    v30 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: Creating content VC to replace %{public}@ for %{public}@", v26, 0x20u);
    sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
    swift_arrayDestroy();

    sub_1000074E0(v28);
    v7 = v34;
  }

  v31 = *&v2[v7];
  [v31 addObject:v35];

  v35 = v35;
  v32 = a1;
  v33 = v2;
  sub_10058C4A4(v23, v33, v32, v33, v35);

LABEL_24:
}

void sub_100587E00(void *a1, void *a2, char *a3, void *a4)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v10 = [a2 rootBarItem];
  if (!a1)
  {
    if (qword_100AD1870 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100AEB0F0);
    v74 = v10;
    v22 = sub_10079ACC4();
    v23 = sub_1007A29D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, v76);
      *(v24 + 12) = 2114;
      *(v24 + 14) = v74;
      *v25 = v74;
      v27 = v74;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Did not get a contentViewController for %{public}@, bailing out with spinner", v24, 0x16u);
      sub_100007840(v25, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v26);
    }

    [*&a3[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController] removeObject:a4];
    goto LABEL_16;
  }

  v74 = a1;
  v11 = sub_100582D38(v74);
  if (!v11 || (v12 = v11, v11, v12 != a4))
  {
    if (qword_100AD1870 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AEB0F0);
    v14 = v10;
    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v76[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, v76);
      *(v17 + 12) = 2114;
      *(v17 + 14) = v14;
      *v18 = v14;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Skipping updating content VC for %{public}@ because the active UI is no longer tab bar", v17, 0x16u);
      sub_100007840(v18, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v19);
    }

    [*&a3[OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController] removeObject:a4];
LABEL_16:

    return;
  }

  v28 = [v74 navigationItem];
  v73 = a3;
  v29 = [v10 resolvedNavigationItemTitleWithIsCompact:{objc_msgSend(a3, "im_isCompactWidth")}];
  [v28 setTitle:v29];

  [v10 configureDynamicTitleFor:v74];
  [v28 setLargeTitleDisplayMode:{objc_msgSend(v10, "defaultLargeTitleDisplayMode")}];
  if (qword_100AD1870 != -1)
  {
    swift_once();
  }

  v30 = sub_10079ACE4();
  sub_100008B98(v30, qword_100AEB0F0);
  v31 = v28;
  v32 = v10;
  v33 = sub_10079ACC4();
  v34 = sub_1007A29D4();

  v72 = v31;
  if (os_log_type_enabled(v33, v34))
  {
    v70 = v34;
    v35 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v35 = 136315650;
    *(v35 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
    *(v35 + 12) = 2080;
    v36 = v31;
    v37 = [v36 description];
    v38 = sub_1007A2254();
    v40 = v39;

    v41 = sub_1000070F4(v38, v40, aBlock);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2082;
    RootBarItem.title.getter(v76);
    v42 = v76[0];
    v43 = v76[1];

    sub_100007840(v76, &qword_100ADFAD0, &unk_100818CE0);
    v44 = sub_1000070F4(v42, v43, aBlock);

    *(v35 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v33, v70, "%s: Updating navigationItem: %s content VC for %{public}s", v35, 0x20u);
    swift_arrayDestroy();
  }

  v45 = [a4 transitionCoordinator];
  v46 = v74;
  v47 = v32;
  v48 = sub_10079ACC4();
  v49 = sub_1007A29D4();

  v50 = os_log_type_enabled(v48, v49);
  if (v45)
  {
    v71 = v45;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = v48;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v51 = 136315650;
      *(v51 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
      *(v51 + 12) = 2112;
      *(v51 + 14) = v46;
      *(v51 + 22) = 2114;
      *(v51 + 24) = v47;
      *v53 = a1;
      v53[1] = v47;
      v55 = v46;
      v56 = v47;
      _os_log_impl(&_mh_execute_header, v52, v49, "%s: Updating nav stack alongside transition with content VC %@ for %{public}@", v51, 0x20u);
      sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
      swift_arrayDestroy();

      sub_1000074E0(v54);
    }

    else
    {
    }

    v63 = swift_allocObject();
    v63[2] = v73;
    v63[3] = a4;
    v63[4] = v46;
    v63[5] = v47;
    v63[6] = a2;
    aBlock[4] = sub_10058D04C;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100569BDC;
    aBlock[3] = &unk_100A23CF0;
    v64 = _Block_copy(aBlock);
    v65 = v46;
    v66 = v47;
    v67 = v73;
    v68 = a4;
    v69 = a2;

    [v71 animateAlongsideTransition:0 completion:v64];

    _Block_release(v64);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v50)
    {
      v57 = swift_slowAlloc();
      v58 = v48;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v57 = 136315650;
      *(v57 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008DE0A0, aBlock);
      *(v57 + 12) = 2112;
      *(v57 + 14) = v46;
      *(v57 + 22) = 2114;
      *(v57 + 24) = v47;
      *v59 = a1;
      v59[1] = v47;
      v61 = v46;
      v62 = v47;
      _os_log_impl(&_mh_execute_header, v58, v49, "%s: Updating nav stack with content VC %@ for %{public}@", v57, 0x20u);
      sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
      swift_arrayDestroy();

      sub_1000074E0(v60);
    }

    else
    {
    }

    sub_100588888(v73, a4, v46, v47);
  }
}

void sub_100588888(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v8 = sub_1007A2D74();
  v9 = &_dispatch_main_q;
  if (v8 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  [*(a1 + OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController) removeObject:a2];
  v10 = [a2 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v11 = sub_1007A25E4();

  v38 = v11;
  if (v11 >> 62)
  {
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    if (sub_1007A38D4())
    {
LABEL_5:
      v13 = a3;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v11 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v11 = sub_1002F9CE0();
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x20);
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x20) = v13;

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  if (p_inst_props[270] != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100AEB0F0);
  v17 = a4;
  v18 = sub_10079ACC4();
  v19 = sub_1007A29C4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v22 = v37;
    *v20 = 136315394;
    *(v20 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v37);
    *(v20 + 12) = 2114;
    *(v20 + 14) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Nav stack is empty for %{public}@", v20, 0x16u);
    sub_100007840(v21, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v22);
  }

  v24 = a3;
  sub_1007A25C4();
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
LABEL_17:
  isa = sub_1007A25D4().super.isa;
  [a2 setViewControllers:isa];

  sub_100582E04(v26);
  if (p_inst_props[270] != -1)
  {
    swift_once();
  }

  v27 = sub_10079ACE4();
  sub_100008B98(v27, qword_100AEB0F0);
  v28 = a3;
  v29 = a4;
  oslog = sub_10079ACC4();
  v30 = sub_1007A29D4();

  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v31 = 136315650;
    *(v31 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v37);
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *(v31 + 22) = 2114;
    *(v31 + 24) = v29;
    *v32 = v28;
    v32[1] = v29;
    v34 = v28;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, oslog, v30, "%s: Created content VC %@ for %{public}@", v31, 0x20u);
    sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
    swift_arrayDestroy();

    sub_1000074E0(v33);
  }
}

double sub_100588DB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = a1;

  sub_1007A2CD4();

  return result;
}

id TabBarController.childForStatusBarStyle.getter()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    if ([v1 modalPresentationStyle] == 5 && (objc_msgSend(v2, "isBeingDismissed") & 1) == 0)
    {
      v8 = [v2 childViewControllerForStatusBarStyle];
      goto LABEL_9;
    }
  }

  v3 = objc_opt_self();
  v4 = [v3 delegate];
  v5 = [v4 appLaunchCoordinator];

  LODWORD(v4) = [v5 appLaunchCoordinatorIsConditionSatisfied:0];
  swift_unknownObjectRelease();
  if (!v4)
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for TabBarController(0);
    return objc_msgSendSuper2(&v11, "childViewControllerForStatusBarStyle");
  }

  v6 = [v3 delegate];
  v7 = [v6 sceneManager];

  v2 = [v7 mainFlowController];
  v8 = [v2 viewControllerForStatusBarStyle];
LABEL_9:
  v10 = v8;

  return v10;
}

id TabBarController.preferredStatusBarStyle.getter()
{
  v1 = v0;
  v2 = [v0 selectedTab];
  if (v2 && (v3 = v2, v4 = sub_100582D38(v2), v3, v4) || (result = [v1 selectedViewController], (v4 = result) != 0))
  {
    v6 = [v4 preferredStatusBarStyle];

    return v6;
  }

  return result;
}

BOOL TabBarController.prefersStatusBarHidden.getter()
{
  v1 = [v0 bc_windowForViewController];
  v2 = [v1 windowScene];

  if (v2)
  {
    v3 = [v2 interfaceOrientation];

    if (isPad())
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    if (isPad())
    {
      return 0;
    }
  }

  return sub_100025674(v3);
}

BOOL sub_1005891A8()
{
  v0 = sub_1007A1C54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &unk_100ADAF38, BCCardStackViewController_ptr);
  v8 = sub_1007A2C64();
  if (v8)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v16 = sub_1007A2D74();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10058D000;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A23BD8;
    v15 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100022A14(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    v14 = v4;
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    sub_1007A3594();
    v11 = v15;
    v10 = v16;
    sub_1007A2D94();
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v14);
  }

  return v8 != 0;
}