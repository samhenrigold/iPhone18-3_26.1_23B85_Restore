uint64_t sub_15941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_262730();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_30CC(a1, a3 + 32);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a2;
  sub_153F60(v17);
  (*(v12 + 104))(v14, enum case for Font.TextStyle.callout(_:), v11);
  v18 = sub_2625C0();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = sub_262680();
  sub_8E80(v10, &qword_318458, &unk_26B270);
  (*(v12 + 8))(v14, v11);
  sub_15C9F4(v17, type metadata accessor for FontConstants.SingleBookWidget);
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = v19;
  return result;
}

uint64_t sub_15968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BuyButton(0);
  __chkstk_darwin(v7 - 8);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for SingleBookLockupView(0);
  sub_30CC(a1 + *(v12 + 44) + 88, v41);
  v13 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  sub_30CC(v41, &v11[*(v13 + 44)]);
  v14 = *(v13 + 48);
  v15 = v13;
  v36 = v13;
  v16 = &v11[v14];
  *v16 = swift_getKeyPath();
  v37 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for BuyButtonExternals(0);
  v18 = (v16 + v17[5]);
  type metadata accessor for ProfileRestrictions(0);
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v18 = sub_261900();
  v18[1] = v19;
  v20 = v17[6];
  *(v16 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v17[7];
  KeyPath = swift_getKeyPath();
  v42 = 0;
  *v21 = KeyPath;
  v21[66] = 0;
  *&v11[*(v15 + 36)] = 0x8000;
  v23 = type metadata accessor for ButtonViewModel(0);
  sub_260BC0();
  type metadata accessor for ButtonViewModel.Content(0);
  swift_storeEnumTagMultiPayload();
  v24 = &v11[v23[13]];
  type metadata accessor for ButtonViewModel.ActionKind(0);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v40 = 0x403C000000000000;
  v25 = enum case for Font.TextStyle.subheadline(_:);
  v26 = *(v4 + 104);
  v26(v6, enum case for Font.TextStyle.subheadline(_:), v3);
  sub_40130();
  sub_2612E0();
  v40 = 0x4008000000000000;
  v26(v6, v25, v3);
  sub_2612E0();
  sub_3080(v41);
  v27 = v23[6];
  *&v11[v27] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v28 = v23[14];
  v29 = sub_260BD0();
  (*(*(v29 - 8) + 56))(&v11[v28], 1, 1, v29);
  v11[v23[7]] = 2;
  v11[v23[8]] = 0;
  v11[v23[9]] = 0;
  v30 = &v11[v23[10]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v11[v23[12]] = 1;
  v11[*(v36 + 40)] = 2;
  v31 = v38;
  sub_15CFB8(v11, v38, type metadata accessor for BuyButton);
  v32 = v39;
  sub_15CFB8(v31, v39, type metadata accessor for BuyButton);
  v33 = v32 + *(sub_2EF0(&qword_3207D0, &qword_27CE78) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_15C9F4(v11, type metadata accessor for BuyButton);
  return sub_15C9F4(v31, type metadata accessor for BuyButton);
}

uint64_t sub_159B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v3 - 8);
  v106 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v98 - v6;
  v8 = sub_262730();
  v9 = *(v8 - 8);
  v111 = v8;
  v112 = v9;
  __chkstk_darwin(v8);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v14 - 8);
  v104 = (&v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v120 = (&v98 - v17);
  v18 = sub_2EF0(&qword_320830, &qword_27CF18);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v98 - v20;
  v22 = sub_2EF0(&qword_320838, &qword_27CF20);
  __chkstk_darwin(v22 - 8);
  v113 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v98 - v25;
  v27 = (a1 + *(type metadata accessor for SingleBookLockupView(0) + 44));
  v28 = v27[17];
  v103 = v27[16];
  v114 = v26;
  v110 = a1;
  v29 = v28;
  if (v28)
  {
    *v21 = sub_261D30();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v30 = sub_2EF0(&qword_320848, &qword_27CF38);
    sub_15A5A0(&v21[*(v30 + 44)]);
    v31 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    KeyPath = swift_getKeyPath();
    v33 = &v21[*(v18 + 36)];
    *v33 = KeyPath;
    v33[1] = v31;
    v34 = v114;
    sub_22148(v21, v114, &qword_320830, &qword_27CF18);
    (*(v19 + 56))(v34, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v26, 1, 1, v18);
  }

  v35 = v111;
  v36 = v120;
  if (v27[10])
  {

    sub_153F60(v36);
    (*(v112 + 104))(v13, enum case for Font.TextStyle.subheadline(_:), v35);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v37 = sub_2625C0();
      (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
    }

    else
    {
      v38 = enum case for Font.Design.serif (_:);
      v39 = sub_2625C0();
      v40 = *(v39 - 8);
      (*(v40 + 104))(v7, v38, v39);
      v41 = v39;
      v35 = v111;
      (*(v40 + 56))(v7, 0, 1, v41);
    }

    sub_262680();
    sub_8E80(v7, &qword_318458, &unk_26B270);
    (*(v112 + 8))(v13, v35);
    sub_15C9F4(v36, type metadata accessor for FontConstants.SingleBookWidget);
    v42 = sub_262840();
    v44 = v43;
    v46 = v45;

    v128[0] = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v47 = sub_2627F0();
    v119 = v48;
    v120 = v47;
    v50 = v49;
    v118 = v51;
    sub_39DBC(v42, v44, v46 & 1);

    v52 = swift_getKeyPath();
    LOBYTE(v128[0]) = v50 & 1;
    LOBYTE(v121) = 0;
    v116 = v50 & 1;
    v117 = v52;
    v108 = 0x10000;
    v115 = 4;
    if (v29)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v119 = 0;
    v120 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v115 = 0;
    v108 = 0;
    if (v29)
    {
LABEL_11:

      v53 = v104;
      sub_153F60(v104);
      v54 = v112;
      v55 = v105;
      (*(v112 + 104))(v105, enum case for Font.TextStyle.caption(_:), v35);
      v56 = enum case for Font.Design.rounded(_:);
      v57 = sub_2625C0();
      v58 = *(v57 - 8);
      v59 = v106;
      (*(v58 + 104))(v106, v56, v57);
      v60 = *(v58 + 56);
      v107 = 1;
      v60(v59, 0, 1, v57);
      sub_262680();
      sub_8E80(v59, &qword_318458, &unk_26B270);
      (*(v54 + 8))(v55, v35);
      sub_2625A0();

      sub_15C9F4(v53, type metadata accessor for FontConstants.SingleBookWidget);
      v61 = sub_262840();
      v63 = v62;
      LOBYTE(v58) = v64;

      v128[0] = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
      v65 = sub_2627F0();
      v105 = v66;
      v106 = v65;
      v112 = v67;
      LOBYTE(v59) = v68;
      sub_39DBC(v61, v63, v58 & 1);

      v104 = swift_getKeyPath();
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      LOBYTE(v128[0]) = v59 & 1;
      LOBYTE(v121) = 0;
      v102 = v128[14];
      v103 = v128[13];
      v110 = v128[17];
      v111 = v128[16];
      v100 = v128[18];
      v101 = v128[15];
      v29 = v59 & 1;
      goto LABEL_12;
    }
  }

  v105 = 0;
  v106 = 0;
  v111 = 0;
  v112 = 0;
  v103 = 0;
  v104 = 0;
  v107 = 0;
  v101 = 0;
  v102 = 0;
  v110 = 0;
  v100 = 0;
LABEL_12:
  v98 = 0;
  v99 = v29;
  v69 = v113;
  sub_8198(v114, v113, &qword_320838, &qword_27CF20);
  v70 = v69;
  v71 = v109;
  sub_8198(v70, v109, &qword_320838, &qword_27CF20);
  v72 = sub_2EF0(&qword_320840, &qword_27CF28);
  v73 = v71 + *(v72 + 48);
  v74 = v119;
  v75 = v120;
  *v73 = v120;
  *(v73 + 8) = v74;
  v119 = v74;
  v120 = v75;
  v76 = v74;
  v77 = v116;
  *(v73 + 16) = v116;
  v78 = v77;
  v116 = v77;
  v79 = v118;
  *(v73 + 24) = v118;
  v80 = v79;
  v118 = v79;
  v81 = v117;
  *(v73 + 32) = v117;
  v82 = v81;
  v117 = v81;
  v83 = v115;
  *(v73 + 40) = v115;
  v115 = v83;
  v84 = v108;
  *(v73 + 50) = BYTE2(v108);
  *(v73 + 48) = v84;
  v85 = v71 + *(v72 + 64);
  v87 = v106;
  v86 = v107;
  *&v121 = v106;
  *(&v121 + 1) = v112;
  *&v122 = v29;
  v89 = v104;
  v88 = v105;
  *(&v122 + 1) = v105;
  *&v123 = v104;
  *(&v123 + 1) = v107;
  *&v124 = 0;
  v91 = v102;
  v90 = v103;
  *(&v124 + 1) = v103;
  *&v125 = v102;
  v92 = v100;
  v93 = v101;
  *(&v125 + 1) = v101;
  *&v126 = v111;
  *(&v126 + 1) = v110;
  v127 = v100;
  v94 = v122;
  *v85 = v121;
  *(v85 + 16) = v94;
  *(v85 + 96) = v92;
  v95 = v124;
  *(v85 + 32) = v123;
  *(v85 + 48) = v95;
  v96 = v126;
  *(v85 + 64) = v125;
  *(v85 + 80) = v96;
  sub_15C948(v75, v76, v78, v80, v82);
  sub_8198(&v121, v128, &qword_318A28, &qword_27CF30);
  sub_8E80(v114, &qword_320838, &qword_27CF20);
  v128[0] = v87;
  v128[1] = v112;
  v128[2] = v99;
  v128[3] = v88;
  v128[4] = v89;
  v128[5] = v86;
  v128[6] = v98;
  v128[7] = v90;
  v128[8] = v91;
  v128[9] = v93;
  v128[10] = v111;
  v128[11] = v110;
  v128[12] = v92;
  sub_8E80(v128, &qword_318A28, &qword_27CF30);
  sub_15C998(v120, v119, v116, v118, v117);
  return sub_8E80(v113, &qword_320838, &qword_27CF20);
}

uint64_t sub_15A5A0@<X0>(uint64_t a2@<X8>)
{
  v55 = a2;
  v2 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v2 - 8);
  v53 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2EF0(&qword_320850, &qword_27CF70);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v48 - v14;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  *v20 = sub_261E50();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v51 = sub_2EF0(&qword_320858, &qword_27CF78);
  sub_2633A0();
  v21 = sub_262550();
  sub_153B88(v9);
  v50 = type metadata accessor for SizeConstants.Environment;
  sub_15CF50(v9, v6, type metadata accessor for SizeConstants.Environment);
  v49 = type metadata accessor for SizeConstants.Spacing;
  sub_15C9F4(v6, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v22 = &v20[*(v11 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v52 = sub_261D30();
  v58 = 0;
  sub_15B838(&v69);
  v62 = *&v70[32];
  v63 = *&v70[48];
  v60 = *v70;
  v61 = *&v70[16];
  v59 = v69;
  v64[2] = *&v70[16];
  v64[3] = *&v70[32];
  v65 = *&v70[48];
  v64[0] = v69;
  v64[1] = *v70;
  sub_8198(&v59, &v66, &qword_3207C8, &unk_27CDD8);
  sub_8E80(v64, &qword_3207C8, &unk_27CDD8);
  *(&v57[1] + 7) = v60;
  *(&v57[2] + 7) = v61;
  *(&v57[3] + 7) = v62;
  *(&v57[4] + 7) = v63;
  *(v57 + 7) = v59;
  v27 = v58;
  v28 = v53;
  sub_153D74(v53);
  v48 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_15C9F4(v28, type metadata accessor for ColorConstants);
  *v17 = sub_261E50();
  *(v17 + 1) = 0;
  v17[16] = 1;
  sub_2633A0();
  LOBYTE(v28) = sub_262530();
  sub_153B88(v9);
  sub_15CF50(v9, v6, v50);
  sub_15C9F4(v6, v49);
  sub_2610C0();
  v29 = &v17[*(v11 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = v56;
  sub_8198(v20, v56, &qword_320850, &qword_27CF70);
  v35 = v54;
  sub_8198(v17, v54, &qword_320850, &qword_27CF70);
  v36 = v34;
  v37 = v55;
  sub_8198(v36, v55, &qword_320850, &qword_27CF70);
  v38 = sub_2EF0(&qword_320860, &qword_27CF80);
  v39 = v37 + *(v38 + 48);
  v40 = v52;
  *&v66 = v52;
  *(&v66 + 1) = 0xBFF0000000000000;
  LOBYTE(v67[0]) = v27;
  *(v67 + 1) = v57[0];
  *(&v67[1] + 1) = v57[1];
  *(&v67[3] + 1) = v57[3];
  v67[4] = *(&v57[3] + 15);
  *(&v67[2] + 1) = v57[2];
  v41 = v48;
  v68 = v48;
  v42 = v67[0];
  *v39 = v66;
  *(v39 + 16) = v42;
  v43 = v67[1];
  v44 = v67[2];
  v45 = v67[3];
  v46 = v67[4];
  *(v39 + 96) = v41;
  *(v39 + 64) = v45;
  *(v39 + 80) = v46;
  *(v39 + 32) = v43;
  *(v39 + 48) = v44;
  sub_8198(v35, v37 + *(v38 + 64), &qword_320850, &qword_27CF70);
  sub_8198(&v66, &v69, &qword_320868, &qword_27CF88);
  sub_8E80(v17, &qword_320850, &qword_27CF70);
  sub_8E80(v20, &qword_320850, &qword_27CF70);
  sub_8E80(v35, &qword_320850, &qword_27CF70);
  *&v69 = v40;
  *(&v69 + 1) = 0xBFF0000000000000;
  v70[0] = v27;
  *&v70[17] = v57[1];
  *&v70[33] = v57[2];
  *&v70[49] = v57[3];
  *&v70[64] = *(&v57[3] + 15);
  *&v70[1] = v57[0];
  v71 = v41;
  sub_8E80(&v69, &qword_320868, &qword_27CF88);
  return sub_8E80(v56, &qword_320850, &qword_27CF70);
}

uint64_t sub_15AB0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v38 = a2;
  v5 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v5 - 8);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + *(type metadata accessor for SingleBookLockupView(0) + 44) + 136))
  {
    *&v41 = sub_261D30();
    LOBYTE(v67) = 0;
    sub_15B838(&v50);
    v83[1] = v52;
    v83[2] = v53;
    *&v83[3] = v54;
    v82 = v50;
    v83[0] = v51;
    *&v85[16] = v52;
    *&v85[32] = v53;
    *&v85[48] = v54;
    v84 = v50;
    *v85 = v51;
    sub_8198(&v82, v73, &qword_3207C8, &unk_27CDD8);
    sub_8E80(&v84, &qword_3207C8, &unk_27CDD8);
    v40 = v82;
    v48 = *&v83[0];
    v49 = *(&v82 + 1);
    v46 = *&v83[1];
    v47 = *(&v83[0] + 1);
    v44 = *&v83[2];
    v45 = *(&v83[1] + 1);
    v42 = *&v83[3];
    v43 = *(&v83[2] + 1);
    v13 = v67;
    sub_153D74(v12);
    v39 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_15C9F4(v12, type metadata accessor for ColorConstants);
    *(&v41 + 1) = 0xBFF0000000000000;
  }

  else
  {
    v41 = 0uLL;
    v39 = 0;
    v40 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v13 = 0;
  }

  v36 = v13;
  v14 = sub_261E60();
  sub_153B88(v9);
  v15 = v9;
  v16 = v37;
  sub_15CF50(v15, v37, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v16, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v50) = 0;
  sub_15B07C(a1, v38 & 1, &v84);
  v71 = *&v85[48];
  v72[0] = *&v85[64];
  *(v72 + 9) = *&v85[73];
  v67 = v84;
  v68 = *v85;
  v69 = *&v85[16];
  v70 = *&v85[32];
  v73[0] = v84;
  v73[1] = *v85;
  v73[2] = *&v85[16];
  v73[3] = *&v85[32];
  v73[4] = *&v85[48];
  v74[0] = *&v85[64];
  *(v74 + 9) = *&v85[73];
  sub_8198(&v67, &v82, &qword_3207B0, &qword_27CDC0);
  sub_8E80(v73, &qword_3207B0, &qword_27CDC0);
  *(&v66[3] + 7) = v70;
  *(&v66[4] + 7) = v71;
  *(&v66[5] + 7) = v72[0];
  v66[6] = *(v72 + 9);
  v17 = *(v72 + 9);
  *(v66 + 7) = v67;
  *(&v66[1] + 7) = v68;
  *(&v66[2] + 7) = v69;
  v18 = v50;
  v19 = v41;
  v75 = v41;
  *&v76 = v13;
  v20 = v40;
  *(&v76 + 1) = v40;
  *&v77 = v49;
  *(&v77 + 1) = v48;
  *&v78 = v47;
  *(&v78 + 1) = v46;
  *&v79 = v45;
  *(&v79 + 1) = v44;
  *&v80 = v43;
  *(&v80 + 1) = v42;
  v59 = v41;
  v60 = v76;
  v63 = v79;
  v64 = v80;
  v61 = v77;
  v62 = v78;
  *&v82 = v14;
  *(&v82 + 1) = 0x4020000000000000;
  LOBYTE(v83[0]) = v50;
  v21 = v66[1];
  *(&v83[2] + 1) = v66[2];
  v22 = v66[0];
  *(&v83[1] + 1) = v66[1];
  *(v83 + 1) = v66[0];
  v23 = v66[5];
  *(&v83[6] + 1) = *(v72 + 9);
  v24 = v66[4];
  *(&v83[5] + 1) = v66[5];
  v25 = v66[3];
  *(&v83[4] + 1) = v66[4];
  v26 = v66[2];
  *(&v83[3] + 1) = v66[3];
  *(v65 + 8) = v82;
  *(&v65[4] + 8) = v83[3];
  *(&v65[3] + 8) = v83[2];
  *(&v65[2] + 8) = v83[1];
  *(&v65[1] + 8) = v83[0];
  *(&v65[7] + 8) = v83[6];
  v27 = v39;
  *&v65[0] = v39;
  BYTE8(v65[8]) = BYTE8(v72[1]);
  *(&v65[6] + 8) = v83[5];
  *(&v65[5] + 8) = v83[4];
  v28 = v65[7];
  a3[12] = v65[6];
  a3[13] = v28;
  *(a3 + 217) = *(&v65[7] + 9);
  v29 = v65[3];
  a3[8] = v65[2];
  a3[9] = v29;
  v30 = v65[5];
  a3[10] = v65[4];
  a3[11] = v30;
  v31 = v64;
  a3[4] = v63;
  a3[5] = v31;
  v32 = v65[1];
  a3[6] = v65[0];
  a3[7] = v32;
  v33 = v60;
  *a3 = v59;
  a3[1] = v33;
  v34 = v62;
  a3[2] = v61;
  a3[3] = v34;
  *&v85[49] = v25;
  *&v85[65] = v24;
  *&v85[81] = v23;
  v81 = v27;
  *&v84 = v14;
  *(&v84 + 1) = 0x4020000000000000;
  v85[0] = v18;
  v86 = v17;
  *&v85[1] = v22;
  *&v85[17] = v21;
  *&v85[33] = v26;
  sub_8198(&v75, &v50, &qword_3207B8, &qword_27CDC8);
  sub_8198(&v82, &v50, &qword_3207C0, &qword_27CDD0);
  sub_8E80(&v84, &qword_3207C0, &qword_27CDD0);
  v50 = __PAIR128__(*(&v41 + 1), v19);
  *&v51 = v36;
  *(&v51 + 1) = v20;
  *&v52 = v49;
  *(&v52 + 1) = v48;
  *&v53 = v47;
  *(&v53 + 1) = v46;
  v54 = v45;
  v55 = v44;
  v56 = v43;
  v57 = v42;
  v58 = v27;
  return sub_8E80(&v50, &qword_3207B8, &qword_27CDC8);
}

double sub_15B07C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v5 - 8);
  v78 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v76 - v8;
  v10 = sub_262730();
  v84 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v76 - v14;
  v16 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v16 - 8);
  v77 = (v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = (v76 - v19);
  v21 = (a1 + *(type metadata accessor for SingleBookLockupView(0) + 44));
  v22 = v21[10];
  v79 = v10;
  if (v22)
  {
    v80 = v12;

    v23 = v84;
    sub_153F60(v20);
    (*(v23 + 104))(v15, enum case for Font.TextStyle.subheadline(_:), v10);
    v24 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
    v76[1] = a1;
    if (v24)
    {
      v25 = sub_2625C0();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    else
    {
      v31 = enum case for Font.Design.serif (_:);
      v32 = sub_2625C0();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v9, v31, v32);
      (*(v33 + 56))(v9, 0, 1, v32);
      v10 = v79;
    }

    sub_262680();
    sub_8E80(v9, &qword_318458, &unk_26B270);
    (*(v84 + 8))(v15, v10);
    sub_15C9F4(v20, type metadata accessor for FontConstants.SingleBookWidget);
    v34 = sub_262840();
    v36 = v35;
    v38 = v37;

    v91 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v89 = sub_2627F0();
    v85 = v40;
    v86 = v39;
    v42 = v41;
    sub_39DBC(v34, v36, v38 & 1);

    v43 = 5;
    if (a2)
    {
      v43 = 8;
    }

    v88 = v43;
    KeyPath = swift_getKeyPath();
    LOBYTE(v91) = v42 & 1;
    v90 = 0;
    v87 = v42 & 1;
    v81 = 0x10000;
    v12 = v80;
    if (v21[17])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    KeyPath = 0;
    v81 = 0;
    if (v21[17])
    {
LABEL_10:
      v76[0] = v21[16];

      v44 = v77;
      v45 = v84;
      sub_153F60(v77);
      v46 = v79;
      (*(v45 + 104))(v12, enum case for Font.TextStyle.caption(_:), v79);
      v47 = enum case for Font.Design.rounded(_:);
      v48 = sub_2625C0();
      v49 = *(v48 - 8);
      v50 = v78;
      (*(v49 + 104))(v78, v47, v48);
      v51 = *(v49 + 56);
      v80 = 1;
      v51(v50, 0, 1, v48);
      sub_262680();
      sub_8E80(v50, &qword_318458, &unk_26B270);
      (*(v45 + 8))(v12, v46);
      sub_2625A0();

      sub_15C9F4(v44, type metadata accessor for FontConstants.SingleBookWidget);
      v52 = sub_262840();
      v54 = v53;
      LOBYTE(v50) = v55;

      v91 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
      v26 = sub_2627F0();
      v57 = v56;
      LOBYTE(v47) = v58;
      v60 = v59;
      sub_39DBC(v52, v54, v50 & 1);

      v61 = swift_getKeyPath();
      v62 = v47 & 1;
      v27 = v57;
      v28 = v62;
      sub_43B58(v26, v57, v62);
      v29 = v60;

      v30 = v61;

      goto LABEL_11;
    }
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v80 = 0;
LABEL_11:
  v63 = v89;
  v64 = v87;
  v65 = KeyPath;
  v66 = v81;
  sub_15C948(v89, v86, v87, v85, KeyPath);
  v67 = v26;
  v68 = v28;
  v69 = v28;
  v70 = v26;
  v71 = v80;
  sub_15C948(v67, v27, v69, v29, v30);
  sub_15C998(v70, v27, v68, v29, v30);
  v72 = v82;
  *v82 = v63;
  v73 = v86;
  v72[1] = v86;
  v72[2] = v64;
  v74 = v85;
  v72[3] = v85;
  v72[4] = v65;
  v72[5] = v88;
  *(v72 + 50) = BYTE2(v66);
  *(v72 + 24) = v66;
  v72[7] = v70;
  v72[8] = v27;
  v72[9] = v68;
  v72[10] = v29;
  v72[11] = v30;
  v72[12] = v71;
  *(v72 + 104) = 0;
  sub_15C998(v70, v27, v68, v29, v30);
  return sub_15C998(v89, v73, v87, v74, v65);
}

double sub_15B838@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_2630B0();
  sub_153F60(v11);
  sub_262690();
  v24 = sub_2625A0();

  sub_15C9F4(v11, type metadata accessor for FontConstants.SingleBookWidget);
  KeyPath = swift_getKeyPath();
  v13 = sub_2630B0();
  sub_153F60(v11);
  (*(v6 + 104))(v8, enum case for Font.TextStyle.subheadline(_:), v5);
  v14 = sub_2625C0();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v23 = sub_262680();
  sub_8E80(v4, &qword_318458, &unk_26B270);
  (*(v6 + 8))(v8, v5);
  sub_15C9F4(v11, type metadata accessor for FontConstants.SingleBookWidget);
  v15 = swift_getKeyPath();
  v16 = sub_2630B0();
  sub_153F60(v11);
  sub_262690();
  v17 = sub_2625A0();

  sub_15C9F4(v11, type metadata accessor for FontConstants.SingleBookWidget);
  v18 = swift_getKeyPath();
  v19 = v24;
  *a1 = v25;
  a1[1] = KeyPath;
  a1[2] = v19;
  a1[3] = v13;
  v20 = v23;
  a1[4] = v15;
  a1[5] = v20;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v17;

  return result;
}

uint64_t type metadata accessor for SingleBookLockupView(uint64_t a1)
{
  result = qword_320658;
  if (!qword_320658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15BCAC(uint64_t a1)
{
  v2 = sub_261180();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2619A0();
}

uint64_t sub_15BDA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_319858, &unk_2725D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_2EF0(&qword_3205F8, &qword_27CBF8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 24);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_15BFE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_2EF0(&qword_316F70, &unk_2693C0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_2EF0(&qword_3205F8, &qword_27CBF8);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 24) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_15C200(uint64_t a1)
{
  sub_15C3B0(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    sub_15C3B0(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v2 <= 0x3F)
    {
      sub_15C3B0(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v3 <= 0x3F)
      {
        sub_15C3B0(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_15C3B0(319, &unk_320668, type metadata accessor for FontConstants.SingleBookWidget);
          if (v5 <= 0x3F)
          {
            sub_60890(319, &qword_3167D0, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_60890(319, &qword_31D880, &type metadata for ShelfGridBreakpoint);
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

void sub_15C3B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_15C408()
{
  result = qword_3206B0;
  if (!qword_3206B0)
  {
    sub_2F9C(&qword_3205F0, &unk_27CB60);
    sub_15C4C0();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206B0);
  }

  return result;
}

unint64_t sub_15C4C0()
{
  result = qword_3206B8;
  if (!qword_3206B8)
  {
    sub_2F9C(&qword_3205E8, &qword_27CAE0);
    sub_15C54C();
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206B8);
  }

  return result;
}

unint64_t sub_15C54C()
{
  result = qword_3206C0;
  if (!qword_3206C0)
  {
    sub_2F9C(&qword_3205E0, &qword_27CAD8);
    sub_15C5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206C0);
  }

  return result;
}

unint64_t sub_15C5D8()
{
  result = qword_3206C8;
  if (!qword_3206C8)
  {
    sub_2F9C(&qword_3205D8, &qword_27CAD0);
    sub_15C664();
    sub_15C860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206C8);
  }

  return result;
}

unint64_t sub_15C664()
{
  result = qword_3206D0;
  if (!qword_3206D0)
  {
    sub_2F9C(&qword_3206D8, &qword_27CC18);
    sub_15C6F0();
    sub_15C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206D0);
  }

  return result;
}

unint64_t sub_15C6F0()
{
  result = qword_3206E0;
  if (!qword_3206E0)
  {
    sub_2F9C(&qword_3206E8, &qword_27CC20);
    sub_8E38(&qword_3206F0, &qword_3206F8, &qword_27CC28, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3206E0);
  }

  return result;
}

unint64_t sub_15C7A8()
{
  result = qword_320700;
  if (!qword_320700)
  {
    sub_2F9C(&qword_320708, &qword_27CC30);
    sub_8E38(&qword_320710, &qword_320718, &qword_27CC38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320700);
  }

  return result;
}

unint64_t sub_15C860()
{
  result = qword_320720;
  if (!qword_320720)
  {
    sub_2F9C(&qword_320728, &qword_27CC40);
    sub_8E38(&qword_320730, &qword_320738, &qword_27CC48, &protocol conformance descriptor for ColumnHStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320720);
  }

  return result;
}

uint64_t sub_15C948(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_43B58(result, a2, a3 & 1);
  }

  return result;
}

double sub_15C998(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_39DBC(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_15C9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15CA54()
{
  v1 = type metadata accessor for SingleBookLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261690();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v3 + v1[8];
  sub_2EF0(&qword_3205D0, &qword_27CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v14 = sub_261690();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  sub_3074(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_3074(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v15 = v3 + v1[11];

  sub_3080((v15 + 88));

  return swift_deallocObject();
}

uint64_t sub_15CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SingleBookLockupView(0);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_15941C(a1, v6, a2, v5);
}

unint64_t sub_15CE38()
{
  result = qword_320800;
  if (!qword_320800)
  {
    sub_2F9C(&qword_3207F8, &unk_27CEA8);
    sub_439B8();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320800);
  }

  return result;
}

uint64_t sub_15CEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15CF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_15CFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_15D034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2EF0(&qword_316208, &qword_268BD0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 40);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_15D160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316208, &qword_268BD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ToolbarActionMenuItemLabel(uint64_t a1)
{
  result = qword_320920;
  if (!qword_320920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_15D2C4(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_95918(319);
    if (v2 <= 0x3F)
    {
      sub_15D3D8(319, &qword_31B8F0, &type metadata for ToolbarActionMenuItemIcon, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_5027C(319);
        if (v4 <= 0x3F)
        {
          sub_15D3D8(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_15D3D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_15D444@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_260B00();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v44 - v12;
  v13 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  __chkstk_darwin(v13 - 8);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_2EF0(&qword_320968, &qword_27D110);
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v55 = v2;
  v54 = v2;
  sub_2EF0(&qword_320970, &qword_27D118);
  sub_15E964(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
  sub_15E754();
  v23 = v22;
  v52 = v3;
  sub_263130();
  v24 = type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_8198(v2 + *(v24 + 20), v7, &qword_316208, &qword_268BD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_8E80(v7, &qword_316208, &qword_268BD0);
    v25 = 1;
    v27 = v51;
    v26 = v52;
  }

  else
  {
    v28 = v44;
    (*(v9 + 32))(v44, v7, v8);
    (*(v9 + 16))(v45, v28, v8);
    v29 = v46;
    sub_260B10();
    (*(v9 + 8))(v28, v8);
    v30 = v51;
    v31 = v29;
    v32 = v52;
    (*(v51 + 32))(v17, v31, v52);
    v25 = 0;
    v26 = v32;
    v27 = v30;
  }

  v33 = v17;
  (*(v27 + 56))(v17, v25, 1, v26);
  v34 = v47;
  v35 = v48;
  v36 = *(v47 + 16);
  v37 = v49;
  v36(v49, v23, v48);
  v38 = v17;
  v39 = v50;
  sub_8198(v38, v50, &qword_31AA18, &qword_26FB18);
  v40 = v53;
  v36(v53, v37, v35);
  v41 = sub_2EF0(&qword_3209B8, &qword_27D138);
  sub_8198(v39, &v40[*(v41 + 48)], &qword_31AA18, &qword_26FB18);
  sub_8E80(v33, &qword_31AA18, &qword_26FB18);
  v42 = *(v34 + 8);
  v42(v23, v35);
  sub_8E80(v39, &qword_31AA18, &qword_26FB18);
  return (v42)(v37, v35);
}

uint64_t sub_15D9D8(uint64_t a1)
{
  v2 = sub_260BD0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_260B10();
}

void sub_15DAA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = sub_2EF0(&qword_3209C0, &qword_27D140);
  __chkstk_darwin(v52);
  v53 = &v50 - v3;
  v56 = sub_2EF0(&qword_3209A8, &qword_27D130);
  __chkstk_darwin(v56);
  v5 = &v50 - v4;
  v6 = type metadata accessor for FlatCoverView(0);
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260720();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v51 = sub_261C90();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2EF0(&qword_3209C8, &unk_27D148);
  __chkstk_darwin(v54);
  v55 = (&v50 - v18);
  v19 = type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_8198(a1 + *(v19 + 24), &v67, &qword_31AC00, &qword_270F30);
  if (v70 > 1u)
  {
    if (v70 == 2)
    {
      v62 = v67;
      v63 = v68;
      v64 = v69;
      sub_30CC(&v62, &v58);
      sub_2E18(&v58, v60);
      sub_260850();
      (*(v10 + 104))(v12, enum case for ContentKind.audiobook(_:), v9);
      v21 = sub_260710();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);
      if (v21)
      {
        v23 = 26.0;
      }

      else
      {
        v23 = 40.0;
      }

      sub_30CC(&v58, &v8[v6[8]]);
      *v8 = swift_getKeyPath();
      v8[40] = 0;
      *(v8 + 6) = swift_getKeyPath();
      v8[56] = 0;
      type metadata accessor for ProfileRestrictions(0);
      sub_15E964(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      *(v8 + 8) = sub_261900();
      *(v8 + 9) = v24;
      v25 = v6[7];
      *&v8[v25] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v26 = &v8[v6[9]];
      *v26 = 0x403A000000000000;
      *(v26 + 1) = v23;
      *&v8[v6[10]] = 0x4004000000000000;
      sub_15E9B0(v8, v53);
      swift_storeEnumTagMultiPayload();
      sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView, &protocol conformance descriptor for FlatCoverView);
      sub_261F80();
      sub_8198(v5, v55, &qword_3209A8, &qword_27D130);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
      sub_8E80(v5, &qword_3209A8, &qword_27D130);
      sub_15EA14(v8);
      sub_15EA70(&v62);
      sub_3080(&v58);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView, &protocol conformance descriptor for FlatCoverView);
      sub_261F80();
      sub_8198(v5, v55, &qword_3209A8, &qword_27D130);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
      sub_8E80(v5, &qword_3209A8, &qword_27D130);
    }
  }

  else
  {
    if (v70)
    {
      v27 = v67;
      v62 = v67;
      v58 = 8218235;
      *&v59 = 0xE300000000000000;
      v66[0] = 6778480;
      v66[1] = 0xE300000000000000;
      sub_10A84();
      v28 = sub_264AA0();
      v30 = v29;
      v62 = v27;
      v58 = 1735290926;
      *&v59 = 0xE400000000000000;
      v31 = sub_264AB0();

      sub_40858(&v62);
      v32 = *(&v63 + 1);
      v33 = v64;
      sub_2E18(&v62, *(&v63 + 1));
      v58 = v28;
      *&v59 = v30;
      BYTE8(v59) = 1;
      v35 = a1 + *(v19 + 32);
      v36 = *v35;
      if (*(v35 + 8) == 1)
      {
        v34.n128_u64[0] = *v35;
      }

      else
      {

        sub_264900();
        v41 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v36, 0);
        (*(v50 + 8))(v17, v51);
        v34.n128_u64[0] = v66[0];
      }

      BYTE2(v66[0]) = -2;
      LOWORD(v66[0]) = -772;
      v42 = (*(v33 + 16))(&v58, v66, v32, v33, 26.0, 26.0, v34);

      sub_3080(&v62);
      v43 = swift_allocObject();
      *(v43 + 16) = v31 & 1;
      type metadata accessor for ImageResourceLoader(0);
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v45 = swift_allocObject();
      *(v45 + 28) = 0;
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      *(v44 + 24) = v45;

      sub_2603B0();
      v58 = v44;

      sub_2631D0();

      v58 = sub_15EAD4;
      *&v59 = v43;
      *(&v59 + 1) = v42;
      v60 = v62;
      v61 = 1;

      swift_unknownObjectRetain();

      sub_2EF0(&qword_320998, &qword_27D128);
      sub_8E38(&qword_320990, &qword_320998, &qword_27D128, &protocol conformance descriptor for AsyncResourceImage<A>);
      sub_261F80();
      v46 = v64;
      v47 = v65;
      v48 = v63;
      v49 = v55;
      *v55 = v62;
      v49[1] = v48;
      *(v49 + 4) = v46;
      *(v49 + 40) = v47;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();

      swift_unknownObjectRelease();
    }

    else
    {
      if (v68 == 1)
      {
        v20 = sub_2630B0();
      }

      else
      {
        v20 = sub_263110();
      }

      v58 = v20;
      v59 = 0u;
      v60 = 0u;
      v61 = 0;

      sub_2EF0(&qword_320998, &qword_27D128);
      sub_8E38(&qword_320990, &qword_320998, &qword_27D128, &protocol conformance descriptor for AsyncResourceImage<A>);
      sub_261F80();
      v37 = v64;
      v38 = v65;
      v39 = v63;
      v40 = v55;
      *v55 = v62;
      v40[1] = v39;
      *(v40 + 4) = v37;
      *(v40 + 40) = v38;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_320988, &qword_27D120);
      sub_15E7E0();
      sub_15E898();
      sub_261F80();
    }
  }
}

void *sub_15E6F4@<X0>(void *result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (result)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = [result imageWithRenderingMode:v4];
    result = sub_2630A0();
  }

  *a3 = result;
  return result;
}

unint64_t sub_15E754()
{
  result = qword_320978;
  if (!qword_320978)
  {
    sub_2F9C(&qword_320970, &qword_27D118);
    sub_15E7E0();
    sub_15E898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320978);
  }

  return result;
}

unint64_t sub_15E7E0()
{
  result = qword_320980;
  if (!qword_320980)
  {
    sub_2F9C(&qword_320988, &qword_27D120);
    sub_8E38(&qword_320990, &qword_320998, &qword_27D128, &protocol conformance descriptor for AsyncResourceImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320980);
  }

  return result;
}

unint64_t sub_15E898()
{
  result = qword_3209A0;
  if (!qword_3209A0)
  {
    sub_2F9C(&qword_3209A8, &qword_27D130);
    sub_15E964(&qword_3209B0, type metadata accessor for FlatCoverView, &protocol conformance descriptor for FlatCoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3209A0);
  }

  return result;
}

uint64_t sub_15E964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15E9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlatCoverView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15EA14(uint64_t a1)
{
  v2 = type metadata accessor for FlatCoverView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_15EB34(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_263490();
      v5 = sub_2646C0();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_263490();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_15EC90@<X0>(void *a1@<X8>)
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
    return sub_22148(v10, a1, &qword_3178F0, &qword_269C90);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_15EE70@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for BooksFinishedFrameViewModel(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1677B0(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t BooksFinishedFrameViewModel.init(coverViewModels:localizedYear:userName:exposureData:lowAssetCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v17 = v16[5];
  *&a8[v17] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  *&a8[v16[11]] = 9;
  *&a8[v16[12]] = xmmword_27D200;
  *&a8[v16[6]] = a1;
  v18 = &a8[v16[7]];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &a8[v16[8]];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = v16[9];
  v21 = sub_260550();
  result = (*(*(v21 - 8) + 32))(&a8[v20], a6, v21);
  a8[v16[10]] = a7 ^ 1;
  return result;
}

double sub_15F1B8()
{
  v1 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BooksFinishedFrameViewModel(0);
  sub_8198(v0 + *(v14 + 20), v10, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1677B0(v10, v13, type metadata accessor for SizeConstants);
  }

  else
  {
    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_1677B0(v13, v3, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v3);
  return 32.0;
}

uint64_t sub_15F458()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v28 = sub_264410();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_2643F0();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v14 = v13;
  v15 = *(v0 + v13[6]);
  if (*(v0 + v13[10]))
  {
    v16 = (v0 + v13[8]);
    v17 = v16[1];
    v25 = *v16;
    sub_2643E0();
    if (v17)
    {
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      sub_2643D0(v30);
      v31._countAndFlagsBits = v25;
      v31._object = v17;
      sub_2643C0(v31);
      v18._countAndFlagsBits = 0x657220756F79202CLL;
      v18._object = 0xEB00000000206461;
    }

    else
    {
      v18._countAndFlagsBits = 0x6461657220756F59;
      v18._object = 0xE900000000000020;
    }

    sub_2643D0(v18);
    v29 = *(v15 + 16);
    sub_2643B0();
    v32._countAndFlagsBits = 0x6920736B6F6F6220;
    v32._object = 0xEA0000000000206ELL;
    sub_2643D0(v32);
    sub_2643C0(*(v0 + v14[7]));
    v33._countAndFlagsBits = 46;
    v33._object = 0xE100000000000000;
    sub_2643D0(v33);
    sub_264400();
    sub_260260();
    v19 = v28;
    (*(v7 + 16))(v26, v11, v28);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v27, v6, v1);
  }

  else
  {
    v25 = v1;
    if (*(v15 + 16) == 1)
    {
      sub_2643E0();
      v21._object = 0x8000000000293780;
      v21._countAndFlagsBits = 0xD000000000000016;
    }

    else
    {
      sub_2643E0();
      v21._countAndFlagsBits = 0xD000000000000018;
      v21._object = 0x8000000000293720;
    }

    sub_2643D0(v21);
    sub_2643C0(*(v0 + v14[7]));
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_2643D0(v34);
    sub_264400();
    sub_260260();
    v19 = v28;
    (*(v7 + 16))(v26, v11, v28);
    type metadata accessor for BundleFinder();
    v22 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v22];
    v1 = v25;
    (*(v2 + 16))(v27, v6, v25);
  }

  v23 = sub_264490();
  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v19);
  return v23;
}

uint64_t sub_15FB68()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v17[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v17[-v12];
  type metadata accessor for BooksFinishedFrameViewModel(0);
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v15 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v15;
}

uint64_t sub_15FEB8()
{
  v1 = sub_2EF0(&qword_320CB0, &qword_27D790);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v21 - v3;
  v5 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v12 = *(*(v0 + *(v11 + 24)) + 16);
  sub_15EC90(v10);
  v13 = *(v2 + 56);
  *v4 = v12;
  sub_22148(v10, &v4[v13], &qword_3178F0, &qword_269C90);
  if (v12 < *(v0 + *(v11 + 44)))
  {
    v14 = &qword_3178F0;
    v15 = &qword_269C90;
    v16 = &v4[v13];
LABEL_5:
    sub_8E80(v16, v14, v15);
    return 2;
  }

  v17 = sub_262180();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v4[v13], 1, v17) == 1)
  {
LABEL_4:
    v14 = &qword_320CB0;
    v15 = &qword_27D790;
    v16 = v4;
    goto LABEL_5;
  }

  sub_8198(&v4[v13], v7, &qword_3178F0, &qword_269C90);
  v20 = (*(v18 + 88))(v7, v17);
  if (v20 == enum case for UserInterfaceSizeClass.compact(_:))
  {
    sub_8E80(&v4[v13], &qword_3178F0, &qword_269C90);
    return 3;
  }

  else
  {
    if (v20 != enum case for UserInterfaceSizeClass.regular(_:))
    {
      (*(v18 + 8))(v7, v17);
      goto LABEL_4;
    }

    sub_8E80(&v4[v13], &qword_3178F0, &qword_269C90);
    return 4;
  }
}

void sub_160170(uint64_t *a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v74 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v4 - 8);
  v79 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_262180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2EF0(&qword_317970, &qword_269D00);
  __chkstk_darwin(v9);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v59[-v13];
  v15 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v15 - 8);
  v62 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v78 = &v59[-v18];
  __chkstk_darwin(v19);
  v21 = &v59[-v20];
  __chkstk_darwin(v22);
  v24 = &v59[-v23];
  __chkstk_darwin(v25);
  v27 = &v59[-v26];
  __chkstk_darwin(v28);
  v30 = &v59[-v29];
  v31 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v32 = *(*(v1 + v31[6]) + 16);
  v33 = *(v1 + v31[11]);
  v73 = v11;
  v70 = v21;
  v61 = v24;
  if (v32 >= v33)
  {
    v34 = 3;
  }

  else
  {
    v34 = 1;
    if (*(v1 + v31[10]))
    {
      v34 = 2;
    }
  }

  v72 = v34;
  v71 = sub_15FEB8();
  v75 = v1;
  sub_15EC90(v30);
  v35 = v7[13];
  v64 = enum case for UserInterfaceSizeClass.compact(_:);
  v67 = v35;
  v35(v27);
  v65 = v7[7];
  v66 = v7 + 7;
  v65(v27, 0, 1, v6);
  v69 = v9;
  v36 = *(v9 + 48);
  sub_8198(v30, v14, &qword_3178F0, &qword_269C90);
  sub_8198(v27, &v14[v36], &qword_3178F0, &qword_269C90);
  v77 = v7;
  v37 = v7[6];
  v38 = v37(v14, 1, v6);
  v68 = v37;
  if (v38 == 1)
  {
    sub_8E80(v27, &qword_3178F0, &qword_269C90);
    sub_8E80(v30, &qword_3178F0, &qword_269C90);
    if (v37(&v14[v36], 1, v6) == 1)
    {
      sub_8E80(v14, &qword_3178F0, &qword_269C90);
      v39 = 20.0;
      v40 = v74;
      v41 = v79;
      v42 = v70;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v43 = v61;
  sub_8198(v14, v61, &qword_3178F0, &qword_269C90);
  if (v37(&v14[v36], 1, v6) == 1)
  {
    sub_8E80(v27, &qword_3178F0, &qword_269C90);
    sub_8E80(v30, &qword_3178F0, &qword_269C90);
    (v77[1])(v43, v6);
LABEL_11:
    sub_8E80(v14, &qword_317970, &qword_269D00);
    v40 = v74;
    v41 = v79;
    v42 = v70;
LABEL_12:
    v39 = 24.0;
    goto LABEL_13;
  }

  v53 = v63;
  (v77[4])(v63, &v14[v36], v6);
  sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v60 = sub_264390();
  v54 = v77[1];
  v54(v53, v6);
  sub_8E80(v27, &qword_3178F0, &qword_269C90);
  sub_8E80(v30, &qword_3178F0, &qword_269C90);
  v54(v43, v6);
  sub_8E80(v14, &qword_3178F0, &qword_269C90);
  v39 = 20.0;
  v40 = v74;
  v41 = v79;
  v42 = v70;
  if ((v60 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_15EE70(v41);
  sub_1677B0(v41, v40, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v40);
  sub_15EC90(v42);
  v44 = v78;
  v67(v78, v64, v6);
  v65(v44, 0, 1, v6);
  v45 = *(v69 + 48);
  v46 = v73;
  sub_8198(v42, v73, &qword_3178F0, &qword_269C90);
  sub_8198(v44, v46 + v45, &qword_3178F0, &qword_269C90);
  v47 = v68;
  if (v68(v46, 1, v6) != 1)
  {
    v50 = v62;
    sub_8198(v46, v62, &qword_3178F0, &qword_269C90);
    if (v47(v46 + v45, 1, v6) != 1)
    {
      v55 = v77;
      v56 = v42;
      v57 = v63;
      (v77[4])(v63, v46 + v45, v6);
      sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      LODWORD(v75) = sub_264390();
      v58 = v55[1];
      v58(v57, v6);
      sub_8E80(v78, &qword_3178F0, &qword_269C90);
      sub_8E80(v56, &qword_3178F0, &qword_269C90);
      v58(v50, v6);
      sub_8E80(v46, &qword_3178F0, &qword_269C90);
      v48 = 20.0;
      v49 = v79;
      if (v75)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_8E80(v78, &qword_3178F0, &qword_269C90);
    sub_8E80(v42, &qword_3178F0, &qword_269C90);
    (v77[1])(v50, v6);
LABEL_18:
    sub_8E80(v46, &qword_317970, &qword_269D00);
    v49 = v79;
LABEL_19:
    v48 = 24.0;
    goto LABEL_20;
  }

  sub_8E80(v44, &qword_3178F0, &qword_269C90);
  sub_8E80(v42, &qword_3178F0, &qword_269C90);
  if (v47(v46 + v45, 1, v6) != 1)
  {
    goto LABEL_18;
  }

  sub_8E80(v46, &qword_3178F0, &qword_269C90);
  v48 = 20.0;
  v49 = v79;
LABEL_20:
  sub_15EE70(v49);
  sub_1677B0(v49, v40, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v40);
  sub_15F1B8();
  v51 = v76;
  v52 = v71;
  *v76 = v72;
  v51[1] = v52;
  *(v51 + 2) = v39;
  *(v51 + 3) = v48;
  v51[4] = 0x4040000000000000;
}

uint64_t sub_160ADC@<X0>(uint64_t *a1@<X8>)
{
  v94 = a1;
  v1 = sub_2643F0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_260290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v81 - v7;
  v9 = sub_264410();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  sub_2643A0();
  sub_260260();
  v16 = *(v10 + 16);
  v91 = v10 + 16;
  v96 = v16;
  v16(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v99 = objc_opt_self();
  v102 = ObjCClassFromMetadata;
  v18 = [v99 bundleForClass:ObjCClassFromMetadata];
  v19 = *(v3 + 16);
  v100 = v3 + 16;
  v103 = v19;
  v19(v5, v8, v2);
  v95 = v12;
  v20 = v5;
  v92 = sub_264490();
  v93 = v21;
  v22 = *(v3 + 8);
  v97 = v2;
  v106 = v3 + 8;
  v101 = v22;
  v22(v8, v2);
  v23 = *(v10 + 8);
  v98 = v9;
  v104 = v23;
  v105 = v10 + 8;
  v23(v15, v9);
  v24 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v25 = v89;
  if (*(v89 + *(v24 + 40)))
  {
    v26 = sub_161574(v89);
    v87 = v27;
    v88 = v26;
    sub_2EF0(&qword_320C98, &unk_27EAF0);
    v89 = type metadata accessor for BulletPointStack.Bullet(0);
    v28 = *(v89 - 8);
    v86 = *(v28 + 72);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_269100;
    v90 = v30;
    v31 = (v30 + v29);
    v85 = 0x80000000002931F0;
    sub_2643A0();
    sub_260260();
    v32 = v95;
    v33 = v96;
    v34 = v98;
    (v96)(v95, v15);
    v35 = [v99 bundleForClass:v102];
    v36 = v97;
    v103(v20, v8, v97);
    v84 = sub_264490();
    v83 = v37;
    v101(v8, v36);
    v104(v15, v34);
    sub_2643A0();
    sub_260260();
    v33(v32, v15, v34);
    v38 = v99;
    v39 = [v99 bundleForClass:v102];
    v40 = v36;
    v82 = v20;
    v103(v20, v8, v36);
    v41 = sub_264490();
    v43 = v42;
    v101(v8, v40);
    v44 = v98;
    v104(v15, v98);
    *v31 = 0xD000000000000010;
    v45 = v84;
    v31[1] = v85;
    v31[2] = v45;
    v31[3] = v83;
    v31[4] = v41;
    v31[5] = v43;
    v89 += 28;
    sub_2601D0();
    v46 = (v31 + v86);
    sub_2643A0();
    sub_260260();
    v48 = v95;
    v47 = v96;
    v96(v95, v15, v44);
    v49 = [v38 bundleForClass:v102];
    v50 = v82;
    v51 = v97;
    v103(v82, v8, v97);
    v52 = v50;
    v86 = sub_264490();
    v85 = v53;
    v54 = v101;
    v101(v8, v51);
    v55 = v98;
    v104(v15, v98);
    sub_2643A0();
    sub_260260();
    v47(v48, v15, v55);
    v56 = [v99 bundleForClass:v102];
    v103(v52, v8, v51);
    v57 = sub_264490();
    v59 = v58;
    v60 = v8;
    v61 = v87;
    v54(v60, v51);
    v62 = v88;
    v104(v15, v55);
    *v46 = 0x7261646E656C6163;
    v46[1] = 0xE800000000000000;
    v63 = v85;
    v46[2] = v86;
    v46[3] = v63;
    v46[4] = v57;
    v46[5] = v59;
    v64 = v92;
    v65 = v93;
  }

  else
  {
    v66 = v24;
    sub_2EF0(&qword_320C98, &unk_27EAF0);
    v67 = *(type metadata accessor for BulletPointStack.Bullet(0) - 8);
    v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_267D30;
    v90 = v69;
    v70 = (v69 + v68);
    v88 = 0x80000000002931F0;
    sub_2643E0();
    v107._countAndFlagsBits = 0xD000000000000030;
    v107._object = 0x8000000000293450;
    sub_2643D0(v107);
    sub_2643C0(*(v25 + *(v66 + 28)));
    v108._countAndFlagsBits = 0xD000000000000066;
    v108._object = 0x8000000000293490;
    sub_2643D0(v108);
    sub_264400();
    sub_260260();
    v71 = v98;
    v96(v95, v15, v98);
    v72 = [v99 bundleForClass:v102];
    v73 = v97;
    v103(v5, v8, v97);
    v74 = sub_264490();
    v76 = v75;
    v101(v8, v73);
    v104(v15, v71);
    v62 = 0;
    v61 = 0;
    v77 = v88;
    *v70 = 0xD000000000000010;
    v70[1] = v77;
    v78 = v93;
    v70[2] = v92;
    v70[3] = v78;
    v70[4] = v74;
    v70[5] = v76;
    v64 = 0;
    v65 = 0;
  }

  result = sub_2601D0();
  v80 = v94;
  *v94 = v64;
  v80[1] = v65;
  v80[2] = v62;
  v80[3] = v61;
  v80[4] = v90;
  return result;
}

uint64_t sub_161574(uint64_t a1)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v21[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v21[-v14];
  v16 = sub_2643F0();
  __chkstk_darwin(v16 - 8);
  sub_2643E0();
  v22._countAndFlagsBits = 0x72757320656B614DLL;
  v22._object = 0xEF2072756F792065;
  sub_2643D0(v22);
  v23 = *(a1 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 28));
  sub_2643C0(v23);
  v24._object = 0x8000000000293540;
  v24._countAndFlagsBits = 0x1000000000000070;
  sub_2643D0(v24);
  sub_264400();
  sub_260260();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  v19 = sub_264490();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  return v19;
}

char *sub_16188C(uint64_t a1)
{
  v3 = sub_263480();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_263490();
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = xmmword_27D210;
  (*(v4 + 104))(v6, enum case for GridItem.Size.flexible(_:), v3);
  v10 = (v1 + *(a1 + 68));
  sub_2634A0();
  return sub_15EB34(v9, *v10);
}

uint64_t sub_1619E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = sub_262320();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_262470();
  __chkstk_darwin(v4 - 8);
  v79 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262490();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = sub_2646F0();
  v77 = a1[5];
  v76 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = a1[3];
  v11 = v75;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = v9;
  v97 = AssociatedTypeWitness;
  v98 = v11;
  v99 = WitnessTable;
  v100 = AssociatedConformanceWitness;
  v14 = sub_2633D0();
  v73 = a1[6];
  v95 = v73;
  v15 = swift_getWitnessTable();
  v96 = v14;
  v97 = v15;
  swift_getOpaqueTypeMetadata2();
  v96 = v14;
  v97 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_263660();
  v17 = swift_getWitnessTable();
  v96 = v16;
  v97 = v17;
  swift_getOpaqueTypeMetadata2();
  v62 = a1[4];
  v83 = a1;
  v63 = a1[7];
  v96 = v62;
  v97 = v63;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  v18 = sub_263260();
  v60 = swift_getWitnessTable();
  v19 = sub_261120();
  v61 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = swift_getWitnessTable();
  v96 = v19;
  v97 = v6;
  v59 = v6;
  v98 = v22;
  v99 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = &v59 - v24;
  v96 = v19;
  v97 = v6;
  v98 = v22;
  v99 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeMetadata2();
  v69 = *(v27 - 8);
  __chkstk_darwin(v27);
  v65 = &v59 - v28;
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v66 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v96 = v27;
  v97 = v29;
  v64 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v67 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v59 - v31;
  sub_2621E0();
  v70 = v30;
  v33 = sub_261730();
  v72 = *(v33 - 8);
  __chkstk_darwin(v33);
  v68 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v71 = &v59 - v36;
  v37 = sub_2624C0();
  *&v38 = v76;
  *(&v38 + 1) = v75;
  *&v39 = v62;
  *(&v39 + 1) = v77;
  v88 = v38;
  v89 = v39;
  v90 = v73;
  v91 = v63;
  v92 = v86;
  sub_1D16D8(v37, sub_16741C, v87, v18, v60);
  sub_262460();
  v40 = v78;
  sub_262480();
  v79 = v25;
  v41 = v59;
  sub_262C90();
  (*(v80 + 8))(v40, v41);
  (*(v61 + 8))(v21, v19);
  sub_262310();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v41) = sub_2624E0();
  *(inited + 32) = v41;
  v43 = sub_2624C0();
  *(inited + 33) = v43;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v41)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v43)
  {
    sub_2624D0();
  }

  v44 = v65;
  v45 = v85;
  v46 = v79;
  sub_262BA0();
  (*(v81 + 8))(v45, v82);
  (*(v74 + 8))(v46, OpaqueTypeMetadata2);
  v47 = v64;
  sub_262C40();
  (*(v69 + 8))(v44, v27);
  v48 = sub_2624F0();
  v49 = *(v86 + *(v83 + 17) + 32);
  v96 = v27;
  v97 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v68;
  v52 = v48;
  v53 = v70;
  sub_164078(v52, v49, 0, v70, v50, v54);
  (*(v67 + 8))(v32, v53);
  v55 = sub_1661CC(&qword_320BF8, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v93 = v50;
  v94 = v55;
  swift_getWitnessTable();
  v56 = v71;
  sub_1609C();
  v57 = *(v72 + 8);
  v57(v51, v33);
  sub_1609C();
  return (v57)(v56, v33);
}

uint64_t sub_162538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a1;
  v29 = a8;
  sub_2646F0();
  v27 = a5;
  swift_getAssociatedTypeWitness();
  v39 = a3;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2633D0();
  v43 = a6;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263660();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v14 = a4;
  v37 = a4;
  v38 = a7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v26[2] = sub_2636B0();
  v26[1] = swift_getWitnessTable();
  v15 = sub_263260();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v26 - v20;
  v37 = a2;
  v38 = a3;
  v22 = v27;
  v39 = v14;
  WitnessTable = v27;
  AssociatedConformanceWitness = a6;
  v42 = a7;
  v23 = type metadata accessor for HorizontalScrollingGrid(0, &v37);
  v26[0] = *(v28 + *(v23 + 68) + 24);
  v30 = a2;
  v31 = a3;
  v32 = v14;
  v33 = v22;
  v34 = a6;
  v35 = a7;
  v36 = v28;
  sub_261D30();
  sub_263250();
  swift_getWitnessTable();
  sub_1609C();
  v24 = *(v16 + 8);
  v24(v18, v15);
  sub_1609C();
  return (v24)(v21, v15);
}

uint64_t sub_1628F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v136 = a7;
  v114 = a6;
  v135 = a4;
  v131 = a1;
  v123 = a8;
  v110 = sub_262180();
  v134 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2EF0(&qword_317970, &qword_269D00);
  __chkstk_darwin(v129);
  v120 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v124 = &v101 - v16;
  v17 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v17 - 8);
  v102 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v101 - v20;
  __chkstk_darwin(v21);
  v116 = (&v101 - v22);
  __chkstk_darwin(v23);
  v104 = &v101 - v24;
  __chkstk_darwin(v25);
  v109 = &v101 - v26;
  __chkstk_darwin(v27);
  v125 = (&v101 - v28);
  v133 = *(a4 - 8);
  __chkstk_darwin(v29);
  v132 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = a4;
  v148 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v121 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v117 = &v101 - v33;
  __chkstk_darwin(v34);
  v118 = &v101 - v35;
  v36 = sub_262080();
  __chkstk_darwin(v36 - 8);
  v115 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2646F0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v147 = v38;
  v148 = AssociatedTypeWitness;
  v42 = a3;
  v149 = a3;
  v150 = WitnessTable;
  v151 = AssociatedConformanceWitness;
  v43 = sub_2633D0();
  v44 = v114;
  v153 = v114;
  v45 = swift_getWitnessTable();
  v147 = v43;
  v148 = v45;
  v108 = swift_getOpaqueTypeMetadata2();
  v147 = v43;
  v148 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_263660();
  v113 = *(v46 - 8);
  __chkstk_darwin(v46);
  v107 = &v101 - v47;
  v111 = swift_getWitnessTable();
  v147 = v46;
  v148 = v111;
  v112 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v130 = swift_getOpaqueTypeMetadata2();
  v127 = *(v130 - 8);
  __chkstk_darwin(v130);
  v49 = &v101 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v128 = &v101 - v51;
  v147 = a2;
  v148 = v42;
  v52 = v42;
  v53 = v135;
  v149 = v135;
  v150 = a5;
  v54 = v136;
  v151 = v44;
  v152 = v136;
  v55 = type metadata accessor for HorizontalScrollingGrid(0, &v147);
  v56 = v131;
  v105 = sub_16188C(v55);
  v137 = a2;
  v138 = v52;
  v139 = v53;
  v140 = a5;
  v141 = v44;
  v142 = v54;
  v143 = v56;
  v57 = v56;
  sub_261D30();
  sub_163FF8();
  v58 = v107;
  v59 = v110;
  sub_263650();
  v60 = v111;
  sub_262C50();
  v113[1](v58, v46);
  v147 = v46;
  v148 = v60;
  v61 = v125;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v109;
  v64 = v130;
  v112 = v62;
  sub_1609C();
  v65 = *(v127 + 8);
  v115 = v49;
  v114 = v127 + 8;
  v113 = v65;
  (v65)(v49, v64);
  (*(v133 + 16))(v132, v57 + *(v55 + 80), v53);
  LODWORD(v111) = sub_2624C0();
  sub_408A8(v61);
  v66 = v124;
  v67 = v134;
  v68 = *(v134 + 104);
  LODWORD(v108) = enum case for UserInterfaceSizeClass.regular(_:);
  v107 = v68;
  (v68)(v63);
  v69 = v67;
  OpaqueTypeConformance2 = *(v67 + 56);
  OpaqueTypeConformance2(v63, 0, 1, v59);
  v70 = *(v129 + 48);
  sub_8198(v61, v66, &qword_3178F0, &qword_269C90);
  sub_8198(v63, v66 + v70, &qword_3178F0, &qword_269C90);
  v71 = *(v69 + 48);
  if (v71(v66, 1, v59) == 1)
  {
    sub_8E80(v63, &qword_3178F0, &qword_269C90);
    sub_8E80(v61, &qword_3178F0, &qword_269C90);
    if (v71(v66 + v70, 1, v59) == 1)
    {
      sub_8E80(v66, &qword_3178F0, &qword_269C90);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v72 = v104;
  sub_8198(v66, v104, &qword_3178F0, &qword_269C90);
  if (v71(v66 + v70, 1, v59) == 1)
  {
    sub_8E80(v63, &qword_3178F0, &qword_269C90);
    sub_8E80(v125, &qword_3178F0, &qword_269C90);
    (*(v134 + 8))(v72, v59);
LABEL_6:
    sub_8E80(v66, &qword_317970, &qword_269D00);
    goto LABEL_8;
  }

  v73 = v134;
  v74 = v66 + v70;
  v75 = v103;
  (*(v134 + 32))(v103, v74, v59);
  sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  LODWORD(v105) = sub_264390();
  v76 = *(v73 + 8);
  v76(v75, v59);
  sub_8E80(v63, &qword_3178F0, &qword_269C90);
  sub_8E80(v125, &qword_3178F0, &qword_269C90);
  v76(v104, v59);
  sub_8E80(v124, &qword_3178F0, &qword_269C90);
LABEL_8:
  v77 = v116;
  sub_408A8(v116);
  v78 = v126;
  (v107)(v126, v108, v59);
  OpaqueTypeConformance2(v78, 0, 1, v59);
  v79 = *(v129 + 48);
  v80 = v120;
  sub_8198(v77, v120, &qword_3178F0, &qword_269C90);
  sub_8198(v78, v80 + v79, &qword_3178F0, &qword_269C90);
  if (v71(v80, 1, v59) != 1)
  {
    v81 = v102;
    sub_8198(v80, v102, &qword_3178F0, &qword_269C90);
    if (v71(v80 + v79, 1, v59) != 1)
    {
      v82 = v134;
      v83 = v80 + v79;
      v84 = v103;
      (*(v134 + 32))(v103, v83, v59);
      sub_1661CC(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      sub_264390();
      v85 = *(v82 + 8);
      v85(v84, v59);
      sub_8E80(v126, &qword_3178F0, &qword_269C90);
      sub_8E80(v77, &qword_3178F0, &qword_269C90);
      v85(v81, v59);
      sub_8E80(v80, &qword_3178F0, &qword_269C90);
      goto LABEL_15;
    }

    sub_8E80(v126, &qword_3178F0, &qword_269C90);
    sub_8E80(v77, &qword_3178F0, &qword_269C90);
    (*(v134 + 8))(v81, v59);
    goto LABEL_13;
  }

  sub_8E80(v78, &qword_3178F0, &qword_269C90);
  sub_8E80(v77, &qword_3178F0, &qword_269C90);
  if (v71(v80 + v79, 1, v59) != 1)
  {
LABEL_13:
    sub_8E80(v80, &qword_317970, &qword_269D00);
    goto LABEL_15;
  }

  sub_8E80(v80, &qword_3178F0, &qword_269C90);
LABEL_15:
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v86 = v117;
  v87 = v135;
  v88 = v136;
  v89 = v132;
  sub_262CF0();
  (*(v133 + 8))(v89, v87);
  v147 = v87;
  v148 = v88;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v118;
  v92 = OpaqueTypeMetadata2;
  sub_1609C();
  v93 = v119;
  v94 = *(v119 + 8);
  v94(v86, v92);
  v95 = v115;
  v96 = v128;
  v97 = v130;
  (*(v127 + 16))(v115, v128, v130);
  v147 = v95;
  v98 = v121;
  (*(v93 + 16))(v121, v91, v92);
  v148 = v98;
  v146[0] = v97;
  v146[1] = v92;
  v144 = v112;
  v145 = v90;
  sub_10E998(&v147, 2uLL, v146);
  v94(v91, v92);
  v99 = v113;
  (v113)(v96, v97);
  v94(v98, v92);
  return (v99)(v95, v97);
}

uint64_t sub_1639B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v53 = a4;
  v54 = a7;
  v55 = a8;
  v56 = a1;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v43 = a5;
  v62 = a6;
  v63 = a7;
  v12 = type metadata accessor for HorizontalScrollingGrid(0, &v58);
  v47 = *(v12 - 8);
  v51 = *(v47 + 64);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_2646F0();
  v50 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  v48 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v15;
  v59 = AssociatedTypeWitness;
  v60 = a3;
  v61 = WitnessTable;
  v19 = a3;
  v62 = AssociatedConformanceWitness;
  v20 = sub_2633D0();
  v52 = *(v20 - 8);
  __chkstk_darwin(v20);
  v41 = &v39 - v21;
  v57 = a6;
  v44 = swift_getWitnessTable();
  v58 = v20;
  v59 = v44;
  v45 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v39 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v40 = &v39 - v25;
  v26 = v12;
  v58 = *(v56 + *(v12 + 72));
  v27 = v47;
  (*(v47 + 16))(v14, v24);
  v28 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  *(v29 + 3) = v19;
  v30 = v43;
  *(v29 + 4) = v53;
  *(v29 + 5) = v30;
  v31 = v54;
  *(v29 + 6) = a6;
  *(v29 + 7) = v31;
  (*(v27 + 32))(&v29[v28], v14, v26);

  v32 = v41;
  sub_2633C0();
  sub_2624C0();
  sub_263580();
  v33 = v39;
  v34 = v44;
  sub_262CF0();
  (*(v52 + 8))(v32, v20);
  v58 = v20;
  v59 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v40;
  v36 = OpaqueTypeMetadata2;
  sub_1609C();
  v37 = *(v46 + 8);
  v37(v33, v36);
  sub_1609C();
  return (v37)(v35, v36);
}

uint64_t sub_163E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v19 = type metadata accessor for HorizontalScrollingGrid(0, v22);
  (*(a2 + *(v19 + 76)))(a1);
  sub_1609C();
  v20 = *(v7 + 8);
  v20(v9, a4);
  sub_1609C();
  return (v20)(v12, a4);
}

uint64_t sub_163FF8()
{
  sub_262080();
  sub_1661CC(&qword_317430, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_265250();
}

uint64_t sub_164078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = sub_2621E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_2610C0();
    *(&v11 + 1) = v13;
    *(&v12 + 1) = v14;
  }

  v16[0] = v11;
  v16[1] = v12;
  v17 = a3 & 1;
  sub_2621D0();
  sub_262E30();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1641B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1677B0(v10, a1, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t BooksFinishedFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v4 = *(type metadata accessor for BooksFinishedFrameViewModel(0) + 36);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_1661CC(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_1661CC(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t BooksFinishedFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BooksFinishedFrame(0);
  v5 = (a2 + v4[5]);
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  *v5 = sub_262EE0();
  v8 = enum case for ColorScheme.light(_:);
  v9 = sub_261180();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5 + v6, v8, v9);
  (*(v10 + 56))(v5 + v6, 0, 1, v9);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[6]) = 0;
  return sub_1677B0(a1, a2 + v4[7], type metadata accessor for BooksFinishedFrameViewModel);
}

uint64_t sub_164698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for BooksFinishedFrame(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2EF0(&qword_320C10, &qword_27D640);
  __chkstk_darwin(v7);
  v9 = (&v41 - v8);
  v42 = sub_2EF0(&qword_320C18, &qword_27D648);
  __chkstk_darwin(v42);
  v11 = &v41 - v10;
  v43 = sub_2EF0(&qword_320C20, &unk_27D650);
  __chkstk_darwin(v43);
  v13 = &v41 - v12;
  v14 = v2 + *(v4 + 36);
  v15 = type metadata accessor for BooksFinishedFrameViewModel(0);
  if (*(v14 + *(v15 + 40)))
  {
    v16 = v15;
    sub_160170(v45);
    v17 = *(v14 + *(v16 + 24));
    sub_167744(v2, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BooksFinishedFrame);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    sub_1677B0(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for BooksFinishedFrame);
    *v9 = swift_getKeyPath();
    sub_2EF0(&qword_3179B8, &unk_269D50);
    swift_storeEnumTagMultiPayload();
    v20 = v9 + v7[17];
    v21 = v45[1];
    *v20 = v45[0];
    *(v20 + 1) = v21;
    *(v20 + 4) = v46;
    *(v9 + v7[18]) = v17;
    v22 = (v9 + v7[19]);
    *v22 = sub_167818;
    v22[1] = v19;
    v23 = (v9 + v7[20]);

    sub_160ADC(v47);
    *v23 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for BulletPointStack(0);
    v25 = v23 + v24[5];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = v24[6];
    *(v23 + v26) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    v27 = v23 + v24[7];
    v28 = v47[1];
    *v27 = v47[0];
    *(v27 + 1) = v28;
    *(v27 + 4) = v48;
    v29 = *(sub_2EF0(&qword_320C28, &qword_27D6A8) + 36);
    *(v23 + v29) = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v30 = &qword_320C10;
    v31 = &qword_27D640;
    sub_8198(v9, v11, &qword_320C10, &qword_27D640);
    swift_storeEnumTagMultiPayload();
    sub_16783C();
    sub_8E38(&qword_320C48, &qword_320C10, &qword_27D640, &unk_27D498);
    sub_261F80();
    v32 = v9;
  }

  else
  {
    sub_15F1B8();
    *v13 = sub_261E50();
    *(v13 + 1) = 0x4040000000000000;
    v13[16] = 0;
    v33 = sub_2EF0(&qword_320C50, &qword_27D6B8);
    sub_164BE0(v2, &v13[*(v33 + 44)]);
    v34 = sub_2624F0();
    sub_15F1B8();
    sub_2610C0();
    v35 = &v13[*(v43 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    v30 = &qword_320C20;
    v31 = &unk_27D650;
    sub_8198(v13, v11, &qword_320C20, &unk_27D650);
    swift_storeEnumTagMultiPayload();
    sub_16783C();
    sub_8E38(&qword_320C48, &qword_320C10, &qword_27D640, &unk_27D498);
    sub_261F80();
    v32 = v13;
  }

  return sub_8E80(v32, v30, v31);
}

uint64_t sub_164BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v3 - 8);
  v51 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2EF0(&qword_320C58, &qword_27D6C0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v47 - v9);
  v11 = type metadata accessor for BooksFinishedFrame(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = sub_2EF0(&qword_320C60, &qword_27D6C8);
  __chkstk_darwin(v15 - 8);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  *v19 = sub_261D30();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = v19;
  sub_2EF0(&qword_320C68, &unk_27D6D0);
  v21 = *(v12 + 36);
  v49 = a1;
  *&v54[0] = *(a1 + v21 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 24));
  sub_167744(a1, &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BooksFinishedFrame);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  sub_1677B0(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for BooksFinishedFrame);

  sub_2EF0(&qword_31BEF0, &unk_289190);
  sub_2EF0(&qword_320C70, &unk_27D6E0);
  sub_8E38(&qword_31BF00, &qword_31BEF0, &unk_289190, &protocol conformance descriptor for [A]);
  sub_167DEC();
  sub_167EA8();
  v48 = v19;
  sub_2633C0();
  sub_160ADC(v54);
  *v10 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for BulletPointStack(0);
  v25 = v10 + v24[5];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v24[6];
  *(v10 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v27 = v10 + v24[7];
  v28 = v54[1];
  *v27 = v54[0];
  *(v27 + 1) = v28;
  *(v27 + 4) = v55;
  v29 = v51;
  sub_1641B4(v51);
  sub_E5250(v29);
  LOBYTE(v24) = sub_262500();
  sub_2610C0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v10 + *(sub_2EF0(&qword_320C88, &qword_27D6F0) + 36);
  *v38 = v24;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = *(v6 + 44);
  *(v10 + v39) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v40 = v50;
  sub_8198(v20, v50, &qword_320C60, &qword_27D6C8);
  v41 = v52;
  sub_8198(v10, v52, &qword_320C58, &qword_27D6C0);
  v42 = v53;
  *v53 = 0;
  *(v42 + 8) = 1;
  v43 = v42;
  v44 = sub_2EF0(&qword_320C90, &qword_27D6F8);
  sub_8198(v40, v43 + v44[12], &qword_320C60, &qword_27D6C8);
  v45 = v43 + v44[16];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_8198(v41, v43 + v44[20], &qword_320C58, &qword_27D6C0);
  sub_8E80(v10, &qword_320C58, &qword_27D6C0);
  sub_8E80(v48, &qword_320C60, &qword_27D6C8);
  sub_8E80(v41, &qword_320C58, &qword_27D6C0);
  return sub_8E80(v40, &qword_320C60, &qword_27D6C8);
}

uint64_t sub_1651A4(__int128 *a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31BF28, &qword_272030);
  __chkstk_darwin(v4);
  v6 = v30 - v5;
  v7 = a1[5];
  v36 = a1[4];
  v37 = v7;
  v8 = a1[7];
  v38 = a1[6];
  v39 = v8;
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  v10 = a1[3];
  v34 = a1[2];
  v35 = v10;
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  *(v6 + 6) = swift_getKeyPath();
  v6[56] = 0;
  v11 = type metadata accessor for CoverView(0);
  v12 = v11[6];
  *&v6[v12] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v13 = v11[7];
  *&v6[v13] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v14 = &v6[v11[8]];
  sub_5757C(&v32, v31);
  type metadata accessor for ProfileRestrictions(0);
  sub_1661CC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v14 = sub_261900();
  v14[1] = v15;
  v16 = &v6[v11[9]];
  LOBYTE(v30[0]) = 1;
  sub_2631D0();
  v17 = *(&v31[0] + 1);
  *v16 = v31[0];
  *(v16 + 1) = v17;
  v18 = &v6[v11[10]];
  v19 = v37;
  *(v18 + 4) = v36;
  *(v18 + 5) = v19;
  v20 = v39;
  *(v18 + 6) = v38;
  *(v18 + 7) = v20;
  v21 = v33;
  *v18 = v32;
  *(v18 + 1) = v21;
  v22 = v35;
  *(v18 + 2) = v34;
  *(v18 + 3) = v22;
  v6[v11[11]] = 0;
  v23 = a2 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v24 = (v23 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 48));
  v25 = *v24;
  v26 = v24[1];
  v27 = &v6[*(v4 + 36)];
  *v27 = v25 / v26;
  *(v27 + 4) = 0;
  v31[4] = v36;
  v31[5] = v37;
  v31[6] = v38;
  v31[7] = v39;
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  v30[0] = CoverViewModel.axLabel.getter();
  v30[1] = v28;
  sub_C0C10();
  sub_10A84();
  sub_262C00();

  return sub_8E80(v6, &qword_31BF28, &qword_272030);
}

uint64_t sub_165490@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v6 = a1[7];
  v11[6] = a1[6];
  v11[7] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v8 = a1[3];
  v11[2] = a1[2];
  v11[3] = v8;
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = sub_2EF0(&qword_320CA0, &qword_27D780);
  return sub_165514(v11, a2, a3 + *(v9 + 44));
}

uint64_t sub_165514@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = sub_2EF0(&qword_31BF28, &qword_272030);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_2EF0(&qword_320C70, &unk_27D6E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  *(v7 + 6) = swift_getKeyPath();
  v7[56] = 0;
  v14 = type metadata accessor for CoverView(0);
  v15 = v14[6];
  *&v7[v15] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v16 = v14[7];
  *&v7[v16] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v17 = &v7[v14[8]];
  sub_5757C(a1, v42);
  type metadata accessor for ProfileRestrictions(0);
  sub_1661CC(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v17 = sub_261900();
  v17[1] = v18;
  v19 = &v7[v14[9]];
  LOBYTE(v40) = 1;
  sub_2631D0();
  v20 = *(&v42[0] + 1);
  *v19 = v42[0];
  *(v19 + 1) = v20;
  v21 = &v7[v14[10]];
  v22 = a1[5];
  *(v21 + 4) = a1[4];
  *(v21 + 5) = v22;
  v23 = a1[7];
  *(v21 + 6) = a1[6];
  *(v21 + 7) = v23;
  v24 = a1[1];
  *v21 = *a1;
  *(v21 + 1) = v24;
  v25 = a1[3];
  *(v21 + 2) = a1[2];
  *(v21 + 3) = v25;
  v7[v14[11]] = 0;
  v26 = v39 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  v27 = (v26 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 48));
  v28 = *v27;
  v29 = v27[1];
  v30 = &v7[*(v5 + 36)];
  *v30 = v28 / v29;
  *(v30 + 4) = 0;
  v31 = a1[5];
  v42[4] = a1[4];
  v42[5] = v31;
  v32 = a1[7];
  v42[6] = a1[6];
  v42[7] = v32;
  v33 = a1[1];
  v42[0] = *a1;
  v42[1] = v33;
  v34 = a1[3];
  v42[2] = a1[2];
  v42[3] = v34;
  v40 = CoverViewModel.axLabel.getter();
  v41 = v35;
  sub_C0C10();
  sub_10A84();
  sub_262C00();

  sub_8E80(v7, &qword_31BF28, &qword_272030);
  sub_8198(v13, v10, &qword_320C70, &unk_27D6E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v36 = sub_2EF0(&qword_320CA8, &qword_27D788);
  sub_8198(v10, a3 + *(v36 + 48), &qword_320C70, &unk_27D6E0);
  sub_8E80(v13, &qword_320C70, &unk_27D6E0);
  return sub_8E80(v10, &qword_320C70, &unk_27D6E0);
}

uint64_t BooksFinishedFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_3209E0, &qword_27D2C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_2EF0(&qword_3209E8, &qword_27D2C8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = v1 + *(type metadata accessor for BooksFinishedFrame(0) + 28);
  sub_15F1B8();
  *v5 = sub_261E50();
  *(v5 + 1) = 0x4040000000000000;
  v5[16] = 0;
  v10 = sub_2EF0(&qword_3209F0, &qword_27D2D0);
  sub_165B18(&v5[*(v10 + 44)]);
  if (*(v9 + *(type metadata accessor for BooksFinishedFrameViewModel(0) + 40)))
  {
    v11 = sub_262560();
  }

  else
  {
    v11 = sub_262510();
  }

  v12 = v11;
  sub_15F1B8();
  sub_2610C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_22148(v5, v8, &qword_3209E0, &qword_27D2C0);
  v21 = &v8[*(v6 + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  KeyPath = swift_getKeyPath();
  v23 = (a1 + *(sub_2EF0(&qword_3209F8, &unk_27D308) + 36));
  v24 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v25 = enum case for ColorScheme.light(_:);
  v26 = sub_261180();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  return sub_22148(v8, a1, &qword_3209E8, &qword_27D2C8);
}

uint64_t sub_165B18@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_2EF0(&qword_320C00, &unk_27D550);
  __chkstk_darwin(v1 - 8);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_2EF0(&qword_31BF38, &unk_272170);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v47 - v12);
  type metadata accessor for BooksFinishedFrame(0);
  v14 = sub_15F458();
  v54 = v15;
  v55 = v14;
  v53 = sub_262FD0() | 0x8000000000000000;
  v16 = sub_15FB68();
  v51 = v17;
  v52 = v16;
  v18 = type metadata accessor for TextLockup(0);
  v19 = v18[13];
  v20 = sub_2625C0();
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  v50 = sub_261E60();
  v21 = sub_263580();
  v48 = v22;
  v49 = v21;
  v23 = v18[17];
  v24 = enum case for DynamicTypeSize.accessibility2(_:);
  v25 = sub_261690();
  (*(*(v25 - 8) + 104))(v13 + v23, v24, v25);
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v26 = v18[5];
  *(v13 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v27 = v13 + v18[6];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v13 + v18[7];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v13 + v18[8];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v13 + v18[9]) = 3;
  v30 = (v13 + v18[10]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v13 + v18[11]);
  v32 = v54;
  *v31 = v55;
  v31[1] = v32;
  v33 = v52;
  v31[2] = v53;
  v34 = (v13 + v18[12]);
  v35 = v50;
  v36 = v51;
  *v34 = v33;
  v34[1] = v36;
  *(v13 + v18[14]) = v35;
  v37 = (v13 + v18[15]);
  v38 = v48;
  *v37 = v49;
  v37[1] = v38;
  *(v13 + v18[16]) = 0;
  LOBYTE(v29) = sub_2624F0();
  sub_15F1B8();
  sub_2610C0();
  v39 = v13 + *(v8 + 44);
  *v39 = v29;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  sub_164698(v6);
  sub_8198(v13, v10, &qword_31BF38, &unk_272170);
  sub_8198(v6, v3, &qword_320C00, &unk_27D550);
  v44 = v56;
  sub_8198(v10, v56, &qword_31BF38, &unk_272170);
  v45 = sub_2EF0(&qword_320C08, &qword_27D638);
  sub_8198(v3, v44 + *(v45 + 48), &qword_320C00, &unk_27D550);
  sub_8E80(v6, &qword_320C00, &unk_27D550);
  sub_8E80(v13, &qword_31BF38, &unk_272170);
  sub_8E80(v3, &qword_320C00, &unk_27D550);
  return sub_8E80(v10, &qword_31BF38, &unk_272170);
}

uint64_t sub_165F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v3 + *(a1 + 28);
  v6 = *(type metadata accessor for BooksFinishedFrameViewModel(0) + 36);
  v7 = sub_260550();
  a2[3] = v7;
  a2[4] = sub_1661CC(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_1661CC(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v8 = sub_10934(a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(v8, v5 + v6, v7);
}

uint64_t sub_1660DC(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v5 - v3, &qword_3178F0, &qword_269C90);
  return sub_261B50();
}

uint64_t sub_1661CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_166220(uint64_t a1)
{
  result = sub_1661CC(&qword_320A00, type metadata accessor for BooksFinishedFrame, &protocol conformance descriptor for BooksFinishedFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166278(uint64_t a1)
{
  result = sub_1661CC(&qword_320A08, type metadata accessor for BooksFinishedFrame, &protocol conformance descriptor for BooksFinishedFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166300(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_260550();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1664A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_260550();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_16662C(uint64_t a1)
{
  sub_588E8(319);
  if (v1 <= 0x3F)
  {
    sub_166B68(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v2 <= 0x3F)
    {
      sub_16678C(319, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_16678C(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_260550();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
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

void sub_16678C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1667F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PageBackground(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_166950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for PageBackground(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_166AA8(uint64_t a1)
{
  sub_166B68(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageBackground(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BooksFinishedFrameViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_166B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_166BC0()
{
  result = qword_320B58;
  if (!qword_320B58)
  {
    sub_2F9C(&qword_3209F8, &unk_27D308);
    sub_166C78();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320B58);
  }

  return result;
}

unint64_t sub_166C78()
{
  result = qword_320B60;
  if (!qword_320B60)
  {
    sub_2F9C(&qword_3209E8, &qword_27D2C8);
    sub_8E38(qword_320B68, &qword_3209E0, &qword_27D2C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320B60);
  }

  return result;
}

void sub_166D40(uint64_t a1)
{
  sub_588E8(319);
  if (v1 <= 0x3F)
  {
    sub_2646F0();
    if (v2 <= 0x3F)
    {
      sub_16D28();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_166E04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_262180() - 8);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + 16;
  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v14 = ((v13 + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(v7 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      v22 = ((((a1 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        v24 = *(v7 + 48);

        return v24((v13 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v10 + (v21 | v19) + 1;
}

void sub_167064(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_262180() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 32) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  v17 = ((v13 + 16 + (((((v16 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_52:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v24 = (((&a1[v16 + 8] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v26 = *(v11 + 56);

    v26((v13 + 16 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *v24 = v25;
  }
}

unint64_t sub_1673C8()
{
  result = qword_320BF0;
  if (!qword_320BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320BF0);
  }

  return result;
}

uint64_t sub_167480()
{
  v7 = *(v0 + 2);
  v8[0] = *(v0 + 1);
  v1 = *(v0 + 3);
  v8[1] = v7;
  v8[2] = v1;
  v2 = type metadata accessor for HorizontalScrollingGrid(0, v8);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_262180();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(&v0[v3], 1, v4))
    {
      (*(v5 + 8))(&v0[v3], v4);
    }
  }

  else
  {
  }

  (*(*(v7 - 8) + 8))(&v0[v3 + *(v2 + 80)]);
  return swift_deallocObject();
}

uint64_t sub_167650(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for HorizontalScrollingGrid(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_163E94(a1, v10, v3, v4);
}

uint64_t sub_167744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1677B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_16783C()
{
  result = qword_320C30;
  if (!qword_320C30)
  {
    sub_2F9C(&qword_320C20, &unk_27D650);
    sub_8E38(&qword_320C38, &qword_320C40, &qword_27D6B0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C30);
  }

  return result;
}

uint64_t sub_1678F4()
{
  v1 = type metadata accessor for BooksFinishedFrame(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v4 = sub_261690();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 20);
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v10 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v11 = sub_261180();
      (*(*(v11 - 8) + 8))(v5 + v10, v11);

      break;
    case 1:
      sub_57200(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112));
      break;
    case 0:

      v7 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v8 = sub_261180();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v5 + v7, 1, v8))
      {
        (*(v9 + 8))(v5 + v7, v8);
      }

      break;
  }

  v12 = v2 + *(v1 + 28);
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_262180();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v12, 1, v13))
    {
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
  }

  v15 = type metadata accessor for BooksFinishedFrameViewModel(0);
  v16 = v12 + *(v15 + 20);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v18 = sub_261690();
    (*(*(v18 - 8) + 8))(v16 + v17, v18);
  }

  else
  {
  }

  v19 = *(v15 + 36);
  v20 = sub_260550();
  (*(*(v20 - 8) + 8))(v12 + v19, v20);

  return swift_deallocObject();
}

uint64_t sub_167D58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BooksFinishedFrame(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_167DEC()
{
  result = qword_320C78;
  if (!qword_320C78)
  {
    sub_2F9C(&qword_320C70, &unk_27D6E0);
    sub_C0C10();
    sub_1661CC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C78);
  }

  return result;
}

unint64_t sub_167EA8()
{
  result = qword_320C80;
  if (!qword_320C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320C80);
  }

  return result;
}

uint64_t sub_167F14(void *a1)
{
  sub_2646F0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2633D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263660();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_263260();
  swift_getWitnessTable();
  sub_261120();
  sub_262490();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2621E0();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_1661CC(&qword_320BF8, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  return swift_getWitnessTable();
}

uint64_t static Metrics.createClickMetrics(targetId:targetType:actionType:actionDetails:actionUrl:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a1;
  v41 = a2;
  v44 = a9;
  v14 = sub_263DD0();
  __chkstk_darwin(v14 - 8);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_263A10();
  v16 = *(v42 - 8);
  __chkstk_darwin(v42);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  v20 = a8[9];
  v58 = a8[8];
  v59 = v20;
  v60 = a8[10];
  v21 = a8[5];
  v54 = a8[4];
  v55 = v21;
  v22 = a8[7];
  v56 = a8[6];
  v57 = v22;
  v23 = a8[1];
  v50 = *a8;
  v51 = v23;
  v24 = a8[3];
  v52 = a8[2];
  v53 = v24;
  v25 = &_swiftEmptyDictionarySingleton;
  if (a5)
  {
    v49 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v48 = a5;
    sub_FBD8(&v48, v46);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v46, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v25 = v45;
  }

  if (a7)
  {
    v49 = &type metadata for String;
    *&v48 = a6;
    *(&v48 + 1) = a7;
    sub_FBD8(&v48, v46);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v25;
    sub_DC90(v46, 0x72556E6F69746361, 0xE90000000000006CLL, v27);
    v25 = v45;
  }

  v47 = v19;
  v28 = Metrics.ClickActionType.rawValue.getter();
  v49 = &type metadata for String;
  *&v48 = v28;
  *(&v48 + 1) = v29;
  sub_FBD8(&v48, v46);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v25;
  sub_DC90(v46, 0x79546E6F69746361, 0xEA00000000006570, v30);
  v31 = v45;
  sub_2EF0(&qword_317218, &unk_269760);
  v32 = swift_allocObject();
  v39 = xmmword_267D30;
  *(v32 + 16) = xmmword_267D30;
  *(v32 + 32) = sub_1694E0();
  v49 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v48 = v32;
  sub_FBD8(&v48, v46);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v31;
  sub_DC90(v46, 0x6E6F697461636F6CLL, 0xE800000000000000, v33);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v34 = sub_2639E0();
  sub_B080(v34, qword_353F10);
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v35 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v39;
  v37 = v42;
  (*(v16 + 16))(v36 + v35, v18, v42);
  sub_263DC0();
  sub_263AD0();
  return (*(v16 + 8))(v18, v37);
}

unint64_t static Metrics.actionDetails(assetInfo:)(void *a1)
{
  sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x5050557369;
  *(inited + 40) = 0xE500000000000000;
  sub_2E18(a1, a1[3]);
  v3 = sub_260990();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v3 & 1;
  v4 = sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_3160C8, &unk_267D50);
  return v4;
}

void sub_1688B4(char *a1@<X8>)
{
  v2 = sub_263A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263AE0();
  if (!*(v6 + 16) || ((*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2), , v7 = sub_263A00(), (*(v3 + 8))(v5, v2), !*(v7 + 16)) || (v8 = sub_D410(0x79546E6F69746361, 0xEA00000000006570), (v9 & 1) == 0))
  {

    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  sub_A7C18(*(v7 + 56) + 32 * v8, &v11);

  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_8E80(&v11, &qword_316200, &qword_267FD0);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    Metrics.ClickActionType.init(rawValue:)(a1);
    return;
  }

LABEL_9:
  *a1 = 34;
}

void Metrics.ClickActionType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_264F80();

  v5 = 0;
  v6 = 16;
  switch(v4)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *a3 = v6;
}

unint64_t Metrics.ClickActionType.rawValue.getter()
{
  result = 6579297;
  switch(*v0)
  {
    case 1:
      result = 0x6E61576F54646461;
      break;
    case 2:
      result = 0x6D61536F69647561;
      break;
    case 3:
      result = 1801675106;
      break;
    case 4:
      result = 7959906;
      break;
    case 5:
      result = 0x6974696E49797562;
      break;
    case 6:
      result = 0x6F446C65636E6163;
      break;
    case 7:
      result = 0x657461657263;
      break;
    case 8:
      result = 0x6574656C6564;
      break;
    case 9:
      result = 0x676F6C616964;
      break;
    case 0xA:
      result = 0x7373696D736964;
      break;
    case 0xB:
      result = 0x64616F6C6E776F64;
      break;
    case 0xC:
      result = 0x657469726F766166;
      break;
    case 0xD:
      result = 0x7375636F66;
      break;
    case 0xE:
      result = 1702125928;
      break;
    case 0xF:
      result = 1702260588;
      break;
    case 0x10:
      result = 1701998445;
      break;
    case 0x11:
      result = 1702260589;
      break;
    case 0x12:
      result = 0x657461676976616ELL;
      break;
    case 0x13:
      result = 1954047342;
      break;
    case 0x14:
      result = 1852141679;
      break;
    case 0x15:
      result = 0x6573756170;
      break;
    case 0x16:
      result = 2036427888;
      break;
    case 0x17:
      result = 1702125938;
      break;
    case 0x18:
      result = 0x706D615364616572;
      break;
    case 0x19:
      result = 0x64616F6C6572;
      break;
    case 0x1A:
      result = 0xD000000000000014;
      break;
    case 0x1B:
      result = 0x7463656C6573;
      break;
    case 0x1C:
      result = 0x6572616873;
      break;
    case 0x1D:
      result = 0x7465656873;
      break;
    case 0x1E:
      result = 1953656691;
      break;
    case 0x1F:
      result = 1886352499;
      break;
    case 0x20:
      result = 0x69726F7661666E75;
      break;
    case 0x21:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_169020()
{
  v0 = Metrics.ClickActionType.rawValue.getter();
  v2 = v1;
  if (v0 == Metrics.ClickActionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_264F10();
  }

  return v5 & 1;
}

Swift::Int sub_1690BC()
{
  sub_265050();
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();

  return sub_265080();
}

double sub_169124(uint64_t a1)
{
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();

  return result;
}

Swift::Int sub_169188(uint64_t a1)
{
  sub_265050();
  Metrics.ClickActionType.rawValue.getter();
  sub_264500();

  return sub_265080();
}

unint64_t sub_1691F8@<X0>(unint64_t *a1@<X8>)
{
  result = Metrics.ClickActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void Metrics.TargetType.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300DA8;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  v7 = 6;
  if (v6 < 6)
  {
    v7 = v6;
  }

  *a3 = v7;
}

uint64_t Metrics.TargetType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F74747562;
  v3 = 1802398060;
  v4 = 0x70756B636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x77656976657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6954656C62627562;
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

double sub_16933C(uint64_t a1)
{
  sub_264500();

  return result;
}

void sub_169430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE400000000000000;
  v6 = 1802398060;
  v7 = 0xE600000000000000;
  v8 = 0x70756B636F6CLL;
  if (v2 != 4)
  {
    v8 = 0x77656976657270;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000070;
  v10 = 0x6954656C62627562;
  if (v2 != 1)
  {
    v10 = 0x7265746C6966;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1694E0()
{
  v1 = v0[9];
  v32 = v0[8];
  v33 = v1;
  v34 = v0[10];
  v2 = v0[5];
  v28 = v0[4];
  v29 = v2;
  v3 = v0[7];
  v30 = v0[6];
  v31 = v3;
  v4 = v0[1];
  v24 = *v0;
  v25 = v4;
  v5 = v0[3];
  v26 = v0[2];
  v27 = v5;
  sub_25FE70();
  swift_allocObject();
  sub_25FE60();
  sub_98D8C();
  v13 = sub_25FE50();
  v15 = v14;

  v16 = objc_opt_self();
  isa = sub_260070().super.isa;
  v23[0] = 0;
  v18 = [v16 JSONObjectWithData:isa options:0 error:v23];

  if (v18)
  {
    v19 = v23[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v12 = sub_1A4738(v22);
    }

    else
    {
      v12 = sub_E678(_swiftEmptyArrayStorage);
    }

    sub_16A088(v13, v15);
  }

  else
  {
    v20 = v23[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v13, v15);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v6 = sub_260D50();
    sub_B080(v6, qword_315F70);
    swift_errorRetain();
    v7 = sub_260D30();
    v8 = sub_2648F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v7, v8, "Failed to convert metrics model into MetricsFields: %@", v9, 0xCu);
      sub_8E80(v10, &qword_316450, &qword_2681E0);
    }

    v12 = sub_E678(_swiftEmptyArrayStorage);
  }

  return v12;
}

unint64_t sub_169820()
{
  v1 = v0[7];
  v29 = v0[6];
  v30 = v1;
  v31 = v0[8];
  v32 = *(v0 + 18);
  v2 = v0[3];
  v25 = v0[2];
  v26 = v2;
  v3 = v0[5];
  v27 = v0[4];
  v28 = v3;
  v4 = v0[1];
  v23 = *v0;
  v24 = v4;
  sub_25FE70();
  swift_allocObject();
  sub_25FE60();
  sub_16A034();
  v12 = sub_25FE50();
  v14 = v13;

  v15 = objc_opt_self();
  isa = sub_260070().super.isa;
  v22[0] = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:v22];

  if (v17)
  {
    v18 = v22[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v11 = sub_1A4738(v21);
    }

    else
    {
      v11 = sub_E678(_swiftEmptyArrayStorage);
    }

    sub_16A088(v12, v14);
  }

  else
  {
    v19 = v22[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v12, v14);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v5 = sub_260D50();
    sub_B080(v5, qword_315F70);
    swift_errorRetain();
    v6 = sub_260D30();
    v7 = sub_2648F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v6, v7, "Failed to convert metrics model into MetricsFields: %@", v8, 0xCu);
      sub_8E80(v9, &qword_316450, &qword_2681E0);
    }

    v11 = sub_E678(_swiftEmptyArrayStorage);
  }

  return v11;
}

unint64_t static Metrics.actionDetails(with:)(double a1)
{
  sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x676E69746172;
  v3 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = a1;
  v4 = sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(v3, &qword_3160C8, &unk_267D50);
  return v4;
}

unint64_t _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(_BYTE *a1, void *a2)
{
  if (Metrics.ClickActionType.rawValue.getter() == 7959906 && v3 == 0xE300000000000000)
  {

    goto LABEL_8;
  }

  v5 = sub_264F10();

  if (v5)
  {
LABEL_8:
    sub_2EF0(&qword_3160C0, &qword_267D48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269100;
    *(inited + 32) = 0x6D61726150797562;
    *(inited + 40) = 0xE900000000000073;
    sub_2E18(a2, a2[3]);
    v8 = sub_260700();
    if (v8 && (v9 = v8, v10 = [v8 buyParams], v9, v10))
    {
      v11 = sub_264460();
      v13 = v12;

      v14 = (inited + 48);
      *(inited + 72) = &type metadata for String;
      if (v13)
      {
        *v14 = v11;
LABEL_14:
        *(inited + 56) = v13;
        *(inited + 80) = 0x5050557369;
        *(inited + 88) = 0xE500000000000000;
        sub_2E18(a2, a2[3]);
        v15 = sub_260990();
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = v15 & 1;
        v6 = sub_E678(inited);
        swift_setDeallocating();
        sub_2EF0(&qword_3160C8, &unk_267D50);
        swift_arrayDestroy();
        return v6;
      }
    }

    else
    {
      v14 = (inited + 48);
      *(inited + 72) = &type metadata for String;
    }

    *v14 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_169E28()
{
  result = qword_320CB8;
  if (!qword_320CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CB8);
  }

  return result;
}

unint64_t sub_169E80()
{
  result = qword_320CC0;
  if (!qword_320CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CC0);
  }

  return result;
}

uint64_t _s11descr2FCCF9V15ClickActionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11descr2FCCF9V15ClickActionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_16A034()
{
  result = qword_320CC8;
  if (!qword_320CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CC8);
  }

  return result;
}

double sub_16A088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t GridItemInfobarPricePill.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262730();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PricePillView(0);
  sub_30CC(v1, a1 + *(v7 + 24));
  KeyPath = swift_getKeyPath();
  v11 = 0;
  *a1 = KeyPath;
  *(a1 + 66) = 0;
  v10 = 0x402E000000000000;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.caption2(_:), v3);
  sub_40130();
  return sub_2612E0();
}

unint64_t sub_16A244()
{
  result = qword_320CF8;
  if (!qword_320CF8)
  {
    type metadata accessor for PricePillView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320CF8);
  }

  return result;
}

uint64_t CodeShelfGridSpacing.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260C50();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CodeShelfGridSpacing.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_260C50();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CodeShelfGridSpacing.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_16A3D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7A69726F68;
  }

  else
  {
    v3 = 0x6C61636974726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x746E6F7A69726F68;
  }

  else
  {
    v5 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
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

Swift::Int sub_16A484()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_16A50C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_16A580(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_16A604(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300E58;
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

void sub_16A664(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_16A6A8()
{
  if (*v0)
  {
    return 0x746E6F7A69726F68;
  }

  else
  {
    return 0x6C61636974726576;
  }
}

void sub_16A6E8(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300E58;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_16A74C(uint64_t a1)
{
  v2 = sub_16AAC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A788(uint64_t a1)
{
  v2 = sub_16AAC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodeShelfGridSpacing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_320D00, &qword_27DA70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  v9 = type metadata accessor for CodeShelfGridSpacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, &v15);
  sub_2647B0();
  if (v2)
  {
    v14 = a2;
    sub_2E18(a1, a1[3]);
    sub_16AAC4();
    sub_265120();
    v18 = 0;
    sub_6E08();
    sub_264DB0();
    v13[1] = v15;
    v17 = v16;
    v18 = 1;
    sub_264DB0();
    sub_260C30();

    (*(v6 + 8))(v8, v5);
    a2 = v14;
  }

  else
  {
    sub_260C20();
  }

  sub_16AB18(v11, a2);
  return sub_3080(a1);
}

uint64_t type metadata accessor for CodeShelfGridSpacing(uint64_t a1)
{
  result = qword_320D68;
  if (!qword_320D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_16AAC4()
{
  result = qword_320D08;
  if (!qword_320D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320D08);
  }

  return result;
}

uint64_t sub_16AB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodeShelfGridSpacing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16ABA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_16AC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_260C50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_16AC98(uint64_t a1)
{
  result = sub_260C50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16AD18()
{
  result = qword_320DA0;
  if (!qword_320DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DA0);
  }

  return result;
}

unint64_t sub_16AD70()
{
  result = qword_320DA8;
  if (!qword_320DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DA8);
  }

  return result;
}

unint64_t sub_16ADC8()
{
  result = qword_320DB0;
  if (!qword_320DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DB0);
  }

  return result;
}

void sub_16AE6C(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_300EE0;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_16AEC4(uint64_t a1)
{
  v2 = sub_16B468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16AF00(uint64_t a1)
{
  v2 = sub_16B468();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_16AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_16AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_16B044(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v4 = a1[1];
  v7._object = v4;
  v6 = sub_264D40(a2, v7);

  *a3 = v6 != 0;
}

void sub_16B0D8(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_300F50;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_16B130(uint64_t a1)
{
  v2 = sub_16B414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16B16C(uint64_t a1)
{
  v2 = sub_16B414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.ExternalURLDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v4 = sub_2EF0(&qword_320DB8, &qword_27DC10);
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v19 - v5;
  v6 = sub_2EF0(&qword_320DC0, &qword_27DC18);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  sub_2E18(a1, a1[3]);
  sub_16B414();
  sub_265120();
  if (!v2)
  {
    v10 = v7;
    v11 = v20;
    sub_16B468();
    v12 = v21;
    sub_264D50();
    v14 = sub_264DC0();
    v15 = v12;
    v17 = v16;
    (*(v11 + 8))(v15, v4);
    (*(v10 + 8))(v9, v6);
    v18 = v19;
    *v19 = v14;
    v18[1] = v17;
  }

  return sub_3080(a1);
}

unint64_t sub_16B414()
{
  result = qword_320DC8;
  if (!qword_320DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DC8);
  }

  return result;
}

unint64_t sub_16B468()
{
  result = qword_320DD0;
  if (!qword_320DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DD0);
  }

  return result;
}

unint64_t sub_16B4BC(uint64_t a1)
{
  result = sub_16B4E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_16B4E4()
{
  result = qword_320DD8;
  if (!qword_320DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DD8);
  }

  return result;
}

unint64_t sub_16B584()
{
  result = qword_320DE0;
  if (!qword_320DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DE0);
  }

  return result;
}

unint64_t sub_16B5DC()
{
  result = qword_320DE8;
  if (!qword_320DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DE8);
  }

  return result;
}

unint64_t sub_16B634()
{
  result = qword_320DF0;
  if (!qword_320DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DF0);
  }

  return result;
}

unint64_t sub_16B68C()
{
  result = qword_320DF8;
  if (!qword_320DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320DF8);
  }

  return result;
}

unint64_t sub_16B6E4()
{
  result = qword_320E00;
  if (!qword_320E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E00);
  }

  return result;
}

unint64_t sub_16B73C()
{
  result = qword_320E08;
  if (!qword_320E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E08);
  }

  return result;
}

uint64_t DelayActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for DelayAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_16BDDC(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_16BE44(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2EF0(&qword_31D228, &unk_27B470);
  v10 = sub_2641C0();
  v11 = sub_264770();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_27DF70;
  v12[5] = v9;
  v12[6] = v10;

  sub_E39C4(0, 0, v4, &unk_27DF80, v12);

  return v10;
}

uint64_t sub_16B9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_264C90();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_16BA60, 0, 0);
}

uint64_t sub_16BA60()
{
  type metadata accessor for DelayAction(0);
  v1 = sub_265220();
  v3 = v2;
  sub_264FE0();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_16BB4C;

  return sub_16C194(v1, v3, 0, 0, 1);
}

uint64_t sub_16BB4C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_16BD78;
  }

  else
  {
    v5 = sub_16BCBC;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_16BCBC()
{
  v1 = *(v0 + 16);
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_263B00();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_16BD78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16BDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16BE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16BEA8(uint64_t a1)
{
  v4 = *(type metadata accessor for DelayAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_160A8;

  return sub_16B9A0(a1, v1 + v5);
}

uint64_t sub_16BF84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for DelayAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_16BDDC(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_16BE44(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2EF0(&qword_31D228, &unk_27B470);
  v10 = sub_2641C0();
  v11 = sub_264770();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_27DFF0;
  v12[5] = v9;
  v12[6] = v10;

  sub_E39C4(0, 0, v4, &unk_274568, v12);

  return v10;
}

uint64_t sub_16C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264C80();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_16C294, 0, 0);
}

uint64_t sub_16C294()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_264C90();
  v5 = sub_16C92C(&qword_320E10, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_264FC0();
  sub_16C92C(&qword_320E18, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_264CA0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_16C424;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_16C424()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_16C5E0, 0, 0);
}

uint64_t sub_16C5E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16C64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_160A8;

  return sub_E3648(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_16C780()
{
  v1 = *(type metadata accessor for DelayAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_263AF0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_16C84C(uint64_t a1)
{
  v4 = *(type metadata accessor for DelayAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_156D0;

  return sub_16B9A0(a1, v1 + v5);
}

uint64_t sub_16C92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_16C988()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_16CA38(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_16CAD4(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_16CB80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16F36C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_16CBB0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C797473;
  v4 = 0x6E6769736564;
  if (*v1 != 2)
  {
    v4 = 0x746867696577;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_16CC1C()
{
  v1 = 0x656C797473;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x746867696577;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

unint64_t sub_16CC84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16F36C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16CCAC(uint64_t a1)
{
  v2 = sub_16DDC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16CCE8(uint64_t a1)
{
  v2 = sub_16DDC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_16CD24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000000028FC50;
  if (v2 == 1)
  {
    v4 = 0x800000000028FC50;
  }

  else
  {
    v4 = 0x800000000028FC70;
  }

  if (*a1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1953394534;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000000028FC70;
  }

  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 1953394534;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_16CDF0()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_16CE94(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_16CF24(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

unint64_t sub_16CFC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16F3B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_16CFF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x800000000028FC50;
  if (v2 != 1)
  {
    v4 = 0x800000000028FC70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 1953394534;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_16D054()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1953394534;
  }
}

unint64_t sub_16D0B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16F3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16D0D8(uint64_t a1)
{
  v2 = sub_16DD70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16D114(uint64_t a1)
{
  v2 = sub_16DD70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontSpec.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v73 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v81 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v64 - v5;
  v76 = sub_262730();
  v88 = *(v76 - 1);
  __chkstk_darwin(v76);
  v87 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2625C0();
  v79 = *(v83 - 8);
  __chkstk_darwin(v83);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2EF0(&qword_320E20, &qword_27E008);
  __chkstk_darwin(v75);
  v77 = &v64 - v8;
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v9 - 8);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v64 - v12;
  __chkstk_darwin(v13);
  v78 = &v64 - v14;
  __chkstk_darwin(v15);
  v85 = &v64 - v16;
  v17 = sub_2EF0(&qword_320E28, &qword_27E010);
  v84 = *(v17 - 8);
  __chkstk_darwin(v17);
  v89 = &v64 - v18;
  v19 = sub_2EF0(&qword_320E30, &qword_27E018);
  v86 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = type metadata accessor for FontSpec(0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = (&v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v23 + 28);
  v27 = sub_261690();
  v28 = *(*(v27 - 8) + 56);
  v92 = v26;
  v28(v25 + v26, 1, 1, v27);
  v93 = *(v23 + 32);
  v28(v25 + v93, 1, 1, v27);
  v29 = v90;
  sub_2E18(v90, v90[3]);
  sub_16DD70();
  v30 = v91;
  sub_265120();
  if (v30)
  {
    sub_3080(v29);
    sub_8E80(v25 + v92, &qword_316890, &qword_2725A0);
    return sub_8E80(v25 + v93, &qword_316890, &qword_2725A0);
  }

  v31 = v87;
  v32 = v88;
  v91 = v17;
  v33 = v25;
  v34 = v86;
  v96 = 0;
  sub_16DDC4();
  sub_264D50();
  sub_16DE18(v85);
  v35 = sub_16EC2C();
  v68 = v37;
  v69 = v35;
  v71 = v21;
  v70 = v19;
  v95 = 1;
  if (sub_264E10())
  {
    v94 = 1;
    sub_6E08();
    sub_264DF0();
    v40 = v79;
    v39 = v80;
    v41 = *(v79 + 104);
    v66 = enum case for Font.Design.serif (_:);
    v42 = v83;
    v67 = v79 + 104;
    v65 = v41;
    v41(v80);
    v43 = *(v40 + 56);
    v87 = (v40 + 56);
    v76 = v43;
    v43(v39, 0, 1, v42);
    v44 = *(v75 + 48);
    v45 = v77;
    sub_16F074(v85, v77);
    v88 = v44;
    sub_16F074(v39, v45 + v44);
    v46 = *(v40 + 48);
    if (v46(v45, 1, v42) == 1)
    {
      sub_8E80(v39, &qword_318458, &unk_26B270);
      v47 = v46(v45 + v88, 1, v83);
      v50 = v81;
      v49 = v82;
      v38 = v92;
      if (v47 == 1)
      {
        sub_8E80(v45, &qword_318458, &unk_26B270);
        v48 = v78;
LABEL_14:
        if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
        {
          v57 = v48;
          v58 = 1;
          v59 = v83;
        }

        else
        {
          v60 = v83;
          v65(v48, v66, v83);
          v57 = v48;
          v58 = 0;
          v59 = v60;
        }

        v76(v57, v58, 1, v59);
        goto LABEL_18;
      }
    }

    else
    {
      v51 = v74;
      sub_16F074(v45, v74);
      if (v46(v45 + v88, 1, v83) != 1)
      {
        v52 = v79;
        v53 = v72;
        v54 = v83;
        (*(v79 + 32))(v72, v45 + v88, v83);
        sub_16F0E4();
        LODWORD(v88) = sub_264390();
        v55 = v29;
        v56 = *(v52 + 8);
        v56(v53, v54);
        sub_8E80(v80, &qword_318458, &unk_26B270);
        v56(v74, v54);
        v29 = v55;
        sub_8E80(v45, &qword_318458, &unk_26B270);
        v50 = v81;
        v49 = v82;
        v38 = v92;
        v48 = v78;
        if (v88)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_16F074(v85, v48);
LABEL_18:
        v83 = sub_262670();
        sub_8E80(v48, &qword_318458, &unk_26B270);
        goto LABEL_19;
      }

      sub_8E80(v80, &qword_318458, &unk_26B270);
      (*(v79 + 8))(v51, v83);
      v50 = v81;
      v49 = v82;
      v38 = v92;
    }

    sub_8E80(v45, &qword_320E20, &qword_27E008);
    v48 = v78;
    goto LABEL_12;
  }

  sub_16E174(v31);
  v38 = v92;
  v83 = sub_262680();
  (*(v32 + 8))(v31, v76);
  v50 = v81;
  v49 = v82;
LABEL_19:
  *v33 = v83;
  v61 = v49;
  v62 = v49;
  v63 = v71;
  sub_16E64C(v61);
  sub_C5FBC(v62, v33 + v38);
  sub_16E64C(v50);
  sub_8E80(v85, &qword_318458, &unk_26B270);
  (*(v84 + 8))(v89, v91);
  (*(v34 + 8))(v63, v70);
  sub_C5FBC(v50, v33 + v93);
  sub_16F010(v33, v73);
  sub_3080(v29);
  return sub_10C5F4(v33);
}

unint64_t sub_16DD70()
{
  result = qword_320E38;
  if (!qword_320E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E38);
  }

  return result;
}

unint64_t sub_16DDC4()
{
  result = qword_320E40;
  if (!qword_320E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E40);
  }

  return result;
}

uint64_t sub_16DE18@<X0>(uint64_t a1@<X8>)
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264D70();
  if (!v1)
  {
    if (v4)
    {
      v5 = result == 0x746C7561666564 && v4 == 0xE700000000000000;
      if (v5 || (v6 = result, v7 = v4, (sub_264F10() & 1) != 0))
      {

        v8 = &enum case for Font.Design.default(_:);
LABEL_9:
        v9 = *v8;
        v10 = sub_2625C0();
        v11 = *(v10 - 8);
        (*(v11 + 104))(a1, v9, v10);
        return (*(v11 + 56))(a1, 0, 1, v10);
      }

      if (v6 == 0x6669726573 && v7 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for Font.Design.serif (_:);
        goto LABEL_9;
      }

      if (v6 == 0x6465646E756F72 && v7 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        v8 = &enum case for Font.Design.rounded(_:);
        goto LABEL_9;
      }

      if (v6 == 0x636170736F6E6F6DLL && v7 == 0xEA00000000006465)
      {

LABEL_24:
        v8 = &enum case for Font.Design.monospaced(_:);
        goto LABEL_9;
      }

      v13 = sub_264F10();

      if (v13)
      {
        goto LABEL_24;
      }

      v14 = sub_264C10();
      swift_allocError();
      v16 = v15;
      sub_264D60();
      sub_264BF0();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.dataCorrupted(_:), v14);
      return swift_willThrow();
    }

    else
    {
      v12 = sub_2625C0();
      return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    }
  }

  return result;
}

uint64_t sub_16E174@<X0>(uint64_t a1@<X8>)
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264DC0();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = result == 0x746954656772616CLL && v4 == 0xEA0000000000656CLL;
    if (v7 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.largeTitle(_:);
    }

    else if (v5 == 0x656C746974 && v6 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title(_:);
    }

    else if (v5 == 0x32656C746974 && v6 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title2(_:);
    }

    else if (v5 == 0x33656C746974 && v6 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.title3(_:);
    }

    else if (v5 == 0x656E696C64616568 && v6 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.headline(_:);
    }

    else if (v5 == 0x6C64616568627573 && v6 == 0xEB00000000656E69 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.subheadline(_:);
    }

    else if (v5 == 2036625250 && v6 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.body(_:);
    }

    else if (v5 == 0x74756F6C6C6163 && v6 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.callout(_:);
    }

    else if (v5 == 0x65746F6E746F6F66 && v6 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.footnote(_:);
    }

    else if (v5 == 0x6E6F6974706163 && v6 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
    {

      v8 = &enum case for Font.TextStyle.caption(_:);
    }

    else
    {
      if (v5 == 0x326E6F6974706163 && v6 == 0xE800000000000000)
      {
      }

      else
      {
        v11 = sub_264F10();

        if ((v11 & 1) == 0)
        {
          v12 = sub_264C10();
          swift_allocError();
          v14 = v13;
          sub_264D60();
          sub_264BF0();
          (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.dataCorrupted(_:), v12);
          return swift_willThrow();
        }
      }

      v8 = &enum case for Font.TextStyle.caption2(_:);
    }

    v9 = *v8;
    v10 = sub_262730();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  return result;
}

uint64_t sub_16E64C@<X0>(uint64_t a2@<X8>)
{
  sub_2EF0(&qword_320E30, &qword_27E018);
  result = sub_264D70();
  if (!v2)
  {
    if (v5)
    {
      v6 = result == 0x6C6C616D5378 && v5 == 0xE600000000000000;
      if (v6 || (v7 = result, v8 = v5, (sub_264F10() & 1) != 0))
      {

        v9 = &enum case for DynamicTypeSize.xSmall(_:);
LABEL_9:
        v10 = *v9;
        v11 = sub_261690();
        v12 = *(v11 - 8);
        (*(v12 + 104))(a2, v10, v11);
        return (*(v12 + 56))(a2, 0, 1, v11);
      }

      if (v7 == 0x6C6C616D73 && v8 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.small(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6D756964656DLL && v8 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.medium(_:);
        goto LABEL_9;
      }

      if (v7 == 0x656772616CLL && v8 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.large(_:);
        goto LABEL_9;
      }

      if (v7 == 0x656772614C78 && v8 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.xLarge(_:);
        goto LABEL_9;
      }

      if (v7 == 0x656772614C7878 && v8 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.xxLarge(_:);
        goto LABEL_9;
      }

      if (v7 == 0x656772614C787878 && v8 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.xxxLarge(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6269737365636361 && v8 == 0xEE00317974696C69 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.accessibility1(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6269737365636361 && v8 == 0xEE00327974696C69 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.accessibility2(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6269737365636361 && v8 == 0xEE00337974696C69 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.accessibility3(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6269737365636361 && v8 == 0xEE00347974696C69 || (sub_264F10() & 1) != 0)
      {

        v9 = &enum case for DynamicTypeSize.accessibility4(_:);
        goto LABEL_9;
      }

      if (v7 == 0x6269737365636361 && v8 == 0xEE00357974696C69)
      {

LABEL_56:
        v9 = &enum case for DynamicTypeSize.accessibility5(_:);
        goto LABEL_9;
      }

      v14 = sub_264F10();

      if (v14)
      {
        goto LABEL_56;
      }

      v15 = sub_264C10();
      swift_allocError();
      v17 = v16;
      sub_264D60();
      sub_264BF0();
      (*(*(v15 - 8) + 104))(v17, enum case for DecodingError.dataCorrupted(_:), v15);
      return swift_willThrow();
    }

    else
    {
      v13 = sub_261690();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }
  }

  return result;
}

uint64_t sub_16EC2C()
{
  sub_2EF0(&qword_320E28, &qword_27E010);
  result = sub_264D70();
  if (!v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = result == 0x67694C6172746C75 && v2 == 0xEA00000000007468;
      if (v4 || (v5 = result, (sub_264F10() & 1) != 0))
      {

        sub_2625D0();
        return v6;
      }

      if (v5 == 1852401780 && v3 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_2625F0();
        return v6;
      }

      if (v5 == 0x746867696CLL && v3 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262620();
        return v6;
      }

      if (v5 == 0x72616C75676572 && v3 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262640();
        return v6;
      }

      if (v5 == 0x6D756964656DLL && v3 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262630();
        return v6;
      }

      if (v5 == 0x646C6F62696D6573 && v3 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262650();
        return v6;
      }

      if (v5 == 1684828002 && v3 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_2625E0();
        return v6;
      }

      if (v5 == 0x7976616568 && v3 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
      {

        sub_262610();
        return v6;
      }

      if (v5 == 0x6B63616C62 && v3 == 0xE500000000000000)
      {

LABEL_44:
        sub_262600();
        return v6;
      }

      v7 = sub_264F10();

      if (v7)
      {
        goto LABEL_44;
      }

      v8 = sub_264C10();
      swift_allocError();
      v10 = v9;
      sub_264D60();
      sub_264BF0();
      (*(*(v8 - 8) + 104))(v10, enum case for DecodingError.dataCorrupted(_:), v8);
      return swift_willThrow();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_16F010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_16F0E4()
{
  result = qword_320E48;
  if (!qword_320E48)
  {
    sub_2625C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E48);
  }

  return result;
}

unint64_t sub_16F160()
{
  result = qword_320E50;
  if (!qword_320E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E50);
  }

  return result;
}

unint64_t sub_16F1B8()
{
  result = qword_320E58;
  if (!qword_320E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E58);
  }

  return result;
}

unint64_t sub_16F210()
{
  result = qword_320E60;
  if (!qword_320E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E60);
  }

  return result;
}

unint64_t sub_16F268()
{
  result = qword_320E68;
  if (!qword_320E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E68);
  }

  return result;
}

unint64_t sub_16F2C0()
{
  result = qword_320E70;
  if (!qword_320E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E70);
  }

  return result;
}

unint64_t sub_16F318()
{
  result = qword_320E78;
  if (!qword_320E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320E78);
  }

  return result;
}

unint64_t sub_16F36C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300F88;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_16F3B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301008;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_16F404@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C18, &unk_26F830);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_8198(v2, &v14 - v9, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2616C0();
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

uint64_t DeterminateProgressViewStyle.init(_:cancelIconConfig:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = a1[2];
  v12 = a1[3];
  *a5 = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DeterminateProgressViewStyle(0);
  v14 = v13[5];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  v16 = a5 + v13[6];
  *v16 = a2;
  *(v16 + 1) = a3;
  v16[16] = a4 & 1;
  *(a5 + v13[7]) = v9;
  *(a5 + v13[8]) = v10;
  *(a5 + v13[9]) = v11;
  *(a5 + v13[10]) = v12;
  return result;
}

uint64_t DeterminateProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_320E80, &qword_27E388);
  __chkstk_darwin(v7 - 8);
  v9 = (&v20 - v8);
  v10 = sub_2EF0(&qword_320E88, &qword_27E390);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = COERCE_DOUBLE(sub_2623F0());
  if (v14)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v13;
  }

  *v9 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9[1] = v16;
  v17 = sub_2EF0(&qword_320E90, &qword_27E398);
  sub_16F9A0(v1, v9 + *(v17 + 44), v15);
  if (*(v1 + *(type metadata accessor for DeterminateProgressViewStyle(0) + 32)) == 1)
  {
    sub_17039C(type metadata accessor for DeterminateProgressViewStyle, v6);
    v18 = 0.7;
  }

  else
  {
    (*(v4 + 104))(v6, enum case for BlendMode.normal(_:), v3);
    v18 = 1.0;
  }

  (*(v4 + 32))(&v12[*(v10 + 36)], v6, v3);
  sub_22148(v9, v12, &qword_320E80, &qword_27E388);
  sub_22148(v12, a1, &qword_320E88, &qword_27E390);
  result = sub_2EF0(&qword_320E98, &qword_27E3A0);
  *(a1 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_16F9A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v51 = a2;
  v45 = sub_2EF0(&qword_3210C0, &qword_27E590);
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v43 - v6;
  v8 = sub_2EF0(&qword_3210C8, &qword_27E598);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DeterminateProgressViewStyle(0);
  v15 = *(a1 + *(v14 + 28));
  sub_261240();
  v16 = v98;
  v49 = v100;
  v50 = v99;
  v17 = v101;
  v48 = v102;
  v18 = v103;

  v19 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v46 = v20;
  v47 = v19;
  sub_1700B0(v52, a3);
  v94 = v52[10];
  v95 = v52[11];
  v96 = v52[12];
  v97 = v52[13];
  v90 = v52[6];
  v91 = v52[7];
  v92 = v52[8];
  v93 = v52[9];
  v86 = v52[2];
  v87 = v52[3];
  v88 = v52[4];
  v89 = v52[5];
  v84 = v52[0];
  v85 = v52[1];
  v21 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v104[10] = v94;
  v104[11] = v95;
  v104[12] = v96;
  v104[13] = v97;
  v104[6] = v90;
  v104[7] = v91;
  v104[8] = v92;
  v104[9] = v93;
  v104[2] = v86;
  v104[3] = v87;
  v104[4] = v88;
  v104[5] = v89;
  v104[0] = v84;
  v104[1] = v85;
  *&v105 = v21;
  *(&v105 + 1) = v22;
  v121 = v96;
  v122 = v97;
  v117 = v92;
  v118 = v93;
  v120 = v95;
  v119 = v94;
  v113 = v88;
  v114 = v89;
  v116 = v91;
  v115 = v90;
  v109 = v84;
  v110 = v85;
  v112 = v87;
  v111 = v86;
  v123 = v105;
  v106[10] = v94;
  v106[11] = v95;
  v106[12] = v96;
  v106[13] = v97;
  v106[6] = v90;
  v106[7] = v91;
  v106[8] = v92;
  v106[9] = v93;
  v106[2] = v86;
  v106[3] = v87;
  v106[4] = v88;
  v106[5] = v89;
  v106[0] = v84;
  v106[1] = v85;
  v107 = v21;
  v108 = v22;
  sub_8198(v104, &v53, &qword_3210D0, &qword_27E5A0);
  sub_8E80(v106, &qword_3210D0, &qword_27E5A0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v23 = a1 + *(v14 + 24);
  if (*(v23 + 16))
  {
    v24 = 1;
    v25 = v45;
  }

  else
  {
    v26 = *(v23 + 8);
    v27 = *(sub_2617E0() + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = sub_261DD0();
    (*(*(v29 - 8) + 104))(&v7[v27], v28, v29);
    *v7 = v26;
    *(v7 + 1) = v26;
    KeyPath = swift_getKeyPath();
    v31 = &v7[*(sub_2EF0(&qword_3210E8, &qword_27E5E8) + 36)];
    *v31 = KeyPath;
    v31[1] = v15;

    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v32 = v45;
    v33 = &v7[*(v45 + 36)];
    v34 = v85;
    *v33 = v84;
    *(v33 + 1) = v34;
    *(v33 + 2) = v86;
    sub_22148(v7, v13, &qword_3210C0, &qword_27E590);
    v24 = 0;
    v25 = v32;
  }

  (*(v5 + 56))(v13, v24, 1, v25);
  sub_8198(v13, v10, &qword_3210C8, &qword_27E598);
  *&v52[0] = v16;
  v36 = v49;
  v35 = v50;
  *(&v52[0] + 1) = __PAIR64__(v49, v50);
  *&v52[1] = v17;
  v37 = v48;
  *(&v52[1] + 1) = v48;
  *&v52[2] = v18;
  *(&v52[2] + 1) = v15;
  LOWORD(v52[3]) = 256;
  v44 = v13;
  v45 = v15;
  *(&v52[3] + 2) = v127;
  WORD3(v52[3]) = v128;
  v38 = v46;
  v39 = v47;
  *(&v52[3] + 1) = v47;
  *&v52[4] = v46;
  *(&v52[4] + 1) = 0x3FC999999999999ALL;
  v52[5] = v109;
  v52[6] = v110;
  v52[9] = v113;
  v52[10] = v114;
  v52[7] = v111;
  v52[8] = v112;
  v52[13] = v117;
  v52[14] = v118;
  v52[11] = v115;
  v52[12] = v116;
  v52[17] = v121;
  v52[18] = v122;
  v52[15] = v119;
  v52[16] = v120;
  v52[19] = v123;
  v52[20] = v124;
  v52[21] = v125;
  v52[22] = v126;
  v40 = v51;
  memcpy(v51, v52, 0x170uLL);
  v41 = sub_2EF0(&qword_3210D8, &qword_27E5A8);
  sub_8198(v10, v40 + *(v41 + 48), &qword_3210C8, &qword_27E598);
  sub_8198(v52, &v53, &qword_3210E0, &qword_27E5B0);
  sub_8E80(v44, &qword_3210C8, &qword_27E598);
  sub_8E80(v10, &qword_3210C8, &qword_27E598);
  v53 = v16;
  v54 = v35;
  v55 = v36;
  v56 = v17;
  v57 = v37;
  v58 = v18;
  v59 = v45;
  v60 = 256;
  v61 = v127;
  v62 = v128;
  v63 = v39;
  v64 = v38;
  v65 = 0x3FC999999999999ALL;
  v66 = v109;
  v67 = v110;
  v70 = v113;
  v71 = v114;
  v68 = v111;
  v69 = v112;
  v74 = v117;
  v75 = v118;
  v72 = v115;
  v73 = v116;
  v78 = v121;
  v79 = v122;
  v76 = v119;
  v77 = v120;
  v80 = v123;
  v81 = v124;
  v82 = v125;
  v83 = v126;
  return sub_8E80(&v53, &qword_3210E0, &qword_27E5B0);
}

void sub_1700B0(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_2616C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v33 = *(v2 + *(type metadata accessor for DeterminateProgressViewStyle(0) + 28));
  v12 = 0.0;
  sub_261240();

  v13 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v31 = v14;
  v32 = v13;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_16F404(v11);
  v15 = enum case for LayoutDirection.leftToRight(_:);
  v30 = *(v6 + 104);
  v30(v8, enum case for LayoutDirection.leftToRight(_:), v5);
  v16 = sub_2616B0();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  if (v16)
  {
    v18 = -1.57079633;
  }

  else
  {
    v18 = -4.71238898;
  }

  sub_263720();
  v20 = v19;
  v22 = v21;
  sub_16F404(v11);
  v30(v8, v15, v5);
  v23 = sub_2616B0();
  v17(v8, v5);
  v17(v11, v5);
  if ((v23 & 1) == 0)
  {
    v12 = 3.14159265;
  }

  sub_263720();
  *(a1 + 8) = a2;
  v24 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v24;
  v25 = v38;
  *(a1 + 88) = v37;
  *a1 = 0;
  v26 = v33;
  *(a1 + 48) = v36;
  *(a1 + 56) = v26;
  *(a1 + 64) = 256;
  v27 = v31;
  *(a1 + 72) = v32;
  *(a1 + 80) = v27;
  *(a1 + 104) = v25;
  *(a1 + 120) = v39;
  *(a1 + 136) = v18;
  *(a1 + 144) = v20;
  *(a1 + 152) = v22;
  *(a1 + 160) = v12;
  *(a1 + 168) = xmmword_27C4B0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v28;
  *(a1 + 200) = v29;
  *(a1 + 208) = xmmword_27C4B0;
}

uint64_t sub_17039C@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_8198(v2 + *(v13 + 20), v12, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_263640();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t InDeterminateProgressViewStyle.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = a1[3];
  sub_2631D0();
  *a2 = v10;
  *(a2 + 8) = v11;
  v7 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v8 = v7[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v7[6]) = v3;
  *(a2 + v7[7]) = v4;
  *(a2 + v7[8]) = v5;
  *(a2 + v7[9]) = v6;
  return result;
}

uint64_t sub_17068C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_263640();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v5 = v4 - 8;
  v39 = *(v4 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v4);
  v42 = sub_2EF0(&qword_321038, &qword_27E540);
  __chkstk_darwin(v42);
  v8 = &v36[-v7];
  v9 = *(v1 + *(v5 + 32));
  sub_261240();
  v43 = v9;

  v41 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v40 = v10;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v12 = *(v2 + 8);
  LOBYTE(v53[0]) = *v2;
  v11 = v53[0];
  v54 = v12;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  v37 = v51;
  sub_263720();
  v14 = v13;
  v16 = v15;
  sub_263600();
  sub_2635A0();

  v38 = sub_2635C0();

  LOBYTE(v53[0]) = v11;
  v54 = v12;
  sub_2631E0();
  v17 = v2;
  v18 = v51;
  sub_171CF0(v2, &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v20 = swift_allocObject();
  sub_171E88(&v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19);
  if (*(v17 + *(v5 + 36)) == 1)
  {
    v21 = v45;
    sub_17039C(type metadata accessor for InDeterminateProgressViewStyle, v45);
    v22 = 0.7;
    v23 = v46;
    v24 = v44;
  }

  else
  {
    v25 = v44;
    v21 = v45;
    v26 = v46;
    (*(v44 + 104))(v45, enum case for BlendMode.normal(_:), v46);
    v22 = 1.0;
    v23 = v26;
    v24 = v25;
  }

  if (v37)
  {
    v27 = -6.28318531;
  }

  else
  {
    v27 = 0.0;
  }

  (*(v24 + 32))(&v8[*(v42 + 36)], v21, v23);
  v28 = v55;
  v29 = v56;
  *v8 = xmmword_27E310;
  *(v8 + 1) = v28;
  *(v8 + 2) = v29;
  v30 = v43;
  *(v8 + 6) = v57;
  *(v8 + 7) = v30;
  *(v8 + 32) = 256;
  *(v8 + 66) = v51;
  *(v8 + 35) = v52;
  v31 = v40;
  *(v8 + 9) = v41;
  *(v8 + 10) = v31;
  *(v8 + 11) = 0x3FC999999999999ALL;
  v32 = v48;
  v33 = v50;
  *(v8 + 7) = v49;
  *(v8 + 8) = v33;
  *(v8 + 6) = v32;
  *(v8 + 18) = v27;
  *(v8 + 19) = v14;
  *(v8 + 20) = v16;
  *(v8 + 21) = v38;
  v8[176] = v18;
  *(v8 + 177) = v53[0];
  *(v8 + 45) = *(v53 + 3);
  *(v8 + 23) = sub_171EEC;
  *(v8 + 24) = v20;
  *(v8 + 25) = 0;
  *(v8 + 26) = 0;
  v34 = v47;
  sub_22148(v8, v47, &qword_321038, &qword_27E540);
  result = sub_2EF0(&qword_321028, &qword_27E538);
  *(v34 + *(result + 36)) = v22;
  return result;
}

double sub_170B6C(char *a1)
{

  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  sub_2631F0();

  return result;
}

uint64_t ProgressViewModel.init(foregroundColor:style:size:lineWidth:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_170C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for InDeterminateProgressViewStyle(0);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = a1[2];
  v13 = a1[3];
  sub_2612D0();
  v18 = 1;
  sub_2631D0();
  v14 = v20;
  *v5 = v19;
  *(v5 + 1) = v14;
  v15 = v3[5];
  *&v5[v15] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[6]] = v10;
  v5[v3[7]] = v11;
  *&v5[v3[8]] = v12;
  *&v5[v3[9]] = v13;
  sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
  sub_171C3C();

  sub_2629E0();
  sub_171C94(v5);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_170EDC()
{
  result = qword_320EA0;
  if (!qword_320EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320EA0);
  }

  return result;
}

uint64_t sub_170F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_319458, &unk_26CF30);
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_17107C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_319458, &unk_26CF30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317878, &unk_27E490);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_17119C(uint64_t a1)
{
  sub_171294(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
  if (v1 <= 0x3F)
  {
    sub_171294(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v2 <= 0x3F)
    {
      sub_1712E8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_171294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1712E8(uint64_t a1)
{
  if (!qword_320F10)
  {
    sub_2F9C(&unk_320F18, &unk_27E4C0);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_320F10);
    }
  }
}

uint64_t sub_171360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317878, &unk_27E490);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_171440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317878, &unk_27E490);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_171508(uint64_t a1)
{
  sub_1715CC();
  if (v1 <= 0x3F)
  {
    sub_171294(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1715CC()
{
  if (!qword_320FC8)
  {
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_320FC8);
    }
  }
}

uint64_t sub_17161C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_171664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1716C8()
{
  result = qword_321008;
  if (!qword_321008)
  {
    sub_2F9C(&qword_320E98, &qword_27E3A0);
    sub_171754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321008);
  }

  return result;
}

unint64_t sub_171754()
{
  result = qword_321010;
  if (!qword_321010)
  {
    sub_2F9C(&qword_320E88, &qword_27E390);
    sub_8E38(&qword_321018, &qword_320E80, &qword_27E388, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321010);
  }

  return result;
}

unint64_t sub_171810()
{
  result = qword_321020;
  if (!qword_321020)
  {
    sub_2F9C(&qword_321028, &qword_27E538);
    sub_17189C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321020);
  }

  return result;
}

unint64_t sub_17189C()
{
  result = qword_321030;
  if (!qword_321030)
  {
    sub_2F9C(&qword_321038, &qword_27E540);
    sub_171928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321030);
  }

  return result;
}

unint64_t sub_171928()
{
  result = qword_321040;
  if (!qword_321040)
  {
    sub_2F9C(&qword_321048, &qword_27E548);
    sub_1719B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321040);
  }

  return result;
}

unint64_t sub_1719B4()
{
  result = qword_321050;
  if (!qword_321050)
  {
    sub_2F9C(&qword_321058, &qword_27E550);
    sub_171A6C();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321050);
  }

  return result;
}

unint64_t sub_171A6C()
{
  result = qword_321060;
  if (!qword_321060)
  {
    sub_2F9C(&qword_321068, &qword_27E558);
    sub_171AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321060);
  }

  return result;
}

unint64_t sub_171AF8()
{
  result = qword_321070;
  if (!qword_321070)
  {
    sub_2F9C(&qword_321078, &qword_27E560);
    sub_171B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321070);
  }

  return result;
}

unint64_t sub_171B84()
{
  result = qword_321080;
  if (!qword_321080)
  {
    sub_2F9C(&qword_321088, &qword_27E568);
    sub_8E38(&qword_321090, &qword_321098, &unk_27E570, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321080);
  }

  return result;
}

unint64_t sub_171C3C()
{
  result = qword_3210B0;
  if (!qword_3210B0)
  {
    type metadata accessor for InDeterminateProgressViewStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3210B0);
  }

  return result;
}

uint64_t sub_171C94(uint64_t a1)
{
  v2 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_171CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_171D54()
{
  v1 = type metadata accessor for InDeterminateProgressViewStyle(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_263640();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_171E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InDeterminateProgressViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_171EEC()
{
  v1 = *(type metadata accessor for InDeterminateProgressViewStyle(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_170B6C(v2);
}

uint64_t sub_171F54@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for YearInReviewErrorView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_174E90(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t YearInReviewErrorView.init(retry:localizedYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *(type metadata accessor for YearInReviewErrorView(0) + 24);
  *(a5 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t type metadata accessor for YearInReviewErrorView(uint64_t a1)
{
  result = qword_3211D0;
  if (!qword_3211D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YearInReviewErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v81 = type metadata accessor for ToolbarButtonStyle(0);
  __chkstk_darwin(v81);
  v80 = (&v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2EF0(&qword_3210F0, &qword_27E620);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_2EF0(&qword_3210F8, &qword_27E628);
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  __chkstk_darwin(v12);
  v83 = &v68 - v14;
  v69 = sub_2EF0(&qword_321100, &qword_27E630);
  __chkstk_darwin(v69);
  v16 = &v68 - v15;
  v72 = sub_2EF0(&qword_321108, &qword_27E638);
  __chkstk_darwin(v72);
  v74 = &v68 - v17;
  v75 = sub_2EF0(&qword_321110, &qword_27E640);
  __chkstk_darwin(v75);
  v76 = &v68 - v18;
  v19 = sub_2EF0(&qword_321118, &qword_27E648);
  v78 = *(v19 - 8);
  v79 = v19;
  __chkstk_darwin(v19);
  v77 = &v68 - v20;
  *v11 = sub_261E50();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = sub_2EF0(&qword_321120, &unk_27E650);
  sub_172A74(v1, &v11[*(v21 + 44)]);
  v22 = sub_2624F0();
  v73 = v1;
  sub_171F54(v8);
  sub_174E90(v8, v5, type metadata accessor for SizeConstants.Environment);
  sub_174360(v5, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v23 = &v11[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v9) = sub_2624C0();
  *(inited + 32) = v9;
  v29 = sub_2624E0();
  *(inited + 33) = v29;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v9)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v29)
  {
    sub_2624D0();
  }

  sub_263550();
  sub_174068();
  sub_262D00();
  sub_8E80(v11, &qword_3210F0, &qword_27E620);
  v30 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v32 = v31;
  v33 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v33)
  {
    v33 = sub_262FE0();
  }

  v34 = v33;
  v35 = sub_262500();
  (*(v71 + 32))(v16, v83, v70);
  v36 = &v16[*(v69 + 36)];
  *v36 = v34;
  v36[8] = v35;
  *(v36 + 2) = v30;
  *(v36 + 3) = v32;
  v37 = sub_263550();
  v39 = v38;
  v40 = v16;
  v42 = *(v73 + 2);
  v41 = *(v73 + 3);

  v43 = sub_2624F0();
  sub_171F54(v8);
  sub_174E90(v8, v5, type metadata accessor for SizeConstants.Environment);
  sub_174360(v5, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LOBYTE(v90[0]) = 0;
  *&v85 = v42;
  *(&v85 + 1) = v41;
  LOBYTE(v86) = v43;
  *(&v86 + 1) = v44;
  *&v87 = v46;
  *(&v87 + 1) = v48;
  *&v88 = v50;
  BYTE8(v88) = 0;
  *&v89 = v37;
  *(&v89 + 1) = v39;
  v52 = v74;
  sub_22148(v40, v74, &qword_321100, &qword_27E630);
  v53 = (v52 + *(v72 + 36));
  v54 = v88;
  v53[2] = v87;
  v53[3] = v54;
  v53[4] = v89;
  v55 = v86;
  *v53 = v85;
  v53[1] = v55;
  v90[0] = v42;
  v90[1] = v41;
  v91 = v43;
  v92 = v45;
  v93 = v47;
  v94 = v49;
  v95 = v51;
  v96 = 0;
  v97 = v37;
  v98 = v39;
  sub_8198(&v85, &v84, &qword_321140, &qword_27E668);
  sub_8E80(v90, &qword_321140, &qword_27E668);
  v56 = v76;
  sub_22148(v52, v76, &qword_321108, &qword_27E638);
  KeyPath = swift_getKeyPath();
  v58 = v80;
  *v80 = KeyPath;
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  sub_174128();
  sub_175050(&qword_321168, type metadata accessor for ToolbarButtonStyle, &protocol conformance descriptor for ToolbarButtonStyle);
  v59 = v77;
  sub_262A60();
  sub_174360(v58, type metadata accessor for ToolbarButtonStyle);
  sub_8E80(v56, &qword_321110, &qword_27E640);
  v60 = swift_getKeyPath();
  v61 = sub_2EF0(&qword_321170, &unk_27E6A0);
  v62 = v82;
  v63 = (v82 + *(v61 + 36));
  v64 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v65 = enum case for ColorScheme.dark(_:);
  v66 = sub_261180();
  (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
  *v63 = v60;
  return (*(v78 + 32))(v62, v59, v79);
}

uint64_t sub_172A74@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v146 = a1;
  v155 = a2;
  v152 = sub_261E40();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for YearInReviewErrorView(0);
  v143 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v144 = v4;
  v145 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2EF0(&qword_321218, &qword_27E728);
  __chkstk_darwin(v147);
  v148 = &v139 - v5;
  v149 = sub_2EF0(&qword_321220, &qword_27E730);
  __chkstk_darwin(v149);
  v154 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v139 - v8;
  v182 = sub_2EF0(&qword_321228, &qword_27E738);
  __chkstk_darwin(v182);
  v169 = &v139 - v9;
  v140 = sub_2EF0(&qword_321230, &qword_27E740);
  __chkstk_darwin(v140);
  v153 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v178 = &v139 - v12;
  v183 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v183);
  v168 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v180 = &v139 - v15;
  v172 = sub_261690();
  v191 = *(v172 - 8);
  __chkstk_darwin(v172);
  v189 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v188 = &v139 - v18;
  v181 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v181);
  v167 = &v139 - v19;
  v20 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v20 - 8);
  v176 = &v139 - v21;
  v22 = sub_264010();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_263FA0();
  v26 = *(v187 - 8);
  __chkstk_darwin(v187);
  v28 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_260BD0();
  __chkstk_darwin(v29 - 8);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_2EF0(&qword_318470, &qword_26FBB0);
  __chkstk_darwin(v184);
  v33 = &v139 - v32;
  v34 = sub_2EF0(&qword_321238, &qword_27E748);
  v174 = *(v34 - 8);
  v175 = v34;
  __chkstk_darwin(v34);
  v36 = &v139 - v35;
  v173 = sub_2EF0(&qword_321240, &qword_27E750);
  v171 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v139 - v37;
  v185 = sub_2EF0(&qword_321248, &qword_27E758);
  __chkstk_darwin(v185);
  v186 = &v139 - v38;
  v142 = sub_2EF0(&qword_321250, &qword_27E760);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v177 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v139 - v41;
  sub_263F90();
  v43 = *(v23 + 104);
  v159 = enum case for LocalizerLookupStrategy.default(_:);
  v160 = v23 + 104;
  v158 = v43;
  v43(v25);
  sub_260B80();
  v44 = *(v23 + 8);
  v164 = v25;
  v166 = v22;
  v45 = v22;
  v46 = v184;
  v165 = v23 + 8;
  v157 = v44;
  v44(v25, v45);
  v47 = *(v26 + 8);
  v162 = v28;
  v163 = v26 + 8;
  v156 = v47;
  v47(v28, v187);
  v161 = v31;
  sub_260B10();
  v48 = sub_262690();
  KeyPath = swift_getKeyPath();
  v50 = &v33[*(v46 + 36)];
  *v50 = KeyPath;
  v50[1] = v48;
  v51 = sub_93534();
  sub_262D70();
  sub_8E80(v33, &qword_318470, &qword_26FBB0);
  v52 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v190 = v42;
  if (v52)
  {
    v53 = sub_2625C0();
    v54 = v176;
    (*(*(v53 - 8) + 56))(v176, 1, 1, v53);
  }

  else
  {
    v55 = enum case for Font.Design.serif (_:);
    v56 = sub_2625C0();
    v57 = *(v56 - 8);
    v54 = v176;
    (*(v57 + 104))(v176, v55, v56);
    (*(v57 + 56))(v54, 0, 1, v56);
  }

  v192 = v46;
  v193 = v51;
  swift_getOpaqueTypeConformance2();
  v58 = v170;
  v59 = v175;
  sub_262A10();
  sub_8E80(v54, &qword_318458, &unk_26B270);
  (*(v174 + 8))(v36, v59);
  v60 = swift_getKeyPath();
  v61 = v186;
  (*(v171 + 32))(v186, v58, v173);
  v62 = &v61[*(v185 + 36)];
  *v62 = v60;
  *(v62 + 1) = 3;
  v62[16] = 0;
  v63 = v191;
  v64 = v191 + 104;
  v65 = *(v191 + 104);
  v66 = v188;
  LODWORD(v175) = enum case for DynamicTypeSize.small(_:);
  v67 = v172;
  (v65)(v188);
  v68 = v189;
  LODWORD(v174) = enum case for DynamicTypeSize.accessibility1(_:);
  v176 = v65;
  (v65)(v189);
  v69 = sub_175050(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  v71 = v183;
  if (result)
  {
    v171 = v64;
    v173 = v69;
    v72 = *(v63 + 32);
    v73 = v180;
    v72(v180, v66, v67);
    v72((v73 + *(v71 + 48)), v68, v67);
    v74 = v168;
    sub_8198(v73, v168, &qword_3174E0, &qword_26B310);
    v75 = *(v71 + 48);
    v76 = v167;
    v72(v167, v74, v67);
    v77 = v67;
    v78 = *(v63 + 8);
    v191 = v63 + 8;
    v78(v74 + v75, v77);
    sub_13CF00(v73, v74);
    v79 = v76 + *(v181 + 36);
    v80 = v74 + *(v71 + 48);
    v139 = v72;
    v72(v79, v80, v77);
    v170 = v78;
    v78(v74, v77);
    sub_174A40();
    v81 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v82 = v186;
    sub_262B70();
    sub_8E80(v76, &qword_3174E8, &qword_269970);
    sub_8E80(v82, &qword_321248, &qword_27E758);
    v83 = v162;
    sub_263F90();
    v84 = v164;
    v85 = v166;
    v158(v164, v159, v166);
    sub_260B80();
    v157(v84, v85);
    v86 = v83;
    v87 = v188;
    v156(v86, v187);
    v88 = v169;
    sub_260B10();
    v89 = sub_262580();
    v90 = swift_getKeyPath();
    v91 = (v88 + *(v184 + 36));
    *v91 = v90;
    v91[1] = v89;
    v92 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v93 = swift_getKeyPath();
    v94 = (v88 + *(sub_2EF0(&qword_318460, &qword_26FBA0) + 36));
    *v94 = v93;
    v94[1] = v92;
    v95 = v189;
    v96 = swift_getKeyPath();
    v97 = v88 + *(sub_2EF0(&qword_321260, &qword_27E840) + 36);
    *v97 = v96;
    *(v97 + 8) = 1;
    v98 = swift_getKeyPath();
    v99 = v88 + *(v182 + 36);
    *v99 = v98;
    *(v99 + 8) = 3;
    *(v99 + 16) = 0;
    v100 = v176;
    (v176)(v87, v175, v77);
    (v100)(v95, v174, v77);
    result = sub_264380();
    if (result)
    {
      v101 = v180;
      v188 = v81;
      v102 = v139;
      v139(v180, v87, v77);
      v103 = v183;
      v102(v101 + *(v183 + 48), v95, v77);
      sub_8198(v101, v74, &qword_3174E0, &qword_26B310);
      v104 = *(v103 + 48);
      v102(v76, v74, v77);
      v105 = v74 + v104;
      v106 = v170;
      (v170)(v105, v77);
      sub_13CF00(v101, v74);
      v102(v76 + *(v181 + 36), (v74 + *(v103 + 48)), v77);
      v106(v74, v77);
      sub_174B88();
      v107 = v178;
      sub_262B70();
      sub_8E80(v76, &qword_3174E8, &qword_269970);
      sub_8E80(v88, &qword_321228, &qword_27E738);
      v108 = *(v140 + 36);
      v109 = enum case for BlendMode.plusLighter(_:);
      v110 = sub_263640();
      (*(*(v110 - 8) + 104))(v107 + v108, v109, v110);
      v111 = v146;
      v112 = v145;
      sub_174CF8(v146, v145);
      v113 = (*(v143 + 80) + 16) & ~*(v143 + 80);
      v114 = swift_allocObject();
      v115 = sub_174E90(v112, v114 + v113, type metadata accessor for YearInReviewErrorView);
      __chkstk_darwin(v115);
      *(&v139 - 2) = v111;
      sub_260B00();
      sub_175050(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
      v116 = v148;
      sub_263230();
      v117 = (v116 + *(v147 + 36));
      v118 = *(sub_2EF0(&qword_321278, &qword_27E848) + 28);
      v119 = enum case for ControlSize.regular(_:);
      v120 = sub_261190();
      (*(*(v120 - 8) + 104))(v117 + v118, v119, v120);
      *v117 = swift_getKeyPath();
      v121 = v150;
      sub_261E30();
      sub_174F6C();
      sub_175050(&qword_3212A0, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
      v122 = v179;
      v123 = v152;
      sub_262A50();
      (*(v151 + 8))(v121, v123);
      sub_8E80(v116, &qword_321218, &qword_27E728);
      v124 = v122;
      v125 = (v122 + *(sub_2EF0(&qword_3212A8, &unk_27E888) + 36));
      sub_2EF0(&qword_31BC20, &unk_271B10);
      sub_261850();
      *v125 = swift_getKeyPath();
      v126 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      v127 = swift_getKeyPath();
      v128 = (v122 + *(v149 + 36));
      *v128 = v127;
      v128[1] = v126;
      v129 = v141;
      v130 = *(v141 + 16);
      v131 = v177;
      v132 = v142;
      v130(v177, v190, v142);
      v133 = v153;
      sub_8198(v107, v153, &qword_321230, &qword_27E740);
      v134 = v154;
      sub_8198(v124, v154, &qword_321220, &qword_27E730);
      v135 = v155;
      *v155 = 0;
      *(v135 + 8) = 1;
      v136 = sub_2EF0(&qword_3212B0, &unk_27E8F8);
      v130(v135 + v136[12], v131, v132);
      sub_8198(v133, v135 + v136[16], &qword_321230, &qword_27E740);
      sub_8198(v134, v135 + v136[20], &qword_321220, &qword_27E730);
      v137 = v135 + v136[24];
      *v137 = 0;
      v137[8] = 1;
      sub_8E80(v179, &qword_321220, &qword_27E730);
      sub_8E80(v178, &qword_321230, &qword_27E740);
      v138 = *(v129 + 8);
      v138(v190, v132);
      sub_8E80(v134, &qword_321220, &qword_27E730);
      sub_8E80(v133, &qword_321230, &qword_27E740);
      return (v138)(v177, v132);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_174068()
{
  result = qword_321128;
  if (!qword_321128)
  {
    sub_2F9C(&qword_3210F0, &qword_27E620);
    sub_8E38(&qword_321130, &qword_321138, &qword_27E660, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321128);
  }

  return result;
}

unint64_t sub_174128()
{
  result = qword_321148;
  if (!qword_321148)
  {
    sub_2F9C(&qword_321110, &qword_27E640);
    sub_1741B4();
    sub_1670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321148);
  }

  return result;
}

unint64_t sub_1741B4()
{
  result = qword_321150;
  if (!qword_321150)
  {
    sub_2F9C(&qword_321108, &qword_27E638);
    sub_17426C();
    sub_8E38(&qword_321160, &qword_321140, &qword_27E668, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321150);
  }

  return result;
}

unint64_t sub_17426C()
{
  result = qword_321158;
  if (!qword_321158)
  {
    sub_2F9C(&qword_321100, &qword_27E630);
    sub_2F9C(&qword_3210F0, &qword_27E620);
    sub_174068();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31F858, &qword_31F860, &qword_27AE68, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321158);
  }

  return result;
}

uint64_t sub_174360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1743DC()
{
  v0 = sub_264010();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260BD0();
  __chkstk_darwin(v8 - 8);
  sub_263F90();
  (*(v1 + 104))(v3, enum case for LocalizerLookupStrategy.default(_:), v0);
  sub_260B80();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return sub_260B10();
}

uint64_t sub_174614(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1746E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_174794(uint64_t a1)
{
  sub_16D28();
  if (v1 <= 0x3F)
  {
    sub_3E754(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_174824()
{
  result = qword_321210;
  if (!qword_321210)
  {
    sub_2F9C(&qword_321170, &unk_27E6A0);
    sub_2F9C(&qword_321110, &qword_27E640);
    type metadata accessor for ToolbarButtonStyle(255);
    sub_174128();
    sub_175050(&qword_321168, type metadata accessor for ToolbarButtonStyle, &protocol conformance descriptor for ToolbarButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321210);
  }

  return result;
}

uint64_t sub_174970(uint64_t a1)
{
  v2 = sub_261860();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_261AF0();
}

unint64_t sub_174A40()
{
  result = qword_321258;
  if (!qword_321258)
  {
    sub_2F9C(&qword_321248, &qword_27E758);
    sub_2F9C(&qword_321238, &qword_27E748);
    sub_2F9C(&qword_318470, &qword_26FBB0);
    sub_93534();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321258);
  }

  return result;
}

unint64_t sub_174B88()
{
  result = qword_321268;
  if (!qword_321268)
  {
    sub_2F9C(&qword_321228, &qword_27E738);
    sub_174C40();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321268);
  }

  return result;
}

unint64_t sub_174C40()
{
  result = qword_321270;
  if (!qword_321270)
  {
    sub_2F9C(&qword_321260, &qword_27E840);
    sub_9347C();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321270);
  }

  return result;
}

uint64_t sub_174CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewErrorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174D5C()
{
  v1 = (type metadata accessor for YearInReviewErrorView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_174E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_174F6C()
{
  result = qword_321280;
  if (!qword_321280)
  {
    sub_2F9C(&qword_321218, &qword_27E728);
    sub_8E38(&qword_321288, &qword_321290, &qword_27E880, &protocol conformance descriptor for Button<A>);
    sub_8E38(&qword_321298, &qword_321278, &qword_27E848, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321280);
  }

  return result;
}

uint64_t sub_175050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1750C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C60();
  *a1 = result;
  return result;
}

uint64_t NothingToReviewFrameViewModel.init(localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v7 = sub_260550();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1751BC@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v73 = sub_260290();
  v1 = *(v73 - 8);
  __chkstk_darwin(v73);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v59 - v5;
  v7 = sub_264410();
  v59 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  sub_2643A0();
  sub_260260();
  v14 = *(v8 + 16);
  v77 = v8 + 16;
  v79 = v14;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = ObjCClassFromMetadata;
  v16 = objc_opt_self();
  v76 = v16;
  v17 = [v16 bundleForClass:ObjCClassFromMetadata];
  v74 = *(v1 + 16);
  v82 = v1 + 16;
  v70 = v3;
  v18 = v73;
  v74(v3, v6, v73);
  v19 = sub_264490();
  v67 = v20;
  v68 = v19;
  v80 = *(v1 + 8);
  v80(v6, v18);
  v75 = v1 + 8;
  v21 = *(v8 + 8);
  v22 = v59;
  v21(v13, v59);
  v78 = v21;
  v71 = v8 + 8;
  sub_2643A0();
  sub_260260();
  v61 = v10;
  v79(v10, v13, v22);
  v23 = [v16 bundleForClass:v81];
  v24 = v70;
  v25 = v73;
  v74(v70, v6, v73);
  v26 = sub_264490();
  v64 = v27;
  v65 = v26;
  v80(v6, v25);
  v21(v13, v22);
  sub_2EF0(&qword_320C98, &unk_27EAF0);
  v28 = type metadata accessor for BulletPointStack.Bullet(0);
  v29 = *(v28 - 8);
  v72 = v28 - 8;
  v62 = *(v29 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v63 = v31;
  *(v31 + 16) = xmmword_269100;
  v32 = (v31 + v30);
  v60 = 0x80000000002931F0;
  sub_2643A0();
  v33 = v6;
  sub_260260();
  v34 = v61;
  v79(v61, v13, v22);
  v35 = [v76 bundleForClass:v81];
  v36 = v6;
  v37 = v74;
  v74(v24, v36, v25);
  v38 = sub_264490();
  v40 = v39;
  v80(v33, v25);
  v78(v13, v22);
  v41 = sub_1759A8(v66);
  v42 = v60;
  *v32 = 0xD000000000000010;
  v32[1] = v42;
  v32[2] = v38;
  v32[3] = v40;
  v32[4] = v41;
  v32[5] = v43;
  sub_2601D0();
  v44 = (v32 + v62);
  sub_2643A0();
  sub_260260();
  v45 = v22;
  v79(v34, v13, v22);
  v46 = [v76 bundleForClass:v81];
  v47 = v70;
  v48 = v73;
  v37(v70, v33, v73);
  v66 = sub_264490();
  v62 = v49;
  v80(v33, v48);
  v78(v13, v45);
  sub_2643A0();
  sub_260260();
  v79(v34, v13, v45);
  v50 = [v76 bundleForClass:v81];
  v74(v47, v33, v48);
  v51 = sub_264490();
  v53 = v52;
  v80(v33, v48);
  v78(v13, v45);
  *v44 = 0x7261646E656C6163;
  v44[1] = 0xE800000000000000;
  v54 = v62;
  v44[2] = v66;
  v44[3] = v54;
  v44[4] = v51;
  v44[5] = v53;
  result = sub_2601D0();
  v56 = v69;
  v57 = v67;
  *v69 = v68;
  v56[1] = v57;
  v58 = v64;
  v56[2] = v65;
  v56[3] = v58;
  v56[4] = v63;
  return result;
}

uint64_t sub_1759A8(uint64_t *a1)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v23[-v14];
  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  sub_264490();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  sub_2EF0(&qword_316420, &qword_2681A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267D30;
  v20 = *a1;
  v19 = a1[1];
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_6C7C8();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;

  v21 = sub_264430();

  return v21;
}

uint64_t NothingToReviewFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NothingToReviewFrame(0) + 20);
  v4 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_175DD4(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_175DD4(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_175DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NothingToReviewFrame.init(model:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v4)
  {
    v4 = sub_262FE0();
  }

  v5 = v4;
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *a2 = v5;
  v7 = enum case for ColorScheme.dark(_:);
  v8 = sub_261180();
  v9 = *(v8 - 8);
  (*(v9 + 104))(&a2[v6], v7, v8);
  (*(v9 + 56))(&a2[v6], 0, 1, v8);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for NothingToReviewFrame(0);
  return sub_176A88(a1, &a2[*(v10 + 20)], type metadata accessor for NothingToReviewFrameViewModel);
}

uint64_t NothingToReviewFrame.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_261E50();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_2EF0(&qword_3212B8, &qword_27E908);
  sub_17603C(v2, (a2 + *(v4 + 44)));
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_2EF0(&qword_3212C0, &unk_27E940) + 36));
  v7 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_261180();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  return result;
}

double sub_17603C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for BulletPointStack(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2EF0(&qword_321410, &qword_27EA30);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  v18 = (a1 + *(type metadata accessor for NothingToReviewFrame(0) + 20));
  v20 = *v18;
  v19 = v18[1];

  sub_1751BC(v31);
  *v7 = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v5[7];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v5[8];
  *(v7 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v23 = v7 + v5[9];
  v24 = v31[1];
  *v23 = v31[0];
  *(v23 + 1) = v24;
  *(v23 + 4) = v32;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_176A88(v7, v14, type metadata accessor for BulletPointStack);
  v25 = &v14[*(v9 + 44)];
  v26 = v38;
  *(v25 + 4) = v37;
  *(v25 + 5) = v26;
  *(v25 + 6) = v39;
  v27 = v34;
  *v25 = v33;
  *(v25 + 1) = v27;
  v28 = v36;
  *(v25 + 2) = v35;
  *(v25 + 3) = v28;
  sub_176AF0(v14, v17);
  sub_176B60(v17, v11);
  *a2 = v20;
  a2[1] = v19;
  v29 = sub_2EF0(qword_321418, &qword_27EAE8);
  sub_176B60(v11, a2 + *(v29 + 48));

  sub_176BD0(v17);
  sub_176BD0(v11);

  return result;
}