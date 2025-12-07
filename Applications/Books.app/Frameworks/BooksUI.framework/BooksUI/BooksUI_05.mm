uint64_t sub_8AA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_2EF0(&qword_31ABD0, &qword_26FD20);
  sub_8AAFC(a1, a2, a3 + *(v6 + 44));
  result = sub_2EF0(&qword_31ABB0, &qword_26FD10);
  *(a3 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_8AAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v98 = a3;
  v95 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  __chkstk_darwin(v95);
  v97 = &v77 - v4;
  v91 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  __chkstk_darwin(v91);
  v92 = &v77 - v5;
  v94 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  __chkstk_darwin(v94);
  v93 = &v77 - v6;
  v7 = type metadata accessor for TopLockupMetadataView(0);
  v8 = *(v7 - 8);
  v103 = v7 - 8;
  v81 = v8;
  __chkstk_darwin(v7 - 8);
  v82 = v9;
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_260BD0();
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = v10;
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_31AAC8, &qword_26FBB8);
  v89 = *(v11 - 8);
  v90 = v11;
  __chkstk_darwin(v11);
  v101 = &v77 - v12;
  v13 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v13 - 8);
  v77 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v15 - 8);
  v17 = &v77 - v16;
  v18 = sub_262730();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v22 - 8);
  v24 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  __chkstk_darwin(v88);
  v100 = (&v77 - v25);
  v87 = sub_2EF0(&qword_31ABD8, &qword_26FD28);
  __chkstk_darwin(v87);
  v96 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v86 = &v77 - v28;
  __chkstk_darwin(v29);
  v102 = &v77 - v30;
  sub_875D8(v24);
  (*(v19 + 104))(v21, enum case for Font.TextStyle.caption(_:), v18);
  v31 = enum case for Font.Design.rounded(_:);
  v32 = sub_2625C0();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v17, v31, v32);
  (*(v33 + 56))(v17, 0, 1, v32);
  sub_262650();
  v99 = sub_262680();
  sub_8E80(v17, &qword_318458, &unk_26B270);
  (*(v19 + 8))(v21, v18);
  sub_9315C(v24, type metadata accessor for FontConstants);
  if (*(a1 + *(v103 + 88)) == 1)
  {
    v34 = v77;
    sub_873EC(v77);
    v103 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v34, type metadata accessor for ColorConstants);
  }

  else
  {
    v103 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v35 = sub_261E50();
  v36 = v100;
  *v100 = v35;
  v36[1] = 0;
  *(v36 + 16) = 1;
  v77 = *(sub_2EF0(&qword_31AAE8, &qword_26FBC0) + 44);
  v38 = v79;
  v37 = v80;
  v39 = v83;
  (*(v80 + 16))(v79, v85, v83);
  v40 = a1;
  v41 = v84;
  sub_927C4(v40, v84);
  v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v43 = (v78 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v81 + 80) + v43 + 8) & ~*(v81 + 80);
  v45 = (v82 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v37 + 32))(v46 + v42, v38, v39);
  v47 = v103;
  *(v46 + v43) = v103;
  v103 = v47;
  sub_93094(v41, v46 + v44, type metadata accessor for TopLockupMetadataView);
  *(v46 + v45) = v99;

  sub_2EF0(&qword_31AB70, &unk_26FCB0);
  sub_260A70();
  sub_260A50();
  sub_93780(&qword_31AB78, &qword_31AB70, &unk_26FCB0, sub_93DBC);
  sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v48 = v101;
  sub_260A80();
  v49 = v89;
  v50 = v48;
  v51 = v90;
  (*(v89 + 16))(v92, v50, v90);
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_31AAA0, &qword_26FB90);
  sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8, &protocol conformance descriptor for JetLocalize<A, B, C>);
  sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90, &protocol conformance descriptor for JetLocalize<A, B, C>);
  v52 = v93;
  sub_261F80();
  sub_8198(v52, v97, &qword_31AA98, &qword_26FB88);
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_318460, &qword_26FBA0);
  sub_9339C();
  sub_9347C();
  v53 = v100;
  sub_261F80();
  sub_8E80(v52, &qword_31AA98, &qword_26FB88);
  (*(v49 + 8))(v101, v51);

  *(v53 + *(v88 + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v55 = v86;
  sub_22148(v53, v86, &qword_31AA70, &qword_26FB70);
  v56 = v55 + *(v87 + 36);
  *v56 = KeyPath;
  *(v56 + 8) = 1;
  *(v56 + 16) = 0;
  v57 = v55;
  v58 = v102;
  sub_22148(v57, v102, &qword_31ABD8, &qword_26FD28);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v95 = v139;
  LODWORD(v43) = v140;
  v103 = v141;
  LODWORD(KeyPath) = v142;
  v59 = v143;
  v101 = v143;
  v97 = v144;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v138 = v43;
  LODWORD(v99) = v43;
  v137 = KeyPath;
  LODWORD(v100) = KeyPath;
  v60 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v61 = swift_getKeyPath();
  v62 = v58;
  v63 = v96;
  sub_8198(v62, v96, &qword_31ABD8, &qword_26FD28);
  v64 = v98;
  sub_8198(v63, v98, &qword_31ABD8, &qword_26FD28);
  v65 = (v64 + *(sub_2EF0(&qword_31ABE0, &qword_26FD30) + 48));
  v66 = v95;
  *&v111 = v95;
  BYTE8(v111) = v43;
  *&v112 = v103;
  BYTE8(v112) = KeyPath;
  v67 = v97;
  *&v113 = v59;
  *(&v113 + 1) = v97;
  v118 = v108;
  v119 = v109;
  v120 = v110;
  v114 = v104;
  v115 = v105;
  v117 = v107;
  v116 = v106;
  *&v121 = v61;
  *(&v121 + 1) = v60;
  v68 = v112;
  *v65 = v111;
  v65[1] = v68;
  v69 = v113;
  v70 = v114;
  v71 = v116;
  v65[4] = v115;
  v65[5] = v71;
  v65[2] = v69;
  v65[3] = v70;
  v72 = v117;
  v73 = v118;
  v74 = v121;
  v75 = v119;
  v65[9] = v120;
  v65[10] = v74;
  v65[7] = v73;
  v65[8] = v75;
  v65[6] = v72;
  sub_8198(&v111, &v122, &qword_31ABE8, &qword_26FD38);
  sub_8E80(v102, &qword_31ABD8, &qword_26FD28);
  v122 = v66;
  v123 = v99;
  v124 = v103;
  v125 = v100;
  v126 = v101;
  v127 = v67;
  v132 = v108;
  v133 = v109;
  v134 = v110;
  v128 = v104;
  v129 = v105;
  v131 = v107;
  v130 = v106;
  v135 = v61;
  v136 = v60;
  sub_8E80(&v122, &qword_31ABE8, &qword_26FD38);
  return sub_8E80(v63, &qword_31ABD8, &qword_26FD28);
}

uint64_t sub_8B8EC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &enum case for Font.TextStyle.title2(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v9 = &enum case for Font.TextStyle.title(_:);
  }

  (*(v5 + 104))(v8, *v9, v4, v6);
  v10 = enum case for Font.Design.serif (_:);
  v11 = sub_2625C0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v3, v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_2625E0();
  v13 = sub_262680();
  sub_8E80(v3, &qword_318458, &unk_26B270);
  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_8BAFC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &enum case for Font.TextStyle.body(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v9 = &enum case for Font.TextStyle.title2(_:);
  }

  (*(v5 + 104))(v8, *v9, v4, v6);
  v10 = enum case for Font.Design.serif (_:);
  v11 = sub_2625C0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v3, v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_262650();
  v13 = sub_262680();
  sub_8E80(v3, &qword_318458, &unk_26B270);
  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_8BD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a1;
  v151 = a3;
  v152 = sub_2EF0(&qword_31AB48, &qword_26FBF8);
  v132 = *(v152 - 8);
  __chkstk_darwin(v152);
  v131 = &v107 - v4;
  v149 = sub_2EF0(&qword_31AB50, &qword_26FC00);
  __chkstk_darwin(v149);
  v150 = &v107 - v5;
  v146 = sub_263F70();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_261FA0();
  v120 = *(v147 - 8);
  __chkstk_darwin(v147);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2604E0();
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2EF0(&qword_31AB30, &qword_26FBF0);
  __chkstk_darwin(v141);
  v112 = &v107 - v10;
  v142 = sub_2EF0(&qword_31AB28, &qword_26FBE8);
  v114 = *(v142 - 8);
  __chkstk_darwin(v142);
  v113 = &v107 - v11;
  v144 = sub_2EF0(&qword_31AB20, &qword_26FBE0);
  v116 = *(v144 - 8);
  __chkstk_darwin(v144);
  v115 = &v107 - v12;
  v148 = sub_2EF0(&qword_31AB58, &qword_26FC08);
  v119 = *(v148 - 8);
  __chkstk_darwin(v148);
  v117 = &v107 - v13;
  v130 = sub_2EF0(&qword_31AAA0, &qword_26FB90);
  v125 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  __chkstk_darwin(v125);
  v128 = &v107 - v14;
  v140 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  __chkstk_darwin(v140);
  v129 = &v107 - v15;
  v16 = type metadata accessor for TopLockupMetadataView(0);
  v121 = *(v16 - 8);
  __chkstk_darwin(v16);
  v122 = v17;
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2EF0(&qword_31AAC8, &qword_26FBB8);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v107 - v18;
  v136 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  __chkstk_darwin(v136);
  v138 = &v107 - v19;
  v133 = sub_260BD0();
  v20 = *(v133 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v133);
  v135 = sub_2EF0(&qword_318460, &qword_26FBA0);
  __chkstk_darwin(v135);
  v23 = &v107 - v22;
  v24 = sub_2EF0(&qword_31AAB0, &qword_26FBA8);
  __chkstk_darwin(v24 - 8);
  v137 = &v107 - v25;
  v26 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v26 - 8);
  v28 = (&v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v29 - 8);
  v31 = (&v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  v108 = *(v154 - 8);
  __chkstk_darwin(v154);
  v110 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v32;
  __chkstk_darwin(v33);
  v155 = &v107 - v34;
  v157 = v16;
  v134 = *(v16 + 64);
  v35 = a2;
  sub_8198(a2 + v134, &v161, &qword_316BA0, &unk_268B90);
  v36 = v164;
  sub_8E80(&v161, &qword_316BA0, &unk_268B90);
  v37 = !v36 || (sub_879CC() & 1) == 0;
  v38 = v35;
  sub_875D8(v31);
  v156 = sub_8D448();
  sub_9315C(v31, type metadata accessor for FontConstants);
  if (*(v35 + *(v157 + 80)) == 1)
  {
    sub_873EC(v28);
    v39 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v28, type metadata accessor for ColorConstants);
  }

  else
  {
    v39 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v40 = v155;
  *v40 = sub_261E50();
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  v41 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v133;
  (*(v20 + 16))(v41, v139, v133);
  v153 = v38;
  if (v37)
  {
    sub_260B10();
    KeyPath = swift_getKeyPath();
    v44 = &v23[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    v45 = v156;
    *v44 = KeyPath;
    v44[1] = v45;
    v46 = swift_getKeyPath();
    v47 = &v23[*(v135 + 36)];
    *v47 = v46;
    v47[1] = v39;
    sub_8198(v23, v138, &qword_318460, &qword_26FBA0);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();

    v48 = v137;
    sub_261F80();
    sub_8E80(v23, &qword_318460, &qword_26FBA0);
  }

  else
  {
    v49 = v123;
    sub_927C4(v38, v123);
    v50 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v51 = (v21 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (*(v121 + 80) + v51 + 8) & ~*(v121 + 80);
    v53 = (v122 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v20 + 32))(v54 + v50, v41, v42);
    *(v54 + v51) = v39;
    sub_93094(v49, v54 + v52, type metadata accessor for TopLockupMetadataView);
    *(v54 + v53) = v156;
    v40 = v155;

    v139 = v39;
    sub_2EF0(&qword_31AB70, &unk_26FCB0);
    sub_260A70();
    sub_260A50();
    sub_93780(&qword_31AB78, &qword_31AB70, &unk_26FCB0, sub_93DBC);
    sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    v55 = v124;
    sub_260A80();
    v56 = v126;
    v57 = v127;
    (*(v126 + 16))(v128, v55, v127);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90, &protocol conformance descriptor for JetLocalize<A, B, C>);
    v58 = v129;
    sub_261F80();
    sub_8198(v58, v138, &qword_31AA98, &qword_26FB88);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();
    v48 = v137;
    sub_261F80();
    sub_8E80(v58, &qword_31AA98, &qword_26FB88);
    (*(v56 + 8))(v55, v57);
  }

  v59 = sub_2EF0(&qword_31AAE8, &qword_26FBC0);
  sub_22148(v48, v40 + *(v59 + 44), &qword_31AAB0, &qword_26FBA8);

  v60 = v153;
  v61 = v154;
  *(v40 + *(v154 + 36)) = 256;
  sub_8198(v60 + v134, &v158, &qword_316BA0, &unk_268B90);
  if (v160)
  {
    sub_F7CC(&v158, &v161);
    if (sub_879CC())
    {
      v62 = v141;
      v63 = v112;
      v64 = &v112[*(v141 + 48)];
      v65 = sub_2EF0(&qword_31AB60, &qword_26FC10);
      v64[3] = v65;
      v64[4] = sub_8E38(&qword_31AB68, &qword_31AB60, &qword_26FC10, &unk_268B6C);
      v66 = sub_10934(v64);
      v67 = sub_2610B0();
      (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
      v68 = (v63 + v62[13]);
      v69 = v164;
      v70 = v165;
      v71 = sub_2E18(&v161, v164);
      v68[3] = v69;
      v68[4] = *(v70 + 8);
      v72 = sub_10934(v68);
      (*(*(v69 - 8) + 16))(v72, v71, v69);
      v73 = v110;
      sub_8198(v40, v110, &qword_31AA70, &qword_26FB70);
      v74 = (*(v108 + 80) + 16) & ~*(v108 + 80);
      v75 = swift_allocObject();
      sub_22148(v73, v75 + v74, &qword_31AA70, &qword_26FB70);
      sub_2604C0();
      sub_260420();
      v76 = v63 + v62[9];
      *v76 = swift_getKeyPath();
      *(v76 + 8) = 0;
      v77 = v62[10];
      *(v63 + v77) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v78 = v63 + v62[11];
      *v78 = swift_getKeyPath();
      *(v78 + 40) = 0;
      v79 = (v66 + *(v65 + 36));
      *v79 = sub_93D18;
      v79[1] = v75;
      v80 = sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0, &protocol conformance descriptor for BooksActionButton<A>);
      v81 = sub_93AC0();
      v82 = v113;
      sub_262A60();
      sub_8E80(v63, &qword_31AB30, &qword_26FBF0);
      v83 = v118;
      sub_2618C0();
      *&v158 = v62;
      *(&v158 + 1) = &type metadata for PressedButtonStyle;
      v159 = v80;
      v160 = v81;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v85 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
      v86 = v115;
      v87 = v142;
      v88 = v147;
      sub_262AA0();
      (*(v120 + 8))(v83, v88);
      (*(v114 + 8))(v82, v87);
      v89 = v143;
      sub_263F60();
      *&v158 = v87;
      *(&v158 + 1) = v88;
      v159 = OpaqueTypeConformance2;
      v160 = v85;
      v90 = swift_getOpaqueTypeConformance2();
      v91 = v117;
      v92 = v144;
      sub_262910();
      (*(v145 + 8))(v89, v146);
      (*(v116 + 8))(v86, v92);
      v93 = v119;
      v94 = v148;
      (*(v119 + 16))(v150, v91, v148);
      swift_storeEnumTagMultiPayload();
      *&v158 = v92;
      *(&v158 + 1) = v90;
      swift_getOpaqueTypeConformance2();
      v95 = sub_932E4();
      *&v158 = v154;
      *(&v158 + 1) = v95;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      (*(v93 + 8))(v91, v94);
      sub_8E80(v155, &qword_31AA70, &qword_26FB70);
      return sub_3080(&v161);
    }

    sub_3080(&v161);
  }

  else
  {
    sub_8E80(&v158, &qword_316BA0, &unk_268B90);
  }

  v97 = v143;
  sub_263F60();
  v98 = sub_932E4();
  v99 = v131;
  sub_262910();
  (*(v145 + 8))(v97, v146);
  v100 = v132;
  v101 = v152;
  (*(v132 + 16))(v150, v99, v152);
  swift_storeEnumTagMultiPayload();
  v102 = sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0, &protocol conformance descriptor for BooksActionButton<A>);
  v103 = sub_93AC0();
  v161 = v141;
  v162 = &type metadata for PressedButtonStyle;
  v163 = v102;
  v164 = v103;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v161 = v142;
  v162 = v147;
  v163 = v104;
  v164 = v105;
  v106 = swift_getOpaqueTypeConformance2();
  v161 = v144;
  v162 = v106;
  swift_getOpaqueTypeConformance2();
  v161 = v61;
  v162 = v98;
  swift_getOpaqueTypeConformance2();
  sub_261F80();
  (*(v100 + 8))(v99, v101);
  return sub_8E80(v40, &qword_31AA70, &qword_26FB70);
}

uint64_t sub_8D448()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_262730();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &enum case for Font.TextStyle.subheadline(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v9 = &enum case for Font.TextStyle.title3(_:);
  }

  (*(v5 + 104))(v8, *v9, v4, v6);
  v10 = sub_2625C0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_262630();
  v11 = sub_262680();
  sub_8E80(v3, &qword_318458, &unk_26B270);
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_8D610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a2;
  v65 = a3;
  v52 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  __chkstk_darwin(v52);
  v53 = &v50 - v4;
  v64 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  __chkstk_darwin(v64);
  v57 = &v50 - v5;
  v6 = sub_2EF0(&qword_31AAA0, &qword_26FB90);
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v50 - v7;
  v61 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  __chkstk_darwin(v61);
  v63 = &v50 - v8;
  v9 = sub_260BD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = v11;
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2EF0(&qword_318460, &qword_26FBA0);
  __chkstk_darwin(v60);
  v13 = &v50 - v12;
  v14 = sub_2EF0(&qword_31AAB0, &qword_26FBA8);
  __chkstk_darwin(v14 - 8);
  v62 = &v50 - v15;
  v16 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2EF0(&qword_31A7E8, &qword_26F970);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v50 - v24;
  sub_8198(a1, &v50 - v24, &qword_31A7E8, &qword_26F970);
  v26 = v25[*(v23 + 56)];
  (*(v10 + 8))(v25, v9);
  v27 = v58;
  sub_875D8(v21);
  v28 = sub_8D448();
  sub_9315C(v21, type metadata accessor for FontConstants);
  if (*(v27 + *(type metadata accessor for TopLockupMetadataView(0) + 80)) == 1)
  {
    sub_873EC(v18);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v29 = sub_263000();

    sub_9315C(v18, type metadata accessor for ColorConstants);
  }

  else
  {
    v29 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v30 = sub_261E50();
  v31 = v65;
  *v65 = v30;
  v31[1] = 0;
  *(v31 + 16) = 1;
  v32 = v59;
  (*(v10 + 16))(v59, a1, v9);
  if (v26)
  {
    v33 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v34 = (v51 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v32;
    v37 = v35;
    (*(v10 + 32))(v35 + v33, v36, v9);
    *(v37 + v34) = v28;
    *(v37 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;

    sub_2EF0(&qword_31AAF0, &qword_26FBC8);
    sub_260A70();
    sub_260A50();
    sub_93780(&qword_31AAF8, &qword_31AAF0, &qword_26FBC8, sub_93834);
    sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    v59 = v28;
    v38 = v54;
    sub_260A80();
    v40 = v55;
    v39 = v56;
    (*(v55 + 16))(v53, v38, v56);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31AAC8, &qword_26FBB8);
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90, &protocol conformance descriptor for JetLocalize<A, B, C>);
    v41 = v57;
    sub_261F80();
    sub_8198(v41, v63, &qword_31AA98, &qword_26FB88);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();
    v42 = v62;
    sub_261F80();
    sub_8E80(v41, &qword_31AA98, &qword_26FB88);
    (*(v40 + 8))(v38, v39);
  }

  else
  {
    sub_260B10();
    KeyPath = swift_getKeyPath();
    v44 = &v13[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    *v44 = KeyPath;
    v44[1] = v28;
    v45 = swift_getKeyPath();
    v46 = &v13[*(v60 + 36)];
    *v46 = v45;
    v46[1] = v29;
    sub_8198(v13, v63, &qword_318460, &qword_26FBA0);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();

    v42 = v62;
    sub_261F80();
    sub_8E80(v13, &qword_318460, &qword_26FBA0);
  }

  v47 = sub_2EF0(&qword_31AAE8, &qword_26FBC0);
  v48 = v65;
  sub_22148(v42, v65 + *(v47 + 44), &qword_31AAB0, &qword_26FBA8);

  result = sub_2EF0(&qword_31AA70, &qword_26FB70);
  *(v48 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_8DF58@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v22 = a1;
  v24 = sub_262370();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_31A9B8, &qword_26FAB8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v23 = sub_2EF0(&qword_31A9C8, &unk_26FAC0);
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - v10;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v13 = sub_2624C0();
  *(inited + 32) = v13;
  v14 = sub_2624E0();
  *(inited + 33) = v14;
  v15 = sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v13)
  {
    v15 = sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v14)
  {
    v15 = sub_2624D0();
  }

  *v8 = v15;
  v16 = sub_2EF0(&qword_31A9D0, &qword_26FAD0);
  sub_8E2A4(v22, &v8[*(v16 + 44)]);
  sub_262350();
  sub_8E38(&qword_31A9C0, &qword_31A9B8, &qword_26FAB8, &protocol conformance descriptor for ViewThatFits<A>);
  sub_262C70();
  (*(v3 + 8))(v5, v24);
  sub_8E80(v8, &qword_31A9B8, &qword_26FAB8);
  v17 = sub_870B8() & 1;
  KeyPath = swift_getKeyPath();
  v19 = v26;
  (*(v9 + 32))(v26, v11, v23);
  result = sub_2EF0(&qword_31A9A8, &qword_26FAB0);
  v21 = v19 + *(result + 36);
  *v21 = KeyPath;
  *(v21 + 8) = v17;
  return result;
}

uint64_t sub_8E2A4@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v4 = sub_2EF0(&qword_31A9D8, &qword_26FAD8);
  __chkstk_darwin(v4 - 8);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_2EF0(&qword_31A9E0, &qword_26FAE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v46 = sub_2EF0(&qword_31A9E8, &qword_26FAE8);
  __chkstk_darwin(v46);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v51 = &v46 - v20;
  v21 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v24 - 8);
  v26 = (&v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_2EF0(&qword_31A9F0, &qword_26FAF0);
  v28 = v27 - 8;
  __chkstk_darwin(v27);
  v47 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v46 - v31;
  sub_87200(v26);
  sub_93094(v26, v23, type metadata accessor for SizeConstants.Environment);
  sub_9315C(v23, type metadata accessor for SizeConstants.Spacing);
  *v32 = sub_261D30();
  *(v32 + 1) = 0x4010000000000000;
  v32[16] = 0;
  v33 = sub_2EF0(&qword_31A9F8, &qword_26FAF8);
  sub_8E844(a2, &v32[*(v33 + 44)]);
  *&v32[*(v28 + 44)] = 1;
  if (sub_870B8())
  {
    v34 = sub_261E50();
  }

  else
  {
    v34 = sub_261E60();
  }

  *v14 = v34;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v35 = sub_2EF0(&qword_31AA00, &qword_26FB00);
  sub_8F558(a2, &v14[*(v35 + 44)]);
  sub_22148(v14, v18, &qword_31A9E0, &qword_26FAE0);
  *&v18[*(v46 + 36)] = 1;
  sub_22148(v18, v51, &qword_31A9E8, &qword_26FAE8);
  if (sub_870B8())
  {
    v36 = sub_261E50();
  }

  else
  {
    v36 = sub_261E60();
  }

  *v8 = v36;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v37 = sub_2EF0(&qword_31AA08, &qword_26FB08);
  sub_90324(a2, &v8[*(v37 + 44)]);
  sub_22148(v8, v11, &qword_31A9D8, &qword_26FAD8);
  v38 = v47;
  sub_8198(v32, v47, &qword_31A9F0, &qword_26FAF0);
  v39 = v51;
  v40 = v48;
  sub_8198(v51, v48, &qword_31A9E8, &qword_26FAE8);
  v41 = v49;
  sub_8198(v11, v49, &qword_31A9D8, &qword_26FAD8);
  v42 = v11;
  v43 = v50;
  sub_8198(v38, v50, &qword_31A9F0, &qword_26FAF0);
  v44 = sub_2EF0(&qword_31AA10, &qword_26FB10);
  sub_8198(v40, v43 + *(v44 + 48), &qword_31A9E8, &qword_26FAE8);
  sub_8198(v41, v43 + *(v44 + 64), &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v42, &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v39, &qword_31A9E8, &qword_26FAE8);
  sub_8E80(v32, &qword_31A9F0, &qword_26FAF0);
  sub_8E80(v41, &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v40, &qword_31A9E8, &qword_26FAE8);
  return sub_8E80(v38, &qword_31A9F0, &qword_26FAF0);
}

uint64_t sub_8E844@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v122 = a2;
  v3 = sub_2EF0(&qword_31AA40, &qword_26FB40);
  v128 = *(v3 - 8);
  __chkstk_darwin(v3);
  v125 = &v103 - v4;
  v5 = sub_2EF0(&qword_31AA48, &qword_26FB48);
  __chkstk_darwin(v5 - 8);
  v114 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v117 = &v103 - v8;
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v9 - 8);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = (&v103 - v12);
  __chkstk_darwin(v13);
  v15 = &v103 - v14;
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v19 = sub_2EF0(&qword_31AA50, &qword_26FB50);
  __chkstk_darwin(v19 - 8);
  v120 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v103 - v22;
  __chkstk_darwin(v23);
  v118 = &v103 - v24;
  __chkstk_darwin(v25);
  v131 = &v103 - v26;
  v27 = sub_260BD0();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v111 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = &v103 - v31;
  __chkstk_darwin(v32);
  v107 = &v103 - v33;
  __chkstk_darwin(v34);
  v124 = &v103 - v35;
  __chkstk_darwin(v36);
  v38 = &v103 - v37;
  v126 = sub_260B00();
  v129 = *(v126 - 8);
  __chkstk_darwin(v126);
  v109 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v130 = &v103 - v41;
  v43 = __chkstk_darwin(v42);
  v45 = &v103 - v44;
  v46 = v28[2];
  v108 = v28 + 2;
  v112 = v46;
  (v46)(v38, a1, v27, v43);
  v127 = v45;
  sub_260B10();
  v47 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v48 = a1;
  sub_8198(&a1[v47[5]], v18, &qword_316208, &qword_268BD0);
  v49 = v28[6];
  v50 = v49(v18, 1, v27);
  v121 = v3;
  v115 = v49;
  v123 = v28;
  if (v50 == 1)
  {
    v15 = v18;
LABEL_5:
    v52 = v128;
    sub_8E80(v15, &qword_316208, &qword_268BD0);
    v53 = 1;
    goto LABEL_7;
  }

  v51 = v28[4];
  v51(v124, v18, v27);
  sub_8198(&v48[v47[7]], v15, &qword_316208, &qword_268BD0);
  if (v49(v15, 1, v27) == 1)
  {
    (v123[1])(v124, v27);
    v3 = v121;
    goto LABEL_5;
  }

  v54 = v107;
  v51(v107, v15, v27);
  v112(v38, v54, v27);
  v106 = v48;
  v55 = v130;
  sub_260B10();
  sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
  v56 = v117;
  v57 = v126;
  sub_262C60();
  v58 = v129;
  v105 = *(v129 + 8);
  v105(v55, v57);
  v112(v38, v124, v27);
  sub_260B10();
  v59 = v56;
  v60 = v114;
  sub_8198(v59, v114, &qword_31AA48, &qword_26FB48);
  v61 = *(v58 + 16);
  v104 = v47;
  v62 = v109;
  v61();
  sub_8198(v60, v125, &qword_31AA48, &qword_26FB48);
  v63 = sub_2EF0(&qword_31AA60, &qword_26FB60);
  (v61)(v125 + *(v63 + 48), v62, v57);
  v64 = v55;
  v48 = v106;
  v65 = v105;
  v105(v64, v57);
  sub_8E80(v117, &qword_31AA48, &qword_26FB48);
  v66 = v123[1];
  v66(v107, v27);
  v66(v124, v27);
  v67 = v62;
  v47 = v104;
  v65(v67, v57);
  sub_8E80(v114, &qword_31AA48, &qword_26FB48);
  sub_22148(v125, v131, &qword_31AA40, &qword_26FB40);
  v53 = 0;
  v3 = v121;
  v52 = v128;
LABEL_7:
  v68 = v116;
  v70 = *(v52 + 56);
  v69 = v52 + 56;
  v124 = v70;
  (v70)(v131, v53, 1, v3);
  sub_8198(&v48[v47[6]], v68, &qword_316208, &qword_268BD0);
  v71 = v115;
  if (v115(v68, 1, v27) == 1)
  {
    v72 = v68;
  }

  else
  {
    v128 = v69;
    v73 = v68;
    v74 = v123;
    v75 = v123[4];
    v76 = v113;
    v75(v113, v73, v27);
    v77 = &v48[v47[7]];
    v72 = v110;
    sub_8198(v77, v110, &qword_316208, &qword_268BD0);
    if (v71(v72, 1, v27) != 1)
    {
      v81 = v111;
      v75(v111, v72, v27);
      v82 = v112;
      v112(v38, v81, v27);
      v83 = v130;
      sub_260B10();
      sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
      v84 = v117;
      v85 = v126;
      sub_262C60();
      v86 = v129;
      v116 = *(v129 + 8);
      v116(v83, v85);
      v82(v38, v76, v27);
      sub_260B10();
      v87 = v125;
      v88 = v114;
      sub_8198(v84, v114, &qword_31AA48, &qword_26FB48);
      v89 = *(v86 + 16);
      v90 = v109;
      v89(v109, v83, v85);
      sub_8198(v88, v87, &qword_31AA48, &qword_26FB48);
      v91 = sub_2EF0(&qword_31AA60, &qword_26FB60);
      v89((v87 + *(v91 + 48)), v90, v85);
      v92 = v116;
      v116(v83, v85);
      sub_8E80(v117, &qword_31AA48, &qword_26FB48);
      v93 = v123[1];
      v93(v111, v27);
      v93(v113, v27);
      v80 = v89;
      v92(v90, v85);
      sub_8E80(v88, &qword_31AA48, &qword_26FB48);
      v79 = v118;
      sub_22148(v125, v118, &qword_31AA40, &qword_26FB40);
      (v124)(v79, 0, 1, v121);
      goto LABEL_13;
    }

    (v74[1])(v76, v27);
    v3 = v121;
  }

  v78 = v129;
  sub_8E80(v72, &qword_316208, &qword_268BD0);
  v79 = v118;
  (v124)(v118, 1, 1, v3);
  v80 = *(v78 + 16);
LABEL_13:
  v94 = v130;
  v95 = v126;
  v80(v130, v127, v126);
  v96 = v119;
  sub_8198(v131, v119, &qword_31AA50, &qword_26FB50);
  v97 = v120;
  sub_8198(v79, v120, &qword_31AA50, &qword_26FB50);
  v98 = v122;
  v80(v122, v94, v95);
  v99 = v79;
  v100 = sub_2EF0(&qword_31AA68, &qword_26FB68);
  sub_8198(v96, &v98[*(v100 + 48)], &qword_31AA50, &qword_26FB50);
  sub_8198(v97, &v98[*(v100 + 64)], &qword_31AA50, &qword_26FB50);
  sub_8E80(v99, &qword_31AA50, &qword_26FB50);
  sub_8E80(v131, &qword_31AA50, &qword_26FB50);
  v101 = *(v129 + 8);
  v101(v127, v95);
  sub_8E80(v97, &qword_31AA50, &qword_26FB50);
  sub_8E80(v96, &qword_31AA50, &qword_26FB50);
  return (v101)(v130, v95);
}

uint64_t sub_8F558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_260B00();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_260BD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v44 - v11;
  v12 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v21 - 8);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_2EF0(&qword_31AA28, &qword_26FB28);
  __chkstk_darwin(v24 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v44 - v28;
  sub_87200(v23);
  sub_93094(v23, v20, type metadata accessor for SizeConstants.Environment);
  sub_9315C(v20, type metadata accessor for SizeConstants.Spacing);
  *v29 = sub_261D30();
  *(v29 + 1) = 0x4010000000000000;
  v29[16] = 0;
  v30 = sub_2EF0(&qword_31AA30, &qword_26FB30);
  v31 = v48;
  sub_8FAEC(v48, &v29[*(v30 + 44)]);
  v32 = type metadata accessor for TopLockupMetadataView.Footer(0);
  sub_8198(v31 + *(v32 + 24), v6, &qword_316208, &qword_268BD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_8E80(v6, &qword_316208, &qword_268BD0);
    v33 = 1;
    v35 = v49;
    v34 = v50;
  }

  else
  {
    v36 = v45;
    (*(v8 + 32))(v45, v6, v7);
    (*(v8 + 16))(v46, v36, v7);
    v37 = v47;
    sub_260B10();
    (*(v8 + 8))(v36, v7);
    v38 = v49;
    v39 = v37;
    v40 = v50;
    (*(v49 + 32))(v17, v39, v50);
    v33 = 0;
    v34 = v40;
    v35 = v38;
  }

  (*(v35 + 56))(v17, v33, 1, v34);
  sub_8198(v29, v26, &qword_31AA28, &qword_26FB28);
  sub_8198(v17, v14, &qword_31AA18, &qword_26FB18);
  v41 = v51;
  sub_8198(v26, v51, &qword_31AA28, &qword_26FB28);
  v42 = sub_2EF0(&qword_31AA38, &qword_26FB38);
  sub_8198(v14, v41 + *(v42 + 48), &qword_31AA18, &qword_26FB18);
  sub_8E80(v17, &qword_31AA18, &qword_26FB18);
  sub_8E80(v29, &qword_31AA28, &qword_26FB28);
  sub_8E80(v14, &qword_31AA18, &qword_26FB18);
  return sub_8E80(v26, &qword_31AA28, &qword_26FB28);
}

uint64_t sub_8FAEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = sub_2EF0(&qword_31AA40, &qword_26FB40);
  v74 = *(v3 - 8);
  __chkstk_darwin(v3);
  v66 = &v62 - v4;
  v5 = sub_2EF0(&qword_31AA48, &qword_26FB48);
  __chkstk_darwin(v5 - 8);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v62 - v8;
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v9 - 8);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = sub_2EF0(&qword_31AA50, &qword_26FB50);
  __chkstk_darwin(v14 - 8);
  v73 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v62 - v17;
  v18 = sub_260BD0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v76 = &v62 - v22;
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  v77 = sub_260B00();
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v64 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v78 = &v62 - v28;
  v30 = __chkstk_darwin(v29);
  v32 = &v62 - v31;
  v63 = *(v19 + 16);
  v63(v25, a1, v18, v30);
  v71 = v32;
  sub_260B10();
  v33 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v34 = a1;
  sub_8198(a1 + *(v33 + 20), v13, &qword_316208, &qword_268BD0);
  v70 = v19;
  v35 = *(v19 + 48);
  if (v35(v13, 1, v18) != 1)
  {
    v62 = v3;
    v36 = *(v70 + 32);
    v36(v76, v13, v18);
    v13 = v67;
    sub_8198(v34 + *(v33 + 28), v67, &qword_316208, &qword_268BD0);
    if (v35(v13, 1, v18) != 1)
    {
      v39 = v69;
      v36(v69, v13, v18);
      v40 = v63;
      (v63)(v25, v39, v18);
      v41 = v78;
      sub_260B10();
      sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
      v42 = v68;
      v43 = v77;
      sub_262C60();
      v44 = v79;
      v67 = *(v79 + 8);
      (v67)(v41, v43);
      v40(v25, v76, v18);
      sub_260B10();
      v45 = v42;
      v46 = v65;
      sub_8198(v45, v65, &qword_31AA48, &qword_26FB48);
      v47 = *(v44 + 16);
      v48 = v64;
      v47(v64, v41, v43);
      v63 = v47;
      v49 = v66;
      sub_8198(v46, v66, &qword_31AA48, &qword_26FB48);
      v50 = sub_2EF0(&qword_31AA60, &qword_26FB60);
      v47((v49 + *(v50 + 48)), v48, v43);
      v51 = v67;
      (v67)(v41, v43);
      sub_8E80(v68, &qword_31AA48, &qword_26FB48);
      v52 = *(v70 + 8);
      v52(v69, v18);
      v52(v76, v18);
      v51(v48, v43);
      sub_8E80(v46, &qword_31AA48, &qword_26FB48);
      v53 = v49;
      v37 = v72;
      sub_22148(v53, v72, &qword_31AA40, &qword_26FB40);
      (*(v74 + 56))(v37, 0, 1, v62);
      v38 = v63;
      goto LABEL_6;
    }

    (*(v70 + 8))(v76, v18);
    v3 = v62;
  }

  v37 = v72;
  sub_8E80(v13, &qword_316208, &qword_268BD0);
  (*(v74 + 56))(v37, 1, 1, v3);
  v38 = *(v79 + 16);
LABEL_6:
  v55 = v77;
  v54 = v78;
  v56 = v71;
  v38(v78, v71, v77);
  v57 = v73;
  sub_8198(v37, v73, &qword_31AA50, &qword_26FB50);
  v58 = v75;
  v38(v75, v54, v55);
  v59 = sub_2EF0(&qword_31AA58, &qword_26FB58);
  sub_8198(v57, &v58[*(v59 + 48)], &qword_31AA50, &qword_26FB50);
  sub_8E80(v37, &qword_31AA50, &qword_26FB50);
  v60 = *(v79 + 8);
  v60(v56, v55);
  sub_8E80(v57, &qword_31AA50, &qword_26FB50);
  return (v60)(v54, v55);
}

uint64_t sub_90324@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  __chkstk_darwin(v8 - 8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v62 - v11;
  __chkstk_darwin(v12);
  v71 = &v62 - v13;
  __chkstk_darwin(v14);
  v77 = &v62 - v15;
  v16 = sub_260BD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v64 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  __chkstk_darwin(v22);
  v24 = &v62 - v23;
  v25 = sub_260B00();
  v67 = *(v25 - 8);
  v68 = v25;
  __chkstk_darwin(v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v62 - v30;
  v32 = *(v17 + 16);
  v32(v24, a1, v16, v29);
  v75 = v31;
  sub_260B10();
  v33 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v34 = *(v33 + 20);
  v69 = a1;
  sub_8198(a1 + v34, v7, &qword_316208, &qword_268BD0);
  v66 = *(v17 + 48);
  v35 = v66(v7, 1, v16);
  v76 = v27;
  v65 = v17;
  v63 = v32;
  if (v35 == 1)
  {
    sub_8E80(v7, &qword_316208, &qword_268BD0);
    v36 = 1;
    v38 = v67;
    v37 = v68;
    v39 = v77;
  }

  else
  {
    (*(v17 + 32))(v21, v7, v16);
    (v32)(v24, v21, v16);
    sub_260B10();
    (*(v17 + 8))(v21, v16);
    v38 = v67;
    v40 = v77;
    v41 = v27;
    v37 = v68;
    (*(v67 + 32))(v77, v41, v68);
    v36 = 0;
    v39 = v40;
  }

  v42 = v38[7];
  v42(v39, v36, 1, v37);
  v43 = *(v33 + 24);
  v44 = v70;
  sub_8198(v69 + v43, v70, &qword_316208, &qword_268BD0);
  if (v66(v44, 1, v16) == 1)
  {
    sub_8E80(v44, &qword_316208, &qword_268BD0);
    v45 = 1;
    v46 = v71;
    v47 = v37;
    v48 = v76;
  }

  else
  {
    v49 = v65;
    v50 = v38;
    v51 = v64;
    (*(v65 + 32))(v64, v44, v16);
    v63(v24, v51, v16);
    v48 = v76;
    sub_260B10();
    v52 = v51;
    v38 = v50;
    (*(v49 + 8))(v52, v16);
    v53 = v50[4];
    v46 = v71;
    v53(v71, v48, v37);
    v45 = 0;
    v47 = v37;
  }

  v42(v46, v45, 1, v47);
  v54 = v38[2];
  v54(v48, v75, v47);
  v55 = v72;
  sub_8198(v77, v72, &qword_31AA18, &qword_26FB18);
  v56 = v73;
  sub_8198(v46, v73, &qword_31AA18, &qword_26FB18);
  v57 = v48;
  v58 = v74;
  v54(v74, v57, v47);
  v59 = sub_2EF0(&qword_31AA20, &qword_26FB20);
  sub_8198(v55, &v58[*(v59 + 48)], &qword_31AA18, &qword_26FB18);
  sub_8198(v56, &v58[*(v59 + 64)], &qword_31AA18, &qword_26FB18);
  sub_8E80(v46, &qword_31AA18, &qword_26FB18);
  sub_8E80(v77, &qword_31AA18, &qword_26FB18);
  v60 = v38[1];
  v60(v75, v47);
  sub_8E80(v56, &qword_31AA18, &qword_26FB18);
  sub_8E80(v55, &qword_31AA18, &qword_26FB18);
  return (v60)(v76, v47);
}

uint64_t sub_909BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a6;
  v50 = a4;
  v57 = a2;
  v58 = a1;
  v8 = a1;
  v9 = sub_2616C0();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_260BD0();
  v56 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v51 = sub_2EF0(&qword_31AB88, &qword_287650);
  v16 = __chkstk_darwin(v51);
  v18 = &v50 - v17;
  v19 = *(v13 + 16);
  v55 = v13 + 16;
  v59 = v19;
  (v19)(v15, a2, v12, v16);
  sub_30CC(v8, v62);
  v20 = sub_2627B0();
  v22 = v21;
  LOBYTE(v8) = v23;
  v62[0] = a3;
  v24 = sub_2627F0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_39DBC(v20, v22, v8 & 1);

  sub_87B24(v11);
  v31 = Text.withTrailingForwardChevron(_:layoutDirection:)(1, v11, v24, v26, v28 & 1, v30);
  v33 = v32;
  LOBYTE(v22) = v34;
  sub_39DBC(v24, v26, v28 & 1);

  (*(v53 + 8))(v11, v54);
  v35 = sub_262840();
  v37 = v36;
  LOBYTE(v26) = v38;
  v40 = v39;
  sub_39DBC(v31, v33, v22 & 1);

  v41 = &v18[*(v51 + 36)];
  v42 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = sub_2630F0();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v18 = v35;
  *(v18 + 1) = v37;
  v18[16] = v26 & 1;
  *(v18 + 3) = v40;
  v59(v52, v57, v56);
  sub_30CC(v58, v62);
  v45 = sub_2627B0();
  v47 = v46;
  LOBYTE(v42) = v48;
  sub_93DBC();
  sub_262BF0();
  sub_39DBC(v45, v47, v42 & 1);

  return sub_8E80(v18, &qword_31AB88, &qword_287650);
}

double sub_90DD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v67 = a2;
  v68 = a1;
  v70 = a5;
  v66 = sub_260BD0();
  v7 = __chkstk_darwin(v66);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v65 = v10 + 16;
  v69 = v11;
  v64 = v9;
  (v11)(v9, a2, v7);
  sub_30CC(a1, v75);
  v12 = sub_2627B0();
  v14 = v13;
  v16 = v15;
  v17 = sub_262840();
  v19 = v18;
  v21 = v20;
  sub_39DBC(v12, v14, v16 & 1);

  v22 = sub_2627E0();
  v24 = v23;
  v26 = v25;
  sub_39DBC(v17, v19, v21 & 1);

  v63 = sub_262820();
  v62 = v27;
  v60 = v28;
  v61 = v29;
  sub_39DBC(v22, v24, v26 & 1);

  sub_2630B0();
  v30 = sub_262900();
  v32 = v31;
  LOBYTE(v24) = v33;
  v34 = sub_262840();
  v36 = v35;
  v38 = v37;
  sub_39DBC(v30, v32, v24 & 1);

  v39 = sub_2627E0();
  v41 = v40;
  v43 = v42;
  sub_39DBC(v34, v36, v38 & 1);

  LOBYTE(v36) = v60;
  v44 = v63;
  v45 = v62;
  v58 = sub_262820();
  v47 = v46;
  v59 = v48;
  v50 = v49;
  sub_39DBC(v39, v41, v43 & 1);

  sub_39DBC(v44, v45, v36 & 1);

  v51 = v58;
  v71 = v58;
  v72 = v47;
  LOBYTE(v41) = v59 & 1;
  v73 = v59 & 1;
  v74 = v50;
  v69(v64, v67, v66);
  sub_30CC(v68, v75);
  v52 = sub_2627B0();
  v54 = v53;
  LOBYTE(v39) = v55;
  sub_2EF0(&qword_31AB08, &qword_26FBD0);
  sub_93834();
  sub_262BF0();
  sub_39DBC(v52, v54, v39 & 1);

  sub_39DBC(v51, v47, v41);

  return result;
}

uint64_t TopLockupMetadataView.Footer.init(leadingText:centerText:trailingText:separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_260BD0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for TopLockupMetadataView.Footer(0);
  sub_22148(a2, a5 + v11[5], &qword_316208, &qword_268BD0);
  sub_22148(a3, a5 + v11[6], &qword_316208, &qword_268BD0);
  return sub_22148(a4, a5 + v11[7], &qword_316208, &qword_268BD0);
}

uint64_t sub_91308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2622A0();
  if (sub_2622B0())
  {
    v6 = 0.6;
  }

  else
  {
    v6 = 1.0;
  }

  (*(v3 + 32))(a1, v5, v2);
  result = sub_2EF0(&qword_31ABF0, &unk_26FD90);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_9144C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  sub_261990();
  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_261170();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = sub_263640();
  v12 = &enum case for BlendMode.plusDarker(_:);
  if ((v9 & 1) == 0)
  {
    v12 = &enum case for BlendMode.plusLighter(_:);
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

uint64_t sub_915F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_261C40();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_9162C@<X0>(uint64_t a1@<X8>)
{
  result = sub_261C40();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_916C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261B80();
  *a1 = result;
  return result;
}

uint64_t sub_916EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261B80();
  *a1 = result;
  return result;
}

uint64_t sub_917B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v12 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[11]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(&qword_319B18, &qword_26DA40);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[12];
      goto LABEL_11;
    }

    v18 = sub_2EF0(&qword_315D48, &qword_266E40);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v7 = v18;
      v8 = *(v18 - 8);
      v9 = a3[17];
      goto LABEL_11;
    }

    v19 = sub_2EF0(&qword_31A718, &qword_26F840);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v7 = v19;
      v8 = *(v19 - 8);
      v9 = a3[18];
      goto LABEL_11;
    }

    v20 = sub_2EF0(&qword_31A720, &qword_26F848);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[19];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_91B58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  result = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v17 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v18 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[17];
    goto LABEL_11;
  }

  v19 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[18];
    goto LABEL_11;
  }

  v20 = sub_2EF0(&qword_31A720, &qword_26F848);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[19];

  return v21(v22, a2, a2, v20);
}

void sub_91EE4(uint64_t a1)
{
  sub_3E7AC();
  if (v1 <= 0x3F)
  {
    sub_92274(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_92274(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_92274(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_92274(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_92274(319, &qword_3194C8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_92274(319, &qword_31A7C0, type metadata accessor for HighlightAttributionViewLoader, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_92274(319, &qword_31A7C8, &type metadata accessor for LocalizerRequest, type metadata accessor for PlaceholderTextView.ContentType);
                if (v8 <= 0x3F)
                {
                  sub_922D8(319, &qword_31A7D0, &qword_316BA8, &unk_275850, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_92274(319, &qword_31A7D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_922D8(319, &qword_31A7E0, &qword_31A7E8, &qword_26F970, type metadata accessor for PlaceholderTextView.ContentType);
                      if (v11 <= 0x3F)
                      {
                        sub_92274(319, &unk_31A7F0, type metadata accessor for TopLockupMetadataView.Footer, type metadata accessor for PlaceholderTextView.ContentType);
                        if (v12 <= 0x3F)
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
  }
}

void sub_92274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_922D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_92350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_316208, &qword_268BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_92460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_316208, &qword_268BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_92568(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_92274(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_92628()
{
  result = qword_31A900;
  if (!qword_31A900)
  {
    sub_2F9C(&qword_31A740, &unk_26F8C8);
    sub_926E0();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A900);
  }

  return result;
}

unint64_t sub_926E0()
{
  result = qword_31A908;
  if (!qword_31A908)
  {
    sub_2F9C(&qword_31A730, &qword_26F858);
    sub_8E38(&qword_31A910, &qword_31A728, &qword_26F850, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A908);
  }

  return result;
}

uint64_t sub_927C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopLockupMetadataView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92844()
{

  return swift_deallocObject();
}

uint64_t sub_92894()
{
  v1 = type metadata accessor for TopLockupMetadataView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  sub_4054(*v3, *(v3 + 8));
  v4 = v3 + v1[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v6 = sub_261690();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v3 + v1[7];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_263640();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  sub_4054(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v14 = v1[10];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2616C0();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  sub_2EF0(&qword_319B18, &qword_26DA40);
  if (!swift_getEnumCaseMultiPayload())
  {
    v17 = sub_260BD0();
    (*(*(v17 - 8) + 8))(v3 + v16, v17);
  }

  v18 = v1[13];
  if (!swift_getEnumCaseMultiPayload())
  {
    v19 = sub_260BD0();
    (*(*(v19 - 8) + 8))(v3 + v18, v19);
  }

  v20 = v1[14];
  if (!swift_getEnumCaseMultiPayload())
  {
    v21 = sub_260BD0();
    (*(*(v21 - 8) + 8))(v3 + v20, v21);
  }

  v22 = v1[15];
  if (!swift_getEnumCaseMultiPayload())
  {
    v23 = sub_260BD0();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  v24 = (v3 + v1[16]);
  if (v24[3])
  {
    sub_3080(v24);
  }

  v25 = v1[17];
  v26 = sub_263E50();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v3 + v25, 1, v26))
  {
    (*(v27 + 8))(v3 + v25, v26);
  }

  v28 = v1[18];
  sub_2EF0(&qword_31A718, &qword_26F840);
  if (!swift_getEnumCaseMultiPayload())
  {
    v29 = sub_260BD0();
    (*(*(v29 - 8) + 8))(v3 + v28, v29);
  }

  v30 = v3 + v1[19];
  sub_2EF0(&qword_31A720, &qword_26F848);
  if (!swift_getEnumCaseMultiPayload())
  {
    v31 = sub_260BD0();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v30, v31);
    v34 = type metadata accessor for TopLockupMetadataView.Footer(0);
    v35 = v34[5];
    v36 = *(v32 + 48);
    if (!v36(v30 + v35, 1, v31))
    {
      v33(v30 + v35, v31);
    }

    v37 = v34[6];
    if (!v36(v30 + v37, 1, v31))
    {
      v33(v30 + v37, v31);
    }

    v38 = v34[7];
    if (!v36(v30 + v38, 1, v31))
    {
      v33(v30 + v38, v31);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_92FA0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TopLockupMetadataView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_93094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9315C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_931BC()
{
  result = qword_31A9B0;
  if (!qword_31A9B0)
  {
    sub_2F9C(&qword_31A9A8, &qword_26FAB0);
    sub_2F9C(&qword_31A9B8, &qword_26FAB8);
    sub_8E38(&qword_31A9C0, &qword_31A9B8, &qword_26FAB8, &protocol conformance descriptor for ViewThatFits<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A9B0);
  }

  return result;
}

unint64_t sub_932E4()
{
  result = qword_31AA78;
  if (!qword_31AA78)
  {
    sub_2F9C(&qword_31AA70, &qword_26FB70);
    sub_8E38(&qword_31AA80, &qword_31AA88, &qword_26FB78, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AA78);
  }

  return result;
}

unint64_t sub_9339C()
{
  result = qword_31AAB8;
  if (!qword_31AAB8)
  {
    sub_2F9C(&qword_31AA98, &qword_26FB88);
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90, &protocol conformance descriptor for JetLocalize<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAB8);
  }

  return result;
}

unint64_t sub_9347C()
{
  result = qword_31AAD8;
  if (!qword_31AAD8)
  {
    sub_2F9C(&qword_318460, &qword_26FBA0);
    sub_93534();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAD8);
  }

  return result;
}

unint64_t sub_93534()
{
  result = qword_31AAE0;
  if (!qword_31AAE0)
  {
    sub_2F9C(&qword_318470, &qword_26FBB0);
    sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAE0);
  }

  return result;
}

uint64_t sub_9361C()
{
  v1 = sub_260BD0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_936C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_90DD4(a1, v6, a2);
}

uint64_t sub_93780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_947D8(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_93834()
{
  result = qword_31AB00;
  if (!qword_31AB00)
  {
    sub_2F9C(&qword_31AB08, &qword_26FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB00);
  }

  return result;
}

unint64_t sub_938B0()
{
  result = qword_31AB18;
  if (!qword_31AB18)
  {
    sub_2F9C(&qword_31AB10, &qword_26FBD8);
    sub_2F9C(&qword_31AB20, &qword_26FBE0);
    sub_2F9C(&qword_31AB28, &qword_26FBE8);
    sub_261FA0();
    sub_2F9C(&qword_31AB30, &qword_26FBF0);
    sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0, &protocol conformance descriptor for BooksActionButton<A>);
    sub_93AC0();
    swift_getOpaqueTypeConformance2();
    sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31AA70, &qword_26FB70);
    sub_932E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB18);
  }

  return result;
}

unint64_t sub_93AC0()
{
  result = qword_31AB40;
  if (!qword_31AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB40);
  }

  return result;
}

uint64_t sub_93B14()
{
  v1 = *(sub_2EF0(&qword_31AA70, &qword_26FB70) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + *(sub_2EF0(&qword_31AAE8, &qword_26FBC0) + 44) + v2;
  sub_2EF0(&qword_31AAA8, &qword_26FB98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_260B00();
    (*(*(v4 - 8) + 8))(v3, v4);
    sub_2EF0(&qword_318470, &qword_26FBB0);

    sub_2EF0(&qword_318460, &qword_26FBA0);
  }

  else
  {
    sub_2EF0(&qword_31AA90, &qword_26FB80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = &qword_31AAA0;
      v6 = &qword_26FB90;
    }

    else
    {
      v5 = &qword_31AAC8;
      v6 = &qword_26FBB8;
    }

    v7 = sub_2EF0(v5, v6);
    (*(*(v7 - 8) + 8))(v3, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_93DBC()
{
  result = qword_31AB80;
  if (!qword_31AB80)
  {
    sub_2F9C(&qword_31AB88, &qword_287650);
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB80);
  }

  return result;
}

unint64_t sub_93E8C()
{
  result = qword_31ABB8;
  if (!qword_31ABB8)
  {
    sub_2F9C(&qword_31ABB0, &qword_26FD10);
    sub_8E38(&qword_31ABC0, &qword_31ABC8, &qword_26FD18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ABB8);
  }

  return result;
}

uint64_t sub_93F48()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for TopLockupMetadataView(0);
  v36 = *(*(v5 - 1) + 80);
  v6 = *(v2 + 8);
  v6(v0 + v3, v1);

  v7 = v0 + ((v4 + v36 + 8) & ~v36);
  sub_4054(*v7, *(v7 + 8));
  v8 = v7 + v5[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v5[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261180();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v7 + v5[7];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v15 = sub_261690();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
  }

  v16 = v5[8];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_263640();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  else
  {
  }

  sub_4054(*(v7 + v5[9]), *(v7 + v5[9] + 8));
  v18 = v5[10];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_2616C0();
    (*(*(v19 - 8) + 8))(v7 + v18, v19);
  }

  else
  {
  }

  v20 = v5[12];
  sub_2EF0(&qword_319B18, &qword_26DA40);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v7 + v20, v1);
  }

  v21 = v5[13];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v7 + v21, v1);
  }

  v22 = v5[14];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v7 + v22, v1);
  }

  v23 = v5[15];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v7 + v23, v1);
  }

  v24 = (v7 + v5[16]);
  if (v24[3])
  {
    sub_3080(v24);
  }

  v25 = v5[17];
  v26 = sub_263E50();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v7 + v25, 1, v26))
  {
    (*(v27 + 8))(v7 + v25, v26);
  }

  v28 = v5[18];
  sub_2EF0(&qword_31A718, &qword_26F840);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v7 + v28, v1);
  }

  v29 = v7 + v5[19];
  sub_2EF0(&qword_31A720, &qword_26F848);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v29, v1);
    v30 = type metadata accessor for TopLockupMetadataView.Footer(0);
    v31 = v30[5];
    v32 = *(v2 + 48);
    if (!v32(v29 + v31, 1, v1))
    {
      v6(v29 + v31, v1);
    }

    v33 = v30[6];
    if (!v32(v29 + v33, 1, v1))
    {
      v6(v29 + v33, v1);
    }

    v34 = v30[7];
    if (!v32(v29 + v34, 1, v1))
    {
      v6(v29 + v34, v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_945CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TopLockupMetadataView(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_909BC(a1, v2 + v6, v10, v2 + v9, v11, a2);
}

unint64_t sub_9471C()
{
  result = qword_31ABF8;
  if (!qword_31ABF8)
  {
    sub_2F9C(&qword_31ABF0, &unk_26FD90);
    sub_947D8(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ABF8);
  }

  return result;
}

uint64_t sub_947D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ToolbarActionShareLinkMenuItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionShareLinkMenuItem(0) + 20);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ToolbarActionShareLinkMenuItem(uint64_t a1)
{
  result = qword_31AC70;
  if (!qword_31AC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ToolbarActionShareLinkMenuItem.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ToolbarActionShareLinkMenuItem(0) + 28);

  return sub_94998(v3, a1);
}

uint64_t ToolbarActionShareLinkMenuItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionShareLinkMenuItem(0) + 40);
  v4 = sub_260060();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolbarActionShareLinkMenuItem.init(title:subtitle:icon:isEnabled:isExplicit:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  type metadata accessor for ProfileRestrictions(0);
  sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *a7 = sub_261900();
  *(a7 + 1) = v13;
  v14 = type metadata accessor for ToolbarActionShareLinkMenuItem(0);
  v15 = v14[5];
  v16 = sub_260BD0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&a7[v15], a1, v16);
  sub_8198(a2, &a7[v14[6]], &qword_316208, &qword_268BD0);
  sub_8198(a3, v27, &qword_31AC00, &qword_270F30);
  if (v30 == 255)
  {
    v19 = 0x800000000028FD20;
    sub_8E80(a3, &qword_31AC00, &qword_270F30);
    sub_8E80(a2, &qword_316208, &qword_268BD0);
    (*(v17 + 8))(a1, v16);
    if (v30 != 255)
    {
      sub_8E80(v27, &qword_31AC00, &qword_270F30);
    }

    v21 = 0;
    v18 = 0xD000000000000013;
    v20 = 1;
  }

  else
  {
    sub_8E80(a3, &qword_31AC00, &qword_270F30);
    sub_8E80(a2, &qword_316208, &qword_268BD0);
    (*(v17 + 8))(a1, v16);
    v18 = v27[0];
    v19 = v27[1];
    v20 = v28;
    v31[0] = *v29;
    *(v31 + 15) = *&v29[15];
    v21 = v30;
  }

  v22 = &a7[v14[7]];
  *v22 = v18;
  *(v22 + 1) = v19;
  v22[16] = v20;
  *(v22 + 17) = v31[0];
  *(v22 + 4) = *(v31 + 15);
  v22[40] = v21;
  a7[v14[8]] = a4 & 1;
  a7[v14[9]] = a5 & 1;
  v23 = v14[10];
  v24 = sub_260060();
  return (*(*(v24 - 8) + 32))(&a7[v23], a6, v24);
}

uint64_t ToolbarActionShareLinkMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260060();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ToolbarActionShareLinkMenuItem(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 40), v3);
  v14 = v1;
  type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_95060(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel, &unk_27D0B8);
  sub_263690();
  v8 = sub_950A8();
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v8 & 1;
  result = sub_2EF0(&qword_31AC10, &qword_26FDD0);
  v12 = (a1 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_95464;
  v12[2] = v10;
  return result;
}

uint64_t sub_94F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionShareLinkMenuItem(0);
  v5 = v4[5];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
  v7 = v4[6];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_8198(a1 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_94998(a1 + v4[7], a2 + v8[6]);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_95060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_950A8()
{
  v1 = type metadata accessor for ToolbarActionShareLinkMenuItem(0);
  if (*(v0 + *(v1 + 32)) != 1)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (*(v0 + *(v1 + 36)) != 1)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_260FF0();

    v4 = v6 ^ 1;
    return v4 & 1;
  }

  type metadata accessor for ProfileRestrictions(0);
  sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_951C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_260060();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 16))(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2 + *(a1 + 40), v6);
  v15 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_95060(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel, &unk_27D0B8);
  sub_263690();
  v9 = sub_950A8();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9 & 1;
  result = sub_2EF0(&qword_31AC10, &qword_26FDD0);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_95A74;
  v13[2] = v11;
  return result;
}

uint64_t sub_95390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_953C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_954AC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = sub_260BD0();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_260060();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_95644(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_260BD0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_260060();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_957BC(uint64_t a1)
{
  sub_95884(319);
  if (v1 <= 0x3F)
  {
    sub_260BD0();
    if (v2 <= 0x3F)
    {
      sub_95918(319);
      if (v3 <= 0x3F)
      {
        sub_260060();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_95884(uint64_t a1)
{
  if (!qword_31AC80)
  {
    type metadata accessor for ProfileRestrictions(255);
    sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    v1 = sub_261910();
    if (!v2)
    {
      atomic_store(v1, &qword_31AC80);
    }
  }
}

void sub_95918(uint64_t a1)
{
  if (!qword_31A8C8)
  {
    sub_260BD0();
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31A8C8);
    }
  }
}

unint64_t sub_95974()
{
  result = qword_31ACC8;
  if (!qword_31ACC8)
  {
    sub_2F9C(&qword_31AC10, &qword_26FDD0);
    sub_8E38(&qword_31ACD0, &qword_31ACD8, &unk_26FE80, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ACC8);
  }

  return result;
}

uint64_t static Font.Design.serifIfSupported.getter@<X0>(uint64_t a2@<X8>)
{
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v3 = sub_2625C0();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    v8 = enum case for Font.Design.serif (_:);
    v9 = sub_2625C0();
    v11 = *(v9 - 8);
    (*(v11 + 104))(a2, v8, v9);
    v4 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t sub_95B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_265050();
  sub_264500();
  v6 = sub_265080();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_264F10() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_95C90()
{
  result = sub_95CB0();
  qword_31ACE0 = result;
  return result;
}

uint64_t sub_95CB0()
{
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  result = kCTFontUIFontDesignTrait;
  if (!kCTFontUIFontDesignTrait)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = sub_264460();
  *(inited + 40) = v2;
  result = kCTFontUIFontDesignSerif;
  if (!kCTFontUIFontDesignSerif)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(inited + 48) = sub_264460();
  *(inited + 56) = v3;
  v4 = sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  sub_2EF0(&qword_31AD00, &qword_26FF70);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_267D30;
  *(v5 + 32) = sub_264460();
  *(v5 + 40) = v6;
  *(v5 + 48) = v4;
  sub_F250(v5);
  swift_setDeallocating();
  sub_8E80(v5 + 32, &qword_31AD08, &qword_26FF78);
  sub_2EF0(&qword_31AD10, &qword_26FF80);
  isa = sub_264270().super.isa;

  v8 = CTFontDescriptorCreateWithAttributes(isa);

  v9 = CTFontCreateWithFontDescriptor(v8, 14.0, 0);
  v10 = CTFontCopySupportedLanguages(v9);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_264680();
  }

  v11 = sub_127F84(_swiftEmptyArrayStorage);

  return v11;
}

uint64_t static Font.Design.defaultIfUnsupported.getter@<X0>(uint64_t a2@<X8>)
{
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v3 = enum case for Font.Design.default(_:);
    v4 = sub_2625C0();
    v11 = *(v4 - 8);
    (*(v11 + 104))(a2, v3, v4);
    v5 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = sub_2625C0();
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0()
{
  v0 = sub_2EF0(&qword_31ACE8, &qword_26FF58);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_260280();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260210();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260230();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_264420();
  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 preferredLocalizations];

    v18 = sub_264690();
    if (*(v18 + 16))
    {

      sub_260200();
      sub_2601F0();
      (*(v25 + 8))(v8, v6);
      sub_260270();
      (*(v26 + 8))(v5, v3);
      v19 = v27;
      if ((*(v27 + 48))(v2, 1, v9) == 1)
      {
        sub_8E80(v2, &qword_31ACE8, &qword_26FF58);
        v15 = 1;
      }

      else
      {
        (*(v19 + 32))(v11, v2, v9);
        if (qword_3158F8 != -1)
        {
          swift_once();
        }

        v20 = qword_31ACE0;
        v21 = sub_260220();
        LOBYTE(v20) = sub_95B98(v21, v22, v20);

        (*(v19 + 8))(v11, v9);
        v15 = v20 ^ 1;
      }
    }

    else
    {

      v15 = 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_96414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2601E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_96480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_966E8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *EnvironmentValues.referenceId.getter()
{
  sub_9652C();

  return sub_261CB0();
}

unint64_t sub_9652C()
{
  result = qword_31AD18;
  if (!qword_31AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD18);
  }

  return result;
}

double View.referenceId(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

uint64_t sub_965FC(uint64_t *a1)
{
  sub_2F9C(&qword_31AD20, &unk_2799D0);
  sub_261730();
  sub_96674();
  return swift_getWitnessTable();
}

unint64_t sub_96674()
{
  result = qword_31AD28;
  if (!qword_31AD28)
  {
    sub_2F9C(&qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD28);
  }

  return result;
}

unint64_t sub_966E8()
{
  result = qword_31AD30;
  if (!qword_31AD30)
  {
    sub_2F9C(&qword_31A0C8, &qword_26E2C0);
    sub_9676C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD30);
  }

  return result;
}

unint64_t sub_9676C()
{
  result = qword_31AD38;
  if (!qword_31AD38)
  {
    sub_2601E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD38);
  }

  return result;
}

double static ListItemViewModel.topChartsList(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2606E0();
  v6 = v5;
  sub_30CC(a1, v15);
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 255;
  sub_30CC(a1, &v14);
  KeyPath = swift_getKeyPath();
  v13 = 0;
  sub_3E840(v15, a2 + 8);
  static ListItemMetadata.topChartsListPage(assetInfo:)(a1, a2 + 80);
  v11[3] = &type metadata for ListItemAccessoryBuyButton;
  v11[4] = sub_825A0();
  v11[0] = swift_allocObject();
  sub_969B0(&KeyPath, v11[0] + 16);
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v10);
  v7 = type metadata accessor for ListItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v10, 1, a2 + *(v7 + 40));
  sub_96A0C(&KeyPath);
  sub_82640(v15);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v11, a2 + 360);
  *(a2 + 400) = 1;
  v8 = a2 + *(v7 + 44);
  result = 9.28601737e242;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *v8 = xmmword_270000;
  *(v8 + 16) = 0u;
  *(v8 + 128) = v4;
  *(v8 + 136) = v6;
  *(v8 + 144) = 2;
  return result;
}

uint64_t sub_9696C()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

void Metrics.Location.adamId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void Metrics.Location.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void Metrics.Location.fcKind.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void Metrics.Location.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void Metrics.Location.idType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void Metrics.Location.kind.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t Metrics.Location.locationPosition.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void Metrics.Location.locationType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

void Metrics.Location.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t Metrics.Location.narratorName.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void Metrics.Location.narratorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t Metrics.Location.narratorType.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

void Metrics.Location.narratorType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t Metrics.Location.init(adamId:artistName:fcKind:id:idType:isSG:kind:locationPosition:locationType:name:narratorName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = *a10;
  v20 = *a15;
  if (v20 <= 2)
  {
    if (*a15)
    {
      if (v20 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x6E6D756C6F63;
      }

      else
      {
        v21 = 0xE600000000000000;
        v22 = 0x7265746C6966;
      }
    }

    else
    {
      v21 = 0xE600000000000000;
      v22 = 0x6E6F74747562;
    }
  }

  else if (*a15 > 4u)
  {
    if (v20 == 5)
    {
      v21 = 0xE700000000000000;
      v22 = 0x6E6F6974636573;
    }

    else
    {
      v21 = 0xE600000000000000;
      v22 = 0x68736F6F7773;
    }
  }

  else if (v20 == 3)
  {
    v21 = 0xE600000000000000;
    v22 = 0x70756B636F6CLL;
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x77656976657270;
  }

  v23 = 0xE600000000000000;
  if (v19)
  {
    v23 = 0xEA00000000006C61;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  result = 0x69746E6575716573;
  if ((v19 & 1) == 0)
  {
    result = 0x64695F737469;
  }

  v25 = v19 == 2;
  if (v19 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (v25)
  {
    result = 0;
  }

  v27 = 0x696F56736B6F6F42;
  if ((a11 & 1) == 0)
  {
    v27 = 0;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v28 = 0xEB00000000736563;
  if ((a11 & 1) == 0)
  {
    v28 = 0;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = result;
  *(a9 + 72) = v26;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v21;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 152) = a19;
  *(a9 + 160) = v27;
  *(a9 + 168) = v28;
  return result;
}

uint64_t Metrics.LocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F74747562;
  v3 = 0x6E6F6974636573;
  if (v1 != 5)
  {
    v3 = 0x68736F6F7773;
  }

  v4 = 0x70756B636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x77656976657270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6D756C6F63;
  if (v1 != 1)
  {
    v5 = 0x7265746C6966;
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

uint64_t sub_97050@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a2;
  v48 = a3;
  v7 = sub_2EF0(&qword_31AEE0, &qword_270378);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  sub_2E18(a1, a1[3]);
  v13 = sub_2609B0();
  v44 = v14;
  v45 = v13;
  sub_2E18(a1, a1[3]);
  v15 = sub_2606E0();
  v42 = v16;
  v43 = v15;
  sub_30CC(a1, v49);
  v17 = sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v18 = sub_260790();
  v40 = v17;
  v19 = swift_dynamicCast();
  v20 = *(v18 - 8);
  v21 = *(v20 + 56);
  if (v19)
  {
    v21(v12, 0, 1, v18);
    v41 = sub_260780();
    (*(v20 + 8))(v12, v18);
  }

  else
  {
    v21(v12, 1, 1, v18);
    sub_99524(v12);
    v41 = 0;
  }

  sub_2E18(a1, a1[3]);
  sub_260860();
  v22 = sub_2609D0();
  v24 = v23;
  if (v22 == sub_2609D0() && v24 == v25)
  {

    v26 = 0xE90000000000006BLL;
    v27 = 0x6F6F626F69647561;
  }

  else
  {
    v28 = sub_264F10();

    v29 = (v28 & 1) == 0;
    v27 = 0x6F6F626F69647561;
    if (v29)
    {
      v27 = 0x6B6F6F6265;
    }

    v26 = 0xE90000000000006BLL;
    if (v29)
    {
      v26 = 0xE500000000000000;
    }
  }

  sub_30CC(a1, v49);
  if (swift_dynamicCast())
  {
    v21(v9, 0, 1, v18);
    sub_9958C();
    v30 = sub_260700();
    (*(v20 + 8))(v9, v18);
    if (v30)
    {
      v31 = sub_260690();
      v33 = v32;

      goto LABEL_18;
    }
  }

  else
  {
    v21(v9, 1, 1, v18);
    sub_99524(v9);
  }

  v31 = 0;
  v33 = 0;
LABEL_18:
  v49[0] = 0;
  v34 = 0x696F56736B6F6F42;
  if ((v41 & 1) == 0)
  {
    v34 = 0;
  }

  v35 = 0xEB00000000736563;
  if ((v41 & 1) == 0)
  {
    v35 = 0;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  v36 = v44;
  *(a5 + 16) = v45;
  *(a5 + 24) = v36;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v37 = v42;
  *(a5 + 48) = v43;
  *(a5 + 56) = v37;
  *(a5 + 64) = xmmword_270040;
  *(a5 + 80) = v27;
  *(a5 + 88) = v26;
  *(a5 + 96) = v46;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0x70756B636F6CLL;
  *(a5 + 120) = 0xE600000000000000;
  v38 = v48;
  *(a5 + 128) = v47;
  *(a5 + 136) = v38;
  *(a5 + 144) = v31;
  *(a5 + 152) = v33;
  *(a5 + 160) = v34;
  *(a5 + 168) = v35;
  return sub_3080(a1);
}

double sub_97474()
{
  result = 0.0;
  xmmword_31AD40 = 0u;
  *algn_31AD50 = 0u;
  xmmword_31AD60 = 0u;
  xmmword_31AD70 = 0u;
  xmmword_31AD80 = 0u;
  xmmword_31AD90 = 0u;
  *&xmmword_31ADA0 = 0;
  BYTE8(xmmword_31ADA0) = 0;
  *&xmmword_31ADB0 = 0x6E6F74747562;
  *(&xmmword_31ADB0 + 1) = 0xE600000000000000;
  xmmword_31ADC0 = 0u;
  xmmword_31ADD0 = 0u;
  xmmword_31ADE0 = 0u;
  return result;
}

uint64_t static Metrics.Location.genericButton.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_315900 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_31ADB0;
  v13[8] = xmmword_31ADC0;
  v13[9] = xmmword_31ADD0;
  v2 = xmmword_31ADD0;
  v13[10] = xmmword_31ADE0;
  v3 = xmmword_31AD70;
  v4 = xmmword_31AD80;
  v13[4] = xmmword_31AD80;
  v13[5] = xmmword_31AD90;
  v5 = xmmword_31AD90;
  v6 = xmmword_31ADA0;
  v13[6] = xmmword_31ADA0;
  v13[7] = xmmword_31ADB0;
  v13[0] = xmmword_31AD40;
  v13[1] = *algn_31AD50;
  v8 = xmmword_31AD40;
  v7 = *algn_31AD50;
  v9 = xmmword_31AD60;
  v13[2] = xmmword_31AD60;
  v13[3] = xmmword_31AD70;
  a1[8] = xmmword_31ADC0;
  a1[9] = v2;
  a1[10] = xmmword_31ADE0;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v1;
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v3;
  return sub_97590(v13, &v12);
}

double sub_975C8()
{
  result = 0.0;
  xmmword_31ADF0 = 0u;
  unk_31AE00 = 0u;
  xmmword_31AE10 = 0u;
  xmmword_31AE20 = 0u;
  xmmword_31AE30 = 0u;
  xmmword_31AE40 = 0u;
  *&xmmword_31AE50 = 0;
  BYTE8(xmmword_31AE50) = 0;
  *&xmmword_31AE60 = 0x6E6F6974636573;
  *(&xmmword_31AE60 + 1) = 0xE700000000000000;
  xmmword_31AE70 = 0u;
  xmmword_31AE80 = 0u;
  xmmword_31AE90 = 0u;
  return result;
}

uint64_t static Metrics.Location.genericSection.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_315908 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_31AE60;
  v13[8] = xmmword_31AE70;
  v13[9] = xmmword_31AE80;
  v2 = xmmword_31AE80;
  v13[10] = xmmword_31AE90;
  v3 = xmmword_31AE20;
  v4 = xmmword_31AE30;
  v13[4] = xmmword_31AE30;
  v13[5] = xmmword_31AE40;
  v5 = xmmword_31AE40;
  v6 = xmmword_31AE50;
  v13[6] = xmmword_31AE50;
  v13[7] = xmmword_31AE60;
  v13[0] = xmmword_31ADF0;
  v13[1] = unk_31AE00;
  v8 = xmmword_31ADF0;
  v7 = unk_31AE00;
  v9 = xmmword_31AE10;
  v13[2] = xmmword_31AE10;
  v13[3] = xmmword_31AE20;
  a1[8] = xmmword_31AE70;
  a1[9] = v2;
  a1[10] = xmmword_31AE90;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v1;
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v3;
  return sub_97590(v13, &v12);
}

uint64_t static Metrics.Location.lockup(for:locationPosition:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_30CC(a1, v9);
  sub_2E18(a1, a1[3]);
  v6 = sub_2609A0();
  return sub_97050(v9, v6, v7, a2, a3);
}

uint64_t sub_977CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64496D616461;
    v6 = 0x646E694B6366;
    v7 = 25705;
    if (a1 != 3)
    {
      v7 = 0x657079546469;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x614E747369747261;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701667182;
    if (a1 != 8)
    {
      v1 = 0x726F74617272616ELL;
    }

    v2 = 1684957547;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_97928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_99198(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_9795C(uint64_t a1)
{
  v2 = sub_98CE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_97998(uint64_t a1)
{
  v2 = sub_98CE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Metrics.Location.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_31AEA0, &qword_270050);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - v5;
  v7 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v7;
  v8 = *(v1 + 32);
  v32 = *(v1 + 40);
  v33 = v8;
  v9 = *(v1 + 48);
  v30 = *(v1 + 56);
  v31 = v9;
  v10 = *(v1 + 72);
  v29 = *(v1 + 64);
  v11 = *(v1 + 88);
  v25 = *(v1 + 80);
  v26 = v11;
  v27 = v10;
  v12 = *(v1 + 96);
  v24 = *(v1 + 104);
  v13 = *(v1 + 112);
  v23[5] = *(v1 + 120);
  v23[6] = v12;
  v14 = *(v1 + 128);
  v23[3] = *(v1 + 136);
  v23[4] = v13;
  v15 = *(v1 + 152);
  v23[0] = *(v1 + 144);
  v23[1] = v15;
  v23[2] = v14;
  v16 = *(v1 + 168);
  v28 = *(v1 + 160);
  v17 = a1[3];
  v18 = a1;
  v20 = v19;
  sub_2E18(v18, v17);
  sub_98CE0();
  sub_265140();
  v47 = 0;
  v21 = v36;
  sub_264E40();
  if (!v21)
  {
    v36 = v16;
    v46 = 1;
    sub_264E40();
    v45 = 2;
    sub_264E40();
    v44 = 3;
    sub_264E40();
    v43 = 4;
    sub_264E40();
    v42 = 5;
    sub_264E40();
    v41 = 6;
    sub_264E50();
    v40 = 7;
    sub_264E70();
    v39[0] = 8;
    sub_264E40();
    v38 = 9;
    sub_264E40();
    v37 = 10;
    sub_264E40();
  }

  return (*(v4 + 8))(v6, v20);
}

void Metrics.Location.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31AEB0, &qword_270058);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v55 = a1;
  sub_2E18(a1, v9);
  sub_98CE0();
  sub_265120();
  if (v2)
  {
    v57 = v2;
    v56 = 0;
    sub_3080(v55);
  }

  else
  {
    v10 = v6;
    LOBYTE(v69[0]) = 0;
    v11 = sub_264D70();
    v53 = v12;
    LOBYTE(v69[0]) = 1;
    v13 = sub_264D70();
    v52 = v14;
    LOBYTE(v69[0]) = 2;
    *&v51 = sub_264D70();
    *(&v51 + 1) = v15;
    LOBYTE(v69[0]) = 3;
    *&v50 = sub_264D70();
    *(&v50 + 1) = v16;
    LOBYTE(v69[0]) = 4;
    *&v49 = sub_264D70();
    *(&v49 + 1) = v17;
    LOBYTE(v69[0]) = 5;
    v18 = sub_264D70();
    v48 = v19;
    LOBYTE(v69[0]) = 6;
    v47 = sub_264D90();
    v84 = v20 & 1;
    LOBYTE(v69[0]) = 7;
    v46 = sub_264DC0();
    v54 = v21;
    LOBYTE(v69[0]) = 8;
    v45 = sub_264D70();
    v56 = v22;
    v57 = 0;
    LOBYTE(v69[0]) = 9;
    *&v44 = sub_264D70();
    *(&v44 + 1) = v23;
    v57 = 0;
    v85 = 10;
    v43 = sub_264D70();
    v57 = 0;
    v25 = v24;
    (*(v10 + 8))(v8, v5);
    v41 = v13;
    v42 = v11;
    *&v58 = v11;
    *(&v58 + 1) = v53;
    *&v59 = v13;
    *(&v59 + 1) = v52;
    v60 = v51;
    v61 = v50;
    v62 = v49;
    v40 = v18;
    *&v63 = v18;
    *(&v63 + 1) = v48;
    *&v64 = v47;
    HIDWORD(v39) = v84;
    BYTE8(v64) = v84;
    v27 = v45;
    v26 = v46;
    v28 = v54;
    *&v65 = v46;
    *(&v65 + 1) = v54;
    v29 = v56;
    *&v66 = v45;
    *(&v66 + 1) = v56;
    v30 = v44;
    v67 = v44;
    *&v68 = v43;
    *(&v68 + 1) = v25;
    v31 = v63;
    a2[4] = v49;
    a2[5] = v31;
    v32 = v58;
    v33 = v59;
    v34 = v61;
    a2[2] = v60;
    a2[3] = v34;
    *a2 = v32;
    a2[1] = v33;
    v35 = v64;
    v36 = v65;
    v37 = v68;
    v38 = v66;
    a2[9] = v67;
    a2[10] = v37;
    a2[7] = v36;
    a2[8] = v38;
    a2[6] = v35;
    sub_97590(&v58, v69);
    sub_3080(v55);
    v69[0] = v42;
    v69[1] = v53;
    v69[2] = v41;
    v69[3] = v52;
    v70 = v51;
    v71 = v50;
    v72 = v49;
    v73 = v40;
    v74 = v48;
    v75 = v47;
    v76 = BYTE4(v39);
    v77 = v26;
    v78 = v28;
    v79 = v27;
    v80 = v29;
    v81 = v30;
    v82 = v43;
    v83 = v25;
    sub_98D34(v69);
  }
}

void Metrics.LocationType.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3001C0;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  v7 = 7;
  if (v6 < 7)
  {
    v7 = v6;
  }

  *a3 = v7;
}

double sub_98434(uint64_t a1)
{
  sub_264500();

  return result;
}

void sub_98540(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE700000000000000;
  v6 = 0x6E6F6974636573;
  v7 = 0xE600000000000000;
  if (v2 != 5)
  {
    v6 = 0x68736F6F7773;
    v5 = 0xE600000000000000;
  }

  v8 = 0x70756B636F6CLL;
  if (v2 != 3)
  {
    v8 = 0x77656976657270;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v9 = 0x7265746C6966;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

BOOL _s7BooksUI7MetricsO8LocationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v172 = a1[2];
  v168 = a1[4];
  v174 = a1[5];
  v175 = a1[3];
  v4 = a1[8];
  v170 = a1[7];
  v6 = a1[9];
  v5 = a1[10];
  v8 = a1[11];
  v7 = a1[12];
  v9 = *(a1 + 104);
  v10 = a1[14];
  v11 = a1[15];
  v12 = a1[16];
  v13 = a1[17];
  v160 = a1[18];
  v163 = a1[19];
  v14 = a1[20];
  v162 = a1[21];
  v15 = *(a2 + 8);
  v171 = *(a2 + 16);
  v16 = *(a2 + 24);
  v167 = *(a2 + 32);
  v173 = *(a2 + 40);
  v166 = *(a2 + 48);
  v17 = *(a2 + 64);
  v169 = *(a2 + 56);
  v19 = *(a2 + 72);
  v18 = *(a2 + 80);
  v21 = *(a2 + 88);
  v20 = *(a2 + 96);
  v22 = *(a2 + 104);
  v23 = *(a2 + 112);
  v24 = *(a2 + 120);
  v26 = *(a2 + 128);
  v25 = *(a2 + 136);
  v27 = *(a2 + 144);
  v164 = *(a2 + 152);
  v159 = *(a2 + 160);
  v161 = *(a2 + 168);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    v165 = a1[6];
    if (*a1 != *a2 || v3 != v15)
    {
      v153 = a1[12];
      v115 = a1[8];
      v119 = *(a2 + 80);
      v28 = a1[20];
      v141 = *(a2 + 104);
      v147 = *(a1 + 104);
      v29 = *(a2 + 144);
      v124 = *(a2 + 88);
      v129 = a1[11];
      v30 = a1[16];
      v134 = a1[10];
      v31 = a1[17];
      v104 = *(a2 + 136);
      v105 = *(a2 + 112);
      v32 = *(a2 + 128);
      v107 = *(a2 + 72);
      v111 = a1[9];
      v33 = a1[14];
      v34 = a1[15];
      v35 = *(a2 + 120);
      v36 = sub_264F10();
      v24 = v35;
      v7 = v153;
      v11 = v34;
      v10 = v33;
      v23 = v105;
      v19 = v107;
      v26 = v32;
      v25 = v104;
      v13 = v31;
      v8 = v129;
      v5 = v134;
      v12 = v30;
      v18 = v119;
      v21 = v124;
      v27 = v29;
      v22 = v141;
      v9 = v147;
      v14 = v28;
      v6 = v111;
      v4 = v115;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v165 = a1[6];
    if (v15)
    {
      return 0;
    }
  }

  if (v175)
  {
    if (!v16)
    {
      return 0;
    }

    if (v172 != v171 || v175 != v16)
    {
      v154 = v7;
      v142 = v22;
      v148 = v9;
      v37 = v14;
      v136 = v20;
      v38 = v27;
      v120 = v18;
      v125 = v21;
      v39 = v12;
      v40 = v13;
      v112 = v6;
      v116 = v4;
      v41 = v25;
      v42 = v26;
      v106 = v23;
      v108 = v19;
      v43 = v10;
      v44 = v11;
      v130 = v8;
      v45 = v24;
      v46 = sub_264F10();
      v24 = v45;
      v8 = v130;
      v7 = v154;
      v11 = v44;
      v10 = v43;
      v23 = v106;
      v19 = v108;
      v26 = v42;
      v25 = v41;
      v6 = v112;
      v4 = v116;
      v13 = v40;
      v12 = v39;
      v18 = v120;
      v21 = v125;
      v27 = v38;
      v20 = v136;
      v14 = v37;
      v22 = v142;
      v9 = v148;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v174)
  {
    v47 = v165;
    if (!v173)
    {
      return 0;
    }

    if (v168 != v167 || v174 != v173)
    {
      v155 = v7;
      v176 = v14;
      v137 = v20;
      v48 = v27;
      v121 = v18;
      v126 = v21;
      v49 = v12;
      v50 = v13;
      v113 = v6;
      v117 = v4;
      v51 = v25;
      v52 = v26;
      v109 = v19;
      v53 = v10;
      v54 = v11;
      v143 = v22;
      v149 = v9;
      v55 = v23;
      v131 = v8;
      v56 = v24;
      v57 = sub_264F10();
      v47 = v165;
      v24 = v56;
      v23 = v55;
      v22 = v143;
      v9 = v149;
      v7 = v155;
      v11 = v54;
      v10 = v53;
      v19 = v109;
      v6 = v113;
      v26 = v52;
      v25 = v51;
      v4 = v117;
      v18 = v121;
      v13 = v50;
      v12 = v49;
      v21 = v126;
      v8 = v131;
      v27 = v48;
      v20 = v137;
      v14 = v176;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v47 = v165;
    if (v173)
    {
      return 0;
    }
  }

  if (v170)
  {
    if (!v169)
    {
      return 0;
    }

    if (v47 != v166 || v170 != v169)
    {
      v156 = v7;
      v177 = v14;
      v138 = v20;
      v58 = v27;
      v122 = v18;
      v127 = v21;
      v59 = v12;
      v60 = v13;
      v114 = v6;
      v118 = v4;
      v61 = v25;
      v62 = v26;
      v110 = v19;
      v63 = v10;
      v64 = v11;
      v144 = v22;
      v150 = v9;
      v65 = v23;
      v132 = v8;
      v66 = v24;
      v67 = sub_264F10();
      v24 = v66;
      v23 = v65;
      v22 = v144;
      v9 = v150;
      v7 = v156;
      v11 = v64;
      v10 = v63;
      v19 = v110;
      v6 = v114;
      v26 = v62;
      v25 = v61;
      v4 = v118;
      v18 = v122;
      v13 = v60;
      v12 = v59;
      v21 = v127;
      v8 = v132;
      v27 = v58;
      v20 = v138;
      v14 = v177;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v169)
  {
    return 0;
  }

  if (v6)
  {
    if (!v19)
    {
      return 0;
    }

    if (v4 != v17 || v6 != v19)
    {
      v157 = v7;
      v135 = v5;
      v139 = v20;
      v68 = v14;
      v69 = v27;
      v123 = v18;
      v128 = v21;
      v70 = v12;
      v71 = v13;
      v72 = v25;
      v73 = v26;
      v74 = v10;
      v75 = v11;
      v145 = v22;
      v151 = v9;
      v76 = v23;
      v133 = v8;
      v77 = v24;
      v78 = sub_264F10();
      v24 = v77;
      v23 = v76;
      v22 = v145;
      v9 = v151;
      v7 = v157;
      v11 = v75;
      v10 = v74;
      v26 = v73;
      v18 = v123;
      v25 = v72;
      v13 = v71;
      v12 = v70;
      v21 = v128;
      v8 = v133;
      v27 = v69;
      v14 = v68;
      v5 = v135;
      v20 = v139;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v5 != v18 || v8 != v21)
    {
      v158 = v7;
      v79 = v14;
      v140 = v20;
      v80 = v27;
      v81 = v12;
      v82 = v13;
      v83 = v25;
      v84 = v26;
      v85 = v10;
      v86 = v11;
      v146 = v22;
      v152 = v9;
      v87 = v23;
      v88 = v24;
      v89 = sub_264F10();
      v24 = v88;
      v23 = v87;
      v22 = v146;
      v9 = v152;
      v7 = v158;
      v11 = v86;
      v10 = v85;
      v26 = v84;
      v25 = v83;
      v13 = v82;
      v12 = v81;
      v27 = v80;
      v20 = v140;
      v14 = v79;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v20)
    {
      v90 = v22;
    }

    else
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  if (v10 != v23 || v11 != v24)
  {
    v91 = v14;
    v92 = v27;
    v93 = v12;
    v94 = v13;
    v95 = v25;
    v96 = v26;
    v97 = sub_264F10();
    v26 = v96;
    v25 = v95;
    v13 = v94;
    v12 = v93;
    v27 = v92;
    v14 = v91;
    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v12 != v26 || v13 != v25)
    {
      v98 = v14;
      v99 = v27;
      v100 = sub_264F10();
      v27 = v99;
      v14 = v98;
      if ((v100 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v163)
  {
    if (!v164)
    {
      return 0;
    }

    if (v160 != v27 || v163 != v164)
    {
      v101 = v14;
      v102 = sub_264F10();
      v14 = v101;
      if ((v102 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v164)
  {
    return 0;
  }

  if (v162)
  {
    return v161 && (v14 == v159 && v162 == v161 || (sub_264F10() & 1) != 0);
  }

  return !v161;
}

unint64_t sub_98CE0()
{
  result = qword_31AEA8;
  if (!qword_31AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEA8);
  }

  return result;
}

unint64_t sub_98D64(uint64_t a1)
{
  result = sub_98D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_98D8C()
{
  result = qword_31AEB8;
  if (!qword_31AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEB8);
  }

  return result;
}

unint64_t sub_98DE4()
{
  result = qword_31AEC0;
  if (!qword_31AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEC0);
  }

  return result;
}

__n128 sub_98E38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_98E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_98EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11descr2FCCF9V8LocationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11descr2FCCF9V8LocationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_99094()
{
  result = qword_31AEC8;
  if (!qword_31AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEC8);
  }

  return result;
}

unint64_t sub_990EC()
{
  result = qword_31AED0;
  if (!qword_31AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AED0);
  }

  return result;
}

unint64_t sub_99144()
{
  result = qword_31AED8;
  if (!qword_31AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AED8);
  }

  return result;
}

uint64_t sub_99198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E694B6366 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000290770 == a2 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC000000656D614ELL || (sub_264F10() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC00000065707954)
  {

    return 10;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_99524(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31AEE0, &qword_270378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9958C()
{
  result = qword_31AEF0;
  if (!qword_31AEF0)
  {
    sub_260790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEF0);
  }

  return result;
}

uint64_t sub_995E4@<X0>(void *a1@<X8>)
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

uint64_t ToolbarButtonStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ToolbarButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_2EF0(&qword_31AEF8, &qword_2703B8);
  __chkstk_darwin(v40);
  v2 = &v38 - v1;
  v38 = sub_2EF0(&qword_31AF00, &qword_2703C0);
  __chkstk_darwin(v38);
  v4 = &v38 - v3;
  v39 = sub_2EF0(&qword_31AF08, &qword_2703C8);
  __chkstk_darwin(v39);
  v6 = &v38 - v5;
  v7 = sub_261180();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  sub_995E4((&v38 - v12));
  (*(v8 + 104))(v10, enum case for ColorScheme.light(_:), v7);
  v14 = sub_261170();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  sub_2622A0();
  if (v14)
  {
    v16 = &v6[*(sub_2EF0(&qword_31AF10, &qword_2703D0) + 36)];
    v17 = *(sub_2EF0(&qword_31AF18, &qword_2703D8) + 28);
    sub_261E70();
    v18 = sub_261E80();
    (*(*(v18 - 8) + 56))(v16 + v17, 0, 1, v18);
    *v16 = swift_getKeyPath();
    LODWORD(v16) = sub_262120();
    LODWORD(v17) = sub_262110();
    v19 = &v6[*(sub_2EF0(&qword_31AF50, &qword_270460) + 36)];
    *v19 = v16;
    *(v19 + 1) = 1055286886;
    *(v19 + 2) = v17;
    *(v19 + 3) = 1051931443;
    v20 = sub_262690();
    KeyPath = swift_getKeyPath();
    v22 = &v6[*(v39 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v23 = &qword_31AF08;
    v24 = &qword_2703C8;
    sub_8198(v6, v4, &qword_31AF08, &qword_2703C8);
    swift_storeEnumTagMultiPayload();
    sub_99ED8();
    sub_9A158();
    sub_261F80();
    v25 = v6;
  }

  else
  {
    v26 = &v2[*(sub_2EF0(&qword_31AF10, &qword_2703D0) + 36)];
    v27 = *(sub_2EF0(&qword_31AF18, &qword_2703D8) + 28);
    sub_261E70();
    v28 = sub_261E80();
    (*(*(v28 - 8) + 56))(v26 + v27, 0, 1, v28);
    *v26 = swift_getKeyPath();
    LODWORD(v26) = sub_262120();
    v29 = &v2[*(sub_2EF0(&qword_31AF20, &qword_270410) + 36)];
    v30 = *(sub_2EF0(&qword_31AF28, &qword_270418) + 36);
    v31 = enum case for BlendMode.lighten(_:);
    v32 = sub_263640();
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    *v29 = v26;
    *(v29 + 1) = 1061997773;
    v33 = &v29[*(sub_2EF0(&qword_31AF30, &qword_270420) + 52)];
    sub_2634D0();
    *&v33[*(sub_2EF0(&qword_31AF38, &qword_270428) + 36)] = 1058642330;
    v34 = sub_262690();
    v35 = swift_getKeyPath();
    v36 = &v2[*(v40 + 36)];
    *v36 = v35;
    v36[1] = v34;
    v23 = &qword_31AEF8;
    v24 = &qword_2703B8;
    sub_8198(v2, v4, &qword_31AEF8, &qword_2703B8);
    swift_storeEnumTagMultiPayload();
    sub_99ED8();
    sub_9A158();
    sub_261F80();
    v25 = v2;
  }

  return sub_8E80(v25, v23, v24);
}

uint64_t sub_99E24(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B030, &unk_2704D0);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v5 - v3, &qword_31B030, &unk_2704D0);
  return sub_261B70();
}

unint64_t sub_99ED8()
{
  result = qword_31AF40;
  if (!qword_31AF40)
  {
    sub_2F9C(&qword_31AF08, &qword_2703C8);
    sub_99F90();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF40);
  }

  return result;
}

unint64_t sub_99F90()
{
  result = qword_31AF48;
  if (!qword_31AF48)
  {
    sub_2F9C(&qword_31AF50, &qword_270460);
    sub_9A048();
    sub_8E38(&qword_31AF68, &qword_31AF70, &unk_270468, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF48);
  }

  return result;
}

unint64_t sub_9A048()
{
  result = qword_31AF58;
  if (!qword_31AF58)
  {
    sub_2F9C(&qword_31AF10, &qword_2703D0);
    sub_9A100();
    sub_8E38(&qword_31AF60, &qword_31AF18, &qword_2703D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF58);
  }

  return result;
}

unint64_t sub_9A100()
{
  result = qword_3183C0;
  if (!qword_3183C0)
  {
    sub_262290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183C0);
  }

  return result;
}

unint64_t sub_9A158()
{
  result = qword_31AF78;
  if (!qword_31AF78)
  {
    sub_2F9C(&qword_31AEF8, &qword_2703B8);
    sub_9A210();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF78);
  }

  return result;
}

unint64_t sub_9A210()
{
  result = qword_31AF80;
  if (!qword_31AF80)
  {
    sub_2F9C(&qword_31AF20, &qword_270410);
    sub_9A048();
    sub_8E38(&qword_31AF88, &qword_31AF30, &qword_270420, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF80);
  }

  return result;
}

uint64_t sub_9A2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_9A384(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ToolbarButtonStyle(uint64_t a1)
{
  result = qword_31AFE8;
  if (!qword_31AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9A44C(uint64_t a1)
{
  sub_50224(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_9A4BC()
{
  result = qword_31B020;
  if (!qword_31B020)
  {
    sub_2F9C(&qword_31B028, &qword_2704C8);
    sub_99ED8();
    sub_9A158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B020);
  }

  return result;
}

uint64_t sub_9A548@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_8198(v2 + *(a1 + 40), &v14 - v10, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_9E454(v11, a2, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v13 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_9A730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(sub_2EF0(qword_31B0D8, &qword_2705B8) + 48);
  sub_9E454(a1, a6, type metadata accessor for ButtonViewModel.Content);
  sub_9E454(a2, a6 + v12, type metadata accessor for ButtonViewModel.ActionKind);
  v14 = type metadata accessor for ModalActionSheet.Buttons(0, a4, a5, v13);
  return sub_22148(a3, a6 + *(v14 + 36), &qword_31B038, &qword_270510);
}

uint64_t ModalActionSheet.init(buttons:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ModalActionSheet.Buttons(0, a4, a5, a4);
  (*(*(v12 - 8) + 56))(a6, 1, 1, v12);
  v14 = type metadata accessor for ModalActionSheet(0, a4, a5, v13);
  v15 = *(v14 + 40);
  *(a6 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v16 = sub_264A60();
  result = (*(*(v16 - 8) + 40))(a6, a1, v16);
  v18 = (a6 + *(v14 + 36));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t ModalActionSheet.init(buttonContent:buttonAction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v11 = sub_2EF0(&qword_31B038, &qword_270510);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v15 = type metadata accessor for ModalActionSheet.Buttons(0, a5, a6, v14);
  v16 = *(*(v15 - 8) + 56);
  v16(a7, 1, 1, v15);
  v18 = type metadata accessor for ModalActionSheet(0, a5, a6, v17);
  v19 = *(v18 + 40);
  *(a7 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v20 = sub_264A60();
  (*(*(v20 - 8) + 8))(a7, v20);
  v21 = sub_2EF0(&qword_31B040, &qword_270518);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_9A730(a1, v26, v13, a5, a6, a7);
  result = (v16)(a7, 0, 1, v15);
  v23 = (a7 + *(v18 + 36));
  v24 = v28;
  *v23 = v27;
  v23[1] = v24;
  return result;
}

uint64_t ModalActionSheet.init<A>(buttonTitle:buttonActionModel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a6;
  v48 = a8;
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v44 = a1;
  v12 = sub_2EF0(&qword_31B038, &qword_270510);
  __chkstk_darwin(v12 - 8);
  v50 = &v39 - v13;
  v46 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v46);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a5;
  v40 = a7;
  v20 = type metadata accessor for ModalActionSheet.Buttons(255, a5, a7, v19);
  v45 = sub_264A60();
  v21 = *(v45 - 8);
  v22 = __chkstk_darwin(v45);
  v24 = &v39 - v23;
  v25 = *(v20 - 8);
  v41 = *(v25 + 56);
  v42 = v25 + 56;
  v41(a9, 1, 1, v20, v22);
  v43 = type metadata accessor for ModalActionSheet(0, a5, a7, v26);
  v27 = *(v43 + 40);
  *(a9 + v27) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v28 = sub_260BD0();
  v29 = *(v28 - 8);
  v30 = v44;
  (*(v29 + 16))(v18, v44, v28);
  swift_storeEnumTagMultiPayload();
  v32 = v47;
  v31 = v48;
  v15[3] = v47;
  v15[4] = v31;
  v33 = sub_10934(v15);
  (*(*(v32 - 8) + 32))(v33, v49, v32);
  (*(v29 + 8))(v30, v28);
  swift_storeEnumTagMultiPayload();
  v34 = sub_2EF0(&qword_31B040, &qword_270518);
  v35 = v50;
  (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
  sub_9A730(v18, v15, v35, v39, v40, v24);
  (v41)(v24, 0, 1, v20);
  result = (*(v21 + 40))(a9, v24, v45);
  v37 = (a9 + *(v43 + 36));
  v38 = v52;
  *v37 = v51;
  v37[1] = v38;
  return result;
}

uint64_t ModalActionSheet.init<A, B>(firstButtonTitle:firstButtonActionModel:secondButtonTitle:secondButtonActionModel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v74 = a6;
  v75 = a8;
  v72 = a4;
  v73 = a5;
  v70 = a3;
  v66 = a2;
  v54 = a1;
  v71 = a13;
  v60 = a12;
  v69 = a10;
  v16 = sub_2EF0(&qword_31B038, &qword_270510);
  __chkstk_darwin(v16 - 8);
  v65 = &v53 - v17;
  v18 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v18);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a11;
  v58 = a7;
  v25 = type metadata accessor for ModalActionSheet.Buttons(255, a7, a11, v24);
  v26 = sub_264A60();
  v67 = *(v26 - 8);
  v68 = v26;
  v27 = __chkstk_darwin(v26);
  v59 = &v53 - v28;
  v62 = v25;
  v29 = *(v25 - 8);
  v61 = *(v29 + 56);
  v63 = v29 + 56;
  v56 = a9;
  v61(a9, 1, 1, v25, v27);
  v64 = type metadata accessor for ModalActionSheet(0, a7, a11, v30);
  v31 = *(v64 + 40);
  *(a9 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v32 = sub_260BD0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v55 = v23;
  v34(v23, a1, v32);
  swift_storeEnumTagMultiPayload();
  v35 = v75;
  v36 = v60;
  v20[3] = v75;
  v20[4] = v36;
  v53 = v20;
  v37 = sub_10934(v20);
  v38 = *(v35 - 8);
  v39 = v66;
  (*(v38 + 16))(v37, v66, v35);
  swift_storeEnumTagMultiPayload();
  v40 = sub_2EF0(&qword_31B040, &qword_270518);
  v41 = v65;
  v42 = &v65[*(v40 + 48)];
  v43 = v70;
  v34(v65, v70, v32);
  v44 = v69;
  v45 = v71;
  v42[3] = v69;
  v42[4] = v45;
  v46 = sub_10934(v42);
  (*(*(v44 - 8) + 32))(v46, v72, v44);
  v47 = *(v33 + 8);
  v47(v43, v32);
  (*(v38 + 8))(v39, v75);
  v47(v54, v32);
  (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
  v48 = v59;
  sub_9A730(v55, v53, v41, v58, v57, v59);
  (v61)(v48, 0, 1, v62);
  v49 = v56;
  result = (*(v67 + 40))(v56, v48, v68);
  v51 = (v49 + *(v64 + 36));
  v52 = v74;
  *v51 = v73;
  v51[1] = v52;
  return result;
}

uint64_t ModalActionSheet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v6 - 8);
  v29 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  sub_2F9C(&qword_31B048, &unk_270520);
  swift_getTupleTypeMetadata3();
  sub_2636B0();
  swift_getWitnessTable();
  v9 = sub_2632E0();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_261730();
  v30 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v32 = a1;
  v33 = v2;
  v18 = *(a1 + 24);
  v35 = v8;
  v36 = v18;
  v37 = v2;
  sub_261E50();
  sub_2632D0();
  sub_2EF0(qword_31B050, &qword_27CCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  LOBYTE(a1) = sub_262530();
  *(inited + 32) = a1;
  v20 = sub_262550();
  *(inited + 33) = v20;
  v21 = sub_262510();
  *(inited + 34) = v21;
  sub_262540();
  sub_262540();
  if (sub_262540() != a1)
  {
    sub_262540();
  }

  sub_262540();
  if (sub_262540() != v20)
  {
    sub_262540();
  }

  sub_262540();
  if (sub_262540() != v21)
  {
    sub_262540();
  }

  v22 = v29;
  sub_9A548(v32, v29);
  v23 = v31;
  sub_9E454(v22, v31, type metadata accessor for SizeConstants.Environment);
  sub_9E5D8(v23, type metadata accessor for SizeConstants.Spacing);
  WitnessTable = swift_getWitnessTable();
  sub_262E00();
  (*(v28 + 8))(v11, v9);
  v38 = WitnessTable;
  v39 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  sub_1609C();
  v25 = *(v30 + 8);
  v25(v14, v12);
  sub_1609C();
  return (v25)(v17, v12);
}

uint64_t sub_9B8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a4;
  v101 = sub_262730();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  __chkstk_darwin(v92);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v106 = &v89 - v10;
  v109 = sub_2EF0(&qword_31B170, &qword_2705D8);
  __chkstk_darwin(v109);
  v111 = &v89 - v11;
  v110 = sub_2EF0(&qword_31B178, &qword_2705E0);
  __chkstk_darwin(v110);
  v91 = (&v89 - v12);
  v93 = type metadata accessor for ButtonViewModel(0);
  __chkstk_darwin(v93);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ButtonView(0);
  __chkstk_darwin(v94);
  v97 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2EF0(&qword_31B180, &qword_2705E8);
  __chkstk_darwin(v108);
  v96 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = &v89 - v17;
  v18 = sub_2EF0(&qword_31B038, &qword_270510);
  __chkstk_darwin(v18 - 8);
  v104 = &v89 - v19;
  v103 = sub_2EF0(&qword_31B040, &qword_270518);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v90 = &v89 - v20;
  v121 = sub_2EF0(&qword_31B188, &qword_2705F0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v107 = &v89 - v21;
  v23 = type metadata accessor for ModalActionSheet.Buttons(255, a2, a3, v22);
  v112 = sub_264A60();
  v113 = *(v112 - 1);
  __chkstk_darwin(v112);
  v25 = &v89 - v24;
  v126 = *(v23 - 8);
  __chkstk_darwin(v26);
  v125 = &v89 - v27;
  v118 = sub_2EF0(&qword_31B048, &unk_270520);
  __chkstk_darwin(v118);
  v119 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  v32 = *(a2 - 8);
  __chkstk_darwin(v33);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v89 - v37;
  v40 = type metadata accessor for ModalActionSheet(0, a2, a3, v39);
  (*(a1 + *(v40 + 36)))();
  v41 = v126;
  v116 = v38;
  v42 = a1;
  v43 = v112;
  v122 = a3;
  sub_1609C();
  v114 = v32;
  v44 = v32;
  v45 = v113;
  v46 = *(v44 + 8);
  v117 = v35;
  v47 = v35;
  v48 = v44 + 8;
  v124 = a2;
  v115 = v46;
  v46(v47, a2);
  (*(v45 + 16))(v25, v42, v43);
  if ((*(v41 + 48))(v25, 1, v23) == 1)
  {
    (*(v45 + 8))(v25, v43);
    (*(v120 + 56))(v31, 1, 1, v121);
    v49 = v122;
  }

  else
  {
    v112 = v31;
    v50 = v125;
    (*(v41 + 32))(v125, v25, v23);
    v113 = v23;
    v51 = v50 + *(v23 + 36);
    v52 = v104;
    sub_8198(v51, v104, &qword_31B038, &qword_270510);
    if ((*(v102 + 48))(v52, 1, v103) == 1)
    {
      sub_8E80(v52, &qword_31B038, &qword_270510);
      LODWORD(v91) = _UISolariumEnabled() ^ 1;
      v53 = v125;
      sub_8198(v125, v106, qword_31B0D8, &qword_2705B8);
      v54 = v92;
      v103 = *(v92 + 48);
      sub_8198(v53, v105, qword_31B0D8, &qword_2705B8);
      v102 = *(v54 + 48);
      *&v134 = 0x403C000000000000;
      v55 = enum case for Font.TextStyle.subheadline(_:);
      v104 = v48;
      v56 = *(v100 + 104);
      v57 = v99;
      v58 = v101;
      v56(v99, enum case for Font.TextStyle.subheadline(_:), v101);
      v59 = sub_40130();
      v60 = v95;
      v100 = v59;
      sub_2612E0();
      v61 = v93;
      *&v134 = 0x4008000000000000;
      v56(v57, v55, v58);
      sub_2612E0();
      v62 = v61[6];
      *(v60 + v62) = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v63 = v61[14];
      v64 = sub_260BD0();
      (*(*(v64 - 8) + 56))(v60 + v63, 1, 1, v64);
      *(v60 + v61[7]) = 1;
      *(v60 + v61[8]) = v91;
      *(v60 + v61[9]) = 0;
      v65 = (v60 + v61[10]);
      *v65 = 1;
      v65[1] = 0;
      v65[2] = 0;
      v65[3] = 0;
      v66 = v106;
      sub_9E454(v106, v60 + v61[11], type metadata accessor for ButtonViewModel.Content);
      *(v60 + v61[12]) = 1;
      v67 = v61[13];
      v68 = v105;
      sub_9E454(v105 + v102, v60 + v67, type metadata accessor for ButtonViewModel.ActionKind);
      sub_9E5D8(v68, type metadata accessor for ButtonViewModel.Content);
      sub_9E5D8(v66 + v103, type metadata accessor for ButtonViewModel.ActionKind);
      *&v134 = 0x4020000000000000;
      v56(v57, v55, v58);
      v69 = v97;
      sub_2612E0();
      v70 = v94;
      *&v134 = 0x3FF8000000000000;
      v56(v57, v55, v58);
      sub_2612E0();
      v71 = *(v70 + 24);
      *&v69[v71] = swift_getKeyPath();
      sub_2EF0(&qword_319B00, &unk_26EA40);
      swift_storeEnumTagMultiPayload();
      sub_9E454(v60, &v69[*(v70 + 28)], type metadata accessor for ButtonViewModel);
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v72 = v69;
      v73 = v96;
      sub_9E454(v72, v96, type metadata accessor for ButtonView);
      v74 = (v73 + *(v108 + 36));
      v75 = v135;
      *v74 = v134;
      v74[1] = v75;
      v74[2] = v136;
      v76 = v73;
      v77 = v98;
      sub_22148(v76, v98, &qword_31B180, &qword_2705E8);
      sub_8198(v77, v111, &qword_31B180, &qword_2705E8);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0, &protocol conformance descriptor for VStack<A>);
      sub_9E38C();
      v78 = v107;
      sub_261F80();
      sub_8E80(v77, &qword_31B180, &qword_2705E8);
      v49 = v122;
    }

    else
    {
      v79 = v90;
      sub_22148(v52, v90, &qword_31B040, &qword_270518);
      v80 = sub_261E50();
      v81 = v91;
      *v91 = v80;
      *(v81 + 8) = 0x4014000000000000;
      *(v81 + 16) = 0;
      v82 = sub_2EF0(&qword_31B1B0, &qword_270668);
      v49 = v122;
      sub_9C938(v125, v79, v81 + *(v82 + 44));
      sub_8198(v81, v111, &qword_31B178, &qword_2705E0);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0, &protocol conformance descriptor for VStack<A>);
      sub_9E38C();
      v78 = v107;
      sub_261F80();
      sub_8E80(v81, &qword_31B178, &qword_2705E0);
      sub_8E80(v79, &qword_31B040, &qword_270518);
    }

    v31 = v112;
    sub_9E4BC(v78, v112);
    (*(v120 + 56))(v31, 0, 1, v121);
    (*(v126 + 8))(v125, v113);
  }

  v83 = v117;
  v84 = v116;
  v85 = v124;
  (*(v114 + 16))(v117, v116, v124);
  v133[0] = v83;
  v86 = v119;
  sub_8198(v31, v119, &qword_31B048, &unk_270520);
  v131 = 0;
  v132 = 1;
  v133[1] = v86;
  v133[2] = &v131;
  v130[0] = v85;
  v130[1] = v118;
  v130[2] = &type metadata for Spacer;
  v127 = v49;
  v128 = sub_9E250();
  v129 = &protocol witness table for Spacer;
  sub_10E998(v133, 3uLL, v130);
  sub_8E80(v31, &qword_31B048, &unk_270520);
  v87 = v115;
  v115(v84, v85);
  sub_8E80(v86, &qword_31B048, &unk_270520);
  return v87(v83, v85);
}

uint64_t sub_9C938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v109 = a2;
  v117 = a3;
  v113 = type metadata accessor for BooksBorderlessButtonStyle(0);
  __chkstk_darwin(v113);
  v112 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2604E0();
  __chkstk_darwin(v5 - 8);
  v110 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2EF0(&qword_31B040, &qword_270518);
  v8 = *(v7 - 8);
  v105 = v7 - 8;
  v108 = v8;
  v107 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v106 = &v91[-v9];
  v104 = sub_2EF0(&qword_31B1B8, &qword_270670);
  __chkstk_darwin(v104);
  v103 = &v91[-v10];
  v115 = sub_2EF0(&qword_31B1C0, &qword_270678) - 8;
  __chkstk_darwin(v115);
  v116 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v114 = &v91[-v13];
  v14 = sub_262730();
  v119 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v20;
  __chkstk_darwin(v21);
  v23 = &v91[-v22];
  v95 = &v91[-v22];
  v24 = type metadata accessor for ButtonViewModel(0);
  v25 = (v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v91[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for ButtonView(0) - 8;
  __chkstk_darwin(v99);
  v97 = &v91[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_2EF0(&qword_31B180, &qword_2705E8) - 8;
  __chkstk_darwin(v101);
  v111 = &v91[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v100 = &v91[-v31];
  __chkstk_darwin(v32);
  v118 = &v91[-v33];
  v92 = _UISolariumEnabled() ^ 1;
  sub_8198(a1, v23, qword_31B0D8, &qword_2705B8);
  v98 = *(v18 + 56);
  sub_8198(a1, v20, qword_31B0D8, &qword_2705B8);
  v94 = *(v18 + 56);
  *&v123 = 0x403C000000000000;
  v34 = enum case for Font.TextStyle.subheadline(_:);
  v35 = v119 + 104;
  v36 = *(v119 + 104);
  v93 = v14;
  v36(v16, enum case for Font.TextStyle.subheadline(_:), v14);
  v119 = v35;
  sub_40130();
  sub_2612E0();
  *&v123 = 0x4008000000000000;
  v36(v16, v34, v14);
  sub_2612E0();
  v37 = v25[8];
  *&v27[v37] = swift_getKeyPath();
  v102 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v38 = v25[16];
  v39 = sub_260BD0();
  (*(*(v39 - 8) + 56))(&v27[v38], 1, 1, v39);
  v27[v25[9]] = 1;
  v27[v25[10]] = v92;
  v27[v25[11]] = 0;
  v40 = &v27[v25[12]];
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v95;
  sub_9E454(v95, &v27[v25[13]], type metadata accessor for ButtonViewModel.Content);
  v27[v25[14]] = 1;
  v42 = v96;
  sub_9E454(&v96[v94], &v27[v25[15]], type metadata accessor for ButtonViewModel.ActionKind);
  sub_9E5D8(v42, type metadata accessor for ButtonViewModel.Content);
  sub_9E5D8(&v41[v98], type metadata accessor for ButtonViewModel.ActionKind);
  *&v123 = 0x4020000000000000;
  v43 = v93;
  v36(v16, v34, v93);
  v44 = v97;
  sub_2612E0();
  v45 = v99;
  *&v123 = 0x3FF8000000000000;
  v36(v16, v34, v43);
  sub_2612E0();
  v46 = *(v45 + 32);
  *&v44[v46] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  sub_9E454(v27, &v44[*(v45 + 36)], type metadata accessor for ButtonViewModel);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v47 = v44;
  v48 = v100;
  sub_9E454(v47, v100, type metadata accessor for ButtonView);
  v49 = &v48[*(v101 + 44)];
  v50 = v121;
  *v49 = v120;
  v49[1] = v50;
  v49[2] = v122;
  sub_22148(v48, v118, &qword_31B180, &qword_2705E8);
  v51 = v104;
  v52 = v103;
  v53 = &v103[*(v104 + 48)];
  v54 = sub_2EF0(&qword_31B1C8, &qword_270680);
  v53[3] = v54;
  v53[4] = sub_8E38(&qword_31B1D0, &qword_31B1C8, &qword_270680, &unk_268B6C);
  v55 = sub_10934(v53);
  v56 = sub_2610B0();
  (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  v57 = (v52 + v51[13]);
  v58 = v109;
  v59 = (v109 + *(v105 + 56));
  v61 = v59[3];
  v60 = v59[4];
  v62 = sub_2E18(v59, v61);
  v57[3] = v61;
  v57[4] = *(v60 + 8);
  v63 = sub_10934(v57);
  (*(*(v61 - 8) + 16))(v63, v62, v61);
  v64 = v58;
  v65 = v106;
  sub_8198(v64, v106, &qword_31B040, &qword_270518);
  v66 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v67 = swift_allocObject();
  sub_22148(v65, v67 + v66, &qword_31B040, &qword_270518);
  sub_2604C0();
  sub_260420();
  v68 = v52 + v51[9];
  *v68 = swift_getKeyPath();
  *(v68 + 8) = 0;
  v69 = v51[10];
  *(v52 + v69) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v70 = v52 + v51[11];
  *v70 = swift_getKeyPath();
  *(v70 + 40) = 0;
  v71 = (v55 + *(v54 + 36));
  *v71 = sub_9E530;
  v71[1] = v67;
  v72 = v113;
  v73 = *(v113 + 20);
  KeyPath = swift_getKeyPath();
  v75 = v112;
  *&v112[v73] = KeyPath;
  swift_storeEnumTagMultiPayload();
  v76 = v72[6];
  *&v75[v76] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v77 = v72[7];
  *&v75[v77] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v78 = v72[8];
  *&v75[v78] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v79 = &v75[v72[9]];
  *v79 = swift_getKeyPath();
  v79[8] = 0;
  v80 = v72[10];
  *&v75[v80] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v75 = 1;
  sub_8E38(&qword_31B1D8, &qword_31B1B8, &qword_270670, &protocol conformance descriptor for BooksActionButton<A>);
  sub_9E7B8(&qword_31B1E0, type metadata accessor for BooksBorderlessButtonStyle, &protocol conformance descriptor for BooksBorderlessButtonStyle);
  v81 = v114;
  sub_262A60();
  sub_9E5D8(v75, type metadata accessor for BooksBorderlessButtonStyle);
  sub_8E80(v52, &qword_31B1B8, &qword_270670);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v82 = v81;
  v83 = &v81[*(v115 + 44)];
  v84 = v124;
  *v83 = v123;
  v83[1] = v84;
  v83[2] = v125;
  v85 = v118;
  v86 = v111;
  sub_8198(v118, v111, &qword_31B180, &qword_2705E8);
  v87 = v116;
  sub_8198(v82, v116, &qword_31B1C0, &qword_270678);
  v88 = v117;
  sub_8198(v86, v117, &qword_31B180, &qword_2705E8);
  v89 = sub_2EF0(&qword_31B1E8, &qword_2707B8);
  sub_8198(v87, v88 + *(v89 + 48), &qword_31B1C0, &qword_270678);
  sub_8E80(v82, &qword_31B1C0, &qword_270678);
  sub_8E80(v85, &qword_31B180, &qword_2705E8);
  sub_8E80(v87, &qword_31B1C0, &qword_270678);
  return sub_8E80(v86, &qword_31B180, &qword_2705E8);
}

uint64_t sub_9D708(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B040, &qword_270518);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  sub_8198(a1, &v9 - v4, &qword_31B040, &qword_270518);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_22148(v5, v7 + v6, &qword_31B040, &qword_270518);
  sub_260A70();
  sub_260A50();
  sub_9E7B8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_9E7B8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_9D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_31B040, &qword_270518);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  sub_8198(a2, &v20[-v8 - 8], &qword_31B040, &qword_270518);
  v10 = *(v7 + 56);
  sub_30CC(a1, v20);
  v11 = sub_2627B0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_3080(&v9[v10]);
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  return result;
}

void sub_9DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalActionSheet.Buttons(255, *(a1 + 16), *(a1 + 24), a4);
  sub_264A60();
  if (v4 <= 0x3F)
  {
    sub_16D28();
    if (v5 <= 0x3F)
    {
      sub_3E754(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_9DB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModalActionSheet.Buttons(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = sub_264A60();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_9DC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ModalActionSheet.Buttons(255, *(a4 + 16), *(a4 + 24), a4);
  result = sub_264A60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_9DDB4(uint64_t a1)
{
  sub_9E07C(319);
  if (v1 <= 0x3F)
  {
    sub_9E0F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_9DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_31B038, &qword_270510);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_9DF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_31B038, &qword_270510);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

void sub_9E07C(uint64_t a1)
{
  if (!qword_31B160)
  {
    type metadata accessor for ButtonViewModel.Content(255);
    type metadata accessor for ButtonViewModel.ActionKind(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31B160);
    }
  }
}

void sub_9E0F0(uint64_t a1)
{
  if (!qword_31B168)
  {
    sub_2F9C(&qword_31B040, &qword_270518);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31B168);
    }
  }
}

uint64_t sub_9E154(uint64_t *a1)
{
  sub_2F9C(&qword_31B048, &unk_270520);
  swift_getTupleTypeMetadata3();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_9E250()
{
  result = qword_31B190;
  if (!qword_31B190)
  {
    sub_2F9C(&qword_31B048, &unk_270520);
    sub_9E2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B190);
  }

  return result;
}

unint64_t sub_9E2D4()
{
  result = qword_31B198;
  if (!qword_31B198)
  {
    sub_2F9C(&qword_31B188, &qword_2705F0);
    sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0, &protocol conformance descriptor for VStack<A>);
    sub_9E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B198);
  }

  return result;
}

unint64_t sub_9E38C()
{
  result = qword_31B1A8;
  if (!qword_31B1A8)
  {
    sub_2F9C(&qword_31B180, &qword_2705E8);
    sub_9E7B8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B1A8);
  }

  return result;
}

uint64_t sub_9E454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9E4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B188, &qword_2705F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9E530()
{
  v1 = *(sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_9D708(v2);
}

uint64_t sub_9E5D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9E638()
{
  v1 = (sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_260BD0();
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_3080((v2 + v1[14]));

  return swift_deallocObject();
}

uint64_t sub_9E72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_9D910(a1, v6, a2);
}

uint64_t sub_9E7B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GridItemMetadata.init(titleLockup:showOrdinal:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = sub_200E0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_9E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316BC0, &qword_2707C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9E8D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_9E8EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9E900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_9E95C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t BooksBorderlessButtonStyle.init(size:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for BooksBorderlessButtonStyle(0);
  v5 = v4[5];
  *&a2[v5] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *&a2[v6] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *&a2[v7] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *&a2[v8] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v9 = &a2[v4[9]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v4[10];
  *&a2[v10] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t sub_9EBE0@<X0>(void *a1@<X8>)
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
    return sub_A75CC(v10, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_9EDC4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 28);
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

uint64_t BooksBorderedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27[2] = a2;
  v5 = sub_2EF0(&qword_31B1F0, &qword_270998);
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_2EF0(&qword_31B1F8, &qword_2709A0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = sub_2EF0(&qword_31B200, &qword_2709A8);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  v17 = v3 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  if (*(v17 + *(type metadata accessor for ButtonViewModel(0) + 28)) == 2)
  {
    sub_9F780(v3, a1, v16);
    sub_8198(v16, v13, &qword_31B200, &qword_2709A8);
    swift_storeEnumTagMultiPayload();
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998, &protocol conformance descriptor for ViewThatFits<A>);
    sub_261F80();
    v18 = v16;
    v19 = &qword_31B200;
    v20 = &qword_2709A8;
  }

  else
  {
    v27[0] = v14;
    v27[1] = v5;
    sub_2EF0(&qword_317310, &qword_2721D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269100;
    v22 = sub_2624C0();
    *(inited + 32) = v22;
    v23 = sub_2624E0();
    *(inited + 33) = v23;
    v24 = sub_2624D0();
    sub_2624D0();
    if (sub_2624D0() != v22)
    {
      v24 = sub_2624D0();
    }

    sub_2624D0();
    if (sub_2624D0() != v23)
    {
      v24 = sub_2624D0();
    }

    *v7 = v24;
    v25 = sub_2EF0(&qword_31B2E0, &unk_270A20);
    sub_9F2C8(v3, a1, &v7[*(v25 + 44)]);
    sub_A6158(v7, v10);
    sub_8198(v10, v13, &qword_31B1F0, &qword_270998);
    swift_storeEnumTagMultiPayload();
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998, &protocol conformance descriptor for ViewThatFits<A>);
    sub_261F80();
    v18 = v10;
    v19 = &qword_31B1F0;
    v20 = &qword_270998;
  }

  return sub_8E80(v18, v19, v20);
}

uint64_t sub_9F2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_2EF0(&qword_31B4C8, &qword_270B70);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = sub_2EF0(&qword_31B4D0, &qword_270B78);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_2EF0(&qword_31B4D8, &qword_270B80);
  __chkstk_darwin(v13 - 8);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = sub_2EF0(&qword_31B200, &qword_2709A8);
  __chkstk_darwin(v18 - 8);
  v54 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  v53 = a2;
  sub_9F780(a1, a2, &v53 - v21);
  sub_A0314(v8);
  v23 = &v8[*(sub_2EF0(&qword_31B4E0, &unk_270B88) + 36)];
  v24 = *(sub_2617E0() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_261DD0();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #25.0 }

  *v23 = _Q0;
  *&v23[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v32 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v34 = v33;
  v35 = &v8[*(v6 + 44)];
  *v35 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v35[1] = v36;
  v37 = sub_2EF0(&qword_31B4E8, &qword_270B98);
  sub_A332C(a1, v35 + *(v37 + 44));
  v38 = (v35 + *(sub_2EF0(&qword_31B4F0, &qword_270BA0) + 36));
  *v38 = v32;
  v38[1] = v34;
  v39 = v53;
  if (sub_2622B0())
  {
    v40 = 0.6;
  }

  else
  {
    v40 = 1.0;
  }

  sub_22148(v8, v12, &qword_31B4C8, &qword_270B70);
  *&v12[*(v10 + 44)] = v40;
  v41 = sub_261D30();
  v42 = &v17[*(sub_2EF0(&qword_31B4F8, &qword_270BA8) + 36)];
  *v42 = v41;
  *(v42 + 1) = 0;
  v42[16] = 1;
  v43 = sub_2EF0(&qword_31B500, &qword_270BB0);
  sub_A3874(a1, v39, &v42[*(v43 + 44)]);
  v44 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v46 = v45;
  v47 = &v42[*(sub_2EF0(&qword_31B508, &qword_270BB8) + 36)];
  *v47 = v44;
  v47[1] = v46;
  sub_22148(v12, v17, &qword_31B4D0, &qword_270B78);
  v48 = v54;
  sub_8198(v22, v54, &qword_31B200, &qword_2709A8);
  v49 = v55;
  sub_8198(v17, v55, &qword_31B4D8, &qword_270B80);
  v50 = v56;
  sub_8198(v48, v56, &qword_31B200, &qword_2709A8);
  v51 = sub_2EF0(&qword_31B510, &qword_270BC0);
  sub_8198(v49, v50 + *(v51 + 48), &qword_31B4D8, &qword_270B80);
  sub_8E80(v17, &qword_31B4D8, &qword_270B80);
  sub_8E80(v22, &qword_31B200, &qword_2709A8);
  sub_8E80(v49, &qword_31B4D8, &qword_270B80);
  return sub_8E80(v48, &qword_31B200, &qword_2709A8);
}

uint64_t sub_9F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a3;
  v5 = sub_261220();
  v119 = *(v5 - 8);
  v120 = v5;
  __chkstk_darwin(v5);
  v117 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v102);
  v111 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262730();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v99 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v93 - v12;
  __chkstk_darwin(v13);
  v97 = &v93 - v14;
  __chkstk_darwin(v15);
  v96 = &v93 - v16;
  v105 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v105);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v98 = &v93 - v19;
  v20 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v93 - v24);
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  __chkstk_darwin(v29);
  v31 = (&v93 - v30);
  v32 = sub_2EF0(&qword_31B258, &qword_2709D0);
  __chkstk_darwin(v32 - 8);
  v34 = &v93 - v33;
  v104 = sub_2EF0(&qword_31B248, &qword_2709C8);
  __chkstk_darwin(v104);
  v112 = &v93 - v35;
  v103 = sub_2EF0(&qword_31B238, &qword_2709C0);
  __chkstk_darwin(v103);
  v110 = &v93 - v36;
  v108 = sub_2EF0(&qword_31B228, &qword_2709B8);
  __chkstk_darwin(v108);
  v113 = &v93 - v37;
  v114 = sub_2EF0(&qword_31B210, &qword_2709B0);
  __chkstk_darwin(v114);
  v115 = &v93 - v38;
  v106 = v34;
  v116 = a2;
  sub_A0314(v34);
  v39 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v121 = a1;
  v40 = a1 + v39;
  v107 = type metadata accessor for ButtonViewModel(0);
  v41 = *(v107 + 28);
  v109 = v40;
  v42 = (v9 + 104);
  v43 = (v9 + 16);
  v44 = (v9 + 8);
  if (*(v40 + v41) == 2)
  {
    v94 = v31;
    sub_9EBE0(v31);
    v45 = v96;
    (*v42)(v96, enum case for Font.TextStyle.subheadline(_:), v8);
    v46 = v31;
    v47 = v28;
    sub_A727C(v46, v28, type metadata accessor for SizeConstants);
    v48 = v97;
    (*v43)(v97, v45, v8);
    v49 = v98;
    sub_A727C(v47, v98, type metadata accessor for SizeConstants);
    v50 = v111;
    sub_A727C(v47, v111, type metadata accessor for SizeConstants.Environment);
    v51 = *(v102 + 24);
    v52 = sub_1CF30(v48, v50 + v51);
    v53 = *v44;
    (*v44)(v48, v8);
    sub_A72E4(v47, type metadata accessor for SizeConstants);
    v54 = sub_261690();
    (*(*(v54 - 8) + 8))(v50 + v51, v54);
    v55 = 1.0;
    if ((*&v52 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v55 = v52;
    }

    if ((~*&v52 & 0x7FF0000000000000) != 0)
    {
      v55 = v52;
    }

    *(v49 + *(v105 + 36)) = v55;
    v53(v45, v8);
    sub_A72E4(v94, type metadata accessor for SizeConstants);
    v56 = 28.0;
  }

  else
  {
    v95 = v25;
    sub_9EBE0(v25);
    v57 = v101;
    (*v42)(v101, enum case for Font.TextStyle.subheadline(_:), v8);
    v58 = v25;
    v59 = v22;
    sub_A727C(v58, v22, type metadata accessor for SizeConstants);
    v60 = v99;
    (*v43)(v99, v57, v8);
    v49 = v100;
    sub_A727C(v59, v100, type metadata accessor for SizeConstants);
    v61 = v111;
    sub_A727C(v59, v111, type metadata accessor for SizeConstants.Environment);
    v62 = *(v102 + 24);
    v63 = sub_1CF30(v60, v61 + v62);
    v64 = *v44;
    (*v44)(v60, v8);
    sub_A72E4(v59, type metadata accessor for SizeConstants);
    v65 = sub_261690();
    (*(*(v65 - 8) + 8))(v61 + v62, v65);
    v66 = 1.0;
    if ((*&v63 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v66 = v63;
    }

    if ((~*&v63 & 0x7FF0000000000000) != 0)
    {
      v66 = v63;
    }

    *(v49 + *(v105 + 36)) = v66;
    v64(v57, v8);
    sub_A72E4(v95, type metadata accessor for SizeConstants);
    v56 = 48.0;
  }

  sub_21FA54(v56);
  sub_8E80(v49, &qword_31B4C0, &qword_27C030);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v67 = v112;
  sub_22148(v106, v112, &qword_31B258, &qword_2709D0);
  v68 = (v67 + *(v104 + 36));
  v69 = v123;
  *v68 = v122;
  v68[1] = v69;
  v68[2] = v124;
  v70 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v72 = v71;
  v73 = v110;
  v74 = &v110[*(v103 + 36)];
  *v74 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v74[1] = v75;
  v76 = sub_2EF0(&qword_31B580, &qword_270C68);
  v77 = v121;
  sub_A1B94(v121, v74 + *(v76 + 44));
  v78 = (v74 + *(sub_2EF0(&qword_31B2B8, &qword_270A08) + 36));
  *v78 = v70;
  v78[1] = v72;
  sub_22148(v67, v73, &qword_31B248, &qword_2709C8);
  v79 = v116;
  if (sub_2622B0())
  {
    v80 = 0.6;
  }

  else
  {
    v80 = 1.0;
  }

  v81 = v113;
  sub_22148(v73, v113, &qword_31B238, &qword_2709C0);
  *(v81 + *(v108 + 36)) = v80;
  v82 = sub_261D30();
  v83 = v115;
  v84 = &v115[*(v114 + 36)];
  *v84 = v82;
  *(v84 + 1) = 0;
  v84[16] = 1;
  v85 = sub_2EF0(&qword_31B588, &qword_270C70);
  sub_A2928(v77, v79, &v84[*(v85 + 44)]);
  v86 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v88 = v87;
  v89 = &v84[*(sub_2EF0(&qword_31B2C8, &unk_270A10) + 36)];
  *v89 = v86;
  v89[1] = v88;
  sub_22148(v81, v83, &qword_31B228, &qword_2709B8);
  v90 = v117;
  if (*(v109 + *(v107 + 36)))
  {
    sub_261210();
  }

  else
  {
    sub_261200();
  }

  sub_A5B34();
  sub_A65A0(&qword_31B2D0, &type metadata accessor for HoverEffect, &protocol conformance descriptor for HoverEffect);
  v91 = v120;
  sub_262AA0();
  (*(v119 + 8))(v90, v91);
  return sub_8E80(v83, &qword_31B210, &qword_2709B0);
}

uint64_t sub_A0314@<X0>(uint64_t a1@<X8>)
{
  v218 = a1;
  v216 = sub_2EF0(&qword_31B568, &qword_270C20);
  __chkstk_darwin(v216);
  v217 = &v174 - v2;
  v206 = sub_2EF0(&qword_31B570, &qword_270C28);
  __chkstk_darwin(v206);
  v205 = &v174 - v3;
  v202 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v202);
  v203 = &v174 - v4;
  v220 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v220);
  v211 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_262730();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v199 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v200 = &v174 - v8;
  __chkstk_darwin(v9);
  v190 = &v174 - v10;
  __chkstk_darwin(v11);
  v191 = &v174 - v12;
  __chkstk_darwin(v13);
  v182 = &v174 - v14;
  __chkstk_darwin(v15);
  v184 = &v174 - v16;
  __chkstk_darwin(v17);
  v180 = &v174 - v18;
  __chkstk_darwin(v19);
  v197 = (&v174 - v20);
  v221 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v221);
  v198 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v174 - v23;
  __chkstk_darwin(v24);
  v183 = &v174 - v25;
  __chkstk_darwin(v26);
  v181 = &v174 - v27;
  v28 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v28 - 8);
  v194 = (&v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v208 = (&v174 - v31);
  __chkstk_darwin(v32);
  v185 = &v174 - v33;
  __chkstk_darwin(v34);
  v186 = (&v174 - v35);
  __chkstk_darwin(v36);
  v176 = &v174 - v37;
  __chkstk_darwin(v38);
  v193 = (&v174 - v39);
  __chkstk_darwin(v40);
  v175 = &v174 - v41;
  __chkstk_darwin(v42);
  v192 = (&v174 - v43);
  v210 = sub_2EF0(&qword_31B288, &qword_2709E8);
  __chkstk_darwin(v210);
  v209 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v201 = &v174 - v46;
  __chkstk_darwin(v47);
  v179 = &v174 - v48;
  v215 = sub_2EF0(&qword_31B278, &qword_2709E0);
  __chkstk_darwin(v215);
  v195 = &v174 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v196 = &v174 - v51;
  __chkstk_darwin(v52);
  v187 = &v174 - v53;
  __chkstk_darwin(v54);
  v188 = &v174 - v55;
  __chkstk_darwin(v56);
  v177 = &v174 - v57;
  __chkstk_darwin(v58);
  v178 = &v174 - v59;
  v214 = sub_2EF0(&qword_31B268, &qword_2709D8);
  __chkstk_darwin(v214);
  v204 = &v174 - v60;
  v207 = sub_262290();
  v61 = *(v207 - 1);
  __chkstk_darwin(v207);
  v63 = &v174 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2EF0(&qword_31B2A8, &unk_2709F8);
  __chkstk_darwin(v64);
  v66 = &v174 - v65;
  v67 = sub_2EF0(&qword_31B298, &qword_2709F0);
  __chkstk_darwin(v67);
  v222 = &v174 - v68;
  sub_2622A0();
  v69 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v219 = v1;
  v70 = v1 + v69;
  v71 = type metadata accessor for ButtonViewModel(0);
  if (v70[*(v71 + 48)] == 1)
  {
    ButtonViewModel.theme.getter(&v223);
    v72 = v223;
  }

  else
  {
    ButtonViewModel.theme.getter(&v223);
    v72 = *(&v224 + 1);
  }

  KeyPath = swift_getKeyPath();
  (*(v61 + 32))(v66, v63, v207);
  v74 = &v66[*(v64 + 36)];
  *v74 = KeyPath;
  v74[1] = v72;
  v75 = *(v67 + 36);
  v76 = v222;
  sub_A24D0((v222 + v75));
  sub_22148(v66, v76, &qword_31B2A8, &unk_2709F8);
  v77 = v70[*(v71 + 28)];
  if (v77 == 2)
  {
    v78 = sub_262500();
    v79 = v209;
    sub_8198(v76, v209, &qword_31B298, &qword_2709F0);
    v80 = v79 + *(v210 + 36);
    *v80 = v78;
    *(v80 + 8) = 0u;
    *(v80 + 24) = 0u;
    *(v80 + 40) = 1;
    v81 = v208;
    sub_9EBE0(v208);
    v82 = v212;
    v83 = v200;
    v84 = v213;
    (*(v212 + 104))(v200, enum case for Font.TextStyle.subheadline(_:), v213);
    v85 = v194;
    sub_A727C(v81, v194, type metadata accessor for SizeConstants);
    v86 = v199;
    (*(v82 + 16))(v199, v83, v84);
    v87 = v198;
    sub_A727C(v85, v198, type metadata accessor for SizeConstants);
    v88 = v211;
    sub_A727C(v85, v211, type metadata accessor for SizeConstants.Environment);
    v89 = *(v220 + 24);
    v90 = sub_1CF30(v86, v88 + v89);
    v91 = *(v82 + 8);
    v91(v86, v84);
    sub_A72E4(v85, type metadata accessor for SizeConstants);
    v92 = sub_261690();
    (*(*(v92 - 8) + 8))(v88 + v89, v92);
    v93 = 1.0;
    if ((*&v90 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v93 = v90;
    }

    if ((~*&v90 & 0x7FF0000000000000) != 0)
    {
      v93 = v90;
    }

    *(v87 + *(v221 + 36)) = v93;
    v91(v83, v84);
    sub_A72E4(v208, type metadata accessor for SizeConstants);
    sub_21FA54(80.0);
    sub_8E80(v87, &qword_31B4C0, &qword_27C030);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v94 = v215;
    sub_261830();
    v95 = v195;
    sub_22148(v209, v195, &qword_31B288, &qword_2709E8);
    v96 = &v95[*(v94 + 36)];
    v97 = v228;
    *(v96 + 4) = v227;
    *(v96 + 5) = v97;
    *(v96 + 6) = v229;
    v98 = v224;
    *v96 = v223;
    *(v96 + 1) = v98;
    v99 = v226;
    *(v96 + 2) = v225;
    *(v96 + 3) = v99;
    v100 = v196;
    sub_22148(v95, v196, &qword_31B278, &qword_2709E0);
    sub_8198(v100, v217, &qword_31B278, &qword_2709E0);
    swift_storeEnumTagMultiPayload();
    sub_A5E48();
    sub_A5ECC();
    sub_261F80();
    sub_8E80(v100, &qword_31B278, &qword_2709E0);
    v76 = v222;
  }

  else
  {
    if (v77)
    {
      v101 = v192;
      sub_9EBE0(v192);
      v102 = v212;
      v103 = v197;
      v104 = v213;
      (*(v212 + 104))(v197, enum case for Font.TextStyle.subheadline(_:), v213);
      v105 = v175;
      sub_A727C(v101, v175, type metadata accessor for SizeConstants);
      v106 = v180;
      (*(v102 + 16))(v180, v103, v104);
      v107 = v181;
      sub_A727C(v105, v181, type metadata accessor for SizeConstants);
      v219 = type metadata accessor for SizeConstants.Environment;
      v108 = v211;
      sub_A727C(v105, v211, type metadata accessor for SizeConstants.Environment);
      v109 = *(v220 + 24);
      v110 = sub_1CF30(v106, v108 + v109);
      v111 = *(v102 + 8);
      v111(v106, v104);
      sub_A72E4(v105, type metadata accessor for SizeConstants);
      v112 = sub_261690();
      (*(*(v112 - 8) + 8))(v108 + v109, v112);
      v113 = 1.0;
      if ((*&v110 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v113 = v110;
      }

      if ((~*&v110 & 0x7FF0000000000000) == 0)
      {
        v110 = v113;
      }

      *(v107 + *(v221 + 36)) = v110;
      v111(v197, v104);
      sub_A72E4(v192, type metadata accessor for SizeConstants);
      v114 = v203;
      sub_A727C(v107, v203, v219);
      sub_8E80(v107, &qword_31B4C0, &qword_27C030);
      *(v114 + *(v202 + 36)) = v110;
      sub_21FA68(6.0);
      sub_8E80(v114, &qword_31B578, &qword_270C30);
      LOBYTE(v114) = sub_262500();
      sub_2610C0();
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v122 = v121;
      v123 = v179;
      sub_8198(v76, v179, &qword_31B298, &qword_2709F0);
      v124 = v123 + *(v210 + 36);
      *v124 = v114;
      *(v124 + 8) = v116;
      *(v124 + 16) = v118;
      *(v124 + 24) = v120;
      *(v124 + 32) = v122;
      *(v124 + 40) = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v125 = v177;
      sub_22148(v123, v177, &qword_31B288, &qword_2709E8);
      v126 = (v125 + *(v215 + 36));
      v127 = v228;
      v126[4] = v227;
      v126[5] = v127;
      v126[6] = v229;
      v128 = v224;
      *v126 = v223;
      v126[1] = v128;
      v129 = v226;
      v126[2] = v225;
      v126[3] = v129;
      v130 = v178;
      sub_22148(v125, v178, &qword_31B278, &qword_2709E0);
    }

    else
    {
      LODWORD(v200) = sub_2624F0();
      v131 = v193;
      sub_9EBE0(v193);
      LODWORD(v208) = enum case for Font.TextStyle.subheadline(_:);
      v132 = v212;
      v207 = *(v212 + 104);
      v209 = v212 + 104;
      v133 = v184;
      v134 = v213;
      v207(v184);
      v135 = v176;
      v197 = type metadata accessor for SizeConstants;
      sub_A727C(v131, v176, type metadata accessor for SizeConstants);
      v136 = *(v132 + 16);
      v198 = v132 + 16;
      v199 = v136;
      v137 = v182;
      (v136)(v182, v133, v134);
      v138 = v183;
      sub_A727C(v135, v183, type metadata accessor for SizeConstants);
      v139 = v211;
      v192 = type metadata accessor for SizeConstants.Environment;
      sub_A727C(v135, v211, type metadata accessor for SizeConstants.Environment);
      v140 = *(v220 + 24);
      v141 = sub_1CF30(v137, v139 + v140);
      v142 = *(v132 + 8);
      v142(v137, v134);
      v194 = v142;
      sub_A72E4(v135, type metadata accessor for SizeConstants);
      v196 = sub_261690();
      v143 = *(v196 - 8);
      v195 = *(v143 + 8);
      v212 = v143 + 8;
      (v195)(v139 + v140, v196);
      if ((*&v141 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v144 = 1.0;
      }

      else
      {
        v144 = v141;
      }

      if ((~*&v141 & 0x7FF0000000000000) == 0)
      {
        v141 = v144;
      }

      *(v138 + *(v221 + 36)) = v141;
      v142(v133, v134);
      sub_A72E4(v193, type metadata accessor for SizeConstants);
      v145 = v203;
      sub_A727C(v138, v203, type metadata accessor for SizeConstants.Environment);
      sub_8E80(v138, &qword_31B4C0, &qword_27C030);
      *(v145 + *(v202 + 36)) = v141;
      sub_21FA68(12.0);
      sub_8E80(v145, &qword_31B578, &qword_270C30);
      sub_2610C0();
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      v154 = v201;
      sub_8198(v222, v201, &qword_31B298, &qword_2709F0);
      v155 = v154 + *(v210 + 36);
      *v155 = v200;
      *(v155 + 8) = v147;
      *(v155 + 16) = v149;
      *(v155 + 24) = v151;
      *(v155 + 32) = v153;
      *(v155 + 40) = 0;
      v156 = v186;
      sub_9EBE0(v186);
      v157 = v191;
      (v207)(v191, v208, v134);
      v158 = v185;
      v159 = v197;
      sub_A727C(v156, v185, v197);
      v160 = v190;
      (v199)(v190, v157, v134);
      v161 = v189;
      sub_A727C(v158, v189, v159);
      sub_A727C(v158, v139, v192);
      v162 = *(v220 + 24);
      v163 = sub_1CF30(v160, v139 + v162);
      v164 = v160;
      v165 = v194;
      v194(v164, v134);
      sub_A72E4(v158, type metadata accessor for SizeConstants);
      (v195)(v139 + v162, v196);
      if ((*&v163 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v166 = 1.0;
      }

      else
      {
        v166 = v163;
      }

      if ((~*&v163 & 0x7FF0000000000000) != 0)
      {
        v166 = v163;
      }

      *(v161 + *(v221 + 36)) = v166;
      v165(v157, v134);
      sub_A72E4(v156, type metadata accessor for SizeConstants);
      sub_21FA54(200.0);
      sub_8E80(v161, &qword_31B4C0, &qword_27C030);
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v167 = v187;
      sub_22148(v201, v187, &qword_31B288, &qword_2709E8);
      v168 = (v167 + *(v215 + 36));
      v169 = v228;
      v168[4] = v227;
      v168[5] = v169;
      v168[6] = v229;
      v170 = v224;
      *v168 = v223;
      v168[1] = v170;
      v171 = v226;
      v168[2] = v225;
      v168[3] = v171;
      v130 = v188;
      sub_22148(v167, v188, &qword_31B278, &qword_2709E0);
      v76 = v222;
    }

    sub_8198(v130, v205, &qword_31B278, &qword_2709E0);
    swift_storeEnumTagMultiPayload();
    sub_A5ECC();
    v172 = v204;
    sub_261F80();
    sub_8E80(v130, &qword_31B278, &qword_2709E0);
    sub_8198(v172, v217, &qword_31B268, &qword_2709D8);
    swift_storeEnumTagMultiPayload();
    sub_A5E48();
    sub_261F80();
    sub_8E80(v172, &qword_31B268, &qword_2709D8);
  }

  return sub_8E80(v76, &qword_31B298, &qword_2709F0);
}

uint64_t sub_A1B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_263390();
  __chkstk_darwin(v3 - 8);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  __chkstk_darwin(v61);
  v62 = &v58 - v5;
  v70 = sub_2EF0(&qword_31B600, &qword_270CC0);
  __chkstk_darwin(v70);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v8;
  v67 = sub_2EF0(&qword_31B608, &qword_270CC8);
  __chkstk_darwin(v67);
  v69 = &v58 - v9;
  v58 = sub_2617E0();
  __chkstk_darwin(v58);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  __chkstk_darwin(v59);
  v13 = &v58 - v12;
  v65 = sub_2EF0(&qword_31B548, &qword_270C00);
  __chkstk_darwin(v65);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = sub_2EF0(&qword_31B610, &qword_270CD0);
  __chkstk_darwin(v19 - 8);
  v68 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v66 = &v58 - v22;
  v23 = sub_2EF0(&qword_31B550, &qword_270C08);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  v27 = sub_2EF0(&qword_31B558, &qword_270C10);
  __chkstk_darwin(v27 - 8);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v58 - v31;
  v72 = a1;
  if (sub_9EDC4())
  {
    sub_A7228();
    sub_261390();
    (*(v24 + 32))(v32, v26, v23);
    (*(v24 + 56))(v32, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v32, 1, 1, v23);
  }

  v33 = v72 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v34 = type metadata accessor for ButtonViewModel(0);
  v35 = v34;
  if (*(v33 + *(v34 + 32)) == 1)
  {
    if (*(v33 + *(v34 + 28)) == 2)
    {
      v36 = 5.0;
    }

    else
    {
      v36 = 12.0;
    }

    v37 = *(v58 + 20);
    v38 = enum case for RoundedCornerStyle.continuous(_:);
    v39 = sub_261DD0();
    (*(*(v39 - 8) + 104))(v11 + v37, v38, v39);
    *v11 = v36;
    v11[1] = v36;
    if (*(v33 + *(v35 + 36)) == 1)
    {
      v40 = sub_262FA0();
    }

    else
    {
      if (*(v33 + *(v35 + 48)) == 1)
      {
        ButtonViewModel.theme.getter(&v73);
        v40 = v74;
      }

      else
      {
        ButtonViewModel.theme.getter(&v73);
        v40 = v75;
      }
    }

    sub_A75CC(v11, v13, &type metadata accessor for RoundedRectangle);
    v45 = v59;
    *&v13[*(v59 + 52)] = v40;
    *&v13[*(v45 + 56)] = 256;
    sub_A24D0(&v15[*(v65 + 36)]);
    sub_22148(v13, v15, &qword_3192C8, &unk_2793D0);
    v46 = &qword_31B548;
    v47 = &qword_270C00;
    sub_22148(v15, v18, &qword_31B548, &qword_270C00);
    sub_8198(v18, v69, &qword_31B548, &qword_270C00);
    swift_storeEnumTagMultiPayload();
    sub_A7634();
    sub_A76EC();
    v48 = v66;
    sub_261F80();
    v49 = v18;
  }

  else
  {
    v41 = enum case for RoundedCornerStyle.continuous(_:);
    v42 = sub_261DD0();
    v43 = v63;
    (*(*(v42 - 8) + 104))(v63, v41, v42);
    if (*(v33 + *(v35 + 36)) == 1)
    {
      v44 = sub_262FA0();
    }

    else
    {
      if (*(v33 + *(v35 + 48)) == 1)
      {
        ButtonViewModel.theme.getter(&v73);
        v44 = v74;
      }

      else
      {
        ButtonViewModel.theme.getter(&v73);
        v44 = v75;
      }
    }

    v48 = v66;
    v50 = v62;
    sub_A75CC(v43, v62, &type metadata accessor for Capsule);
    v52 = v60;
    v51 = v61;
    *(v50 + *(v61 + 52)) = v44;
    *(v50 + *(v51 + 56)) = 256;
    sub_A24D0((v52 + *(v70 + 36)));
    sub_22148(v50, v52, &qword_31A6F0, &qword_26F6C8);
    v46 = &qword_31B600;
    v47 = &qword_270CC0;
    v53 = v64;
    sub_22148(v52, v64, &qword_31B600, &qword_270CC0);
    sub_8198(v53, v69, &qword_31B600, &qword_270CC0);
    swift_storeEnumTagMultiPayload();
    sub_A7634();
    sub_A76EC();
    sub_261F80();
    v49 = v53;
  }

  sub_8E80(v49, v46, v47);
  sub_8198(v32, v29, &qword_31B558, &qword_270C10);
  v54 = v68;
  sub_8198(v48, v68, &qword_31B610, &qword_270CD0);
  v55 = v71;
  sub_8198(v29, v71, &qword_31B558, &qword_270C10);
  v56 = sub_2EF0(&qword_31B638, &qword_270CD8);
  sub_8198(v54, v55 + *(v56 + 48), &qword_31B610, &qword_270CD0);
  sub_8E80(v48, &qword_31B610, &qword_270CD0);
  sub_8E80(v32, &qword_31B558, &qword_270C10);
  sub_8E80(v54, &qword_31B610, &qword_270CD0);
  return sub_8E80(v29, &qword_31B558, &qword_270C10);
}

uint64_t sub_A24D0@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for BooksBorderedButtonStyle(0);
  v14 = v1 + v13[8];
  v15 = *(v14 + *(type metadata accessor for ButtonViewModel(0) + 40));
  if (v15 == 1)
  {
    v18 = v1 + v13[7];
    v19 = *v18;
    if (*(v18 + 8) == 1)
    {
      if ((v19 & 1) == 0)
      {
LABEL_7:
        v20 = enum case for BlendMode.normal(_:);
        v21 = sub_263640();
        return (*(*(v21 - 8) + 104))(a1, v20, v21);
      }
    }

    else
    {

      sub_264900();
      v25 = sub_2624B0();
      v30 = v4;
      v26 = a1;
      v27 = v25;
      sub_260D10();

      a1 = v26;
      v4 = v30;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v19, 0);
      (*(v4 + 8))(v6, v3);
      if (v31 != 1)
      {
        goto LABEL_7;
      }
    }

    sub_8198(v1 + v13[6], v9, &qword_3179C0, &qword_269D60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = sub_263640();
      return (*(*(v28 - 8) + 32))(a1, v9, v28);
    }

    goto LABEL_15;
  }

  if (v15 == 2)
  {
    sub_8198(v1 + v13[5], v12, &qword_3179C0, &qword_269D60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = sub_263640();
      return (*(*(v16 - 8) + 32))(a1, v12, v16);
    }

LABEL_15:
    sub_264900();
    v29 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  v22 = enum case for BlendMode.normal(_:);
  v23 = sub_263640();
  v24 = *(*(v23 - 8) + 104);

  return v24(a1, v22, v23);
}

uint64_t sub_A2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v83 = a3;
  v4 = sub_263390();
  __chkstk_darwin(v4 - 8);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_31B590, &qword_270C78);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v70 = sub_2EF0(&qword_31B598, &qword_270C80);
  __chkstk_darwin(v70);
  v73 = &v68 - v9;
  v81 = sub_2EF0(&qword_31B5A0, &qword_270C88);
  __chkstk_darwin(v81);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  v78 = sub_2EF0(&qword_31B5A8, &qword_270C90);
  __chkstk_darwin(v78);
  v79 = &v68 - v13;
  v14 = sub_2617E0();
  __chkstk_darwin(v14);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2EF0(&qword_31B518, &qword_270BC8);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v69 = sub_2EF0(&qword_31B520, &qword_270BD0);
  __chkstk_darwin(v69);
  v21 = &v68 - v20;
  v76 = sub_2EF0(&qword_31B528, &qword_270BD8);
  __chkstk_darwin(v76);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v27 = sub_2EF0(&qword_31B5B0, &qword_270C98);
  v82 = *(v27 - 8);
  __chkstk_darwin(v27);
  v75 = &v68 - v28;
  v29 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v77 = a1;
  v30 = a1 + v29;
  v31 = type metadata accessor for ButtonViewModel(0);
  if (*(v30 + v31[9]) == 1)
  {
    v32 = v31;
    if (*(v30 + v31[8]) == 1)
    {
      if (*(v30 + v31[7]) == 2)
      {
        v33 = 5.0;
      }

      else
      {
        v33 = 12.0;
      }

      v34 = *(v14 + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_261DD0();
      (*(*(v36 - 8) + 104))(v16 + v34, v35, v36);
      *v16 = v33;
      v16[1] = v33;
      if (*(v30 + v32[12]) == 1)
      {
        ButtonViewModel.theme.getter(&v84);
        v37 = *(&v84 + 1);
      }

      else
      {
        ButtonViewModel.theme.getter(&v84);
        v37 = v85;
      }

      v44 = v27;
      sub_261240();
      sub_A727C(v16, v19, &type metadata accessor for RoundedRectangle);
      v45 = &v19[*(sub_2EF0(&qword_31B530, &qword_270BE0) + 36)];
      v46 = v85;
      *v45 = v84;
      *(v45 + 1) = v46;
      *(v45 + 4) = v86;
      v47 = sub_2EF0(&qword_31B538, &qword_270BE8);
      *&v19[*(v47 + 52)] = v37;
      *&v19[*(v47 + 56)] = 256;
      v48 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v50 = v49;
      sub_A72E4(v16, &type metadata accessor for RoundedRectangle);
      v51 = &v19[*(sub_2EF0(&qword_31B540, &unk_270BF0) + 36)];
      *v51 = v48;
      v51[1] = v50;
      sub_A24D0(&v21[*(v69 + 36)]);
      sub_22148(v19, v21, &qword_31B518, &qword_270BC8);
      if (sub_2622B0())
      {
        v52 = 0.6;
      }

      else
      {
        v52 = 1.0;
      }

      sub_22148(v21, v23, &qword_31B520, &qword_270BD0);
      *&v23[*(v76 + 36)] = v52;
      sub_22148(v23, v26, &qword_31B528, &qword_270BD8);
      sub_8198(v26, v79, &qword_31B528, &qword_270BD8);
      swift_storeEnumTagMultiPayload();
      sub_A7344();
      sub_A7488();
      v53 = v75;
      sub_261F80();
      sub_8E80(v26, &qword_31B528, &qword_270BD8);
      v54 = v83;
    }

    else
    {
      v41 = enum case for RoundedCornerStyle.continuous(_:);
      v42 = sub_261DD0();
      v43 = v72;
      (*(*(v42 - 8) + 104))(v72, v41, v42);
      v44 = v27;
      if (*(v30 + v32[12]) == 1)
      {
        ButtonViewModel.theme.getter(&v84);
        v55 = *(&v84 + 1);
      }

      else
      {
        ButtonViewModel.theme.getter(&v84);
        v55 = v85;
      }

      v54 = v83;
      v53 = v75;
      sub_261240();
      sub_A727C(v43, v8, &type metadata accessor for Capsule);
      v56 = &v8[*(sub_2EF0(&qword_31B5B8, &qword_270CA0) + 36)];
      v57 = v85;
      *v56 = v84;
      *(v56 + 1) = v57;
      *(v56 + 4) = v86;
      v58 = sub_2EF0(&qword_31B5C0, &qword_270CA8);
      *&v8[*(v58 + 52)] = v55;
      *&v8[*(v58 + 56)] = 256;
      v59 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v61 = v60;
      sub_A72E4(v43, &type metadata accessor for Capsule);
      v62 = &v8[*(sub_2EF0(&qword_31B5C8, &unk_270CB0) + 36)];
      *v62 = v59;
      v62[1] = v61;
      v63 = v73;
      sub_A24D0(&v73[*(v70 + 36)]);
      sub_22148(v8, v63, &qword_31B590, &qword_270C78);
      if (sub_2622B0())
      {
        v64 = 0.6;
      }

      else
      {
        v64 = 1.0;
      }

      v65 = v63;
      v66 = v71;
      sub_22148(v65, v71, &qword_31B598, &qword_270C80);
      *(v66 + *(v81 + 36)) = v64;
      v67 = v74;
      sub_22148(v66, v74, &qword_31B5A0, &qword_270C88);
      sub_8198(v67, v79, &qword_31B5A0, &qword_270C88);
      swift_storeEnumTagMultiPayload();
      sub_A7344();
      sub_A7488();
      sub_261F80();
      sub_8E80(v67, &qword_31B5A0, &qword_270C88);
    }

    sub_22148(v53, v54, &qword_31B5B0, &qword_270C98);
    return (*(v82 + 56))(v54, 0, 1, v44);
  }

  else
  {
    v38 = v83;
    v39 = *(v82 + 56);

    return v39(v38, 1, 1, v27);
  }
}

uint64_t sub_A332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = sub_2617E0();
  __chkstk_darwin(v36);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  __chkstk_darwin(v38);
  v6 = &v36 - v5;
  v37 = sub_2EF0(&qword_31B548, &qword_270C00);
  __chkstk_darwin(v37);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_2EF0(&qword_31B550, &qword_270C08);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_2EF0(&qword_31B558, &qword_270C10);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v41 = a1;
  if (sub_9EDC4())
  {
    sub_A7228();
    sub_261390();
    (*(v15 + 32))(v23, v17, v14);
    (*(v15 + 56))(v23, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v23, 1, 1, v14);
  }

  v24 = v41 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v25 = type metadata accessor for ButtonViewModel(0);
  if (*(v24 + v25[7]) == 2)
  {
    v26 = 5.0;
  }

  else
  {
    v26 = 12.0;
  }

  v27 = *(v36 + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(v4 + v27, v28, v29);
  *v4 = v26;
  v4[1] = v26;
  if (*(v24 + v25[9]) == 1)
  {
    v30 = sub_262FA0();
  }

  else
  {
    if (*(v24 + v25[12]) == 1)
    {
      ButtonViewModel.theme.getter(v42);
      v30 = v42[1];
    }

    else
    {
      ButtonViewModel.theme.getter(v42);
      v30 = v42[2];
    }
  }

  sub_A75CC(v4, v6, &type metadata accessor for RoundedRectangle);
  v31 = v38;
  *&v6[*(v38 + 52)] = v30;
  *&v6[*(v31 + 56)] = 256;
  sub_A24D0(&v10[*(v37 + 36)]);
  sub_22148(v6, v10, &qword_3192C8, &unk_2793D0);
  sub_22148(v10, v13, &qword_31B548, &qword_270C00);
  sub_8198(v23, v20, &qword_31B558, &qword_270C10);
  v32 = v39;
  sub_8198(v13, v39, &qword_31B548, &qword_270C00);
  v33 = v40;
  sub_8198(v20, v40, &qword_31B558, &qword_270C10);
  v34 = sub_2EF0(&qword_31B560, &qword_270C18);
  sub_8198(v32, v33 + *(v34 + 48), &qword_31B548, &qword_270C00);
  sub_8E80(v13, &qword_31B548, &qword_270C00);
  sub_8E80(v23, &qword_31B558, &qword_270C10);
  sub_8E80(v32, &qword_31B548, &qword_270C00);
  return sub_8E80(v20, &qword_31B558, &qword_270C10);
}

uint64_t sub_A3874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v5 = sub_2617E0();
  __chkstk_darwin(v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2EF0(&qword_31B518, &qword_270BC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v40 = sub_2EF0(&qword_31B520, &qword_270BD0);
  __chkstk_darwin(v40);
  v12 = &v39 - v11;
  v13 = sub_2EF0(&qword_31B528, &qword_270BD8);
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v41 = a1;
  v20 = a1 + v19;
  v21 = type metadata accessor for ButtonViewModel(0);
  if (*(v20 + *(v21 + 36)) == 1)
  {
    v22 = v21;
    v39 = a3;
    if (*(v20 + *(v21 + 28)) == 2)
    {
      v23 = 5.0;
    }

    else
    {
      v23 = 12.0;
    }

    v24 = *(v5 + 20);
    v25 = enum case for RoundedCornerStyle.continuous(_:);
    v26 = sub_261DD0();
    (*(*(v26 - 8) + 104))(v7 + v24, v25, v26);
    *v7 = v23;
    v7[1] = v23;
    if (*(v20 + *(v22 + 48)) == 1)
    {
      ButtonViewModel.theme.getter(&v44);
      v27 = *(&v44 + 1);
    }

    else
    {
      ButtonViewModel.theme.getter(&v44);
      v27 = v45;
    }

    v30 = v39;
    sub_261240();
    sub_A727C(v7, v10, &type metadata accessor for RoundedRectangle);
    v31 = &v10[*(sub_2EF0(&qword_31B530, &qword_270BE0) + 36)];
    v32 = v45;
    *v31 = v44;
    *(v31 + 1) = v32;
    *(v31 + 4) = v46;
    v33 = sub_2EF0(&qword_31B538, &qword_270BE8);
    *&v10[*(v33 + 52)] = v27;
    *&v10[*(v33 + 56)] = 256;
    v34 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v36 = v35;
    sub_A72E4(v7, &type metadata accessor for RoundedRectangle);
    v37 = &v10[*(sub_2EF0(&qword_31B540, &unk_270BF0) + 36)];
    *v37 = v34;
    v37[1] = v36;
    sub_A24D0(&v12[*(v40 + 36)]);
    sub_22148(v10, v12, &qword_31B518, &qword_270BC8);
    if (sub_2622B0())
    {
      v38 = 0.6;
    }

    else
    {
      v38 = 1.0;
    }

    sub_22148(v12, v15, &qword_31B520, &qword_270BD0);
    *&v15[*(v13 + 36)] = v38;
    sub_22148(v15, v18, &qword_31B528, &qword_270BD8);
    sub_22148(v18, v30, &qword_31B528, &qword_270BD8);
    return (*(v43 + 56))(v30, 0, 1, v13);
  }

  else
  {
    v28 = *(v43 + 56);

    return v28(a3, 1, 1, v13);
  }
}

uint64_t sub_A3D50@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_319B00, &unk_26EA40);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v9, a1, type metadata accessor for FontConstants.Button);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_A3F3C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_A4128@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_A4314@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_A451C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BooksBorderlessButtonStyle(0) + 36);
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

uint64_t sub_A4674@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v10 + 40), v9, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_263640();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t BooksBorderlessButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a2;
  v5 = sub_261FA0();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v91 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_261180();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v72 - v9;
  v10 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v10 - 8);
  v72 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_2626C0();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v13 - 8);
  v15 = &v72 - v14;
  v77 = sub_262730();
  v16 = *(v77 - 8);
  __chkstk_darwin(v77);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FontConstants.Button(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2EF0(&qword_31B2E8, &qword_270A30);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v82 = sub_2EF0(&qword_31B2F0, &qword_270A38);
  __chkstk_darwin(v82);
  v27 = &v72 - v26;
  v80 = sub_2EF0(&qword_31B2F8, &qword_270A40);
  __chkstk_darwin(v80);
  v86 = &v72 - v28;
  v85 = sub_2EF0(&qword_31B300, &qword_270A48);
  __chkstk_darwin(v85);
  v84 = &v72 - v29;
  v83 = sub_2EF0(&qword_31B308, &qword_270A50);
  __chkstk_darwin(v83);
  v87 = &v72 - v30;
  v88 = sub_2EF0(&qword_31B310, &qword_270A58);
  __chkstk_darwin(v88);
  v89 = &v72 - v31;
  v90 = a1;
  sub_2622A0();
  sub_A3D50(v21);
  v32 = v77;
  (*(v16 + 104))(v18, enum case for Font.TextStyle.subheadline(_:), v77);
  v33 = sub_2625C0();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  sub_262650();
  sub_262680();
  sub_8E80(v15, &qword_318458, &unk_26B270);
  (*(v16 + 8))(v18, v32);
  v34 = v79;
  v35 = v78;
  v36 = v81;
  (*(v79 + 104))(v78, enum case for Font.Leading.tight(_:), v81);
  v37 = sub_2626E0();

  (*(v34 + 8))(v35, v36);
  v38 = v21;
  v39 = v25;
  sub_A72E4(v38, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v41 = &v25[*(v23 + 44)];
  *v41 = KeyPath;
  v41[1] = v37;
  if (sub_A451C())
  {
    v42 = v72;
    sub_A3F3C(v72);
    v43 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_A72E4(v42, type metadata accessor for ColorConstants);
    *&v95 = v43;
  }

  else
  {
    LODWORD(v95) = sub_262130();
  }

  v44 = sub_2613B0();
  sub_22148(v39, v27, &qword_31B2E8, &qword_270A30);
  *&v27[*(v82 + 36)] = v44;
  LOBYTE(v44) = sub_262500();
  v45 = v86;
  sub_22148(v27, v86, &qword_31B2F0, &qword_270A38);
  v46 = v45 + *(v80 + 36);
  *v46 = v44;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 1;
  v47 = 1.0;
  if (sub_2622B0())
  {
    v48 = v73;
    sub_A4314(v73);
    v49 = v75;
    v50 = v74;
    v51 = v76;
    (*(v75 + 104))(v74, enum case for ColorScheme.dark(_:), v76);
    v52 = sub_261170();
    v53 = *(v49 + 8);
    v53(v50, v51);
    v53(v48, v51);
    if (v52)
    {
      v47 = 0.4;
    }

    else
    {
      v47 = 0.2;
    }
  }

  v54 = v84;
  sub_22148(v45, v84, &qword_31B2F8, &qword_270A40);
  *(v54 + *(v85 + 36)) = v47;
  v55 = v87;
  sub_A4674(&v87[*(v83 + 36)]);
  sub_22148(v54, v55, &qword_31B300, &qword_270A48);
  v56 = sub_A5380();
  v58 = v57;
  v59 = *v3;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v60 = *&v56;
  if (v58)
  {
    v60 = -INFINITY;
  }

  if (v59)
  {
    v61 = 0x7FF0000000000000;
  }

  else
  {
    v61 = 0;
  }

  v62 = *&v61;
  if ((v59 & 1) == 0)
  {
    v62 = v60;
  }

  if (v60 > v62)
  {
    sub_264900();
    v63 = sub_2624B0();
    sub_260D10();
  }

  sub_261830();
  v64 = v89;
  sub_22148(v55, v89, &qword_31B308, &qword_270A50);
  v65 = (v64 + *(v88 + 36));
  v66 = v100;
  v65[4] = v99;
  v65[5] = v66;
  v65[6] = v101;
  v67 = v96;
  *v65 = v95;
  v65[1] = v67;
  v68 = v98;
  v65[2] = v97;
  v65[3] = v68;
  v69 = v91;
  sub_2618C0();
  sub_A61D0();
  sub_A65A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v70 = v94;
  sub_262AA0();
  (*(v93 + 8))(v69, v70);
  return sub_8E80(v64, &qword_31B310, &qword_270A58);
}

uint64_t sub_A5380()
{
  v60 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v60);
  v59 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_262730();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v58 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v58);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v53 - v21);
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  __chkstk_darwin(v26);
  v28 = &v53 - v27;
  v29 = *v0;
  if (v29 == 2)
  {
    sub_A4128((&v53 - v27));
    v30 = *(v3 + 104);
    v54 = v12;
    v30(v12, enum case for Font.TextStyle.subheadline(_:), v2);
    sub_A727C(v28, v25, type metadata accessor for SizeConstants);
    (*(v3 + 16))(v9, v12, v2);
    sub_A727C(v25, v16, type metadata accessor for SizeConstants);
    v31 = v59;
    sub_A727C(v25, v59, type metadata accessor for SizeConstants.Environment);
    v32 = *(v60 + 24);
    v33 = sub_1CF30(v9, v31 + v32);
    v34 = *(v3 + 8);
    v34(v9, v2);
    sub_A72E4(v25, type metadata accessor for SizeConstants);
    v35 = sub_261690();
    (*(*(v35 - 8) + 8))(v31 + v32, v35);
    v36 = 1.0;
    if ((*&v33 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v36 = v33;
    }

    if ((~*&v33 & 0x7FF0000000000000) != 0)
    {
      v36 = v33;
    }

    *&v16[*(v58 + 36)] = v36;
    v34(v54, v2);
    sub_A72E4(v28, type metadata accessor for SizeConstants);
    v37 = sub_21FA54(80.0);
  }

  else
  {
    v39 = v59;
    v38 = v60;
    if (v29)
    {
      return 0;
    }

    sub_A4128(v22);
    v41 = v3;
    v42 = v57;
    v43 = v2;
    (*(v3 + 104))(v57, enum case for Font.TextStyle.subheadline(_:), v2);
    sub_A727C(v22, v19, type metadata accessor for SizeConstants);
    v44 = *(v3 + 16);
    v45 = v55;
    v44(v55, v42, v2);
    v46 = v56;
    sub_A727C(v19, v56, type metadata accessor for SizeConstants);
    sub_A727C(v19, v39, type metadata accessor for SizeConstants.Environment);
    v47 = *(v38 + 24);
    v48 = sub_1CF30(v45, v39 + v47);
    v49 = *(v41 + 8);
    v49(v45, v43);
    sub_A72E4(v19, type metadata accessor for SizeConstants);
    v50 = sub_261690();
    (*(*(v50 - 8) + 8))(v39 + v47, v50);
    v51 = 1.0;
    if ((*&v48 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v51 = v48;
    }

    if ((~*&v48 & 0x7FF0000000000000) != 0)
    {
      v51 = v48;
    }

    v52 = v57;
    *(v46 + *(v58 + 36)) = v51;
    v49(v52, v43);
    sub_A72E4(v22, type metadata accessor for SizeConstants);
    v37 = sub_21FA54(200.0);
    v16 = v46;
  }

  sub_8E80(v16, &qword_31B4C0, &qword_27C030);
  return *&v37;
}

uint64_t sub_A59A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

unint64_t sub_A5A24()
{
  result = qword_31B208;
  if (!qword_31B208)
  {
    sub_2F9C(&qword_31B200, &qword_2709A8);
    sub_2F9C(&qword_31B210, &qword_2709B0);
    sub_261220();
    sub_A5B34();
    sub_A65A0(&qword_31B2D0, &type metadata accessor for HoverEffect, &protocol conformance descriptor for HoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B208);
  }

  return result;
}

unint64_t sub_A5B34()
{
  result = qword_31B218;
  if (!qword_31B218)
  {
    sub_2F9C(&qword_31B210, &qword_2709B0);
    sub_A5BEC();
    sub_8E38(&qword_31B2C0, &qword_31B2C8, &unk_270A10, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B218);
  }

  return result;
}

unint64_t sub_A5BEC()
{
  result = qword_31B220;
  if (!qword_31B220)
  {
    sub_2F9C(&qword_31B228, &qword_2709B8);
    sub_A5C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B220);
  }

  return result;
}

unint64_t sub_A5C78()
{
  result = qword_31B230;
  if (!qword_31B230)
  {
    sub_2F9C(&qword_31B238, &qword_2709C0);
    sub_A5D30();
    sub_8E38(&qword_31B2B0, &qword_31B2B8, &qword_270A08, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B230);
  }

  return result;
}

unint64_t sub_A5D30()
{
  result = qword_31B240;
  if (!qword_31B240)
  {
    sub_2F9C(&qword_31B248, &qword_2709C8);
    sub_A5DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B240);
  }

  return result;
}

unint64_t sub_A5DBC()
{
  result = qword_31B250;
  if (!qword_31B250)
  {
    sub_2F9C(&qword_31B258, &qword_2709D0);
    sub_A5E48();
    sub_A5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B250);
  }

  return result;
}

unint64_t sub_A5E48()
{
  result = qword_31B260;
  if (!qword_31B260)
  {
    sub_2F9C(&qword_31B268, &qword_2709D8);
    sub_A5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B260);
  }

  return result;
}

unint64_t sub_A5ECC()
{
  result = qword_31B270;
  if (!qword_31B270)
  {
    sub_2F9C(&qword_31B278, &qword_2709E0);
    sub_A5F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B270);
  }

  return result;
}

unint64_t sub_A5F58()
{
  result = qword_31B280;
  if (!qword_31B280)
  {
    sub_2F9C(&qword_31B288, &qword_2709E8);
    sub_A5FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B280);
  }

  return result;
}

unint64_t sub_A5FE4()
{
  result = qword_31B290;
  if (!qword_31B290)
  {
    sub_2F9C(&qword_31B298, &qword_2709F0);
    sub_A6070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B290);
  }

  return result;
}

unint64_t sub_A6070()
{
  result = qword_31B2A0;
  if (!qword_31B2A0)
  {
    sub_2F9C(&qword_31B2A8, &unk_2709F8);
    sub_A65A0(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B2A0);
  }

  return result;
}

uint64_t sub_A6158(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B1F0, &qword_270998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A61D0()
{
  result = qword_31B318;
  if (!qword_31B318)
  {
    sub_2F9C(&qword_31B310, &qword_270A58);
    sub_A625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B318);
  }

  return result;
}

unint64_t sub_A625C()
{
  result = qword_31B320;
  if (!qword_31B320)
  {
    sub_2F9C(&qword_31B308, &qword_270A50);
    sub_A62E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B320);
  }

  return result;
}

unint64_t sub_A62E8()
{
  result = qword_31B328;
  if (!qword_31B328)
  {
    sub_2F9C(&qword_31B300, &qword_270A48);
    sub_A6374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B328);
  }

  return result;
}

unint64_t sub_A6374()
{
  result = qword_31B330;
  if (!qword_31B330)
  {
    sub_2F9C(&qword_31B2F8, &qword_270A40);
    sub_A6400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B330);
  }

  return result;
}

unint64_t sub_A6400()
{
  result = qword_31B338;
  if (!qword_31B338)
  {
    sub_2F9C(&qword_31B2F0, &qword_270A38);
    sub_A64B8();
    sub_8E38(&qword_31B348, &qword_31B350, &qword_270A98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B338);
  }

  return result;
}

unint64_t sub_A64B8()
{
  result = qword_31B340;
  if (!qword_31B340)
  {
    sub_2F9C(&qword_31B2E8, &qword_270A30);
    sub_A65A0(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B340);
  }

  return result;
}

uint64_t sub_A65A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A6634(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
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
    v14 = *(a1 + a3[7] + 8);
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
    v15 = type metadata accessor for ButtonViewModel(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_A67D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317878, &unk_27E490);
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
    *(a1 + a4[7] + 8) = -a2;
  }

  else
  {
    v15 = type metadata accessor for ButtonViewModel(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_A695C(uint64_t a1)
{
  sub_A7064(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v1 <= 0x3F)
  {
    sub_A7064(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v2 <= 0x3F)
    {
      sub_3E7AC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ButtonViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_A6A5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[9] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_2EF0(&qword_317878, &unk_27E490);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_A6CA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    v16 = sub_2EF0(&qword_317878, &unk_27E490);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[10];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_A6EE4(uint64_t a1)
{
  sub_A7064(319, &qword_31B468, type metadata accessor for FontConstants.Button);
  if (v1 <= 0x3F)
  {
    sub_A7064(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_A7064(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        sub_A7064(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_3E7AC();
          if (v5 <= 0x3F)
          {
            sub_A7064(319, &qword_3178F8, &type metadata accessor for BlendMode);
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

void sub_A7064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_A70BC()
{
  result = qword_31B4B0;
  if (!qword_31B4B0)
  {
    sub_2F9C(&qword_31B4B8, &unk_270B60);
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B4B0);
  }

  return result;
}

uint64_t sub_A7174()
{
  sub_2F9C(&qword_31B310, &qword_270A58);
  sub_261FA0();
  sub_A61D0();
  sub_A65A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A7228()
{
  result = qword_31A528;
  if (!qword_31A528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31A528);
  }

  return result;
}

uint64_t sub_A727C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A72E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_A7344()
{
  result = qword_31B5D0;
  if (!qword_31B5D0)
  {
    sub_2F9C(&qword_31B528, &qword_270BD8);
    sub_A73D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5D0);
  }

  return result;
}

unint64_t sub_A73D0()
{
  result = qword_31B5D8;
  if (!qword_31B5D8)
  {
    sub_2F9C(&qword_31B520, &qword_270BD0);
    sub_8E38(&qword_31B5E0, &qword_31B518, &qword_270BC8, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5D8);
  }

  return result;
}

unint64_t sub_A7488()
{
  result = qword_31B5E8;
  if (!qword_31B5E8)
  {
    sub_2F9C(&qword_31B5A0, &qword_270C88);
    sub_A7514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5E8);
  }

  return result;
}

unint64_t sub_A7514()
{
  result = qword_31B5F0;
  if (!qword_31B5F0)
  {
    sub_2F9C(&qword_31B598, &qword_270C80);
    sub_8E38(&qword_31B5F8, &qword_31B590, &qword_270C78, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5F0);
  }

  return result;
}

uint64_t sub_A75CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_A7634()
{
  result = qword_31B618;
  if (!qword_31B618)
  {
    sub_2F9C(&qword_31B548, &qword_270C00);
    sub_8E38(&qword_31B620, &qword_3192C8, &unk_2793D0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B618);
  }

  return result;
}

unint64_t sub_A76EC()
{
  result = qword_31B628;
  if (!qword_31B628)
  {
    sub_2F9C(&qword_31B600, &qword_270CC0);
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B628);
  }

  return result;
}

uint64_t ActionContextFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_2EF0(&qword_31B658, &qword_270CE8);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_A7870, 0, 0);
}

uint64_t sub_A7870()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_263F10();
  sub_2EF0(&qword_3160D0, &unk_270CF0);
  sub_263F40();
  (*(v2 + 8))(v1, v3);
  v4 = v0[12];
  if (v4)
  {
    if (*(v4 + 16) && (v5 = sub_D410(0x6570795465676170, 0xE800000000000000), (v6 & 1) != 0))
    {
      sub_A7C18(*(v4 + 56) + 32 * v5, (v0 + 2));

      if (swift_dynamicCast())
      {
        v7 = v0[13];
        v8 = v0[10];
        v9 = v0[11];
        v0[9] = &type metadata for String;
        v0[6] = v8;
        v0[7] = v9;
        sub_17450(v7, *(v7 + 24));
        sub_263EF0();
        sub_3080(v0 + 6);
      }
    }

    else
    {
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_A7A48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_156D0;

  return ActionContextFieldProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

uint64_t sub_A7B00()
{
  v0 = sub_264140();
  sub_B600(v0, qword_31B640);
  sub_B080(v0, qword_31B640);
  return sub_264130();
}

uint64_t static MetricsFieldInclusionRequest.actionContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315910 != -1)
  {
    swift_once();
  }

  v2 = sub_264140();
  v3 = sub_B080(v2, qword_31B640);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A7C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A7C88(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2638B0();
  return v3;
}

uint64_t ShelfHeaderComponentModel.model.setter(__int128 *a1)
{
  sub_3080(v1);

  return sub_F7CC(a1, v1);
}

uint64_t CodeAnyComponentModel.description.getter()
{
  sub_2EF0(&qword_317250, &unk_2697A0);
  sub_264CC0();
  return 0;
}

uint64_t CodeAnyComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v5 = Decoder.componentKindTable.getter();
  Decoder.decodeComponentModel<A>(using:)(v5, v8);
  if (!v2)
  {
    sub_F7CC(v8, v9);
    v6 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v10;
  }

  return sub_3080(a1);
}

uint64_t sub_A7F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  Decoder.decodeComponentModel()(v7);
  if (!v2)
  {
    sub_F7CC(v7, v8);
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  return sub_3080(a1);
}

ValueMetadata *Decoder.componentKindTable.getter()
{
  sub_265100();
  if (qword_315920 != -1)
  {
    swift_once();
  }

  v0 = sub_2EF0(&qword_31B680, &qword_270DA8);
  sub_B080(v0, qword_31B668);
  sub_2EF0(&qword_31B688, &qword_270DB0);
  sub_2642C0();

  v1 = v3;
  if (!v3)
  {
    v1 = &type metadata for EmptyComponentKindTable;
    sub_A87EC();
  }

  return v1;
}

uint64_t Decoder.decodeComponentModel<A>(using:)@<X0>(uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v17[6] = a2;
  v14 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v11 - v8;
  sub_2650F0();
  if (v5)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v7 + 8))(v9, v14);
    sub_A8840(v17, &v15);
    if (v16)
    {
      sub_2E18(&v15, v16);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v15);
    }

    else
    {
      sub_A88B0(&v15);
    }

    swift_willThrow();
    return sub_A88B0(v17);
  }

  else
  {
    v12 = a5;
    v13 = v17[4];
    sub_2E18(v17, v17[3]);
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v15, v12);
    return sub_3080(v17);
  }
}

unint64_t sub_A82D8()
{
  result = sub_F024(_swiftEmptyArrayStorage);
  qword_31B660 = result;
  return result;
}

uint64_t sub_A8300()
{
  if (qword_315918 != -1)
  {
    swift_once();
  }
}

void sub_A835C()
{
  if (qword_315918 != -1)
  {
    swift_once();
  }

  v1 = qword_31B660;

  sub_A8A44(v1);
}

void *sub_A83D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_263980();
  __chkstk_darwin(v7 - 8);
  v8 = sub_263840();
  __chkstk_darwin(v8 - 8);
  v9 = sub_A8C6C(a1, a1, &protocol descriptor for ComponentModel, &protocol descriptor for Decodable);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_30CC(a2, v29);
    *&v31 = v12;
    *(&v31 + 1) = v13;
    v32 = v14;
    sub_10934(v30);
    sub_2647C0();
    if (v3)
    {
      return sub_A8CF4(v30);
    }

LABEL_7:
    v28 = v31;
    v22 = v31;
    v23 = sub_2E18(v30, v31);
    *(a3 + 24) = v28;
    v24 = sub_10934(a3);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    return sub_3080(v30);
  }

  v16 = sub_A8C6C(a1, a1, &protocol descriptor for ComponentModel, &protocol descriptor for ExpressibleByJSON);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_30CC(a2, v29);
    result = sub_263810();
    if (v3)
    {
      return result;
    }

    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    *&v31 = v19;
    *(&v31 + 1) = v20;
    v32 = v21;
    sub_10934(v30);
    sub_263DE0();
    goto LABEL_7;
  }

  v25 = sub_264C10();
  swift_allocError();
  v27 = v26;
  sub_2EF0(&qword_315CD0, &qword_266E00);
  *v27 = a1;
  sub_2E18(a2, a2[3]);
  sub_2650E0();
  sub_264BC0(21);

  v30[0] = 60;
  v30[1] = 0xE100000000000000;
  v33._countAndFlagsBits = sub_265260();
  sub_264530(v33);

  v34._object = 0x80000000002917A0;
  v34._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v34);
  sub_264BF0();
  (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
  return swift_willThrow();
}

uint64_t sub_A8760()
{
  v0 = sub_2EF0(&qword_31B680, &qword_270DA8);
  sub_B600(v0, qword_31B668);
  sub_B080(v0, qword_31B668);
  sub_2EF0(&qword_31B688, &qword_270DB0);
  return sub_263960();
}

unint64_t sub_A87EC()
{
  result = qword_31B690;
  if (!qword_31B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B690);
  }

  return result;
}

uint64_t sub_A8840(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B6A8, &qword_270DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A88B0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B6A8, &qword_270DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static JSONContext.Property<A>.booksComponentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315920 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31B680, &qword_270DA8);
  v3 = sub_B080(v2, qword_31B668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_A89F0()
{
  result = qword_31B6B0;
  if (!qword_31B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6B0);
  }

  return result;
}

void sub_A8A44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_2EF0(&qword_31B6C0, &unk_270F00);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        v15 = sub_D410(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
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

uint64_t sub_A8C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_A8CF4(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}