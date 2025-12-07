uint64_t sub_32260()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v19[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  result = sub_31E08();
  if (v15)
  {

    sub_2643A0();
    sub_260260();
    (*(v8 + 16))(v10, v13, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_260260();
    v18 = sub_264480("YIR_Total_Monthly_Reading_Frame_Subtitle", 40, 2, v10, 0, 0, v17, v3, "Year in Review: Reading Time by month frame subtitle", 52, 2);
    (*(v1 + 8))(v6, v0);
    (*(v8 + 8))(v13, v7);
    return v18;
  }

  return result;
}

uint64_t sub_324FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v28 = a6;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2EF0(&qword_317B48, &qword_26A0A0);
  __chkstk_darwin(v14);
  v16 = &v26[-v15];
  if (UIAccessibilityPrefersCrossFadeTransitions())
  {
    v17 = sub_2613D0();
  }

  else
  {
    v17 = sub_2613F0();
  }

  v18 = v17;
  v19 = sub_2EF0(&qword_317B50, &qword_26A0A8);
  (*(*(v19 - 8) + 16))(v16, a1, v19);
  *&v16[*(v14 + 36)] = v18;
  if (a5)
  {
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v21 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(a4, 0);
    (*(v11 + 8))(v13, v10);
    if (v30)
    {
LABEL_6:
      v20 = 0;
      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  v20 = sub_2635D0();
  if ((v27 & 1) == 0)
  {
LABEL_10:

    sub_264900();
    v22 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(a2, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a2) = v29;
  }

LABEL_11:
  v23 = v28;
  sub_3A36C(v16, v28);
  result = sub_2EF0(&qword_317B58, &qword_26A0B0);
  v25 = v23 + *(result + 36);
  *v25 = v20;
  *(v25 + 8) = a2 & 1;
  return result;
}

void sub_32830()
{
  v1 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = (v0 + *(type metadata accessor for TotalMonthlyReadingChart(0) + 44));
  v13 = *v11;
  v12 = v11[1];
  v20 = v13;
  v21 = v12;
  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  v14 = v19;
  v15 = *(v19 + 16);
  if (v15)
  {
    v16 = v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    sub_38110(v16, v7, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    if (v15 == 1)
    {
LABEL_3:

      sub_390C0(v7, v10, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      sub_39D0C(v10, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    }

    else
    {
      v17 = 1;
      while (v17 < *(v14 + 16))
      {
        sub_38110(v16 + *(v2 + 72) * v17, v4, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        if (*&v7[*(v1 + 20)] >= *&v4[*(v1 + 20)])
        {
          sub_39D0C(v4, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        }

        else
        {
          sub_39D0C(v7, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
          sub_390C0(v4, v7, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        }

        if (v15 == ++v17)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_32AC8()
{
  v0 = sub_261DD0();
  sub_B600(v0, qword_317610);
  v1 = sub_B080(v0, qword_317610);
  v2 = enum case for RoundedCornerStyle.continuous(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_32B50()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_317628 = v16;
  unk_317630 = v18;
  return result;
}

uint64_t sub_32DD0()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_317638 = v16;
  unk_317640 = v18;
  return result;
}

void sub_33048(uint64_t a1@<X8>)
{
  v122 = a1;
  v121 = sub_2EF0(&qword_317960, &qword_269CF0);
  __chkstk_darwin(v121);
  v153 = &v116 - v2;
  v152 = sub_261C90();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_317968, &qword_269CF8);
  __chkstk_darwin(v4 - 8);
  v140 = &v116 - v5;
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v135 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_262180();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v117 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2EF0(&qword_317970, &qword_269D00);
  __chkstk_darwin(v124);
  v125 = &v116 - v9;
  v10 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v10 - 8);
  v118 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v157 = &v116 - v13;
  __chkstk_darwin(v14);
  v123 = (&v116 - v15);
  v136 = sub_260EE0();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TotalMonthlyReadingChart(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v131 = sub_2EF0(&qword_317978, &qword_269D08);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v162 = &v116 - v20;
  v133 = sub_2EF0(&qword_317980, &qword_269D10);
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v128 = &v116 - v21;
  v139 = sub_2EF0(&qword_317988, &qword_269D18);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v116 - v22;
  v146 = sub_2EF0(&qword_317990, &qword_269D20);
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v159 = &v116 - v23;
  v141 = sub_2EF0(&qword_317998, &qword_269D28);
  __chkstk_darwin(v141);
  v142 = &v116 - v24;
  v161 = sub_2EF0(&qword_3179A0, &qword_269D30);
  __chkstk_darwin(v161);
  v160 = &v116 - v25;
  v120 = sub_2EF0(&qword_3179A8, &qword_269D38);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v147 = &v116 - v26;
  v158 = v17;
  v27 = (v1 + *(v17 + 44));
  v29 = *v27;
  v28 = v27[1];
  v164 = v29;
  v165 = *&v28;
  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  sub_38110(v1, &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingChart);
  v30 = *(v18 + 80);
  v31 = (v30 + 16) & ~v30;
  v148 = v19;
  v143 = v30;
  v163 = swift_allocObject();
  v145 = v31;
  v149 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_390C0(v149, v163 + v31, type metadata accessor for TotalMonthlyReadingChart);
  v156 = sub_2EF0(&qword_317908, qword_269C98);
  v155 = sub_2EF0(&qword_3179C8, &qword_269D68);
  v154 = sub_8E38(&qword_3179D0, &qword_317908, qword_269C98, &protocol conformance descriptor for [A]);
  v32 = sub_2F9C(&qword_3179D8, &qword_269D70);
  v33 = sub_2F9C(&qword_3179E0, &qword_269D78);
  v34 = sub_2F9C(&qword_3179E8, &qword_269D80);
  v35 = sub_2F9C(&qword_3179F0, &qword_269D88);
  v36 = sub_2F9C(&qword_3179F8, &qword_269D90);
  v37 = sub_2F9C(&qword_317A00, &qword_269D98);
  v38 = sub_2F9C(&qword_317A08, &unk_269DA0);
  v39 = sub_262170();
  v164 = sub_260F50();
  v165 = COERCE_DOUBLE(&type metadata for Color);
  v166 = &protocol witness table for BarMark;
  v167 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_38088(&qword_317A10, &type metadata accessor for UnevenRoundedRectangle, &protocol conformance descriptor for UnevenRoundedRectangle);
  v164 = v38;
  v165 = *&v39;
  v166 = OpaqueTypeConformance2;
  v167 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_39140();
  v164 = v36;
  v165 = *&v37;
  v166 = v42;
  v167 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_391F8();
  v164 = v34;
  v165 = *&v35;
  v166 = v44;
  v167 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_10A84();
  v164 = v33;
  v165 = COERCE_DOUBLE(&type metadata for String);
  v166 = v46;
  v167 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v164 = v32;
  v165 = COERCE_DOUBLE(&type metadata for String);
  v166 = v48;
  v167 = v47;
  swift_getOpaqueTypeConformance2();
  sub_38088(&qword_317A38, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal, &protocol conformance descriptor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  sub_260F30();
  v163 = v1;
  sub_32830();
  if (v49 < 0.0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v164 = 0;
  v165 = v49;
  v50 = (v163 + *(v158 + 48));
  v51 = *v50;
  v52 = v50[1];
  v170 = v51;
  v171 = v52;
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  v53 = v123;
  sub_408A8(v123);
  v54 = v126;
  v55 = v157;
  v56 = v127;
  (*(v126 + 104))(v157, enum case for UserInterfaceSizeClass.compact(_:), v127);
  (*(v54 + 56))(v55, 0, 1, v56);
  v57 = *(v124 + 48);
  v58 = v125;
  sub_8198(v53, v125, &qword_3178F0, &qword_269C90);
  v156 = v57;
  sub_8198(v55, v58 + v57, &qword_3178F0, &qword_269C90);
  v59 = *(v54 + 48);
  if (v59(v58, 1, v56) == 1)
  {
    sub_8E80(v55, &qword_3178F0, &qword_269C90);
    sub_8E80(v53, &qword_3178F0, &qword_269C90);
    if (v59(v58 + v156, 1, v56) == 1)
    {
      sub_8E80(v58, &qword_3178F0, &qword_269C90);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v60 = v118;
  sub_8198(v58, v118, &qword_3178F0, &qword_269C90);
  v61 = v156;
  if (v59(v58 + v156, 1, v56) == 1)
  {
    sub_8E80(v157, &qword_3178F0, &qword_269C90);
    sub_8E80(v53, &qword_3178F0, &qword_269C90);
    (*(v54 + 8))(v60, v56);
LABEL_7:
    sub_8E80(v58, &qword_317970, &qword_269D00);
    goto LABEL_8;
  }

  v114 = v117;
  (*(v54 + 32))(v117, v58 + v61, v56);
  sub_38088(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  sub_264390();
  v115 = *(v54 + 8);
  v115(v114, v56);
  sub_8E80(v157, &qword_3178F0, &qword_269C90);
  sub_8E80(v53, &qword_3178F0, &qword_269C90);
  v115(v60, v56);
  sub_8E80(v58, &qword_3178F0, &qword_269C90);
LABEL_8:
  v62 = v135;
  sub_40880(v135);
  sub_39D0C(v62, type metadata accessor for SizeConstants.Spacing);
  v63 = v132;
  sub_260ED0();
  v64 = sub_260F90();
  v65 = v140;
  (*(*(v64 - 8) + 56))(v140, 1, 1, v64);
  v66 = sub_2EF0(&qword_317A48, &qword_269DC0);
  v67 = sub_8E38(&qword_317A50, &qword_317978, &qword_269D08, &protocol conformance descriptor for Chart<A>);
  v68 = sub_392B0();
  v69 = v128;
  v70 = v131;
  v71 = v136;
  v72 = v162;
  sub_2629B0();
  sub_8E80(v65, &qword_317968, &qword_269CF8);
  (*(v134 + 8))(v63, v71);
  (*(v129 + 8))(v72, v70);
  v164 = v70;
  v165 = *&v66;
  v166 = v71;
  v167 = v67;
  v168 = v68;
  v169 = &protocol witness table for PlotDimensionScaleRange;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v137;
  v75 = v133;
  sub_262990();
  v76 = (*(v130 + 8))(v69, v75);
  v162 = &v116;
  __chkstk_darwin(v76);
  v77 = v163;
  sub_2EF0(&qword_317A60, &qword_269DC8);
  v164 = v75;
  v165 = *&v73;
  swift_getOpaqueTypeConformance2();
  v78 = sub_2F9C(&qword_317A68, &qword_269DD0);
  v79 = v158;
  v80 = v78;
  v81 = sub_2F9C(&qword_317A70, &qword_269DD8);
  v82 = sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0, &protocol conformance descriptor for AxisMarks<A>);
  v83 = sub_39334();
  v164 = v80;
  v165 = *&v81;
  v166 = v82;
  v167 = v83;
  swift_getOpaqueTypeConformance2();
  v84 = v139;
  sub_2629A0();
  (*(v138 + 8))(v74, v84);
  v85 = v77 + *(v79 + 36);
  v86 = *v85;
  v87 = *(v85 + 8);
  if (v87 == 1)
  {
    v88 = 1.0;
    v89 = v153;
    v90 = v152;
    v91 = v151;
    v92 = v150;
    if (v86)
    {
      goto LABEL_17;
    }
  }

  else
  {

    sub_264900();
    v93 = sub_2624B0();
    sub_260D10();

    v92 = v150;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v86, 0);
    v91 = v151;
    v90 = v152;
    (*(v151 + 8))(v92, v152);
    v88 = 1.0;
    v89 = v153;
    if (v164)
    {
      goto LABEL_17;
    }
  }

  v94 = v163 + *(v79 + 40);
  v95 = *v94;
  if (*(v94 + 8) != 1)
  {

    sub_264900();
    v96 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v95, 0);
    (*(v91 + 8))(v92, v90);
    LOBYTE(v95) = v164;
  }

  if (v95)
  {
    v88 = 1.0;
  }

  else
  {
    v88 = 0.0;
  }

LABEL_17:
  v97 = v142;
  (*(v144 + 32))(v142, v159, v146);
  *&v97[*(v141 + 36)] = v88;
  KeyPath = swift_getKeyPath();
  v99 = swift_getKeyPath();
  v100 = v97;
  v101 = v160;
  sub_393FC(v100, v160);
  v102 = v101 + *(v161 + 36);
  *v102 = KeyPath;
  *(v102 + 8) = 0;
  *(v102 + 16) = v99;
  *(v102 + 24) = 0;
  if (!v87)
  {

    sub_264900();
    v103 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v86, 0);
    (*(v91 + 8))(v92, v90);
    LOBYTE(v86) = v164;
  }

  LOBYTE(v164) = v86 & 1;
  v104 = v149;
  sub_38110(v163, v149, type metadata accessor for TotalMonthlyReadingChart);
  v105 = v145;
  v106 = swift_allocObject();
  sub_390C0(v104, v106 + v105, type metadata accessor for TotalMonthlyReadingChart);
  v107 = sub_39824();
  v108 = v147;
  v109 = v160;
  v110 = v161;
  sub_262E50();

  sub_39B7C(v109);
  v111 = enum case for DynamicTypeSize.xxxLarge(_:);
  v112 = sub_261690();
  (*(*(v112 - 8) + 104))(v89, v111, v112);
  sub_38088(&qword_317AB0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_264390())
  {
    v164 = v110;
    v165 = COERCE_DOUBLE(&type metadata for Bool);
    v166 = v107;
    v167 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v113 = v120;
    sub_262B70();
    sub_8E80(v89, &qword_317960, &qword_269CF0);
    (*(v119 + 8))(v108, v113);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_347C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v5 = sub_260EC0();
  v125 = *(v5 - 8);
  v126 = v5;
  __chkstk_darwin(v5);
  v124 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_262170();
  __chkstk_darwin(v123);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v108 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2EF0(&qword_317AC8, &qword_269E38);
  __chkstk_darwin(v10 - 8);
  v104 = &v93 - v11;
  v105 = sub_2602D0();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_317AF0, &qword_269E58);
  __chkstk_darwin(v13 - 8);
  v101 = &v93 - v14;
  v15 = sub_261C90();
  v94 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_317AF8, &qword_269E60);
  __chkstk_darwin(v18 - 8);
  v98 = &v93 - v19;
  v106 = sub_260F50();
  v102 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2EF0(&qword_317A08, &unk_269DA0);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v22 = &v93 - v21;
  v114 = sub_2EF0(&qword_3179F8, &qword_269D90);
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v93 - v23;
  v117 = sub_2EF0(&qword_3179E8, &qword_269D80);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v93 - v24;
  v120 = sub_2EF0(&qword_3179E0, &qword_269D78);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v93 - v25;
  v26 = sub_2EF0(&qword_3179D8, &qword_269D70);
  v121 = *(v26 - 8);
  v122 = v26;
  __chkstk_darwin(v26);
  v119 = &v93 - v27;
  if (qword_3158B8 != -1)
  {
    swift_once();
  }

  v28 = unk_317630;
  v112 = qword_317628;
  v132 = qword_317628;
  v133 = unk_317630;
  v29 = type metadata accessor for TotalMonthlyReadingChart(0);
  v30 = a2 + *(v29 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  v128 = v28;
  swift_bridgeObjectRetain_n();
  v129 = a2;
  if (v32 == 1)
  {
    v33 = v22;
    if ((v31 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_39D6C(v31, 0);
    sub_264900();
    v34 = a2;
    v35 = v15;
    v36 = sub_2624B0();
    sub_260D10();

    v15 = v35;
    a2 = v34;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v31, 0);
    (*(v94 + 8))(v17, v15);
    v33 = v22;
    if (v130 != 1)
    {
      goto LABEL_12;
    }
  }

  v37 = a2 + *(v29 + 40);
  v38 = *v37;
  if (*(v37 + 8) == 1)
  {
    if ((v38 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v39 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
    goto LABEL_13;
  }

  sub_264900();
  v41 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_4054(v38, 0);
  (*(v94 + 8))(v17, v15);
  if (v130 == 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v39 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v40 = 0;
  if (*(a1 + *(v39 + 24)) == 1)
  {
LABEL_13:
    v40 = *(a1 + *(v39 + 20));
  }

  v97 = v33;
  v42 = a1;
  v130 = v40;
  v43 = sub_10A84();
  sub_260E80();

  if (qword_3158C0 != -1)
  {
    swift_once();
  }

  v132 = qword_317638;
  v133 = unk_317640;
  v44 = v103;
  v45 = v100;
  v46 = v105;
  (*(v103 + 104))(v100, enum case for Calendar.Component.month(_:), v105);
  v47 = sub_2602E0();
  v48 = v104;
  (*(*(v47 - 8) + 56))(v104, 1, 1, v47);

  sub_260E70();
  sub_8E80(v48, &qword_317AC8, &qword_269E38);
  (*(v44 + 8))(v45, v46);

  sub_2601B0();
  v49 = v99;
  sub_260F40();
  v50 = v108;
  v105 = v43;
  sub_404B8(v108);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v51 = sub_263000();

  sub_39D0C(v50, type metadata accessor for ColorConstants);
  v132 = v51;
  v52 = v42;
  v53 = v97;
  v54 = v106;
  sub_260DD0();

  (*(v102 + 8))(v49, v54);
  if (qword_3158B0 != -1)
  {
    swift_once();
  }

  v55 = sub_261DD0();
  v56 = sub_B080(v55, qword_317610);
  v57 = v123;
  v58 = v96;
  (*(*(v55 - 8) + 16))(&v96[*(v123 + 20)], v56, v55);
  sub_261FD0();
  *v58 = v59;
  v58[1] = v60;
  v58[2] = v61;
  v58[3] = v62;
  v132 = v54;
  v133 = &type metadata for Color;
  v134 = &protocol witness table for BarMark;
  v135 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = sub_38088(&qword_317A10, &type metadata accessor for UnevenRoundedRectangle, &protocol conformance descriptor for UnevenRoundedRectangle);
  v65 = v110;
  v66 = v109;
  sub_260E10();
  sub_39D0C(v58, &type metadata accessor for UnevenRoundedRectangle);
  (*(v107 + 8))(v53, v66);
  v67 = v124;
  v68 = sub_260EB0();
  v108 = &v93;
  __chkstk_darwin(v68);
  v95 = v52;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v69 = sub_2EF0(&qword_317A00, &qword_269D98);
  v132 = v66;
  v133 = v57;
  v134 = OpaqueTypeConformance2;
  v135 = v64;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_39140();
  v72 = v113;
  v73 = v114;
  sub_260DC0();
  (*(v125 + 8))(v67, v126);
  v74 = (*(v111 + 8))(v65, v73);
  __chkstk_darwin(v74);
  v75 = sub_2EF0(&qword_3179F0, &qword_269D88);
  v132 = v73;
  v133 = v69;
  v134 = v70;
  v135 = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_391F8();
  v79 = v116;
  v78 = v117;
  sub_260DE0();
  (*(v115 + 8))(v72, v78);
  v130 = TotalMonthlyReadingFrameViewModel.MonthTotal.axLabel.getter();
  v131 = v80;
  v132 = v78;
  v133 = v75;
  v134 = v76;
  v135 = v77;
  v81 = swift_getOpaqueTypeConformance2();
  v83 = v119;
  v82 = v120;
  v84 = v105;
  sub_260DF0();

  (*(v118 + 8))(v79, v82);
  sub_2EF0(&qword_317240, &qword_269790);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_269100;
  v86 = v128;
  *(v85 + 32) = v112;
  *(v85 + 40) = v86;
  *(v85 + 48) = TotalMonthlyReadingFrameViewModel.MonthTotal.axValue.getter();
  *(v85 + 56) = v87;
  v132 = v85;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40, &protocol conformance descriptor for [A]);
  v88 = sub_264340();
  v90 = v89;

  v130 = v88;
  v131 = v90;
  v132 = v82;
  v133 = &type metadata for String;
  v134 = v81;
  v135 = v84;
  swift_getOpaqueTypeConformance2();
  v91 = v122;
  sub_260E00();

  return (*(v121 + 8))(v83, v91);
}

void sub_35898(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v59 = a3;
  v3 = type metadata accessor for TotalMonthlyReadingChart(0);
  v58 = *(v3 - 8);
  v57 = *(v58 + 64);
  __chkstk_darwin(v3 - 8);
  v56 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v54 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_265190();
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265170();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2651F0();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265200();
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  __chkstk_darwin(v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v20 = sub_265220();
  v47[0] = v21;
  v47[1] = v20;
  sub_2EF0(&qword_317660, &unk_269AC8);
  sub_2651C0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_269100;
  sub_2651B0();
  sub_2651A0();
  sub_37D68(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2651E0();
  sub_265160();
  sub_265180();
  sub_25FE40();

  (*(v7 + 8))(v9, v53);
  (*(v51 + 8))(v12, v52);
  (*(v13 + 8))(v15, v50);
  sub_38088(&qword_317668, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v23 = v48;
  sub_265210();
  (*(v49 + 8))(v19, v23);
  sub_10A84();
  v24 = sub_2628F0();
  v26 = v25;
  v28 = v27;
  _s7BooksUI13FontConstantsV6ButtonV8subtitle05SwiftB00C0Vvg_0();
  v29 = sub_262840();
  v31 = v30;
  LOBYTE(v22) = v32;

  sub_39DBC(v24, v26, v28 & 1);

  v34 = v54;
  v33 = v55;
  sub_404B8(v54);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v35 = sub_263000();

  sub_39D0C(v34, type metadata accessor for ColorConstants);
  v60 = v35;
  v36 = sub_2627F0();
  v38 = v37;
  LOBYTE(v13) = v39;
  v41 = v40;
  sub_39DBC(v29, v31, v22 & 1);

  v42 = v33;
  v43 = v56;
  sub_38110(v42, v56, type metadata accessor for TotalMonthlyReadingChart);
  v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v45 = swift_allocObject();
  sub_390C0(v43, v45 + v44, type metadata accessor for TotalMonthlyReadingChart);
  v46 = v59;
  *v59 = v36;
  v46[1] = v38;
  *(v46 + 16) = v13 & 1;
  *(v46 + 17) = v60;
  *(v46 + 5) = *(&v60 + 3);
  v46[3] = v41;
  v46[4] = sub_35F54;
  v46[5] = 0;
  v46[6] = sub_39DCC;
  v46[7] = v45;
}

uint64_t sub_35F80(double *a1, uint64_t a2)
{
  type metadata accessor for TotalMonthlyReadingChart(0);
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  return sub_2631F0();
}

uint64_t sub_36024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v2 = type metadata accessor for TotalMonthlyReadingChart(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_2EF0(&qword_317AC8, &qword_269E38);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_2602D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260E50();
  __chkstk_darwin(v11 - 8);
  v29 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_260EA0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_260E30();
  __chkstk_darwin(v14 - 8);
  v15 = sub_2EF0(&qword_317A68, &qword_269DD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  sub_260E20();
  sub_260E90();
  (*(v8 + 104))(v10, enum case for Calendar.Component.month(_:), v7);
  v19 = sub_2602E0();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_260E40();
  sub_8E80(v6, &qword_317AC8, &qword_269E38);
  (*(v8 + 8))(v10, v7);
  v20 = v31;
  sub_38110(v31, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingChart);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_390C0(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for TotalMonthlyReadingChart);
  sub_2EF0(&qword_317AD0, &qword_269E40);
  v23 = sub_2F9C(&qword_317AD8, &qword_269E48);
  v24 = sub_2F9C(&qword_317AE0, &qword_269E50);
  v25 = sub_8E38(&qword_317AE8, &qword_317AE0, &qword_269E50, &protocol conformance descriptor for AxisValueLabel<A>);
  v36 = v24;
  v37 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v23;
  v37 = &type metadata for Color;
  v38 = OpaqueTypeConformance2;
  v39 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_260F80();
  v35 = v20;
  sub_2EF0(&qword_317A70, &qword_269DD8);
  sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0, &protocol conformance descriptor for AxisMarks<A>);
  sub_39334();
  v27 = v32;
  sub_260DB0();
  return (*(v33 + 8))(v18, v27);
}

uint64_t sub_365D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v2 - 8);
  v35 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_260F00();
  __chkstk_darwin(v4 - 8);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260F20();
  __chkstk_darwin(v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_260140();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260150();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v16 = sub_2EF0(&qword_317AE0, &qword_269E50);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  v20 = sub_2EF0(&qword_317AD8, &qword_269E48);
  v21 = *(v20 - 8);
  v33 = v20;
  v34 = v21;
  __chkstk_darwin(v20);
  v23 = &v29 - v22;
  sub_25FE30();
  sub_260120();
  sub_2600D0();
  (*(v8 + 8))(v10, v30);
  (*(v12 + 8))(v14, v11);
  sub_263740();
  sub_260F10();
  sub_260EF0();
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_260E60();
  sub_262700();
  sub_2625A0();

  v24 = sub_8E38(&qword_317AE8, &qword_317AE0, &qword_269E50, &protocol conformance descriptor for AxisValueLabel<A>);
  sub_260F70();

  (*(v17 + 8))(v19, v16);
  v25 = v35;
  sub_404B8(v35);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v26 = sub_263000();

  sub_39D0C(v25, type metadata accessor for ColorConstants);
  v39 = v24;
  v40 = v26;
  v38 = v16;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_260F60();

  return (*(v34 + 8))(v23, v27);
}

uint64_t sub_36B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v31 = a7;
  v32 = a1;
  v26 = sub_261C90();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = sub_263640();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TotalMonthlyReadingChart(0);
  sub_8198(a2 + *(v18 + 28), v13, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v15 + 32);
    v19(v17, v13, v14);
  }

  else
  {
    sub_264900();
    v20 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v26);
    v19 = *(v15 + 32);
  }

  v21 = sub_2EF0(v27, v28);
  v22 = v31;
  v19((v31 + *(v21 + 36)), v17, v14);
  v23 = sub_2EF0(v29, v30);
  return (*(*(v23 - 8) + 16))(v22, v32, v23);
}

void sub_36E24(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for TotalMonthlyReadingChart(0);
  if (v3 == 1)
  {
    sub_2EF0(&qword_3179B0, &unk_269D40);
    sub_2631E0();
    v4 = *(v11 + 16);

    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_263610();
        sub_2635B0();

        __chkstk_darwin(v6);
        sub_2614E0();
      }
    }
  }

  else
  {
    sub_2EF0(&qword_3179B0, &unk_269D40);
    sub_2631E0();
    v7 = *(v11 + 16);

    if (v7)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        __chkstk_darwin(v8);
        sub_263620();
        sub_2614E0();

        v9 = v10;
      }

      while (v7 != v10);
    }
  }
}

void sub_37048(uint64_t a1, unint64_t a2, char a3)
{
  type metadata accessor for TotalMonthlyReadingChart(0);

  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  v5 = v7;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_228E24(v7);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v6 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
    *(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a2 + *(v6 + 24)) = a3;
    sub_2631F0();

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_371A8@<D0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for TotalMonthlyReadingChart(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a2 + v3[9];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a2 + v3[10];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = (a2 + v3[11]);
  sub_2EF0(&qword_317908, qword_269C98);
  sub_2631D0();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = (a2 + v3[12]);
  sub_2631D0();
  result = v13;
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

uint64_t TotalMonthlyReadingFrame.sharableView.getter()
{
  v1 = type metadata accessor for TotalMonthlyReadingFrame(0);
  __chkstk_darwin(v1);
  sub_38110(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingFrame);
  sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame, &protocol conformance descriptor for TotalMonthlyReadingFrame);
  return sub_263310();
}

uint64_t TotalMonthlyReadingFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TotalMonthlyReadingFrame(0) + 24);
  v4 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_38088(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_38088(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

double TotalMonthlyReadingFrame.init(model:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_263550();
  a2[1] = v4;
  v5 = type metadata accessor for TotalMonthlyReadingFrame(0);
  v6 = (a2 + *(v5 + 20));
  v7 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *v6 = sub_262F40();
  v8 = enum case for ColorScheme.light(_:);
  v9 = sub_261180();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6 + v7, v8, v9);
  (*(v10 + 56))(v6 + v7, 0, 1, v9);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  sub_390C0(a1, a2 + *(v5 + 24), type metadata accessor for TotalMonthlyReadingFrameViewModel);
  return result;
}

void TotalMonthlyReadingFrame.body.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for TotalMonthlyReadingFrame(0);
  v2 = sub_31B88();
  v4 = v3;
  v5 = sub_32260();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v7 = sub_2EF0(&qword_317688, &qword_269AD8);
  v8 = v7[10];

  sub_371A8((a1 + v8));
  *(a1 + v7[11]) = 0x3FC999999999999ALL;
  *(a1 + v7[12]) = 0x4040000000000000;
  *(a1 + v7[13]) = 0x4040000000000000;
}

uint64_t sub_377A0(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_38110(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingFrame);
  sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame, &protocol conformance descriptor for TotalMonthlyReadingFrame);
  return sub_263310();
}

uint64_t sub_378A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 24);
  v5 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_38088(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_38088(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

void sub_3799C(uint64_t *a2@<X8>)
{
  v3 = sub_31B88();
  v5 = v4;
  v6 = sub_32260();
  *a2 = v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  v8 = sub_2EF0(&qword_317688, &qword_269AD8);
  v9 = v8[10];

  sub_371A8((a2 + v9));
  *(a2 + v8[11]) = 0x3FC999999999999ALL;
  *(a2 + v8[12]) = 0x4040000000000000;
  *(a2 + v8[13]) = 0x4040000000000000;
}

void *sub_37A48(uint64_t a1)
{
  v2 = sub_264140();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2EF0(&qword_317B30, &qword_269F58);
    v9 = sub_264BA0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_38088(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = sub_264320();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_38088(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = sub_264390();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_37D68(uint64_t a1)
{
  v2 = sub_2651C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2EF0(&qword_317B18, &qword_269F50);
    v9 = sub_264BA0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_38088(&qword_317B20, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v16 = sub_264320();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_38088(&qword_317B28, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v23 = sub_264390();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_38088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_38110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_381C0(uint64_t a1)
{
  result = sub_38088(&qword_317698, type metadata accessor for TotalMonthlyReadingFrame, &protocol conformance descriptor for TotalMonthlyReadingFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_38218(uint64_t a1)
{
  result = sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame, &protocol conformance descriptor for TotalMonthlyReadingFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_382A0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_38360(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38404(uint64_t a1)
{
  sub_38FEC(319, &unk_317708, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_260550();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_384CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2601B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_385AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2601B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_38664(uint64_t a1)
{
  result = sub_2601B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_386FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageBackground(0);
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
    v12 = type metadata accessor for TotalMonthlyReadingFrameViewModel(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_38804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for TotalMonthlyReadingFrameViewModel(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_38904(uint64_t a1)
{
  result = type metadata accessor for PageBackground(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TotalMonthlyReadingFrameViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_389F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317870, &unk_26BFB0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_38BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317870, &unk_26BFB0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F78, &unk_269C60);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_317878, &unk_27E490);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_38DB8(uint64_t a1)
{
  sub_38FEC(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2CC54(319, &qword_3178E8, &qword_3178F0, &qword_269C90, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_38FEC(319, &qword_317008, type metadata accessor for SizeConstants.Spacing, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_38FEC(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_39050(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_2CC54(319, &qword_317900, &qword_317908, qword_269C98, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_39050(319, &qword_317910, &type metadata for CGFloat, &type metadata accessor for State);
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

void sub_38FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_39050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_390C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_39140()
{
  result = qword_317A18;
  if (!qword_317A18)
  {
    sub_2F9C(&qword_317A00, &qword_269D98);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A18);
  }

  return result;
}

unint64_t sub_391F8()
{
  result = qword_317A20;
  if (!qword_317A20)
  {
    sub_2F9C(&qword_3179F0, &qword_269D88);
    sub_8E38(&qword_317A28, &qword_317A30, &unk_269DB0, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A20);
  }

  return result;
}

unint64_t sub_392B0()
{
  result = qword_317A58;
  if (!qword_317A58)
  {
    sub_2F9C(&qword_317A48, &qword_269DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A58);
  }

  return result;
}

unint64_t sub_39334()
{
  result = qword_317A80;
  if (!qword_317A80)
  {
    sub_2F9C(&qword_317A70, &qword_269DD8);
    sub_8E38(&qword_317A88, &qword_317A90, &qword_269DE0, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A80);
  }

  return result;
}

uint64_t sub_393FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317998, &qword_269D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3946C()
{
  v1 = type metadata accessor for TotalMonthlyReadingChart(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_262180();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_263640();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  sub_4054(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  sub_4054(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_4054(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  return swift_deallocObject();
}

void sub_397A4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_36E24(a1, a2, v6);
}

unint64_t sub_39824()
{
  result = qword_317A98;
  if (!qword_317A98)
  {
    sub_2F9C(&qword_3179A0, &qword_269D30);
    sub_398B0();
    sub_39B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A98);
  }

  return result;
}

unint64_t sub_398B0()
{
  result = qword_317AA0;
  if (!qword_317AA0)
  {
    sub_2F9C(&qword_317998, &qword_269D28);
    sub_2F9C(&qword_317988, &qword_269D18);
    sub_2F9C(&qword_317A60, &qword_269DC8);
    sub_2F9C(&qword_317980, &qword_269D10);
    sub_2F9C(&qword_317978, &qword_269D08);
    sub_2F9C(&qword_317A48, &qword_269DC0);
    sub_260EE0();
    sub_8E38(&qword_317A50, &qword_317978, &qword_269D08, &protocol conformance descriptor for Chart<A>);
    sub_392B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_317A68, &qword_269DD0);
    sub_2F9C(&qword_317A70, &qword_269DD8);
    sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0, &protocol conformance descriptor for AxisMarks<A>);
    sub_39334();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AA0);
  }

  return result;
}

unint64_t sub_39B28()
{
  result = qword_317AA8;
  if (!qword_317AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AA8);
  }

  return result;
}

uint64_t sub_39B7C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3179A0, &qword_269D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39C3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_39D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_39D6C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_39DBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_39DCC(double *a1)
{
  v3 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_35F80(a1, v4);
}

void *sub_39E3C(uint64_t a1)
{
  v2 = sub_263A90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2EF0(&qword_317B00, &qword_269E68);
    v9 = sub_264BA0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_38088(&qword_317B08, &type metadata accessor for PageMetrics.InvocationPoint, &protocol conformance descriptor for PageMetrics.InvocationPoint);
      v16 = sub_264320();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_38088(&qword_317B10, &type metadata accessor for PageMetrics.InvocationPoint, &protocol conformance descriptor for PageMetrics.InvocationPoint);
          v23 = sub_264390();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

__n128 sub_3A188(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_3A19C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_3A1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_3A23C()
{
  sub_2F9C(&qword_3179A8, &qword_269D38);
  sub_2F9C(&qword_317960, &qword_269CF0);
  sub_2F9C(&qword_3179A0, &qword_269D30);
  sub_39824();
  swift_getOpaqueTypeConformance2();
  sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3A36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317B48, &qword_26A0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3A3E0()
{
  result = qword_317B60;
  if (!qword_317B60)
  {
    sub_2F9C(&qword_317B58, &qword_26A0B0);
    sub_3A498();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317B60);
  }

  return result;
}

unint64_t sub_3A498()
{
  result = qword_317B68;
  if (!qword_317B68)
  {
    sub_2F9C(&qword_317B48, &qword_26A0A0);
    sub_8E38(&qword_317B70, &qword_317B50, &qword_26A0A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_317B78, &qword_317B80, &qword_26A0B8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317B68);
  }

  return result;
}

uint64_t sub_3A5C0()
{
  sub_2EF0(&qword_317BB8, &qword_26A1B8);
  sub_264140();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269100;
  sub_2640F0();
  sub_264120();
  v1 = sub_37A48(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_317B98 = v1;
  return result;
}

uint64_t sub_3A6C8()
{
  sub_2EF0(&qword_317BB0, &qword_26A1B0);
  v0 = sub_2EF0(&qword_3161E8, &qword_267FB8);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v28 = *(*(v0 - 8) + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A0D0;
  v29 = v2;
  v30 = v0;
  v3 = v2 + v1;
  v26 = *(v0 + 48);
  sub_263D60();
  if (qword_3158C8 != -1)
  {
    swift_once();
  }

  v4 = qword_317B98;
  sub_2EF0(&qword_317BB8, &qword_26A1B8);
  v5 = sub_264140();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_267D20;
  v10 = v9 + v8;
  v11 = qword_315910;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_B080(v5, qword_31B640);
  v13 = *(v6 + 16);
  v13(v10, v12, v5);
  if (qword_315AE8 != -1)
  {
    swift_once();
  }

  v14 = sub_B080(v5, qword_326E80);
  v13(v10 + v7, v14, v5);
  sub_264110();
  v15 = sub_3B5B0(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v3 + v26) = v15;
  v16 = *(v30 + 48);
  sub_263D80();
  *(v3 + v28 + v16) = qword_317B98;
  v27 = *(v30 + 48);

  sub_263D40();
  v17 = qword_317B98;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267D30;

  sub_264100();
  v19 = sub_3B5B0(v18, v17);
  swift_setDeallocating();
  (*(v6 + 8))(v18 + v8, v5);
  swift_deallocClassInstance();
  *(v3 + 2 * v28 + v27) = v19;
  v20 = *(v30 + 48);
  sub_263D70();
  *(v3 + 3 * v28 + v20) = qword_317B98;
  v21 = *(v30 + 48);

  sub_263D50();
  *(v3 + 4 * v28 + v21) = qword_317B98;
  v22 = *(v30 + 48);

  sub_263D30();
  *(v3 + 5 * v28 + v22) = qword_317B98;
  v23 = *(v30 + 48);

  sub_263D90();
  *(v3 + 6 * v28 + v23) = qword_317B98;

  v24 = sub_E878(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_353F00 = v24;
  return result;
}

uint64_t sub_3AB34()
{
  sub_2EF0(&qword_317BA8, &qword_26A1A8);
  v0 = sub_2EF0(&qword_3161C8, &qword_267FA8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A0D0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  sub_263D60();
  *(v4 + v5) = &_swiftEmptySetSingleton;
  v6 = *(v0 + 48);
  sub_263D80();
  *(v4 + v1 + v6) = &_swiftEmptySetSingleton;
  v7 = *(v0 + 48);
  sub_263D40();
  *(v4 + 2 * v1 + v7) = &_swiftEmptySetSingleton;
  v8 = *(v0 + 48);
  sub_263D70();
  *(v4 + 3 * v1 + v8) = &_swiftEmptySetSingleton;
  v9 = *(v0 + 48);
  sub_263D50();
  *(v4 + 4 * v1 + v9) = &_swiftEmptySetSingleton;
  v10 = *(v0 + 48);
  sub_263D30();
  *(v4 + 5 * v1 + v10) = &_swiftEmptySetSingleton;
  v11 = v4 + 6 * v1;
  v12 = *(v0 + 48);
  sub_263D90();
  *(v11 + v12) = &_swiftEmptySetSingleton;
  v13 = sub_E89C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_353F08 = v13;
  return result;
}

uint64_t sub_3ACF0()
{
  v0 = sub_2639E0();
  sub_B600(v0, qword_353F10);
  sub_B080(v0, qword_353F10);
  if (qword_3158D0 != -1)
  {
    swift_once();
  }

  v1 = qword_3158D8;

  if (v1 != -1)
  {
    swift_once();
  }

  return sub_2639D0();
}

BooksUI::Metrics::IdType_optional __swiftcall Metrics.IdType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2FF930;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t Metrics.IdType.rawValue.getter()
{
  if (*v0)
  {
    return 0x69746E6575716573;
  }

  else
  {
    return 0x64695F737469;
  }
}

uint64_t sub_3AE90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69746E6575716573;
  }

  else
  {
    v3 = 0x64695F737469;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x69746E6575716573;
  }

  else
  {
    v5 = 0x64695F737469;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_3AF38()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_3AFBC(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_3B02C(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_3B0AC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2FF930;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_3B10C(uint64_t *a1@<X8>)
{
  v2 = 0x64695F737469;
  if (*v1)
  {
    v2 = 0x69746E6575716573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static Metrics.contentKind(for:)()
{
  v0 = 0x6F6F626F69647561;
  v1 = sub_2609D0();
  v3 = v2;
  if (v1 == sub_2609D0() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_264F10();

    if ((v5 & 1) == 0)
    {
      return 0x6B6F6F6265;
    }
  }

  return v0;
}

unint64_t sub_3B51C()
{
  result = qword_317BA0;
  if (!qword_317BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BA0);
  }

  return result;
}

uint64_t sub_3B5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264140();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_12688C(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t static GridItemMetadata.author(title:titleLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[3] = &type metadata for GridItemMetadataTitleWithSubtitle;
  v10[4] = sub_2004C();
  v8 = swift_allocObject();
  v10[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = a3;
  v8[7] = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;

  result = sub_200E0(v10, a4);
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_3B7A8()
{

  return swift_deallocObject();
}

uint64_t ListItemAccessoryBuyButton.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;

  return sub_F7CC(a1, a2 + 16);
}

uint64_t ListItemAccessoryBuyButton.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  sub_30CC(v1 + 16, a1 + 88);
  *a1 = swift_getKeyPath();
  *(a1 + 66) = 0;
  result = swift_getKeyPath();
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  return result;
}

void *sub_3B8B4@<X0>(_BYTE *a1@<X8>)
{
  sub_3BB24();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_3B904@<X0>(_BYTE *a1@<X8>)
{
  sub_3BB24();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

__n128 sub_3BA0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_3BA28(uint64_t a1, int a2)
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

uint64_t sub_3BA70(uint64_t result, int a2, int a3)
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

unint64_t sub_3BAD0()
{
  result = qword_317BE0;
  if (!qword_317BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BE0);
  }

  return result;
}

unint64_t sub_3BB24()
{
  result = qword_317BE8;
  if (!qword_317BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BE8);
  }

  return result;
}

uint64_t sub_3BB78@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemThumbnailView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_3F2D8(v9, a1);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3BD50()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ListItemThumbnailView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

__n128 ListItemThumbnailView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListItemThumbnailView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  return result;
}

uint64_t type metadata accessor for ListItemThumbnailView(uint64_t a1)
{
  result = qword_317C58;
  if (!qword_317C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemThumbnailView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_261D30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2EF0(&qword_317BF0, &qword_26A358);
  return sub_3BFEC(v2, a2 + *(v4 + 44));
}

uint64_t sub_3BFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v301 = a2;
  v302 = sub_2EF0(&qword_317CB0, &qword_26A3E0);
  __chkstk_darwin(v302);
  v4 = &v250 - v3;
  v289 = sub_2EF0(&qword_317CB8, &qword_26A3E8);
  __chkstk_darwin(v289);
  v290 = &v250 - v5;
  v298 = sub_2EF0(&qword_317CC0, &qword_26A3F0);
  __chkstk_darwin(v298);
  v291 = &v250 - v6;
  v288 = sub_2EF0(&qword_317CC8, &qword_26A3F8);
  __chkstk_darwin(v288);
  v274 = &v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v275 = &v250 - v9;
  v281 = sub_2EF0(&qword_317CD0, &qword_26A400);
  __chkstk_darwin(v281);
  v265 = &v250 - v10;
  v263 = sub_2617E0();
  __chkstk_darwin(v263);
  v264 = (&v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = sub_2EF0(&qword_317CD8, &qword_26A408);
  __chkstk_darwin(v276);
  v266 = &v250 - v12;
  v277 = sub_2EF0(&qword_317CE0, &qword_26A410);
  __chkstk_darwin(v277);
  v279 = &v250 - v13;
  v267 = sub_2EF0(&qword_317CE8, &qword_26A418);
  __chkstk_darwin(v267);
  v268 = &v250 - v14;
  v278 = sub_2EF0(&qword_317CF0, &qword_26A420);
  __chkstk_darwin(v278);
  v269 = &v250 - v15;
  v300 = sub_2EF0(&qword_317CF8, &qword_26A428);
  __chkstk_darwin(v300);
  v259 = &v250 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v272 = &v250 - v18;
  __chkstk_darwin(v19);
  v260 = &v250 - v20;
  v292 = sub_2EF0(&qword_317D00, &qword_26A430);
  __chkstk_darwin(v292);
  v273 = &v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v261 = &v250 - v23;
  __chkstk_darwin(v24);
  v262 = &v250 - v25;
  v287 = sub_2EF0(&qword_317D08, &qword_26A438);
  __chkstk_darwin(v287);
  v280 = &v250 - v26;
  v295 = sub_2EF0(&qword_317D10, &qword_26A440);
  __chkstk_darwin(v295);
  v297 = &v250 - v27;
  v283 = sub_2EF0(&qword_317D18, &qword_26A448);
  __chkstk_darwin(v283);
  v286 = &v250 - v28;
  v296 = sub_2EF0(&qword_317D20, &qword_26A450);
  __chkstk_darwin(v296);
  v284 = &v250 - v29;
  v285 = sub_2EF0(&qword_317D28, &qword_26A458);
  __chkstk_darwin(v285);
  v257 = &v250 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v258 = &v250 - v32;
  v33 = sub_2EF0(&qword_317D30, &qword_26A460);
  __chkstk_darwin(v33);
  v299 = &v250 - v34;
  v294 = sub_262730();
  v304 = *(v294 - 8);
  __chkstk_darwin(v294);
  v36 = &v250 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v37 - 8);
  v39 = (&v250 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for CoverView(0);
  __chkstk_darwin(v40);
  v42 = &v250 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2EF0(&qword_317D38, &qword_26A468);
  __chkstk_darwin(v43 - 8);
  v303 = &v250 - v44;
  sub_3E840(a1, v329);
  v328 = v330;
  v326 = v329[2];
  v327 = v329[3];
  v325[0] = v329[0];
  v325[1] = v329[1];
  if ((v330 & 0x100) != 0)
  {
    *v4 = 0;
    v4[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_3E89C();
    sub_261F80();
    v45 = v325;
  }

  else
  {
    v255 = v33;
    v256 = v4;
    v46 = *(&v326 + 1);
    v47 = v327;
    v48 = *(&v327 + 1);
    v49 = v328;
    sub_F7CC(v325, v324);
    v250 = v40;
    v50 = sub_3BD50() | (v49 == 0xFF);
    v51 = (v50 & 1) == 0;
    if (v50)
    {
      v52 = v46;
    }

    else
    {
      v52 = v48;
    }

    v252 = v52;
    if (v51)
    {
      v53 = v49;
    }

    else
    {
      v53 = v47;
    }

    v251 = v53;
    sub_3BB78(v39);
    sub_3BD50();
    ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
    v55 = v54;
    v57 = v56;
    v58 = v304;
    v59 = *(v304 + 104);
    v270 = enum case for Font.TextStyle.body(_:);
    v60 = v294;
    v271 = v304 + 104;
    v282 = v59;
    (v59)(v36);
    v61 = SizeConstants.scaledValue(_:relativeTo:)(v36, v55, v57);
    v63 = v62;
    v65 = *(v58 + 8);
    v64 = v58 + 8;
    v254 = v36;
    v293 = v65;
    v65(v36, v60, v61);
    v253 = v39;
    sub_3F21C(v39, type metadata accessor for SizeConstants);
    sub_30CC(v324, &v316);
    CoverViewModel.CoverImageInfo.init(assetInfo:)(&v316, v314);
    *(&v315 + 1) = v63;
    sub_230A8(v314);
    v320 = v314[4];
    v321 = v314[5];
    v322 = v314[6];
    v323 = v315;
    v316 = v314[0];
    v317 = v314[1];
    v318 = v314[2];
    v319 = v314[3];
    *v42 = swift_getKeyPath();
    v42[40] = 0;
    *(v42 + 6) = swift_getKeyPath();
    v42[56] = 0;
    v66 = v250;
    v67 = v250[6];
    *&v42[v67] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v68 = v66[7];
    *&v42[v68] = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v69 = &v42[v66[8]];
    type metadata accessor for ProfileRestrictions(0);
    sub_3F170(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v69 = sub_261900();
    v69[1] = v70;
    v71 = &v42[v66[9]];
    LOBYTE(v308) = 1;
    sub_2631D0();
    v72 = *(&v340 + 1);
    *v71 = v340;
    *(v71 + 1) = v72;
    v73 = &v42[v66[10]];
    v74 = v321;
    *(v73 + 4) = v320;
    *(v73 + 5) = v74;
    v75 = v323;
    *(v73 + 6) = v322;
    *(v73 + 7) = v75;
    v76 = v317;
    *v73 = v316;
    *(v73 + 1) = v76;
    v77 = v319;
    *(v73 + 2) = v318;
    *(v73 + 3) = v77;
    v42[v66[11]] = 1;
    sub_3F170(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
    v78 = v303;
    sub_262C60();
    sub_3F21C(v42, type metadata accessor for CoverView);
    v79 = v60;
    if (v251 < 2u)
    {
      v304 = v64;
      if (v252)
      {
        v108 = v60;
        v109 = v282;
        v110 = v270;
        if (v252 == 1)
        {
          v111 = v253;
          sub_3BB78(v253);
          sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
          v113 = v112;
          v115 = v114;
          v116 = v254;
          v109(v254, v110, v60);
          v117 = SizeConstants.scaledValue(_:relativeTo:)(v116, v113, v115);
          v118 = v60;
          v119 = v293;
          (v293)(v116, v118);
          sub_3F21C(v111, type metadata accessor for SizeConstants);
          v291 = *&v117;
          sub_3BB78(v111);
          sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
          v121 = v120;
          v123 = v122;
          v282(v116, v110, v108);
          v124 = SizeConstants.scaledValue(_:relativeTo:)(v116, v121, v123);
          v119(v116, v108, v124);
          sub_3F21C(v111, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v125 = v266;
          sub_8198(v303, v266, &qword_317D38, &qword_26A468);
          v126 = (v125 + *(v300 + 36));
          v127 = v341;
          *v126 = v340;
          v126[1] = v127;
          v126[2] = v342;
          v128 = sub_3E2E0();
          v129 = (v125 + *(sub_2EF0(&qword_317D98, &unk_26A470) + 36));
          v130 = v263;
          v131 = *(v263 + 20);
          v132 = enum case for RoundedCornerStyle.continuous(_:);
          v133 = sub_261DD0();
          v134 = *(*(v133 - 8) + 104);
          v134(v129 + v131, v132, v133);
          *v129 = v128;
          v129[1] = v128;
          *(v129 + *(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)) = 256;
          v304 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v300 = v135;
          v136 = v125 + *(v276 + 36);
          v137 = sub_3E2E0();
          v138 = v264;
          v134(v264 + *(v130 + 20), v132, v133);
          *v138 = v137;
          v138[1] = v137;
          _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
          v139 = sub_263000();

          sub_261240();
          sub_3F1B8(v138, v136);
          v140 = *&v308 * 0.5;
          v141 = v136 + *(sub_2EF0(&qword_317E10, &qword_26A558) + 68);
          sub_3F1B8(v138, v141);
          *(v141 + *(sub_2617D0() + 20)) = v140;
          v142 = v141 + *(sub_2EF0(&qword_317E18, &qword_26A560) + 36);
          v143 = v309;
          *v142 = v308;
          *(v142 + 16) = v143;
          *(v142 + 32) = v310;
          v144 = sub_2EF0(&qword_317E20, &qword_26A568);
          *(v141 + *(v144 + 52)) = v139;
          *(v141 + *(v144 + 56)) = 256;
          v145 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v147 = v146;
          sub_3F21C(v138, &type metadata accessor for RoundedRectangle);
          v148 = (v141 + *(sub_2EF0(&qword_317E28, &unk_26A570) + 36));
          *v148 = v145;
          v148[1] = v147;
          v149 = (v136 + *(sub_2EF0(&qword_317DB8, &qword_26A480) + 36));
          v150 = v300;
          *v149 = v304;
          v149[1] = v150;
          v151 = &qword_317CD8;
          v152 = &qword_26A408;
          v153 = v125;
          sub_8198(v125, v268, &qword_317CD8, &qword_26A408);
          swift_storeEnumTagMultiPayload();
          sub_3EBD8();
          sub_3ECFC();
          v154 = v269;
          sub_261F80();
          sub_8198(v154, v279, &qword_317CF0, &qword_26A420);
          swift_storeEnumTagMultiPayload();
          sub_3EB4C();
          sub_3EE8C();
          v155 = v280;
          sub_261F80();
          sub_8E80(v154, &qword_317CF0, &qword_26A420);
          v156 = v153;
        }

        else
        {
          v202 = v253;
          sub_3BB78(v253);
          sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
          v204 = v203;
          v206 = v205;
          v207 = v254;
          v109(v254, v110, v60);
          v208 = SizeConstants.scaledValue(_:relativeTo:)(v207, v204, v206);
          v209 = v60;
          v210 = v293;
          (v293)(v207, v209);
          sub_3F21C(v202, type metadata accessor for SizeConstants);
          v292 = *&v208;
          sub_3BB78(v202);
          sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
          v212 = v211;
          v214 = v213;
          v282(v207, v110, v108);
          v215 = SizeConstants.scaledValue(_:relativeTo:)(v207, v212, v214);
          v210(v207, v108, v215);
          sub_3F21C(v202, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v216 = v265;
          sub_8198(v303, v265, &qword_317D38, &qword_26A468);
          v217 = (v216 + *(v300 + 36));
          v218 = v332;
          *v217 = v331;
          v217[1] = v218;
          v217[2] = v333;
          *(v216 + *(sub_2EF0(&qword_317DD0, &qword_26A488) + 36)) = 256;
          v219 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v221 = v220;
          _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
          v222 = sub_263000();

          sub_261240();
          v223 = v334;
          v224 = v335;
          LODWORD(v202) = v336;
          v225 = v337;
          v226 = v338;
          v227 = v339;
          v228 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          *&v308 = v223 * 0.5;
          *(&v308 + 1) = v223;
          *&v309 = __PAIR64__(v202, v224);
          *(&v309 + 1) = v225;
          *&v310 = v226;
          *(&v310 + 1) = v227;
          *&v311 = v222;
          WORD4(v311) = 256;
          HIWORD(v311) = v307;
          v229 = v306;
          *(&v311 + 10) = v306;
          *&v312 = v228;
          *(&v312 + 1) = v230;
          *&v313 = v219;
          *(&v313 + 1) = v221;
          v231 = (v216 + *(v281 + 36));
          v232 = v311;
          v231[2] = v310;
          v231[3] = v232;
          v233 = v313;
          v231[4] = v312;
          v231[5] = v233;
          v234 = v309;
          *v231 = v308;
          v231[1] = v234;
          *&v340 = v223 * 0.5;
          *(&v340 + 1) = v223;
          *&v341 = __PAIR64__(v202, v224);
          *(&v341 + 1) = v225;
          *&v342 = v226;
          *(&v342 + 1) = v227;
          *&v343 = v222;
          WORD4(v343) = 256;
          HIWORD(v343) = v307;
          *(&v343 + 10) = v229;
          *&v344 = v228;
          *(&v344 + 1) = v230;
          *&v345 = v219;
          *(&v345 + 1) = v221;
          sub_8198(&v308, &v305, &qword_317DF0, &qword_26A498);
          sub_8E80(&v340, &qword_317DF0, &qword_26A498);
          v151 = &qword_317CD0;
          v152 = &qword_26A400;
          sub_8198(v216, v279, &qword_317CD0, &qword_26A400);
          swift_storeEnumTagMultiPayload();
          sub_3EB4C();
          sub_3EE8C();
          v155 = v280;
          sub_261F80();
          v156 = v216;
        }

        sub_8E80(v156, v151, v152);
      }

      else
      {
        v177 = v253;
        sub_3BB78(v253);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        v179 = v178;
        v181 = v180;
        v182 = v254;
        v183 = v270;
        v184 = v60;
        v185 = v282;
        v282(v254, v270, v184);
        SizeConstants.scaledValue(_:relativeTo:)(v182, v179, v181);
        (v293)(v182, v79);
        sub_3F21C(v177, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v186 = v78;
        v187 = v260;
        sub_8198(v186, v260, &qword_317D38, &qword_26A468);
        v188 = (v187 + *(v300 + 36));
        v189 = v309;
        *v188 = v308;
        v188[1] = v189;
        v188[2] = v310;
        sub_3BB78(v177);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        v191 = v190;
        v193 = v192;
        v185(v182, v183, v79);
        v194 = SizeConstants.scaledValue(_:relativeTo:)(v182, v191, v193);
        v293(v182, v79, v194);
        sub_3F21C(v177, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_261830();
        v195 = v261;
        sub_22148(v187, v261, &qword_317CF8, &qword_26A428);
        v196 = (v195 + *(v292 + 36));
        v197 = v345;
        v196[4] = v344;
        v196[5] = v197;
        v196[6] = v346;
        v198 = v341;
        *v196 = v340;
        v196[1] = v198;
        v199 = v343;
        v196[2] = v342;
        v196[3] = v199;
        v200 = v262;
        sub_22148(v195, v262, &qword_317D00, &qword_26A430);
        sub_8198(v200, v268, &qword_317D00, &qword_26A430);
        swift_storeEnumTagMultiPayload();
        sub_3EBD8();
        sub_3ECFC();
        v201 = v269;
        sub_261F80();
        sub_8198(v201, v279, &qword_317CF0, &qword_26A420);
        swift_storeEnumTagMultiPayload();
        sub_3EB4C();
        sub_3EE8C();
        v155 = v280;
        sub_261F80();
        sub_8E80(v201, &qword_317CF0, &qword_26A420);
        sub_8E80(v200, &qword_317D00, &qword_26A430);
      }

      v235 = v256;
      v106 = v299;
      sub_8198(v155, v286, &qword_317D08, &qword_26A438);
      swift_storeEnumTagMultiPayload();
      sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
      sub_3EAC0();
      v236 = v155;
      v237 = v284;
      sub_261F80();
      sub_8198(v237, v297, &qword_317D20, &qword_26A450);
      swift_storeEnumTagMultiPayload();
      sub_3E928();
      sub_3F01C();
      sub_261F80();
      sub_8E80(v237, &qword_317D20, &qword_26A450);
      sub_8E80(v236, &qword_317D08, &qword_26A438);
      v107 = v303;
      v238 = v235;
    }

    else
    {
      v80 = v252;
      if (v251 - 2 >= 2)
      {
        v157 = v270;
        v158 = v253;
        sub_3BB78(v253);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        v160 = v159;
        v162 = v161;
        v163 = v254;
        v282(v254, v157, v60);
        SizeConstants.scaledValue(_:relativeTo:)(v163, v160, v162);
        (v293)(v163, v60);
        sub_3F21C(v158, type metadata accessor for SizeConstants);
        sub_3BB78(v158);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        if (v80)
        {
          v166 = v164;
          v167 = v165;
          v282(v163, v157, v60);
          v168 = SizeConstants.scaledValue(_:relativeTo:)(v163, v166, v167);
          v293(v163, v60, v168);
          sub_3F21C(v158, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v169 = v303;
          v170 = v259;
          sub_8198(v303, v259, &qword_317D38, &qword_26A468);
          v171 = (v170 + *(v300 + 36));
          v172 = v341;
          *v171 = v340;
          v171[1] = v172;
          v171[2] = v342;
          v173 = &qword_26A428;
          sub_8198(v170, v290, &qword_317CF8, &qword_26A428);
          swift_storeEnumTagMultiPayload();
          sub_3F0C8();
          sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
          v174 = v291;
          sub_261F80();
          sub_8198(v174, v297, &qword_317CC0, &qword_26A3F0);
          swift_storeEnumTagMultiPayload();
          sub_3E928();
          sub_3F01C();
          v106 = v299;
          v107 = v169;
          sub_261F80();
          sub_8E80(v174, &qword_317CC0, &qword_26A3F0);
          v175 = v170;
          v176 = &qword_317CF8;
        }

        else
        {
          v239 = v164;
          v240 = v165;
          v282(v163, v157, v60);
          v241 = SizeConstants.scaledValue(_:relativeTo:)(v163, v239, v240);
          v293(v163, v60, v241);
          sub_3F21C(v158, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_261830();
          v107 = v303;
          v242 = v257;
          sub_8198(v303, v257, &qword_317D38, &qword_26A468);
          v243 = (v242 + *(v285 + 36));
          v244 = v345;
          v243[4] = v344;
          v243[5] = v244;
          v243[6] = v346;
          v245 = v341;
          *v243 = v340;
          v243[1] = v245;
          v246 = v343;
          v243[2] = v342;
          v243[3] = v246;
          v173 = &qword_26A458;
          v247 = v258;
          sub_22148(v242, v258, &qword_317D28, &qword_26A458);
          sub_8198(v247, v286, &qword_317D28, &qword_26A458);
          swift_storeEnumTagMultiPayload();
          sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
          sub_3EAC0();
          v248 = v284;
          sub_261F80();
          sub_8198(v248, v297, &qword_317D20, &qword_26A450);
          swift_storeEnumTagMultiPayload();
          sub_3E928();
          sub_3F01C();
          v106 = v299;
          sub_261F80();
          sub_8E80(v248, &qword_317D20, &qword_26A450);
          v175 = v247;
          v176 = &qword_317D28;
        }

        sub_8E80(v175, v176, v173);
      }

      else
      {
        v304 = v64;
        v81 = v253;
        sub_3BB78(v253);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        v83 = v82;
        v85 = v84;
        v86 = v254;
        v87 = v282;
        v282(v254, v270, v60);
        SizeConstants.scaledValue(_:relativeTo:)(v86, v83, v85);
        (v293)(v86, v60);
        sub_3F21C(v81, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v88 = v272;
        sub_8198(v78, v272, &qword_317D38, &qword_26A468);
        v89 = (v88 + *(v300 + 36));
        v90 = v309;
        *v89 = v308;
        v89[1] = v90;
        v89[2] = v310;
        sub_3BB78(v81);
        sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
        v92 = v91;
        v94 = v93;
        v87(v86, v270, v79);
        v95 = SizeConstants.scaledValue(_:relativeTo:)(v86, v92, v94);
        v293(v86, v79, v95);
        sub_3F21C(v81, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_261830();
        v96 = v273;
        sub_22148(v88, v273, &qword_317CF8, &qword_26A428);
        v97 = (v96 + *(v292 + 36));
        v98 = v345;
        v97[4] = v344;
        v97[5] = v98;
        v97[6] = v346;
        v99 = v341;
        *v97 = v340;
        v97[1] = v99;
        v100 = v343;
        v97[2] = v342;
        v97[3] = v100;
        v101 = v96;
        v102 = v274;
        sub_22148(v101, v274, &qword_317D00, &qword_26A430);
        *(v102 + *(v288 + 36)) = 257;
        v103 = v102;
        v104 = v275;
        sub_22148(v103, v275, &qword_317CC8, &qword_26A3F8);
        sub_8198(v104, v290, &qword_317CC8, &qword_26A3F8);
        swift_storeEnumTagMultiPayload();
        sub_3F0C8();
        sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
        v105 = v291;
        sub_261F80();
        sub_8198(v105, v297, &qword_317CC0, &qword_26A3F0);
        swift_storeEnumTagMultiPayload();
        sub_3E928();
        sub_3F01C();
        v106 = v299;
        sub_261F80();
        sub_8E80(v105, &qword_317CC0, &qword_26A3F0);
        sub_8E80(v104, &qword_317CC8, &qword_26A3F8);
        v107 = v303;
      }

      v238 = v256;
    }

    sub_8198(v106, v238, &qword_317D30, &qword_26A460);
    swift_storeEnumTagMultiPayload();
    sub_3E89C();
    sub_261F80();
    sub_8E80(v106, &qword_317D30, &qword_26A460);
    sub_8E80(v107, &qword_317D38, &qword_26A468);
    v45 = v324;
  }

  return sub_3080(v45);
}

double sub_3E2E0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ListItemThumbnailView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v13[0];
  }

  sub_3F27C(v0, v13);
  if (v16)
  {
    goto LABEL_7;
  }

  v8 = v14;
  if (!(v6 & 1 | (v15 == -1)))
  {
    v8 = v15;
  }

  if (v8)
  {
LABEL_7:
    sub_3080(v13);
    return 6.0;
  }

  else
  {
    v10 = 7;
    if (v6 & 1 | (v15 == -1))
    {
      v10 = 5;
    }

    v11 = LOBYTE(v13[v10]);
    sub_3080(v13);
    result = 6.0;
    if (v11 == 1)
    {
      return 4.0;
    }
  }

  return result;
}

uint64_t sub_3E4BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isCompact.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E4EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isCompact.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 65);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3E614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 65) = -a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3E6C0(uint64_t a1)
{
  sub_3E754(319);
  if (v1 <= 0x3F)
  {
    sub_3E7AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3E754(uint64_t a1)
{
  if (!qword_317C68)
  {
    type metadata accessor for SizeConstants(255);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_317C68);
    }
  }
}

void sub_3E7AC()
{
  if (!qword_3167D0)
  {
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3167D0);
    }
  }
}

unint64_t sub_3E89C()
{
  result = qword_317D40;
  if (!qword_317D40)
  {
    sub_2F9C(&qword_317D30, &qword_26A460);
    sub_3E928();
    sub_3F01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D40);
  }

  return result;
}

unint64_t sub_3E928()
{
  result = qword_317D48;
  if (!qword_317D48)
  {
    sub_2F9C(&qword_317D20, &qword_26A450);
    sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
    sub_3EAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D48);
  }

  return result;
}

unint64_t sub_3E9D4()
{
  result = qword_317D58;
  if (!qword_317D58)
  {
    sub_2F9C(&qword_317D38, &qword_26A468);
    sub_3F170(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
    sub_3F170(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D58);
  }

  return result;
}

unint64_t sub_3EAC0()
{
  result = qword_317D68;
  if (!qword_317D68)
  {
    sub_2F9C(&qword_317D08, &qword_26A438);
    sub_3EB4C();
    sub_3EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D68);
  }

  return result;
}

unint64_t sub_3EB4C()
{
  result = qword_317D70;
  if (!qword_317D70)
  {
    sub_2F9C(&qword_317CF0, &qword_26A420);
    sub_3EBD8();
    sub_3ECFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D70);
  }

  return result;
}

unint64_t sub_3EBD8()
{
  result = qword_317D78;
  if (!qword_317D78)
  {
    sub_2F9C(&qword_317D00, &qword_26A430);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D78);
  }

  return result;
}

uint64_t sub_3EC84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    sub_3E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3ECFC()
{
  result = qword_317D88;
  if (!qword_317D88)
  {
    sub_2F9C(&qword_317CD8, &qword_26A408);
    sub_3EDB4();
    sub_8E38(&qword_317DB0, &qword_317DB8, &qword_26A480, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D88);
  }

  return result;
}

unint64_t sub_3EDB4()
{
  result = qword_317D90;
  if (!qword_317D90)
  {
    sub_2F9C(&qword_317D98, &unk_26A470);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D90);
  }

  return result;
}

unint64_t sub_3EE8C()
{
  result = qword_317DC0;
  if (!qword_317DC0)
  {
    sub_2F9C(&qword_317CD0, &qword_26A400);
    sub_3EF44();
    sub_8E38(&qword_317DE8, &qword_317DF0, &qword_26A498, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DC0);
  }

  return result;
}

unint64_t sub_3EF44()
{
  result = qword_317DC8;
  if (!qword_317DC8)
  {
    sub_2F9C(&qword_317DD0, &qword_26A488);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    sub_8E38(&qword_317DD8, &qword_317DE0, &qword_26A490, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DC8);
  }

  return result;
}

unint64_t sub_3F01C()
{
  result = qword_317DF8;
  if (!qword_317DF8)
  {
    sub_2F9C(&qword_317CC0, &qword_26A3F0);
    sub_3F0C8();
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DF8);
  }

  return result;
}

unint64_t sub_3F0C8()
{
  result = qword_317E00;
  if (!qword_317E00)
  {
    sub_2F9C(&qword_317CC8, &qword_26A3F8);
    sub_3EBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317E00);
  }

  return result;
}

uint64_t sub_3F170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3F1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2617E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F21C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3F2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static IntentKinds.table.getter()
{
  if (qword_3158E8 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_317E40, &qword_26A580);
  sub_260D20();
  return v1;
}

uint64_t sub_3F3C0()
{
  if (qword_3158F0 != -1)
  {
    swift_once();
  }

  v0 = qword_317E38;
  sub_2EF0(&qword_317ED8, &qword_26A6D8);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_317E30 = v1;
}

uint64_t sub_3F458()
{
  sub_2EF0(&qword_317EE0, &qword_26A6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000000002907C0;
  v1 = sub_2EF0(&qword_317EE8, &qword_26A6E8);
  v2 = sub_3F8B0();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_EED4(inited);
  swift_setDeallocating();
  result = sub_3F914(inited + 32);
  qword_317E38 = v3;
  return result;
}

uint64_t sub_3F518(uint64_t a1)
{
  sub_3F85C();
  v1 = sub_263CB0();
  sub_234008(v1);
  v3 = v2;

  return v3;
}

void static IntentKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_3158E8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_317E30;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_3F6D4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_3F6D4(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_E0F4(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

double static IntentKinds.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2638B0();
  static IntentKinds.register<A>(_:name:)(a1);

  return result;
}

unint64_t sub_3F7E0()
{
  result = qword_317E48[0];
  if (!qword_317E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_317E48);
  }

  return result;
}

unint64_t sub_3F85C()
{
  result = qword_317ED0;
  if (!qword_317ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317ED0);
  }

  return result;
}

unint64_t sub_3F8B0()
{
  result = qword_317EF0;
  if (!qword_317EF0)
  {
    sub_2F9C(&qword_317EE8, &qword_26A6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317EF0);
  }

  return result;
}

uint64_t sub_3F914(uint64_t a1)
{
  v2 = sub_2EF0(&qword_317EF8, &unk_26A6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _CodeAnyActionModel_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_3F990(a1, a2);
}

uint64_t sub_3F990(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _CodeAnyActionModel_OrNil.description.getter()
{
  sub_3FA0C(v0, &v3);
  if (v4)
  {
    sub_F7CC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_2EF0(&qword_316A30, &qword_2697B0);
    sub_264CC0();
    v1 = v3;
    sub_3080(v5);
  }

  else
  {
    sub_8E80(&v3, &qword_315D38, &unk_266E30);
    return 7104878;
  }

  return v1;
}

uint64_t _CodeAnyActionModel_OrNil.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v6);
  sub_3FC1C();
  sub_264A70();
  sub_3080(a1);
  if (v2)
  {
    return sub_3FC70(a2);
  }

  if (v8)
  {
    sub_30CC(v7, v9);
    sub_3FCA0(v7);
  }

  else
  {
    sub_8E80(v7, &qword_317F08, &qword_26A700);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  return sub_3F990(v9, a2);
}

unint64_t sub_3FC1C()
{
  result = qword_317F00;
  if (!qword_317F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F00);
  }

  return result;
}

uint64_t _CodeAnyActionModel_OrNil.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, v7);
  sub_3FC1C();
  sub_264A50();
  sub_3080(a1);
  if (v6)
  {
    sub_30CC(v5, v7);
    sub_3FCA0(v5);
  }

  else
  {
    sub_8E80(v5, &qword_317F08, &qword_26A700);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
  }

  return sub_3F990(v7, a2);
}

uint64_t sub_3FDC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3FDE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_3FE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t ListItemAccessoryMoreButton.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = a1;
  v24 = a2;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  sub_30CC(v4, a3 + v10[10]);
  v25 = 0x4034000000000000;
  v11 = enum case for Font.TextStyle.subheadline(_:);
  v12 = *(v7 + 104);
  v12(v9, enum case for Font.TextStyle.subheadline(_:), v6);
  sub_40130();
  sub_2612E0();
  v25 = 0x4000000000000000;
  v12(v9, v11, v6);
  sub_2612E0();
  v13 = v10[6];
  *(a3 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v14 = v10[7];
  *(a3 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v10[8];
  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = 0;
  *v15 = KeyPath;
  *(v15 + 66) = 0;
  v17 = (a3 + v10[9]);
  type metadata accessor for ProfileRestrictions(0);
  sub_40208(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v17 = sub_261900();
  v17[1] = v18;
  v19 = (a3 + v10[11]);
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  *(a3 + v10[12]) = 1;
}

unint64_t sub_40130()
{
  result = qword_317F10;
  if (!qword_317F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F10);
  }

  return result;
}

uint64_t sub_40208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ListItemMetadataFormatAndDescriptorBase.init<>(showFormat:assetInfo:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 66) = 0;
  *(a3 + 72) = v7;
  *(a3 + 80) = 0;
  *(a3 + 88) = v8;
  *(a3 + 96) = 0;
  *(a3 + 97) = a1;

  return sub_F7CC(a2, a3 + 104);
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.assetState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v20[15] = *(v1 + 63);
  v7 = v1[3];
  v19[2] = v1[2];
  *v20 = v7;
  v8 = v1[1];
  v19[0] = *v1;
  v19[1] = v8;
  if (v20[18])
  {
    v9 = v1[2];
    v10 = v1[3];
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
    *(a1 + 64) = *(v1 + 32);
    v12 = *v1;
    v11 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v11;
    v17[2] = v9;
    v18[0] = v10;
    *(v18 + 15) = *(v1 + 63);
    v17[0] = v12;
    v17[1] = v11;
    return sub_8198(v17, v16, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v19, &qword_317F40, &qword_26E9D0);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_40508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  sub_8198(v8, &v19 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_44974(v16, a4, a3);
  }

  sub_264900();
  v18 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_406D8(uint64_t a1, char a2)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

uint64_t sub_408A8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179B8, &unk_269D50);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_44904(v10, a1);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_40AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_8198(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_264900();
    v19 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_40D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_261C90();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v6, v15, a1, a2);
  if (v17 == 1)
  {
    v13 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v16;
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_40F18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, void *)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v8, v16, a1, a2);
  if (v17 == 1)
  {
    return a3(v16, a4);
  }

  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.isReachable.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void ListItemMetadataFormatAndDescriptorExternals.dispatchState.getter(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 88);
  if (*(v1 + 96) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 66) = 0;
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  result = swift_getKeyPath();
  *(a1 + 88) = result;
  *(a1 + 96) = 0;
  return result;
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3080(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 66) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  result = swift_getKeyPath();
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  return result;
}

uint64_t ListItemMetadataFormatAndDescriptorBase.content(localizer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a1;
  v88 = a3;
  v87 = sub_2EF0(&qword_317F50, &qword_26A9A8);
  __chkstk_darwin(v87);
  v86 = &v71 - v5;
  v6 = sub_2EF0(&qword_317F58, &qword_26A9B0);
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  v72 = sub_2EF0(&qword_317F60, &qword_26A9B8);
  __chkstk_darwin(v72);
  v73 = &v71 - v9;
  v84 = sub_2EF0(&qword_317F68, &unk_26A9C0);
  __chkstk_darwin(v84);
  v74 = &v71 - v10;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v79 = sub_260BD0();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v71 - v17;
  v82 = sub_2EF0(&qword_317F70, &qword_26A9D0);
  __chkstk_darwin(v82);
  v83 = (&v71 - v18);
  v19 = sub_2EF0(&qword_317F78, &qword_26A9D8);
  __chkstk_darwin(v19);
  v85 = &v71 - v20;
  v21 = *(a2 + 24);
  v89 = *(a2 + 16);
  v90 = v21;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  v100[0] = v96;
  v100[1] = v97;
  v100[2] = v98[0];
  v101 = v98[1];
  v102 = v99;
  if (!*(&v96 + 1))
  {
    v34 = sub_4291C();
    v35 = v80;
    (*(v80 + 16))(v86, v8, v6, v34);
    swift_storeEnumTagMultiPayload();
    sub_43800();
    *&v96 = &type metadata for Text;
    *(&v96 + 1) = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v35 + 8))(v8, v6);
  }

  v71 = v8;
  v76 = v19;
  v75 = v6;
  v23 = BYTE3(v101);
  sub_8E80(v100, &qword_317F48, &qword_26A9A0);
  if ((v23 & 1) == 0)
  {
    sub_4239C(a2, v13);
    v37 = v78;
    v38 = v79;
    if ((*(v78 + 48))(v13, 1, v79) != 1)
    {
      v45 = v77;
      (*(v37 + 32))(v77, v13, v38);
      (*(v37 + 16))(v15, v45, v38);
      sub_30CC(v81, &v96);
      v46 = sub_2627B0();
      v48 = v47;
      v50 = v49;
      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v51 = sub_2627E0();
      v53 = v52;
      v54 = v37;
      v56 = v55;
      v58 = v57;

      sub_39DBC(v46, v48, v50 & 1);

      v91 = v51;
      v92 = v53;
      v93 = v56 & 1;
      v94 = v58;
      v95 = 1;
      sub_43B58(v51, v53, v56 & 1);

      sub_261F80();
      v59 = v98[0];
      v60 = v97;
      v61 = v83;
      *v83 = v96;
      v61[1] = v60;
      *(v61 + 32) = v59;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_317FA0, &qword_26AA18);
      sub_4393C();
      sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
      v33 = v85;
      sub_261F80();
      sub_39DBC(v51, v53, v56 & 1);

      (*(v54 + 8))(v77, v79);
      goto LABEL_11;
    }

    sub_8E80(v13, &qword_316208, &qword_268BD0);
    sub_30CC(v3 + *(a2 + 40), &v96);
    AssetMetadataRatingInfo.init(assetInfo:)(&v96, &v91);
    v39 = v86;
    if (v93)
    {
      v40 = v80;
      v41 = v71;
    }

    else
    {
      v63 = v92;
      v64 = v91;
      if (qword_315930 != -1)
      {
        swift_once();
      }

      if (byte_31C408 != 1 || (v65 = [objc_opt_self() standardUserDefaults], v66 = sub_264420(), v67 = objc_msgSend(v65, "integerForKey:", v66), v65, v41 = v71, v66, v40 = v80, (v67 & 0x10) == 0))
      {
        sub_30CC(v81, v98);
        *&v96 = swift_getKeyPath();
        BYTE8(v96) = 0;
        *&v97 = v64;
        *(&v97 + 1) = v63;
        sub_43AA8(&v96, v73);
        swift_storeEnumTagMultiPayload();
        sub_439B8();
        v91 = &type metadata for Text;
        v92 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v68 = v74;
        sub_261F80();
        sub_8198(v68, v83, &qword_317F68, &unk_26A9C0);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_317FA0, &qword_26AA18);
        sub_4393C();
        sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
        v33 = v85;
        sub_261F80();
        sub_8E80(v68, &qword_317F68, &unk_26A9C0);
        sub_43B04(&v96);
LABEL_17:
        v69 = sub_2EF0(&qword_317F90, &qword_26AA10);
        (*(*(v69 - 8) + 56))(v33, 0, 1, v69);
        goto LABEL_19;
      }
    }

    if (!sub_42810(a2))
    {
      v70 = sub_2EF0(&qword_317F90, &qword_26AA10);
      v33 = v85;
      (*(*(v70 - 8) + 56))(v85, 1, 1, v70);
      goto LABEL_19;
    }

    v42 = sub_4291C();
    v43 = v75;
    (*(v40 + 16))(v73, v41, v75, v42);
    swift_storeEnumTagMultiPayload();
    sub_439B8();
    *&v96 = &type metadata for Text;
    *(&v96 + 1) = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v44 = v74;
    sub_261F80();
    sub_8198(v44, v83, &qword_317F68, &unk_26A9C0);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_317FA0, &qword_26AA18);
    sub_4393C();
    sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
    v33 = v85;
    sub_261F80();
    sub_8E80(v44, &qword_317F68, &unk_26A9C0);
    (*(v40 + 8))(v71, v43);
    goto LABEL_17;
  }

  v24 = sub_43B68(v81);
  v26 = v25;
  v91 = v24;
  v92 = v25;
  v28 = v27 & 1;
  v93 = v27 & 1;
  v94 = v29;
  v95 = 0;
  sub_43B58(v24, v25, v27 & 1);

  sub_261F80();
  v30 = v98[0];
  v31 = v97;
  v32 = v83;
  *v83 = v96;
  v32[1] = v31;
  *(v32 + 32) = v30;
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_317FA0, &qword_26AA18);
  sub_4393C();
  sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
  v33 = v85;
  sub_261F80();
  sub_39DBC(v24, v26, v28);

LABEL_11:
  v62 = sub_2EF0(&qword_317F90, &qword_26AA10);
  (*(*(v62 - 8) + 56))(v33, 0, 1, v62);
  v39 = v86;
LABEL_19:
  sub_8198(v33, v39, &qword_317F78, &qword_26A9D8);
  swift_storeEnumTagMultiPayload();
  sub_43800();
  *&v96 = &type metadata for Text;
  *(&v96 + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_261F80();
  return sub_8E80(v33, &qword_317F78, &qword_26A9D8);
}

uint64_t sub_4239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_263D20();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264010();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263FA0();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  v35 = v30;
  v36 = v31;
  v33 = v28;
  v34 = v29;
  v37 = v32;
  if (!*(&v28 + 1))
  {
    goto LABEL_4;
  }

  v14 = *(&v35 + 1);
  v15 = v36;
  v16 = v34;
  sub_8E80(&v33, &qword_317F48, &qword_26A9A0);
  if (!v16)
  {
    if (v14 >= 0.01)
    {
      isa = sub_264780().super.super.isa;
      v20 = v24;
      (*(v24 + 104))(v5, enum case for LocalizerContext.standalone(_:), v3);
      v18 = v26;
      sub_260B50();

      (*(v20 + 8))(v5, v3);
      goto LABEL_8;
    }

LABEL_6:
    sub_263F90();
    (*(v7 + 104))(v9, enum case for LocalizerLookupStrategy.default(_:), v6);
    v18 = v26;
    sub_260B80();
    (*(v7 + 8))(v9, v6);
    (*(v25 + 8))(v12, v10);
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if (v15)
  {
    goto LABEL_6;
  }

LABEL_4:
  v17 = 1;
  v18 = v26;
LABEL_9:
  v21 = sub_260BD0();
  return (*(*(v21 - 8) + 56))(v18, v17, 1, v21);
}

BOOL sub_42810(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  if (v6 != 1)
  {
    return 0;
  }

  __chkstk_darwin(v2);
  v3 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v3);

  return v5 == 0;
}

double sub_4291C()
{
  v0 = sub_2617C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  v6[0] = sub_2645A0(v9, 12);
  v6[1] = v4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  sub_2617A0();
  sub_262E70();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_42A3C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_300170;
  v7._object = a2;
  v4 = sub_264D40(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_42A90(char a1)
{
  if (a1)
  {
    return 0x666E497465737361;
  }

  else
  {
    return 0x6D726F46776F6873;
  }
}

uint64_t sub_42AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42B4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_42A3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_42CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_42A90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_42D14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_42A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_42D44@<X0>(_BYTE *a2@<X8>)
{
  result = sub_448FC();
  *a2 = result;
  return result;
}

uint64_t sub_42D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_42DC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataFormatAndDescriptorBase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v55 = a1;
  v47 = a4;
  type metadata accessor for ListItemMetadataFormatAndDescriptorBase.CodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v49 = sub_264E20();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v54 = &v45 - v7;
  v51 = sub_264A60();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v45 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ListItemMetadataFormatAndDescriptorBase(0, a2, a3, v15);
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v17 = &v45 - v16;
  KeyPath = swift_getKeyPath();
  v65 = 0;
  v19 = swift_getKeyPath();
  LOBYTE(v56) = 0;
  v20 = swift_getKeyPath();
  v64 = 0;
  v58[0] = KeyPath;
  v59 = 0;
  v60 = v19;
  v61 = v56;
  v62 = v20;
  v63 = 0;
  v21 = swift_dynamicCast();
  v22 = *(v11 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v10, 1, 1, a2);
    (*(v8 + 8))(v10, v51);
    v29 = sub_264C10();
    swift_allocError();
    v31 = v30;
    v54 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v31 = a2;
    v32 = v55;
    sub_2E18(v55, v55[3]);
    sub_2650E0();
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_264BC0(97);
    v66._countAndFlagsBits = 0xD00000000000005FLL;
    v66._object = 0x8000000000290800;
    sub_264530(v66);
    v67._countAndFlagsBits = sub_265260();
    sub_264530(v67);

    sub_264BF0();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    return sub_3080(v32);
  }

  v22(v10, 0, 1, a2);
  (*(v11 + 32))(v14, v10, a2);
  (*(v11 + 16))(v17, v14, a2);
  v23 = a2;
  v24 = v55;
  sub_2E18(v55, v55[3]);
  v25 = v53;
  sub_265120();
  v26 = v24;
  v27 = v17;
  if (v25)
  {
    v28 = *(v11 + 8);
    v28(v14, a2);
LABEL_6:
    sub_3080(v26);
    return (v28)(v27, v23);
  }

  WitnessTable = a2;
  v53 = v14;
  sub_2EF0(&qword_317FB8, &unk_26AA50);
  LOBYTE(v56) = 1;
  sub_43FB8();
  v33 = v49;
  v34 = v54;
  sub_264DF0();
  v36 = v58[0];
  sub_260810();
  if (!v57)
  {
    sub_8E80(&v56, &qword_316D40, &unk_268FC0);
    v38 = sub_264C10();
    swift_allocError();
    v51 = v27;
    v40 = v39;
    sub_264D60();
    sub_4401C();
    swift_allocError();
    *v41 = 0;
    sub_264BF0();
    v42 = v40;
    v27 = v51;
    (*(*(v38 - 8) + 104))(v42, enum case for DecodingError.dataCorrupted(_:), v38);
    swift_willThrow();

    (*(v48 + 8))(v34, v49);
    v28 = *(v11 + 8);
    v23 = WitnessTable;
    v28(v53, WitnessTable);
    goto LABEL_6;
  }

  sub_F7CC(&v56, v58);
  v37 = v50;
  sub_30CC(v58, &v27[*(v50 + 40)]);
  LOBYTE(v56) = 0;
  v43 = sub_264DD0();

  sub_3080(v58);
  (*(v48 + 8))(v34, v33);
  (*(v11 + 8))(v53, WitnessTable);
  v27[*(v37 + 36)] = v43 & 1;
  v44 = v46;
  (*(v46 + 16))(v47, v27, v37);
  sub_3080(v26);
  return (*(v44 + 8))(v27, v37);
}

void *sub_436CC@<X0>(_BYTE *a1@<X8>)
{
  sub_449DC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

__n128 sub_43778@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 24))(v6, *(a1 + a2 - 16));
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_437F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_43800()
{
  result = qword_317F80;
  if (!qword_317F80)
  {
    sub_2F9C(&qword_317F78, &qword_26A9D8);
    sub_43884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F80);
  }

  return result;
}

unint64_t sub_43884()
{
  result = qword_317F88;
  if (!qword_317F88)
  {
    sub_2F9C(&qword_317F90, &qword_26AA10);
    sub_4393C();
    sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F88);
  }

  return result;
}

unint64_t sub_4393C()
{
  result = qword_317F98;
  if (!qword_317F98)
  {
    sub_2F9C(&qword_317FA0, &qword_26AA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F98);
  }

  return result;
}

unint64_t sub_439B8()
{
  result = qword_317FB0;
  if (!qword_317FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FB0);
  }

  return result;
}

void *sub_43A0C@<X0>(_BYTE *a1@<X8>)
{
  sub_449DC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_43B58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_43B68(uint64_t a1)
{
  v45 = a1;
  v43 = sub_264010();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v34[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_263FA0();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_260BD0();
  __chkstk_darwin(v4 - 8);
  v36 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2630B0();
  v6 = sub_262900();
  v8 = v7;
  v10 = v9;
  v46[0] = sub_262F40();
  v11 = sub_2627F0();
  v13 = v12;
  v15 = v14;
  sub_39DBC(v6, v8, v10 & 1);

  v16 = sub_262820();
  v38 = v17;
  v39 = v16;
  v35 = v18;
  v37 = v19;
  sub_39DBC(v11, v13, v15 & 1);

  sub_263F90();
  v21 = v40;
  v20 = v41;
  v22 = v43;
  (*(v41 + 104))(v40, enum case for LocalizerLookupStrategy.default(_:), v43);
  sub_260B80();
  (*(v20 + 8))(v21, v22);
  (*(v42 + 8))(v3, v44);
  sub_30CC(v45, v46);
  v23 = sub_2627B0();
  v25 = v24;
  LOBYTE(v20) = v26;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v27 = sub_2627E0();
  v29 = v28;
  LOBYTE(v8) = v30;

  sub_39DBC(v23, v25, v20 & 1);

  v31 = v38;
  v32 = v39;
  v45 = sub_262820();
  sub_39DBC(v27, v29, v8 & 1);

  sub_39DBC(v32, v31, v35 & 1);

  return v45;
}

unint64_t sub_43FB8()
{
  result = qword_317FC0;
  if (!qword_317FC0)
  {
    sub_2F9C(&qword_317FB8, &unk_26AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FC0);
  }

  return result;
}

unint64_t sub_4401C()
{
  result = qword_317FC8;
  if (!qword_317FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FC8);
  }

  return result;
}

unint64_t sub_44070(uint64_t a1)
{
  *(a1 + 8) = sub_440A0();
  result = sub_440F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_440A0()
{
  result = qword_317FD0;
  if (!qword_317FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FD0);
  }

  return result;
}

unint64_t sub_440F4()
{
  result = qword_317FD8;
  if (!qword_317FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FD8);
  }

  return result;
}

uint64_t sub_4418C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_441D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_44210(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4424C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_442DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_44308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
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

uint64_t sub_44350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 66) = -a2;
    }
  }

  return result;
}

uint64_t sub_443C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_44744();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_44458(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_4458C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 48;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, (v8 & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8) & 0xFFFFFFFFFFFFFFF8;
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
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_44744()
{
  result = qword_3180B0;
  if (!qword_3180B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3180B0);
  }

  return result;
}

uint64_t sub_447EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_44904(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3178F0, &qword_269C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_44974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_449DC()
{
  result = qword_318178;
  if (!qword_318178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318178);
  }

  return result;
}

uint64_t sub_44A30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

void *sub_44A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

uint64_t sub_44B00()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t SegmentedControl.init(model:containingShelfID:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  v15 = type metadata accessor for SegmentedControl(0, a5, a6, v14);
  *(a7 + v15[12]) = 0;
  v16 = v15[9];
  v18 = type metadata accessor for SegmentedControlViewModel(0, a5, a6, v17);
  result = (*(*(v18 - 8) + 32))(a7 + v16, a1, v18);
  v20 = (a7 + v15[10]);
  *v20 = a2;
  v20[1] = a3;
  *(a7 + v15[11]) = v13;
  return result;
}

uint64_t SegmentedControl.items.getter(uint64_t a1)
{
  sub_4AC84(a1);
}

uint64_t SegmentedControl.selection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = v3 + *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for SegmentedControlViewModel(0, v6, *(a1 + 24), a3);
  v8 = *(*(v6 - 8) + 16);
  v9 = v5 + *(v7 + 36);

  return v8(a2, v9, v6);
}

uint64_t SegmentedControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v94 = sub_261FF0();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = sub_2646F0();
  swift_getWitnessTable();
  v91 = v5;
  v6 = sub_260CB0();
  v95 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2F9C(&qword_318180, &qword_26AFE8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = v6;
  v113 = AssociatedTypeWitness;
  v114 = v8;
  v115 = WitnessTable;
  v116 = AssociatedConformanceWitness;
  sub_2633D0();
  v11 = sub_2F9C(&qword_318188, &qword_26AFF0);
  v12 = sub_2F9C(&qword_318190, &qword_26AFF8);
  v13 = sub_4AC90();
  v112 = v12;
  v113 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = v11;
  v113 = OpaqueTypeConformance2;
  v111 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v15 = sub_263260();
  v16 = swift_getWitnessTable();
  v89 = v15;
  v86 = v16;
  v17 = sub_261120();
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = &v74 - v18;
  v19 = swift_getWitnessTable();
  v112 = v17;
  v113 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v82 = &v74 - v21;
  v112 = v17;
  v113 = v19;
  v83 = v19;
  v106 = swift_getOpaqueTypeConformance2();
  v107 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeMetadata2;
  v113 = v106;
  v22 = swift_getOpaqueTypeMetadata2();
  v87 = *(v22 - 8);
  __chkstk_darwin(v22);
  v81 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v84 = &v74 - v25;
  v78 = sub_2EF0(&qword_3181B8, &qword_26B008);
  __chkstk_darwin(v78);
  v76 = &v74 - v26;
  v77 = sub_2EF0(&qword_3181C0, &qword_26B010);
  __chkstk_darwin(v77);
  v75 = (&v74 - v27);
  v74 = sub_264A60();
  v79 = *(v74 - 8);
  __chkstk_darwin(v74);
  v29 = &v74 - v28;
  v80 = *(v4 - 8);
  __chkstk_darwin(v30);
  v32 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2EF0(&qword_3181C8, &qword_26B018);
  __chkstk_darwin(v99);
  v34 = &v74 - v33;
  v96 = sub_2EF0(&qword_3181D0, &qword_26B020);
  __chkstk_darwin(v96);
  v97 = &v74 - v35;
  v36 = sub_2EF0(&qword_3181D8, &qword_26B028);
  __chkstk_darwin(v36);
  v98 = &v74 - v37;
  v100 = v38;
  v105 = v22;
  v39 = sub_261F90();
  v103 = *(v39 - 8);
  v104 = v39;
  __chkstk_darwin(v39);
  v102 = &v74 - v40;
  v41 = v101;

  v42 = v4;
  v43 = sub_2646D0();

  if (v43 == 1)
  {
    v50 = v79;
    v112 = *(v41 + *(a1 + 36));

    swift_getWitnessTable();
    sub_264880();
    v51 = v80;
    if ((*(v80 + 48))(v29, 1, v42) == 1)
    {
      (*(v50 + 8))(v29, v74);

      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010, &protocol conformance descriptor for HStack<A>);
      sub_261F80();
    }

    else
    {
      (*(v51 + 32))(v32, v29, v42);

      v65 = sub_261D30();
      v66 = v75;
      *v75 = v65;
      *(v66 + 8) = 0;
      *(v66 + 16) = 0;
      v67 = sub_2EF0(&qword_3181F8, &qword_26B030);
      sub_45C7C(v32, v42, v95, v66 + *(v67 + 44));
      sub_8198(v66, v76, &qword_3181C0, &qword_26B010);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010, &protocol conformance descriptor for HStack<A>);
      sub_261F80();
      sub_8E80(v66, &qword_3181C0, &qword_26B010);
      (*(v51 + 8))(v32, v42);
    }

    v46 = v107;
    v64 = v103;
    v63 = v104;
    sub_8198(v34, v97, &qword_3181C8, &qword_26B018);
    swift_storeEnumTagMultiPayload();
    sub_4AE34();
    v68 = v98;
    sub_261F80();
    v69 = sub_4ADA8();
    v47 = v106;
    v112 = v46;
    v113 = v106;
    v70 = swift_getOpaqueTypeConformance2();
    v49 = v102;
    sub_1D738(v68, v100, v105, v69, v70);
    sub_8E80(v68, &qword_3181D8, &qword_26B028);
    sub_8E80(v34, &qword_3181C8, &qword_26B018);
  }

  else
  {
    if (v43)
    {
      v52 = sub_2624C0();
      __chkstk_darwin(v52);
      v53 = v95;
      *(&v74 - 4) = v4;
      *(&v74 - 3) = v53;
      *(&v74 - 2) = v41;
      v54 = v88;
      sub_261130();
      v55 = v92;
      sub_261FE0();
      sub_2624C0();
      v56 = v82;
      sub_262C80();
      (*(v93 + 8))(v55, v94);
      (*(v90 + 8))(v54, v17);
      v57 = v81;
      v47 = v106;
      v46 = v107;
      sub_262C40();
      (*(v85 + 8))(v56, v46);
      v112 = v46;
      v113 = v47;
      v58 = swift_getOpaqueTypeConformance2();
      v59 = v84;
      v60 = v105;
      sub_1609C();
      v61 = *(v87 + 8);
      v61(v57, v60);
      sub_1609C();
      v62 = sub_4ADA8();
      v49 = v102;
      sub_1D830(v57, v100, v60, v62, v58);
      v61(v57, v60);
      v61(v59, v60);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_4AE34();
      v44 = v98;
      sub_261F80();
      v45 = sub_4ADA8();
      v47 = v106;
      v46 = v107;
      v112 = v107;
      v113 = v106;
      v48 = swift_getOpaqueTypeConformance2();
      v49 = v102;
      sub_1D738(v44, v100, v105, v45, v48);
      sub_8E80(v44, &qword_3181D8, &qword_26B028);
    }

    v64 = v103;
    v63 = v104;
  }

  v71 = sub_4ADA8();
  v112 = v46;
  v113 = v47;
  v72 = swift_getOpaqueTypeConformance2();
  v109 = v71;
  v110 = v72;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v64 + 8))(v49, v63);
}

uint64_t sub_45C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a2;
  v42 = a4;
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v40 = sub_262730();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260BD0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_2EF0(&qword_318460, &qword_26FBA0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = sub_2EF0(&qword_318468, &qword_26B280);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v39 - v24;
  v39 = a3;
  (*(a3 + 24))(v44, a3, v23);
  sub_260B10();
  v26 = v40;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.title3(_:), v40);
  v27 = sub_2625C0();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  sub_262650();
  v28 = sub_262680();
  sub_8E80(v7, &qword_318458, &unk_26B270);
  (*(v8 + 8))(v10, v26);
  KeyPath = swift_getKeyPath();
  v30 = &v15[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v32 = swift_getKeyPath();
  v33 = &v15[*(v13 + 44)];
  *v33 = v32;
  v33[1] = v31;
  if ((*(v39 + 56))(v44))
  {
    v34 = 0.3;
  }

  else
  {
    v34 = 1.0;
  }

  sub_22148(v15, v21, &qword_318460, &qword_26FBA0);
  *&v21[*(v17 + 44)] = v34;
  sub_22148(v21, v25, &qword_318468, &qword_26B280);
  v35 = v41;
  sub_8198(v25, v41, &qword_318468, &qword_26B280);
  v36 = v42;
  sub_8198(v35, v42, &qword_318468, &qword_26B280);
  v37 = v36 + *(sub_2EF0(&qword_318478, &qword_26B2C0) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_8E80(v25, &qword_318468, &qword_26B280);
  return sub_8E80(v35, &qword_318468, &qword_26B280);
}

uint64_t sub_460F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  sub_2646F0();
  swift_getWitnessTable();
  sub_260CB0();
  swift_getAssociatedTypeWitness();
  v20[5] = sub_2F9C(&qword_318180, &qword_26AFE8);
  v20[6] = swift_getWitnessTable();
  v20[7] = swift_getAssociatedConformanceWitness();
  sub_2633D0();
  v7 = sub_2F9C(&qword_318188, &qword_26AFF0);
  sub_2F9C(&qword_318190, &qword_26AFF8);
  sub_4AC90();
  v20[3] = v7;
  v20[4] = swift_getOpaqueTypeConformance2();
  v20[2] = swift_getOpaqueTypeConformance2();
  v20[0] = swift_getWitnessTable();
  v8 = sub_263260();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v16 = type metadata accessor for SegmentedControl(0, a2, a3, v15);
  v17 = *(v16 + 44);
  if (!*(a1 + v17) || *(a1 + v17) != 1)
  {
    v16 = sub_44B00();
  }

  __chkstk_darwin(v16);
  v20[-4] = a2;
  v20[-3] = a3;
  v20[-2] = a1;
  sub_261D30();
  sub_263250();
  swift_getWitnessTable();
  sub_1609C();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1609C();
  return (v18)(v14, v8);
}

uint64_t sub_46480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v37 = a1;
  v46 = a4;
  v33 = a3;
  v36 = type metadata accessor for SegmentedControl(0, a2, a3, a5);
  v6 = *(v36 - 8);
  v40 = *(v6 + 64);
  __chkstk_darwin(v36);
  v38 = &v33 - v7;
  sub_2646F0();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_260CB0();
  v44 = v8;
  __chkstk_darwin(v8);
  v35 = &v33 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_2F9C(&qword_318180, &qword_26AFE8);
  v43 = v11;
  v12 = swift_getWitnessTable();
  v42 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v8;
  v52 = AssociatedTypeWitness;
  v53 = v11;
  v54 = v12;
  v55 = AssociatedConformanceWitness;
  v13 = sub_2633D0();
  v45 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = &v33 - v17;
  v19 = v36;
  v18 = v37;
  v50 = *(v37 + *(v36 + 36));
  sub_264810();
  v20 = v33;
  v47 = a2;
  v48 = v33;
  WitnessTable = swift_getKeyPath();
  v21 = v38;
  (*(v6 + 16))(v38, v18, v19);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v20;
  (*(v6 + 32))(v23 + v22, v21, v19);
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = v20;
  v24[4] = sub_4C500;
  v24[5] = v23;
  v25 = sub_2F9C(&qword_318188, &qword_26AFF0);
  v26 = sub_2F9C(&qword_318190, &qword_26AFF8);
  v27 = sub_4AC90();
  v51 = v26;
  v52 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  sub_2633B0();
  v49 = v32;
  swift_getWitnessTable();
  v29 = v39;
  sub_1609C();
  v30 = *(v45 + 8);
  v30(v15, v13);
  sub_1609C();
  return (v30)(v29, v13);
}

uint64_t sub_46944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a3;
  v27 = a1;
  v30 = a5;
  v31 = sub_263F70();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_2EF0(&qword_318190, &qword_26AFF8);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v26 = sub_2EF0(&qword_318188, &qword_26AFF0);
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v24 - v16;
  v19 = type metadata accessor for SegmentedControl(0, a3, a4, v18);
  sub_46CA8(a2, v19, v14);
  *(swift_allocObject() + 16) = v27;
  v20 = sub_4AC90();
  sub_262940();

  sub_8E80(v14, &qword_318190, &qword_26AFF8);
  (*(a4 + 48))(v25, a4);
  v21 = v28;
  sub_263F60();
  v32 = v12;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_262910();
  (*(v29 + 8))(v21, v31);
  sub_8E80(v11, &qword_315D48, &qword_266E40);
  return (*(v15 + 8))(v17, v22);
}

uint64_t sub_46CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a3;
  v167 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v167);
  v166 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v164 = &v151 - v7;
  v185 = sub_261690();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v182 = &v151 - v10;
  v168 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v168);
  v165 = &v151 - v11;
  v181 = sub_262730();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for CustomPickerButtonStyle(0);
  __chkstk_darwin(v194);
  v178 = (&v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2604E0();
  __chkstk_darwin(v14 - 8);
  v186 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = a2;
  v16 = *(a2 - 8);
  a2 -= 8;
  v170 = v16;
  __chkstk_darwin(v17);
  v176 = v18;
  v171 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_263AF0();
  __chkstk_darwin(v19 - 8);
  v151 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 24);
  v22 = *(v21 - 8);
  __chkstk_darwin(v23);
  v172 = v24;
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 32);
  v27 = *(v26 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v207 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v203 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v151 - v30;
  v32 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v32 - 8);
  v34 = (&v151 - v33);
  v175 = sub_2EF0(&qword_318480, &qword_26B318);
  __chkstk_darwin(v175);
  v177 = &v151 - v35;
  v202 = sub_2EF0(&qword_318488, &qword_26B320);
  __chkstk_darwin(v202);
  v197 = &v151 - v36;
  v153 = sub_2EF0(&qword_318490, &qword_26B328);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v193 = &v151 - v37;
  v156 = sub_2EF0(&qword_318498, &qword_26B330);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v151 - v38;
  v163 = sub_2EF0(&qword_3184A0, &qword_26B338);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v158 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v39;
  __chkstk_darwin(v40);
  v187 = &v151 - v41;
  v161 = sub_2EF0(&qword_3181A8, &qword_26B000);
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v151 - v42;
  v43 = sub_2610B0();
  v44 = *(*(v43 - 8) + 56);
  v174 = v34;
  v44(v34, 1, 1, v43);
  v208 = a1;
  sub_264BD0();
  v45 = *(a2 + 44);
  v46 = v199;
  v47 = v199 + v45;
  v48 = v26;
  v192 = type metadata accessor for SegmentedControlViewModel(0, v21, v26, v49);
  v50 = *(v22 + 2);
  v51 = v47 + *(v192 + 36);
  v200 = v22 + 16;
  v201 = v50;
  v50(v25, v51, v21);
  v52 = v203;
  sub_264BD0();
  v173 = v22;
  v53 = *(v22 + 1);
  v191 = v22 + 8;
  v190 = v53;
  v53(v25, v21);
  v196 = v27;
  v198 = v21;
  v54 = v207;
  v55 = AssociatedTypeWitness;
  v189 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v47) = sub_264390();
  v56 = *(v54 + 8);
  v56(v52, v55);
  v195 = v31;
  v188 = v56;
  v56(v31, v55);
  v206 = v48;
  v207 = v54 + 8;
  if (v47)
  {
    *(&v210 + 1) = sub_263890();
    v211 = &protocol witness table for EmptyAction;
    sub_10934(&v209);
    sub_263AC0();
    sub_263880();
    v57 = v208;
  }

  else
  {
    v58 = v208;
    (*(v48 + 64))(&v209, v46 + *(v205 + 36), *(v46 + *(v205 + 40)), *(v46 + *(v205 + 40) + 8), v198, v48);
    v57 = v58;
  }

  v59 = v25;
  v60 = v198;
  v201(v25, v57, v198);
  v61 = v170;
  v62 = v171;
  v63 = v205;
  (*(v170 + 16))(v171, v46, v205);
  v64 = v173;
  v65 = (v173[80] + 32) & ~v173[80];
  v66 = (v172 + *(v61 + 80) + v65) & ~*(v61 + 80);
  v67 = swift_allocObject();
  v68 = v206;
  *(v67 + 16) = v60;
  *(v67 + 24) = v68;
  (*(v64 + 4))(v67 + v65, v25, v60);
  (*(v61 + 32))(v67 + v66, v62, v63);
  sub_2604C0();
  v69 = v177;
  sub_260420();
  v70 = v175;
  v71 = v69 + *(v175 + 36);
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v70[10];
  *(v69 + v72) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v73 = v69 + v70[11];
  *v73 = swift_getKeyPath();
  *(v73 + 40) = 0;
  v74 = (v69 + v70[12]);
  v75 = sub_2EF0(&qword_3184A8, &qword_26B3D8);
  v74[3] = v75;
  v74[4] = sub_8E38(&qword_3184B0, &qword_3184A8, &qword_26B3D8, &unk_268B6C);
  v76 = sub_10934(v74);
  sub_22148(v174, v76, &qword_316960, &unk_2689F0);
  v77 = (v76 + *(v75 + 36));
  *v77 = sub_4C7FC;
  v77[1] = v67;
  v78 = v69 + v70[13];
  v79 = v210;
  *v78 = v209;
  *(v78 + 16) = v79;
  *(v78 + 32) = v211;
  v80 = *(v206 + 56);
  v186 = (v206 + 56);
  v174 = v80;
  LOBYTE(v76) = (v80)(v60);
  KeyPath = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = v76 & 1;
  v83 = v197;
  sub_8198(v69, v197, &qword_318480, &qword_26B318);
  v84 = (v83 + *(v202 + 36));
  *v84 = KeyPath;
  v84[1] = sub_4C914;
  v84[2] = v82;
  sub_8E80(v69, &qword_318480, &qword_26B318);
  v85 = v205;
  v86 = v199;
  v201(v59, v199 + *(v205 + 36) + *(v192 + 36), v60);
  v87 = v195;
  sub_264BD0();
  v173 = v59;
  v190(v59, v60);
  v88 = v203;
  sub_264BD0();
  v89 = AssociatedTypeWitness;
  LODWORD(v177) = sub_264390();
  v90 = v88;
  v91 = v188;
  v188(v90, v89);
  v91(v87, v89);
  v176 = sub_263670();
  LODWORD(v175) = *(v86 + *(v85 + 44));
  v92 = swift_getKeyPath();
  v93 = v178;
  *v178 = v92;
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v94 = v194;
  v95 = *(v194 + 20);
  *(v93 + v95) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v96 = v93 + v94[6];
  *v96 = swift_getKeyPath();
  *(v96 + 8) = 0;
  v97 = v93 + v94[7];
  *v97 = swift_getKeyPath();
  *(v97 + 8) = 0;
  v98 = v93 + v94[8];
  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  *(v93 + v94[12]) = 0x3FF0000000000000;
  *&v209 = 0x4040000000000000;
  v99 = enum case for Font.TextStyle.body(_:);
  v100 = *(v180 + 104);
  v101 = v179;
  v102 = v181;
  v100(v179, enum case for Font.TextStyle.body(_:), v181);
  sub_40130();
  sub_2612E0();
  *&v209 = 0x4042000000000000;
  v100(v101, v99, v102);
  sub_2612E0();
  *(v93 + v94[9]) = v177 & 1;
  *(v93 + v94[10]) = v176;
  *(v93 + v94[11]) = v175;
  v103 = sub_4C960();
  v181 = sub_4CF70(&qword_3184D8, type metadata accessor for CustomPickerButtonStyle, &unk_26B188);
  v104 = v197;
  sub_262A60();
  sub_4CA44(v93, type metadata accessor for CustomPickerButtonStyle);
  sub_8E80(v104, &qword_318488, &qword_26B320);
  v105 = v184;
  v106 = *(v184 + 104);
  v107 = v182;
  v108 = v185;
  v106(v182, enum case for DynamicTypeSize.xSmall(_:), v185);
  v109 = v183;
  v106(v183, enum case for DynamicTypeSize.xxxLarge(_:), v108);
  sub_4CF70(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v111 = *(v105 + 32);
    v112 = v164;
    v111(v164, v107, v108);
    v113 = v167;
    v111((v112 + *(v167 + 48)), v109, v108);
    v114 = v108;
    v115 = v166;
    sub_8198(v112, v166, &qword_3174E0, &qword_26B310);
    v116 = *(v113 + 48);
    v117 = v165;
    v111(v165, v115, v114);
    v197 = v103;
    v118 = *(v105 + 8);
    v118(v115 + v116, v114);
    sub_22148(v112, v115, &qword_3174E0, &qword_26B310);
    v119 = *(v113 + 48);
    v120 = v168;
    v111((v117 + *(v168 + 36)), (v115 + v119), v114);
    v118(v115, v114);
    *&v209 = v202;
    *(&v209 + 1) = v194;
    *&v210 = v197;
    *(&v210 + 1) = v181;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v122 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v123 = v154;
    v124 = v153;
    v125 = v193;
    sub_262B70();
    sub_8E80(v117, &qword_3174E8, &qword_269970);
    v126 = (*(v152 + 8))(v125, v124);
    __chkstk_darwin(v126);
    v127 = v198;
    v128 = v206;
    sub_260B00();
    *&v209 = v124;
    *(&v209 + 1) = v120;
    *&v210 = OpaqueTypeConformance2;
    *(&v210 + 1) = v122;
    swift_getOpaqueTypeConformance2();
    sub_4CF70(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    v129 = v187;
    v130 = v156;
    sub_262D60();
    (*(v155 + 8))(v123, v130);
    v131 = v173;
    v201(v173, v199 + *(v205 + 36) + *(v192 + 36), v127);
    v132 = v195;
    sub_264BD0();
    v190(v131, v127);
    v133 = v203;
    sub_264BD0();
    v134 = AssociatedTypeWitness;
    LOBYTE(v115) = sub_264390();
    v135 = v133;
    v136 = v188;
    v188(v135, v134);
    v136(v132, v134);
    v137 = v128;
    v138 = v174;
    LOBYTE(v131) = v174(v127, v137);
    v139 = v162;
    v140 = v158;
    v141 = v129;
    v142 = v163;
    (*(v162 + 16))(v158, v141, v163);
    v143 = (*(v139 + 80) + 16) & ~*(v139 + 80);
    v144 = v143 + v157;
    v145 = swift_allocObject();
    (*(v139 + 32))(v145 + v143, v140, v142);
    v146 = (v145 + v144);
    *v146 = v115 & 1;
    v146[1] = (v131 & 1) == 0;
    sub_2EF0(&qword_3184E8, &qword_26B4E0);
    sub_260A70();
    sub_260A50();
    sub_4CBFC();
    sub_4CF70(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_4CF70(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    v147 = v159;
    sub_260A80();
    (*(v139 + 8))(v187, v142);
    LOBYTE(v145) = v138(v127, v206);
    v148 = UIAccessibilityTraitNotEnabled;
    v149 = v169;
    (*(v160 + 32))(v169, v147, v161);
    result = sub_2EF0(&qword_318190, &qword_26AFF8);
    v150 = v149 + *(result + 36);
    *v150 = v145 & 1;
    *(v150 + 8) = v148;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_484CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_261E60();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v9 = sub_2EF0(&qword_318528, &qword_26B4F0);
  return sub_48548(a2, a3, a4, a5 + *(v9 + 44));
}

uint64_t sub_48548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v52 = a1;
  v58 = a4;
  v6 = sub_2EF0(&qword_318530, &unk_26B4F8);
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v50 = (&v49 - v7);
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_2EF0(&qword_318538, &qword_26B508);
  __chkstk_darwin(v11 - 8);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v49 - v14;
  v15 = sub_260BD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v19 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v49 - v24;
  (*(a3 + 24))(a2, a3, v23);
  sub_260B10();
  v27 = type metadata accessor for SegmentedControl(0, a2, a3, v26);
  v28 = sub_48B14(v27);
  KeyPath = swift_getKeyPath();
  v30 = *(v20 + 44);
  v31 = v15;
  v32 = &v25[v30];
  *v32 = KeyPath;
  v32[1] = v28;
  (*(a3 + 32))(a2, a3);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_8E80(v10, &qword_316208, &qword_268BD0);
LABEL_6:
    v43 = v54;
    (*(v55 + 56))(v54, 1, 1, v56);
    goto LABEL_7;
  }

  v33 = v51;
  (*(v16 + 32))(v51, v10, v15);
  (*(a3 + 40))(a2, a3);
  if (!v34)
  {
    (*(v16 + 8))(v33, v15);
    goto LABEL_6;
  }

  v35 = sub_261D30();
  v36 = v50;
  *v50 = v35;
  *(v36 + 8) = 0x4008000000000000;
  *(v36 + 16) = 0;
  v37 = sub_2EF0(&qword_318548, &qword_26B518);
  sub_48D38(v33, v36 + *(v37 + 44));

  v38 = sub_2626F0();
  v39 = swift_getKeyPath();
  v40 = (v36 + *(sub_2EF0(&qword_318550, &qword_26B520) + 36));
  *v40 = v39;
  v40[1] = v38;
  v41 = sub_262140();
  v42 = v56;
  *(v36 + *(v56 + 36)) = v41;
  v43 = v54;
  sub_22148(v36, v54, &qword_318530, &unk_26B4F8);
  (*(v55 + 56))(v43, 0, 1, v42);
  (*(v16 + 8))(v33, v31);
LABEL_7:
  v44 = v53;
  sub_8198(v25, v53, &qword_318470, &qword_26FBB0);
  v45 = v57;
  sub_8198(v43, v57, &qword_318538, &qword_26B508);
  v46 = v58;
  sub_8198(v44, v58, &qword_318470, &qword_26FBB0);
  v47 = sub_2EF0(&qword_318540, &qword_26B510);
  sub_8198(v45, v46 + *(v47 + 48), &qword_318538, &qword_26B508);
  sub_8E80(v43, &qword_318538, &qword_26B508);
  sub_8E80(v25, &qword_318470, &qword_26FBB0);
  sub_8E80(v45, &qword_318538, &qword_26B508);
  return sub_8E80(v44, &qword_318470, &qword_26FBB0);
}

uint64_t sub_48B14(uint64_t a1)
{
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 104);
  if (*(v1 + *(a1 + 44)))
  {
    v11(v10, enum case for Font.TextStyle.footnote(_:), v6, v8);
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_262630();
  }

  else
  {
    v11(v10, enum case for Font.TextStyle.body(_:), v6, v8);
    v13 = sub_2625C0();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    sub_262650();
  }

  v14 = sub_262680();
  sub_8E80(v5, &qword_318458, &unk_26B270);
  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t sub_48D38@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = sub_260BD0();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318558, &qword_26B528);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_2EF0(&qword_318560, &unk_26B530);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v31 - v18);

  v20 = sub_2630B0();
  v21 = (v19 + *(v14 + 44));
  v22 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v23 = enum case for Image.Scale.small(_:);
  v24 = sub_2630F0();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v19 = v20;
  (*(v4 + 16))(v6, v33, v32);
  sub_260B10();
  KeyPath = swift_getKeyPath();
  v26 = &v12[*(v8 + 44)];
  *v26 = KeyPath;
  *(v26 + 1) = 1;
  v26[16] = 0;
  sub_8198(v19, v16, &qword_318560, &unk_26B530);
  v27 = v31;
  sub_8198(v12, v31, &qword_318558, &qword_26B528);
  v28 = v34;
  sub_8198(v16, v34, &qword_318560, &unk_26B530);
  v29 = sub_2EF0(&qword_318568, &qword_26B5A0);
  sub_8198(v27, v28 + *(v29 + 48), &qword_318558, &qword_26B528);
  sub_8E80(v12, &qword_318558, &qword_26B528);
  sub_8E80(v19, &qword_318560, &unk_26B530);
  sub_8E80(v27, &qword_318558, &qword_26B528);
  return sub_8E80(v16, &qword_318560, &unk_26B530);
}

uint64_t sub_49094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_260BD0();
  v6 = __chkstk_darwin(v5 - 8);
  (*(a3 + 24))(a2, a3, v6);
  return sub_260B10();
}

uint64_t sub_49148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v154 = a2;
  v5 = sub_261FA0();
  v152 = *(v5 - 8);
  v153 = v5;
  __chkstk_darwin(v5);
  v151 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2628A0();
  v142 = *(v7 - 8);
  v143 = v7;
  __chkstk_darwin(v7);
  v141 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v9 - 8);
  v137 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v11 - 8);
  v138 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261180();
  v159 = *(v13 - 8);
  __chkstk_darwin(v13);
  v127 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v158 = &v125 - v16;
  v17 = sub_261C90();
  v156 = *(v17 - 8);
  v157 = v17;
  __chkstk_darwin(v17);
  v155 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_262290();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_318350, &qword_26B1C0);
  __chkstk_darwin(v23);
  v25 = &v125 - v24;
  v128 = sub_2EF0(&qword_318358, &qword_26B1C8);
  __chkstk_darwin(v128);
  v160 = &v125 - v26;
  v161 = sub_2EF0(&qword_318360, &qword_26B1D0);
  __chkstk_darwin(v161);
  v162 = &v125 - v27;
  v28 = sub_2EF0(&qword_318368, &qword_26B1D8);
  v133 = *(v28 - 8);
  v134 = v28;
  __chkstk_darwin(v28);
  v130 = &v125 - v29;
  v129 = sub_2EF0(&qword_318370, &qword_26B1E0);
  __chkstk_darwin(v129);
  v132 = &v125 - v30;
  v131 = sub_2EF0(&qword_318378, &qword_26B1E8);
  __chkstk_darwin(v131);
  v136 = &v125 - v31;
  v135 = sub_2EF0(&qword_318380, &qword_26B1F0);
  __chkstk_darwin(v135);
  v140 = &v125 - v32;
  v139 = sub_2EF0(&qword_318388, &qword_26B1F8);
  __chkstk_darwin(v139);
  v144 = &v125 - v33;
  v145 = sub_2EF0(&qword_318390, &qword_26B200);
  __chkstk_darwin(v145);
  v146 = &v125 - v34;
  v35 = sub_2EF0(&qword_318398, &qword_26B208);
  v148 = *(v35 - 8);
  v149 = v35;
  __chkstk_darwin(v35);
  v147 = &v125 - v36;
  v150 = a1;
  sub_2622A0();
  v37 = type metadata accessor for CustomPickerButtonStyle(0);
  v126 = *(v37 + 44);
  sub_2EF0(&qword_318288, &unk_27F080);
  sub_261300();
  v163 = v37;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  (*(v20 + 32))(v25, v22, v19);
  v38 = &v25[*(v23 + 36)];
  v39 = v190;
  *v38 = v189;
  *(v38 + 1) = v39;
  *(v38 + 2) = v191;
  v40 = v3 + *(v37 + 32);
  v41 = *v40;
  if (*(v40 + 8) != 1)
  {

    sub_264900();
    v42 = sub_2624B0();
    sub_260D10();

    v43 = v155;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v41, 0);
    (*(v156 + 8))(v43, v157);
  }

  v44 = v138;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v45 = v160;
  sub_22148(v25, v160, &qword_318350, &qword_26B1C0);
  v46 = (v45 + *(v128 + 36));
  v47 = v192[1];
  *v46 = v192[0];
  v46[1] = v47;
  v48 = v192[6];
  v46[5] = v192[5];
  v46[6] = v48;
  v49 = v192[4];
  v46[3] = v192[3];
  v46[4] = v49;
  v46[2] = v192[2];
  v50 = *(v3 + v163[9]);
  if (v50)
  {
    v51 = v158;
    sub_40830(v158);
    v52 = v159;
    v53 = v127;
    (*(v159 + 104))(v127, enum case for ColorScheme.light(_:), v13);
    v54 = sub_261170();
    v55 = *(v52 + 8);
    v55(v53, v13);
    v55(v51, v13);
    if (v54)
    {
      v56 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v56 = sub_262F80();
    }
  }

  else
  {
    v56 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v57 = v56;
  KeyPath = swift_getKeyPath();
  v59 = v162;
  sub_22148(v160, v162, &qword_318358, &qword_26B1C8);
  v60 = (v59 + *(v161 + 36));
  *v60 = KeyPath;
  v60[1] = v57;
  if ((v50 & 1) == 0 && !*(v3 + v126))
  {
    v121 = v3 + v163[6];
    v122 = *v121;
    if (*(v121 + 8) != 1)
    {

      sub_264900();
      v123 = sub_2624B0();
      sub_260D10();

      v124 = v155;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v122, 0);
      (*(v156 + 8))(v124, v157);
    }
  }

  v160 = v3;
  sub_404B8(v44);
  v61 = v137;
  sub_4BD3C(v44, v137);
  v62 = v158;
  v63 = v159;
  (*(v159 + 104))(v158, enum case for ColorScheme.dark(_:), v13);
  sub_4CF70(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v64 = sub_264390();
  v65 = *(v63 + 8);
  v65(v62, v13);
  v65(v61, v13);
  if (v64)
  {
    _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    sub_262F80();
  }

  sub_4CA44(v44, type metadata accessor for ColorConstants);
  v66 = v141;
  sub_262890();
  sub_4BDA0();
  v67 = v130;
  v68 = v162;
  sub_262ED0();

  (*(v142 + 8))(v66, v143);
  sub_8E80(v68, &qword_318360, &qword_26B1D0);
  LOBYTE(v68) = sub_262560();
  sub_2610C0();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v132;
  (*(v133 + 32))(v132, v67, v134);
  v78 = v77 + *(v129 + 36);
  *v78 = v68;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  LOBYTE(v68) = sub_2624F0();
  sub_2610C0();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v136;
  sub_22148(v77, v136, &qword_318370, &qword_26B1E0);
  v88 = v87 + *(v131 + 36);
  *v88 = v68;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v91 = v90;
  v92 = v160;
  sub_4A328(v160, &v181);
  v169 = v182[1];
  v170 = v182[2];
  v171 = v182[3];
  v167 = v181;
  v168 = v182[0];
  *&v172 = v89;
  *(&v172 + 1) = v91;
  v93 = v140;
  sub_22148(v87, v140, &qword_318378, &qword_26B1E8);
  v94 = (v93 + *(v135 + 36));
  v95 = v170;
  v94[2] = v169;
  v94[3] = v95;
  v96 = v172;
  v94[4] = v171;
  v94[5] = v96;
  v97 = v168;
  *v94 = v167;
  v94[1] = v97;
  v173[2] = v182[1];
  v173[3] = v182[2];
  v173[4] = v182[3];
  v173[0] = v181;
  v173[1] = v182[0];
  v174 = v89;
  v175 = v91;
  sub_8198(&v167, &v184, &qword_3183D8, &qword_26B248);
  sub_8E80(v173, &qword_3183D8, &qword_26B248);
  v98 = sub_261D30();
  v166 = 1;
  sub_4A894(v92, &v184);
  v176 = v184;
  v177 = *v185;
  v178 = *&v185[16];
  v179 = *&v185[32];
  v180[0] = v184;
  v180[1] = *v185;
  v180[2] = *&v185[16];
  v180[3] = *&v185[32];
  sub_8198(&v176, &v181, &qword_3183E0, &qword_26B250);
  sub_8E80(v180, &qword_3183E0, &qword_26B250);
  *&v165[7] = v176;
  *&v165[23] = v177;
  *&v165[39] = v178;
  *&v165[55] = v179;
  LOBYTE(v66) = v166;
  v99 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v101 = v100;
  *(&v182[1] + 1) = *&v165[16];
  *(&v182[2] + 1) = *&v165[32];
  *(&v182[3] + 1) = *&v165[48];
  v181 = v98;
  LOBYTE(v182[0]) = v66;
  *(v182 + 1) = *v165;
  *&v182[4] = *&v165[63];
  *(&v182[4] + 1) = v99;
  v183 = v100;
  v102 = v93;
  v103 = v144;
  sub_22148(v102, v144, &qword_318380, &qword_26B1F0);
  v104 = v103 + *(v139 + 36);
  v105 = v182[4];
  *(v104 + 64) = v182[3];
  *(v104 + 80) = v105;
  v106 = v182[0];
  *v104 = v181;
  *(v104 + 16) = v106;
  v107 = v182[2];
  *(v104 + 32) = v182[1];
  *(v104 + 48) = v107;
  v108 = *&v165[16];
  *&v185[1] = *v165;
  *&v186[15] = *&v165[63];
  *v186 = *&v165[48];
  *&v185[33] = *&v165[32];
  *(v104 + 96) = v183;
  v184 = v98;
  v185[0] = v66;
  *&v185[17] = v108;
  v187 = v99;
  v188 = v101;
  sub_8198(&v181, v164, &qword_3183E8, &qword_26B258);
  sub_8E80(&v184, &qword_3183E8, &qword_26B258);
  v109 = v146;
  v110 = &v146[*(v145 + 36)];
  sub_2EF0(&qword_3183F0, &qword_26B260);
  sub_261870();
  *v110 = sub_4A5EC();
  v110[8] = 0;
  sub_22148(v103, v109, &qword_318388, &qword_26B1F8);
  v111 = v151;
  sub_2618C0();
  sub_4BFA0();
  sub_4CF70(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v112 = v147;
  v113 = v153;
  sub_262AA0();
  (*(v152 + 8))(v111, v113);
  sub_8E80(v109, &qword_318390, &qword_26B200);
  v114 = v92 + v163[7];
  v115 = *v114;
  if (*(v114 + 8) != 1)
  {

    sub_264900();
    v116 = sub_2624B0();
    sub_260D10();

    v117 = v155;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v115, 0);
    (*(v156 + 8))(v117, v157);
    LOBYTE(v115) = v164[0];
  }

  if (v115)
  {
    v118 = 1.0;
  }

  else
  {
    v118 = 0.3;
  }

  v119 = v154;
  (*(v148 + 32))(v154, v112, v149);
  result = sub_2EF0(&qword_318440, &qword_26B268);
  *(v119 + *(result + 36)) = v118;
  return result;
}

void sub_4A328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for CustomPickerButtonStyle(0);
  if (*(a1 + *(v14 + 36)) == 1)
  {
    v15 = v14;
    v29 = sub_4A5EC();
    sub_404B8(v13);
    sub_4BD3C(v13, v10);
    (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
    sub_4CF70(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
    v16 = sub_264390();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (v16)
    {
      v18 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v18 = sub_262F80();
    }

    v20 = v18;
    sub_4CA44(v13, type metadata accessor for ColorConstants);
    v21 = *(a1 + *(v15 + 40));
    v26 = sub_2622F0();
    sub_263720();
    *(&v25 + 1) = v27;
    v24 = xmmword_26AFB0;
    v22 = v26;
    v23 = 1;
    v19 = v29;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v23 << 8;
  *(a2 + 24) = v24;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v25;
  *(a2 + 72) = v23;
}

uint64_t sub_4A5EC()
{
  v1 = sub_2617D0();
  __chkstk_darwin(v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261DD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263390();
  __chkstk_darwin(v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustomPickerButtonStyle(0);
  v12 = *(v0 + *(v11 + 48)) * 0.5;
  if (*(v0 + *(v11 + 44)) > 1u)
  {
    v15 = sub_2617E0();
    (*(v5 + 104))(&v3[*(v15 + 20)], enum case for RoundedCornerStyle.continuous(_:), v4);
    __asm { FMOV            V0.2D, #10.0 }

    *v3 = _Q0;
    *&v3[*(v1 + 20)] = v12;
    sub_4CF70(&qword_318448, &type metadata accessor for RoundedRectangle._Inset, &protocol conformance descriptor for RoundedRectangle._Inset);
  }

  else
  {
    v13 = *(v5 + 104);
    v13(v10, enum case for RoundedCornerStyle.continuous(_:), v4);
    v13(v7, enum case for RoundedCornerStyle.circular(_:), v4);
    v14 = sub_261DC0();
    (*(v5 + 8))(v7, v4);
    sub_4CA44(v10, &type metadata accessor for Capsule);
    v22[1] = *&v12 & 0xFFFFFFFFFFFFFFFELL | ((v14 & 1) == 0);
    sub_4C31C();
  }

  return sub_263440();
}

uint64_t sub_4A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v4 - 8);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for CustomPickerButtonStyle(0);
  v8 = 0uLL;
  if ((*(a1 + *(result + 36)) & 1) != 0 || !*(a1 + *(result + 44)))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v9 = sub_4A5EC();
    sub_261240();
    v16[0] = v16[1];
    v10 = v17;
    v11 = v18;
    v12 = v19;
    sub_404B8(v6);
    v13 = [objc_opt_self() quaternaryLabelColor];
    v14 = sub_263070();
    sub_4CA44(v6, type metadata accessor for ColorConstants);
    result = sub_2622B0();
    v8 = v16[0];
    v15 = 0x3FF0000000000000;
    if (result)
    {
      v15 = 0x3FE3333333333333;
    }
  }

  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_4AA30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = sub_263FA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_318500, &qword_26B4E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = sub_2EF0(&qword_3184A0, &qword_26B338);
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  v16[*(v14 + 44)] = a3 & a4 & 1;
  sub_2E18(a1, a1[3]);
  sub_263F90();
  v18 = sub_264240();
  v20 = v19;
  (*(v10 + 8))(v12, v9);
  v21 = v25;
  sub_22148(v16, v25, &qword_318500, &qword_26B4E8);
  result = sub_2EF0(&qword_3184E8, &qword_26B4E0);
  v23 = v21 + *(result + 36);
  *v23 = a4 & (a3 ^ 1);
  *(v23 + 8) = v18;
  *(v23 + 16) = v20;
  return result;
}

unint64_t sub_4AC90()
{
  result = qword_318198;
  if (!qword_318198)
  {
    sub_2F9C(&qword_318190, &qword_26AFF8);
    sub_8E38(&qword_3181A0, &qword_3181A8, &qword_26B000, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_4AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318198);
  }

  return result;
}

unint64_t sub_4AD48()
{
  result = qword_3181B0;
  if (!qword_3181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181B0);
  }

  return result;
}

unint64_t sub_4ADA8()
{
  result = qword_3181E0;
  if (!qword_3181E0)
  {
    sub_2F9C(&qword_3181D8, &qword_26B028);
    sub_4AE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181E0);
  }

  return result;
}

unint64_t sub_4AE34()
{
  result = qword_3181E8;
  if (!qword_3181E8)
  {
    sub_2F9C(&qword_3181C8, &qword_26B018);
    sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181E8);
  }

  return result;
}

unint64_t sub_4AF34()
{
  result = qword_318200[0];
  if (!qword_318200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_318200);
  }

  return result;
}

void sub_4B014(uint64_t a1)
{
  sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v3 <= 0x3F)
  {
    type metadata accessor for SegmentedControlViewModel(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_1BB48(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_4B114(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = v6 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(*(a3 + 16) - 8) + 64) - ((-9 - v6) | v6) - ((-10 - v8) | v8) + 29) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 + v8 + 9) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_4B284(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = (&result[(v8 | 7) + 9] & ~(v8 | 7));
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
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

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_4B488(uint64_t *a1)
{
  sub_2F9C(&qword_3181D8, &qword_26B028);
  sub_2646F0();
  swift_getWitnessTable();
  sub_260CB0();
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_318180, &qword_26AFE8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2633D0();
  sub_2F9C(&qword_318188, &qword_26AFF0);
  sub_2F9C(&qword_318190, &qword_26AFF8);
  sub_4AC90();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_263260();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261F90();
  sub_4ADA8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_4B79C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_2EF0(&qword_318288, &unk_27F080);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_4B944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_2EF0(&qword_318288, &unk_27F080);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[13];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for CustomPickerButtonStyle(uint64_t a1)
{
  result = qword_3182E8;
  if (!qword_3182E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4BB28(uint64_t a1)
{
  sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_4BCBC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4BC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_4BCBC(uint64_t a1)
{
  if (!qword_3182F8)
  {
    sub_40130();
    v1 = sub_261310();
    if (!v2)
    {
      atomic_store(v1, &qword_3182F8);
    }
  }
}

uint64_t sub_4BD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_4BDA0()
{
  result = qword_3183A8;
  if (!qword_3183A8)
  {
    sub_2F9C(&qword_318360, &qword_26B1D0);
    sub_4BE58();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183A8);
  }

  return result;
}

unint64_t sub_4BE58()
{
  result = qword_3183B0;
  if (!qword_3183B0)
  {
    sub_2F9C(&qword_318358, &qword_26B1C8);
    sub_4BEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183B0);
  }

  return result;
}

unint64_t sub_4BEE4()
{
  result = qword_3183B8;
  if (!qword_3183B8)
  {
    sub_2F9C(&qword_318350, &qword_26B1C0);
    sub_4CF70(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183B8);
  }

  return result;
}

unint64_t sub_4BFA0()
{
  result = qword_3183F8;
  if (!qword_3183F8)
  {
    sub_2F9C(&qword_318390, &qword_26B200);
    sub_4C058();
    sub_8E38(&qword_318430, &qword_3183F0, &qword_26B260, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183F8);
  }

  return result;
}

unint64_t sub_4C058()
{
  result = qword_318400;
  if (!qword_318400)
  {
    sub_2F9C(&qword_318388, &qword_26B1F8);
    sub_4C110();
    sub_8E38(&qword_318428, &qword_3183E8, &qword_26B258, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318400);
  }

  return result;
}

unint64_t sub_4C110()
{
  result = qword_318408;
  if (!qword_318408)
  {
    sub_2F9C(&qword_318380, &qword_26B1F0);
    sub_4C1C8();
    sub_8E38(&qword_318420, &qword_3183D8, &qword_26B248, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318408);
  }

  return result;
}

unint64_t sub_4C1C8()
{
  result = qword_318410;
  if (!qword_318410)
  {
    sub_2F9C(&qword_318378, &qword_26B1E8);
    sub_4C254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318410);
  }

  return result;
}

unint64_t sub_4C254()
{
  result = qword_318418;
  if (!qword_318418)
  {
    sub_2F9C(&qword_318370, &qword_26B1E0);
    sub_2F9C(&qword_318360, &qword_26B1D0);
    sub_4BDA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318418);
  }

  return result;
}

unint64_t sub_4C31C()
{
  result = qword_318450;
  if (!qword_318450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318450);
  }

  return result;
}

__n128 sub_4C3C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_4C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for SegmentedControl(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));
  sub_4054(*v8, *(v8 + 8));
  v9 = v8 + v7[11];

  v11 = type metadata accessor for SegmentedControlViewModel(0, v5, v6, v10);
  (*(*(v5 - 8) + 8))(v9 + *(v11 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_4C500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  type metadata accessor for SegmentedControl(0, v8, v9, a3);

  return sub_46944(a1, a2, v8, v9, a4);
}

uint64_t sub_4C5A4()
{

  return swift_deallocObject();
}

uint64_t sub_4C5DC(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_4C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v5 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (type metadata accessor for SegmentedControl(0, v5, v6, a4) - 8);
  v11 = (v8 + v9 + *(*v10 + 80)) & ~*(*v10 + 80);
  v12 = *(v7 + 8);
  v12(v4 + v8, v5);
  sub_4054(*(v4 + v11), *(v4 + v11 + 8));
  v13 = v4 + v11 + v10[11];

  v15 = type metadata accessor for SegmentedControlViewModel(0, v5, v6, v14);
  v12(v13 + *(v15 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_4C7FC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(*(v4 - 8) + 64);
  v8 = *(type metadata accessor for SegmentedControl(0, v4, v5, a1) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_484CC(v9, v4, v5, a2);
}

uint64_t sub_4C928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BD0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_4C960()
{
  result = qword_3184B8;
  if (!qword_3184B8)
  {
    sub_2F9C(&qword_318488, &qword_26B320);
    sub_8E38(&qword_3184C0, &qword_318480, &qword_26B318, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184B8);
  }

  return result;
}

uint64_t sub_4CA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4CAB0()
{
  v1 = sub_2EF0(&qword_3184A0, &qword_26B338);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_4CB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2EF0(&qword_3184A0, &qword_26B338) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = (v6 + *(v5 + 64));
  v8 = *v7;
  v9 = v7[1];

  return sub_4AA30(a1, v6, v8, v9, a2);
}

unint64_t sub_4CBFC()
{
  result = qword_3184F0;
  if (!qword_3184F0)
  {
    sub_2F9C(&qword_3184E8, &qword_26B4E0);
    sub_4CC88();
    sub_4CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184F0);
  }

  return result;
}

unint64_t sub_4CC88()
{
  result = qword_3184F8;
  if (!qword_3184F8)
  {
    sub_2F9C(&qword_318500, &qword_26B4E8);
    sub_2F9C(&qword_318498, &qword_26B330);
    sub_260B00();
    sub_2F9C(&qword_318490, &qword_26B328);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_2F9C(&qword_318488, &qword_26B320);
    type metadata accessor for CustomPickerButtonStyle(255);
    sub_4C960();
    sub_4CF70(&qword_3184D8, type metadata accessor for CustomPickerButtonStyle, &unk_26B188);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_4CF70(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    swift_getOpaqueTypeConformance2();
    sub_4CEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184F8);
  }

  return result;
}

unint64_t sub_4CEC8()
{
  result = qword_318508;
  if (!qword_318508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318508);
  }

  return result;
}

unint64_t sub_4CF1C()
{
  result = qword_318510;
  if (!qword_318510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318510);
  }

  return result;
}

uint64_t sub_4CF70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4CFCC()
{
  result = qword_318570;
  if (!qword_318570)
  {
    sub_2F9C(&qword_318440, &qword_26B268);
    sub_2F9C(&qword_318390, &qword_26B200);
    sub_261FA0();
    sub_4BFA0();
    sub_4CF70(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318570);
  }

  return result;
}

uint64_t sub_4D114@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_8198(v2, &v14 - v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_4D314()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for YearInReviewSharableImage(0) + 20));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_264900();
  v8 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_4D470@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for YearInReviewSharableImage(0);
  sub_8198(v1 + *(v7 + 24), v10, &qword_3173E0, &qword_26B890);
  if (v11 == 1)
  {
    return sub_F7CC(v10, a1);
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t YearInReviewSharableImage.init(content:background:localizedYear:shouldIncludeBranding:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for YearInReviewSharableImage(0);
  v13 = a6 + v12[5];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a6 + v12[6];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  sub_F7CC(a1, a6 + v12[7]);
  result = sub_4FDE0(a2, a6 + v12[8]);
  v16 = (a6 + v12[9]);
  *v16 = a3;
  v16[1] = a4;
  *(a6 + v12[10]) = a5;
  return result;
}

uint64_t type metadata accessor for YearInReviewSharableImage(uint64_t a1)
{
  result = qword_3185F0;
  if (!qword_3185F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YearInReviewSharableImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318578, &qword_26B640);
  __chkstk_darwin(v7);
  v9 = (&v15 - v8);
  *v9 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9[1] = v10;
  v11 = sub_2EF0(&qword_318580, &qword_26B648);
  sub_4D93C(v1, v9 + *(v11 + 44));
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
  sub_8E38(&qword_318588, &qword_318578, &qword_26B640, &protocol conformance descriptor for ZStack<A>);
  sub_262B60();
  (*(v4 + 8))(v6, v3);
  sub_8E80(v9, &qword_318578, &qword_26B640);
  v12 = sub_261740();
  LOBYTE(v3) = sub_262500();
  result = sub_2EF0(&qword_318590, &qword_26B650);
  v14 = a1 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = v3;
  return result;
}

uint64_t sub_4D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318650, &qword_26B6D8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_2EF0(&qword_318658, &qword_26B6E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_4DB84(&v22 - v15);
  *v10 = sub_261E50();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  v17 = sub_2EF0(&qword_318660, &qword_26B6E8);
  sub_4E81C(a1, &v10[*(v17 + 44)]);
  v18 = sub_262500();
  v19 = &v10[*(v5 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  sub_8198(v16, v13, &qword_318658, &qword_26B6E0);
  sub_8198(v10, v7, &qword_318650, &qword_26B6D8);
  sub_8198(v13, a2, &qword_318658, &qword_26B6E0);
  v20 = sub_2EF0(&qword_318668, &qword_26B6F0);
  sub_8198(v7, a2 + *(v20 + 48), &qword_318650, &qword_26B6D8);
  sub_8E80(v10, &qword_318650, &qword_26B6D8);
  sub_8E80(v16, &qword_318658, &qword_26B6E0);
  sub_8E80(v7, &qword_318650, &qword_26B6D8);
  return sub_8E80(v13, &qword_318658, &qword_26B6E0);
}

uint64_t sub_4DB84@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v86 = sub_2EF0(&qword_3186D0, &qword_26B840);
  __chkstk_darwin(v86);
  v88 = (&KeyPath - v2);
  v84 = sub_2EF0(&qword_3186D8, &qword_26B848);
  __chkstk_darwin(v84);
  v4 = &KeyPath - v3;
  v87 = sub_2EF0(&qword_3186E0, &unk_26B850);
  __chkstk_darwin(v87);
  v85 = &KeyPath - v5;
  v6 = sub_261180();
  v81 = *(v6 - 8);
  *&v82 = v6;
  __chkstk_darwin(v6);
  v8 = (&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_2EF0(&qword_317378, &unk_2698B0);
  __chkstk_darwin(v83);
  v10 = (&KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &KeyPath - v12;
  v14 = sub_2EF0(&qword_316D98, &unk_269120);
  __chkstk_darwin(v14 - 8);
  v16 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &KeyPath - v18;
  v20 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v20);
  v22 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for YearInReviewSharableImage(0) + 32);
  *&v80 = v1;
  sub_50604(v1 + v23, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v41 = *v22;
      v42 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);

      v43 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v45 = v44;
      sub_4F420(v41, &v97);
      v109 = v101;
      v110 = v102;
      v111 = v103;
      LOWORD(v112) = v104;
      v105 = v97;
      v106 = v98;
      v107 = v99;
      v108 = v100;
      v113 = v97;
      v114 = v98;
      v115 = v99;
      v116 = v100;
      v117 = v101;
      v118 = v102;
      v119 = v103;
      LOWORD(v120) = v104;
      sub_8198(&v105, &v121, &qword_3186E8, &qword_26B860);
      sub_8E80(&v113, &qword_3186E8, &qword_26B860);

      v46 = v88;
      *v88 = v43;
      v46[1] = v45;
      v47 = v110;
      *(v46 + 5) = v109;
      *(v46 + 6) = v47;
      *(v46 + 7) = v111;
      *(v46 + 64) = v112;
      v48 = v106;
      *(v46 + 1) = v105;
      *(v46 + 2) = v48;
      v49 = v108;
      *(v46 + 3) = v107;
      *(v46 + 4) = v49;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3186F0, &qword_26B868);
      sub_50668();
      sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868, &protocol conformance descriptor for ZStack<A>);
      sub_261F80();
      return (*(v81 + 8))(&v22[v42], v82);
    }

    v25 = *(v22 + 5);
    v109 = *(v22 + 4);
    v110 = v25;
    v26 = *(v22 + 7);
    v111 = *(v22 + 6);
    v112 = v26;
    v27 = *(v22 + 1);
    v105 = *v22;
    v106 = v27;
    v28 = *(v22 + 3);
    v107 = *(v22 + 2);
    v108 = v28;
    v119 = v111;
    v120 = v26;
    v117 = v109;
    v118 = v25;
    v115 = v107;
    v116 = v28;
    v113 = v105;
    v114 = v27;
    v29 = v4;
    if (sub_2F8B8(&v113))
    {
      sub_2F8C4(&v105);
      v30 = swift_allocObject();
      *(v30 + 16) = 0xD00000000000002CLL;
      *(v30 + 24) = 0x80000000002909C0;
      *&v121 = sub_1F458;
      *(&v121 + 1) = v30;
      v123 = 0;
      v122 = 0uLL;
      v124 = 1;
      sub_2EF0(&qword_318718, &unk_26B878);
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_318710, &qword_318718, &unk_26B878, &protocol conformance descriptor for AsyncResourceImage<A>);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      sub_261F80();
      v31 = v97;
      v32 = v98;
      v33 = v99;
      v34 = BYTE8(v99);
    }

    else
    {
      v58 = sub_2F950(&v113);
      v59 = v58[5];
      if (v59)
      {
        v60 = v58[4];
        v61 = v58[5];
      }

      else
      {
        v60 = *v58;
        v61 = v58[1];
      }

      v62 = v59 != 0;

      sub_4D470(&v121);
      v63 = *(&v122 + 1);
      v64 = v123;
      sub_2E18(&v121, *(&v122 + 1));
      sub_2F8C4(&v105);
      v90 = v60;
      v91 = v61;
      LOBYTE(v92) = v62;
      v102 = v110;
      v103 = v111;
      v104 = v112;
      v97 = v105;
      v98 = v106;
      v99 = v107;
      v100 = v108;
      v101 = v109;
      v65 = sub_2F950(&v97);
      v66 = *(v65 + 120);
      v67 = v66 * *(v65 + 16);
      v68 = sub_4D314();
      v69 = (*(v64 + 8))(&v90, v63, v64, v67, v66, v68);
      sub_6204(v60, v61);
      type metadata accessor for ImageResourceLoader(0);
      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v71 = swift_allocObject();
      *(v71 + 28) = 0;
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v70 + 24) = v71;
      sub_2603B0();
      v96 = v70;
      sub_2631D0();
      v72 = v90;
      v73 = v91;
      sub_3080(&v121);
      v90 = sub_4F0CC;
      v91 = 0;
      v92 = v69;
      v93 = v72;
      v94 = v73;
      v95 = 0;
      sub_2EF0(&qword_318718, &unk_26B878);
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_318710, &qword_318718, &unk_26B878, &protocol conformance descriptor for AsyncResourceImage<A>);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
      sub_261F80();
      v31 = v121;
      v32 = v122;
      v33 = v123;
      v34 = v124;
    }

    v82 = v31;
    v80 = v32;
    *v29 = v31;
    *(v29 + 1) = v32;
    *(v29 + 4) = v33;
    v29[40] = v34;
    swift_storeEnumTagMultiPayload();
    v84 = v82;
    v81 = v80;
    *&v82 = *(&v82 + 1);
    v74 = *(&v80 + 1);
    sub_50810(v84, *(&v82 + 1), v80, *(&v80 + 1), v33, v34);
    sub_2EF0(&qword_318708, &qword_26B870);
    sub_2F5A8();
    sub_506F4();
    v75 = v85;
    sub_261F80();
    sub_8198(v75, v88, &qword_3186E0, &unk_26B850);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3186F0, &qword_26B868);
    sub_50668();
    sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868, &protocol conformance descriptor for ZStack<A>);
    sub_261F80();
    sub_50874(v84, v82, v81, v74, v33, v34);
    v57 = v75;
    v55 = &qword_3186E0;
    v56 = &unk_26B850;
  }

  else
  {
    v78 = v4;
    v79 = v13;
    v35 = v19;
    v36 = *v22;
    v37 = sub_2EF0(&qword_316DA8, &qword_269130);
    sub_22148(&v22[*(v37 + 48)], v35, &qword_316D98, &unk_269120);
    KeyPath = swift_getKeyPath();
    v77 = v35;
    sub_8198(v35, v16, &qword_316D98, &unk_269120);
    v38 = v81;
    v39 = v82;
    v40 = *(v81 + 48);
    if (v40(v16, 1, v82) == 1)
    {
      sub_4D114(v8);
      if (v40(v16, 1, v39) != 1)
      {
        sub_8E80(v16, &qword_316D98, &unk_269120);
      }
    }

    else
    {
      (*(v38 + 32))(v8, v16, v39);
    }

    v51 = (v10 + *(v83 + 36));
    v52 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
    (*(v38 + 32))(v51 + *(v52 + 28), v8, v39);
    *v51 = KeyPath;
    *v10 = v36;
    v53 = v79;
    sub_22148(v10, v79, &qword_317378, &unk_2698B0);
    sub_8198(v53, v78, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();

    sub_2EF0(&qword_318708, &qword_26B870);
    sub_2F5A8();
    sub_506F4();
    v54 = v85;
    sub_261F80();
    sub_8198(v54, v88, &qword_3186E0, &unk_26B850);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3186F0, &qword_26B868);
    sub_50668();
    sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868, &protocol conformance descriptor for ZStack<A>);
    sub_261F80();

    sub_8E80(v54, &qword_3186E0, &unk_26B850);
    sub_8E80(v79, &qword_317378, &unk_2698B0);
    v55 = &qword_316D98;
    v56 = &unk_269120;
    v57 = v77;
  }

  return sub_8E80(v57, v55, v56);
}

double sub_4E81C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = sub_2EF0(&qword_318670, &qword_26B6F8);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v23 = &v22 - v4;
  v5 = sub_2EF0(&qword_318678, &qword_26B700);
  __chkstk_darwin(v5 - 8);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v25 = type metadata accessor for YearInReviewSharableImage(0);
  v10 = (a1 + *(v25 + 28));
  v11 = v10[4];
  sub_2E18(v10, v10[3]);
  swift_getKeyPath();
  v12 = 1;
  v34 = 1;
  sub_2F9C(&qword_3171D8, &qword_26B730);
  v36 = sub_261730();
  v13 = sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v32 = v11;
  v33 = v13;
  WitnessTable = swift_getWitnessTable();
  sub_10934(v35);
  sub_262A90();

  v14 = WitnessTable;
  sub_2E18(v35, v36);
  v15 = sub_261730();
  __chkstk_darwin(v15);
  swift_getKeyPath();
  v34 = 0;
  sub_262A90();

  v30 = v14;
  v31 = v13;
  swift_getWitnessTable();
  v16 = sub_263310();
  sub_3080(v35);
  if (*(v24 + *(v25 + 40)) == 1)
  {
    v17 = v23;
    sub_4EBFC(v23);
    sub_50454(v17, v9);
    v12 = 0;
  }

  (*(v26 + 56))(v9, v12, 1, v27);
  v18 = v28;
  sub_8198(v9, v28, &qword_318678, &qword_26B700);
  v19 = v29;
  *v29 = v16;
  v20 = sub_2EF0(&qword_318680, &qword_26B760);
  sub_8198(v18, v19 + *(v20 + 48), &qword_318678, &qword_26B700);

  sub_8E80(v9, &qword_318678, &qword_26B700);
  sub_8E80(v18, &qword_318678, &qword_26B700);

  return result;
}

uint64_t sub_4EBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v23 = sub_262370();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318688, &qword_26B768);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_261D30();
  v28 = 1;
  sub_4F9EC(v2, &v44);
  v39 = v54;
  v40 = v55;
  v41 = v56;
  v42 = v57;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v29 = v44;
  v30 = v45;
  v43[10] = v54;
  v43[11] = v55;
  v43[12] = v56;
  v43[13] = v57;
  v43[6] = v50;
  v43[7] = v51;
  v43[8] = v52;
  v43[9] = v53;
  v43[2] = v46;
  v43[3] = v47;
  v43[4] = v48;
  v43[5] = v49;
  v43[0] = v44;
  v43[1] = v45;
  sub_8198(&v29, &v25, &qword_318690, &qword_26B770);
  sub_8E80(v43, &qword_318690, &qword_26B770);
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[199] = v41;
  *&v27[215] = v42;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[151] = v38;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[7] = v29;
  *&v27[23] = v30;
  *&v26[177] = *&v27[176];
  *&v26[193] = *&v27[192];
  *&v26[209] = *&v27[208];
  *&v26[113] = *&v27[112];
  *&v26[129] = *&v27[128];
  *&v26[145] = *&v27[144];
  *&v26[161] = *&v27[160];
  *&v26[49] = *&v27[48];
  *&v26[65] = *&v27[64];
  *&v26[81] = *&v27[80];
  *&v26[97] = *&v27[96];
  *&v26[1] = *v27;
  *&v26[17] = *&v27[16];
  v25 = v9;
  v26[0] = v28;
  *&v26[224] = *(&v42 + 1);
  *&v26[33] = *&v27[32];
  sub_262350();
  sub_2EF0(&qword_318698, &qword_26B778);
  sub_8E38(&qword_3186A0, &qword_318698, &qword_26B778, &protocol conformance descriptor for HStack<A>);
  sub_262C70();
  (*(v3 + 8))(v5, v23);
  v56 = *&v26[176];
  v57 = *&v26[192];
  v58 = *&v26[208];
  v59 = *&v26[224];
  v52 = *&v26[112];
  v53 = *&v26[128];
  v54 = *&v26[144];
  v55 = *&v26[160];
  v48 = *&v26[48];
  v49 = *&v26[64];
  v50 = *&v26[80];
  v51 = *&v26[96];
  v44 = v25;
  v45 = *v26;
  v46 = *&v26[16];
  v47 = *&v26[32];
  sub_8E80(&v44, &qword_318698, &qword_26B778);
  v10 = sub_262580();
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  sub_262630();
  sub_504CC();
  v13 = v24;
  sub_262A20();
  sub_8E80(v8, &qword_318688, &qword_26B768);
  v14 = swift_getKeyPath();
  v15 = v13 + *(sub_2EF0(&qword_3186B0, &qword_26B7E8) + 36);
  v16 = v13;
  *v15 = v14;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0;
  v17 = swift_getKeyPath();
  v18 = (v13 + *(sub_2EF0(&qword_3186B8, &unk_26B820) + 36));
  *v18 = v17;
  v18[1] = 0x3FE0000000000000;
  v19 = swift_getKeyPath();
  type metadata accessor for YearInReviewSharableImage(0);
  v20 = (v16 + *(sub_2EF0(&qword_318670, &qword_26B6F8) + 36));
  v21 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  result = PageBackground.resolvedColorScheme.getter(v20 + *(v21 + 28));
  *v20 = v19;
  return result;
}

void sub_4F0CC(void *a1)
{
  v2 = sub_2630C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318730, &qword_26B888);
  __chkstk_darwin(v6);
  v8 = (&v21 - v7);
  v9 = sub_2EF0(&qword_317378, &unk_2698B0);
  __chkstk_darwin(v9);
  v11 = (&v21 - v10);
  if (a1)
  {
    v12 = a1;
    sub_2630A0();
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v13 = sub_263100();

    (*(v3 + 8))(v5, v2);
    *v8 = v13;
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();

    sub_261F80();
  }

  else
  {
    v14 = [objc_opt_self() secondarySystemBackgroundColor];
    v15 = sub_262EE0();
    KeyPath = swift_getKeyPath();
    v17 = (v11 + *(v9 + 36));
    v18 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
    v19 = enum case for ColorScheme.dark(_:);
    v20 = sub_261180();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = KeyPath;
    *v11 = v15;
    sub_8198(v11, v8, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_261F80();
    sub_8E80(v11, &qword_317378, &unk_2698B0);
  }
}

void sub_4F420(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v21 = a1;
  v4 = sub_2630C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260D00();
  __chkstk_darwin(v8 - 8);
  v22 = Color.init(hexString:)(0x374632463246, 0xE600000000000000);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = [v10 bundleForClass:{ObjCClassFromMetadata, v21}];
  sub_260CF0();
  sub_263120();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v12 = sub_263100();

  (*(v5 + 8))(v7, v4);
  sub_263720();
  v14 = v13;
  v16 = v15;
  LOBYTE(v32[0]) = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v29 = v12;
  LOWORD(v30[0]) = 257;
  *(v30 + 2) = v27;
  WORD3(v30[0]) = v28;
  v17 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  *(v30 + 8) = v17;
  *(&v30[1] + 1) = v14;
  *&v31[0] = v16;
  v18 = v24;
  v19 = v25;
  *(v31 + 8) = v24;
  *(&v31[1] + 8) = v25;
  v20 = v26;
  *(&v31[2] + 8) = v26;
  WORD4(v31[3]) = 0;
  *a3 = v22;
  *(a3 + 40) = v30[1];
  *(a3 + 24) = v30[0];
  *(a3 + 8) = v29;
  *(a3 + 98) = *(&v31[2] + 10);
  *(a3 + 88) = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 56) = v31[0];
  v32[0] = v12;
  v32[1] = 0;
  v33 = 257;
  v35 = v28;
  v34 = v27;
  v36 = v17;
  v37 = v14;
  v38 = v16;
  v41 = v20;
  v40 = v19;
  v39 = v18;
  v42 = 0;

  sub_8198(&v29, &v23, &qword_318738, &qword_26B898);
  sub_8E80(v32, &qword_318738, &qword_26B898);
}

uint64_t sub_4F768()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_4F9EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_262870();
  v42 = v5;
  v43 = v4;
  v7 = v6;
  v44 = v8;
  sub_263580();
  sub_2613A0();
  v41 = v7 & 1;
  v9 = (a1 + *(type metadata accessor for YearInReviewSharableImage(0) + 36));
  v10 = v9[1];
  if (v10)
  {
    v87 = *v9;
    v88 = v10;

    v105._countAndFlagsBits = 32;
    v105._object = 0xE100000000000000;
    sub_264530(v105);
    v11 = sub_4F768();
    v13 = v12;

    v106._countAndFlagsBits = v11;
    v106._object = v13;
    sub_264530(v106);
  }

  else
  {
    sub_4F768();
  }

  sub_10A84();
  v14 = sub_2628F0();
  v16 = v15;
  v18 = v17;
  sub_262140();
  v19 = sub_2627F0();
  v39 = v20;
  v40 = v21;
  v23 = v22;
  sub_39DBC(v14, v16, v18 & 1);

  sub_263590();
  sub_261830();
  *&v73 = v43;
  *(&v73 + 1) = v42;
  LOBYTE(v74) = v41;
  *(&v74 + 1) = v104[0];
  DWORD1(v74) = *(v104 + 3);
  *(&v74 + 1) = v44;
  v75 = v101;
  v76 = v102;
  v77 = v103;
  v54 = v101;
  v55 = v102;
  v25 = v71;
  v24 = v72;
  v52 = v73;
  v53 = v74;
  *&v78 = v19;
  *(&v78 + 1) = v39;
  LOBYTE(v79) = v23 & 1;
  DWORD1(v79) = *&v99[3];
  *(&v79 + 1) = *v99;
  *(&v79 + 1) = v40;
  v80 = v66;
  v81 = v67;
  v85 = v71;
  v86 = v72;
  v26 = v69;
  v27 = v70;
  v83 = v69;
  v84 = v70;
  v28 = v66;
  v29 = v67;
  v30 = v68;
  v82 = v68;
  v56 = v103;
  v57 = v78;
  v60 = v67;
  v61 = v68;
  v58 = v79;
  v59 = v66;
  v31 = v70;
  v64 = v71;
  v65 = v72;
  v62 = v69;
  v63 = v70;
  a2[10] = v69;
  a2[11] = v31;
  v32 = v65;
  a2[12] = v64;
  a2[13] = v32;
  v33 = v59;
  a2[6] = v58;
  a2[7] = v33;
  v34 = v61;
  a2[8] = v60;
  a2[9] = v34;
  v35 = v55;
  a2[2] = v54;
  a2[3] = v35;
  v36 = v57;
  a2[4] = v56;
  a2[5] = v36;
  v37 = v53;
  *a2 = v52;
  a2[1] = v37;
  v96 = v27;
  v97 = v25;
  v98 = v24;
  v100 = v23 & 1;
  v87 = v19;
  v88 = v39;
  v89 = v23 & 1;
  *v90 = *v99;
  *&v90[3] = *&v99[3];
  v91 = v40;
  v92 = v28;
  v93 = v29;
  v94 = v30;
  v95 = v26;
  sub_8198(&v73, v45, &qword_3186C0, &qword_26B830);
  sub_8198(&v78, v45, &qword_3186C8, &qword_26B838);
  sub_8E80(&v87, &qword_3186C8, &qword_26B838);
  v45[0] = v43;
  v45[1] = v42;
  v46 = v41;
  *v47 = v104[0];
  *&v47[3] = *(v104 + 3);
  v48 = v44;
  v49 = v101;
  v50 = v102;
  v51 = v103;
  return sub_8E80(v45, &qword_3186C0, &qword_26B830);
}

uint64_t sub_4FDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PageBackground(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_4FFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PageBackground(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_500F0(uint64_t a1)
{
  sub_50224(319);
  if (v1 <= 0x3F)
  {
    sub_1BB48(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_5027C(319);
      if (v3 <= 0x3F)
      {
        sub_502E0();
        if (v4 <= 0x3F)
        {
          type metadata accessor for PageBackground(319);
          if (v5 <= 0x3F)
          {
            sub_1BB48(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
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

void sub_50224(uint64_t a1)
{
  if (!qword_316FF0)
  {
    sub_261180();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_316FF0);
    }
  }
}

void sub_5027C(uint64_t a1)
{
  if (!qword_316FF8)
  {
    sub_2F9C(&qword_317000, &qword_2693E0);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_316FF8);
    }
  }
}

unint64_t sub_502E0()
{
  result = qword_318600;
  if (!qword_318600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_318600);
  }

  return result;
}

unint64_t sub_50348()
{
  result = qword_318648;
  if (!qword_318648)
  {
    sub_2F9C(&qword_318590, &qword_26B650);
    sub_2F9C(&qword_318578, &qword_26B640);
    sub_8E38(&qword_318588, &qword_318578, &qword_26B640, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318648);
  }

  return result;
}

uint64_t sub_50454(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318670, &qword_26B6F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_504CC()
{
  result = qword_3186A8;
  if (!qword_3186A8)
  {
    sub_2F9C(&qword_318688, &qword_26B768);
    sub_2F9C(&qword_318698, &qword_26B778);
    sub_8E38(&qword_3186A0, &qword_318698, &qword_26B778, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3186A8);
  }

  return result;
}

uint64_t sub_50604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_50668()
{
  result = qword_3186F8;
  if (!qword_3186F8)
  {
    sub_2F9C(&qword_3186E0, &unk_26B850);
    sub_2F5A8();
    sub_506F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3186F8);
  }

  return result;
}

unint64_t sub_506F4()
{
  result = qword_318700;
  if (!qword_318700)
  {
    sub_2F9C(&qword_318708, &qword_26B870);
    sub_8E38(&qword_318710, &qword_318718, &unk_26B878, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00, &protocol conformance descriptor for BooksFailureView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318700);
  }

  return result;
}

uint64_t sub_507D8()
{

  return swift_deallocObject();
}

uint64_t sub_50810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    swift_unknownObjectRetain();
    v6 = vars8;
  }
}

double sub_50874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

__n128 SwooshItemView.init(model:contextActionMenuView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t SwooshItemView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_261E50();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2EF0(&qword_318740, &qword_26B8A0);
  sub_509CC(v2, (a2 + *(v4 + 44)));
  sub_50DD4(v2, v9);
  sub_2E18(v9, v9[3]);
  sub_260980();
  v6 = v5;
  sub_3080(v9);
  result = sub_2EF0(&qword_318748, &qword_26B8A8);
  v8 = a2 + *(result + 36);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_509CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for CoverView(0);
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318770, &qword_27A3C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  sub_2E18(a1, a1[3]);
  sub_260950();
  sub_30CC(a1, &v38);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v38, v36);
  *(&v37 + 1) = 0x4068000000000000;
  sub_230A8(v36);
  v42 = v36[4];
  v43 = v36[5];
  v44 = v36[6];
  v45 = v37;
  v38 = v36[0];
  v39 = v36[1];
  v40 = v36[2];
  v41 = v36[3];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  *(v5 + 6) = swift_getKeyPath();
  v5[56] = 0;
  v13 = v3[6];
  *&v5[v13] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v14 = v3[7];
  *&v5[v14] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v15 = &v5[v3[8]];
  type metadata accessor for ProfileRestrictions(0);
  sub_51B98(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v15 = sub_261900();
  v15[1] = v16;
  v17 = &v5[v3[9]];
  v33 = 1;
  sub_2631D0();
  v18 = v35;
  *v17 = v34;
  *(v17 + 1) = v18;
  v19 = &v5[v3[10]];
  v20 = v43;
  *(v19 + 4) = v42;
  *(v19 + 5) = v20;
  v21 = v45;
  *(v19 + 6) = v44;
  *(v19 + 7) = v21;
  v22 = v39;
  *v19 = v38;
  *(v19 + 1) = v22;
  v23 = v41;
  *(v19 + 2) = v40;
  *(v19 + 3) = v23;
  v5[v3[11]] = 0;
  v32 = a1;
  sub_51B98(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
  sub_262A80();
  sub_51BE0(v5);
  v24 = *(v7 + 16);
  v24(v9, v12, v6);
  v25 = v31;
  *v31 = 0;
  *(v25 + 8) = 0;
  v26 = v25;
  v27 = sub_2EF0(&qword_318778, &qword_26BA00);
  v24(&v26[*(v27 + 48)], v9, v6);
  v28 = *(v7 + 8);
  v28(v12, v6);
  return (v28)(v9, v6);
}