uint64_t LegacyPDFCoverEffect.init(cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for LegacyPDFCoverEffect(0) + 20);
  *(a1 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  return result;
}

uint64_t type metadata accessor for LegacyPDFCoverEffect(uint64_t a1)
{
  result = qword_319A48;
  if (!qword_319A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyPDFCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for LegacyPDFCoverEffect(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_6F53C(v3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_6F5A4(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a2 = sub_6F608;
  a2[1] = v15;
  return result;
}

uint64_t sub_6F4BC@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_261420();
  v8 = v7;
  v10 = v9;
  *a4 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a4[1] = v11;
  v12 = sub_2EF0(&qword_319A90, &qword_26D880);
  return sub_6F60C(a2, a3, a4 + *(v12 + 44), v8, v10);
}

uint64_t sub_6F53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyPDFCoverEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyPDFCoverEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v56 = a2;
  v59 = a3;
  v57 = sub_2EF0(&qword_319A98, &qword_26D888) - 8;
  __chkstk_darwin(v57);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = v50 - v10;
  v11 = sub_2EF0(&qword_319AA0, &qword_26D890);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v55 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = v50 - v15;
  __chkstk_darwin(v16);
  v18 = v50 - v17;
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v22 = *a1;
  v23 = sub_2617E0();
  v24 = *(v23 + 20);
  v52 = v23;
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_261DD0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v50[2] = v27 + 104;
  v51 = v25;
  v53 = v26;
  v28(&v21[v24], v25, v26);
  *v21 = v22;
  *(v21 + 1) = v22;
  v29 = sub_2EF0(&qword_319AA8, &qword_26D898);
  *&v21[*(v29 + 56)] = 256;
  *&v50[1] = a5;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v30 = sub_2EF0(&qword_319AB0, &qword_26D8A0);
  v31 = &v21[*(v30 + 36)];
  v32 = v62;
  *v31 = v61;
  *(v31 + 1) = v32;
  *(v31 + 2) = v63;
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.12];
  v33 = sub_262EE0();
  v34 = &v21[*(v12 + 44)];
  *v34 = v33;
  v34[1] = a4 / 618.0 * 20.0;
  v34[2] = 0.0;
  v34[3] = a4 / 618.0 * 6.0;
  v28(&v18[*(v23 + 20)], v25, v26);
  *v18 = v22;
  *(v18 + 1) = v22;
  *&v18[*(v29 + 56)] = 256;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v35 = &v18[*(v30 + 36)];
  v36 = v65;
  *v35 = v64;
  *(v35 + 1) = v36;
  *(v35 + 2) = v66;
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.08];
  v37 = sub_262EE0();
  v38 = &v18[*(v12 + 44)];
  *v38 = v37;
  v38[1] = a4 / 618.0 * 4.0;
  v38[2] = 0.0;
  v38[3] = a4 / 618.0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v39 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v40 = v54;
  (*(*(v39 - 8) + 16))(v54, v56, v39);
  v41 = (v40 + *(sub_2EF0(&qword_319AB8, &unk_26D8A8) + 36));
  v42 = v68;
  *v41 = v67;
  v41[1] = v42;
  v41[2] = v69;
  v43 = (v40 + *(v57 + 44));
  v28(&v43[*(v52 + 20)], v51, v53);
  *v43 = v22;
  *(v43 + 1) = v22;
  *&v43[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v44 = v60;
  sub_8198(v21, v60, &qword_319AA0, &qword_26D890);
  v45 = v55;
  sub_8198(v18, v55, &qword_319AA0, &qword_26D890);
  v46 = v58;
  sub_8198(v40, v58, &qword_319A98, &qword_26D888);
  v47 = v59;
  sub_8198(v44, v59, &qword_319AA0, &qword_26D890);
  v48 = sub_2EF0(&qword_319AC0, &qword_26D8B8);
  sub_8198(v45, v47 + *(v48 + 48), &qword_319AA0, &qword_26D890);
  sub_8198(v46, v47 + *(v48 + 64), &qword_319A98, &qword_26D888);
  sub_8E80(v40, &qword_319A98, &qword_26D888);
  sub_8E80(v18, &qword_319AA0, &qword_26D890);
  sub_8E80(v21, &qword_319AA0, &qword_26D890);
  sub_8E80(v46, &qword_319A98, &qword_26D888);
  sub_8E80(v45, &qword_319AA0, &qword_26D890);
  return sub_8E80(v60, &qword_319AA0, &qword_26D890);
}

uint64_t LegacyPDFCoverEffect.shape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_2617E0() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_261DD0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

uint64_t sub_6FD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6F53C(v5, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_6F5A4(v15, v18 + v16);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  *a3 = sub_70440;
  a3[1] = v18;
  return result;
}

uint64_t sub_6FEE8(uint64_t a1)
{
  result = sub_70158(&qword_3199E8, type metadata accessor for LegacyPDFCoverEffect, &protocol conformance descriptor for LegacyPDFCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6FF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_6FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_70074(uint64_t a1)
{
  sub_50224(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_700F4()
{
  result = qword_319A80;
  if (!qword_319A80)
  {
    sub_2F9C(&qword_319A88, &qword_26D878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319A80);
  }

  return result;
}

uint64_t sub_70158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_701A0()
{
  v1 = (type metadata accessor for LegacyPDFCoverEffect(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_3199A0, &qword_26D7F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v1[7];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v7 + v2, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_7034C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for LegacyPDFCoverEffect(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_2EF0(&qword_3199A0, &qword_26D7F8) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_6F4BC((v2 + v5), v8, a2);
}

double SampleButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2604E0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_2610B0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_707F0(v6);
  v11 = type metadata accessor for AssetAction(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_8E80(v6, &qword_319AC8, &qword_287AB0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  else
  {
    *(&v30 + 1) = v11;
    v31 = sub_723E4(&qword_319AE8, &protocol conformance descriptor for AssetAction);
    v12 = sub_10934(&v29);
    sub_7237C(v6, v12, type metadata accessor for AssetAction);
  }

  sub_71FD4(v1, v27);
  v13 = swift_allocObject();
  v14 = v27[1];
  *(v13 + 16) = v27[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v28;
  sub_2604C0();
  sub_260420();
  v15 = sub_2EF0(&qword_319AD0, &qword_26D8C0);
  v16 = a1 + v15[9];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v15[10];
  *(a1 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v15[11];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  v19 = (a1 + v15[12]);
  v20 = sub_2EF0(&qword_319AD8, &qword_281960);
  v19[3] = v20;
  v19[4] = sub_8E38(&qword_319AE0, &qword_319AD8, &qword_281960, &unk_268B6C);
  v21 = sub_10934(v19);
  sub_22148(v9, v21, &qword_316960, &unk_2689F0);
  v22 = (v21 + *(v20 + 36));
  *v22 = sub_72044;
  v22[1] = v13;
  v23 = a1 + v15[13];
  result = *&v29;
  v25 = v30;
  *v23 = v29;
  *(v23 + 16) = v25;
  *(v23 + 32) = v31;
  return result;
}

uint64_t sub_707F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = sub_260560();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  __chkstk_darwin(v5 - 8);
  v102 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for AssetAction(0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_2601E0();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v9 - 8);
  v114 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = &v94 - v12;
  __chkstk_darwin(v13);
  v110 = &v94 - v14;
  v109 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v109);
  v117 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_263DD0();
  __chkstk_darwin(v16 - 8);
  v108 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_263A10();
  v18 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_263AF0();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v119 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_260060();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v23 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v123 = &v94 - v27;
  sub_2E18(v1, v1[3]);
  sub_260860();
  v28 = sub_2609D0();
  v30 = v29;
  if (v28 == sub_2609D0() && v30 == v31)
  {

LABEL_5:
    sub_2E18(v2, v2[3]);
    v33 = v123;
    sub_260890();
    goto LABEL_7;
  }

  v32 = sub_264F10();

  if (v32)
  {
    goto LABEL_5;
  }

  sub_2E18(v2, v2[3]);
  v33 = v123;
  sub_260970();
LABEL_7:
  sub_8198(v33, v25, &qword_322C70, &qword_272AD0);
  v34 = v124;
  v35 = v125;
  if ((*(v124 + 48))(v25, 1, v125) == 1)
  {
    sub_8E80(v33, &qword_322C70, &qword_272AD0);
    sub_8E80(v25, &qword_322C70, &qword_272AD0);
    v36 = 1;
    v37 = v122;
  }

  else
  {
    (*(v34 + 32))(v22, v25, v35);
    sub_2E18(v2, v2[3]);
    v100 = sub_2606E0();
    v99 = v38;
    sub_2E18(v2, v2[3]);
    v98 = sub_2606E0();
    v97 = v39;
    sub_2E18(v2, v2[3]);
    v96 = sub_260870();
    sub_2E18(v2, v2[3]);
    v95 = sub_2606E0();
    sub_2E18(v2, v2[3]);
    sub_260860();
    v40 = sub_2609D0();
    v42 = v41;
    if (v40 == sub_2609D0() && v42 == v43)
    {

      v44 = 2;
    }

    else
    {
      v45 = sub_264F10();

      if (v45)
      {
        v44 = 2;
      }

      else
      {
        v44 = 24;
      }
    }

    LODWORD(v94) = v44;
    sub_2E18(v2, v2[3]);
    sub_260860();
    v46 = sub_2609D0();
    v48 = v47;
    if (v46 == sub_2609D0() && v48 == v49)
    {

      v50 = 2;
    }

    else
    {
      v51 = sub_264F10();

      if (v51)
      {
        v50 = 2;
      }

      else
      {
        v50 = 24;
      }
    }

    LOBYTE(v131[0]) = v50;
    v52 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v131, v2);
    v53 = sub_260020();
    v55 = v54;
    if (qword_315900 != -1)
    {
      swift_once();
    }

    v131[8] = xmmword_31ADC0;
    v131[9] = xmmword_31ADD0;
    v131[10] = xmmword_31ADE0;
    v131[4] = xmmword_31AD80;
    v131[5] = xmmword_31AD90;
    v131[6] = xmmword_31ADA0;
    v131[7] = xmmword_31ADB0;
    v131[0] = xmmword_31AD40;
    v131[3] = xmmword_31AD70;
    v131[1] = *algn_31AD50;
    v131[2] = xmmword_31AD60;
    v56 = &_swiftEmptyDictionarySingleton;
    if (v52)
    {
      v130 = sub_2EF0(&qword_3160D0, &unk_270CF0);
      *&v129 = v52;
      sub_FBD8(&v129, &v128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = &_swiftEmptyDictionarySingleton;
      sub_DC90(&v128, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
      v56 = v127;
    }

    v101 = a1;
    v130 = &type metadata for String;
    *&v129 = v53;
    *(&v129 + 1) = v55;
    sub_FBD8(&v129, &v128);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v56;
    sub_DC90(&v128, 0x72556E6F69746361, 0xE90000000000006CLL, v58);
    v59 = v127;
    v126 = v94;
    v60 = Metrics.ClickActionType.rawValue.getter();
    v130 = &type metadata for String;
    *&v129 = v60;
    *(&v129 + 1) = v61;
    sub_FBD8(&v129, &v128);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v59;
    sub_DC90(&v128, 0x79546E6F69746361, 0xEA00000000006570, v62);
    v63 = v127;
    sub_2EF0(&qword_317218, &unk_269760);
    v64 = swift_allocObject();
    v94 = xmmword_267D30;
    *(v64 + 16) = xmmword_267D30;
    *(v64 + 32) = sub_1694E0();
    v130 = sub_2EF0(&qword_319B10, &qword_2777B0);
    *&v129 = v64;
    sub_FBD8(&v129, &v128);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v63;
    sub_DC90(&v128, 0x6E6F697461636F6CLL, 0xE800000000000000, v65);
    if (qword_3158E0 != -1)
    {
      swift_once();
    }

    v66 = sub_2639E0();
    sub_B080(v66, qword_353F10);
    v67 = v106;
    sub_2639C0();

    sub_2EF0(&qword_3160D8, &qword_267D60);
    v68 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v94;
    v70 = v107;
    (*(v18 + 16))(v69 + v68, v67, v107);
    sub_263DC0();
    v71 = v119;
    sub_263AD0();
    (*(v18 + 8))(v67, v70);
    v72 = *(v124 + 16);
    v73 = v117;
    v107 = v22;
    v72(v117, v22, v125);
    swift_storeEnumTagMultiPayload();
    v74 = sub_260620();
    v75 = *(v74 - 8);
    v76 = *(v75 + 56);
    v77 = v110;
    v109 = v75 + 56;
    v108 = v76;
    (v76)(v110, 1, 1, v74);
    v78 = v111;
    sub_2601D0();
    v79 = sub_2601C0();
    v81 = v80;
    (*(v112 + 8))(v78, v115);
    v82 = v120;
    *v120 = v79;
    v82[1] = v81;
    v83 = v99;
    v82[2] = v100;
    v82[3] = v83;
    v84 = v97;
    v82[4] = v98;
    v82[5] = v84;
    *(v82 + 48) = v96 & 1;
    v37 = v122;
    v85 = v113;
    v86 = v71;
    v87 = v118;
    (*(v113 + 16))(v82 + *(v122 + 32), v86, v118);
    sub_72428(v73, v82 + *(v37 + 40));
    v88 = v114;
    sub_8198(v77, v114, &qword_316B98, &unk_275840);
    v89 = *(v75 + 48);
    if (v89(v88, 1, v74) == 1)
    {
      AssetAction.Kind.appAnalyticsClickTargetType.getter(v102);
      v37 = v122;
      (*(v104 + 104))(v103, enum case for LinkActionType.click(_:), v105);
      v90 = v116;
      sub_260610();
      sub_8E80(v77, &qword_316B98, &unk_275840);
      sub_7248C(v117);
      (*(v85 + 8))(v119, v118);
      (*(v124 + 8))(v107, v125);
      sub_8E80(v123, &qword_322C70, &qword_272AD0);
      v91 = v90;
      if (v89(v88, 1, v74) != 1)
      {
        sub_8E80(v88, &qword_316B98, &unk_275840);
      }
    }

    else
    {
      sub_8E80(v77, &qword_316B98, &unk_275840);
      sub_7248C(v73);
      (*(v85 + 8))(v119, v87);
      (*(v124 + 8))(v107, v125);
      sub_8E80(v123, &qword_322C70, &qword_272AD0);
      v91 = v116;
      (*(v75 + 32))(v116, v88, v74);
    }

    (v108)(v91, 0, 1, v74);
    v92 = v120;
    sub_22148(v91, v120 + *(v37 + 36), &qword_316B98, &unk_275840);
    a1 = v101;
    sub_7237C(v92, v101, type metadata accessor for AssetAction);
    v36 = 0;
  }

  return (*(v121 + 56))(a1, v36, 1, v37);
}

uint64_t sub_71968@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = sub_262730();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_319AC8, &qword_287AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v42 = type metadata accessor for ButtonViewModel.ActionKind(0);
  __chkstk_darwin(v42);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v9);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ButtonViewModel(0);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_260860();
  v15 = sub_2609D0();
  v17 = v16;
  if (v15 == sub_2609D0() && v17 == v18)
  {

    v19 = 0x6E6F687064616568;
  }

  else
  {
    v20 = sub_264F10();

    v21 = (v20 & 1) == 0;
    v19 = 0x6E6F687064616568;
    if (v21)
    {
      v19 = 0x6761702E6B6F6F62;
    }
  }

  v22 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
  *v11 = v19;
  v11[1] = 0xEA00000000007365;
  sub_7204C(v11 + v22);
  swift_storeEnumTagMultiPayload();
  sub_707F0(v6);
  v23 = type metadata accessor for AssetAction(0);
  v24 = (*(*(v23 - 8) + 48))(v6, 1, v23);
  v41 = v11;
  if (v24 == 1)
  {
    sub_8E80(v6, &qword_319AC8, &qword_287AB0);
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
  }

  else
  {
    *(v8 + 3) = v23;
    *(v8 + 4) = sub_723E4(&qword_319B08, &protocol conformance descriptor for AssetAction);
    v25 = sub_10934(v8);
    sub_7237C(v6, v25, type metadata accessor for AssetAction);
  }

  swift_storeEnumTagMultiPayload();
  v47 = 0x403C000000000000;
  v26 = enum case for Font.TextStyle.subheadline(_:);
  v27 = v44;
  v28 = *(v43 + 13);
  v43 = v8;
  v29 = v45;
  v28(v44, enum case for Font.TextStyle.subheadline(_:), v45);
  v30 = v28;
  v42 = sub_40130();
  sub_2612E0();
  v47 = 0x4008000000000000;
  v28(v27, v26, v29);
  sub_2612E0();
  v31 = v12[6];
  *&v14[v31] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v32 = v12[14];
  v33 = sub_260BD0();
  (*(*(v33 - 8) + 56))(&v14[v32], 1, 1, v33);
  v14[v12[7]] = 1;
  v14[v12[8]] = 0;
  v14[v12[9]] = 1;
  v34 = &v14[v12[10]];
  *v34 = 1;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  sub_7237C(v41, &v14[v12[11]], type metadata accessor for ButtonViewModel.Content);
  v14[v12[12]] = 1;
  sub_7237C(v43, &v14[v12[13]], type metadata accessor for ButtonViewModel.ActionKind);
  v47 = 0x4020000000000000;
  v35 = v26;
  v30(v27, v26, v29);
  v36 = v46;
  sub_2612E0();
  v37 = type metadata accessor for ButtonView(0);
  v47 = 0x3FF8000000000000;
  v30(v27, v35, v29);
  sub_2612E0();
  v38 = *(v37 + 24);
  *(v36 + v38) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_7237C(v14, v36 + *(v37 + 28), type metadata accessor for ButtonViewModel);
}

uint64_t sub_7200C()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_7204C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_264010();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_263FA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(v1, v1[3]);
  sub_260860();
  v10 = sub_2609D0();
  v12 = v11;
  if (v10 != sub_2609D0() || v12 != v13)
  {
    sub_264F10();
  }

  sub_263F90();
  (*(v3 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v2);
  sub_260B80();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_7237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_723E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_72428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7248C(uint64_t a1)
{
  v2 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaceholderTextView.PlaceholderSize.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 30)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (result == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (result == 10)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_72528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_7259C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_72608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_72678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_726F0@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceholderTextView.PlaceholderSize.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t PlaceholderTextView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_72770(a1, a2);
  result = sub_2EF0(&qword_319B20, &unk_26DA48);
  v4 = (a2 + *(result + 28));
  *v4 = sub_727E0;
  v4[1] = 0;
  return result;
}

uint64_t sub_72770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_319B18, &qword_26DA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_727E0(uint64_t a1)
{
  v2 = sub_260BD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260B00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  (*(v3 + 16))(v5, a1, v2, v11);
  sub_260B10();
  (*(v7 + 16))(v9, v13, v6);
  sub_73944();
  v14 = sub_263310();
  (*(v7 + 8))(v13, v6);
  return v14;
}

uint64_t PlaceholderTextView.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for PlaceholderTextView.ContentType(0, a4, a3, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a2;
  *(v15 + 6) = a3;
  result = type metadata accessor for PlaceholderTextView(0, a4, v16, v17);
  v19 = (a7 + *(result + 28));
  *v19 = sub_72BB8;
  v19[1] = v15;
  return result;
}

uint64_t sub_72A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = sub_22F868(v11, a5, a6);
  (*(v8 + 8))(v11, a5);
  return v13;
}

uint64_t sub_72B80()
{

  return swift_deallocObject();
}

uint64_t PlaceholderTextView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_2617C0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_317F58, &qword_26A9B0);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = *(a1 + 16);
  v32 = *(v10 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_319B28, &qword_26DA58);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v19 = type metadata accessor for PlaceholderTextView.ContentType(0, v10, v17, v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v32 - v21;
  (*(v23 + 16))(&v32 - v21, v2, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44._countAndFlagsBits = 32;
      v44._object = 0xE100000000000000;
      v40 = sub_2645A0(v44, 10 * *v22 + 10);
      v41 = v25;
      v42 = 0;
      v43 = _swiftEmptyArrayStorage;
      sub_2617A0();
      sub_262E70();
      (*(v33 + 8))(v6, v34);

      v27 = v35;
      v26 = v36;
      (*(v35 + 16))(v16, v9, v36);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_319B30, &qword_26DA60);
      sub_731C4();
      v40 = &type metadata for Text;
      v41 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      return (*(v27 + 8))(v9, v26);
    }

    else
    {
      v38 = 0;
      v39 = 0;
      sub_261F80();
      v31 = v41;
      *v16 = v40;
      v16[8] = v31;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_319B30, &qword_26DA60);
      sub_731C4();
      v40 = &type metadata for Text;
      v41 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      return sub_261F80();
    }
  }

  else
  {
    v29 = v32;
    (*(v32 + 32))(v13, v22, v10);
    v38 = (*(v2 + *(a1 + 28)))(v13);
    v39 = 1;

    sub_261F80();
    v30 = v41;
    *v16 = v40;
    v16[8] = v30;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_319B30, &qword_26DA60);
    sub_731C4();
    v40 = &type metadata for Text;
    v41 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_261F80();

    return (*(v29 + 8))(v13, v10);
  }
}

unint64_t sub_731C4()
{
  result = qword_319B38[0];
  if (!qword_319B38[0])
  {
    sub_2F9C(&qword_319B30, &qword_26DA60);
    result = swift_getWitnessTable();
    atomic_store(result, qword_319B38);
  }

  return result;
}

unint64_t sub_732AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PlaceholderTextView.ContentType(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_16D28();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_73334(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

int *sub_7340C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_73540(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for PlaceholderTextView.PlaceholderSize(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_735BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_736D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_73888()
{
  result = qword_319CC0;
  if (!qword_319CC0)
  {
    sub_2F9C(&qword_319CC8, &unk_26DBE0);
    sub_731C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319CC0);
  }

  return result;
}

unint64_t sub_73944()
{
  result = qword_3184E0;
  if (!qword_3184E0)
  {
    sub_260B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184E0);
  }

  return result;
}

void AsyncResourceImage.init(resource:content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  type metadata accessor for ImageResourceLoader(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v6 + 24) = v7;

  sub_2603B0();

  sub_2631D0();

  a4[2] = a1;
  a4[3] = v8;
  a4[4] = v9;
}

uint64_t type metadata accessor for ImageResourceLoader(uint64_t a1)
{
  result = qword_319D90;
  if (!qword_319D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AsyncResourceImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 + 16);
  v31 = *(v4 - 8);
  __chkstk_darwin(a1);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261730();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - v7;
  v8 = sub_261730();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v32 = v26 - v11;
  v12 = *v2;
  v26[1] = v2[1];
  v27 = v12;
  v14 = v2[4];
  v41 = v2[3];
  v13 = v41;
  v42 = v14;
  sub_2EF0(&qword_319CD8, &qword_26DBF8);
  sub_2631E0();
  v15 = v40;
  swift_getKeyPath();
  v41 = v15;
  sub_741A4();
  sub_260380();

  v16 = *(v15 + 16);
  v17 = v16;

  v27(v16);

  v41 = v13;
  v42 = v14;
  sub_2631E0();
  v18 = *(a1 + 24);
  v19 = v28;
  sub_262E40();

  (*(v31 + 8))(v6, v4);
  v41 = v13;
  v42 = v14;
  sub_2631E0();
  v38 = v18;
  v39 = &protocol witness table for _AppearanceActionModifier;
  v20 = v30;
  WitnessTable = swift_getWitnessTable();
  v22 = v29;
  sub_262AB0();

  (*(v33 + 8))(v19, v20);
  v36 = WitnessTable;
  v37 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v23 = v32;
  sub_1609C();
  v24 = *(v34 + 8);
  v24(v22, v8);
  sub_1609C();
  return (v24)(v23, v8);
}

void sub_73EE4(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 0;
  v2 = *(v1 + 16);
  if (v2)
  {
    [v2 removeNonVolatileInterest];
  }

  os_unfair_lock_unlock((v1 + 28));
}

double sub_73F3C()
{
  sub_2EF0(&qword_319CD8, &qword_26DBF8);
  sub_2631E0();
  v0 = swift_unknownObjectRetain();
  sub_74480(v0);

  return result;
}

void *sub_73FA4(void *result)
{
  v2 = *v1;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = result;
  if (v2 != result)
  {
    [swift_unknownObjectRetain() removeInterest];
    if (*(v1 + 8) == 1)
    {
      [v3 removeNonVolatileInterest];
    }

    result = swift_unknownObjectRelease();
    if (v2)
    {
LABEL_8:
      [swift_unknownObjectRetain() addInterest];
      if (*(v1 + 8) == 1)
      {
        [v2 addNonVolatileInterest];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_74070()
{
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_740E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_74174(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_74330(v1);
}

unint64_t sub_741A4()
{
  result = qword_319CE0[0];
  if (!qword_319CE0[0])
  {
    type metadata accessor for ImageResourceLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_319CE0);
  }

  return result;
}

uint64_t sub_7424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_74288(uint64_t *a1, int a2)
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

uint64_t sub_742D0(uint64_t result, int a2, int a3)
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

void sub_74330(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_741A4();
    sub_260370();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_57520();
  v5 = v4;
  v6 = a1;
  v7 = sub_264A20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

double sub_74480(void *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 28));
  sub_750A0((v3 + 16), v9);
  os_unfair_lock_unlock((v3 + 28));
  if (v9[0] != 1)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    v5 = [a1 image];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      sub_74330(v6);
    }

LABEL_5:
    swift_unknownObjectRelease();
    return result;
  }

  if (*(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *v9 = v1;
    sub_741A4();
    sub_260370();
  }

  return result;
}

id *sub_745D0@<X0>(id *result@<X0>, id a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = result;
  v7 = *result;
  if (*result)
  {
    if (v7 != a2)
    {
      v8 = a3;
      [*result removeWithObserver:?];
      a3 = v8;
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  [a2 addWithObserver:a3];
LABEL_7:
  *v5 = a2;
  swift_unknownObjectRetain();
  sub_73FA4(v7);
  result = swift_unknownObjectRelease();
  v9 = 1;
LABEL_9:
  *a4 = v9;
  return result;
}

uint64_t sub_7468C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
    [swift_unknownObjectRetain() removeInterest];
    if (*(v1 + 24) == 1)
    {
      [v2 removeNonVolatileInterest];
    }

    swift_unknownObjectRelease_n();
  }

  os_unfair_lock_unlock((v1 + 28));

  v3 = OBJC_IVAR____TtC7BooksUIP33_9B0EA36F259AEF224C359BD0BEB5D46019ImageResourceLoader___observationRegistrar;
  v4 = sub_2603C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_747B4(uint64_t a1)
{
  result = sub_2603C0();
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

void sub_7485C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock((v2 + 28));
  *(v2 + 24) = 1;
  v3 = *(v2 + 16);
  if (v3 && ([v3 addNonVolatileInterest], (v4 = *(v2 + 16)) != 0))
  {
    v5 = [v4 image];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((v2 + 28));
  swift_getKeyPath();
  sub_741A4();
  sub_260380();

  if (!*(v1 + 16))
  {
    if (!v5)
    {
      return;
    }

    v6 = v5;
    sub_74330(v5);
    v5 = v6;
  }
}

uint64_t sub_74948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_264750();
  v6[6] = sub_264740();
  v8 = sub_264730();

  return (_swift_task_switch)(sub_749E4, v8, v7);
}

uint64_t sub_749E4()
{
  v1 = v0[4];

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 28));
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 28));
  if (v3)
  {
    v4 = v0[3];
    swift_unknownObjectRelease();
    if (v4 == v3)
    {
      v5 = v0[4];
      swift_getKeyPath();
      v0[2] = v5;
      sub_741A4();
      sub_260380();

      v6 = *(v5 + 16);
      v7 = v0[5];
      if (!v6 || !v7)
      {
        v13 = v7;
        sub_74330(v7);
        goto LABEL_19;
      }

      v8 = v7;
      v9 = v6;
      v10 = [v9 CGImage];
      v11 = [v8 CGImage];
      v12 = v11;
      if (v10)
      {
        if (v11)
        {

          if (v10 == v12)
          {
            goto LABEL_11;
          }

LABEL_18:
          v26 = v0[5];
          v27 = v8;
          sub_74330(v26);

          goto LABEL_19;
        }

        v12 = v10;
      }

      else if (!v11)
      {
LABEL_11:
        [v9 alignmentRectInsets];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v8 alignmentRectInsets];
        if (v15 == v25 && v17 == v22 && v19 == v23 && v21 == v24)
        {

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v28 = v0[1];

  return v28();
}

uint64_t sub_74D68(void *a1)
{
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 initializeBufferWithCopyOfBuffer for SeriesEntityCardView.RegularCardLayout(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_74E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_74E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SingleThumbnailStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_74EC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_74F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_74F88()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_74FD8(uint64_t a1)
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

  return sub_74948(a1, v4, v5, v6, v7, v8);
}

void sub_750BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t _CodeAnyComponentModel_KeyedBy.description.getter(uint64_t a1)
{
  sub_2F9C(&qword_317250, &unk_2697A0);
  sub_2642E0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

uint64_t _CodeAnyComponentModel_KeyedBy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a5@<X8>)
{
  sub_30CC(a1, v10);
  sub_752E8();
  sub_2642F0();
  if (v5)
  {
    return sub_3080(a1);
  }

  sub_2EF0(&qword_317250, &unk_2697A0);
  v9 = sub_2642D0();

  result = sub_3080(a1);
  *a5 = v9;
  return result;
}

unint64_t sub_752E8()
{
  result = qword_319EB0[0];
  if (!qword_319EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_319EB0);
  }

  return result;
}

uint64_t _CodeAnyComponentModel_KeyedBy<>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_752E8();
  v4 = sub_2642A0();
  v5 = sub_75408(v4);

  result = sub_3080(a1);
  *a2 = v5;
  return result;
}

void *sub_75408(uint64_t a1)
{
  sub_2EF0(qword_319F38, &qword_26DF38);
  result = sub_264CF0();
  v3 = result;
  v4 = 0;
  v31 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v31 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 40 * v15;
      sub_7568C(*(v31 + 56) + 40 * v15, v30);
      sub_30CC(v30, v29);

      sub_756E8(v30);
      v21 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v22 = 1 << v15;
      v3 = v28;
      *(v27 + v21) |= v22;
      v23 = (v28[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      result = sub_F7CC(v29, v28[7] + v20);
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_755A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SynchronousNativeIntentDispatchAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SynchronousNativeIntentDispatchAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7573C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319FC0, &unk_26E000);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_319FC8, &qword_319FC0, &unk_26E000, &protocol conformance descriptor for TupleView<A>);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_75988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a1;
  v84 = a5;
  v9 = sub_2EF0(&qword_319FD0, &qword_280830);
  __chkstk_darwin(v9 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v72 - v12;
  v86 = sub_2EF0(&qword_319FD8, &qword_26E010);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v18 = type metadata accessor for ListItemMetadataTitleLockupView(0, a3, a4, v17);
  v19 = *(a4 + 24);
  v75 = *(v18 + 36);
  v76 = a2;
  v77 = a3;
  v20 = v19(a1, a3, a4);
  v22 = v21;
  v24 = v23;
  v78 = a4;
  v73 = *(a4 + 16);
  v74 = a4 + 16;
  v73(&v91, a3, a4);
  sub_75F34();
  v25 = sub_262840();
  v27 = v26;
  LOBYTE(a4) = v28;
  sub_39DBC(v20, v22, v24 & 1);

  v90 = sub_262120();
  v29 = sub_2627F0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_39DBC(v25, v27, a4 & 1);
  v36 = v77;

  KeyPath = swift_getKeyPath();
  v38 = *(v86 + 36);
  *&v16[v38] = swift_getKeyPath();
  v72 = sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v16 = v29;
  *(v16 + 1) = v31;
  v16[16] = v33 & 1;
  *(v16 + 3) = v35;
  *(v16 + 4) = KeyPath;
  v40 = v78;
  v39 = v79;
  *(v16 + 5) = 3;
  v80 = v16;
  v16[48] = 0;
  v41 = (*(v40 + 32))(v39, v36, v40);
  if (v44)
  {
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v73(&v89, v36, v40);
    sub_76518();
    v47 &= 1u;
    v88 = v47;
    v48 = sub_262840();
    v50 = v49;
    v52 = v51;

    v87 = sub_262120();
    v53 = sub_2627F0();
    v79 = v54;
    LODWORD(v78) = v55;
    v57 = v56;
    sub_39DBC(v45, v46, v47);

    sub_39DBC(v48, v50, v52 & 1);

    v58 = swift_getKeyPath();
    v59 = v86;
    v60 = *(v86 + 36);
    v61 = swift_getKeyPath();
    v62 = v81;
    *&v81[v60] = v61;
    swift_storeEnumTagMultiPayload();
    v63 = v79;
    *v62 = v53;
    *(v62 + 8) = v63;
    *(v62 + 16) = v78 & 1;
    *(v62 + 24) = v57;
    *(v62 + 32) = v58;
    *(v62 + 40) = 2;
    *(v62 + 48) = 0;
    v64 = v83;
    sub_76B24(v62, v83);
    v65 = 0;
    v66 = v59;
  }

  else
  {
    v65 = 1;
    v64 = v83;
    v62 = v81;
    v66 = v86;
  }

  (*(v82 + 56))(v64, v65, 1, v66);
  v67 = v80;
  sub_8198(v80, v62, &qword_319FD8, &qword_26E010);
  v68 = v85;
  sub_8198(v64, v85, &qword_319FD0, &qword_280830);
  v69 = v84;
  sub_8198(v62, v84, &qword_319FD8, &qword_26E010);
  v70 = sub_2EF0(&qword_319FE0, &unk_26E078);
  sub_8198(v68, v69 + *(v70 + 48), &qword_319FD0, &qword_280830);
  sub_8E80(v64, &qword_319FD0, &qword_280830);
  sub_8E80(v67, &qword_319FD8, &qword_26E010);
  sub_8E80(v68, &qword_319FD0, &qword_280830);
  return sub_8E80(v62, &qword_319FD8, &qword_26E010);
}

uint64_t sub_75F34()
{
  v1 = sub_2626C0();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = sub_262730();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v39 - v21;
  v24 = *(v14 + 104);
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      v25 = &enum case for Font.TextStyle.subheadline(_:);
    }

    else
    {
      v25 = &enum case for Font.TextStyle.footnote(_:);
    }

    v24(&v39 - v21, *v25, v13, v22);
    v27 = sub_2625C0();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    sub_262680();
    sub_8E80(v12, &qword_318458, &unk_26B270);
    (*(v14 + 8))(v23, v13);
LABEL_13:
    sub_2625A0();

    goto LABEL_16;
  }

  if (*v0 == 2)
  {
    v24(v19, enum case for Font.TextStyle.headline(_:), v13, v22);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v26 = sub_2625C0();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    }

    else
    {
      v29 = enum case for Font.Design.serif (_:);
      v30 = sub_2625C0();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v9, v29, v30);
      (*(v31 + 56))(v9, 0, 1, v30);
    }

    sub_262680();
    sub_8E80(v9, &qword_318458, &unk_26B270);
    (*(v14 + 8))(v19, v13);
    goto LABEL_13;
  }

  v24(v16, enum case for Font.TextStyle.headline(_:), v13, v22);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v28 = sub_2625C0();
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  }

  else
  {
    v32 = enum case for Font.Design.serif (_:);
    v33 = sub_2625C0();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v6, v32, v33);
    (*(v34 + 56))(v6, 0, 1, v33);
  }

  sub_262680();
  sub_8E80(v6, &qword_318458, &unk_26B270);
  (*(v14 + 8))(v16, v13);
LABEL_16:
  v36 = v39;
  v35 = v40;
  (*(v39 + 104))(v3, enum case for Font.Leading.tight(_:), v40);

  v37 = sub_2626E0();

  (*(v36 + 8))(v3, v35);
  return v37;
}

uint64_t sub_76518()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.footnote(_:), v7, v9);
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_262680();
  sub_8E80(v6, &qword_318458, &unk_26B270);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);

  v13 = sub_2626E0();

  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ListItemMetadataTitleLockupView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

uint64_t sub_768D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ListItemMetadataTitleLockupView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_76A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ListItemMetadataTitleLockupView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_75988(a1, v9, v6, v7, a3);
}

uint64_t sub_76AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_76B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_319FD8, &qword_26E010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double View.imageResourceProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

void *EnvironmentValues.imageResourceProvider.getter()
{
  sub_30824();

  return sub_261CB0();
}

uint64_t EnvironmentValues.imageResourceProvider.setter(void *a1)
{
  sub_30CC(a1, v3);
  sub_30824();
  sub_261CC0();
  return sub_3080(a1);
}

uint64_t View.imageResourceProvider(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_2EF0(&qword_317000, &qword_2693E0);
  sub_263C70();
  sub_264190();
  sub_262A90();

  return sub_3080(v4);
}

void (*EnvironmentValues.imageResourceProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_30824();
  sub_261CB0();
  return sub_76F0C;
}

void sub_76F0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_30CC(*a1, (v2 + 5));
    sub_30CC((v2 + 5), (v2 + 10));
    sub_261CC0();
    sub_3080(v2 + 5);
  }

  else
  {
    sub_30CC(*a1, (v2 + 5));
    sub_261CC0();
  }

  sub_3080(v2);

  free(v2);
}

uint64_t sub_77010(uint64_t *a1)
{
  sub_2F9C(&qword_319FF8, &unk_26E1D0);
  sub_261730();
  sub_77088();
  return swift_getWitnessTable();
}

unint64_t sub_77088()
{
  result = qword_31A000;
  if (!qword_31A000)
  {
    sub_2F9C(&qword_319FF8, &unk_26E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A000);
  }

  return result;
}

uint64_t sub_77104@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_317E08, &qword_26A550);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  sub_8198(v1 + *(ButtonView + 20), v9, &qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v9, a1, &qword_31A0C8, &qword_26E2C0);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_772EC()
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
    sub_3074(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_77434@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v2 = sub_2601E0();
  v70 = *(v2 - 8);
  __chkstk_darwin(v2);
  v72 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_260560();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260600();
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v10 - 8);
  v75 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v56 - v13;
  __chkstk_darwin(v14);
  v73 = &v56 - v15;
  v78 = sub_263AF0();
  v74 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v56 - v18);
  v20 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v20);
  v71 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  sub_772EC();
  *v24 = 0xD00000000000001ALL;
  *(v24 + 1) = 0x8000000000291540;
  *(v24 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v25 = (v1 + *(type metadata accessor for ListItemAccessoryWantToReadButtonView(0) + 28));
  sub_2E18(v25, v25[3]);
  v26 = sub_2606E0();
  v66 = v27;
  v67 = v26;
  v28 = v70;
  sub_77104(v19);
  v29 = (*(v28 + 48))(v19, 1, v2);
  v63 = v2;
  if (v29 == 1)
  {
    sub_8E80(v19, &qword_31A0C8, &qword_26E2C0);
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v30 = sub_2601C0();
    v64 = v31;
    v65 = v30;
    (*(v28 + 8))(v19, v2);
  }

  v32 = v28;
  sub_2E18(v25, v25[3]);
  v61 = sub_260870();
  v33 = v79;
  sub_263AC0();
  v62 = type metadata accessor for AssetAction.Kind;
  v34 = v24;
  v35 = v24;
  v36 = v71;
  sub_792A8(v34, v71, type metadata accessor for AssetAction.Kind);
  v37 = v9;
  v68 = v35;
  AssetAction.Kind.appAnalyticsClickTargetType.getter(v9);
  v38 = *(v4 + 104);
  v56 = v4 + 104;
  v58 = enum case for LinkActionType.click(_:);
  v57 = v38;
  v38(v6);
  v39 = v73;
  v60 = v37;
  v59 = v6;
  sub_260610();
  v40 = sub_260620();
  v41 = *(v40 - 8);
  v69 = *(v41 + 56);
  v70 = v41 + 56;
  v69(v39, 0, 1, v40);
  v42 = v72;
  sub_2601D0();
  v43 = sub_2601C0();
  v45 = v44;
  (*(v32 + 8))(v42, v63);
  v46 = v80;
  *v80 = v43;
  v46[1] = v45;
  v47 = v66;
  v46[2] = v67;
  v46[3] = v47;
  v48 = v64;
  v46[4] = v65;
  v46[5] = v48;
  *(v46 + 48) = v61 & 1;
  v49 = type metadata accessor for AssetAction(0);
  v50 = v74;
  v51 = v78;
  (*(v74 + 16))(v46 + *(v49 + 32), v33, v78);
  v72 = v49;
  sub_792A8(v36, v46 + *(v49 + 40), v62);
  v52 = v75;
  sub_8198(v39, v75, &qword_316B98, &unk_275840);
  v53 = *(v41 + 48);
  if (v53(v52, 1, v40) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v60);
    v57(v59, v58, v77);
    v54 = v76;
    sub_260610();
    sub_8E80(v39, &qword_316B98, &unk_275840);
    sub_7248C(v36);
    (*(v50 + 8))(v79, v78);
    sub_7248C(v68);
    if (v53(v52, 1, v40) != 1)
    {
      sub_8E80(v52, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v39, &qword_316B98, &unk_275840);
    sub_7248C(v36);
    (*(v50 + 8))(v79, v51);
    sub_7248C(v68);
    v54 = v76;
    (*(v41 + 32))(v76, v52, v40);
  }

  v69(v54, 0, 1, v40);
  return sub_22148(v54, v80 + *(v72 + 9), &qword_316B98, &unk_275840);
}

uint64_t ListItemAccessoryWantToReadButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = sub_260290();
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v37 = &v30 - v4;
  v34 = sub_264410();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_2EF0(&qword_31A008, &qword_26E210);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v38 = v1;
  sub_2EF0(&qword_31A010, &qword_26E218);
  sub_8E38(&qword_31A018, &qword_31A010, &qword_26E218, &protocol conformance descriptor for BooksActionButton<A>);
  sub_263230();
  type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  sub_2EF0(&qword_31A020, &qword_26E220);
  sub_261300();
  sub_261300();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v14 = v31;
  sub_2613A0();
  v33 = v11;
  v15 = &v13[*(v11 + 36)];
  v16 = v42;
  *v15 = v41;
  *(v15 + 1) = v16;
  *(v15 + 2) = v43;
  sub_772EC();
  sub_2643A0();
  v17 = v37;
  sub_260260();
  v18 = v34;
  (*(v5 + 16))(v7, v10, v34);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20 = v17;
  v21 = v35;
  (*(v14 + 16))(v32, v20, v35);
  v22 = sub_264490();
  v24 = v23;
  (*(v14 + 8))(v37, v21);
  (*(v5 + 8))(v10, v18);
  v39 = v22;
  v40 = v24;
  sub_10A84();
  v25 = sub_2628F0();
  v27 = v26;
  LOBYTE(v7) = v28;
  sub_78500();
  sub_262AF0();
  sub_39DBC(v25, v27, v7 & 1);

  return sub_8E80(v13, &qword_31A008, &qword_26E210);
}

uint64_t sub_781A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2604E0();
  __chkstk_darwin(v4 - 8);
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  v22 = *(ButtonView - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(ButtonView - 8);
  v7 = sub_2EF0(&qword_31A010, &qword_26E218);
  v8 = (a2 + v7[12]);
  v9 = sub_2EF0(&qword_31A120, &unk_26E2D0);
  v8[3] = v9;
  v8[4] = sub_8E38(&qword_31A128, &qword_31A120, &unk_26E2D0, &unk_268B6C);
  v10 = sub_10934(v8);
  v11 = sub_2610B0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = (a2 + v7[13]);
  v12[3] = type metadata accessor for AssetAction(0);
  v12[4] = sub_79258(&qword_319AE8, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  v13 = sub_10934(v12);
  sub_77434(v13);
  sub_792A8(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListItemAccessoryWantToReadButtonView);
  v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v15 = swift_allocObject();
  sub_79164(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2604C0();
  sub_260420();
  v16 = a2 + v7[9];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v7[10];
  *(a2 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v18 = a2 + v7[11];
  result = swift_getKeyPath();
  *v18 = result;
  *(v18 + 40) = 0;
  v20 = (v10 + *(v9 + 36));
  *v20 = sub_791C8;
  v20[1] = v15;
  return result;
}

uint64_t type metadata accessor for ListItemAccessoryWantToReadButtonView(uint64_t a1)
{
  result = qword_31A0A0;
  if (!qword_31A0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_78500()
{
  result = qword_31A028;
  if (!qword_31A028)
  {
    sub_2F9C(&qword_31A008, &qword_26E210);
    sub_8E38(&qword_31A030, &qword_31A038, &qword_26E228, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A028);
  }

  return result;
}

double sub_785D4@<D0>(uint64_t *a2@<X8>)
{
  *a2 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a2[1] = v3;
  v4 = sub_2EF0(&qword_31A130, &qword_26E378);
  return sub_78624((a2 + *(v4 + 44)));
}

double sub_78624@<D0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_2637A0();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_263780();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_2EF0(&qword_31A138, &qword_26E380);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v33 - v17);
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  v22 = [objc_opt_self() tertiarySystemFillColor];
  v37 = sub_263070();
  sub_772EC();
  v36 = sub_2630B0();
  v35 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  sub_263770();
  sub_263750();
  v23 = *(v4 + 8);
  v23(v12, v3);
  sub_263760();
  v23(v9, v3);
  v24 = v38;
  sub_263790();
  v25 = (v18 + *(v14 + 44));
  sub_2EF0(&qword_31A140, &qword_26E3B8);
  sub_79258(&qword_31A148, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  sub_261890();
  (*(v40 + 8))(v24, v41);
  v23(v6, v3);
  *v25 = swift_getKeyPath();
  v27 = KeyPath;
  v26 = v35;
  *v18 = v36;
  v18[1] = v27;
  v18[2] = v26;
  sub_22148(v18, v21, &qword_31A138, &qword_26E380);
  v28 = v39;
  sub_8198(v21, v39, &qword_31A138, &qword_26E380);
  v29 = v42;
  *v42 = v37;
  *(v29 + 4) = 256;
  v30 = v29;
  v31 = sub_2EF0(&qword_31A150, &qword_26E3F0);
  sub_8198(v28, v30 + *(v31 + 48), &qword_31A138, &qword_26E380);

  sub_8E80(v21, &qword_31A138, &qword_26E380);
  sub_8E80(v28, &qword_31A138, &qword_26E380);

  return result;
}

uint64_t sub_78A8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31A040, &unk_279210);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_31A020, &qword_26E220);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_78BC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31A040, &unk_279210);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_2EF0(&qword_31A020, &qword_26E220);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_78CE4(uint64_t a1)
{
  sub_78DC8(319, &qword_31A0B0, &qword_31A0B8, &unk_279D00);
  if (v1 <= 0x3F)
  {
    sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
    if (v2 <= 0x3F)
    {
      sub_78E1C(319);
      if (v3 <= 0x3F)
      {
        sub_44744();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_78DC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2F9C(a3, a4);
    v5 = sub_2611E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_78E1C(uint64_t a1)
{
  if (!qword_31A0D0)
  {
    sub_78E78();
    v1 = sub_261310();
    if (!v2)
    {
      atomic_store(v1, &qword_31A0D0);
    }
  }
}

unint64_t sub_78E78()
{
  result = qword_31A0D8;
  if (!qword_31A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A0D8);
  }

  return result;
}

unint64_t sub_78ED0()
{
  result = qword_31A110;
  if (!qword_31A110)
  {
    sub_2F9C(&qword_31A118, &qword_26E2C8);
    sub_78500();
    sub_79258(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A110);
  }

  return result;
}

uint64_t sub_78F8C()
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  v2 = v0 + ((*(*(ButtonView - 1) + 80) + 16) & ~*(*(ButtonView - 1) + 80));
  sub_3074(*v2, *(v2 + 8));
  v3 = ButtonView[5];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2601E0();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = ButtonView[6];
  v7 = sub_2EF0(&qword_31A020, &qword_26E220);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  sub_3080((v2 + ButtonView[7]));

  return swift_deallocObject();
}

uint64_t sub_79164(uint64_t a1, uint64_t a2)
{
  ButtonView = type metadata accessor for ListItemAccessoryWantToReadButtonView(0);
  (*(*(ButtonView - 8) + 32))(a2, a1, ButtonView);
  return a2;
}

double sub_791C8@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListItemAccessoryWantToReadButtonView(0);

  return sub_785D4(a1);
}

uint64_t sub_79258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_792A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_79310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_8198(v2 + *(a1 + 64), &v15 - v10, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261180();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_79514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316930, &qword_2689A0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_8198(v2 + *(a1 + 68), &v15 - v10, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_260640();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_79718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318150, &qword_279A70);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_8198(v2 + *(a1 + 72), &v15 - v10, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_260CA0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_7991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2 + *(a1 + 76), v12, &qword_31A240, &qword_26E588);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_79A94(uint64_t a1)
{
  v3 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v3);
  sub_8198(a1, &v6 - v4, &qword_31A158, &qword_26E3F8);
  sub_2631D0();
  return sub_8E80(a1, &qword_31A158, &qword_26E3F8);
}

uint64_t sub_79B5C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v5 - v3, &qword_31A158, &qword_26E3F8);
  sub_2EF0(qword_31A160, &qword_26E4F0);
  sub_2631F0();
  return sub_8E80(a1, &qword_31A158, &qword_26E3F8);
}

double BooksMenu.init(_:onPresentationChanged:content:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, void *a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a5;
  v30 = a9;
  v17 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v20 = type metadata accessor for BooksMenu(0, &v33);
  v21 = v20[16];
  *(a8 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v22 = v20[17];
  *(a8 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v23 = v20[18];
  *(a8 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  v24 = a8 + v20[19];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = a8 + v20[20];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = sub_2601B0();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  sub_79A94(v19);
  sub_260D40();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v27 = sub_7BE28(a3, a4);
  v28 = a7(v27);
  v32(v28);
  return sub_7BE38(a3, a4);
}

uint64_t sub_79EDC(uint64_t a1)
{
  v2 = sub_260640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_79514(a1, v5);
  sub_2604B0();
  sub_7D434(&qword_31A258, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
  sub_7D434(&qword_31A260, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
  sub_260630();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_7A040(uint64_t a1)
{
  v2 = sub_260640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_79514(a1, v5);
  sub_260510();
  sub_7D434(&qword_31A248, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
  sub_7D434(&qword_31A250, &type metadata accessor for SectionData, &protocol conformance descriptor for SectionData);
  sub_260630();
  return (*(v3 + 8))(v5, v2);
}

uint64_t BooksMenu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v34 = *(a1 + 16);
  v6 = v34;
  v7 = sub_261730();
  v36 = v7;
  v53 = sub_7BE48();
  v8.i64[0] = v6;
  v30 = v8;
  v39 = *(a1 + 24);
  v52 = v39.i64[1];
  WitnessTable = swift_getWitnessTable();
  v9 = *(a1 + 40);
  v48 = v7;
  v37 = v39.i64[0];
  v49 = v39.i64[0];
  v50 = WitnessTable;
  v51 = v9;
  v10 = sub_262760();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v29 = &v26 - v11;
  v28 = swift_getWitnessTable();
  v48 = v10;
  v49 = v28;
  v32 = &opaque type descriptor for <<opaque return type of View.systemColorScheme()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v27 = &v26 - v17;
  (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v16);
  v18 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *&v20 = vdupq_laneq_s64(v39, 1).u64[0];
  *(&v20 + 1) = v9;
  *(v19 + 16) = vzip1q_s64(v30, v39);
  *(v19 + 32) = v20;
  (*(v4 + 32))(v19 + v18, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v44 = v34;
  v45 = v39;
  v46 = v9;
  v47 = v2;
  v40 = v34;
  v41 = v39;
  v42 = v9;
  v43 = v2;
  v21 = v29;
  sub_262740();
  v22 = v28;
  sub_262BD0();
  (*(v35 + 8))(v21, v10);
  v48 = v10;
  v49 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_1609C();
  v24 = *(v33 + 8);
  v24(v14, OpaqueTypeMetadata2);
  sub_1609C();
  return (v24)(v23, OpaqueTypeMetadata2);
}

void sub_7A66C(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v151 + 1) = a4;
  v152 = a5;
  *&v151 = a3;
  v150 = a1;
  v140 = sub_260450();
  v116 = *(v140 - 1);
  __chkstk_darwin(v140);
  v115 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2601B0();
  v146 = *(v9 - 8);
  *&v147 = v9;
  __chkstk_darwin(v9);
  v128 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260CA0();
  v118 = *(v11 - 8);
  v119 = v11;
  __chkstk_darwin(v11);
  v117 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_260430();
  v137 = *(v13 - 8);
  v138 = v13;
  __chkstk_darwin(v13);
  v139 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_263BD0();
  v135 = *(v15 - 8);
  v136 = v15;
  __chkstk_darwin(v15);
  v134 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_263DD0();
  __chkstk_darwin(v17 - 8);
  v132 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_263A10();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin(v19);
  v129 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_263AF0();
  v144 = *(v21 - 8);
  v145 = v21;
  __chkstk_darwin(v21);
  v133 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v143 = &v111 - v24;
  v25 = sub_260560();
  v126 = *(v25 - 8);
  v127 = v25;
  __chkstk_darwin(v25);
  v125 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_260600();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_260620();
  v141 = *(v28 - 8);
  v142 = v28;
  __chkstk_darwin(v28);
  v148 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_31A158, &qword_26E3F8);
  __chkstk_darwin(v30 - 8);
  v121 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v120 = &v111 - v33;
  v34 = sub_2EF0(&qword_31A218, &qword_26E570);
  __chkstk_darwin(v34 - 8);
  v36 = &v111 - v35;
  v37 = sub_260510();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v149 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2EF0(&qword_31A220, &qword_26E578);
  __chkstk_darwin(v40 - 8);
  v42 = &v111 - v41;
  v43 = sub_2604B0();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v151;
  *&v161 = v152;
  *(&v161 + 1) = a6;
  v47 = type metadata accessor for BooksMenu(0, &v160);
  sub_79EDC(v47);
  v48 = (*(v44 + 48))(v42, 1, v43);
  v152 = v47;
  if (v48 == 1)
  {
    sub_8E80(v42, &qword_31A220, &qword_26E578);
    v49 = a2;
  }

  else
  {
    (*(v44 + 32))(v46, v42, v43);
    sub_7A040(v47);
    v49 = a2;
    if ((*(v38 + 48))(v36, 1, v37) != 1)
    {
      v112 = v44;
      v113 = v46;
      v114 = v43;
      *&v151 = v38;
      *(&v151 + 1) = v37;
      v54 = v149;
      (*(v38 + 32))(v149, v36, v37);
      if (v150)
      {
        v55 = v120;
        sub_2601A0();
        (*(v146 + 56))(v55, 0, 1, v147);
        sub_79B5C(v55);
        (*(v122 + 104))(v123, enum case for ClickData.TargetType.button(_:), v124);
        (*(v126 + 104))(v125, enum case for LinkActionType.click(_:), v127);
        sub_260610();
        if (qword_315900 != -1)
        {
          swift_once();
        }

        v167 = xmmword_31ADB0;
        v168 = xmmword_31ADC0;
        v169 = xmmword_31ADD0;
        v170 = xmmword_31ADE0;
        v163 = xmmword_31AD70;
        v164 = xmmword_31AD80;
        v165 = xmmword_31AD90;
        v166 = xmmword_31ADA0;
        v160 = xmmword_31AD40;
        v161 = *algn_31AD50;
        v162 = xmmword_31AD60;
        v158 = &type metadata for String;
        *&v157 = 1701998445;
        *(&v157 + 1) = 0xE400000000000000;
        sub_FBD8(&v157, &v153);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = &_swiftEmptyDictionarySingleton;
        sub_DC90(&v153, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
        v57 = v156;
        sub_2EF0(&qword_317218, &unk_269760);
        v58 = swift_allocObject();
        v147 = xmmword_267D30;
        *(v58 + 16) = xmmword_267D30;
        *(v58 + 32) = sub_1694E0();
        v158 = sub_2EF0(&qword_319B10, &qword_2777B0);
        *&v157 = v58;
        sub_FBD8(&v157, &v153);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v57;
        sub_DC90(&v153, 0x6E6F697461636F6CLL, 0xE800000000000000, v59);
        v60 = v145;
        if (qword_3158E0 != -1)
        {
          swift_once();
        }

        v61 = sub_2639E0();
        sub_B080(v61, qword_353F10);
        v62 = v129;
        sub_2639C0();

        sub_2EF0(&qword_3160D8, &qword_267D60);
        v63 = v130;
        v64 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = v147;
        v66 = v131;
        (*(v63 + 16))(v65 + v64, v62, v131);
        sub_263DC0();
        v67 = v143;
        sub_263AD0();
        (*(v63 + 8))(v62, v66);
        (*(v144 + 16))(v133, v67, v60);
        sub_2EF0(&qword_317258, &unk_27A660);
        v68 = swift_allocObject();
        *(v68 + 16) = v147;
        v69 = sub_2EF0(&qword_31A238, &unk_28B930);
        v70 = v69[12];
        v71 = v69[16];
        v72 = v69[20];
        v73 = v69[24];
        v74 = enum case for LocationType.button(_:);
        v75 = sub_260530();
        v76 = v139;
        (*(*(v75 - 8) + 104))(v139, v74, v75);
        (*(v141 + 16))(&v76[v70], v148, v142);
        (*(v151 + 16))(&v76[v71], v149, *(&v151 + 1));
        v77 = v112;
        v78 = v113;
        v79 = v114;
        (*(v112 + 16))(&v76[v72], v113, v114);
        (*(v77 + 56))(&v76[v72], 0, 1, v79);
        v80 = sub_2605F0();
        (*(*(v80 - 8) + 56))(&v76[v73], 1, 1, v80);
        (*(v137 + 104))(v76, enum case for AppAnalyticsAction.Type.clickEvent(_:), v138);
        *(v68 + 56) = v140;
        *(v68 + 64) = sub_7D434(&qword_31A230, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
        sub_10934((v68 + 32));
        sub_260440();
        v81 = v134;
        sub_263BC0();
        v82 = v152;
        sub_7991C(v152, &v157);
        if (!v158)
        {
          (*(v135 + 8))(v81, v136);
          (*(v144 + 8))(v143, v145);
          (*(v141 + 8))(v148, v142);
          (*(v151 + 8))(v149, *(&v151 + 1));
          (*(v77 + 8))(v78, v114);
          sub_8E80(&v157, &qword_31A208, &unk_27A5E0);
          goto LABEL_8;
        }

        *&v147 = v159;
        sub_2E18(&v157, v158);
        v83 = v82;
        v84 = v136;
        v154 = v136;
        v155 = &protocol witness table for CompoundAction;
        v85 = sub_10934(&v153);
        v86 = v135;
        (*(v135 + 16))(v85, v81, v84);
        v87 = v117;
        sub_79718(v83, v117);
        sub_260B20();
        (*(v118 + 8))(v87, v119);
        (*(v86 + 8))(v81, v84);
        (*(v144 + 8))(v143, v145);
        (*(v141 + 8))(v148, v142);
        (*(v151 + 8))(v149, *(&v151 + 1));
        (*(v77 + 8))(v113, v114);
        sub_3080(&v153);
        v88 = &v157;
      }

      else
      {
        v89 = v152;
        sub_2EF0(qword_31A160, &qword_26E4F0);
        v90 = v121;
        sub_2631E0();
        v91 = v146;
        v92 = v147;
        v93 = (*(v146 + 48))(v90, 1, v147);
        v94 = v113;
        if (v93 == 1)
        {
          (*(v151 + 8))(v54, *(&v151 + 1));
          (*(v112 + 8))(v94, v114);
          sub_8E80(v90, &qword_31A158, &qword_26E3F8);
          goto LABEL_8;
        }

        v95 = v128;
        (*(v91 + 32))(v128, v90, v92);
        v96 = sub_2EF0(&qword_31A228, &qword_26E580);
        v97 = *(v96 + 48);
        v98 = *(v96 + 64);
        v99 = *(v91 + 16);
        v100 = v139;
        v99(v139, v95, v92);
        v101 = v112;
        v102 = v94;
        v103 = v114;
        (*(v112 + 16))(&v100[v97], v102, v114);
        v104 = v151;
        (*(v151 + 16))(&v100[v98], v54, *(&v151 + 1));
        (*(v137 + 104))(v100, enum case for AppAnalyticsAction.Type.reportContextualActionSheetExposure(_:), v138);
        v105 = v115;
        sub_260440();
        sub_7991C(v89, &v160);
        if (!*(&v161 + 1))
        {
          (*(v116 + 8))(v105, v140);
          (*(v146 + 8))(v128, v147);
          (*(v104 + 8))(v149, *(&v151 + 1));
          (*(v101 + 8))(v113, v103);
          sub_8E80(&v160, &qword_31A208, &unk_27A5E0);
          goto LABEL_8;
        }

        v148 = v162;
        v145 = sub_2E18(&v160, *(&v161 + 1));
        v106 = v89;
        v107 = v140;
        v158 = v140;
        v159 = sub_7D434(&qword_31A230, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
        v108 = sub_10934(&v157);
        v109 = v116;
        (*(v116 + 16))(v108, v105, v107);
        v110 = v117;
        sub_79718(v106, v117);
        sub_260B20();
        (*(v118 + 8))(v110, v119);
        (*(v109 + 8))(v105, v107);
        (*(v146 + 8))(v128, v147);
        (*(v104 + 8))(v149, *(&v151 + 1));
        (*(v101 + 8))(v113, v114);
        sub_3080(&v157);
        v88 = &v160;
      }

      sub_3080(v88);
      goto LABEL_8;
    }

    (*(v44 + 8))(v46, v43);
    sub_8E80(v36, &qword_31A218, &qword_26E570);
  }

  v50 = sub_260D30();
  v51 = sub_264900();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "ContentData and SectionData should be present", v52, 2u);
  }

LABEL_8:
  v53 = v49[2];
  if (v53)
  {
    v53(v150 & 1);
  }
}

uint64_t sub_7BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for BooksMenu(0, v12);
  sub_1609C();
  sub_1609C();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_7BB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a2;
  v25 = a5;
  v24 = sub_261180();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v11 = sub_261730();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v28[0] = a1;
  v28[1] = v23;
  v28[2] = a3;
  v28[3] = a4;
  v18 = type metadata accessor for BooksMenu(0, v28);
  sub_79310(v18, v10);
  sub_262A70();
  (*(v8 + 8))(v10, v24);
  v19 = sub_7BE48();
  v26 = a3;
  v27 = v19;
  swift_getWitnessTable();
  sub_1609C();
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_1609C();
  return (v20)(v17, v11);
}

uint64_t sub_7BE28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_7BE38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_7BE48()
{
  result = qword_317398;
  if (!qword_317398)
  {
    sub_2F9C(&qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317398);
  }

  return result;
}

uint64_t sub_7BEAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v19 = v1;
  v18 = *(v0 + 24);
  v20 = v18;
  v21 = v2;
  v3 = type metadata accessor for BooksMenu(0, &v19);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));

  if (*(v4 + 16))
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v3[14], v1);
  (*(*(v18 - 8) + 8))(v4 + v3[15]);
  v5 = v3[16];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v3[17];
  sub_2EF0(&qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_260640();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v3[18];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_260CA0();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  v11 = v4 + v3[19];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      sub_3080(v11);
    }
  }

  else
  {
  }

  sub_1FED0(*(v4 + v3[20]), *(v4 + v3[20] + 8));
  v12 = v4 + v3[21];
  v13 = sub_2601B0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  sub_2EF0(qword_31A160, &qword_26E4F0);

  v15 = v3[22];
  v16 = sub_260D50();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);
  return swift_deallocObject();
}

void sub_7C264(int a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for BooksMenu(0, v9) - 8);
  v8 = (v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)));

  sub_7A66C(a1, v8, v3, v4, v5, v6);
}

void sub_7C3A4(uint64_t a1)
{
  sub_7D2F4(319, &qword_31A1E8, &qword_31A1F0, qword_26E558, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_7D2A0(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_7D2A0(319, &qword_316A10, &type metadata accessor for DataStack);
          if (v5 <= 0x3F)
          {
            sub_7D2A0(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext);
            if (v6 <= 0x3F)
            {
              sub_7D2F4(319, &qword_31A200, &qword_31A208, &unk_27A5E0, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_7D2F4(319, &qword_316A00, &qword_316A08, &unk_277860, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_7D2F4(319, &qword_31A210, &qword_31A158, &qword_26E3F8, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_260D50();
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

uint64_t sub_7C604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v53 = *(a3 + 16);
  v3 = *(v53 - 8);
  v51 = *(a3 + 24);
  v4 = *(v51 - 8);
  v62 = v4;
  v54 = *(v3 + 84);
  v52 = *(v4 + 84);
  if (v54 <= v52)
  {
    v5 = *(v4 + 84);
  }

  else
  {
    v5 = *(v3 + 84);
  }

  v60 = *(sub_261180() - 8);
  v6 = *(v60 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v57 = v6;
  v59 = *(sub_260640() - 8);
  v7 = *(v59 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v56 = v7;
  v8 = *(sub_260CA0() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v55 = v9;
  v49 = sub_2601B0();
  v10 = *(v49 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v50 = v12;
  if (v12 > v5)
  {
    v5 = v12;
  }

  v13 = *(sub_260D50() - 8);
  v14 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = *(v4 + 80);
  v17 = *(v4 + 64);
  v18 = *(v13 + 80);
  if (v5 <= *(v13 + 84))
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v5;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = 7;
  if (!v11)
  {
    v21 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v60 + 80) & 0xF8 | 7;
  v23 = *(v59 + 80) & 0xF8 | 7;
  v24 = v57 + v23 + 1;
  v25 = *(v8 + 80) & 0xF8 | 7;
  v26 = v56 + v25 + 1;
  v27 = v55 + 56;
  v28 = *(v10 + 80) & 0xF8;
  v29 = ~v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = v28 + 16;
  v31 = ((v21 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  if (a2 <= v20)
  {
    goto LABEL_46;
  }

  v32 = ((v31 + ((v30 + ((v27 + ((v26 + ((v24 + ((v17 + v22 + ((v15 + v16 + ((v14 + 32) & ~v14)) & ~v16)) & ~v22)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & v29)) & ~v18) + *(v13 + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_25;
  }

  v36 = ((a2 - v20 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v36))
  {
    v34 = *(a1 + v32);
    if (v34)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v36 <= 0xFF)
    {
      if (v36 < 2)
      {
        goto LABEL_46;
      }

LABEL_25:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_46;
      }

LABEL_33:
      v37 = (v34 - 1) << v33;
      if (v32 > 3)
      {
        v37 = 0;
      }

      if (v32)
      {
        if (v32 <= 3)
        {
          v38 = v32;
        }

        else
        {
          v38 = 4;
        }

        if (v38 > 2)
        {
          if (v38 == 3)
          {
            v39 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v39 = *a1;
          }
        }

        else if (v38 == 1)
        {
          v39 = *a1;
        }

        else
        {
          v39 = *a1;
        }
      }

      else
      {
        v39 = 0;
      }

      return v20 + (v39 | v37) + 1;
    }

    v34 = *(a1 + v32);
    if (*(a1 + v32))
    {
      goto LABEL_33;
    }
  }

LABEL_46:
  if ((v19 & 0x80000000) == 0)
  {
    v40 = *(a1 + 1);
    if (v40 >= 0xFFFFFFFF)
    {
      LODWORD(v40) = -1;
    }

    return (v40 + 1);
  }

  v41 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14;
  if (v54 == v20)
  {
    v42 = *(v3 + 48);
    v43 = v54;
    v44 = v53;
LABEL_54:

    return v42(v41, v43, v44);
  }

  v41 = (v41 + v15 + v16) & ~v16;
  if (v52 == v20)
  {
    v42 = *(v62 + 48);
    v43 = v52;
    v44 = v51;
    goto LABEL_54;
  }

  v45 = (v30 + ((v27 + ((v26 + ((v24 + ((v41 + v17 + v22) & ~v22)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & v29;
  if (v50 == v20)
  {
    v46 = (*(v10 + 48))(v45, v11, v49);
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v47 = *(v13 + 48);
    v48 = (v31 + v45) & ~v18;

    return v47(v48);
  }
}

void sub_7CBE8(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v58 = *(a4 + 16);
  v4 = *(v58 - 8);
  v69 = v4;
  v56 = *(a4 + 24);
  v5 = *(v56 - 8);
  v68 = v5;
  v59 = *(v4 + 84);
  v57 = *(v5 + 84);
  if (v59 <= v57)
  {
    v6 = *(v5 + 84);
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v60 = *(sub_261180() - 8);
  v7 = *(v60 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v63 = v7;
  v8 = *(sub_260640() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v62 = v9;
  v10 = *(sub_260CA0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v61 = v11;
  v53 = sub_2601B0();
  v12 = *(v53 - 8);
  v67 = v12;
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v54 = v15;
  v55 = v14;
  if (v6 <= v15)
  {
    v6 = v15;
  }

  v16 = 0;
  v17 = *(sub_260D50() - 8);
  v18 = *(v4 + 80);
  v19 = *(v4 + 64);
  v20 = *(v5 + 80);
  v21 = *(v5 + 64);
  v22 = *(v12 + 80);
  v23 = *(v12 + 64);
  v24 = *(v17 + 80);
  if (v6 <= *(v17 + 84))
  {
    v25 = *(v17 + 84);
  }

  else
  {
    v25 = v6;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v60 + 80) & 0xF8 | 7;
  v28 = *(v8 + 80) & 0xF8 | 7;
  v29 = v63 + v28 + 1;
  v30 = *(v10 + 80) & 0xF8 | 7;
  v31 = v62 + v30 + 1;
  v32 = v22 & 0xF8;
  v33 = ~v32 & 0xFFFFFFFFFFFFFFF8;
  v34 = v32 + 16;
  v35 = (v32 + 16 + ((v61 + 56 + ((v31 + ((v29 + ((v21 + v27 + ((v19 + v20 + ((v18 + 32) & ~v18)) & ~v20)) & ~v27)) & ~v28)) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & v33;
  if (v13)
  {
    v36 = v23;
  }

  else
  {
    v36 = v23 + 1;
  }

  v37 = ((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v38 = ((v37 + v35) & ~v24) + *(v17 + 64);
  if (a3 > v26)
  {
    if (v38 <= 3)
    {
      v39 = ((a3 - v26 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (HIWORD(v39))
      {
        v16 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v16 = v40;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  if (v26 < a2)
  {
    v41 = ~v26 + a2;
    if (v38 < 4)
    {
      v42 = (v41 >> (8 * v38)) + 1;
      if (v38)
      {
        v43 = v41 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v43;
            if (v16 > 1)
            {
LABEL_72:
              if (v16 == 2)
              {
                *(a1 + v38) = v42;
              }

              else
              {
                *(a1 + v38) = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v16 > 1)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_69;
        }

        *a1 = v43;
        *(a1 + 2) = BYTE2(v43);
      }

      if (v16 > 1)
      {
        goto LABEL_72;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v41;
      v42 = 1;
      if (v16 > 1)
      {
        goto LABEL_72;
      }
    }

LABEL_69:
    if (v16)
    {
      *(a1 + v38) = v42;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v38) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *(a1 + v38) = 0;
  }

  else if (v16)
  {
    *(a1 + v38) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v44 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18);
  if (v59 == v26)
  {
    v45 = *(v69 + 56);
    v46 = a2;
    v47 = v59;
    v48 = v58;
LABEL_64:

    v45(v44, v46, v47, v48);
    return;
  }

  v44 = ((v44 + v19 + v20) & ~v20);
  if (v57 == v26)
  {
    v45 = *(v68 + 56);
    v46 = a2;
    v47 = v57;
    v48 = v56;
    goto LABEL_64;
  }

  v44 = ((v34 + ((v61 + 56 + ((v31 + ((v29 + ((v44 + v21 + v27) & ~v27)) & ~v28)) & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & v33);
  if (v55 == v26)
  {
    if (v54 >= a2)
    {
      v45 = *(v67 + 56);
      v46 = a2 + 1;
      v47 = v13;
      v48 = v53;
      goto LABEL_64;
    }

    v49 = (v36 + 7) & 0xFFFFFFF8;
    if (v49 != -8)
    {
      v50 = v44;
      bzero(v44, (v49 + 8));
      *v50 = ~v54 + a2;
    }
  }

  else
  {
    v51 = *(v17 + 56);
    v52 = (v44 + v37) & ~v24;

    v51(v52, a2);
  }
}

void sub_7D2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_7D2F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_7D358(uint64_t *a1)
{
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  sub_261730();
  sub_7BE48();
  swift_getWitnessTable();
  sub_262760();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7D434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_7D47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  type metadata accessor for CGSize(0);
  sub_2631D0();
  *(a4 + 40) = v8;
  *(a4 + 56) = v9;
  sub_2EF0(&qword_316248, &qword_26E860);
  sub_2631D0();
  *(a4 + 64) = v8;
  sub_2631D0();
  result = *&v8;
  *(a4 + 80) = v8;
  *(a4 + 96) = v9;
  *(a4 + 8) = a1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_7D55C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v63 = v0[4];
  v64 = v5;
  v6 = v0[7];
  v65 = v0[6];
  v66 = v6;
  v7 = v0[1];
  v59 = *v0;
  v60 = v7;
  v8 = v0[3];
  v61 = v0[2];
  v62 = v8;
  v67 = v59;
  v68 = v7;
  v69 = v61;
  v70 = v8;
  v71 = v63;
  v72 = v5;
  v73 = v65;
  v74 = v6;
  v9 = sub_7DC5C(&v67);
  result = 0;
  if (v9 != 1)
  {
    v58[4] = v71;
    v58[5] = v72;
    v58[6] = v73;
    v58[7] = v74;
    v58[0] = v67;
    v58[1] = v68;
    v58[2] = v69;
    v58[3] = v70;
    if (sub_57480(v58) == 1)
    {
      v11 = *sub_5748C(v58);
      v52 = v61;
      v53 = v62;
      v50 = v59;
      v51 = v60;
      v56 = v65;
      v57 = v66;
      v54 = v63;
      v55 = v64;
      sub_7E084(&v50, v49);
    }

    else
    {
      v12 = sub_5748C(v58);
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v52 = v12[2];
      v53 = v13;
      v50 = v15;
      v51 = v14;
      v16 = v12[7];
      v18 = v12[4];
      v17 = v12[5];
      v56 = v12[6];
      v57 = v16;
      v54 = v18;
      v55 = v17;
      if (sub_2F8B8(&v50))
      {
        return 0;
      }

      v19 = sub_2F950(&v50);
      v20 = v19[5];
      if (v20)
      {
        v21 = v19[4];
        v22 = v19[5];
      }

      else
      {
        v21 = *v19;
        v22 = v19[1];
      }

      v37 = v20 != 0;
      sub_8198(&v59, v49, &qword_31A290, &qword_26E868);
      v41 = v20;

      v23 = v0;
      sub_40858(v46);
      v39 = v48;
      v40 = v47;
      v38 = sub_2E18(v46, v47);
      sub_8E80(&v59, &qword_31A290, &qword_26E868);
      v42 = v21;
      v44[0] = v21;
      v44[1] = v22;
      v45 = v37;
      v24 = v12[3];
      v26 = *v12;
      v25 = v12[1];
      v49[2] = v12[2];
      v49[3] = v24;
      v49[0] = v26;
      v49[1] = v25;
      v27 = v12[7];
      v29 = v12[4];
      v28 = v12[5];
      v49[6] = v12[6];
      v49[7] = v27;
      v49[4] = v29;
      v49[5] = v28;
      v30 = sub_2F950(v49);
      v32 = *(v30 + 120);
      v33 = *(v0 + 24);
      if (*(v23 + 200) == 1)
      {
        v31.n128_u64[0] = *(v23 + 24);
      }

      else
      {

        sub_264900();
        v34 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v33, 0);
        (*(v2 + 8))(v4, v1);
        v31.n128_u64[0] = v43;
      }

      v35 = v32 * *(v30 + 16);
      BYTE2(v43) = -2;
      LOWORD(v43) = -772;
      v11 = (*(v39 + 16))(v44, &v43, v40, v35, v32, v31);
      sub_6204(v42, v22);
      sub_3080(v46);
    }

    return v11;
  }

  return result;
}

uint64_t sub_7D900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v7 = v6;
  v8 = a2 + *(sub_2EF0(&qword_31A278, &unk_26E840) + 36);
  v9 = sub_7D55C();
  v10 = *(v2 + 128);
  v11 = *(v2 + 136);

  sub_7D47C(v9, v10, v11, v15);
  sub_2EF0(&qword_3173C0, &unk_2698C0);
  sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0, &protocol conformance descriptor for BackdropView<A>);
  sub_262C60();
  v17[4] = v15[4];
  v17[5] = v15[5];
  v18 = v16;
  v17[0] = v15[0];
  v17[1] = v15[1];
  v17[2] = v15[2];
  v17[3] = v15[3];
  sub_8E80(v17, &qword_3173C0, &unk_2698C0);
  v12 = (v8 + *(sub_2EF0(&qword_31A280, &qword_26E850) + 36));
  *v12 = v5;
  v12[1] = v7;
  v13 = sub_2EF0(&qword_31A288, &qword_26E858);
  return (*(*(v13 - 8) + 16))(a2, a1, v13);
}

uint64_t View.mediaBackdrop(for:placeholderColor:useSnapshot:)(_OWORD *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[3];
  v8 = a1[5];
  v50 = a1[4];
  v51 = v8;
  v9 = a1[5];
  v10 = a1[7];
  v52 = a1[6];
  v53 = v10;
  v11 = a1[1];
  v47[0] = *a1;
  v47[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v48 = a1[2];
  v49 = v12;
  v56 = v48;
  v57 = v7;
  v54 = v14;
  v55 = v13;
  v15 = a1[7];
  v60 = v52;
  v61 = v15;
  v58 = v50;
  v59 = v9;
  if (sub_7DC5C(&v54) == 1)
  {
    sub_7DC78(&v39);
  }

  else
  {
    v21 = v58;
    v22 = v59;
    v23 = v60;
    v24 = v61;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v20 = v57;
    sub_7DE1C(&v17);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v39 = v25;
    v40 = v26;
    v41 = v27;
    v42 = v28;
  }

  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v33 = a2;
  v34 = a3 & 1;
  KeyPath = swift_getKeyPath();
  v36 = 0;
  v37 = swift_getKeyPath();
  v38 = 0;
  sub_8198(v47, &v17, &qword_31A268, &unk_26E5E8);

  sub_262E30();
  return sub_7DDEC(&v25);
}

uint64_t sub_7DC5C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

double sub_7DC78(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFCFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t View.mediaBackdrop(for:placeholderColor:useSnapshot:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    *&v8[0] = a1;
    sub_7DE48(v8);
    v13 = v8[4];
    v14 = v8[5];
    v15 = v8[6];
    v16 = v8[7];
    v9 = v8[0];
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v13;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v12;
  }

  else
  {
    sub_7DC78(&v23);
  }

  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v17 = a2;
  v18 = a3 & 1;
  KeyPath = swift_getKeyPath();
  v20 = 0;
  v21 = swift_getKeyPath();
  v22 = 0;
  swift_unknownObjectRetain();

  sub_262E30();
  return sub_7DDEC(&v9);
}

void *sub_7DE1C(void *result)
{
  v1 = result[6] & 1;
  v2 = result[14] & 0xC0000000000000FFLL;
  result[3] &= 0x301uLL;
  result[6] = v1;
  result[14] = v2;
  return result;
}

void *sub_7DE48(void *result)
{
  v1 = result[6] & 1;
  v2 = result[14] & 0xC0000000000000FFLL | 0x2000000000000000;
  result[3] &= 0x301uLL;
  result[6] = v1;
  result[14] = v2;
  return result;
}

uint64_t sub_7DE78(void *a1)
{
  sub_261730();
  sub_7DEDC();
  return swift_getWitnessTable();
}

unint64_t sub_7DEDC()
{
  result = qword_31A270;
  if (!qword_31A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A270);
  }

  return result;
}

uint64_t sub_7DF3C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_7DF58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_7DF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_7E0BC(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_7E0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_7E134(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_7E1B4(void *result, char a2)
{
  v2 = result[6] & 1;
  v3 = result[14] & 0xC0000000000000FFLL;
  result[3] &= 0x301uLL;
  result[6] = v2;
  result[14] = v3 | ((a2 & 1) << 61);
  return result;
}

unint64_t sub_7E1FC()
{
  result = qword_31A298;
  if (!qword_31A298)
  {
    sub_2F9C(&qword_31A278, &unk_26E840);
    sub_8E38(&qword_31A2A0, &qword_31A288, &qword_26E858, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_31A2A8, &qword_31A280, &qword_26E850, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A298);
  }

  return result;
}

uint64_t sub_7E2E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v69 = a1[4];
  v70 = v3;
  v4 = a1[5];
  v5 = a1[7];
  v71 = a1[6];
  v72 = v5;
  v6 = a1[1];
  v66[0] = *a1;
  v66[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v67 = a1[2];
  v68 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v75 = a2[2];
  v76 = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v73 = v10;
  v74 = v13;
  v16 = a2[5];
  v17 = a2[7];
  v79 = a2[6];
  v80 = v17;
  v18 = a2[3];
  v19 = a2[5];
  v77 = a2[4];
  v78 = v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v81[2] = a1[2];
  v81[3] = v22;
  v81[0] = v20;
  v81[1] = v21;
  v23 = a1[7];
  v81[6] = a1[6];
  v81[7] = v23;
  v24 = a1[5];
  v81[4] = a1[4];
  v81[5] = v24;
  v81[10] = v14;
  v81[11] = v18;
  v81[8] = v15;
  v81[9] = v11;
  v25 = a2[7];
  v81[14] = v79;
  v81[15] = v25;
  v81[12] = v77;
  v81[13] = v16;
  v82[2] = v67;
  v82[3] = v2;
  v82[0] = v9;
  v82[1] = v8;
  v26 = a1[7];
  v82[6] = v71;
  v82[7] = v26;
  v82[4] = v69;
  v82[5] = v4;
  if (sub_57480(v82) != 1)
  {
    v32 = sub_5748C(v82);
    v62 = v77;
    v63 = v78;
    v64 = v79;
    v65 = v80;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    if (sub_57480(&v58) == 1)
    {
      sub_5748C(&v58);
      goto LABEL_6;
    }

    v33 = sub_5748C(&v58);
    v34 = v32[3];
    v36 = *v32;
    v35 = v32[1];
    v57[2] = v32[2];
    v57[3] = v34;
    v57[0] = v36;
    v57[1] = v35;
    v37 = v32[7];
    v39 = v32[4];
    v38 = v32[5];
    v57[6] = v32[6];
    v57[7] = v37;
    v57[4] = v39;
    v57[5] = v38;
    v40 = sub_2F8B8(v57);
    v41 = sub_2F950(v57);
    if (v40)
    {
      if (v40 == 1)
      {
        v42 = 0x8000000000291580;
        v43 = 0xD00000000000001BLL;
      }

      else
      {
        v42 = 0x8000000000291560;
        v43 = 0xD000000000000016;
      }
    }

    else
    {
      v43 = *v41;
      v42 = v41[1];
    }

    v44 = *v33;
    v45 = v33[1];
    v46 = v33[3];
    v56[2] = v33[2];
    v56[3] = v46;
    v56[0] = v44;
    v56[1] = v45;
    v47 = v33[4];
    v48 = v33[5];
    v49 = v33[7];
    v56[6] = v33[6];
    v56[7] = v49;
    v56[4] = v47;
    v56[5] = v48;
    v50 = sub_2F8B8(v56);
    v51 = sub_2F950(v56);
    if (v50)
    {
      if (v50 == 1)
      {
        v52 = 0x8000000000291580;
        if (v43 != 0xD00000000000001BLL)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v52 = 0x8000000000291560;
        if (v43 != 0xD000000000000016)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v53 = *v51;
      v52 = v51[1];

      if (v43 != v53)
      {
        goto LABEL_21;
      }
    }

    if (v42 == v52)
    {
      v31 = 1;
LABEL_22:
      sub_7E084(&v73, v55);
      sub_7E084(v66, v55);

      sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);

      return v31 & 1;
    }

LABEL_21:
    v31 = sub_264F10();
    goto LABEL_22;
  }

  v27 = *sub_5748C(v82);
  v60 = v75;
  v61 = v76;
  v58 = v73;
  v59 = v74;
  v64 = v79;
  v65 = v80;
  v62 = v77;
  v63 = v78;
  v28 = sub_57480(&v58);
  v29 = sub_5748C(&v58);
  if (v28 != 1)
  {
LABEL_6:
    sub_7E084(&v73, &v58);
    sub_7E084(v66, &v58);
    sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);
    v31 = 0;
    return v31 & 1;
  }

  v30 = *v29;
  sub_7E084(&v73, v57);
  sub_7E084(v66, v57);
  sub_7E084(&v73, v57);
  sub_7E084(v66, v57);
  sub_8E80(v81, &qword_31A2B0, &unk_26E9B0);
  sub_7E68C(v66);
  sub_7E68C(&v73);
  v31 = v27 == v30;
  return v31 & 1;
}

uint64_t sub_7E6C0()
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
    sub_4054(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t ListItemAccessoryBuyButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = type metadata accessor for ButtonViewModel(0);
  __chkstk_darwin(v2);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ButtonView(0);
  __chkstk_darwin(v82);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v68 - v6;
  v80 = sub_2EF0(&qword_31A2B8, &unk_26E9C0);
  __chkstk_darwin(v80);
  v81 = &v68 - v7;
  v8 = sub_262730();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BuyButtonExternals(0);
  __chkstk_darwin(v11);
  v73 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  __chkstk_darwin(v84);
  v14 = &v68 - v13;
  v79 = type metadata accessor for BuyButton(0);
  __chkstk_darwin(v79);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v68 - v17;
  v18 = sub_261C90();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v99[15] = *(v1 + 63);
  v23 = v1[3];
  v98[2] = v1[2];
  *v99 = v23;
  v24 = v1[1];
  v98[0] = *v1;
  v98[1] = v24;
  if (v99[18])
  {
    v25 = v1[3];
    v95 = v1[2];
    v96 = v25;
    v97 = *(v1 + 32);
    v26 = v1[1];
    v93 = *v1;
    v94 = v26;
    v88 = v95;
    *v89 = v25;
    *&v89[15] = *(v1 + 63);
    v86 = v93;
    v87 = v26;
    sub_7F6B8(&v86, v85);
  }

  else
  {
    v69 = v20;

    sub_264900();
    v27 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v98, &qword_317F40, &qword_26E9D0);
    (*(v19 + 8))(v22, v69);
  }

  v86 = v93;
  v87 = v94;
  v88 = v95;
  *v89 = v96;
  *&v89[16] = v97;
  if (*(&v93 + 1))
  {
    sub_8E80(&v86, &qword_317F48, &qword_26A9A0);
    v28 = 2;
    if ((sub_7E6C0() & 1) == 0)
    {
      v28 = (v1[8] & 1) == 0;
    }

    sub_30CC(v1 + 88, v85);
    sub_30CC(v85, v91);
    KeyPath = swift_getKeyPath();
    v30 = v73;
    *v73 = KeyPath;
    v72 = sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v31 = (v30 + v11[5]);
    type metadata accessor for ProfileRestrictions(0);
    sub_7F4C4(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v31 = sub_261900();
    v31[1] = v32;
    v33 = v11[6];
    *(v30 + v33) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v34 = v30 + v11[7];
    v35 = swift_getKeyPath();
    v92 = 0;
    *v34 = v35;
    *(v34 + 66) = 0;
    *&v14[*(v84 + 36)] = v28 | 0x8000;
    v36 = 1;
    if (v28 != 1)
    {
      v36 = 2;
    }

    if (!v28)
    {
      v36 = 0;
    }

    v71 = v36;
    sub_260BC0();
    type metadata accessor for ButtonViewModel.Content(0);
    swift_storeEnumTagMultiPayload();
    v37 = &v14[v2[13]];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v37 = 0u;
    *(v37 + 1) = 0u;
    *(v37 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v90 = 0x403C000000000000;
    v38 = enum case for Font.TextStyle.subheadline(_:);
    v39 = v78;
    v40 = *(v77 + 13);
    v41 = v76;
    v40(v78, enum case for Font.TextStyle.subheadline(_:), v76);
    sub_40130();
    sub_2612E0();
    v90 = 0x4008000000000000;
    v40(v39, v38, v41);
    sub_2612E0();
    sub_3080(v85);
    v42 = v2[6];
    *&v14[v42] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v43 = v2[14];
    v44 = sub_260BD0();
    (*(*(v44 - 8) + 56))(&v14[v43], 1, 1, v44);
    v14[v2[7]] = 2;
    v14[v2[8]] = 0;
    v14[v2[9]] = 0;
    v45 = &v14[v2[10]];
    *v45 = v71;
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v14[v2[12]] = 1;
    v46 = v84;
    v14[*(v84 + 40)] = 2;
    v47 = v46;
    sub_F7CC(v91, &v14[*(v46 + 44)]);
    sub_7F588(v30, &v14[*(v47 + 48)], type metadata accessor for BuyButtonExternals);
    v48 = v74;
    sub_7F518(v14, v74);
    v49 = v75;
    sub_7F588(v48, v75, type metadata accessor for BuyButton);
    v50 = type metadata accessor for BuyButton;
    sub_7F5F0(v49, v81, type metadata accessor for BuyButton);
    swift_storeEnumTagMultiPayload();
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton, &protocol conformance descriptor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
  }

  else
  {
    v51 = sub_7E6C0();
    v52 = 1;
    if (v51)
    {
      v52 = 2;
    }

    v84 = v52;
    v53 = v2;
    type metadata accessor for ButtonViewModel.Content(0);
    v54 = v71;
    swift_storeEnumTagMultiPayload();
    v55 = v54 + v53[13];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v55 = 0u;
    *(v55 + 16) = 0u;
    *(v55 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    v85[0] = 0x403C000000000000;
    v56 = enum case for Font.TextStyle.subheadline(_:);
    v57 = v78;
    v58 = *(v77 + 13);
    v59 = v76;
    (v58)(v78, enum case for Font.TextStyle.subheadline(_:), v76);
    sub_40130();
    sub_2612E0();
    v85[0] = 0x4008000000000000;
    (v58)(v57, v56, v59);
    v77 = v58;
    sub_2612E0();
    v60 = v53[6];
    *(v54 + v60) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v61 = v53[14];
    v62 = sub_260BD0();
    (*(*(v62 - 8) + 56))(v54 + v61, 1, 1, v62);
    *(v54 + v53[7]) = 2;
    *(v54 + v53[8]) = 0;
    *(v54 + v53[9]) = 0;
    v63 = (v54 + v53[10]);
    *v63 = v84;
    v63[1] = 0;
    v63[2] = 0;
    v63[3] = 0;
    *(v54 + v53[12]) = 0;
    v85[0] = 0x4020000000000000;
    (v58)(v57, v56, v59);
    v64 = v70;
    sub_2612E0();
    v65 = v82;
    v85[0] = 0x3FF8000000000000;
    v77(v57, v56, v59);
    sub_2612E0();
    v66 = *(v65 + 24);
    *(v64 + v66) = swift_getKeyPath();
    sub_2EF0(&qword_319B00, &unk_26EA40);
    swift_storeEnumTagMultiPayload();
    sub_7F588(v54, v64 + *(v65 + 28), type metadata accessor for ButtonViewModel);
    v49 = v72;
    sub_7F588(v64, v72, type metadata accessor for ButtonView);
    v50 = type metadata accessor for ButtonView;
    sub_7F5F0(v49, v81, type metadata accessor for ButtonView);
    swift_storeEnumTagMultiPayload();
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton, &protocol conformance descriptor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
  }

  sub_261F80();
  return sub_7F658(v49, v50);
}

uint64_t sub_7F460@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000) == 0)
  {
    if ((result & 0x80) == 0)
    {
      if ((result & 0x7F) != 1)
      {
        if ((result & 0x7F) != 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }

      goto LABEL_8;
    }

    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v2 = 2;
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result != 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v2 = 1;
LABEL_12:
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_7F4C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7F518(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A2C0, &qword_2844F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7F588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7F658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7F6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317F48, &qword_26A9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_7F744(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_7F778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7F7C0(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7F838()
{
  result = qword_31A2D8;
  if (!qword_31A2D8)
  {
    sub_2F9C(&qword_31A2E0, qword_26EBE0);
    sub_7F4C4(&qword_31A2C8, type metadata accessor for BuyButton, &protocol conformance descriptor for BuyButton);
    sub_7F4C4(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A2D8);
  }

  return result;
}

uint64_t NestedShelfComponentModel.shelves.getter()
{
  ShelfGridItemColumnSpan.Context.offset.getter();
}

uint64_t sub_7F974@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for NestedShelfComponentModel(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = ShelfGridItemColumnSpan.Context.offset.getter();
}

double NestedShelfComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_811F0(v1 + 8, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t NestedShelfComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_8198(v2 + *(a1 + 40), &v9 - v6, &qword_315D40, &qword_288230);
  return sub_8200(v7, a2);
}

uint64_t sub_7FB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_8198(a1, &v13 - v8, &qword_315D48, &qword_266E40);
  v11 = type metadata accessor for NestedShelfComponentModel(0, v5, v6, v10);
  return NestedShelfComponentModel.impressionMetrics.setter(v9, v11);
}

uint64_t NestedShelfComponentModel.id.getter(uint64_t a1)
{
  sub_264BC0(28);

  v2._countAndFlagsBits = sub_265260();
  sub_264530(v2);

  return sub_264B70();
}

uint64_t NestedShelfComponentModel.init(shelves:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a2;
  v11 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0;
  *(a6 + 8) = 0u;
  sub_34A0(v22, a6 + 8, &qword_315D38, &unk_266E30);
  v15 = type metadata accessor for NestedShelfComponentModel(0, a4, a5, v14);
  v16 = *(v15 + 40);
  v17 = sub_263E50();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  sub_8200(v13, a6 + v16);
  v24 = a1;
  sub_2646F0();
  sub_263BE0();
  v18 = v21;
  *a6 = *&v22[0];
  sub_8198(v18, v22, &qword_315D38, &unk_266E30);
  sub_34A0(v22, a6 + 8, &qword_315D38, &unk_266E30);
  sub_8198(a3, v13, &qword_315D48, &qword_266E40);
  sub_34A0(v13, a6 + *(v15 + 40), &qword_315D48, &qword_266E40);
  sub_8E80(a3, &qword_315D48, &qword_266E40);
  return sub_8E80(v18, &qword_315D38, &unk_266E30);
}

uint64_t sub_7FF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365766C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
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

Swift::Int sub_80094(unsigned __int8 a1)
{
  sub_265050();
  sub_265060(a1);
  return sub_265080();
}

uint64_t sub_800DC(char a1)
{
  if (!a1)
  {
    return 0x7365766C656873;
  }

  if (a1 == 1)
  {
    return 0x6575676573;
  }

  return 0xD000000000000011;
}

Swift::Int sub_80160(uint64_t a1)
{
  sub_265050();
  sub_8006C(v3, *v1);
  return sub_265080();
}

uint64_t sub_801B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7FF40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_801E4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_81CA8();
  *a2 = result;
  return result;
}

uint64_t sub_80210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_80264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t NestedShelfComponentModel<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v29 = a5;
  v31 = sub_2EF0(&qword_315D40, &qword_288230);
  __chkstk_darwin(v31);
  v30 = &v27 - v8;
  type metadata accessor for NestedShelfComponentModel.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v36 = sub_264E20();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v27 - v10;
  v12 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v33 = a2;
  v16 = type metadata accessor for NestedShelfComponentModel(0, a2, a3, v15);
  v28 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  *(&v27 - v17 + 8) = 0u;
  v19 = &v27 - v17 + 8;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *(v18 + 24) = 0u;
  *(v18 + 5) = 0;
  sub_34A0(v41, v19, &qword_315D38, &unk_266E30);
  v20 = *(v16 + 40);
  v21 = sub_263E50();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v38 = v20;
  sub_8200(v14, &v18[v20]);
  sub_2E18(a1, a1[3]);
  v35 = v11;
  v22 = v37;
  sub_265120();
  if (v22)
  {
    sub_3080(a1);
    sub_3FC70(v19);
    return sub_8E80(&v18[v38], &qword_315D40, &qword_288230);
  }

  else
  {
    v23 = v32;
    sub_2646F0();
    sub_263BF0();
    v43 = 0;
    v40 = v34;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_264DF0();
    *v18 = *&v41[0];
    v43 = 1;
    sub_8127C();
    sub_264DF0();
    sub_812D0(v41, v19);
    LOBYTE(v41[0]) = 2;
    sub_8EE0();
    v24 = v30;
    sub_264DF0();
    (*(v23 + 8))(v35, v36);
    sub_34A0(v24, &v18[v38], &qword_315D40, &qword_288230);
    v25 = v28;
    (*(v28 + 16))(v29, v18, v16);
    sub_3080(a1);
    return (*(v25 + 8))(v18, v16);
  }
}

double NestedShelfComponent.content(for:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for NestedShelfComponentModel(0, v6, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  (*(AssociatedConformanceWitness + 64))(&v34, v6, AssociatedConformanceWitness, v11);
  if (v34)
  {
    v28 = 2;
    v14 = sub_261E50();
  }

  else
  {
    v28 = 3;
    v14 = sub_261D30();
  }

  v27 = v14;
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v6;
  *(v16 + 3) = v5;
  *(v16 + 4) = v4;
  (*(v10 + 32))(&v16[v15], v13, v9);
  swift_getTupleTypeMetadata2();
  v17 = sub_2646F0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getAssociatedConformanceWitness();
  *&v39 = v17;
  *(&v39 + 1) = AssociatedTypeWitness;
  *&v40 = v5;
  *(&v40 + 1) = WitnessTable;
  *&v41 = v20;
  v21 = sub_2633D0();
  v33 = *(v4 + 8);
  v22 = swift_getWitnessTable();
  sub_21D7E4(v27, v28, 0, 0, sub_814A4, v16, &v39);
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v24 = type metadata accessor for HVStack(0, v21, v22, v23);
  swift_getWitnessTable();
  sub_1609C();
  (*(*(v24 - 8) + 8))(&v39, v24);
  *&v30 = v34;
  BYTE8(v30) = v35;
  *&v31 = v36;
  BYTE8(v31) = v37;
  v32 = v38;
  sub_1609C();

  return result;
}

uint64_t sub_80BB0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a5;
  v22[1] = swift_getTupleTypeMetadata2();
  v25 = sub_2646F0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v25;
  v33 = AssociatedTypeWitness;
  v34 = a3;
  v35 = WitnessTable;
  v36 = AssociatedConformanceWitness;
  v10 = sub_2633D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  v31 = *a1;
  sub_2646F0();
  swift_getWitnessTable();
  sub_2645F0();
  v31 = v32;
  sub_264CE0();
  swift_getWitnessTable();
  v32 = sub_264710();
  v27 = a2;
  v28 = a3;
  v29 = a4;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = sub_81CE4;
  v18[6] = v17;
  v21 = *(a4 + 8);
  sub_2633B0();
  v30 = v21;
  swift_getWitnessTable();
  sub_1609C();
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1609C();
  return (v19)(v16, v10);
}

uint64_t sub_80F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __chkstk_darwin(a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v22 - v17;
  (*(v19 + 16))(v9, v16);
  (*(a5 + 32))(v9, a1, a4, a5);
  sub_1609C();
  v20 = *(v11 + 8);
  v20(v14, a4);
  sub_1609C();
  return (v20)(v18, a4);
}

uint64_t sub_81184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Component.body.getter(a1, WitnessTable);
}

unint64_t sub_8127C()
{
  result = qword_31A2E8;
  if (!qword_31A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A2E8);
  }

  return result;
}

uint64_t sub_8132C()
{
  v1 = *(v0 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for NestedShelfComponentModel(0, v1, AssociatedConformanceWitness, v3);
  v5 = v0 + ((*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80));

  if (*(v5 + 32))
  {
    sub_3080((v5 + 8));
  }

  v6 = *(v4 + 40);
  v7 = sub_263E50();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_814A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for NestedShelfComponentModel(0, v3, AssociatedConformanceWitness, v7) - 8);
  v9 = (v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80)));

  return sub_80BB0(v9, v3, v4, v5, a1);
}

unint64_t sub_81568()
{
  result = qword_31A2F0[0];
  if (!qword_31A2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31A2F0);
  }

  return result;
}

uint64_t sub_815D8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_816E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_817A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_818A0(uint64_t a1)
{
  sub_2646F0();
  sub_263BF0();
  if (v1 <= 0x3F)
  {
    sub_9DD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_81950(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_81A20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_81AE8(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_2646F0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v1 = sub_2633D0();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HVStack(255, v1, WitnessTable, v3);
  return swift_getWitnessTable();
}

__n128 sub_81CC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_81CF0()
{

  return swift_deallocObject();
}

uint64_t sub_81D28(char *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_820C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_820E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
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

uint64_t sub_82144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t static ListItemViewModel.seriesPage(seriesID:assetInfo:cardInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a1;
  v25 = a2;
  sub_30CC(a3, v30);
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 255;
  sub_2E18(a3, a3[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_264A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  sub_2606D0();
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
LABEL_5:
    v28 = &type metadata for ListItemAccessoryBuyButton;
    AssociatedConformanceWitness = sub_825A0();
    v14 = swift_allocObject();
    v27[0] = v14;
    sub_30CC(a3, v14 + 32);
    *(v14 + 16) = swift_getKeyPath();
    *(v14 + 24) = 0;
    goto LABEL_6;
  }

  v28 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10934(v27);
  (*(v12 + 32))();
  v13 = sub_2607F0();
  sub_3080(v27);
  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = &type metadata for ListItemAccessoryMoreButton;
  AssociatedConformanceWitness = sub_82774();
  v27[0] = swift_allocObject();
  sub_30CC(a3, v27[0] + 16);
LABEL_6:
  sub_2E18(a3, a3[3]);
  v15 = sub_2606E0();
  v17 = v16;
  sub_3E840(v30, a5 + 8);
  v18 = v25;

  static ListItemMetadata.seriesPage(assetInfo:)(a3, a5 + 80);
  sub_82640(v30);
  sub_30CC(v27, v26);
  sub_30CC(a3, a5 + 408);
  v19 = type metadata accessor for ListItemViewModel(0);
  sub_82694(v23, a5 + *(v19 + 40));
  *a5 = 0;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0;
  sub_82704(v26, a5 + 360);
  *(a5 + 400) = 0;
  v20 = a5 + *(v19 + 44);
  *v20 = xmmword_26F1A0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v24;
  *(v20 + 40) = v18;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 128) = v15;
  *(v20 + 136) = v17;
  *(v20 + 144) = 2;
  return sub_3080(v27);
}

unint64_t sub_825A0()
{
  result = qword_31A478;
  if (!qword_31A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A478);
  }

  return result;
}

uint64_t sub_825F4()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_82694(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A480, &qword_273520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_82704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A488, &unk_272AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_82774()
{
  result = qword_31A490;
  if (!qword_31A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A490);
  }

  return result;
}

uint64_t sub_827C8()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

double static ListItemViewModel.seriesHeaderQuickActionButton(assetInfo:cardInfo:eyebrowText:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_30CC(a1, v16);
  v17 = 1;
  v18 = 4;
  v19 = 0;
  v20 = 255;
  sub_2E18(a1, a1[3]);
  v8 = sub_2606E0();
  v10 = v9;
  sub_3E840(v16, a4 + 8);
  static ListItemMetadata.seriesHeaderQuickActionButton(assetInfo:eyebrowText:)(a1, a3, a4 + 80);
  v15[3] = &type metadata for ListItemAccessoryBuyButton;
  v15[4] = sub_825A0();
  v11 = swift_allocObject();
  v15[0] = v11;
  sub_30CC(a1, v11 + 32);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  sub_82640(v16);
  sub_30CC(a1, a4 + 408);
  v12 = type metadata accessor for ListItemViewModel(0);
  sub_82694(a2, a4 + *(v12 + 40));
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0u;
  *(a4 + 392) = 0;
  *a4 = 1;
  sub_82704(v15, a4 + 360);
  *(a4 + 400) = 0;
  v13 = a4 + *(v12 + 44);
  result = 0.0;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = xmmword_26F1B0;
  *(v13 + 16) = 0u;
  *(v13 + 128) = v8;
  *(v13 + 136) = v10;
  *(v13 + 144) = 2;
  return result;
}

void sub_82988(double a1, double a2)
{
  [v2 size];
  sub_2649E0();
  v4 = v3;
  v6 = v5;
  v7 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v3, v5}];
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_82B98;
  *(v9 + 24) = v8;
  v12[4] = sub_82BC4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1EB584;
  v12[3] = &unk_305718;
  v10 = _Block_copy(v12);
  v11 = v2;

  [v7 imageWithActions:v10];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

uint64_t sub_82B60()
{

  return swift_deallocObject();
}

uint64_t sub_82BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ProgressiveBlurMaterial.init(blurRadius:saturationAmount:fillColor:start:end:fadeOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double ProgressiveBlurMaterial.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v25[0] = *v2;
  v25[1] = v4;
  v5 = v2[3];
  v25[2] = v2[2];
  v25[3] = v5;
  v6 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v8 = v7;
  sub_82D2C(v25, &v15);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v26 = v15;
  v27 = v16;
  v36[6] = v21;
  v36[7] = v22;
  v36[8] = v23;
  v36[2] = v17;
  v36[3] = v18;
  v36[4] = v19;
  v36[5] = v20;
  v35 = v24;
  v37 = v24;
  v36[0] = v15;
  v36[1] = v16;
  sub_8198(&v26, &v14, &qword_31A498, &qword_26F200);
  sub_8E80(v36, &qword_31A498, &qword_26F200);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v33;
  *(a2 + 112) = v32;
  *(a2 + 128) = v9;
  *(a2 + 144) = v34;
  *(a2 + 160) = v35;
  v10 = v29;
  *(a2 + 48) = v28;
  *(a2 + 64) = v10;
  v11 = v31;
  *(a2 + 80) = v30;
  *(a2 + 96) = v11;
  result = *&v26;
  v13 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v13;
  *(a2 + 168) = 0;
  return result;
}

void sub_82D2C(double *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *a1;
  v29 = *(a1 + 3);
  v31 = *(a1 + 4);
  v4 = *(a1 + 6);
  v30 = *(a1 + 5);
  v5 = *(a1 + 7);
  sub_2EF0(&qword_319268, &qword_279380);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269100;
  sub_840B0(a1, v37);
  *(v6 + 32) = sub_263450();
  *(v6 + 40) = v7;
  sub_263000();
  *(v6 + 48) = sub_263450();
  *(v6 + 56) = v8;
  sub_263460();
  sub_261590();
  v9 = a1[1];
  if (v9 == 1.0)
  {
    v10 = 0.0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v11 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v12 = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_269100;
    sub_262F80();
    *(v19 + 32) = sub_263450();
    *(v19 + 40) = v20;
    sub_262FA0();
    *(v19 + 48) = sub_263450();
    *(v19 + 56) = v21;
    sub_263460();
    sub_261590();
    v13 = v40;
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v10 = v9;
    v17 = v44;
  }

  v22 = v37[8];
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v12;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  *&v36 = v16;
  *(&v36 + 1) = v17;
  *&v23 = v28;
  *(&v23 + 1) = v29;
  *&v24 = v31;
  *(&v24 + 1) = v30;
  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v22;
  *(a2 + 56) = v38;
  *(a2 + 72) = v39;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  *(a2 + 136) = v36;
  *(a2 + 120) = v27;
  *(a2 + 104) = v26;
  *(a2 + 88) = v25;
  *v37 = v10;
  v37[1] = v11;
  v37[2] = v12;
  v37[3] = v13;
  v37[4] = v14;
  v37[5] = v15;
  v37[6] = v16;
  v37[7] = v17;

  sub_8198(&v33, v32, &qword_31A530, &unk_26F500);
  sub_8E80(v37, &qword_31A530, &unk_26F500);
}

__n128 sub_82FB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_82FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_83010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_831B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BackdropLayerView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_83218()
{
  result = qword_31A4C8;
  if (!qword_31A4C8)
  {
    sub_2F9C(&qword_31A4D0, &qword_26F2B8);
    sub_832A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4C8);
  }

  return result;
}

unint64_t sub_832A4()
{
  result = qword_31A4D8;
  if (!qword_31A4D8)
  {
    sub_2F9C(&qword_31A4E0, &qword_26F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4D8);
  }

  return result;
}

uint64_t sub_83318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_83380(void *a1)
{
  v2 = [a1 layer];
  isa = sub_2603D0().super.super.isa;
  v4 = sub_264420();
  [v2 setValue:isa forKeyPath:v4];

  v5 = [a1 layer];
  sub_834A4();
  v7 = v6;
  v8 = sub_264420();
  [v5 setValue:v7 forKeyPath:v8];
}

void sub_834A4()
{
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v1 setScale:1.0];
  [v1 setPreferredRange:0x7FFFLL];
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v1 format:{0.0, 0.0, 100.0, 100.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *v0;
  v5 = v0[1];
  *(v3 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v3 + 48) = v4;
  v6 = v0[2];
  *(v3 + 64) = v5;
  *(v3 + 80) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_84024;
  *(v7 + 24) = v3;
  v10[4] = sub_82BC4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1EB584;
  v10[3] = &unk_3058D0;
  v8 = _Block_copy(v10);

  v9 = [v2 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v9 CGImage];
  }
}

void sub_836B0(void *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(CAGradientLayer) init];
  [v12 setBounds:{a3, a4, a5, a6}];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_269100;
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  v16 = [v15 CGColor];

  type metadata accessor for CGColor(0);
  v18 = v17;
  *(v13 + 56) = v17;
  *(v13 + 32) = v16;
  v19 = [v14 clearColor];
  v20 = [v19 CGColor];

  *(v13 + 88) = v18;
  *(v13 + 64) = v20;
  isa = sub_264670().super.isa;

  [v12 setColors:isa];

  sub_2EF0(&qword_31A510, &unk_26F4F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26F1F0;
  *(v22 + 32) = sub_264780();
  sub_15C98(0, &qword_31A518, NSNumber_ptr);
  *(v22 + 40) = sub_264A10(1.0);
  v23 = sub_264670().super.isa;

  [v12 setLocations:v23];

  [v12 setStartPoint:{a2[1], a2[2]}];
  [v12 setEndPoint:{a2[3], a2[4]}];
  v24 = [a1 CGContext];
  [v12 renderInContext:v24];
}

uint64_t sub_839E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8405C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_83A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8405C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_83AA8(uint64_t a1)
{
  sub_8405C();
  sub_261F30();
  __break(1u);
}

unint64_t sub_83AD4()
{
  result = qword_31A4E8;
  if (!qword_31A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4E8);
  }

  return result;
}

void sub_83B2C(void *a1)
{
  v1 = [a1 layer];
  isa = sub_264780().super.super.isa;
  v3 = sub_264420();
  [v1 setValue:isa forKeyPath:v3];
}

uint64_t sub_83BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_83FC0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_83C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_83FC0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_83C9C(uint64_t a1)
{
  sub_83FC0();
  sub_261F30();
  __break(1u);
}

unint64_t sub_83CC8()
{
  result = qword_31A4F0;
  if (!qword_31A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A4F0);
  }

  return result;
}

id sub_83D1C()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackdropLayerView()) init];
  v1 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  isa = sub_264720().super.super.isa;
  v3 = sub_264420();
  [v1 setValue:isa forKey:v3];

  v4 = [v0 layer];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267D30;
  *(v5 + 56) = sub_15C98(0, &qword_31A500, CAFilter_ptr);
  *(v5 + 32) = v1;
  v6 = v1;
  v7 = sub_264670().super.isa;

  [v4 setFilters:v7];

  return v0;
}

id sub_83E94()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackdropLayerView()) init];
  v1 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v2 = [v0 layer];
  sub_2EF0(&qword_31A4F8, &qword_26F4E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267D30;
  *(v3 + 56) = sub_15C98(0, &qword_31A500, CAFilter_ptr);
  *(v3 + 32) = v1;
  v4 = v1;
  isa = sub_264670().super.isa;

  [v2 setFilters:isa];

  return v0;
}

unint64_t sub_83FC0()
{
  result = qword_31A508;
  if (!qword_31A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A508);
  }

  return result;
}

uint64_t sub_84044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8405C()
{
  result = qword_31A520;
  if (!qword_31A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A520);
  }

  return result;
}

uint64_t BooksFailureView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a3@<X8>)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1F458;
  a3[1] = result;
  return result;
}

uint64_t sub_84178@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_264A60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t SharedWithYouView.init(for:horizontalAlignment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_841EC@<X0>(uint64_t a3@<X8>)
{
  sub_10A84();

  result = sub_2628F0();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_84258()
{

  return swift_deallocObject();
}

uint64_t BooksFailureView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2622D0();
  v76 = *(v4 - 8);
  __chkstk_darwin(v4);
  v75 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262160();
  v73 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v68 = *(a1 + 16);
  v88 = v68;
  v89 = &type metadata for Image;
  v69 = v8;
  v90 = v8;
  v91 = &protocol witness table for Image;
  v9 = sub_263150();
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v64 = &v54 - v10;
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v11 = sub_261730();
  v65 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_261730();
  v66 = *(v14 - 8);
  __chkstk_darwin(v14);
  v63 = &v54 - v15;
  v71 = v9;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_84C84();
  v56 = WitnessTable;
  v86 = WitnessTable;
  v87 = v17;
  v67 = v11;
  v58 = swift_getWitnessTable();
  v84 = v58;
  v85 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_84CE8();
  v88 = v14;
  v89 = v6;
  v90 = v18;
  v91 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v54 - v21;
  v88 = v14;
  v89 = v6;
  v74 = v6;
  v60 = v18;
  v90 = v18;
  v91 = v19;
  v59 = v19;
  v22 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = v4;
  v88 = OpaqueTypeMetadata2;
  v89 = v4;
  v80 = OpaqueTypeConformance2;
  v90 = OpaqueTypeConformance2;
  v91 = &protocol witness table for EnabledTextSelectability;
  v24 = swift_getOpaqueTypeMetadata2();
  v79 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v57 = &v54 - v28;
  v29 = sub_264A60();
  v77 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v54 - v33;
  v78 = *v78;
  v35 = sub_260770();
  if (v35)
  {
    __chkstk_darwin(v35);
    v36 = v69;
    *(&v54 - 4) = v68;
    *(&v54 - 3) = v36;
    *(&v54 - 1) = v78;
    v55 = v34;
    v37 = v64;
    sub_263130();
    sub_262F20();
    *&v78 = a2;
    v38 = v71;
    sub_262D90();

    (*(v70 + 8))(v37, v38);
    sub_262F20();
    v39 = v63;
    v40 = v67;
    sub_262B80();

    (*(v65 + 8))(v13, v40);
    v41 = v72;
    sub_262150();
    v42 = v61;
    v43 = v74;
    sub_262A30();
    (*(v73 + 8))(v41, v43);
    (*(v66 + 8))(v39, v14);
    v44 = v75;
    sub_2622C0();
    v45 = v81;
    v46 = v82;
    v47 = v80;
    sub_262B10();
    (*(v76 + 8))(v44, v46);
    (*(v62 + 8))(v42, v45);
    v88 = v45;
    v89 = v46;
    v90 = v47;
    v34 = v55;
    v91 = &protocol witness table for EnabledTextSelectability;
    swift_getOpaqueTypeConformance2();
    v48 = v57;
    sub_1609C();
    v49 = v79;
    v50 = *(v79 + 8);
    v50(v26, v24);
    sub_1609C();
    v50(v48, v24);
    (*(v49 + 32))(v31, v26, v24);
    v22 = 0;
  }

  (*(v79 + 56))(v31, v22, 1, v24);
  v51 = v77;
  (*(v77 + 16))(v34, v31, v29);
  v52 = *(v51 + 8);
  v52(v31, v29);
  v88 = v81;
  v89 = v82;
  v90 = v80;
  v91 = &protocol witness table for EnabledTextSelectability;
  v83 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1609C();
  return (v52)(v34, v29);
}

unint64_t sub_84C84()
{
  result = qword_3183C8;
  if (!qword_3183C8)
  {
    sub_2F9C(&qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183C8);
  }

  return result;
}

unint64_t sub_84CE8()
{
  result = qword_31A538[0];
  if (!qword_31A538[0])
  {
    sub_262160();
    result = swift_getWitnessTable();
    atomic_store(result, qword_31A538);
  }

  return result;
}

uint64_t sub_84D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11(v8);
  sub_1609C();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_1609C();
  return (v12)(v10, a3);
}

uint64_t sub_84E80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_84F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_84F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_84F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_84FE0(uint64_t *a1)
{
  sub_263150();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  sub_261730();
  sub_261730();
  sub_262160();
  swift_getWitnessTable();
  sub_84C84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_84CE8();
  swift_getOpaqueTypeMetadata2();
  sub_2622D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_264A60();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

BOOL sub_851E4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24[15] = *(v0 + 63);
  v5 = v0[3];
  v23[2] = v0[2];
  *v24 = v5;
  v6 = v0[1];
  v23[0] = *v0;
  v23[1] = v6;
  if (v24[18])
  {
    v7 = v0[3];
    v20 = v0[2];
    v21 = v7;
    v22 = *(v0 + 32);
    v8 = v0[1];
    v18 = *v0;
    v19 = v8;
    v16 = v20;
    v17[0] = v7;
    *(v17 + 15) = *(v0 + 63);
    v14 = v18;
    v15 = v8;
    sub_8198(&v14, &v13, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v23, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v4, v1);
  }

  v14 = v18;
  v15 = v19;
  v16 = v20;
  v17[0] = v21;
  LOWORD(v17[1]) = v22;
  if (!*(&v18 + 1))
  {
    return 0;
  }

  v10 = v15;
  sub_8E80(&v14, &qword_317F48, &qword_26A9A0);
  return v10 < 2;
}

uint64_t PricePillView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_263EB0();
  v87 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_263EE0();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31A5C0, &qword_26F5E0);
  v76 = *(v7 - 8);
  v77 = v7;
  __chkstk_darwin(v7);
  v75 = &v72 - v8;
  v74 = sub_2EF0(&qword_31A5C8, &qword_26F5E8);
  __chkstk_darwin(v74);
  v79 = &v72 - v9;
  v78 = sub_2EF0(&qword_31A5D0, &qword_26F5F0);
  __chkstk_darwin(v78);
  v80 = &v72 - v10;
  v82 = sub_2EF0(&qword_31A5D8, &qword_26F5F8);
  __chkstk_darwin(v82);
  v83 = &v72 - v11;
  v12 = sub_2EF0(&qword_31A5E0, &qword_26F600);
  v90 = *(v12 - 8);
  v91 = v12;
  __chkstk_darwin(v12);
  v81 = &v72 - v13;
  v14 = sub_2EF0(&qword_31A5E8, &qword_26F608);
  v92 = *(v14 - 8);
  v93 = v14;
  __chkstk_darwin(v14);
  v89 = &v72 - v15;
  v16 = sub_261C90();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v114[15] = *(v2 + 63);
  LODWORD(v18) = *&v114[15];
  v20 = *(v2 + 48);
  v113[2] = *(v2 + 32);
  *v114 = v20;
  v21 = *(v2 + 16);
  v113[0] = *v2;
  v113[1] = v21;
  if ((v18 & 0x1000000) != 0)
  {
    v22 = *(v2 + 48);
    v110 = *(v2 + 32);
    v111 = v22;
    v112 = *(v2 + 64);
    v23 = *(v2 + 16);
    v108 = *v2;
    v109 = v23;
    v104 = v110;
    v105[0] = v22;
    *(v105 + 15) = *(v2 + 63);
    v102 = v108;
    v103 = v23;
    sub_8198(&v102, &v96, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v24 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v113, &qword_317F40, &qword_26E9D0);
    (*(v17 + 8))(v19, v16);
  }

  v106[0] = v108;
  v106[1] = v109;
  v106[2] = v110;
  v106[3] = v111;
  v107 = v112;
  if (*(&v108 + 1))
  {
    sub_8E80(v106, &qword_317F48, &qword_26A9A0);
    v25 = (v2 + *(type metadata accessor for PricePillView(0) + 24));
    sub_2E18(v25, v25[3]);
    v26 = sub_260920();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      if (!sub_851E4())
      {
        v72 = v4;
        v73 = a1;
        *&v102 = v28;
        *(&v102 + 1) = v29;
        sub_10A84();
        v32 = sub_2628F0();
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = sub_2624F0();
        sub_2610C0();
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v48 = v36 & 1;
        LOBYTE(v102) = v36 & 1;
        LOBYTE(v96) = 0;
        v49 = sub_2626F0();
        KeyPath = swift_getKeyPath();
        *&v96 = v32;
        *(&v96 + 1) = v34;
        LOBYTE(v97) = v48;
        *(&v97 + 1) = v38;
        LOBYTE(v98) = v39;
        *(&v98 + 1) = v41;
        *&v99 = v43;
        *(&v99 + 1) = v45;
        *&v100 = v47;
        BYTE8(v100) = 0;
        *&v101 = KeyPath;
        *(&v101 + 1) = v49;
        sub_2EF0(&qword_31A5F0, &qword_26F640);
        sub_86364();
        v51 = v75;
        sub_262D70();
        v104 = v98;
        v105[0] = v99;
        v105[1] = v100;
        v105[2] = v101;
        v102 = v96;
        v103 = v97;
        sub_8E80(&v102, &qword_31A5F0, &qword_26F640);
        sub_2E18(v25, v25[3]);
        if (sub_260880())
        {
          v52 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        }

        else
        {
          v52 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        }

        v53 = v52;
        v54 = v72;
        a1 = v73;
        v55 = v79;
        (*(v76 + 32))(v79, v51, v77);
        *(v55 + *(v74 + 36)) = v53;
        sub_2EF0(&qword_318288, &unk_27F080);
        sub_261300();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v56 = v80;
        sub_22148(v55, v80, &qword_31A5C8, &qword_26F5E8);
        v57 = (v56 + *(v78 + 36));
        v58 = v97;
        *v57 = v96;
        v57[1] = v58;
        v57[2] = v98;
        v59 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        v61 = v60;
        v62 = v83;
        v63 = &v83[*(v82 + 36)];
        sub_85E00(v2, v63);
        v64 = (v63 + *(sub_2EF0(&qword_31A610, &qword_26F650) + 36));
        *v64 = v59;
        v64[1] = v61;
        sub_22148(v56, v62, &qword_31A5D0, &qword_26F5F0);
        v65 = v87;
        v66 = v85;
        (*(v87 + 104))(v85, enum case for AutomationSemantics.Subcomponent.tagline(_:), v54);
        memset(v95, 0, sizeof(v95));
        memset(v94, 0, sizeof(v94));
        v67 = v84;
        sub_263EC0();
        sub_8E80(v94, &qword_316200, &qword_267FD0);
        sub_8E80(v95, &qword_316200, &qword_267FD0);
        (*(v65 + 8))(v66, v54);
        sub_864A0();
        v68 = v81;
        sub_262930();
        (*(v86 + 8))(v67, v88);
        sub_866D8(v62);
        v30 = v89;
        v69 = v90;
        v70 = v91;
        (*(v90 + 32))(v89, v68, v91);
        (*(v69 + 56))(v30, 0, 1, v70);
        goto LABEL_14;
      }
    }

    v30 = v89;
    (*(v90 + 56))(v89, 1, 1, v91);
LABEL_14:
    sub_22148(v30, a1, &qword_31A5E8, &qword_26F608);
    v31 = 0;
    return (*(v92 + 56))(a1, v31, 1, v93);
  }

  v31 = 1;
  return (*(v92 + 56))(a1, v31, 1, v93);
}

uint64_t type metadata accessor for PricePillView(uint64_t a1)
{
  result = qword_31A690;
  if (!qword_31A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_85E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_261DD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_263390();
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  __chkstk_darwin(v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v46 = sub_2EF0(&qword_31A6F8, &qword_26F6D0);
  v15 = __chkstk_darwin(v46);
  v17 = &v43 - v16;
  v18 = *(v4 + 104);
  v48 = v3;
  v45 = v18;
  (v18)(v9, enum case for RoundedCornerStyle.continuous(_:), v3, v15);
  v19 = (a1 + *(type metadata accessor for PricePillView(0) + 24));
  sub_2E18(v19, v19[3]);
  if (sub_260880())
  {
    v20 = sub_262FD0();
  }

  else
  {
    v20 = sub_262FA0();
  }

  v21 = v20;
  sub_86B68(v9, v14);
  *&v14[*(v10 + 52)] = v21;
  *&v14[*(v10 + 56)] = 256;
  sub_2E18(v19, v19[3]);
  if (sub_260880())
  {
    v22 = sub_262FA0();
  }

  else
  {
    v22 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v44 = v22;
  sub_261240();
  v23 = v47;
  sub_8198(v14, v47, &qword_31A6F0, &qword_26F6C8);
  sub_86BCC(v14, v17);
  v24 = v48;
  v45(v6, enum case for RoundedCornerStyle.circular(_:), v48);
  v25 = sub_261DC0();
  (*(v4 + 8))(v6, v24);
  v26 = v50;
  v27 = v52;
  v28 = COERCE_UNSIGNED_INT64(v50 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v25 & 1) == 0);
  v45 = v53;
  v29 = v54;
  v30 = *(v46 + 68);
  v48 = v17;
  v31 = &v17[v30];
  v32 = &v31[*(sub_2EF0(&qword_31A700, &qword_26F6D8) + 36)];
  sub_8198(v23, v32, &qword_31A6F0, &qword_26F6C8);
  v33 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v35 = v34;
  sub_8E80(v23, &qword_31A6F0, &qword_26F6C8);
  sub_8E80(v14, &qword_31A6F0, &qword_26F6C8);
  v36 = (v32 + *(sub_2EF0(&qword_31A708, &qword_26F6E0) + 36));
  *v36 = v33;
  v36[1] = v35;
  *v31 = v28;
  v37 = v51;
  *(v31 + 1) = v26;
  *(v31 + 2) = v37;
  *(v31 + 3) = v27;
  v38 = v44;
  *(v31 + 4) = v45;
  *(v31 + 5) = v29;
  *(v31 + 6) = v38;
  *(v31 + 28) = 256;
  sub_2E18(v19, v19[3]);
  if (sub_260880())
  {
    v39 = sub_262FA0();
  }

  else
  {
    v39 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v40 = v39;
  v41 = v49;
  sub_22148(v48, v49, &qword_31A6F8, &qword_26F6D0);
  result = sub_2EF0(&qword_31A710, &qword_26F6E8);
  *(v41 + *(result + 36)) = v40;
  return result;
}

uint64_t sub_862B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C00();
  *a1 = result;
  return result;
}

uint64_t sub_862E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C00();
  *a1 = result;
  return result;
}

unint64_t sub_86364()
{
  result = qword_31A5F8;
  if (!qword_31A5F8)
  {
    sub_2F9C(&qword_31A5F0, &qword_26F640);
    sub_8641C();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A5F8);
  }

  return result;
}

unint64_t sub_8641C()
{
  result = qword_31A600;
  if (!qword_31A600)
  {
    sub_2F9C(&qword_31A608, &qword_26F648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A600);
  }

  return result;
}

unint64_t sub_864A0()
{
  result = qword_31A618;
  if (!qword_31A618)
  {
    sub_2F9C(&qword_31A5D8, &qword_26F5F8);
    sub_86558();
    sub_8E38(&qword_31A630, &qword_31A610, &qword_26F650, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A618);
  }

  return result;
}

unint64_t sub_86558()
{
  result = qword_31A620;
  if (!qword_31A620)
  {
    sub_2F9C(&qword_31A5D0, &qword_26F5F0);
    sub_865E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A620);
  }

  return result;
}

unint64_t sub_865E4()
{
  result = qword_31A628;
  if (!qword_31A628)
  {
    sub_2F9C(&qword_31A5C8, &qword_26F5E8);
    sub_2F9C(&qword_31A5F0, &qword_26F640);
    sub_86364();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A628);
  }

  return result;
}

uint64_t sub_866D8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A5D8, &qword_26F5F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_86770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
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
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_86854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_318288, &unk_27F080);
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
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_86920(uint64_t a1)
{
  sub_869BC(319);
  if (v1 <= 0x3F)
  {
    sub_4BCBC(319);
    if (v2 <= 0x3F)
    {
      sub_44744();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_869BC(uint64_t a1)
{
  if (!qword_31A6A0)
  {
    sub_2F9C(&qword_317F48, &qword_26A9A0);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31A6A0);
    }
  }
}

unint64_t sub_86A24()
{
  result = qword_31A6D8;
  if (!qword_31A6D8)
  {
    sub_2F9C(&qword_31A6E0, &qword_26F6C0);
    sub_86AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A6D8);
  }

  return result;
}

unint64_t sub_86AA8()
{
  result = qword_31A6E8;
  if (!qword_31A6E8)
  {
    sub_2F9C(&qword_31A5E8, &qword_26F608);
    sub_2F9C(&qword_31A5D8, &qword_26F5F8);
    sub_864A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A6E8);
  }

  return result;
}

uint64_t sub_86B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_263390();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_86BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_263390();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_86C30(uint64_t a1, void (*a2)(uint64_t, __n128))
{
  v4 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  a2(a1, v8);
  sub_8198(v10, v6, &qword_31AA70, &qword_26FB70);
  sub_932E4();
  v11 = sub_263310();
  sub_8E80(v10, &qword_31AA70, &qword_26FB70);
  return v11;
}

uint64_t sub_86D44(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v11 = sub_2EF0(a4, a5);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v21 - v16;
  a2(a1, v15);
  v18 = sub_8198(v17, v13, a4, a5);
  a6(v18);
  v19 = sub_263310();
  sub_8E80(v17, a4, a5);
  return v19;
}

uint64_t sub_86E60(uint64_t a1, void (*a2)(uint64_t, __n128))
{
  v4 = sub_2EF0(&qword_31AB90, &qword_26FCF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - v10;
  a2(a1, v9);
  (*(v5 + 16))(v7, v11, v4);
  v12 = sub_2F9C(&qword_31AB98, &qword_26FD00);
  v13 = sub_261FA0();
  v14 = sub_2F9C(&qword_31ABA0, &qword_26FD08);
  v15 = sub_8E38(&qword_31ABA8, &qword_31ABA0, &qword_26FD08, &protocol conformance descriptor for Button<A>);
  v16 = sub_93AC0();
  v21 = v14;
  v22 = &type metadata for PressedButtonStyle;
  v23 = v15;
  v24 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v21 = v12;
  v22 = v13;
  v23 = OpaqueTypeConformance2;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_263310();
  (*(v5 + 8))(v11, v4);
  return v19;
}

uint64_t sub_870B8()
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

uint64_t sub_87200@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_873EC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_875D8@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C08, &unk_26AEF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v9, a1, type metadata accessor for FontConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_877C4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_3179C0, &qword_269D60);
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

uint64_t sub_879CC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TopLockupMetadataView(0) + 36);
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

uint64_t sub_87B24@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C18, &unk_26F830);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v10 + 40), v9, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2616C0();
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

uint64_t TopLockupMetadataView.init(preheader:title:subtitle:author:authorAction:authorImpressionMetrics:narrator:footer:isVibrant:highlightAttributionViewLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v18 = type metadata accessor for TopLockupMetadataView(0);
  v19 = v18[5];
  *(a9 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v20 = v18[6];
  *(a9 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v21 = v18[7];
  *(a9 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v22 = v18[8];
  *(a9 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v18[9];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v18[10];
  *(a9 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_8198(a1, a9 + v18[12], &qword_319B18, &qword_26DA40);
  sub_8198(a2, a9 + v18[13], &qword_319B18, &qword_26DA40);
  sub_8198(a3, a9 + v18[14], &qword_319B18, &qword_26DA40);
  sub_8198(a4, a9 + v18[15], &qword_319B18, &qword_26DA40);
  sub_8198(a5, a9 + v18[16], &qword_316BA0, &unk_268B90);
  sub_8198(a6, a9 + v18[17], &qword_315D48, &qword_266E40);
  sub_8198(a7, a9 + v18[18], &qword_31A718, &qword_26F840);
  sub_8198(a8, a9 + v18[19], &qword_31A720, &qword_26F848);
  *(a9 + v18[20]) = a10;
  type metadata accessor for HighlightAttributionViewLoader(0);
  sub_2631D0();
  sub_8E80(a8, &qword_31A720, &qword_26F848);
  sub_8E80(a7, &qword_31A718, &qword_26F840);
  sub_8E80(a6, &qword_315D48, &qword_266E40);
  sub_8E80(a5, &qword_316BA0, &unk_268B90);
  sub_8E80(a4, &qword_319B18, &qword_26DA40);
  sub_8E80(a3, &qword_319B18, &qword_26DA40);
  sub_8E80(a2, &qword_319B18, &qword_26DA40);
  result = sub_8E80(a1, &qword_319B18, &qword_26DA40);
  v26 = (a9 + v18[11]);
  *v26 = v34;
  v26[1] = v35;
  return result;
}

uint64_t TopLockupMetadataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A728, &qword_26F850);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_2EF0(&qword_31A730, &qword_26F858);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  if (sub_870B8())
  {
    v9 = sub_261E50();
  }

  else
  {
    v9 = sub_261E60();
  }

  *v5 = v9;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = sub_2EF0(&qword_31A738, &qword_26F860);
  sub_88280(v1, &v5[*(v10 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_22148(v5, v8, &qword_31A728, &qword_26F850);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  *(v12 + 1) = 6;
  v12[16] = 0;
  v13 = sub_870B8() & 1;
  v14 = swift_getKeyPath();
  sub_22148(v8, a1, &qword_31A730, &qword_26F858);
  result = sub_2EF0(&qword_31A740, &unk_26F8C8);
  v16 = a1 + *(result + 36);
  *v16 = v14;
  *(v16 + 8) = v13;
  return result;
}

uint64_t sub_88280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v318 = a2;
  v311 = sub_2EF0(&qword_31A918, &qword_26F990);
  __chkstk_darwin(v311);
  v329 = &v284 - v3;
  v312 = sub_2EF0(&qword_31A920, &qword_26F998);
  __chkstk_darwin(v312);
  v314 = &v284 - v4;
  v313 = sub_2EF0(&qword_31A928, &qword_26F9A0);
  __chkstk_darwin(v313);
  v317 = &v284 - v5;
  v316 = sub_2EF0(&qword_31A930, &qword_26F9A8);
  __chkstk_darwin(v316);
  v319 = &v284 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v315 = &v284 - v8;
  __chkstk_darwin(v9);
  v343 = &v284 - v10;
  v304 = sub_2EF0(&qword_31A938, &qword_26F9B0);
  __chkstk_darwin(v304);
  v325 = &v284 - v11;
  v305 = sub_2EF0(&qword_31A940, &qword_26F9B8);
  __chkstk_darwin(v305);
  v307 = &v284 - v12;
  v306 = sub_2EF0(&qword_31A948, &qword_26F9C0);
  __chkstk_darwin(v306);
  v326 = &v284 - v13;
  v309 = sub_2EF0(&qword_31A950, &unk_26F9C8);
  __chkstk_darwin(v309);
  v332 = &v284 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v308 = &v284 - v16;
  __chkstk_darwin(v17);
  v342 = &v284 - v18;
  v19 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v19 - 8);
  v321 = &v284 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v21 - 8);
  v320 = (&v284 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v348 = sub_263640();
  v345 = *(v348 - 8);
  __chkstk_darwin(v348);
  v310 = (&v284 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v303 = (&v284 - v25);
  __chkstk_darwin(v26);
  v302 = (&v284 - v27);
  __chkstk_darwin(v28);
  v299 = (&v284 - v29);
  __chkstk_darwin(v30);
  v297 = &v284 - v31;
  __chkstk_darwin(v32);
  v292 = (&v284 - v33);
  v34 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v34 - 8);
  v344 = (&v284 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v36 - 8);
  v288 = &v284 - v37;
  v287 = sub_262730();
  v38 = *(v287 - 8);
  __chkstk_darwin(v287);
  v285 = &v284 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v40 - 8);
  v42 = (&v284 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for TopLockupMetadataView(0);
  v349 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v347 = sub_2EF0(&qword_31A958, &qword_26F9D8);
  __chkstk_darwin(v347);
  v324 = &v284 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v296 = &v284 - v48;
  __chkstk_darwin(v49);
  v293 = &v284 - v50;
  __chkstk_darwin(v51);
  v53 = &v284 - v52;
  v323 = sub_2EF0(&qword_31A960, &qword_26F9E0);
  __chkstk_darwin(v323);
  v300 = &v284 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v295 = &v284 - v56;
  __chkstk_darwin(v57);
  v291 = &v284 - v58;
  __chkstk_darwin(v59);
  v289 = &v284 - v60;
  v346 = sub_2EF0(&qword_31A968, &qword_26F9E8);
  __chkstk_darwin(v346);
  v331 = &v284 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v330 = &v284 - v63;
  __chkstk_darwin(v64);
  v301 = &v284 - v65;
  __chkstk_darwin(v66);
  v294 = &v284 - v67;
  __chkstk_darwin(v68);
  v341 = &v284 - v69;
  __chkstk_darwin(v70);
  v290 = &v284 - v71;
  __chkstk_darwin(v72);
  v340 = &v284 - v73;
  __chkstk_darwin(v74);
  v286 = &v284 - v75;
  v322 = sub_2EF0(&qword_31A970, &unk_26F9F0);
  __chkstk_darwin(v322);
  v327 = &v284 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v328 = &v284 - v78;
  __chkstk_darwin(v79);
  v298 = &v284 - v80;
  __chkstk_darwin(v81);
  v338 = &v284 - v82;
  __chkstk_darwin(v83);
  v284 = &v284 - v84;
  __chkstk_darwin(v85);
  v339 = &v284 - v86;
  sub_8198(a1 + *(v43 + 48), v53, &qword_319B18, &qword_26DA40);
  sub_927C4(a1, &v284 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = *(v44 + 80);
  v88 = (v87 + 16) & ~v87;
  v336 = v45;
  v334 = v87;
  v89 = swift_allocObject();
  v335 = v88;
  v337 = &v284 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_93094(v337, v89 + v88, type metadata accessor for TopLockupMetadataView);
  v90 = swift_allocObject();
  *(v90 + 16) = sub_9282C;
  *(v90 + 24) = v89;
  v333 = sub_2EF0(&qword_319B20, &unk_26DA48);
  v91 = &v53[*(v333 + 28)];
  *v91 = sub_9287C;
  v91[1] = v90;
  v92 = v42;
  sub_875D8(v42);
  v93 = v285;
  v94 = v287;
  (*(v38 + 104))(v285, enum case for Font.TextStyle.caption(_:), v287);
  v95 = enum case for Font.Design.rounded(_:);
  v96 = sub_2625C0();
  v97 = *(v96 - 8);
  v98 = v288;
  (*(v97 + 104))(v288, v95, v96);
  (*(v97 + 56))(v98, 0, 1, v96);
  sub_262650();
  v99 = sub_262680();
  v100 = v98;
  v101 = a1;
  sub_8E80(v100, &qword_318458, &unk_26B270);
  v102 = v93;
  v103 = v92;
  (*(v38 + 8))(v102, v94);
  sub_9315C(v92, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v105 = &v53[*(v347 + 36)];
  *v105 = KeyPath;
  v105[1] = v99;
  v106 = *(a1 + v349[20]);
  v107 = v344;
  if (v106 == 1)
  {
    sub_873EC(v344);
    v108 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v107, type metadata accessor for ColorConstants);
  }

  else
  {
    v108 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v109 = swift_getKeyPath();
  v110 = v289;
  sub_22148(v53, v289, &qword_31A958, &qword_26F9D8);
  v111 = v323;
  v112 = (v110 + *(v323 + 36));
  *v112 = v109;
  v112[1] = v108;
  v113 = v348;
  if (v106)
  {
    v114 = v292;
    sub_877C4(v292);
    v115 = v114;
    v113 = v348;
    v116 = v345;
  }

  else
  {
    v116 = v345;
    v115 = v292;
    (*(v345 + 104))(v292, enum case for BlendMode.normal(_:), v348);
  }

  v117 = *(v116 + 32);
  v118 = v286;
  v117(&v286[*(v346 + 36)], v115, v113);
  sub_22148(v110, v118, &qword_31A960, &qword_26F9E0);
  v119 = sub_262520();
  sub_2610C0();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v128 = v284;
  sub_22148(v118, v284, &qword_31A968, &qword_26F9E8);
  v129 = v128 + *(v322 + 36);
  *v129 = v119;
  *(v129 + 8) = v121;
  *(v129 + 16) = v123;
  *(v129 + 24) = v125;
  *(v129 + 32) = v127;
  *(v129 + 40) = 0;
  sub_22148(v128, v339, &qword_31A970, &unk_26F9F0);
  v130 = v293;
  sub_8198(v101 + v349[13], v293, &qword_319B18, &qword_26DA40);
  v131 = (v130 + *(v333 + 28));
  *v131 = sub_727E0;
  v131[1] = 0;
  sub_875D8(v103);
  v132 = sub_8B8EC();
  sub_9315C(v103, type metadata accessor for FontConstants);
  v133 = swift_getKeyPath();
  v134 = (v130 + *(v347 + 36));
  *v134 = v133;
  v134[1] = v132;
  if (v106)
  {
    v135 = v344;
    sub_873EC(v344);
    v136 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v135, type metadata accessor for ColorConstants);
  }

  else
  {
    v136 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v137 = v297;
  v138 = swift_getKeyPath();
  v139 = v130;
  v140 = v291;
  sub_22148(v139, v291, &qword_31A958, &qword_26F9D8);
  v141 = (v140 + *(v111 + 36));
  *v141 = v138;
  v141[1] = v136;
  if (v106)
  {
    sub_877C4(v137);
    v142 = v348;
  }

  else
  {
    v142 = v348;
    (*(v345 + 104))(v137, enum case for BlendMode.normal(_:), v348);
  }

  v143 = v290;
  v117(&v290[*(v346 + 36)], v137, v142);
  sub_22148(v140, v143, &qword_31A960, &qword_26F9E0);
  sub_22148(v143, v340, &qword_31A968, &qword_26F9E8);
  v144 = v296;
  sub_8198(v101 + v349[14], v296, &qword_319B18, &qword_26DA40);
  v145 = (v144 + *(v333 + 28));
  *v145 = sub_727E0;
  v145[1] = 0;
  sub_875D8(v103);
  v146 = sub_8BAFC();
  sub_9315C(v103, type metadata accessor for FontConstants);
  v147 = swift_getKeyPath();
  v148 = (v144 + *(v347 + 36));
  *v148 = v147;
  v148[1] = v146;
  if (v106)
  {
    v149 = v344;
    sub_873EC(v344);
    v150 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v149, type metadata accessor for ColorConstants);
  }

  else
  {
    v150 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v151 = swift_getKeyPath();
  v152 = v144;
  v153 = v295;
  sub_22148(v152, v295, &qword_31A958, &qword_26F9D8);
  v154 = (v153 + *(v111 + 36));
  *v154 = v151;
  v154[1] = v150;
  v155 = v299;
  if (v106)
  {
    sub_877C4(v299);
    v156 = v348;
  }

  else
  {
    v156 = v348;
    (*(v345 + 104))(v299, enum case for BlendMode.normal(_:), v348);
  }

  v157 = v294;
  v158 = v117;
  v117(&v294[*(v346 + 36)], v155, v156);
  sub_22148(v153, v157, &qword_31A960, &qword_26F9E0);
  sub_22148(v157, v341, &qword_31A968, &qword_26F9E8);
  v159 = v324;
  sub_8198(v101 + v349[15], v324, &qword_319B18, &qword_26DA40);
  v160 = v337;
  sub_927C4(v101, v337);
  v161 = v335;
  v162 = swift_allocObject();
  sub_93094(v160, v162 + v161, type metadata accessor for TopLockupMetadataView);
  v163 = swift_allocObject();
  *(v163 + 16) = sub_92F88;
  *(v163 + 24) = v162;
  v164 = (v159 + *(v333 + 28));
  *v164 = sub_93034;
  v164[1] = v163;
  sub_875D8(v103);
  v165 = sub_8D448();
  sub_9315C(v103, type metadata accessor for FontConstants);
  v166 = swift_getKeyPath();
  v167 = (v159 + *(v347 + 36));
  *v167 = v166;
  v167[1] = v165;
  if (v106)
  {
    v168 = v344;
    sub_873EC(v344);
    v169 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v168, type metadata accessor for ColorConstants);
  }

  else
  {
    v169 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v170 = v301;
  v171 = swift_getKeyPath();
  v172 = v300;
  sub_22148(v324, v300, &qword_31A958, &qword_26F9D8);
  v173 = (v172 + *(v323 + 36));
  *v173 = v171;
  v173[1] = v169;
  v174 = v158;
  v175 = v302;
  if (v106)
  {
    sub_877C4(v302);
    v176 = v348;
  }

  else
  {
    v176 = v348;
    (*(v345 + 104))(v302, enum case for BlendMode.normal(_:), v348);
  }

  v158(v170 + *(v346 + 36), v175, v176);
  sub_22148(v172, v170, &qword_31A960, &qword_26F9E0);
  v177 = sub_262510();
  if (sub_870B8())
  {
    v178 = v320;
    sub_87200(v320);
    v179 = v321;
    sub_93094(v178, v321, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v179, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;
  v188 = v298;
  sub_22148(v170, v298, &qword_31A968, &qword_26F9E8);
  v189 = v188 + *(v322 + 36);
  *v189 = v177;
  *(v189 + 8) = v181;
  *(v189 + 16) = v183;
  *(v189 + 24) = v185;
  *(v189 + 32) = v187;
  *(v189 + 40) = 0;
  sub_22148(v188, v338, &qword_31A970, &unk_26F9F0);
  v190 = v325;
  sub_8198(v101 + v349[18], v325, &qword_31A718, &qword_26F840);
  v191 = v337;
  sub_927C4(v101, v337);
  v192 = v335;
  v193 = swift_allocObject();
  sub_93094(v191, v193 + v192, type metadata accessor for TopLockupMetadataView);
  v194 = swift_allocObject();
  *(v194 + 16) = sub_93074;
  *(v194 + 24) = v193;
  v195 = (v190 + *(sub_2EF0(&qword_31A978, &qword_26FA60) + 28));
  *v195 = sub_9308C;
  v195[1] = v194;
  sub_875D8(v103);
  v196 = sub_8D448();
  sub_9315C(v103, type metadata accessor for FontConstants);
  v197 = swift_getKeyPath();
  v198 = (v190 + *(v304 + 36));
  *v198 = v197;
  v198[1] = v196;
  if (v106)
  {
    v199 = v344;
    sub_873EC(v344);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v200 = sub_263000();

    sub_9315C(v199, type metadata accessor for ColorConstants);
  }

  else
  {
    v200 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v201 = v307;
  v202 = swift_getKeyPath();
  sub_22148(v325, v201, &qword_31A938, &qword_26F9B0);
  v203 = (v201 + *(v305 + 36));
  *v203 = v202;
  v203[1] = v200;
  if (v106)
  {
    v204 = v303;
    sub_877C4(v303);
    v205 = v204;
    v206 = v348;
  }

  else
  {
    v205 = v303;
    v206 = v348;
    (*(v345 + 104))(v303, enum case for BlendMode.normal(_:), v348);
  }

  v207 = v326;
  v158(v326 + *(v306 + 36), v205, v206);
  sub_22148(v201, v207, &qword_31A940, &qword_26F9B8);
  v208 = sub_262510();
  if ((sub_870B8() & 1) == 0)
  {
    v209 = v320;
    sub_87200(v320);
    v210 = v321;
    sub_93094(v209, v321, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v210, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v212 = v211;
  v214 = v213;
  v216 = v215;
  v218 = v217;
  v219 = v308;
  sub_22148(v326, v308, &qword_31A948, &qword_26F9C0);
  v220 = v219 + *(v309 + 36);
  *v220 = v208;
  *(v220 + 8) = v212;
  *(v220 + 16) = v214;
  *(v220 + 24) = v216;
  *(v220 + 32) = v218;
  *(v220 + 40) = 0;
  sub_22148(v219, v342, &qword_31A950, &unk_26F9C8);
  v221 = v329;
  sub_8198(v101 + v349[19], v329, &qword_31A720, &qword_26F848);
  v222 = v337;
  sub_927C4(v101, v337);
  v223 = v335;
  v224 = swift_allocObject();
  sub_93094(v222, v224 + v223, type metadata accessor for TopLockupMetadataView);
  v225 = swift_allocObject();
  *(v225 + 16) = sub_930FC;
  *(v225 + 24) = v224;
  v226 = (v221 + *(sub_2EF0(&qword_31A980, &qword_26FA68) + 28));
  *v226 = sub_93114;
  v226[1] = v225;
  sub_875D8(v103);
  v227 = sub_8D448();
  sub_9315C(v103, type metadata accessor for FontConstants);
  v228 = swift_getKeyPath();
  v229 = (v221 + *(v311 + 36));
  *v229 = v228;
  v229[1] = v227;
  if (v106)
  {
    v230 = v344;
    sub_873EC(v344);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v231 = sub_263000();

    sub_9315C(v230, type metadata accessor for ColorConstants);
  }

  else
  {
    v231 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v232 = v317;
  v233 = v314;
  v234 = swift_getKeyPath();
  sub_22148(v329, v233, &qword_31A918, &qword_26F990);
  v235 = (v233 + *(v312 + 36));
  *v235 = v234;
  v235[1] = v231;
  v236 = v348;
  if (v106)
  {
    v237 = v310;
    sub_877C4(v310);
  }

  else
  {
    v237 = v310;
    (*(v345 + 104))(v310, enum case for BlendMode.normal(_:), v348);
  }

  v174(v232 + *(v313 + 36), v237, v236);
  sub_22148(v233, v232, &qword_31A920, &qword_26F998);
  v238 = sub_262510();
  if (sub_870B8())
  {
    v239 = v320;
    sub_87200(v320);
    v240 = v321;
    sub_93094(v239, v321, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v240, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v242 = v241;
  v244 = v243;
  v246 = v245;
  v248 = v247;
  v249 = v315;
  sub_22148(v232, v315, &qword_31A928, &qword_26F9A0);
  v250 = v249 + *(v316 + 36);
  *v250 = v238;
  *(v250 + 8) = v242;
  *(v250 + 16) = v244;
  *(v250 + 24) = v246;
  *(v250 + 32) = v248;
  *(v250 + 40) = 0;
  sub_22148(v249, v343, &qword_31A930, &qword_26F9A8);
  v251 = (v101 + v349[11]);
  v253 = *v251;
  v252 = v251[1];
  v353 = v253;
  v354 = v252;
  sub_2EF0(&qword_31A988, &qword_26FA70);
  sub_2631E0();
  v254 = v350;
  swift_getKeyPath();
  v353 = v254;
  sub_947D8(&qword_31A990, type metadata accessor for HighlightAttributionViewLoader, &protocol conformance descriptor for HighlightAttributionViewLoader);
  sub_260380();

  v255 = *(v254 + 16);
  v256 = v255;

  v349 = v255;
  if (v255)
  {
    if (sub_870B8())
    {
      v257 = 2;
    }

    else
    {
      v257 = 1;
    }

    v258 = v256;
    v259 = sub_262510();
    if (sub_870B8())
    {
      v260 = v320;
      sub_87200(v320);
      v261 = v321;
      sub_93094(v260, v321, type metadata accessor for SizeConstants.Environment);
      sub_9315C(v261, type metadata accessor for SizeConstants.Spacing);
    }

    sub_2610C0();
    v263 = v262;
    v265 = v264;
    v267 = v266;
    v269 = v268;

    v348 = v259;
    v347 = v257;
  }

  else
  {
    v347 = 0;
    v348 = 0;
    v263 = 0;
    v265 = 0;
    v267 = 0;
    v269 = 0;
  }

  v270 = v328;
  sub_8198(v339, v328, &qword_31A970, &unk_26F9F0);
  v271 = v330;
  sub_8198(v340, v330, &qword_31A968, &qword_26F9E8);
  v272 = v331;
  sub_8198(v341, v331, &qword_31A968, &qword_26F9E8);
  v273 = v327;
  sub_8198(v338, v327, &qword_31A970, &unk_26F9F0);
  v274 = v332;
  sub_8198(v342, v332, &qword_31A950, &unk_26F9C8);
  v275 = v319;
  sub_8198(v343, v319, &qword_31A930, &qword_26F9A8);
  v276 = v318;
  sub_8198(v270, v318, &qword_31A970, &unk_26F9F0);
  v277 = sub_2EF0(&qword_31A998, &qword_26FAA0);
  sub_8198(v271, v276 + v277[12], &qword_31A968, &qword_26F9E8);
  sub_8198(v272, v276 + v277[16], &qword_31A968, &qword_26F9E8);
  sub_8198(v273, v276 + v277[20], &qword_31A970, &unk_26F9F0);
  sub_8198(v274, v276 + v277[24], &qword_31A950, &unk_26F9C8);
  sub_8198(v275, v276 + v277[28], &qword_31A930, &qword_26F9A8);
  v278 = (v276 + v277[32]);
  v279 = v349;
  v280 = v347;
  *&v350 = v349;
  *(&v350 + 1) = v347;
  v281 = v348;
  *&v351 = v348;
  *(&v351 + 1) = v263;
  *v352 = v265;
  *&v352[8] = v267;
  *&v352[16] = v269;
  v352[24] = 0;
  v282 = v351;
  *v278 = v350;
  v278[1] = v282;
  v278[2] = *v352;
  *(v278 + 41) = *&v352[9];
  sub_8198(&v350, &v353, &qword_31A9A0, &qword_26FAA8);
  sub_8E80(v343, &qword_31A930, &qword_26F9A8);
  sub_8E80(v342, &qword_31A950, &unk_26F9C8);
  sub_8E80(v338, &qword_31A970, &unk_26F9F0);
  sub_8E80(v341, &qword_31A968, &qword_26F9E8);
  sub_8E80(v340, &qword_31A968, &qword_26F9E8);
  sub_8E80(v339, &qword_31A970, &unk_26F9F0);
  v353 = v279;
  v354 = v280;
  v355 = v281;
  v356 = v263;
  v357 = v265;
  v358 = v267;
  v359 = v269;
  v360 = 0;
  sub_8E80(&v353, &qword_31A9A0, &qword_26FAA8);
  sub_8E80(v275, &qword_31A930, &qword_26F9A8);
  sub_8E80(v332, &qword_31A950, &unk_26F9C8);
  sub_8E80(v327, &qword_31A970, &unk_26F9F0);
  sub_8E80(v331, &qword_31A968, &qword_26F9E8);
  sub_8E80(v330, &qword_31A968, &qword_26F9E8);
  return sub_8E80(v328, &qword_31A970, &unk_26F9F0);
}

uint64_t sub_8A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v30 = a3;
  v4 = sub_261FA0();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  __chkstk_darwin(v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TopLockupMetadataView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_2EF0(&qword_31ABA0, &qword_26FD08);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v25 = sub_2EF0(&qword_31AB98, &qword_26FD00);
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v25 - v15;
  sub_927C4(a2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_93094(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TopLockupMetadataView);
  v31 = a2;
  v32 = v26;
  sub_2EF0(&qword_31ABB0, &qword_26FD10);
  sub_93E8C();
  sub_263230();
  v19 = sub_8E38(&qword_31ABA8, &qword_31ABA0, &qword_26FD08, &protocol conformance descriptor for Button<A>);
  v20 = sub_93AC0();
  sub_262A60();
  (*(v11 + 8))(v13, v10);
  v21 = v27;
  sub_2618C0();
  v33 = v10;
  v34 = &type metadata for PressedButtonStyle;
  v35 = v19;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v22 = v25;
  v23 = v28;
  sub_262AA0();
  (*(v29 + 8))(v21, v23);
  return (*(v14 + 8))(v16, v22);
}