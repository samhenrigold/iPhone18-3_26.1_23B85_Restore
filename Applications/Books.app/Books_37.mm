void sub_1004D8300(uint64_t a1)
{
  sub_10000E3E8((*(a1 + 16) + 80), *(*(a1 + 16) + 104));
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v1 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v1 != 2))
  {
    REActionMenuState.transition(to:)(0x8000000000000020);
  }
}

char *sub_1004D839C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  v40 = *(v8 + 16);
  v41 = v8 + 16;
  v40(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v39 = ObjCClassFromMetadata;
  v16 = [v38 bundleForClass:ObjCClassFromMetadata];
  v36 = *(v1 + 16);
  v37 = v1 + 16;
  v36(v3, v6, v0);
  v42 = v10;
  v44 = v3;
  v17 = sub_1007A22D4(v10, 0, 0, v16, v3, "Accessibility string for a scrubber-type control that indicates the current position in a book.", 95, 2);
  v19 = v18;
  v20 = *(v1 + 8);
  v45 = v6;
  v46 = v1 + 8;
  v47 = v0;
  v35 = v20;
  v20(v6, v0);
  v21 = *(v8 + 8);
  v22 = v13;
  v43 = v8 + 8;
  v21(v13, v7);
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v49 = v14;
  sub_10000E3E8((*(v48 + 16) + 80), *(*(v48 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v23 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v23 == 2)
    {
      return v49;
    }
  }

  v25 = v13;
  sub_1007A2154();
  v26 = v45;
  sub_100796C94();
  v27 = v42;
  v40(v42, v22, v7);
  v28 = [v38 bundleForClass:v39];
  v29 = v21;
  v30 = v44;
  v31 = v47;
  v36(v44, v26, v47);
  v32 = sub_1007A22D4(v27, 0, 0, v28, v30, "Accessibility string for an element that functions as a table of contents button", 80, 2);
  v34 = v33;
  v35(v26, v31);
  v29(v25, v7);
  result = sub_10000B3D8(1, 2, 1, v49);
  *(result + 2) = 2;
  *(result + 6) = v32;
  *(result + 7) = v34;
  return result;
}

uint64_t sub_1004D8804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v158 = a2;
  v164 = a3;
  v144 = sub_10079BC44();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v139 = &v137 - v14;
  v138 = sub_10079C3D4();
  __chkstk_darwin(v138);
  v142 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1001F1160(&qword_100AE7A30, &qword_10082C618);
  __chkstk_darwin(v141);
  v146 = &v137 - v16;
  v145 = sub_1001F1160(&qword_100AE7A38, &qword_10082C620);
  __chkstk_darwin(v145);
  v159 = &v137 - v17;
  v165 = sub_1001F1160(&qword_100AE7A40, &qword_10082C628);
  v18 = *(v165 - 8);
  __chkstk_darwin(v165);
  v147 = &v137 - v19;
  v20 = sub_1001F1160(&qword_100AE7A48, &qword_10082C630);
  __chkstk_darwin(v20 - 8);
  v163 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v137 - v23;
  v24 = sub_1001F1160(&qword_100AE7A50, &qword_10082C638);
  __chkstk_darwin(v24 - 8);
  v26 = &v137 - v25;
  v149 = sub_1001F1160(&qword_100AE7A58, &qword_10082C640);
  __chkstk_darwin(v149);
  v28 = &v137 - v27;
  v148 = sub_1001F1160(&qword_100AE7A60, &qword_10082C648);
  __chkstk_darwin(v148);
  v30 = &v137 - v29;
  v153 = sub_1001F1160(&qword_100AE7A68, &qword_10082C650);
  __chkstk_darwin(v153);
  v150 = &v137 - v31;
  v32 = sub_1001F1160(&qword_100AE7A70, &qword_10082C658);
  __chkstk_darwin(v32);
  v34 = &v137 - v33;
  v152 = sub_1001F1160(&qword_100AE7A78, &qword_10082C660);
  __chkstk_darwin(v152);
  v156 = &v137 - v35;
  v151 = sub_1001F1160(&qword_100AE7A80, &qword_10082C668);
  __chkstk_darwin(v151);
  v166 = &v137 - v36;
  v155 = sub_1001F1160(&qword_100AE7A88, &qword_10082C670);
  __chkstk_darwin(v155);
  v161 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v154 = &v137 - v39;
  __chkstk_darwin(v40);
  v168 = &v137 - v41;
  v42 = sub_1001F1160(&qword_100AE7A90, &qword_10082C678);
  __chkstk_darwin(v42 - 8);
  v160 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v167 = &v137 - v45;
  v46 = *(a1 + 16);
  v47 = *(v46 + 104);
  v157 = v46;
  sub_10000E3E8((v46 + 80), v47);
  if (swift_unknownObjectWeakLoadStrong() && (v48 = v26, swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v49 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v49 == 2))
  {
    v50 = v167;
    sub_1004E0B04(v158, v167, type metadata accessor for RESliderView);
    v51 = type metadata accessor for RESliderView(0);
    v52 = v50;
    v26 = v48;
    (*(*(v51 - 8) + 56))(v52, 0, 1, v51);
  }

  else
  {
    v53 = type metadata accessor for RESliderView(0);
    (*(*(v53 - 8) + 56))(v167, 1, 1, v53);
  }

  sub_1004D99D8(v26);
  v54 = type metadata accessor for REScrubberView(0);
  v55 = (a1 + *(v54 + 48));
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v170) = v56;
  *(&v170 + 1) = v57;
  sub_1001F1160(&qword_100AE78B8, &qword_10082C348);
  sub_10079DFF4();
  if (v169 == 1)
  {
    v58 = 0.25;
  }

  else
  {
    v58 = 1.0;
  }

  sub_10020B3C8(v26, v28, &qword_100AE7A50, &qword_10082C638);
  *&v28[*(v149 + 36)] = v58;
  v59 = sub_10079D2F4();
  sub_10079BBA4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10020B3C8(v28, v30, &qword_100AE7A58, &qword_10082C640);
  v68 = &v30[*(v148 + 36)];
  *v68 = v59;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  v69 = *(v54 + 32);
  v70 = a1;
  v71 = *(a1 + v69);
  sub_10079E474();
  sub_10079C414();
  v72 = v150;
  sub_10020B3C8(v30, v150, &qword_100AE7A60, &qword_10082C648);
  v73 = (v72 + *(v153 + 36));
  v74 = v175;
  v73[4] = v174;
  v73[5] = v74;
  v73[6] = v176;
  v75 = v171;
  *v73 = v170;
  v73[1] = v75;
  v76 = v173;
  v73[2] = v172;
  v73[3] = v76;
  sub_10020B3C8(v72, v34, &qword_100AE7A68, &qword_10082C650);
  *&v34[*(v32 + 36)] = 256;
  v77 = v156;
  sub_10020B3C8(v34, v156, &qword_100AE7A70, &qword_10082C658);
  *(v77 + *(v152 + 36)) = 0;
  v78 = sub_10079C8F4();
  v79 = v166 + *(v151 + 36);
  *v79 = v78;
  *(v79 + 8) = 0;
  *(v79 + 16) = 1;
  v80 = *(sub_1001F1160(&qword_100AE7A98, &qword_10082C680) + 44);
  v81 = v157;
  sub_10000E3E8((v157 + 80), *(v157 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v82 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v82 == 2))
  {
    v83 = 1;
  }

  else
  {
    sub_1004E0B04(v158, v79 + v80, type metadata accessor for RESliderView);
    v83 = 0;
  }

  v84 = v162;
  v85 = type metadata accessor for RESliderView(0);
  v86 = 1;
  (*(*(v85 - 8) + 56))(v79 + v80, v83, 1, v85);
  v87 = sub_10079E474();
  v89 = v88;
  v90 = (v79 + *(sub_1001F1160(&qword_100AE7AA0, &qword_10082C688) + 36));
  *v90 = v87;
  v90[1] = v89;
  v91 = v166;
  sub_10020B3C8(v77, v166, &qword_100AE7A78, &qword_10082C660);
  v92 = sub_10079E474();
  v94 = v93;
  v95 = v91;
  v96 = v154;
  sub_10020B3C8(v95, v154, &qword_100AE7A80, &qword_10082C668);
  v97 = (v96 + *(v155 + 36));
  *v97 = sub_1004E1188;
  v97[1] = 0;
  v97[2] = v92;
  v97[3] = v94;
  sub_10020B3C8(v96, v168, &qword_100AE7A88, &qword_10082C670);
  if ((sub_1004D9CB0() & 1) == 0 || a5 >= a4 || a4 >= a6)
  {
    goto LABEL_26;
  }

  v98 = *(v138 + 20);
  v99 = enum case for RoundedCornerStyle.continuous(_:);
  v100 = sub_10079C9E4();
  v101 = v142;
  (*(*(v100 - 8) + 104))(&v142[v98], v99, v100);
  __asm { FMOV            V0.2D, #2.0 }

  *v101 = _Q0;
  v107 = *v70;
  if (*v70)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v108 = v107;
    v109 = v139;
    sub_10079B9A4(v139);

    v110 = v143;
    v111 = v140;
    v112 = v144;
    (*(v143 + 104))(v140, enum case for ColorScheme.dark(_:), v144);
    v113 = sub_10079BC34();
    v114 = *(v110 + 8);
    v114(v111, v112);
    v114(v109, v112);
    v115 = v146;
    if (v113)
    {
      v116 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    }

    else
    {
      v116 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
    }

    v117 = v116;
    v118 = v141;
    KeyPath = swift_getKeyPath();
    sub_1004E0B6C(v101, v115, &type metadata accessor for RoundedRectangle);
    v120 = (v115 + *(v118 + 36));
    *v120 = KeyPath;
    v120[1] = v117;
    sub_10000E3E8((v81 + 80), *(v81 + 104));
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_10079F984();
      swift_getObjectType();
      v121 = sub_10079F6D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v122 = v121 == 2;
    }

    else
    {
      v122 = 0;
    }

    v123 = v159;
    sub_10020B3C8(v115, v159, &qword_100AE7A30, &qword_10082C618);
    v124 = v123 + *(v145 + 36);
    *v124 = v122;
    *(v124 + 8) = a7;
    *(v124 + 16) = 0;
    *(v124 + 24) = v71 + -20.0;
    *(v124 + 32) = 0;
    sub_10000E3E8((v81 + 80), *(v81 + 104));
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_10079F984();
      swift_getObjectType();
      v125 = sub_10079F6D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v126 = v125 == 2;
    }

    else
    {
      v126 = 0;
    }

    v127 = v147;
    sub_10020B3C8(v159, v147, &qword_100AE7A38, &qword_10082C620);
    v128 = v127 + *(v165 + 36);
    *v128 = v126;
    *(v128 + 8) = a4;
    *(v128 + 16) = 0;
    *(v128 + 24) = 0;
    *(v128 + 32) = 1;
    sub_10020B3C8(v127, v84, &qword_100AE7A40, &qword_10082C628);
    v86 = 0;
LABEL_26:
    (*(v18 + 56))(v84, v86, 1, v165);
    v129 = v167;
    v130 = v160;
    sub_1000077D8(v167, v160, &qword_100AE7A90, &qword_10082C678);
    v131 = v168;
    v132 = v161;
    sub_1000077D8(v168, v161, &qword_100AE7A88, &qword_10082C670);
    v133 = v163;
    sub_1000077D8(v84, v163, &qword_100AE7A48, &qword_10082C630);
    v134 = v164;
    sub_1000077D8(v130, v164, &qword_100AE7A90, &qword_10082C678);
    v135 = sub_1001F1160(&qword_100AE7AA8, &qword_10082C690);
    sub_1000077D8(v132, v134 + *(v135 + 48), &qword_100AE7A88, &qword_10082C670);
    sub_1000077D8(v133, v134 + *(v135 + 64), &qword_100AE7A48, &qword_10082C630);
    sub_100007840(v84, &qword_100AE7A48, &qword_10082C630);
    sub_100007840(v131, &qword_100AE7A88, &qword_10082C670);
    sub_100007840(v129, &qword_100AE7A90, &qword_10082C678);
    sub_100007840(v133, &qword_100AE7A48, &qword_10082C630);
    sub_100007840(v132, &qword_100AE7A88, &qword_10082C670);
    return sub_100007840(v130, &qword_100AE7A90, &qword_10082C678);
  }

  type metadata accessor for ChromeStyle(0);
  sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_1004D99D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_1001F1160(&qword_100AE7AB0, &qword_10082C698);
  __chkstk_darwin(v11 - 8);
  v13 = (&v23 - v12);
  *v13 = sub_10079E474();
  v13[1] = v14;
  v15 = sub_1001F1160(&qword_100AE7AB8, &unk_10082C6A0);
  sub_1004DB408(v2, v13 + *(v15 + 44));
  v16 = *v2;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_10079B9A4(v10);

    (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
    sub_10079BC34();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    v19 = sub_10079DE54();

    KeyPath = swift_getKeyPath();
    sub_10020B3C8(v13, a1, &qword_100AE7AB0, &qword_10082C698);
    result = sub_1001F1160(&qword_100AE7A50, &qword_10082C638);
    v22 = (a1 + *(result + 36));
    *v22 = KeyPath;
    v22[1] = v19;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D9CB0()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v2 = *(v1 + 248);
  swift_getKeyPath();
  sub_100797A14();

  if (*(v1 + 280) > 1u)
  {
    goto LABEL_4;
  }

  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v3 != 2)
    {
      LOBYTE(v2) = 1;
    }
  }

  else if (!v3)
  {
LABEL_4:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

void sub_1004D9DC0(uint64_t a1, double a2)
{
  type metadata accessor for REScrubberView(0);
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
}

uint64_t sub_1004D9E38()
{
  v99 = sub_100796CF4();
  v1 = *(v99 - 8);
  __chkstk_darwin(v99);
  v3 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v81 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = *(v0 + 16);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  v103 = v14;
  v96 = sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  v97 = v15;
  sub_100797A14();
  v16 = v1;
  v17 = v8;

  v18 = *(v14 + 256);
  v19 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  v98 = v1 + 16;
  v95 = v18;
  if (v18 == v19)
  {
    sub_1007A2154();
    sub_100796C94();
    v20 = v7;
    (*(v17 + 16))(v10, v13, v7);
    type metadata accessor for BundleFinder();
    v21 = v17;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v24 = v99;
    (*(v1 + 16))(v3, v6, v99);
    v25 = sub_1007A22D4(v10, 0, 0, v23, v3, "Accessibility string indicating that content is still loading", 61, 2);
    v27 = v26;
    (*(v1 + 8))(v6, v24);
    (*(v21 + 8))(v13, v20);
    v28 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    goto LABEL_3;
  }

  sub_1007A2154();
  sub_100796C94();
  v32 = *(v17 + 16);
  v88 = v17 + 16;
  v87 = v32;
  v32(v10, v13, v7);
  type metadata accessor for BundleFinder();
  v33 = swift_getObjCClassFromMetadata();
  v86 = objc_opt_self();
  v81 = v33;
  v34 = v17;
  v35 = [v86 bundleForClass:v33];
  v36 = v99;
  v85 = *(v16 + 16);
  v85(v3, v6, v99);
  v89 = v10;
  v92 = v3;
  v37 = sub_1007A22D4(v10, 0, 0, v35, v3, "Accessibility string for percent indicator within a scrubber.", 61, 2);
  v38 = v6;
  v39 = v37;
  v28 = v40;
  v41 = *(v16 + 8);
  v93 = v38;
  v91 = v16 + 8;
  v84 = v41;
  v41(v38, v36);
  v42 = *(v34 + 8);
  v82 = v13;
  v94 = v7;
  v90 = v34 + 8;
  v83 = v42;
  v42(v13, v7);
  v43 = sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10080B690;
  KeyPath = swift_getKeyPath();
  v103 = v14;
  v46 = v14 + v97;
  sub_100797A14();

  swift_beginAccess();
  v47 = *(v14 + 320) * 100.0;
  v48 = fabs(v47);
  if (v48 > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  v48 = 0xC3E0000000000001;
  if (v47 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = 0x43E0000000000000;
  if (v47 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v44 + 56) = &type metadata for Int;
  *(v44 + 64) = &protocol witness table for Int;
  *(v44 + 32) = v47;
  v44 = sub_1007A2284();
  v46 = v49;

  v28 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  KeyPath = *(v28 + 2);
  v48 = *(v28 + 3);
  v39 = KeyPath + 1;
  if (KeyPath >= v48 >> 1)
  {
LABEL_35:
    v28 = sub_10000B3D8((v48 > 1), v39, 1, v28);
  }

  *(v28 + 2) = v39;
  v50 = &v28[16 * KeyPath];
  *(v50 + 4) = v44;
  *(v50 + 5) = v46;
  swift_getKeyPath();
  v102 = v14;
  sub_100797A14();

  swift_beginAccess();
  v51 = *(v14 + 216);
  if (v51 == _s5Books17REActionMenuStateC9pageCountSivpfi_0() || v51 < 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51 - 1;
  }

  v54 = sub_1007A06F4(v53);
  v56 = v55;
  v57 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  v58 = v95;
  if (v95 == v57 || v95 < 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = v95 - 1;
  }

  v61 = sub_1007A06F4(v60);
  v63 = v62;
  if (v58 < 1 || (v64 = v61, v100 = v54, v101 = v56, sub_1002060B4(), (sub_1007A28A4() & 1) == 0) || (v100 = v64, v101 = v63, (sub_1007A28A4() & 1) == 0))
  {

    goto LABEL_27;
  }

  v96 = v43;
  v65 = v82;
  sub_1007A2154();
  v66 = v93;
  sub_100796C94();
  v67 = v89;
  v97 = v64;
  v68 = v94;
  v87(v89, v65, v94);
  v69 = [v86 bundleForClass:v81];
  v95 = v54;
  v70 = v92;
  v71 = v99;
  v85(v92, v66, v99);
  sub_1007A22D4(v67, 0, 0, v69, v70, "An accessibility string for a page number, indicating how far along the user is in a book", 89, 2);
  v84(v66, v71);
  v83(v65, v68);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10080EFF0;
  *(v72 + 56) = &type metadata for String;
  v73 = sub_10000E4C4();
  *(v72 + 32) = v95;
  *(v72 + 40) = v56;
  *(v72 + 96) = &type metadata for String;
  *(v72 + 104) = v73;
  v74 = v97;
  *(v72 + 64) = v73;
  *(v72 + 72) = v74;
  *(v72 + 80) = v63;
  v25 = sub_1007A2224();
  v27 = v75;

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
LABEL_3:
  if (v30 >= v29 >> 1)
  {
    v28 = sub_10000B3D8((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = &v28[16 * v30];
  *(v31 + 4) = v25;
  *(v31 + 5) = v27;
LABEL_27:
  v100 = v28;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v76 = sub_1007A20B4();
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v79)
  {

    return 0;
  }

  return v76;
}

uint64_t sub_1004DA7A8()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = *(v0 + 16);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v12;
  if (Strong && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v15 = sub_10079F6D4(), swift_unknownObjectRelease(), v12 = v51, swift_unknownObjectRelease(), v15 == 2))
  {
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    v17 = v49;
    (*(v8 + 16))(v49, v12, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v20 = v50;
    (*(v2 + 16))(v50, v6, v1);
    v21 = sub_1007A22D4(v17, 0, 0, v19, v20, "An accessibility hint that a VoiceOver user can tap twice to show the table of contents", 87, 2);
    v22 = v12;
    v24 = v23;
    v48 = v2;
    (*(v2 + 8))(v6, v1);
    (*(v8 + 8))(v22, v7);
    v16 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v26 = *(v16 + 2);
    v25 = *(v16 + 3);
    if (v26 >= v25 >> 1)
    {
      v16 = sub_10000B3D8((v25 > 1), v26 + 1, 1, v16);
    }

    *(v16 + 2) = v26 + 1;
    v27 = &v16[16 * v26];
    *(v27 + 4) = v21;
    *(v27 + 5) = v24;
    v2 = v48;
    v12 = v51;
  }

  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v28 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v29 = v28 == 2, v12 = v51, v29))
  {
    sub_1007A2154();
    sub_100796C94();
    v30 = v49;
    (*(v8 + 16))(v49, v12, v7);
    type metadata accessor for BundleFinder();
    v31 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass:v31];
    v33 = v50;
    (*(v2 + 16))(v50, v6, v1);
    v34 = sub_1007A22D4(v30, 0, 0, v32, v33, "Accessibility hint informing VoiceOver users how to scrub a vertical scrubber control.", 86, 2);
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    v36 = v49;
    (*(v8 + 16))(v49, v12, v7);
    type metadata accessor for BundleFinder();
    v37 = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass:v37];
    v39 = v50;
    (*(v2 + 16))(v50, v6, v1);
    v34 = sub_1007A22D4(v36, 0, 0, v38, v39, "Accessibility hint informing VoiceOver users how to scrub a horizontal scrubber control.", 88, 2);
  }

  v40 = v34;
  v41 = v35;
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_10000B3D8(0, *(v16 + 2) + 1, 1, v16);
  }

  v43 = *(v16 + 2);
  v42 = *(v16 + 3);
  if (v43 >= v42 >> 1)
  {
    v16 = sub_10000B3D8((v42 > 1), v43 + 1, 1, v16);
  }

  *(v16 + 2) = v43 + 1;
  v44 = &v16[16 * v43];
  *(v44 + 4) = v40;
  *(v44 + 5) = v41;
  v52 = v16;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v45 = sub_1007A20B4();

  return v45;
}

uint64_t sub_1004DAE50(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  swift_unknownObjectRetain();
  LOBYTE(a2) = v5(a2, ObjectType, v3);
  swift_unknownObjectRelease();
  return a2 & 1;
}

double sub_1004DAECC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 128);
  swift_unknownObjectRetain();
  v5(a2, ObjectType, v3);

  swift_unknownObjectRelease();
  return result;
}

void sub_1004DAF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079D1D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 56);
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v10 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
    {
      v12 = v10 == enum case for AccessibilityAdjustmentDirection.increment(_:);
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(v12, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1004DB0EC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REScrubberView(0);
  v4 = *(v1 + *(v3 + 60));
  if (v4 == (sub_1004D475C() & 1))
  {
    v5 = sub_1004D4C44();
  }

  else
  {
    v5 = sub_1004D4988();
  }

  v6 = v5;
  if ((v4 ^ sub_1004D475C()))
  {
    v7 = sub_1004D4C44();
  }

  else
  {
    v7 = sub_1004D4988();
  }

  v8 = v7;
  v9 = v1[2];
  swift_getKeyPath();
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v10 = *(v9 + 320);
  v11 = sub_1004D475C();
  v12 = 1.0 - v10;
  if (((v4 ^ v11) & 1) == 0)
  {
    v12 = v10;
  }

  v13 = v12 * *(v1 + *(v3 + 28));
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  sub_1004DB258(v1, a1 + 24);
}

void sub_1004DB258(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100332414();
  sub_100206ECC();
  v4 = sub_10079D5D4();
  if (*a1)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;

    v10 = sub_10079D5A4();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_10020B430(v7, v8, v9 & 1);

    KeyPath = swift_getKeyPath();
    v18 = swift_getKeyPath();
    LOBYTE(v8) = sub_10079D2C4();
    sub_10079BBA4();
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 2;
    *(a2 + 48) = 0;
    *(a2 + 56) = v18;
    *(a2 + 64) = 0;
    *(a2 + 72) = v8;
    *(a2 + 80) = v19;
    *(a2 + 88) = v20;
    *(a2 + 96) = v21;
    *(a2 + 104) = v22;
    *(a2 + 112) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    sub_10079C474();
    __break(1u);
  }
}

uint64_t sub_1004DB408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = type metadata accessor for REScrubberView(0);
  v60 = *(v66 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v66);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AEE330, &unk_10083E850);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_1001F1160(&qword_100AE7AC0, &qword_10082C6B0);
  __chkstk_darwin(v8 - 8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = *(a1 + 16);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  Strong = swift_unknownObjectWeakLoadStrong();
  v65 = v12;
  if (!Strong)
  {
LABEL_5:
    v18 = 1;
    goto LABEL_7;
  }

  swift_getObjectType();
  sub_10079F984();
  swift_getObjectType();
  v15 = sub_10079F6D4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15 == 2)
  {
    swift_getKeyPath();
    *&v102 = v13;
    sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    v16 = *(v13 + 256);
    v17 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    v12 = v65;
    if (v16 == v17)
    {
      sub_10079BDC4();
      (*(v5 + 32))(v12, v7, v4);
      v18 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18 = 1;
  v12 = v65;
LABEL_7:
  (*(v5 + 56))(v12, v18, 1, v4);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v19 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v62 = v19 == 2;
  }

  else
  {
    v62 = 0;
  }

  v20 = v61;
  sub_1004E0B04(a1, v61, type metadata accessor for REScrubberView);
  v21 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v22 = swift_allocObject();
  sub_1004E0B6C(v20, v22 + v21, type metadata accessor for REScrubberView);
  swift_getKeyPath();
  *&v102 = v13;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  LODWORD(v61) = *(v13 + 280);
  sub_10000E3E8((v13 + 80), *(v13 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v23 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v23 == 2))
  {
    sub_1004E0DC4(&v102);
  }

  else
  {
    v24 = *(a1 + *(v66 + 60));
    v25 = sub_1004D475C();
    v60 = v22;
    if (v24 == (v25 & 1))
    {
      v26 = sub_1004D4C44();
    }

    else
    {
      v26 = sub_1004D4988();
    }

    v59 = v26;
    if ((v24 ^ sub_1004D475C()))
    {
      v27 = sub_1004D4C44();
    }

    else
    {
      v27 = sub_1004D4988();
    }

    v58 = v27;
    swift_getKeyPath();
    *&v102 = v13;
    sub_100797A14();

    swift_beginAccess();
    v28 = *(v13 + 320);
    v29 = sub_1004D475C();
    v30 = 1.0 - v28;
    if (((v24 ^ v29) & 1) == 0)
    {
      v30 = v28;
    }

    v31 = v30 * *(a1 + *(v66 + 28));
    v32 = sub_10079C8F4();
    v101 = 1;
    sub_1004DCA4C(a1, &v102);
    v75 = v110;
    v76 = v111;
    v77 = v112;
    v71 = v106;
    v72 = v107;
    v73 = v108;
    v74 = v109;
    v67 = v102;
    v68 = v103;
    v69 = v104;
    v70 = v105;
    v90 = v110;
    v91 = v111;
    v92 = v112;
    v86 = v106;
    v87 = v107;
    v88 = v108;
    v89 = v109;
    v82 = v102;
    v83 = v103;
    LOBYTE(v78) = v113;
    LOBYTE(v93) = v113;
    v84 = v104;
    v85 = v105;
    sub_1000077D8(&v67, &v97, &qword_100AE7AC8, &qword_10082C6B8);
    sub_100007840(&v82, &qword_100AE7AC8, &qword_10082C6B8);
    *&v100[135] = v75;
    *&v100[151] = v76;
    *&v100[167] = v77;
    *&v100[71] = v71;
    *&v100[87] = v72;
    *&v100[103] = v73;
    *&v100[119] = v74;
    *&v100[7] = v67;
    *&v100[23] = v68;
    *&v100[39] = v69;
    v100[183] = v78;
    *&v100[55] = v70;
    v33 = v101;
    swift_getKeyPath();
    *&v102 = v13;
    sub_100797A14();

    v34 = 0.0;
    if (*(v13 + 280) >= 2u)
    {
      v34 = 1.0;
    }

    *&v97 = v59;
    *(&v97 + 1) = v58;
    *&v98 = v31;
    *(&v98 + 1) = v32;
    *&v99[0] = 0;
    BYTE8(v99[0]) = v33;
    *(&v99[8] + 9) = *&v100[128];
    *(&v99[9] + 9) = *&v100[144];
    *(&v99[10] + 9) = *&v100[160];
    *(&v99[11] + 9) = *&v100[176];
    *(&v99[4] + 9) = *&v100[64];
    *(&v99[5] + 9) = *&v100[80];
    *(&v99[6] + 9) = *&v100[96];
    *(&v99[7] + 9) = *&v100[112];
    *(v99 + 9) = *v100;
    *(&v99[1] + 9) = *&v100[16];
    *(&v99[2] + 9) = *&v100[32];
    *(&v99[3] + 9) = *&v100[48];
    *(&v99[12] + 1) = v34;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v114 = v99[10];
    v115 = v99[11];
    v116 = v99[12];
    v110 = v99[6];
    v111 = v99[7];
    v113 = v99[9];
    v112 = v99[8];
    v106 = v99[2];
    v107 = v99[3];
    v109 = v99[5];
    v108 = v99[4];
    v102 = v97;
    v103 = v98;
    v105 = v99[1];
    v104 = v99[0];
    v12 = v65;
    v22 = v60;
  }

  if (v61)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v64;
  sub_1000077D8(v12, v64, &qword_100AE7AC0, &qword_10082C6B0);
  v79 = v114;
  v80 = v115;
  v81 = v116;
  v75 = v110;
  v76 = v111;
  v77 = v112;
  v78 = v113;
  v71 = v106;
  v72 = v107;
  v73 = v108;
  v74 = v109;
  v67 = v102;
  v68 = v103;
  v69 = v104;
  v70 = v105;
  v37 = v63;
  sub_1000077D8(v36, v63, &qword_100AE7AC0, &qword_10082C6B0);
  v38 = sub_1001F1160(&qword_100AE7AD0, &qword_10082C6C0);
  v39 = v37 + *(v38 + 48);
  *v39 = v62;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v39 + 24) = sub_1004E0D28;
  *(v39 + 32) = v22;
  *(v39 + 40) = v35;
  v40 = *(v38 + 64);
  v41 = v67;
  v42 = v68;
  v82 = v67;
  v83 = v68;
  v44 = v69;
  v43 = v70;
  v84 = v69;
  v85 = v70;
  v45 = v80;
  v94 = v79;
  v95 = v80;
  v46 = v81;
  v96 = v81;
  v47 = v75;
  v48 = v76;
  v90 = v75;
  v91 = v76;
  v50 = v77;
  v49 = v78;
  v92 = v77;
  v93 = v78;
  v51 = v71;
  v52 = v72;
  v86 = v71;
  v87 = v72;
  v54 = v73;
  v53 = v74;
  v88 = v73;
  v89 = v74;
  v55 = (v37 + v40);
  v55[12] = v79;
  v55[13] = v45;
  v55[14] = v46;
  v55[8] = v47;
  v55[9] = v48;
  v55[10] = v50;
  v55[11] = v49;
  v55[4] = v51;
  v55[5] = v52;
  v55[6] = v54;
  v55[7] = v53;
  *v55 = v41;
  v55[1] = v42;
  v55[2] = v44;
  v55[3] = v43;

  sub_1000077D8(&v82, &v97, &qword_100AE7AD8, &unk_10082C6C8);
  sub_100007840(v12, &qword_100AE7AC0, &qword_10082C6B0);
  v99[10] = v79;
  v99[11] = v80;
  v99[12] = v81;
  v99[6] = v75;
  v99[7] = v76;
  v99[8] = v77;
  v99[9] = v78;
  v99[2] = v71;
  v99[3] = v72;
  v99[4] = v73;
  v99[5] = v74;
  v97 = v67;
  v98 = v68;
  v99[0] = v69;
  v99[1] = v70;
  sub_100007840(&v97, &qword_100AE7AD8, &unk_10082C6C8);

  return sub_100007840(v36, &qword_100AE7AC0, &qword_10082C6B0);
}

uint64_t sub_1004DBE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = sub_1001F1160(&qword_100AE7AE8, &qword_10082C6E0);
  v3 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v89[-v4];
  v5 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v5 - 8);
  v105 = &v89[-v6];
  v106 = sub_10079D4D4();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1001F1160(&qword_100AE7AF0, &qword_10082C6E8);
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v95 = &v89[-v9];
  v10 = sub_1001F1160(&qword_100AEE330, &unk_10083E850);
  v96 = *(v10 - 8);
  v97 = v10;
  __chkstk_darwin(v10);
  v12 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v89[-v14];
  v16 = sub_1001F1160(&qword_100AE7AF8, &qword_10082C6F0);
  __chkstk_darwin(v16 - 8);
  v112 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v113 = &v89[-v19];
  v20 = sub_1001F1160(&qword_100AE7B00, &qword_10082C6F8);
  __chkstk_darwin(v20 - 8);
  v22 = &v89[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v89[-v24];
  v111 = a1;
  v26 = *(a1 + 16);
  sub_10000E3E8((v26 + 80), *(v26 + 104));
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v27 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v27 == 2))
  {
    (*(v3 + 56))(v25, 1, 1, v108);
  }

  else
  {
    v98 = v25;
    v99 = v22;
    v100 = v3;
    sub_1004DB0EC(&v161);
    swift_getKeyPath();
    v138[0] = v26;
    sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v28 = 1.0;
    if (*(v26 + 352))
    {
      v28 = 0.0;
    }

    v110 = v28;
    swift_getKeyPath();
    v138[0] = v26;
    sub_100797A14();

    v29 = *(v26 + 256);
    if (v29 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      sub_10079E474();
      sub_10079BE54();
      v93 = v172;
      v94 = v170;
      v91 = v175;
      v92 = v174;
      LOBYTE(v138[0]) = 1;
      LOBYTE(v130) = v171;
      LOBYTE(v159[0]) = v173;
      sub_10079BDC4();
      v30 = v138[0];
      v31 = v130;
      v90 = LOBYTE(v159[0]);
      v33 = v96;
      v32 = v97;
      v34 = *(v96 + 16);
      v34(v12, v15, v97);
      v35 = v94;
      v36 = v95;
      *v95 = 0;
      *(v36 + 8) = v30;
      *(v36 + 16) = v35;
      *(v36 + 24) = v31;
      *(v36 + 32) = v93;
      *(v36 + 40) = v90;
      v37 = v113;
      v38 = v91;
      *(v36 + 48) = v92;
      *(v36 + 56) = v38;
      v39 = sub_1001F1160(&qword_100AE7B28, &qword_10082C748);
      v34((v36 + *(v39 + 48)), v12, v32);
      v40 = *(v33 + 8);
      v40(v15, v32);
      v40(v12, v32);
      sub_10020B3C8(v36, v37, &qword_100AE7AF0, &qword_10082C6E8);
      (*(v101 + 56))(v37, 0, 1, v102);
    }

    else
    {
      (*(v101 + 56))(v113, 1, 1, v102);
    }

    v41 = (v111 + *(type metadata accessor for REScrubberView(0) + 40));
    v42 = *v41;
    v101 = v41[1];
    v102 = v42;
    v44 = v103;
    v43 = v104;
    v45 = v106;
    (*(v104 + 104))(v103, enum case for Font.TextStyle.body(_:), v106);
    v46 = sub_10079D3A4();
    v47 = v105;
    (*(*(v46 - 8) + 56))(v105, 1, 1, v46);

    sub_10079D434();
    sub_100007840(v47, &unk_100AD1FC0, &unk_10080B850);
    (*(v43 + 8))(v44, v45);
    v48 = sub_10079D384();
    v106 = v48;

    sub_1001F1160(qword_100ADC258, &unk_10081B510);
    sub_10079BDF4();
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v43) = sub_10079D2C4();
    sub_10079BBA4();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    LOBYTE(v138[0]) = 0;
    v57 = sub_10079D2E4();
    sub_10079BBA4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v112;
    sub_1000077D8(v113, v112, &qword_100AE7AF8, &qword_10082C6F0);
    v126 = v167;
    v127 = v168;
    v128 = v169;
    v122 = v163;
    v123 = v164;
    v67 = v166;
    v124 = v165;
    v125 = v166;
    v68 = v162;
    v121[0] = v161;
    v121[1] = v162;
    v69 = v168;
    v70 = v107;
    *(v107 + 6) = v167;
    *(v70 + 112) = v69;
    *(v70 + 128) = v128;
    v71 = v123;
    v72 = v124;
    v73 = v121[0];
    *(v70 + 32) = v122;
    *(v70 + 48) = v71;
    v129 = v110;
    *(v70 + 64) = v72;
    *(v70 + 80) = v67;
    *v70 = v73;
    *(v70 + 16) = v68;
    *(v70 + 144) = v129;
    v74 = sub_1001F1160(&qword_100AE7B08, &qword_10082C728);
    sub_1000077D8(v66, v70 + *(v74 + 48), &qword_100AE7AF8, &qword_10082C6F0);
    v75 = (v70 + *(v74 + 64));
    v77 = v101;
    v76 = v102;
    *&v130 = v102;
    *(&v130 + 1) = v101;
    *&v131[0] = v48;
    *(&v131[2] + 8) = v116;
    *(v131 + 8) = v114;
    *(&v131[1] + 8) = v115;
    BYTE8(v131[3]) = v43;
    *(&v131[3] + 9) = v117[0];
    HIDWORD(v131[3]) = *(v117 + 3);
    *&v132 = v50;
    *(&v132 + 1) = v52;
    *&v133 = v54;
    *(&v133 + 1) = v56;
    LOBYTE(v134) = 0;
    DWORD1(v134) = *&v119[3];
    *(&v134 + 1) = *v119;
    BYTE8(v134) = v57;
    *(&v134 + 9) = *v118;
    HIDWORD(v134) = *&v118[3];
    *&v135 = v59;
    *(&v135 + 1) = v61;
    *&v136 = v63;
    *(&v136 + 1) = v65;
    LOBYTE(v137) = 0;
    *(&v137 + 1) = *v120;
    DWORD1(v137) = *&v120[3];
    *(&v137 + 1) = 0;
    v78 = v131[0];
    *v75 = v130;
    v75[1] = v78;
    v79 = v131[1];
    v80 = v131[2];
    v81 = v132;
    v75[4] = v131[3];
    v75[5] = v81;
    v75[2] = v79;
    v75[3] = v80;
    v82 = v133;
    v83 = v134;
    v84 = v137;
    v75[9] = v136;
    v75[10] = v84;
    v85 = v135;
    v75[7] = v83;
    v75[8] = v85;
    v75[6] = v82;
    sub_1000077D8(v121, v138, &qword_100AE7B10, &qword_10082C730);
    sub_1000077D8(&v130, v138, &qword_100AE7B18, &qword_10082C738);
    sub_100007840(v113, &qword_100AE7AF8, &qword_10082C6F0);
    v139 = v114;
    v138[0] = v76;
    v138[1] = v77;
    v138[2] = v106;
    v140 = v115;
    v141 = v116;
    v142 = v43;
    *v143 = v117[0];
    *&v143[3] = *(v117 + 3);
    v144 = v50;
    v145 = v52;
    v146 = v54;
    v147 = v56;
    v148 = 0;
    *&v149[3] = *&v119[3];
    *v149 = *v119;
    v150 = v57;
    *&v151[3] = *&v118[3];
    *v151 = *v118;
    v152 = v59;
    v153 = v61;
    v154 = v63;
    v155 = v65;
    v156 = 0;
    *v157 = *v120;
    *&v157[3] = *&v120[3];
    v158 = 0;
    sub_100007840(v138, &qword_100AE7B18, &qword_10082C738);
    sub_100007840(v112, &qword_100AE7AF8, &qword_10082C6F0);
    v159[6] = v167;
    v159[7] = v168;
    v159[8] = v169;
    v159[2] = v163;
    v159[3] = v164;
    v159[4] = v165;
    v159[5] = v166;
    v159[0] = v161;
    v159[1] = v162;
    v160 = v110;
    sub_100007840(v159, &qword_100AE7B10, &qword_10082C730);
    v25 = v98;
    sub_10020B3C8(v70, v98, &qword_100AE7AE8, &qword_10082C6E0);
    (*(v100 + 56))(v25, 0, 1, v108);
    v22 = v99;
  }

  sub_1000077D8(v25, v22, &qword_100AE7B00, &qword_10082C6F8);
  v86 = v109;
  sub_1000077D8(v22, v109, &qword_100AE7B00, &qword_10082C6F8);
  v87 = v86 + *(sub_1001F1160(&qword_100AE7B20, &qword_10082C740) + 48);
  *v87 = 0;
  *(v87 + 8) = 1;
  sub_100007840(v25, &qword_100AE7B00, &qword_10082C6F8);
  return sub_100007840(v22, &qword_100AE7B00, &qword_10082C6F8);
}

uint64_t sub_1004DCA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for REScrubberView(0) + 40));
  v12 = *v11;
  v39 = v11[1];
  v40 = v12;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7);
  v13 = sub_10079D3A4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);

  sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0, &unk_10080B850);
  (*(v8 + 8))(v10, v7);
  v14 = sub_10079D384();

  sub_1001F1160(qword_100ADC258, &unk_10081B510);
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v15 = sub_10079D2C4();
  sub_10079BBA4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v58[0]) = 0;
  LOBYTE(a1) = sub_10079D2E4();
  sub_10079BBA4();
  v25 = v39;
  v24 = v40;
  *&v50 = v40;
  *(&v50 + 1) = v39;
  *&v51[0] = v14;
  *(v51 + 8) = v44;
  *(&v51[1] + 8) = v45;
  v26 = v44;
  v27 = v45;
  *(&v51[2] + 8) = v46;
  BYTE8(v51[3]) = v15;
  HIDWORD(v51[3]) = *(v47 + 3);
  *(&v51[3] + 9) = v47[0];
  *&v52 = v17;
  *(&v52 + 1) = v19;
  *&v53 = v21;
  *(&v53 + 1) = v23;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v49[3];
  *(&v54 + 1) = *v49;
  BYTE8(v54) = a1;
  HIDWORD(v54) = *&v48[3];
  *(&v54 + 9) = *v48;
  *&v55 = v28;
  *(&v55 + 1) = v29;
  *&v56 = v30;
  *(&v56 + 1) = v31;
  v42[167] = 0;
  *&v42[151] = v56;
  *&v42[135] = v55;
  *&v42[119] = v54;
  *&v42[39] = v51[1];
  *&v42[23] = v51[0];
  *&v42[7] = v50;
  *&v42[103] = v53;
  *&v42[87] = v52;
  *&v42[71] = v51[3];
  *&v42[55] = v51[2];
  v32 = *&v42[96];
  *(a2 + 121) = *&v42[112];
  v33 = *&v42[144];
  *(a2 + 137) = *&v42[128];
  *(a2 + 153) = v33;
  v34 = *&v42[32];
  *(a2 + 57) = *&v42[48];
  v35 = *&v42[80];
  *(a2 + 73) = *&v42[64];
  *(a2 + 89) = v35;
  *(a2 + 105) = v32;
  v36 = *&v42[16];
  *(a2 + 9) = *v42;
  v43 = 1;
  v57 = 0;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 169) = *&v42[160];
  *(a2 + 25) = v36;
  *(a2 + 41) = v34;
  v58[0] = v24;
  v58[1] = v25;
  v58[2] = v14;
  v59 = v26;
  v60 = v27;
  v61 = v46;
  v62 = v15;
  *v63 = v47[0];
  *&v63[3] = *(v47 + 3);
  v64 = v17;
  v65 = v19;
  v66 = v21;
  v67 = v23;
  v68 = 0;
  *&v69[3] = *&v49[3];
  *v69 = *v49;
  v70 = a1;
  *&v71[3] = *&v48[3];
  *v71 = *v48;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v76 = 0;
  sub_1000077D8(&v50, &v41, &qword_100AE7AE0, &qword_10082C6D8);
  return sub_100007840(v58, &qword_100AE7AE0, &qword_10082C6D8);
}

void sub_1004DCEFC(char *a1@<X8>)
{
  v3 = *(type metadata accessor for REScrubberView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1004D81A0(v4, a1);
}

void sub_1004DCF70()
{
  v1 = *(type metadata accessor for REScrubberView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1004D8300(v2);
}

void sub_1004DCFD0(unsigned __int8 a1, double a2, double a3, double a4)
{
  v9 = *(type metadata accessor for REScrubberView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_1004D4E40(a1, v10, a2, a3, a4);
}

uint64_t sub_1004DD068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE7950, &qword_10082C438);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1001F1160(&qword_100AE7958, &qword_10082C440);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if (sub_1004D9CB0())
  {
    sub_1004DD3F4(v7);
    sub_10020B3C8(v7, v13, &qword_100AE7950, &qword_10082C438);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  v14 = sub_10079DDC4();
  KeyPath = swift_getKeyPath();
  sub_10000E3E8((*(a1 + 16) + 80), *(*(a1 + 16) + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v16 = type metadata accessor for REScrubberView(0);
  type metadata accessor for REScrubberView(0);
  v17 = (a1 + *(v16 + 52));
  v18 = *v17;
  v19 = v17[1];
  v29 = v18;
  v30 = v19;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  sub_10003E25C(v13, v10);
  sub_10003E25C(v10, a2);
  v20 = (a2 + *(sub_1001F1160(&qword_100AE7960, &unk_10082C480) + 48));
  *&v28[0] = KeyPath;
  *(&v28[0] + 1) = v14;
  v21 = v26;
  v28[2] = v26;
  v28[3] = v27;
  v22 = v25;
  v28[1] = v25;
  v23 = v27;
  *v20 = v28[0];
  v20[1] = v22;
  v20[2] = v21;
  v20[3] = v23;
  sub_1000077D8(v28, &v29, &qword_100AD4CA8, &qword_10080EEF0);
  sub_100007840(v13, &qword_100AE7958, &qword_10082C440);
  v29 = KeyPath;
  v30 = v14;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  sub_100007840(&v29, &qword_100AD4CA8, &qword_10080EEF0);
  return sub_100007840(v10, &qword_100AE7958, &qword_10082C440);
}

uint64_t sub_1004DD3F4@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = type metadata accessor for REScrubberView(0);
  v66 = *(v2 - 8);
  __chkstk_darwin(v2);
  v67 = v3;
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1001F1160(&qword_100AE7968, &qword_10082C490);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = &v63 - v4;
  v6 = sub_1001F1160(&qword_100AE7970, &qword_10082C498);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v65 = sub_1001F1160(&qword_100AE7978, &qword_10082C4A0);
  __chkstk_darwin(v65);
  v13 = (&v63 - v12);
  v14 = *(v1 + 16);
  sub_10000E3E8((v14 + 80), *(v14 + 104));
  v15 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v16 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = v1;
    if (v16 == 2)
    {
      v18 = *(v1 + *(v2 + 28));
      swift_getKeyPath();
      *&v71 = v14;
      sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A14();

      swift_beginAccess();
      v19 = v18 * *(v14 + 320) - v18 * 0.5;
      v20 = (v1 + *(v2 + 56));
      v21 = *v20;
      v22 = v20[1];
      *&v71 = v21;
      *(&v71 + 1) = v22;
      sub_1001F1160(&qword_100AD7168, &qword_100813F20);
      sub_10079DFF4();
      if ((v18 - v70) * 0.5 >= v19)
      {
        v15 = v19;
      }

      else
      {
        v15 = (v18 - v70) * 0.5;
      }
    }
  }

  else
  {
    v17 = v1;
  }

  *v13 = sub_10079E474();
  v13[1] = v23;
  swift_getKeyPath();
  *&v71 = v14;
  sub_1004E0E88(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v24 = 1;
  v25 = v64;
  if (*(v14 + 280) == 1)
  {
    *v5 = sub_10079CB24();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v26 = sub_1001F1160(&qword_100AE79E8, &qword_10082C520);
    sub_1004DDC14(v17, &v5[*(v26 + 44)]);
    v27 = sub_10079D2C4();
    sub_10079BBA4();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v5[*(sub_1001F1160(&qword_100AE79F0, &qword_10082C528) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = sub_10079D2F4();
    sub_10079BBA4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v5[*(sub_1001F1160(&qword_100AE79F8, &unk_10082C530) + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_10079E474();
    v48 = &v5[*(v25 + 36)];
    *v48 = sub_1004E1188;
    v48[1] = 0;
    v48[2] = v47;
    v48[3] = v49;
    sub_10020B3C8(v5, v11, &qword_100AE7968, &qword_10082C490);
    v24 = 0;
  }

  (*(v63 + 56))(v11, v24, 1, v25);
  v50 = v13 + *(sub_1001F1160(&qword_100AE7980, &qword_10082C4A8) + 44);
  sub_1000077D8(v11, v8, &qword_100AE7970, &qword_10082C498);
  *v50 = 1;
  v51 = sub_1001F1160(&qword_100AE7988, &qword_10082C4B0);
  sub_1000077D8(v8, &v50[*(v51 + 48)], &qword_100AE7970, &qword_10082C498);
  sub_100007840(v11, &qword_100AE7970, &qword_10082C498);
  sub_100007840(v8, &qword_100AE7970, &qword_10082C498);
  KeyPath = swift_getKeyPath();
  v53 = v13 + *(sub_1001F1160(&qword_100AE7990, &qword_10082C4E8) + 36);
  *v53 = KeyPath;
  *(v53 + 1) = 1;
  v53[16] = 0;
  sub_10079E474();
  sub_10079BE54();
  v54 = (v13 + *(v65 + 36));
  v55 = v72;
  *v54 = v71;
  v54[1] = v55;
  v54[2] = v73;
  sub_10079E414();
  sub_1001F1160(&qword_100AE7998, &qword_10082C4F0);
  sub_1001F1160(&qword_100AE79A0, &qword_10082C4F8);
  sub_1004E0540();
  sub_1004E06B0();
  sub_1004E0768();
  v56 = v69;
  sub_10079DC54();
  sub_100007840(v13, &qword_100AE7978, &qword_10082C4A0);
  v57 = v56 + *(sub_1001F1160(&qword_100AE79D8, &qword_10082C510) + 36);
  *v57 = 0;
  *(v57 + 8) = v15;
  *(v56 + *(sub_1001F1160(&qword_100AE79E0, &qword_10082C518) + 36)) = 256;
  v58 = v68;
  sub_1004E0B04(v17, v68, type metadata accessor for REScrubberView);
  v59 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v60 = swift_allocObject();
  sub_1004E0B6C(v58, v60 + v59, type metadata accessor for REScrubberView);
  result = sub_1001F1160(&qword_100AE7950, &qword_10082C438);
  v62 = (v56 + *(result + 36));
  *v62 = sub_1004E0820;
  v62[1] = v60;
  return result;
}

uint64_t sub_1004DDC14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v110 = sub_10079E534();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1001F1160(&qword_100ADC228, &qword_10081B490);
  __chkstk_darwin(v106);
  v113 = &v102 - v7;
  v111 = sub_1001F1160(&qword_100AE7A00, &qword_10082C540);
  __chkstk_darwin(v111);
  v114 = &v102 - v8;
  v112 = sub_1001F1160(&qword_100AE7A08, &qword_10082C548);
  __chkstk_darwin(v112);
  v116 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v102 - v11;
  __chkstk_darwin(v12);
  v115 = &v102 - v13;
  v133 = sub_10079BC44();
  v14 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = (&v102 - v17);
  sub_100009864(*(a1 + 16) + 80, &v135);
  sub_10000E3E8(&v135, *(&v136 + 1));
  sub_100341270(0, 255, 0, 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v18 = sub_10079F964();
    v20 = v19;
    swift_unknownObjectRelease();
    sub_1000074E0(&v135);
  }

  else
  {
    sub_1000074E0(&v135);
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *&v135 = v18;
  *(&v135 + 1) = v20;
  v103 = sub_100206ECC();
  v21 = sub_10079D5D4();
  v128 = v22;
  v129 = v21;
  v123 = v23;
  v130 = v24;
  v25 = a1;
  v26 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v26;
    v28 = v131;
    sub_10079B9A4(v131);

    v29 = *(v14 + 104);
    v31 = v132;
    v30 = v133;
    v120 = enum case for ColorScheme.light(_:);
    v118 = v29;
    v119 = v14 + 104;
    v29(v132);
    v32 = sub_10079BC34();
    v33 = *(v14 + 8);
    v33(v31, v30);
    v121 = v33;
    v122 = v14 + 8;
    v33(v28, v30);
    if (v32)
    {
      v34 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v34 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v127 = v34;
    v35 = v25;

    KeyPath = swift_getKeyPath();

    sub_10079D3F4();
    v125 = sub_10079D464();

    v124 = swift_getKeyPath();
    v123 &= 1u;
    v192 = v123;
    v105 = swift_allocObject();
    *(v105 + 16) = 0;
    v36 = sub_10079E474();
    v38 = v37;
    v39 = sub_10079C8F4();
    LOBYTE(v172[0]) = 0;
    sub_1004DEA2C(v35, &v135);
    v163 = v138;
    v164 = v139;
    v165 = v140;
    v160 = v135;
    v161 = v136;
    v162 = v137;
    v167 = v140;
    v166[2] = v137;
    v166[3] = v138;
    v166[4] = v139;
    v166[0] = v135;
    v166[1] = v136;
    sub_1000077D8(&v160, v134, &qword_100AE7A10, &qword_10082C5C8);
    sub_100007840(v166, &qword_100AE7A10, &qword_10082C5C8);
    *(&v159[2] + 7) = v162;
    *(&v159[3] + 7) = v163;
    *(&v159[4] + 7) = v164;
    *(&v159[5] + 7) = v165;
    *(v159 + 7) = v160;
    *(&v159[1] + 7) = v161;
    v40 = v172[0];
    type metadata accessor for REScrubberView(0);
    sub_10079E474();
    sub_10079BE54();
    *&v168 = v36;
    *(&v168 + 1) = v38;
    v169 = v39;
    v170 = 0;
    LOBYTE(v171[0]) = v40;
    *(&v171[2] + 1) = v159[2];
    *(&v171[3] + 1) = v159[3];
    *(&v171[4] + 1) = v159[4];
    *(v171 + 1) = v159[0];
    *(&v171[1] + 1) = v159[1];
    v171[8] = *&v134[32];
    v171[7] = *&v134[16];
    v171[5] = *(&v159[4] + 15);
    v171[6] = *v134;
    v187 = *v134;
    v188 = *&v134[16];
    v189 = *&v134[32];
    v183 = v171[2];
    v184 = v171[3];
    v186 = *(&v159[4] + 15);
    v185 = v171[4];
    v179 = v168;
    v180 = v39;
    v182 = v171[1];
    v181 = v171[0];
    v176 = v159[2];
    v177 = v159[3];
    *v178 = v159[4];
    v174 = v159[0];
    v172[0] = v36;
    v172[1] = v38;
    v172[2] = v39;
    v172[3] = 0;
    v173 = v40;
    v175 = v159[1];
    *&v178[63] = *&v134[32];
    *&v178[47] = *&v134[16];
    *&v178[15] = *(&v159[4] + 15);
    *&v178[31] = *v134;
    sub_1000077D8(&v168, &v135, &qword_100AE7A18, &qword_10082C5D0);
    sub_100007840(v172, &qword_100AE7A18, &qword_10082C5D0);
    v104 = sub_10079D2E4();
    sub_10079BBA4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v193 = 0;
    *&v135 = sub_1004DEE6C();
    *(&v135 + 1) = v49;
    v50 = sub_10079D5D4();
    v52 = v51;
    v54 = v53;
    v103 = v55;
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = v27;
    v57 = v131;
    sub_10079B9A4(v131);

    v59 = v132;
    v58 = v133;
    v118(v132, v120, v133);
    v60 = sub_10079BC34();
    v61 = v121;
    v121(v59, v58);
    v61(v57, v58);
    if (v60)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    sub_10079DE24();

    v62 = sub_10079D564();
    v64 = v63;
    v66 = v65;
    v102 = v67;

    sub_10020B430(v50, v52, v54 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v56;
    v69 = v131;
    sub_10079B9A4(v131);

    v71 = v132;
    v70 = v133;
    v118(v132, v120, v133);
    v72 = sub_10079BC34();

    v73 = v71;
    v74 = v121;
    v121(v73, v70);
    v74(v69, v70);
    v76 = v107;
    v75 = v108;
    v77 = &enum case for BlendMode.plusDarker(_:);
    if ((v72 & 1) == 0)
    {
      v77 = &enum case for BlendMode.plusLighter(_:);
    }

    v78 = v110;
    (*(v108 + 104))(v107, *v77, v110);
    v79 = v113;
    (*(v75 + 32))(&v113[*(v106 + 36)], v76, v78);
    *v79 = v62;
    *(v79 + 1) = v64;
    v79[16] = v66 & 1;
    *(v79 + 3) = v102;
    sub_10079D354();
    sub_10079D3D4();
    sub_10079D464();

    v80 = sub_10079D364();

    v81 = swift_getKeyPath();
    v82 = v79;
    v83 = v114;
    sub_10020B3C8(v82, v114, &qword_100ADC228, &qword_10081B490);
    v84 = (v83 + *(v111 + 36));
    *v84 = v81;
    v84[1] = v80;
    LOBYTE(v80) = sub_10079D2E4();
    sub_10079BBA4();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v109;
    sub_10020B3C8(v83, v109, &qword_100AE7A00, &qword_10082C540);
    v94 = v93 + *(v112 + 36);
    *v94 = v80;
    *(v94 + 8) = v86;
    *(v94 + 16) = v88;
    *(v94 + 24) = v90;
    *(v94 + 32) = v92;
    *(v94 + 40) = 0;
    v95 = v115;
    sub_10020B3C8(v93, v115, &qword_100AE7A08, &qword_10082C548);
    v96 = v116;
    sub_1000077D8(v95, v116, &qword_100AE7A08, &qword_10082C548);
    *v134 = v129;
    *&v134[8] = v128;
    v134[16] = v123;
    *&v134[17] = *v191;
    *&v134[20] = *&v191[3];
    *&v134[24] = v130;
    v134[32] = 1;
    *&v134[33] = *v190;
    *&v134[36] = *&v190[3];
    *&v134[40] = KeyPath;
    *&v134[48] = v127;
    *&v134[56] = v124;
    *&v134[64] = v125;
    *&v134[200] = v186;
    *&v134[216] = v187;
    *&v134[232] = v188;
    *&v134[248] = v189;
    *&v134[136] = v182;
    *&v134[152] = v183;
    *&v134[168] = v184;
    *&v134[184] = v185;
    *&v134[88] = v179;
    *&v134[104] = v180;
    v97 = v105;
    *&v134[72] = sub_10047DA08;
    *&v134[80] = v105;
    *&v134[120] = v181;
    v98 = v104;
    v134[264] = v104;
    *&v134[265] = v194[0];
    *&v134[268] = *(v194 + 3);
    *&v134[272] = v42;
    *&v134[280] = v44;
    *&v134[288] = v46;
    *&v134[296] = v48;
    v134[304] = 0;
    v99 = v117;
    memcpy(v117, v134, 0x131uLL);
    v100 = sub_1001F1160(&qword_100AE7A20, &qword_10082C5D8);
    sub_1000077D8(v96, v99 + *(v100 + 48), &qword_100AE7A08, &qword_10082C548);
    sub_1000077D8(v134, &v135, &qword_100AE7A28, &unk_10082C5E0);
    sub_100007840(v95, &qword_100AE7A08, &qword_10082C548);
    sub_100007840(v96, &qword_100AE7A08, &qword_10082C548);
    v148 = v186;
    v149 = v187;
    v150 = v188;
    v151 = v189;
    v144 = v182;
    v145 = v183;
    v146 = v184;
    v147 = v185;
    v141 = v179;
    v142 = v180;
    *&v135 = v129;
    *(&v135 + 1) = v128;
    LOBYTE(v136) = v123;
    *(&v136 + 1) = *v191;
    DWORD1(v136) = *&v191[3];
    *(&v136 + 1) = v130;
    LOBYTE(v137) = 1;
    *(&v137 + 1) = *v190;
    DWORD1(v137) = *&v190[3];
    *(&v137 + 1) = KeyPath;
    *&v138 = v127;
    *(&v138 + 1) = v124;
    *&v139 = v125;
    *(&v139 + 1) = sub_10047DA08;
    v140 = v97;
    v143 = v181;
    v152 = v98;
    *v153 = v194[0];
    *&v153[3] = *(v194 + 3);
    v154 = v42;
    v155 = v44;
    v156 = v46;
    v157 = v48;
    v158 = 0;
    return sub_100007840(&v135, &qword_100AE7A28, &unk_10082C5E0);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DEA2C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v33[-v9];
  sub_1001F1160(&qword_100ADBD40, &qword_10081A5B0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10080EFF0;
  v11 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_10079B9A4(v10);

    v13 = *(v5 + 104);
    v34 = enum case for ColorScheme.light(_:);
    v35 = v13;
    v13(v7);
    v14 = sub_10079BC34();
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v10, v4);
    if (v14)
    {
      v16 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v16 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v17 = v16;

    *(v37 + 32) = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v12;
    sub_10079B9A4(v10);

    v35(v7, v34, v4);
    v19 = sub_10079BC34();
    v15(v7, v4);
    v15(v10, v4);
    if (v19)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v20 = v36;

    v21 = sub_10079DE24();

    *(v37 + 40) = v21;
    sub_10079E644();
    sub_10079E654();
    sub_10079E364();
    sub_10079BFE4();
    sub_10079E474();
    sub_10079BE54();
    v22 = v45;
    v39[2] = v45;
    v23 = v47;
    v24 = v47;
    v25 = v46;
    v26 = v46;
    v39[3] = v46;
    v39[4] = v47;
    *(v20 + 32) = v45;
    *(v20 + 48) = v25;
    *(v20 + 64) = v23;
    v27 = v44;
    v28 = v44;
    v29 = v43;
    v39[0] = v43;
    v39[1] = v44;
    *v20 = v43;
    *(v20 + 16) = v27;
    v30 = v48;
    v31 = v48;
    *(v20 + 80) = v48;
    v40 = v30;
    v42 = v31;
    v41[3] = v26;
    v41[4] = v24;
    v41[1] = v28;
    v41[2] = v22;
    v41[0] = v29;
    sub_1000077D8(v39, &v38, &qword_100ADBD50, &qword_10081A5C0);
    return sub_100007840(v41, &qword_100ADBD50, &qword_10081A5C0);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1004E0E88(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DEE6C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v25[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v25[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v15, v3, "Format string for a page number", 31, 2);
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080B690;
  v17 = sub_100341270(0, 255, 0, 1);
  if (v17 == _s5Books17REActionMenuStateC9pageCountSivpfi_0() || v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 - 1;
  }

  v20 = sub_1007A06F4(v19);
  v22 = v21;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000E4C4();
  *(v16 + 32) = v20;
  *(v16 + 40) = v22;
  v23 = sub_1007A2224();

  return v23;
}

uint64_t sub_1004DF194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1001F1160(&qword_100AE7998, &qword_10082C4F0) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_10079C9E4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1001F1160(&unk_100AE42C0, &qword_100815B20) + 36)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AE7978, &qword_10082C4A0);
}

uint64_t sub_1004DF260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_1001F1160(&qword_100AE79A0, &qword_10082C4F8) + 36));
  v5 = *(sub_10079C3D4() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_10079C9E4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  *&v4[*(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)] = 256;
  return sub_1000077D8(a1, a2, &qword_100AE7978, &qword_10082C4A0);
}

uint64_t sub_1004DF348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22[1] = a3;
  v7 = sub_1007A1C54();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1007A1CA4();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REScrubberView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = *a1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v17 = sub_1007A2D74();
  sub_1004E0B04(a2, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for REScrubberView);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  sub_1004E0B6C(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for REScrubberView);
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004E0E88(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v20);

  (*(v26 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v25);
}

void sub_1004DF704(uint64_t a1, double a2)
{
  type metadata accessor for REScrubberView(0);
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
}

void sub_1004DF77C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = UIAccessibilityAnnouncementNotification;
  v5 = sub_1007A2214();
  UIAccessibilityPostNotification(v4, v5);

  [a1 invalidate];
  v6 = qword_100AE7770;
  qword_100AE7770 = 0;
}

uint64_t sub_1004DF7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v43 = a3;
  v42 = sub_1001F1160(&qword_100AE7B60, &qword_10082C8E8) - 8;
  __chkstk_darwin(v42);
  v39 = &v36 - v4;
  v40 = sub_1001F1160(&qword_100AE7B68, &qword_10082C8F0) - 8;
  __chkstk_darwin(v40);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v37 = &v36 - v10;
  v11 = sub_1001F1160(&qword_100AE7B70, &qword_10082C8F8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = sub_1001F1160(&qword_100AE7B78, &qword_10082C900);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v24 = sub_1001F1160(&qword_100AE7B80, &qword_10082C908);
  v25 = *(*(v24 - 8) + 16);
  v25(v14, a1, v24);
  v26 = (v38 & 1) == 0;
  if (v38)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  *&v14[*(v12 + 44)] = v27;
  if (v26)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  sub_10020B3C8(v14, v20, &qword_100AE7B70, &qword_10082C8F8);
  *&v20[*(v16 + 44)] = 0x3FF0000000000000;
  sub_10020B3C8(v20, v23, &qword_100AE7B78, &qword_10082C900);
  v29 = v39;
  v25(v39, a1, v24);
  *(v29 + *(v42 + 44)) = 1;
  sub_10020B3C8(v29, v8, &qword_100AE7B60, &qword_10082C8E8);
  *&v8[*(v40 + 44)] = v28;
  v30 = v37;
  sub_10020B3C8(v8, v37, &qword_100AE7B68, &qword_10082C8F0);
  v31 = v36;
  sub_1000077D8(v23, v36, &qword_100AE7B78, &qword_10082C900);
  v32 = v41;
  sub_1000077D8(v30, v41, &qword_100AE7B68, &qword_10082C8F0);
  v33 = v43;
  sub_1000077D8(v31, v43, &qword_100AE7B78, &qword_10082C900);
  v34 = sub_1001F1160(&qword_100AE7B88, &qword_10082C910);
  sub_1000077D8(v32, v33 + *(v34 + 48), &qword_100AE7B68, &qword_10082C8F0);
  sub_100007840(v30, &qword_100AE7B68, &qword_10082C8F0);
  sub_100007840(v23, &qword_100AE7B78, &qword_10082C900);
  sub_100007840(v32, &qword_100AE7B68, &qword_10082C8F0);
  return sub_100007840(v31, &qword_100AE7B78, &qword_10082C900);
}

uint64_t sub_1004DFC18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  *a2 = sub_10079E484();
  a2[1] = v6;
  v7 = sub_1001F1160(&qword_100AE7B50, &qword_10082C8D8);
  sub_1004DF7FC(a1, v5, a2 + *(v7 + 44));
  result = sub_1001F1160(&qword_100AE7B58, &qword_10082C8E0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1004DFCBC()
{
  result = qword_100AE78C8;
  if (!qword_100AE78C8)
  {
    sub_1001F1234(&qword_100AE7858, &qword_10082C268);
    sub_1004DFD74();
    sub_100005920(&qword_100AE78E0, &qword_100AE78E8, &qword_10082C360, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78C8);
  }

  return result;
}

unint64_t sub_1004DFD74()
{
  result = qword_100AE78D0;
  if (!qword_100AE78D0)
  {
    sub_1001F1234(&qword_100AE7850, &qword_10082C260);
    sub_100005920(&qword_100AE78D8, &qword_100AE7848, &qword_10082C258, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78D0);
  }

  return result;
}

unint64_t sub_1004DFE44()
{
  result = qword_100AE78F0;
  if (!qword_100AE78F0)
  {
    sub_1001F1234(&qword_100AE7870, &qword_10082C280);
    sub_1004DFED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78F0);
  }

  return result;
}

unint64_t sub_1004DFED0()
{
  result = qword_100AE78F8;
  if (!qword_100AE78F8)
  {
    sub_1001F1234(&qword_100AE7868, &qword_10082C278);
    sub_1001F1234(&qword_100AE7858, &qword_10082C268);
    sub_10079CCC4();
    sub_1004DFCBC();
    sub_1004E0E88(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE7900, &qword_100AE7908, &unk_10082C368, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE78F8);
  }

  return result;
}

unint64_t sub_1004E0014()
{
  result = qword_100AE7910;
  if (!qword_100AE7910)
  {
    sub_1001F1234(&qword_100AE7888, &qword_10082C298);
    sub_1004E00A0();
    sub_1004E0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7910);
  }

  return result;
}

unint64_t sub_1004E00A0()
{
  result = qword_100AE7918;
  if (!qword_100AE7918)
  {
    sub_1001F1234(&qword_100AE7880, &qword_10082C290);
    sub_1001F1234(&qword_100AE7870, &qword_10082C280);
    sub_1004DFE44();
    swift_getOpaqueTypeConformance2();
    sub_1004E0E88(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7918);
  }

  return result;
}

unint64_t sub_1004E0198()
{
  result = qword_100AE7920;
  if (!qword_100AE7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7920);
  }

  return result;
}

void sub_1004E02D8(uint64_t a1)
{
  v3 = *(type metadata accessor for REScrubberView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1004DAF4C(a1, v4);
}

unint64_t sub_1004E0348()
{
  result = qword_100AE7930;
  if (!qword_100AE7930)
  {
    sub_1001F1234(&qword_100AE78A0, &qword_10082C2B0);
    sub_1004E03D4();
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7930);
  }

  return result;
}

unint64_t sub_1004E03D4()
{
  result = qword_100AE7938;
  if (!qword_100AE7938)
  {
    sub_1001F1234(&qword_100AE7898, &qword_10082C2A8);
    sub_1004E048C(&qword_100AE7940, &qword_100AE7890, &qword_10082C2A0, sub_1004E0014);
    sub_1004604F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7938);
  }

  return result;
}

uint64_t sub_1004E048C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_1004E0E88(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004E0540()
{
  result = qword_100AE79A8;
  if (!qword_100AE79A8)
  {
    sub_1001F1234(&qword_100AE7978, &qword_10082C4A0);
    sub_1004E05CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79A8);
  }

  return result;
}

unint64_t sub_1004E05CC()
{
  result = qword_100AE79B0;
  if (!qword_100AE79B0)
  {
    sub_1001F1234(&qword_100AE7990, &qword_10082C4E8);
    sub_100005920(&qword_100AE79B8, &qword_100AE79C0, &unk_10082C500, &protocol conformance descriptor for ZStack<A>);
    sub_100005920(&qword_100ADC1A8, &qword_100ADC1B0, &qword_10081BAB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79B0);
  }

  return result;
}

unint64_t sub_1004E06B0()
{
  result = qword_100AE79C8;
  if (!qword_100AE79C8)
  {
    sub_1001F1234(&qword_100AE7998, &qword_10082C4F0);
    sub_1004E0540();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0, &qword_100815B20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79C8);
  }

  return result;
}

unint64_t sub_1004E0768()
{
  result = qword_100AE79D0;
  if (!qword_100AE79D0)
  {
    sub_1001F1234(&qword_100AE79A0, &qword_10082C4F8);
    sub_1004E0540();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE79D0);
  }

  return result;
}

uint64_t sub_1004E08F4()
{
  v1 = (type metadata accessor for REScrubberView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258, &unk_10081B510);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1004E0A64(uint64_t (*a1)(unint64_t, __n128))
{
  v2 = *(type metadata accessor for REScrubberView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4.n128_u64[0] = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1004E0B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E0B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E0BD4()
{
  v1 = (type metadata accessor for REScrubberView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258, &unk_10081B510);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1004E0D40(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for REScrubberView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1004E0DC4(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
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

double sub_1004E0DEC()
{
  v1 = *(type metadata accessor for REScrubberView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1004D544C(v0 + v2, v4, v5);
}

uint64_t sub_1004E0E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004E0F00()
{
  result = qword_100AE7B38;
  if (!qword_100AE7B38)
  {
    sub_1001F1234(&qword_100AE7948, &qword_10082C3D8);
    sub_1004E0F8C();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B38);
  }

  return result;
}

unint64_t sub_1004E0F8C()
{
  result = qword_100AE7B40;
  if (!qword_100AE7B40)
  {
    sub_1001F1234(&qword_100AE78B0, &unk_10082C2C0);
    sub_1004E048C(&qword_100AE7B48, &qword_100AE78A8, &qword_10082C2B8, sub_1004E0348);
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B40);
  }

  return result;
}

unint64_t sub_1004E108C()
{
  result = qword_100AE7B90;
  if (!qword_100AE7B90)
  {
    sub_1001F1234(&qword_100AE7B58, &qword_10082C8E0);
    sub_100005920(&qword_100AE7B98, &qword_100AE7BA0, &qword_10082C918, &protocol conformance descriptor for ZStack<A>);
    sub_100005920(&qword_100AE7BA8, &unk_100AE7BB0, &qword_10082C920, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7B90);
  }

  return result;
}

uint64_t sub_1004E1194()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7BC0);
  sub_100008B98(v0, qword_100AE7BC0);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

void *sub_1004E1298()
{
  v1 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v1 - 8);
  v65 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100796CF4();
  v3 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = v52 - v6;
  v71 = sub_1007A21D4();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v52 - v10;
  v12 = type metadata accessor for BookReaderActionTarget();
  v73 = v0;
  v76.receiver = v0;
  v76.super_class = v12;
  v13 = objc_msgSendSuper2(&v76, "keyCommands");
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v13;
    sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
    v14 = sub_1007A25E4();
  }

  v77 = v14;
  v66 = OBJC_IVAR____TtC5Books22BookReaderActionTarget_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = "books_pageBackward:";
  v18 = "books_pageForward:";
  if (Strong)
  {
    swift_getObjectType();
    v19 = sub_1007A1364();
    swift_unknownObjectRelease();
    v17 = "books_pageBackward:";
    v18 = "books_pageForward:";
    if (v19)
    {
      v18 = "books_lineForward:";
      v17 = "books_lineBackward:";
    }
  }

  v52[3] = v18;
  v60 = "books_pageForward:";
  v62 = v17;
  v64 = "books_pageBackward:";
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10081F2E0;
  sub_1007A2154();
  v20 = v69;
  sub_100796C94();
  v21 = *(v7 + 16);
  v22 = v68;
  v23 = v71;
  v59 = v7 + 16;
  v58 = v21;
  v21(v68, v11, v71);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = objc_opt_self();
  v57 = ObjCClassFromMetadata;
  v25 = [v56 bundleForClass:ObjCClassFromMetadata];
  v26 = v70;
  v27 = v72;
  v55 = *(v3 + 16);
  v55(v70, v20, v72);
  v52[2] = sub_1007A22D4(v22, 0, 0, v25, v26, "'Next Page' action", 18, 2);
  v52[1] = v28;
  v29 = *(v3 + 8);
  v63 = v3 + 8;
  v54 = v29;
  v29(v20, v27);
  v30 = *(v7 + 8);
  v61 = v7 + 8;
  v53 = v30;
  v30(v11, v23);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v65;
    sub_1004A79C8(v65);
    swift_unknownObjectRelease();
    sub_10029819C(v31);
  }

  v32 = sub_1007A0CE4();
  v34 = v33;
  if (v32 == sub_1007A0CE4() && v34 == v35)
  {
  }

  else
  {
    sub_1007A3AB4();
  }

  sub_1007A2254();
  sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  v74 = 0u;
  v75 = 0u;
  v36 = sub_1007A2964();
  [v36 setWantsPriorityOverSystemBehavior:1];
  v37 = inited;
  *(inited + 32) = v36;
  v74 = 0u;
  v75 = 0u;
  *(v37 + 40) = sub_1007A2964();
  sub_1007A2254();
  v74 = 0u;
  v75 = 0u;
  *(v37 + 48) = sub_1007A2964();
  sub_1007A2154();
  v38 = v69;
  sub_100796C94();
  v39 = v68;
  v40 = v71;
  v58(v68, v11, v71);
  v41 = [v56 bundleForClass:v57];
  v42 = v70;
  v43 = v72;
  v55(v70, v38, v72);
  sub_1007A22D4(v39, 0, 0, v41, v42, "'Previous Page' action", 22, 2);
  v54(v38, v43);
  v53(v11, v40);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = v65;
    sub_1004A79C8(v65);
    swift_unknownObjectRelease();
    sub_10029819C(v44);
  }

  v45 = sub_1007A0CE4();
  v47 = v46;
  if (v45 == sub_1007A0CE4() && v47 == v48)
  {
  }

  else
  {
    sub_1007A3AB4();
  }

  sub_1007A2254();
  v74 = 0u;
  v75 = 0u;
  v49 = sub_1007A2964();
  [v49 setWantsPriorityOverSystemBehavior:1];
  v50 = inited;
  *(inited + 56) = v49;
  v74 = 0u;
  v75 = 0u;
  *(v50 + 64) = sub_1007A2964();
  sub_1007A2254();
  v74 = 0u;
  v75 = 0u;
  *(v50 + 72) = sub_1007A2964();
  sub_100484B7C(v50);
  return v77;
}

uint64_t sub_1004E1DA8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1007A0404();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = a1;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    a4();
    sub_1006AD160(v10);

    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
  }

  return sub_100007840(v14, &unk_100AD5B40, &unk_100811300);
}

double sub_1004E1F2C(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if ((sub_1007A1364() & 1) != 0 && sub_1006A2C38())
    {
      sub_10079F024();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E1FEC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1004E20E8(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v5 = sub_1007A0404();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v11);
    swift_unknownObjectRelease();
    sub_10029819C(v11);
  }

  v12 = sub_1007A0CE4();
  v14 = v13;
  if (v12 == sub_1007A0CE4() && v14 == v15)
  {

LABEL_7:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    a2();
    goto LABEL_11;
  }

  v16 = sub_1007A3AB4();

  if (v16)
  {
    goto LABEL_7;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  a3();
LABEL_11:
  sub_1006AD160(v8);
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004E2460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E2508, v6, v5);
}

uint64_t sub_1004E2508()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1004E260C;

    return sub_1006AD3D0();
  }

  else
  {

    v5 = sub_1007A2694();

    return _swift_task_switch(sub_1004EA6AC, v5, v4);
  }
}

uint64_t sub_1004E260C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1004E2750, v3, v2);
}

uint64_t sub_1004E2750()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1004EA6AC, v1, v0);
}

uint64_t sub_1004E27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E288C, v6, v5);
}

uint64_t sub_1004E288C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E2980, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E2980()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022C598();
}

uint64_t sub_1004E2A1C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1004E2B3C, v3, v2);
}

uint64_t sub_1004E2B3C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1004EA6A8, v1, v2);
}

void sub_1004E2BC8(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = sub_1004E9310(a1);
  if (v6 == 6)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE7BC0);
    sub_1000077D8(a1, v24, &unk_100AD5B40, &unk_100811300);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      sub_1000077D8(v24, v22, &unk_100AD5B40, &unk_100811300);
      sub_1001F1160(&unk_100AD5B40, &unk_100811300);
      v12 = sub_1007A22E4();
      v14 = v13;
      sub_100007840(v24, &unk_100AD5B40, &unk_100811300);
      v15 = sub_1000070F4(v12, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Cannot set highlight style because sender did not provide a style %s", v10, 0xCu);
      sub_1000074E0(v11);
    }

    else
    {

      sub_100007840(v24, &unk_100AD5B40, &unk_100811300);
    }
  }

  else
  {
    v16 = v6;
    v17 = sub_1007A2744();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_1007A26F4();
    v18 = v1;
    v19 = sub_1007A26E4();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v18;
    *(v20 + 40) = v16;
    sub_100345AA0(0, 0, v5, &unk_10082C998, v20);
  }
}

uint64_t sub_1004E2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 104) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = sub_1007A26F4();
  *(v5 + 40) = sub_1007A26E4();
  v7 = sub_1007A2694();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_1004E2F5C, v7, v6);
}

uint64_t sub_1004E2F5C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E3050, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E3050()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E30F4;
  v2 = *(v0 + 104);

  return sub_10022B4D0(v2);
}

uint64_t sub_1004E30F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  v4 = *(v3 + 88);
  v5 = *(v3 + 80);

  return _swift_task_switch(sub_1004E2B3C, v5, v4);
}

uint64_t sub_1004E3240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_1007A26F4();
  v4[7] = sub_1007A26E4();
  v4[8] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1004E32E8, v6, v5);
}

uint64_t sub_1004E32E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = sub_1007A26E4();
    v2 = sub_1007A2694();
    v4 = v3;
    v0[13] = v2;
    v0[14] = v3;
    v5 = sub_1004E33CC;
    v6 = v2;
  }

  else
  {

    v7 = sub_1007A2694();
    v9 = v8;
    v5 = sub_1004E3624;
    v6 = v7;
    v4 = v9;
  }

  return _swift_task_switch(v5, v6, v4);
}

uint64_t sub_1004E33CC()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1004E346C;

  return sub_10022B4D0(6);
}

uint64_t sub_1004E346C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v4[16] = a2;

  v5 = v3[14];
  v6 = v3[13];

  return _swift_task_switch(sub_1004E3594, v6, v5);
}

uint64_t sub_1004E3594()
{
  v1 = v0[16];

  if (v1)
  {
    sub_1006C5AD8();
  }

  swift_unknownObjectRelease();
  v2 = v0[9];
  v3 = v0[10];

  return _swift_task_switch(sub_1004E3684, v2, v3);
}

uint64_t sub_1004E3624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E3684()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1004E3624, v1, v0);
}

uint64_t sub_1004E3724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v12 = a1;
  }

  v13 = sub_1007A2744();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1000077D8(v20, v19, &unk_100AD5B40, &unk_100811300);
  sub_1007A26F4();
  v14 = a1;
  v15 = sub_1007A26E4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v14;
  v17 = v19[1];
  *(v16 + 40) = v19[0];
  *(v16 + 56) = v17;
  sub_1003457A0(0, 0, v10, a5, v16);

  return sub_100007840(v20, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1004E38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E3970, v6, v5);
}

uint64_t sub_1004E3970()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E3A64, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E3A64()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022CACC();
}

uint64_t sub_1004E3B20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  if (a3)
  {
    v11 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v12 = a1;
  }

  v13 = sub_1007A2744();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_1007A26F4();
  v14 = a1;
  v15 = sub_1007A26E4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_100345AA0(0, 0, v10, a5, v16);

  return sub_100007840(v18, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1004E3D90(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(Strong, v9, v10, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v13, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1004E3E74(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v7 = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 136);
    ObjectType = swift_getObjectType();
    a4(ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v12, &unk_100AD5B40, &unk_100811300);
}

void sub_1004E3F64()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v0 = objc_opt_self();
    v1 = [v0 mainScreen];
    [v1 brightness];
    v3 = v2;

    v4 = [v0 mainScreen];
    [v4 setBrightness:{fmin(v3 + 0.05, 1.0)}];
  }
}

void sub_1004E4068()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v0 = objc_opt_self();
    v1 = [v0 mainScreen];
    [v1 brightness];
    v3 = v2;

    v4 = [v0 mainScreen];
    v6 = v4;
    v5 = v3 + -0.05;
    if (v3 + -0.05 < 0.0)
    {
      v5 = 0.0;
    }

    [v4 setBrightness:v5];
  }
}

void sub_1004E4170()
{
  v0 = sub_1007A1D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    swift_unknownObjectRetain();
    *v3 = sub_1007A2D74();
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v7 = sub_1007A1D34();
    (*(v1 + 8))(v3, v0);
    if (v7)
    {

      sub_1006AFE88(*(v6 + 16));

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1004E4308()
{
  v0 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1007A2744();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_1007A26F4();
    swift_unknownObjectRetain();
    v7 = sub_1007A26E4();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_1003457A0(0, 0, v2, &unk_10083DF30, v8);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E4478()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_1006AB6C4();
    if (v1 == 2 || (v1 & 1) != 0)
    {
      sub_1006B0CE4(0);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E4504()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if ((sub_1006AB6C4() & 1) == 0)
    {
      sub_1006B0CE4(1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4590(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v5 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a1;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1007A06B4();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_100007840(v8, &unk_100AD5B40, &unk_100811300);
}

double sub_1004E4670()
{
  v0 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v2);
    v4 = sub_1007A0A14();
    v6 = v5;
    if (v4 == sub_1007A0A14() && v6 == v7)
    {

      v10 = 0;
    }

    else
    {
      v9 = sub_1007A3AB4();

      v10 = v9 ^ 1;
    }

    sub_10029819C(v2);
    sub_1006AE638(v10 & 1);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E47B4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1007A1194();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E4864()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (sub_1007A13B4() == 4)
    {
      sub_1007A09E4();
    }

    sub_1007A1194();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v5[6] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_1004E4E94, v7, v6);
}

uint64_t sub_1004E4E94(__n128 a1)
{
  v2 = sub_1004E97B8(*(v1 + 24));
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_1004E4F34;

  return sub_1004E8C24(v2);
}

uint64_t sub_1004E4F34()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1004E5054, v3, v2);
}

uint64_t sub_1004E5054()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_10022C3F4, v1, v0);
}

double sub_1004E5268()
{
  v0 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v2);
    v4 = sub_1007A02B4();
    v6 = v5;
    if (v4 != sub_1007A02B4() || v6 != v7)
    {
      sub_1007A3AB4();
    }

    sub_10029819C(v2);
    sub_1007A0FA4();
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E53E4(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1007A0FA4();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004E5484(uint64_t a1)
{
  if (sub_1004E9D88(a1) != 4 && swift_unknownObjectWeakLoadStrong())
  {
    sub_1007A0FA4();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5534(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  (a4)(v9);

  return sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1004E55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E5660, v6, v5);
}

uint64_t sub_1004E5660()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E5754, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E5754()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_10022863C();
}

uint64_t sub_1004E5810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E58AC, v6, v5);
}

uint64_t sub_1004E58AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E59A0, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E59A0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2A1C;

  return sub_100227218();
}

uint64_t sub_1004E5A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1007A26F4();
  v4[5] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E5AF8, v6, v5);
}

uint64_t sub_1004E5AF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 72) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_1004E5BEC, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E5BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1004E5C88;

  return sub_100229624();
}

uint64_t sub_1004E5C88()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1004E5DA8, v3, v2);
}

uint64_t sub_1004E5DA8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1004E5E14, v1, v2);
}

uint64_t sub_1004E5E14()
{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E5EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&unk_100AE7C50, qword_10082C9C0);
  __chkstk_darwin(v6 - 8);
  v89 = &v86 - v7;
  v8 = sub_1007A0404();
  v90 = *(v8 - 8);
  v91 = v8;
  __chkstk_darwin(v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v35 = sub_10079ACE4();
    sub_100008B98(v35, qword_100AE7BC0);
    v24 = sub_10079ACC4();
    v36 = sub_1007A2994();
    if (os_log_type_enabled(v24, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v24, v36, "Cannot interact with no delegate", v37, 2u);
    }

    goto LABEL_15;
  }

  v18 = Strong;
  v87 = v13;
  v19 = swift_unknownObjectWeakLoadStrong();
  v92 = a1;
  if (v19)
  {
    sub_1004A79C8(v16);
    a1 = v92;
    swift_unknownObjectRelease();
    v20 = *(v11 + 20);
    v21 = sub_1007A05F4();
    v22 = sub_1007A0634();
    (*(*(v22 - 8) + 8))(&v16[v20], v22);
    if (v21)
    {
      if (qword_100AD1770 != -1)
      {
        swift_once();
      }

      v23 = sub_10079ACE4();
      sub_100008B98(v23, qword_100AE7BC0);
      v24 = sub_10079ACC4();
      v25 = sub_1007A2994();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Cannot interact while movementState is blocking.", v26, 2u);
      }

      swift_unknownObjectRelease();
LABEL_15:

LABEL_16:
      LOBYTE(v38) = 0;
      return v38 & 1;
    }
  }

  v88 = v18;
  v86 = a2;
  sub_1000077D8(a2, v94, &unk_100AD5B40, &unk_100811300);
  v27 = v95;
  if (v95)
  {
    v28 = sub_10000E3E8(v94, v95);
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_1007A3AA4();
    v34 = v32;
    a1 = v92;
    (*(v29 + 8))(v34, v27);
    sub_1000074E0(v94);
  }

  else
  {
    v33 = 0;
  }

  v39 = type metadata accessor for BookReaderActionTarget();
  v93.receiver = v3;
  v93.super_class = v39;
  v38 = objc_msgSendSuper2(&v93, "canPerformAction:withSender:", a1, v33);
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004A79C8(v16);
    swift_unknownObjectRelease();
    sub_10029819C(v16);
  }

  v40 = sub_1007A0CE4();
  v42 = v41;
  v43 = 1;
  if (v40 != sub_1007A0CE4() || v42 != v44)
  {
    v43 = sub_1007A3AB4();
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_10022FB30(v94);
      LOBYTE(v38) = v95 != 0;
    }

    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0384();
LABEL_32:
      LOBYTE(v38) = sub_1005C1DB0(v10);
      (*(v90 + 8))(v10, v91);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0364();
      goto LABEL_32;
    }

LABEL_33:
    swift_unknownObjectRelease();
    return v38 & 1;
  }

  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (v38)
    {
      swift_getObjectType();
      LOBYTE(v38) = sub_1007A1364();
    }

    goto LABEL_33;
  }

  if (sub_100796E94() & 1) != 0 || !(v43 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v43)
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0394();
    goto LABEL_32;
  }

  if (sub_100796E94() & 1) != 0 || !(v43 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v43)
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0374();
    goto LABEL_32;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    sub_1007A0354();
    goto LABEL_32;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1007A0344();
      v46 = sub_1005C1DB0(v10);
      (*(v90 + 8))(v10, v91);
      LOBYTE(v38) = v46;
    }

    goto LABEL_33;
  }

  v47 = v38;
  if (sub_100796E94())
  {
    if (v38)
    {
      if (sub_1004A8620())
      {
        swift_unknownObjectRelease();
        LOBYTE(v38) = 1;
        return v38 & 1;
      }

      v50 = v89;
      sub_1004A8C68(v89);
      v51 = sub_1001F1160(&unk_100AF2670, &qword_10082A080);
      LOBYTE(v38) = (*(*(v51 - 8) + 48))(v50, 1, v51) != 1;
      sub_100007840(v50, &unk_100AE7C50, qword_10082C9C0);
      goto LABEL_33;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    sub_10022FB30(v94);
    v48 = v97;
    goto LABEL_62;
  }

  if (sub_100796E94())
  {
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006ACFC0();
LABEL_74:
    LOBYTE(v38) = v52;
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006AD200();
    goto LABEL_74;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v53 = sub_1006AB6C4();
      swift_unknownObjectRelease();
      LOBYTE(v38) = (v53 == 2) | v53;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v54 = sub_1006AB6C4();
      swift_unknownObjectRelease();
      LOBYTE(v38) = v54 ^ 1;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      sub_1004E950C(v86);
      swift_unknownObjectRelease();

      LOBYTE(v38) = 1;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    v52 = sub_1006AE108();
    goto LABEL_74;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    sub_10022FB30(v94);
    v48 = v94[1];
    goto LABEL_62;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A17C4();
LABEL_99:
    LOBYTE(v38) = v55;
    goto LABEL_33;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A1794();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A17A4();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v56 = [objc_opt_self() mainScreen];
      [v56 brightness];
      v58 = v57;

      swift_unknownObjectRelease();
      LOBYTE(v38) = v58 < 1.0;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      v59 = [objc_opt_self() mainScreen];
      [v59 brightness];
      v61 = v60;

      swift_unknownObjectRelease();
      LOBYTE(v38) = v61 > 0.0;
      return v38 & 1;
    }

    goto LABEL_157;
  }

  if (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (!v38)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    v55 = sub_1007A0A34();
    goto LABEL_99;
  }

  if (sub_100796E94())
  {
    sub_1004A79C8(v87);
    v62 = sub_1007A0A14();
    v64 = v63;
    if (v62 == sub_1007A0A14() && v64 == v65)
    {
      v66 = 1;
    }

    else
    {
      v66 = sub_1007A3AB4();
    }

    sub_10029819C(v87);
    if ((v47 & 1) == 0)
    {
      goto LABEL_157;
    }

    swift_getObjectType();
    sub_1007A1384();
    v71 = sub_1007A0A14();
    v73 = v72;
    if (v71 == sub_1007A0A14() && v73 == v74)
    {
      v75 = 1;
    }

    else
    {
      v75 = sub_1007A3AB4();
    }

    swift_unknownObjectRelease();
    LOBYTE(v38) = v66 ^ v75 ^ 1;
    return v38 & 1;
  }

  if (sub_100796E94())
  {
    if (v38)
    {
      swift_getObjectType();
      sub_1007A1384();
      v67 = sub_1007A0A14();
      v69 = v68;
      if (v67 == sub_1007A0A14() && v69 == v70)
      {

        LOBYTE(v38) = 0;
      }

      else
      {
        v82 = sub_1007A3AB4();

        LOBYTE(v38) = v82 ^ 1;
      }

      goto LABEL_33;
    }

    goto LABEL_157;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94())
    {
      if (!v38)
      {
        goto LABEL_157;
      }

      v81 = sub_1004E8A10(v86);
    }

    else
    {
      if ((sub_100796E94() & 1) == 0)
      {
        if ((sub_100796E94() & 1) == 0)
        {
          if (sub_100796E94())
          {
            if (!v38)
            {
              goto LABEL_157;
            }

            v52 = sub_1006AE6C0();
            goto LABEL_74;
          }

          if (sub_100796E94())
          {
            if (!v38)
            {
              goto LABEL_157;
            }

            sub_10022FB30(v94);
            v48 = v96;
LABEL_62:
            v49 = v48 != 0;
LABEL_63:
            LOBYTE(v38) = v49;
            goto LABEL_33;
          }

          if ((sub_100796E94() & 1) == 0)
          {
            goto LABEL_33;
          }

          if (v38)
          {
            v49 = sub_100228538();
            goto LABEL_63;
          }

LABEL_157:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

        if (!v38)
        {
          goto LABEL_157;
        }

        v85 = swift_unknownObjectWeakLoadStrong();
        LOBYTE(v38) = v85;
        if (!v85)
        {
          goto LABEL_33;
        }

LABEL_150:
        swift_getObjectType();
        LOBYTE(v38) = sub_1007A1184();
        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      if (!v38)
      {
        goto LABEL_157;
      }

      v81 = sub_1004E97B8(v86);
    }

    v83 = v81;
    v84 = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v38) = v84;
    if (!v84)
    {
      goto LABEL_33;
    }

    if (v83 == 6)
    {
      swift_unknownObjectRelease();
      goto LABEL_157;
    }

    goto LABEL_150;
  }

  if (!v38)
  {
    goto LABEL_157;
  }

  swift_getObjectType();
  sub_1007A1384();
  v76 = sub_1007A0A14();
  v78 = v77;
  if (v76 == sub_1007A0A14() && v78 == v79)
  {
    v80 = 1;
  }

  else
  {
    v80 = sub_1007A3AB4();
  }

  swift_unknownObjectRelease();
  LOBYTE(v38) = v80;
  return v38 & 1;
}

double sub_1004E6FE0(void *a1)
{
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v200 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v183 - v7;
  v9 = sub_1007A21D4();
  v201 = *(v9 - 8);
  v202 = v9;
  __chkstk_darwin(v9);
  v11 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v183 - v13;
  v196 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v196);
  v184 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v187 = &v183 - v17;
  __chkstk_darwin(v18);
  v186 = &v183 - v19;
  __chkstk_darwin(v20);
  v189 = &v183 - v21;
  __chkstk_darwin(v22);
  v188 = &v183 - v23;
  __chkstk_darwin(v24);
  v185 = &v183 - v25;
  __chkstk_darwin(v26);
  v190 = &v183 - v27;
  __chkstk_darwin(v28);
  v191 = &v183 - v29;
  __chkstk_darwin(v30);
  v192 = &v183 - v31;
  __chkstk_darwin(v32);
  v193 = &v183 - v33;
  __chkstk_darwin(v34);
  v194 = &v183 - v35;
  __chkstk_darwin(v36);
  v195 = &v183 - v37;
  __chkstk_darwin(v38);
  v40 = &v183 - v39;
  v41 = type metadata accessor for BookReaderActionTarget();
  v205.receiver = v1;
  v205.super_class = v41;
  objc_msgSendSuper2(&v205, "validateCommand:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v199 = Strong;
    v183 = v1;
    v43 = swift_unknownObjectWeakLoadStrong();
    v203 = a1;
    v197 = v4;
    v198 = v3;
    if (v43)
    {
      sub_1004A79C8(v40);
      swift_unknownObjectRelease();
      sub_10029819C(v40);
    }

    v49 = sub_1007A0CE4();
    v51 = v50;
    v52 = 1;
    if (v49 != sub_1007A0CE4() || v51 != v53)
    {
      v52 = sub_1007A3AB4();
    }

    [v203 action];
    if (sub_100796E94())
    {
      v54 = v14;
      sub_1007A2154();
      sub_100796C94();
      v56 = v201;
      v55 = v202;
      (*(v201 + 16))(v11, v14, v202);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v60 = v197;
      v59 = v198;
      v61 = v200;
      (*(v197 + 16))(v200, v8, v198);
      sub_1007A22D4(v11, 0, 0, v58, v61, "'Next Line' action", 18, 2);
LABEL_16:
      (*(v60 + 8))(v8, v59);
      (*(v56 + 8))(v54, v55);
LABEL_21:
      v73 = sub_1007A2214();

      [v203 setTitle:v73];

LABEL_22:
      swift_unknownObjectRelease();
      return result;
    }

    if (sub_100796E94())
    {
      v54 = v14;
      sub_1007A2154();
      sub_100796C94();
      v56 = v201;
      v55 = v202;
      (*(v201 + 16))(v11, v14, v202);
      type metadata accessor for BundleFinder();
      v62 = swift_getObjCClassFromMetadata();
      v63 = [objc_opt_self() bundleForClass:v62];
      v60 = v197;
      v59 = v198;
      v64 = v200;
      (*(v197 + 16))(v200, v8, v198);
      sub_1007A22D4(v11, 0, 0, v63, v64, "'Previous Line' action", 22, 2);
      goto LABEL_16;
    }

    if (!(v52 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v52 & 1) != 0)
    {
      v65 = v14;
      sub_1007A2154();
      sub_100796C94();
      v67 = v201;
      v66 = v202;
      (*(v201 + 16))(v11, v14, v202);
      type metadata accessor for BundleFinder();
      v68 = swift_getObjCClassFromMetadata();
      v69 = [objc_opt_self() bundleForClass:v68];
      v71 = v197;
      v70 = v198;
      v72 = v200;
      (*(v197 + 16))(v200, v8, v198);
      sub_1007A22D4(v11, 0, 0, v69, v72, "'Previous Chapter' action", 25, 2);
LABEL_20:
      (*(v71 + 8))(v8, v70);
      (*(v67 + 8))(v65, v66);
      goto LABEL_21;
    }

    if (!(v52 & 1 | ((sub_100796E94() & 1) == 0)) || (sub_100796E94() & v52 & 1) != 0)
    {
      v65 = v14;
      sub_1007A2154();
      sub_100796C94();
      v67 = v201;
      v66 = v202;
      (*(v201 + 16))(v11, v14, v202);
      type metadata accessor for BundleFinder();
      v74 = swift_getObjCClassFromMetadata();
      v75 = [objc_opt_self() bundleForClass:v74];
      v71 = v197;
      v70 = v198;
      v76 = v200;
      (*(v197 + 16))(v200, v8, v198);
      sub_1007A22D4(v11, 0, 0, v75, v76, "'Next Chapter' action", 21, 2);
      goto LABEL_20;
    }

    if (sub_100796E94())
    {
      v77 = sub_1004A8620() & 1;
      sub_1007871BC(v77);
      v78 = sub_1007A2214();

      v79 = v203;
      [v203 setTitle:v78];

      v80 = sub_1007A2214();

      v81 = [objc_opt_self() systemImageNamed:v80];

      [v79 setImage:v81];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v206);
      if (v208)
      {
        v82 = v209 == 0;
      }

      else
      {
        v82 = 1;
      }

      v83 = !v82;
      sub_100787894(v83);
      goto LABEL_36;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v206);
      sub_100787658((v211 != 0) & v212);
      v89 = sub_1007A2214();

      v90 = v203;
      [v203 setTitle:v89];

      sub_10022FB30(v213);
      v91 = v220;
      v92 = [v90 attributes];
      if (v91)
      {
        v93 = v92 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v93 = (v92 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v90 setAttributes:v93];
      [v90 setAttributes:{objc_msgSend(v90, "attributes") | 2}];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(&v206);
      sub_100787414((v208 != 0) & v210);
LABEL_36:
      v84 = sub_1007A2214();

      v85 = v203;
      [v203 setTitle:v84];

      sub_10022FB30(v213);
      v86 = v219;
      v87 = [v85 attributes];
      if (v86)
      {
        v88 = v87 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v88 = (v87 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v85 setAttributes:v88];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_10022FB30(v213);
      v94 = v221;
      v95 = v203;
      v96 = [v203 attributes];
      if (v94)
      {
        v97 = v96 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v97 = (v96 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      [v95 setAttributes:v97];
      goto LABEL_22;
    }

    v98 = sub_100796E94();
    v99 = v203;
    if (v98)
    {
      sub_1004A79C8(v40);
      v100 = v40[*(v196 + 24)];
      sub_10029819C(v40);
      [v99 setState:v100];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v40);
      v101 = v40[*(v196 + 24)];
      sub_10029819C(v40);
      [v99 setState:~v101 & 1];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v195);
      v102 = sub_1007A0A14();
      v104 = v103;
      if (v102 == sub_1007A0A14() && v104 == v105)
      {

        v106 = 1;
      }

      else
      {
        v112 = sub_1007A3AB4();

        v106 = v112 & 1;
      }

      v111 = v195;
      goto LABEL_66;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v194);
      v107 = sub_1007A0A14();
      v109 = v108;
      if (v107 == sub_1007A0A14() && v109 == v110)
      {

        v106 = 1;
        v111 = v194;
      }

      else
      {
        v120 = sub_1007A3AB4();

        v106 = v120 & 1;
        v111 = v194;
      }

LABEL_66:
      sub_10029819C(v111);
      v113 = "setState:";
      v114 = v203;
      v115 = v106;
LABEL_67:
      [v114 v113];
      goto LABEL_22;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v193);
      v116 = sub_1007A0A14();
      v118 = v117;
      if (v116 == sub_1007A0A14() && v118 == v119)
      {

        v106 = 0;
        v111 = v193;
      }

      else
      {
        v124 = sub_1007A3AB4();

        v106 = ~v124 & 1;
        v111 = v193;
      }

      goto LABEL_66;
    }

    if (sub_100796E94())
    {
      v214 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v213[0] = v203;
      v121 = v203;
      v122 = sub_1004E97B8(v213);
      sub_100007840(v213, &unk_100AD5B40, &unk_100811300);
      v123 = v192;
LABEL_78:
      sub_1004A79C8(v123);
      sub_10029819C(v123);
      if (v122 == 6)
      {
        goto LABEL_99;
      }

      v125 = sub_10079F914();
      v127 = v126;
      v128 = sub_10079F914();
      goto LABEL_80;
    }

    if (sub_100796E94())
    {
      v214 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v213[0] = v203;
      v121 = v203;
      v122 = sub_1004E97B8(v213);
      sub_100007840(v213, &unk_100AD5B40, &unk_100811300);
      v123 = v191;
      goto LABEL_78;
    }

    if (sub_100796E94())
    {
      v214 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v213[0] = v203;
      v121 = v203;
      v130 = sub_1004E97B8(v213);
      sub_100007840(v213, &unk_100AD5B40, &unk_100811300);
      v131 = v190;
      sub_1004A79C8(v190);
      sub_10029819C(v131);
      if (v130 == 6)
      {
        goto LABEL_89;
      }

      v132 = sub_10079F914();
      v134 = v133;
      if (v132 == sub_10079F914() && v134 == v135)
      {
      }

      else
      {
        v143 = sub_1007A3AB4();

        if ((v143 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_99;
    }

    if (sub_100796E94())
    {
      v214 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v213[0] = v203;
      v121 = v203;
      v137 = sub_1004E97B8(v213);
      sub_100007840(v213, &unk_100AD5B40, &unk_100811300);
      if (v137 == 6)
      {
        [v121 setState:0];
        v138 = [v121 attributes];
LABEL_93:
        v115 = v138 | 1;
LABEL_123:
        v113 = "setAttributes:";
        goto LABEL_101;
      }

      v144 = v185;
      sub_1004A79C8(v185);
      sub_10029819C(v144);
      v145 = sub_10079F914();
      v147 = v146;
      if (v145 == sub_10079F914() && v147 == v148)
      {

        v149 = 1;
      }

      else
      {
        v155 = sub_1007A3AB4();

        v149 = v155 & 1;
      }

      [v121 setState:v149];
      if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v156 = sub_1007A1184(), swift_unknownObjectRelease(), (v156 & 1) == 0))
      {
        v157 = v188;
        sub_1004A79C8(v188);
        sub_10029819C(v157);
        v158 = sub_10079F914();
        v160 = v159;
        if (v158 != sub_10079F914() || v160 != v161)
        {
          v166 = sub_1007A3AB4();

          v138 = [v121 attributes];
          if ((v166 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_122:
          v115 = v138 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_123;
        }
      }

      v138 = [v121 attributes];
      goto LABEL_122;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v189);
      v139 = sub_1007A02B4();
      v141 = v140;
      if (v139 == sub_1007A02B4() && v141 == v142)
      {

        v106 = 1;
        v111 = v189;
      }

      else
      {
        v154 = sub_1007A3AB4();

        v106 = v154 & 1;
        v111 = v189;
      }

      goto LABEL_66;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v186);
      v150 = sub_1007A02B4();
      v152 = v151;
      if (v150 == sub_1007A02B4() && v152 == v153)
      {

        v106 = 1;
        v111 = v186;
      }

      else
      {
        v167 = sub_1007A3AB4();

        v106 = v167 & 1;
        v111 = v186;
      }

      goto LABEL_66;
    }

    if (sub_100796E94())
    {
      sub_1004A79C8(v187);
      v162 = sub_1007A02B4();
      v164 = v163;
      if (v162 == sub_1007A02B4() && v164 == v165)
      {

        v106 = 0;
        v111 = v187;
      }

      else
      {
        v171 = sub_1007A3AB4();

        v106 = ~v171 & 1;
        v111 = v187;
      }

      goto LABEL_66;
    }

    if (sub_100796E94())
    {
      v214 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
      v213[0] = v203;
      v121 = v203;
      v168 = sub_1004E9D88(v213);
      sub_100007840(v213, &unk_100AD5B40, &unk_100811300);
      v169 = v184;
      sub_1004A79C8(v184);
      sub_10029819C(v169);
      if (v168 == 4)
      {
        goto LABEL_99;
      }

      v125 = sub_1007A02B4();
      v127 = v170;
      v128 = sub_1007A02B4();
LABEL_80:
      if (v125 == v128 && v127 == v129)
      {

LABEL_89:
        v115 = 1;
LABEL_100:
        v113 = "setState:";
LABEL_101:
        v114 = v121;
        goto LABEL_67;
      }

      v136 = sub_1007A3AB4();

      if (v136)
      {
        goto LABEL_89;
      }

LABEL_99:
      v115 = 0;
      goto LABEL_100;
    }

    if (sub_100796E94())
    {
      v172 = 0xE000000000000000;
      sub_1005FB8C4(0, 0xE000000000000000);
      v173 = sub_1007A2214();

      [v203 setTitle:v173];

      sub_10022FB30(v213);
      *(v207 + 9) = *(v218 + 9);
      v206 = v217;
      v207[0] = v218[0];
      v174 = *(v218 + 9) >> 56;
      if (v174)
      {
        v175 = *(&v207[0] + 1);
        v176 = *&v207[0];
        v224 = v217;
        v222 = *(&v207[0] + 1);
        v223 = *&v207[1];
        v177 = &unk_100AE7C40;
        v178 = &unk_100812798;
LABEL_135:
        sub_1000077D8(&v206, v204, v177, v178);
        sub_1002BB1A4(&v222, v204);
        sub_100007840(&v224, &qword_100AD4F30, &unk_100816940);
        v204[0] = v176;
        sub_100007840(v204, &qword_100AD6188, &qword_100812760);
        sub_1002308AC(&v222);
        v172 = v174;
LABEL_137:
        if (v175 || v172 != 0xE000000000000000)
        {
          v181 = sub_1007A3AB4();

          v180 = [v203 attributes];
          if ((v181 & 1) == 0)
          {
            v182 = v180 & 0xFFFFFFFFFFFFFFFELL;
            goto LABEL_143;
          }
        }

        else
        {

          v180 = [v203 attributes];
        }

        v182 = v180 | 1;
LABEL_143:
        [v203 setAttributes:v182];
        goto LABEL_22;
      }
    }

    else
    {
      if ((sub_100796E94() & 1) == 0)
      {
        goto LABEL_22;
      }

      v172 = 0xE000000000000000;
      sub_1005FBE34(0, 0xE000000000000000);
      v179 = sub_1007A2214();

      [v203 setTitle:v179];

      sub_10022FB30(v213);
      *(v207 + 9) = *(v216 + 9);
      v206 = v215;
      v207[0] = v216[0];
      v174 = *(v216 + 9) >> 56;
      if (v174)
      {
        v175 = *(&v207[0] + 1);
        v176 = *&v207[0];
        v224 = v215;
        v222 = *(&v207[0] + 1);
        v223 = *&v207[1];
        v177 = &unk_100AD6180;
        v178 = &unk_10082C9B0;
        goto LABEL_135;
      }
    }

    v175 = 0;
    goto LABEL_137;
  }

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v44 = sub_10079ACE4();
  sub_100008B98(v44, qword_100AE7BC0);
  v45 = sub_10079ACC4();
  v46 = sub_1007A2994();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Cannot interact with no delegate", v47, 2u);
  }

  return result;
}

uint64_t sub_1004E8A10(uint64_t a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 6;
  }

  v5 = sub_1004E97B8(a1);
  if (v5 == 6)
  {
    swift_unknownObjectRelease();
    return 6;
  }

  v7 = v5;
  sub_1004A79C8(v4);
  sub_10029819C(v4);
  v8 = sub_10079F914();
  v10 = v9;
  if (v8 == sub_10079F914() && v10 == v11)
  {

    v14 = 0;
  }

  else
  {
    v13 = sub_1007A3AB4();

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v7;
    }
  }

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1004E8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_1007A26F4();
  v5[3] = sub_1007A26E4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1004B06E4;

  return sub_1004E8C24(v6);
}

uint64_t sub_1004E8C24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1004E8CC4, v4, v3);
}

uint64_t sub_1004E8CC4()
{
  if (*(v0 + 104) == 6 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 56) = Strong) == 0))
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 64) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;

    return _swift_task_switch(sub_1004E8DB0, v3, v2);
  }
}

uint64_t sub_1004E8DB0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1004E8E54;
  v2 = *(v0 + 104);

  return sub_1004AA91C(v2);
}

uint64_t sub_1004E8E54()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1004E8FFC;
  }

  else
  {
    v5 = sub_1004E8F90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004E8F90()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1004E8FFC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004E9068, v1, v2);
}

uint64_t sub_1004E9068()
{
  v14 = v0;

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE7BC0);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_10079F8E4();
    v9 = sub_1000070F4(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    v10 = sub_1007967C4();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to change theme ID to %s; error: %@", v4, 0x16u);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

id sub_1004E92A8(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BookReaderActionTarget();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004E9310(uint64_t a1)
{
  sub_1000077D8(a1, &v7, &unk_100AD5B40, &unk_100811300);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v6[0]);
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, &v7, &unk_100AD5B40, &unk_100811300);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      result = sub_1007A00D4();
      if (result != 6)
      {
        return result;
      }
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v6[3])
  {
    sub_1001F1160(&unk_100AE7C30, &qword_10082C9A8);
    if (swift_dynamicCast())
    {
      v3 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v4 = v9;
        sub_10000E3E8(&v7, *(&v8 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_1000074E0(&v7);
        return v5;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_100007840(&v7, &qword_100AE7C28, &qword_10082C9A0);
  return 6;
}

id sub_1004E950C(uint64_t a1)
{
  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v7)
  {
    sub_1001F1160(&qword_100AE7C60, &qword_10082C9D8);
    if (swift_dynamicCast())
    {
      v3 = [v5 appIntentsSearchQuery];
      swift_unknownObjectRelease();
      v4 = sub_1007A2254();

      return v4;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
  }

  return 0;
}

id sub_1004E9660(uint64_t a1)
{
  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v7)
  {
    sub_1001F1160(&qword_100AE7C10, &qword_10082C978);
    if (swift_dynamicCast())
    {
      v3 = [v5 books_themeID];
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = sub_1007A2254();

        return v4;
      }
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
  }

  return 0;
}

uint64_t sub_1004E97B8(uint64_t a1)
{
  v2 = sub_1004E9660(a1);
  if (!v3)
  {
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AE7BC0);
    sub_1000077D8(a1, v28, &unk_100AD5B40, &unk_100811300);
    v8 = sub_10079ACC4();
    v17 = sub_1007A29B4();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      sub_1000077D8(v28, v26, &unk_100AD5B40, &unk_100811300);
      sub_1001F1160(&unk_100AD5B40, &unk_100811300);
      v20 = sub_1007A22E4();
      v22 = v21;
      sub_100007840(v28, &unk_100AD5B40, &unk_100811300);
      v23 = sub_1000070F4(v20, v22, &v27);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v8, v17, "Unable to extract theme ID from sender: %s", v18, 0xCu);
      sub_1000074E0(v19);
      goto LABEL_11;
    }

LABEL_15:
    sub_100007840(v28, &unk_100AD5B40, &unk_100811300);
    return 6;
  }

  v4 = v2;
  v5 = v3;

  v6 = sub_10079F904();
  if (v6 != 6)
  {
    v24 = v6;

    return v24;
  }

  if (qword_100AD1770 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AE7BC0);
  sub_1000077D8(a1, v28, &unk_100AD5B40, &unk_100811300);

  v8 = sub_10079ACC4();
  v9 = sub_1007A29B4();

  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_15;
  }

  v10 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v10 = 136315394;
  v11 = sub_1000070F4(v4, v5, &v27);

  *(v10 + 4) = v11;
  *(v10 + 12) = 2080;
  sub_1000077D8(v28, v26, &unk_100AD5B40, &unk_100811300);
  sub_1001F1160(&unk_100AD5B40, &unk_100811300);
  v12 = sub_1007A22E4();
  v14 = v13;
  sub_100007840(v28, &unk_100AD5B40, &unk_100811300);
  v15 = sub_1000070F4(v12, v14, &v27);

  *(v10 + 14) = v15;
  _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring invalid theme ID '%s' from sender: %s", v10, 0x16u);
  swift_arrayDestroy();
LABEL_11:

  return 6;
}

uint64_t sub_1004E9B8C(uint64_t a1)
{
  sub_1000077D8(a1, &v7, &unk_100AD5B40, &unk_100811300);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v6[0]);
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, &v7, &unk_100AD5B40, &unk_100811300);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      result = sub_1007A02A4();
      if (result != 4)
      {
        return result;
      }
    }
  }

  else
  {
    sub_100007840(&v7, &unk_100AD5B40, &unk_100811300);
  }

  sub_1000077D8(a1, v6, &unk_100AD5B40, &unk_100811300);
  if (v6[3])
  {
    sub_1001F1160(&qword_100AE7C20, &qword_10082C988);
    if (swift_dynamicCast())
    {
      v3 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v4 = v9;
        sub_10000E3E8(&v7, *(&v8 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_1000074E0(&v7);
        return v5;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_100007840(v6, &unk_100AD5B40, &unk_100811300);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_100007840(&v7, &qword_100AE7C18, &qword_10082C980);
  return 4;
}

uint64_t sub_1004E9D88(uint64_t a1)
{
  result = sub_1004E9B8C(a1);
  if (result == 4)
  {
    v3 = result;
    if (qword_100AD1770 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AE7BC0);
    sub_1000077D8(a1, v15, &unk_100AD5B40, &unk_100811300);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      sub_1000077D8(v15, v13, &unk_100AD5B40, &unk_100811300);
      sub_1001F1160(&unk_100AD5B40, &unk_100811300);
      v9 = sub_1007A22E4();
      v11 = v10;
      sub_100007840(v15, &unk_100AD5B40, &unk_100811300);
      v12 = sub_1000070F4(v9, v11, &v14);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to extract theme appearance from sender: %s", v7, 0xCu);
      sub_1000074E0(v8);
    }

    else
    {

      sub_100007840(v15, &unk_100AD5B40, &unk_100811300);
    }

    return v3;
  }

  return result;
}

uint64_t sub_1004E9F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1004E2EBC(a1, v4, v5, v6, v7);
}

uint64_t sub_1004EA044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E5A5C(a1, v4, v5, v6);
}

uint64_t sub_1004EA0F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E5810(a1, v4, v5, v6);
}

uint64_t sub_1004EA1AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E55C4(a1, v4, v5, v6);
}

uint64_t sub_1004EA260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1004E8B68(a1, v4, v5, v6, v7);
}

uint64_t sub_1004EA324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E38D4(a1, v4, v5, v6);
}

uint64_t sub_1004EA3D8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_1000074E0((v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_1004EA428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E3240(a1, v4, v5, v6);
}

uint64_t sub_1004EA4E8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004EA534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E27F0(a1, v4, v5, v6);
}

uint64_t sub_1004EA5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004E2460(a1, v4, v5, v6);
}

unint64_t PersonalRecommendationIntent.Collection.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x756F792D726F66;
  v2 = 0xD000000000000016;
  if (a1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  v3 = 0xD00000000000001ALL;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1004EA764()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_1004EA850(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_1004EA928(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

unint64_t sub_1004EAA10@<X0>(Swift::String *a1@<X0>, Books::PersonalRecommendationIntent::Collection_optional *a2@<X8>)
{
  result = _s5Books28PersonalRecommendationIntentV10CollectionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1004EAA40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x756F792D726F66;
  v5 = 0x80000001008BFD20;
  v6 = 0xD000000000000016;
  if (v2 == 3)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x80000001008BFD40;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001008BFCE0;
  v8 = 0xD00000000000001ALL;
  if (*v1)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001008BFD00;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

JSValue __swiftcall PersonalRecommendationIntent.makeValue(in:)(JSContext in)
{
  v3 = v2;
  v4 = v1;
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEB00000000737265;
  v7 = sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  *(inited + 48) = v4;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0x80000001008D8B70;
  *(inited + 96) = v3;

  sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  v8 = sub_1007A3B04();
  v9 = [objc_opt_self() valueWithObject:v8 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_1004EAD14@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004EAD8C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t _s5Books28PersonalRecommendationIntentV10CollectionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0D338;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void *sub_1004EAD8C(void *a1)
{
  v3 = sub_1001F1160(&qword_100AE7C70, qword_10082CC60);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = sub_1007A1DC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000E3E8(a1, a1[3]);
  sub_1007A3CA4();
  if (v1)
  {
    goto LABEL_8;
  }

  sub_10000E3E8(v16, v16[3]);
  sub_1004EB1F4(&qword_100AE7C78, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
  sub_1007A3AC4();
  sub_1000074E0(v16);
  sub_1007A1DB4();
  v11 = sub_1007A1E54();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1004EB18C(v5);
LABEL_7:
    v10 = sub_1007A1FC4();
    sub_1004EB1F4(&qword_100AE7C80, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v13 = &type metadata for PersonalRecommendationIntent.ReturnType;
    v13[1] = _swiftEmptyArrayStorage;
    (*(*(v10 - 8) + 104))(v13, enum case for JSONError.malformedDocument(_:), v10);
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
LABEL_8:
    sub_1000074E0(a1);
    return v10;
  }

  sub_1001F1160(&unk_100AD5B40, &unk_100811300);
  v10 = sub_1007A1E44();
  (*(v12 + 8))(v5, v11);
  if (!v10)
  {
    goto LABEL_7;
  }

  (*(v7 + 8))(v9, v6);
  sub_1000074E0(a1);
  return v10;
}

unint64_t sub_1004EB108()
{
  result = qword_100AE7C68;
  if (!qword_100AE7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7C68);
  }

  return result;
}

uint64_t sub_1004EB18C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE7C70, qword_10082CC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004EB1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004EB240()
{
  result = qword_100AE7CA0;
  if (!qword_100AE7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CA0);
  }

  return result;
}

uint64_t sub_1004EB294()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7C88);
  sub_100008B98(v0, qword_100AE7C88);
  return sub_10079ACD4();
}

uint64_t sub_1004EB314()
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
  sub_100009A38(v3, qword_100B23408);
  v21 = sub_100008B98(v3, qword_100B23408);
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

uint64_t sub_1004EB6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1004EB754, v5, v4);
}

uint64_t sub_1004EB754()
{

  sub_100795A94();
  v1 = v0[2];
  v2 = [v1 primarySceneController];

  v3 = [v2 rootBarCoordinator];
  if (v3)
  {
    type metadata accessor for RootBarCoordinator();
    if (swift_dynamicCastClass())
    {
      sub_100795DF4();
      sub_100242394(v0[2], v0[3]);

      sub_100795D24();
      swift_unknownObjectRelease();
      v4 = v0[1];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1778 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7C88);
  v6 = sub_10079ACC4();
  v7 = sub_1007A29B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SearchBooksIntent: Failed getting root bar coordinator.", v8, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
  v4 = v0[1];
LABEL_10:

  return v4();
}

void (*sub_1004EB9C4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_100220080;
}

unint64_t sub_1004EBA3C()
{
  result = qword_100AE7CA8;
  if (!qword_100AE7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CA8);
  }

  return result;
}

unint64_t sub_1004EBA94()
{
  result = qword_100AE7CB0;
  if (!qword_100AE7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CB0);
  }

  return result;
}

unint64_t sub_1004EBAEC()
{
  result = qword_100AE7CB8;
  if (!qword_100AE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CB8);
  }

  return result;
}

uint64_t sub_1004EBB9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AE7D48, &qword_10082D098);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AE7D50, &qword_10082D0A0);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._countAndFlagsBits = 0x20686372616553;
  v5._object = 0xE700000000000000;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE7D58, qword_10082D0D0);
  sub_1007961B4();

  v6._countAndFlagsBits = 0x6B6F6F42206E6920;
  v6._object = 0xE900000000000073;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1004EBD50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1004EB6B8(a1, v5, v4);
}

uint64_t sub_1004EBDFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004ECE00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004EBE24(uint64_t a1)
{
  v2 = sub_1004EBA3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1004EBE64()
{
  result = qword_100AE7CC0;
  if (!qword_100AE7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CC0);
  }

  return result;
}

unint64_t sub_1004EBEBC()
{
  result = qword_100AE7CC8;
  if (!qword_100AE7CC8)
  {
    sub_1007960A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CC8);
  }

  return result;
}

uint64_t sub_1004EBF14()
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
  sub_100009A38(v3, qword_100B23420);
  v21 = sub_100008B98(v3, qword_100B23420);
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

uint64_t sub_1004EC2B8()
{
  sub_1001F1160(&qword_100AE7D30, &qword_10082D078);
  v0 = sub_100796054();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_100B23438 = v3;
  return result;
}

uint64_t sub_1004EC39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1007960A4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1007A26F4();
  v3[9] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1004EC494, v6, v5);
}

uint64_t sub_1004EC494()
{

  sub_100795A94();
  v1 = v0[2];
  v2 = [v1 primarySceneController];

  v3 = [v2 rootBarCoordinator];
  if (v3)
  {
    type metadata accessor for RootBarCoordinator();
    if (swift_dynamicCastClass())
    {
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      sub_100795DF4();
      v7 = sub_100796094();
      v9 = v8;
      (*(v5 + 8))(v4, v6);
      sub_100242394(v7, v9);

      sub_100795D24();
      swift_unknownObjectRelease();

      v10 = v0[1];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1778 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AE7C88);
  v12 = sub_10079ACC4();
  v13 = sub_1007A29B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SearchBooksAppIntent: Failed getting root bar coordinator.", v14, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  v10 = v0[1];
LABEL_10:

  return v10();
}

double sub_1004EC6F4@<D0>(void *a1@<X8>)
{
  if (qword_100AD1790 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100B23438;

  return result;
}

uint64_t sub_1004EC764(uint64_t a1)
{
  v2 = sub_1007960A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100795E04();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1004EC854(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_1004EC8C8()
{
  result = qword_100AE7CD0;
  if (!qword_100AE7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CD0);
  }

  return result;
}

unint64_t sub_1004EC920()
{
  result = qword_100AE7CD8;
  if (!qword_100AE7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CD8);
  }

  return result;
}

unint64_t sub_1004EC978()
{
  result = qword_100AE7CE0;
  if (!qword_100AE7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CE0);
  }

  return result;
}

uint64_t sub_1004ECA28@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100796814();
  v7 = sub_100008B98(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1004ECAC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AE7D18, &qword_10082D038);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AE7D20, &qword_10082D040);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._countAndFlagsBits = 0x20686372616553;
  v5._object = 0xE700000000000000;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE7D28, &qword_10082D070);
  sub_1007961B4();

  v6._countAndFlagsBits = 0x6B6F6F42206E6920;
  v6._object = 0xE900000000000073;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1004ECC78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1004EC39C(a1, v5, v4);
}

uint64_t sub_1004ECD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004ED5A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004ECD4C(uint64_t a1)
{
  v2 = sub_1004EC8C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1004ECD8C()
{
  result = qword_100AE7CE8;
  if (!qword_100AE7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7CE8);
  }

  return result;
}

uint64_t sub_1004ECE00()
{
  v0 = sub_100796274();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v55 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v2 - 8);
  v54 = v41 - v3;
  v4 = sub_1001F1160(&qword_100AE7D38, &qword_10082D080);
  __chkstk_darwin(v4 - 8);
  v53 = v41 - v5;
  v6 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v6 - 8);
  v52 = v41 - v7;
  v59 = sub_1007967F4();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100796CF4();
  v60 = *(v47 - 8);
  v10 = v60;
  __chkstk_darwin(v47);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v41 - v14;
  v16 = sub_1007A21D4();
  v58 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v41 - v21;
  v23 = sub_100796814();
  v49 = *(v23 - 8);
  v50 = v23;
  __chkstk_darwin(v23);
  v48 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1001F1160(&qword_100AE7D40, &qword_10082D088);
  sub_1007A2154();
  sub_100796C94();
  v46 = *(v17 + 16);
  v46(v19, v22, v16);
  v45 = *(v10 + 16);
  v25 = v12;
  v26 = v12;
  v27 = v47;
  v45(v26, v15, v47);
  v44 = type metadata accessor for BundleFinder();
  *v9 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v61 + 104);
  v61 += 104;
  v43 = v28;
  v41[0] = v9;
  v28(v9);
  sub_100796834();
  v29 = *(v60 + 8);
  v60 += 8;
  v30 = v27;
  v29(v15, v27);
  v31 = v17 + 8;
  v32 = *(v17 + 8);
  v41[1] = v31;
  v33 = v58;
  v32(v22, v58);
  sub_1007A2154();
  sub_100796C94();
  v46(v19, v22, v33);
  v34 = v30;
  v45(v25, v15, v30);
  v35 = v41[0];
  *v41[0] = v44;
  v43(v35, v42, v59);
  v36 = v52;
  sub_100796834();
  v29(v15, v34);
  v32(v22, v58);
  (*(v49 + 56))(v36, 0, 1, v50);
  v37 = sub_1007A2134();
  v62 = 0uLL;
  (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
  v38 = sub_100795CE4();
  (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
  (*(v56 + 104))(v55, enum case for InputConnectionBehavior.default(_:), v57);
  v39 = sub_100795EA4();
  sub_1001F1160(&qword_100AD4A58, &qword_10081DFF0);
  sub_100795B74();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v39;
}

uint64_t sub_1004ED5A4()
{
  v0 = sub_100796274();
  v50 = *(v0 - 8);
  v51 = v0;
  __chkstk_darwin(v0);
  v49 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v2 - 8);
  v48 = &v34 - v3;
  v4 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v4 - 8);
  v47 = &v34 - v5;
  v55 = sub_1007967F4();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100796CF4();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_1007A21D4();
  v52 = v13;
  v56 = *(v13 - 8);
  v14 = v56;
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = sub_100796814();
  v44 = *(v20 - 8);
  v45 = v20;
  __chkstk_darwin(v20);
  v54 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001F1160(&qword_100AE7D10, &unk_10082D020);
  sub_1007A2154();
  sub_100796C94();
  v42 = *(v14 + 16);
  v35 = v16;
  v42(v16, v19, v13);
  v41 = *(v7 + 16);
  v22 = v9;
  v23 = v43;
  v41(v9, v12, v43);
  v40 = type metadata accessor for BundleFinder();
  v24 = v53;
  *v53 = v40;
  v38 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v57 + 104);
  v57 += 104;
  v39 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v7 + 8);
  v36 = v7 + 8;
  v37 = v26;
  v26(v12, v23);
  v27 = *(v56 + 8);
  v56 += 8;
  v28 = v52;
  v27(v19, v52);
  sub_1007A2154();
  sub_100796C94();
  v42(v35, v19, v28);
  v41(v22, v12, v23);
  v29 = v53;
  *v53 = v40;
  v39(v29, v38, v55);
  v30 = v47;
  sub_100796834();
  v37(v12, v23);
  v27(v19, v52);
  (*(v44 + 56))(v30, 0, 1, v45);
  v31 = sub_100795CE4();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  (*(v50 + 104))(v49, enum case for InputConnectionBehavior.default(_:), v51);
  v32 = sub_100795E84();
  sub_1001F1160(&qword_100AD4A58, &qword_10081DFF0);
  sub_100795B74();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v32;
}

id sub_1004EDCD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC5Books15BKTapActionView_listener + 8] = 0;
  v14 = swift_unknownObjectWeakInit();
  v15 = &v7[OBJC_IVAR____TtC5Books15BKTapActionView_action];
  *v15 = a6;
  *(v15 + 1) = a7;
  v16 = &v7[OBJC_IVAR____TtC5Books15BKTapActionView_fixedSize];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = a3 & 1;
  *(v14 + 8) = a5;
  if (a3)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *&a1;
  }

  if (a3)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *&a2;
  }

  swift_unknownObjectWeakAssign();
  v27.receiver = v7;
  v27.super_class = type metadata accessor for BKTapActionView();

  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, v17, v18);
  v20 = objc_allocWithZone(UITapGestureRecognizer);
  v21 = v19;
  v22 = [v20 initWithTarget:v21 action:{"fireAction:", v27.receiver, v27.super_class}];
  [v22 setDelegate:v21];
  v23 = v21;
  [v23 addGestureRecognizer:v22];
  v24 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v23];
  [v23 addInteraction:v25];

  swift_unknownObjectRelease();

  return v23;
}

void sub_1004EDF2C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BKTapActionView();
  objc_msgSendSuper2(&v5, "didMoveToWindow");
  v2 = [v1 window];
  if (v2)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      sub_1006E6D08(&v4, v1);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_10062484C(v1);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

id sub_1004EE1F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BKTapActionView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004EE3C0(id a1)
{
  if (*(v1 + 64))
  {
    v3 = sub_1007A2214();
    [a1 setLargeContentTitle:v3];

    [a1 setShowsLargeContentViewer:1];
    sub_1001F1160(&qword_100AE7EB8, &unk_10082D260);
    sub_10079D0C4();
    v4 = *(v7 + 16);

    [a1 addInteraction:v4];
  }

  else
  {
    [a1 setLargeContentTitle:0];
    [a1 setShowsLargeContentViewer:0];
    sub_1001F1160(&qword_100AE7EB8, &unk_10082D260);
    sub_10079D0C4();
    v4 = *(v7 + 16);

    [a1 removeInteraction:v4];
  }

  if (*(v1 + 80))
  {
    v5 = sub_1007A2214();
    v6 = [objc_opt_self() imageNamed:v5];

    [a1 setLargeContentImage:v6];
  }

  else
  {
    [a1 setLargeContentImage:0];
  }
}

id sub_1004EE55C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = objc_allocWithZone(type metadata accessor for BKTapActionView());
  swift_unknownObjectRetain();

  return sub_1004EDCD4(v1, v2, v3, v4, v5, v7, v6);
}

id sub_1004EE5E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TapActionView.Coordinator();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1004EE638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004EEB50();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004EE69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004EEB50();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1004EE700(uint64_t a1)
{
  sub_1004EEB50();
  sub_10079CC64();
  __break(1u);
}

id sub_1004EE728(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
    if (sub_1007A3184())
    {
      sub_10000A7C4(0, &qword_100AD7E90, UIPointerRegion_ptr);
      [v2 bounds];
      sub_1007A2B84();
      v3 = sub_1007A2B94();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1004EE830(void *a1)
{
  v2 = sub_1001F1160(&unk_100AE7EA0, &qword_100814EE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_10079B1D4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
    if (sub_1007A3184())
    {
      v12 = [objc_allocWithZone(UITargetedPreview) initWithView:v11];
      sub_10000A7C4(0, &unk_100AD7E80, UIPointerStyle_ptr);
      *v9 = v12;
      (*(v6 + 104))(v9, enum case for UIPointerEffect.automatic(_:), v5);
      v13 = sub_10079B0F4();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      v14 = sub_1007A2AE4();

      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1004EEA4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1004EEA94(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1004EEAFC()
{
  result = qword_100AE7EB0;
  if (!qword_100AE7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EB0);
  }

  return result;
}

unint64_t sub_1004EEB50()
{
  result = qword_100AE7EC0;
  if (!qword_100AE7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EC0);
  }

  return result;
}

uint64_t sub_1004EEBA4(uint64_t *a1, int a2)
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

uint64_t sub_1004EEBEC(uint64_t result, int a2, int a3)
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

uint64_t sub_1004EEC44()
{
  v1[45] = v0;
  sub_1007A26F4();
  v1[46] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[47] = v3;
  v1[48] = v2;

  return _swift_task_switch(sub_1004EECDC, v3, v2);
}

uint64_t sub_1004EECDC()
{
  v40 = v0;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v3 = [v2 uiChildContext];
  *(v0 + 392) = v3;

  v4 = [v1 defaultManager];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  isa = sub_1007A25D4().super.isa;
  v6 = [v4 mostRecentlyEngagedLibraryAssetWithTypes:isa inManagedObjectContext:v3];

  v7 = v6;
  if (!v6)
  {
    v8 = [v1 defaultManager];
    v9 = sub_1007A25D4().super.isa;
    v10 = [v8 mostRecentlyOpenedLibraryAssetWithTypes:v9 inManagedObjectContext:v3];

    if (!v10)
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v33 = sub_10079ACE4();
      sub_100008B98(v33, qword_100AE7ED0);
      v34 = sub_10079ACC4();
      v35 = sub_1007A29B4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v39[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1000070F4(0xD000000000000010, 0x80000001008D91D0, v39);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: Failed to find recent book.", v36, 0xCu);
        sub_1000074E0(v37);
      }

      sub_1004FA080();
      swift_allocError();
      *v38 = 7;
      swift_willThrow();

      v32 = *(v0 + 8);
      goto LABEL_24;
    }

    v7 = v10;
  }

  *(v0 + 400) = v7;
  v11 = v6;

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100811390;
  *(inited + 32) = v7;
  v13 = v7;
  v14 = sub_1004F6BD4(inited, v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v14 + 2))
  {
    v15 = *(v14 + 3);
    *(v0 + 16) = *(v14 + 2);
    *(v0 + 32) = v15;
    v16 = *(v14 + 4);
    v17 = *(v14 + 5);
    v18 = *(v14 + 7);
    *(v0 + 80) = *(v14 + 6);
    *(v0 + 96) = v18;
    *(v0 + 48) = v16;
    *(v0 + 64) = v17;
    sub_1002A40C0(v0 + 16, v0 + 112);

    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AE7ED0);
    sub_1002A40C0(v0 + 16, v0 + 208);
    v20 = sub_10079ACC4();
    v21 = sub_1007A29D4();
    sub_1002A411C(v0 + 16);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 16);
      v23 = *(v0 + 24);
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_1000070F4(0xD000000000000010, 0x80000001008D91D0, v39);
      *(v24 + 12) = 2080;

      v25 = sub_1000070F4(v22, v23, v39);

      *(v24 + 14) = v25;
      *(v24 + 22) = 2080;
      sub_100795D54();
      v26 = *(v0 + 352);
      if (v26)
      {
        v27 = *(v0 + 344);
      }

      else
      {
        v27 = 0x6E776F6E6B6E75;
      }

      if (v26)
      {
        v28 = *(v0 + 352);
      }

      else
      {
        v28 = 0xE700000000000000;
      }

      v29 = sub_1000070F4(v27, v28, v39);

      *(v24 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: assetID: %s title: %s", v24, 0x20u);
      swift_arrayDestroy();
    }

    v30 = swift_task_alloc();
    *(v0 + 408) = v30;
    *v30 = v0;
    v30[1] = sub_1004EF2D4;

    return sub_1004F2C14((v0 + 16), v13);
  }

  v32 = *(v0 + 8);
LABEL_24:

  return v32();
}

uint64_t sub_1004EF2D4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_1004EF48C;
  }

  else
  {
    v5 = sub_1004EF410;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004EF410()
{
  v1 = *(v0 + 392);

  sub_1002A411C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EF48C()
{
  v1 = *(v0 + 392);

  sub_1002A411C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EF508(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1007A26F4();
  v2[18] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[19] = v4;
  v2[20] = v3;

  return _swift_task_switch(sub_1004EF5A0, v4, v3);
}

uint64_t sub_1004EF5A0()
{
  v25 = v0;
  v1 = v0[16];
  v2 = *v1;
  v3 = v1[1];
  if (qword_100AD1798 != -1)
  {
    swift_once();
    v1 = v0[16];
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AE7ED0);

  sub_1002A40C0(v1, (v0 + 2));
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  sub_1002A411C(v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_1000070F4(0xD000000000000011, 0x80000001008D9160, v24);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(v2, v3, v24);
    *(v7 + 22) = 2080;
    sub_100795D54();
    v8 = v0[15];
    if (v8)
    {
      v9 = v0[14];
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v10 = v0[15];
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_1000070F4(v9, v10, v24);

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: assetID: %s title: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1007A2214();
  v14 = [v12 libraryAssetOnMainQueueWithAssetID:v13];
  v0[21] = v14;

  if (v14)
  {
    v15 = v14;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_1004EFA04;
    v17 = v0[16];

    return sub_1004F2C14(v17, v15);
  }

  else
  {

    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_1000070F4(0xD000000000000011, 0x80000001008D9160, v24);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000070F4(v2, v3, v24);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Library asset not found. assetID: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    sub_1004FA080();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1004EFA04()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1004EFBB4;
  }

  else
  {
    v5 = sub_1004EFB40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004EFB40()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EFBB4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EFC24(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1007A26F4();
  v2[6] = sub_1007A26E4();
  v2[7] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1004EFCCC, v4, v3);
}

uint64_t sub_1004EFCCC(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_1007A26E4();
  v1[10] = v3;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1004EFDD0;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v4, &type metadata for () + 8);
}

uint64_t sub_1004EFDD0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004EFF30, v3, v2);
}

uint64_t sub_1004EFF30()
{

  v2 = sub_1007A2694();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;

  return _swift_task_switch(sub_1004EFFB4, v2, v1);
}

uint64_t sub_1004EFFB4(uint64_t a1)
{
  v7 = *(v1 + 24);
  v2 = sub_1007A26E4();
  *(v1 + 120) = v2;
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  v5 = sub_1001F1160(&qword_100AE7F90, qword_100810B60);
  *v4 = v1;
  v4[1] = sub_1004F00E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v2, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001008D9230, sub_1004FA894, v3, v5);
}

uint64_t sub_1004F00E4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1004F0244, v3, v2);
}

uint64_t sub_1004F0244()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F02A8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v3[8] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_1004F0354, v5, v4);
}

uint64_t sub_1004F0354(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_1007A26E4();
  v1[11] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_1004F0458;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v4, &type metadata for () + 8);
}

uint64_t sub_1004F0458()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1004F05B8, v3, v2);
}

uint64_t sub_1004F05B8()
{

  v2 = sub_1007A2694();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_1004F063C, v2, v1);
}

uint64_t sub_1004F063C(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = sub_1007A26E4();
  v1[16] = v5;
  v6 = swift_task_alloc();
  v1[17] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v1[18] = v7;
  v8 = sub_1001F1160(&qword_100AE7F90, qword_100810B60);
  *v7 = v1;
  v7[1] = sub_1004F0764;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 2, v5, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001008D9210, sub_1004FA6E8, v6, v8);
}

uint64_t sub_1004F0764()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1004F08C4, v3, v2);
}

uint64_t sub_1004F08C4()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F0928()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE7ED0);
  sub_100008B98(v0, qword_100AE7ED0);
  return sub_10079ACD4();
}

uint64_t sub_1004F09A8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_1007967F4();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100796CF4();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  v19 = (v12 + 16);
  v20 = (v6 + 16);
  v21 = (v3 + 104);
  v28 = v22;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v25 = v16;
      sub_1007A2154();
      sub_100796C94();
      (*v19)(v14, v18, v25);
      v24 = v32;
      (*v20)(v30, v10, v32);
      *v5 = type metadata accessor for BundleFinder();
      (*v21)(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v29);
      goto LABEL_7;
    }

    v23 = v16;
  }

  else
  {
    v23 = v16;
  }

  sub_1007A2154();
  sub_100796C94();
  (*v19)(v14, v18, v23);
  v24 = v32;
  (*v20)(v30, v10, v32);
  *v5 = type metadata accessor for BundleFinder();
  (*v21)(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v29);
LABEL_7:
  sub_100796834();
  (*(v6 + 8))(v10, v24);
  return (*(v12 + 8))(v18, v28);
}

void sub_1004F133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1001F1160(&qword_100AE7F98, &qword_10082D3D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = *a2;
  v12 = *(a2 + 24);
  v21 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v12;
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  v16 = v22;
  v17 = v23;
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_1004FA7DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20C38;
  v18 = _Block_copy(aBlock);
  v19 = v11;
  swift_unknownObjectRetain();
  v20 = v21;
  sub_1000077D8(&v27, v24, &qword_100AE6A50, &qword_10082AB30);
  sub_1000077D8(&v26, v24, &qword_100AE6A50, &qword_10082AB30);

  [v10 performBackgroundReadOnlyBlock:v18];
  _Block_release(v18);
}

uint64_t sub_1004F15A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() defaultManager];
  sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);
  v6 = sub_1007A2F04();

  sub_1004F6BD4(v6, a1);

  sub_1001F1160(&qword_100AE7F98, &qword_10082D3D8);
  return sub_1007A26B4();
}

uint64_t sub_1004F1698(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1007A26F4();
  v3[7] = sub_1007A26E4();
  v3[8] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_1004F1744, v5, v4);
}

uint64_t sub_1004F1744(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_1007A26E4();
  v1[11] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_1004F1848;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FA0D4, v4, &type metadata for () + 8);
}

uint64_t sub_1004F1848()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1004F19A8, v3, v2);
}

uint64_t sub_1004F19A8()
{

  v2 = sub_1007A2694();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_1004F1A2C, v2, v1);
}

uint64_t sub_1004F1A2C(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = sub_1007A26E4();
  v1[16] = v5;
  v6 = swift_task_alloc();
  v1[17] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v1[18] = v7;
  v8 = sub_1001F1160(&qword_100AE7F00, &qword_10082D330);
  *v7 = v1;
  v7[1] = sub_1004F1B54;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 2, v5, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008D8FB0, sub_1004FA0DC, v6, v8);
}

uint64_t sub_1004F1B54()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1004FAC24, v3, v2);
}

void sub_1004F1CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1001F1160(&qword_100AE7F08, &unk_10082D338);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = *a2;
  v12 = *(a2 + 24);
  v21 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v12;
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  v16 = v22;
  v17 = v23;
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 56) = v16;
  *(v14 + 64) = v17;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_1004FA0E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20A58;
  v18 = _Block_copy(aBlock);
  v19 = v11;
  swift_unknownObjectRetain();
  v20 = v21;
  sub_1000077D8(&v27, v24, &qword_100AE6A50, &qword_10082AB30);
  sub_1000077D8(&v26, v24, &qword_100AE6A50, &qword_10082AB30);

  [v10 performBackgroundReadOnlyBlock:v18];
  _Block_release(v18);
}

uint64_t sub_1004F1F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() defaultManager];
  sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);
  v6 = sub_1007A2F04();

  sub_1004F6DE0(v6, a1);

  sub_1001F1160(&qword_100AE7F08, &unk_10082D338);
  return sub_1007A26B4();
}

void sub_1004F2010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1001F1160(&qword_100AE7F98, &qword_10082D3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = *a2;
  v11 = *(a2 + 24);
  v20 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v11;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  v15 = v21;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 56) = v15;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1004FA984;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20C88;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  swift_unknownObjectRetain();
  v18 = v20;
  sub_1000077D8(&v25, v22, &qword_100AE6A50, &qword_10082AB30);
  sub_1000077D8(&v24, v22, &qword_100AE6A50, &qword_10082AB30);

  [v9 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1004F2274(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1007A26F4();
  v2[6] = sub_1007A26E4();
  v2[7] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1004F231C, v4, v3);
}

uint64_t sub_1004F231C(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_1007A26E4();
  v1[10] = v3;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1004F2420;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000014, 0x80000001008D8F90, sub_1004FAC44, v4, &type metadata for () + 8);
}

uint64_t sub_1004F2420()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004F2580, v3, v2);
}

uint64_t sub_1004F2580()
{

  v2 = sub_1007A2694();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;

  return _swift_task_switch(sub_1004F2604, v2, v1);
}

uint64_t sub_1004F2604(uint64_t a1)
{
  v7 = *(v1 + 24);
  v2 = sub_1007A26E4();
  *(v1 + 120) = v2;
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  v3[1] = vextq_s8(v7, v7, 8uLL);
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  v5 = sub_1001F1160(&qword_100AE7F00, &qword_10082D330);
  *v4 = v1;
  v4[1] = sub_1004F2734;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v2, &protocol witness table for MainActor, 0xD000000000000027, 0x80000001008D9110, sub_1004FA2B4, v3, v5);
}

uint64_t sub_1004F2734()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1004FAC28, v3, v2);
}

void sub_1004F2894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1001F1160(&qword_100AE7F08, &unk_10082D338);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = *a2;
  v11 = *(a2 + 24);
  v20 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v11;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  v15 = v21;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 56) = v15;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1004FA2BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A20B20;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  swift_unknownObjectRetain();
  v18 = v20;
  sub_1000077D8(&v25, v22, &qword_100AE6A50, &qword_10082AB30);
  sub_1000077D8(&v24, v22, &qword_100AE6A50, &qword_10082AB30);

  [v9 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1004F2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v11 = [objc_opt_self() defaultManager];
  isa = sub_1007A25D4().super.isa;
  v13 = [v11 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v14 = sub_1007A25E4();

  a5(v14, a1);

  sub_1001F1160(a6, a7);
  return sub_1007A26B4();
}

uint64_t sub_1004F2C14(void *a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v3[71] = sub_1007A26F4();
  v3[72] = sub_1007A26E4();
  v5 = a1[1];
  v3[73] = *a1;
  v3[74] = v5;
  v3[75] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v3[76] = v7;
  v3[77] = v6;

  return _swift_task_switch(sub_1004F2CE0, v7, v6);
}

uint64_t sub_1004F2CE0()
{
  v1 = *(v0[70] + 16);
  v0[78] = v1;
  v0[2] = v0;
  v0[7] = v0 + 66;
  v0[3] = sub_1004F2E04;
  v2 = swift_continuation_init();
  v0[53] = sub_1001F1160(&qword_100AE7EF0, &qword_10082AFE8);
  v0[46] = _NSConcreteStackBlock;
  v0[47] = 1107296256;
  v0[48] = sub_1003807B4;
  v0[49] = &unk_100A20B48;
  v0[50] = v2;
  [v1 requestPrimaryScene:v0 + 46];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F2E04()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);

  return _swift_task_switch(sub_1004F2F0C, v2, v1);
}

uint64_t sub_1004F2F0C()
{

  v1 = v0[66];
  v0[79] = [v1 newShowAssetTransaction];

  v3 = sub_1007A2694();
  v0[80] = v3;
  v0[81] = v2;

  return _swift_task_switch(sub_1004F2FBC, v3, v2);
}

uint64_t sub_1004F2FBC()
{
  v29 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 552);
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v4;
  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = v1;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v5;
  swift_unknownObjectRetain();
  sub_100795D54();
  v6 = *(v0 + 496);
  v7 = *(v0 + 504);
  if (!v7)
  {
    v7 = 0xE000000000000000;
    v6 = 0;
  }

  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000002BLL;
  *(inited + 136) = 0x80000001008BF710;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = sub_1007A2254();
  *(inited + 184) = v8;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v9 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  if (([v2 isOwned] & 1) != 0 || objc_msgSend(*(v0 + 552), "isLocal"))
  {
    v10 = *(v0 + 632);
    v11 = [*(v0 + 624) bookPresenter];
    *(v0 + 656) = v11;
    swift_unknownObjectRetain();
    v12 = sub_1007A2214();
    *(v0 + 664) = v12;
    sub_10058096C(v9);

    isa = sub_1007A2024().super.isa;
    *(v0 + 672) = isa;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 512;
    *(v0 + 88) = sub_1004F357C;
    v14 = swift_continuation_init();
    *(v0 + 488) = sub_1001F1160(&qword_100AE7EF8, &unk_10082D318);
    *(v0 + 432) = _NSConcreteStackBlock;
    *(v0 + 440) = 1107296256;
    *(v0 + 448) = sub_1004F3EAC;
    *(v0 + 456) = &unk_100A20B70;
    *(v0 + 464) = v14;
    [v11 showAssetWithTransaction:v10 assetID:v12 location:0 options:isa completion:v0 + 432];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v15 = *(v0 + 552);

    if ([v15 isNonLocalSample])
    {
      v16 = *(v0 + 632);
      v17 = *(v0 + 624);
      sub_1004F3F88(*(v0 + 552));
      v18 = [v17 bookPresenter];
      swift_unknownObjectRetain();
      v19 = sub_1007A2214();
      sub_10058096C(v9);

      v20 = sub_1007A2024().super.isa;

      [v18 showAssetWithTransaction:v16 storeID:v19 options:v20];
      swift_unknownObjectRelease_n();

      swift_unknownObjectRelease();
      v21 = *(v0 + 8);
    }

    else
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AE7ED0);
      v23 = sub_10079ACC4();
      v24 = sub_1007A29B4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1000070F4(0xD00000000000001FLL, 0x80000001008D9180, &v28);
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: Asset cannot be downloaded, device is offline.", v25, 0xCu);
        sub_1000074E0(v26);
      }

      sub_100795AD4();
      sub_100214F44();
      swift_allocError();
      sub_100795AB4();
      swift_willThrow();
      swift_unknownObjectRelease();
      v21 = *(v0 + 8);
    }

    return v21();
  }
}

uint64_t sub_1004F357C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 648);
  v4 = *(v1 + 640);
  if (v2)
  {
    v5 = sub_1004F375C;
  }

  else
  {
    v5 = sub_1004F36AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F36AC()
{
  v1 = v0[84];
  v2 = v0[83];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004F375C()
{
  v14 = v0;
  v1 = v0[84];
  v2 = v0[83];

  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE7ED0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[85];
    v7 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000070F4(0xD00000000000001FLL, 0x80000001008D9180, v13);
    *(v7 + 12) = 2080;
    v0[67] = v6;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v8 = sub_1007A22E4();
    v10 = sub_1000070F4(v8, v9, v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: showAsset failed. error: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1004F39A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1007A26F4();
  v2[4] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1004F3A38, v4, v3);
}

id sub_1004F3A38()
{
  v1 = v0;
  result = [objc_msgSend(*(v0[3] + 16) "bookPresenter")];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  swift_unknownObjectRelease();
  sub_1001F1160(&unk_100AE7F40, &qword_10082D380);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_1007A38D4();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_26:

    v18 = swift_task_alloc();
    v1[7] = v18;
    *v18 = v1;
    v18[1] = sub_1004F3D0C;
    v19 = v1[2];

    return sub_1004EF508(v19);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  v6 = 0;
  v20 = v1[2];
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007A3784();
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

LABEL_10:
    v9 = [v7 assetPresenterAssetID];
    if (v9)
    {
      v0 = v1;
      v10 = v1[2];
      v11 = v9;
      v12 = sub_1007A2254();
      v14 = v13;

      if (v12 == *v10 && v14 == *(v20 + 8))
      {
        goto LABEL_20;
      }

      v16 = sub_1007A3AB4();
      swift_unknownObjectRelease();

      v1 = v0;
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_26;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v4 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v1 = v0;
  swift_unknownObjectRelease();

LABEL_21:

  v17 = v1[1];

  return v17();
}

uint64_t sub_1004F3D0C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1004F3E48;
  }

  else
  {
    v5 = sub_1004AACB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F3E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F3EAC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a4;
    swift_unknownObjectRetain();

    return swift_continuation_throwingResume();
  }
}

void sub_1004F3F88(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 assetID];
    v6 = *v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v17 = *(v1 + 32);
    v18 = v7;
    v9 = swift_allocObject();
    v10 = *(v1 + 16);
    *(v9 + 24) = *v1;
    *(v9 + 16) = a1;
    *(v9 + 40) = v10;
    *(v9 + 56) = *(v1 + 32);
    aBlock[4] = sub_1004FA2E4;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004F4870;
    aBlock[3] = &unk_100A20BC0;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = v6;
    swift_unknownObjectRetain();
    v14 = v8;
    sub_1000077D8(&v18, v15, &qword_100AE6A50, &qword_10082AB30);
    sub_1000077D8(&v17, v15, &qword_100AE6A50, &qword_10082AB30);

    [v4 sampleDownloadURLForAssetID:v5 completion:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004F4130(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = sub_1007969B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v8, &unk_100AD5AC0, &unk_100811090);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v20 = [objc_opt_self() delegate];
    v21 = [v20 primaryAnalyticsController];

    v22 = sub_100797CF4();
    if (v22)
    {
      v23 = v22;
      v24 = [a3 assetID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1007A2254();
        v28 = v27;

        v29 = sub_1004FA2F0(v26, v28);

LABEL_12:
        v30 = [objc_opt_self() defaultHelper];
        sub_100796944(v31);
        v33 = v32;
        aBlock[4] = sub_1004F45DC;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004F47E0;
        aBlock[3] = &unk_100A20BE8;
        v34 = _Block_copy(aBlock);
        [v30 downloadSampleWithURL:v33 contentData:v29 tracker:v22 completion:v34];
        _Block_release(v34);

        (*(v10 + 8))(v12, v9);
        return;
      }
    }

    v29 = 0;
    goto LABEL_12;
  }

  sub_100007840(v8, &unk_100AD5AC0, &unk_100811090);
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AE7ED0);
  swift_errorRetain();
  v14 = sub_10079ACC4();
  v15 = sub_1007A29B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D91A0, aBlock);
    *(v16 + 12) = 2080;
    aBlock[6] = a2;
    swift_errorRetain();
    sub_1001F1160(&unk_100AE7F50, &qword_10082D3A0);
    v17 = sub_1007A22E4();
    v19 = sub_1000070F4(v17, v18, aBlock);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: sampleDownloadURL failed. error: %s", v16, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1004F45DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE7ED0);
    swift_errorRetain();
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v5 = 136315394;
      *(v5 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D91A0, &v9);
      *(v5 + 12) = 2080;
      swift_errorRetain();
      sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
      v6 = sub_1007A22E4();
      v8 = sub_1000070F4(v6, v7, &v9);

      *(v5 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: downloadSample failed. error: %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1004F47E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1007A25E4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1004F4870(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_100796974();
    v10 = sub_1007969B4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1007969B4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100007840(v8, &unk_100AD5AC0, &unk_100811090);
}

double sub_1004F49C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v17 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v8 = *a2;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a2 + 32);
  (*(v5 + 32))(v12 + v11, v7, v4);
  v14 = v8;
  swift_unknownObjectRetain();
  v15 = v10;
  sub_1000077D8(&v20, v18, &qword_100AE6A50, &qword_10082AB30);
  sub_1000077D8(&v19, v18, &qword_100AE6A50, &qword_10082AB30);
  sub_1007A2CD4();

  return result;
}

void sub_1004F4BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a1 + 8);
  v9 = sub_1007A2214();
  (*(v5 + 16))(v7, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A20AD0;
  v12 = _Block_copy(aBlock);

  [v8 appLaunchCoordinatorOnConditionMask:1 blockID:v9 performBlock:v12];
  _Block_release(v12);
}

void sub_1004F4D80(id *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v107 = a2;
  v122 = a3;
  v5 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v5 - 8);
  v111 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = v91 - v8;
  v9 = sub_1007967F4();
  v10 = *(v9 - 8);
  v126 = v9;
  v127 = v10;
  __chkstk_darwin(v9);
  v12 = (v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_100796CF4();
  v151 = *(v125 - 8);
  __chkstk_darwin(v125);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v91 - v16;
  v18 = sub_1007A21D4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v123 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v109 = v91 - v22;
  v23 = sub_100796814();
  v24 = __chkstk_darwin(v23 - 8);
  v108 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = [*a1 assetID];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1007A2254();
    v104 = v30;
    v105 = v29;

    v31 = [v26 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1007A2254();
      v102 = v34;
      v103 = v33;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    v41 = [v26 displayAuthor];
    v128 = v19;
    if (v41)
    {
      v42 = v41;
      v43 = sub_1007A2254();
      v98 = v44;
      v99 = v43;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v121 = v18;
    v45 = [v26 storeID];
    v124 = v26;
    v106 = v3;
    v46 = v14;
    if (v45)
    {
      v47 = v45;
      v48 = sub_1007A2254();
      v100 = v49;
      v101 = v48;
    }

    else
    {
      v100 = 0;
      v101 = 0;
    }

    sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
    v96 = sub_100795DC4();
    v97 = sub_100795DC4();
    v95 = sub_100795DC4();
    v50 = v109;
    sub_1007A2154();
    sub_100796C94();
    v51 = *(v128 + 16);
    v119 = v128 + 16;
    v120 = v51;
    v51(v123, v50, v121);
    v52 = *(v151 + 16);
    v117 = v151 + 16;
    v118 = v52;
    v53 = v125;
    v52(v46, v17, v125);
    v116 = type metadata accessor for BundleFinder();
    *v12 = v116;
    v115 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v54 = *(v127 + 104);
    v127 += 104;
    v114 = v54;
    v54(v12);
    sub_100796834();
    v55 = *(v151 + 8);
    v151 += 8;
    v113 = v55;
    v55(v17, v53);
    v56 = *(v128 + 8);
    v128 += 8;
    v112 = v56;
    v57 = v121;
    v56(v50, v121);
    v94 = sub_100795DB4();
    sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
    v93 = sub_100795DA4();
    v92 = sub_1001F1160(&unk_100AD9520, &unk_10082D3B0);
    sub_1007A2154();
    sub_100796C94();
    v58 = v123;
    v120(v123, v50, v57);
    v59 = v125;
    v118(v46, v17, v125);
    *v12 = v116;
    v114(v12, v115, v126);
    sub_100796834();
    v113(v17, v59);
    v112(v50, v57);
    sub_100211A50();
    v92 = sub_100795D74();
    v91[1] = sub_1001F1160(&unk_100AD9530, &unk_1008168E0);
    sub_1007A2154();
    sub_100796C94();
    v120(v58, v50, v57);
    v60 = v125;
    v118(v46, v17, v125);
    *v12 = v116;
    v114(v12, v115, v126);
    sub_100796834();
    v113(v17, v60);
    v112(v50, v57);
    sub_1004FA694(&unk_100AE7F80, &qword_100AD9540, &qword_10082D3C0);
    v61 = sub_100795D84();
    v138 = v103;
    v139 = v102;
    v62 = v96;
    sub_100795D64();
    v138 = v99;
    v139 = v98;
    v63 = v95;
    sub_100795D64();
    LOBYTE(v138) = 0;
    v64 = v92;
    sub_100795D64();
    *(&v133 + 1) = *v131;
    DWORD1(v133) = *&v131[3];
    *&v132 = v105;
    *(&v132 + 1) = v104;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = v62;
    *&v134 = v97;
    *(&v134 + 1) = v63;
    *&v135 = v94;
    *(&v135 + 1) = v93;
    *&v136 = v64;
    *(&v136 + 1) = v61;
    *&v137 = v101;
    *(&v137 + 1) = v100;
    v138 = v105;
    v139 = v104;
    v140 = 0;
    *v141 = *v131;
    *&v141[3] = *&v131[3];
    v142 = v62;
    v143 = v97;
    v144 = v63;
    v145 = v94;
    v146 = v93;
    v147 = v64;
    v148 = v61;
    v149 = v101;
    v150 = v100;
    sub_1002A40C0(&v132, &v129);
    sub_1002A411C(&v138);
    v65 = v124;
    v66 = [v124 seriesID];
    v67 = v122;
    v68 = v110;
    if (!v66)
    {
      goto LABEL_23;
    }

    v69 = v66;
    v70 = sub_1007A2254();
    v72 = v71;

    v73 = v107;
    if (*(v107 + 16))
    {
      v74 = sub_10000E53C(v70, v72);
      v76 = v75;

      if (v76)
      {
        v77 = *(*(v73 + 56) + 16 * v74);

LABEL_22:
        v129 = v77;
        v130 = v78;
        sub_100795D64();
        v65 = v124;
LABEL_23:
        v79 = [v65 genre];
        if (v79)
        {
          v80 = v79;
          v81 = sub_1007A2254();
          v83 = v82;

          v65 = v124;
        }

        else
        {
          v81 = 0;
          v83 = 0;
        }

        v129 = v81;
        v130 = v83;
        sub_100795D64();
        v84 = [v65 purchaseDate];
        if (v84)
        {
          v85 = v84;
          sub_100796B64();

          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v87 = sub_100796BB4();
        (*(*(v87 - 8) + 56))(v68, v86, 1, v87);
        sub_1000077D8(v68, v111, &unk_100ADB5C0, &unk_100816880);
        sub_100795D64();
        sub_100007840(v68, &unk_100ADB5C0, &unk_100816880);
        LOBYTE(v129) = [v124 contentType] == 3;
        sub_100795D64();
        v88 = v135;
        v67[2] = v134;
        v67[3] = v88;
        v89 = v137;
        v67[4] = v136;
        v67[5] = v89;
        v90 = v133;
        *v67 = v132;
        v67[1] = v90;
        return;
      }
    }

    else
    {
    }

    v77 = 0;
    v78 = 0;
    goto LABEL_22;
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100AE7ED0);
  v36 = sub_10079ACC4();
  v37 = sub_1007A29B4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v138 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000070F4(0xD00000000000001ELL, 0x80000001008D91F0, &v138);
    _os_log_impl(&_mh_execute_header, v36, v37, "%s: nil assetID.", v38, 0xCu);
    sub_1000074E0(v39);
  }

  v40 = v122;
  v122[4] = 0u;
  v40[5] = 0u;
  v40[2] = 0u;
  v40[3] = 0u;
  *v40 = 0u;
  v40[1] = 0u;
}

double sub_1004F5944@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v6 = sub_1007967F4();
  v150 = *(v6 - 8);
  __chkstk_darwin(v6);
  v126 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100796CF4();
  v149 = *(v8 - 8);
  __chkstk_darwin(v8);
  v148 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v107 - v11;
  v136 = sub_1007A21D4();
  v169 = *(v136 - 8);
  __chkstk_darwin(v136);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v145 = &v107 - v15;
  v16 = sub_100796814();
  __chkstk_darwin(v16 - 8);
  v147 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v18 - 8);
  v128 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v127 = &v107 - v21;
  v23 = __chkstk_darwin(v22);
  v25 = &v107 - v24;
  v26 = *a1;
  v27 = [v26 assetID];
  if (v27)
  {
    v146 = v6;
    v28 = v27;
    v29 = sub_1007A2254();
    v123 = v30;
    v124 = v29;

    v31 = [v26 seriesID];
    v130 = v25;
    if (!v31)
    {
      v121 = 0;
      v122 = 0;
LABEL_15:
      v50 = [v26 title];
      if (v50)
      {
        v51 = v50;
        v52 = sub_1007A2254();
        v117 = v53;
        v118 = v52;
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }

      v54 = [v26 displayAuthor];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1007A2254();
        v115 = v57;
        v116 = v56;
      }

      else
      {
        v115 = 0;
        v116 = 0;
      }

      v58 = [v26 storeID];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1007A2254();
        v119 = v61;
        v120 = v60;
      }

      else
      {
        v119 = 0;
        v120 = 0;
      }

      v62 = [v26 genre];
      if (v62)
      {
        v63 = v62;
        v64 = sub_1007A2254();
        v113 = v65;
        v114 = v64;
      }

      else
      {
        v113 = 0;
        v114 = 0;
      }

      v66 = [v26 purchaseDate];
      v125 = v3;
      if (v66)
      {
        v67 = v130;
        v68 = v66;
        sub_100796B64();

        v69 = sub_100796BB4();
        (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
      }

      else
      {
        v70 = sub_100796BB4();
        (*(*(v70 - 8) + 56))(v130, 1, 1, v70);
      }

      v133 = sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
      v71 = v145;
      sub_1007A2154();
      v72 = v134;
      sub_100796C94();
      v73 = *(v169 + 16);
      v135 = v169 + 16;
      v138 = v73;
      v74 = v13;
      v73(v13, v71, v136);
      v75 = v149;
      v76 = *(v149 + 16);
      v141 = v149 + 16;
      v142 = v76;
      v132 = v8;
      v76(v148, v72, v8);
      v137 = type metadata accessor for BundleFinder();
      v77 = v126;
      *v126 = v137;
      v140 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v143 = *(v150 + 104);
      v150 += 104;
      v143(v77);
      sub_100796834();
      v144 = *(v75 + 8);
      v149 = v75 + 8;
      v144(v72, v8);
      v78 = *(v169 + 8);
      v169 += 8;
      v139 = v78;
      v79 = v136;
      v78(v71, v136);
      v129 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v13, v71, v79);
      v80 = v132;
      v142(v148, v72, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v72, v80);
      v81 = v145;
      v139(v145, v79);
      v112 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v74, v81, v79);
      v82 = v72;
      v83 = v132;
      v142(v148, v72, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v72, v83);
      v84 = v145;
      v85 = v136;
      v139(v145, v136);
      v111 = sub_100795DB4();
      sub_1007A2154();
      sub_100796C94();
      v138(v74, v84, v85);
      v86 = v82;
      v87 = v82;
      v88 = v132;
      v142(v148, v87, v132);
      *v77 = v137;
      (v143)(v77, v140, v146);
      v89 = v74;
      sub_100796834();
      v90 = v88;
      v144(v86, v88);
      v91 = v145;
      v92 = v136;
      v139(v145, v136);
      v133 = sub_100795DB4();
      v110 = sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
      sub_1007A2154();
      v93 = v134;
      sub_100796C94();
      v108 = v89;
      v138(v89, v91, v92);
      v142(v148, v93, v90);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v93, v90);
      v94 = v145;
      v139(v145, v92);
      v110 = sub_100795D94();
      v109 = sub_1001F1160(&qword_100AE7F20, &qword_10082D348);
      v95 = v94;
      sub_1007A2154();
      v96 = v134;
      sub_100796C94();
      v138(v108, v95, v92);
      v142(v148, v96, v90);
      *v77 = v137;
      (v143)(v77, v140, v146);
      sub_100796834();
      v144(v96, v90);
      v139(v95, v92);
      sub_1004FA694(&qword_100AE7F28, &unk_100AE7F30, &unk_10082D350);
      v169 = sub_100795D84();
      v158 = v118;
      v159 = v117;
      sub_100795D64();
      v158 = v116;
      v159 = v115;
      v97 = v111;
      sub_100795D64();
      v158 = v122;
      v159 = v121;
      v98 = v112;
      sub_100795D64();
      v158 = v114;
      v159 = v113;
      v99 = v133;
      sub_100795D64();
      v100 = v130;
      v101 = v127;
      sub_1000077D8(v130, v127, &unk_100ADB5C0, &unk_100816880);
      sub_1000077D8(v101, v128, &unk_100ADB5C0, &unk_100816880);
      v102 = v110;
      sub_100795D64();
      sub_100007840(v101, &unk_100ADB5C0, &unk_100816880);
      sub_100007840(v100, &unk_100ADB5C0, &unk_100816880);
      *&v152 = v124;
      *(&v152 + 1) = v123;
      *&v153 = v129;
      *(&v153 + 1) = v98;
      *&v154 = v97;
      *(&v154 + 1) = v99;
      *&v155 = v102;
      *(&v155 + 1) = v169;
      *&v156 = v120;
      *(&v156 + 1) = v119;
      v157 = 0;
      v158 = v124;
      v159 = v123;
      v160 = v129;
      v161 = v98;
      v162 = v97;
      v163 = v99;
      v164 = v102;
      v165 = v169;
      v166 = v120;
      v167 = v119;
      v168 = 0;
      sub_1004FA128(&v152, &v151);
      sub_1004FA184(&v158);
      v103 = v155;
      v104 = v156;
      v105 = v131;
      *(v131 + 32) = v154;
      *(v105 + 48) = v103;
      *(v105 + 64) = v104;
      *(v105 + 80) = v157;
      result = *&v152;
      v106 = v153;
      *v105 = v152;
      *(v105 + 16) = v106;
      return result;
    }

    v32 = v31;
    v33 = v8;
    v34 = sub_1007A2254();
    v36 = v35;

    if (*(a2 + 16))
    {
      v37 = a2;
      v38 = sub_10000E53C(v34, v36);
      v40 = v39;

      if (v40)
      {
        v41 = (*(v37 + 56) + 16 * v38);
        v42 = *v41;
        v121 = v41[1];
        v122 = v42;

LABEL_14:
        v8 = v33;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v121 = 0;
    v122 = 0;
    goto LABEL_14;
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v43 = sub_10079ACE4();
  sub_100008B98(v43, qword_100AE7ED0);
  v44 = sub_10079ACC4();
  v45 = sub_1007A29B4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v158 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008D8FE0, &v158);
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: nil assetID.", v46, 0xCu);
    sub_1000074E0(v47);
  }

  v48 = v131;
  *(v131 + 80) = 0;
  result = 0.0;
  v48[3] = 0u;
  v48[4] = 0u;
  v48[1] = 0u;
  v48[2] = 0u;
  *v48 = 0u;
  return result;
}