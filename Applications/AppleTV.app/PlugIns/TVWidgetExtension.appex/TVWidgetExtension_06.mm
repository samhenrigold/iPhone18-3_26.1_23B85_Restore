uint64_t sub_1000AB304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_100006334(&qword_100127528, &qword_1000EBED0);
  __chkstk_darwin(v59);
  v5 = &v50 - v4;
  v6 = sub_1000D1E0C();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100006334(&qword_100127530, &qword_1000EBED8);
  __chkstk_darwin(v57);
  v9 = &v50 - v8;
  v10 = sub_100006334(&qword_100127538, &qword_1000EBEE0);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v50 - v11;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100006334(&qword_100127540, &qword_1000EBEE8);
  v20 = __chkstk_darwin(v19 - 8);
  v56 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v23 = *a1;
  _ZF = (*a1 & 0xC000000000000001) == 0;
  v60 = v5;
  v61 = a2;
  v58 = &v50 - v25;
  if (_ZF)
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v49 = *(v23 + 32);
  }

  else
  {
    v49 = sub_1000D38FC();
  }

  (*(v13 + 104))(v15, enum case for WidgetFamily.systemSmall(_:), v12);
  v26 = *(v49 + 16);

  v27 = sub_1000D1EDC();
  v28 = sub_1000D1ECC();
  v55 = v10;
  if (v27)
  {
    if ((v28 & ~v27) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v28)
  {
    v27 = 0;
    goto LABEL_11;
  }

  v27 |= v28;
LABEL_11:
  v29 = sub_1000D2B8C();
  *v18 = 0;
  (*(v13 + 32))(&v18[v16[5]], v15, v12);
  *&v18[v16[6]] = v26;
  v30 = &v18[v16[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v30 = xmmword_1000EBB20;
  *(v30 + 1) = _Q1;
  v30[32] = 1;
  *(v30 + 33) = v67;
  v30[35] = v68;
  *(v30 + 9) = v27;
  *(v30 + 5) = v29;
  *(v30 + 3) = xmmword_1000EBB30;
  v30[64] = 0;
  *(v30 + 65) = *v66;
  *(v30 + 17) = *&v66[3];
  *(v30 + 9) = 0;
  *(v30 + 79) = 0;
  *(v30 + 83) = v64;
  v30[87] = v65;
  *(v30 + 11) = 0;
  if (*(v49 + 24) == 1)
  {
    sub_1000B4CEC(v18, v9, type metadata accessor for TVWidgetContentView);
    v35 = v57;
    *&v9[*(v57 + 36)] = 0x3FF0000000000000;
    v36 = v50;
    sub_1000D1DFC();
    v37 = sub_1000B4D54();
    v38 = v53;
    sub_1000D27AC();
    (*(v51 + 8))(v36, v52);
    sub_10000F938(v9, &qword_100127530, &qword_1000EBED8);
    v40 = v54;
    v39 = v55;
    (*(v54 + 16))(v60, v38, v55);
    swift_storeEnumTagMultiPayload();
    v62 = v35;
    v63 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v41 = v56;
    sub_1000D229C();
    (*(v40 + 8))(v38, v39);
  }

  else
  {
    sub_1000B4CEC(v18, v60, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1000B4D54();
    v62 = v57;
    v63 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v41 = v56;
    sub_1000D229C();
  }

  sub_1000B3FD0(v18, type metadata accessor for TVWidgetContentView);
  v43 = v58;
  sub_10000F998(v41, v58, &qword_100127540, &qword_1000EBEE8);
  v44 = sub_10008885C();
  v46 = v45;

  v47 = v61;
  sub_10000F998(v43, v61, &qword_100127540, &qword_1000EBEE8);
  result = sub_100006334(&qword_100127568, &qword_1000EBEF8);
  v48 = (v47 + *(result + 52));
  *v48 = v44;
  v48[1] = v46;
  return result;
}

uint64_t sub_1000ABA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_1000D21BC();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  sub_100006334(a3, a4);
  return a5(a2, a1);
}

uint64_t sub_1000ABAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[1] = a2;
  v51 = a3;
  v4 = type metadata accessor for TVWidgetNoContentTextView(0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  __chkstk_darwin(v4);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006334(&qword_1001274E0, &qword_1000EBE98);
  v8 = __chkstk_darwin(v7 - 8);
  v50 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v41 - v10;
  v43 = sub_100006334(&qword_100127578, &qword_1000EBF08);
  __chkstk_darwin(v43);
  v12 = v41 - v11;
  v45 = sub_100006334(&qword_100127580, &qword_1000EBF10);
  __chkstk_darwin(v45);
  v14 = v41 - v13;
  v44 = sub_100006334(&qword_100127588, &qword_1000EBF18);
  __chkstk_darwin(v44);
  v16 = v41 - v15;
  v17 = sub_100006334(&qword_100127590, &qword_1000EBF20);
  v18 = __chkstk_darwin(v17 - 8);
  v46 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = v41 - v20;
  v21 = *(a1 + 104);
  *v16 = sub_1000D210C();
  *(v16 + 1) = v21;
  v16[16] = 0;
  sub_100006334(&qword_100127598, &qword_1000EBF28);
  *&v53 = *a1;
  swift_getKeyPath();

  sub_100006334(&qword_1001275A0, &qword_1000EBF58);
  sub_100006334(&qword_1001275A8, &qword_1000EBF60);
  sub_10000FC38(&qword_1001275B0, &qword_1001275A0, &qword_1000EBF58, &protocol conformance descriptor for [A]);
  sub_1000B50A0();
  sub_1000D2ABC();
  v22 = *(a1 + 8);
  if (v22 == 4)
  {
    sub_10000F8D0(v16, v12, &qword_100127588, &qword_1000EBF18);
    v23 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000B5190();
    sub_10000FC38(&qword_1001275C8, &qword_100127588, &qword_1000EBF18, &protocol conformance descriptor for HStack<A>);
    sub_1000D229C();
    sub_10000F938(v16, &qword_100127588, &qword_1000EBF18);
    v25 = v47;
    v24 = v48;
  }

  else
  {
    sub_1000D1CDC();
    sub_1000D2B5C();
    sub_1000D1C8C();
    sub_10000F8D0(v16, v14, &qword_100127588, &qword_1000EBF18);
    v26 = &v14[*(v45 + 36)];
    v27 = v54;
    *v26 = v53;
    *(v26 + 1) = v27;
    *(v26 + 2) = v55;
    sub_10000F8D0(v14, v12, &qword_100127580, &qword_1000EBF10);
    swift_storeEnumTagMultiPayload();
    sub_1000B5190();
    sub_10000FC38(&qword_1001275C8, &qword_100127588, &qword_1000EBF18, &protocol conformance descriptor for HStack<A>);
    sub_1000D229C();
    sub_10000F938(v14, &qword_100127580, &qword_1000EBF10);
    sub_10000F938(v16, &qword_100127588, &qword_1000EBF18);
    v28 = v48;
    v29 = *(v48 + 20);
    v30 = enum case for WidgetFamily.systemMedium(_:);
    v31 = sub_1000D323C();
    v32 = v42;
    (*(*(v31 - 8) + 104))(&v42[v29], v30, v31);
    sub_1000D324C();
    v33 = sub_1000D287C();
    *v32 = v22;
    v34 = &v32[*(v28 + 28)];
    *v34 = v33;
    *(v34 + 1) = 0x3FE999999999999ALL;
    v34[16] = 1;
    v25 = v47;
    sub_1000B4C84(v32, v47, type metadata accessor for TVWidgetNoContentTextView);
    v23 = 0;
    v24 = v28;
  }

  (*(v49 + 56))(v25, v23, 1, v24);
  v35 = v52;
  v36 = v46;
  sub_10000F8D0(v52, v46, &qword_100127590, &qword_1000EBF20);
  v37 = v50;
  sub_10000F8D0(v25, v50, &qword_1001274E0, &qword_1000EBE98);
  v38 = v51;
  sub_10000F8D0(v36, v51, &qword_100127590, &qword_1000EBF20);
  v39 = sub_100006334(&qword_1001275D0, &qword_1000EBF68);
  sub_10000F8D0(v37, v38 + *(v39 + 48), &qword_1001274E0, &qword_1000EBE98);
  sub_10000F938(v25, &qword_1001274E0, &qword_1000EBE98);
  sub_10000F938(v35, &qword_100127590, &qword_1000EBF20);
  sub_10000F938(v37, &qword_1001274E0, &qword_1000EBE98);
  return sub_10000F938(v36, &qword_100127590, &qword_1000EBF20);
}

uint64_t sub_1000AC214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008885C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000AC240(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1000AC284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v36 = sub_100006334(&qword_1001275D8, &qword_1000EBF70);
  __chkstk_darwin(v36);
  v38 = &v32 - v3;
  v4 = sub_1000D1E0C();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100006334(&qword_1001275E0, &qword_1000EBF78);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v32 - v7;
  v8 = sub_1000D323C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  (*(v9 + 104))(v11, enum case for WidgetFamily.systemMedium(_:), v8);
  v16 = *(v15 + 16);

  v17 = sub_1000D1EDC();
  v18 = sub_1000D1ECC();
  if (!v17)
  {
    if (!v18)
    {
      v17 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v17 |= v18;
    goto LABEL_7;
  }

  if ((v18 & ~v17) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v19 = sub_1000D2B8C();
  *v14 = 0;
  (*(v9 + 32))(&v14[v12[5]], v11, v8);
  *&v14[v12[6]] = v16;
  v20 = &v14[v12[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v20 = xmmword_1000EBB20;
  *(v20 + 1) = _Q1;
  v20[32] = 0;
  *(v20 + 33) = v45;
  v20[35] = v46;
  *(v20 + 9) = v17;
  *(v20 + 5) = v19;
  *(v20 + 3) = xmmword_1000EBB30;
  v20[64] = 0;
  *(v20 + 65) = *v44;
  *(v20 + 17) = *&v44[3];
  *(v20 + 9) = 0;
  *(v20 + 79) = 0;
  *(v20 + 83) = v42;
  v20[87] = v43;
  *(v20 + 11) = 0;
  if (*(v15 + 24) == 1)
  {
    sub_1000D1DFC();
    v26 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v27 = v34;
    sub_1000D27AC();
    (*(v32 + 8))(v6, v33);
    v28 = v35;
    v29 = v37;
    (*(v35 + 16))(v38, v27, v37);
    swift_storeEnumTagMultiPayload();
    v40 = v12;
    v41 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    sub_1000B4CEC(v14, v38, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v40 = v12;
    v41 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
  }

  return sub_1000B3FD0(v14, type metadata accessor for TVWidgetContentView);
}

uint64_t sub_1000AC810@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000B4CEC(v5, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  result = sub_1000B4C84(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, a3);
  *a5 = a4;
  a5[1] = v13;
  return result;
}

uint64_t sub_1000AC900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D329C();
  v122 = *(v4 - 8);
  __chkstk_darwin(v4);
  v120 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100006334(&qword_1001275F0, &qword_1000EBF88);
  __chkstk_darwin(v115);
  v116 = &v96 - v6;
  v7 = type metadata accessor for TVWidgetLarge(0);
  v8 = *(v7 - 8);
  v117 = v7;
  v118 = v8;
  __chkstk_darwin(v7);
  v119 = v9;
  v121 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100006334(&qword_1001275F8, &qword_1000EBF90);
  __chkstk_darwin(v114);
  v102 = &v96 - v10;
  v106 = sub_100006334(&qword_100127600, &qword_1000EBF98);
  __chkstk_darwin(v106);
  v12 = &v96 - v11;
  v99 = sub_1000D1E0C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100006334(&qword_100127608, &qword_1000EBFA0);
  __chkstk_darwin(v104);
  v15 = &v96 - v14;
  v107 = sub_100006334(&qword_100127610, &qword_1000EBFA8);
  v101 = *(v107 - 8);
  __chkstk_darwin(v107);
  v100 = &v96 - v16;
  v17 = sub_1000D323C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v21);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100006334(&qword_100127618, &qword_1000EBFB0);
  v24 = __chkstk_darwin(v111);
  v105 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v126 = &v96 - v26;
  v27 = sub_100006334(&qword_100127620, &qword_1000EBFB8);
  __chkstk_darwin(v27 - 8);
  v110 = &v96 - v28;
  v29 = sub_100006334(&qword_100127628, &qword_1000EBFC0);
  v30 = __chkstk_darwin(v29);
  v31 = __chkstk_darwin(v30);
  result = __chkstk_darwin(v31);
  v33 = *a1;
  _ZF = (*a1 & 0xC000000000000001) == 0;
  v123 = v4;
  v124 = a2;
  v113 = v35;
  v112 = &v96 - v36;
  v109 = result;
  v108 = v37;
  if (_ZF)
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v95 = *(v33 + 32);
  }

  else
  {
    v95 = sub_1000D38FC();
  }

  (*(v18 + 104))(v20, enum case for WidgetFamily.systemLarge(_:), v17);
  v125 = v95;
  v38 = *(v95 + 16);

  v39 = sub_1000D1EDC();
  v40 = sub_1000D1ECC();
  v103 = a1;
  if (v39)
  {
    if ((v40 & ~v39) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v40)
  {
    v39 = 0;
    goto LABEL_11;
  }

  v39 |= v40;
LABEL_11:
  v41 = sub_1000D2B8C();
  *v23 = 2;
  (*(v18 + 32))(&v23[v21[5]], v20, v17);
  *&v23[v21[6]] = v38;
  v42 = &v23[v21[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v42 = xmmword_1000EBB20;
  *(v42 + 1) = _Q1;
  v42[32] = 0;
  *(v42 + 33) = v132;
  v42[35] = v133;
  *(v42 + 9) = v39;
  *(v42 + 5) = v41;
  *(v42 + 3) = xmmword_1000EBB30;
  v42[64] = 0;
  *(v42 + 65) = *v131;
  *(v42 + 17) = *&v131[3];
  *(v42 + 9) = 0;
  *(v42 + 40) = 257;
  v42[82] = 0;
  *(v42 + 83) = v129;
  v42[87] = v130;
  *(v42 + 11) = 0;
  if (*(v125 + 24) == 1)
  {
    v47 = sub_1000D29DC();
    sub_1000B4CEC(v23, v15, type metadata accessor for TVWidgetContentView);
    v48 = v104;
    v49 = &v15[*(v104 + 36)];
    *v49 = v47;
    v49[1] = sub_1000B6224;
    v49[2] = 0;
    v50 = v97;
    sub_1000D1DFC();
    v51 = sub_1000B5248();
    v52 = v100;
    sub_1000D27AC();
    (*(v98 + 8))(v50, v99);
    sub_10000F938(v15, &qword_100127608, &qword_1000EBFA0);
    v53 = v101;
    v54 = v107;
    (*(v101 + 16))(v12, v52, v107);
    swift_storeEnumTagMultiPayload();
    v127 = v48;
    v128 = v51;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v55 = v105;
    sub_1000D229C();
    (*(v53 + 8))(v52, v54);
  }

  else
  {
    sub_1000B4CEC(v23, v12, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v56 = sub_1000B5248();
    v127 = v104;
    v128 = v56;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v55 = v105;
    sub_1000D229C();
  }

  v57 = v103;
  v58 = v118;
  sub_1000B3FD0(v23, type metadata accessor for TVWidgetContentView);
  v59 = v126;
  sub_10000F998(v55, v126, &qword_100127618, &qword_1000EBFB0);
  v60 = v121;
  if (*(v57 + 8) == 4)
  {
    sub_10000F8D0(v59, v116, &qword_100127618, &qword_1000EBFB0);
    swift_storeEnumTagMultiPayload();
    sub_1000B5330();
    sub_1000B53E8();
    v61 = v110;
    sub_1000D229C();
    v62 = v119;
  }

  else
  {
    sub_1000B4CEC(v57, v121, type metadata accessor for TVWidgetLarge);
    v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v62 = v119;
    v64 = swift_allocObject();
    sub_1000B4C84(v60, v64 + v63, type metadata accessor for TVWidgetLarge);
    v65 = sub_1000D2B5C();
    v67 = v66;
    v68 = v59;
    v69 = v102;
    sub_10000F8D0(v68, v102, &qword_100127618, &qword_1000EBFB0);
    v70 = (v69 + *(v114 + 36));
    *v70 = sub_1000B56B8;
    v70[1] = v64;
    v70[2] = v65;
    v70[3] = v67;
    sub_10000F8D0(v69, v116, &qword_1001275F8, &qword_1000EBF90);
    swift_storeEnumTagMultiPayload();
    sub_1000B5330();
    sub_1000B53E8();
    v61 = v110;
    sub_1000D229C();
    v71 = v69;
    v59 = v126;
    sub_10000F938(v71, &qword_1001275F8, &qword_1000EBF90);
  }

  sub_10000F938(v59, &qword_100127618, &qword_1000EBFB0);
  v72 = v61;
  v73 = v108;
  sub_10000F998(v72, v108, &qword_100127620, &qword_1000EBFB8);
  *(v73 + *(v109 + 36)) = 0x3FF0000000000000;
  v74 = v112;
  sub_10000F998(v73, v112, &qword_100127628, &qword_1000EBFC0);
  v75 = (v57 + *(v117 + 32));
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  v79 = v75[3];
  v80 = v120;
  (*(v122 + 16))(v120, v57 + *(v117 + 28), v123);
  sub_100098FF4(v80);
  v82 = v76 + v81;
  v84 = v77 + v83;
  v86 = v78 + v85;
  v88 = v79 + v87;
  sub_1000B4CEC(v57, v60, type metadata accessor for TVWidgetLarge);
  v89 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v90 = swift_allocObject();
  sub_1000B4C84(v60, v90 + v89, type metadata accessor for TVWidgetLarge);
  v91 = (v90 + ((v62 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v91 = v82;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  v92 = v113;
  sub_10000F8D0(v74, v113, &qword_100127628, &qword_1000EBFC0);
  v93 = v124;
  sub_10000F8D0(v92, v124, &qword_100127628, &qword_1000EBFC0);
  v94 = (v93 + *(sub_100006334(&qword_100127668, &qword_1000EBFD8) + 48));

  sub_10000F938(v74, &qword_100127628, &qword_1000EBFC0);
  *v94 = sub_1000B55EC;
  v94[1] = v90;

  return sub_10000F938(v92, &qword_100127628, &qword_1000EBFC0);
}

double sub_1000AD6E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for TVWidgetLarge(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_1000B4CEC(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetLarge);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1000B4C84(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TVWidgetLarge);
  *a3 = sub_1000B5840;
  a3[1] = v11;

  return result;
}

uint64_t sub_1000AD81C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TVWidgetNoContentTextView(0);
  result = __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *(a2 + 8);
    if (v10 == 4)
    {
      __break(1u);
    }

    else
    {
      v11 = *(result + 20);
      v12 = enum case for WidgetFamily.systemLarge(_:);
      v13 = result;
      v14 = sub_1000D323C();
      (*(*(v14 - 8) + 104))(&v9[v11], v12, v14);
      v15 = *(type metadata accessor for TVWidgetLarge(0) + 28);
      v16 = *(v13 + 24);
      v17 = sub_1000D329C();
      (*(*(v17 - 8) + 16))(&v9[v16], a2 + v15, v17);
      v18 = sub_1000D287C();
      *v9 = v10;
      v19 = &v9[*(v13 + 28)];
      *v19 = v18;
      *(v19 + 1) = 0x3FE999999999999ALL;
      v19[16] = 1;
      type metadata accessor for CGRect(0);
      sub_1000D1CFC();
      CGRectGetWidth(v25[1]);
      sub_1000D1CFC();
      CGRectGetHeight(v25[0]);
      sub_1000D2B5C();
      sub_1000D1C8C();
      sub_1000B4C84(v9, a3, type metadata accessor for TVWidgetNoContentTextView);
      v20 = sub_100006334(&qword_100127670, &qword_1000EBFE0);
      v21 = (a3 + *(v20 + 36));
      v22 = v27;
      *v21 = v26;
      v21[1] = v22;
      v21[2] = v28;
      return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
    }
  }

  else
  {
    v23 = sub_100006334(&qword_100127670, &qword_1000EBFE0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a3, 1, 1, v23);
  }

  return result;
}

uint64_t sub_1000ADAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = sub_1000D21CC();
  v15 = *(a2 + 112) * 0.5;
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = 0;
  v16 = sub_100006334(&qword_100127678, &qword_1000EBFE8);
  sub_1000ADBE0(a2, a1, a3 + *(v16 + 44));
  *(a3 + *(sub_100006334(&qword_100127680, &qword_1000EBFF0) + 36)) = 0;
  LOBYTE(a2) = sub_1000D235C();
  result = sub_100006334(&qword_100127688, &qword_1000EBFF8);
  v18 = a3 + *(result + 36);
  *v18 = a2;
  *(v18 + 8) = a4;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1000ADBE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_1000D1CEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TVWidgetLarge(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v39 = a2;
  KeyPath = a1;
  v12 = *a1;
  v38 = v13;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v14 >= 3)
    {
      goto LABEL_4;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v12 < 0)
  {
    a2 = v12;
  }

  else
  {
    a2 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1000D397C();
  if (result >= 1)
  {
    if (sub_1000D397C() >= 3)
    {
LABEL_4:
      v37 = v6;
      if ((v12 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TVWidgetContentRefinedViewModel();

        sub_1000D38EC(1);
        sub_1000D38EC(2);
      }

      else
      {
      }

      v35[1] = v8;
      v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v12 >> 62)
      {

        v9 = sub_1000D398C();
        a2 = v16;
        a3 = v17;
        if ((v17 & 1) == 0)
        {
LABEL_10:
          v18 = v11;
          v19 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000B36F8(v9, v15, a2, a3);
          v21 = v20;
          v22 = v37;
          v23 = KeyPath;
          goto LABEL_17;
        }
      }

      else
      {
        v9 = (v12 & 0xFFFFFFFFFFFFFF8);
        v15 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
        a2 = 1;
        a3 = 7;
      }

      v35[0] = v15;
      sub_1000D39DC();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = _swiftEmptyArrayStorage;
      }

      v25 = v24[2];

      if (!__OFSUB__(a3 >> 1, a2))
      {
        if (v25 == (a3 >> 1) - a2)
        {
          v18 = v11;
          v19 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v22 = v37;
          v23 = KeyPath;
          if (v21)
          {
LABEL_18:
            sub_1000B37DC(v21, v26);
            v28 = v27;

            v41 = v28;
            KeyPath = swift_getKeyPath();
            sub_1000B4CEC(v23, v19, type metadata accessor for TVWidgetLarge);
            v29 = v36;
            (*(v7 + 16))(v36, v39, v22);
            v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
            v31 = (v18 + *(v7 + 80) + v30) & ~*(v7 + 80);
            v32 = swift_allocObject();
            sub_1000B4C84(v19, v32 + v30, type metadata accessor for TVWidgetLarge);
            (*(v7 + 32))(v32 + v31, v29, v22);
            v33 = swift_allocObject();
            *(v33 + 16) = sub_1000B58DC;
            *(v33 + 24) = v32;
            sub_100006334(&qword_100127690, &qword_1000EC030);
            sub_100006334(&qword_100127698, &qword_1000EC038);
            sub_10000FC38(&qword_1001276A0, &qword_100127690, &qword_1000EC030, &protocol conformance descriptor for [A]);
            sub_1000B5970();
            return sub_1000D2ABC();
          }

          v21 = _swiftEmptyArrayStorage;
LABEL_17:
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      swift_unknownObjectRelease();
      v15 = v35[0];
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

double sub_1000AE0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v50 = a1;
  v51 = a3;
  v49 = a5;
  v46 = sub_100006334(&qword_1001275D8, &qword_1000EBF70);
  __chkstk_darwin(v46);
  v7 = &v41 - v6;
  v42 = sub_1000D1E0C();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100006334(&qword_1001275E0, &qword_1000EBF78);
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v41 - v10;
  v11 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100006334(&qword_1001275A8, &qword_1000EBF60);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v45 = sub_100006334(&qword_1001276B8, &qword_1000EC040);
  __chkstk_darwin(v45);
  v21 = &v41 - v20;
  v22 = v11[5];
  v23 = enum case for WidgetFamily.systemLarge(_:);
  v24 = sub_1000D323C();
  (*(*(v24 - 8) + 104))(&v13[v22], v23, v24);
  v25 = *(a2 + 16);

  sub_1000AE6FC(v50, v52, v26);
  *v13 = 1;
  *&v13[v11[6]] = v25;
  v27 = &v13[v11[7]];
  v28 = v52[3];
  v27[2] = v52[2];
  v27[3] = v28;
  v29 = v52[5];
  v27[4] = v52[4];
  v27[5] = v29;
  v30 = v52[1];
  *v27 = v52[0];
  v27[1] = v30;
  if (*(a2 + 24) == 1)
  {
    sub_1000D1DFC();
    v31 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v32 = v43;
    sub_1000D27AC();
    (*(v41 + 8))(v9, v42);
    v33 = v44;
    v34 = v47;
    (*(v44 + 16))(v7, v32, v47);
    swift_storeEnumTagMultiPayload();
    *&v53 = v11;
    *(&v53 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    (*(v33 + 8))(v32, v34);
  }

  else
  {
    sub_1000B4CEC(v13, v7, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v35 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    *&v53 = v11;
    *(&v53 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
  }

  sub_1000B3FD0(v13, type metadata accessor for TVWidgetContentView);
  sub_10000F998(v17, v19, &qword_1001275A8, &qword_1000EBF60);
  v36 = *(v51 + 120);
  sub_10000F998(v19, v21, &qword_1001275A8, &qword_1000EBF60);
  *&v21[*(v45 + 36)] = v36;

  sub_1000AE978(v48);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v37 = v49;
  sub_10000F998(v21, v49, &qword_1001276B8, &qword_1000EC040);
  v38 = (v37 + *(sub_100006334(&qword_100127698, &qword_1000EC038) + 36));
  v39 = v54;
  *v38 = v53;
  v38[1] = v39;
  result = *&v55;
  v38[2] = v55;
  return result;
}

uint64_t sub_1000AE6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v8 = sub_1000D1EDC();
  v9 = sub_1000D1ECC();
  if (!v8)
  {
    if (!v9)
    {
      v8 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v8 |= v9;
    goto LABEL_7;
  }

  if ((v9 & ~v8) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v10 = sub_1000D2B8C();
  v27 = v3;
  v11 = *v3;
  v12 = *v3 >> 62;
  if (!v12)
  {
    v13 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v13 >= 3)
    {
      goto LABEL_10;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v11 < 0)
  {
    v4 = *v3;
  }

  else
  {
    v4 = *v3 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1000D397C();
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  if (sub_1000D397C() < 3)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v11 & 0xC000000000000001) != 0)
  {
    type metadata accessor for TVWidgetContentRefinedViewModel();

    sub_1000D38EC(1);
    sub_1000D38EC(2);
    if (!v12)
    {
LABEL_12:
      v11 &= 0xFFFFFFFFFFFFFF8uLL;
      v3 = (v11 + 32);
      v12 = 1;
      v5 = 7;
      goto LABEL_16;
    }
  }

  else
  {

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v11 = sub_1000D398C();
  v3 = v14;
  v12 = v15;
  v5 = v16;
  if (v16)
  {
LABEL_16:
    v4 = v10;
    v10 = a1;
    sub_1000D39DC();
    swift_unknownObjectRetain_n();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];

    if (!__OFSUB__(v5 >> 1, v12))
    {
      if (v18 == (v5 >> 1) - v12)
      {
        swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a1 = v10;
        v10 = v4;
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_unknownObjectRelease();
    a1 = v10;
    v10 = v4;
  }

  sub_1000B36F8(v11, v3, v12, v5);

LABEL_21:
  result = swift_unknownObjectRelease();
  if (a1)
  {
    v20 = 0;
    v21 = 0.0;
  }

  else
  {
    v21 = *(v27 + 14) * 0.5;
    v20 = 1;
  }

  __asm { FMOV            V2.2D, #16.0 }

  *a2 = xmmword_1000EBB20;
  *(a2 + 16) = _Q2;
  *(a2 + 32) = 0;
  *(a2 + 36) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = xmmword_1000EBB30;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  *(a2 + 80) = 0;
  *(a2 + 82) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1000AE978(uint64_t a1)
{
  v4 = v1;
  sub_1000D1CDC();
  type metadata accessor for TVWidgetLarge(0);
  v5 = *v1;
  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v7 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v7 >= 3)
    {
      goto LABEL_4;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 < 0)
  {
    v2 = *v4;
  }

  else
  {
    v2 = *v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1000D397C();
  if (result >= 1)
  {
    if (sub_1000D397C() >= 3)
    {
LABEL_4:
      if ((v5 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TVWidgetContentRefinedViewModel();

        sub_1000D38EC(1);
        sub_1000D38EC(2);
        if (!v6)
        {
LABEL_6:
          v5 &= 0xFFFFFFFFFFFFFF8uLL;
          v2 = v5 + 32;
          v6 = 1;
          v3 = 7;
          goto LABEL_10;
        }
      }

      else
      {

        if (!v6)
        {
          goto LABEL_6;
        }
      }

      v5 = sub_1000D398C();
      v2 = v8;
      v6 = v9;
      v3 = v10;
      if ((v10 & 1) == 0)
      {
LABEL_9:
        sub_1000B36F8(v5, v2, v6, v3);

        return swift_unknownObjectRelease();
      }

LABEL_10:
      sub_1000D39DC();
      swift_unknownObjectRetain_n();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        swift_unknownObjectRelease();
        v11 = _swiftEmptyArrayStorage;
      }

      v12 = v11[2];

      if (!__OFSUB__(v3 >> 1, v6))
      {
        if (v12 == (v3 >> 1) - v6)
        {
          swift_dynamicCastClass();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AEB90@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000D21BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100006334(&qword_1001275E8, &qword_1000EBF80);
  return sub_1000AC900(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000AEBE0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetExtraLarge(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000B4CEC(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetExtraLarge);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  sub_1000B4C84(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v7, type metadata accessor for TVWidgetExtraLarge);
  sub_1000D2B5C();
  sub_1000D1E2C();
  sub_1000B4CEC(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetExtraLarge);
  v8 = swift_allocObject();
  sub_1000B4C84(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TVWidgetExtraLarge);
  sub_1000D2B5C();
  sub_1000D1E2C();
  v9 = v27;
  *&v58[0] = sub_1000B5ACC;
  *(&v58[0] + 1) = v27;
  v58[2] = v52;
  v58[1] = v51;
  v58[6] = v56;
  v58[5] = v55;
  v58[7] = v57;
  v58[4] = v54;
  v58[3] = v53;
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v34 = v56;
  v35 = v57;
  v28 = v58[0];
  v29 = v51;
  *&v59[0] = sub_1000B5B4C;
  *(&v59[0] + 1) = v8;
  v10 = v44;
  v11 = v45;
  v59[2] = v45;
  v59[1] = v44;
  v12 = v47;
  v13 = v46;
  v59[4] = v47;
  v59[3] = v46;
  v38 = v45;
  v39 = v46;
  v14 = v48;
  v15 = v49;
  v59[6] = v49;
  v59[5] = v48;
  v40 = v47;
  v41 = v48;
  v16 = v50;
  v59[7] = v50;
  v42 = v49;
  v43 = v50;
  v36 = v59[0];
  v37 = v44;
  v17 = v53;
  a2[2] = v52;
  a2[3] = v17;
  v18 = v29;
  *a2 = v28;
  a2[1] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v33;
  a2[4] = v32;
  a2[5] = v20;
  v21 = v39;
  a2[10] = v38;
  a2[11] = v21;
  v22 = v37;
  a2[8] = v36;
  a2[9] = v22;
  v23 = v43;
  a2[14] = v42;
  a2[15] = v23;
  v24 = v41;
  a2[12] = v40;
  a2[13] = v24;
  v60[0] = sub_1000B5B4C;
  v60[1] = v8;
  v65 = v14;
  v66 = v15;
  v67 = v16;
  v61 = v10;
  v62 = v11;
  v64 = v12;
  v63 = v13;
  sub_10000F8D0(v58, v68, &qword_1001276E8, &qword_1000EC068);
  sub_10000F8D0(v59, v68, &qword_1001276F0, &qword_1000EC070);
  sub_10000F938(v60, &qword_1001276F0, &qword_1000EC070);
  v68[0] = sub_1000B5ACC;
  v68[1] = v9;
  v73 = v55;
  v74 = v56;
  v75 = v57;
  v69 = v51;
  v70 = v52;
  v72 = v54;
  v71 = v53;
  return sub_10000F938(v68, &qword_1001276E8, &qword_1000EC068);
}

uint64_t sub_1000AF094@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 112);
  *a3 = sub_1000D21BC();
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  v6 = sub_100006334(&qword_1001276F8, &qword_1000EC078);
  return sub_1000AF0FC(a2, a3 + *(v6 + 44));
}

uint64_t sub_1000AF0FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetExtraLarge(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100006334(&qword_100127700, &qword_1000EC080);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v21 - v11);
  *v12 = sub_1000D2B5C();
  v12[1] = v13;
  v14 = sub_100006334(&qword_100127708, &qword_1000EC088);
  sub_1000AF3A8(a1, v12 + *(v14 + 44));
  sub_1000D1CDC();
  sub_1000D2B5C();
  sub_1000D1C8C();
  v15 = (v12 + *(v7 + 44));
  v16 = v24;
  *v15 = v23;
  v15[1] = v16;
  v15[2] = v25;
  sub_1000B4CEC(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetExtraLarge);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_1000B4C84(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TVWidgetExtraLarge);
  sub_10000F8D0(v12, v10, &qword_100127700, &qword_1000EC080);
  sub_10000F8D0(v10, a2, &qword_100127700, &qword_1000EC080);
  v19 = (a2 + *(sub_100006334(&qword_100127710, &qword_1000EC090) + 48));
  *v19 = sub_1000B5EB4;
  v19[1] = v18;

  sub_10000F938(v12, &qword_100127700, &qword_1000EC080);

  return sub_10000F938(v10, &qword_100127700, &qword_1000EC080);
}

uint64_t sub_1000AF3A8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetNoContentTextView(0);
  v93 = *(v4 - 8);
  __chkstk_darwin(v4);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_1001274E0, &qword_1000EBE98);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v75 - v10;
  v88 = sub_100006334(&qword_100127600, &qword_1000EBF98);
  __chkstk_darwin(v88);
  v90 = &v75 - v12;
  v78 = sub_1000D1E0C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100006334(&qword_100127608, &qword_1000EBFA0);
  __chkstk_darwin(v87);
  v75 = &v75 - v14;
  v89 = sub_100006334(&qword_100127610, &qword_1000EBFA8);
  v80 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = &v75 - v15;
  v16 = sub_1000D323C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100006334(&qword_100127618, &qword_1000EBFB0);
  v24 = __chkstk_darwin(v23 - 8);
  v91 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v86 = &v75 - v27;
  __chkstk_darwin(v26);
  v95 = &v75 - v28;
  v29 = *(v17 + 104);
  v82 = enum case for WidgetFamily.systemExtraLarge(_:);
  v96 = v16;
  v83 = v17 + 104;
  v81 = v29;
  result = v29(v19);
  v92 = a1;
  v31 = *a1;
  v94 = v11;
  v97 = v4;
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = sub_1000D38FC();
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v32 = *(v31 + 32);
  }

  v85 = v9;
  v33 = *(v32 + 16);

  v34 = sub_1000D1EDC();
  v35 = sub_1000D1ECC();
  v36 = a2;
  if (!v34)
  {
    if (!v35)
    {
      v34 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v34 |= v35;
    goto LABEL_10;
  }

  if ((v35 & ~v34) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v37 = sub_1000D2B8C();
  *v22 = 2;
  result = (*(v17 + 32))(&v22[v20[5]], v19, v96);
  *&v22[v20[6]] = v33;
  v38 = &v22[v20[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v38 = xmmword_1000EBB20;
  *(v38 + 1) = _Q1;
  v38[32] = 0;
  *(v38 + 33) = v103;
  v38[35] = v104;
  *(v38 + 9) = v34;
  *(v38 + 5) = v37;
  *(v38 + 3) = xmmword_1000EBB30;
  v38[64] = 0;
  *(v38 + 65) = *v102;
  *(v38 + 17) = *&v102[3];
  *(v38 + 9) = 0;
  *(v38 + 40) = 1;
  v38[82] = 1;
  *(v38 + 83) = v100;
  v38[87] = v101;
  *(v38 + 11) = 0x4018000000000000;
  if ((v31 & 0xC000000000000001) == 0)
  {
    v45 = v94;
    v46 = v97;
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v44 = sub_1000D38FC();
  v45 = v94;
  v46 = v97;
LABEL_14:
  v47 = *(v44 + 24);

  v48 = v36;
  v49 = v95;
  if (v47 == 1)
  {
    v50 = sub_1000D29DC();
    v51 = v75;
    sub_1000B4CEC(v22, v75, type metadata accessor for TVWidgetContentView);
    v52 = v87;
    v53 = (v51 + *(v87 + 36));
    *v53 = v50;
    v53[1] = sub_1000B6224;
    v53[2] = 0;
    v54 = v76;
    sub_1000D1DFC();
    v55 = sub_1000B5248();
    v56 = v79;
    sub_1000D27AC();
    (*(v77 + 8))(v54, v78);
    sub_10000F938(v51, &qword_100127608, &qword_1000EBFA0);
    v57 = v48;
    v58 = v80;
    v59 = v89;
    (*(v80 + 16))(v90, v56, v89);
    swift_storeEnumTagMultiPayload();
    v98 = v52;
    v99 = v55;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v60 = v86;
    sub_1000D229C();
    v61 = v56;
    v46 = v97;
    (*(v58 + 8))(v61, v59);
    v48 = v57;
    v49 = v95;
  }

  else
  {
    sub_1000B4CEC(v22, v90, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v62 = sub_1000B5248();
    v98 = v87;
    v99 = v62;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v60 = v86;
    sub_1000D229C();
  }

  sub_1000B3FD0(v22, type metadata accessor for TVWidgetContentView);
  sub_10000F998(v60, v49, &qword_100127618, &qword_1000EBFB0);
  v63 = v92;
  v64 = v92[8];
  v65 = 1;
  if (v64 != 4)
  {
    v66 = v84;
    v81(&v84[v46[5]], v82, v96);
    v67 = *(type metadata accessor for TVWidgetExtraLarge(0) + 28);
    v68 = v46[6];
    v69 = sub_1000D329C();
    (*(*(v69 - 8) + 16))(&v66[v68], &v63[v67], v69);
    v70 = sub_1000D287C();
    *v66 = v64;
    v71 = &v66[v46[7]];
    *v71 = v70;
    *(v71 + 1) = 0x3FE999999999999ALL;
    v71[16] = 1;
    sub_1000B4C84(v66, v45, type metadata accessor for TVWidgetNoContentTextView);
    v65 = 0;
  }

  (*(v93 + 56))(v45, v65, 1, v46);
  v72 = v91;
  sub_10000F8D0(v49, v91, &qword_100127618, &qword_1000EBFB0);
  v73 = v85;
  sub_10000F8D0(v45, v85, &qword_1001274E0, &qword_1000EBE98);
  sub_10000F8D0(v72, v48, &qword_100127618, &qword_1000EBFB0);
  v74 = sub_100006334(&qword_100127718, &qword_1000EC098);
  sub_10000F8D0(v73, v48 + *(v74 + 48), &qword_1001274E0, &qword_1000EBE98);
  sub_10000F938(v45, &qword_1001274E0, &qword_1000EBE98);
  sub_10000F938(v49, &qword_100127618, &qword_1000EBFB0);
  sub_10000F938(v73, &qword_1001274E0, &qword_1000EBE98);
  return sub_10000F938(v72, &qword_100127618, &qword_1000EBFB0);
}

double sub_1000AFE38@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t sub_1000AFE40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_1000D1CEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TVWidgetExtraLarge(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v39 = a2;
  KeyPath = a1;
  v12 = *a1;
  v38 = v13;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v14 >= 3)
    {
      goto LABEL_4;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v12 < 0)
  {
    a2 = v12;
  }

  else
  {
    a2 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1000D397C();
  if (result >= 1)
  {
    if (sub_1000D397C() >= 3)
    {
LABEL_4:
      v37 = v6;
      if ((v12 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TVWidgetContentRefinedViewModel();

        sub_1000D38EC(1);
        sub_1000D38EC(2);
      }

      else
      {
      }

      v35[1] = v8;
      v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v12 >> 62)
      {

        v9 = sub_1000D398C();
        a2 = v16;
        a3 = v17;
        if ((v17 & 1) == 0)
        {
LABEL_10:
          v18 = v11;
          v19 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1000B36F8(v9, v15, a2, a3);
          v21 = v20;
          v22 = v37;
          v23 = KeyPath;
          goto LABEL_17;
        }
      }

      else
      {
        v9 = (v12 & 0xFFFFFFFFFFFFFF8);
        v15 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
        a2 = 1;
        a3 = 7;
      }

      v35[0] = v15;
      sub_1000D39DC();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = _swiftEmptyArrayStorage;
      }

      v25 = v24[2];

      if (!__OFSUB__(a3 >> 1, a2))
      {
        if (v25 == (a3 >> 1) - a2)
        {
          v18 = v11;
          v19 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v22 = v37;
          v23 = KeyPath;
          if (v21)
          {
LABEL_18:
            sub_1000B37DC(v21, v26);
            v28 = v27;

            v41 = v28;
            KeyPath = swift_getKeyPath();
            sub_1000B4CEC(v23, v19, type metadata accessor for TVWidgetExtraLarge);
            v29 = v36;
            (*(v7 + 16))(v36, v39, v22);
            v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
            v31 = (v18 + *(v7 + 80) + v30) & ~*(v7 + 80);
            v32 = swift_allocObject();
            sub_1000B4C84(v19, v32 + v30, type metadata accessor for TVWidgetExtraLarge);
            (*(v7 + 32))(v32 + v31, v29, v22);
            v33 = swift_allocObject();
            *(v33 + 16) = sub_1000B5ECC;
            *(v33 + 24) = v32;
            sub_100006334(&qword_100127690, &qword_1000EC030);
            sub_100006334(&qword_100127698, &qword_1000EC038);
            sub_10000FC38(&qword_1001276A0, &qword_100127690, &qword_1000EC030, &protocol conformance descriptor for [A]);
            sub_1000B5970();
            return sub_1000D2ABC();
          }

          v21 = _swiftEmptyArrayStorage;
LABEL_17:
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      swift_unknownObjectRelease();
      v15 = v35[0];
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1000B030C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v10 = *a3;
  v11 = *a3 >> 62;
  if (!v11)
  {
    v12 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= 3)
    {
      goto LABEL_4;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (sub_1000D397C() < 1)
  {
    __break(1u);
    return;
  }

  if (sub_1000D397C() < 3)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    type metadata accessor for TVWidgetContentRefinedViewModel();

    sub_1000D38EC(1);
    sub_1000D38EC(2);
    if (!v11)
    {
LABEL_6:
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      v14 = v13 + 32;
      v15 = 1;
      v16 = 7;
      goto LABEL_10;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_1000D398C();
  v14 = v17;
  v15 = v18;
  v16 = v19;
  if ((v19 & 1) == 0)
  {
LABEL_9:
    sub_1000B36F8(v13, v14, v15, v16);
    v21 = v20;
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

LABEL_10:
  v22 = a1;
  v23 = a4;
  v24 = x8_0;
  v25 = a2;
  sub_1000D39DC();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];

  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v27 != (v16 >> 1) - v15)
  {
LABEL_29:
    swift_unknownObjectRelease();
    a2 = v25;
    x8_0 = v24;
    a4 = v23;
    a1 = v22;
    goto LABEL_9;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a2 = v25;
  x8_0 = v24;
  a4 = v23;
  a1 = v22;
  if (!v21)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

LABEL_17:
  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_27;
  }

  for (i = *(v21 + 16); ; i = sub_1000D397C())
  {

    if (!__OFSUB__(i, 1))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  sub_1000B0588(v29, a4, a1, 0);
  sub_1000B09E8(a2, ((i - 1) & ~((i - 1) >> 63)) > a1, x8_0, v30);
}

void sub_1000B0588(__n128 a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = *v4 >> 62;
  if (a4)
  {
    if (v6)
    {
      if (sub_1000D397C() < 3)
      {
        __break(1u);
        goto LABEL_61;
      }

      if (sub_1000D397C() >= 7)
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          type metadata accessor for TVWidgetContentRefinedViewModel();

          sub_1000D38EC(3);
          sub_1000D38EC(4);
          sub_1000D38EC(5);
          sub_1000D38EC(6);
          if (!v6)
          {
LABEL_7:
            v8 = v5 & 0xFFFFFFFFFFFFFF8;
            v9 = v8 + 32;
            v10 = 3;
            v11 = 15;
LABEL_17:
            sub_1000D39DC();
            swift_unknownObjectRetain_n();
            v18 = swift_dynamicCastClass();
            if (!v18)
            {
              swift_unknownObjectRelease();
              v18 = _swiftEmptyArrayStorage;
            }

            v19 = v18[2];

            if (!__OFSUB__(v11 >> 1, v10))
            {
              if (v19 == (v11 >> 1) - v10)
              {
                v17 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v17)
                {
LABEL_24:
                  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
                  {
                    goto LABEL_54;
                  }

                  for (i = *(v17 + 16); ; i = sub_1000D397C())
                  {

                    if (!__OFSUB__(i, 1))
                    {
                      break;
                    }

LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
LABEL_54:
                    ;
                  }

                  goto LABEL_43;
                }

                v17 = _swiftEmptyArrayStorage;
LABEL_23:
                swift_unknownObjectRelease();
                goto LABEL_24;
              }

              goto LABEL_58;
            }

            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            swift_unknownObjectRelease();
            goto LABEL_16;
          }
        }

        else
        {

          if (!v6)
          {
            goto LABEL_7;
          }
        }

        v8 = sub_1000D398C();
        v9 = v13;
        v10 = v14;
        v11 = v15;
        if ((v15 & 1) == 0)
        {
LABEL_16:
          sub_1000B36F8(v8, v9, v10, v11);
          v17 = v16;
          goto LABEL_23;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v7 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 < 3)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v7 >= 7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else if (!v6)
  {
    v12 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v12 < 3)
    {
      goto LABEL_49;
    }

    goto LABEL_11;
  }

  if (sub_1000D397C() >= 1)
  {
    if (sub_1000D397C() < 3)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_11:
    if ((v5 & 0xC000000000000001) != 0)
    {
      type metadata accessor for TVWidgetContentRefinedViewModel();

      sub_1000D38EC(1);
      sub_1000D38EC(2);
      if (!v6)
      {
LABEL_13:
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = v8 + 32;
        v10 = 1;
        v11 = 7;
LABEL_32:
        sub_1000D39DC();
        swift_unknownObjectRetain_n();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          swift_unknownObjectRelease();
          v26 = _swiftEmptyArrayStorage;
        }

        v27 = v26[2];

        if (__OFSUB__(v11 >> 1, v10))
        {
          goto LABEL_57;
        }

        if (v27 == (v11 >> 1) - v10)
        {
          v25 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v25)
          {
LABEL_39:
            if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
            {
              v28 = sub_1000D397C();
            }

            else
            {
              v28 = *(v25 + 16);
            }

            if (__OFSUB__(v28, 1))
            {
              goto LABEL_53;
            }

LABEL_43:
            sub_1000D1CDC();
            return;
          }

          v25 = _swiftEmptyArrayStorage;
LABEL_38:
          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        swift_unknownObjectRelease();
LABEL_31:
        sub_1000B36F8(v8, v9, v10, v11);
        v25 = v24;
        goto LABEL_38;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_13;
      }
    }

    v8 = sub_1000D398C();
    v9 = v21;
    v10 = v22;
    v11 = v23;
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_61:
  __break(1u);
}

double sub_1000B09E8@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v56 = a2;
  v65 = a3;
  v61 = sub_100006334(&qword_1001275D8, &qword_1000EBF70);
  __chkstk_darwin(v61);
  v63 = &v51 - v7;
  v53 = sub_1000D1E0C();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100006334(&qword_1001275E0, &qword_1000EBF78);
  v55 = *(v62 - 8);
  __chkstk_darwin(v62);
  v54 = &v51 - v9;
  v10 = sub_1000D323C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100006334(&qword_1001275A8, &qword_1000EBF60);
  v18 = __chkstk_darwin(v17 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v59 = &v51 - v20;
  v57 = sub_100006334(&qword_1001276B8, &qword_1000EC040);
  __chkstk_darwin(v57);
  v60 = &v51 - v21;
  (*(v11 + 104))(v13, enum case for WidgetFamily.systemExtraLarge(_:), v10);
  v22 = a1;
  v23 = *(a1 + 16);

  v24 = sub_1000D1EDC();
  v25 = sub_1000D1ECC();
  if (!v24)
  {
    if (!v25)
    {
      v24 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v24 |= v25;
    goto LABEL_7;
  }

  if ((v25 & ~v24) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v26 = sub_1000D2B8C();
  v64 = v5;
  if (v56)
  {
    v27 = *(v5 + 112) * 0.5;
    v28 = 1;
  }

  else
  {
    v28 = 0;
    v27 = 0.0;
  }

  *v16 = 1;
  (*(v11 + 32))(&v16[v14[5]], v13, v10);
  *&v16[v14[6]] = v23;
  v29 = &v16[v14[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v29 = xmmword_1000EBB20;
  *(v29 + 1) = _Q1;
  v29[32] = 0;
  *(v29 + 33) = v69;
  v29[35] = v70;
  *(v29 + 9) = v24;
  *(v29 + 5) = v26;
  *(v29 + 3) = xmmword_1000EBB30;
  v29[64] = v28;
  *(v29 + 65) = *v68;
  *(v29 + 17) = *&v68[3];
  *(v29 + 9) = v27;
  *(v29 + 40) = 0;
  v29[82] = 0;
  *(v29 + 83) = v66;
  v29[87] = v67;
  *(v29 + 11) = 0;
  if (*(v22 + 24) == 1)
  {
    v35 = v51;
    sub_1000D1DFC();
    v36 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    v37 = v54;
    sub_1000D27AC();
    (*(v52 + 8))(v35, v53);
    v38 = v55;
    v39 = v62;
    (*(v55 + 16))(v63, v37, v62);
    swift_storeEnumTagMultiPayload();
    *&v71 = v14;
    *(&v71 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    v40 = v58;
    sub_1000D229C();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    sub_1000B4CEC(v16, v63, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v41 = sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    *&v71 = v14;
    *(&v71 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    v40 = v58;
    sub_1000D229C();
  }

  v42 = v64;
  sub_1000B3FD0(v16, type metadata accessor for TVWidgetContentView);
  v43 = v59;
  sub_10000F998(v40, v59, &qword_1001275A8, &qword_1000EBF60);
  v44 = *(v42 + 120);
  v45 = v43;
  v46 = v60;
  sub_10000F998(v45, v60, &qword_1001275A8, &qword_1000EBF60);
  *(v46 + *(v57 + 36)) = v44;

  sub_1000D2B5C();
  sub_1000D1C8C();
  v47 = v65;
  sub_10000F998(v46, v65, &qword_1001276B8, &qword_1000EC040);
  v48 = (v47 + *(sub_100006334(&qword_100127698, &qword_1000EC038) + 36));
  v49 = v72;
  *v48 = v71;
  v48[1] = v49;
  result = *&v73;
  v48[2] = v73;
  return result;
}

uint64_t sub_1000B1150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000D21CC();
  v9 = *(a2 + 112) * 0.5;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  sub_100006334(&qword_100127678, &qword_1000EBFE8);
  return a3(a2, a1);
}

uint64_t sub_1000B11CC(unint64_t *a1, unint64_t a2)
{
  v4 = sub_1000D1CEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVWidgetExtraLarge(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = v6;
  v37 = a1;
  v10 = *a1;
  v11 = *a1 >> 62;
  v35 = v12;
  if (!v11)
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 < 3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= 7)
    {
      goto LABEL_4;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_1000D397C();
  if (result >= 3)
  {
    if (sub_1000D397C() >= 7)
    {
LABEL_4:
      v34 = v4;
      if ((v10 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TVWidgetContentRefinedViewModel();

        sub_1000D38EC(3);
        sub_1000D38EC(4);
        sub_1000D38EC(5);
        sub_1000D38EC(6);
      }

      else
      {
      }

      v33 = a2;
      if (v11)
      {

        v10 = sub_1000D398C();
        v11 = v15;
        a2 = v16;
        if ((v16 & 1) == 0)
        {
LABEL_10:
          sub_1000B36F8(v10, v14, v11, a2);
          v18 = v17;
          v19 = v34;
          v20 = v37;
          goto LABEL_17;
        }
      }

      else
      {
        v10 &= 0xFFFFFFFFFFFFFF8uLL;
        v14 = v10 + 32;
        v11 = 3;
        a2 = 15;
      }

      v32 = v14;
      sub_1000D39DC();
      swift_unknownObjectRetain_n();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = _swiftEmptyArrayStorage;
      }

      v22 = v21[2];

      if (!__OFSUB__(a2 >> 1, v11))
      {
        if (v22 == (a2 >> 1) - v11)
        {
          v18 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v19 = v34;
          v20 = v37;
          if (v18)
          {
LABEL_18:
            sub_1000B37DC(v18, v23);
            v25 = v24;

            v38 = v25;
            swift_getKeyPath();
            sub_1000B4CEC(v20, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetExtraLarge);
            (*(v5 + 16))(v7, v33, v19);
            v26 = (*(v35 + 80) + 16) & ~*(v35 + 80);
            v27 = (v9 + *(v5 + 80) + v26) & ~*(v5 + 80);
            v28 = swift_allocObject();
            sub_1000B4C84(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26, type metadata accessor for TVWidgetExtraLarge);
            (*(v5 + 32))(v28 + v27, v7, v19);
            v29 = swift_allocObject();
            *(v29 + 16) = sub_1000B5D84;
            *(v29 + 24) = v28;
            sub_100006334(&qword_100127690, &qword_1000EC030);
            sub_100006334(&qword_100127698, &qword_1000EC038);
            sub_10000FC38(&qword_1001276A0, &qword_100127690, &qword_1000EC030, &protocol conformance descriptor for [A]);
            sub_1000B5970();
            return sub_1000D2ABC();
          }

          v18 = _swiftEmptyArrayStorage;
LABEL_17:
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      swift_unknownObjectRelease();
      v14 = v32;
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_1000B169C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  v11 = *a3 >> 62;
  if (!v11)
  {
    v12 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < 3)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= 7)
    {
      goto LABEL_4;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (sub_1000D397C() < 3)
  {
    __break(1u);
    return;
  }

  if (sub_1000D397C() < 7)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    type metadata accessor for TVWidgetContentRefinedViewModel();

    sub_1000D38EC(3);
    sub_1000D38EC(4);
    sub_1000D38EC(5);
    sub_1000D38EC(6);
    if (!v11)
    {
LABEL_6:
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      v14 = v13 + 32;
      v15 = 3;
      v16 = 15;
      goto LABEL_10;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_1000D398C();
  v14 = v17;
  v15 = v18;
  v16 = v19;
  if ((v19 & 1) == 0)
  {
LABEL_9:
    sub_1000B36F8(v13, v14, v15, v16);
    v21 = v20;
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

LABEL_10:
  v22 = a1;
  v23 = a4;
  v24 = a5;
  v25 = a2;
  sub_1000D39DC();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];

  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v27 != (v16 >> 1) - v15)
  {
LABEL_29:
    swift_unknownObjectRelease();
    a2 = v25;
    a5 = v24;
    a4 = v23;
    a1 = v22;
    goto LABEL_9;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a2 = v25;
  a5 = v24;
  a4 = v23;
  a1 = v22;
  if (!v21)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

LABEL_17:
  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_27;
  }

  for (i = *(v21 + 16); ; i = sub_1000D397C())
  {

    if (!__OFSUB__(i, 1))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  sub_1000B0588(v29, a4, a1, 1);
  sub_1000B09E8(a2, ((i - 1) & ~((i - 1) >> 63)) > a1, a5, v30);
}

void *sub_1000B193C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + 104);
  v6 = sub_1000D210C();
  v27 = 0;
  sub_1000AEBE0(v3, &v10);
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v44[12] = v22;
  v44[13] = v23;
  v44[14] = v24;
  v44[15] = v25;
  v44[8] = v18;
  v44[9] = v19;
  v44[10] = v20;
  v44[11] = v21;
  v44[4] = v14;
  v44[5] = v15;
  v44[6] = v16;
  v44[7] = v17;
  v44[0] = v10;
  v44[1] = v11;
  v44[2] = v12;
  v44[3] = v13;
  sub_10000F8D0(&v28, &v9, &qword_1001276E0, &qword_1000EC060);
  sub_10000F938(v44, &qword_1001276E0, &qword_1000EC060);
  *&__src[199] = v40;
  *&__src[215] = v41;
  *&__src[231] = v42;
  *&__src[247] = v43;
  *&__src[135] = v36;
  *&__src[151] = v37;
  *&__src[167] = v38;
  *&__src[183] = v39;
  *&__src[71] = v32;
  *&__src[87] = v33;
  *&__src[103] = v34;
  *&__src[119] = v35;
  *&__src[7] = v28;
  *&__src[23] = v29;
  *&__src[39] = v30;
  *&__src[55] = v31;
  v7 = v27;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  return memcpy((a2 + 17), __src, 0x107uLL);
}

uint64_t sub_1000B1AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D329C();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  result = type metadata accessor for TVWidgetHeaderViewLayout(0);
  v5 = (a1 + *(result + 20));
  *v5 = 0xD000000000000011;
  v5[1] = 0x80000001000DC9E0;
  *(a1 + *(result + 24)) = 0x402A000000000000;
  return result;
}

uint64_t sub_1000B1B84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_10000637C(&qword_100127720, &unk_1000EC0A0);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v6 = sub_1000D2A7C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  sub_1000D2B3C();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_1000D2A6C();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1000B1D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v46 = a4;
  v7 = type metadata accessor for TVWidgetHeaderViewLayout(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006334(&qword_100127720, &unk_1000EC0A0);
  v11 = __chkstk_darwin(v10);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = *(a2 - 8);
  v17 = __chkstk_darwin(v13);
  v43 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v22 = type metadata accessor for TVWidgetHeaderOverlayView(0, a2, a3, v21);
  v23 = *(v16 + 16);
  v23(v20, a1 + *(v22 + 36), a2);
  sub_1000B1AF0(v15);
  sub_1000B1AF0(v9);
  v24 = a1 + *(v22 + 40);
  v25 = *(v24 + 16);
  v50[0] = *v24;
  v50[1] = v25;
  v51 = *(v24 + 32);
  v26 = sub_1000B2CD0();
  v30 = sub_1000772F0(v26, v27, v28, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1000B3FD0(v9, type metadata accessor for TVWidgetHeaderViewLayout);
  v37 = sub_1000D235C();
  v38 = &v15[*(v10 + 36)];
  *v38 = v37;
  *(v38 + 1) = v30;
  *(v38 + 2) = v32;
  *(v38 + 3) = v34;
  *(v38 + 4) = v36;
  v38[40] = 0;
  v39 = v43;
  v23(v43, v20, a2);
  *&v50[0] = v39;
  v40 = v45;
  sub_10000F8D0(v15, v45, &qword_100127720, &unk_1000EC0A0);
  *(&v50[0] + 1) = v40;
  v49[0] = a2;
  v49[1] = v10;
  v47 = v44;
  v48 = sub_1000B5F04();
  sub_1000A80B0(v50, 2uLL, v49);
  sub_10000F938(v15, &qword_100127720, &unk_1000EC0A0);
  v41 = *(v16 + 8);
  v41(v20, a2);
  sub_10000F938(v40, &qword_100127720, &unk_1000EC0A0);
  return (v41)(v39, a2);
}

void *sub_1000B20D0(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_1000B2124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100122410, &qword_1000E3070);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10000F8D0(v2, &v17 - v9, &qword_100122410, &qword_1000E3070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000D1DBC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1000D379C();
    v14 = sub_1000D233C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000B3150(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10007CAB8(v16);
    }

    sub_1000D20DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000B23B0(uint64_t a1, char a2)
{
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_1000D379C();
    v9 = sub_1000D233C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000B3150(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_10007CAB8(v11);
    }

    sub_1000D20DC();
    swift_getAtKeyPath();
    sub_1000B404C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_1000B2570@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100123C48, &qword_1000E30B0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_10000F8D0(v2, &v16 - v9, &qword_100123C48, &qword_1000E30B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000B6190(v10, a1);
  }

  v12 = sub_1000D379C();
  v13 = sub_1000D233C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000B3150(0xD00000000000001ALL, 0x80000001000DCA00, &v17);
    _os_log_impl(&_mh_execute_header, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    sub_10007CAB8(v15);
  }

  sub_1000D20DC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000B27C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100125978, &qword_1000E7710);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10000F8D0(v2, &v17 - v9, &qword_100125978, &qword_1000E7710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000D323C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1000D379C();
    v14 = sub_1000D233C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000B3150(0x6146746567646957, 0xEC000000796C696DLL, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10007CAB8(v16);
    }

    sub_1000D20DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000B2A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100125980, &qword_1000E7770);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10000F8D0(v2, &v17 - v9, &qword_100125980, &qword_1000E7770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000D31DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1000D379C();
    v14 = sub_1000D233C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000B3150(0xD000000000000013, 0x80000001000DC9C0, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10007CAB8(v16);
    }

    sub_1000D20DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1000B2CD0()
{
  v1 = sub_1000D20EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[32] == 1)
  {
    return *v0;
  }

  v6 = sub_1000D379C();
  v7 = sub_1000D233C();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = *&v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000B3150(0x65736E4965676445, 0xEA00000000007374, &v10);
    _os_log_impl(&_mh_execute_header, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    sub_10007CAB8(v9);
  }

  sub_1000D20DC();
  swift_getAtKeyPath();
  sub_10000F938(v0, &qword_1001271D8, &qword_1000EBC88);
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1000B2EC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000D20EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100127778, &unk_1000EC130);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10000F8D0(v2, &v17 - v9, &qword_100127778, &unk_1000EC130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000D331C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1000D379C();
    v14 = sub_1000D233C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000B3150(0x7974697669746341, 0xEE00796C696D6146, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10007CAB8(v16);
    }

    sub_1000D20DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1000B3150(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000B321C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10007C988(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10007CAB8(v11);
  return v7;
}

unint64_t sub_1000B321C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000B3328(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000D390C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000B3328(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000B3374(a1, a2);
  sub_1000B34A4(&off_100117BA8);
  return v3;
}

void *sub_1000B3374(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000B3590(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000D390C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000D367C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000B3590(v10, 0);
        result = sub_1000D38CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000B34A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000B3604(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000B3590(uint64_t a1, uint64_t a2)
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

  sub_100006334(&qword_1001271D0, &qword_1000EBC80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000B3604(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006334(&qword_1001271D0, &qword_1000EBC80);
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

void sub_1000B36F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for TVWidgetContentRefinedViewModel();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100006334(&qword_1001276D8, &qword_1000EC058);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B37DC(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v8 = &_swiftEmptyArrayStorage[4];
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    v28 = v2 & 0xC000000000000001;
    v29 = v2;
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v10 = sub_1000D38FC();
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(v9 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v3 = sub_1000D397C();
          goto LABEL_3;
        }

        v10 = *(v2 + 8 * v5 + 32);

        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v6)
      {
        v12 = v4[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v13 = v3;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_100006334(&qword_1001276D0, &qword_1000EC050);
        v16 = swift_allocObject();
        v17 = j__malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        v16[2] = v15;
        v16[3] = 2 * (v18 >> 4);
        v20 = (v16 + 4);
        v21 = v4[3] >> 1;
        if (v4[2])
        {
          v22 = v4 + 4;
          if (v16 != v4 || v20 >= v22 + 16 * v21)
          {
            memmove(v16 + 4, v22, 16 * v21);
          }

          v4[2] = 0;
        }

        v8 = (v20 + 16 * v21);
        v6 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v4 = v16;
        v3 = v13;
        v7 = v28;
        v2 = v29;
        v9 = v27;
      }

      v23 = __OFSUB__(v6--, 1);
      if (v23)
      {
        goto LABEL_33;
      }

      *v8 = v5;
      v8[1] = v10;
      v8 += 2;
      ++v5;
      if (v11 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  v6 = 0;
LABEL_28:
  v24 = v4[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v6);
    v26 = v25 - v6;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v4[2] = v26;
    }
  }
}

void sub_1000B39CC(void *a1@<X8>)
{
  sub_1000D20AC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

unint64_t sub_1000B3A7C()
{
  result = qword_100127180;
  if (!qword_100127180)
  {
    sub_10000637C(&qword_100127160, &qword_1000EBC60);
    sub_1000B3B08();
    sub_1000B3E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127180);
  }

  return result;
}

unint64_t sub_1000B3B08()
{
  result = qword_100127188;
  if (!qword_100127188)
  {
    sub_10000637C(&qword_100127158, &qword_1000EBC58);
    sub_1000B3C10();
    type metadata accessor for TVWidgetMedium(255);
    sub_1000B3DC0(&qword_1001271B0, type metadata accessor for TVWidgetMedium, &unk_1000EBDF0);
    sub_1000B3D6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127188);
  }

  return result;
}

unint64_t sub_1000B3C10()
{
  result = qword_100127190;
  if (!qword_100127190)
  {
    sub_10000637C(&qword_100127178, &qword_1000EBC78);
    sub_1000B3D18();
    type metadata accessor for TVWidgetSmall(255);
    sub_1000B3DC0(&qword_1001271A0, type metadata accessor for TVWidgetSmall, &unk_1000EBE40);
    sub_1000B3D6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127190);
  }

  return result;
}

unint64_t sub_1000B3D18()
{
  result = qword_100127198;
  if (!qword_100127198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127198);
  }

  return result;
}

unint64_t sub_1000B3D6C()
{
  result = qword_1001271A8;
  if (!qword_1001271A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001271A8);
  }

  return result;
}

uint64_t sub_1000B3DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B3E08()
{
  result = qword_1001271B8;
  if (!qword_1001271B8)
  {
    sub_10000637C(&qword_100127128, &qword_1000EBC28);
    type metadata accessor for TVWidgetLarge(255);
    sub_1000B3DC0(&qword_1001271C0, type metadata accessor for TVWidgetLarge, &unk_1000EBDA0);
    sub_1000B3D6C();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for TVWidgetExtraLarge(255);
    sub_1000B3DC0(&qword_1001271C8, type metadata accessor for TVWidgetExtraLarge, &unk_1000EBD50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001271B8);
  }

  return result;
}

uint64_t sub_1000B3FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B404C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_1000B4088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000B4118(uint64_t a1)
{
  sub_1000B4088(319, &unk_100127248, type metadata accessor for TVWidgetContentRefinedViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000A8008(319, &qword_1001258E0, &type metadata for TVWidgetNoContentState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000D329C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B4240(uint64_t a1)
{
  sub_1000B4088(319, &unk_100127248, type metadata accessor for TVWidgetContentRefinedViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000A8008(319, &qword_1001258E0, &type metadata for TVWidgetNoContentState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000D329C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000B434C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000D329C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B440C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D329C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B44B8(uint64_t a1)
{
  sub_1000D329C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1000A8008(319, &unk_1001270C0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000B457C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1000D329C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v12)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = &a1[v13] & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 32);
      if (v26 > 1)
      {
        return (v26 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1000B47BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1000D329C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v15 >= a3)
  {
    v22 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v25 = *(v8 + 56);

        v25(a1, a2);
      }

      else
      {
        v26 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v27 = *(v10 + 56);

          v27(v26, a2, v11);
        }

        else
        {
          v28 = (v18 + v26) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v28 + 16) = 0;
            *(v28 + 24) = 0;
            *(v28 + 32) = 0;
            *v28 = (a2 - 255);
            *(v28 + 8) = 0;
          }

          else
          {
            *(v28 + 32) = -a2;
          }
        }
      }

      return;
    }
  }

  v23 = ~v15 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_29:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

unint64_t sub_1000B4BCC()
{
  result = qword_100127510;
  if (!qword_100127510)
  {
    sub_10000637C(&qword_1001274F0, &qword_1000EBEA8);
    sub_10000FC38(&qword_100127518, &qword_1001274F8, &qword_1000EBEB0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127510);
  }

  return result;
}

uint64_t sub_1000B4C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B4CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B4D54()
{
  result = qword_100127548;
  if (!qword_100127548)
  {
    sub_10000637C(&qword_100127530, &qword_1000EBED8);
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    sub_10000FC38(&qword_100127558, &qword_100127560, &qword_1000EBEF0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127548);
  }

  return result;
}

uint64_t sub_1000B4E54(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);

  v6 = v2[9];
  v7 = sub_1000D329C();
  (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000B5030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008885C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B505C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

unint64_t sub_1000B50A0()
{
  result = qword_1001275B8;
  if (!qword_1001275B8)
  {
    sub_10000637C(&qword_1001275A8, &qword_1000EBF60);
    type metadata accessor for TVWidgetContentView(255);
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001275B8);
  }

  return result;
}

unint64_t sub_1000B5190()
{
  result = qword_1001275C0;
  if (!qword_1001275C0)
  {
    sub_10000637C(&qword_100127580, &qword_1000EBF10);
    sub_10000FC38(&qword_1001275C8, &qword_100127588, &qword_1000EBF18, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001275C0);
  }

  return result;
}

unint64_t sub_1000B5248()
{
  result = qword_100127630;
  if (!qword_100127630)
  {
    sub_10000637C(&qword_100127608, &qword_1000EBFA0);
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    sub_10000FC38(&qword_100127638, &qword_100127640, &qword_1000EBFC8, &protocol conformance descriptor for _AnchorWritingModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127630);
  }

  return result;
}

unint64_t sub_1000B5330()
{
  result = qword_100127648;
  if (!qword_100127648)
  {
    sub_10000637C(&qword_1001275F8, &qword_1000EBF90);
    sub_1000B53E8();
    sub_10000FC38(&qword_100127658, &qword_100127660, &qword_1000EBFD0, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127648);
  }

  return result;
}

unint64_t sub_1000B53E8()
{
  result = qword_100127650;
  if (!qword_100127650)
  {
    sub_10000637C(&qword_100127618, &qword_1000EBFB0);
    sub_10000637C(&qword_100127608, &qword_1000EBFA0);
    sub_1000B5248();
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView, &unk_1000E3B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127650);
  }

  return result;
}

uint64_t sub_1000B54E0()
{
  v1 = (type metadata accessor for TVWidgetLarge(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = sub_1000D329C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 32, v2 | 7);
}

uint64_t sub_1000B55EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TVWidgetLarge(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  return sub_1000ADAFC(a1, v2 + v6, a2, v8, v9, v10, v11);
}

double sub_1000B56B8@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for TVWidgetLarge(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000AD6E8(a1, v6, a2);
}

uint64_t sub_1000B5738()
{
  v1 = (type metadata accessor for TVWidgetLarge(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1000D329C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B5840@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TVWidgetLarge(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000AD81C(v4, v5, a1);
}

uint64_t sub_1000B5908()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000B5970()
{
  result = qword_1001276A8;
  if (!qword_1001276A8)
  {
    sub_10000637C(&qword_100127698, &qword_1000EC038);
    sub_1000B59FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001276A8);
  }

  return result;
}

unint64_t sub_1000B59FC()
{
  result = qword_1001276B0;
  if (!qword_1001276B0)
  {
    sub_10000637C(&qword_1001276B8, &qword_1000EC040);
    sub_1000B50A0();
    sub_10000FC38(&qword_1001276C0, &qword_1001276C8, &qword_1000EC048, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001276B0);
  }

  return result;
}

uint64_t sub_1000B5ACC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TVWidgetExtraLarge(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1000AF094(v5, a2);
}

uint64_t sub_1000B5BF8(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_1000D1CEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  v12 = v2[9];
  v13 = sub_1000D329C();
  (*(*(v13 - 8) + 8))(v1 + v4 + v12, v13);
  (*(v7 + 8))(v1 + v9, v6);

  return _swift_deallocObject(v1, v9 + v10, v11 | 7);
}

uint64_t sub_1000B5DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1000D1CEC() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, a2, v4 + v8, v11);
}

unint64_t sub_1000B5F04()
{
  result = qword_100127728;
  if (!qword_100127728)
  {
    sub_10000637C(&qword_100127720, &unk_1000EC0A0);
    sub_1000B3DC0(&qword_100127730, type metadata accessor for TVWidgetHeaderView, &unk_1000E71D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127728);
  }

  return result;
}

uint64_t sub_1000B60E0(uint64_t *a1)
{
  sub_10000637C(&qword_100127720, &unk_1000EC0A0);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A7C();

  return swift_getWitnessTable();
}

uint64_t sub_1000B6190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_1001247B8, &qword_1000E4210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6240@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_1000D1E5C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D1EAC();
  __chkstk_darwin(v7 - 8);
  sub_1000D1E9C();
  sub_100006334(&qword_100127780, qword_1000EC140);
  sub_1000D1E7C();
  *(swift_allocObject() + 16) = xmmword_1000E5A60;
  sub_1000D1E3C();
  sub_1000D1E8C();
  sub_1000D1E4C();
  sub_1000D1E8C();
  sub_1000D1E3C();
  sub_1000D1E8C();
  sub_1000D1E4C();
  sub_1000D1E8C();
  sub_1000D1EBC();
  v8 = type metadata accessor for SportsWidgetPlayByPlayLayout(0);
  *(a1 + v8[5]) = 0x4000000000000000;
  *(a1 + v8[6]) = 0x7FF0000000000000;
  v9 = v8[7];
  v10 = [objc_opt_self() labelColor];
  *(a1 + v9) = sub_1000D27DC();
  v11 = v8[8];
  *(a1 + v11) = sub_1000D23CC();
  *(a1 + v8[9]) = a2;
  *(a1 + v8[10]) = 0x4008000000000000;
  *(a1 + v8[11]) = 0x3FF8000000000000;
  v12 = v8[12];
  sub_1000D284C();
  v13 = sub_1000D285C();

  *(a1 + v12) = v13;
  *(a1 + v8[13]) = 0x3FF0000000000000;
  *(a1 + v8[14]) = a3;
  return result;
}

uint64_t type metadata accessor for SportsWidgetPlayByPlayLayout(uint64_t a1)
{
  result = qword_1001277E0;
  if (!qword_1001277E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1F0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B6668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D1F0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B6720(uint64_t a1)
{
  result = sub_1000D1F0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B67CC(void *a1)
{
  if (!a1)
  {
    return 0x3E6C6C756E3CLL;
  }

  v9[3] = sub_10007CB04(0, &qword_100127840, NSOperation_ptr);
  v9[4] = sub_1000B77E0();
  v9[0] = a1;
  sub_10007CB04(0, &qword_100122C58, NSString_ptr);
  v2 = a1;
  v3 = sub_1000D381C("%p", v8);
  sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E0440;
  sub_1000B7848(v9, v4 + 32);
  v5 = sub_1000D382C();

  v6 = sub_1000D360C();
  sub_10007CAB8(v9);
  return v6;
}

id sub_1000B68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v58 = a3;
  v6 = sub_1000D2C2C();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D2C4C();
  v64 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000D2C1C();
  v11 = *(v56 - 8);
  __chkstk_darwin(v56);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000D2C6C();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v52 - v18;
  v19 = swift_allocObject();
  v57 = a1;
  v20 = swift_unknownObjectWeakInit();
  result = sub_100002C80(v20);
  v22 = result;
  v23 = a2;
  if (a2 >= 1)
  {
    v53 = v8;
    v54 = v9;
    v55 = v6;
    if (result)
    {
      sub_100006334(&qword_100122C50, &qword_1000E3F90);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000E2080;
      Strong = swift_unknownObjectWeakLoadStrong();
      v26 = sub_1000B67CC(Strong);
      v28 = v27;

      *(v24 + 56) = &type metadata for String;
      v29 = sub_100018744();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      *(v24 + 96) = &type metadata for Int;
      *(v24 + 104) = &protocol witness table for Int;
      *(v24 + 64) = v29;
      *(v24 + 72) = v23;
      v30 = sub_1000D37AC();
      sub_1000D1B2C("Timebox::[%{public}@] enqueueing with timeout:%lu", 49, 2, &_mh_execute_header, v22, v30, v24);

      v31 = v66;
      [v66 addOperation:v57];
      sub_10007CB04(0, &qword_100124668, OS_dispatch_queue_ptr);
      v32 = v31;
      v57 = sub_1000D37DC();
      sub_1000D2C5C();
      v33 = -750;
      if (v23 <= 0x2EE)
      {
        v33 = 0;
      }

      *v13 = v33 + v23;
      v34 = v56;
      (*(v11 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v56);
      v35 = v59;
      sub_1000D2C8C();
      (*(v11 + 8))(v13, v34);
      v36 = v61;
      v60 = *(v60 + 8);
      (v60)(v17, v61);
      v37 = swift_allocObject();
      v52 = v19;
      v37[2] = v19;
      v37[3] = v32;
      v38 = v58;
      v37[4] = v23;
      v37[5] = v38;
      v37[6] = v62;
      aBlock[4] = sub_1000B7618;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100079E60;
      aBlock[3] = &unk_10011CEB8;
      v39 = _Block_copy(aBlock);

      v40 = v32;

      v41 = v63;
      sub_1000D2C3C();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003C330();
      sub_100006334(&qword_100124678, &unk_1000E7880);
      sub_10003C388();
      v42 = v53;
      v43 = v55;
      sub_1000D38AC();
      v44 = v57;
      sub_1000D37CC();
      _Block_release(v39);

      (*(v65 + 8))(v42, v43);
      (*(v64 + 8))(v41, v54);
      (v60)(v35, v36);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  sub_100006334(&qword_100122C50, &qword_1000E3F90);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000E2080;
  v46 = swift_unknownObjectWeakLoadStrong();
  v47 = sub_1000B67CC(v46);
  v49 = v48;

  *(v45 + 56) = &type metadata for String;
  v50 = sub_100018744();
  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  *(v45 + 96) = &type metadata for Int;
  *(v45 + 104) = &protocol witness table for Int;
  *(v45 + 64) = v50;
  *(v45 + 72) = v23;
  v51 = sub_1000D37AC();
  sub_1000D1B2C("Timebox::[%{public}@] Invalid timeout:%lu", 41, 2, &_mh_execute_header, v22, v51, v45);
}

uint64_t sub_1000B6F98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000B6FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v51 = a4;
  v50 = a3;
  v6 = sub_1000D2C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v58 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D2C4C();
  v57 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000D2C1C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000D2C6C();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v45 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong isExecuting];

    if (v22)
    {
      v47 = v9;
      v48 = v7;
      v49 = v6;
      v24 = sub_100002C80(v23);
      if (v24)
      {
        v25 = v24;
        sub_100006334(&qword_100122C50, &qword_1000E3F90);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1000E0440;
        swift_beginAccess();
        v27 = swift_unknownObjectWeakLoadStrong();
        v28 = sub_1000B67CC(v27);
        v30 = v29;

        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_100018744();
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v31 = sub_1000D37AC();
        sub_1000D1B2C("Timebox::[%{public}@] has expired, cancelling running op", 56, 2, &_mh_execute_header, v25, v31, v26);

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          [v32 cancel];
        }

        sub_10007CB04(0, &qword_100124668, OS_dispatch_queue_ptr);
        v46 = sub_1000D37DC();
        sub_1000D2C5C();
        v34 = 750;
        if (v50 <= 750)
        {
          v34 = 0;
        }

        *v14 = v34;
        (*(v12 + 104))(v14, enum case for DispatchTimeInterval.milliseconds(_:), v11);
        v35 = v52;
        sub_1000D2C8C();
        (*(v12 + 8))(v14, v11);
        v36 = v54;
        v37 = *(v53 + 8);
        v37(v18, v54);
        v38 = swift_allocObject();
        v39 = v51;
        v38[2] = a1;
        v38[3] = v39;
        v38[4] = v55;
        aBlock[4] = sub_1000B77D4;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100079E60;
        aBlock[3] = &unk_10011CF08;
        v40 = _Block_copy(aBlock);

        v41 = v56;
        sub_1000D2C3C();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10003C330();
        sub_100006334(&qword_100124678, &unk_1000E7880);
        sub_10003C388();
        v42 = v58;
        v43 = v49;
        sub_1000D38AC();
        v44 = v46;
        sub_1000D37CC();
        _Block_release(v40);

        (*(v48 + 8))(v42, v43);
        (*(v57 + 8))(v41, v47);
        v37(v35, v36);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000B75D0()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1000B7628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000B7640(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong isFinished];

    if ((v5 & 1) == 0)
    {
      v7 = sub_100002C80(v6);
      if (v7)
      {
        v8 = v7;
        sub_100006334(&qword_100122C50, &qword_1000E3F90);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1000E0440;
        swift_beginAccess();
        v10 = swift_unknownObjectWeakLoadStrong();
        v11 = sub_1000B67CC(v10);
        v13 = v12;

        *(v9 + 56) = &type metadata for String;
        *(v9 + 64) = sub_100018744();
        *(v9 + 32) = v11;
        *(v9 + 40) = v13;
        v14 = sub_1000D37AC();
        sub_1000D1B2C("Timebox::[%{public}@] did not cancel within allowed time, calling timeoutBlock", 78, 2, &_mh_execute_header, v8, v14, v9);

        a2(v15);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000B7794()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000B77E0()
{
  result = qword_100127848;
  if (!qword_100127848)
  {
    sub_10007CB04(255, &qword_100127840, NSOperation_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127848);
  }

  return result;
}

uint64_t sub_1000B7848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000B78B8()
{
  result = qword_100127850;
  if (!qword_100127850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127850);
  }

  return result;
}

uint64_t sub_1000B7AF0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1000D38DC(25);

  v9 = a3(v8);
  v12._countAndFlagsBits = (*(v9 + 48))(a4, v9);
  sub_1000D366C(v12);

  v13._countAndFlagsBits = 2108704;
  v13._object = 0xE300000000000000;
  sub_1000D366C(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  sub_1000D366C(v14);
  sub_1000D1A0C();
}

void sub_1000B7BF4(char a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000872B0(a1) == 0x6E776F6E6B6E75 && v7 == 0xE700000000000000)
  {

LABEL_5:
    sub_100072758();
    swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 2;
    swift_willThrow();
    return;
  }

  v8 = sub_1000D39CC();

  if (v8)
  {
    goto LABEL_5;
  }

  sub_1000872B0(a1);
  v10 = *(v3 + 16);
  v13 = a2;
  v14 = a3;

  v11 = sub_1000D39FC();
  v12 = sub_1000D35FC();

  [v10 setValue:v11 forKey:{v12, v13, v14}];
  swift_unknownObjectRelease();
}

void sub_1000B7D4C(char a1, char a2)
{
  if (sub_1000872B0(a1) == 0x6E776F6E6B6E75 && v4 == 0xE700000000000000)
  {

LABEL_5:
    sub_100072758();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 2;
    swift_willThrow();
    return;
  }

  v5 = sub_1000D39CC();

  if (v5)
  {
    goto LABEL_5;
  }

  sub_1000872B0(a1);
  v7 = *(v2 + 16);
  v8 = sub_1000D39FC();
  v9 = sub_1000D35FC();

  [v7 setValue:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_1000B7E94(char a1)
{
  if (sub_1000872B0(a1) == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {

LABEL_5:
    sub_100072758();
    swift_allocError();
    v6 = 3;
LABEL_6:
    *v5 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    return swift_willThrow();
  }

  v4 = sub_1000D39CC();

  if (v4)
  {
    goto LABEL_5;
  }

  v8 = sub_1000872B0(a1);
  v10 = v9;
  v11 = *(v1 + 16);
  v12 = sub_1000D35FC();
  v13 = [v11 valueForKey:v12];

  if (v13)
  {
    sub_1000D388C();
    swift_unknownObjectRelease();
    sub_1000BB8F8(&v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_100006334(&qword_1001279D8, &qword_1000EC8C0);
  sub_100006334(&qword_1001264E8, &unk_1000EC920);
  if (!swift_dynamicCast())
  {
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(21);

    *&v16[0] = 0xD000000000000013;
    *(&v16[0] + 1) = 0x80000001000DCB60;
    v17._countAndFlagsBits = v8;
    v17._object = v10;
    sub_1000D366C(v17);

    v14 = v16[0];
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(42);

    *&v16[0] = 0xD000000000000028;
    *(&v16[0] + 1) = 0x80000001000DCB80;
    sub_1000D366C(v14);

    sub_1000D1A0C();

    sub_100072758();
    swift_allocError();
    v6 = 4;
    goto LABEL_6;
  }

  return v15;
}

uint64_t sub_1000B8110(char a1)
{
  if (sub_1000872B0(a1) == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {

LABEL_5:
    sub_100072758();
    swift_allocError();
    v6 = 3;
    goto LABEL_6;
  }

  v4 = sub_1000D39CC();

  if (v4)
  {
    goto LABEL_5;
  }

  v9 = sub_1000872B0(a1);
  v11 = v10;
  v12 = *(v1 + 16);
  v13 = sub_1000D35FC();
  v14 = [v12 valueForKey:v13];

  if (v14)
  {
    sub_1000D388C();
    swift_unknownObjectRelease();
    sub_1000BB8F8(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100006334(&qword_1001279D8, &qword_1000EC8C0);
  if (swift_dynamicCast())
  {

    v7 = v16[0];
    return v7 & 1;
  }

  *&v17[0] = 0;
  *(&v17[0] + 1) = 0xE000000000000000;
  sub_1000D38DC(21);

  *&v17[0] = 0xD000000000000013;
  *(&v17[0] + 1) = 0x80000001000DCB60;
  v18._countAndFlagsBits = v9;
  v18._object = v11;
  sub_1000D366C(v18);

  v15 = v17[0];
  *&v17[0] = 0;
  *(&v17[0] + 1) = 0xE000000000000000;
  sub_1000D38DC(42);

  *&v17[0] = 0xD000000000000028;
  *(&v17[0] + 1) = 0x80000001000DCB80;
  sub_1000D366C(v15);

  sub_1000D1A0C();

  sub_100072758();
  swift_allocError();
  v6 = 4;
LABEL_6:
  *v5 = v6;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2;
  swift_willThrow();
  return v7 & 1;
}

uint64_t sub_1000B837C(char a1)
{
  if (sub_1000872B0(a1) == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {

LABEL_5:
    sub_100072758();
    swift_allocError();
    v6 = 3;
LABEL_6:
    *v5 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    return swift_willThrow();
  }

  v4 = sub_1000D39CC();

  if (v4)
  {
    goto LABEL_5;
  }

  v8 = sub_1000872B0(a1);
  v10 = v9;
  v11 = *(v1 + 16);
  v12 = sub_1000D35FC();
  v13 = [v11 valueForKey:v12];

  if (v13)
  {
    sub_1000D388C();
    swift_unknownObjectRelease();
    sub_1000BB8F8(&v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  sub_100006334(&qword_1001279D8, &qword_1000EC8C0);
  sub_100006334(&qword_1001279E0, &unk_1000EC8C8);
  if (!swift_dynamicCast())
  {
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(21);

    *&v16[0] = 0xD000000000000013;
    *(&v16[0] + 1) = 0x80000001000DCB60;
    v17._countAndFlagsBits = v8;
    v17._object = v10;
    sub_1000D366C(v17);

    v14 = v16[0];
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(42);

    *&v16[0] = 0xD000000000000028;
    *(&v16[0] + 1) = 0x80000001000DCB80;
    sub_1000D366C(v14);

    sub_1000D1A0C();

    sub_100072758();
    swift_allocError();
    v6 = 4;
    goto LABEL_6;
  }

  return v15;
}

uint64_t sub_1000B85F8()
{
  v0 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C5A0);
  sub_100006610(v10, qword_10013C5A0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000B88E4()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C5B8);
  sub_100006610(v0, qword_10013C5B8);
  return sub_1000D188C();
}

uint64_t sub_1000B8948()
{
  v0 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  sub_1000065AC(v0, qword_10013C5D0);
  v1 = sub_100006610(v0, qword_10013C5D0);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000B8A08()
{
  result = swift_getKeyPath();
  qword_10013C5E8 = result;
  return result;
}

uint64_t sub_1000B8A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_1000B8A54, 0, 0);
}

uint64_t sub_1000B8A54(uint64_t a1)
{
  sub_1000D154C();
  v2 = *(v1 + 24);
  *(v1 + 40) = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  sub_1000D154C();
  *(v1 + 225) = *(v1 + 224);
  if (qword_1001221F8 != -1)
  {
    swift_once();
  }

  v4 = qword_10013C5E8;
  *(v1 + 152) = qword_10013C5E8;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  v6 = sub_10000FC38(&qword_1001279C8, &qword_1001279D0, &unk_1000EC8B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v1 + 168) = v6;
  *v5 = v1;
  v5[1] = sub_1000B8BC0;

  return AppEntity._setValue<A, B, C>(_:for:)(v1 + 225, v4, &type metadata for UpNextDisplayType, v6);
}

uint64_t sub_1000B8BC0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_1000B8D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B8D30(uint64_t a1)
{
  sub_1000D154C();
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v1[23] = v3;
  v1[24] = v4;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v5 = qword_10013C5E8;
  v1[25] = qword_10013C5E8;

  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_1000B8E14;
  v7 = v1[21];

  return AppEntity._value<A, B>(for:)(v1 + 226, v5, v7);
}

uint64_t sub_1000B8E14()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_1000B8F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B8F84()
{
  *(v0 + 227) = *(v0 + 226);
  sub_100022F44();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_1000B900C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_1000B9080(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

double sub_1000B90F4()
{
  if (qword_1001221F8 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1000B9154()
{
  result = qword_100127868;
  if (!qword_100127868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127868);
  }

  return result;
}

unint64_t sub_1000B91AC()
{
  result = qword_100127870;
  if (!qword_100127870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127870);
  }

  return result;
}

uint64_t sub_1000B92BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001221F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908, &unk_1000DFA70);
  v3 = sub_100006610(v2, qword_10013C5D0);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_1000B9340(uint64_t a1, __n128 a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return sub_1000B8A30(a1, v6, v5);
}

uint64_t sub_1000B93EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BB208();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B9434()
{
  result = qword_100127878;
  if (!qword_100127878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127878);
  }

  return result;
}

unint64_t sub_1000B948C()
{
  result = qword_100127880;
  if (!qword_100127880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127880);
  }

  return result;
}

uint64_t sub_1000B9500()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_1000BA5C8();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsUpNextDisplayEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  v9 = sub_1000B837C(v8);
  if (v9 == 2)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    v10._countAndFlagsBits = 49;
  }

  else
  {
    v10._countAndFlagsBits = 48;
  }

  v11._rawValue = &off_100118DF8;
  v10._object = 0xE100000000000000;
  v12 = sub_1000D39AC(v11, v10);

  if (!v12)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if (v12 != 1)
  {
LABEL_16:
    sub_100072758();
    swift_allocError();
    *v14 = 4;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    swift_willThrow();
    v15 = *(v0 + 8);
    goto LABEL_17;
  }

  v13 = 1;
LABEL_21:
  **(v0 + 40) = v13;
  v15 = *(v0 + 8);
LABEL_17:

  return v15();
}

uint64_t sub_1000B9734()
{
  v1 = sub_1000BA5C8();
  v2 = *(v1 + 48);
  v3 = (v2)(&type metadata for TVSettingsUpNextDisplayEntity, v1);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_1000A1B28(v6, v0 + 56);
  if (*(v0 + 88) == 255)
  {
    v9 = *(v0 + 49);
    sub_1000726F0(v0 + 56);
    sub_1000D38DC(33);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v21._object = 0x80000001000DCB20;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    sub_1000D366C(v21);
    *(v0 + 56) = v9;
    sub_1000D395C();
    sub_1000B7AF0(*(v0 + 16), *(v0 + 24), sub_1000BA5C8, &type metadata for TVSettingsUpNextDisplayEntity);

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1000D39CC();
    }

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v11 = v2();
    v13 = v12;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v15 = sub_1000232F8(v11, v13), (v16 & 1) != 0))
    {
      v17 = *(v14[7] + v15);
    }

    else
    {
      v17 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v17, v10 & 1);
  }

  else
  {
    v7 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v7;
    *(v0 + 48) = *(v0 + 88);
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v0 + 16, v8);
    swift_willThrow();
    sub_100072808(v0 + 16);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000B9A40()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000BB60C();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000B9AB0()
{
  result = qword_100127888;
  if (!qword_100127888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127888);
  }

  return result;
}

uint64_t sub_1000B9B04(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_1000BA76C();
  *v5 = v3;
  v5[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000B9BB8()
{
  result = qword_100127890;
  if (!qword_100127890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127890);
  }

  return result;
}

unint64_t sub_1000B9C10()
{
  result = qword_100127898;
  if (!qword_100127898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127898);
  }

  return result;
}

unint64_t sub_1000B9C68()
{
  result = qword_1001278A0;
  if (!qword_1001278A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278A0);
  }

  return result;
}

uint64_t sub_1000B9CBC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_1000BA76C();
  *v6 = v3;
  v6[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000B9D70(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  v6 = sub_1000BA76C();
  *v5 = v3;
  v5[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000B9E24()
{
  result = qword_1001278A8;
  if (!qword_1001278A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278A8);
  }

  return result;
}

unint64_t sub_1000B9E7C()
{
  result = qword_1001278B0;
  if (!qword_1001278B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278B0);
  }

  return result;
}

unint64_t sub_1000B9ED4()
{
  result = qword_1001278B8;
  if (!qword_1001278B8)
  {
    sub_10000637C(&qword_1001278C0, qword_1000EC3F0);
    sub_1000B9E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278B8);
  }

  return result;
}

uint64_t sub_1000B9F58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_1000B9AB0();
  *v6 = v3;
  v6[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000BA080(uint64_t a1)
{
  v2 = sub_1000BA5C8();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_1000B9C68();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_1000BA128(uint64_t a1)
{
  sub_1000BA4F4();
  v2 = sub_1000D169C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000BA1CC(uint64_t a1)
{
  v2 = sub_1000B9C68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000BA218(uint64_t a1)
{
  v2 = sub_1000B948C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000BA264(uint64_t a1)
{
  v2 = sub_1000BA30C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BA2B4()
{
  result = qword_1001278D8;
  if (!qword_1001278D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278D8);
  }

  return result;
}

unint64_t sub_1000BA30C()
{
  result = qword_1001278E0;
  if (!qword_1001278E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278E0);
  }

  return result;
}

unint64_t sub_1000BA364()
{
  result = qword_1001278E8;
  if (!qword_1001278E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278E8);
  }

  return result;
}

unint64_t sub_1000BA3BC()
{
  result = qword_1001278F0;
  if (!qword_1001278F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278F0);
  }

  return result;
}

unint64_t sub_1000BA414()
{
  result = qword_1001278F8;
  if (!qword_1001278F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001278F8);
  }

  return result;
}

unint64_t sub_1000BA468(void *a1)
{
  a1[1] = sub_1000BA4A0();
  a1[2] = sub_1000BA4F4();
  result = sub_1000B948C();
  a1[3] = result;
  return result;
}

unint64_t sub_1000BA4A0()
{
  result = qword_100127948;
  if (!qword_100127948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127948);
  }

  return result;
}

unint64_t sub_1000BA4F4()
{
  result = qword_100127950;
  if (!qword_100127950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127950);
  }

  return result;
}

unint64_t sub_1000BA54C()
{
  result = qword_100127958;
  if (!qword_100127958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127958);
  }

  return result;
}

unint64_t sub_1000BA5A0(uint64_t a1)
{
  result = sub_1000BA5C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BA5C8()
{
  result = qword_100127990;
  if (!qword_100127990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127990);
  }

  return result;
}

unint64_t sub_1000BA664()
{
  result = qword_1001279A8;
  if (!qword_1001279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001279A8);
  }

  return result;
}

unint64_t sub_1000BA6BC()
{
  result = qword_1001279B0;
  if (!qword_1001279B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001279B0);
  }

  return result;
}

unint64_t sub_1000BA714()
{
  result = qword_1001279B8;
  if (!qword_1001279B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001279B8);
  }

  return result;
}

unint64_t sub_1000BA76C()
{
  result = qword_1001279C0;
  if (!qword_1001279C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001279C0);
  }

  return result;
}

uint64_t sub_1000BA7C0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960, &unk_1000DFB00);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968, &unk_1000E8260);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970, &unk_1000DFB10);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978, &unk_1000E8270);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_1000BB9BC();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsUpNextDisplayWidget, v14);
  sub_1000D366C(v54);

  v33[1] = v47[0];
  v33[0] = v47[1];
  swift_getKeyPath();
  sub_1000D32AC();
  sub_100006334(&qword_100122988, &unk_1000DFB20);
  sub_100022EEC();
  sub_10002324C();
  sub_1000B948C();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = 0xD000000000000024;
  v53 = 0x80000001000DCD00;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_1000BAE2C@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();
  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000BAE98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100121FD8 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C0D8;
  v21 = *(qword_10013C0D8 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_1000233F8(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_1000BB174(_BYTE *a1)
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_1000BB208()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8, &qword_1000E0320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0, &unk_1000DFA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001279E8, &qword_1000EC8D8);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_1000B9C68();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001279F0, &qword_1000EC8E0);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100022EEC();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000BB60C()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsUpNextDisplayEntity;
  sub_100006334(&qword_100122D58, &unk_1000E6170);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100127860, qword_1000EC190);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_1001279C8, &qword_1001279D0, &unk_1000EC8B0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  sub_100022EEC();
  sub_1000D178C();
  return v7;
}

_OWORD *sub_1000BB8F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1000BB908@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

unint64_t sub_1000BB940(uint64_t a1)
{
  result = sub_1000BB968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BB968()
{
  result = qword_100127A40;
  if (!qword_100127A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127A40);
  }

  return result;
}

unint64_t sub_1000BB9BC()
{
  result = qword_100127A48;
  if (!qword_100127A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127A48);
  }

  return result;
}

uint64_t sub_1000BBA10()
{
  sub_10000637C(&qword_100122978, &unk_1000E8270);
  sub_10000637C(&qword_100122970, &unk_1000DFB10);
  sub_10000637C(&qword_100122968, &unk_1000E8260);
  sub_10000637C(&qword_100122960, &unk_1000DFB00);
  sub_10000FC38(&qword_1001229A0, &qword_100122960, &unk_1000DFB00, &protocol conformance descriptor for ControlPicker<A>);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BBB98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1000BBBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000BBC74@<X0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v6 = v9 >> 62;
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (result >= v12)
      {
        goto LABEL_13;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v27 = sub_1000D397C();
  result = sub_1000D397C();
  if (result < 0)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  if (v27 >= v5)
  {
    v28 = v5;
  }

  else
  {
    v28 = v27;
  }

  if (v27 < 0)
  {
    v28 = v5;
  }

  if (v5)
  {
    v12 = v28;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1000D397C();
  if (result < v12)
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v9 & 0xC000000000000001) == 0 || v12 == 0)
  {
  }

  else
  {
    type metadata accessor for TVWidgetContentViewModel(0);

    v14 = 0;
    do
    {
      v15 = v14 + 1;
      sub_1000D38EC(v14);
      v14 = v15;
    }

    while (v12 != v15);
  }

  if (v6)
  {
    v17 = sub_1000D398C();
    v16 = v20;
    v19 = v21;
    v18 = v22;
  }

  else
  {
    v16 = 0;
    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    v18 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v19 = (2 * v12) | 1;
  }

  v29 = v7;
  if (v16 != v19 >> 1)
  {
    if ((v19 >> 1) > v16)
    {

      v23 = sub_1000889BC();
      v24 = v25;

      goto LABEL_27;
    }

    goto LABEL_42;
  }

  v23 = 0;
  v24 = 0;
LABEL_27:
  *a4 = sub_1000D21BC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v26 = sub_100006334(&qword_100127A50, &qword_1000ECA58);
  sub_1000BBED4(v29, v5, v17, v18, v16, v19, v23, a4 + *(v26 + 44), v24);
  swift_unknownObjectRelease();
}

uint64_t sub_1000BBED4@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v39 = a7;
  v40 = a2;
  v44 = a6;
  v45 = a5;
  v13 = a1;
  v43 = type metadata accessor for TVWidgetNoContentTextView(0);
  __chkstk_darwin(v43);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100006334(&qword_100127A58, &qword_1000ECA60);
  __chkstk_darwin(v41);
  v17 = v38 - v16;
  v42 = sub_100006334(&qword_100127A60, &qword_1000ECA68);
  __chkstk_darwin(v42);
  v19 = v38 - v18;
  v20 = sub_100006334(&qword_100127A68, &qword_1000ECA70);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v38 - v24;
  if (v13 == 4)
  {
    *v19 = sub_1000D21CC();
    *(v19 + 1) = 0x401C000000000000;
    v19[16] = 0;
    v38[2] = *(sub_100006334(&qword_100127A70, &qword_1000ECA78) + 44);
    v46 = a3;
    v47 = a4;
    v48 = v45;
    v49 = v44;
    v26 = swift_allocObject();
    *(v26 + 16) = v39;
    *(v26 + 24) = a9;

    swift_unknownObjectRetain();
    v39 = sub_100006334(&qword_100127A78, &qword_1000ECA80);
    v38[1] = sub_100006334(&qword_100127A80, &qword_1000ECA88);
    sub_10000FC38(&qword_100127A88, &qword_100127A78, &qword_1000ECA80, &protocol conformance descriptor for ArraySlice<A>);
    sub_10000FC38(&qword_100127A90, &qword_100127A80, &qword_1000ECA88, &protocol conformance descriptor for TupleView<A>);
    sub_1000BCA2C(&qword_100127A98, type metadata accessor for TVWidgetContentViewModel, &unk_1000E9828);
    sub_1000D2ACC();
    sub_10000F8D0(v19, v17, &qword_100127A60, &qword_1000ECA68);
    swift_storeEnumTagMultiPayload();
    sub_1000BCA2C(&qword_100127AA0, type metadata accessor for TVWidgetNoContentTextView, &unk_1000ECBDC);
    sub_10000FC38(&qword_100127AA8, &qword_100127A60, &qword_1000ECA68, &protocol conformance descriptor for VStack<A>);
    sub_1000D229C();
    result = sub_10000F938(v19, &qword_100127A60, &qword_1000ECA68);
  }

  else
  {
    v28 = v43;
    v29 = *(v43 + 20);
    v30 = enum case for WidgetFamily.systemSmall(_:);
    v31 = sub_1000D323C();
    (*(*(v31 - 8) + 104))(&v15[v29], v30, v31);
    sub_1000D325C();
    v32 = sub_1000D287C();
    *v15 = a1;
    v33 = &v15[*(v28 + 28)];
    *v33 = v32;
    *(v33 + 1) = 0x3FE999999999999ALL;
    v33[16] = 1;
    sub_1000BCB48(v15, v17, type metadata accessor for TVWidgetNoContentTextView);
    swift_storeEnumTagMultiPayload();
    sub_1000BCA2C(&qword_100127AA0, type metadata accessor for TVWidgetNoContentTextView, &unk_1000ECBDC);
    sub_10000FC38(&qword_100127AA8, &qword_100127A60, &qword_1000ECA68, &protocol conformance descriptor for VStack<A>);
    sub_1000D229C();
    result = sub_1000BCBB0(v15, type metadata accessor for TVWidgetNoContentTextView);
  }

  v34 = (v44 >> 1) - v45;
  if (__OFSUB__(v44 >> 1, v45))
  {
    __break(1u);
  }

  else
  {
    v35 = v34 >= v40;
    v36 = v34 < v40;
    sub_10000F8D0(v25, v23, &qword_100127A68, &qword_1000ECA70);
    sub_10000F8D0(v23, a8, &qword_100127A68, &qword_1000ECA70);
    v37 = a8 + *(sub_100006334(&qword_100127AB0, &qword_1000ECA90) + 48);
    *v37 = 0;
    *(v37 + 8) = v36;
    *(v37 + 9) = v35;
    sub_10000F938(v25, &qword_100127A68, &qword_1000ECA70);
    return sub_10000F938(v23, &qword_100127A68, &qword_1000ECA70);
  }

  return result;
}

uint64_t sub_1000BC4C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v55 = a4;
  v53 = sub_1000D2AAC();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100006334(&qword_100127AB8, &qword_1000ECA98);
  v7 = __chkstk_darwin(v49);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - v10;
  __chkstk_darwin(v9);
  v52 = &v46 - v12;
  v13 = sub_1000D323C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TVWidgetContentView(0);
  v18 = __chkstk_darwin(v17);
  v48 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v46 - v21;
  __chkstk_darwin(v20);
  v24 = &v46 - v23;
  v25 = *a1;
  v26 = sub_1000889BC();
  if (a3)
  {
    if (v26 == v47 && v27 == a3)
    {

      v28 = 0.0;
    }

    else
    {
      v29 = sub_1000D39CC();

      if (v29)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1.0;
      }
    }
  }

  else
  {

    v28 = 1.0;
  }

  (*(v14 + 104))(v16, enum case for WidgetFamily.systemSmall(_:), v13);

  v30 = sub_1000D1EDC();
  v31 = sub_1000D1ECC();
  if (v30)
  {
    if ((v31 & ~v30) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (!v31)
  {
    v30 = 0;
    goto LABEL_15;
  }

  v30 |= v31;
LABEL_15:
  v32 = sub_1000D2B8C();
  *v22 = 3;
  (*(v14 + 32))(&v22[v17[5]], v16, v13);
  *&v22[v17[6]] = v25;
  v33 = &v22[v17[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v33 = xmmword_1000EBB20;
  *(v33 + 1) = _Q1;
  v33[32] = 0;
  *(v33 + 33) = v59;
  v33[35] = v60;
  *(v33 + 9) = v30;
  *(v33 + 5) = v32;
  *(v33 + 3) = xmmword_1000EBB30;
  v33[64] = 0;
  *(v33 + 65) = *v58;
  *(v33 + 17) = *&v58[3];
  *(v33 + 9) = 0;
  *(v33 + 79) = 0;
  *(v33 + 83) = v56;
  v33[87] = v57;
  *(v33 + 11) = 0;
  sub_1000BCA74(v22, v24);
  v39 = v50;
  sub_1000D2A9C();
  (*(v51 + 32))(v11, v39, v53);
  *&v11[*(v49 + 36)] = v28;
  v40 = v52;
  sub_1000BCAD8(v11, v52);
  v41 = v48;
  sub_1000BCB48(v24, v48, type metadata accessor for TVWidgetContentView);
  v42 = v54;
  sub_10000F8D0(v40, v54, &qword_100127AB8, &qword_1000ECA98);
  v43 = v55;
  sub_1000BCB48(v41, v55, type metadata accessor for TVWidgetContentView);
  v44 = sub_100006334(&qword_100127AC0, &qword_1000ECAA0);
  sub_10000F8D0(v42, v43 + *(v44 + 48), &qword_100127AB8, &qword_1000ECA98);
  sub_10000F938(v40, &qword_100127AB8, &qword_1000ECA98);
  sub_1000BCBB0(v24, type metadata accessor for TVWidgetContentView);
  sub_10000F938(v42, &qword_100127AB8, &qword_1000ECA98);
  return sub_1000BCBB0(v41, type metadata accessor for TVWidgetContentView);
}

uint64_t sub_1000BC9EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BCA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BCA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100127AB8, &qword_1000ECA98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BCBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BCC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000D323C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000BCD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D323C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TVWidgetLockscreenCell(uint64_t a1)
{
  result = qword_100127B30;
  if (!qword_100127B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BCE18(uint64_t a1)
{
  result = sub_1000D323C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TVWidgetContentViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BCEC8@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TVWidgetLockscreenCell(0);
  v4 = *(v1 + *(result + 24));
  v5 = 0uLL;
  if (*(v4 + 24) && *(v4 + 40))
  {

    v6 = sub_1000D21CC();
    v12 = 0;
    sub_1000BCFAC(v11);

    v5 = v11[0];
    v7 = v11[1];
    v8 = v11[2];
    v9 = v11[3];
    v10 = v12;
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v9;
  return result;
}

uint64_t sub_1000BCFAC@<X0>(uint64_t a5@<X8>)
{
  sub_10000F320();

  v6 = sub_1000D260C();
  v8 = v7;
  v10 = v9;
  sub_1000D23CC();
  v11 = sub_1000D257C();
  v13 = v12;
  v15 = v14;

  sub_10000F374(v6, v8, v10 & 1);

  sub_1000D243C();
  v16 = sub_1000D252C();
  v36 = v17;
  v37 = v16;
  v35 = v18;
  v38 = v19;
  sub_10000F374(v11, v13, v15 & 1);

  v20 = sub_1000D260C();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_1000D23CC();
  v24 = sub_1000D257C();
  v26 = v25;
  LOBYTE(v8) = v27;

  sub_10000F374(v20, v22, v13 & 1);

  sub_1000D287C();
  v28 = sub_1000D254C();
  v30 = v29;
  LOBYTE(v11) = v31;
  v33 = v32;

  sub_10000F374(v24, v26, v8 & 1);

  *a5 = v37;
  *(a5 + 8) = v36;
  *(a5 + 16) = v35 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = v28;
  *(a5 + 40) = v30;
  *(a5 + 48) = v11 & 1;
  *(a5 + 56) = v33;
  sub_10004328C(v37, v36, v35 & 1);

  sub_10004328C(v28, v30, v11 & 1);

  sub_10000F374(v28, v30, v11 & 1);

  sub_10000F374(v37, v36, v35 & 1);
}

unint64_t sub_1000BD22C()
{
  result = qword_100127B70;
  if (!qword_100127B70)
  {
    sub_10000637C(&qword_100127B78, qword_1000ECB18);
    sub_10000FC38(&qword_1001269A0, &qword_100126998, &qword_1000EA9E0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127B70);
  }

  return result;
}

unint64_t sub_1000BD2F0()
{
  result = qword_100127B80;
  if (!qword_100127B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127B80);
  }

  return result;
}

uint64_t sub_1000BD358(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000D323C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000D329C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000BD474(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000D323C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1000D329C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for TVWidgetNoContentTextView(uint64_t a1)
{
  result = qword_100127BE0;
  if (!qword_100127BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BD5C4(uint64_t a1)
{
  result = sub_1000D323C();
  if (v2 <= 0x3F)
  {
    result = sub_1000D329C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1000BD67C@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_1000D21BC();
  v18 = 1;
  sub_1000BD834(v2, &v20);
  v28 = v22;
  v29[0] = *v23;
  *(v29 + 9) = *&v23[9];
  v26 = v20;
  v27 = v21;
  v30[2] = v22;
  v31[0] = *v23;
  *(v31 + 9) = *&v23[9];
  v30[0] = v20;
  v30[1] = v21;
  sub_1000BDA98(&v26, v16);
  sub_1000BDB08(v30);
  *&v17[23] = v27;
  *&v17[39] = v28;
  *&v17[55] = v29[0];
  *&v17[64] = *(v29 + 9);
  *&v17[7] = v26;
  v5 = v18;
  sub_1000D2B5C();
  sub_1000D1E2C();
  *&v19[55] = *v23;
  *&v19[71] = *&v23[16];
  *&v19[87] = v24;
  *&v19[103] = v25;
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  v6 = *&v2[*(type metadata accessor for TVWidgetNoContentTextView(0) + 28) + 8];
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v8 = *v17;
  *(a2 + 33) = *&v17[16];
  v9 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = *&v17[64];
  *(a2 + 17) = v8;
  v10 = *v19;
  v11 = *&v19[16];
  v12 = *&v19[32];
  *(a2 + 145) = *&v19[48];
  *(a2 + 129) = v12;
  *(a2 + 113) = v11;
  *(a2 + 97) = v10;
  result = *&v19[64];
  v14 = *&v19[80];
  v15 = *&v19[96];
  *(a2 + 208) = *&v19[111];
  *(a2 + 216) = KeyPath;
  *(a2 + 193) = v15;
  *(a2 + 177) = v14;
  *(a2 + 161) = result;
  *(a2 + 224) = v6;
  return result;
}

uint64_t sub_1000BD834@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D215C();
  v4 = sub_1000D25EC();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for TVWidgetNoContentTextView(0);
  v24 = a1[v9[7] + 16];
  sub_10001B85C(&a1[v9[5]], &a1[v9[6]]);
  v10 = sub_1000D257C();
  v12 = v11;
  v14 = v13;

  sub_10000F374(v4, v6, v8 & 1);

  v15 = sub_1000D254C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000F374(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19 & 1;
  *(a2 + 40) = v21;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v24;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  sub_10004328C(v15, v17, v19 & 1);

  sub_10000F374(v15, v17, v19 & 1);
}

uint64_t sub_1000BDA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100127C20, &qword_1000ECC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDB08(uint64_t a1)
{
  v2 = sub_100006334(&qword_100127C20, &qword_1000ECC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000BDB84()
{
  result = qword_100127C28;
  if (!qword_100127C28)
  {
    sub_10000637C(&qword_100127C30, &qword_1000ECC98);
    sub_1000BDC3C();
    sub_10000FC38(&qword_1001225D0, &qword_1001225D8, &qword_1000DF090, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127C28);
  }

  return result;
}

unint64_t sub_1000BDC3C()
{
  result = qword_100127C38;
  if (!qword_100127C38)
  {
    sub_10000637C(&qword_100127C40, &qword_1000ECCA0);
    sub_10000FC38(&qword_100127C48, &qword_100127C50, &qword_1000ECCA8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127C38);
  }

  return result;
}

uint64_t sub_1000BDD20@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v42 = sub_100006334(&qword_100127C58, &qword_1000ECD78);
  __chkstk_darwin(v42);
  v3 = &v37 - v2;
  v44 = sub_100006334(&qword_100127C60, &qword_1000ECD80);
  __chkstk_darwin(v44);
  v43 = &v37 - v4;
  v41 = sub_100006334(&qword_100127C68, &qword_1000ECD88);
  __chkstk_darwin(v41);
  v6 = &v37 - v5;
  v45 = sub_100006334(&qword_100127C70, &qword_1000ECD90);
  __chkstk_darwin(v45);
  v8 = &v37 - v7;
  v9 = sub_1000D28EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006334(&qword_100127C78, &qword_1000ECD98);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  if (v1[5])
  {

    sub_1000D28DC();
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v16 = sub_1000D291C();

    (*(v10 + 8))(v12, v9);
    v17 = v1[1];
    KeyPath = swift_getKeyPath();

    sub_1000D2B5C();
    sub_1000D1C8C();
    v19 = &v15[*(v13 + 36)];
    sub_100006334(&qword_1001248F8, &qword_1000E43D0);
    sub_1000D1EFC();
    *v19 = swift_getKeyPath();
    *v15 = v16;
    *(v15 + 1) = KeyPath;
    *(v15 + 2) = v17;
    *(v15 + 56) = v50;
    v20 = v48;
    *(v15 + 40) = v49;
    *(v15 + 24) = v20;
    v21 = &qword_100127C78;
    v22 = &qword_1000ECD98;
    sub_10000F8D0(v15, v6, &qword_100127C78, &qword_1000ECD98);
    swift_storeEnumTagMultiPayload();
    sub_1000BE638(&qword_100127C88, &qword_100127C78, &qword_1000ECD98, sub_1000BE6E8);
    sub_1000BE638(&qword_100127CB0, &qword_100127C58, &qword_1000ECD78, sub_1000BE82C);
    sub_1000D229C();
    sub_10000F8D0(v8, v43, &qword_100127C70, &qword_1000ECD90);
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_100126A08, &qword_1000ECDA0);
    sub_1000BE554();
    sub_1000BE8B0();
    sub_1000D229C();
    sub_10000F938(v8, &qword_100127C70, &qword_1000ECD90);
    v23 = v15;
    return sub_10000F938(v23, v21, v22);
  }

  v40 = v13;
  if (v1[7])
  {
    v25 = objc_allocWithZone(UIImage);
    v26 = sub_1000D35FC();
    v27 = [v25 initWithContentsOfFile:v26];

    if (v27)
    {
      v39 = v27;
      sub_1000D28CC();
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v38 = sub_1000D291C();

      (*(v10 + 8))(v12, v9);
      sub_1000D2B5C();
      sub_1000D1C8C();
      v28 = v48;
      v29 = BYTE8(v48);
      v30 = v49;
      v31 = BYTE8(v49);
      v32 = v50;
      v33 = &v3[*(v42 + 36)];
      sub_100006334(&qword_1001248F8, &qword_1000E43D0);
      sub_1000D1EFC();
      *v33 = swift_getKeyPath();
      *v3 = v38;
      *(v3 + 1) = v28;
      v3[16] = v29;
      *(v3 + 3) = v30;
      v3[32] = v31;
      *(v3 + 40) = v32;
      v21 = &qword_100127C58;
      v22 = &qword_1000ECD78;
      sub_10000F8D0(v3, v6, &qword_100127C58, &qword_1000ECD78);
      swift_storeEnumTagMultiPayload();
      sub_1000BE638(&qword_100127C88, &qword_100127C78, &qword_1000ECD98, sub_1000BE6E8);
      sub_1000BE638(&qword_100127CB0, &qword_100127C58, &qword_1000ECD78, sub_1000BE82C);
      sub_1000D229C();
      sub_10000F8D0(v8, v43, &qword_100127C70, &qword_1000ECD90);
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_100126A08, &qword_1000ECDA0);
      sub_1000BE554();
      sub_1000BE8B0();
      sub_1000D229C();

      sub_10000F938(v8, &qword_100127C70, &qword_1000ECD90);
      v23 = v3;
      return sub_10000F938(v23, v21, v22);
    }
  }

  v34 = sub_1000D283C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v47[6] = v48;
  *&v47[22] = v49;
  *&v47[38] = v50;
  v35 = *&v47[16];
  v36 = v43;
  *(v43 + 10) = *v47;
  *v36 = v34;
  *(v36 + 8) = 256;
  *(v36 + 26) = v35;
  *(v36 + 42) = *&v47[32];
  *(v36 + 56) = *&v47[46];
  swift_storeEnumTagMultiPayload();
  sub_100006334(&qword_100126A08, &qword_1000ECDA0);
  sub_1000BE554();
  sub_1000BE8B0();
  return sub_1000D229C();
}

unint64_t sub_1000BE554()
{
  result = qword_100127C80;
  if (!qword_100127C80)
  {
    sub_10000637C(&qword_100127C70, &qword_1000ECD90);
    sub_1000BE638(&qword_100127C88, &qword_100127C78, &qword_1000ECD98, sub_1000BE6E8);
    sub_1000BE638(&qword_100127CB0, &qword_100127C58, &qword_1000ECD78, sub_1000BE82C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127C80);
  }

  return result;
}

uint64_t sub_1000BE638(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000637C(a2, a3);
    a4();
    sub_10000FC38(&qword_100124AC0, &qword_1001248F8, &qword_1000E43D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BE6E8()
{
  result = qword_100127C90;
  if (!qword_100127C90)
  {
    sub_10000637C(&qword_100127C98, &qword_1000ECDA8);
    sub_1000BE774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127C90);
  }

  return result;
}

unint64_t sub_1000BE774()
{
  result = qword_100127CA0;
  if (!qword_100127CA0)
  {
    sub_10000637C(&qword_100127CA8, &qword_1000ECDB0);
    sub_10000FC38(&qword_1001251C0, &qword_1001251A8, &qword_1000E6300, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127CA0);
  }

  return result;
}

unint64_t sub_1000BE82C()
{
  result = qword_100127CB8;
  if (!qword_100127CB8)
  {
    sub_10000637C(&qword_100127CC0, &qword_1000ECDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127CB8);
  }

  return result;
}

unint64_t sub_1000BE8B0()
{
  result = qword_100127CC8;
  if (!qword_100127CC8)
  {
    sub_10000637C(&qword_100126A08, &qword_1000ECDA0);
    sub_10000FC38(&qword_100127CD0, &qword_100127CD8, &qword_1000ECDC0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127CC8);
  }

  return result;
}

uint64_t sub_1000BE9B0(uint64_t a1)
{
  v2 = sub_1000D1F0C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000D1FDC();
}

unint64_t sub_1000BEA88()
{
  result = qword_100127CE0;
  if (!qword_100127CE0)
  {
    sub_10000637C(&qword_100127CE8, qword_1000ECE28);
    sub_1000BE554();
    sub_1000BE8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127CE0);
  }

  return result;
}

uint64_t sub_1000BEB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000BEC08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TVWidgetMetadataView(uint64_t a1)
{
  result = qword_100127D48;
  if (!qword_100127D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BED1C(uint64_t a1)
{
  sub_1000194A8();
  if (v1 <= 0x3F)
  {
    sub_1000BEDA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000BEDA8(uint64_t a1)
{
  if (!qword_100122F10)
  {
    sub_1000D19FC();
    v1 = sub_1000D385C();
    if (!v2)
    {
      atomic_store(v1, &qword_100122F10);
    }
  }
}

uint64_t sub_1000BEE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_100006334(&qword_100127D90, &qword_1000ECEC0);
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v101 = (&v86 - v4);
  v5 = sub_100006334(&qword_100127D98, &qword_1000ECEC8);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = __chkstk_darwin(v5);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v86 - v8;
  v9 = sub_100006334(&qword_100127DA0, &qword_1000ECED0);
  v10 = __chkstk_darwin(v9 - 8);
  v106 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = a1[1];
  v110 = &v86 - v12;
  if (v13)
  {
    *&v121 = *a1;
    *(&v121 + 1) = v13;
    sub_10000F320();

    v14 = sub_1000D260C();
    v16 = v15;
    v18 = v17;
    v19 = a1 + *(type metadata accessor for TVWidgetMetadataView(0) + 28);
    sub_1000D244C();
    sub_1000D247C();
    v20 = sub_1000D257C();
    v111 = a1;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v113 = v26;
    v27 = v110;

    sub_10000F374(v14, v16, v18 & 1);

    v28 = sub_1000D254C();
    v30 = v29;
    v32 = v31;
    v105 = v33;
    v34 = v21;
    a1 = v111;
    sub_10000F374(v34, v23, v25 & 1);

    v35 = *(v19 + 1);
    KeyPath = swift_getKeyPath();
    v103 = v19[16];
    v102 = swift_getKeyPath();
    LOBYTE(v121) = v32 & 1;
    LOBYTE(v116) = 0;
    v112 = v32 & 1;
  }

  else
  {
    v27 = &v86 - v12;
    v28 = 0;
    v30 = 0;
    KeyPath = 0;
    v105 = 0;
    v35 = 0;
    v102 = 0;
    v103 = 0;
    v112 = 0;
  }

  v113 = 0;
  v36 = a1[3];
  v111 = v28;
  if (v36)
  {
    v37 = a1[2];
    v38 = (a1 + *(type metadata accessor for TVWidgetMetadataView(0) + 28));
    v39 = v38[8];
    v95 = v35;
    v96 = v30;
    if (v39 <= 0.0)
    {
      v94 = 0;
      v91 = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v93 = 1;
    }

    else
    {
      sub_1000D2B5C();
      sub_1000D1C8C();
      v93 = 0;
      v94 = v126;
      v91 = v130;
      v92 = v128;
      LOBYTE(v116) = 1;
      v115 = v127;
      v114 = v129;
      v87 = 1;
      v88 = v127;
      v89 = v129;
      v90 = v131;
      LOBYTE(v121) = 0;
    }

    v40 = sub_1000BF5C8(v37, v36);
    v42 = v41;
    v44 = v43;
    sub_1000D244C();
    sub_1000D247C();
    v45 = sub_1000D257C();
    v47 = v46;
    v49 = v48;
    v86 = v50;

    sub_10000F374(v40, v42, v44 & 1);

    v51 = sub_1000D254C();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_10000F374(v45, v47, v49 & 1);

    v58 = *(v38 + 1);
    v59 = swift_getKeyPath();
    LOBYTE(v47) = *(v38 + 16);
    v60 = swift_getKeyPath();
    v115 = v55 & 1;
    v114 = 0;
    *&v116 = v51;
    *(&v116 + 1) = v53;
    LOBYTE(v117) = v55 & 1;
    *(&v117 + 1) = v57;
    *&v118 = v59;
    *(&v118 + 1) = v58;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = v60;
    v120 = v47;
    sub_100006334(&qword_1001224B8, &unk_1000DEF80);
    sub_10000F394();
    v61 = v97;
    sub_1000D265C();
    v123 = v118;
    v124 = v119;
    v125 = v120;
    v121 = v116;
    v122 = v117;
    sub_10000F938(&v121, &qword_1001224B8, &unk_1000DEF80);
    v63 = v98;
    v62 = v99;
    v64 = *(v99 + 16);
    v65 = v100;
    v64(v98, v61, v100);
    v66 = v101;
    v67 = v87;
    *v101 = 0;
    *(v66 + 8) = v67;
    v68 = v88;
    *(v66 + 16) = v94;
    *(v66 + 24) = v68;
    v69 = v89;
    *(v66 + 32) = v92;
    *(v66 + 40) = v69;
    v70 = v90;
    *(v66 + 48) = v91;
    *(v66 + 56) = v70;
    *(v66 + 64) = v93;
    v71 = sub_100006334(&qword_100127DB8, &qword_1000ECF48);
    v64((v66 + *(v71 + 48)), v63, v65);
    v72 = *(v62 + 8);
    v72(v61, v65);
    v72(v63, v65);
    v73 = v110;
    sub_1000BFC18(v66, v110);
    v27 = v73;
    (*(v107 + 56))(v73, 0, 1, v108);
    v28 = v111;
    v35 = v95;
    v30 = v96;
  }

  else
  {
    (*(v107 + 56))(v27, 1, 1, v108);
  }

  v74 = v106;
  sub_1000BFB30(v27, v106);
  *&v116 = v28;
  *(&v116 + 1) = v30;
  v75 = v30;
  v77 = KeyPath;
  v76 = v105;
  *&v117 = v112;
  *(&v117 + 1) = v105;
  *&v118 = KeyPath;
  *(&v118 + 1) = v35;
  v78 = v35;
  v79 = v102;
  *&v119 = v113;
  *(&v119 + 1) = v102;
  v80 = v103;
  v120 = v103;
  v81 = v109;
  *(v109 + 64) = v103;
  v82 = v119;
  v81[2] = v118;
  v81[3] = v82;
  v83 = v117;
  *v81 = v116;
  v81[1] = v83;
  v84 = sub_100006334(&qword_100127DA8, &qword_1000ECED8);
  sub_1000BFB30(v74, v81 + *(v84 + 48));
  sub_10000F8D0(&v116, &v121, &qword_100127DB0, &qword_1000ECEE0);
  sub_1000BFBA0(v27);
  sub_1000BFBA0(v74);
  *&v121 = v111;
  *(&v121 + 1) = v75;
  *&v122 = v112;
  *(&v122 + 1) = v76;
  *&v123 = v77;
  *(&v123 + 1) = v78;
  *&v124 = v113;
  *(&v124 + 1) = v79;
  v125 = v80;
  return sub_10000F938(&v121, &qword_100127DB0, &qword_1000ECEE0);
}

uint64_t sub_1000BF5C8(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_1000D258C();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000D25AC();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D25CC();
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D214C();
  __chkstk_darwin(v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006334(&qword_100122E90, &qword_1000E3E80);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_1000D19FC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = type metadata accessor for TVWidgetMetadataView(0);
  sub_10000F8D0(v2 + *(v20 + 24), v12, &qword_100122E90, &qword_1000E3E80);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F938(v12, &qword_100122E90, &qword_1000E3E80);
LABEL_5:
    v40 = v38;
    v41 = v39;
    sub_10000F320();

    return sub_1000D260C();
  }

  (*(v14 + 32))(v19, v12, v13);
  if (*(v2 + *(v20 + 28) + 56) == 1)
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_5;
  }

  sub_1000D213C();
  v42._countAndFlagsBits = 0x2073657269707845;
  v42._object = 0xEB00000000206E69;
  sub_1000D212C(v42);
  (*(v14 + 16))(v17, v19, v13);
  (*(v36 + 104))(v34, enum case for Text.DateStyle.UnitsConfiguration.Style.full(_:), v37);
  v22 = v30;
  sub_1000D259C();
  sub_1000D25BC();
  (*(v33 + 8))(v22, v35);
  v23 = sub_1000D25DC();
  v25 = v24;
  v27 = v26;
  sub_1000D211C();
  sub_10000F374(v23, v25, v27 & 1);

  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1000D212C(v43);
  sub_1000D216C();
  v28 = sub_1000D25EC();
  (*(v14 + 8))(v19, v13);
  return v28;
}

uint64_t sub_1000BFADC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000D21CC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100006334(&qword_100127D88, &qword_1000ECEB8);
  return sub_1000BEE1C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000BFB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100127DA0, &qword_1000ECED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BFBA0(uint64_t a1)
{
  v2 = sub_100006334(&qword_100127DA0, &qword_1000ECED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100127D90, &qword_1000ECEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BFCCC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000BFCE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BFCFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BFD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000BFD84(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1000BFDB8()
{
  v1 = sub_1000D35CC();
  v2 = __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  sub_1000727AC(v0, &v22);
  v3 = v22;
  if (!v26)
  {
    sub_1000D35BC();
    v27._countAndFlagsBits = 0xD000000000000013;
    v27._object = 0x80000001000DCDA0;
    sub_1000D35AC(v27);
    v5 = (v3 & 1) == 0;
    if (v3)
    {
      v6._countAndFlagsBits = 0x6E696D6165727473;
    }

    else
    {
      v6._countAndFlagsBits = 0x64616F6C6E776F64;
    }

    if (v3)
    {
      v7 = 0xE900000000000067;
    }

    else
    {
      v7 = 0xE900000000000073;
    }

    if (v3)
    {
      v8 = 0x6E696D6165727453;
    }

    else
    {
      v8 = 0x64616F6C6E776F44;
    }

    if (v5)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE900000000000067;
    }

    v6._object = v7;
    sub_1000D359C(v6);

    v28._countAndFlagsBits = 0xD00000000000001BLL;
    v28._object = 0x80000001000DCDC0;
    sub_1000D35AC(v28);
    v10 = WLKIsRegulatedSKU();
    v11 = v10 == 0;
    if (v10)
    {
      v12._countAndFlagsBits = 0x736F65646956;
    }

    else
    {
      v12._countAndFlagsBits = 22100;
    }

    if (v11)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v12._object = v13;
    sub_1000D359C(v12);

    v29._object = 0x80000001000DCDE0;
    v29._countAndFlagsBits = 0x1000000000000023;
    sub_1000D35AC(v29);
    v14 = WLKIsRegulatedSKU();
    v15 = v14 == 0;
    if (v14)
    {
      v16._countAndFlagsBits = 0x736F65646956;
    }

    else
    {
      v16._countAndFlagsBits = 22100;
    }

    if (v15)
    {
      v17 = 0xE200000000000000;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    v16._object = v17;
    sub_1000D359C(v16);

    v30._countAndFlagsBits = 0x209286E220;
    v30._object = 0xA500000000000000;
    sub_1000D35AC(v30);
    v31._countAndFlagsBits = v8;
    v31._object = v9;
    sub_1000D359C(v31);

    v32._countAndFlagsBits = 0x100000000000002DLL;
    v32._object = 0x80000001000DCE10;
    sub_1000D35AC(v32);
    return sub_1000D18AC();
  }

  if (v26 == 1)
  {
    sub_1000D188C();
    return sub_10007CAB8(&v22);
  }

  if (v24 | v25 | v22 | v23 && v22 == 1 && !(v24 | v25 | v23))
  {
    sub_1000D35BC();
    v33._object = 0x80000001000DCFB0;
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000D35AC(v33);
    v18 = WLKIsRegulatedSKU();
    v19 = v18 == 0;
    if (v18)
    {
      v20._countAndFlagsBits = 0x736F65646956;
    }

    else
    {
      v20._countAndFlagsBits = 22100;
    }

    if (v19)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v20._object = v21;
    sub_1000D359C(v20);

    v34._object = 0x80000001000DCFD0;
    v34._countAndFlagsBits = 0xD00000000000001CLL;
    sub_1000D35AC(v34);
    return sub_1000D18AC();
  }

  return sub_1000D188C();
}

__n128 sub_1000C019C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C01C0(uint64_t a1, int a2)
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

uint64_t sub_1000C0208(uint64_t result, int a2, int a3)
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

BOOL sub_1000C026C()
{
  v1 = (v0 + *(type metadata accessor for SportsWatchWidgetView(0) + 20));
  v2 = v1[9];
  v3 = v1[11];
  if (v3)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v1[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!(v4 | v2))
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v6 = v1[24];
  v7 = v1[26];
  if (!v7)
  {
    return v6 != 0;
  }

  v8 = v1[25] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  return v8 || v6 != 0;
}

uint64_t sub_1000C0300@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_100006334(&qword_100127E60, &qword_1000ED2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_100006334(&qword_100127E68, &qword_1000ED2B8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100006334(&qword_100127E70, &qword_1000ED2C0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  sub_1000C0754(v1);
  sub_1000D2B5C();
  sub_1000D1E2C();
  sub_10000F998(v4, v8, &qword_100127E60, &qword_1000ED2B0);
  v13 = &v8[*(v6 + 44)];
  v14 = v69;
  *(v13 + 4) = v68;
  *(v13 + 5) = v14;
  *(v13 + 6) = v70;
  v15 = v65;
  *v13 = v64;
  *(v13 + 1) = v15;
  v16 = v67;
  *(v13 + 2) = v66;
  *(v13 + 3) = v16;
  v17 = sub_1000D2B5C();
  v19 = v18;
  v20 = sub_1000D2B5C();
  v22 = v21;
  sub_1000C0CF4(&v56);
  v45 = v58;
  v46 = v59;
  v43 = v56;
  v44 = v57;
  v48[2] = v58;
  v48[3] = v59;
  v48[4] = v60;
  v48[1] = v57;
  v47 = v60;
  v48[0] = v56;
  sub_10000F8D0(&v43, &v49, &qword_100127E78, &qword_1000ED2C8);
  sub_10000F938(v48, &qword_100127E78, &qword_1000ED2C8);
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v38 = v43;
  v39 = v44;
  *&v49 = v20;
  *(&v49 + 1) = v22;
  v54 = v47;
  v53 = v46;
  v52 = v45;
  v51 = v44;
  v50 = v43;
  *&v55 = v17;
  *(&v55 + 1) = v19;
  sub_10000F998(v8, v12, &qword_100127E68, &qword_1000ED2B8);
  v23 = &v12[*(v10 + 44)];
  v24 = v54;
  *(v23 + 4) = v53;
  *(v23 + 5) = v24;
  *(v23 + 6) = v55;
  v25 = v50;
  *v23 = v49;
  *(v23 + 1) = v25;
  v26 = v52;
  *(v23 + 2) = v51;
  *(v23 + 3) = v26;
  *&v56 = v20;
  *(&v56 + 1) = v22;
  v61 = v42;
  v60 = v41;
  v59 = v40;
  v57 = v38;
  v58 = v39;
  v62 = v17;
  v63 = v19;
  sub_10000F8D0(&v49, &v37, &qword_100127E80, &qword_1000ED2D0);
  sub_10000F938(&v56, &qword_100127E80, &qword_1000ED2D0);
  KeyPath = swift_getKeyPath();
  v28 = sub_100006334(&qword_100127E88, &unk_1000ED308);
  v29 = v36;
  v30 = (v36 + *(v28 + 36));
  v31 = *(sub_100006334(&qword_100125958, &unk_1000EB320) + 28);
  v32 = enum case for ColorScheme.dark(_:);
  v33 = sub_1000D1BBC();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  return sub_10000F998(v12, v29, &qword_100127E70, &qword_1000ED2C0);
}

uint64_t sub_1000C0754(uint64_t a1)
{
  v2 = sub_100006334(&qword_100127E98, &qword_1000ED320);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_100006334(&qword_100127EA0, &qword_1000ED328);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100006334(&qword_100127EA8, &qword_1000ED330);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = a1 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  if (*(v11 + *(type metadata accessor for SportsWatchWidgetViewModel(0) + 56)) == 1)
  {
    v12 = *(a1 + 8);
    *v10 = sub_1000D21BC();
    *(v10 + 1) = v12;
    v10[16] = 0;
    v13 = sub_100006334(&qword_100127EF0, &qword_1000ED350);
    sub_1000C1DF0(a1, &v10[*(v13 + 44)]);
    sub_10000F8D0(v10, v7, &qword_100127EA8, &qword_1000ED330);
    swift_storeEnumTagMultiPayload();
    sub_10000FC38(&qword_100127EB0, &qword_100127EA8, &qword_1000ED330, &protocol conformance descriptor for VStack<A>);
    sub_1000C5CA8();
    sub_1000D229C();
    v14 = v10;
    v15 = &qword_100127EA8;
    v16 = &qword_1000ED330;
  }

  else
  {
    sub_1000C0A24(v4);
    sub_10000F8D0(v4, v7, &qword_100127E98, &qword_1000ED320);
    swift_storeEnumTagMultiPayload();
    sub_10000FC38(&qword_100127EB0, &qword_100127EA8, &qword_1000ED330, &protocol conformance descriptor for VStack<A>);
    sub_1000C5CA8();
    sub_1000D229C();
    v14 = v4;
    v15 = &qword_100127E98;
    v16 = &qword_1000ED320;
  }

  return sub_10000F938(v14, v15, v16);
}

uint64_t sub_1000C0A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = sub_1000D22FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006334(&qword_100127EC0, &qword_1000ED338);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_100006334(&qword_100127F78, &qword_1000ED530);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - v12;
  v14 = *(v2 + 144);
  *v9 = v14;
  *(v9 + 8) = xmmword_1000ED150;
  *(v9 + 3) = v14 + 29.0;
  sub_1000C0EC4(v2, &v9[*(v7 + 44)]);
  sub_1000D22DC();
  v15 = sub_1000C5DA0();
  sub_1000D276C();
  (*(v4 + 8))(v6, v3);
  sub_10000F938(v9, &qword_100127EC0, &qword_1000ED338);
  v16 = v2 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  v17 = (v16 + *(type metadata accessor for SportsWatchWidgetViewModel(0) + 60));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v22[4] = v19;
  v22[5] = v20;

  v22[2] = v7;
  v22[3] = v15;
  swift_getOpaqueTypeConformance2();
  sub_10000F320();
  sub_1000D273C();

  return (*(v11 + 8))(v13, v10);
}

double sub_1000C0CF4@<D0>(uint64_t a2@<X8>)
{
  sub_100006334(&qword_100127E90, &qword_1000ED318);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E2080;
  type metadata accessor for SportsWatchWidgetView(0);

  *(v3 + 32) = sub_1000D2ADC();
  *(v3 + 40) = v4;

  *(v3 + 48) = sub_1000D2ADC();
  *(v3 + 56) = v5;
  sub_1000D2AEC();
  sub_1000D2BCC();
  sub_1000D2BDC();
  sub_1000D1D7C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E2080;
  sub_1000D282C();
  sub_1000D285C();

  *(v6 + 32) = sub_1000D2ADC();
  *(v6 + 40) = v7;
  sub_1000D282C();
  sub_1000D285C();

  *(v6 + 48) = sub_1000D2ADC();
  *(v6 + 56) = v8;
  sub_1000D2AEC();
  sub_1000D2BEC();
  sub_1000D2BFC();
  sub_1000D1D7C();
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 24) = v12;
  *(a2 + 40) = v13;
  result = *&v14;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  return result;
}

uint64_t sub_1000C0EC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100006334(&qword_100127F30, &qword_1000ED450);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v39[-v7];
  v9 = a1 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  v10 = *(v9 + 5);
  v50[4] = *(v9 + 4);
  v50[5] = v10;
  v50[6] = *(v9 + 6);
  v51 = v9[112];
  v11 = *(v9 + 3);
  v50[2] = *(v9 + 2);
  v50[3] = v11;
  v12 = *(v9 + 1);
  v50[0] = *v9;
  v50[1] = v12;
  v13 = a1[16];
  v42 = a1[17];
  v43 = v13;
  LOBYTE(v82) = 0;
  sub_1000C4268(a1, v50, &v99);
  v62 = v100[9];
  v63[0] = v100[10];
  *(v63 + 9) = *(&v100[10] + 9);
  v58 = v100[5];
  v59 = v100[6];
  v60 = v100[7];
  v61 = v100[8];
  v54 = v100[1];
  v55 = v100[2];
  v56 = v100[3];
  v57 = v100[4];
  v52 = v99;
  v53 = v100[0];
  v64[10] = v100[9];
  v65[0] = v100[10];
  *(v65 + 9) = *(&v100[10] + 9);
  v64[5] = v100[4];
  v64[6] = v100[5];
  v64[7] = v100[6];
  v64[9] = v100[8];
  v64[8] = v100[7];
  v64[2] = v100[1];
  v64[3] = v100[2];
  v64[4] = v100[3];
  v64[0] = v99;
  v64[1] = v100[0];
  sub_10000F8D0(&v52, v84, &qword_100127F80, &qword_1000ED538);
  sub_10000F938(v64, &qword_100127F80, &qword_1000ED538);
  *(&v47[9] + 7) = v61;
  *(&v47[10] + 7) = v62;
  *(&v47[11] + 7) = v63[0];
  v47[12] = *(v63 + 9);
  *(&v47[5] + 7) = v57;
  *(&v47[6] + 7) = v58;
  *(&v47[7] + 7) = v59;
  *(&v47[8] + 7) = v60;
  *(&v47[1] + 7) = v53;
  *(&v47[2] + 7) = v54;
  *(&v47[3] + 7) = v55;
  *(&v47[4] + 7) = v56;
  *(v47 + 7) = v52;
  v45 = v82;
  v41 = v8;
  sub_1000C15B4(0, v8);
  v14 = *(v9 + 200);
  v48[4] = *(v9 + 184);
  v48[5] = v14;
  v48[6] = *(v9 + 216);
  v49 = v9[232];
  v15 = *(v9 + 136);
  v48[0] = *(v9 + 120);
  v48[1] = v15;
  v16 = *(v9 + 168);
  v48[2] = *(v9 + 152);
  v48[3] = v16;
  LOBYTE(v82) = 0;
  sub_1000C4268(a1, v48, &v99);
  v76 = v100[9];
  v77[0] = v100[10];
  *(v77 + 9) = *(&v100[10] + 9);
  v72 = v100[5];
  v73 = v100[6];
  v75 = v100[8];
  v74 = v100[7];
  v68 = v100[1];
  v69 = v100[2];
  v71 = v100[4];
  v70 = v100[3];
  v67 = v100[0];
  v66 = v99;
  v78[10] = v100[9];
  v79[0] = v100[10];
  *(v79 + 9) = *(&v100[10] + 9);
  v78[6] = v100[5];
  v78[7] = v100[6];
  v78[9] = v100[8];
  v78[8] = v100[7];
  v78[2] = v100[1];
  v78[3] = v100[2];
  v78[5] = v100[4];
  v78[4] = v100[3];
  v78[1] = v100[0];
  v78[0] = v99;
  sub_10000F8D0(&v66, v84, &qword_100127F80, &qword_1000ED538);
  sub_10000F938(v78, &qword_100127F80, &qword_1000ED538);
  *(&v46[9] + 7) = v75;
  *(&v46[10] + 7) = v76;
  *(&v46[11] + 7) = v77[0];
  v46[12] = *(v77 + 9);
  *(&v46[5] + 7) = v71;
  *(&v46[6] + 7) = v72;
  *(&v46[7] + 7) = v73;
  *(&v46[8] + 7) = v74;
  *(&v46[1] + 7) = v67;
  *(&v46[2] + 7) = v68;
  *(&v46[3] + 7) = v69;
  *(&v46[4] + 7) = v70;
  *(v46 + 7) = v66;
  v40 = v82;
  v17 = v44;
  sub_10000F8D0(v8, v44, &qword_100127F30, &qword_1000ED450);
  *&v81[145] = v47[9];
  *&v81[161] = v47[10];
  *&v81[177] = v47[11];
  *&v81[193] = v47[12];
  *&v81[81] = v47[5];
  *&v81[97] = v47[6];
  *&v81[113] = v47[7];
  *&v81[129] = v47[8];
  *&v81[17] = v47[1];
  *&v81[33] = v47[2];
  *&v81[49] = v47[3];
  v19 = v42;
  v18 = v43;
  *&v80 = v43;
  *(&v80 + 1) = v42;
  v81[0] = v45;
  *&v81[65] = v47[4];
  *&v81[1] = v47[0];
  v20 = *&v81[192];
  *(a2 + 192) = *&v81[176];
  *(a2 + 208) = v20;
  *(a2 + 224) = v81[208];
  v21 = *&v81[128];
  *(a2 + 128) = *&v81[112];
  *(a2 + 144) = v21;
  v22 = *&v81[160];
  *(a2 + 160) = *&v81[144];
  *(a2 + 176) = v22;
  v23 = *&v81[64];
  *(a2 + 64) = *&v81[48];
  *(a2 + 80) = v23;
  v24 = *&v81[96];
  *(a2 + 96) = *&v81[80];
  *(a2 + 112) = v24;
  v25 = *v81;
  *a2 = v80;
  *(a2 + 16) = v25;
  v26 = *&v81[32];
  *(a2 + 32) = *&v81[16];
  *(a2 + 48) = v26;
  v27 = sub_100006334(&qword_100127F88, &qword_1000ED540);
  sub_10000F8D0(v17, a2 + *(v27 + 48), &qword_100127F30, &qword_1000ED450);
  v28 = *(v27 + 64);
  *&v83[145] = v46[9];
  *&v83[161] = v46[10];
  *&v83[177] = v46[11];
  *&v83[193] = v46[12];
  *&v83[81] = v46[5];
  *&v83[97] = v46[6];
  *&v83[113] = v46[7];
  *&v83[129] = v46[8];
  *&v83[33] = v46[2];
  v29 = a2 + v28;
  *&v82 = v18;
  *(&v82 + 1) = v19;
  v30 = v40;
  v83[0] = v40;
  *&v83[49] = v46[3];
  *&v83[65] = v46[4];
  *&v83[17] = v46[1];
  *&v83[1] = v46[0];
  v31 = *&v83[192];
  *(v29 + 192) = *&v83[176];
  *(v29 + 208) = v31;
  *(v29 + 224) = v83[208];
  v32 = *&v83[128];
  *(v29 + 128) = *&v83[112];
  *(v29 + 144) = v32;
  v33 = *&v83[160];
  *(v29 + 160) = *&v83[144];
  *(v29 + 176) = v33;
  v34 = *&v83[64];
  *(v29 + 64) = *&v83[48];
  *(v29 + 80) = v34;
  v35 = *&v83[96];
  *(v29 + 96) = *&v83[80];
  *(v29 + 112) = v35;
  v36 = *v83;
  *v29 = v82;
  *(v29 + 16) = v36;
  v37 = *&v83[32];
  *(v29 + 32) = *&v83[16];
  *(v29 + 48) = v37;
  sub_10000F8D0(&v80, &v99, &qword_100127F90, &qword_1000ED548);
  sub_10000F8D0(&v82, &v99, &qword_100127F90, &qword_1000ED548);
  sub_10000F938(v41, &qword_100127F30, &qword_1000ED450);
  v95 = v46[9];
  v96 = v46[10];
  v97 = v46[11];
  v98 = v46[12];
  v91 = v46[5];
  v92 = v46[6];
  v93 = v46[7];
  v94 = v46[8];
  v87 = v46[1];
  v88 = v46[2];
  v89 = v46[3];
  v90 = v46[4];
  v84[0] = v18;
  v84[1] = v19;
  v85 = v30;
  v86 = v46[0];
  sub_10000F938(v84, &qword_100127F90, &qword_1000ED548);
  sub_10000F938(v44, &qword_100127F30, &qword_1000ED450);
  *(&v100[9] + 1) = v47[9];
  *(&v100[10] + 1) = v47[10];
  *(&v100[11] + 1) = v47[11];
  *(&v100[12] + 1) = v47[12];
  *(&v100[5] + 1) = v47[5];
  *(&v100[6] + 1) = v47[6];
  *(&v100[7] + 1) = v47[7];
  *(&v100[8] + 1) = v47[8];
  *(&v100[1] + 1) = v47[1];
  *(&v100[2] + 1) = v47[2];
  *(&v100[3] + 1) = v47[3];
  *(&v100[4] + 1) = v47[4];
  *&v99 = v18;
  *(&v99 + 1) = v19;
  LOBYTE(v100[0]) = v45;
  *(v100 + 1) = v47[0];
  return sub_10000F938(&v99, &qword_100127F90, &qword_1000ED548);
}

uint64_t sub_1000C15B4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v46) = a1;
  v48 = a2;
  v3 = type metadata accessor for SportsWidgetClockView(0);
  __chkstk_darwin(v3);
  v47 = (v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100006334(&qword_100127F68, &unk_1000ED4D0);
  __chkstk_darwin(v5);
  v7 = v45 - v6;
  v8 = sub_100006334(&qword_100122538, &unk_1000DEFE0);
  __chkstk_darwin(v8);
  v10 = v45 - v9;
  v11 = sub_100006334(&qword_100122540, &qword_1000ED4E0);
  __chkstk_darwin(v11);
  v13 = v45 - v12;
  v14 = v2 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  v15 = type metadata accessor for SportsWatchWidgetViewModel(0);
  if (*(v14 + v15[13]) == 1)
  {
    sub_10002F270(&v63);
    *(v74 + 7) = v63;
    *(&v74[1] + 7) = v64;
    *(&v74[2] + 7) = v65;
    *(&v74[5] + 7) = v68;
    *(&v74[4] + 7) = v67;
    *(&v74[3] + 7) = v66;
    *v10 = 1;
    v16 = v74[3];
    *(v10 + 33) = v74[2];
    v17 = v74[0];
    *(v10 + 17) = v74[1];
    *(v10 + 1) = v17;
    v18 = v74[4];
    v19 = v74[5];
    *(v10 + 12) = *(&v74[5] + 15);
    *(v10 + 81) = v19;
    *(v10 + 65) = v18;
    *(v10 + 49) = v16;
    swift_storeEnumTagMultiPayload();
    sub_10000F5C0(&v63, &v50);
    sub_10000F204();
    sub_1000C6768(&qword_100122488, type metadata accessor for SportsWidgetClockView, &unk_1000E40E8);
    sub_1000D229C();
    sub_10000F8D0(v13, v7, &qword_100122540, &qword_1000ED4E0);
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_100123820, &qword_1000E24A0);
    sub_10000F504();
    sub_10000FC38(&qword_100123838, &qword_100123820, &qword_1000E24A0, &protocol conformance descriptor for VStack<A>);
    v20 = v48;
    sub_1000D229C();
    sub_10000F61C(&v63);
    sub_10000F938(v13, &qword_100122540, &qword_1000ED4E0);
LABEL_5:
    v29 = sub_100006334(&qword_100127F70, &qword_1000ED4E8);
    return (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
  }

  v45[1] = v5;
  v45[2] = v11;
  if (*(v14 + v15[9]) == 1)
  {
    v21 = v47;
    sub_1000C5F10(v14 + v15[6], v47 + *(v3 + 20), type metadata accessor for SportsWidgetClock);
    v22 = sub_1000C4FC0(v46 & 1);
    v24 = v23;
    v26 = v25;
    v46 = v27;
    *v21 = swift_getKeyPath();
    sub_100006334(&qword_100122410, &qword_1000E3070);
    swift_storeEnumTagMultiPayload();
    v28 = v21 + *(v3 + 24);
    *v28 = v22;
    *(v28 + 1) = v24;
    *(v28 + 2) = v26;
    *(v28 + 3) = v46;
    sub_1000C5F10(v21, v10, type metadata accessor for SportsWidgetClockView);
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_1000C6768(&qword_100122488, type metadata accessor for SportsWidgetClockView, &unk_1000E40E8);
    sub_1000D229C();
    sub_10000F8D0(v13, v7, &qword_100122540, &qword_1000ED4E0);
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_100123820, &qword_1000E24A0);
    sub_10000F504();
    sub_10000FC38(&qword_100123838, &qword_100123820, &qword_1000E24A0, &protocol conformance descriptor for VStack<A>);
    v20 = v48;
    sub_1000D229C();
    sub_10000F938(v13, &qword_100122540, &qword_1000ED4E0);
    sub_1000C5F78(v21);
    goto LABEL_5;
  }

  if (*(v14 + v15[10]) == 1)
  {
    v31 = v7;
    v32 = sub_1000D21BC();
    v62 = 1;
    sub_1000C3E84(v2, &v50);
    v71 = v58;
    v72 = v59;
    v73 = v60;
    v67 = v54;
    v68 = v55;
    v69 = v56;
    v70 = v57;
    v63 = v50;
    v64 = v51;
    v65 = v52;
    v66 = v53;
    v74[8] = v58;
    v74[9] = v59;
    v74[10] = v60;
    v74[4] = v54;
    v74[5] = v55;
    v74[6] = v56;
    v74[7] = v57;
    v74[0] = v50;
    v74[1] = v51;
    v74[2] = v52;
    v74[3] = v53;
    sub_10000F8D0(&v63, &v49, &qword_100123818, &unk_1000ED4F0);
    sub_10000F938(v74, &qword_100123818, &unk_1000ED4F0);
    *&v61[119] = v70;
    *&v61[135] = v71;
    *&v61[151] = v72;
    *&v61[167] = v73;
    *&v61[55] = v66;
    *&v61[71] = v67;
    *&v61[87] = v68;
    *&v61[103] = v69;
    *&v61[7] = v63;
    *&v61[23] = v64;
    *&v61[39] = v65;
    v33 = *&v61[144];
    *(v31 + 145) = *&v61[128];
    *(v31 + 161) = v33;
    *(v31 + 177) = *&v61[160];
    v34 = *&v61[80];
    *(v31 + 81) = *&v61[64];
    *(v31 + 97) = v34;
    v35 = *&v61[112];
    *(v31 + 113) = *&v61[96];
    *(v31 + 129) = v35;
    v36 = *&v61[16];
    *(v31 + 17) = *v61;
    *(v31 + 33) = v36;
    v37 = *&v61[48];
    *(v31 + 49) = *&v61[32];
    v38 = v62;
    *v31 = v32;
    *(v31 + 1) = 0;
    v31[16] = v38;
    *(v31 + 24) = *&v61[175];
    *(v31 + 65) = v37;
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_100123820, &qword_1000E24A0);
    sub_10000F504();
    sub_10000FC38(&qword_100123838, &qword_100123820, &qword_1000E24A0, &protocol conformance descriptor for VStack<A>);
    v39 = v48;
    sub_1000D229C();
    v40 = sub_100006334(&qword_100127F70, &qword_1000ED4E8);
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  else
  {
    v41 = sub_100006334(&qword_100127F70, &qword_1000ED4E8);
    v42 = *(*(v41 - 8) + 56);
    v43 = v41;
    v44 = v48;

    return v42(v44, 1, 1, v43);
  }
}

uint64_t sub_1000C1DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v72 = sub_1000D22FC();
  v3 = *(v72 - 8);
  __chkstk_darwin(v72);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100127EF8, &qword_1000ED358);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_100006334(&qword_100127F00, &qword_1000ED360);
  v10 = *(v9 - 8);
  v73 = v9;
  v74 = v10;
  __chkstk_darwin(v9);
  v12 = &v61 - v11;
  v13 = sub_100006334(&qword_100127F08, &qword_1000ED368);
  v14 = __chkstk_darwin(v13 - 8);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v61 - v16;
  v17 = *(a1 + 16);
  *v8 = sub_1000D210C();
  *(v8 + 1) = v17;
  v8[16] = 0;
  sub_100006334(&qword_100127F10, &qword_1000ED370);
  sub_1000C2584(a1);
  sub_1000D22DC();
  v18 = sub_10000FC38(&qword_100127F18, &qword_100127EF8, &qword_1000ED358, &protocol conformance descriptor for HStack<A>);
  sub_1000D276C();
  (*(v3 + 8))(v5, v72);
  sub_10000F938(v8, &qword_100127EF8, &qword_1000ED358);
  v19 = a1 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  v20 = type metadata accessor for SportsWatchWidgetViewModel(0);
  v21 = (v19 + *(v20 + 60));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v78 = v23;
  v79 = v24;

  *v77 = v6;
  *&v77[8] = v18;
  swift_getOpaqueTypeConformance2();
  sub_10000F320();
  v25 = v73;
  sub_1000D273C();

  (*(v74 + 8))(v12, v25);
  v26 = (v19 + *(v20 + 32));
  v27 = v26[1];
  v78 = *v26;
  v79 = v27;

  v28 = sub_1000D260C();
  v68 = v29;
  v69 = v28;
  v31 = v30;
  v74 = v32;
  sub_1000D1E2C();
  v63 = v31 & 1;
  v114 = v31 & 1;
  v33 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v35 = *(a1 + 32);
  v36 = swift_getKeyPath();
  v65 = *(a1 + 48);
  v64 = swift_getKeyPath();
  v115 = 0;
  sub_100006334(&qword_100124980, &qword_1000E44E0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000E2080;
  v67 = v33;

  v66 = v35;

  v38 = sub_1000D238C();
  *(v37 + 32) = v38;
  v39 = sub_1000D23AC();
  *(v37 + 33) = v39;
  v40 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v38)
  {
    v40 = sub_1000D239C();
  }

  sub_1000D239C();
  if (sub_1000D239C() == v39)
  {
    LODWORD(v73) = v40;
  }

  else
  {
    LODWORD(v73) = sub_1000D239C();
  }

  sub_1000D1B9C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v116 = 0;
  LODWORD(v72) = *(a1 + 56);
  v71 = swift_getKeyPath();
  v49 = v75;
  sub_10000F8D0(v76, v75, &qword_100127F08, &qword_1000ED368);
  v50 = v49;
  v51 = v70;
  sub_10000F8D0(v50, v70, &qword_100127F08, &qword_1000ED368);
  v52 = *(sub_100006334(&qword_100127F20, &qword_1000ED440) + 48);
  v53 = v68;
  v54 = v69;
  *v77 = v69;
  *&v77[8] = v68;
  v55 = v63;
  v77[16] = v63;
  *&v77[17] = v119[0];
  *&v77[20] = *(v119 + 3);
  *&v77[24] = v74;
  *&v77[96] = v111;
  *&v77[112] = v112;
  *&v77[128] = v113;
  *&v77[64] = v109;
  *&v77[80] = v110;
  *&v77[32] = v107;
  *&v77[48] = v108;
  *&v77[144] = KeyPath;
  v61 = v36;
  v62 = KeyPath;
  v56 = v67;
  *&v77[152] = v67;
  *&v77[160] = v36;
  v57 = v65;
  v58 = v66;
  v59 = v64;
  *&v77[168] = v66;
  *&v77[176] = v64;
  *&v77[184] = v65;
  v77[192] = 0;
  *&v77[193] = *v118;
  *&v77[196] = *&v118[3];
  v77[200] = v73;
  *&v77[201] = *v117;
  *&v77[204] = *&v117[3];
  *&v77[208] = v42;
  *&v77[216] = v44;
  *&v77[224] = v46;
  *&v77[232] = v48;
  v77[240] = 0;
  *&v77[248] = v71;
  v77[256] = v72;
  memcpy((v51 + v52), v77, 0x101uLL);
  sub_10000F8D0(v77, &v78, &qword_100127F28, &qword_1000ED448);
  sub_10000F938(v76, &qword_100127F08, &qword_1000ED368);
  v78 = v54;
  v79 = v53;
  v80 = v55;
  *v81 = v119[0];
  *&v81[3] = *(v119 + 3);
  v87 = v111;
  v88 = v112;
  v89 = v113;
  v83 = v107;
  v84 = v108;
  v85 = v109;
  v86 = v110;
  v82 = v74;
  v90 = v62;
  v91 = v56;
  v92 = v61;
  v93 = v58;
  v94 = v59;
  v95 = v57;
  v96 = 0;
  *v97 = *v118;
  *&v97[3] = *&v118[3];
  v98 = v73;
  *v99 = *v117;
  *&v99[3] = *&v117[3];
  v100 = v42;
  v101 = v44;
  v102 = v46;
  v103 = v48;
  v104 = 0;
  v105 = v71;
  v106 = v72;
  sub_10000F938(&v78, &qword_100127F28, &qword_1000ED448);
  return sub_10000F938(v75, &qword_100127F08, &qword_1000ED368);
}

uint64_t sub_1000C2584(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = sub_100006334(&qword_100127F30, &qword_1000ED450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  sub_1000D2B5C();
  sub_1000D1C8C();
  v35 = v72;
  v36 = v70;
  v33 = v75;
  v34 = v74;
  v98 = 1;
  v97 = v71;
  v96 = v73;
  v38 = sub_1000D210C();
  v68 = 0;
  sub_1000C2C98(v1, v54);
  memcpy(v99, v54, 0x119uLL);
  memcpy(v100, v54, 0x119uLL);
  sub_10000F8D0(v99, v44, &qword_100127F38, &qword_1000ED458);
  sub_10000F938(v100, &qword_100127F38, &qword_1000ED458);
  memcpy(&v67[7], v99, 0x119uLL);
  v37 = v68;
  sub_1000D2B5C();
  sub_1000D1E2C();
  *&v69[55] = v79;
  *&v69[71] = v80;
  *&v69[87] = v81;
  *&v69[103] = v82;
  *&v69[7] = v76;
  *&v69[23] = v77;
  *&v69[39] = v78;
  v30 = v9;
  sub_1000C15B4(1, v9);
  v32 = sub_1000D210C();
  v63 = 0;
  sub_1000C3554(v1, v54);
  memcpy(v65, v54, 0x119uLL);
  memcpy(v66, v54, 0x119uLL);
  sub_10000F8D0(v65, v44, &qword_100127F40, &qword_1000ED460);
  sub_10000F938(v66, &qword_100127F40, &qword_1000ED460);
  memcpy(&v62[7], v65, 0x119uLL);
  v31 = v63;
  sub_1000D2B5C();
  sub_1000D1E2C();
  *&v64[55] = v86;
  *&v64[71] = v87;
  *&v64[87] = v88;
  *&v64[103] = v89;
  *&v64[7] = v83;
  *&v64[23] = v84;
  *&v64[39] = v85;
  sub_1000D2B5C();
  sub_1000D1C8C();
  v28 = v92;
  v29 = v90;
  v26 = v95;
  v27 = v94;
  v41 = 1;
  v40 = v91;
  v39 = v93;
  v10 = v98;
  v11 = v97;
  v12 = v96;
  v13 = v7;
  v25 = v7;
  sub_10000F8D0(v9, v7, &qword_100127F30, &qword_1000ED450);
  LOBYTE(v7) = v41;
  LOBYTE(v1) = v40;
  v24 = v39;
  *v3 = 0;
  *(v3 + 8) = v10;
  v14 = v35;
  *(v3 + 16) = v36;
  *(v3 + 24) = v11;
  *(v3 + 32) = v14;
  *(v3 + 40) = v12;
  v15 = v33;
  *(v3 + 48) = v34;
  *(v3 + 56) = v15;
  v42[0] = v38;
  v42[1] = 0;
  LOBYTE(v42[2]) = v37;
  memcpy(&v42[2] + 1, v67, 0x120uLL);
  *(&v42[46] + 1) = *&v69[64];
  *(&v42[48] + 1) = *&v69[80];
  *(&v42[50] + 1) = *&v69[96];
  *(&v42[38] + 1) = *v69;
  *(&v42[40] + 1) = *&v69[16];
  *(&v42[42] + 1) = *&v69[32];
  *(&v42[44] + 1) = *&v69[48];
  v42[52] = *&v69[111];
  memcpy((v3 + 64), v42, 0x1A8uLL);
  v16 = sub_100006334(&qword_100127F48, &qword_1000ED468);
  sub_10000F8D0(v13, v3 + v16[16], &qword_100127F30, &qword_1000ED450);
  v17 = v16[20];
  v18 = v32;
  v43[0] = v32;
  v43[1] = 0;
  LOBYTE(v13) = v31;
  LOBYTE(v43[2]) = v31;
  memcpy(&v43[2] + 1, v62, 0x120uLL);
  *(&v43[46] + 1) = *&v64[64];
  *(&v43[48] + 1) = *&v64[80];
  *(&v43[50] + 1) = *&v64[96];
  *(&v43[38] + 1) = *v64;
  *(&v43[40] + 1) = *&v64[16];
  *(&v43[42] + 1) = *&v64[32];
  *(&v43[44] + 1) = *&v64[48];
  v43[52] = *&v64[111];
  memcpy((v3 + v17), v43, 0x1A8uLL);
  v19 = v3 + v16[24];
  *v19 = 0;
  *(v19 + 8) = v7;
  v20 = v28;
  *(v19 + 16) = v29;
  *(v19 + 24) = v1;
  *(v19 + 32) = v20;
  *(v19 + 40) = v24;
  v21 = v26;
  *(v19 + 48) = v27;
  *(v19 + 56) = v21;
  sub_10000F8D0(v42, v54, &qword_100127F50, &qword_1000ED470);
  sub_10000F8D0(v43, v54, &qword_100127F58, &qword_1000ED478);
  sub_10000F938(v30, &qword_100127F30, &qword_1000ED450);
  v44[0] = v18;
  v44[1] = 0;
  v45 = v13;
  memcpy(v46, v62, sizeof(v46));
  v51 = *&v64[64];
  v52 = *&v64[80];
  *v53 = *&v64[96];
  v47 = *v64;
  v48 = *&v64[16];
  v49 = *&v64[32];
  v50 = *&v64[48];
  *&v53[15] = *&v64[111];
  sub_10000F938(v44, &qword_100127F58, &qword_1000ED478);
  sub_10000F938(v25, &qword_100127F30, &qword_1000ED450);
  *v54 = v38;
  *&v54[8] = 0;
  v54[16] = v37;
  memcpy(&v54[17], v67, 0x120uLL);
  v59 = *&v69[64];
  v60 = *&v69[80];
  *v61 = *&v69[96];
  v55 = *v69;
  v56 = *&v69[16];
  v57 = *&v69[32];
  v58 = *&v69[48];
  *&v61[15] = *&v69[111];
  return sub_10000F938(v54, &qword_100127F50, &qword_1000ED470);
}

uint64_t sub_1000C2C98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D23FC();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100126BE0, &qword_1000EAE60);
  __chkstk_darwin(v6 - 8);
  v89 = &v84 - v7;
  if (sub_1000C026C())
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = type metadata accessor for SportsWatchWidgetView(0);
    v11 = a1 + *(v10 + 20);
    v12 = *(v11 + 6);
    v13 = *(v11 + 7);
    v14 = *(v11 + 8);
    v15 = *(v11 + 11);
    LOBYTE(v109[0]) = 0;
    *&v115 = v8;
    *(&v115 + 1) = v9;
    *&v116 = v12;
    *(&v116 + 1) = v13;
    *&v117[0] = v14;
    *(v117 + 8) = *(v11 + 72);
    *(&v117[1] + 1) = v15;
    BYTE8(v119) = 0;

    sub_100006334(&qword_1001225C0, &unk_1000ED4B0);
    sub_10000F670();
    sub_10000F720();
    sub_1000D229C();
  }

  else
  {
    v93 = type metadata accessor for SportsWatchWidgetView(0);
    v16 = a1 + *(v93 + 20);
    v17 = *(v16 + 4);
    v18 = *(v16 + 5);
    v86 = a1[25];
    v19 = type metadata accessor for SportsWatchWidgetViewModel(0);
    v20 = 0;
    LODWORD(v88) = v16[*(v19 + 44)];
    if ((v88 & 1) == 0)
    {
      v20 = a1[27];
    }

    v87 = v20;
    *&v115 = v17;
    *(&v115 + 1) = v18;
    sub_10000F320();

    v21 = sub_1000D260C();
    v23 = v22;
    v25 = v24;
    v94 = a1;
    v26 = sub_1000D254C();
    v28 = v27;
    v30 = v29;
    sub_10000F374(v21, v23, v25 & 1);

    v31 = sub_1000D257C();
    v33 = v32;
    v35 = v34;
    sub_10000F374(v26, v28, v30 & 1);

    v36 = sub_1000D252C();
    v38 = v37;
    LOBYTE(v28) = v39;
    v41 = v40;
    sub_10000F374(v31, v33, v35 & 1);

    v42 = v94[28];
    KeyPath = swift_getKeyPath();
    v44 = *(v94 + 232);
    v45 = swift_getKeyPath();
    LOBYTE(v28) = v28 & 1;
    LOBYTE(v115) = v28;
    LOBYTE(v109[0]) = 0;
    v46 = v94[30];
    v47 = swift_getKeyPath();
    LOBYTE(v109[0]) = 1;
    *&v115 = v36;
    *(&v115 + 1) = v38;
    LOBYTE(v116) = v28;
    *(&v116 + 1) = v41;
    *&v117[0] = KeyPath;
    *(&v117[0] + 1) = v42;
    LOBYTE(v117[1]) = 0;
    *(&v117[1] + 1) = v45;
    LOBYTE(v118) = v44;
    a1 = v94;
    *(&v118 + 1) = v47;
    *&v119 = v46;
    BYTE8(v119) = 1;
    sub_100006334(&qword_1001225C0, &unk_1000ED4B0);
    sub_10000F670();
    sub_10000F720();
    sub_1000D229C();
    v10 = v93;
  }

  sub_1000D2B5C();
  sub_1000D1C8C();
  v48 = v125;
  v49 = v127;
  v93 = v130;
  v94 = v129;
  v124 = 1;
  v123 = v126;
  v122 = v128;
  type metadata accessor for SportsWatchWidgetView(0);
  v50 = (a1 + *(v10 + 20));
  v51 = type metadata accessor for SportsWatchWidgetViewModel(0);
  if (*(v50 + *(v51 + 44)) == 1)
  {
    v52 = v51;
    v87 = v49;
    v88 = v48;
    v53 = v50[2];
    v84 = v50[3];
    v85 = v53;
    v54 = (v50 + *(v51 + 48));
    v55 = v54[1];
    if (v55)
    {
      v56 = &selRef_labelColor;
      if ((*v54 != *v50 || v55 != v50[1]) && (sub_1000D39CC() & 1) == 0)
      {
        v56 = &selRef_tertiaryLabelColor;
      }
    }

    else
    {
      v56 = &selRef_labelColor;
    }

    v86 = v56;
    v65 = sub_1000D242C();
    v66 = v89;
    (*(*(v65 - 8) + 56))(v89, 1, 1, v65);
    sub_1000D245C();
    sub_10000F938(v66, &qword_100126BE0, &qword_1000EAE60);
    v67 = v90;
    sub_1000D23EC();
    sub_1000D241C();

    (*(v91 + 8))(v67, v92);
    sub_1000D244C();
    v68 = sub_1000D247C();

    v69 = [objc_opt_self() *v86];
    v70 = sub_1000D27DC();
    if (*(v50 + *(v52 + 52)) == 1)
    {
      sub_10002F270(&v96);
      *&v95[87] = v100[1];
      *&v95[71] = v100[0];
      *&v95[55] = v99;
      *&v95[39] = v98;
      *&v95[23] = v97;
      *&v95[7] = v96;
      *(&v109[3] + 1) = *&v95[48];
      *(&v109[4] + 1) = *&v95[64];
      *(&v109[5] + 1) = *&v95[80];
      *(v109 + 1) = *v95;
      *(&v109[1] + 1) = *&v95[16];
      LOBYTE(v110) = 0;
      LOBYTE(v109[0]) = 0;
      *&v109[6] = *(&v100[1] + 1);
      *(&v109[2] + 1) = *&v95[32];
      BYTE8(v109[6]) = 0;
    }

    else
    {
      *&v96 = v85;
      *(&v96 + 1) = v84;
      *&v97 = v68;
      *(&v97 + 1) = v70;
      *&v98 = 1;
      BYTE8(v98) = 1;
      v99 = xmmword_1000DED50;
      v109[0] = v96;
      v109[1] = v97;
      v109[2] = v98;
      v109[3] = xmmword_1000DED50;
      LOBYTE(v110) = 1;
      BYTE8(v109[6]) = 1;
      sub_1000C5EAC(&v96, &v115);
    }

    sub_10000F204();
    sub_10000F7F0();
    sub_1000D229C();

    v58 = v115;
    v60 = v116;
    v61 = v117[0];
    v62 = v117[1];
    v63 = v118;
    v64 = v119;
    v57 = v120;
    v59 = v121;
    v49 = v87;
    v48 = v88;
  }

  else
  {
    v57 = 0;
    v58 = 0uLL;
    v59 = -1;
    v60 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
  }

  v104 = v133;
  v105 = v134;
  v106[0] = v135[0];
  *(v106 + 9) = *(v135 + 9);
  v102 = v131;
  v103 = v132;
  v107[0] = v131;
  v107[1] = v132;
  *(v108 + 9) = *(v135 + 9);
  v108[0] = v135[0];
  v107[2] = v133;
  v107[3] = v134;
  v71 = v124;
  v72 = v123;
  v73 = v122;
  v110 = v131;
  v111 = v132;
  *(v114 + 9) = *(v135 + 9);
  v113 = v134;
  v114[0] = v135[0];
  v112 = v133;
  v109[0] = v58;
  v109[1] = v60;
  v109[2] = v61;
  v109[3] = v62;
  v109[4] = v63;
  v109[5] = v64;
  *&v109[6] = v57;
  BYTE8(v109[6]) = v59;
  v101 = 1;
  v74 = v132;
  *a2 = v131;
  *(a2 + 16) = v74;
  v75 = v112;
  v76 = v113;
  v77 = v114[1];
  *(a2 + 64) = v114[0];
  *(a2 + 80) = v77;
  *(a2 + 32) = v75;
  *(a2 + 48) = v76;
  *(a2 + 96) = 0;
  *(a2 + 104) = v71;
  *(a2 + 112) = v48;
  *(a2 + 120) = v72;
  *(a2 + 128) = v49;
  *(a2 + 136) = v73;
  v78 = v93;
  *(a2 + 144) = v94;
  *(a2 + 152) = v78;
  v79 = v109[1];
  *(a2 + 160) = v109[0];
  *(a2 + 176) = v79;
  v80 = v109[2];
  v81 = v109[3];
  *(a2 + 249) = *(&v109[5] + 9);
  v82 = v109[5];
  *(a2 + 224) = v109[4];
  *(a2 + 240) = v82;
  *(a2 + 192) = v80;
  *(a2 + 208) = v81;
  *(a2 + 272) = 0;
  *(a2 + 280) = 1;
  v115 = v58;
  v116 = v60;
  v117[0] = v61;
  v117[1] = v62;
  v118 = v63;
  v119 = v64;
  v120 = v57;
  v121 = v59;
  sub_10000F8D0(v107, &v96, &qword_100123868, &qword_1000E25A0);
  sub_10000F8D0(v109, &v96, &qword_100127F60, &unk_1000ED4C0);
  sub_10000F938(&v115, &qword_100127F60, &unk_1000ED4C0);
  v98 = v104;
  v99 = v105;
  v100[0] = v106[0];
  *(v100 + 9) = *(v106 + 9);
  v96 = v102;
  v97 = v103;
  return sub_10000F938(&v96, &qword_100123868, &qword_1000E25A0);
}

uint64_t sub_1000C3554@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D23FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100126BE0, &qword_1000EAE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = a1 + *(type metadata accessor for SportsWatchWidgetView(0) + 20);
  v12 = type metadata accessor for SportsWatchWidgetViewModel(0);
  LODWORD(v79) = v11[*(v12 + 44)];
  v80 = a1;
  if (v79 == 1)
  {
    v13 = v12;
    v14 = *(v11 + 18);
    *&v86 = *(v11 + 17);
    *&v85 = v14;
    v15 = &v11[*(v12 + 48)];
    v16 = *(v15 + 1);
    if (v16)
    {
      v17 = &selRef_labelColor;
      v18 = *v15 == *(v11 + 15) && v16 == *(v11 + 16);
      if (!v18 && (sub_1000D39CC() & 1) == 0)
      {
        v17 = &selRef_tertiaryLabelColor;
      }
    }

    else
    {
      v17 = &selRef_labelColor;
    }

    v21 = sub_1000D242C();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_1000D245C();
    sub_10000F938(v10, &qword_100126BE0, &qword_1000EAE60);
    sub_1000D23EC();
    sub_1000D241C();

    (*(v5 + 8))(v7, v4);
    sub_1000D244C();
    v22 = sub_1000D247C();

    v23 = [objc_opt_self() *v17];
    v24 = sub_1000D27DC();
    if (v11[*(v13 + 52)] == 1)
    {
      sub_10002F270(&v87);
      *&v92[87] = v91[1];
      *&v92[71] = v91[0];
      *&v92[55] = v90;
      *&v92[39] = v89;
      *&v92[23] = v88;
      *&v92[7] = v87;
      *(&v95[3] + 1) = *&v92[48];
      *(&v95[4] + 1) = *&v92[64];
      *(&v95[5] + 1) = *&v92[80];
      *(v95 + 1) = *v92;
      *(&v95[1] + 1) = *&v92[16];
      LOBYTE(v98[0]) = 0;
      LOBYTE(v95[0]) = 0;
      *&v95[6] = *(&v91[1] + 1);
      *(&v95[2] + 1) = *&v92[32];
      BYTE8(v95[6]) = 0;
    }

    else
    {
      *&v87 = v86;
      *(&v87 + 1) = v85;
      *&v88 = v22;
      *(&v88 + 1) = v24;
      *&v89 = 1;
      BYTE8(v89) = 1;
      v90 = xmmword_1000DED50;
      v95[0] = v87;
      v95[1] = v88;
      v95[2] = v89;
      v95[3] = xmmword_1000DED50;
      LOBYTE(v98[0]) = 1;
      BYTE8(v95[6]) = 1;
      sub_1000C5EAC(&v87, &v100);
    }

    sub_10000F204();
    sub_10000F7F0();
    sub_1000D229C();

    v85 = v101;
    v86 = v100;
    v83 = v102[0];
    v84 = v102[1];
    v81 = v103;
    v82 = v104;
    v19 = v105;
    LODWORD(KeyPath) = v106;
    a1 = v80;
  }

  else
  {
    v19 = 0;
    v85 = 0u;
    v86 = 0u;
    LODWORD(KeyPath) = 255;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
  }

  sub_1000D2B5C();
  sub_1000D1C8C();
  v25 = v110;
  v77 = v114;
  v78 = v112;
  v76 = v115;
  v109 = 1;
  v108 = v111;
  v107 = v113;
  if (sub_1000C026C())
  {
    v26 = a1[20];
    v27 = a1[21];
    v28 = *(v11 + 21);
    v29 = *(v11 + 22);
    v30 = *(v11 + 23);
    v31 = *(v11 + 26);
    LOBYTE(v95[0]) = 0;
    *&v100 = v26;
    *(&v100 + 1) = v27;
    *&v101 = v28;
    *(&v101 + 1) = v29;
    *&v102[0] = v30;
    *(v102 + 8) = *(v11 + 12);
    *(&v102[1] + 1) = v31;
    BYTE8(v104) = 0;

    sub_100006334(&qword_1001225C0, &unk_1000ED4B0);
    sub_10000F670();
    sub_10000F720();
    sub_1000D229C();
  }

  else
  {
    v74 = KeyPath;
    v32 = *(v11 + 19);
    v33 = *(v11 + 20);
    v71 = a1[25];
    v75 = v19;
    v73 = v25;
    if (v79)
    {
      v72 = 0;
    }

    else
    {
      v72 = a1[27];
    }

    *&v100 = v32;
    *(&v100 + 1) = v33;
    sub_10000F320();

    v34 = sub_1000D260C();
    v36 = v35;
    v38 = v37;
    v39 = sub_1000D254C();
    v41 = v40;
    v43 = v42;
    sub_10000F374(v34, v36, v38 & 1);

    v44 = sub_1000D257C();
    v46 = v45;
    v48 = v47;
    sub_10000F374(v39, v41, v43 & 1);

    v79 = sub_1000D252C();
    v50 = v49;
    LOBYTE(v41) = v51;
    v53 = v52;
    sub_10000F374(v44, v46, v48 & 1);

    v54 = v80;
    v55 = v80[28];
    KeyPath = swift_getKeyPath();
    v56 = *(v54 + 232);
    v57 = swift_getKeyPath();
    LOBYTE(v41) = v41 & 1;
    LOBYTE(v100) = v41;
    LOBYTE(v95[0]) = 0;
    v58 = v54[30];
    v59 = swift_getKeyPath();
    LOBYTE(v95[0]) = 1;
    *&v100 = v79;
    *(&v100 + 1) = v50;
    LOBYTE(v101) = v41;
    *(&v101 + 1) = v53;
    *&v102[0] = KeyPath;
    *(&v102[0] + 1) = v55;
    LOBYTE(v102[1]) = 0;
    *(&v102[1] + 1) = v57;
    LOBYTE(v103) = v56;
    *(&v103 + 1) = v59;
    *&v104 = v58;
    BYTE8(v104) = 1;
    sub_100006334(&qword_1001225C0, &unk_1000ED4B0);
    sub_10000F670();
    sub_10000F720();
    sub_1000D229C();
    v19 = v75;
    LOBYTE(KeyPath) = v74;
    v25 = v73;
  }

  v60 = v89;
  v98[2] = v89;
  v98[3] = v90;
  v99[0] = v91[0];
  *(v99 + 9) = *(v91 + 9);
  v61 = v87;
  v98[0] = v87;
  v98[1] = v88;
  v95[0] = v86;
  v95[1] = v85;
  v95[2] = v83;
  v95[3] = v84;
  v95[4] = v81;
  v95[5] = v82;
  *&v95[6] = v19;
  BYTE8(v95[6]) = KeyPath;
  *(&v93[2] + 7) = v83;
  *(&v93[1] + 7) = v85;
  *(v93 + 7) = v86;
  v93[6] = *(&v95[5] + 9);
  *(&v93[5] + 7) = v82;
  *(&v93[4] + 7) = v81;
  *(&v93[3] + 7) = v84;
  v62 = v88;
  v96[0] = v87;
  v96[1] = v88;
  *(v97 + 9) = *(v91 + 9);
  v97[0] = v91[0];
  v63 = v90;
  v96[2] = v89;
  v96[3] = v90;
  *(a2 + 41) = v93[2];
  *(a2 + 25) = v93[1];
  *(a2 + 9) = v93[0];
  *(a2 + 105) = v93[6];
  *(a2 + 89) = v93[5];
  *(a2 + 73) = v93[4];
  *(a2 + 57) = v93[3];
  v64 = v109;
  v65 = v108;
  v66 = v107;
  v94 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 128) = 0;
  *(a2 + 136) = v64;
  *(a2 + 144) = v25;
  *(a2 + 152) = v65;
  v67 = v77;
  *(a2 + 160) = v78;
  *(a2 + 168) = v66;
  v68 = v76;
  *(a2 + 176) = v67;
  *(a2 + 184) = v68;
  *(a2 + 192) = v61;
  *(a2 + 208) = v62;
  v69 = v91[0];
  *(a2 + 265) = *(v91 + 9);
  *(a2 + 240) = v63;
  *(a2 + 256) = v69;
  *(a2 + 224) = v60;
  sub_10000F8D0(v95, &v100, &qword_100127F60, &unk_1000ED4C0);
  sub_10000F8D0(v96, &v100, &qword_100123868, &qword_1000E25A0);
  sub_10000F938(v98, &qword_100123868, &qword_1000E25A0);
  v100 = v86;
  v101 = v85;
  v102[0] = v83;
  v102[1] = v84;
  v103 = v81;
  v104 = v82;
  v105 = v19;
  v106 = KeyPath;
  return sub_10000F938(&v100, &qword_100127F60, &unk_1000ED4C0);
}