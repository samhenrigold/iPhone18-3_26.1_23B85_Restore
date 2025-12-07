uint64_t sub_100001DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v65 = a2;
  v5 = type metadata accessor for AppIconConfiguration(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100003650(&qword_1000647C8, &qword_10004DA98);
  __chkstk_darwin(v64);
  v57 = (&v56 - v9);
  v60 = sub_100003650(&qword_1000647D0, &qword_10004DAA0);
  __chkstk_darwin(v60);
  v11 = &v56 - v10;
  v62 = sub_100003650(&qword_1000647D8, &qword_10004DAA8);
  __chkstk_darwin(v62);
  v63 = &v56 - v12;
  v58 = sub_100003650(&qword_1000647E0, &qword_10004DAB0);
  __chkstk_darwin(v58);
  v14 = &v56 - v13;
  v61 = sub_100003650(&qword_1000647E8, &qword_10004DAB8);
  __chkstk_darwin(v61);
  v59 = &v56 - v15;
  v16 = type metadata accessor for AppIcon(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = *(a1 + 16);
  if (v21 == 1)
  {
    sub_100003DD4(v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v11, type metadata accessor for AppIcon);
    (*(v17 + 56))(v11, 0, 1, v16);
    sub_10004C720();
    sub_10004BF90();
    v25 = &v11[*(sub_100003650(&qword_100064830, &qword_10004DAD8) + 36)];
    v26 = v68;
    *v25 = v67;
    *(v25 + 1) = v26;
    *(v25 + 2) = v69;
    sub_10004C7B0();
    v28 = v27;
    v30 = v29;
    v31 = &v11[*(sub_100003650(&qword_100064820, &qword_10004DAD0) + 36)];
    *v31 = 0xBFDBECDE5DA115A9;
    *(v31 + 1) = v28;
    *(v31 + 2) = v30;
    CGAffineTransformMakeTranslation(&v66, 16.0, 9.0);
    v32 = *&v66.c;
    v33 = *&v66.tx;
    v34 = &v11[*(v60 + 36)];
    *v34 = *&v66.a;
    *(v34 + 1) = v32;
    *(v34 + 2) = v33;
    v35 = &qword_1000647D0;
    v36 = &qword_10004DAA0;
    sub_100003E3C(v11, v14, &qword_1000647D0, &qword_10004DAA0);
    swift_storeEnumTagMultiPayload();
    sub_10000396C();
    sub_1000039C4();
    v37 = v59;
    sub_10004C320();
    sub_100003E3C(v37, v63, &qword_1000647E8, &qword_10004DAB8);
    swift_storeEnumTagMultiPayload();
    sub_1000038E0();
    sub_100003BEC();
    sub_10004C320();
    sub_100003EA4(v37, &qword_1000647E8, &qword_10004DAB8);
    v38 = v11;
  }

  else
  {
    if (!v21)
    {
      sub_10004BB60();
      *&v19[v5[5]] = 0;
      v22 = &v19[v5[6]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 1;
      v19[v5[7]] = 0;
      v19[v5[8]] = 1;
      sub_10004CB40();
      sub_100003DD4(v19, v14, type metadata accessor for AppIcon);
      swift_storeEnumTagMultiPayload();
      sub_10000396C();
      sub_1000039C4();
      v23 = v59;
      sub_10004C320();
      sub_100003E3C(v23, v63, &qword_1000647E8, &qword_10004DAB8);
      swift_storeEnumTagMultiPayload();
      sub_1000038E0();
      sub_100003BEC();
      sub_10004C320();
      sub_100003EA4(v23, &qword_1000647E8, &qword_10004DAB8);
      return sub_100003D78(v19);
    }

    *&v67 = _swiftEmptyArrayStorage;
    sub_1000269F4(0, v21, 0);
    v39 = v67;
    v40 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v41 = *(v17 + 72);
    do
    {
      sub_100003DD4(v40, v19, type metadata accessor for AppIcon);
      sub_10000387C(v19, v8);
      *&v67 = v39;
      v43 = *(v39 + 16);
      v42 = *(v39 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1000269F4((v42 > 1), v43 + 1, 1);
        v39 = v67;
      }

      *(v39 + 16) = v43 + 1;
      sub_10000387C(v8, v39 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43);
      v40 += v41;
      --v21;
    }

    while (v21);
    v44 = sub_10000AF74(v39, 6, 0, 1);

    v45 = sub_10004C280();
    v46 = v57;
    *v57 = v45;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    v47 = sub_100003650(&qword_1000647F0, &qword_10004DAC0);
    sub_100002634(v44, v46 + *(v47 + 44), a3);

    sub_10004C7B0();
    v49 = v48;
    v51 = v50;
    v52 = (v46 + *(sub_100003650(&qword_1000647F8, &qword_10004DAC8) + 36));
    *v52 = 0xBFD0C152382D7365;
    v52[1] = v49;
    v52[2] = v51;
    sub_10004C720();
    sub_10004BF90();
    v53 = v63;
    v54 = (v46 + *(v64 + 36));
    v55 = v68;
    *v54 = v67;
    v54[1] = v55;
    v54[2] = v69;
    v35 = &qword_1000647C8;
    v36 = &qword_10004DA98;
    sub_100003E3C(v46, v53, &qword_1000647C8, &qword_10004DA98);
    swift_storeEnumTagMultiPayload();
    sub_1000038E0();
    sub_100003BEC();
    sub_10004C320();
    v38 = v46;
  }

  return sub_100003EA4(v38, v35, v36);
}

uint64_t sub_100002634@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_100003650(&qword_100064868, &qword_10004DAF0);
  __chkstk_darwin(v7 - 8);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = &v30 - v10;
  __chkstk_darwin(v11);
  v31 = &v30 - v12;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  *v21 = sub_10004C1B0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = sub_100003650(&qword_100064870, &qword_10004DAF8);
  sub_100002940(a1, &v21[*(v22 + 44)], a4);
  *v18 = sub_10004C1B0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_100002C94(a1, &v18[*(v22 + 44)], a4);
  *v15 = sub_10004C1B0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100003004(a1, &v15[*(v22 + 44)], a4);
  v23 = v31;
  sub_100003E3C(v21, v31, &qword_100064868, &qword_10004DAF0);
  v24 = v32;
  sub_100003E3C(v18, v32, &qword_100064868, &qword_10004DAF0);
  v25 = v33;
  sub_100003E3C(v15, v33, &qword_100064868, &qword_10004DAF0);
  sub_100003E3C(v23, a3, &qword_100064868, &qword_10004DAF0);
  v26 = sub_100003650(&qword_100064878, &qword_10004DB00);
  v27 = a3 + v26[12];
  *v27 = a4;
  *(v27 + 8) = 0;
  sub_100003E3C(v24, a3 + v26[16], &qword_100064868, &qword_10004DAF0);
  v28 = a3 + v26[20];
  *v28 = a4;
  *(v28 + 8) = 0;
  sub_100003E3C(v25, a3 + v26[24], &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v15, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v18, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v21, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v25, &qword_100064868, &qword_10004DAF0);
  sub_100003EA4(v24, &qword_100064868, &qword_10004DAF0);
  return sub_100003EA4(v23, &qword_100064868, &qword_10004DAF0);
}

void sub_100002940(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    sub_100003DD4(v20, v17, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v21 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v22 = &v17[*(v21 + 36)];
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 2) = v37;
    CGAffineTransformMakeTranslation(&v38, 0.0, 0.0);
    v24 = *&v38.c;
    v25 = *&v38.tx;
    v26 = &v17[*(v6 + 36)];
    *v26 = *&v38.a;
    *(v26 + 1) = v24;
    *(v26 + 2) = v25;
    if (v18 != 1)
    {
      sub_100003DD4(v20 + *(v19 + 72), v14, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v27 = &v14[*(v21 + 36)];
      v28 = *&v38.c;
      *v27 = *&v38.a;
      *(v27 + 1) = v28;
      *(v27 + 2) = *&v38.tx;
      CGAffineTransformMakeTranslation(&v34, 0.0, 0.0);
      v29 = *&v34.c;
      v30 = *&v34.tx;
      v31 = &v14[*(v6 + 36)];
      *v31 = *&v34.a;
      *(v31 + 1) = v29;
      *(v31 + 2) = v30;
      sub_100003E3C(v17, v11, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v14, v8, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v11, a2, &qword_100064880, &qword_10004DB08);
      v32 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v33 = a2 + *(v32 + 48);
      *v33 = a3;
      *(v33 + 8) = 0;
      sub_100003E3C(v8, a2 + *(v32 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v14, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v17, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v8, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v11, &qword_100064880, &qword_10004DB08);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100002C94(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  if (v18 < 3)
  {
    __break(1u);
  }

  else
  {
    v19 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    sub_100003DD4(v20 + 2 * v21, v17, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v22 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v23 = &v17[*(v22 + 36)];
    v24 = v37;
    *v23 = v36;
    *(v23 + 1) = v24;
    *(v23 + 2) = v38;
    CGAffineTransformMakeTranslation(&v39, 0.0, 0.0);
    v25 = *&v39.c;
    v26 = *&v39.tx;
    v27 = &v17[*(v6 + 36)];
    *v27 = *&v39.a;
    *(v27 + 1) = v25;
    *(v27 + 2) = v26;
    if (v18 != 3)
    {
      sub_100003DD4(v20 + 3 * v21, v14, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v28 = &v14[*(v22 + 36)];
      v29 = *&v39.c;
      *v28 = *&v39.a;
      *(v28 + 1) = v29;
      *(v28 + 2) = *&v39.tx;
      CGAffineTransformMakeTranslation(&v35, 0.0, 0.0);
      v30 = *&v35.c;
      v31 = *&v35.tx;
      v32 = &v14[*(v6 + 36)];
      *v32 = *&v35.a;
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      sub_100003E3C(v17, v11, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v14, v8, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v11, a2, &qword_100064880, &qword_10004DB08);
      v33 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v34 = a2 + *(v33 + 48);
      *v34 = a3;
      *(v34 + 8) = 0;
      sub_100003E3C(v8, a2 + *(v33 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v14, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v17, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v8, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v11, &qword_100064880, &qword_10004DB08);
      return;
    }
  }

  __break(1u);
}

void sub_100003004(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_100003650(&qword_100064880, &qword_10004DB08);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  if (v18 < 5)
  {
    __break(1u);
  }

  else
  {
    v19 = *(type metadata accessor for AppIconConfiguration(0) - 8);
    v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    sub_100003DD4(v20 + 4 * v21, v17, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v22 = sub_100003650(&qword_100064888, &qword_10004DB10);
    v23 = &v17[*(v22 + 36)];
    v24 = v37;
    *v23 = v36;
    *(v23 + 1) = v24;
    *(v23 + 2) = v38;
    CGAffineTransformMakeTranslation(&v39, 0.0, 0.0);
    v25 = *&v39.c;
    v26 = *&v39.tx;
    v27 = &v17[*(v6 + 36)];
    *v27 = *&v39.a;
    *(v27 + 1) = v25;
    *(v27 + 2) = v26;
    if (v18 != 5)
    {
      sub_100003DD4(v20 + 5 * v21, v14, type metadata accessor for AppIconConfiguration);
      sub_10004C720();
      sub_10004BF90();
      v28 = &v14[*(v22 + 36)];
      v29 = *&v39.c;
      *v28 = *&v39.a;
      *(v28 + 1) = v29;
      *(v28 + 2) = *&v39.tx;
      CGAffineTransformMakeTranslation(&v35, 0.0, 0.0);
      v30 = *&v35.c;
      v31 = *&v35.tx;
      v32 = &v14[*(v6 + 36)];
      *v32 = *&v35.a;
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      sub_100003E3C(v17, v11, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v14, v8, &qword_100064880, &qword_10004DB08);
      sub_100003E3C(v11, a2, &qword_100064880, &qword_10004DB08);
      v33 = sub_100003650(&qword_100064890, &qword_10004DB18);
      v34 = a2 + *(v33 + 48);
      *v34 = a3;
      *(v34 + 8) = 0;
      sub_100003E3C(v8, a2 + *(v33 + 64), &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v14, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v17, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v8, &qword_100064880, &qword_10004DB08);
      sub_100003EA4(v11, &qword_100064880, &qword_10004DB08);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000033A4()
{
  sub_100003650(&qword_100064780, &qword_10004D990);
  sub_100003698(&qword_100064788, &qword_10004D998);
  sub_100003698(&qword_100064790, &qword_10004D9A0);
  sub_100003698(&qword_100064798, &qword_10004D9A8);
  sub_100003698(&qword_1000647A0, &qword_10004D9B0);
  sub_100003698(&qword_1000647A8, &qword_10004D9B8);
  sub_100003D30(&qword_1000647B0, &qword_1000647A8, &qword_10004D9B8, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10004C2F0();
}

uint64_t sub_100003570(__int128 *a1)
{
  v2 = *a1;
  if (sub_10004B588(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000035E4(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_10004B588(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003650(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003698(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000036E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000036F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003710(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100003780(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000037CC(uint64_t *a1, int a2)
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

uint64_t sub_100003814(uint64_t result, int a2, int a3)
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

uint64_t sub_10000387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000038E0()
{
  result = qword_100064800;
  if (!qword_100064800)
  {
    sub_100003698(&qword_1000647E8, &qword_10004DAB8);
    sub_10000396C();
    sub_1000039C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064800);
  }

  return result;
}

unint64_t sub_10000396C()
{
  result = qword_100064808;
  if (!qword_100064808)
  {
    type metadata accessor for AppIcon(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064808);
  }

  return result;
}

unint64_t sub_1000039C4()
{
  result = qword_100064810;
  if (!qword_100064810)
  {
    sub_100003698(&qword_1000647D0, &qword_10004DAA0);
    sub_100003A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064810);
  }

  return result;
}

unint64_t sub_100003A50()
{
  result = qword_100064818;
  if (!qword_100064818)
  {
    sub_100003698(&qword_100064820, &qword_10004DAD0);
    sub_100003ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064818);
  }

  return result;
}

unint64_t sub_100003ADC()
{
  result = qword_100064828;
  if (!qword_100064828)
  {
    sub_100003698(&qword_100064830, &qword_10004DAD8);
    sub_100003B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064828);
  }

  return result;
}

unint64_t sub_100003B68()
{
  result = qword_100064838;
  if (!qword_100064838)
  {
    sub_100003698(&qword_100064840, &qword_10004DAE0);
    sub_10000396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064838);
  }

  return result;
}

unint64_t sub_100003BEC()
{
  result = qword_100064848;
  if (!qword_100064848)
  {
    sub_100003698(&qword_1000647C8, &qword_10004DA98);
    sub_100003C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064848);
  }

  return result;
}

unint64_t sub_100003C78()
{
  result = qword_100064850;
  if (!qword_100064850)
  {
    sub_100003698(&qword_1000647F8, &qword_10004DAC8);
    sub_100003D30(&qword_100064858, &qword_100064860, &qword_10004DAE8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064850);
  }

  return result;
}

uint64_t sub_100003D30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_100003D78(uint64_t a1)
{
  v2 = type metadata accessor for AppIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100003E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003650(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003650(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003F08()
{
  result = qword_100064898;
  if (!qword_100064898)
  {
    sub_100003698(&qword_1000648A0, &unk_10004DB20);
    sub_1000038E0();
    sub_100003BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064898);
  }

  return result;
}

uint64_t sub_100003FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100004088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for PlatterView(uint64_t a1)
{
  result = qword_100064908;
  if (!qword_100064908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004198(uint64_t a1)
{
  sub_10000420C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000420C(uint64_t a1)
{
  if (!qword_100064918)
  {
    sub_10004BF00();
    v1 = sub_10004BF10();
    if (!v2)
    {
      atomic_store(v1, &qword_100064918);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatterView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000043DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100064948;
  if (!qword_100064948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064948);
  }

  return result;
}

Swift::Int sub_100004448()
{
  v1 = *v0;
  sub_10004D060();
  sub_10004D070(v1);
  return sub_10004D0A0();
}

Swift::Int sub_1000044BC(uint64_t a1)
{
  v2 = *v1;
  sub_10004D060();
  sub_10004D070(v2);
  return sub_10004D0A0();
}

double sub_10000451C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BF00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = *(v1 + *(type metadata accessor for PlatterView(0) + 20));
  sub_1000048CC(&qword_100064958, &qword_10004FA30, &type metadata accessor for ColorScheme, v9);
  (*(v4 + 104))(v6, enum case for ColorScheme.light(_:), v3);
  v11 = sub_10004BEF0();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  if (v10)
  {
    if (v11)
    {
      if (qword_1000646E8 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_100068E40;
    }

    else
    {
      if (qword_1000646F0 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_100068E68;
    }

    v26 = *(v13 + 8);
    v15 = *(v13 + 3);
    v16 = *(v13 + 4);

    v27 = v17;
    v28 = v26;
    v29 = v15;
    v30 = v16;
    v31 = 1;
  }

  else
  {
    if (v11)
    {
      if (qword_1000646D8 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100068DF0;
    }

    else
    {
      if (qword_1000646E0 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100068E18;
    }

    v26 = *(v14 + 8);
    v20 = *(v14 + 3);
    v21 = *(v14 + 4);

    v27 = v17;
    v28 = v26;
    v29 = v20;
    v30 = v21;
    v31 = 0;
  }

  sub_100004850(v17, v18, v19);
  sub_10004C320();
  result = *&v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  *a1 = v32;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  return result;
}

unint64_t sub_100004850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100064950;
  if (!qword_100064950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064950);
  }

  return result;
}

uint64_t sub_1000048CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10004C190();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003650(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100003E3C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10004CDD0();
    v19 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_100004AD0()
{
  result = qword_100064968;
  if (!qword_100064968)
  {
    v1 = sub_100003698(&qword_100064970, qword_10004DC38);
    sub_100004850(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064968);
  }

  return result;
}

uint64_t sub_100004B54()
{
  v0 = sub_10004CAB0();
  sub_100004D10(v0, qword_100068D98);
  sub_100004D74(v0, qword_100068D98);
  return sub_10004CAA0();
}

uint64_t sub_100004BB8()
{
  v0 = sub_10004CAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004CAD0();
  sub_100004D10(v4, qword_100068DB0);
  sub_100004D74(v4, qword_100068DB0);
  if (qword_1000646A0 != -1)
  {
    swift_once();
  }

  v5 = sub_100004D74(v0, qword_100068D98);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10004CAC0();
}

uint64_t *sub_100004D10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004D74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BE80();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BE80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for Trace(uint64_t a1)
{
  result = qword_1000649D0;
  if (!qword_1000649D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004EFC(uint64_t a1)
{
  result = sub_10004BE80();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100004F70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a5;
  v143 = a4;
  v139 = a3;
  v117 = a2;
  v142 = a1;
  v5 = type metadata accessor for AppIconConfiguration(0);
  v115 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10004C7F0();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10004C820();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10004CB70();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v114 = (&v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v125 = &v114 - v12;
  __chkstk_darwin(v13);
  v141 = (&v114 - v14);
  __chkstk_darwin(v15);
  v124 = &v114 - v16;
  __chkstk_darwin(v17);
  v19 = &v114 - v18;
  __chkstk_darwin(v20);
  v22 = &v114 - v21;
  v23 = sub_10004C8A0();
  __chkstk_darwin(v23 - 8);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000646A8 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v26 = sub_10004CAD0();
    v27 = sub_100004D74(v26, qword_100068DB0);
    v28 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v29 = *(sub_10004C8D0() - 8);
    v30 = *(v29 + 80);
    v31 = (v30 + 32) & ~v30;
    v128 = *(v29 + 72);
    v127 = v30;
    v129 = v28;
    v32 = swift_allocObject();
    v126 = xmmword_10004DC70;
    *(v32 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v151._countAndFlagsBits = 0xD000000000000023;
    v151._object = 0x8000000100059FF0;
    sub_10004C880(v151);
    v33 = sub_10004BDA0();
    v148 = &type metadata for String;
    aBlock = v33;
    v146 = v34;
    sub_10004C860();
    sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
    v152._countAndFlagsBits = 46;
    v152._object = 0xE100000000000000;
    sub_10004C880(v152);
    v130 = v31;
    v137 = v25;
    sub_10004C8B0();
    v132 = v26;
    v131 = v27;
    sub_10004C9C0();

    sub_10004CC40();
    v36 = v35;
    v38 = v37;
    sub_10004CC80();
    v39 = v138;
    v40 = v140;
    v135 = *(v138 + 32);
    v136 = v138 + 32;
    v135(v19, v22, v140);
    v41 = *(v39 + 88);
    v134 = v39 + 88;
    v133 = v41;
    v42 = v41(v19, v40);
    v43 = enum case for WidgetFamily.systemLarge(_:);
    if (v42 == enum case for WidgetFamily.systemLarge(_:))
    {
      if (v117)
      {
        v38 = v38 + -200.0;
      }

      else
      {
        v36 = 59.0;
        v38 = 74.0;
      }
    }

    else
    {
      (*(v39 + 8))(v19, v40);
    }

    v44 = v141;
    v45 = v142;
    v46 = sub_10004BD20();
    v47 = v46 >> 62 ? sub_10004CF90() : *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

    sub_10004CC40();
    v49 = v48;
    v50 = v124;
    sub_10004CC80();
    v135(v44, v50, v40);
    v51 = v133(v44, v40);
    LODWORD(v124) = enum case for WidgetFamily.systemSmall(_:);
    if (v51 == enum case for WidgetFamily.systemSmall(_:))
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          v49 = v49 * 0.66;
        }

        else
        {
          v49 = v49 * 0.5;
        }
      }
    }

    else if (v51 == enum case for WidgetFamily.systemMedium(_:))
    {
      v49 = (v47 - 1) >= 4 ? v49 * 0.36 : v49 * dbl_10004DCC0[v47 - 1];
    }

    else if (v51 == v43)
    {
      if (v117)
      {
        v52 = (v47 - 1) >= 4 ? 0.36 : dbl_10004DCC0[v47 - 1];
        v49 = (v49 + -200.0) * v52;
      }

      else
      {
        v49 = v47 <= 1 ? 60.0 : 36.0;
      }
    }

    else
    {
      (*(v138 + 8))(v44, v40);
    }

    v25 = 0x2E64657565757120;
    v53 = dispatch_group_create();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = sub_10004BD50();
    v141 = v53;
    if (v55)
    {
      v56 = v55;
      *(swift_allocObject() + 16) = v126;
      sub_10004C890();
      v153._countAndFlagsBits = 0xD000000000000024;
      v153._object = 0x800000010005A040;
      sub_10004C880(v153);
      v57 = sub_10004BDA0();
      v148 = &type metadata for String;
      aBlock = v57;
      v146 = v58;
      sub_10004C860();
      sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
      v154._countAndFlagsBits = 0x2E64657565757120;
      v154._object = 0xE800000000000000;
      sub_10004C880(v154);
      v45 = v142;
      sub_10004C8B0();
      sub_10004C9C0();

      dispatch_group_enter(v53);
      sub_10004154C(v56, v36, v38);
      v59 = swift_allocObject();
      v59[2] = v54;
      v59[3] = v45;
      v59[4] = v53;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_100007AA0;
      *(v60 + 24) = v59;
      v61 = swift_allocObject();
      v62 = v141;
      *(v61 + 16) = v45;
      *(v61 + 24) = v62;
      v63 = sub_100007874();
      swift_retain_n();
      v64 = v141;

      v65 = sub_10004CE20();
      v148 = v63;
      v149 = &protocol witness table for OS_dispatch_queue;
      aBlock = v65;
      sub_10004CA30();

      sub_100007B80(&aBlock);
    }

    v66 = sub_10004BD20();
    v67 = v66 >> 62 ? sub_10004CF90() : *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v125;

    if (sub_10004BD50())
    {

      sub_10004CC80();
      (*(v138 + 8))(v68, v140);
      v69 = 0;
    }

    else
    {
      sub_10004CC80();
      v70 = v114;
      v71 = v140;
      v135(v114, v68, v140);
      v72 = v133(v70, v71);
      if (v72 == v124)
      {
        v69 = v67 > 4 ? 3 : 4;
      }

      else
      {
        v73 = v70;
        v69 = (v117 & 1) != 0 ? 11 : 6;
        (*(v138 + 8))(v73, v71);
      }
    }

    v74 = sub_10004BD20();
    v75 = v74 >> 62 ? sub_10004CF90() : *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v76 = v75 >= v69 ? v69 : v75;
    v140 = swift_allocObject();
    *(v140 + 16) = _swiftEmptyArrayStorage;
    v77 = v45;
    v78 = sub_10004BD20();
    if (v75 < 0)
    {
      __break(1u);
    }

    else
    {
      v77 = v78;
      v69 = v78 >> 62;
      if (!(v78 >> 62))
      {
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < v76)
        {
          goto LABEL_93;
        }

        goto LABEL_50;
      }
    }

    result = sub_10004CF90();
    if (result < 0)
    {
      goto LABEL_101;
    }

    if (sub_10004CF90() < v76)
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

LABEL_50:
    v139 = v54;
    if ((v77 & 0xC000000000000001) != 0 && v76)
    {
      sub_10004BE40();

      v79 = 0;
      do
      {
        v80 = v79 + 1;
        sub_10004CF10(v79);
        v79 = v80;
      }

      while (v76 != v80);
      if (!v69)
      {
LABEL_55:
        v81 = 0;
        v19 = (v77 & 0xFFFFFFFFFFFFFF8);
        v22 = ((v77 & 0xFFFFFFFFFFFFFF8) + 32);
        v45 = v76;
        goto LABEL_58;
      }
    }

    else
    {

      if (!v69)
      {
        goto LABEL_55;
      }
    }

    v19 = sub_10004CFA0();
    v22 = v82;
    v81 = v83;
    v45 = v84 >> 1;
LABEL_58:
    swift_unknownObjectRetain();

    v85 = v45 - v81;
    if (__OFSUB__(v45, v81))
    {
      goto LABEL_94;
    }

    if (!v85)
    {
      break;
    }

    aBlock = _swiftEmptyArrayStorage;
    sub_10004CF50();
    result = swift_unknownObjectRelease();
    if (v85 < 0)
    {
      goto LABEL_99;
    }

    if (v45 <= v81)
    {
      v87 = v81;
    }

    else
    {
      v87 = v45;
    }

    v25 = v87 - v81;
    v88 = &v22[8 * v81];
    while (v25)
    {
      v88 += 8;

      sub_10004154C(v89, v49, v49);

      sub_10004CF30();
      v22 = aBlock[2];
      sub_10004CF60();
      sub_10004CF70();
      sub_10004CF40();
      --v25;
      if (!--v85)
      {
        swift_unknownObjectRelease();
        v90 = aBlock;
        v25 = 0x2E64657565757120;
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
  }

  swift_unknownObjectRelease_n();
  v90 = _swiftEmptyArrayStorage;
LABEL_69:
  v45 = v142;
  if (!(v90 >> 62))
  {
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_95:
  if (sub_10004CF90() > 0)
  {
LABEL_71:
    *(swift_allocObject() + 16) = v126;
    sub_10004C890();
    v155._object = 0x800000010005A020;
    v155._countAndFlagsBits = 0xD000000000000019;
    sub_10004C880(v155);
    v91 = sub_10004BDA0();
    v148 = &type metadata for String;
    aBlock = v91;
    v146 = v92;
    sub_10004C860();
    sub_100003EA4(&aBlock, &qword_100064A10, &qword_10004FB00);
    v156._countAndFlagsBits = 0x2E64657565757120;
    v156._object = 0xE800000000000000;
    sub_10004C880(v156);
    sub_10004C8B0();
    sub_10004C9C0();

    v93 = v141;
    dispatch_group_enter(v141);
    v94 = swift_allocObject();
    v95 = v116;
    v94[2] = v45;
    v94[3] = v95;
    v25 = v140;
    v94[4] = v140;
    v94[5] = v93;
    sub_100007874();

    v96 = v93;

    v97 = sub_10004CE20();
    sub_100003650(&qword_100064A30, &qword_10004DCA8);
    sub_10004BD10();
  }

LABEL_72:

  v98 = sub_10004BD20();
  if (v98 >> 62)
  {
    v99 = sub_10004CF90();
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v99 - v76;
  if (v99 >= v76)
  {
    v22 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage;
    if (v99 == v76)
    {
LABEL_83:
      sub_100003650(&qword_100064A18, &qword_10004DC98);
      v105 = sub_10004CA90();
      sub_100007874();
      v106 = sub_10004CE20();
      v107 = swift_allocObject();
      v107[2] = v45;
      v107[3] = v105;
      v108 = v140;
      v107[4] = v139;
      v107[5] = v108;
      v107[6] = v19;
      v149 = sub_100007918;
      v150 = v107;
      aBlock = _NSConcreteStackBlock;
      v146 = 1107296256;
      v147 = sub_100007830;
      v148 = &unk_100062060;
      v109 = _Block_copy(&aBlock);

      v110 = v118;
      sub_10004C800();
      v144 = _swiftEmptyArrayStorage;
      sub_100007940();
      sub_100003650(&unk_100066AB0, &qword_10004DCA0);
      sub_100007998();
      v111 = v120;
      v112 = v123;
      sub_10004CED0();
      v113 = v141;
      sub_10004CDE0();
      _Block_release(v109);

      (*(v122 + 8))(v111, v112);
      (*(v119 + 8))(v110, v121);

      return v105;
    }

    aBlock = _swiftEmptyArrayStorage;
    result = sub_1000269F4(0, v100 & ~(v100 >> 63), 0);
    if (v100 < 0)
    {
      goto LABEL_100;
    }

    v19 = aBlock;
    v101 = v115;
    while (1)
    {
      sub_10004CB40();
      sub_10004BB60();
      *&v7[v5[5]] = 0;
      v102 = &v7[v5[6]];
      *v102 = 0;
      *(v102 + 1) = 0;
      v102[16] = 1;
      v7[v5[7]] = 0;
      v7[v5[8]] = 0;
      aBlock = v19;
      v104 = *(v19 + 2);
      v103 = *(v19 + 3);
      if (v104 >= v103 >> 1)
      {
        sub_1000269F4((v103 > 1), v104 + 1, 1);
        v101 = v115;
        v19 = aBlock;
      }

      *(v19 + 2) = v104 + 1;
      sub_10000387C(v7, &v19[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v104]);
      if (!v100)
      {
        goto LABEL_85;
      }

      if (!--v100)
      {
        v45 = v142;
        goto LABEL_83;
      }
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_100006200()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006238()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v8 = sub_10004C8A0();
  __chkstk_darwin(v8 - 8);
  swift_beginAccess();
  v9 = *(a3 + 16);
  *(a3 + 16) = a2;

  v10 = qword_1000646A8;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_10004CAD0();
  sub_100004D74(v12, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v16._object = 0x800000010005A040;
  v16._countAndFlagsBits = 0xD000000000000024;
  sub_10004C880(v16);
  v13 = sub_10004BDA0();
  v15[3] = &type metadata for String;
  v15[0] = v13;
  v15[1] = v14;
  sub_10004C860();
  sub_100003EA4(v15, &qword_100064A10, &qword_10004FB00);
  v17._countAndFlagsBits = 0x6465656363757320;
  v17._object = 0xEB000000002E6465;
  sub_10004C880(v17);
  sub_10004C8B0();
  sub_10004C9C0();

  dispatch_group_leave(a5);
}

void sub_1000064BC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_10004C8A0();
  __chkstk_darwin(v4 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v5 = sub_10004CAD0();
  sub_100004D74(v5, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v12._object = 0x800000010005A040;
  v12._countAndFlagsBits = 0xD000000000000024;
  sub_10004C880(v12);
  v6 = sub_10004BDA0();
  v11 = &type metadata for String;
  v10[0] = v6;
  v10[1] = v7;
  sub_10004C860();
  sub_100003EA4(v10, &qword_100064A10, &qword_10004FB00);
  v13._countAndFlagsBits = 0x3A44454C49414620;
  v13._object = 0xE900000000000020;
  sub_10004C880(v13);
  swift_getErrorValue();
  v11 = v9;
  v8 = sub_100007BCC(v10);
  (*(*(v9 - 1) + 16))(v8);
  sub_10004C870();
  sub_100003EA4(v10, &qword_100064A10, &qword_10004FB00);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_10004C880(v14);
  sub_10004C8B0();
  sub_10004C9C0();

  dispatch_group_leave(a3);
}

void sub_100006764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v80 = a6;
  v79 = a5;
  v82 = a4;
  v9 = sub_100003650(&qword_100064A38, &qword_10004DCB0);
  __chkstk_darwin(v9 - 8);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v76 - v12;
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v16 = type metadata accessor for AppIconConfiguration(0);
  v91 = *(v16 - 8);
  v92 = v16;
  __chkstk_darwin(v16);
  v90 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v76 - v20;
  v21 = sub_100003650(&qword_100064A40, &qword_10004DCB8);
  v78 = *(v21 - 8);
  __chkstk_darwin(v21 - 8);
  v84 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v93 = &v76 - v24;
  v25 = sub_10004C8A0();
  __chkstk_darwin(v25 - 8);
  v26 = *(a2 + 16);
  v83 = a1;
  v81 = v15;
  if (!v26)
  {
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v39 = sub_10004CAD0();
    sub_100004D74(v39, qword_100068DB0);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    sub_10004C8D0();
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v110._countAndFlagsBits = 0xD00000000000001DLL;
    v110._object = 0x800000010005A070;
    sub_10004C880(v110);
    v40 = sub_10004BDA0();
    v103 = &type metadata for String;
    v101 = v40;
    v102 = v41;
    sub_10004C860();
    sub_100003EA4(&v101, &qword_100064A10, &qword_10004FB00);
    v111._countAndFlagsBits = 0x6465656363757320;
    v111._object = 0xEB000000002E6465;
    sub_10004C880(v111);
    sub_10004C8B0();
    sub_10004C9C0();

    goto LABEL_9;
  }

  v77 = a2;
  v76 = a3;
  if (qword_1000646A8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v27 = sub_10004CAD0();
    sub_100004D74(v27, qword_100068DB0);
    v28 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v29 = *(sub_10004C8D0() - 8);
    v30 = *(v29 + 72);
    v87 = *(v29 + 80);
    v88 = v30;
    v89 = v28;
    v31 = swift_allocObject();
    v86 = xmmword_10004DC70;
    *(v31 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    sub_10004C880(v104);
    v103 = &type metadata for Int;
    v101 = v26;
    sub_10004C870();
    sub_100003EA4(&v101, &qword_100064A10, &qword_10004FB00);
    v105._countAndFlagsBits = 47;
    v105._object = 0xE100000000000000;
    sub_10004C880(v105);
    v32 = *(v83 + 16);
    v103 = &type metadata for Int;
    v101 = v32;
    sub_10004C870();
    sub_100003EA4(&v101, &qword_100064A10, &qword_10004FB00);
    v106._object = 0x800000010005A090;
    v106._countAndFlagsBits = 0xD000000000000019;
    sub_10004C880(v106);
    v33 = sub_10004BDA0();
    v103 = &type metadata for String;
    v101 = v33;
    v102 = v34;
    sub_10004C860();
    sub_100003EA4(&v101, &qword_100064A10, &qword_10004FB00);
    v107._countAndFlagsBits = 46;
    v107._object = 0xE100000000000000;
    sub_10004C880(v107);
    sub_10004C8B0();
    sub_10004C9E0();

    v35 = v77 + 32;
    do
    {
      v35 += 8;
      *(swift_allocObject() + 16) = v86;
      swift_errorRetain();
      sub_10004C890();
      v108._countAndFlagsBits = 0x7265206863746546;
      v108._object = 0xED0000203A726F72;
      sub_10004C880(v108);
      swift_getErrorValue();
      v36 = v99;
      v37 = v100;
      v103 = v100;
      v38 = sub_100007BCC(&v101);
      (*(*(v37 - 1) + 16))(v38, v36, v37);
      sub_10004C870();
      sub_100003EA4(&v101, &qword_100064A10, &qword_10004FB00);
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      sub_10004C880(v109);
      sub_10004C8B0();
      sub_10004C9E0();

      v26 = (v26 - 1);
    }

    while (v26);
LABEL_9:
    LODWORD(v82) = sub_10004BBE0();
    v42 = *(v83 + 16);
    v43 = _swiftEmptyArrayStorage;
    if (v42)
    {
      v44 = v83 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v45 = (v96 + 48);
      v46 = *(v78 + 72);
      v47 = v84;
      v48 = v81;
      do
      {
        v49 = v93;
        sub_100003E3C(v44, v93, &qword_100064A40, &qword_10004DCB8);
        sub_100007C30(v49, v47, &qword_100064A40, &qword_10004DCB8);
        if ((*v45)(v47, 1, v98) == 1)
        {
          sub_100003EA4(v47, &qword_100064A40, &qword_10004DCB8);
        }

        else
        {
          sub_100007C30(v47, v94, &qword_100064A30, &qword_10004DCA8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1000351D8(0, v43[2] + 1, 1, v43);
          }

          v51 = v43[2];
          v50 = v43[3];
          if (v51 >= v50 >> 1)
          {
            v43 = sub_1000351D8((v50 > 1), v51 + 1, 1, v43);
          }

          v43[2] = v51 + 1;
          sub_100007C30(v94, v43 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v51, &qword_100064A30, &qword_10004DCA8);
          v47 = v84;
        }

        v44 += v46;
        --v42;
      }

      while (v42);
    }

    else
    {
      v48 = v81;
    }

    v52 = v43[2];
    if (!v52)
    {
      break;
    }

    v101 = _swiftEmptyArrayStorage;
    sub_1000269F4(0, v52, 0);
    v53 = 0;
    v54 = v101;
    v93 = v43 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    LODWORD(v87) = enum case for Artwork.Style.round(_:);
    LODWORD(v86) = enum case for Artwork.Style.roundPrerendered(_:);
    if (v82)
    {
      v55 = 4;
    }

    else
    {
      v55 = 2;
    }

    LODWORD(v84) = v55;
    LODWORD(v83) = enum case for Artwork.Style.pill(_:);
    if (v82)
    {
      v56 = 3;
    }

    else
    {
      v56 = 0;
    }

    LODWORD(v94) = v56;
    v26 = &qword_100064A38;
    v88 = v52;
    v89 = v43;
    while (v53 < v43[2])
    {
      v57 = v97;
      sub_100003E3C(v93 + *(v96 + 72) * v53, v97, &qword_100064A30, &qword_10004DCA8);
      v58 = *(v57 + *(v98 + 48));
      v59 = sub_10004BE10();
      v60 = *(v59 - 8);
      (*(v60 + 16))(v48, v57, v59);
      (*(v60 + 56))(v48, 0, 1, v59);
      v61 = v48;
      v62 = v48;
      v63 = v95;
      sub_100003E3C(v62, v95, &qword_100064A38, &qword_10004DCB0);
      v64 = (*(v60 + 48))(v63, 1, v59);
      v65 = v94;
      if (v64 != 1)
      {
        v66 = v85;
        sub_100003E3C(v63, v85, &qword_100064A38, &qword_10004DCB0);
        v67 = (*(v60 + 88))(v66, v59);
        v68 = v67 == v87 || v67 == v86;
        v65 = v84;
        if (!v68)
        {
          if (v67 == v83)
          {
            v65 = 1;
          }

          else
          {
            (*(v60 + 8))(v85, v59);
            v65 = v94;
          }

          v63 = v95;
        }
      }

      sub_100003EA4(v63, &qword_100064A38, &qword_10004DCB0);
      v48 = v61;
      sub_100003EA4(v61, &qword_100064A38, &qword_10004DCB0);
      v69 = v92;
      v70 = v90;
      sub_10004CB40();
      v71 = v58;
      sub_10004BB60();
      *(v70 + v69[5]) = v58;
      v72 = v70 + v69[6];
      *v72 = 0;
      *(v72 + 8) = 0;
      *(v72 + 16) = 1;
      *(v70 + v69[7]) = v65;
      *(v70 + v69[8]) = 1;
      sub_100003EA4(v97, &qword_100064A30, &qword_10004DCA8);
      v101 = v54;
      v74 = v54[2];
      v73 = v54[3];
      if (v74 >= v73 >> 1)
      {
        sub_1000269F4((v73 > 1), v74 + 1, 1);
        v54 = v101;
      }

      ++v53;
      v54[2] = v74 + 1;
      sub_10000387C(v70, v54 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v74);
      v43 = v89;
      v26 = &qword_100064A38;
      if (v88 == v53)
      {

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_43:
  v75 = v79;
  swift_beginAccess();
  *(v75 + 16) = v54;

  dispatch_group_leave(v80);
}

uint64_t sub_1000074EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v38 = a2;
  v37 = type metadata accessor for WidgetTodayCard(0);
  __chkstk_darwin(v37);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C8A0();
  __chkstk_darwin(v7 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v8 = sub_10004CAD0();
  sub_100004D74(v8, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v41._object = 0x800000010005A0B0;
  v41._countAndFlagsBits = 0xD000000000000027;
  sub_10004C880(v41);
  v9 = sub_10004BDA0();
  v40[3] = &type metadata for String;
  v40[0] = v9;
  v40[1] = v10;
  sub_10004C860();
  sub_100003EA4(v40, &qword_100064A10, &qword_10004FB00);
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  sub_10004C880(v42);
  sub_10004C8B0();
  sub_10004C9C0();

  v11 = sub_10004BDA0();
  v32 = v12;
  v33 = v11;
  v13 = sub_10004BD90();
  v30 = v14;
  v31 = v13;
  v15 = sub_10004BD70();
  v17 = v16;
  v18 = sub_10004BD80();
  v19 = v34;
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = v35;
  swift_beginAccess();
  v39 = *(v21 + 16);
  v22 = v20;

  sub_100007C98(v23);
  v24 = v39;
  v25 = sub_10004BD40();
  sub_10004BD60();
  sub_10004BD30();
  v26 = v32;
  *v6 = v33;
  *(v6 + 1) = v26;
  v27 = v30;
  *(v6 + 2) = v31;
  *(v6 + 3) = v27;
  *(v6 + 4) = v15;
  *(v6 + 5) = v17;
  v6[48] = v18 & 1;
  *(v6 + 7) = v20;
  *(v6 + 8) = v24;
  *(v6 + 9) = v25;
  sub_10004CA80();
  return sub_100007DC4(v6);
}

uint64_t sub_100007830(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_100007874()
{
  result = qword_100066AE0;
  if (!qword_100066AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066AE0);
  }

  return result;
}

uint64_t sub_1000078C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100007928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100007940()
{
  result = qword_100064A20;
  if (!qword_100064A20)
  {
    sub_10004C7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A20);
  }

  return result;
}

unint64_t sub_100007998()
{
  result = qword_100064A28;
  if (!qword_100064A28)
  {
    sub_100003698(&unk_100066AB0, &qword_10004DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A28);
  }

  return result;
}

uint64_t sub_1000079FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007A58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007AAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007AE4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_100007B38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007B80(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_100007BCC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007C30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003650(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C98(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000351B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AppIconConfiguration(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100007DC4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTodayCard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_10004CB50();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100007F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004BB70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_10004CB50();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000080BC(uint64_t a1)
{
  sub_10004BB70();
  if (v1 <= 0x3F)
  {
    sub_100008188(319);
    if (v2 <= 0x3F)
    {
      sub_1000081F0(319);
      if (v3 <= 0x3F)
      {
        sub_10004CB50();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100008188(uint64_t a1)
{
  if (!qword_100064AB0)
  {
    sub_10000AE54(255, &qword_100064AB8, UIImage_ptr);
    v1 = sub_10004CEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100064AB0);
    }
  }
}

void sub_1000081F0(uint64_t a1)
{
  if (!qword_100064AC0)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_10004CEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100064AC0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppIconConfiguration.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppIconConfiguration.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000083A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100064B00;
  if (!qword_100064B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064B00);
  }

  return result;
}

uint64_t sub_100008454(uint64_t a1)
{
  v2 = v1;
  sub_10004BB70();
  sub_100008730(&qword_100064B08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10004CCD0();
  v3 = type metadata accessor for AppIconConfiguration(0);
  v4 = *(v1 + v3[5]);
  if (v4)
  {
    sub_10004D080(1u);
    v5 = v4;
    sub_10004CEA0();
  }

  else
  {
    sub_10004D080(0);
  }

  v6 = v2 + v3[6];
  if (*(v6 + 16) == 1)
  {
    sub_10004D080(0);
  }

  else
  {
    v8 = *v6;
    v7 = *(v6 + 8);
    sub_10004D080(1u);
    if (v8 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v8;
    }

    sub_10004D090(*&v9);
    if (v7 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v7;
    }

    sub_10004D090(*&v10);
  }

  sub_10004D070(*(v2 + v3[7]));
  sub_10004D080(*(v2 + v3[8]));
  sub_10004CB50();
  sub_100008730(&qword_100064B18, &type metadata accessor for WidgetAccentedRenderingMode, &protocol conformance descriptor for WidgetAccentedRenderingMode);
  return sub_10004CCD0();
}

Swift::Int sub_1000085FC()
{
  sub_10004D060();
  sub_100008454(v1);
  return sub_10004D0A0();
}

Swift::Int sub_100008640(uint64_t a1)
{
  sub_10004D060();
  sub_100008454(v2);
  return sub_10004D0A0();
}

uint64_t sub_100008680@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BB70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100008730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008778@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v99 = type metadata accessor for AppIconContentView(0);
  __chkstk_darwin(v99);
  v87 = &v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100003650(&qword_100064BB0, &qword_10004DE90);
  __chkstk_darwin(v97);
  v98 = &v85 - v2;
  v106 = sub_100003650(&qword_100064BB8, &qword_10004DE98);
  __chkstk_darwin(v106);
  v100 = &v85 - v3;
  v88 = sub_100003650(&qword_100064BC0, &qword_10004DEA0);
  __chkstk_darwin(v88);
  v89 = &v85 - v4;
  v101 = sub_100003650(&qword_100064BC8, &qword_10004DEA8);
  __chkstk_darwin(v101);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v85 - v7;
  v8 = sub_10004C690();
  __chkstk_darwin(v8 - 8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003650(&qword_100064BD0, &qword_10004DEB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v85 - v11;
  v13 = sub_100003650(&qword_100064BD8, &qword_10004DEB8);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v96 = sub_100003650(&qword_100064BE0, &qword_10004DEC0);
  __chkstk_darwin(v96);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v103 = sub_100003650(&qword_100064BE8, &qword_10004DEC8);
  __chkstk_darwin(v103);
  v105 = &v85 - v21;
  v94 = sub_100003650(&qword_100064BF0, &qword_10004DED0);
  __chkstk_darwin(v94);
  v93 = (&v85 - v22);
  v104 = sub_100003650(&qword_100064BF8, &qword_10004DED8);
  __chkstk_darwin(v104);
  v95 = &v85 - v23;
  v24 = type metadata accessor for AppIcon(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v27 = type metadata accessor for AppIconConfiguration(0);
  v28 = *(v102 + *(v27 + 28));
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      if (v28 == 3)
      {
        if (!*(v102 + *(v27 + 20)))
        {
          goto LABEL_7;
        }

LABEL_9:
        v37 = v87;
        sub_10000A7A4(v102, v87, type metadata accessor for AppIconConfiguration);
        sub_10000A7A4(v37, v98, type metadata accessor for AppIconContentView);
        swift_storeEnumTagMultiPayload();
        sub_10000A2F0();
        sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
        v38 = v100;
        sub_10004C320();
        sub_100003E3C(v38, v105, &qword_100064BB8, &qword_10004DE98);
        swift_storeEnumTagMultiPayload();
        sub_10000A490();
        sub_10000A6E8();
        sub_10004C320();
        sub_100003EA4(v38, &qword_100064BB8, &qword_10004DE98);
        return sub_10000A80C(v37, type metadata accessor for AppIconContentView);
      }

      if (*(v102 + *(v27 + 20)))
      {
        goto LABEL_9;
      }
    }

    v40 = v89;
    sub_10000A7A4(v102, v89, type metadata accessor for AppIconConfiguration);
    *(v40 + *(v88 + 36)) = 256;
    sub_10004C5C0();
    v41 = sub_10004C5F0();

    sub_10004BF40();
    v42 = v124;
    v44 = v125;
    v43 = v126;
    v45 = v127;
    v46 = v128;
    v47 = v129;
    v48 = sub_10004C720();
    v50 = v49;
    v51 = sub_10004C720();
    v53 = v52;
    *&v109 = v42;
    *(&v109 + 1) = __PAIR64__(v43, v44);
    *&v110 = v45;
    *(&v110 + 1) = v46;
    *&v111 = v47;
    *(&v111 + 1) = v41;
    LOWORD(v112) = 256;
    *(&v112 + 1) = v48;
    *&v113 = v50;
    *(&v113 + 1) = v51;
    v114 = v52;
    v54 = v40;
    v55 = v90;
    sub_100007C30(v54, v90, &qword_100064BC0, &qword_10004DEA0);
    v56 = v55 + *(v101 + 9);
    v57 = v112;
    v58 = v113;
    *(v56 + 32) = v111;
    *(v56 + 48) = v57;
    *(v56 + 64) = v58;
    *(v56 + 80) = v114;
    v59 = v110;
    *v56 = v109;
    *(v56 + 16) = v59;
    *&v115 = v42;
    *(&v115 + 1) = __PAIR64__(v43, v44);
    *&v116 = v45;
    *(&v116 + 1) = v46;
    v117 = v47;
    v118 = v41;
    v119 = 256;
    v120 = v48;
    v121 = v50;
    v122 = v51;
    v123 = v53;
    sub_100003E3C(&v109, &v108, &qword_100064C00, &qword_10004DEE0);
    sub_100003EA4(&v115, &qword_100064C00, &qword_10004DEE0);
    v60 = &qword_100064BC8;
    v61 = &qword_10004DEA8;
    v62 = v91;
    sub_100007C30(v55, v91, &qword_100064BC8, &qword_10004DEA8);
    sub_100003E3C(v62, v98, &qword_100064BC8, &qword_10004DEA8);
    swift_storeEnumTagMultiPayload();
    sub_10000A2F0();
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    v63 = v100;
    sub_10004C320();
    sub_100003E3C(v63, v105, &qword_100064BB8, &qword_10004DE98);
    swift_storeEnumTagMultiPayload();
    sub_10000A490();
    sub_10000A6E8();
    sub_10004C320();
    sub_100003EA4(v63, &qword_100064BB8, &qword_10004DE98);
    v34 = v62;
LABEL_12:
    v35 = v60;
    v36 = v61;
    return sub_100003EA4(v34, v35, v36);
  }

  v99 = v12;
  v100 = v17;
  v29 = v92;
  v101 = v20;
  if (v28)
  {
    v86 = v15;
    sub_10000A7A4(v102, v15, type metadata accessor for AppIconConfiguration);
    v64 = &v15[*(v13 + 36)];
    v65 = enum case for RoundedCornerStyle.continuous(_:);
    v66 = sub_10004C250();
    v67 = *(*(v66 - 8) + 104);
    v67(v64, v65, v66);
    *&v64[*(sub_100003650(&qword_100064C68, &qword_10004DEF8) + 36)] = 256;
    v67(v29, v65, v66);
    sub_10004C5C0();
    v68 = sub_10004C5F0();

    sub_10004BF40();
    v69 = v99;
    sub_10000A7A4(v29, v99, &type metadata accessor for Capsule);
    v70 = v69 + *(sub_100003650(&qword_100064C88, &qword_10004DF08) + 36);
    v71 = v116;
    *v70 = v115;
    *(v70 + 16) = v71;
    *(v70 + 32) = v117;
    v72 = sub_100003650(&qword_100064C90, &qword_10004DF10);
    *(v69 + *(v72 + 52)) = v68;
    *(v69 + *(v72 + 56)) = 256;
    v73 = sub_10004C720();
    v75 = v74;
    sub_10000A80C(v29, &type metadata accessor for Capsule);
    v76 = (v69 + *(sub_100003650(&qword_100064C98, &qword_10004DF18) + 36));
    *v76 = v73;
    v76[1] = v75;
    v77 = sub_10004C720();
    v79 = v78;
    v80 = v100;
    v81 = &v100[*(v96 + 36)];
    sub_100007C30(v69, v81, &qword_100064BD0, &qword_10004DEB0);
    v82 = (v81 + *(sub_100003650(&qword_100064C78, &qword_10004DF00) + 36));
    *v82 = v77;
    v82[1] = v79;
    sub_100007C30(v86, v80, &qword_100064BD8, &qword_10004DEB8);
    v60 = &qword_100064BE0;
    v61 = &qword_10004DEC0;
    v83 = v101;
    sub_100007C30(v80, v101, &qword_100064BE0, &qword_10004DEC0);
    sub_100003E3C(v83, v93, &qword_100064BE0, &qword_10004DEC0);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064C48, &qword_10004DEF0);
    sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0, &protocol conformance descriptor for GeometryReader<A>);
    sub_10000A548();
    v84 = v95;
    sub_10004C320();
    sub_100003E3C(v84, v105, &qword_100064BF8, &qword_10004DED8);
    swift_storeEnumTagMultiPayload();
    sub_10000A490();
    sub_10000A6E8();
    sub_10004C320();
    sub_100003EA4(v84, &qword_100064BF8, &qword_10004DED8);
    v34 = v83;
    goto LABEL_12;
  }

LABEL_7:
  sub_10000A7A4(v102, &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIcon);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = swift_allocObject();
  sub_10000AA18(&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for AppIcon);
  v32 = v93;
  *v93 = sub_10000A998;
  v32[1] = v31;
  swift_storeEnumTagMultiPayload();

  sub_100003650(&qword_100064C48, &qword_10004DEF0);
  sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0, &protocol conformance descriptor for GeometryReader<A>);
  sub_10000A548();
  v33 = v95;
  sub_10004C320();
  sub_100003E3C(v33, v105, &qword_100064BF8, &qword_10004DED8);
  swift_storeEnumTagMultiPayload();
  sub_10000A490();
  sub_10000A6E8();
  sub_10004C320();

  v34 = v33;
  v35 = &qword_100064BF8;
  v36 = &qword_10004DED8;
  return sub_100003EA4(v34, v35, v36);
}

uint64_t sub_1000095B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_100003650(&qword_100064CA0, &qword_10004DF20);
  __chkstk_darwin(v3 - 8);
  v5 = v56 - v4;
  v6 = sub_10004C030();
  __chkstk_darwin(v6);
  v57 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (v56 - v9);
  v11 = type metadata accessor for AppIconContentView(0);
  __chkstk_darwin(v11 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003650(&qword_100064CA8, &qword_10004DF28);
  __chkstk_darwin(v14);
  v59 = v56 - v15;
  v56[1] = a1;
  sub_10000A7A4(a1, v13, type metadata accessor for AppIconConfiguration);
  sub_10004BFA0();
  if (v17 >= v16)
  {
    if (qword_100064710 != -1)
    {
      v53 = v17;
      swift_once();
      v17 = v53;
    }

    v18 = *&qword_100065BA0;
    v19 = qword_100064708;
    v20 = &qword_100065B98;
    v16 = v17;
  }

  else
  {
    if (qword_100064710 != -1)
    {
      v52 = v16;
      swift_once();
      v16 = v52;
    }

    v18 = *&qword_100065BA0;
    v19 = qword_100064708;
    v20 = &qword_100065B90;
  }

  if (v19 != -1)
  {
    v50 = v16;
    swift_once();
    v16 = v50;
  }

  v21 = v18 * (v16 / *v20);
  v56[0] = v6;
  v22 = *(v6 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_10004C250();
  v25 = *(*(v24 - 8) + 104);
  v25(v10 + v22, v23, v24);
  *v10 = v21;
  v10[1] = v21;
  v26 = v59;
  v27 = v59 + *(v14 + 36);
  sub_10000AA18(v10, v27, &type metadata accessor for RoundedRectangle);
  *(v27 + *(sub_100003650(&qword_100064CB0, &qword_10004DF30) + 36)) = 256;
  sub_10000AA18(v13, v26, type metadata accessor for AppIconContentView);
  sub_10004BFA0();
  if (v29 >= v28)
  {
    if (qword_100064710 != -1)
    {
      v55 = v29;
      swift_once();
      v29 = v55;
    }

    v30 = qword_100064708;
    v31 = &qword_100065B98;
    v28 = v29;
  }

  else
  {
    if (qword_100064710 != -1)
    {
      v54 = v28;
      swift_once();
      v28 = v54;
    }

    v30 = qword_100064708;
    v31 = &qword_100065B90;
  }

  if (v30 != -1)
  {
    v51 = v28;
    swift_once();
    v28 = v51;
  }

  v32 = v18 * (v28 / *v31);
  v33 = v57;
  v25(v57 + *(v56[0] + 20), v23, v24);
  *v33 = v32;
  v33[1] = v32;
  sub_10004C5C0();
  type metadata accessor for AppIconConfiguration(0);
  v34 = sub_10004C5F0();

  sub_10004BF40();
  sub_10000A7A4(v33, v5, &type metadata accessor for RoundedRectangle);
  v35 = &v5[*(sub_100003650(&qword_100064CB8, &qword_10004DF38) + 36)];
  v36 = v61;
  *v35 = v60;
  *(v35 + 1) = v36;
  *(v35 + 4) = v62;
  v37 = sub_100003650(&qword_100064CC0, &qword_10004DF40);
  *&v5[*(v37 + 52)] = v34;
  *&v5[*(v37 + 56)] = 256;
  v38 = sub_10004C720();
  v40 = v39;
  sub_10000A80C(v33, &type metadata accessor for RoundedRectangle);
  v41 = &v5[*(sub_100003650(&qword_100064CC8, &qword_10004DF48) + 36)];
  *v41 = v38;
  v41[1] = v40;
  v42 = sub_10004C720();
  v44 = v43;
  v45 = sub_100003650(&qword_100064CD0, &qword_10004DF50);
  v46 = v58;
  v47 = v58 + *(v45 + 36);
  sub_100007C30(v5, v47, &qword_100064CA0, &qword_10004DF20);
  v48 = (v47 + *(sub_100003650(&qword_100064CD8, &qword_10004DF58) + 36));
  *v48 = v42;
  v48[1] = v44;
  return sub_100007C30(v59, v46, &qword_100064CA8, &qword_10004DF28);
}

uint64_t sub_100009BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100003650(&qword_100064D88, &qword_10004DFD8);
  __chkstk_darwin(v3);
  v31 = v29 - v4;
  v5 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  v8 = sub_10004C630();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003650(&qword_100064D98, &qword_100050060);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = type metadata accessor for AppIconConfiguration(0);
  v16 = v15;
  v17 = a1;
  v18 = *(a1 + *(v15 + 20));
  if (v18)
  {
    v30 = v18;
    sub_10004C620();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    sub_10004C680();
    v29[1] = v3;

    (*(v9 + 8))(v11, v8);
    v19 = *(v16 + 36);
    v20 = sub_10004CB50();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v7, v17 + v19, v20);
    (*(v21 + 56))(v7, 0, 1, v20);
    sub_10004C670();

    sub_100003EA4(v7, &qword_100064D90, &unk_10004DFE0);
    v22 = &v14[*(v12 + 36)];
    *v22 = 0;
    *(v22 + 4) = 1;
    sub_10000AE9C(v14, v31);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064DB0, &qword_10004DFF8);
    sub_10000AD24();
    sub_10000ADC8();
    sub_10004C320();

    return sub_10000AF0C(v14);
  }

  else
  {
    v24 = v31;
    if (*(v17 + *(v15 + 32)) == 1)
    {
      sub_10000AE54(0, &qword_100064DC8, UIColor_ptr);
      sub_10004CE80(0.0, 0.0, 0.0, 0.10259);
      v25 = sub_10004C5B0();
      v26 = 0x3FF0000000000000;
      if (*(v17 + *(v16 + 28)) == 1)
      {
        v26 = 0x3FF5555555555555;
      }

      v33 = v25;
      v34 = v26;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v33 = sub_10004C5D0();
      v34 = 0;
      v35 = 0;
      v36 = 1;
    }

    sub_100003650(&qword_100064DA0, &qword_10004DFF0);
    sub_10000ACA0();
    sub_10004C320();
    v27 = v38;
    v28 = v39;
    *v24 = v37;
    *(v24 + 16) = v27;
    *(v24 + 18) = v28;
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100064DB0, &qword_10004DFF8);
    sub_10000AD24();
    sub_10000ADC8();
    return sub_10004C320();
  }
}

uint64_t sub_10000A09C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_10004C280();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100003650(&qword_100064D80, &qword_10004DFD0);
  return sub_100009BDC(v2, a2 + *(v4 + 44));
}

uint64_t sub_10000A0F0(uint64_t a1, uint64_t a2)
{
  if ((sub_10004BB50() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
    v8 = v7;
    v9 = v6;
    v10 = sub_10004CE90();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v4[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 16);
  v14 = a2 + v11;
  if (v13)
  {
    if ((*(v14 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v14 + 16))
    {
      return 0;
    }

    if (*v12 != *v14 || v12[1] != *(v14 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  return sub_10004CB30();
}

uint64_t sub_10000A2B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A2F0()
{
  result = qword_100064C08;
  if (!qword_100064C08)
  {
    sub_100003698(&qword_100064BC8, &qword_10004DEA8);
    sub_10000A3A8();
    sub_100003D30(&qword_100064C30, &qword_100064C00, &qword_10004DEE0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C08);
  }

  return result;
}

unint64_t sub_10000A3A8()
{
  result = qword_100064C10;
  if (!qword_100064C10)
  {
    sub_100003698(&qword_100064BC0, &qword_10004DEA0);
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    sub_100003D30(&qword_100064C20, &qword_100064C28, &qword_10004DEE8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C10);
  }

  return result;
}

unint64_t sub_10000A490()
{
  result = qword_100064C38;
  if (!qword_100064C38)
  {
    sub_100003698(&qword_100064BF8, &qword_10004DED8);
    sub_100003D30(&qword_100064C40, &qword_100064C48, &qword_10004DEF0, &protocol conformance descriptor for GeometryReader<A>);
    sub_10000A548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C38);
  }

  return result;
}

unint64_t sub_10000A548()
{
  result = qword_100064C50;
  if (!qword_100064C50)
  {
    sub_100003698(&qword_100064BE0, &qword_10004DEC0);
    sub_10000A600();
    sub_100003D30(&qword_100064C70, &qword_100064C78, &qword_10004DF00, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C50);
  }

  return result;
}

unint64_t sub_10000A600()
{
  result = qword_100064C58;
  if (!qword_100064C58)
  {
    sub_100003698(&qword_100064BD8, &qword_10004DEB8);
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    sub_100003D30(&qword_100064C60, &qword_100064C68, &qword_10004DEF8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C58);
  }

  return result;
}

unint64_t sub_10000A6E8()
{
  result = qword_100064C80;
  if (!qword_100064C80)
  {
    sub_100003698(&qword_100064BB8, &qword_10004DE98);
    sub_10000A2F0();
    sub_100008730(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064C80);
  }

  return result;
}

uint64_t sub_10000A7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A86C()
{
  v1 = *(type metadata accessor for AppIcon(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004BB70();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for AppIconConfiguration(0);

  v7 = *(v6 + 36);
  v8 = sub_10004CB50();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A998@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppIcon(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000095B0(v4, a1);
}

uint64_t sub_10000AA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000AA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000AB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000AB88(uint64_t a1)
{
  result = type metadata accessor for AppIconConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000ABF8()
{
  result = qword_100064D70;
  if (!qword_100064D70)
  {
    sub_100003698(&qword_100064D78, "PA");
    sub_10000A490();
    sub_10000A6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064D70);
  }

  return result;
}

unint64_t sub_10000ACA0()
{
  result = qword_100064DA8;
  if (!qword_100064DA8)
  {
    sub_100003698(&qword_100064DA0, &qword_10004DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DA8);
  }

  return result;
}

unint64_t sub_10000AD24()
{
  result = qword_100064DB8;
  if (!qword_100064DB8)
  {
    sub_100003698(&qword_100064D98, &qword_100050060);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DB8);
  }

  return result;
}

unint64_t sub_10000ADC8()
{
  result = qword_100064DC0;
  if (!qword_100064DC0)
  {
    sub_100003698(&qword_100064DB0, &qword_10004DFF8);
    sub_10000ACA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064DC0);
  }

  return result;
}

uint64_t sub_10000AE54(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000AE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100064D98, &qword_100050060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF0C(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064D98, &qword_100050060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000AF74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_100003650(&qword_100064DD0, &qword_10004E000);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for AppIconConfiguration(0);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = _swiftEmptyArrayStorage;
  v54 = *(a1 + 16);
  if (!v54 || a2 < 1)
  {
    return v20;
  }

  v46 = v17;
  v47 = a3;
  v49 = a4;
  v48 = v10;
  v21 = 0;
  v22 = *(v16 + 80);
  v52 = a2;
  v53 = (v22 + 32) & ~v22;
  v23 = *(v16 + 72);
  v50 = v23;
  v51 = a1 + v53;
  do
  {
    sub_10000A7A4(v51 + v23 * (v21 % v54), v14, type metadata accessor for AppIconConfiguration);
    v24 = *&v14[v11[5]];
    v25 = &v14[v11[6]];
    v26 = *v25;
    v56 = *(v25 + 1);
    v55 = v25[16];
    v27 = v14[v11[7]];
    v28 = v14[v11[8]];
    v29 = v11[9];
    v30 = sub_10004CB50();
    (*(*(v30 - 8) + 16))(&v19[v29], &v14[v29], v30);
    v31 = v24;
    sub_10004BB60();
    sub_10000A80C(v14, type metadata accessor for AppIconConfiguration);
    *&v19[v11[5]] = v24;
    v32 = &v19[v11[6]];
    v33 = v56;
    *v32 = v26;
    *(v32 + 1) = v33;
    v32[16] = v55;
    v19[v11[7]] = v27;
    v19[v11[8]] = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1000351B0(0, v20[2] + 1, 1, v20);
    }

    v35 = v20[2];
    v34 = v20[3];
    v23 = v50;
    if (v35 >= v34 >> 1)
    {
      v20 = sub_1000351B0((v34 > 1), v35 + 1, 1, v20);
    }

    ++v21;
    v20[2] = v35 + 1;
    result = sub_10000AA18(v19, v20 + v53 + v35 * v23, type metadata accessor for AppIconConfiguration);
    v37 = v52;
  }

  while (v52 != v21);
  if (v49)
  {
LABEL_16:
    v43 = v20[2];
    if (v43 >= v37)
    {
      if (v43 != v37)
      {
        sub_1000464B0(v20, v20 + v53, 0, (2 * v37) | 1);
        v45 = v44;

        return v45;
      }

      return v20;
    }

    __break(1u);
    goto LABEL_21;
  }

  v38 = v46;
  sub_10004CB40();
  sub_10004BB60();
  result = v38;
  *(v38 + v11[5]) = 0;
  v39 = v38 + v11[6];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  *(v38 + v11[7]) = 0;
  *(v38 + v11[8]) = 0;
  v40 = v20[2];
  v41 = v47;
  if (v40 < v47)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v47 & 0x8000000000000000) == 0)
  {
    sub_10000AA18(result, v48, type metadata accessor for AppIconConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v20;
    if (!isUniquelyReferenced_nonNull_native || v40 >= v20[3] >> 1)
    {
      v20 = sub_1000351B0(isUniquelyReferenced_nonNull_native, v40 + 1, 1, v20);
      v57 = v20;
    }

    result = sub_100034FE8(v41, v41, 1, v48);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

__n128 sub_10000B418(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000B434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000B47C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000B4F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v145 = a1;
  v3 = type metadata accessor for AppIcon(0);
  v122 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for AppIconConfiguration(0);
  v6 = *(v131 - 8);
  __chkstk_darwin(v131);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100003650(&qword_100064DE8, &qword_10004E0E8);
  __chkstk_darwin(v130);
  v123 = (&v113 - v9);
  v118 = sub_10004C6E0();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = (&v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_10004C6F0();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100003650(&qword_100064DF0, &qword_10004E0F0);
  __chkstk_darwin(v127);
  v128 = &v113 - v12;
  v144 = sub_100003650(&qword_100064DF8, &qword_10004E0F8);
  __chkstk_darwin(v144);
  v129 = &v113 - v13;
  v124 = sub_100003650(&qword_100064E00, &qword_10004E100);
  __chkstk_darwin(v124);
  v125 = &v113 - v14;
  v139 = sub_100003650(&qword_100064E08, &qword_10004E108);
  __chkstk_darwin(v139);
  v126 = &v113 - v15;
  v16 = sub_100003650(&qword_100064E10, &qword_10004E110);
  __chkstk_darwin(v16 - 8);
  v133 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v132 = &v113 - v19;
  v140 = sub_100003650(&qword_100064E18, &qword_10004E118);
  __chkstk_darwin(v140);
  v134 = (&v113 - v20);
  v21 = sub_100003650(&qword_100064E20, &qword_10004E120);
  __chkstk_darwin(v21 - 8);
  v115 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = (&v113 - v24);
  v25 = sub_100003650(&qword_100064E28, &qword_10004E128);
  __chkstk_darwin(v25);
  v27 = &v113 - v26;
  v141 = sub_100003650(&qword_100064E30, &qword_10004E130);
  __chkstk_darwin(v141);
  v143 = &v113 - v28;
  v135 = sub_100003650(&qword_100064E38, &qword_10004E138);
  __chkstk_darwin(v135);
  v137 = &v113 - v29;
  v30 = sub_100003650(&qword_100064E40, &qword_10004E140);
  __chkstk_darwin(v30);
  v32 = &v113 - v31;
  v136 = sub_100003650(&qword_100064E48, &qword_10004E148);
  __chkstk_darwin(v136);
  v34 = (&v113 - v33);
  v142 = sub_100003650(&qword_100064E50, &qword_10004E150);
  __chkstk_darwin(v142);
  v138 = &v113 - v35;
  v36 = type metadata accessor for AppIconContentView(0);
  __chkstk_darwin(v36);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v2;
  v39 = *v2;
  v40 = *(*v2 + 16);
  if (v40 <= 1)
  {
    v132 = v30;
    v51 = v32;
    v134 = v34;
    v52 = v131;
    v133 = v25;
    if (!v40)
    {
      sub_10004BB60();
      *&v38[v52[5]] = 0;
      v79 = &v38[v52[6]];
      *v79 = 0;
      *(v79 + 1) = 0;
      v79[16] = 1;
      v38[v52[7]] = 0;
      v38[v52[8]] = 1;
      sub_10004CB40();
      sub_10000FA20(v38, v51, type metadata accessor for AppIconContentView);
      swift_storeEnumTagMultiPayload();
      sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
      sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128, &protocol conformance descriptor for HStack<A>);
      v80 = v134;
      sub_10004C320();
      sub_100003E3C(v80, v137, &qword_100064E48, &qword_10004E148);
      swift_storeEnumTagMultiPayload();
      sub_10000F260();
      sub_10000F348();
      v81 = v138;
      sub_10004C320();
      sub_100003EA4(v80, &qword_100064E48, &qword_10004E148);
      sub_100003E3C(v81, v143, &qword_100064E50, &qword_10004E150);
      swift_storeEnumTagMultiPayload();
      sub_10000F1D4();
      sub_10000F3F8();
      sub_10004C320();
      sub_100003EA4(v81, &qword_100064E50, &qword_10004E150);
      return sub_10000F4B0(v38);
    }

    v53 = v134;
    if (v40 != 1)
    {
      goto LABEL_14;
    }

    v54 = v51;
    v42 = v27;
    *v27 = sub_10004C1B0();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v55 = &v27[*(sub_100003650(&qword_100064ED0, &qword_10004E188) + 44)];
    v56 = sub_10004C280();
    v57 = v114;
    *v114 = v56;
    *(v57 + 8) = 0;
    *(v57 + 16) = 1;
    v58 = sub_100003650(&qword_100064ED8, &qword_10004E190);
    sub_10000CAB8(v146, (v57 + *(v58 + 44)), v59, v60);
    v61 = v115;
    sub_100003E3C(v57, v115, &qword_100064E20, &qword_10004E120);
    *v55 = 0;
    v55[8] = 1;
    v62 = sub_100003650(&qword_100064EE0, &qword_10004E198);
    sub_100003E3C(v61, &v55[*(v62 + 48)], &qword_100064E20, &qword_10004E120);
    sub_100003EA4(v57, &qword_100064E20, &qword_10004E120);
    sub_100003EA4(v61, &qword_100064E20, &qword_10004E120);
    v48 = &qword_100064E28;
    v49 = &qword_10004E128;
    sub_100003E3C(v42, v54, &qword_100064E28, &qword_10004E128);
    swift_storeEnumTagMultiPayload();
    sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128, &protocol conformance descriptor for HStack<A>);
    sub_10004C320();
    v63 = &qword_100064E48;
    v64 = &qword_10004E148;
    sub_100003E3C(v53, v137, &qword_100064E48, &qword_10004E148);
  }

  else
  {
    switch(v40)
    {
      case 2:
        v65 = sub_10004C1B0();
        v42 = v134;
        *v134 = v65;
        *(v42 + 8) = 0;
        v66 = v132;
        *(v42 + 16) = 1;
        v67 = v42 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v66 = sub_10004C280();
        *(v66 + 8) = 0;
        *(v66 + 16) = 1;
        v68 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000CCEC(v146, v66 + *(v68 + 44), -50.0, -25.0);
        v69 = v133;
        sub_100003E3C(v66, v133, &qword_100064E10, &qword_10004E110);
        *v67 = 0;
        *(v67 + 8) = 1;
        v70 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v69, v67 + *(v70 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v66, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v69, &qword_100064E10, &qword_10004E110);
        v48 = &qword_100064E18;
        v49 = &qword_10004E118;
        sub_100003E3C(v42, v125, &qword_100064E18, &qword_10004E118);
        break;
      case 3:
        v71 = sub_10004C1B0();
        v42 = v134;
        *v134 = v71;
        *(v42 + 8) = 0;
        v72 = v132;
        *(v42 + 16) = 1;
        v73 = v42 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v72 = sub_10004C280();
        *(v72 + 8) = 0;
        *(v72 + 16) = 1;
        v74 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000D1D0(v146, v72 + *(v74 + 44), -30.0, -15.0);
        v75 = v133;
        sub_100003E3C(v72, v133, &qword_100064E10, &qword_10004E110);
        *v73 = 0;
        *(v73 + 8) = 1;
        v76 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v75, v73 + *(v76 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v72, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v75, &qword_100064E10, &qword_10004E110);
        v48 = &qword_100064E18;
        v49 = &qword_10004E118;
        sub_100003E3C(v42, v125, &qword_100064E18, &qword_10004E118);
        break;
      case 4:
        v41 = sub_10004C1B0();
        v42 = v134;
        *v134 = v41;
        *(v42 + 8) = 0;
        v43 = v132;
        *(v42 + 16) = 1;
        v44 = v42 + *(sub_100003650(&qword_100064EB8, &qword_10004E170) + 44);
        *v43 = sub_10004C280();
        *(v43 + 8) = 0;
        *(v43 + 16) = 1;
        v45 = sub_100003650(&qword_100064EC0, &qword_10004E178);
        sub_10000D4DC(v146, v43 + *(v45 + 44), -25.0, -12.0);
        v46 = v133;
        sub_100003E3C(v43, v133, &qword_100064E10, &qword_10004E110);
        *v44 = 0;
        *(v44 + 8) = 1;
        v47 = sub_100003650(&qword_100064EC8, &qword_10004E180);
        sub_100003E3C(v46, v44 + *(v47 + 48), &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v43, &qword_100064E10, &qword_10004E110);
        sub_100003EA4(v46, &qword_100064E10, &qword_10004E110);
        v48 = &qword_100064E18;
        v49 = &qword_10004E118;
        sub_100003E3C(v42, v128, &qword_100064E18, &qword_10004E118);
        swift_storeEnumTagMultiPayload();
        sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118, &protocol conformance descriptor for HStack<A>);
        sub_10000F090();
        v50 = v129;
LABEL_25:
        sub_10004C320();
        v77 = &qword_100064DF8;
        v78 = &qword_10004E0F8;
        sub_100003E3C(v50, v143, &qword_100064DF8, &qword_10004E0F8);
        goto LABEL_26;
      default:
LABEL_14:
        v83 = v146[1];
        v139 = *&v39;
        v84 = v83 * 0.36;
        v85 = v146[4];
        v86 = v146[5];
        v87 = v83 * 0.36 * 2.5 + v86 + v86;
        v88 = v86 + v83 * 0.36 * 1.5;
        v89 = v146[3];
        v90 = v116;
        *v116 = v83 * 0.36;
        (*(v117 + 104))(v90, enum case for GridItem.Size.fixed(_:), v118);
        v91 = v119;
        sub_10004C700();
        v92 = v121;
        v93 = sub_10004CD90();
        v138 = v93;
        *(v93 + 16) = 3;
        v94 = v120;
        v95 = v93 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        v96 = *(v120 + 16);
        v96(v95, v91, v92);
        v97 = v96;
        v98 = *(v94 + 72);
        v97(v95 + v98, v91, v92);
        (*(v94 + 32))(v95 + 2 * v98, v91, v92);

        *&v147.a = _swiftEmptyArrayStorage;
        sub_1000269F4(0, v40, 0);
        a = v147.a;
        v100 = v139 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
        v101 = *(v122 + 72);
        do
        {
          sub_10000FA20(v100, v5, type metadata accessor for AppIcon);
          sub_10000387C(v5, v8);
          v147.a = a;
          v103 = *(*&a + 16);
          v102 = *(*&a + 24);
          if (v103 >= v102 >> 1)
          {
            sub_1000269F4((v102 > 1), v103 + 1, 1);
            a = v147.a;
          }

          *(*&a + 16) = v103 + 1;
          sub_10000387C(v8, *&a + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v103);
          v100 += v101;
          --v40;
        }

        while (v40);
        if (v89 >= v87)
        {
          v104 = v87 - v89;
        }

        else
        {
          v104 = v89 - v87;
        }

        if (v85 >= v88)
        {
          v105 = v88 - v85;
        }

        else
        {
          v105 = v85 - v88;
        }

        v106 = sub_10000AF74(*&a, 12, 5, 0);

        v107 = sub_10004C280();
        v42 = v123;
        *v123 = v107;
        *(v42 + 8) = 0;
        *(v42 + 16) = 1;
        v108 = sub_100003650(&qword_100064E58, &qword_10004E158);
        sub_10000D7E8(v106, v146, v42 + *(v108 + 44));

        v109 = v42 + *(sub_100003650(&qword_100064E60, &qword_10004E160) + 36);
        *v109 = 0xBFD0C152382D7365;
        *(v109 + 8) = v87 / (v84 * 3.0 + v86 * 3.0 + -1.0);
        *(v109 + 16) = v88 / (v84 * 4.0 + v86 * 4.0 + -1.0);
        CGAffineTransformMakeTranslation(&v147, v104, v105);
        v110 = *&v147.c;
        v111 = *&v147.tx;
        v112 = (v42 + *(v130 + 36));
        *v112 = *&v147.a;
        v112[1] = v110;
        v112[2] = v111;
        v48 = &qword_100064DE8;
        v49 = &qword_10004E0E8;
        sub_100003E3C(v42, v128, &qword_100064DE8, &qword_10004E0E8);
        swift_storeEnumTagMultiPayload();
        sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118, &protocol conformance descriptor for HStack<A>);
        sub_10000F090();
        v50 = v129;
        goto LABEL_25;
    }

    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118, &protocol conformance descriptor for HStack<A>);
    v53 = v126;
    sub_10004C320();
    v63 = &qword_100064E08;
    v64 = &qword_10004E108;
    sub_100003E3C(v53, v137, &qword_100064E08, &qword_10004E108);
  }

  swift_storeEnumTagMultiPayload();
  sub_10000F260();
  sub_10000F348();
  v50 = v138;
  sub_10004C320();
  sub_100003EA4(v53, v63, v64);
  v77 = &qword_100064E50;
  v78 = &qword_10004E150;
  sub_100003E3C(v50, v143, &qword_100064E50, &qword_10004E150);
LABEL_26:
  swift_storeEnumTagMultiPayload();
  sub_10000F1D4();
  sub_10000F3F8();
  sub_10004C320();
  sub_100003EA4(v50, v77, v78);
  return sub_100003EA4(v42, v48, v49);
}

uint64_t sub_10000CAB8@<X0>(double *a1@<X0>, uint64_t *a2@<X8>, int8x16_t a3@<Q2>, int8x16_t a4@<Q3>)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = v7 - 1;
  if ((v7 - 1) > 3)
  {
    v9 = 0.36;
  }

  else
  {
    v9 = dbl_10004E238[v8];
  }

  v10 = a1[1];
  v11 = a1[6];
  *a3.i64 = v8;
  a4.i64[0] = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = v10 / (v9 * v10 - *vbslq_s8(vnegq_f64(v12), a4, a3).i64);
  v14 = v9 * fabs((sqrt(v10 * v10 + v10 * v10) - v10) * sin(v11 * 3.14159265 / 180.0 * 0.5));
  *a2 = sub_10004C720();
  a2[1] = v15;
  sub_100003650(&qword_100064EE8, &unk_10004E1A0);
  v25 = 0;
  v26 = v7;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = *(a1 + 1);
  *(v16 + 24) = *a1;
  *(v16 + 16) = v6;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a1 + 2);
  *(v16 + 72) = a1[6];
  *(v16 + 80) = v9;
  *(v16 + 88) = v11;
  *(v16 + 96) = xmmword_10004E020;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 128) = v14;
  sub_10000F514(a1, v24);
  sub_10000F514(a1, v24);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v19 = v18;
  v21 = v20;
  result = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  v23 = (a2 + *(result + 36));
  *v23 = v13;
  v23[1] = v13;
  *(v23 + 2) = v19;
  *(v23 + 3) = v21;
  return result;
}

uint64_t sub_10000CCEC@<X0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  __chkstk_darwin(v8);
  v10 = (v38 - v9);
  v11 = *a1;
  sub_10000F514(a1, v39);
  sub_10000CFF8(v11);
  v13 = v12;
  v14 = v11[2];
  if ((v14 - 1) > 3)
  {
    v15 = 0.36;
  }

  else
  {
    v15 = dbl_10004E238[v14 - 1];
  }

  v16 = a1[1];
  v17 = a1[6];
  v18 = v16 / (v15 * v16 - (*(v12 + 16) - 1) * a3);
  v19 = v15 * fabs((sqrt(v16 * v16 + v16 * v16) - v16) * sin(v17 * 3.14159265 / 180.0 * 0.5));
  *v10 = sub_10004C720();
  v10[1] = v20;
  sub_100003650(&qword_100064EE8, &unk_10004E1A0);
  v21 = *(v13 + 16);
  v38[1] = 0;
  v38[2] = v21;
  swift_getKeyPath();
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  *(v22 + 24) = *a1;
  *(v22 + 16) = v13;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a1 + 2);
  *(v22 + 72) = a1[6];
  *(v22 + 80) = v15;
  *(v22 + 88) = v17;
  *(v22 + 96) = xmmword_10004E030;
  *(v22 + 112) = a3;
  *(v22 + 120) = a4;
  *(v22 + 128) = v19;
  sub_10000F514(a1, v39);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v24 = (v10 + *(v8 + 36));
  *v24 = v18;
  v24[1] = v18;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v27 = sub_10004C3B0();
  sub_10004BEE0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100007C30(v10, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v37 = a2 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

void sub_10000CFF8(void *a1)
{
  v2 = type metadata accessor for AppIcon(0);
  v14 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_5;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_10000FA20(a1 + v12 + v13 * v8, v15, type metadata accessor for AppIcon);
    if (i >= v11)
    {
      goto LABEL_14;
    }

    sub_10000FA20(a1 + v12 + v13 * i, v4, type metadata accessor for AppIcon);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1000355F4(a1);
    }

    sub_10000F960(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_10000F960(v15, a1 + v12 + v13 * i);
LABEL_5:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_10000D1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  __chkstk_darwin(v8);
  v10 = (v38 - v9);
  v11 = *a1;
  sub_10000F514(a1, v39);
  sub_10000CFF8(v11);
  v13 = v12;
  v14 = v11[2];
  if ((v14 - 1) > 3)
  {
    v15 = 0.36;
  }

  else
  {
    v15 = dbl_10004E238[v14 - 1];
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 48);
  v18 = v16 / (v15 * v16 - (*(v12 + 16) - 1) * a3);
  v19 = v15 * fabs((sqrt(v16 * v16 + v16 * v16) - v16) * sin(v17 * 3.14159265 / 180.0 * 0.5));
  *v10 = sub_10004C720();
  v10[1] = v20;
  sub_100003650(&qword_100064EE8, &unk_10004E1A0);
  v21 = *(v13 + 16);
  v38[1] = 0;
  v38[2] = v21;
  swift_getKeyPath();
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  *(v22 + 24) = *a1;
  *(v22 + 16) = v13;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a1 + 32);
  *(v22 + 72) = *(a1 + 48);
  *(v22 + 80) = v15;
  *(v22 + 88) = v17;
  *(v22 + 96) = xmmword_10004E030;
  *(v22 + 112) = a3;
  *(v22 + 120) = a4;
  *(v22 + 128) = v19;
  sub_10000F514(a1, v39);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v24 = (v10 + *(v8 + 36));
  *v24 = v18;
  v24[1] = v18;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v27 = sub_10004C3B0();
  sub_10004BEE0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100007C30(v10, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v37 = a2 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_10000D4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_100003650(&qword_100064F50, &qword_10004E1F8);
  __chkstk_darwin(v8);
  v10 = (v38 - v9);
  v11 = *a1;
  sub_10000F514(a1, v39);
  sub_10000CFF8(v11);
  v13 = v12;
  v14 = v11[2];
  if ((v14 - 1) > 3)
  {
    v15 = 0.36;
  }

  else
  {
    v15 = dbl_10004E238[v14 - 1];
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 48);
  v18 = v16 / (v15 * v16 - (*(v12 + 16) - 1) * a3);
  v19 = v15 * fabs((sqrt(v16 * v16 + v16 * v16) - v16) * sin(v17 * 3.14159265 / 180.0 * 0.5));
  *v10 = sub_10004C720();
  v10[1] = v20;
  sub_100003650(&qword_100064EE8, &unk_10004E1A0);
  v21 = *(v13 + 16);
  v38[1] = 0;
  v38[2] = v21;
  swift_getKeyPath();
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  *(v22 + 24) = *a1;
  *(v22 + 16) = v13;
  *(v22 + 40) = v23;
  *(v22 + 56) = *(a1 + 32);
  *(v22 + 72) = *(a1 + 48);
  *(v22 + 80) = v15;
  *(v22 + 88) = v17;
  *(v22 + 96) = xmmword_10004E030;
  *(v22 + 112) = a3;
  *(v22 + 120) = a4;
  *(v22 + 128) = v19;
  sub_10000F514(a1, v39);
  sub_100003650(&qword_100064EF0, &qword_10004E1C8);
  sub_100003650(&qword_100064EF8, &qword_10004E1D0);
  sub_10000F54C();
  sub_10000F62C();
  sub_10004C6A0();
  sub_10004C770();
  v24 = (v10 + *(v8 + 36));
  *v24 = v18;
  v24[1] = v18;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v27 = sub_10004C3B0();
  sub_10004BEE0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100007C30(v10, a2, &qword_100064F50, &qword_10004E1F8);
  result = sub_100003650(&qword_100064F58, &qword_10004E200);
  v37 = a2 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_10000D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = sub_100003650(&qword_100064F60, &qword_10004E208);
  __chkstk_darwin(v6 - 8);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v42 - v9;
  __chkstk_darwin(v10);
  v45 = &v42 - v11;
  __chkstk_darwin(v12);
  v48 = &v42 - v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  __chkstk_darwin(v23);
  v25 = &v42 - v24;
  *v25 = sub_10004C1B0();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = sub_100003650(&qword_100064F68, &qword_10004E210);
  sub_10000DBD4(a1, a2, &v25[*(v26 + 44)]);
  v27 = *(a2 + 40);
  *v22 = sub_10004C1B0();
  *(v22 + 1) = 0;
  v22[16] = 1;
  sub_10000E024(a1, a2, &v22[*(v26 + 44)]);
  *v19 = sub_10004C1B0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v28 = &v19[*(v26 + 44)];
  v44 = v19;
  sub_10000E488(a1, a2, v28);
  *v16 = sub_10004C1B0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v29 = &v16[*(v26 + 44)];
  v43 = v16;
  sub_10000E8EC(a1, a2, v29);
  v30 = v48;
  sub_100003E3C(v25, v48, &qword_100064F60, &qword_10004E208);
  v31 = v45;
  sub_100003E3C(v22, v45, &qword_100064F60, &qword_10004E208);
  v32 = v19;
  v33 = v46;
  sub_100003E3C(v32, v46, &qword_100064F60, &qword_10004E208);
  sub_100003E3C(v16, v49, &qword_100064F60, &qword_10004E208);
  v34 = v47;
  sub_100003E3C(v30, v47, &qword_100064F60, &qword_10004E208);
  v35 = sub_100003650(&qword_100064F70, &qword_10004E218);
  v36 = v34 + v35[12];
  *v36 = v27;
  *(v36 + 8) = 0;
  sub_100003E3C(v31, v34 + v35[16], &qword_100064F60, &qword_10004E208);
  v37 = v34 + v35[20];
  *v37 = v27;
  *(v37 + 8) = 0;
  sub_100003E3C(v33, v34 + v35[24], &qword_100064F60, &qword_10004E208);
  v38 = v34 + v35[28];
  *v38 = v27;
  *(v38 + 8) = 0;
  v39 = v34 + v35[32];
  v40 = v49;
  sub_100003E3C(v49, v39, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v43, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v44, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v22, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v25, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v40, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v33, &qword_100064F60, &qword_10004E208);
  sub_100003EA4(v31, &qword_100064F60, &qword_10004E208);
  return sub_100003EA4(v48, &qword_100064F60, &qword_10004E208);
}

void sub_10000DBD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v6 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = *(a1 + 16);
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v44 = v19;
  v45 = v18;
  v23 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  sub_10000FA20(v24, v21, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v25 = &v21[*(v6 + 36)];
  v26 = v48;
  *v25 = v47;
  *(v25 + 1) = v26;
  *(v25 + 2) = v49;
  if (v22 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v43 = v8;
  v27 = *(a2 + 40);
  v28 = *(v23 + 72);
  sub_10000FA20(v24 + v28, v16, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v29 = &v16[*(v6 + 36)];
  v30 = v51;
  *v29 = v50;
  *(v29 + 1) = v30;
  *(v29 + 2) = v52;
  if (v22 >= 3)
  {
    sub_10000FA20(v24 + 2 * v28, v13, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v31 = &v13[*(v6 + 36)];
    v32 = v54;
    *v31 = v53;
    *(v31 + 1) = v32;
    *(v31 + 2) = v55;
    v33 = v21;
    v34 = v46;
    v42 = v21;
    v35 = v16;
    v36 = v44;
    sub_100003E3C(v33, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v35, v45, &qword_100064888, &qword_10004DB10);
    v38 = v43;
    sub_100003E3C(v13, v43, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v36, v34, &qword_100064888, &qword_10004DB10);
    v39 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v40 = v34 + v39[12];
    *v40 = v27;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, v34 + v39[16], &qword_100064888, &qword_10004DB10);
    v41 = v34 + v39[20];
    *v41 = v27;
    *(v41 + 8) = 0;
    sub_100003E3C(v38, v34 + v39[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v13, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000E024(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 < 4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = v19;
  v44 = v18;
  v45 = v17;
  v23 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v25 = *(v23 + 72);
  sub_10000FA20(v24 + 3 * v25, v21, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v26 = &v21[*(v7 + 36)];
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  *(v26 + 2) = v48;
  if (v22 == 4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = *(a2 + 40);
  sub_10000FA20(v24 + 4 * v25, v15, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v29 = &v15[*(v7 + 36)];
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  *(v29 + 2) = v51;
  if (v22 >= 6)
  {
    sub_10000FA20(v24 + 5 * v25, v12, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v31 = &v12[*(v7 + 36)];
    v32 = v53;
    *v31 = v52;
    *(v31 + 1) = v32;
    *(v31 + 2) = v54;
    v33 = v21;
    v42 = v21;
    v34 = v15;
    v35 = v43;
    sub_100003E3C(v33, v43, &qword_100064888, &qword_10004DB10);
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v12, v45, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v35, a3, &qword_100064888, &qword_10004DB10);
    v38 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v39 = a3 + v38[12];
    *v39 = v28;
    *(v39 + 8) = 0;
    sub_100003E3C(v36, a3 + v38[16], &qword_100064888, &qword_10004DB10);
    v40 = a3 + v38[20];
    *v40 = v28;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v38[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v12, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v34, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000E488(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 < 7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = v19;
  v44 = v18;
  v45 = v17;
  v23 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v25 = *(v23 + 72);
  sub_10000FA20(v24 + 6 * v25, v21, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v26 = &v21[*(v7 + 36)];
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  *(v26 + 2) = v48;
  if (v22 == 7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = *(a2 + 40);
  sub_10000FA20(v24 - v25 + 8 * v25, v15, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v29 = &v15[*(v7 + 36)];
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  *(v29 + 2) = v51;
  if (v22 >= 9)
  {
    sub_10000FA20(v24 + 8 * v25, v12, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v31 = &v12[*(v7 + 36)];
    v32 = v53;
    *v31 = v52;
    *(v31 + 1) = v32;
    *(v31 + 2) = v54;
    v33 = v21;
    v42 = v21;
    v34 = v15;
    v35 = v43;
    sub_100003E3C(v33, v43, &qword_100064888, &qword_10004DB10);
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v12, v45, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v35, a3, &qword_100064888, &qword_10004DB10);
    v38 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v39 = a3 + v38[12];
    *v39 = v28;
    *(v39 + 8) = 0;
    sub_100003E3C(v36, a3 + v38[16], &qword_100064888, &qword_10004DB10);
    v40 = a3 + v38[20];
    *v40 = v28;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v38[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v12, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v34, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000E8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 < 0xA)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = v19;
  v44 = v18;
  v45 = v17;
  v23 = *(type metadata accessor for AppIconConfiguration(0) - 8);
  v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v25 = *(v23 + 72);
  sub_10000FA20(v24 + 9 * v25, v21, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v26 = &v21[*(v7 + 36)];
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  *(v26 + 2) = v48;
  if (v22 == 10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = *(a2 + 40);
  sub_10000FA20(v24 + 10 * v25, v15, type metadata accessor for AppIconConfiguration);
  sub_10004C720();
  sub_10004BF90();
  v29 = &v15[*(v7 + 36)];
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  *(v29 + 2) = v51;
  if (v22 >= 0xC)
  {
    sub_10000FA20(v24 + 11 * v25, v12, type metadata accessor for AppIconConfiguration);
    sub_10004C720();
    sub_10004BF90();
    v31 = &v12[*(v7 + 36)];
    v32 = v53;
    *v31 = v52;
    *(v31 + 1) = v32;
    *(v31 + 2) = v54;
    v33 = v21;
    v42 = v21;
    v34 = v15;
    v35 = v43;
    sub_100003E3C(v33, v43, &qword_100064888, &qword_10004DB10);
    v36 = v44;
    sub_100003E3C(v34, v44, &qword_100064888, &qword_10004DB10);
    v37 = v45;
    sub_100003E3C(v12, v45, &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v35, a3, &qword_100064888, &qword_10004DB10);
    v38 = sub_100003650(&qword_100064F78, &qword_10004E220);
    v39 = a3 + v38[12];
    *v39 = v28;
    *(v39 + 8) = 0;
    sub_100003E3C(v36, a3 + v38[16], &qword_100064888, &qword_10004DB10);
    v40 = a3 + v38[20];
    *v40 = v28;
    *(v40 + 8) = 0;
    sub_100003E3C(v37, a3 + v38[24], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v12, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v34, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v37, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v36, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v35, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000ED54(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, CGFloat a11@<D6>)
{
  v20 = sub_100003650(&qword_100064F20, &qword_10004E1D8);
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v23 = *a1;
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(a2 + 16))
  {
    v24 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10000FA20(a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, v22, type metadata accessor for AppIcon);
    sub_10004C720();
    sub_10004BF90();
    v25 = &v22[*(sub_100003650(&qword_100064888, &qword_10004DB10) + 36)];
    v26 = v51;
    *v25 = v50;
    *(v25 + 1) = v26;
    *(v25 + 2) = v52;
    v27 = a6 * 0.0174532925;
    sub_10004C7B0();
    v29 = v28;
    v31 = v30;
    v32 = &v22[*(sub_100003650(&qword_100064F40, &unk_10004E1E8) + 36)];
    *v32 = v27;
    *(v32 + 1) = v29;
    *(v32 + 2) = v31;
    CGAffineTransformMakeTranslation(&v49, v23 * a9 + a7, v23 * a10 + a8);
    tx = v49.tx;
    ty = v49.ty;
    v47 = *&v49.c;
    v48 = *&v49.a;
    v35 = &v22[*(sub_100003650(&qword_100064F30, &qword_10004E1E0) + 36)];
    v36 = v47;
    *v35 = v48;
    *(v35 + 1) = v36;
    *(v35 + 4) = tx;
    *(v35 + 5) = ty;
    CGAffineTransformMakeTranslation(&v49, -a11, a11);
    v37 = *&v49.c;
    v38 = *&v49.tx;
    v39 = &v22[*(v20 + 36)];
    *v39 = *&v49.a;
    *(v39 + 1) = v37;
    *(v39 + 2) = v38;
    sub_10004C5C0();
    v40 = sub_10004C5F0();

    sub_100007C30(v22, a4, &qword_100064F20, &qword_10004E1D8);
    v41 = a4 + *(sub_100003650(&qword_100064EF8, &qword_10004E1D0) + 36);
    *v41 = v40;
    __asm { FMOV            V0.2D, #1.0 }

    *(v41 + 8) = _Q0;
    *(v41 + 24) = 0x3FF0000000000000;
    return;
  }

  __break(1u);
}

unint64_t sub_10000F090()
{
  result = qword_100064E70;
  if (!qword_100064E70)
  {
    sub_100003698(&qword_100064DE8, &qword_10004E0E8);
    sub_10000F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E70);
  }

  return result;
}

unint64_t sub_10000F11C()
{
  result = qword_100064E78;
  if (!qword_100064E78)
  {
    sub_100003698(&qword_100064E60, &qword_10004E160);
    sub_100003D30(&qword_100064E80, &qword_100064E88, &qword_10004E168, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E78);
  }

  return result;
}

unint64_t sub_10000F1D4()
{
  result = qword_100064E90;
  if (!qword_100064E90)
  {
    sub_100003698(&qword_100064E50, &qword_10004E150);
    sub_10000F260();
    sub_10000F348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E90);
  }

  return result;
}

unint64_t sub_10000F260()
{
  result = qword_100064E98;
  if (!qword_100064E98)
  {
    sub_100003698(&qword_100064E48, &qword_10004E148);
    sub_10000F918(&qword_100064C18, type metadata accessor for AppIconContentView, &unk_10004DF80);
    sub_100003D30(&qword_100064EA0, &qword_100064E28, &qword_10004E128, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E98);
  }

  return result;
}

unint64_t sub_10000F348()
{
  result = qword_100064EA8;
  if (!qword_100064EA8)
  {
    sub_100003698(&qword_100064E08, &qword_10004E108);
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064EA8);
  }

  return result;
}

unint64_t sub_10000F3F8()
{
  result = qword_100064EB0;
  if (!qword_100064EB0)
  {
    sub_100003698(&qword_100064DF8, &qword_10004E0F8);
    sub_100003D30(&qword_100064E68, &qword_100064E18, &qword_10004E118, &protocol conformance descriptor for HStack<A>);
    sub_10000F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064EB0);
  }

  return result;
}

uint64_t sub_10000F4B0(uint64_t a1)
{
  v2 = type metadata accessor for AppIconContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F54C()
{
  result = qword_100064F00;
  if (!qword_100064F00)
  {
    v1 = sub_100003698(&qword_100064EF0, &qword_10004E1C8);
    sub_10000F5D8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F00);
  }

  return result;
}

unint64_t sub_10000F5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100064F08;
  if (!qword_100064F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F08);
  }

  return result;
}

unint64_t sub_10000F62C()
{
  result = qword_100064F10;
  if (!qword_100064F10)
  {
    sub_100003698(&qword_100064EF8, &qword_10004E1D0);
    sub_10000F6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F10);
  }

  return result;
}

unint64_t sub_10000F6B8()
{
  result = qword_100064F18;
  if (!qword_100064F18)
  {
    sub_100003698(&qword_100064F20, &qword_10004E1D8);
    sub_10000F744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F18);
  }

  return result;
}

unint64_t sub_10000F744()
{
  result = qword_100064F28;
  if (!qword_100064F28)
  {
    sub_100003698(&qword_100064F30, &qword_10004E1E0);
    sub_10000F7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F28);
  }

  return result;
}

unint64_t sub_10000F7D0()
{
  result = qword_100064F38;
  if (!qword_100064F38)
  {
    sub_100003698(&qword_100064F40, &unk_10004E1E8);
    sub_10000F85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F38);
  }

  return result;
}

unint64_t sub_10000F85C()
{
  result = qword_100064F48;
  if (!qword_100064F48)
  {
    sub_100003698(&qword_100064888, &qword_10004DB10);
    sub_10000F918(&qword_100064808, type metadata accessor for AppIcon, &unk_10004DE3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F48);
  }

  return result;
}

uint64_t sub_10000F918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIcon(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F9C4()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10000FA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000FA8C()
{
  result = qword_100064F80;
  if (!qword_100064F80)
  {
    sub_100003698(&qword_100064F88, &unk_10004E228);
    sub_10000F1D4();
    sub_10000F3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064F80);
  }

  return result;
}

uint64_t sub_10000FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F90, qword_10004E280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F98, qword_10004E520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10000FC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F90, qword_10004E280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003650(&qword_100064F98, qword_10004E520);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PlaceholderTodayCardView(uint64_t a1)
{
  result = qword_100064FF8;
  if (!qword_100064FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FDF4(uint64_t a1)
{
  sub_10000FEC8(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
  if (v1 <= 0x3F)
  {
    sub_10000FEC8(319, &qword_100065010, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10000FF1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000FEC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10000FF1C()
{
  if (!qword_100065018)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065018);
    }
  }
}

uint64_t sub_10000FF88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100003E3C(v2, &v14 - v9, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004C270();
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

uint64_t sub_100010188@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlaceholderTodayCardView(0);
  sub_100003E3C(v1 + *(v10 + 20), v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
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

uint64_t sub_100010390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v105 = sub_10004C020();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v95);
  v96 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for CardDetailView(0);
  __chkstk_darwin(v102);
  v6 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_100003650(&qword_100065058, &qword_10004E328);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v87 - v7;
  v114 = sub_100003650(&qword_100065060, &qword_10004E330);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v98 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v87 - v10;
  v107 = sub_10004C270();
  v118 = *(v107 - 8);
  __chkstk_darwin(v107);
  v117 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v116 = &v87 - v13;
  v91 = sub_10004CB70();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v88 = &v87 - v16;
  v17 = sub_100003650(&qword_100065068, &qword_10004E338);
  __chkstk_darwin(v17 - 8);
  v112 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v111 = &v87 - v20;
  v21 = type metadata accessor for TitleView(0);
  __chkstk_darwin(v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_100003650(&qword_100065070, &qword_10004E340);
  __chkstk_darwin(v106);
  v110 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v87 - v26;
  __chkstk_darwin(v28);
  v109 = &v87 - v29;
  v30 = *(a1 + *(type metadata accessor for PlaceholderTodayCardView(0) + 24) + 8);
  v108 = a1;
  if (v30)
  {
  }

  else
  {
    sub_10004C210();
  }

  v31 = sub_10004C500();
  v33 = v32;
  v35 = v34;
  v37 = v36 & 1;
  *v23 = swift_getKeyPath();
  v94 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(v23 + v21[5]) = swift_getKeyPath();
  v93 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v23 + v21[6]) = swift_getKeyPath();
  v92 = sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v38 = (v23 + v21[7]);
  *v38 = v31;
  v38[1] = v33;
  v38[2] = v37;
  v38[3] = v35;
  *(v23 + v21[8]) = 1;
  sub_100011AD4(v23, v27, type metadata accessor for TitleView);
  *&v27[*(v106 + 36)] = 0x3FF0000000000000;
  v39 = v109;
  sub_10001122C(v27, v109);
  sub_10004C720();
  sub_10004C040();
  *&v119[55] = v124;
  *&v119[71] = v125;
  *&v119[87] = v126;
  *&v119[103] = v127;
  *&v119[7] = v121;
  *&v119[23] = v122;
  v120 = 1;
  *&v119[39] = v123;
  v40 = v107;
  if (v30 && (v41 = v39, v42 = v88, sub_100010188(v88), v43 = v90, v44 = v89, v45 = v91, (*(v90 + 104))(v89, enum case for WidgetFamily.systemSmall(_:), v91), sub_100011D48(&qword_100065098, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily), v46 = sub_10004CD00(), v47 = *(v43 + 8), v47(v44, v45), v48 = v42, v39 = v41, v47(v48, v45), (v46 & 1) != 0) && (v49 = v116, sub_10000FF88(v116), v50 = v118, v51 = v117, (*(v118 + 104))(v117, enum case for ContentSizeCategory.large(_:), v40), v52 = sub_10001129C(v49, v51), v53 = *(v50 + 8), v53(v51, v40), v53(v49, v40), !v52))
  {
    v77 = 1;
    v73 = v114;
    v76 = v111;
  }

  else
  {
    v54 = v96;
    *v96 = 0xD000000000000011;
    *(v54 + 8) = 0x800000010005A0E0;
    swift_storeEnumTagMultiPayload();
    v55 = v116;
    sub_10000FF88(v116);
    v56 = v118;
    v57 = v117;
    (*(v118 + 104))(v117, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v40);
    v58 = sub_1000116B4(v55, v57);
    v59 = *(v56 + 8);
    v59(v57, v40);
    v59(v55, v40);
    v60 = !v58;
    if (v58)
    {
      v61 = 0x656E696C20656E4FLL;
    }

    else
    {
      v61 = 0xD000000000000024;
    }

    if (v60)
    {
      v62 = 0x800000010005A100;
    }

    else
    {
      v62 = 0xEE00656C74697420;
    }

    *v6 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v64 = v102;
    *(v6 + *(v102 + 20)) = KeyPath;
    swift_storeEnumTagMultiPayload();
    *(v6 + v64[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v65 = v64[7];
    *(v6 + v65) = swift_getKeyPath();
    sub_100003650(&qword_100064960, &qword_10004DC30);
    swift_storeEnumTagMultiPayload();
    sub_100011AD4(v54, v6 + v64[8], type metadata accessor for CardDetailView.Heading);
    v66 = v6 + v64[9];
    *v66 = sub_100021D20;
    *(v66 + 1) = 0;
    v66[16] = 0;
    v67 = (v6 + v64[10]);
    *v67 = v61;
    v67[1] = v62;
    v68 = v6 + v64[11];
    *v68 = sub_100021D20;
    *(v68 + 1) = 0;
    v68[16] = 0;
    *(v6 + v64[12]) = 0x8000000000000000;
    *(v6 + v64[13]) = 0x7FF0000000000000;
    v69 = (v6 + v64[14]);
    *v69 = xmmword_10004E260;
    v69[1] = xmmword_10004E270;
    v70 = v103;
    sub_10004C010();
    sub_100011D48(&qword_100065088, type metadata accessor for CardDetailView, &unk_1000502D0);
    v71 = v99;
    sub_10004C5A0();
    (*(v104 + 8))(v70, v105);
    sub_100011B3C(v6);
    v72 = v98;
    (*(v100 + 32))(v98, v71, v101);
    v73 = v114;
    *&v72[*(v114 + 36)] = 0x4000000000000000;
    v74 = v72;
    v75 = v97;
    sub_100011B98(v74, v97);
    v76 = v111;
    sub_100011B98(v75, v111);
    v77 = 0;
  }

  (*(v113 + 56))(v76, v77, 1, v73);
  v78 = v110;
  sub_100003E3C(v39, v110, &qword_100065070, &qword_10004E340);
  v79 = v112;
  sub_100011C08(v76, v112);
  v80 = v115;
  sub_100003E3C(v78, v115, &qword_100065070, &qword_10004E340);
  v81 = sub_100003650(&qword_100065090, &qword_10004E428);
  v82 = v80 + *(v81 + 48);
  v83 = *&v119[80];
  *(v82 + 73) = *&v119[64];
  *(v82 + 89) = v83;
  *(v82 + 105) = *&v119[96];
  v84 = *&v119[16];
  *(v82 + 9) = *v119;
  *(v82 + 25) = v84;
  v85 = *&v119[48];
  *(v82 + 41) = *&v119[32];
  *v82 = 0;
  *(v82 + 8) = 1;
  *(v82 + 120) = *&v119[111];
  *(v82 + 57) = v85;
  sub_100011C08(v79, v80 + *(v81 + 64));
  sub_100011C78(v76);
  sub_100011CE0(v39);
  sub_100011C78(v79);
  return sub_100011CE0(v78);
}

uint64_t sub_1000111C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004C290();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100003650(&qword_100065050, &qword_10004E320);
  return sub_100010390(v1, a1 + *(v3 + 44));
}

uint64_t sub_10001122C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065070, &qword_10004E340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_10001129C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_10004C270();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

BOOL sub_1000116B4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_10004C270();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_100011AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011B3C(uint64_t a1)
{
  v2 = type metadata accessor for CardDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065060, &qword_10004E330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065068, &qword_10004E338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011C78(uint64_t a1)
{
  v2 = sub_100003650(&qword_100065068, &qword_10004E338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011CE0(uint64_t a1)
{
  v2 = sub_100003650(&qword_100065070, &qword_10004E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100011D94()
{
  result = qword_1000650A0;
  if (!qword_1000650A0)
  {
    sub_100003698(&qword_1000650A8, &unk_10004E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650A0);
  }

  return result;
}

void *sub_100011DF8(uint64_t a1, char a2)
{
  if (a2)
  {
    v11[3] = sub_10004BD00();
    v11[4] = sub_1000121C4();
    sub_100007BCC(v11);

    sub_10004BCF0();
    sub_10001221C(v11, v8);
    sub_100012280(v8, v9);
    if (sub_10004BC60())
    {
      sub_1000122C4(v8, v7);
      v2 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100026A7C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        v2 = v10;
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        sub_100026A7C((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      v2[2] = v5 + 1;
      sub_1000122C4(v7, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_100007B80(v8);
      v2 = _swiftEmptyArrayStorage;
    }

    sub_100007B80(v11);
    return v2;
  }

  else
  {
    result = sub_10004CF80();
    __break(1u);
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  sub_10004D060();
  sub_10004D070(a1);
  return sub_10004D0A0();
}

unint64_t sub_100012020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000650B0;
  if (!qword_1000650B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000121C4()
{
  result = qword_1000650B8;
  if (!qword_1000650B8)
  {
    sub_10004BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000650B8);
  }

  return result;
}

uint64_t sub_10001221C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100012280(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000122C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000122DC()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  sub_10004CE80(0.10773, 0.78429, 0.98851, 1.0);
  *(v0 + 32) = sub_10004C5B0();
  sub_10004CE80(0.11167, 0.44028, 0.94921, 1.0);
  *(v0 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  qword_100068DC8 = result;
  return result;
}

uint64_t sub_1000123B8()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  sub_10004CE80(0.10196, 0.76078, 0.96078, 1.0);
  *(v0 + 32) = sub_10004C5B0();
  sub_10004CE80(0.1098, 0.40784, 0.88627, 1.0);
  *(v0 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  qword_100068DD8 = result;
  return result;
}

uint64_t sub_100012494(uint64_t a1, uint64_t *a2)
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10004E4F0;
  sub_1000129C0();
  isa = sub_10004CE80(1.0, 1.0, 1.0, 1.0).super.isa;
  v5 = [(objc_class *)isa colorWithAlphaComponent:0.2];

  *(v3 + 32) = sub_10004C5B0();
  v6 = sub_10004CE80(1.0, 1.0, 1.0, 1.0).super.isa;
  v7 = [(objc_class *)v6 colorWithAlphaComponent:0.0];

  *(v3 + 40) = sub_10004C5B0();
  result = sub_10004C6D0();
  *a2 = result;
  return result;
}

uint64_t sub_100012594()
{
  sub_100003650(&qword_1000650C0, &qword_10004E508);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E4F0;
  sub_10004C5C0();
  v1 = sub_10004C5F0();

  *(v0 + 32) = v1;
  sub_10004C5C0();
  v2 = sub_10004C5F0();

  *(v0 + 40) = v2;
  result = sub_10004C6D0();
  qword_100068DE8 = result;
  return result;
}

double sub_10001263C()
{
  if (qword_1000646B0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068DF0 = v1;
  unk_100068E00 = v2;
  qword_100068E10 = v3;
  return result;
}

double sub_1000126F0()
{
  if (qword_1000646B8 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E18 = v1;
  *algn_100068E28 = v2;
  qword_100068E38 = v3;
  return result;
}

double sub_1000127A4()
{
  if (qword_1000646C0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E40 = v1;
  unk_100068E50 = v2;
  qword_100068E60 = v3;
  return result;
}

double sub_100012858()
{
  if (qword_1000646C8 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E68 = v1;
  *algn_100068E78 = v2;
  qword_100068E88 = v3;
  return result;
}

double sub_10001290C()
{
  if (qword_1000646D0 != -1)
  {
    swift_once();
  }

  sub_10004C780();
  sub_10004C7A0();
  sub_10004BFD0();
  result = *&v1;
  xmmword_100068E90 = v1;
  unk_100068EA0 = v2;
  qword_100068EB0 = v3;
  return result;
}

unint64_t sub_1000129C0()
{
  result = qword_100064DC8;
  if (!qword_100064DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100064DC8);
  }

  return result;
}

uint64_t sub_100012A20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100012BBC(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      result = sub_100003650(&qword_1000648A8, qword_10004DB30);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TitleView(uint64_t a1)
{
  result = qword_100065120;
  if (!qword_100065120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012D80(uint64_t a1)
{
  sub_100012E90(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100012E90(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      sub_100012E90(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_100012EE4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100012EE4()
{
  if (!qword_100065130)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065130);
    }
  }
}

unint64_t sub_100012F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100065170;
  if (!qword_100065170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065170);
  }

  return result;
}

uint64_t sub_100012F9C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10001319C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TitleView(0);
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

uint64_t sub_1000133A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100064958, &qword_10004FA30);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TitleView(0);
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

uint64_t sub_1000135AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v120) = a7;
  KeyPath = a6;
  v114 = a5;
  v111 = a3;
  v118 = a1;
  v119 = a2;
  v123 = a8;
  v9 = sub_10004CB70();
  v117 = *(v9 - 8);
  __chkstk_darwin(v9);
  v113 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100003650(&qword_100065220, &qword_10004E700);
  __chkstk_darwin(v103);
  v12 = &v95 - v11;
  v105 = sub_100003650(&qword_100065228, &qword_10004E708);
  __chkstk_darwin(v105);
  v107 = &v95 - v13;
  v106 = sub_100003650(&qword_100065230, &qword_10004E710);
  __chkstk_darwin(v106);
  v104 = &v95 - v14;
  v15 = sub_100003650(&qword_100065238, &qword_10004E718);
  __chkstk_darwin(v15 - 8);
  v108 = &v95 - v16;
  v121 = sub_100003650(&qword_100065240, &qword_10004E720);
  __chkstk_darwin(v121);
  v109 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v95 - v19;
  v20 = sub_100003650(&qword_100065248, &qword_10004E728);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v116 = type metadata accessor for DynamicTypeFont(0);
  __chkstk_darwin(v116);
  v24 = (&v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v25 - 8);
  v115 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v112 = &v95 - v28;
  v101 = sub_100003650(&qword_100065258, &qword_100050430);
  __chkstk_darwin(v101);
  v30 = &v95 - v29;
  v102 = sub_100003650(&qword_100065260, &qword_10004E740);
  __chkstk_darwin(v102);
  v32 = &v95 - v31;
  v122 = sub_100003650(&qword_100065268, &qword_10004E748);
  __chkstk_darwin(v122);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v38 = &v95 - v37;
  if (v120)
  {
    if (a4)
    {
      v39 = a4;
      v100 = v20;
      v120 = v22;
      v40 = enum case for WidgetFamily.systemSmall(_:);
      v41 = v117;
      v42 = v113;
      v96 = *(v117 + 104);
      (v96)(v113, enum case for WidgetFamily.systemSmall(_:), v9, v36);
      LODWORD(v111) = v111 & 1;
      sub_100015B80(v118, v119, v111);
      sub_100015B90(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v102 = v39;

      sub_10004CD40();
      sub_10004CD40();
      v43 = *(v41 + 8);
      v117 = v41 + 8;
      v43(v42, v9);
      if (v125 == v124)
      {
        v44 = sub_10004C260();
        v45 = 4;
        if (v44)
        {
          v45 = 5;
        }
      }

      else
      {
        v45 = 3;
      }

      v101 = v45;
      KeyPath = swift_getKeyPath();
      v98 = swift_getKeyPath();
      v127 = v111;
      v126 = 0;
      v97 = swift_getKeyPath();
      v68 = v113;
      v96(v113, v40, v9);
      sub_10004CD40();
      sub_10004CD40();
      v43(v68, v9);
      if (v125 == v124)
      {
        v69 = sub_10004C490();
      }

      else
      {
        v69 = sub_10004C3D0();
      }

      v70 = v69;
      v71 = enum case for ContentSizeCategory.accessibilityMedium(_:);
      v72 = sub_10004C270();
      v73 = *(v72 - 8);
      v74 = v112;
      (*(v73 + 104))(v112, v71, v72);
      v75 = *(v73 + 56);
      v75(v74, 0, 1, v72);
      v76 = v115;
      sub_100007C30(v74, v115, &qword_100065250, &unk_10004E730);
      *v24 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      v77 = v116;
      v78 = *(v116 + 20);
      *(v24 + v78) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      v79 = *(v77 + 28);
      v75(v24 + v79, 1, 1, v72);
      *(v24 + *(v77 + 24)) = v70;
      sub_100015C48(v76, v24 + v79);
      sub_100015CB8(v24, &v12[*(v103 + 36)]);
      v80 = v119;
      *v12 = v118;
      *(v12 + 1) = v80;
      v12[16] = v111;
      v81 = KeyPath;
      *(v12 + 3) = v102;
      *(v12 + 4) = v81;
      *(v12 + 5) = v101;
      v12[48] = 0;
      *(v12 + 7) = v98;
      v12[64] = 0;
      *(v12 + 9) = v97;
      *(v12 + 10) = 0x3FECCCCCCCCCCCCDLL;
      sub_100015D1C(v24);
      v82 = v107;
      sub_100007C30(v12, v107, &qword_100065220, &qword_10004E700);
      *(v82 + *(v105 + 36)) = 256;
      v83 = sub_10004C610();
      v84 = swift_getKeyPath();
      v85 = v82;
      v86 = v104;
      sub_100007C30(v85, v104, &qword_100065228, &qword_10004E708);
      v87 = (v86 + *(v106 + 36));
      *v87 = v84;
      v87[1] = v83;
      v88 = v108;
      sub_100007C30(v86, v108, &qword_100065230, &qword_10004E710);
      v89 = sub_100003650(&qword_100065270, &qword_10004E750);
      v90 = *(v89 + 36);
      v91 = enum case for BlendMode.plusLighter(_:);
      v92 = sub_10004C740();
      v93 = &v109[v90];
      v65 = v109;
      (*(*(v92 - 8) + 104))(v93, v91, v92);
      sub_100007C30(v88, v65, &qword_100065238, &qword_10004E718);
      (*(*(v89 - 8) + 56))(v65, 0, 1, v89);
      v22 = v120;
    }

    else
    {
      v64 = sub_100003650(&qword_100065270, &qword_10004E750);
      v65 = v109;
      (*(*(v64 - 8) + 56))(v109, 1, 1, v64);
    }

    v94 = v110;
    sub_100007C30(v65, v110, &qword_100065240, &qword_10004E720);
    sub_100003E3C(v94, v22, &qword_100065240, &qword_10004E720);
    swift_storeEnumTagMultiPayload();
    sub_1000153E8();
    sub_100015598();
    sub_10004C320();
    return sub_100003EA4(v94, &qword_100065240, &qword_10004E720);
  }

  else
  {
    if (a4)
    {
      sub_10004C420();
      LOBYTE(v125) = v111 & 1;
      v46 = sub_10004C4C0();
      v117 = v47;
      v118 = v46;
      LODWORD(v114) = v48;
      v119 = v49;
      v113 = sub_10004C450();
      v50 = enum case for ContentSizeCategory.accessibilityMedium(_:);
      v51 = sub_10004C270();
      v52 = *(v51 - 8);
      v100 = v20;
      v53 = v52;
      v54 = v112;
      (*(v52 + 104))(v112, v50, v51);
      v111 = *(v53 + 56);
      v111(v54, 0, 1, v51);
      v55 = v115;
      sub_100007C30(v54, v115, &qword_100065250, &unk_10004E730);
      *v24 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      v120 = v22;
      v56 = v116;
      v57 = *(v116 + 20);
      *(v24 + v57) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      v58 = *(v56 + 28);
      v111(v24 + v58, 1, 1, v51);
      *(v24 + *(v56 + 24)) = v113;
      v22 = v120;
      sub_100015C48(v55, v24 + v58);
      sub_100015CB8(v24, &v30[*(v101 + 36)]);
      v59 = v117;
      *v30 = v118;
      *(v30 + 1) = v59;
      v30[16] = v114 & 1;
      *(v30 + 3) = v119;
      sub_100015D1C(v24);
      v60 = sub_10004C600();
      v61 = swift_getKeyPath();
      sub_100007C30(v30, v32, &qword_100065258, &qword_100050430);
      v62 = &v32[*(v102 + 36)];
      *v62 = v61;
      v62[1] = v60;
      sub_100015760(&qword_100065280, &qword_100065260, &qword_10004E740, sub_1000154DC);
      sub_10004C550();
      sub_100003EA4(v32, &qword_100065260, &qword_10004E740);
      v63 = sub_100003650(&qword_100065330, &qword_10004E888);
      (*(*(v63 - 8) + 56))(v34, 0, 1, v63);
    }

    else
    {
      v66 = sub_100003650(&qword_100065330, &qword_10004E888);
      (*(*(v66 - 8) + 56))(v34, 1, 1, v66);
    }

    sub_100007C30(v34, v38, &qword_100065268, &qword_10004E748);
    sub_100003E3C(v38, v22, &qword_100065268, &qword_10004E748);
    swift_storeEnumTagMultiPayload();
    sub_1000153E8();
    sub_100015598();
    sub_10004C320();
    return sub_100003EA4(v38, &qword_100065268, &qword_10004E748);
  }
}

uint64_t sub_100014490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_100003650(&qword_100065180, &qword_10004E620);
  __chkstk_darwin(v3 - 8);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = (&v42 - v6);
  v7 = sub_10004C270();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CB70();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003650(&qword_100065188, &qword_10004E628);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for TitleView(0);
  v20 = *(v19 + 28);
  v21 = *(a1 + *(v19 + 32));
  v22 = *(a1 + v20);
  v23 = *(a1 + v20 + 8);
  v25 = *(a1 + v20 + 16);
  v24 = *(a1 + v20 + 24);
  sub_100012F9C(v12);
  sub_10001319C(v9);
  sub_1000135AC(v22, v23, v25, v24, v12, v9, v21, v18);
  (*(v45 + 8))(v9, v46);
  (*(v42 + 8))(v12, v43);
  v26 = sub_10004C3A0();
  v27 = &v18[*(v14 + 44)];
  *v27 = v26;
  __asm { FMOV            V0.2D, #16.0 }

  *(v27 + 8) = _Q0;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  v27[40] = 0;
  v33 = sub_10004C2A0();
  v34 = v47;
  *v47 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  v35 = sub_100003650(&qword_100065190, &qword_10004E630);
  sub_100014870(a1, v34 + *(v35 + 44));
  v36 = v44;
  sub_100003E3C(v18, v44, &qword_100065188, &qword_10004E628);
  v37 = v48;
  sub_100003E3C(v34, v48, &qword_100065180, &qword_10004E620);
  v38 = v49;
  sub_100003E3C(v36, v49, &qword_100065188, &qword_10004E628);
  v39 = sub_100003650(&qword_100065198, &qword_10004E638);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_100003E3C(v37, v38 + *(v39 + 64), &qword_100065180, &qword_10004E620);
  sub_100003EA4(v34, &qword_100065180, &qword_10004E620);
  sub_100003EA4(v18, &qword_100065188, &qword_10004E628);
  sub_100003EA4(v37, &qword_100065180, &qword_10004E620);
  return sub_100003EA4(v36, &qword_100065188, &qword_10004E628);
}

uint64_t sub_100014870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v68 = sub_10004BF00();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v48 - v5;
  v6 = sub_100003650(&qword_1000651A0, &qword_10004E640);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_100003650(&qword_1000651A8, &qword_10004E648);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v64 = sub_100003650(&qword_1000651B0, &qword_10004E650);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v48 - v12;
  v61 = sub_100003650(&qword_1000651B8, &qword_10004E658);
  __chkstk_darwin(v61);
  v57 = &v48 - v14;
  v60 = sub_100003650(&qword_1000651C0, &qword_10004E660);
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v48 - v15;
  v54 = sub_100003650(&qword_1000651C8, &qword_10004E668);
  __chkstk_darwin(v54);
  v66 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v53 = &v48 - v18;
  __chkstk_darwin(v19);
  v59 = &v48 - v20;
  sub_10004C720();
  sub_10004BF90();
  v52 = v74;
  v51 = v76;
  v50 = v78;
  v49 = v79;
  v82 = 1;
  v81 = v75;
  v80 = v77;
  sub_10004C650();
  v21 = enum case for Image.TemplateRenderingMode.template(_:);
  v22 = sub_10004C660();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v11, v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  v24 = sub_10004C640();

  sub_100003EA4(v11, &qword_1000651A8, &qword_10004E648);
  sub_10004C420();
  v25 = sub_10004C410();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = sub_10004C430();
  sub_100003EA4(v8, &qword_1000651A0, &qword_10004E640);
  KeyPath = swift_getKeyPath();
  v28 = sub_10004C600();
  v29 = swift_getKeyPath();
  v69 = v24;
  v70 = KeyPath;
  v71 = v26;
  v72 = v29;
  v73 = v28;
  sub_100003650(&qword_1000651D0, &qword_10004E6D0);
  sub_100015760(&qword_1000651D8, &qword_1000651D0, &qword_10004E6D0, sub_100015234);
  sub_10004C510();

  v30 = v58;
  sub_1000133A4(v58);
  v31 = v65;
  v32 = v63;
  v33 = v68;
  (*(v65 + 104))(v63, enum case for ColorScheme.dark(_:), v68);
  LOBYTE(v8) = sub_10004BEF0();
  v34 = *(v31 + 8);
  v34(v32, v33);
  v34(v30, v33);
  if (v8)
  {
    sub_10004C5C0();
    v35 = sub_10004C5F0();
  }

  else
  {
    v35 = sub_10004C5D0();
  }

  v36 = v57;
  (*(v62 + 32))(v57, v13, v64);
  v37 = v36 + *(v61 + 36);
  *v37 = v35;
  *(v37 + 8) = xmmword_10004E510;
  *(v37 + 24) = 0x3FF0000000000000;
  sub_1000152EC();
  v38 = v55;
  sub_10004C550();
  sub_100003EA4(v36, &qword_1000651B8, &qword_10004E658);
  v39 = sub_10004C2A0();
  v40 = v53;
  (*(v56 + 32))(v53, v38, v60);
  v41 = (v40 + *(v54 + 36));
  *v41 = v39;
  v41[1] = sub_1000150F8;
  v41[2] = 0;
  v42 = v59;
  sub_100007C30(v40, v59, &qword_1000651C8, &qword_10004E668);
  LOBYTE(v40) = v82;
  LOBYTE(v38) = v81;
  v43 = v80;
  v44 = v66;
  sub_100003E3C(v42, v66, &qword_1000651C8, &qword_10004E668);
  *a2 = 0;
  *(a2 + 8) = v40;
  *(a2 + 16) = v52;
  *(a2 + 24) = v38;
  *(a2 + 32) = v51;
  *(a2 + 40) = v43;
  v45 = v49;
  *(a2 + 48) = v50;
  *(a2 + 56) = v45;
  v46 = sub_100003650(&qword_100065218, &unk_10004E6F0);
  sub_100003E3C(v44, a2 + *(v46 + 48), &qword_1000651C8, &qword_10004E668);
  sub_100003EA4(v42, &qword_1000651C8, &qword_10004E668);
  return sub_100003EA4(v44, &qword_1000651C8, &qword_10004E668);
}

double sub_1000150F8(uint64_t a1)
{
  sub_10004C280();
  sub_10004BFF0();
  return v1 + 26.0;
}

uint64_t sub_100015128@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10004C1A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100003650(&qword_100065178, &qword_10004E618);
  return sub_100014490(v1, a1 + *(v3 + 44));
}

uint64_t sub_10001517C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C110();
  *a1 = result;
  return result;
}

uint64_t sub_1000151A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C110();
  *a1 = result;
  return result;
}

unint64_t sub_100015234()
{
  result = qword_1000651E0;
  if (!qword_1000651E0)
  {
    sub_100003698(&qword_1000651E8, &qword_10004E6D8);
    sub_100003D30(&qword_1000651F0, &qword_1000651F8, &qword_10004E6E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000651E0);
  }

  return result;
}

unint64_t sub_1000152EC()
{
  result = qword_100065210;
  if (!qword_100065210)
  {
    sub_100003698(&qword_1000651B8, &qword_10004E658);
    sub_100003698(&qword_1000651D0, &qword_10004E6D0);
    sub_100015760(&qword_1000651D8, &qword_1000651D0, &qword_10004E6D0, sub_100015234);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065210);
  }

  return result;
}

unint64_t sub_1000153E8()
{
  result = qword_100065278;
  if (!qword_100065278)
  {
    sub_100003698(&qword_100065268, &qword_10004E748);
    sub_100003698(&qword_100065260, &qword_10004E740);
    sub_100015760(&qword_100065280, &qword_100065260, &qword_10004E740, sub_1000154DC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065278);
  }

  return result;
}

unint64_t sub_1000154DC()
{
  result = qword_100065288;
  if (!qword_100065288)
  {
    sub_100003698(&qword_100065258, &qword_100050430);
    sub_100015B90(&qword_100065290, type metadata accessor for DynamicTypeFont, &unk_10004F50C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065288);
  }

  return result;
}

unint64_t sub_100015598()
{
  result = qword_100065298;
  if (!qword_100065298)
  {
    sub_100003698(&qword_100065240, &qword_10004E720);
    sub_10001561C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065298);
  }

  return result;
}

unint64_t sub_10001561C()
{
  result = qword_1000652A0;
  if (!qword_1000652A0)
  {
    sub_100003698(&qword_100065270, &qword_10004E750);
    sub_1000156A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652A0);
  }

  return result;
}

unint64_t sub_1000156A8()
{
  result = qword_1000652A8;
  if (!qword_1000652A8)
  {
    sub_100003698(&qword_100065238, &qword_10004E718);
    sub_100015760(&qword_1000652B0, &qword_100065230, &qword_10004E710, sub_100015810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652A8);
  }

  return result;
}

uint64_t sub_100015760(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    sub_100003D30(&qword_100065200, &qword_100065208, &qword_10004E6E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015810()
{
  result = qword_1000652B8;
  if (!qword_1000652B8)
  {
    sub_100003698(&qword_100065228, &qword_10004E708);
    sub_10001589C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652B8);
  }

  return result;
}

unint64_t sub_10001589C()
{
  result = qword_1000652C0;
  if (!qword_1000652C0)
  {
    sub_100003698(&qword_100065220, &qword_10004E700);
    sub_100015958();
    sub_100015B90(&qword_100065290, type metadata accessor for DynamicTypeFont, &unk_10004F50C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652C0);
  }

  return result;
}

unint64_t sub_100015958()
{
  result = qword_1000652C8;
  if (!qword_1000652C8)
  {
    sub_100003698(&qword_1000652D0, &qword_10004E758);
    sub_100015A10();
    sub_100003D30(&qword_100065318, &qword_100065320, &qword_10004E780, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652C8);
  }

  return result;
}

unint64_t sub_100015A10()
{
  result = qword_1000652D8;
  if (!qword_1000652D8)
  {
    sub_100003698(&qword_1000652E0, &qword_10004E760);
    sub_100015AC8();
    sub_100003D30(&qword_100065308, &qword_100065310, &qword_10004E778, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652D8);
  }

  return result;
}

unint64_t sub_100015AC8()
{
  result = qword_1000652E8;
  if (!qword_1000652E8)
  {
    sub_100003698(&qword_1000652F0, &qword_10004E768);
    sub_100003D30(&qword_1000652F8, &qword_100065300, &qword_10004E770, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000652E8);
  }

  return result;
}

void sub_100015B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100015B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065250, &unk_10004E730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeFont(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D1C(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeFont(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100015F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = sub_100003650(&qword_100064F90, qword_10004E280);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TodayWidgetFallbackEntryView(uint64_t a1)
{
  result = qword_1000653A0;
  if (!qword_1000653A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001607C(uint64_t a1)
{
  sub_100016140(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100016140(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100016140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1000161B0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000163B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for PlaceholderTodayCardView(0);
  __chkstk_darwin(v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100003650(&qword_100065458, &qword_10004E9D8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v28 = sub_100003650(&qword_100065428, &qword_10004E988);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = sub_10004CB70();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161B0(v14);
  if ((*(v12 + 88))(v14, v11) == enum case for WidgetFamily.systemLarge(_:))
  {
    *v10 = sub_10004C280();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v15 = sub_100003650(&qword_100065460, &qword_10004EA48);
    sub_100016828(a1, &v10[*(v15 + 44)]);
    sub_100003E3C(v10, v8, &qword_100065428, &qword_10004E988);
    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988, &protocol conformance descriptor for VStack<A>);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);
    sub_10004C320();
    return sub_100003EA4(v10, &qword_100065428, &qword_10004E988);
  }

  else
  {
    v17 = (a1 + *(type metadata accessor for TodayWidgetFallbackEntryView(0) + 24));
    v18 = *v17;
    v25 = v17[1];
    v19 = v25;
    v20 = v3;
    v26 = *(v17 + 16);
    v27 = v18;
    v21 = v17[3];
    *v5 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    *(v5 + *(v20 + 20)) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v22 = (v5 + *(v20 + 24));
    v23 = v26;
    *v22 = v27;
    v22[1] = v19;
    v22[2] = v23;
    v22[3] = v21;
    sub_1000173C4(v5, v8, type metadata accessor for PlaceholderTodayCardView);
    swift_storeEnumTagMultiPayload();
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988, &protocol conformance descriptor for VStack<A>);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);

    sub_10004C320();
    sub_10001742C(v5, type metadata accessor for PlaceholderTodayCardView);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100016828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for PlaceholderTodayCardView(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v26 - v8);
  v10 = (a1 + *(type metadata accessor for TodayWidgetFallbackEntryView(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  *v9 = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v4 + 28)) = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v15 = (v9 + *(v4 + 32));
  *v15 = v12;
  v15[1] = v11;
  v15[2] = v13;
  v15[3] = v14;
  sub_100003650(&qword_100065468, &qword_10004EA50);
  v16 = *(type metadata accessor for TodayCardListViewItem(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10004E4F0;
  v20 = v19 + v18;
  v21 = type metadata accessor for WidgetTodayCard(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v22(v20 + v17, 1, 1, v21);
  sub_1000173C4(v9, v6, type metadata accessor for PlaceholderTodayCardView);
  v23 = v27;
  sub_1000173C4(v6, v27, type metadata accessor for PlaceholderTodayCardView);
  v24 = (v23 + *(sub_100003650(&qword_100065470, &qword_10004EA58) + 48));
  *v24 = 0x4030000000000000;
  v24[1] = v19;
  v24[2] = 0x4024000000000000;

  sub_10001742C(v9, type metadata accessor for PlaceholderTodayCardView);

  return sub_10001742C(v6, type metadata accessor for PlaceholderTodayCardView);
}

uint64_t sub_100016B00()
{
  v0 = sub_100003650(&qword_100065450, &qword_10004E990);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = type metadata accessor for PlatterView(0);
  __chkstk_darwin(v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10004CB70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161B0(v9);
  v10 = (*(v7 + 88))(v9, v6);
  v11 = enum case for WidgetFamily.systemLarge(_:);
  *v5 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v12 = *(v3 + 20);
  if (v10 == v11)
  {
    *(v5 + v12) = 1;
    sub_1000173C4(v5, v2, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    sub_10004C320();
    return sub_10001742C(v5, type metadata accessor for PlatterView);
  }

  else
  {
    *(v5 + v12) = 0;
    sub_1000173C4(v5, v2, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    sub_10004C320();
    sub_10001742C(v5, type metadata accessor for PlatterView);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100016E18()
{
  v1 = sub_10004C380();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100003650(&qword_1000653E0, &unk_10004E930);
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  sub_1000163B0(v0, &v13[-v6]);
  v8 = &v7[*(v5 + 36)];
  v9 = *(sub_100003650(&qword_1000653E8, &qword_10004F9C0) + 28);
  v10 = enum case for ColorScheme.dark(_:);
  v11 = sub_10004BF00();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  sub_10004C370();
  v14 = v0;
  sub_10004C720();
  sub_100003650(&qword_1000653F0, &qword_10004E970);
  sub_100017090();
  sub_1000172B4();
  sub_10004C580();
  (*(v2 + 8))(v4, v1);
  return sub_100003EA4(v7, &qword_1000653E0, &unk_10004E930);
}

unint64_t sub_100017090()
{
  result = qword_1000653F8;
  if (!qword_1000653F8)
  {
    sub_100003698(&qword_1000653E0, &unk_10004E930);
    sub_100017148();
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000653F8);
  }

  return result;
}

unint64_t sub_100017148()
{
  result = qword_100065400;
  if (!qword_100065400)
  {
    sub_100003698(&qword_100065408, &qword_10004E978);
    sub_1000171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065400);
  }

  return result;
}

unint64_t sub_1000171CC()
{
  result = qword_100065410;
  if (!qword_100065410)
  {
    sub_100003698(&qword_100065418, &qword_10004E980);
    sub_100003D30(&qword_100065420, &qword_100065428, &qword_10004E988, &protocol conformance descriptor for VStack<A>);
    sub_100017368(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065410);
  }

  return result;
}

unint64_t sub_1000172B4()
{
  result = qword_100065440;
  if (!qword_100065440)
  {
    sub_100003698(&qword_1000653F0, &qword_10004E970);
    sub_100017368(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065440);
  }

  return result;
}

uint64_t sub_100017368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000173C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001742C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001748C()
{
  sub_100003698(&qword_1000653E0, &unk_10004E930);
  sub_100003698(&qword_1000653F0, &qword_10004E970);
  sub_100017090();
  sub_1000172B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001751C()
{
  v1 = v0;
  sub_100003650(&qword_100065548, &unk_10004EAD0);
  *(v0 + 16) = sub_10004CA90();
  *(v0 + 24) = 0;
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  setenv("JavaScriptCoreUseJIT", "0", 1);
  v2 = objc_opt_self();
  v3 = [v2 sharedURLCache];
  [v3 setDiskCapacity:40485760];

  v4 = [v2 sharedURLCache];
  [v4 setMemoryCapacity:0];

  return v1;
}

uint64_t sub_100017608(uint64_t a1)
{
  v32 = a1;
  v1 = sub_10004BC20();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003650(&qword_100065520, "VX");
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10004C9B0();
  __chkstk_darwin(v7 - 8);
  v29 = sub_10004BC50();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004BB40();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v28);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10004BB30();
  sub_10004C9A0();
  v17 = sub_10004BC80();
  v18 = (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v34 = &type metadata for EmptyAppStateControllerFactory;
  v35 = sub_100018084(v18, v19, v20);
  (*(v30 + 104))(v3, enum case for ASKBootstrapV2.TargetType.todayWidget(_:), v31);
  sub_10004BC30();
  sub_10004BC40();
  (*(v8 + 8))(v10, v29);
  v21 = v28;
  (*(v11 + 16))(v13, v16, v28);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v13, v21);
  *(v24 + v23) = v32;
  v25 = sub_100007874();
  swift_retain_n();
  v26 = sub_10004CE20();
  v34 = v25;
  v35 = &protocol witness table for OS_dispatch_queue;
  v33[0] = v26;
  sub_10004CA30();

  (*(v11 + 8))(v16, v21);
  return sub_100007B80(v33);
}

void sub_100017A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v3 = sub_10004BB40();
  v12 = *(v3 - 8);
  v13 = v3;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BB30();
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v6 = sub_10004CAD0();
  sub_100004D74(v6, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004EA60;
  sub_10004C850();
  sub_10004BB00();
  v15[3] = &type metadata for Double;
  v15[0] = v7;
  sub_10004C8C0();
  sub_100018218(v15);
  sub_10004C850();
  sub_10004C9D0();

  sub_10004C900();

  sub_10004C910();
  sub_100003650(&qword_100065530, &qword_10004EAC0);
  sub_10004C840();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10004DC70;
  v15[0] = [objc_allocWithZone(type metadata accessor for WidgetArtworkLoader()) init];
  sub_10004C830();
  v15[0] = v8;
  sub_100003650(&qword_100065538, &qword_10004EAC8);
  sub_100018280();
  v9 = sub_10004C8F0();

  sub_10004C8E0();
  v10 = v14;
  v15[0] = v9;

  sub_10004CA80();

  (*(v12 + 8))(v5, v13);

  *(v10 + 24) = 0;
}

void sub_100017E3C(uint64_t a1, uint64_t a2)
{
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v3 = sub_10004CAD0();
  sub_100004D74(v3, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004E4F0;
  sub_10004C850();
  swift_getErrorValue();
  v6[3] = v5;
  v4 = sub_100007BCC(v6);
  (*(*(v5 - 8) + 16))(v4);
  sub_10004C8C0();
  sub_100018218(v6);
  sub_10004C9E0();

  sub_10004CA60();

  *(a2 + 24) = 0;
}

uint64_t sub_100018028()
{

  return _swift_deallocClassInstance(v0, 25, 7, v1);
}

unint64_t sub_100018084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100065528;
  if (!qword_100065528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065528);
  }

  return result;
}

uint64_t sub_1000180D8()
{
  v1 = sub_10004BB40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100018174(uint64_t *a1)
{
  v3 = *(sub_10004BB40() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100017A64(a1, v1 + v4, v5);
}

uint64_t sub_100018218(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064A10, &qword_10004FB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100018280()
{
  result = qword_100065540;
  if (!qword_100065540)
  {
    sub_100003698(&qword_100065538, &qword_10004EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065540);
  }

  return result;
}

uint64_t sub_1000182F4()
{
  v2 = 0u;
  v3 = 0;
  v6[3] = sub_10004C7D0();
  v6[4] = &protocol witness table for ASDDeviceAppFetcher;
  sub_100007BCC(v6);
  sub_10004C7C0();
  v4 = sub_10004BCE0();
  v5 = sub_1000183A4();
  sub_100007BCC(&v2);
  sub_10004BCD0();
  v0 = sub_10004BB80();
  sub_100007B80(&v2);
  sub_100007B80(v6);
  return v0;
}

unint64_t sub_1000183A4()
{
  result = qword_100065550;
  if (!qword_100065550)
  {
    sub_10004BCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065550);
  }

  return result;
}

__n128 sub_100018408(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_100018464(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1000184F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB40();
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

uint64_t sub_1000185C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004BB40();
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

uint64_t type metadata accessor for TodayWidgetEntry(uint64_t a1)
{
  result = qword_1000655B0;
  if (!qword_1000655B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000186D8(uint64_t a1)
{
  result = sub_10004BB40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001874C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for WidgetTodayCard(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  result = type metadata accessor for TodayWidgetEntry(0);
  v13 = (v1 + *(result + 20));
  if ((v13[2] & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v26 = a1;
  v14 = *v13;
  v28 = *(*v13 + 16);
  if (!v28)
  {
LABEL_13:

    a1 = v26;
LABEL_14:
    sub_10004CC20();
    v24 = sub_10004CC30();
    return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v27 = v6;
  while (v15 < *(v14 + 16))
  {
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    sub_100018AD0(v14 + v17 + v18 * v15, v11);
    sub_100018B34(&v11[*(v6 + 48)], v5);
    v19 = sub_10004BB40();
    v20 = (*(*(v19 - 8) + 48))(v5, 1, v19);
    sub_100018BA4(v5);
    if (v20 == 1)
    {
      result = sub_100007DC4(v11);
    }

    else
    {
      sub_100018C0C(v11, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100026A9C(0, v16[2] + 1, 1);
        v16 = v30;
      }

      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_100026A9C((v22 > 1), v23 + 1, 1);
        v16 = v30;
      }

      v16[2] = v23 + 1;
      result = sub_100018C0C(v29, v16 + v17 + v23 * v18);
      v6 = v27;
    }

    if (v28 == ++v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018A64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100018AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BA4(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100018D6C(a1, a2, a3);

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v3, &type metadata for TodayWidget, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100018CEC(*&argc, argv, envp);
  sub_10004BF80();
  return 0;
}

unint64_t sub_100018CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000655F0;
  if (!qword_1000655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000655F0);
  }

  return result;
}

unint64_t sub_100018D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000655F8;
  if (!qword_1000655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000655F8);
  }

  return result;
}

uint64_t sub_100018E0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10004BEB0();

  return v1;
}

uint64_t sub_100018E80()
{
  v1 = OBJC_IVAR____TtCV24AppStoreWidgetsExtension22SingleLineTextObserver5State__isSingleLine;
  v2 = sub_100003650(&qword_1000656F0, &qword_10004ED88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5, v3);
}

uint64_t type metadata accessor for SingleLineTextObserver.State(uint64_t a1)
{
  result = qword_100065630;
  if (!qword_100065630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018F7C(uint64_t a1)
{
  sub_10001900C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001900C()
{
  if (!qword_100065640)
  {
    v0 = sub_10004BED0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065640);
    }
  }
}

uint64_t sub_100019068@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SingleLineTextObserver.State(0);
  result = sub_10004BE90();
  *a2 = result;
  return result;
}

uint64_t sub_1000190A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = sub_10004BFC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  KeyPath = swift_getKeyPath();
  v15 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  (*(*(v15 - 8) + 16))(a6, a2, v15);
  v16 = a6 + *(sub_100003650(&qword_100065700, &qword_10004EE18) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 1;
  *(v16 + 16) = 0;
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = v25;
  (*(v12 + 32))(&v18[v17], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v19 = sub_10004C720();
  v21 = v20;
  result = sub_100003650(&qword_100065710, &unk_10004EE28);
  v23 = (a6 + *(result + 36));
  *v23 = sub_100019BE0;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v21;
  return result;
}

double sub_1000192B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v9 = sub_10004BFC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v24 = sub_10004C5D0();
  v16 = *(v10 + 16);
  v16(v15, a5, v9);
  v16(v12, a1, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 2) = v25;
  *(v20 + 3) = v21;
  *(v20 + 4) = v27;
  v22 = *(v10 + 32);
  v22(&v20[v18], v15, v9);
  v22(&v20[v19], v12, v9);
  *a6 = v24;
  a6[1] = sub_100019D54;
  a6[2] = v20;
  a6[3] = 0;
  a6[4] = 0;

  return result;
}

uint64_t sub_10001947C(uint64_t a1, uint64_t a2)
{

  sub_10004BFA0();
  sub_10004BFA0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_10004BEC0();
}

uint64_t sub_100019534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = *v2;
  v26 = v2[1];
  v27 = v10;
  v11 = v2[2];
  KeyPath = swift_getKeyPath();
  v13 = *(v6 + 16);
  v25 = a2;
  v13(a2, a1, v5);
  v14 = a2 + *(sub_100003650(&qword_100065700, &qword_10004EE18) + 36);
  *v14 = KeyPath;
  *(v14 + 8) = v11;
  *(v14 + 16) = 0;
  v13(v9, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v9, v5);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v26;
  *v17 = v27;
  v17[1] = v18;
  v17[2] = v11;

  v19 = sub_10004C720();
  v21 = v20;
  result = sub_100003650(&qword_100065708, &qword_10004EE20);
  v23 = (v25 + *(result + 36));
  *v23 = sub_100019A5C;
  v23[1] = v16;
  v23[2] = v19;
  v23[3] = v21;
  return result;
}

void sub_100019724(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10004BEB0();

  *a2 = v3;
}

uint64_t sub_1000197A8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10004BEC0();
}

__n128 sub_100019820(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100019834(uint64_t a1, int a2)
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

uint64_t sub_10001987C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000198E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10001991C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000199B0()
{
  v1 = sub_100003650(&qword_1000656F8, &qword_10004EDE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_100019A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100003650(&qword_1000656F8, &qword_10004EDE0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_1000190A8(a1, v2 + v6, v8, v9, v10, a2);
}

uint64_t sub_100019B1C()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_100019BE0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10004BFC0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1000192B0(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_100019C68()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100019D54()
{
  sub_10004BFC0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_10001947C(v1, v2);
}

unint64_t sub_100019DEC()
{
  result = qword_100065718;
  if (!qword_100065718)
  {
    sub_100003698(&qword_100065708, &qword_10004EE20);
    sub_100019EA4();
    sub_100003D30(&qword_100065730, &qword_100065738, qword_10004EE38, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065718);
  }

  return result;
}

unint64_t sub_100019EA4()
{
  result = qword_100065720;
  if (!qword_100065720)
  {
    sub_100003698(&qword_100065700, &qword_10004EE18);
    sub_100003D30(&qword_100065728, &qword_1000656F8, &qword_10004EDE0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100003D30(&qword_1000652F8, &qword_100065300, &qword_10004E770, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065720);
  }

  return result;
}

uint64_t sub_100019FB4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v60 = type metadata accessor for TodayWidgetTimelineProvider(0);
  __chkstk_darwin(v60);
  v2 = &v56[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10004BBA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_100003650(&qword_1000647A8, &qword_10004D9B8);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v8 = &v56[-v7];
  v74 = sub_100003650(&qword_1000647A0, &qword_10004D9B0);
  *&v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v59 = &v56[-v9];
  v76 = sub_100003650(&qword_100064798, &qword_10004D9A8);
  v63 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v56[-v10];
  v11 = sub_100003650(&qword_100064790, &qword_10004D9A0);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  __chkstk_darwin(v11);
  v77 = &v56[-v13];
  v14 = sub_100003650(&qword_100064788, &qword_10004D998);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  __chkstk_darwin(v14);
  v64 = &v56[-v16];
  v17 = sub_100003650(&qword_100064780, &qword_10004D990);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  v19 = __chkstk_darwin(v17);
  v65 = &v56[-v20];
  v21 = enum case for WidgetKind.today(_:);
  v22 = *(v4 + 104);
  (v22)(v6, enum case for WidgetKind.today(_:), v3, v19);
  sub_10004BB90();
  (*(v4 + 8))(v6, v3);
  v22(v2, v21, v3);
  type metadata accessor for TodayWidgetEntryView(0);
  sub_10001AB98(&qword_100065740, type metadata accessor for TodayWidgetEntryView, &unk_100050838);
  sub_10001AB98(&qword_100065748, type metadata accessor for TodayWidgetTimelineProvider, &unk_10004F890);
  sub_10004CBE0();
  sub_10004C210();
  v23 = sub_10004C500();
  v25 = v24;
  LOBYTE(v4) = v26;
  v27 = sub_10001ABE0();
  v28 = v59;
  v29 = v61;
  sub_10004C300();
  sub_10001AC44(v23, v25, v4 & 1);

  (*(v62 + 8))(v8, v29);
  sub_10004C210();
  v30 = sub_10004C500();
  v32 = v31;
  LOBYTE(v8) = v33;
  v78 = v29;
  v79 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v74;
  sub_10004C2C0();
  sub_10001AC44(v30, v32, v8 & 1);

  (*(v73 + 8))(v28, v35);
  v62 = sub_100003650(&qword_100065750, &qword_10004EEA8);
  v36 = sub_10004CB70();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v61 = 3 * v38;
  v58 = 2 * v38;
  v40 = swift_allocObject();
  v73 = xmmword_10004EA60;
  *(v40 + 16) = xmmword_10004EA60;
  v41 = v40 + v39;
  LODWORD(v60) = enum case for WidgetFamily.systemSmall(_:);
  v42 = *(v37 + 104);
  v42(v40 + v39);
  LODWORD(v59) = enum case for WidgetFamily.systemMedium(_:);
  v42(v41 + v38);
  v57 = enum case for WidgetFamily.systemLarge(_:);
  v42(v41 + 2 * v38);
  v78 = v74;
  v79 = OpaqueTypeConformance2;
  v74 = swift_getOpaqueTypeConformance2();
  v43 = v76;
  v44 = v75;
  sub_10004C2D0();

  (*(v63 + 8))(v44, v43);
  sub_100003650(&qword_100065758, &qword_10004EEB0);
  sub_10004CBB0();
  *(swift_allocObject() + 16) = v73;
  sub_10004CB80();
  sub_10004CB90();
  sub_10004CBA0();
  v45 = swift_allocObject();
  *(v45 + 16) = v73;
  v46 = v45 + v39;
  (v42)(v45 + v39, v60, v36);
  (v42)(v46 + v38, v59, v36);
  (v42)(v46 + v58, v57, v36);
  v78 = v76;
  v79 = v74;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v64;
  v49 = v66;
  v50 = v77;
  sub_10004C2E0();

  (*(v67 + 8))(v50, v49);
  v78 = v49;
  v79 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v65;
  v53 = v68;
  sub_10004C310();
  (*(v69 + 8))(v48, v53);
  v78 = v53;
  v79 = v51;
  swift_getOpaqueTypeConformance2();
  v54 = v70;
  sub_10004C2F0();
  return (*(v71 + 8))(v52, v54);
}

uint64_t sub_10001AADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TodayWidgetEntry(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + *(type metadata accessor for TodayWidgetEntryView(0) + 20));
  *v8 = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;

  return sub_10001AC58(v4, v5, v6, v7);
}

uint64_t sub_10001AB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001ABE0()
{
  result = qword_1000647B0;
  if (!qword_1000647B0)
  {
    sub_100003698(&qword_1000647A8, &qword_10004D9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647B0);
  }

  return result;
}

void sub_10001AC44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_10001ACA8()
{
  sub_100003698(&qword_100064780, &qword_10004D990);
  sub_100003698(&qword_100064788, &qword_10004D998);
  sub_100003698(&qword_100064790, &qword_10004D9A0);
  sub_100003698(&qword_100064798, &qword_10004D9A8);
  sub_100003698(&qword_1000647A0, &qword_10004D9B0);
  sub_100003698(&qword_1000647A8, &qword_10004D9B8);
  sub_10001ABE0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001AE48(uint64_t *a1, int a2)
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

uint64_t sub_10001AE90(uint64_t result, int a2, int a3)
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

void *sub_10001AEFC(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = *(type metadata accessor for AppIcon(0) - 8);
    v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v4 = type metadata accessor for AppIconConfiguration(0);
    result = *&v3[*(v4 + 20)];
    if (result)
    {
      [result size];
      result = *&v3[*(v4 + 20)];
      if (result)
      {
        return [result size];
      }
    }
  }

  return result;
}

uint64_t sub_10001AFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v98 = a2;
  v88 = sub_100003650(&qword_100065760, &qword_10004EFC8);
  __chkstk_darwin(v88);
  v80 = v78 - v9;
  v86 = sub_100003650(&qword_100065768, &qword_10004EFD0);
  __chkstk_darwin(v86);
  v87 = v78 - v10;
  v97 = sub_100003650(&qword_100065770, &qword_10004EFD8);
  __chkstk_darwin(v97);
  v89 = v78 - v11;
  v83 = sub_10004C330();
  __chkstk_darwin(v83);
  v84 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C6E0();
  v81 = *(v13 - 8);
  v82 = v13;
  __chkstk_darwin(v13);
  v15 = (v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_100003650(&qword_100065778, &qword_10004EFE0);
  __chkstk_darwin(v85);
  v79 = v78 - v16;
  v17 = sub_100003650(&qword_100065780, &qword_10004EFE8);
  __chkstk_darwin(v17);
  v19 = v78 - v18;
  v94 = sub_100003650(&qword_100065788, &qword_10004EFF0);
  __chkstk_darwin(v94);
  v96 = v78 - v20;
  v90 = sub_100003650(&qword_100065790, &qword_10004EFF8);
  __chkstk_darwin(v90);
  v92 = v78 - v21;
  v22 = sub_100003650(&qword_100065798, &qword_10004F000);
  __chkstk_darwin(v22);
  v24 = v78 - v23;
  v91 = sub_100003650(&qword_1000657A0, &qword_10004F008);
  __chkstk_darwin(v91);
  v26 = v78 - v25;
  v95 = sub_100003650(&qword_1000657A8, &qword_10004F010);
  __chkstk_darwin(v95);
  *&v93 = v78 - v27;
  v28 = type metadata accessor for AppIcon(0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[2];
  if (v32 <= 1)
  {
    v78[1] = v22;
    v79 = v26;
    if (!v32)
    {
      v62 = type metadata accessor for AppIconConfiguration(0);
      sub_10004CB40();
      sub_10004BB60();
      *&v31[v62[5]] = 0;
      v63 = &v31[v62[6]];
      *v63 = 0;
      *(v63 + 1) = 0;
      v63[16] = 1;
      v31[v62[7]] = 0;
      v31[v62[8]] = 1;
      sub_10001F810(v31, v24, type metadata accessor for AppIcon);
      swift_storeEnumTagMultiPayload();
      sub_10001F480(&qword_100064808, type metadata accessor for AppIcon, &unk_10004DE3C);
      sub_10001F4C8();
      v64 = v79;
      sub_10004C320();
      sub_100003E3C(v64, v92, &qword_1000657A0, &qword_10004F008);
      swift_storeEnumTagMultiPayload();
      sub_100003650(&qword_100065820, &qword_10004F040);
      sub_10001F3C4();
      sub_10001F554();
      v65 = v93;
      sub_10004C320();
      sub_100003EA4(v64, &qword_1000657A0, &qword_10004F008);
      sub_100003E3C(v65, v96, &qword_1000657A8, &qword_10004F010);
      swift_storeEnumTagMultiPayload();
      sub_10001F338();
      sub_10001F634();
      sub_10004C320();
      sub_100003EA4(v65, &qword_1000657A8, &qword_10004F010);
      return sub_10001F878(v31, type metadata accessor for AppIcon);
    }

    if (v32 != 1)
    {
      goto LABEL_13;
    }

    sub_10001AEFC(a1);
    sub_10001F810(a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v19, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v45 = v19;
    v46 = &v19[*(sub_100003650(&qword_100064888, &qword_10004DB10) + 36)];
    v47 = v104[1];
    *v46 = v104[0];
    *(v46 + 1) = v47;
    *(v46 + 2) = v104[2];
    v48 = &v19[*(v17 + 36)];
    *v48 = 0x3FF0000000000000;
    *(v48 + 4) = 0;
    sub_100003E3C(v19, v24, &qword_100065780, &qword_10004EFE8);
    swift_storeEnumTagMultiPayload();
    sub_10001F480(&qword_100064808, type metadata accessor for AppIcon, &unk_10004DE3C);
    sub_10001F4C8();
    v49 = v79;
    sub_10004C320();
    sub_100003E3C(v49, v92, &qword_1000657A0, &qword_10004F008);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065820, &qword_10004F040);
    sub_10001F3C4();
    sub_10001F554();
    v50 = v93;
    sub_10004C320();
    sub_100003EA4(v49, &qword_1000657A0, &qword_10004F008);
    sub_100003E3C(v50, v96, &qword_1000657A8, &qword_10004F010);
    swift_storeEnumTagMultiPayload();
    sub_10001F338();
    sub_10001F634();
    sub_10004C320();
    sub_100003EA4(v50, &qword_1000657A8, &qword_10004F010);
    v44 = v45;
    v51 = &qword_100065780;
    v52 = &qword_10004EFE8;
  }

  else
  {
    switch(v32)
    {
      case 2:
        v53 = sub_10004C720();
        v55 = v54;
        sub_10001C4D4(a1, v104, a3, a4, a5);
        memcpy(v101, v104, 0x120uLL);
        memcpy(v102, v104, 0x120uLL);
        sub_100003E3C(v101, v100, &qword_100065868, &qword_10004F068);
        sub_100003EA4(v102, &qword_100065868, &qword_10004F068);
        memcpy(&v103[2], v101, 0x120uLL);
        v103[0] = v53;
        v103[1] = v55;
        memcpy(v104, v103, 0x130uLL);
        sub_10001F6FC(v104);
        memcpy(v99, v104, sizeof(v99));
        v56 = &qword_100065830;
        v57 = &qword_10004F048;
        sub_100003E3C(v103, v100, &qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065840, &qword_10004F050);
        sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048, &protocol conformance descriptor for ZStack<A>);
        sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050, &protocol conformance descriptor for ZStack<A>);
        break;
      case 3:
        v58 = sub_10004C720();
        v60 = v59;
        sub_10001CCB4(a1, v104, a3, a4, a5);
        memcpy(v101, v104, sizeof(v101));
        memcpy(v102, v104, sizeof(v102));
        sub_100003E3C(v101, v100, &qword_100065860, &qword_10004F060);
        sub_100003EA4(v102, &qword_100065860, &qword_10004F060);
        memcpy(&v103[2], v101, 0x1D0uLL);
        v103[0] = v58;
        v103[1] = v60;
        memcpy(v104, v103, 0x1E0uLL);
        sub_10001F6F0(v104);
        memcpy(v99, v104, sizeof(v99));
        v56 = &qword_100065840;
        v57 = &qword_10004F050;
        sub_100003E3C(v103, v100, &qword_100065840, &qword_10004F050);
        sub_100003650(&qword_100065830, &qword_10004F048);
        sub_100003650(&qword_100065840, &qword_10004F050);
        sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048, &protocol conformance descriptor for ZStack<A>);
        sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050, &protocol conformance descriptor for ZStack<A>);
        break;
      case 4:
        v78[0] = a1;
        sub_10001AEFC(a1);
        sub_100003650(&qword_1000657B0, &qword_10004F018);
        sub_10004C6F0();
        *(swift_allocObject() + 16) = xmmword_10004E4F0;
        v93 = xmmword_10004EEF0;
        *v15 = xmmword_10004EEF0;
        v33 = enum case for GridItem.Size.flexible(_:);
        v34 = v82;
        v35 = *(v81 + 104);
        v35(v15, enum case for GridItem.Size.flexible(_:), v82);
        sub_10004C700();
        *v15 = v93;
        v35(v15, v33, v34);
        v36 = sub_10004C700();
        *&v93 = v78;
        __chkstk_darwin(v36);
        v37 = v78[0];
        v78[-6] = v78[0];
        *&v78[-5] = a3;
        *&v78[-4] = a4;
        *&v78[-3] = a5;
        v92 = sub_10004C280();
        LODWORD(v104[0]) = 0;
        sub_10001F480(&qword_1000657B8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
        sub_10004D0B0();
        sub_100003650(&qword_100065850, &qword_10004F058);
        v77 = sub_100003D30(&qword_100065858, &qword_100065850, &qword_10004F058, &protocol conformance descriptor for TupleView<A>);
        v38 = v79;
        sub_10004C750();
        sub_10001AEFC(v37);
        sub_10001AEFC(v37);
        sub_10004C720();
        sub_10004BF90();
        v39 = (v38 + *(v85 + 36));
        v40 = v104[1];
        *v39 = v104[0];
        v39[1] = v40;
        v39[2] = v104[2];
        v41 = &qword_100065778;
        v42 = &qword_10004EFE0;
        sub_100003E3C(v38, v87, &qword_100065778, &qword_10004EFE0);
        swift_storeEnumTagMultiPayload();
        sub_10001F1C8();
        sub_10001F280();
        v43 = v89;
        sub_10004C320();
        sub_100003E3C(v43, v96, &qword_100065770, &qword_10004EFD8);
        swift_storeEnumTagMultiPayload();
        sub_10001F338();
        sub_10001F634();
        sub_10004C320();
        sub_100003EA4(v43, &qword_100065770, &qword_10004EFD8);
        v44 = v38;
LABEL_14:
        v51 = v41;
        v52 = v42;
        return sub_100003EA4(v44, v51, v52);
      default:
LABEL_13:
        v78[0] = a1;
        sub_10001AEFC(a1);
        sub_100003650(&qword_1000657B0, &qword_10004F018);
        sub_10004C6F0();
        *(swift_allocObject() + 16) = xmmword_10004E4F0;
        v93 = xmmword_10004EEF0;
        *v15 = xmmword_10004EEF0;
        v67 = enum case for GridItem.Size.flexible(_:);
        v68 = v82;
        v69 = *(v81 + 104);
        v69(v15, enum case for GridItem.Size.flexible(_:), v82);
        sub_10004C700();
        *v15 = v93;
        v69(v15, v67, v68);
        v70 = sub_10004C700();
        *&v93 = v78;
        __chkstk_darwin(v70);
        v71 = v78[0];
        v78[-6] = v78[0];
        *&v78[-5] = a3;
        *&v78[-4] = a4;
        *&v78[-3] = a5;
        v92 = sub_10004C280();
        LODWORD(v104[0]) = 0;
        sub_10001F480(&qword_1000657B8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
        sub_10004D0B0();
        sub_100003650(&qword_1000657C0, &qword_10004F020);
        v77 = sub_100003D30(&qword_1000657C8, &qword_1000657C0, &qword_10004F020, &protocol conformance descriptor for TupleView<A>);
        v72 = v80;
        sub_10004C750();
        sub_10001AEFC(v71);
        sub_10001AEFC(v71);
        sub_10004C720();
        sub_10004BF90();
        v73 = v87;
        v74 = (v72 + *(v88 + 36));
        v75 = v104[1];
        *v74 = v104[0];
        v74[1] = v75;
        v74[2] = v104[2];
        v41 = &qword_100065760;
        v42 = &qword_10004EFC8;
        sub_100003E3C(v72, v73, &qword_100065760, &qword_10004EFC8);
        swift_storeEnumTagMultiPayload();
        sub_10001F1C8();
        sub_10001F280();
        v76 = v89;
        sub_10004C320();
        sub_100003E3C(v76, v96, &qword_100065770, &qword_10004EFD8);
        swift_storeEnumTagMultiPayload();
        sub_10001F338();
        sub_10001F634();
        sub_10004C320();
        sub_100003EA4(v76, &qword_100065770, &qword_10004EFD8);
        v44 = v72;
        goto LABEL_14;
    }

    sub_10004C320();
    memcpy(v92, v100, 0x1E1uLL);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065820, &qword_10004F040);
    sub_10001F3C4();
    sub_10001F554();
    v61 = v93;
    sub_10004C320();
    sub_100003E3C(v61, v96, &qword_1000657A8, &qword_10004F010);
    swift_storeEnumTagMultiPayload();
    sub_10001F338();
    sub_10001F634();
    sub_10004C320();
    sub_100003EA4(v103, v56, v57);
    v44 = v61;
    v51 = &qword_1000657A8;
    v52 = &qword_10004F010;
  }

  return sub_100003EA4(v44, v51, v52);
}

uint64_t sub_10001C4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = sub_10004C1B0();
  sub_10001C8FC(a1, &v50, a3, a4, a5);
  v30 = *&v51[48];
  v31 = *&v51[64];
  v32 = *&v51[80];
  v33 = v51[96];
  v26 = v50;
  v27 = *v51;
  v28 = *&v51[16];
  v29 = *&v51[32];
  v34[0] = v50;
  v34[1] = *v51;
  v34[2] = *&v51[16];
  v34[3] = *&v51[32];
  v34[4] = *&v51[48];
  v34[5] = *&v51[64];
  v34[6] = *&v51[80];
  v35 = v51[96];
  sub_100003E3C(&v26, &v48, &qword_100065870, &qword_10004F070);
  sub_100003EA4(v34, &qword_100065870, &qword_10004F070);
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  v25[119] = v33;
  *&v25[55] = v29;
  v10 = sub_10004C1B0();
  LOBYTE(v13[0]) = 1;
  sub_10001CAD8(a1, &v50, a3, a4, a5);
  v41 = *&v51[64];
  v42 = *&v51[80];
  v43 = *&v51[96];
  v36 = v50;
  v37 = *v51;
  v38 = *&v51[16];
  v39 = *&v51[32];
  v40 = *&v51[48];
  v44[0] = v50;
  v44[1] = *v51;
  v44[2] = *&v51[16];
  v44[3] = *&v51[32];
  v44[4] = *&v51[48];
  v44[5] = *&v51[64];
  v44[6] = *&v51[80];
  v45 = *&v51[96];
  sub_100003E3C(&v36, &v48, &qword_100065878, &qword_10004F078);
  sub_100003EA4(v44, &qword_100065878, &qword_10004F078);
  *(&v24[4] + 7) = v40;
  *(&v24[5] + 7) = v41;
  *(&v24[6] + 7) = v42;
  *(&v24[7] + 7) = v43;
  *(v24 + 7) = v36;
  *(&v24[1] + 7) = v37;
  *(&v24[2] + 7) = v38;
  *(&v24[3] + 7) = v39;
  v46 = v9;
  v47[0] = 1;
  *&v47[1] = *v25;
  *&v47[17] = *&v25[16];
  *&v47[33] = *&v25[32];
  *&v47[113] = *&v25[112];
  *&v47[97] = *&v25[96];
  *&v47[81] = *&v25[80];
  *&v47[65] = *&v25[64];
  *&v47[49] = *&v25[48];
  __src[6] = *&v47[80];
  __src[7] = *&v47[96];
  *(&__src[7] + 9) = *&v47[105];
  __src[2] = *&v47[16];
  __src[3] = *&v47[32];
  __src[4] = *&v47[48];
  __src[5] = *&v47[64];
  __src[0] = v9;
  __src[1] = *v47;
  v48 = v10;
  v49[0] = 1;
  *&v49[1] = v24[0];
  *&v49[17] = v24[1];
  *&v49[81] = v24[5];
  *&v49[65] = v24[4];
  *&v49[97] = v24[6];
  *&v49[112] = *(&v24[6] + 15);
  *&v49[33] = v24[2];
  *&v49[49] = v24[3];
  __src[11] = *&v49[16];
  __src[12] = *&v49[32];
  __src[9] = v10;
  __src[10] = *v49;
  __src[16] = *&v49[96];
  __src[17] = *(&v24[6] + 15);
  __src[14] = *&v49[64];
  __src[15] = *&v49[80];
  __src[13] = *&v49[48];
  memcpy(a2, __src, 0x120uLL);
  *&v51[65] = v24[4];
  *&v51[81] = v24[5];
  *&v51[97] = v24[6];
  *&v51[112] = *(&v24[6] + 15);
  *&v51[1] = v24[0];
  *&v51[17] = v24[1];
  *&v51[33] = v24[2];
  v50 = v10;
  v51[0] = 1;
  *&v51[49] = v24[3];
  sub_100003E3C(&v46, v13, &qword_100065880, &qword_10004F080);
  sub_100003E3C(&v48, v13, &qword_100065888, &qword_10004F088);
  sub_100003EA4(&v50, &qword_100065888, &qword_10004F088);
  v19 = *&v25[64];
  v20 = *&v25[80];
  v21 = *&v25[96];
  v15 = *v25;
  v16 = *&v25[16];
  v17 = *&v25[32];
  v13[0] = v9;
  v13[1] = 0;
  v14 = 1;
  v22 = *&v25[112];
  v18 = *&v25[48];
  return sub_100003EA4(v13, &qword_100065880, &qword_10004F080);
}

uint64_t sub_10001C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_10004C280();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v23 = 1;
  v22 = 0;
  *&v21[39] = v26;
  *&v21[23] = v25;
  *&v21[7] = v24;
  v27[0] = v10;
  v27[1] = 0;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = sub_10001F98C;
  *&v29 = v11;
  *(&v29 + 1) = a4 * 0.34;
  v30[0] = 0;
  *&v30[48] = *(&v26 + 1);
  v12 = *&v21[32];
  *&v30[33] = *&v21[32];
  v13 = *&v21[16];
  *&v30[17] = *&v21[16];
  v14 = *v21;
  *&v30[1] = *v21;
  v15 = v28;
  v16 = v29;
  *a2 = v10;
  *(a2 + 16) = v15;
  v17 = *&v30[32];
  *(a2 + 64) = *&v30[16];
  *(a2 + 80) = v17;
  v18 = *v30;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  v20[104] = 0;
  *(a2 + 96) = *&v30[48];
  *(a2 + 104) = a4 * 0.34;
  *(a2 + 112) = 0;
  v31[0] = v10;
  v31[1] = 0;
  v32 = 1;
  v33 = sub_10001F98C;
  v34 = v11;
  v35 = a4 * 0.34;
  v36 = 0;
  *&v39[15] = *&v21[47];
  *v39 = v12;
  v38 = v13;
  v37 = v14;
  sub_100003E3C(v27, v20, &qword_1000658A0, &qword_10004F0A0);
  return sub_100003EA4(v31, &qword_1000658A0, &qword_10004F0A0);
}

uint64_t sub_10001CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.34;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v28 = 1;
  v27 = 0;
  v23 = 0;
  v29 = v11;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = v10;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = sub_10001F988;
  *v32 = v12;
  v14 = v24;
  v13 = v25;
  *&v32[24] = v25;
  *&v32[8] = v24;
  v15 = v26;
  *&v32[40] = v26;
  *&v22[39] = v31;
  *&v22[23] = v30;
  *&v22[7] = v11;
  *&v22[103] = *(&v26 + 1);
  *&v22[87] = *&v32[32];
  *&v22[71] = *&v32[16];
  *&v22[55] = *v32;
  v16 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  v17 = *v22;
  *(a2 + 25) = *&v22[16];
  *(a2 + 9) = v17;
  *(a2 + 104) = *&v22[95];
  v18 = *&v22[64];
  *(a2 + 89) = *&v22[80];
  *(a2 + 73) = v18;
  v19 = v23;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 57) = v16;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F988;
  v38 = v12;
  v40 = v13;
  v41 = v15;
  v39 = v14;
  sub_100003E3C(&v29, &v21, &qword_100065890, &qword_10004F090);
  return sub_100003EA4(v33, &qword_100065890, &qword_10004F090);
}

uint64_t sub_10001CCB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v16 = sub_10004C1B0();
  LOBYTE(v41[0]) = 1;
  sub_10001D3A8(a1, &v68, a3, a4, a5);
  v25 = *&v69[48];
  v26 = *&v69[64];
  v27 = *&v69[80];
  v28 = v69[96];
  v21 = v68;
  v22 = *v69;
  v23 = *&v69[16];
  v24 = *&v69[32];
  v29[0] = v68;
  v29[1] = *v69;
  v29[2] = *&v69[16];
  v29[3] = *&v69[32];
  v29[4] = *&v69[48];
  v29[5] = *&v69[64];
  v29[6] = *&v69[80];
  v30 = v69[96];
  sub_100003E3C(&v21, &v55, &qword_100065870, &qword_10004F070);
  sub_100003EA4(v29, &qword_100065870, &qword_10004F070);
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v20[119] = v28;
  *&v20[55] = v24;
  v9 = v41[0];
  v14 = v41[0];
  v10 = sub_10004C1B0();
  LOBYTE(v59[0]) = 1;
  sub_10001D6E0(a1, &v68, a3, a4, a5);
  v37 = *&v69[80];
  v38 = *&v69[96];
  v39 = *&v69[112];
  v33 = *&v69[16];
  v34 = *&v69[32];
  v35 = *&v69[48];
  v36 = *&v69[64];
  v31 = v68;
  v32 = *v69;
  v41[6] = *&v69[80];
  v41[7] = *&v69[96];
  v41[8] = *&v69[112];
  v41[2] = *&v69[16];
  v41[3] = *&v69[32];
  v41[4] = *&v69[48];
  v41[5] = *&v69[64];
  v40 = v69[128];
  v42 = v69[128];
  v41[0] = v68;
  v41[1] = *v69;
  sub_100003E3C(&v31, &v55, &qword_1000658A8, &qword_10004F0A8);
  sub_100003EA4(v41, &qword_1000658A8, &qword_10004F0A8);
  *&v19[103] = v37;
  *&v19[119] = v38;
  *&v19[135] = v39;
  *&v19[39] = v33;
  *&v19[55] = v34;
  *&v19[71] = v35;
  *&v19[87] = v36;
  *&v19[7] = v31;
  v19[151] = v40;
  *&v19[23] = v32;
  v11 = v59[0];
  v12 = sub_10004C1B0();
  LOBYTE(v59[0]) = 1;
  sub_10001DB14(a1, &v68, a3, a4, a5);
  v47 = *&v69[48];
  v48 = *&v69[64];
  v49 = *&v69[80];
  v50 = *&v69[96];
  v43 = v68;
  v44 = *v69;
  v45 = *&v69[16];
  v46 = *&v69[32];
  v51[0] = v68;
  v51[1] = *v69;
  v51[2] = *&v69[16];
  v51[3] = *&v69[32];
  v51[4] = *&v69[48];
  v51[5] = *&v69[64];
  v51[6] = *&v69[80];
  v52 = *&v69[96];
  sub_100003E3C(&v43, &v55, &qword_100065878, &qword_10004F078);
  sub_100003EA4(v51, &qword_100065878, &qword_10004F078);
  *&v18[71] = v47;
  *&v18[87] = v48;
  *&v18[103] = v49;
  *&v18[119] = v50;
  *&v18[7] = v43;
  *&v18[23] = v44;
  *&v18[39] = v45;
  *&v18[55] = v46;
  LOBYTE(a1) = v59[0];
  v53 = v16;
  v54[0] = v9;
  *&v54[1] = *v20;
  *&v54[17] = *&v20[16];
  *&v54[33] = *&v20[32];
  *&v54[113] = *&v20[112];
  *&v54[97] = *&v20[96];
  *&v54[81] = *&v20[80];
  *&v54[65] = *&v20[64];
  *&v54[49] = *&v20[48];
  __src[6] = *&v54[80];
  __src[7] = *&v54[96];
  *(&__src[7] + 9) = *&v54[105];
  __src[2] = *&v54[16];
  __src[3] = *&v54[32];
  __src[4] = *&v54[48];
  __src[5] = *&v54[64];
  __src[0] = v16;
  __src[1] = *v54;
  v55 = v10;
  v56[0] = v11;
  *&v56[49] = *&v19[48];
  *&v56[33] = *&v19[32];
  *&v56[97] = *&v19[96];
  *&v56[113] = *&v19[112];
  *&v56[129] = *&v19[128];
  *&v56[145] = *&v19[144];
  *&v56[65] = *&v19[64];
  *&v56[81] = *&v19[80];
  *&v56[1] = *v19;
  *&v56[17] = *&v19[16];
  *(&__src[18] + 9) = *&v56[137];
  __src[17] = *&v56[112];
  __src[18] = *&v56[128];
  __src[13] = *&v56[48];
  __src[14] = *&v56[64];
  __src[15] = *&v56[80];
  __src[16] = *&v56[96];
  __src[9] = v10;
  __src[10] = *v56;
  __src[11] = *&v56[16];
  __src[12] = *&v56[32];
  v57 = v12;
  v58[0] = v59[0];
  *&v58[1] = *v18;
  *&v58[17] = *&v18[16];
  *&v58[81] = *&v18[80];
  *&v58[65] = *&v18[64];
  *&v58[97] = *&v18[96];
  *&v58[112] = *&v18[111];
  *&v58[33] = *&v18[32];
  *&v58[49] = *&v18[48];
  __src[26] = *&v58[80];
  __src[27] = *&v58[96];
  __src[28] = *&v18[111];
  __src[22] = *&v58[16];
  __src[23] = *&v58[32];
  __src[24] = *&v58[48];
  __src[25] = *&v58[64];
  __src[20] = v12;
  __src[21] = *v58;
  memcpy(a2, __src, 0x1D0uLL);
  v65 = *&v18[64];
  v66 = *&v18[80];
  *v67 = *&v18[96];
  *&v67[15] = *&v18[111];
  v61 = *v18;
  v62 = *&v18[16];
  v63 = *&v18[32];
  v59[0] = v12;
  v59[1] = 0;
  v60 = a1;
  v64 = *&v18[48];
  sub_100003E3C(&v53, &v68, &qword_100065880, &qword_10004F080);
  sub_100003E3C(&v55, &v68, &qword_1000658B0, &qword_10004F0B0);
  sub_100003E3C(&v57, &v68, &qword_100065888, &qword_10004F088);
  sub_100003EA4(v59, &qword_100065888, &qword_10004F088);
  *&v69[97] = *&v19[96];
  *&v69[113] = *&v19[112];
  v70 = *&v19[128];
  *&v69[33] = *&v19[32];
  *&v69[49] = *&v19[48];
  *&v69[65] = *&v19[64];
  *&v69[81] = *&v19[80];
  *&v69[1] = *v19;
  v68 = v10;
  v69[0] = v11;
  v71 = *&v19[144];
  *&v69[17] = *&v19[16];
  sub_100003EA4(&v68, &qword_1000658B0, &qword_10004F0B0);
  v72[0] = v16;
  v72[1] = 0;
  v73 = v14;
  v78 = *&v20[64];
  v79 = *&v20[80];
  v80 = *&v20[96];
  v81 = *&v20[112];
  v74 = *v20;
  v75 = *&v20[16];
  v76 = *&v20[32];
  v77 = *&v20[48];
  return sub_100003EA4(v72, &qword_100065880, &qword_10004F080);
}