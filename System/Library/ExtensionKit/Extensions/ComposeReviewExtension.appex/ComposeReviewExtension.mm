uint64_t sub_1000011F0()
{
  v0 = sub_100002AEC();

  return ReviewExtensionScene.init(content:)(sub_10000124C, 0, &type metadata for ComposeReviewExtensionView, v0);
}

uint64_t sub_10000124C@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100001284(uint64_t a1)
{
  v2 = sub_100002A98();

  return ReviewExtension.configuration.getter(a1, v2);
}

void sub_1000012D4(uint64_t a1, uint64_t a2)
{
  sub_10000331C();
  v3 = v2;
  v5 = v4;
  v70 = v6;
  v7 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4();
  v67 = v8;
  __chkstk_darwin(v9);
  sub_100003268();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v74 = sub_100002CF0(&qword_10000C040, &qword_100003A00);
  sub_10000321C();
  sub_10000322C();
  __chkstk_darwin(v16);
  sub_100003290();
  v18 = v17;
  sub_100002CF0(&qword_10000C048, &qword_100003A08);
  sub_1000031E4();
  v68 = v20;
  v69 = v19;
  sub_10000322C();
  __chkstk_darwin(v21);
  sub_100003290();
  v75 = v22;
  v23 = sub_100003514();
  sub_1000031E4();
  v25 = v24;
  __chkstk_darwin(v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    v83 = v5;
    v29 = v5;
  }

  else
  {

    sub_100003614();
    v30 = sub_100003544();
    sub_100003484();

    sub_100003504();
    swift_getAtKeyPath();
    sub_100002D38(v5, 0);
    (*(v25 + 8))(v28, v23);
  }

  v31 = swift_allocBox();
  v65 = v31;
  v33 = v32;
  sub_1000033E4();
  sub_100002FD8(&qword_10000C050, &type metadata accessor for ReviewExtensionService, &protocol conformance descriptor for ReviewExtensionService);
  v73 = v33;
  sub_1000035D4();
  v34 = v18;
  *v18 = sub_100003524();
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  sub_100002CF0(&qword_10000C058, &qword_100003A10);
  sub_100001990(v31, v35, v36);
  v37 = v67;
  v71 = *(v67 + 16);
  v72 = v67 + 16;
  v71(v12, v33, v7);
  sub_1000035C4();
  v38 = *(v37 + 8);
  v38(v12, v7);
  swift_getKeyPath();
  sub_1000035E4();

  v38(v15, v7);
  v63 = v38;
  v40 = v83;
  v39 = v84;
  v66 = v15;
  v41 = v85;
  swift_getKeyPath();
  v80 = v40;
  v81 = v39;
  v82 = v41;
  v67 = sub_100002CF0(&qword_10000C060, &qword_100003A78);
  sub_1000035A4();

  v62 = v78;
  v61 = v79;

  v42 = sub_1000032F0();
  v43(v42);
  sub_1000035B4();
  v38(v12, v7);
  v44 = v76;
  sub_1000033A4();

  sub_100003238();
  v64 = sub_100002F54(v45, v46, v47, v48);

  v49 = v61;
  sub_100003564();

  swift_unknownObjectRelease();

  sub_1000030D8(v34, &qword_10000C040, &qword_100003A00);
  v50 = sub_1000032F0();
  v51(v50);
  v52 = v66;
  sub_1000035C4();
  v53 = v63;
  v63(v12, v7);
  swift_getKeyPath();
  sub_1000035E4();

  v53(v52, v7);
  v54 = v83;
  v55 = v84;
  v56 = v85;
  swift_getKeyPath();
  v80 = v54;
  v81 = v55;
  v82 = v56;
  sub_1000035A4();

  v57 = v79;

  v76 = v74;
  v77 = v64;
  sub_100003250();
  swift_getOpaqueTypeConformance2();
  v58 = v69;
  v59 = v75;
  sub_100003554();

  (*(v68 + 8))(v59, v58);

  sub_100003304();
}

void sub_100001990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000331C();
  v56 = v3;
  v58 = v4;
  v55 = sub_100002CF0(&qword_10000C090, &qword_100003AD0);
  sub_10000321C();
  sub_10000322C();
  __chkstk_darwin(v5);
  sub_100003290();
  v51 = v6;
  v7 = sub_100002CF0(&qword_10000C098, &qword_100003AD8);
  sub_10000321C();
  sub_10000322C();
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v52 = sub_100002CF0(&qword_10000C0A0, &qword_100003AE0);
  sub_10000321C();
  sub_10000322C();
  __chkstk_darwin(v11);
  sub_100003290();
  v53 = v12;
  v57 = sub_100002CF0(&qword_10000C0A8, &qword_100003AE8);
  sub_10000321C();
  sub_10000322C();
  __chkstk_darwin(v13);
  sub_100003290();
  v54 = v14;
  v15 = sub_100002CF0(&qword_10000C0B0, &qword_100003AF0);
  sub_1000031E4();
  v17 = v16;
  sub_10000322C();
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v21 = sub_100002CF0(&qword_10000C0B8, &qword_100003AF8);
  __chkstk_darwin(v21 - 8);
  sub_100003268();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4();
  v30 = v29;
  sub_10000322C();
  __chkstk_darwin(v31);
  v33 = &v48 - v32;
  v34 = swift_projectBox();
  (*(v30 + 16))(v33, v34, v28);
  sub_1000035B4();
  v35 = v28;
  v36 = v27;
  (*(v30 + 8))(v33, v35);
  v37 = v59;
  sub_1000033C4();

  v38 = sub_1000033B4();
  if (sub_100002D5C(v27, 1, v38) == 1)
  {
    goto LABEL_2;
  }

  v49 = v27;
  v50 = v7;
  v56 = v10;
  sub_100003078(v27, v24, &qword_10000C0B8, &qword_100003AF8);
  v39 = *(v38 - 8);
  v40 = (*(v39 + 88))(v24, v38);
  if (v40 == enum case for ReviewExtensionService.State.loaded(_:))
  {
    (*(v39 + 96))(v24, v38);
    sub_100003364();
    sub_100002FD8(&qword_10000C0F8, &type metadata accessor for ReviewComposerView, &protocol conformance descriptor for ReviewComposerView);
    v41 = v51;
    sub_1000034B4();
    v42 = sub_1000033F4();
    KeyPath = swift_getKeyPath();
    v59 = v42;
    v44 = sub_1000034A4();
    v45 = (v41 + *(v55 + 36));
    *v45 = KeyPath;
    v45[1] = v44;
    sub_100003078(v41, v53, &qword_10000C090, &qword_100003AD0);
    swift_storeEnumTagMultiPayload();
    sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
    sub_100002E70();
    v46 = v54;
    sub_100003534();
    sub_100003078(v46, v56, &qword_10000C0A8, &qword_100003AE8);
    swift_storeEnumTagMultiPayload();
    sub_100002DB8();
    sub_100003534();

    sub_1000030D8(v46, &qword_10000C0A8, &qword_100003AE8);
    sub_1000030D8(v41, &qword_10000C090, &qword_100003AD0);
LABEL_7:
    v36 = v49;
    goto LABEL_8;
  }

  if (v40 == enum case for ReviewExtensionService.State.loading(_:))
  {
    sub_100003494();
    (*(v17 + 16))(v53, v20, v15);
    swift_storeEnumTagMultiPayload();
    sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
    sub_100002E70();
    v47 = v54;
    sub_100003534();
    sub_100003078(v47, v56, &qword_10000C0A8, &qword_100003AE8);
    swift_storeEnumTagMultiPayload();
    sub_100002DB8();
    sub_100003534();
    sub_1000030D8(v47, &qword_10000C0A8, &qword_100003AE8);
    (*(v17 + 8))(v20, v15);
    goto LABEL_7;
  }

  (*(v39 + 8))(v24, v38);
  v10 = v56;
  v36 = v49;
LABEL_2:
  sub_100003494();
  (*(v17 + 16))(v10, v20, v15);
  swift_storeEnumTagMultiPayload();
  sub_100002DB8();
  sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
  sub_100003534();
  (*(v17 + 8))(v20, v15);
LABEL_8:
  sub_1000030D8(v36, &qword_10000C0B8, &qword_100003AF8);
  sub_100003304();
}

uint64_t sub_1000020E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003384();
  *a1 = result;
  return result;
}

uint64_t sub_100002140@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003444();
  *a1 = result;
  return result;
}

void sub_10000219C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000331C();
  v48 = v3;
  v45 = v4;
  v5 = sub_100002CF0(&qword_10000C080, &qword_100003AC0);
  __chkstk_darwin(v5 - 8);
  sub_100003268();
  v44 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4();
  sub_10000322C();
  __chkstk_darwin(v11);
  v12 = sub_100002CF0(&qword_10000C088, &qword_100003AC8);
  sub_1000031E4();
  v14 = v13;
  sub_10000322C();
  __chkstk_darwin(v15);
  sub_100003290();
  v49 = v16;
  swift_projectBox();
  v17 = sub_100003278();
  v46 = v18;
  v18(v17);
  sub_10000329C();
  v19 = sub_1000032E4();
  v47 = v20;
  v20(v19);
  v21 = v50;
  v22 = sub_100003384();

  sub_100003464();
  if (sub_100002D5C(v10, 1, v12) == 1)
  {
    sub_1000030D8(v10, &qword_10000C080, &qword_100003AC0);
  }

  else
  {
    v42 = v14;
    (*(v14 + 32))(v49, v10, v12);
    v23 = sub_100003278();
    v24 = v46;
    v46(v23);
    sub_10000329C();
    v25 = sub_1000032E4();
    v26 = v47;
    v47(v25);
    v27 = v50;
    v28 = sub_100003384();

    v43 = v12;
    sub_100002D84(v44, 1, 1, v12);
    sub_100003474();

    v29 = sub_100003278();
    v24(v29);
    sub_10000329C();
    v30 = sub_1000032E4();
    v26(v30);
    v31 = v50;
    v32 = sub_100003384();

    sub_100003454();
    v33 = v45;
    v34 = v48;
    v35 = v49;
    if ((v48 & 1) == 0)
    {
      v36 = sub_100003278();
      v46(v36);
      v37 = v33;
      sub_10000329C();
      v38 = sub_1000032E4();
      v47(v38);
      v39 = v50;
      v40 = [v37 account];
      sub_1000033D4();

      sub_100002DAC(v33, 0);
      v34 = v48;
    }

    sub_10000253C(v33, v34 & 1, &qword_10000C088, &qword_100003AC8);
    (*(v42 + 8))(v35, v43);
  }

  sub_100003304();
}

uint64_t sub_10000253C(void *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100002CF0(a3, a4);
    return sub_1000035F4();
  }

  else
  {
    v7 = a1;
    sub_100002CF0(a3, a4);
    return sub_100003604();
  }
}

uint64_t sub_1000025B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003404();
  *a1 = result;
  return result;
}

void sub_100002614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000331C();
  v37 = v3;
  v38 = v4;
  v5 = sub_100002CF0(&qword_10000C070, &qword_100003AB0);
  __chkstk_darwin(v5 - 8);
  sub_100003268();
  v36 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4();
  v13 = v12;
  sub_10000322C();
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_100002CF0(&qword_10000C078, &qword_100003AB8);
  sub_1000031E4();
  v40 = v18;
  sub_10000322C();
  __chkstk_darwin(v19);
  sub_100003290();
  v39 = v20;
  swift_projectBox();
  v21 = sub_1000032B8();
  v35 = v22;
  v22(v21);
  sub_1000032C8();
  v23 = *(v13 + 8);
  v23(v16, v11);
  v24 = v41;
  v25 = sub_100003384();

  sub_100003424();
  if (sub_100002D5C(v10, 1, v17) == 1)
  {
    sub_1000030D8(v10, &qword_10000C070, &qword_100003AB0);
  }

  else
  {
    (*(v40 + 32))(v39, v10, v17);
    v26 = sub_1000032B8();
    v27 = v35;
    v35(v26);
    sub_1000032C8();
    v23(v16, v11);
    v28 = v41;
    v29 = sub_100003384();

    sub_100002D84(v36, 1, 1, v17);
    sub_100003434();

    v30 = sub_1000032B8();
    v27(v30);
    sub_1000032C8();
    v23(v16, v11);
    v31 = v41;
    v32 = sub_100003384();

    sub_100003414();
    v33 = v39;
    sub_10000253C(v38, v37 & 1, &qword_10000C078, &qword_100003AB8);
    (*(v40 + 8))(v33, v17);
  }

  sub_100003304();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000029D0();
  sub_100003334();
  return 0;
}

unint64_t sub_1000029D0()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

unint64_t sub_100002A98()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_100002AEC()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100002B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034C4();
  *a1 = result;
  return result;
}

uint64_t sub_100002BA4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100002BB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100002BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100002C90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002CF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100002D38(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_100002DAC(id a1, char a2)
{
  if (a2)
  {
    _swift_errorRelease(a1);
  }

  else
  {
  }
}

unint64_t sub_100002DB8()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    sub_100002C90(&qword_10000C0A8, &qword_100003AE8);
    sub_100002F54(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100002E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002E70()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    sub_100002C90(&qword_10000C090, &qword_100003AD0);
    sub_100002F54(&qword_10000C0D8, &qword_10000C0E0, &qword_100003B00, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100002F54(&qword_10000C0E8, &qword_10000C0F0, &qword_100003B08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002F54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002C90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002F9C()
{

  return ReviewComposerView.init(viewModel:)(v0);
}

uint64_t sub_100002FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034E4();
  *a1 = result;
  return result;
}

uint64_t sub_100003078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002CF0(a3, a4);
  sub_10000321C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000030D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002CF0(a2, a3);
  sub_10000321C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100003130()
{
  sub_100002C90(&qword_10000C048, &qword_100003A08);
  sub_100002C90(&qword_10000C040, &qword_100003A00);
  sub_100003238();
  sub_100002F54(v0, &qword_10000C040, &qword_100003A00, v1);
  sub_100003250();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000031F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100002F54(a1, a2, a3, &protocol conformance descriptor for ProgressView<A, B>);
}

void *sub_10000329C()
{

  return sub_1000035B4();
}

void *sub_1000032C8()
{

  return sub_1000035B4();
}