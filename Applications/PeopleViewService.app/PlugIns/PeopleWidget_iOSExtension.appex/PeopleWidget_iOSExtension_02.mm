uint64_t sub_10003A76C()
{
  v1 = *(type metadata accessor for AvatarView(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003A11C(v2);
}

unint64_t sub_10003A7FC()
{
  result = qword_100055F00;
  if (!qword_100055F00)
  {
    sub_100003E08(&qword_100055ED0, &qword_1000449E0);
    sub_10003A8B8();
    sub_10003AFC8(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F00);
  }

  return result;
}

unint64_t sub_10003A8B8()
{
  result = qword_100055F08;
  if (!qword_100055F08)
  {
    sub_100003E08(&qword_100055EC8, &qword_1000449D8);
    sub_10003A970();
    sub_100004D80(&qword_100055FA8, &qword_100055FB0, &unk_100044A58, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F08);
  }

  return result;
}

unint64_t sub_10003A970()
{
  result = qword_100055F10;
  if (!qword_100055F10)
  {
    sub_100003E08(&qword_100055F18, &qword_100044A10);
    sub_10003AA28();
    sub_100004D80(&qword_100055F98, &qword_100055FA0, &qword_100044A50, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F10);
  }

  return result;
}

unint64_t sub_10003AA28()
{
  result = qword_100055F20;
  if (!qword_100055F20)
  {
    sub_100003E08(&qword_100055F28, &qword_100044A18);
    sub_10003AB9C(&qword_100055F30, &qword_100055EE8, &qword_1000449F8, sub_10003AB0C);
    sub_100004D80(&qword_100055F88, &qword_100055F90, &qword_100044A48, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F20);
  }

  return result;
}

uint64_t sub_10003AB9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003AC20()
{
  result = qword_100055F68;
  if (!qword_100055F68)
  {
    sub_100003E08(&qword_100055F70, &qword_100044A38);
    sub_100004D80(&qword_100055F78, &qword_100055F80, &qword_100044A40, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055F68);
  }

  return result;
}

unint64_t sub_10003ACD8()
{
  result = qword_100055FB8;
  if (!qword_100055FB8)
  {
    sub_100003E08(&qword_100055EF8, &qword_100044A08);
    sub_10003AB9C(&qword_100055F30, &qword_100055EE8, &qword_1000449F8, sub_10003AB0C);
    sub_100004D80(&qword_100055FC0, &qword_100055EF0, &qword_100044A00, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055FB8);
  }

  return result;
}

uint64_t sub_10003ADBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055EE0, &qword_1000449F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055EA0, &qword_1000449A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003AF0C()
{
  result = qword_100055FD0;
  if (!qword_100055FD0)
  {
    sub_100003E08(&qword_100055EA8, &qword_1000449B0);
    sub_10003AFC8(&qword_100055FD8, type metadata accessor for StatusBadgeView, &unk_1000445FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055FD0);
  }

  return result;
}

uint64_t sub_10003AFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100056058;
  if (!qword_100056058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056058);
  }

  return result;
}

unint64_t sub_10003B068()
{
  result = qword_100056060;
  if (!qword_100056060)
  {
    sub_100003E08(&qword_100056068, &qword_100044B28);
    sub_10003B0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056060);
  }

  return result;
}

unint64_t sub_10003B0F4()
{
  result = qword_100056070;
  if (!qword_100056070)
  {
    sub_100003E08(&qword_100056078, &qword_100044B30);
    sub_10003B180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056070);
  }

  return result;
}

unint64_t sub_10003B180()
{
  result = qword_100056080;
  if (!qword_100056080)
  {
    sub_100003E08(&qword_100056088, &qword_100044B38);
    sub_100004D80(&qword_100056090, &qword_100056098, &unk_100044B40, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056080);
  }

  return result;
}

uint64_t sub_10003B24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000408CC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003B35C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000408CC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for SingleContactSmallWidgetView(uint64_t a1)
{
  result = qword_1000560F8;
  if (!qword_1000560F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B4B0(uint64_t a1)
{
  sub_10003B534(319);
  if (v1 <= 0x3F)
  {
    sub_1000408CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B534(uint64_t a1)
{
  if (!qword_100054C48)
  {
    sub_100041BAC();
    v1 = sub_1000420FC();
    if (!v2)
    {
      atomic_store(v1, &qword_100054C48);
    }
  }
}

double sub_10003B5A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100036B0C(a1, a2, a3);
  sub_10004147C();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_10003B608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100036B0C(a1, a2, a3);

  return sub_10004148C();
}

uint64_t sub_10003B680(uint64_t a1)
{
  v26 = sub_100003DC0(&qword_1000546C8, &qword_100042AE0);
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - v3;
  v24 = sub_100003DC0(&qword_100056180, &qword_100044D08);
  __chkstk_darwin(v24);
  v23 = &v23 - v5;
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10004083C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100011258(a1, v8, &qword_1000546B0, &qword_100043630);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000049F8(v8, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v4, v25, v26);
    v16 = sub_100003E08(&qword_1000546C0, &unk_100044D10);
    v17 = sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10, &protocol conformance descriptor for VStack<A>);
    v27 = v16;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v19);
    *(&v23 - 2) = v25;
    v20 = sub_100003E08(&qword_1000546C0, &unk_100044D10);
    v21 = sub_100004D80(&qword_1000546D8, &qword_1000546C0, &unk_100044D10, &protocol conformance descriptor for VStack<A>);
    v27 = v20;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056188, &qword_100056180, &qword_100044D08, &protocol conformance descriptor for Link<A>);
    v22 = sub_1000419EC();
    (*(v10 + 8))(v15, v9);
    return v22;
  }
}

uint64_t sub_10003BAEC(uint64_t a1)
{
  v26 = sub_100003DC0(&qword_100055860, &unk_1000440E0);
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - v3;
  v24 = sub_100003DC0(&qword_100056168, &qword_100044D00);
  __chkstk_darwin(v24);
  v23 = &v23 - v5;
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10004083C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100011258(a1, v8, &qword_1000546B0, &qword_100043630);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000049F8(v8, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v4, v25, v26);
    v16 = sub_100003E08(&qword_100055858, &qword_1000440D8);
    v17 = sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8, &protocol conformance descriptor for VStack<A>);
    v27 = v16;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v19);
    *(&v23 - 2) = v25;
    v20 = sub_100003E08(&qword_100055858, &qword_1000440D8);
    v21 = sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8, &protocol conformance descriptor for VStack<A>);
    v27 = v20;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056170, &qword_100056168, &qword_100044D00, &protocol conformance descriptor for Link<A>);
    v22 = sub_1000419EC();
    (*(v10 + 8))(v15, v9);
    return v22;
  }
}

uint64_t sub_10003BF58(uint64_t a1)
{
  v26 = sub_100003DC0(&qword_100056138, &qword_100044BD0);
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - v3;
  v24 = sub_100003DC0(&qword_100056158, &qword_100044C20);
  __chkstk_darwin(v24);
  v23 = &v23 - v5;
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10004083C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100011258(a1, v8, &qword_1000546B0, &qword_100043630);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000049F8(v8, &qword_1000546B0, &qword_100043630);
    (*(v2 + 16))(v4, v25, v26);
    v16 = sub_100003E08(&qword_100056130, &qword_100044BC8);
    v17 = sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8, &protocol conformance descriptor for VStack<A>);
    v27 = v16;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    return sub_1000419EC();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v19);
    *(&v23 - 2) = v25;
    v20 = sub_100003E08(&qword_100056130, &qword_100044BC8);
    v21 = sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8, &protocol conformance descriptor for VStack<A>);
    v27 = v20;
    v28 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1000416FC();
    sub_100004D80(&qword_100056160, &qword_100056158, &qword_100044C20, &protocol conformance descriptor for Link<A>);
    v22 = sub_1000419EC();
    (*(v10 + 8))(v15, v9);
    return v22;
  }
}

uint64_t sub_10003C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v3 - 8);
  v47 = &v45 - v4;
  v5 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v48 = sub_1000415AC();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003DC0(&qword_100056130, &qword_100044BC8);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v49 = sub_100003DC0(&qword_100056138, &qword_100044BD0);
  v14 = *(v49 - 8);
  __chkstk_darwin(v49);
  v16 = &v45 - v15;
  v50 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v17 = __chkstk_darwin(v50);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v45 - v19;
  v51 = sub_100003DC0(&qword_100054678, &qword_100042AB0);
  __chkstk_darwin(v51);
  v53 = &v45 - v20;
  *v13 = sub_1000414FC();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  v21 = sub_100003DC0(&qword_100056140, &qword_100044BD8);
  sub_10003CAAC(v2, &v13[*(v21 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_100056148, &qword_100056130, &qword_100044BC8, &protocol conformance descriptor for VStack<A>);
  sub_10004186C();
  (*(v8 + 8))(v10, v48);
  v22 = v47;
  sub_1000049F8(v13, &qword_100056130, &qword_100044BC8);
  sub_100041B4C();
  v23 = sub_10004083C();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  v24 = sub_10003BF58(v7);
  sub_1000049F8(v7, &qword_1000546B0, &qword_100043630);
  (*(v14 + 8))(v16, v49);
  v55 = v24;
  sub_100011258(v2, v22, &qword_1000546B8, &unk_100042AD0);
  v25 = sub_100041BAC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v22, 1, v25) == 1)
  {
    sub_1000049F8(v22, &qword_1000546B8, &unk_100042AD0);
    v27 = sub_100041F4C();
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v30 = sub_100041B6C();
    v31 = v32;
    v27 = (*(v26 + 8))(v22, v25);
  }

  *&v56 = v30;
  *(&v56 + 1) = v31;
  sub_100004924(v27, v28, v29);
  v33 = v46;
  sub_10004183C();

  sub_100040B7C();
  v34 = v52;
  sub_10004124C();

  sub_1000049F8(v33, &qword_100054698, &qword_100042AB8);
  sub_100041A9C();
  sub_10004125C();
  v35 = v53;
  sub_100004C8C(v34, v53, &qword_100054698, &qword_100042AB8);
  v36 = (v35 + *(v51 + 36));
  v37 = v61;
  v36[4] = v60;
  v36[5] = v37;
  v36[6] = v62;
  v38 = v57;
  *v36 = v56;
  v36[1] = v38;
  v39 = v59;
  v36[2] = v58;
  v36[3] = v39;
  KeyPath = swift_getKeyPath();
  v41 = sub_100003DC0(&qword_100056150, &unk_100044C10);
  v42 = v54;
  v43 = (v54 + *(v41 + 36));
  *v43 = KeyPath;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *(v43 + *(type metadata accessor for TimeStampModifier(0) + 20)) = 1;
  return sub_100004C8C(v35, v42, &qword_100054678, &qword_100042AB0);
}

uint64_t sub_10003CAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v128 = sub_100040E0C();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v130 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for StatusAndNameView(0);
  v4 = __chkstk_darwin(v132);
  v134 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v118 = (v109 - v7);
  __chkstk_darwin(v6);
  v133 = v109 - v8;
  v143 = sub_100041CAC();
  v145 = *(v143 - 8);
  v9 = __chkstk_darwin(v143);
  v131 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v109 - v11;
  v13 = sub_1000408CC();
  v139 = *(v13 - 8);
  v140 = v13;
  __chkstk_darwin(v13);
  v138 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v15 - 8);
  v137 = v109 - v16;
  v122 = sub_10004116C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v19 = __chkstk_darwin(v18 - 8);
  v123 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v119 = v109 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v109 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v109 - v27;
  __chkstk_darwin(v26);
  v30 = v109 - v29;
  v31 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v32 = __chkstk_darwin(v31 - 8);
  v125 = v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v124 = v109 - v35;
  v36 = __chkstk_darwin(v34);
  v115 = (v109 - v37);
  __chkstk_darwin(v36);
  v39 = v109 - v38;
  v40 = type metadata accessor for AvatarView(0);
  v41 = __chkstk_darwin(v40);
  v129 = v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = v109 - v44;
  __chkstk_darwin(v43);
  v126 = v109 - v46;
  v144 = a1;
  sub_100011258(a1, v30, &qword_1000546B8, &unk_100042AD0);
  v47 = sub_100041BAC();
  v48 = *(v47 - 8);
  v141 = *(v48 + 48);
  v142 = v48 + 48;
  if (v141(v30, 1, v47) == 1)
  {
    sub_1000049F8(v30, &qword_1000546B8, &unk_100042AD0);
    v49 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v48 + 8))(v30, v47);
    v49 = 0;
  }

  v50 = v39;
  v51 = v145[7];
  v117 = v145 + 7;
  v116 = v51;
  v51(v39, v49, 1, v143);
  sub_100011258(v144, v28, &qword_1000546B8, &unk_100042AD0);
  v52 = v141(v28, 1, v47);
  v136 = v48;
  if (v52 == 1)
  {
    sub_1000049F8(v28, &qword_1000546B8, &unk_100042AD0);
    v111 = 0;
  }

  else
  {
    v53 = v12;
    v54 = v120;
    sub_100041B8C();
    (*(v48 + 8))(v28, v47);
    v111 = sub_10004114C();
    v55 = v54;
    v12 = v53;
    (*(v121 + 8))(v55, v122);
  }

  v56 = v118;
  sub_100011258(v144, v25, &qword_1000546B8, &unk_100042AD0);
  v57 = v141(v25, 1, v47);
  v113 = v12;
  if (v57 == 1)
  {
    sub_1000049F8(v25, &qword_1000546B8, &unk_100042AD0);
    v58 = sub_100041C6C();
    (*(*(v58 - 8) + 56))(v137, 1, 1, v58);
  }

  else
  {
    sub_100041B5C();
    (*(v136 + 8))(v25, v47);
  }

  v59 = type metadata accessor for SingleContactSmallWidgetView(0);
  (*(v139 + 16))(v138, v144 + *(v59 + 20), v140);
  sub_100040D9C();
  v110 = sub_100040D8C();
  v60 = v40[7];
  v61 = sub_100041C6C();
  (*(*(v61 - 8) + 56))(&v45[v60], 1, 1, v61);
  v109[1] = sub_100040D8C();
  v62 = &v45[v40[12]];
  KeyPath = swift_getKeyPath();
  *(v62 + 1) = 0;
  *(v62 + 2) = 0;
  *v62 = KeyPath;
  *(v62 + 12) = 0;
  v64 = v40[13];
  sub_100041B0C();
  *&v45[v64] = v65;
  v66 = &v45[v40[14]];
  *v66 = xmmword_100042940;
  *(v66 + 1) = xmmword_100042950;
  v67 = v40[15];
  *&v45[v67] = swift_getKeyPath();
  v112 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v68 = v115;
  sub_100011258(v50, v115, &qword_1000546F8, &qword_100042B00);
  v69 = v145;
  v70 = v50;
  v71 = (v145 + 6);
  v72 = v145[6];
  v73 = v72(v68, 1, v143);
  v118 = v71;
  v114 = v72;
  if (v73 == 1)
  {
    v74 = v113;
    sub_100041B1C();
    sub_1000049F8(v70, &qword_1000546F8, &qword_100042B00);
    v75 = v143;
    v76 = v74;
    if (v72(v68, 1, v143) != 1)
    {
      sub_1000049F8(v68, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v70, &qword_1000546F8, &qword_100042B00);
    v76 = v113;
    v75 = v143;
    (v69[4])(v113, v68, v143);
  }

  v77 = v40[5];
  v78 = &v45[v40[6]];
  v79 = v40[8];
  v80 = v145[4];
  v145 += 4;
  v115 = v80;
  (v80)(v45, v76, v75);
  *&v45[v77] = v111;
  *v78 = 0;
  v78[8] = 1;
  sub_100004A58(v137, &v45[v60]);

  *&v45[v79] = v110;
  v45[v40[9]] = 0;
  v45[v40[10]] = 1;
  (*(v139 + 32))(&v45[v40[11]], v138, v140);
  v81 = v126;
  sub_10003DE44(v45, v126, type metadata accessor for AvatarView);
  v82 = v119;
  sub_100011258(v144, v119, &qword_1000546B8, &unk_100042AD0);
  if (v141(v82, 1, v47) == 1)
  {
    sub_1000049F8(v82, &qword_1000546B8, &unk_100042AD0);
    v83 = 0;
    v84 = v124;
    v85 = v123;
    v86 = v136;
  }

  else
  {
    v87 = v120;
    sub_100041B8C();
    v86 = v136;
    (*(v136 + 8))(v82, v47);
    v83 = sub_10004114C();
    (*(v121 + 8))(v87, v122);
    v84 = v124;
    v85 = v123;
  }

  sub_100011258(v144, v85, &qword_1000546B8, &unk_100042AD0);
  v88 = v141(v85, 1, v47);
  v89 = v143;
  if (v88 == 1)
  {
    sub_1000049F8(v85, &qword_1000546B8, &unk_100042AD0);
    v90 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v86 + 8))(v85, v47);
    v90 = 0;
  }

  v116(v84, v90, 1, v89);
  v144 = sub_1000416CC();
  (*(v127 + 104))(v130, enum case for ContactFormatter.Style.shortName(_:), v128);
  sub_100041F4C();
  v147 = sub_100040E2C();
  v148 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v146);
  sub_100040E1C();
  v91 = v132;
  v92 = v56 + *(v132 + 48);
  *v92 = swift_getKeyPath();
  *(v92 + 1) = 0;
  v92[16] = 0;
  v93 = v91[13];
  *(v56 + v93) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v94 = v91[14];
  *(v56 + v94) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v95 = v91[15];
  *(v56 + v95) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v56 = v83;
  v96 = v125;
  sub_100011258(v84, v125, &qword_1000546F8, &qword_100042B00);
  v97 = v114;
  if (v114(v96, 1, v89) == 1)
  {
    v98 = v81;
    v99 = v97;
    v100 = v131;
    sub_100041B1C();
    sub_1000049F8(v84, &qword_1000546F8, &qword_100042B00);
    v101 = v99(v96, 1, v89);
    v81 = v98;
    v102 = v115;
    if (v101 != 1)
    {
      sub_1000049F8(v96, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v84, &qword_1000546F8, &qword_100042B00);
    v100 = v131;
    v102 = v115;
    (v115)(v131, v96, v89);
  }

  v102(v56 + v91[5], v100, v89);
  *(v56 + v91[6]) = v144;
  *(v56 + v91[7]) = 0x4008000000000000;
  sub_100004B44(&v146, v56 + v91[8]);
  *(v56 + v91[9]) = 2;
  *(v56 + v91[10]) = 1;
  *(v56 + v91[11]) = 0x7FF0000000000000;
  v103 = v133;
  sub_10003DE44(v56, v133, type metadata accessor for StatusAndNameView);
  v104 = v129;
  sub_10003DEAC(v81, v129, type metadata accessor for AvatarView);
  v105 = v134;
  sub_10003DEAC(v103, v134, type metadata accessor for StatusAndNameView);
  v106 = v135;
  sub_10003DEAC(v104, v135, type metadata accessor for AvatarView);
  v107 = sub_100003DC0(&qword_100054718, &unk_100044CF0);
  sub_10003DEAC(v105, v106 + *(v107 + 48), type metadata accessor for StatusAndNameView);
  sub_10003DF14(v103, type metadata accessor for StatusAndNameView);
  sub_10003DF14(v81, type metadata accessor for AvatarView);
  sub_10003DF14(v105, type metadata accessor for StatusAndNameView);
  return sub_10003DF14(v104, type metadata accessor for AvatarView);
}

uint64_t sub_10003DBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10003DD28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003DD88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003DE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003DF8C()
{
  result = qword_100056178;
  if (!qword_100056178)
  {
    sub_100003E08(&qword_100056150, &unk_100044C10);
    sub_1000047DC();
    sub_10003E048(&qword_100054B20, type metadata accessor for TimeStampModifier, &unk_1000436C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056178);
  }

  return result;
}

uint64_t sub_10003E048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003E0A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = sub_100003DC0(a1, a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v5, v6);
}

uint64_t sub_10003E138()
{
  sub_100003DC0(&qword_100056190, &qword_100044D80);
  sub_100041D8C();
  *(swift_allocObject() + 16) = xmmword_100043BB0;
  sub_100041D6C();
  sub_100041D7C();
  sub_100003DC0(&qword_100054738, &unk_100042C50);
  v0 = sub_100041D5C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100042C30;
  v4 = (*(v1 + 104))(v3 + v2, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10003E2FC(v4, v5, v6);
  sub_10004152C();
}

unint64_t sub_10003E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100056198;
  if (!qword_100056198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056198);
  }

  return result;
}

uint64_t sub_10003E3C8()
{
  sub_100003DC0(&qword_100056190, &qword_100044D80);
  sub_100041D8C();
  *(swift_allocObject() + 16) = xmmword_100042C30;
  v0 = sub_100041D6C();
  if (qword_100054540 != -1)
  {
    v0 = swift_once();
  }

  sub_10003E4F0(v0, v1, v2);
  sub_10004152C();
}

unint64_t sub_10003E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000561A0;
  if (!qword_1000561A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000561A0);
  }

  return result;
}

uint64_t sub_10003E590()
{
  v1 = [v0 id];
  if (!v1)
  {
    v4 = [v0 identifier];
    if (v4)
    {
      v5 = v4;
      sub_100041EFC();

      sub_100004924(v6, v7, v8);
      v9 = sub_10004210C();

      if (*(v9 + 16))
      {
        swift_bridgeObjectRetain_n();

        v3 = sub_100041F1C();
        swift_bridgeObjectRelease_n();
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_100041EFC();

  return v3;
}

uint64_t sub_10003E6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10004116C();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  sub_100011258(a1, a3, &qword_1000546B8, &unk_100042AD0);
  v15 = *(type metadata accessor for SingleContactSmallWidgetVerticalView(0) + 20);
  v16 = sub_1000408CC();
  v32 = *(v16 - 8);
  v33 = v16;
  v17 = *(v32 + 16);
  v29 = a3;
  v34 = a2;
  v17(a3 + v15, a2);
  v35 = a1;
  sub_100011258(a1, v14, &qword_1000546B8, &unk_100042AD0);
  v18 = sub_100041BAC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v14, 1, v18) == 1)
  {
    sub_1000049F8(v14, &qword_1000546B8, &unk_100042AD0);
  }

  else
  {
    sub_100041B8C();
    (*(v19 + 8))(v14, v18);
    sub_10004115C();
    (*(v30 + 8))(v8, v31);
  }

  sub_1000409FC();
  sub_1000409EC();
  sub_100041CBC();

  v21 = v35;
  sub_100011258(v35, v12, &qword_1000546B8, &unk_100042AD0);
  if (v20(v12, 1, v18) == 1)
  {
    sub_1000049F8(v12, &qword_1000546B8, &unk_100042AD0);
  }

  else
  {
    sub_100041B8C();
    (*(v19 + 8))(v12, v18);
    v22 = sub_10004114C();
    (*(v30 + 8))(v8, v31);
    v23 = [v22 identifier];

    sub_100041EFC();
    v24 = sub_100041F8C();

    v36 = v24;
    sub_10003EB68(v25, v26, v27);
    sub_10004211C();
  }

  sub_100040B3C();
  sub_100040B0C();

  (*(v32 + 8))(v34, v33);
  return sub_1000049F8(v21, &qword_1000546B8, &unk_100042AD0);
}

uint64_t type metadata accessor for SingleContactSmallWidgetVerticalView(uint64_t a1)
{
  result = qword_100056208;
  if (!qword_100056208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003EB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000561A8;
  if (!qword_1000561A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000561A8);
  }

  return result;
}

uint64_t sub_10003EBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000408CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100041CAC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10003ED30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000408CC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100041CAC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10003EE88(uint64_t a1)
{
  sub_10003B534(319);
  if (v1 <= 0x3F)
  {
    sub_1000408CC();
    if (v2 <= 0x3F)
    {
      sub_100041CAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_10003EF40@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100003DC0(&qword_100056248, &qword_100044E98);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_10004149C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100003DC0(&qword_100056250, &qword_100044EA0);
  sub_10003F084(v1, &v5[*(v6 + 44)]);
  sub_100041A8C();
  sub_10004125C();
  sub_10003FEEC(v5, a1);
  v7 = a1 + *(sub_100003DC0(&qword_100056258, &qword_100044EA8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_10003F084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_100041CAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000408CC();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v84 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v7 - 8);
  v83 = &v69 - v8;
  v9 = sub_10004116C();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v19 = __chkstk_darwin(v18 - 8);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v69 - v21;
  v23 = type metadata accessor for AvatarView(0);
  v24 = __chkstk_darwin(v23);
  v78 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v69 - v27;
  __chkstk_darwin(v26);
  v77 = &v69 - v29;
  v30 = sub_100003DC0(&qword_100056260, &qword_100044EB0);
  v31 = __chkstk_darwin(v30 - 8);
  v76 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v69 - v33;
  *v34 = sub_1000414FC();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = *(sub_100003DC0(&qword_100056268, &qword_100044EB8) + 44);
  v72 = v34;
  sub_10003FA2C(a1, &v34[v35]);
  v71 = type metadata accessor for SingleContactSmallWidgetVerticalView(0);
  (*(v4 + 16))(v22, a1 + *(v71 + 24), v3);
  v85 = v4;
  v36 = *(v4 + 56);
  v74 = v22;
  v80 = v3;
  v36(v22, 0, 1, v3);
  v37 = a1;
  sub_100011258(a1, v17, &qword_1000546B8, &unk_100042AD0);
  v38 = sub_100041BAC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v17, 1, v38) == 1)
  {
    sub_1000049F8(v17, &qword_1000546B8, &unk_100042AD0);
    v73 = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v39 + 8))(v17, v38);
    v73 = sub_10004114C();
    (*(v69 + 8))(v11, v70);
  }

  sub_100011258(v37, v15, &qword_1000546B8, &unk_100042AD0);
  if (v40(v15, 1, v38) == 1)
  {
    sub_1000049F8(v15, &qword_1000546B8, &unk_100042AD0);
    v41 = sub_100041C6C();
    (*(*(v41 - 8) + 56))(v83, 1, 1, v41);
  }

  else
  {
    sub_100041B5C();
    (*(v39 + 8))(v15, v38);
  }

  v42 = v85;
  v43 = v81;
  (*(v86 + 16))(v84, v37 + *(v71 + 20), v81);
  sub_100040D9C();
  v71 = sub_100040D8C();
  v44 = v23[7];
  v45 = sub_100041C6C();
  (*(*(v45 - 8) + 56))(&v28[v44], 1, 1, v45);
  v70 = sub_100040D8C();
  v46 = &v28[v23[12]];
  KeyPath = swift_getKeyPath();
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *v46 = KeyPath;
  *(v46 + 12) = 0;
  v48 = v23[13];
  sub_100041B0C();
  *&v28[v48] = v49;
  v50 = &v28[v23[14]];
  *v50 = xmmword_100042940;
  *(v50 + 1) = xmmword_100042950;
  v51 = v23[15];
  *&v28[v51] = swift_getKeyPath();
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v52 = v74;
  v53 = v75;
  sub_100011258(v74, v75, &qword_1000546F8, &qword_100042B00);
  v54 = *(v42 + 48);
  v55 = v80;
  if (v54(v53, 1, v80) == 1)
  {
    v56 = v52;
    v57 = v79;
    sub_100041B1C();
    sub_1000049F8(v56, &qword_1000546F8, &qword_100042B00);
    if (v54(v53, 1, v55) != 1)
    {
      sub_1000049F8(v53, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v52, &qword_1000546F8, &qword_100042B00);
    v57 = v79;
    (*(v42 + 32))(v79, v53, v55);
  }

  v58 = v23[5];
  v59 = &v28[v23[6]];
  v60 = v23[8];
  (*(v85 + 32))(v28, v57, v55);
  *&v28[v58] = v73;
  *v59 = 0;
  v59[8] = 1;
  sub_100004A58(v83, &v28[v44]);

  *&v28[v60] = v71;
  v28[v23[9]] = 0;
  v28[v23[10]] = 1;
  (*(v86 + 32))(&v28[v23[11]], v84, v43);
  v61 = v77;
  sub_10003FF74(v28, v77, type metadata accessor for AvatarView);
  v62 = v72;
  v63 = v76;
  sub_100011258(v72, v76, &qword_100056260, &qword_100044EB0);
  v64 = v78;
  sub_10003FFDC(v61, v78, type metadata accessor for AvatarView);
  v65 = v82;
  sub_100011258(v63, v82, &qword_100056260, &qword_100044EB0);
  v66 = sub_100003DC0(&qword_100056270, &qword_100044F20);
  v67 = v65 + *(v66 + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_10003FFDC(v64, v65 + *(v66 + 64), type metadata accessor for AvatarView);
  sub_100040044(v61, type metadata accessor for AvatarView);
  sub_1000049F8(v62, &qword_100056260, &qword_100044EB0);
  sub_100040044(v64, type metadata accessor for AvatarView);
  return sub_1000049F8(v63, &qword_100056260, &qword_100044EB0);
}

uint64_t sub_10003FA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100040E0C();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004116C();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for StatusAndNameViewVertical(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = (&v32 - v16);
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  v35 = a1;
  sub_100011258(a1, v10, &qword_1000546B8, &unk_100042AD0);
  v20 = sub_100041BAC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    sub_1000049F8(v10, &qword_1000546B8, &unk_100042AD0);
    v22 = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v21 + 8))(v10, v20);
    v22 = sub_10004114C();
    (*(v32 + 8))(v7, v33);
  }

  v23 = *(type metadata accessor for SingleContactSmallWidgetVerticalView(0) + 24);
  v24 = v11[5];
  v25 = sub_100041CAC();
  (*(*(v25 - 8) + 16))(v17 + v24, v35 + v23, v25);
  *v17 = v22;
  v26 = (v17 + v11[6]);
  (*(v3 + 104))(v34, enum case for ContactFormatter.Style.shortName(_:), v36);
  sub_100041F4C();
  v26[3] = sub_100040E2C();
  v26[4] = &protocol witness table for ContactFormatter;
  sub_100004AC8(v26);
  sub_100040E1C();
  v27 = v11[7];
  *(v17 + v27) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v28 = v11[8];
  *(v17 + v28) = swift_getKeyPath();
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  sub_10003FF74(v17, v19, type metadata accessor for StatusAndNameViewVertical);
  sub_10003FFDC(v19, v14, type metadata accessor for StatusAndNameViewVertical);
  v29 = v37;
  *v37 = 0;
  *(v29 + 8) = 1;
  v30 = sub_100003DC0(&qword_100056278, &unk_100044F60);
  sub_10003FFDC(v14, v29 + *(v30 + 48), type metadata accessor for StatusAndNameViewVertical);
  sub_100040044(v19, type metadata accessor for StatusAndNameViewVertical);
  return sub_100040044(v14, type metadata accessor for StatusAndNameViewVertical);
}

uint64_t sub_10003FEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100056248, &qword_100044E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003FFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000400A8()
{
  result = qword_100056280;
  if (!qword_100056280)
  {
    sub_100003E08(&qword_100056258, &qword_100044EA8);
    sub_100040134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056280);
  }

  return result;
}

unint64_t sub_100040134()
{
  result = qword_100056288;
  if (!qword_100056288)
  {
    sub_100003E08(&qword_100056248, &qword_100044E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100056288);
  }

  return result;
}

uint64_t sub_1000401D4(int a1, int a2, int a3, int a4)
{
  if (qword_100057490 == -1)
  {
    if (qword_100057498)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10004069C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100057498)
    {
      return _availability_version_check();
    }
  }

  if (qword_100057488 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000406B4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100057478 < v11;
    if (dword_100057478 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005747C > a3)
      {
        return 1;
      }

      if (dword_10005747C >= a3)
      {
        return dword_100057480 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100057478 < a2;
  if (dword_100057478 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100040368(uint64_t result)
{
  v1 = qword_100057498;
  if (qword_100057498)
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
      qword_100057498 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100057478, &dword_10005747C, &dword_100057480);
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