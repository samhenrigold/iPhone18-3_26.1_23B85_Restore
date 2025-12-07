uint64_t sub_10005B00C()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007DF0(&qword_100098FF0, &qword_100076738);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10006A970();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100007DF0(&qword_100098FF8, &qword_100076740);
  sub_10005A7D0(v0, &v7[*(v8 + 44)]);
  (*(v2 + 104))(v4, enum case for ContentSizeCategory.accessibilityMedium(_:), v1);
  sub_1000095F4(&qword_100099000, &qword_100098FF0, &qword_100076738, &protocol conformance descriptor for HStack<A>);
  sub_10006ACD0();
  (*(v2 + 8))(v4, v1);
  return sub_100009790(v7, &qword_100098FF0, &qword_100076738);
}

uint64_t sub_10005B1E8()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10005B340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100007DF0(&qword_100098F50, &qword_100076668);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = (&v43 - v4);
  v5 = sub_100007DF0(&qword_100098F58, &qword_100076670);
  v6 = __chkstk_darwin(v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v43 - v8);
  v10 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_100007DF0(&qword_100098F60, &qword_100076678);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100007DF0(&qword_100098F68, &qword_100076680);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  *v24 = sub_10006A9E0();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = sub_100007DF0(&qword_100098F70, &qword_100076688);
  sub_10005B8F0(a1, &v24[*(v25 + 44)]);
  v26 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  sub_100009728(a1 + *(v26 + 20), v12, &qword_100097C78, &unk_100076050);
  v27 = type metadata accessor for Note(0);
  if ((*(*(v27 - 8) + 48))(v12, 1, v27) == 1)
  {
    sub_100009790(v12, &qword_100097C78, &unk_100076050);
LABEL_5:
    v39 = 1;
    goto LABEL_6;
  }

  v28 = *&v12[*(v27 + 52)];

  sub_10005D0D8(v12, type metadata accessor for Note);
  if (!v28)
  {
    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  v30 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  *(v9 + *(v30 + 20)) = KeyPath;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  *v9 = swift_getKeyPath();
  sub_100007DF0(&qword_100096A30, &qword_100076650);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v30 + 24)) = v28;

  LOBYTE(KeyPath) = sub_10006AB80();
  sub_10006A720();
  v31 = v9 + *(v5 + 36);
  *v31 = KeyPath;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = v44;
  sub_100009728(v9, v44, &qword_100098F58, &qword_100076670);
  v37 = v45;
  *v45 = 0x4024000000000000;
  *(v37 + 8) = 0;
  v38 = sub_100007DF0(&qword_100098F80, &qword_1000766C8);
  sub_100009728(v36, v37 + *(v38 + 48), &qword_100098F58, &qword_100076670);

  sub_100009790(v9, &qword_100098F58, &qword_100076670);
  sub_100009790(v36, &qword_100098F58, &qword_100076670);
  sub_1000096C0(v37, v18, &qword_100098F50, &qword_100076668);
  v39 = 0;
LABEL_6:
  (*(v46 + 56))(v18, v39, 1, v47);
  sub_100009728(v24, v22, &qword_100098F68, &qword_100076680);
  sub_100009728(v18, v16, &qword_100098F60, &qword_100076678);
  v40 = v48;
  sub_100009728(v22, v48, &qword_100098F68, &qword_100076680);
  v41 = sub_100007DF0(&qword_100098F78, &qword_100076690);
  sub_100009728(v16, v40 + *(v41 + 48), &qword_100098F60, &qword_100076678);
  sub_100009790(v18, &qword_100098F60, &qword_100076678);
  sub_100009790(v24, &qword_100098F68, &qword_100076680);
  sub_100009790(v16, &qword_100098F60, &qword_100076678);
  return sub_100009790(v22, &qword_100098F68, &qword_100076680);
}

uint64_t sub_10005B8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100098F88, &qword_1000766D0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  *v10 = sub_10006A9F0();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v11 = sub_100007DF0(&qword_100098F90, &qword_1000766D8);
  sub_10005BA7C(a1, &v10[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(v5 + 44)];
  *v13 = KeyPath;
  *(v13 + 1) = 1;
  v13[16] = 0;
  sub_100009728(v10, v8, &qword_100098F88, &qword_1000766D0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = sub_100007DF0(&qword_100098F98, &qword_1000766E0);
  sub_100009728(v8, a2 + *(v14 + 48), &qword_100098F88, &qword_1000766D0);
  v15 = a2 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_100009790(v10, &qword_100098F88, &qword_1000766D0);
  return sub_100009790(v8, &qword_100098F88, &qword_1000766D0);
}

uint64_t sub_10005BA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_100007DF0(&qword_100098FA0, &qword_1000766E8);
  __chkstk_darwin(v3 - 8);
  v71 = (&v68 - v4);
  v5 = sub_100007DF0(&qword_100098FA8, &qword_1000766F0);
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = __chkstk_darwin(v5);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v68 - v8;
  v83 = sub_10006A9D0();
  v81 = *(v83 - 8);
  v9 = __chkstk_darwin(v83);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v68 - v11;
  v12 = sub_100007DF0(&qword_100098FB0, &qword_1000766F8);
  v13 = __chkstk_darwin(v12 - 8);
  v86 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = &v68 - v15;
  v16 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v77 = sub_100007DF0(&qword_100098FB8, &qword_100076700);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v68 - v22;
  v72 = sub_100007DF0(&qword_100098FC0, &qword_100076708);
  __chkstk_darwin(v72);
  v76 = &v68 - v23;
  v75 = sub_100007DF0(&qword_100098FC8, &qword_100076710);
  v24 = __chkstk_darwin(v75);
  v84 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v78 = &v68 - v27;
  __chkstk_darwin(v26);
  v82 = &v68 - v28;
  v29 = *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 20);
  v30 = a1;
  sub_100009728(a1 + v29, v21, &qword_100097C78, &unk_100076050);
  v31 = type metadata accessor for Note(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v21, 1, v31) == 1)
  {
    sub_100009790(v21, &qword_100097C78, &unk_100076050);
    sub_10006B2D0();
  }

  else
  {

    sub_10005D0D8(v21, type metadata accessor for Note);
  }

  v33 = v30 + v29;
  v34 = v30;
  sub_100009728(v33, v19, &qword_100097C78, &unk_100076050);
  v32(v19, 1, v31);
  sub_100009790(v19, &qword_100097C78, &unk_100076050);
  v35 = sub_10006AC30();

  *&v90 = v35;
  v36 = v73;
  sub_10006AD70();

  if (sub_10005B1E8())
  {
    v37 = sub_10006AE50();
  }

  else
  {
    v37 = sub_10006AE20();
  }

  v38 = v37;
  v39 = v85;
  v40 = v82;
  v41 = v76;
  (*(v74 + 32))(v76, v36, v77);
  *(v41 + *(v72 + 36)) = v38;
  sub_10006AFC0();
  v42 = 1;
  sub_10006A7F0();
  v43 = v78;
  sub_1000096C0(v41, v78, &qword_100098FC0, &qword_100076708);
  v44 = (v43 + *(v75 + 36));
  v45 = v95;
  v44[4] = v94;
  v44[5] = v45;
  v44[6] = v96;
  v46 = v91;
  *v44 = v90;
  v44[1] = v46;
  v47 = v93;
  v44[2] = v92;
  v44[3] = v47;
  sub_1000096C0(v43, v40, &qword_100098FC8, &qword_100076710);
  v48 = v79;
  sub_10005CB90(&qword_100098128, &qword_100075CE0, &type metadata accessor for ContentSizeCategory, v79);
  v49 = v81;
  v50 = v80;
  v51 = v83;
  (*(v81 + 104))(v80, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v83);
  LOBYTE(v43) = sub_1000602E8(v48, v50);
  v52 = *(v49 + 8);
  v52(v50, v51);
  v52(v48, v51);
  v53 = v88;
  if (v43)
  {
    v54 = sub_10006A970();
    v55 = v71;
    *v71 = v54;
    v55[1] = 0;
    *(v55 + 16) = 1;
    v56 = sub_100007DF0(&qword_100098FD8, &qword_100076720);
    sub_10005C440(v34, (v55 + *(v56 + 44)));
    if (sub_10005B1E8())
    {
      v57 = sub_10006AE60();
    }

    else if (sub_10005B1E8())
    {
      v57 = sub_10006AE50();
    }

    else
    {
      v57 = sub_10006AE20();
    }

    v58 = v57;
    v59 = v55;
    v60 = v70;
    sub_1000096C0(v59, v70, &qword_100098FA0, &qword_1000766E8);
    *(v60 + *(v53 + 36)) = v58;
    v61 = v60;
    v62 = v69;
    sub_1000096C0(v61, v69, &qword_100098FA8, &qword_1000766F0);
    sub_1000096C0(v62, v39, &qword_100098FA8, &qword_1000766F0);
    v42 = 0;
  }

  (*(v87 + 56))(v39, v42, 1, v53);
  v63 = v84;
  sub_100009728(v40, v84, &qword_100098FC8, &qword_100076710);
  v64 = v86;
  sub_100009728(v39, v86, &qword_100098FB0, &qword_1000766F8);
  v65 = v89;
  sub_100009728(v63, v89, &qword_100098FC8, &qword_100076710);
  v66 = sub_100007DF0(&qword_100098FD0, &qword_100076718);
  sub_100009728(v64, v65 + *(v66 + 48), &qword_100098FB0, &qword_1000766F8);
  sub_100009790(v39, &qword_100098FB0, &qword_1000766F8);
  sub_100009790(v40, &qword_100098FC8, &qword_100076710);
  sub_100009790(v64, &qword_100098FB0, &qword_1000766F8);
  return sub_100009790(v63, &qword_100098FC8, &qword_100076710);
}

uint64_t sub_10005C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_100007DF0(&qword_100098C30, &qword_1000763A0);
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v41 - v4;
  v5 = sub_100007DF0(&qword_100098FE0, &qword_100076728);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v41 - v8;
  v9 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v10 = __chkstk_darwin(v9 - 8);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v44 = &v41 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 20);
  sub_100009728(a1 + v19, v18, &qword_100097C78, &unk_100076050);
  v20 = type metadata accessor for Note(0);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v18, 1, v20);
  v47 = v3;
  v23 = a1;
  if (v22 == 1)
  {
    sub_100009790(v18, &qword_100097C78, &unk_100076050);
    v43 = sub_10006B2D0();
  }

  else
  {
    v43 = *(v18 + 6);

    sub_10005D0D8(v18, type metadata accessor for Note);
  }

  sub_100009728(a1 + v19, v16, &qword_100097C78, &unk_100076050);
  v21(v16, 1, v20);
  sub_100009790(v16, &qword_100097C78, &unk_100076050);
  v24 = sub_10006AC30();

  v25 = v44;
  sub_100009728(a1 + v19, v44, &qword_100097C78, &unk_100076050);
  v26 = v21(v25, 1, v20);
  sub_100009790(v25, &qword_100097C78, &unk_100076050);
  v27 = 1;
  v29 = v46;
  v28 = v47;
  v30 = v45;
  if (v26 != 1)
  {
    v31 = v23 + v19;
    v32 = v41;
    sub_100009728(v31, v41, &qword_100097C78, &unk_100076050);
    if (v21(v32, 1, v20) == 1)
    {
      sub_100009790(v32, &qword_100097C78, &unk_100076050);
      v33 = sub_10006B2D0();
      v35 = v34;
    }

    else
    {
      v33 = *(v32 + 32);
      v35 = *(v32 + 40);

      sub_10005D0D8(v32, type metadata accessor for Note);
    }

    v50 = v33;
    v51 = v35;
    v52 = 0;
    v53 = &_swiftEmptyArrayStorage;
    v36 = v42;
    sub_10006AD70();

    (*(v29 + 32))(v30, v36, v28);
    v27 = 0;
  }

  (*(v29 + 56))(v30, v27, 1, v28);
  v37 = v48;
  sub_100009728(v30, v48, &qword_100098FE0, &qword_100076728);
  v38 = v49;
  *v49 = v24;
  v39 = sub_100007DF0(&qword_100098FE8, &qword_100076730);
  sub_100009728(v37, v38 + *(v39 + 48), &qword_100098FE0, &qword_100076728);

  sub_100009790(v30, &qword_100098FE0, &qword_100076728);
  sub_100009790(v37, &qword_100098FE0, &qword_100076728);
}

uint64_t sub_10005C98C()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007DF0(&qword_100098F38, &qword_100076658);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10006A970();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100007DF0(&qword_100098F40, &qword_100076660);
  sub_10005B340(v0, &v7[*(v8 + 44)]);
  (*(v2 + 104))(v4, enum case for ContentSizeCategory.accessibilityMedium(_:), v1);
  sub_1000095F4(&qword_100098F48, &qword_100098F38, &qword_100076658, &protocol conformance descriptor for HStack<A>);
  sub_10006ACD0();
  (*(v2 + 8))(v4, v1);
  return sub_100009790(v7, &qword_100098F38, &qword_100076658);
}

uint64_t sub_10005CB90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10006A950();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007DF0(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100009728(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10006B3B0();
    v19 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_10005CD98()
{
  result = qword_1000989A0;
  if (!qword_1000989A0)
  {
    sub_100008154(&qword_100098988, &qword_100076190);
    sub_1000095F4(&qword_1000989A8, &qword_1000989B0, &unk_1000761D8, &protocol conformance descriptor for VStack<A>);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000989A0);
  }

  return result;
}

unint64_t sub_10005CE7C()
{
  result = qword_1000989E0;
  if (!qword_1000989E0)
  {
    sub_100008154(&qword_1000989D8, &qword_100076208);
    sub_1000095F4(&qword_1000989E8, &qword_1000989F0, &qword_100076210, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000989E0);
  }

  return result;
}

unint64_t sub_10005CF2C()
{
  result = qword_100098A10;
  if (!qword_100098A10)
  {
    sub_100008154(&qword_100098A08, &qword_100076220);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A10);
  }

  return result;
}

unint64_t sub_10005CFDC()
{
  result = qword_100098A18;
  if (!qword_100098A18)
  {
    sub_100008154(&qword_1000989C8, &qword_1000761F8);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
    sub_100008154(&qword_1000989D8, &qword_100076208);
    sub_10005CE7C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A18);
  }

  return result;
}

uint64_t sub_10005D0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005D138()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10006A9D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006B100();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1000096B4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v5 + v1[7];
  v10 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v10 - 8) + 48))(v9, 2, v10))
  {

    v11 = *(type metadata accessor for NotesFolder(0) + 32);
    v12 = sub_10006A520();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005D3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100054E04(a1, v6, v7, a2);
}

unint64_t sub_10005D480()
{
  result = qword_100098A30;
  if (!qword_100098A30)
  {
    sub_100008154(&qword_100098A28, &qword_100076228);
    sub_1000095F4(&qword_100098A38, &qword_100098A40, &qword_100076230, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A30);
  }

  return result;
}

uint64_t sub_10005D538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A8A0();
  *a1 = result;
  return result;
}

char *sub_10005D58C(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = &_swiftEmptyArrayStorage;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    v6 = 0;
LABEL_26:
    v24 = *(v4 + 3);
    if (v24 < 2)
    {
      return v4;
    }

    v25 = v24 >> 1;
    v12 = __OFSUB__(v25, v6);
    v26 = v25 - v6;
    if (!v12)
    {
      *(v4 + 2) = v26;
      return v4;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = &result[8 * a2];
    v10 = &_swiftEmptyArrayStorage + 32;
    while (v8 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v11 = *&v9[8 * v7];
      if (v6)
      {

        v12 = __OFSUB__(v6--, 1);
        if (v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = *(v4 + 3);
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_100007DF0(&qword_100099088, &qword_1000767D8);
        v16 = swift_allocObject();
        v17 = j__malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        *(v16 + 2) = v15;
        *(v16 + 3) = 2 * (v18 >> 4);
        v20 = v16 + 32;
        v21 = *(v4 + 3) >> 1;
        v10 = &v16[16 * v21 + 32];
        v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        if (*(v4 + 2))
        {
          v23 = v4 + 32;
          if (v16 != v4 || v20 >= &v23[16 * v21])
          {
            memmove(v20, v23, 16 * v21);
          }

          *(v4 + 2) = 0;
        }

        else
        {
        }

        v4 = v16;
        v12 = __OFSUB__(v22, 1);
        v6 = v22 - 1;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      *v10 = v7;
      *(v10 + 1) = v11;
      v10 += 16;
      if (v5 == ++v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10005D73C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = sub_100007DF0(&qword_100098AB0, &qword_100076290);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v7);
  v46 = &v39 - v11;
  v12 = a3 >> 1;
  v13 = &_swiftEmptyArrayStorage;
  if (a3 >> 1 == a2)
  {
    v14 = 0;
LABEL_31:
    v36 = v13[3];
    if (v36 < 2)
    {
      return v13;
    }

    v37 = v36 >> 1;
    v22 = __OFSUB__(v37, v14);
    v38 = v37 - v14;
    if (!v22)
    {
      v13[2] = v38;
      return v13;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = *(v6 + 80);
    v42 = v16;
    v43 = (v16 + 32) & ~v16;
    v17 = &_swiftEmptyArrayStorage + v43;
    if (a2 <= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = a2;
    }

    v44 = v18;
    v19 = &_swiftEmptyArrayStorage;
    v40 = v6;
    v41 = v9;
    while (v44 != a2)
    {
      v20 = v45 + *(*(type metadata accessor for Note(0) - 8) + 72) * a2;
      v21 = *(v5 + 48);
      *v9 = v15;
      result = sub_10005E108(v20, v9 + v21, type metadata accessor for Note);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_36;
      }

      result = sub_1000096C0(v9, v46, &qword_100098AB0, &qword_100076290);
      if (v14)
      {
        v13 = v19;
        v22 = __OFSUB__(v14--, 1);
        if (v22)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = v19[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v24 = v5;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_100007DF0(&qword_100098B78, &qword_100076320);
        v27 = *(v6 + 72);
        v28 = v43;
        v13 = swift_allocObject();
        result = j__malloc_size(v13);
        if (!v27)
        {
          goto LABEL_39;
        }

        v29 = result - v28;
        if ((result - v28) == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_40;
        }

        v31 = v29 / v27;
        v13[2] = v26;
        v13[3] = 2 * (v29 / v27);
        v32 = v13 + v28;
        v33 = v19[3] >> 1;
        v34 = v33 * v27;
        if (v19[2])
        {
          if (v13 < v19 || v32 >= v19 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v17 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v5 = v24;
        v6 = v40;
        v9 = v41;
        v22 = __OFSUB__(v35, 1);
        v14 = v35 - 1;
        if (v22)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      result = sub_1000096C0(v46, v17, &qword_100098AB0, &qword_100076290);
      v17 += *(v6 + 72);
      ++v15;
      v19 = v13;
      if (v12 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DA7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10006A7B0() - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1000552BC(a1, a2, v3 + v8, v11, a3);
}

uint64_t sub_10005DB68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DBA0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100007DF0(&qword_100098AB0, &qword_100076290);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_10005DC08()
{
  result = qword_100098A70;
  if (!qword_100098A70)
  {
    sub_100008154(&qword_100098A60, &qword_100076270);
    sub_100008154(&qword_100098A78, &qword_100076278);
    sub_10005DD00();
    swift_getOpaqueTypeConformance2();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A70);
  }

  return result;
}

unint64_t sub_10005DD00()
{
  result = qword_100098A80;
  if (!qword_100098A80)
  {
    sub_100008154(&qword_100098A78, &qword_100076278);
    sub_10005DDBC();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A80);
  }

  return result;
}

unint64_t sub_10005DDBC()
{
  result = qword_100098A88;
  if (!qword_100098A88)
  {
    sub_100008154(&qword_100098A90, &qword_100076280);
    sub_1000095F4(&qword_100098A98, &qword_100098AA0, &qword_100076288, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A88);
  }

  return result;
}

uint64_t sub_10005DE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005DEBC()
{
  result = qword_100098B28;
  if (!qword_100098B28)
  {
    sub_100008154(&qword_100098B10, &unk_1000762F0);
    sub_10005DF48();
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B28);
  }

  return result;
}

unint64_t sub_10005DF48()
{
  result = qword_100098B30;
  if (!qword_100098B30)
  {
    sub_100008154(&qword_100098B08, &qword_1000762E8);
    sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300, &protocol conformance descriptor for Link<A>);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B30);
  }

  return result;
}

unint64_t sub_10005E028()
{
  result = qword_100098B48;
  if (!qword_100098B48)
  {
    sub_100008154(&qword_100098AD8, &qword_1000762B8);
    sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0, &protocol conformance descriptor for Link<A>);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B48);
  }

  return result;
}

uint64_t sub_10005E108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Note(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100057338(v4, a1);
}

uint64_t sub_10005E28C()
{
  v1 = type metadata accessor for Note(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = sub_10006A560();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 48);
  v10 = sub_10006A520();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005E4FC()
{
  v1 = v0;
  v2 = type metadata accessor for NotesFolderWidgetView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for Note(0);
  v7 = *(*(v6 - 8) + 80);
  v28 = *(*(v6 - 8) + 64);
  v8 = v1 + v4;
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10006A9D0();
    (*(*(v9 - 8) + 8))(v1 + v4, v9);
  }

  else
  {
  }

  v10 = v4 + v5 + v7;
  v11 = v2[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10006B100();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v10 & ~v7;
  sub_1000096B4(*(v8 + v2[6]), *(v8 + v2[6] + 8));
  v14 = v8 + v2[7];
  v15 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v15 - 8) + 48))(v14, 2, v15))
  {
    v27 = v1;

    v16 = *(type metadata accessor for NotesFolder(0) + 32);
    v17 = sub_10006A520();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v1 = v27;
  }

  v19 = v1 + v13;

  v20 = *(v6 + 40);
  v21 = sub_10006A560();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v1 + v13 + v20, 1, v21))
  {
    (*(v22 + 8))(v19 + v20, v21);
  }

  v23 = *(v6 + 48);
  v24 = sub_10006A520();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v19 + v23, 1, v24))
  {
    (*(v25 + 8))(v19 + v23, v24);
  }

  return _swift_deallocObject(v1, v13 + v28, v3 | v7 | 7);
}

uint64_t sub_10005E98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Note(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100057054(v1 + v4, v7, a1);
}

uint64_t sub_10005EA80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005EB04()
{
  result = qword_100098BC0;
  if (!qword_100098BC0)
  {
    sub_100008154(&qword_100098B80, &qword_100076328);
    sub_1000095F4(&qword_100098BC8, &qword_100098BD0, &qword_100076360, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BC0);
  }

  return result;
}

unint64_t sub_10005EBBC()
{
  result = qword_100098BE8;
  if (!qword_100098BE8)
  {
    sub_100008154(&qword_100098B98, &qword_100076340);
    sub_1000095F4(&qword_100098BF0, &qword_100098BF8, &qword_100076370, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BE8);
  }

  return result;
}

uint64_t sub_10005EC74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A8A0();
  *a1 = result;
  return result;
}

unint64_t sub_10005ECD8()
{
  result = qword_100098C90;
  if (!qword_100098C90)
  {
    sub_100008154(&qword_100098C80, &qword_100076458);
    type metadata accessor for WidgetHeader(255);
    sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader, &unk_100075C54);
    swift_getOpaqueTypeConformance2();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098C90);
  }

  return result;
}

unint64_t sub_10005EDF4()
{
  result = qword_100098C98;
  if (!qword_100098C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098C98);
  }

  return result;
}

uint64_t sub_10005EE48()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10006A9D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006B100();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1000096B4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v5 + v1[7];
  v10 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v10 - 8) + 48))(v9, 2, v10))
  {

    v11 = *(type metadata accessor for NotesFolder(0) + 32);
    v12 = sub_10006A520();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005F130()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = sub_10006A7B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v19 = *(v5 + 64);
  v7 = v0 + v3;
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006A9D0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10006B100();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_1000096B4(*(v7 + v1[6]), *(v7 + v1[6] + 8));
  v11 = v7 + v1[7];
  v12 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v12 - 8) + 48))(v11, 2, v12))
  {
    v18 = v4;

    v13 = *(type metadata accessor for NotesFolder(0) + 32);
    v14 = sub_10006A520();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }

    v3 = (v2 + 16) & ~v2;
    v4 = v18;
  }

  v16 = (v3 + v20 + v6) & ~v6;
  (*(v5 + 8))(v0 + v16, v4);

  return _swift_deallocObject(v0, v16 + v19, v2 | v6 | 7);
}

double sub_10005F488@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_10006A7B0();

  return sub_1000527A8(a1, v2 + v6, a2);
}

unint64_t sub_10005F56C()
{
  result = qword_100098CD0;
  if (!qword_100098CD0)
  {
    sub_100008154(&qword_100098CC8, &qword_1000764B8);
    sub_1000095F4(&qword_100098CD8, &qword_100098CE0, &qword_1000764C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098CD0);
  }

  return result;
}

unint64_t sub_10005F624()
{
  result = qword_100098D48;
  if (!qword_100098D48)
  {
    sub_100008154(&qword_100098D38, &qword_100076518);
    sub_10005F6B0();
    sub_10005F79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D48);
  }

  return result;
}

unint64_t sub_10005F6B0()
{
  result = qword_100098D50;
  if (!qword_100098D50)
  {
    sub_100008154(&qword_100098D30, &qword_100076510);
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow, &unk_100076560);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow, &unk_1000765B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D50);
  }

  return result;
}

unint64_t sub_10005F79C()
{
  result = qword_100098D58;
  if (!qword_100098D58)
  {
    sub_100008154(&qword_100098D10, &qword_1000764F0);
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow, &unk_100076600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D58);
  }

  return result;
}

uint64_t sub_10005F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007DF0(&qword_100097C78, &unk_100076050);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_10005F99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100097C78, &unk_100076050);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10005FAC0(uint64_t a1)
{
  sub_100061668(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10003B41C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10005FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005FCAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_10005FD74(uint64_t a1)
{
  sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10003B41C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100097C78, &unk_100076050);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005FF84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100097C78, &unk_100076050);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000600BC(uint64_t a1)
{
  sub_10003B41C();
  if (v1 <= 0x3F)
  {
    sub_100061668(319, &unk_100098F00, type metadata accessor for NotesFolder, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000601B8()
{
  sub_100008154(&qword_100098990, &qword_100076198);
  sub_100008154(&qword_100098988, &qword_100076190);
  sub_10005CD98();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000602E8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_10006A9D0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

unint64_t sub_100060700()
{
  result = qword_100099008;
  if (!qword_100099008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099008);
  }

  return result;
}

unint64_t sub_100060754()
{
  result = qword_100099030;
  if (!qword_100099030)
  {
    sub_100008154(&qword_100099028, &qword_100076760);
    sub_1000095F4(&qword_100099038, &qword_100099040, &qword_100076768, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099030);
  }

  return result;
}

uint64_t sub_10006080C()
{
  v1 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1000096B4(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for NotesFolder(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v19 = v3;

    v7 = *(v6 + 32);
    v8 = sub_10006A520();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v3 = v19;
  }

  v10 = v0 + v4 + *(v1 + 24);
  v11 = type metadata accessor for Note(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 40);
    v13 = sub_10006A560();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    v15 = *(v11 + 48);
    v16 = sub_10006A520();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100060B98(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100060C30()
{
  v37 = sub_10006A7B0();
  v1 = *(v37 - 8);
  v40 = *(v1 + 80);
  v2 = (v40 + 16) & ~v40;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v38 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v38) & ~v38;
  v6 = *(*(v4 - 8) + 64);
  v7 = type metadata accessor for Note(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v6 + v9;
  v39 = *(v8 + 64);
  (*(v1 + 8))(v0 + v2, v37);
  v11 = v0;
  v12 = v0 + v5;
  v13 = v4;
  sub_1000096B4(*v12, *(v12 + 8));
  v14 = v12 + *(v4 + 20);
  v15 = type metadata accessor for NotesFolder(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v35 = v13;
    v36 = v10;

    v16 = *(v15 + 32);
    v17 = sub_10006A520();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v10 = v36;
    v13 = v35;
  }

  v19 = v10 & ~v9;
  v20 = v12 + *(v13 + 24);
  if (!(*(v8 + 48))(v20, 1, v7))
  {

    v21 = *(v7 + 40);
    v22 = sub_10006A560();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v20 + v21, 1, v22))
    {
      (*(v23 + 8))(v20 + v21, v22);
    }

    v24 = *(v7 + 48);
    v25 = sub_10006A520();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  v27 = v11 + v19;

  v28 = *(v7 + 40);
  v29 = sub_10006A560();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v11 + v19 + v28, 1, v29))
  {
    (*(v30 + 8))(v27 + v28, v29);
  }

  v31 = *(v7 + 48);
  v32 = sub_10006A520();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v27 + v31, 1, v32))
  {
    (*(v33 + 8))(v27 + v31, v32);
  }

  return _swift_deallocObject(v11, v19 + v39, v40 | v38 | v9 | 7);
}

uint64_t sub_1000611D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10006A7B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Note(0) - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100059FA4(v10, a1);
}

uint64_t sub_100061324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006145C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006157C(uint64_t a1)
{
  sub_100061668(319, &qword_100096AC8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100061668(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100061668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100061704(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100008154(a2, a3);
  sub_1000095F4(a4, a2, a3, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100061794()
{
  sub_100008154(&qword_100099028, &qword_100076760);
  sub_100060754();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100061818()
{
  result = qword_100099180;
  if (!qword_100099180)
  {
    sub_100008154(&qword_100099170, &qword_100076890);
    sub_1000618D0();
    sub_1000095F4(&qword_1000991A0, &qword_100099178, &qword_100076898, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099180);
  }

  return result;
}

unint64_t sub_1000618D0()
{
  result = qword_100099188;
  if (!qword_100099188)
  {
    sub_100008154(&qword_100099148, &qword_100076868);
    sub_100061988();
    sub_1000095F4(&qword_100099198, &qword_100099150, &qword_100076870, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099188);
  }

  return result;
}

unint64_t sub_100061988()
{
  result = qword_100099190;
  if (!qword_100099190)
  {
    sub_100008154(&qword_100099140, &qword_100076860);
    sub_100008154(&qword_100096CE8, &qword_10006F720);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099190);
  }

  return result;
}

uint64_t sub_100061AA4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_100007DF0(&qword_1000991A8, &qword_1000768F8);
  v40 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v38 - v2;
  v41 = sub_100007DF0(&qword_1000991B0, &qword_100076900);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = &v38 - v4;
  v6 = sub_100007DF0(&qword_1000991B8, &qword_100076908);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  __chkstk_darwin(v6);
  v39 = &v38 - v8;
  v9 = sub_100007DF0(&qword_1000991C0, &unk_100076910);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  __chkstk_darwin(v9);
  v42 = &v38 - v11;
  sub_10006B290();
  sub_1000621EC();
  type metadata accessor for NotesFolderTimelineProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = 16;
  v49 = v12;
  type metadata accessor for NotesFolderWidgetView(0);
  sub_100062238(&qword_1000991D0, type metadata accessor for NotesFolderWidgetView, &unk_100076140);
  sub_100062238(&qword_1000991D8, type metadata accessor for NotesFolderTimelineProvider, &unk_100075510);
  sub_10006B160();
  sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v13 = sub_10006B100();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10006F2A0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for WidgetFamily.systemSmall(_:), v13);
  v19(v18 + v15, enum case for WidgetFamily.systemMedium(_:), v13);
  v19(v18 + 2 * v15, enum case for WidgetFamily.systemLarge(_:), v13);
  v20 = sub_100062280();
  sub_10006AA10();

  (*(v40 + 8))(v3, v1);
  sub_10006A980();
  v21 = sub_10006AC90();
  v23 = v22;
  LOBYTE(v15) = v24;
  v49 = v1;
  v50 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v41;
  sub_10006AA30();
  sub_10000832C(v21, v23, v15 & 1);

  v28 = v27;
  (*(v43 + 8))(v5, v27);
  sub_10006A980();
  v29 = sub_10006AC90();
  v31 = v30;
  LOBYTE(v23) = v32;
  v49 = v28;
  v50 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v44;
  sub_10006AA00();
  sub_10000832C(v29, v31, v23 & 1);

  (*(v45 + 8))(v26, v35);
  v49 = v35;
  v50 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  sub_10006AA40();
  return (*(v47 + 8))(v34, v36);
}

uint64_t sub_10006215C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s5EntryVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000622E4(a1, v6);
  return sub_1000574D0(v6, a2);
}

unint64_t sub_1000621EC()
{
  result = qword_1000991C8;
  if (!qword_1000991C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000991C8);
  }

  return result;
}

uint64_t sub_100062238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100062280()
{
  result = qword_1000991E0[0];
  if (!qword_1000991E0[0])
  {
    sub_100008154(&qword_1000991A8, &qword_1000768F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000991E0);
  }

  return result;
}

uint64_t sub_1000622E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062348()
{
  sub_100008154(&qword_1000991C0, &unk_100076910);
  sub_100008154(&qword_1000991B8, &qword_100076908);
  sub_100008154(&qword_1000991B0, &qword_100076900);
  sub_100008154(&qword_1000991A8, &qword_1000768F8);
  sub_100062280();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100062470(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000624CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1000626A0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_100062958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_100031CE8(v2 + *(a1 + 20), &v12 - v6);
  v8 = type metadata accessor for Note(0);
  if ((*(*(v8 - 8) + 48))(v7, 2, v8))
  {
    sub_10006B1E0();
    v9 = sub_10006B1F0();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  else
  {
    v11 = sub_10006B1F0();
    (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
    return sub_100062AC0(v7);
  }
}

uint64_t sub_100062AC0(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100062B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100062C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s5EntryVMa_0(uint64_t a1)
{
  result = qword_1000992C0;
  if (!qword_1000992C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062DA0(uint64_t a1)
{
  sub_10006A560();
  if (v1 <= 0x3F)
  {
    sub_100062E24(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100062E24(uint64_t a1)
{
  if (!qword_1000969B8)
  {
    v2 = type metadata accessor for Note(255);
    v5 = type metadata accessor for ObjectStates(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1000969B8);
    }
  }
}

uint64_t sub_100062E7C()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_1000992F8);
  sub_10000CEB8(v0, qword_1000992F8);
  return sub_10006A6A0();
}

uint64_t sub_100062EC8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = sub_100007DF0(&qword_100099458, &qword_100076AC8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v50 - v3;
  v58 = sub_100007DF0(&qword_100099460, &qword_100076AD0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = v50 - v5;
  v7 = sub_100007DF0(&qword_100099468, &qword_100076AD8);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v51 = v50 - v9;
  v10 = sub_100007DF0(&qword_100099470, &qword_100076AE0);
  v11 = *(v10 - 8);
  v64 = v10;
  *&v65 = v11;
  __chkstk_darwin(v10);
  v59 = v50 - v12;
  v13 = sub_100007DF0(&qword_100099478, &qword_100076AE8);
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  __chkstk_darwin(v13);
  v61 = v50 - v15;
  sub_10006B290();
  type metadata accessor for QuickNoteTimelineProvider();
  v69 = swift_allocObject();
  type metadata accessor for QuickNoteWidgetView(0);
  sub_100065380(&qword_100099480, 255, type metadata accessor for QuickNoteWidgetView, &unk_10006F324);
  sub_100065380(&qword_100099488, v16, type metadata accessor for QuickNoteTimelineProvider, &unk_1000769B0);
  sub_10006B170();
  v57 = sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v17 = sub_10006B100();
  v53 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v56 = *(v18 + 80);
  v20 = v19;
  v50[1] = v19;
  v21 = (v56 + 32) & ~v56;
  v54 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100075C00;
  v23 = v22 + v21;
  v55 = enum case for WidgetFamily.systemSmall(_:);
  v24 = *(v18 + 104);
  v52 = v24;
  v24(v23);
  (v24)(v23 + v20, enum case for WidgetFamily.systemLarge(_:), v17);
  v25 = sub_1000653C8();
  sub_10006AA10();

  (*(v2 + 8))(v4, v1);
  sub_10006A980();
  v26 = sub_10006AC90();
  v28 = v27;
  v30 = v29;
  v69 = v1;
  v70 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v58;
  sub_10006AA30();
  sub_10000832C(v26, v28, v30 & 1);

  v34 = v33;
  (*(v60 + 8))(v6, v33);
  sub_10006A980();
  v35 = sub_10006AC90();
  v37 = v36;
  LOBYTE(v28) = v38;
  v69 = v34;
  v70 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v59;
  v41 = v62;
  sub_10006AA00();
  sub_10000832C(v35, v37, v28 & 1);

  (*(v63 + 8))(v32, v41);
  v69 = v41;
  v70 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v64;
  sub_10006AA40();
  (*(v65 + 8))(v40, v44);
  sub_100007DF0(&qword_100099498, &qword_100076AF8);
  sub_10006B120();
  v45 = swift_allocObject();
  v65 = xmmword_10006F820;
  *(v45 + 16) = xmmword_10006F820;
  sub_10006B110();
  v46 = v54;
  v47 = swift_allocObject();
  *(v47 + 16) = v65;
  v52(v47 + v46, v55, v53);
  v69 = v44;
  v70 = v42;
  swift_getOpaqueTypeConformance2();
  v48 = v66;
  sub_10006AA20();

  return (*(v67 + 8))(v43, v48);
}

uint64_t sub_100063764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100064FFC(a1, v7, type metadata accessor for QuickNoteTimelineProvider.Entry);
  sub_100009728(&v7[*(v5 + 28)], a2, &qword_100096948, &qword_1000751E0);
  return sub_1000650C8(v7, type metadata accessor for QuickNoteTimelineProvider.Entry);
}

uint64_t sub_10006383C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_1000993C0, &qword_100076A68);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_1000993B0, &unk_100076A40);
  v10 = sub_10006B230();
  if (*(v10 + 16))
  {
    sub_100064FFC(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, type metadata accessor for QuickNoteTimelineProvider.Entry);

    (*(v7 + 56))(v5, 0, 1, v6);
    sub_100065064(v5, v9);
  }

  else
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    v11 = *(v6 + 20);
    v12 = type metadata accessor for Note(0);
    (*(*(v12 - 8) + 56))(&v9[v11], 2, 2, v12);
    sub_10006A550();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_100009790(v5, &qword_1000993C0, &qword_100076A68);
    }
  }

  a2(v9);
  return sub_1000650C8(v9, type metadata accessor for QuickNoteTimelineProvider.Entry);
}

uint64_t sub_100063AA8(uint64_t a1, void (*a2)(char *))
{
  v45 = a1;
  v50 = a2;
  v2 = sub_10006B1A0();
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A560();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Note(0);
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007DF0(&qword_1000993B0, &unk_100076A40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v17 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v17, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v18 = v51;
  swift_endAccess();
  if (v18)
  {
    v43 = v10;
    v44 = v4;
    v19 = objc_opt_self();
    v20 = [v18 managedObjectContext];
    v21 = [v19 mostRecentSystemPaperNoteInManagedObjectContext:v20];

    if (v21)
    {
      v22 = v21;
      sub_10002D6CC(v22, 0, 0, [v19 globalVirtualSystemPaperFolder], 1u, v12);
      sub_1000642BC(v12, v16);
      sub_1000650C8(v12, type metadata accessor for Note);
      v50(v16);
    }

    else
    {
      if (qword_100096920 != -1)
      {
        swift_once();
      }

      v32 = sub_10006A6C0();
      sub_10000CEB8(v32, qword_1000992F8);
      v33 = sub_10006A6B0();
      v34 = sub_10006B380();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No recent System Paper note - returning placeholder timeline", v35, 2u);
      }

      sub_100007DF0(&qword_1000993B8, &unk_100076A50);
      v36 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
      v37 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10006F820;
      v39 = v38 + v37;
      (*(v46 + 56))(v9, 2, 2, v43);
      v40 = v47;
      sub_10006A550();
      (*(v48 + 32))(v39, v40, v49);
      sub_10004DAC4(v9, v39 + *(v36 + 20));
      sub_10006B190();
      sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry, &unk_100076A08);
      sub_10006B220();
      v50(v16);
    }
  }

  else
  {
    if (qword_100096920 != -1)
    {
      swift_once();
    }

    v23 = sub_10006A6C0();
    sub_10000CEB8(v23, qword_1000992F8);
    v24 = sub_10006A6B0();
    v25 = sub_10006B3A0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No modern note context - returning placeholder timeline", v26, 2u);
    }

    sub_100007DF0(&qword_1000993B8, &unk_100076A50);
    v27 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
    v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10006F820;
    v30 = v29 + v28;
    (*(v46 + 56))(v9, 2, 2, v10);
    v31 = v47;
    sub_10006A550();
    (*(v48 + 32))(v30, v31, v49);
    sub_10004DAC4(v9, v30 + *(v27 + 20));
    sub_10006B190();
    sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry, &unk_100076A08);
    sub_10006B220();
    v50(v16);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1000642BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v68 = a2;
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v2 - 8);
  v65 = &v55 - v3;
  v4 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  __chkstk_darwin(v4 - 8);
  v60 = &v55 - v5;
  v6 = sub_10006B1A0();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = __chkstk_darwin(v6);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v55 - v9;
  v59 = sub_10006A560();
  v69 = *(v59 - 8);
  v10 = __chkstk_darwin(v59);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v55 - v13;
  v14 = sub_10006A5F0();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10006A600();
  v18 = *(v61 - 1);
  v19 = __chkstk_darwin(v61);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v55 - v22;
  v24 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v25 = __chkstk_darwin(v24 - 8);
  v58 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v55 - v27;
  sub_10006A5E0();
  (*(v15 + 104))(v17, enum case for Calendar.Component.day(_:), v14);
  sub_10006A5E0();
  sub_10006A550();
  sub_10006A5C0();
  v29 = *(v69 + 8);
  v30 = v12;
  v31 = v59;
  v29(v30, v59);
  v32 = *(v18 + 8);
  v55 = v18 + 8;
  v33 = v61;
  v32(v21, v61);
  v34 = v70;
  sub_10006A5D0();
  v29(v34, v31);
  (*(v57 + 8))(v17, v56);
  v35 = v69;
  v36 = v23;
  v37 = v60;
  v38 = v58;
  v32(v36, v33);
  v39 = v31;
  v61 = v28;
  sub_100009728(v28, v38, &qword_100097C70, &qword_100076A60);
  v40 = (*(v35 + 48))(v38, 1, v31);
  v41 = 1;
  if (v40 != 1)
  {
    v42 = v70;
    (*(v35 + 32))(v70, v38, v31);
    sub_10006B180();
    v29(v42, v31);
    v41 = 0;
  }

  v44 = v66;
  v43 = v67;
  (*(v66 + 56))(v37, v41, 1, v67);
  v45 = *(v44 + 48);
  if (v45(v37, 1, v43) == 1)
  {
    v46 = v64;
    sub_10006B190();
    if (v45(v37, 1, v43) != 1)
    {
      sub_100009790(v37, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    v46 = v64;
    (*(v44 + 32))(v64, v37, v43);
  }

  sub_100007DF0(&qword_1000993B8, &unk_100076A50);
  v47 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
  v48 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10006F820;
  v50 = v49 + v48;
  v51 = v65;
  sub_100064FFC(v62, v65, type metadata accessor for Note);
  v52 = type metadata accessor for Note(0);
  (*(*(v52 - 8) + 56))(v51, 0, 2, v52);
  v53 = v70;
  sub_10006A550();
  (*(v35 + 32))(v50, v53, v39);
  sub_10004DAC4(v51, v50 + *(v47 + 20));
  (*(v44 + 16))(v63, v46, v43);
  sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry, &unk_100076A08);
  sub_10006B220();
  (*(v44 + 8))(v46, v43);
  return sub_100009790(v61, &qword_100097C70, &qword_100076A60);
}

uint64_t type metadata accessor for QuickNoteTimelineProvider.Entry(uint64_t a1)
{
  result = qword_100099420;
  if (!qword_100099420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100064B44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for QuickNoteTimelineProvider.Entry(0) + 20);
  v3 = type metadata accessor for Note(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_100064BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10006B200();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = *v3;
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = v10;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_100063AA8(a1, sub_100064F84);
}

uint64_t sub_100064D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100064E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000131E4;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100064EB8()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064F84(uint64_t a1)
{
  sub_10006B200();
  v3 = *(v1 + 16);

  return sub_10006383C(a1, v3);
}

uint64_t sub_100064FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickNoteTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000650C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006525C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100065380(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000653C8()
{
  result = qword_100099490;
  if (!qword_100099490)
  {
    sub_100008154(&qword_100099458, &qword_100076AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099490);
  }

  return result;
}

uint64_t sub_10006542C()
{
  sub_100008154(&qword_100099478, &qword_100076AE8);
  sub_100008154(&qword_100099470, &qword_100076AE0);
  sub_100008154(&qword_100099468, &qword_100076AD8);
  sub_100008154(&qword_100099460, &qword_100076AD0);
  sub_100008154(&qword_100099458, &qword_100076AC8);
  sub_1000653C8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000655A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000656F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for Note(uint64_t a1)
{
  result = qword_1000994F8;
  if (!qword_1000994F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006587C(uint64_t a1)
{
  sub_100065A20(319, &unk_100099508, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_100065A74(319, &qword_100096DC8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100065A20(319, &qword_100096DD0, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_100065A74(319, &qword_1000984B8, &type metadata for Image, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100065A74(319, &unk_100096DD8, &type metadata for Image, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100065A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10006B420();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100065AC4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_10006B280();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_10006B290();
  v6 = v5;

  v7 = v0[3];
  v25 = v0[2];
  v26 = v7;
  v27 = v4;
  v28 = v6;
  v8 = (v0 + *(type metadata accessor for Note(0) + 44));
  v9 = v8[1];
  v29 = *v8;
  v30 = v9;
  v10 = v0[9];
  v31 = v0[8];
  v32 = v10;

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
LABEL_2:
  if (v12 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 4)
    {
      sub_100007DF0(&qword_100096E30, &qword_10006F800);
      swift_arrayDestroy();
      sub_100007DF0(&qword_100096E38, qword_10006F808);
      sub_10000DD38();
      v23 = sub_10006B240();

      return v23;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *&v24[v16];
    v16 += 16;
    if (v18)
    {
      v19 = *&v24[v17 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100065DB8(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        result = sub_100065DB8((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = sub_10006AED0();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

char *sub_100065DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007DF0(&qword_100099578, qword_100076B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100065EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006A520();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v7 - 8);
  v68 = &v60 - v8;
  v9 = sub_100007DF0(&qword_100096E20, &qword_100076B70);
  __chkstk_darwin(v9);
  v67 = &v60 - v10;
  v11 = sub_10006A560();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_100007DF0(&qword_100099568, &qword_100076B78);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  if (*a1 != *a2 && (sub_10006B540() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_10006B540() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_10006B540() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_10006B540() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_10006B540() & 1) == 0 || *(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_23;
  }

  v63 = v5;
  v64 = v9;
  v61 = v4;
  v62 = type metadata accessor for Note(0);
  v20 = *(v62 + 40);
  v21 = *(v17 + 48);
  sub_100009728(a1 + v20, v19, &qword_100097C70, &qword_100076A60);
  v65 = v21;
  sub_100009728(a2 + v20, &v19[v21], &qword_100097C70, &qword_100076A60);
  v22 = v69;
  v23 = *(v69 + 48);
  if (v23(v19, 1, v11) == 1)
  {
    v24 = v23(&v19[v65], 1, v11);
    v25 = v64;
    if (v24 == 1)
    {
      sub_100009790(v19, &qword_100097C70, &qword_100076A60);
      goto LABEL_26;
    }

LABEL_21:
    v27 = &qword_100099568;
    v28 = &qword_100076B78;
    v29 = v19;
LABEL_22:
    sub_100009790(v29, v27, v28);
    goto LABEL_23;
  }

  sub_100009728(v19, v16, &qword_100097C70, &qword_100076A60);
  v26 = v23(&v19[v65], 1, v11);
  v25 = v64;
  if (v26 == 1)
  {
    (*(v22 + 8))(v16, v11);
    goto LABEL_21;
  }

  (*(v22 + 32))(v13, &v19[v65], v11);
  sub_10006672C(&qword_100099570, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v32 = sub_10006B250();
  v33 = *(v22 + 8);
  v33(v13, v11);
  v33(v16, v11);
  sub_100009790(v19, &qword_100097C70, &qword_100076A60);
  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v34 = v62;
  v35 = *(v62 + 44);
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    v40 = v63;
    v41 = v68;
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_10006B540() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v40 = v63;
    v41 = v68;
    if (v39)
    {
      goto LABEL_23;
    }
  }

  v42 = v34[12];
  v43 = *(v25 + 48);
  v44 = v67;
  sub_100009728(a1 + v42, v67, &qword_100096B30, &qword_10006F548);
  sub_100009728(a2 + v42, v44 + v43, &qword_100096B30, &qword_10006F548);
  v45 = *(v40 + 48);
  v46 = v61;
  if (v45(v44, 1, v61) != 1)
  {
    sub_100009728(v44, v41, &qword_100096B30, &qword_10006F548);
    if (v45(v44 + v43, 1, v46) != 1)
    {
      v47 = v44 + v43;
      v48 = v66;
      (*(v40 + 32))(v66, v47, v46);
      sub_10006672C(&qword_100096E28, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = sub_10006B250();
      v50 = *(v40 + 8);
      v50(v48, v46);
      v50(v41, v46);
      sub_100009790(v44, &qword_100096B30, &qword_10006F548);
      if ((v49 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

    (*(v40 + 8))(v41, v46);
    goto LABEL_38;
  }

  if (v45(v44 + v43, 1, v46) != 1)
  {
LABEL_38:
    v27 = &qword_100096E20;
    v28 = &qword_100076B70;
    v29 = v44;
    goto LABEL_22;
  }

  sub_100009790(v44, &qword_100096B30, &qword_10006F548);
LABEL_40:
  v51 = v34[13];
  v52 = *(a2 + v51);
  if (*(a1 + v51))
  {
    if (!v52)
    {
      goto LABEL_23;
    }

    v53 = sub_10006AED0();

    if ((v53 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v52)
  {
    goto LABEL_23;
  }

  if (sub_100065D00(*(a1 + v34[14]), *(a2 + v34[14])))
  {
    v54 = v34[15];
    v55 = *(a2 + v54);
    if (*(a1 + v54))
    {
      if (!v55)
      {
        goto LABEL_23;
      }

      v56 = sub_10006AED0();

      if ((v56 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v55)
    {
      goto LABEL_23;
    }

    v57 = v34[16];
    v58 = *(a2 + v57);
    if (*(a1 + v57))
    {
      if (v58)
      {

        v59 = sub_10006AED0();

        if (v59)
        {
          goto LABEL_56;
        }
      }
    }

    else if (!v58)
    {
LABEL_56:
      v30 = *(a1 + v34[17]) ^ *(a2 + v34[17]) ^ 1;
      return v30 & 1;
    }
  }

LABEL_23:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_10006672C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100066778()
{
  result = qword_100099580;
  if (!qword_100099580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099580);
  }

  return result;
}

unint64_t sub_1000667D0()
{
  result = qword_100099588;
  if (!qword_100099588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099588);
  }

  return result;
}

unint64_t sub_100066890()
{
  result = qword_100099590;
  if (!qword_100099590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099590);
  }

  return result;
}

uint64_t sub_1000668E4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_10006A4B0();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v26 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_1000995A8, &qword_100076CF8);
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v25 = sub_100007DF0(&qword_1000995B0, &qword_100076D00);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v20 - v6;
  v24 = sub_100007DF0(&qword_1000995B8, &qword_100076D08);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v20 - v8;
  v30 = sub_10006B290();
  v31 = v10;

  v32._object = 0x8000000100079100;
  v32._countAndFlagsBits = 0xD000000000000011;
  sub_10006B2C0(v32);

  sub_10006B2A0();

  sub_100007DF0(&qword_1000995C0, &qword_100076D10);
  v11 = sub_100008154(&qword_1000995C8, &qword_100076D18);
  v12 = sub_1000095F4(&qword_1000995D0, &qword_1000995C8, &qword_100076D18, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v30 = v11;
  v31 = v12;
  swift_getOpaqueTypeConformance2();
  sub_10006B210();
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v13 = v28;
  sub_10000CEB8(v28, qword_1000A5768);
  v14 = sub_1000095F4(&qword_1000995D8, &qword_1000995A8, &qword_100076CF8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_10006AAD0();
  (*(v21 + 8))(v5, v3);
  v15 = v26;
  sub_10006A490();
  v30 = v3;
  v31 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v25;
  sub_10006AAC0();
  (*(v27 + 8))(v15, v13);
  (*(v23 + 8))(v7, v17);
  v30 = v17;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v24;
  sub_10006AAE0();
  return (*(v22 + 8))(v9, v18);
}

uint64_t sub_100066DE8()
{
  v0 = sub_100007DF0(&qword_1000995C8, &qword_100076D18);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_100007DF0(&qword_1000995E0, &unk_100076D20);
  sub_1000095F4(&qword_1000995E8, &qword_1000995E0, &unk_100076D20, &protocol conformance descriptor for Label<A, B>);
  sub_100066890();
  sub_10006B070();
  sub_10006AE30();
  sub_1000095F4(&qword_1000995D0, &qword_1000995C8, &qword_100076D18, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_10006AA60();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100066FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006A4B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v6 = sub_10000CEB8(v2, qword_1000A5768);
  (*(v3 + 16))(v5, v6, v2);
  result = sub_10006ACA0();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_10006710C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006AEC0();
  *a1 = result;
  return result;
}

uint64_t sub_100067150()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5768);
  sub_10000CEB8(v6, qword_1000A5768);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

uint64_t sub_100067330@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A4B0();
  v3 = sub_10000CEB8(v2, qword_1000A5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000673FC()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 activateRemoteAlert];

  sub_10006A100();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100067498(uint64_t a1)
{
  v2 = sub_100066890();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100067554()
{
  sub_100008154(&qword_1000995B8, &qword_100076D08);
  sub_100008154(&qword_1000995B0, &qword_100076D00);
  sub_100008154(&qword_1000995A8, &qword_100076CF8);
  sub_1000095F4(&qword_1000995D8, &qword_1000995A8, &qword_100076CF8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006766C()
{
  result = qword_100099610;
  if (!qword_100099610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099610);
  }

  return result;
}

unint64_t sub_1000676C4()
{
  result = qword_100099618;
  if (!qword_100099618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099618);
  }

  return result;
}

uint64_t sub_10006771C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006A4A0();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A5B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006B270();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006A4B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006A450();
  sub_10000D8DC(v10, qword_1000A5780);
  sub_10000CEB8(v10, qword_1000A5780);
  sub_10006B260();
  sub_10006A5A0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006A4C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006A440();
}

uint64_t sub_1000679F0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  __chkstk_darwin(v1 - 8);
  v36 = v29 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v3 - 8);
  v37 = v29 - v4;
  v5 = sub_10006A4A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10006B270();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10006A4B0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v34 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v33 = v29 - v15;
  sub_10006B260();
  sub_10006A5A0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v30 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v5);
  v18 = v37;
  sub_10006A4C0();
  v19 = *(v12 + 56);
  v12 += 56;
  v19(v18, 0, 1, v11);
  v20 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v21 = v36;
  sub_10006A2F0();
  v22 = sub_10006A300();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v23 = *(v12 + 16);
  v24 = (*(v12 + 24) + 32) & ~*(v12 + 24);
  v31 = 8 * v23;
  v25 = swift_allocObject();
  v32 = v25;
  *(v25 + 16) = xmmword_1000758D0;
  v26 = v25 + v24;
  sub_10006B260();
  sub_10006A5A0();
  v27 = v30;
  v17(v8, v16, v30);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  v29[1] = v26;
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v17(v8, v16, v27);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_1000682C4()
{
  v0 = qword_1000995F0;

  return v0;
}

unint64_t sub_100068300()
{
  result = qword_100099620;
  if (!qword_100099620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099620);
  }

  return result;
}

uint64_t sub_100068354(uint64_t a1)
{
  v2 = sub_10006766C();

  return EntityURLRepresentation.init(stringLiteral:)(0xD000000000000043, 0x80000001000791C0, a1, v2);
}

unint64_t sub_1000683BC()
{
  result = qword_100099628;
  if (!qword_100099628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099628);
  }

  return result;
}

unint64_t sub_100068414()
{
  result = qword_100099630;
  if (!qword_100099630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099630);
  }

  return result;
}

unint64_t sub_10006846C()
{
  result = qword_100099638;
  if (!qword_100099638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099638);
  }

  return result;
}

unint64_t sub_1000684C4()
{
  result = qword_100099640;
  if (!qword_100099640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099640);
  }

  return result;
}

uint64_t sub_100068518(uint64_t a1)
{
  sub_100069824();
  v2 = sub_10006A370();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100068588()
{
  result = qword_100099648;
  if (!qword_100099648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099648);
  }

  return result;
}

unint64_t sub_1000685E0()
{
  result = qword_100099650;
  if (!qword_100099650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099650);
  }

  return result;
}

unint64_t sub_100068638()
{
  result = qword_100099658;
  if (!qword_100099658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099658);
  }

  return result;
}

unint64_t sub_100068690()
{
  result = qword_100099660;
  if (!qword_100099660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099660);
  }

  return result;
}

uint64_t sub_1000686E4@<X0>(uint64_t *a2@<X8>)
{
  sub_100068914();
  result = sub_10006A110();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100068760()
{
  result = qword_100099668;
  if (!qword_100099668)
  {
    sub_100008154(&qword_100099670, &qword_100076F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099668);
  }

  return result;
}

uint64_t sub_1000687C4(uint64_t a1)
{
  v2 = sub_10006766C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100068814()
{
  result = qword_100099678;
  if (!qword_100099678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099678);
  }

  return result;
}

uint64_t sub_10006886C(uint64_t a1)
{
  v2 = sub_100068690();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000688BC()
{
  result = qword_100099680;
  if (!qword_100099680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099680);
  }

  return result;
}

unint64_t sub_100068914()
{
  result = qword_100099688;
  if (!qword_100099688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099688);
  }

  return result;
}

uint64_t sub_10006899C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000676C4();
  *v4 = v2;
  v4[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100068A50()
{
  result = qword_100099690;
  if (!qword_100099690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099690);
  }

  return result;
}

unint64_t sub_100068AA8()
{
  result = qword_100099698;
  if (!qword_100099698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099698);
  }

  return result;
}

uint64_t sub_100068AFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000676C4();
  *v5 = v2;
  v5[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100068BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000676C4();
  *v4 = v2;
  v4[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100068C64()
{
  result = qword_1000996A0;
  if (!qword_1000996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996A0);
  }

  return result;
}

unint64_t sub_100068CBC()
{
  result = qword_1000996A8;
  if (!qword_1000996A8)
  {
    sub_100008154(&qword_1000996B0, qword_100077108);
    sub_100068638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996A8);
  }

  return result;
}

uint64_t sub_100068D40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000684C4();
  *v5 = v2;
  v5[1] = sub_10000EE3C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100068DF8()
{
  result = qword_1000996B8;
  if (!qword_1000996B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996B8);
  }

  return result;
}

uint64_t sub_100068E4C()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006A5B0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10006B270();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10006A4B0();
  sub_10000D8DC(v6, qword_1000A5798);
  sub_10000CEB8(v6, qword_1000A5798);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100069074(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_1000690E8()
{
  result = qword_1000996C0;
  if (!qword_1000996C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996C0);
  }

  return result;
}

uint64_t sub_10006913C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006977C();
  v5 = sub_100069824();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000691A8()
{
  v0 = qword_100099600;

  return v0;
}

unint64_t sub_1000691E4()
{
  result = qword_1000996C8;
  if (!qword_1000996C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996C8);
  }

  return result;
}

unint64_t sub_10006923C()
{
  result = qword_1000996D0;
  if (!qword_1000996D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996D0);
  }

  return result;
}

uint64_t sub_100069318(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10006977C();
  v6 = sub_1000697D0();
  v7 = sub_100069824();
  *v4 = v2;
  v4[1] = sub_100011848;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000693E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100069478();
  *a1 = result;
  return result;
}

uint64_t sub_10006940C(uint64_t a1)
{
  v2 = sub_1000690E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100069478()
{
  v17 = sub_10006A3B0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007DF0(&qword_1000996D8, &qword_100077418);
  sub_10006A490();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = sub_10006A0F0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10006766C();
  return sub_10006A150();
}

unint64_t sub_10006977C()
{
  result = qword_1000996E0;
  if (!qword_1000996E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996E0);
  }

  return result;
}

unint64_t sub_1000697D0()
{
  result = qword_1000996E8;
  if (!qword_1000996E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996E8);
  }

  return result;
}

unint64_t sub_100069824()
{
  result = qword_1000996F0;
  if (!qword_1000996F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996F0);
  }

  return result;
}

uint64_t sub_100069CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4(a1, a2);
  v9[0] = a5;
  v9[1] = a6;
  v10 = 2;
  LOBYTE(a6) = sub_10006A630();
  sub_10000804C(v9);
  return a6 & 1;
}

id sub_100069D7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100069E98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}

void sub_100069F10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}

void sub_100069F88(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown object type — returning nil {objectID: %@}", buf, 0xCu);
}