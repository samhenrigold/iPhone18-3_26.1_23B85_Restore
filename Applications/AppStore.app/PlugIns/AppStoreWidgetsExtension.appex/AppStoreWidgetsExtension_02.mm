unint64_t sub_10003A86C()
{
  result = qword_1000664E0;
  if (!qword_1000664E0)
  {
    sub_100003698(&qword_100066458, &qword_100050010);
    sub_10003A924();
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664E0);
  }

  return result;
}

unint64_t sub_10003A924()
{
  result = qword_1000664E8;
  if (!qword_1000664E8)
  {
    sub_100003698(&qword_100066450, &qword_100050008);
    sub_10003AA08(&qword_1000664F0, &qword_1000664F8, &qword_100050070, sub_10003AA8C);
    sub_100003D30(&qword_100066508, &qword_100066510, &qword_100050078, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664E8);
  }

  return result;
}

uint64_t sub_10003AA08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003AA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100066500;
  if (!qword_100066500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066500);
  }

  return result;
}

unint64_t sub_10003AAE0()
{
  result = qword_100066518;
  if (!qword_100066518)
  {
    sub_100003698(&qword_100066488, &qword_100050048);
    sub_10003AB98();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066518);
  }

  return result;
}

unint64_t sub_10003AB98()
{
  result = qword_100066520;
  if (!qword_100066520)
  {
    sub_100003698(&qword_100066528, &qword_100050080);
    sub_10003AC50();
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066520);
  }

  return result;
}

unint64_t sub_10003AC50()
{
  result = qword_100066530;
  if (!qword_100066530)
  {
    sub_100003698(&qword_100066538, &qword_100050088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066530);
  }

  return result;
}

uint64_t sub_10003ACD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayCardListViewItem.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003650(&qword_100066540, &unk_100050090);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003AE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TodayCardListViewItem.Content(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003650(&qword_100066540, &unk_100050090);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10003AF88(uint64_t a1)
{
  type metadata accessor for TodayCardListViewItem.Content(319);
  if (v1 <= 0x3F)
  {
    sub_10003B00C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B00C(uint64_t a1)
{
  if (!qword_1000665B0)
  {
    sub_10004CB10();
    v1 = sub_10004BF10();
    if (!v2)
    {
      atomic_store(v1, &qword_1000665B0);
    }
  }
}

unint64_t sub_10003B068()
{
  result = qword_1000665E0;
  if (!qword_1000665E0)
  {
    sub_100003698(&qword_1000665E8, qword_1000500C0);
    sub_10003A58C();
    sub_10003AAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000665E0);
  }

  return result;
}

unint64_t sub_10003B110()
{
  result = qword_1000665F8;
  if (!qword_1000665F8)
  {
    sub_100003698(&qword_1000665F0, &qword_100050118);
    sub_10003B19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000665F8);
  }

  return result;
}

unint64_t sub_10003B19C()
{
  result = qword_100066600;
  if (!qword_100066600)
  {
    sub_100003698(&qword_100066608, &unk_100050120);
    sub_1000267DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066600);
  }

  return result;
}

unint64_t sub_10003B22C()
{
  result = qword_100066610;
  if (!qword_100066610)
  {
    sub_100003698(&qword_100066618, &qword_100050138);
    sub_10003B110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066610);
  }

  return result;
}

void sub_10003B33C(uint64_t a1)
{
  sub_10003B3E8(319, &qword_1000666C0, sub_10001FE50);
  if (v1 <= 0x3F)
  {
    sub_10003B3E8(319, &unk_1000666C8, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003B3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003B440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100003E3C(v2, &v14 - v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10003B640@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100064958, &qword_10004FA30);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CardDetailView(0);
  sub_100003E3C(v1 + *(v10 + 24), v9, &qword_100064958, &qword_10004FA30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004BF00();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003B848@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10003B8F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003B978(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_10004C270();
  sub_100004D10(v5, a2);
  v6 = sub_100004D74(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

void sub_10003BA00(uint64_t a1@<X0>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14)
{
  v91 = a8;
  v76 = a7;
  v77 = a6;
  v84 = a1;
  v88 = a9;
  v90 = a14;
  v89 = a13;
  v87 = sub_10004BFC0();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v17;
  v85 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DynamicTypeFont(0);
  __chkstk_darwin(v18);
  v20 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v78 = sub_100003650(&qword_100066878, &qword_1000503A8);
  __chkstk_darwin(v78);
  v28 = &v72 - v27;
  v79 = sub_100003650(&qword_100066880, &qword_1000503B0);
  __chkstk_darwin(v79);
  v82 = &v72 - v29;
  v81 = sub_100003650(&qword_100066888, &qword_1000503B8);
  __chkstk_darwin(v81);
  v80 = &v72 - v30;

  v31 = sub_10004C500();
  v33 = v32;
  v35 = v34;
  if (qword_100064778 != -1)
  {
    swift_once();
  }

  v74 = sub_10004C4C0();
  v73 = v36;
  v38 = v37;
  v75 = v39;
  sub_10001AC44(v31, v33, v35 & 1);

  v40 = sub_10004C270();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v26, v76, v40);
  v42 = *(v41 + 56);
  v42(v26, 0, 1, v40);
  sub_100007C30(v26, v23, &qword_100065250, &unk_10004E730);
  *v20 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v43 = v18[5];
  *(v20 + v43) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v44 = v18[7];
  v42(v20 + v44, 1, 1, v40);
  *(v20 + v18[6]) = v77;

  sub_100015C48(v23, v20 + v44);
  v45 = sub_100003650(&qword_100065258, &qword_100050430);
  sub_1000410A4(v20, &v28[*(v45 + 36)], type metadata accessor for DynamicTypeFont);
  v46 = v73;
  *v28 = v74;
  *(v28 + 1) = v46;
  v28[16] = v38 & 1;
  *(v28 + 3) = v75;
  sub_100015D1C(v20);
  KeyPath = swift_getKeyPath();
  v48 = &v28[*(sub_100003650(&qword_100066890, &qword_100050468) + 36)];
  *v48 = KeyPath;
  *(v48 + 1) = 1;
  v48[16] = 0;
  v49 = swift_getKeyPath();
  v50 = &v28[*(sub_100003650(&qword_100066898, &qword_1000504A0) + 36)];
  *v50 = v49;
  v50[8] = 0;
  *&v28[*(sub_100003650(&qword_1000668A0, &qword_1000504A8) + 36)] = 256;
  v51 = swift_getKeyPath();
  v52 = &v28[*(sub_100003650(&qword_1000668A8, &qword_1000504E0) + 36)];
  *v52 = v51;
  v52[1] = 0xC000000000000000;
  v53 = sub_10004C5D0();
  v54 = swift_getKeyPath();
  v55 = &v28[*(v78 + 36)];
  *v55 = v54;
  v55[1] = v53;
  sub_10004C720();
  sub_10004C040();
  v56 = v82;
  sub_100007C30(v28, v82, &qword_100066878, &qword_1000503A8);
  v57 = (v56 + *(v79 + 36));
  v58 = v97;
  v57[4] = v96;
  v57[5] = v58;
  v57[6] = v98;
  v59 = v93;
  *v57 = v92;
  v57[1] = v59;
  v60 = v95;
  v57[2] = v94;
  v57[3] = v60;
  v79 = sub_10004C720();
  v78 = v61;
  v62 = v86;
  v63 = v85;
  v64 = v87;
  (*(v86 + 16))(v85, v84, v87);
  v65 = (*(v62 + 80) + 48) & ~*(v62 + 80);
  v66 = (v83 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = v89;
  *(v67 + 16) = v91;
  *(v67 + 24) = v68;
  *(v67 + 32) = a10;
  *(v67 + 40) = a11;
  (*(v62 + 32))(v67 + v65, v63, v64);
  *(v67 + v66) = v90;
  *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = a12;
  v69 = v80;
  sub_100007C30(v56, v80, &qword_100066880, &qword_1000503B0);
  v70 = (v69 + *(v81 + 36));
  *v70 = sub_100040BB0;
  v70[1] = v67;
  v71 = v78;
  v70[2] = v79;
  v70[3] = v71;
  sub_100007C30(v69, v88, &qword_100066888, &qword_1000503B8);
}

double sub_10003C27C@<D0>(uint64_t a1@<X4>, uint64_t a2@<X8>, double a4@<D1>)
{
  v36 = a1;
  v30 = sub_10004C000();
  v37 = *(v30 - 8);
  v7 = v37;
  __chkstk_darwin(v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = 0x746E656964617267;
  *(&v44 + 1) = 0xE800000000000000;
  sub_10004CEF0();
  v33 = enum case for CoordinateSpace.named(_:);
  v32 = *(v7 + 104);
  v32(v9);
  sub_100003650(&qword_1000668B0, &qword_100050518);
  v10 = swift_allocObject();
  v31 = xmmword_100050140;
  *(v10 + 16) = xmmword_100050140;
  sub_10004C5F0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v10 + 32) = sub_10004C6B0();
  *(v10 + 40) = v11;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v10 + 48) = sub_10004C6B0();
  *(v10 + 56) = v12;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v10 + 64) = sub_10004C6B0();
  *(v10 + 72) = v13;
  sub_10004C5F0();
  *(v10 + 80) = sub_10004C6B0();
  *(v10 + 88) = v14;
  sub_10004C790();
  sub_10004C6C0();
  sub_10004BFD0();
  v15 = *(v37 + 8);
  v37 += 8;
  v16 = v30;
  v15(v9, v30);
  v35 = sub_10004C720();
  v34 = v17;
  *&v44 = 0x746E656964617267;
  *(&v44 + 1) = 0xE800000000000000;
  sub_10004CEF0();
  (v32)(v9, v33, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v31;
  sub_10004C5F0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v18 + 32) = sub_10004C6B0();
  *(v18 + 40) = v19;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v18 + 48) = sub_10004C6B0();
  *(v18 + 56) = v20;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v18 + 64) = sub_10004C6B0();
  *(v18 + 72) = v21;
  sub_10004C5F0();
  *(v18 + 80) = sub_10004C6B0();
  *(v18 + 88) = v22;
  sub_10004C790();
  sub_10004C6C0();
  sub_10004BFD0();
  v15(v9, v16);
  v23 = v41;
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  result = -a4;
  v25 = v39;
  *a2 = v38;
  *(a2 + 16) = v25;
  *(a2 + 32) = v40;
  *(a2 + 40) = v23;
  v26 = v43;
  *(a2 + 48) = v42;
  *(a2 + 64) = v26;
  v27 = v34;
  *(a2 + 80) = v35;
  *(a2 + 88) = v27;
  v28 = v45;
  *(a2 + 96) = v44;
  *(a2 + 112) = v28;
  *(a2 + 128) = v46;
  *(a2 + 144) = a4 * -0.5;
  *(a2 + 152) = -a4;
  return result;
}

unint64_t sub_10003C7C4(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10003C7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003C848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10003C8A8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10003C8F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
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

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for CardDetailView.Heading(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[10] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_10003CB30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100003650(&qword_100064F90, qword_10004E280);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100003650(&qword_1000648A8, qword_10004DB30);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_100003650(&qword_100066540, &unk_100050090);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = type metadata accessor for CardDetailView.Heading(0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10] + 8) = a2;
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

void sub_10003CD64(uint64_t a1)
{
  sub_10003CEF8(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10003CEF8(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      sub_10003CEF8(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_10003CEF8(319, &qword_1000665B0, &type metadata accessor for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CardDetailView.Heading(319);
          if (v5 <= 0x3F)
          {
            sub_10001FEA0(319);
            if (v6 <= 0x3F)
            {
              sub_10001FE50();
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

void sub_10003CEF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003CF68(__n128 a1)
{
  result = sub_10004C480();
  qword_100066620 = result;
  return result;
}

uint64_t sub_10003CF88(uint64_t a1)
{
  result = sub_10004C490();
  qword_100066628 = result;
  return result;
}

uint64_t sub_10003CFA8(__n128 a1)
{
  result = sub_10004C460();
  qword_100066630 = result;
  return result;
}

uint64_t sub_10003CFE8()
{
  v1 = sub_10004C4E0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10004C200();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10004BB40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CardDetailView(0);
  sub_1000410A4(v0 + *(v13 + 32), v12, type metadata accessor for CardDetailView.Heading);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v9, v12, v3);
    sub_10004C1F0();
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_10004C1E0(v22);
    (*(v4 + 16))(v6, v9, v3);
    sub_10004C4D0();
    v14 = sub_10004C4F0();
    v16 = v15;
    v18 = v17;
    sub_10004C1D0();
    sub_10001AC44(v14, v16, v18 & 1);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_10004C1E0(v23);
    v19 = sub_10004C220();
    (*(v4 + 8))(v9, v3);
    return v19;
  }

  else if (*(v12 + 1))
  {
    return sub_10004C240();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003D2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = sub_100003650(&qword_1000667D0, &qword_100050330);
  __chkstk_darwin(v3 - 8);
  v157 = &v133 - v4;
  v156 = sub_100003650(&qword_1000667D8, &qword_100050338);
  __chkstk_darwin(v156);
  v160 = &v133 - v5;
  v159 = sub_100003650(&qword_1000667E0, &qword_100050340);
  __chkstk_darwin(v159);
  v162 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v158 = &v133 - v8;
  __chkstk_darwin(v9);
  v161 = &v133 - v10;
  v168 = sub_10004C270();
  v151 = *(v168 - 8);
  __chkstk_darwin(v168);
  v149 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v11;
  __chkstk_darwin(v12);
  v150 = &v133 - v13;
  v14 = sub_10004CB10();
  v152 = *(v14 - 8);
  v153 = v14;
  __chkstk_darwin(v14);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v133 - v18;
  v20 = sub_10004BF00();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v133 - v25;
  v27 = sub_10004CB70();
  v170 = *(v27 - 8);
  v171 = v27;
  __chkstk_darwin(v27);
  v148 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v177 = &v133 - v30;
  v31 = type metadata accessor for CardDetailView(0);
  v169 = *(a1 + v31[12]);
  v173 = sub_10003CFE8();
  v174 = v32;
  v175 = v33;
  v176 = a1;
  v172 = v34;
  if (*(a1 + v31[10] + 8))
  {

    v165 = sub_10004C240();
    v166 = v35;
    v167 = v36;
    v164 = v37 & 1;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
  }

  v38 = v176;
  sub_10003B440(v177);
  v39 = (v38 + v31[14]);
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[3];
  v154 = v41;
  v155 = v42;
  sub_10003B640(v26);
  (*(v21 + 104))(v23, enum case for ColorScheme.dark(_:), v20);
  LODWORD(v147) = sub_10004BEF0();
  v43 = *(v21 + 8);
  v43(v23, v20);
  v43(v26, v20);
  sub_1000048A4(v19);
  sub_10004CB00();
  v44 = sub_10004CAE0();
  v45 = v153;
  v46 = *(v152 + 8);
  v46(v16, v153);
  v46(v19, v45);
  if (v169 >> 62)
  {
    v48 = v173;
    v47 = v174;
    if (v169 >> 62 == 1)
    {
      v144 = v169 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = v170;
      v49 = v171;
      v51 = *(v170 + 104);
      v52 = v148;
      v139 = enum case for WidgetFamily.systemSmall(_:);
      v138 = v51;
      v135 = v170 + 104;
      v51(v148);
      v53 = sub_10003B8F8(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      sub_10004CD40();
      v136 = v53;
      sub_10004CD40();
      v55 = *(v50 + 8);
      v54 = v50 + 8;
      v137 = v55;
      v55(v52, v49);
      v56 = 0x3FC999999999999ALL;
      if (v147)
      {
        v57 = 0.2;
      }

      else
      {
        v57 = 0.1;
      }

      v142 = v222;
      v143 = v230;
      if (v147)
      {
        v58 = sub_10004C5C0();
      }

      else
      {
        v58 = sub_10004C5E0();
      }

      v153 = v58;
      v63 = v175;
      if (v44)
      {
        v64 = sub_10004C5E0();
      }

      else
      {

        v56 = 0x3FEE666666666666;
      }

      v65 = v172;
      v152 = v64;
      if (v47)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100040864(v48, v47, v63, v65);
        v66 = sub_10004C230();

        if (v66)
        {
          v134 = v54;
          if (qword_100064750 != -1)
          {
            swift_once();
          }

          v67 = v168;
          v68 = sub_100004D74(v168, qword_100068ED8);
          v69 = *(v151 + 16);
          v69(v150, v68, v67);
          v70 = v173;
          v71 = v173;
          v72 = v47;
          v141 = v63;
          v73 = v65;
          goto LABEL_30;
        }

        v80 = v47;
        v78 = v63 & 1;
        v77 = v65;
        v81 = v63;
        v79 = v80;
        v141 = v81;
      }

      else
      {
        v74 = v167;
        if (!v167)
        {
          *&v230 = sub_10004C5D0();
          sub_100040620(&v230);
          v228 = v236;
          v229[0] = v237[0];
          LOBYTE(v229[1]) = v237[1];
          v224 = v232;
          v225 = v233;
          v226 = v234;
          v227 = v235;
          v222 = v230;
          v223 = v231;
          sub_100003650(&qword_100066810, &qword_100050358);
          sub_1000403CC();
          sub_10004C320();
LABEL_47:
          v202 = v193;
          v203 = v194;
          LOBYTE(v204) = v195;
          v198 = v189;
          v199 = v190;
          v200 = v191;
          v201 = v192;
          v196 = v187;
          v197 = v188;
          sub_10004062C(&v196);
          v236 = v202;
          v237[0] = v203;
          LOWORD(v237[1]) = v204;
          v232 = v198;
          v233 = v199;
          v234 = v200;
          v235 = v201;
          v230 = v196;
          v231 = v197;
          sub_100003E3C(&v187, &v222, &qword_100066800, &qword_100050350);
          sub_100003650(&qword_100066800, &qword_100050350);
          sub_100040340();
          sub_10004C320();
          v211 = v184;
          v212 = v185;
          v207 = v180;
          v208 = v181;
          v209 = v182;
          v210 = v183;
          v205 = v178;
          v206 = v179;
          v236 = v184;
          v237[0] = v185;
          v232 = v180;
          v233 = v181;
          v234 = v182;
          v235 = v183;
          v213 = v186;
          LOWORD(v237[1]) = v186;
          v230 = v178;
          v231 = v179;
          sub_100040618(&v230);
          v220 = v236;
          v221[0] = v237[0];
          *(v221 + 15) = *(v237 + 15);
          v216 = v232;
          v217 = v233;
          v218 = v234;
          v219 = v235;
          v214 = v230;
          v215 = v231;
          sub_100003E3C(&v205, &v222, &qword_1000667E8, &qword_100050348);
          sub_100003650(&qword_1000667E8, &qword_100050348);
          sub_1000402B4();
          sub_10004C320();

          sub_100003EA4(&v205, &qword_1000667E8, &qword_100050348);
          sub_100003EA4(&v187, &qword_100066800, &qword_100050350);
          sub_1000405C8(v165, v167, v164, v166);
          sub_1000405C8(v173, v174, v175, v172);
          v244 = v228;
          v245[0] = v229[0];
          *(v245 + 15) = *(v229 + 15);
          v240 = v224;
          v241 = v225;
          v242 = v226;
          v243 = v227;
          v238 = v222;
          v239 = v223;
          v59 = v163;
          v60 = v160;
          v61 = v157;
          v62 = v158;
          goto LABEL_48;
        }

        v75 = v166;

        v230 = v48;
        *&v231 = v63;
        *(&v231 + 1) = v65;
        v76 = v164;
        v48 = v165;
        *&v232 = v165;
        *(&v232 + 1) = v74;
        *&v233 = v164;
        *(&v233 + 1) = v75;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100003EA4(&v230, &qword_100066870, &unk_100050398);
        v77 = v75;
        v78 = v76;
        v79 = v74;
        v141 = v76;
        v65 = v75;
        v80 = v74;
      }

      v145 = v80;
      v147 = v65;
      if (qword_100064758 != -1)
      {
        swift_once();
      }

      v82 = v168;
      v83 = sub_100004D74(v168, qword_100068EF0);
      v84 = *(v151 + 16);
      v84(v150, v83, v82);
      if (!v174)
      {
        v230 = v173;
        *&v231 = v175;
        *(&v231 + 1) = v172;
        v140 = v48;
        *&v232 = v48;
        *(&v232 + 1) = v79;
        v63 = v175;
        *&v233 = v78;
        *(&v233 + 1) = v77;
        sub_100003EA4(&v230, &qword_100066870, &unk_100050398);
        goto LABEL_36;
      }

      v134 = v54;
      v69 = v84;
      v47 = v174;
      v63 = v175;
      v71 = v48;
      v65 = v172;
      v70 = v173;
      v73 = v147;
      v72 = v145;
LABEL_30:

      v140 = v71;
      v85 = sub_10004C230();
      v147 = v73;

      v145 = v72;

      sub_1000405C8(v70, v47, v63, v65);
      if (v85)
      {
        v84 = v69;
        v175 = v63;
        if (qword_100064760 != -1)
        {
          swift_once();
        }

        v86 = &qword_100066620;
        v87 = v146;
LABEL_43:
        v90 = *v86;

        v148 = sub_10004C280();
        v91 = v151;
        v84(v149, v150, v168);
        v92 = (*(v91 + 80) + 56) & ~*(v91 + 80);
        v146 = (v87 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
        v93 = (v146 + 15) & 0xFFFFFFFFFFFFFFF8;
        v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
        v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
        v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
        v97 = swift_allocObject();
        v98 = v145;
        *(v97 + 16) = v140;
        *(v97 + 24) = v98;
        *(v97 + 32) = v141 & 1;
        *(v97 + 40) = v147;
        *(v97 + 48) = v90;
        (*(v91 + 32))(v97 + v92, v149, v168);
        *(v97 + v146) = v169;
        v99 = v153;
        *(v97 + v93) = v152;
        *(v97 + v94) = v56;
        *(v97 + v95) = 0x4045000000000000;
        *(v97 + v96) = v99;
        *(v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;

        v100 = sub_10004C3B0();
        sub_10004BEE0();
        v102 = v101;
        v104 = v103;
        v106 = v105;
        v108 = v107;
        LOBYTE(v230) = 0;
        LOBYTE(v222) = 0;
        if (v143 == v142)
        {
          v109 = 0.0;
        }

        else
        {
          v109 = 0.13962634;
        }

        sub_10004C760();
        v205 = v148;
        LOBYTE(v206) = 0;
        *(&v206 + 1) = sub_100040768;
        *&v207 = v97;
        *(&v207 + 1) = 0x746E656964617267;
        *&v208 = 0xE800000000000000;
        BYTE8(v208) = v100;
        *&v209 = v102;
        *(&v209 + 1) = v104;
        *&v210 = v106;
        *(&v210 + 1) = v108;
        LOBYTE(v211) = 0;
        DWORD1(v211) = *(&v230 + 3);
        *(&v211 + 1) = v230;
        *(&v211 + 1) = v109;
        *&v212 = v110;
        *(&v212 + 1) = v111;
        v228 = v211;
        v229[0] = v212;
        v226 = v209;
        v227 = v210;
        v224 = v207;
        v225 = v208;
        v222 = v148;
        v223 = v206;
        sub_10004085C(&v222);
        v236 = v228;
        v237[0] = v229[0];
        LOBYTE(v237[1]) = v229[1];
        v232 = v224;
        v233 = v225;
        v234 = v226;
        v235 = v227;
        v230 = v222;
        v231 = v223;
        sub_100003E3C(&v205, &v214, &qword_100066810, &qword_100050358);
        sub_100003650(&qword_100066810, &qword_100050358);
        sub_1000403CC();
        sub_10004C320();

        sub_100003EA4(&v205, &qword_100066810, &qword_100050358);
        v236 = v220;
        v237[0] = v221[0];
        LOBYTE(v237[1]) = v221[1];
        v232 = v216;
        v233 = v217;
        v234 = v218;
        v235 = v219;
        v230 = v214;
        v231 = v215;
        (*(v151 + 8))(v150, v168);
        v193 = v236;
        v194 = v237[0];
        v195 = v237[1];
        v189 = v232;
        v190 = v233;
        v191 = v234;
        v192 = v235;
        v187 = v230;
        v188 = v231;
        goto LABEL_47;
      }

      v84 = v69;
LABEL_36:
      v88 = v148;
      v89 = v171;
      v138(v148, v139, v171);
      sub_10004CD40();
      sub_10004CD40();
      v137(v88, v89);
      v175 = v63;
      if (v230 == v222)
      {
        v87 = v146;
        if (qword_100064768 != -1)
        {
          swift_once();
        }

        v86 = &qword_100066628;
      }

      else
      {
        v87 = v146;
        if (qword_100064770 != -1)
        {
          swift_once();
        }

        v86 = &qword_100066630;
      }

      goto LABEL_43;
    }

    *&v230 = sub_10004C5D0();
    sub_1000402A8(&v230);
    v220 = v236;
    v221[0] = v237[0];
    *(v221 + 15) = *(v237 + 15);
    v216 = v232;
    v217 = v233;
    v218 = v234;
    v219 = v235;
    v214 = v230;
    v215 = v231;
    sub_100003650(&qword_1000667E8, &qword_100050348);
    sub_1000402B4();
    sub_10004C320();
    sub_1000405C8(v165, v167, v164, v166);
    sub_1000405C8(v48, v47, v175, v172);
    v244 = v228;
    v245[0] = v229[0];
    *(v245 + 15) = *(v229 + 15);
    v240 = v224;
    v241 = v225;
    v242 = v226;
    v243 = v227;
  }

  else
  {
    *&v205 = v169;
    sub_10004060C(&v205);
    v236 = v211;
    v237[0] = v212;
    LOWORD(v237[1]) = v213;
    v232 = v207;
    v233 = v208;
    v234 = v209;
    v235 = v210;
    v230 = v205;
    v231 = v206;

    sub_100003650(&qword_100066800, &qword_100050350);
    sub_100040340();
    sub_10004C320();
    v236 = v202;
    v237[0] = v203;
    LOWORD(v237[1]) = v204;
    v232 = v198;
    v233 = v199;
    v234 = v200;
    v235 = v201;
    v230 = v196;
    v231 = v197;
    sub_100040618(&v230);
    v219 = v235;
    v220 = v236;
    v221[0] = v237[0];
    *(v221 + 15) = *(v237 + 15);
    v216 = v232;
    v217 = v233;
    v218 = v234;
    v214 = v230;
    v215 = v231;
    sub_100003650(&qword_1000667E8, &qword_100050348);
    sub_1000402B4();
    sub_10004C320();
    sub_1000405C8(v165, v167, v164, v166);
    sub_1000405C8(v173, v174, v175, v172);
    v243 = v227;
    v244 = v228;
    v245[0] = v229[0];
    *(v245 + 15) = *(v229 + 15);
    v240 = v224;
    v241 = v225;
    v242 = v226;
  }

  v238 = v222;
  v239 = v223;
  v59 = v163;
  v60 = v160;
  v61 = v157;
  v62 = v158;
LABEL_48:
  v112 = v156;
  (*(v170 + 8))(v177, v171);
  *v61 = sub_10004C290();
  *(v61 + 8) = 0x4000000000000000;
  *(v61 + 16) = 0;
  v113 = sub_100003650(&qword_100066858, &qword_100050380);
  sub_10003E8B4(v176, (v61 + *(v113 + 44)));
  sub_10004C720();
  sub_10004C040();
  sub_100007C30(v61, v60, &qword_1000667D0, &qword_100050330);
  v114 = (v60 + *(v112 + 36));
  v115 = v219;
  v114[4] = v218;
  v114[5] = v115;
  v114[6] = v220;
  v116 = v215;
  *v114 = v214;
  v114[1] = v116;
  v117 = v217;
  v114[2] = v216;
  v114[3] = v117;
  v118 = sub_10004C3A0();
  sub_100007C30(v60, v62, &qword_1000667D8, &qword_100050338);
  v119 = v62 + *(v159 + 36);
  *v119 = v118;
  *(v119 + 8) = v40;
  v120 = v155;
  *(v119 + 16) = v154;
  *(v119 + 24) = 0;
  *(v119 + 32) = v120;
  *(v119 + 40) = 0;
  v121 = v62;
  v122 = v161;
  sub_100007C30(v121, v161, &qword_1000667E0, &qword_100050340);
  v123 = v162;
  sub_100003E3C(v122, v162, &qword_1000667E0, &qword_100050340);
  v124 = v243;
  v228 = v244;
  v229[0] = v245[0];
  v125 = v239;
  v126 = v240;
  v224 = v240;
  v225 = v241;
  v127 = v241;
  v128 = v242;
  v226 = v242;
  v227 = v243;
  v129 = v238;
  v222 = v238;
  v223 = v239;
  v130 = v245[0];
  *(v59 + 96) = v244;
  *(v59 + 112) = v130;
  *(v59 + 32) = v126;
  *(v59 + 48) = v127;
  *(v59 + 64) = v128;
  *(v59 + 80) = v124;
  *(v229 + 15) = *(v245 + 15);
  *(v59 + 127) = *(v245 + 15);
  *v59 = v129;
  *(v59 + 16) = v125;
  v131 = sub_100003650(&qword_100066860, &qword_100050388);
  sub_100003E3C(v123, v59 + *(v131 + 48), &qword_1000667E0, &qword_100050340);
  sub_100003E3C(&v222, &v230, &qword_100066868, &qword_100050390);
  sub_100003EA4(v122, &qword_1000667E0, &qword_100050340);
  sub_100003EA4(v123, &qword_1000667E0, &qword_100050340);
  v236 = v244;
  v237[0] = v245[0];
  *(v237 + 15) = *(v245 + 15);
  v232 = v240;
  v233 = v241;
  v234 = v242;
  v235 = v243;
  v230 = v238;
  v231 = v239;
  return sub_100003EA4(&v230, &qword_100066868, &qword_100050390);
}

uint64_t sub_10003E8B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v197 = a2;
  v188 = sub_10004CB70();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v168[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v185 = &v168[-v5];
  v6 = sub_100003650(&qword_1000668B8, &qword_100050520);
  __chkstk_darwin(v6 - 8);
  v196 = &v168[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v168[-v9];
  v184 = sub_10004CB10();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v168[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v181 = &v168[-v13];
  v202 = type metadata accessor for DynamicTypeFont(0);
  __chkstk_darwin(v202);
  v15 = &v168[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v16 - 8);
  v201 = &v168[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v199 = &v168[-v19];
  v200 = sub_100003650(&qword_100065258, &qword_100050430);
  __chkstk_darwin(v200);
  v206 = &v168[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v168[-v22];
  v203 = sub_100003650(&qword_1000668C0, &qword_100050528);
  __chkstk_darwin(v203);
  v193 = &v168[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v174 = &v168[-v26];
  v205 = sub_100003650(&qword_1000668C8, &qword_100050530);
  __chkstk_darwin(v205);
  v191 = &v168[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v198 = &v168[-v29];
  v204 = sub_100003650(&qword_1000668D0, &qword_100050538);
  __chkstk_darwin(v204);
  v192 = &v168[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v180 = &v168[-v32];
  v33 = sub_100003650(&qword_1000668D8, &qword_100050540);
  v195 = *(v33 - 8);
  __chkstk_darwin(v33);
  v190 = &v168[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v189 = &v168[-v36];
  __chkstk_darwin(v37);
  v176 = &v168[-v38];
  v39 = sub_100003650(&qword_1000668E0, &qword_100050548);
  __chkstk_darwin(v39 - 8);
  v178 = &v168[-v40];
  v179 = sub_100003650(&qword_1000668E8, &qword_100050550);
  __chkstk_darwin(v179);
  v177 = &v168[-v41];
  v42 = sub_100003650(&qword_1000668F0, &qword_100050558);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v175 = &v168[-v44];
  v45 = sub_100003650(&qword_1000668F8, &qword_100050560);
  __chkstk_darwin(v45 - 8);
  v194 = &v168[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v47);
  v49 = &v168[-v48];
  sub_10003CFE8();
  v210 = a1;
  v209 = v49;
  v208 = v10;
  v207 = v33;
  if (v50)
  {
    v172 = v43;
    v173 = v42;
    v51 = sub_10004C500();
    v53 = v52;
    v55 = v54;
    if (qword_100064778 != -1)
    {
      swift_once();
    }

    v171 = sub_10004C4C0();
    v170 = v56;
    v169 = v57;
    v59 = v58;
    sub_10001AC44(v51, v53, v55 & 1);

    if (qword_100064760 != -1)
    {
      swift_once();
    }

    v60 = qword_100066620;
    if (qword_100064750 != -1)
    {
      swift_once();
    }

    v61 = sub_10004C270();
    v62 = sub_100004D74(v61, qword_100068ED8);
    v63 = *(v61 - 8);
    v64 = v199;
    (*(v63 + 16))(v199, v62, v61);
    v65 = *(v63 + 56);
    v65(v64, 0, 1, v61);
    v66 = v201;
    sub_100007C30(v64, v201, &qword_100065250, &unk_10004E730);
    *v15 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v67 = v202;
    v68 = *(v202 + 20);
    *(v15 + v68) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v69 = *(v67 + 28);
    v65(v15 + v69, 1, 1, v61);
    *(v15 + *(v67 + 24)) = v60;

    sub_100015C48(v66, v15 + v69);
    sub_1000410A4(v15, &v23[*(v200 + 36)], type metadata accessor for DynamicTypeFont);
    v70 = v170;
    *v23 = v171;
    *(v23 + 1) = v70;
    v23[16] = v169 & 1;
    *(v23 + 3) = v59;
    sub_100015D1C(v15);
    v71 = v210 + *(type metadata accessor for CardDetailView(0) + 44);
    v72 = *v71;
    v73 = *(v71 + 8);
    LODWORD(v69) = *(v71 + 16);
    type metadata accessor for SingleLineTextObserver.State(0);
    sub_10003B8F8(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State, &unk_10004ED08);
    v171 = v72;
    v170 = v73;
    v169 = v69;
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    sub_10004C730();
    sub_10004C040();
    v74 = v174;
    sub_100007C30(v23, v174, &qword_100065258, &qword_100050430);
    v75 = &v74[*(v203 + 36)];
    v76 = v217;
    v75[4] = v216;
    v75[5] = v76;
    v75[6] = v218;
    v77 = v213;
    *v75 = v212;
    v75[1] = v77;
    v78 = v215;
    v75[2] = v214;
    v75[3] = v78;
    KeyPath = swift_getKeyPath();
    v80 = v74;
    v81 = v198;
    sub_100007C30(v80, v198, &qword_1000668C0, &qword_100050528);
    v82 = &v81[*(v205 + 36)];
    *v82 = KeyPath;
    v82[1] = 0xC000000000000000;
    v83 = v181;
    sub_1000048A4(v181);
    v84 = v182;
    sub_10004CB00();
    LOBYTE(KeyPath) = sub_10004CAE0();
    v85 = *(v183 + 8);
    v86 = v84;
    v87 = v184;
    v85(v86, v184);
    v85(v83, v87);
    if (KeyPath)
    {
      v88 = sub_10004C600();
    }

    else
    {
      v88 = sub_10004C610();
    }

    v89 = v88;
    v90 = v173;
    v91 = v172;
    v92 = swift_getKeyPath();
    v93 = v180;
    sub_100007C30(v198, v180, &qword_1000668C8, &qword_100050530);
    v94 = &v93[*(v204 + 36)];
    *v94 = v92;
    v94[1] = v89;
    sub_10004BF20();
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    if (v219)
    {
      v95 = 2;
    }

    else
    {
      v95 = 1;
    }

    v96 = sub_10004BFE0();
    v98 = v97;
    v99 = v93;
    v100 = v176;
    sub_100007C30(v99, v176, &qword_1000668D0, &qword_100050538);
    v33 = v207;
    v101 = &v100[*(v207 + 36)];
    *v101 = v96;
    v101[1] = v98;
    v101[2] = v95;
    a1 = v210;
    v102 = v178;
    sub_100007C30(v100, v178, &qword_1000668D8, &qword_100050540);
    v103 = *(v179 + 36);
    v104 = swift_getKeyPath();
    v105 = v177;
    *&v177[v103] = v104;
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    sub_100007C30(v102, v105, &qword_1000668E0, &qword_100050548);
    sub_100040C80();
    v106 = v175;
    sub_10004C510();
    sub_100003EA4(v105, &qword_1000668E8, &qword_100050550);
    v107 = v209;
    (*(v91 + 32))(v209, v106, v90);
    (*(v91 + 56))(v107, 0, 1, v90);
    v10 = v208;
  }

  else
  {
    (*(v43 + 56))(v49, 1, 1, v42);
  }

  v108 = type metadata accessor for CardDetailView(0);
  v109 = v108;
  if (*(a1 + *(v108 + 10) + 8))
  {
    v198 = v108;

    sub_10004C240();
    v110 = sub_10004C500();
    v112 = v111;
    v114 = v113;
    if (qword_100064778 != -1)
    {
      swift_once();
    }

    v183 = sub_10004C4C0();
    v182 = v115;
    v117 = v116;
    v184 = v118;
    sub_10001AC44(v110, v112, v114 & 1);

    v119 = v185;
    sub_10003B440(v185);
    v120 = v187;
    v121 = v186;
    v122 = v188;
    (*(v187 + 104))(v186, enum case for WidgetFamily.systemSmall(_:), v188);
    sub_10003B8F8(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_10004CD40();
    sub_10004CD40();
    v123 = *(v120 + 8);
    v123(v121, v122);
    v123(v119, v122);
    if (v219 == v211)
    {
      if (qword_100064768 != -1)
      {
        swift_once();
      }

      v124 = &qword_100066628;
    }

    else
    {
      if (qword_100064770 != -1)
      {
        swift_once();
      }

      v124 = &qword_100066630;
    }

    v126 = *v124;

    if (qword_100064758 != -1)
    {
      swift_once();
    }

    v127 = sub_10004C270();
    v128 = sub_100004D74(v127, qword_100068EF0);
    v129 = *(v127 - 8);
    v130 = v199;
    (*(v129 + 16))(v199, v128, v127);
    v131 = *(v129 + 56);
    v131(v130, 0, 1, v127);
    v132 = v201;
    sub_100007C30(v130, v201, &qword_100065250, &unk_10004E730);
    *v15 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v133 = v202;
    v134 = *(v202 + 20);
    *(v15 + v134) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v135 = *(v133 + 28);
    v131(v15 + v135, 1, 1, v127);
    *(v15 + *(v133 + 24)) = v126;
    sub_100015C48(v132, v15 + v135);
    v136 = v206;
    sub_1000410A4(v15, &v206[*(v200 + 36)], type metadata accessor for DynamicTypeFont);
    v137 = v182;
    *v136 = v183;
    *(v136 + 1) = v137;
    v136[16] = v117 & 1;
    *(v136 + 3) = v184;
    sub_100015D1C(v15);
    v138 = v198;
    type metadata accessor for SingleLineTextObserver.State(0);
    sub_10003B8F8(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State, &unk_10004ED08);
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    sub_10004C730();
    v109 = v138;
    sub_10004C040();
    v139 = v193;
    sub_100007C30(v206, v193, &qword_100065258, &qword_100050430);
    v140 = &v139[*(v203 + 36)];
    v141 = v224;
    v140[4] = v223;
    v140[5] = v141;
    v140[6] = v225;
    v142 = v220;
    *v140 = v219;
    v140[1] = v142;
    v143 = v222;
    v140[2] = v221;
    v140[3] = v143;
    v144 = swift_getKeyPath();
    v145 = v139;
    v146 = v191;
    sub_100007C30(v145, v191, &qword_1000668C0, &qword_100050528);
    v147 = &v146[*(v205 + 36)];
    *v147 = v144;
    v147[1] = 0xC000000000000000;
    v148 = sub_10004C600();
    v149 = swift_getKeyPath();
    v150 = v146;
    v151 = v192;
    sub_100007C30(v150, v192, &qword_1000668C8, &qword_100050530);
    v152 = &v151[*(v204 + 36)];
    *v152 = v149;
    v152[1] = v148;
    sub_10004BF20();
    v153 = sub_10004BFE0();
    v155 = v154;
    v156 = v151;
    v157 = v190;
    sub_100007C30(v156, v190, &qword_1000668D0, &qword_100050538);
    v33 = v207;
    v158 = &v157[*(v207 + 36)];
    *v158 = v153;
    v158[1] = v155;
    v158[2] = 2;
    v159 = v157;
    v160 = v189;
    sub_100007C30(v159, v189, &qword_1000668D8, &qword_100050540);
    v10 = v208;
    sub_100007C30(v160, v208, &qword_1000668D8, &qword_100050540);
    v125 = 0;
    a1 = v210;
  }

  else
  {
    v125 = 1;
  }

  (*(v195 + 56))(v10, v125, 1, v33);
  v210 = *(a1 + *(v109 + 14) + 16);
  v161 = v209;
  v162 = v194;
  sub_100003E3C(v209, v194, &qword_1000668F8, &qword_100050560);
  v163 = v196;
  sub_100003E3C(v10, v196, &qword_1000668B8, &qword_100050520);
  v164 = v197;
  *v197 = 0;
  *(v164 + 8) = 0;
  v165 = sub_100003650(&qword_100066900, &qword_100050568);
  sub_100003E3C(v162, v164 + v165[12], &qword_1000668F8, &qword_100050560);
  sub_100003E3C(v163, v164 + v165[16], &qword_1000668B8, &qword_100050520);
  v166 = v164 + v165[20];
  *v166 = v210;
  v166[8] = 0;
  sub_100003EA4(v10, &qword_1000668B8, &qword_100050520);
  sub_100003EA4(v161, &qword_1000668F8, &qword_100050560);
  sub_100003EA4(v163, &qword_1000668B8, &qword_100050520);
  return sub_100003EA4(v162, &qword_1000668F8, &qword_100050560);
}

uint64_t sub_10004023C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10004C710();
  a1[1] = v3;
  v4 = sub_100003650(&qword_1000667C0, &qword_100050320);
  sub_10003D2F0(v1, a1 + *(v4 + 44));
  result = sub_100003650(&qword_1000667C8, &qword_100050328);
  *(a1 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_1000402B4()
{
  result = qword_1000667F0;
  if (!qword_1000667F0)
  {
    sub_100003698(&qword_1000667E8, &qword_100050348);
    sub_100040340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000667F0);
  }

  return result;
}

unint64_t sub_100040340()
{
  result = qword_1000667F8;
  if (!qword_1000667F8)
  {
    sub_100003698(&qword_100066800, &qword_100050350);
    sub_1000403CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000667F8);
  }

  return result;
}

unint64_t sub_1000403CC()
{
  result = qword_100066808;
  if (!qword_100066808)
  {
    sub_100003698(&qword_100066810, &qword_100050358);
    sub_100040458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066808);
  }

  return result;
}

unint64_t sub_100040458()
{
  result = qword_100066818;
  if (!qword_100066818)
  {
    sub_100003698(&qword_100066820, &qword_100050360);
    sub_1000404E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066818);
  }

  return result;
}

unint64_t sub_1000404E4()
{
  result = qword_100066828;
  if (!qword_100066828)
  {
    sub_100003698(&qword_100066830, &qword_100050368);
    sub_100003D30(&qword_100066838, &qword_100066840, &qword_100050370, &protocol conformance descriptor for VStack<A>);
    sub_100003D30(&qword_100066848, &qword_100066850, &qword_100050378, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066828);
  }

  return result;
}

void sub_1000405C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100040634()
{
  v1 = sub_10004C270();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100040768(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_10004C270() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10003BA00(a1, *(v2 + 48), v2 + v6, *(v2 + v7), a2, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + v8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100040864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1000408B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C0B0();
  *a1 = result;
  return result;
}

uint64_t sub_100040914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C0F0();
  *a1 = result;
  return result;
}

uint64_t sub_100040940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C0F0();
  *a1 = result;
  return result;
}

uint64_t sub_100040A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C0B0();
  *a1 = result;
  return result;
}

uint64_t sub_100040ABC()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double sub_100040BB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10004BFC0() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 40);

  return sub_10003C27C(v4, a1, v5);
}

unint64_t sub_100040C80()
{
  result = qword_100066908;
  if (!qword_100066908)
  {
    sub_100003698(&qword_1000668E8, &qword_100050550);
    sub_100040D3C();
    sub_10003B8F8(&qword_100066940, type metadata accessor for ColorSchemeAwarePlusBlend, &unk_100050B6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066908);
  }

  return result;
}

unint64_t sub_100040D3C()
{
  result = qword_100066910;
  if (!qword_100066910)
  {
    sub_100003698(&qword_1000668E0, &qword_100050548);
    sub_100040DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066910);
  }

  return result;
}

unint64_t sub_100040DC8()
{
  result = qword_100066918;
  if (!qword_100066918)
  {
    sub_100003698(&qword_1000668D8, &qword_100050540);
    v3 = sub_100040E54();
    sub_100041050(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066918);
  }

  return result;
}

unint64_t sub_100040E54()
{
  result = qword_100066920;
  if (!qword_100066920)
  {
    sub_100003698(&qword_1000668D0, &qword_100050538);
    sub_100040F0C();
    sub_100003D30(&qword_100065200, &qword_100065208, &qword_10004E6E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066920);
  }

  return result;
}

unint64_t sub_100040F0C()
{
  result = qword_100066928;
  if (!qword_100066928)
  {
    sub_100003698(&qword_1000668C8, &qword_100050530);
    sub_100040FC4();
    sub_100003D30(&qword_100065318, &qword_100065320, &qword_10004E780, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066928);
  }

  return result;
}

unint64_t sub_100040FC4()
{
  result = qword_100066930;
  if (!qword_100066930)
  {
    sub_100003698(&qword_1000668C0, &qword_100050528);
    sub_1000154DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066930);
  }

  return result;
}

unint64_t sub_100041050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100066938;
  if (!qword_100066938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066938);
  }

  return result;
}

uint64_t sub_1000410A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100041110()
{
  result = qword_100066948;
  if (!qword_100066948)
  {
    sub_100003698(&qword_1000667C8, &qword_100050328);
    sub_100003D30(&qword_100066950, &qword_100066958, qword_1000505F0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066948);
  }

  return result;
}

uint64_t sub_1000411D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100043438(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_10004BAC0();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000427D4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100043AB0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_10004BAC0();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100042F68(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_10004BAC0();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100041390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100043604(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  else
  {
    v10 = sub_10004286C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v17 = *v4;
      if (!v13)
      {
        sub_100043D30();
        v14 = v17;
      }

      result = sub_100043288(v10, v14, v15);
      *v4 = v14;
    }
  }

  return result;
}

id sub_100041488()
{
  v1 = OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    [v4 setTimeoutIntervalForResource:5.0];
    v5 = [objc_opt_self() sessionWithConfiguration:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10004154C(uint64_t a1, double a2, double a3)
{
  v5 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10004BAC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = sub_10004BE30();
  sub_10004BCB0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100003EA4(v7, &qword_1000663A0, &unk_10004FF80);
    sub_100003650(&qword_100066A80, &qword_100050698);
    v16 = sub_10004CA90();
    sub_1000424A8(v16, v17, v18);
    swift_allocError();
    sub_10004CA60();
  }

  else
  {
    v38 = a1;
    v39 = v15;
    v36 = *(v9 + 32);
    v19 = v36(v14, v7, v8);
    v37 = v3;
    v20 = *(v3 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader_cache);
    __chkstk_darwin(v19);
    *(&v33 - 2) = v20;
    *(&v33 - 1) = v14;
    sub_100003650(&unk_100066A90, &unk_1000506A0);
    sub_10004CE30();
    v16 = aBlock[0];
    if (!aBlock[0])
    {
      sub_100003650(&qword_100066A80, &qword_100050698);
      v16 = sub_10004CA90();

      sub_100042028(v22, v14);

      v35 = sub_100041488();
      sub_10004BAA0(v23);
      v34 = v24;
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v9 + 16))(v11, v14, v8);
      v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v28 = v33;
      *(v27 + 16) = v39;
      *(v27 + 24) = v28;
      v36((v27 + v25), v11, v8);
      *(v27 + v26) = v16;
      *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
      aBlock[4] = sub_100044134;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041D40;
      aBlock[3] = &unk_100062D38;
      v29 = _Block_copy(aBlock);

      v31 = v34;
      v30 = v35;
      v32 = [v35 dataTaskWithURL:v34 completionHandler:v29];
      _Block_release(v29);

      [v32 resume];

      (*(v9 + 8))(v14, v8);
      return v16;
    }

    (*(v9 + 8))(v14, v8);
  }

  return v16;
}

void sub_100041A14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v11 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10004BE10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v32 = v16;
    sub_100044288(a1, a2);
    sub_100044288(a1, a2);
    sub_10004BCC0();
    v20 = v19;
    v21 = objc_allocWithZone(UIImage);
    isa = sub_10004BAD0().super.isa;
    v23 = [v21 initWithData:isa scale:v20];

    sub_100044220(a1, a2);
    if (v23)
    {
      if (!a4)
      {
        sub_10004BE20();
        v28 = *(v11 + 48);
        (*(v15 + 32))(v13, v18, v32);
        *&v13[v28] = v23;
        v29 = v23;
        sub_10004CA80();
        sub_100003EA4(v13, &qword_100064A30, &qword_10004DCA8);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;

          sub_100042028(0, v33);
          sub_100044220(a1, a2);
        }

        else
        {
          sub_100044220(a1, a2);
        }

        return;
      }
    }

    sub_100044220(a1, a2);
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v27 = v24;

    sub_100042028(0, v33);
  }

  if (!a4)
  {
    sub_1000424A8(v24, v25, v26);
    swift_allocError();
  }

  swift_errorRetain();
  sub_10004CA60();
}

double sub_100041D40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_10004BAE0();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_100044220(v6, v10);

  return result;
}

id sub_100041E90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WidgetArtworkLoader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100041F8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1000427D4(a2);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double sub_100042028(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v23 = a1;
  v3 = sub_10004C820();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004BAC0();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v20);
  v7 = sub_10004C7F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + 16);
  sub_100003650(&unk_100066AA0, &unk_1000506B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004DC70;
  sub_10004C7E0();
  aBlock[0] = v11;
  sub_10004447C(&qword_100064A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003650(&unk_100066AB0, &qword_10004DCA0);
  sub_1000444C4(&qword_100064A28, &unk_100066AB0, &qword_10004DCA0);
  sub_10004CED0();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v20;
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v20);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v5 + 32))(v15 + v14, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1000443EC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007830;
  aBlock[3] = &unk_100062DB0;
  v16 = _Block_copy(aBlock);

  v17 = v24;
  sub_10004C800();
  sub_10004CE40();
  _Block_release(v16);
  (*(v25 + 8))(v17, v26);
  (*(v8 + 8))(v10, v7);

  return result;
}

uint64_t sub_100042450()
{

  return _swift_deallocClassInstance(v0, 32, 7, v1);
}

unint64_t sub_1000424A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100066A88;
  if (!qword_100066A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A88);
  }

  return result;
}

uint64_t sub_1000424FC()
{
  v10 = sub_10004CE10();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004CE00();
  __chkstk_darwin(v4);
  v5 = sub_10004C820();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100007874();
  v9[0] = "@NSURLResponse16@NSError24";
  v9[1] = v6;
  sub_10004C810();
  sub_100003650(&qword_100066AE8, &qword_1000506D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004DC70;
  sub_10004CDF0();
  v11 = v7;
  sub_10004447C(&qword_100066AF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003650(&qword_100066AF8, &qword_1000506D8);
  sub_1000444C4(&qword_100066B00, &qword_100066AF8, &qword_1000506D8);
  sub_10004CED0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + 16) = sub_10004CE50();
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  return v0;
}

unint64_t sub_1000427D4(uint64_t a1)
{
  sub_10004BAC0();
  sub_10004447C(&qword_100066AC8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_10004CCC0();

  return sub_100043838(a1, v2);
}

unint64_t sub_10004286C(uint64_t a1, uint64_t a2)
{
  sub_10004D060();
  sub_10004CD20();
  v4 = sub_10004D0A0();

  return sub_1000439F8(a1, a2, v4);
}

void sub_1000428E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004BAC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100003650(&qword_100066AC0, &qword_1000506C0);
  v40 = v4;
  v10 = sub_10004CFC0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10004447C(&qword_100066AC8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_10004CCC0();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100042CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003650(&unk_100066B10, &unk_1000507A0);
  v35 = v4;
  v6 = sub_10004CFC0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_10004D060();
      sub_10004CD20();
      v25 = sub_10004D0A0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100042F68(int64_t a1, uint64_t a2)
{
  v38 = sub_10004BAC0();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_10004CEE0();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10004447C(&qword_100066AC8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v22 = sub_10004CCC0();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_100043288(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_10004CEE0() + 1) & ~v6;
    do
    {
      sub_10004D060();

      sub_10004CD20();
      v10 = sub_10004D0A0();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100043438(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004BAC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000427D4(a2);
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
      sub_100043AB0();
      goto LABEL_7;
    }

    sub_1000428E4(v17, a3 & 1);
    v21 = sub_1000427D4(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100043780(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_10004D000();
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
  *(v20[7] + 8 * v14) = a1;
}

void sub_100043604(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004286C(a2, a3);
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
      sub_100042CC0(v16, a4 & 1);
      v11 = sub_10004286C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10004D000();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100043D30();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_100043780(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004BAC0();
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

unint64_t sub_100043838(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10004BAC0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
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
      sub_10004447C(&qword_100066AD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = sub_10004CD00();
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

unint64_t sub_1000439F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004CFF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_100043AB0()
{
  v1 = v0;
  v33 = sub_10004BAC0();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003650(&qword_100066AC0, &qword_1000506C0);
  v3 = *v0;
  v4 = sub_10004CFB0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
}

void sub_100043D30()
{
  v1 = v0;
  sub_100003650(&unk_100066B10, &unk_1000507A0);
  v2 = *v0;
  v3 = sub_10004CFB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

double sub_100043EA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10004BAC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();

    sub_1000411D0(v9, v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100043FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041F8C(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100044004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004403C()
{
  v1 = sub_10004BAC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100044134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10004BAC0() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_100041A14(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_100044208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100044220(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100044234(a1, a2);
  }

  return result;
}

double sub_100044234(uint64_t a1, unint64_t a2)
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

double sub_100044288(uint64_t a1, unint64_t a2)
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

uint64_t sub_1000442DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044314()
{
  v1 = sub_10004BAC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_1000443EC()
{
  v1 = *(sub_10004BAC0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100043EA0(v3, v0 + v2, v4);
}

uint64_t sub_10004447C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000444C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100066B08;
  if (!qword_100066B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B08);
  }

  return result;
}

unint64_t sub_1000445B8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_100046E18(*a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1000445EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v44 = type metadata accessor for TodayWidgetCardCollection(0);
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v32 - v13;
  v36 = type metadata accessor for TodayWidgetContainer(0);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v33 = v9;
    v34 = a1;
    v35 = a3;
    v16 = a2 + 32;
    v41 = "WidgetArtworkCache.accessQueue";
    v40 = xmmword_10004E4F0;
    do
    {
      swift_errorRetain();
      if (qword_1000646A8 != -1)
      {
        swift_once();
      }

      v17 = sub_10004CAD0();
      sub_100004D74(v17, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      sub_10004C8D0();
      *(swift_allocObject() + 16) = v40;
      sub_10004C850();
      swift_getErrorValue();
      v18 = sub_10004D010();
      v45[3] = &type metadata for String;
      v45[0] = v18;
      v45[1] = v19;
      sub_10004C8C0();
      sub_100003EA4(v45, &qword_100064A10, &qword_10004FB00);
      sub_10004C9E0();

      v16 += 8;
      --v15;
    }

    while (v15);
    a1 = v34;
    v20 = *(v34 + 16);
    v9 = v33;
    if (!v20)
    {
      v21 = sub_10004BC70();
      sub_100044CD0();
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, enum case for ResolveAllError.noValuesAndErrors(_:), v21);
      sub_10004CA60();
    }

    goto LABEL_9;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
LABEL_9:
    v24 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = *(v9 + 72);
    v26 = (v39 + 48);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v28 = v42;
      sub_100030E60(v24, v42);
      sub_100044BA0(v28, v11);
      if ((*v26)(v11, 1, v44) == 1)
      {
        sub_100003EA4(v11, &qword_100065EB8, qword_1000507B0);
      }

      else
      {
        sub_100044C6C(v11, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000353C8(0, v27[2] + 1, 1, v27);
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_1000353C8((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        sub_100044C6C(v43, v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30);
      }

      v24 += v25;
      --v20;
    }

    while (v20);
    goto LABEL_19;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_19:
  v31 = v37;
  sub_10004BDC0();
  *v31 = v27;
  sub_10004CA80();
  return sub_100044C10(v31);
}

uint64_t type metadata accessor for TodayWidgetContainer(uint64_t a1)
{
  result = qword_100066BE0;
  if (!qword_100066BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044C10(uint64_t a1)
{
  v2 = type metadata accessor for TodayWidgetContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayWidgetCardCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100044CD0()
{
  result = qword_100066B80;
  if (!qword_100066B80)
  {
    sub_10004BC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B80);
  }

  return result;
}

uint64_t sub_100044D3C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BB40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100044DFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10004BB40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100044EA0(uint64_t a1)
{
  sub_100044F24(319);
  if (v1 <= 0x3F)
  {
    sub_10004BB40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100044F24(uint64_t a1)
{
  if (!qword_100066BF0)
  {
    type metadata accessor for TodayWidgetCardCollection(255);
    v1 = sub_10004CDB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100066BF0);
    }
  }
}

uint64_t sub_100044F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100045070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 2 * -a2;
    v11[3] = 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayWidgetEntryView(uint64_t a1)
{
  result = qword_100066C78;
  if (!qword_100066C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004518C(uint64_t a1)
{
  sub_100045200(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100045200(uint64_t a1)
{
  if (!qword_100065010)
  {
    sub_10004CB70();
    v1 = sub_10004BF10();
    if (!v2)
    {
      atomic_store(v1, &qword_100065010);
    }
  }
}

uint64_t sub_100045298(uint64_t a1)
{
  v2 = sub_10004C270();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10004C0A0();
}

uint64_t sub_100045360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100003E3C(v2, &v14 - v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100045560@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v76 = type metadata accessor for TodayWidgetFallbackEntryView(0);
  __chkstk_darwin(v76);
  v70 = (&v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_100003650(&qword_100066CB0, &qword_100050888);
  __chkstk_darwin(v77);
  v78 = &v61 - v3;
  v75 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  __chkstk_darwin(v75);
  v67 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v72 = sub_100003650(&qword_100066CB8, &unk_100050890);
  __chkstk_darwin(v72);
  v74 = &v61 - v7;
  v8 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v8 - 8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v61 - v11;
  v73 = type metadata accessor for TodayWidgetLargeEntryView(0);
  __chkstk_darwin(v73);
  v65 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v68 = &v61 - v14;
  v15 = sub_10004CB70();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v22 = sub_100003650(&qword_100066CC0, &qword_1000508A0);
  __chkstk_darwin(v22);
  v71 = &v61 - v23;
  v24 = (v1 + *(type metadata accessor for TodayWidgetEntryView(0) + 20));
  v26 = *v24;
  v25 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (v27 < 0)
  {
    KeyPath = swift_getKeyPath();
    v42 = v70;
    *v70 = KeyPath;
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v43 = swift_getKeyPath();
    v44 = v76;
    *(v42 + *(v76 + 20)) = v43;
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v45 = v42 + *(v44 + 24);
    *v45 = v26;
    *(v45 + 8) = v25;
    *(v45 + 16) = v27 & 1;
    *(v45 + 24) = v28;
    sub_1000463E8(v42, v78, type metadata accessor for TodayWidgetFallbackEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100046124();
    sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView, &unk_10004E8E0);

    sub_10004C320();
    return sub_100046450(v42, type metadata accessor for TodayWidgetFallbackEntryView);
  }

  v62 = v24[2];
  v63 = v25;
  v70 = v22;

  sub_100045360(v21);
  (*(v16 + 104))(v18, enum case for WidgetFamily.systemLarge(_:), v15);
  sub_100046210(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v29 = *(v16 + 8);
  v29(v18, v15);
  v29(v21, v15);
  v30 = *(v26 + 16);
  if (v81 != v80)
  {
    v31 = v71;
    if (v30)
    {
      v47 = type metadata accessor for WidgetTodayCard(0);
      v48 = *(v47 - 8);
      v49 = v64;
      sub_1000463E8(v26 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v64, type metadata accessor for WidgetTodayCard);
      sub_100046258(v26, v63, v62, v28);
      (*(v48 + 56))(v49, 0, 1, v47);
    }

    else
    {
      sub_100046258(v26, v63, v62, v28);
      v57 = type metadata accessor for WidgetTodayCard(0);
      v49 = v64;
      (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
    }

    v51 = v78;
    v58 = swift_getKeyPath();
    v59 = v67;
    *v67 = v58;
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    sub_1000462A8(v49, v59 + *(v75 + 20));
    v60 = v69;
    sub_100046380(v59, v69, type metadata accessor for TodayWidgetSmallMediumEntryView);
    sub_1000463E8(v60, v74, type metadata accessor for TodayWidgetSmallMediumEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView, &unk_10004F95C);
    sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView, &unk_10004F5F0);
    sub_10004C320();
    sub_100046450(v60, type metadata accessor for TodayWidgetSmallMediumEntryView);
    goto LABEL_14;
  }

  v31 = v71;
  v32 = v28;
  if (!v30)
  {
    v38 = _swiftEmptyArrayStorage;
    v39 = v66;
    v40 = v63;
    goto LABEL_10;
  }

  v33 = (2 * v30) | 1;
  v34 = type metadata accessor for WidgetTodayCard(0);
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  sub_100046650(v26, v26 + v36, 1, v33);
  v38 = v37;
  v39 = v66;
  v40 = v63;
  if (!*(v26 + 16))
  {
LABEL_10:
    sub_100046258(v26, v40, v62, v32);
    v50 = type metadata accessor for WidgetTodayCard(0);
    (*(*(v50 - 8) + 56))(v39, 1, 1, v50);
    goto LABEL_11;
  }

  sub_1000463E8(v26 + v36, v66, type metadata accessor for WidgetTodayCard);
  sub_100046258(v26, v40, v62, v32);
  (*(v35 + 56))(v39, 0, 1, v34);
LABEL_11:
  v51 = v78;
  v52 = swift_getKeyPath();
  v53 = v65;
  *v65 = v52;
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v54 = v73;
  sub_1000462A8(v39, v53 + *(v73 + 20));
  *(v53 + *(v54 + 24)) = v38;
  v55 = v53;
  v56 = v68;
  sub_100046380(v55, v68, type metadata accessor for TodayWidgetLargeEntryView);
  sub_1000463E8(v56, v74, type metadata accessor for TodayWidgetLargeEntryView);
  swift_storeEnumTagMultiPayload();
  sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView, &unk_10004F95C);
  sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView, &unk_10004F5F0);
  sub_10004C320();
  sub_100046450(v56, type metadata accessor for TodayWidgetLargeEntryView);
LABEL_14:
  sub_100003E3C(v31, v51, &qword_100066CC0, &qword_1000508A0);
  swift_storeEnumTagMultiPayload();
  sub_100046124();
  sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView, &unk_10004E8E0);
  sub_10004C320();
  return sub_100046318(v31);
}

unint64_t sub_100046124()
{
  result = qword_100066CC8;
  if (!qword_100066CC8)
  {
    sub_100003698(&qword_100066CC0, &qword_1000508A0);
    sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView, &unk_10004F95C);
    sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView, &unk_10004F5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066CC8);
  }

  return result;
}

uint64_t sub_100046210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100046258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_1000462A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046318(uint64_t a1)
{
  v2 = sub_100003650(&qword_100066CC0, &qword_1000508A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000463E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000464B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003650(&qword_100065DA0, &qword_10004F820);
      v7 = *(type metadata accessor for AppIconConfiguration(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for AppIconConfiguration(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100046650(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003650(&qword_100065D70, &qword_10004F800);
      v7 = *(type metadata accessor for WidgetTodayCard(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for WidgetTodayCard(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_1000467F4()
{
  result = qword_100066CE0;
  if (!qword_100066CE0)
  {
    sub_100003698(&qword_100066CE8, &unk_100050910);
    sub_100046124();
    sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView, &unk_10004E8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066CE0);
  }

  return result;
}

uint64_t sub_1000468B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v44 = type metadata accessor for WidgetTodayCard(0);
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v32 - v13;
  v36 = type metadata accessor for TodayWidgetCardCollection(0);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v33 = v9;
    v34 = a1;
    v35 = a3;
    v16 = a2 + 32;
    v41 = "ayWidgetContainer: ";
    v40 = xmmword_10004E4F0;
    do
    {
      swift_errorRetain();
      if (qword_1000646A8 != -1)
      {
        swift_once();
      }

      v17 = sub_10004CAD0();
      sub_100004D74(v17, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      sub_10004C8D0();
      *(swift_allocObject() + 16) = v40;
      sub_10004C850();
      swift_getErrorValue();
      v18 = sub_10004D010();
      v45[3] = &type metadata for String;
      v45[0] = v18;
      v45[1] = v19;
      sub_10004C8C0();
      sub_100003EA4(v45, &qword_100064A10, &qword_10004FB00);
      sub_10004C9E0();

      v16 += 8;
      --v15;
    }

    while (v15);
    a1 = v34;
    v20 = *(v34 + 16);
    v9 = v33;
    if (!v20)
    {
      v21 = sub_10004BC70();
      sub_100044CD0();
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, enum case for ResolveAllError.noValuesAndErrors(_:), v21);
      sub_10004CA60();
    }

    goto LABEL_9;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
LABEL_9:
    v24 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = *(v9 + 72);
    v26 = (v39 + 48);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v28 = v42;
      sub_100047114(v24, v42);
      sub_1000462A8(v28, v11);
      if ((*v26)(v11, 1, v44) == 1)
      {
        sub_100003EA4(v11, &qword_100065BA8, qword_10004F5A8);
      }

      else
      {
        sub_100018C0C(v11, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000353F0(0, v27[2] + 1, 1, v27);
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_1000353F0((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        sub_100018C0C(v43, v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30);
      }

      v24 += v25;
      --v20;
    }

    while (v20);
    goto LABEL_19;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_19:
  v31 = v37;
  sub_10004BDF0();
  *v31 = v27;
  sub_10004CA80();
  return sub_100047184(v31);
}

unint64_t sub_100046E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003650(&qword_100066CF0, qword_100050920);
  v7 = sub_10004CA90();
  v19 = a1;
  v8 = sub_10004BE00();
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      result = sub_10004CF50();
      if (v11 < 0)
      {
        break;
      }

      v18 = v7;
      if (v10)
      {
        v13 = sub_10004CF90();
      }

      else
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      v7 = v9 & 0xC000000000000001;
      v10 = v13 & ~(v13 >> 63);
      while (v10 != v14)
      {
        if (v7)
        {
          v15 = sub_10004CF20();
        }

        else
        {
          if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v9 + 8 * v14 + 32);
        }

        sub_100004F70(v15, v14 == 0, a2, a3, a4);

        sub_10004CF30();
        sub_10004CF60();
        sub_10004CF70();
        sub_10004CF40();
        if (v11 == ++v14)
        {

          v7 = v18;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v11 = sub_10004CF90();
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

LABEL_19:
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v19;
    sub_100007874();

    v17 = sub_10004CE20();
    type metadata accessor for WidgetTodayCard(0);
    sub_10004BBB0();

    return v7;
  }

  return result;
}

uint64_t sub_100047080()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for TodayWidgetCardCollection(uint64_t a1)
{
  result = qword_100066D50;
  if (!qword_100066D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100047114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047184(uint64_t a1)
{
  v2 = type metadata accessor for TodayWidgetCardCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000471F4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BB40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000472B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10004BB40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100047358(uint64_t a1)
{
  sub_1000473DC(319);
  if (v1 <= 0x3F)
  {
    sub_10004BB40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000473DC(uint64_t a1)
{
  if (!qword_100065F28)
  {
    type metadata accessor for WidgetTodayCard(255);
    v1 = sub_10004CDB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100065F28);
    }
  }
}

uint64_t sub_100047434@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BrandedTodayCardView(0);
  sub_100003E3C(v1 + *(v10 + 20), v9, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004C270();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10004763C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100064960, &qword_10004DC30);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BrandedTodayCardView(0);
  sub_100003E3C(v1 + *(v10 + 28), v9, &qword_100064960, &qword_10004DC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100047858(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
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

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[8]);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = type metadata accessor for CardDetailView.Heading(0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_100047AA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100003650(&qword_100064F90, qword_10004E280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v18 = type metadata accessor for CardDetailView.Heading(0);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[10];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t type metadata accessor for BrandedTodayCardView(uint64_t a1)
{
  result = qword_100066DE0;
  if (!qword_100066DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100047D20(uint64_t a1)
{
  sub_100047ECC(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100047ECC(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      sub_100047ECC(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_100047ECC(319, &qword_1000665B0, &type metadata accessor for WidgetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_10000AE54(319, &qword_100064AB8, UIImage_ptr);
          if (v5 <= 0x3F)
          {
            sub_100047F20(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CardDetailView.Heading(319);
              if (v7 <= 0x3F)
              {
                sub_10001FE50();
                if (v8 <= 0x3F)
                {
                  sub_10001FEA0(319);
                  if (v9 <= 0x3F)
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

void sub_100047ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100047F20(uint64_t a1)
{
  if (!qword_100065990)
  {
    sub_10000AE54(255, &qword_100064DC8, UIColor_ptr);
    v1 = sub_10004CEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100065990);
    }
  }
}

unint64_t sub_100047F88()
{
  result = qword_1000659A8;
  if (!qword_1000659A8)
  {
    type metadata accessor for SingleLineTextObserver.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000659A8);
  }

  return result;
}

uint64_t sub_100047FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10004C290();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100003650(&qword_100066E38, &qword_1000509F8);
  sub_100048164(a2, a3 + *(v6 + 44));
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v7 = (a3 + *(sub_100003650(&qword_100066E40, &qword_100050A00) + 36));
  *v7 = v16;
  v7[1] = v17;
  v7[2] = v18;
  *(a3 + *(sub_100003650(&qword_100066E48, &qword_100050A08) + 36)) = 0;
  v8 = sub_10004C720();
  v10 = v9;
  v11 = (a3 + *(sub_100003650(&qword_100066E50, &qword_100050A10) + 36));
  *v11 = sub_10004C720();
  v11[1] = v12;
  v13 = sub_100003650(&qword_100066E58, &qword_100050A18);
  sub_100048854(a2, a1, (v11 + *(v13 + 44)));
  result = sub_100003650(&qword_100066E60, &unk_100050A20);
  v15 = (v11 + *(result + 36));
  *v15 = v8;
  v15[1] = v10;
  return result;
}

uint64_t sub_100048164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v3 - 8);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CardDetailView(0);
  __chkstk_darwin(v6);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v47 - v9);
  __chkstk_darwin(v11);
  v50 = v47 - v12;
  v13 = type metadata accessor for TitleView(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v49 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (v47 - v17);
  *v18 = swift_getKeyPath();
  v47[3] = sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v19 = v14[7];
  *(v18 + v19) = swift_getKeyPath();
  v47[2] = sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v20 = v14[8];
  *(v18 + v20) = swift_getKeyPath();
  v47[1] = sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v21 = (v18 + v14[9]);
  *v21 = 0u;
  v21[1] = 0u;
  *(v18 + v14[10]) = 0;
  sub_10004C720();
  sub_10004C040();
  *&v53[55] = v58;
  *&v53[71] = v59;
  *&v53[87] = v60;
  *&v53[103] = v61;
  *&v53[7] = v55;
  *&v53[23] = v56;
  v54 = 1;
  *&v53[39] = v57;
  v22 = type metadata accessor for BrandedTodayCardView(0);
  v23 = a1 + v22[10];
  v48 = v5;
  sub_1000497B8(v23, v5, type metadata accessor for CardDetailView.Heading);
  type metadata accessor for SingleLineTextObserver.State(0);
  sub_100047F88();
  v24 = sub_10004BF20();
  v25 = (a1 + v22[11]);
  v26 = v25[1];
  v47[0] = *v25;
  v27 = sub_10004BF20();
  v28 = *(a1 + v22[9]);
  if (!v28)
  {
    v29 = [objc_opt_self() clearColor];
    v28 = 0;
  }

  v30 = v28;
  v31 = sub_10004C5B0() | 0x4000000000000000;
  sub_100049750(v48, v10 + v6[8], type metadata accessor for CardDetailView.Heading);
  *v10 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[5]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[6]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v6[7];
  *(v10 + v32) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  v33 = v10 + v6[9];
  *v33 = sub_100021A7C;
  *(v33 + 1) = v24;
  v33[16] = 0;
  v34 = (v10 + v6[10]);
  *v34 = v47[0];
  v34[1] = v26;
  v35 = v10 + v6[11];
  *v35 = sub_100021A7C;
  *(v35 + 1) = v27;
  v35[16] = 0;
  *(v10 + v6[12]) = v31;
  *(v10 + v6[13]) = 0x7FF0000000000000;
  v36 = (v10 + v6[14]);
  *v36 = xmmword_10004E260;
  v36[1] = xmmword_10004E270;
  v37 = v50;
  sub_100049750(v10, v50, type metadata accessor for CardDetailView);
  v38 = v49;
  sub_1000497B8(v18, v49, type metadata accessor for TitleView);
  v39 = v51;
  sub_1000497B8(v37, v51, type metadata accessor for CardDetailView);
  v40 = v52;
  sub_1000497B8(v38, v52, type metadata accessor for TitleView);
  v41 = sub_100003650(&qword_100066E80, &qword_100050B18);
  v42 = v40 + *(v41 + 48);
  v43 = *&v53[80];
  *(v42 + 73) = *&v53[64];
  *(v42 + 89) = v43;
  *(v42 + 105) = *&v53[96];
  v44 = *&v53[16];
  *(v42 + 9) = *v53;
  *(v42 + 25) = v44;
  v45 = *&v53[48];
  *(v42 + 41) = *&v53[32];
  *v42 = 0;
  *(v42 + 8) = 1;
  *(v42 + 120) = *&v53[111];
  *(v42 + 57) = v45;
  sub_1000497B8(v39, v40 + *(v41 + 64), type metadata accessor for CardDetailView);

  sub_100049820(v37, type metadata accessor for CardDetailView);
  sub_100049820(v18, type metadata accessor for TitleView);
  sub_100049820(v39, type metadata accessor for CardDetailView);
  return sub_100049820(v38, type metadata accessor for TitleView);
}

void sub_100048854(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v80 = sub_10004CB10();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v60 - v8;
  v9 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  __chkstk_darwin(v9 - 8);
  v64 = &v60 - v10;
  v65 = sub_10004C630();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100003650(&qword_100066E68, &unk_100050A30);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v60 - v14;
  v69 = sub_100003650(&qword_100064D98, &qword_100050060);
  __chkstk_darwin(v69);
  v75 = &v60 - v15;
  v72 = sub_100003650(&qword_1000664B8, &qword_100050A40);
  __chkstk_darwin(v72);
  v77 = &v60 - v16;
  v76 = sub_100003650(&qword_100066E70, &qword_100050A48);
  __chkstk_darwin(v76);
  v81 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v79 = &v60 - v21;
  v22 = sub_10004C270();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047434(v25);
  v26 = sub_10004C260();
  v27 = *(v23 + 8);
  v68 = v22;
  v67 = v23 + 8;
  v63 = v27;
  v27(v25, v22);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  if (v26)
  {
    v31 = *(type metadata accessor for BrandedTodayCardView(0) + 36);
    v62 = a1;
    v32 = *(a1 + v31);
    if (!v32)
    {
      v33 = [objc_opt_self() clearColor];
      v32 = 0;
    }

    v34 = v32;
    v28 = sub_10004C5B0();
    sub_10004BFA0();
    sub_10004BFA0();
    sub_10004C720();
    sub_10004BF90();
    v29 = v87;
    v30 = v88;
    v84 = v90;
    v85 = v89;
    v82 = v92;
    v83 = v91;

    a1 = v62;
  }

  v61 = v30;
  v62 = v29;
  v35 = v28;
  v36 = *(a1 + *(type metadata accessor for BrandedTodayCardView(0) + 32));
  sub_10004C620();
  v37 = v65;
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v65);
  sub_10004C680();

  (*(v11 + 8))(v13, v37);
  v38 = v66;
  sub_10004763C(v66);
  sub_10004CAF0();
  v39 = sub_10004CAE0();
  v40 = *(v78 + 8);
  v41 = v80;
  v40(v6, v80);
  v40(v38, v41);
  v42 = v64;
  if (v39)
  {
    sub_10004CB20();
  }

  else
  {
    sub_10004CB40();
  }

  v43 = sub_10004CB50();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v70;
  sub_10004C670();

  sub_1000495F4(v42);
  v45 = v75;
  (*(v71 + 32))(v75, v44, v73);
  v46 = v45 + *(v69 + 36);
  *v46 = 0;
  *(v46 + 8) = 257;
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v47 = v77;
  sub_100007C30(v45, v77, &qword_100064D98, &qword_100050060);
  v48 = (v47 + *(v72 + 36));
  v49 = v94;
  *v48 = v93;
  v48[1] = v49;
  v48[2] = v95;
  sub_100047434(v25);
  LOBYTE(v44) = sub_10004C260();
  v63(v25, v68);
  if (v44)
  {
    v50 = 0.6;
  }

  else
  {
    v50 = 1.0;
  }

  v51 = v74;
  sub_100007C30(v47, v74, &qword_1000664B8, &qword_100050A40);
  *(v51 + *(v76 + 36)) = v50;
  v52 = v79;
  sub_100007C30(v51, v79, &qword_100066E70, &qword_100050A48);
  v53 = v81;
  sub_10004965C(v52, v81);
  v54 = v62;
  *a3 = v35;
  a3[1] = v54;
  v56 = v84;
  v55 = v85;
  a3[2] = v61;
  a3[3] = v55;
  v57 = v82;
  v58 = v83;
  a3[4] = v56;
  a3[5] = v58;
  a3[6] = v57;
  v59 = sub_100003650(&qword_100066E78, &qword_100050A50);
  sub_10004965C(v53, a3 + *(v59 + 48));
  sub_1000496CC(v52);
  sub_1000496CC(v53);
}

uint64_t sub_10004913C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000497B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrandedTodayCardView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100049750(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BrandedTodayCardView);
  *a2 = sub_100049574;
  a2[1] = v7;
  return result;
}

uint64_t sub_100049250()
{
  v1 = type metadata accessor for BrandedTodayCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10004CB70();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10004C270();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_100003650(&qword_100064958, &qword_10004FA30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10004BF00();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_100003650(&qword_100064960, &qword_10004DC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10004CB10();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v5 + v1[10];
  type metadata accessor for CardDetailView.Heading(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10004BB40();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  else
  {
  }

  sub_100021670(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100021670(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrandedTodayCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100047FFC(a1, v6, a2);
}

uint64_t sub_1000495F4(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004965C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100066E70, &qword_100050A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000496CC(uint64_t a1)
{
  v2 = sub_100003650(&qword_100066E70, &qword_100050A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000497B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100049820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100049884()
{
  result = qword_100066E88;
  if (!qword_100066E88)
  {
    sub_100003698(&qword_100066E90, qword_100050B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E88);
  }

  return result;
}

uint64_t sub_1000498FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100049988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ColorSchemeAwarePlusBlend(uint64_t a1)
{
  result = qword_100066EF0;
  if (!qword_100066EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049A50(uint64_t a1)
{
  sub_10000420C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100049AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100064958, &qword_10004FA30);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100049F3C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004BF00();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100049CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_10004BF00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10004C740();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049AD8(v9);
  (*(v4 + 104))(v6, enum case for ColorScheme.dark(_:), v3);
  v14 = sub_10004BEF0();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = &enum case for BlendMode.plusLighter(_:);
  if ((v14 & 1) == 0)
  {
    v16 = &enum case for BlendMode.plusDarker(_:);
  }

  (*(v11 + 104))(v13, *v16, v10);
  v17 = sub_100003650(&qword_100066F28, &qword_100050BC0);
  (*(v11 + 32))(a2 + *(v17 + 36), v13, v10);
  v18 = sub_100003650(&qword_100066F30, qword_100050BC8);
  return (*(*(v18 - 8) + 16))(a2, v21, v18);
}

uint64_t sub_100049F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100064958, &qword_10004FA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100049FB0()
{
  result = qword_100066F38;
  if (!qword_100066F38)
  {
    sub_100003698(&qword_100066F28, &qword_100050BC0);
    sub_10004A03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F38);
  }

  return result;
}

unint64_t sub_10004A03C()
{
  result = qword_100066F40;
  if (!qword_100066F40)
  {
    sub_100003698(&qword_100066F30, qword_100050BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F40);
  }

  return result;
}

uint64_t sub_10004A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004A204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for WidgetTodayCard(uint64_t a1)
{
  result = qword_100066FA0;
  if (!qword_100066FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A38C(uint64_t a1)
{
  sub_10001FE50();
  if (v1 <= 0x3F)
  {
    sub_10004A5B4(319, &qword_100064AB0, &qword_100064AB8, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_10004A550(319, &qword_100066FB0, type metadata accessor for AppIconConfiguration, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10004A5B4(319, &qword_100065990, &qword_100064DC8, UIColor_ptr);
        if (v4 <= 0x3F)
        {
          sub_10004A550(319, &qword_100066FB8, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_10004A550(319, &unk_100066FC0, &type metadata accessor for Date, &type metadata accessor for Optional);
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

void sub_10004A550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10004A5B4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10000AE54(255, a3, a4);
    v5 = sub_10004CEB0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10004A60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_27:
    v27 = 0;
    return v27 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_10004B3D4(v13, v10);
      sub_10004B3D4(v14, v6);
      if ((sub_10004BB50() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = *&v10[v16];
      v18 = *&v6[v16];
      if (v17)
      {
        if (!v18)
        {
          break;
        }

        sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
        v19 = v18;
        v20 = v17;
        v21 = sub_10004CE90();

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      v22 = v4[6];
      v23 = &v10[v22];
      v24 = v10[v22 + 16];
      v25 = &v6[v22];
      if (v24)
      {
        if ((v25[16] & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v25[16])
        {
          break;
        }

        if (*v23 != *v25 || v23[1] != *(v25 + 1))
        {
          break;
        }
      }

      if (v10[v4[7]] != v6[v4[7]] || v10[v4[8]] != v6[v4[8]])
      {
        break;
      }

      v27 = sub_10004CB30();
      sub_10004B438(v6);
      sub_10004B438(v10);
      if (v27)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v27 & 1;
    }

    sub_10004B438(v6);
    sub_10004B438(v10);
    goto LABEL_27;
  }

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10004A874()
{
  v1 = 6369134;
  v2 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_10004CF00(94);
  v23._countAndFlagsBits = 540689481;
  v23._object = 0xE400000000000000;
  sub_10004CD30(v23);
  v5 = *v0;
  v6 = *(v0 + 8);
  v24._countAndFlagsBits = *v0;
  v24._object = v6;
  sub_10004CD30(v24);
  v25._countAndFlagsBits = 0x644979726F74730ALL;
  v25._object = 0xEA0000000000203ALL;
  sub_10004CD30(v25);
  v26._countAndFlagsBits = v5;
  v26._object = v6;
  sub_10004CD30(v26);
  v27._countAndFlagsBits = 0x676E69646165680ALL;
  v27._object = 0xEA0000000000203ALL;
  sub_10004CD30(v27);
  if (*(v0 + 24))
  {
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 6369134;
  }

  v28._countAndFlagsBits = v7;
  v28._object = v8;
  sub_10004CD30(v28);

  v29._countAndFlagsBits = 0x203A656C7469740ALL;
  v29._object = 0xE800000000000000;
  sub_10004CD30(v29);
  if (*(v0 + 40))
  {
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 6369134;
  }

  v30._countAndFlagsBits = v9;
  v30._object = v10;
  sub_10004CD30(v30);

  v31._countAndFlagsBits = 0x3A6B72614473690ALL;
  v31._object = 0xE900000000000020;
  sub_10004CD30(v31);
  if (*(v0 + 48))
  {
    v11._countAndFlagsBits = 1702195828;
  }

  else
  {
    v11._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v11._object = v12;
  sub_10004CD30(v11);

  v32._object = 0x800000010005AF00;
  v32._countAndFlagsBits = 0xD000000000000017;
  sub_10004CD30(v32);
  v13 = *(v0 + 56);
  if (v13)
  {
    v14._countAndFlagsBits = 1702195828;
  }

  else
  {
    v14._countAndFlagsBits = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v14._object = v15;
  sub_10004CD30(v14);

  v33._countAndFlagsBits = 0x203A736E6F63690ALL;
  v33._object = 0xE800000000000000;
  sub_10004CD30(v33);
  type metadata accessor for AppIconConfiguration(0);
  v34._countAndFlagsBits = sub_10004CD70();
  sub_10004CD30(v34);

  v35._countAndFlagsBits = 0x203A6C72750ALL;
  v35._object = 0xE600000000000000;
  sub_10004CD30(v35);
  v16 = type metadata accessor for WidgetTodayCard(0);
  sub_10004AE7C(v0 + *(v16 + 44), v4);
  v17 = sub_10004BAC0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    sub_100003EA4(v4, &qword_1000663A0, &unk_10004FF80);
    v19 = 0xE300000000000000;
  }

  else
  {
    v1 = sub_10004BA90();
    v19 = v20;
    (*(v18 + 8))(v4, v17);
  }

  v36._countAndFlagsBits = v1;
  v36._object = v19;
  sub_10004CD30(v36);

  return v22[0];
}

Swift::Int sub_10004ABDC()
{
  sub_10004D060();
  sub_10004CD20();
  if (!*(v0 + 24))
  {
    sub_10004D080(0);
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10004D080(0);
    return sub_10004D0A0();
  }

  sub_10004D080(1u);
  sub_10004CD20();
  if (!*(v0 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10004D080(1u);
  sub_10004CD20();
  return sub_10004D0A0();
}

uint64_t sub_10004ACA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_10004ACB0(uint64_t a1)
{
  sub_10004CD20();
  if (!*(v1 + 24))
  {
    sub_10004D080(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10004D080(0);
    return;
  }

  sub_10004D080(1u);
  sub_10004CD20();
  if (!*(v1 + 40))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_10004D080(1u);

  sub_10004CD20();
}

Swift::Int sub_10004AD60(uint64_t a1)
{
  sub_10004D060();
  sub_10004CD20();
  if (!*(v1 + 24))
  {
    sub_10004D080(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10004D080(0);
    return sub_10004D0A0();
  }

  sub_10004D080(1u);
  sub_10004CD20();
  if (!*(v1 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10004D080(1u);
  sub_10004CD20();
  return sub_10004D0A0();
}

uint64_t sub_10004AE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BAC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_100003650(&qword_100067018, qword_100050CC8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (*a1 != *a2 && (sub_10004CFF0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_10004CFF0() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v15)
  {
    goto LABEL_18;
  }

  v16 = *(a1 + 40);
  v17 = *(a2 + 40);
  if (v16)
  {
    if (!v17 || (*(a1 + 32) != *(a2 + 32) || v16 != v17) && (sub_10004CFF0() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v17)
  {
    goto LABEL_18;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_18;
  }

  v20 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v20)
  {
    if (!v18)
    {
      return v18 & 1;
    }

    v30 = sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
    v29 = v18;
    v21 = v20;
    v22 = sub_10004CE90();

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v18)
  {
    goto LABEL_18;
  }

  if (sub_10004A60C(*(a1 + 64), *(a2 + 64)))
  {
    v23 = *(a1 + 72);
    v18 = *(a2 + 72);
    if (v23)
    {
      if (!v18)
      {
        return v18 & 1;
      }

      v30 = sub_10000AE54(0, &qword_100064DC8, UIColor_ptr);
      v29 = v18;
      v24 = v23;
      v25 = sub_10004CE90();

      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v18)
    {
      goto LABEL_18;
    }

    v26 = *(type metadata accessor for WidgetTodayCard(0) + 44);
    v18 = *(v11 + 48);
    sub_10004AE7C(a1 + v26, v13);
    sub_10004AE7C(a2 + v26, v18 + v13);
    v27 = *(v5 + 48);
    if (v27(v13, 1, v4) == 1)
    {
      if (v27(v18 + v13, 1, v4) == 1)
      {
        sub_100003EA4(v13, &qword_1000663A0, &unk_10004FF80);
        LOBYTE(v18) = 1;
        return v18 & 1;
      }
    }

    else
    {
      sub_10004AE7C(v13, v10);
      if (v27(v18 + v13, 1, v4) != 1)
      {
        (*(v5 + 32))(v7, v18 + v13, v4);
        sub_10004B38C(&qword_100066AD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        LOBYTE(v18) = sub_10004CD00();
        v28 = *(v5 + 8);
        v28(v7, v4);
        v28(v10, v4);
        sub_100003EA4(v13, &qword_1000663A0, &unk_10004FF80);
        return v18 & 1;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_100003EA4(v13, &qword_100067018, qword_100050CC8);
  }

LABEL_18:
  LOBYTE(v18) = 0;
  return v18 & 1;
}

uint64_t sub_10004B38C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004B3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B438(uint64_t a1)
{
  v2 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10004B4C8(int a1, int a2, int a3)
{
  if (qword_100068D80 == -1)
  {
    v3 = dword_100068D70 < a1;
    if (dword_100068D70 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10004BA50();
    a2 = v6;
    a3 = v5;
    v3 = dword_100068D70 < a1;
    if (dword_100068D70 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100068D74 > a2)
  {
    return 1;
  }

  if (dword_100068D74 < a2)
  {
    return 0;
  }

  return dword_100068D78 >= a3;
}

uint64_t sub_10004B588(int a1, int a2, int a3, int a4)
{
  if (qword_100068D88 == -1)
  {
    if (qword_100068D90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10004BA68();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100068D90)
    {
      return _availability_version_check();
    }
  }

  if (qword_100068D80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10004BA50();
    a3 = v10;
    a4 = v9;
    v8 = dword_100068D70 < v11;
    if (dword_100068D70 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100068D74 > a3)
      {
        return 1;
      }

      if (dword_100068D74 >= a3)
      {
        return dword_100068D78 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100068D70 < a2;
  if (dword_100068D70 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10004B71C(uint64_t result)
{
  v1 = qword_100068D90;
  if (qword_100068D90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100068D90 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100068D70, &dword_100068D74, &dword_100068D78);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}