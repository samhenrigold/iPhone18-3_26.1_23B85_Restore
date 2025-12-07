uint64_t sub_1ABC2C384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  sub_1ABA8C0AC();
  v6 = *v5;
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v25);
  v8 = v7;
  if (v6)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v7 = swift_once();
    }

    v9 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v7 = swift_once();
    }

    v9 = qword_1EB549598;
  }

  sub_1ABA7ED20(v7, v9);
  (*(v10 + 16))(v8);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v11 = sub_1ABA93DC0(v26);
  v19 = sub_1ABA95FD4(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a4(v19);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABA900B8();
  sub_1ABC2C104(v20, v21);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C50C()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA900B8();
  sub_1ABC2C104(v4, v5);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v7, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C580()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2B020(v0);
  sub_1ABA900B8();
  sub_1ABC2C104(v1, v2);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v4, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C5E8()
{
  sub_1ABA8C0AC();
  sub_1ABA9751C();
  sub_1ABC2B220(v0, v1);
  sub_1ABA900B8();
  sub_1ABC2C104(v2, v3);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C654()
{
  sub_1ABAA3CE0();
  sub_1ABC2C104(v2, v0 & 1);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC2C6AC@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1ABC2A974(a2 & 1, a3);
  sub_1ABC2D0D0();
  sub_1ABAA98EC();
  v12 = sub_1ABF22274();
  result = (*(v9 + 8))(v11, v8);
  if (!v4)
  {
    *a4 = v12;
  }

  return result;
}

uint64_t sub_1ABC2C7E8()
{
  sub_1ABA80B1C();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_1ABA826D8();
  v7 = sub_1ABA96910(v6, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22);
  v0 = v7;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v0);
  v10 = sub_1ABF22424();
  sub_1ABAA0E54(v10, MEMORY[0x1E699FE60], v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4]);
  v11 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v11, v11, MEMORY[0x1E69A0160], v12, v13, v14, v15, v16, v18);
  sub_1ABF24614();
  sub_1ABA84B54(&v18);
  sub_1ABA7E6E4(v25);
  return sub_1ABAB08B8(v25, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CA50()
{
  sub_1ABA80B1C();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_1ABA826D8();
  v7 = sub_1ABA96910(v6, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22);
  v0 = v7;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v0);
  v10 = sub_1ABF22424();
  sub_1ABAA0E54(v10, MEMORY[0x1E699FE60], v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4]);
  v11 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v11, v11, MEMORY[0x1E69A0160], v12, v13, v14, v15, v16, v18);
  sub_1ABF23BA4();
  sub_1ABA84B54(&v18);
  sub_1ABA7E6E4(v25);
  return sub_1ABAB08B8(v25, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *))
{
  sub_1ABA80B1C();
  v8 = *v7;
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v9 = sub_1ABA93DC0(v25);
  v10 = v9;
  if (v8)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v9 = swift_once();
    }

    v11 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v9 = swift_once();
    }

    v11 = qword_1EB549598;
  }

  sub_1ABA7ED20(v9, v11);
  (*(v12 + 16))(v10);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v13 = sub_1ABA93DC0(v26);
  v21 = sub_1ABA95FD4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a6(v21);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABA7E6E4(v26);
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CD68()
{
  sub_1ABA8E904();
  sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA7E6E4(v5);
  return sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CDD8()
{
  sub_1ABA8E904();
  sub_1ABC2B020(v0);
  sub_1ABA7E6E4(v2);
  return sub_1ABAB08B8(v2, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CE3C()
{
  sub_1ABA8E904();
  sub_1ABC2B220(v0, v1);
  sub_1ABA7E6E4(v3);
  return sub_1ABAB08B8(v3, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CEA4()
{
  sub_1ABA95864();
  sub_1ABAA3CE0();
  sub_1ABC2C97C(v4, v0 & 1, v1, v2);
  return sub_1ABAB08B8(v4, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC2CF00(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5)
{
  v14[1] = a5;
  v9 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  sub_1ABC2A974(a2 & 1, a3);
  sub_1ABC2D0D0();
  sub_1ABAA98EC();
  sub_1ABF22264();
  result = (*(v10 + 8))(v12, v9);
  if (!v5)
  {
    do
    {
      sub_1ABE7EC84();
      if (v16 == 1)
      {
        break;
      }

      v17 = 0;
      a4(&v15, &v17);
    }

    while (v17 != 1);
  }

  return result;
}

unint64_t sub_1ABC2D0D0()
{
  result = qword_1EB4DB890;
  if (!qword_1EB4DB890)
  {
    sub_1ABAE2850(&unk_1EB4D59C0, &unk_1ABF70750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB890);
  }

  return result;
}

void sub_1ABC2D134(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  EntityIdentifier.typed<A>(as:)(a5, a6, &v9);
  if (v6)
  {
  }

  else
  {
    a3(&v9, a2);
  }
}

uint64_t sub_1ABC2D1BC@<X0>(uint64_t a1@<X8>)
{
  sub_1ABA7F288();
  sub_1ABA7F288();
  result = sub_1ABC2CEA4();
  if (!v1)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_1ABC2D258(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EntityIdentifier.typed<A>(as:)(a6, a8, &v11);
  if (v8)
  {
  }

  else
  {
    *a4 = v11;
    *(a4 + 8) = 0;
    *a2 = 1;
  }
}

uint64_t sub_1ABC2D3D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1ABAD219C(&qword_1EB4D59F0, &qword_1ABF4C7C8);
  sub_1ABA7D08C();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1ABF21EB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1ABF21974();
  sub_1ABF21964();
  sub_1ABC2D63C();
  result = sub_1ABF23B74();
  if (result)
  {
    v17 = *(v10 + 32);
    v17(v8, v15, v9);
    v17(&v8[*(v2 + 48)], v12, v9);
    sub_1ABC2D694(v8, v5, &qword_1EB4D59F0, &qword_1ABF4C7C8);
    v18 = *(v2 + 48);
    v17(a1, v5, v9);
    v19 = *(v10 + 8);
    v19(&v5[v18], v9);
    sub_1ABC2D6F8(v8, v5);
    v20 = *(v2 + 48);
    v21 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
    v17(&a1[*(v21 + 36)], &v5[v20], v9);
    return (v19)(v5, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC2D63C()
{
  result = qword_1EB4CF758;
  if (!qword_1EB4CF758)
  {
    sub_1ABF21EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF758);
  }

  return result;
}

uint64_t sub_1ABC2D694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABAD219C(a3, a4);
  sub_1ABA7D08C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABC2D6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D59F0, &qword_1ABF4C7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1ABC2D768(uint64_t *a1, uint64_t a2)
{
  v3 = v2[3];
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[7];
  v7 = *a1;
  sub_1ABC2D134(&v7, a2, v4, v6, v3, v5);
}

uint64_t sub_1ABC2D7B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABC2E214();
  sub_1ABC29D28(a1, a3 & 1, a4, a6);

  if (!v7)
  {
    sub_1ABA93568();
    sub_1ABC2E92C(v13, v14, v15, v16, v17, a7, v18);
  }

  return result;
}

void sub_1ABC2D998(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v17 = *a2;
  sub_1ABC2E214();
  v22 = v17;
  v18 = a10(a1, &v22, a3, a5 & 1, a6, a8);

  if (!v11)
  {
    sub_1ABC2E92C(v18, a4, a6, a7, a8, a9, x8_0);
  }

  sub_1ABA7E708();
}

void sub_1ABC2DB74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t (*a9)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_1ABC2E214();
  v16 = a9(a1, a2, a4 & 1, a5, a7);

  if (!v10)
  {
    sub_1ABC2E92C(v16, a3, a5, a6, a7, a8, x8_0);
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABC2DC44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1ABC2E214();
  v17 = sub_1ABC29D28(a1, a3 & 1, a6, a8);

  if (!v10)
  {
    sub_1ABC2ECA4(v17, a2, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t sub_1ABC2DE24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v18 = *a2;
  sub_1ABC2E214();
  v24 = v18;
  v19 = a13(a1, &v24, a3, a5 & 1, a8, a10);

  if (!v13)
  {
    sub_1ABC2ECA4(v19, a4, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

void sub_1ABC2E014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t (*a12)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  sub_1ABC2E214();
  v17 = a12(a1, a2, a4 & 1, a7, a9);

  if (!v12)
  {
    sub_1ABC2ECA4(v17, a3, a5, a6, a7, a8, a9, a10, a11);
  }

  sub_1ABA7E708();
}

uint64_t sub_1ABC2E144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v20 = a6;
  sub_1ABC2E214();
  a7(&v19, a1, a3, a5);

  if (!v7)
  {
    sub_1ABA93568();
    return sub_1ABC2F23C(v13, v14, v15, v16, v17, v20, v18);
  }

  return result;
}

uint64_t sub_1ABC2E288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_1ABA7BD7C();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  return (*(v5 + 32))(a2, v9, v3);
}

uint64_t sub_1ABC2E358@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v49 = a2;
  type metadata accessor for TypedEntityIdentifier(255, a1[3], a1[6], a3);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v6 = sub_1ABF252B4();
  v7 = sub_1ABF247E4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v25 = a1[4];
  v59 = a1[7];
  v60 = v25;
  v63 = v7;
  v64 = (v26 + 16);
  v54 = v7 - 8;
  v57 = (v26 + 8);
  v58 = (v26 + 32);
  v22.n128_u64[0] = 136315138;
  v50 = v22;
  v52 = v4;
  v53 = v6;
  v55 = v20;
  for (i = v12; ; v12 = i)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v12, 1, TupleTypeMetadata2) == 1)
    {
      (*(v47 + 8))(v12, v48);
      v43 = 1;
      v44 = v49;
      return sub_1ABA7B9B4(v44, v43, 1, v6);
    }

    (*v58)(v24, v12, TupleTypeMetadata2);
    v27 = *v64;
    (*v64)(v20, v24, TupleTypeMetadata2);
    v28 = *(TupleTypeMetadata2 + 48);
    if (sub_1ABA7E1E0(&v20[v28], 1, v6) != 1)
    {
      break;
    }

    v29 = *(v63 - 8);
    v30 = *(v29 + 8);
    v61 = v29 + 8;
    v62 = v30;
    (v30)(&v20[v28]);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v31 = sub_1ABF237F4();
    sub_1ABA7AA24(v31, qword_1ED871B40);
    v27(v17, v24, TupleTypeMetadata2);
    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = v35;
      *v34 = v50.n128_u32[0];
      v36 = v51;
      v27(v51, v17, TupleTypeMetadata2);
      v37 = *(TupleTypeMetadata2 + 48);
      v65 = *v36;
      v62(&v36[v37], v63);
      v62 = *v57;
      v62(v17, TupleTypeMetadata2);
      v38 = EntityIdentifier.description.getter();
      v40 = sub_1ABADD6D8(v38, v39, &v66);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1ABA78000, v32, v33, "ID %s is in Event index but constructing a graph object from it results in nil!", v34, 0xCu);
      sub_1ABA84B54(v35);
      v41 = v35;
      v6 = v53;
      MEMORY[0x1AC5AB8B0](v41, -1, -1);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);

      v62(v24, TupleTypeMetadata2);
    }

    else
    {
      v42 = *v57;
      (*v57)(v17, TupleTypeMetadata2);

      v42(v24, TupleTypeMetadata2);
    }

    v20 = v55;
  }

  (*v57)(v24, TupleTypeMetadata2);
  v44 = v49;
  (*(*(v6 - 8) + 32))(v49, &v20[v28], v6);
  v43 = 0;
  return sub_1ABA7B9B4(v44, v43, 1, v6);
}

uint64_t sub_1ABC2E8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABC2E288(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

void sub_1ABC2E92C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v37 = a5;
  v38 = a1;
  v39 = a2;
  v35 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v41 = v10;
  v14 = a3;
  v42 = a3;
  v43 = a4;
  v15 = a4;
  v44 = AssociatedConformanceWitness;
  v45 = v12;
  v16 = v36;
  v17 = v37;
  v46 = v37;
  v47 = v36;
  v48 = v13;
  v18 = type metadata accessor for TypedGraphObjectSequence.Iterator(0, &v40);
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v32 = &v31 - v19;
  v40 = AssociatedTypeWitness;
  v41 = v10;
  v42 = v14;
  v43 = v15;
  v44 = AssociatedConformanceWitness;
  v45 = v12;
  v46 = v37;
  v47 = v36;
  v48 = v13;
  v20 = type metadata accessor for TypedGraphObjectSequence(0, &v40);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  v40 = v38;
  type metadata accessor for TypedEntityIdentifier(255, v14, v17, v24);
  v25 = sub_1ABF241F4();
  WitnessTable = swift_getWitnessTable();
  v27 = v49;
  GraphObjectBareContextProtocol.graphObjects<A, B>(for:)(&v40, v15, v14, v25, v16, v17, WitnessTable, v28, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  if (!v27)
  {
    v29 = v32;
    sub_1ABEB29C4(v20, v32);
    (*(v21 + 8))(v23, v20);
    v30 = v34;
    swift_getWitnessTable();
    (*(v33 + 32))(v35, v29, v30);
  }
}

void sub_1ABC2ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = *v9;
  v26 = a1;
  v18 = *(v14 + 80);
  v19 = a5;
  v20 = a6;
  v21 = *(v14 + 88);
  v22 = a7;
  v23 = a8;
  v24 = a3;
  v25 = a4;
  type metadata accessor for TypedEntityIdentifier(255, a5, a7, a4);
  v15 = sub_1ABF241F4();
  WitnessTable = swift_getWitnessTable();
  GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(for:block:)(&v26, sub_1ABC2F424, v17, a6, a5, v15, a8, a7, WitnessTable, a9, v17[0], v17[1], v18, v19, v20, v21, v22, v23, a9, v24, v25, v26);
}

uint64_t sub_1ABC2EDBC(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36[1] = a4;
  v37 = a3;
  v38 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v39 = a6;
  v10 = sub_1ABF252B4();
  v11 = sub_1ABF247E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v36 - v21;
  v23 = *a1;
  (*(v12 + 16))(v14, a2, v11, v20);
  if (sub_1ABA7E1E0(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v24 = sub_1ABF237F4();
    sub_1ABA7AA24(v24, qword_1ED871B40);
    v25 = sub_1ABF237D4();
    v26 = sub_1ABF24664();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315138;
      v42 = v23;
      v29 = EntityIdentifier.description.getter();
      v31 = sub_1ABADD6D8(v29, v30, &v43);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1ABA78000, v25, v26, "ID %s is in Event index but constructing a graph object from it results in nil!", v27, 0xCu);
      sub_1ABA84B54(v28);
      MEMORY[0x1AC5AB8B0](v28, -1, -1);
      MEMORY[0x1AC5AB8B0](v27, -1, -1);
    }

    v32 = 1;
  }

  else
  {
    (*(v15 + 32))(v22, v14, v10);
    LOBYTE(v42) = 0;
    (*(v15 + 16))(v18, v22, v10);
    v34 = v40;
    v33 = v41;
    sub_1ABD49B3C(v10, &v43, v40);
    if (v33)
    {
      (*(v15 + 8))(v22, v10);
    }

    else
    {
      v37(v34, &v42);
      (*(v38 + 8))(v34, v39);
      (*(v15 + 8))(v22, v10);
      v32 = v42 ^ 1;
    }
  }

  return v32 & 1;
}

uint64_t sub_1ABC2F23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 8))
  {
    return sub_1ABA7B9B4(a7, 1, 1, a3);
  }

  v11 = type metadata accessor for TypedEntityIdentifier(0, a3, a5, a3);
  return TypedEntityIdentifier.graphObject<A>(from:)(a2, v11, a4, a6, v12, v13, v14, v15);
}

uint64_t sub_1ABC2F350()
{
  sub_1ABC2F2E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC2F464(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC2F4D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1ABA7E1E0(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1ABA7E1E0(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1ABC2F610(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABC2F83C(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = SecTaskCreateFromSelf(0);
  if (v3)
  {
    v4 = v3;
    error[0] = 0;
    v5 = sub_1ABF23BD4();
    a2 = SecTaskCopyValueForEntitlement(v4, v5, error);

    if (a2)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        a2 = v12;
        if (error[0])
        {
        }

        goto LABEL_14;
      }

      sub_1ABB6ADDC();
      swift_allocError();
      *v10 = xmmword_1ABF34750;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!error[0])
      {
        a2 = 0;
LABEL_14:

        return a2;
      }

      sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
      a2 = sub_1ABF23C74();
      v8 = v7;
      sub_1ABB6ADDC();
      swift_allocError();
      *v9 = a2;
      v9[1] = v8;
      swift_willThrow();
    }

    if (error[0])
    {
    }

    goto LABEL_14;
  }

  sub_1ABB6ADDC();
  swift_allocError();
  *v6 = 0;
  v6[1] = 0;
  swift_willThrow();
  return a2;
}

uint64_t sub_1ABC2FA2C(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = SecTaskCreateFromSelf(0);
  if (v3)
  {
    v4 = v3;
    error[0] = 0;
    v5 = sub_1ABF23BD4();
    a2 = SecTaskCopyValueForEntitlement(v4, v5, error);

    if (a2)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        a2 = v12;
        if (error[0])
        {
        }

        goto LABEL_14;
      }

      sub_1ABB6ADDC();
      swift_allocError();
      *v10 = xmmword_1ABF34750;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      if (!error[0])
      {
        a2 = 2;
LABEL_14:

        return a2;
      }

      sub_1ABAD219C(&qword_1EB4D3A50, &qword_1ABF3E348);
      a2 = sub_1ABF23C74();
      v8 = v7;
      sub_1ABB6ADDC();
      swift_allocError();
      *v9 = a2;
      v9[1] = v8;
      swift_willThrow();
    }

    if (error[0])
    {
    }

    goto LABEL_14;
  }

  sub_1ABB6ADDC();
  swift_allocError();
  *v6 = 0;
  v6[1] = 0;
  swift_willThrow();
  return a2;
}

id rawObjCInt64ToEventID(_:)(uint64_t a1)
{
  sub_1ABAE2BF0(a1, v4);
  sub_1ABB373C8();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = [v3 longLongValue];

  return v1;
}

uint64_t sub_1ABC2FCB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v24) = a4;
  v25 = a3;
  v27 = a2;
  v28 = sub_1ABF21EB4();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a5;
  v32[1] = a6;
  v32[2] = a7;
  if (qword_1ED86B788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1ABA93E64(qword_1ED86E090, v29);
  v14 = v30;
  v13 = v31;
  sub_1ABA93E20(v29, v30);
  v15 = *(v13 + 8);
  v16 = sub_1ABC34124();
  v17 = v27;
  v18 = v15(&type metadata for DictionaryEvent, a1, v27, &type metadata for DictionaryEvent, v16, v14, v13);
  sub_1ABA84B54(v29);
  sub_1ABA93E64(qword_1ED86E090, v29);
  v19 = v30;
  v20 = v31;
  sub_1ABA93E20(v29, v30);
  sub_1ABF21E74();
  if ((v24 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v25;
  }

  v22 = sub_1ABC3009C(v21);
  (*(v20 + 32))(v18, v12, a1, v17, v22, v32, &type metadata for DictionaryEvent, v16, v19, v20);
  (*(v26 + 8))(v12, v28);
  sub_1ABA84B54(v29);
  return v18;
}

void static EventLogger.instant<A>(named:parent:_:)()
{
  sub_1ABA7E2A8();
  v27 = v1;
  v3 = v2;
  v25 = v4;
  v26 = v5;
  v24 = v6;
  v8 = v7;
  v10 = v9;
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  sub_1ABA7F2A0(qword_1ED86E090, &v31);
  sub_1ABAA3120();
  v15 = v29;
  v16 = v30;
  sub_1ABA93E20(v28, v29);
  v17 = sub_1ABAA40B0();
  v19 = v18(v17, v10, v8, v3, v27, v15, v16);
  sub_1ABA84B54(v28);
  sub_1ABAA3120();
  sub_1ABAA2CCC();
  if (v24)
  {
    v20 = 0;
  }

  else
  {
    v20 = v25;
  }

  v21 = sub_1ABC3009C(v20);
  (*(v16 + 32))(v19, v14, v10, v8, v21, v26, v3, v27, v0, v16);
  v22 = sub_1ABAA4E3C();
  v23(v22);
  sub_1ABA84B54(v28);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC3009C(uint64_t result)
{
  if (!result)
  {
    if (qword_1EB4CF6E8 != -1)
    {
      sub_1ABA7D7D8();
      swift_once();
    }

    sub_1ABF25374();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t static EventLogger.instant<A>(file:function:line:parent:_:)()
{
  sub_1ABA84160();

  v2 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v2);
  MEMORY[0x1AC5A9410](v1, v0);
  v3 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v3);
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  static EventLogger.instant<A>(named:parent:_:)();
  v6 = v5;

  return v6;
}

uint64_t sub_1ABC301FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *(*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6, void (*a7)(uint64_t *__return_ptr, void), uint64_t a8)
{
  v38 = a8;
  v39 = a7;
  v45 = a6;
  v46 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a2;
  v48 = sub_1ABF21EB4();
  v57 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  if (qword_1ED86B788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1ABA93E64(qword_1ED86E090, &v53);
  v13 = v55;
  v14 = v56;
  sub_1ABA93E20(&v53, v55);
  v15 = *(v14 + 8);
  v16 = sub_1ABC34124();
  v17 = a1;
  v41 = a1;
  v18 = v44;
  v19 = v15(&type metadata for DictionaryEvent, v17, v44, &type metadata for DictionaryEvent, v16, v13, v14);
  sub_1ABA84B54(&v53);
  sub_1ABA93E64(qword_1ED86E090, &v53);
  v20 = v55;
  v21 = v56;
  sub_1ABA93E20(&v53, v55);
  sub_1ABF21E74();
  if (v42)
  {
    v22 = 0;
  }

  else
  {
    v22 = v43;
  }

  v23 = sub_1ABC3009C(v22);
  v24 = *(v21 + 16);
  v44 = v16;
  v24(&type metadata for DictionaryEvent, v12, v19, v41, v18, v23, &type metadata for DictionaryEvent, v16, v20, v21, v38, v39);
  v26 = v57 + 8;
  v25 = *(v57 + 8);
  v27 = v48;
  v25(v12, v48);
  sub_1ABA84B54(&v53);
  if (qword_1EB4CF6E8 != -1)
  {
    swift_once();
  }

  v53 = v19;
  LOBYTE(v54) = 0;
  sub_1ABAD219C(&qword_1EB4D5A48, &qword_1ABF4CC48);
  swift_task_localValuePush();
  v28 = v47;
  v46(&v51, v19);
  if (v28)
  {
    swift_task_localValuePop();
    v39(&v53, v28);
    v29 = v53;
    v30 = v54;
    if (v54)
    {
      v51 = v53;
      v52 = v54;
      sub_1ABA93E64(qword_1ED86E090, &v53);
      v57 = v26;
      v31 = v55;
      v32 = v56;
      sub_1ABA93E20(&v53, v55);
      v47 = v25;
      v33 = v40;
      sub_1ABF21E74();
      (*(v32 + 24))(v19, v33, &v51, &type metadata for DictionaryEvent, v44, v31, v32);
      v47(v33, v48);
      sub_1ABAFEE5C(v29, v30);
      sub_1ABA84B54(&v53);
    }

    else
    {
      sub_1ABAFEE5C(v53, 0);
    }

    swift_willThrow();
  }

  else
  {
    swift_task_localValuePop();
    v49 = v51;
    v50 = v52;
    sub_1ABA93E64(qword_1ED86E090, &v53);
    v34 = v55;
    v35 = v56;
    sub_1ABA93E20(&v53, v55);
    v36 = v40;
    sub_1ABF21E74();
    (*(v35 + 24))(v19, v36, &v49, &type metadata for DictionaryEvent, v44, v34, v35);
    v25(v36, v27);
    sub_1ABA84B54(&v53);
  }

  return v19;
}

uint64_t static EventLogger.interval<A>(named:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a8;
  v30 = a7;
  v32 = a5;
  v33 = a6;
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v27 = v11;
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v31 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v21 = v20;
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    v20 = swift_once();
  }

  v34 = v21;
  v35 = 0;
  MEMORY[0x1EEE9AC00](v20);
  *(&v26 - 6) = a9;
  *(&v26 - 5) = a10;
  v22 = v33;
  *(&v26 - 4) = v32;
  *(&v26 - 3) = v22;
  *(&v26 - 2) = v21;
  v23 = v36;
  sub_1ABF25384();
  if (v23)
  {
    v30(v23);
    if (sub_1ABA7E1E0(v13, 1, a9) == 1)
    {
      (*(v27 + 8))(v13, v28);
    }

    else
    {
      v24 = v31;
      (*(v31 + 32))(v16, v13, a9);
      static EventLogger.endInterval<A>(with:_:)();
      (*(v24 + 8))(v16, a9);
    }

    swift_willThrow();
  }

  else
  {
    static EventLogger.endInterval<A>(with:_:)();
    (*(v31 + 8))(v19, a9);
  }

  return v21;
}

void static EventLogger.startInterval<A>(ofType:named:parent:)()
{
  sub_1ABA7E2A8();
  v27 = v1;
  v3 = v2;
  v24 = v4;
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v10 = v9;
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  sub_1ABA7F2A0(qword_1ED86E090, &v31);
  sub_1ABAA3120();
  v15 = v29;
  v16 = v30;
  sub_1ABA93E20(v28, v29);
  v17 = sub_1ABAA40B0();
  v19 = v18(v17, v10, v8, v3, v27, v15, v16);
  sub_1ABA84B54(v28);
  sub_1ABAA3120();
  sub_1ABAA2CCC();
  if (v24)
  {
    v20 = 0;
  }

  else
  {
    v20 = v25;
  }

  v21 = sub_1ABC3009C(v20);
  (*(v16 + 16))(v26, v14, v19, v10, v8, v21, v3, v27, v0, v16);
  v22 = sub_1ABAA4E3C();
  v23(v22);
  sub_1ABA84B54(v28);
  sub_1ABA7BC1C();
}

void static EventLogger.endInterval<A>(with:_:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  sub_1ABA7F2A0(qword_1ED86E090, &v20);
  sub_1ABA93E64(qword_1ED86E090, v17);
  v15 = v18;
  v16 = v19;
  sub_1ABA93E20(v17, v18);
  sub_1ABF21E74();
  (*(v16 + 24))(v7, v14, v5, v3, v1, v15, v16);
  (*(v10 + 8))(v14, v8);
  sub_1ABA84B54(v17);
  sub_1ABA7BC1C();
}

uint64_t static EventLogger.interval<A>(file:function:line:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{

  v15 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v15);
  MEMORY[0x1AC5A9410](a3, a4);
  v16 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v16);
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  v18 = static EventLogger.interval<A>(named:parent:body:onThrow:)(a1, a2, a6, a7 & 1, a8, a9, a10, a11, a12, a13);

  return v18;
}

uint64_t sub_1ABC30DCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 281) = a4;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = sub_1ABF21EB4();
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABC30EA8, 0, 0);
}

uint64_t sub_1ABC30EA8()
{
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  v1 = *(v0 + 352);
  v20 = *(v0 + 344);
  v19 = *(v0 + 281);
  v2 = *(v0 + 296);
  v17 = *(v0 + 368);
  v18 = *(v0 + 304);
  v3 = *(v0 + 288);
  sub_1ABA7F2A0(qword_1ED86E090, v0 + 176);
  sub_1ABA93E64(qword_1ED86E090, v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), v4);
  v6 = *(v5 + 8);
  v7 = sub_1ABC34124();
  *(v0 + 376) = v7;
  v8 = v6(&type metadata for DictionaryEvent, v3, v2, &type metadata for DictionaryEvent, v7, v4, v5);
  *(v0 + 384) = v8;
  sub_1ABA84B54((v0 + 16));
  sub_1ABA93E64(qword_1ED86E090, v0 + 56);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_1ABA93E20((v0 + 56), v9);
  sub_1ABF21E74();
  if (v19)
  {
    v11 = 0;
  }

  else
  {
    v11 = v18;
  }

  v12 = sub_1ABC3009C(v11);
  (*(v10 + 16))(&type metadata for DictionaryEvent, v17, v8, v3, v2, v12, &type metadata for DictionaryEvent, v7, v9, v10);
  v13 = *(v1 + 8);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v17, v20);
  sub_1ABA84B54((v0 + 56));
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    swift_once();
  }

  *(v0 + 272) = v8;
  *(v0 + 280) = 0;
  v14 = swift_task_alloc();
  *(v0 + 408) = v14;
  *(v14 + 16) = *(v0 + 312);
  *(v14 + 32) = v8;
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  *v15 = v0;
  v15[1] = sub_1ABC3116C;
  sub_1ABAA534C();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1ABC3116C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (v0)
  {
    v7 = sub_1ABC313B4;
  }

  else
  {
    v7 = sub_1ABC31278;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABC31278()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  *(v0 + 248) = *(v0 + 200);
  *(v0 + 256) = *(v0 + 208);
  sub_1ABA93E64(qword_1ED86E090, v0 + 136);
  sub_1ABA93E20((v0 + 136), *(v0 + 160));
  sub_1ABF21E74();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  v1(v2, v3);
  sub_1ABA84B54((v0 + 136));

  sub_1ABA82A20();
  v7 = *(v0 + 384);

  return v6(v7);
}

uint64_t sub_1ABC313B4()
{
  v16 = v0;
  (*(v0 + 328))(&v13, *(v0 + 424));
  v1 = v13;
  v2 = v14;
  v3 = v15;
  if (v14)
  {
    v12 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = *(v0 + 376);
    v4 = *(v0 + 360);
    v11 = *(v0 + 344);
    *(v0 + 224) = v13;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    sub_1ABA93E64(qword_1ED86E090, v0 + 96);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    sub_1ABA93E20((v0 + 96), v6);
    sub_1ABF21E74();
    (*(v5 + 24))(v9, v4, v0 + 224, &type metadata for DictionaryEvent, v10, v6, v5);
    v12(v4, v11);
    sub_1ABAFEE5C(v1, v2);
    sub_1ABA84B54((v0 + 96));
  }

  else
  {
    sub_1ABAFEE5C(v13, 0);
  }

  swift_willThrow();

  sub_1ABA7BBE0();

  return v7();
}

uint64_t static EventLogger.interval<A>(named:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BBF8();
  *(v10 + 88) = a9;
  *(v10 + 96) = a10;
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  *(v10 + 56) = v13;
  *(v10 + 64) = v14;
  *(v10 + 25) = v15;
  *(v10 + 40) = v16;
  *(v10 + 48) = v17;
  *(v10 + 32) = v18;
  v19 = sub_1ABF247E4();
  *(v10 + 104) = v19;
  *(v10 + 112) = *(v19 - 8);
  *(v10 + 120) = swift_task_alloc();
  *(v10 + 128) = *(a9 - 8);
  *(v10 + 136) = swift_task_alloc();
  *(v10 + 144) = swift_task_alloc();
  return sub_1ABAA3528();
}

uint64_t sub_1ABC31654()
{
  sub_1ABA7BC04();
  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v2 = v1;
  *(v0 + 152) = v1;
  if (qword_1EB4CF6E8 != -1)
  {
    sub_1ABA7D7D8();
    swift_once();
  }

  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1ABC317AC;
  sub_1ABAA534C();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1ABC317AC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = sub_1ABC3196C;
  }

  else
  {
    v7 = sub_1ABC318B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1ABC318B8()
{
  sub_1ABA8C008();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];
  static EventLogger.endInterval<A>(with:_:)();
  (*(v2 + 8))(v1, v3);

  sub_1ABA82A20();
  v5 = v0[19];

  return v4(v5);
}

uint64_t sub_1ABC3196C()
{
  v2 = (v0 + 120);
  v1 = *(v0 + 120);
  v4 = (v0 + 88);
  v3 = *(v0 + 88);
  (*(v0 + 72))(*(v0 + 176));
  if (sub_1ABA7E1E0(v1, 1, v3) == 1)
  {
    v5 = v0 + 112;
    v4 = (v0 + 104);
  }

  else
  {
    v2 = (v0 + 136);
    v5 = v0 + 128;
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 120), *(v0 + 88));
    static EventLogger.endInterval<A>(with:_:)();
  }

  (*(*v5 + 8))(*v2, *v4);
  swift_willThrow();

  sub_1ABA7BBE0();

  return v6();
}

uint64_t sub_1ABC31AB0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1ABA7FDA0;

  return v9(a1, a4);
}

uint64_t sub_1ABC31BB8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1ABAB2788;

  return v9(a1, a4);
}

uint64_t static EventLogger.interval<A>(file:function:line:parent:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 112) = a11;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 64) = a6;
  *(v11 + 72) = a8;
  *(v11 + 144) = a7;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 24) = a1;
  return sub_1ABA7E724();
}

uint64_t sub_1ABC31CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10[6];
  v12 = v10[7];
  v13 = v10[5];
  v27 = v10[4];

  v14 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v14);
  MEMORY[0x1AC5A9410](v13, v11);
  v15 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v15);
  v10[2] = v12;
  v16 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v16);

  v10[15] = v27;
  v17 = swift_task_alloc();
  v10[16] = v17;
  *v17 = v10;
  v17[1] = sub_1ABC31E28;
  v18 = sub_1ABA7EDF8();

  return static EventLogger.interval<A>(named:parent:body:onThrow:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1ABC31E28()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {

    v7 = *(v5 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC31F68, 0, 0);
}

uint64_t sub_1ABC31F68()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t static EventLogger.startInterval<A>(file:function:line:ofType:parent:)()
{
  sub_1ABA84160();

  v2 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v2);
  MEMORY[0x1AC5A9410](v1, v0);
  v3 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v3);
  v4 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v4);

  static EventLogger.startInterval<A>(ofType:named:parent:)();
  v6 = v5;

  return v6;
}

uint64_t sub_1ABC320CC()
{
  sub_1ABA8C008();
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  sub_1ABA7F2A0(qword_1ED86E090, (v0 + 7));
  sub_1ABA93E64(qword_1ED86E090, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_1ABA93E20(v0 + 2, v1);
  v5 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1ABC3222C;

  return v5(v1, v2);
}

uint64_t sub_1ABC3222C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC32318, 0, 0);
}

uint64_t sub_1ABC32318()
{
  sub_1ABA7BBF8();
  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC32370()
{
  sub_1ABAD219C(&qword_1EB4D5A58, &unk_1ABF4CC60);
  swift_allocObject();
  result = sub_1ABF25364();
  qword_1EB549590 = result;
  return result;
}

uint64_t EventLogger.Backend.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static EventLogger.select(backend:)(char *a1)
{
  v1 = *a1;
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC(&qword_1ED86B790);
  }

  v2 = off_1EB4D0168;

  os_unfair_lock_lock(v2 + 6);
  *(*&v2[4]._os_unfair_lock_opaque + 16) = v1;
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t static EventLogger.unsafeReplaceBackend(with:)(char *a1)
{
  v1 = *a1;
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC(&qword_1ED86B790);
  }

  v2 = off_1EB4D0168;

  os_unfair_lock_lock(v2 + 6);
  *(*&v2[4]._os_unfair_lock_opaque + 16) = v1;
  os_unfair_lock_unlock(v2 + 6);

  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  v3 = off_1EB4D0168;

  os_unfair_lock_lock(v3 + 6);
  if (*(*&v3[4]._os_unfair_lock_opaque + 16) == 1)
  {
    v4 = type metadata accessor for EventLogXPCWriter();
    swift_allocObject();
    sub_1ABC346AC();
    *&v8 = v5;
    v6 = &off_1F2086628;
  }

  else
  {
    v6 = &protocol witness table for NoOpWriter;
    v4 = &type metadata for NoOpWriter;
  }

  v9 = v4;
  v10 = v6;
  os_unfair_lock_unlock(v3 + 6);

  swift_beginAccess();
  sub_1ABA84B54(qword_1ED86E090);
  sub_1ABA946C0(&v8, qword_1ED86E090);
  return swift_endAccess();
}

uint64_t static EventLogger.unsafeReplaceBackend(with:)()
{
  if (qword_1ED86B788 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  swift_beginAccess();
  v0 = sub_1ABA7EDF8();
  sub_1ABC33DD8(v0, v1);
  return swift_endAccess();
}

uint64_t sub_1ABC326AC()
{
  type metadata accessor for EventLogger.BackendSelectorHolder();
  swift_allocObject();
  v0 = sub_1ABC328DC();
  sub_1ABAD219C(&qword_1EB4D5A50, &unk_1ABF4CC50);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1EB4D0168 = result;
  return result;
}

uint64_t sub_1ABC32718()
{
  if (qword_1ED86B790 != -1)
  {
    sub_1ABA7C1FC(&qword_1ED86B790);
  }

  v0 = off_1EB4D0168;

  os_unfair_lock_lock(v0 + 6);
  if (*(*&v0[4]._os_unfair_lock_opaque + 16) == 1)
  {
    v1 = type metadata accessor for EventLogXPCWriter();
    swift_allocObject();
    sub_1ABC346AC();
    qword_1ED86E090[0] = v2;
    v3 = &off_1F2086628;
  }

  else
  {
    v3 = &protocol witness table for NoOpWriter;
    v1 = &type metadata for NoOpWriter;
  }

  qword_1ED86E0A8 = v1;
  unk_1ED86E0B0 = v3;
  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1ABC32820()
{
  sub_1ABA8C008();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1ABA94A40(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;

  return sub_1ABC31BB8(v2, v3, v4, v5);
}

uint64_t sub_1ABC328DC()
{
  v1 = sub_1ABF23C04();
  v3 = sub_1ABC2FA2C(v1, v2);

  v4 = v3 != 2 && (v3 & 1) != 0;
  *(v0 + 16) = v4;
  return v0;
}

IntelligencePlatform::DictionaryEvent __swiftcall DictionaryEvent.init(variant:data:)(Swift::String variant, Swift::OpaquePointer data)
{
  *v2 = variant;
  *(v2 + 16) = data;
  result.variant = variant;
  result.data = data;
  return result;
}

uint64_t DictionaryEvent.variant.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DictionaryEvent.variant.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DictionaryEvent.data.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1ABC32A80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC32B48(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x746E6169726176;
  }
}

uint64_t sub_1ABC32B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC32A80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC32BA8(uint64_t a1)
{
  v2 = sub_1ABC33FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC32BE4(uint64_t a1)
{
  v2 = sub_1ABC33FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DictionaryEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D59F8, &unk_1ABF4C968);
  sub_1ABA7BB64();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 16);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC33FFC();
  sub_1ABF252E4();
  v15 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v13 = v11;
    v14 = 1;
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABAFFFEC(&qword_1EB4D2070, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1ABF24F84();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t DictionaryEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D5A08, &qword_1ABF4C978);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC33FFC();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v6 = sub_1ABF24E14();
  v8 = v7;
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1ED86B400, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1ABF24E64();
  v9 = sub_1ABA8E0A8();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;

  sub_1ABA84B54(a1);
}

uint64_t static EventLogger.instant(named:parent:variant:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v14 = sub_1ABC2FCB8(a1, a2, a3, a4 & 1, a5, a6, a7);

  return v14;
}

uint64_t static EventLogger.interval(named:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v11[2] = a9;
  v11[3] = a10;
  v11[4] = a5;
  v11[5] = a6;
  return sub_1ABC301FC(a1, a2, a3, a4 & 1, sub_1ABC34050, v12, sub_1ABC34070, v11);
}

{
  *(v10 + 72) = a9;
  *(v10 + 80) = a10;
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 120) = a4;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 16) = a1;
  return sub_1ABAA3528();
}

uint64_t sub_1ABC33154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  result = a3();
  if (!v4)
  {
    *a4 = a1;
    a4[1] = a2;
    a4[2] = result;
  }

  return result;
}

uint64_t static EventLogger.interval(file:function:line:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1ABA84160();
  v36 = v17;
  v37 = v18;

  v19 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v19);
  MEMORY[0x1AC5A9410](v15, v14);
  v20 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v20);
  v38 = v13;
  v21 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v21);

  v32 = a8;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a8;
  v30 = a9;
  v22 = sub_1ABC301FC(v36, v37, a6, a7 & 1, sub_1ABC3465C, v31, sub_1ABC34654, v26);

  return v22;
}

uint64_t sub_1ABC33310()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 120);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v12 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = *(v0 + 72);
  *(v4 + 16) = v2;
  *(v4 + 24) = v12;
  *(v4 + 40) = v1;
  *(v0 + 96) = v5;
  *(v5 + 16) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = v12;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1ABC33454;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_1ABC30DCC(v10, v8, v9, v3 & 1, &unk_1ABF4C990, v4, sub_1ABC34654, v5);
}

uint64_t sub_1ABC33454()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {

    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC33594, 0, 0);
}

uint64_t sub_1ABC33594()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABC335F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1ABC336F4;

  return v9(a2);
}

uint64_t sub_1ABC336F4()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABC33828, 0, 0);
}

uint64_t sub_1ABC33828()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v0[3];
  v3[1] = v2;
  v3[2] = v1;
  sub_1ABA82A20();
  v6 = v4;

  return v6();
}

uint64_t sub_1ABC3389C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  result = a1();
  v8 = result;
  if (result)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
  return result;
}

uint64_t static EventLogger.interval(file:function:line:parent:variant:body:onThrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 112) = a11;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 64) = a6;
  *(v11 + 72) = a8;
  *(v11 + 152) = a7;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 24) = a1;
  return sub_1ABA7E724();
}

uint64_t sub_1ABC33930()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v21 = *(v0 + 32);

  v19 = *(v0 + 104);
  v20 = *(v0 + 80);
  v6 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v6);
  MEMORY[0x1AC5A9410](v5, v3);
  v7 = sub_1ABA8E924();
  MEMORY[0x1AC5A9410](v7);
  *(v0 + 16) = v4;
  v8 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v8);

  *(v0 + 120) = v21;
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v20;
  *(v9 + 40) = v1;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *(v10 + 16) = v19;
  *(v10 + 32) = v2;
  *(v10 + 40) = v20;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_1ABC33AF0;
  v12 = sub_1ABA7EDF8();

  return sub_1ABC30DCC(v12, v13, v14, v15, v16, v9, v17, v10);
}

uint64_t sub_1ABC33AF0()
{
  sub_1ABA8C008();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void static EventLogger.endInterval(with:variant:_:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v19 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v24[0] = v5;
  v24[1] = v3;
  v24[2] = v1;
  v14 = qword_1ED86B788;

  if (v14 != -1)
  {
    sub_1ABA8F3A0(&qword_1ED86B788);
  }

  sub_1ABA7F2A0(qword_1ED86E090, &v23);
  sub_1ABA93E64(qword_1ED86E090, v20);
  v15 = v21;
  v16 = v22;
  sub_1ABA93E20(v20, v21);
  sub_1ABF21E74();
  v17 = *(v16 + 24);
  v18 = sub_1ABC34124();
  v17(v7, v13, v24, &type metadata for DictionaryEvent, v18, v15, v16);
  (*(v9 + 8))(v13, v19);

  sub_1ABA84B54(v20);
  sub_1ABA7BC1C();
}

uint64_t *sub_1ABC33DD8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

unint64_t sub_1ABC33FFC()
{
  result = qword_1EB4D5A00;
  if (!qword_1EB4D5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A00);
  }

  return result;
}

uint64_t sub_1ABC34090()
{
  sub_1ABA8C008();
  sub_1ABAA586C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA94A40(v0);
  *v1 = v2;
  v3 = sub_1ABA900C4(v1);

  return sub_1ABC335F8(v3, v4, v5, v6, v7);
}

unint64_t sub_1ABC34124()
{
  result = qword_1EB4D5A10;
  if (!qword_1EB4D5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A10);
  }

  return result;
}

unint64_t sub_1ABC3417C()
{
  result = qword_1EB4D5A18;
  if (!qword_1EB4D5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A18);
  }

  return result;
}

unint64_t sub_1ABC341D0(uint64_t a1)
{
  *(a1 + 8) = sub_1ABC34200();
  result = sub_1ABC34254();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC34200()
{
  result = qword_1EB4D5A20;
  if (!qword_1EB4D5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A20);
  }

  return result;
}

unint64_t sub_1ABC34254()
{
  result = qword_1EB4D5A28;
  if (!qword_1EB4D5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogger(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABC343C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC344A8()
{
  result = qword_1EB4D5A30;
  if (!qword_1EB4D5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A30);
  }

  return result;
}

unint64_t sub_1ABC34500()
{
  result = qword_1EB4D5A38;
  if (!qword_1EB4D5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A38);
  }

  return result;
}

unint64_t sub_1ABC34558()
{
  result = qword_1EB4D5A40;
  if (!qword_1EB4D5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A40);
  }

  return result;
}

uint64_t sub_1ABC345AC()
{
  sub_1ABA7BC04();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1ABA94A40(v6);
  *v7 = v8;
  v7[1] = sub_1ABA7FDA0;

  return sub_1ABC31AB0(v2, v3, v4, v5);
}

void sub_1ABC346AC()
{
  sub_1ABA7E2A8();
  sub_1ABF21CF4();
  sub_1ABA7BB64();
  v34 = v2;
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - v5;
  sub_1ABA8409C();
  sub_1ABF246D4();
  sub_1ABA7BB64();
  v37 = v7;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C21C();
  v36 = v8;
  sub_1ABA8409C();
  sub_1ABF246C4();
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v10 = sub_1ABF238C4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1ABA7BC58();
  sub_1ABF21B34();
  swift_allocObject();
  v0[2] = sub_1ABF21B24();

  sub_1ABF21B04();

  sub_1ABF21AF4();
  swift_allocObject();
  v0[3] = sub_1ABF21AE4();
  v0[6] = [objc_allocWithZone(GDXPCEventLogService) init];
  sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
  sub_1ABF238A4();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1ABC39DBC(&qword_1EB4CE680, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
  sub_1ABB55B28(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0);
  sub_1ABF24964();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  v11 = v0;
  v0[5] = sub_1ABF246F4();
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED871EA8;
  v13 = sub_1ABED5424(0xD000000000000014, 0x80000001ABF8C900, 1852797802, 0xE400000000000000, qword_1ED871EA8);
  if (v13)
  {
    v14 = v13;
    v15 = v33;
    sub_1ABF21CA4();

    type metadata accessor for EventLogFilterManager();
    v17 = v34;
    v16 = v35;
    v18 = v32;
    (*(v34 + 16))(v32, v15, v35);
    v19 = EventLogFilterManager.__allocating_init(reading:)(v18);
    v21 = v20;
    (*(v17 + 8))(v15, v16, v19);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v22 = sub_1ABF237F4();
    sub_1ABA7AA24(v22, qword_1ED871B40);
    v23 = sub_1ABF237D4();
    v24 = sub_1ABF24674();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = [v12 bundlePath];
      v28 = sub_1ABF23C04();
      v30 = v29;

      v31 = sub_1ABADD6D8(v28, v30, &v39);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1ABA78000, v23, v24, "Failed to find Event Log policy file in %s", v25, 0xCu);
      sub_1ABA84B54(v26);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
    }

    v21 = 0;
  }

  v11[4] = v21;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC34BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(v5 + 32))
  {
    return 0;
  }

  EventLogFilterManager.shouldAllowEvent<A>(ofType:withName:)(a1, a2, a3, a4, a5);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v8 = 0;
    MEMORY[0x1AC5AB8D0](&v8, 8);
    result = v8;
  }

  while (!v8);
  return result;
}

void sub_1ABC34C44()
{
  sub_1ABA7E2A8();
  v42 = v2;
  v43 = v1;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1ABF23864();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v45 = v12;
  sub_1ABA8409C();
  v46 = sub_1ABF238C4();
  sub_1ABA7BB64();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v40 = *(v0 + 40);
    (*(v20 + 16))(&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v18, v24);
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v38 = v8;
    v39 = v10;
    v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v0;
    *(v29 + 24) = v5;
    (*(v20 + 32))(v29 + v26, v25, v18);
    v30 = (v29 + v27);
    v31 = v43;
    *v30 = v41;
    v30[1] = v31;
    *(v29 + v28) = v42;
    v48[4] = sub_1ABC39D24;
    v48[5] = v29;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 1107296256;
    sub_1ABA7F2B8();
    v48[2] = v32;
    v48[3] = &unk_1F2098F68;
    v33 = _Block_copy(v48);

    sub_1ABF238A4();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v34, v35, MEMORY[0x1E69E7F70]);
    sub_1ABAD219C(&qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    v36 = v45;
    v37 = v38;
    sub_1ABF24964();
    MEMORY[0x1AC5A9D40](0, v17, v36, v33);
    _Block_release(v33);
    (*(v39 + 8))(v36, v37);
    (*(v44 + 8))(v17, v46);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC34FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v9 = sub_1ABF21E34();
  v10 = sub_1ABF23BD4();
  v23[0] = 0;
  LODWORD(a6) = [v8 logStartWithId:a2 timestamp:v9 name:v10 parent:a6 error:v23];

  v11 = v23[0];
  if (a6)
  {

    v12 = v11;
  }

  else
  {
    v13 = v23[0];
    v14 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    v16 = v14;
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1ABA78000, v17, v18, "Could not log start: %@", v19, 0xCu);
      sub_1ABB24B18(v20);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1ABC3520C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1ABC35250()
{
  sub_1ABA7E2A8();
  v68 = v2;
  v69 = v1;
  v4 = v3;
  v67 = v5;
  v61 = v6;
  v8 = v7;
  v9 = sub_1ABF23864();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C21C();
  v65 = v13;
  sub_1ABA8409C();
  v66 = sub_1ABF238C4();
  sub_1ABA7BB64();
  v64 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v63 = v16;
  v60 = *(v4 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1ABA97B48();
  sub_1ABA7BB64();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v8;
  if (v8)
  {
    v58 = v11;
    v59 = v9;
    sub_1ABAA262C();
    v26 = sub_1ABF21B14();
    v57 = *(v69 + 40);
    v27 = *(v21 + 16);
    v56 = v26;
    v55 = v28;
    v27(&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v61, v19);
    v29 = v60;
    v30 = sub_1ABA969E8();
    v31(v30);
    v32 = (*(v21 + 80) + 48) & ~*(v21 + 80);
    v33 = (v23 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    v35 = v68;
    v36 = v69;
    *(v34 + 2) = v4;
    *(v34 + 3) = v35;
    v37 = v62;
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    (*(v21 + 32))(&v34[v32], v25, v19);
    (*(v29 + 32))(&v34[v33], v0, v4);
    v38 = &v34[(v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8];
    v39 = v55;
    *v38 = v56;
    v38[1] = v39;
    sub_1ABA8E930();
    v71[1] = 1107296256;
    sub_1ABA7F2B8();
    v71[2] = v40;
    v71[3] = &unk_1F2098F18;
    v41 = _Block_copy(v71);

    v42 = sub_1ABA90800();
    sub_1ABB0DBF0(v42, v43);
    sub_1ABF238A4();
    v70 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v44, v45, MEMORY[0x1E69E7F70]);
    v46 = sub_1ABAA030C();
    sub_1ABAD219C(v46, v47);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABAA5880();
    v48 = v59;
    sub_1ABF24964();
    v49 = sub_1ABA7AD1C();
    MEMORY[0x1AC5A9D40](v49);
    _Block_release(v41);
    v50 = sub_1ABA90800();
    sub_1ABA96210(v50, v51);
    sub_1ABA94A50();
    v52(&unk_1ABF4D7B0, v48);
    v53 = sub_1ABAA22D8();
    v54(v53);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC35680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void, void))
{
  v34[1] = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v12 = sub_1ABF21E34();
  v13 = *(a8[5](a7, a8) + 16);
  if (v13)
  {
    v33 = v11;
    v34[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v14 = 32;
    do
    {
      sub_1ABF251C4();
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v14 += 8;
      --v13;
    }

    while (v13);

    v11 = v33;
  }

  else
  {
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v15 = sub_1ABF240C4();

  a8[3](a7, a8);
  v16 = sub_1ABF23BD4();

  a8[4](a7, a8);
  if (v17)
  {
    v18 = sub_1ABF23BD4();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1ABF21DB4();
  v34[0] = 0;
  v20 = [v11 logEndWithId:a2 timestamp:v12 dependencies:v15 payloadType:v16 payloadVariant:v18 payload:v19 error:v34];

  v21 = v34[0];
  if (v20)
  {

    v22 = v21;
  }

  else
  {
    v23 = v34[0];
    v24 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v25 = sub_1ABF237F4();
    sub_1ABA7AA24(v25, qword_1ED871B40);
    v26 = v24;
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24664();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1ABA78000, v27, v28, "Could not log end: %@", v29, 0xCu);
      sub_1ABB24B18(v30);
      MEMORY[0x1AC5AB8B0](v30, -1, -1);
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1ABC35A7C()
{
  sub_1ABA7E2A8();
  v77 = v2;
  v78 = v1;
  v4 = v3;
  v76 = v5;
  v70 = v7;
  v71 = v6;
  v69 = v8;
  v66 = v9;
  v11 = v10;
  v12 = sub_1ABF23864();
  sub_1ABA7BB64();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v74 = v16;
  sub_1ABA8409C();
  v75 = sub_1ABF238C4();
  sub_1ABA7BB64();
  v73 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7C21C();
  v72 = v19;
  v67 = *(v4 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1ABA97B48();
  sub_1ABA7BB64();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v11;
  if (v11)
  {
    v64 = v14;
    v65 = v12;
    sub_1ABAA262C();
    v29 = sub_1ABF21B14();
    v63 = *(v78 + 40);
    v30 = *(v24 + 16);
    v62 = v29;
    v61 = v31;
    v30(&v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v22);
    v32 = v67;
    v33 = sub_1ABA969E8();
    v34(v33);
    v35 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v36 = (v26 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (*(v32 + 80) + v76 + 8) & ~*(v32 + 80);
    v37 = (v20 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v77;
    v40 = v78;
    *(v38 + 2) = v4;
    *(v38 + 3) = v39;
    v41 = v68;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    (*(v24 + 32))(&v38[v35], v28, v22);
    v42 = &v38[v36];
    v43 = v71;
    *v42 = v69;
    *(v42 + 1) = v43;
    *&v38[v76] = v70;
    (*(v32 + 32))(&v38[v66], v0, v4);
    v44 = &v38[v37];
    v45 = v61;
    *v44 = v62;
    v44[1] = v45;
    sub_1ABA8E930();
    v80[1] = 1107296256;
    sub_1ABA7F2B8();
    v80[2] = v46;
    v80[3] = &unk_1F2098EC8;
    v47 = _Block_copy(v80);

    v48 = sub_1ABA90800();
    sub_1ABB0DBF0(v48, v49);
    sub_1ABF238A4();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1ABA7D7EC();
    sub_1ABC39DBC(v50, v51, MEMORY[0x1E69E7F70]);
    v52 = sub_1ABAA030C();
    sub_1ABAD219C(v52, v53);
    sub_1ABB55B28(&qword_1EB4D5BB0, &qword_1EB4D5BA8, &unk_1ABF4D7B0);
    sub_1ABAA5880();
    v54 = v65;
    sub_1ABF24964();
    v55 = sub_1ABA7AD1C();
    MEMORY[0x1AC5A9D40](v55);
    _Block_release(v47);
    v56 = sub_1ABA90800();
    sub_1ABA96210(v56, v57);
    (*(v64 + 8))(&unk_1ABF4D7B0, v54);
    v58 = sub_1ABAA22D8();
    v59(v58);
  }

  sub_1ABA7BC1C();
}

void sub_1ABC35F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (**a11)(void, void))
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37 = *(a1 + 48);
  v13 = sub_1ABF21E34();
  v14 = sub_1ABF23BD4();
  v15 = *(a11[5](a10, a11) + 16);
  if (v15)
  {
    v36 = v14;
    v16 = a6;
    v38[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v17 = 32;
    do
    {
      sub_1ABF251C4();
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v17 += 8;
      --v15;
    }

    while (v15);

    a6 = v16;
    v14 = v36;
  }

  else
  {
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v18 = sub_1ABF240C4();

  a11[3](a10, a11);
  v19 = sub_1ABF23BD4();

  a11[4](a10, a11);
  if (v20)
  {
    v21 = sub_1ABF23BD4();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1ABF21DB4();
  v38[0] = 0;
  v23 = [v37 logInstantWithId:a2 timestamp:v13 name:v14 parent:a6 dependencies:v18 payloadType:v19 payloadVariant:v21 payload:v22 error:v38];

  v24 = v38[0];
  if (v23)
  {

    v25 = v24;
  }

  else
  {
    v26 = v38[0];
    v27 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1ED871B40);
    v29 = v27;
    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24664();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1ABA78000, v30, v31, "Could not log instant: %@", v32, 0xCu);
      sub_1ABB24B18(v33);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
      MEMORY[0x1AC5AB8B0](v32, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1ABC36338()
{
  v4[4] = j_nullsub_1;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1ABC36408;
  v4[3] = &unk_1F2074878;
  v0 = _Block_copy(v4);

  v1 = sub_1ABA7D000();
  dispatch_sync(v1, v2);
  _Block_release(v0);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABC36430()
{

  return v0;
}

uint64_t sub_1ABC36470()
{
  sub_1ABC36430();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC36534()
{
  sub_1ABC36338();
  v1 = *(v0 + 8);

  return v1();
}

void *EventLogEntry.init(id:timestamp:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for EventLogEntry(0);
  v8 = *(v7 + 20);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  (*(v9 + 32))(&a4[v8], a2);
  v10 = &a4[*(v7 + 24)];

  return memcpy(v10, a3, 0x51uLL);
}

uint64_t type metadata accessor for EventLogEntry(uint64_t a1)
{
  result = qword_1EB4CF358;
  if (!qword_1EB4CF358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABC36690(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E6174736E69 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABC3679C(char a1)
{
  if (!a1)
  {
    return 0x7472617473;
  }

  if (a1 == 1)
  {
    return 6581861;
  }

  return 0x746E6174736E69;
}

uint64_t sub_1ABC367E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC36878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC36940(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1ABC36978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC36A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC36A50(uint64_t a1)
{
  v2 = sub_1ABC37130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36A8C(uint64_t a1)
{
  v2 = sub_1ABC37130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC367E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC36AF8(uint64_t a1)
{
  v2 = sub_1ABC37280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36B34(uint64_t a1)
{
  v2 = sub_1ABC37280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC36BB8(uint64_t a1)
{
  v2 = sub_1ABC37184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36BF4(uint64_t a1)
{
  v2 = sub_1ABC37184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC36C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC36978(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC36C60(uint64_t a1)
{
  v2 = sub_1ABC372D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC36C9C(uint64_t a1)
{
  v2 = sub_1ABC372D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.EventData.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v68 = v24;
  v26 = v25;
  sub_1ABAD219C(&qword_1EB4D5A60, &qword_1ABF4CC70);
  sub_1ABA7BB64();
  v62 = v28;
  v63 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v61 = &v57 - v30;
  v60 = sub_1ABAD219C(&qword_1EB4D5A68, &qword_1ABF4CC78);
  sub_1ABA7BB64();
  v59 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v57 - v33;
  v35 = sub_1ABAD219C(&qword_1EB4D5A70, &qword_1ABF4CC80);
  sub_1ABA7BB64();
  v58 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v57 - v38;
  sub_1ABAD219C(&qword_1EB4D5A78, &qword_1ABF4CC88);
  sub_1ABA7BB64();
  v69 = v41;
  v70 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v57 - v43;
  v45 = *(v23 + 8);
  *&v66 = *v23;
  *(&v66 + 1) = v45;
  v46 = *(v23 + 24);
  v67 = *(v23 + 16);
  v48 = *(v23 + 32);
  v47 = *(v23 + 40);
  *&v64 = v46;
  *(&v64 + 1) = v48;
  *v65 = v47;
  v49 = *(v23 + 48);
  v57 = *(v23 + 64);
  *&v65[8] = v49;
  v50 = *(v23 + 80);
  v51 = v26[3];
  sub_1ABA93E20(v26, v51);
  sub_1ABC37130();
  sub_1ABF252E4();
  if (v50)
  {
    if (v50 == 1)
    {
      LOBYTE(v71) = 1;
      sub_1ABC37280();
      sub_1ABA900E8(&type metadata for EventLogEntry.EventData.EndCodingKeys, &v71);
      v71 = v66;
      v72 = v67;
      v73 = v64;
      v74 = *v65;
      sub_1ABC3722C();
      v52 = v60;
      sub_1ABF24F84();
      v53 = *(v59 + 8);
      v54 = v34;
    }

    else
    {
      LOBYTE(v71) = 2;
      sub_1ABC37184();
      v55 = v61;
      sub_1ABA900E8(&type metadata for EventLogEntry.EventData.InstantCodingKeys, &v71);
      sub_1ABAA2948();
      sub_1ABC371D8();
      v52 = v63;
      v56 = v68;
      sub_1ABF24F84();
      if (!v56)
      {
        v71 = v64;
        v72 = *v65;
        v74 = v57;
        v73 = *&v65[8];
        sub_1ABC3722C();
        sub_1ABA9752C();
        sub_1ABF24F84();
      }

      sub_1ABA94A50();
      v54 = v55;
    }

    v53(v54, v52);
  }

  else
  {
    LOBYTE(v71) = 0;
    sub_1ABC372D4();
    sub_1ABA900E8(&type metadata for EventLogEntry.EventData.StartCodingKeys, &v71);
    sub_1ABAA2948();
    sub_1ABC371D8();
    sub_1ABF24F84();
    (*(v58 + 8))(v39, v35);
  }

  (*(v69 + 8))(v44, v51);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC37130()
{
  result = qword_1EB4D5A80;
  if (!qword_1EB4D5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A80);
  }

  return result;
}

unint64_t sub_1ABC37184()
{
  result = qword_1EB4D5A88;
  if (!qword_1EB4D5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A88);
  }

  return result;
}

unint64_t sub_1ABC371D8()
{
  result = qword_1EB4D5A90;
  if (!qword_1EB4D5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A90);
  }

  return result;
}

unint64_t sub_1ABC3722C()
{
  result = qword_1EB4D5A98;
  if (!qword_1EB4D5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5A98);
  }

  return result;
}

unint64_t sub_1ABC37280()
{
  result = qword_1EB4D5AA0;
  if (!qword_1EB4D5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AA0);
  }

  return result;
}

unint64_t sub_1ABC372D4()
{
  result = qword_1EB4D5AA8;
  if (!qword_1EB4D5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AA8);
  }

  return result;
}

void EventLogEntry.EventData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v96 = v23;
  v26 = v25;
  v93 = v27;
  v91 = sub_1ABAD219C(&qword_1EB4D5AB0, &qword_1ABF4CC90);
  sub_1ABA7BB64();
  v88 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v94 = &v84 - v30;
  v90 = sub_1ABAD219C(&qword_1EB4D5AB8, &qword_1ABF4CC98);
  sub_1ABA7BB64();
  v92 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5AC0, &qword_1ABF4CCA0);
  sub_1ABA7BB64();
  v89 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v84 - v36;
  v38 = sub_1ABAD219C(&qword_1EB4D5AC8, &unk_1ABF4CCA8);
  sub_1ABA7BB64();
  v40 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BCE0();
  v42 = v26[3];
  v95 = v26;
  sub_1ABA93E20(v26, v42);
  sub_1ABC37130();
  v43 = v96;
  sub_1ABF252C4();
  if (v43)
  {
    goto LABEL_10;
  }

  v86 = v37;
  v87 = v40;
  v96 = v24;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v45 == v46 >> 1)
  {
    goto LABEL_9;
  }

  v85 = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = v38;
    LODWORD(v38) = *(v44 + v45);
    v48 = sub_1ABAD4E90();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      v53 = v47;
      if (v38)
      {
        v89 = v48;
        LODWORD(v86) = v38;
        if (v38 == 1)
        {
          LOBYTE(v97) = 1;
          sub_1ABC37280();
          sub_1ABAA353C(&type metadata for EventLogEntry.EventData.EndCodingKeys, &v97);
          v54 = v93;
          sub_1ABC38C40();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v64 = sub_1ABA97538();
          v65(v64);
          v66 = sub_1ABA7E738();
          v67(v66);
          v69 = v97;
          v70 = v98;
          v71 = v99;
          v73 = *(&v100 + 1);
          v72 = v100;
          *&v75 = *(&v101 + 1);
          v74 = v101;
          v76 = v95;
          LOBYTE(v38) = v86;
        }

        else
        {
          LOBYTE(v97) = 2;
          sub_1ABC37184();
          sub_1ABAA353C(&type metadata for EventLogEntry.EventData.InstantCodingKeys, &v97);
          v54 = v93;
          LOBYTE(v97) = 0;
          sub_1ABC38BEC();
          v63 = v91;
          sub_1ABF24E64();
          v38 = v87;
          v92 = v102;
          v81 = v63;
          v70 = v103;
          v71 = v104;
          sub_1ABC38C40();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v82 = sub_1ABA8B474();
          v83(v82, v81);
          (*(v38 + 8))(v96, v53);
          v72 = v97;
          v73 = v98;
          v74 = v99;
          v75 = v100;
          v68 = v101;
          v76 = v95;
          LOBYTE(v38) = v86;
          v69 = v92;
        }

        goto LABEL_16;
      }

      LOBYTE(v97) = 0;
      sub_1ABC372D4();
      v60 = v85;
      sub_1ABF24D94();
      if (!v60)
      {
        sub_1ABC38BEC();
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        v77 = sub_1ABA8B474();
        v78(v77, v33);
        v79 = sub_1ABA95870();
        v80(v79);
        v69 = v97;
        v70 = v98;
        v71 = v99;
        v76 = v95;
        v54 = v93;
LABEL_16:
        *v54 = v69;
        *(v54 + 8) = v70;
        *(v54 + 16) = v71;
        *(v54 + 24) = v72;
        *(v54 + 32) = v73;
        *(v54 + 40) = v74;
        *(v54 + 48) = v75;
        *(v54 + 64) = v68;
        *(v54 + 80) = v38;
        sub_1ABA84B54(v76);
        goto LABEL_11;
      }

      sub_1ABA94A50();
      v61 = sub_1ABA95870();
      v62(v61);
      swift_unknownObjectRelease();
LABEL_10:
      sub_1ABA84B54(v95);
LABEL_11:
      sub_1ABA7BC90();
      return;
    }

    v38 = v47;
LABEL_9:
    v55 = sub_1ABF24B44();
    swift_allocError();
    v57 = v56;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v57 = &type metadata for EventLogEntry.EventData;
    v58 = v96;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA94A50();
    v59(v58, v38);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t EventLogEntry.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventLogEntry(0) + 20);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t EventLogEntry.data.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for EventLogEntry(0) + 24);
  memcpy(__dst, (v1 + v3), 0x51uLL);
  memcpy(a1, (v1 + v3), 0x51uLL);
  return sub_1ABC38C94(__dst, &v5);
}

uint64_t EventLogEntry.Metadata.init(name:parent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t EventLogEntry.Metadata.name.setter()
{
  sub_1ABA7FC9C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1ABC37CB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC37D7C(char a1)
{
  if (a1)
  {
    return 0x746E65726170;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1ABC37DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABC37DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC37CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC37E24(uint64_t a1)
{
  v2 = sub_1ABC38CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC37E60(uint64_t a1)
{
  v2 = sub_1ABC38CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v35 = v24;
  v25 = sub_1ABAD219C(&qword_1EB4D5AE0, &qword_1ABF4CCB8);
  sub_1ABA7BB64();
  v27 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v34 - v29;
  v34 = *(v23 + 16);
  v31 = sub_1ABA95870();
  sub_1ABA93E20(v31, v32);
  sub_1ABC38CCC();
  sub_1ABF252E4();
  v33 = v35;
  sub_1ABF24F34();
  if (!v33)
  {
    sub_1ABA7BF34();
    sub_1ABF24FA4();
  }

  (*(v27 + 8))(v30, v25);
  sub_1ABA7BC90();
}

void EventLogEntry.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D5AF0, &qword_1ABF4CCC0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABC38CCC();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    v29 = sub_1ABF24E14();
    v31 = v30;
    v32 = sub_1ABF24E84();
    v33 = sub_1ABA7BFF0();
    v34(v33);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v32;

    sub_1ABA84B54(v25);
  }

  sub_1ABA7BC90();
}

uint64_t EventLogEntry.Payload.init(dependencies:payloadType:payloadVariant:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t EventLogEntry.Payload.dependencies.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EventLogEntry.Payload.payloadType.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t EventLogEntry.Payload.payloadVariant.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t EventLogEntry.Payload.payload.getter()
{
  v0 = sub_1ABA7D000();
  sub_1ABB0DBF0(v0, v1);
  return sub_1ABA7D000();
}

uint64_t EventLogEntry.Payload.payload.setter()
{
  sub_1ABA7FC9C();
  result = sub_1ABA96210(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_1ABC383A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464616F6C796170 && a2 == 0xEB00000000657079;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5664616F6C796170 && a2 == 0xEE00746E61697261;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABC38508(char a1)
{
  result = 0x6E65646E65706564;
  switch(a1)
  {
    case 1:
      result = 0x5464616F6C796170;
      break;
    case 2:
      result = 0x5664616F6C796170;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC385A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABC385FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC383A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC38624(uint64_t a1)
{
  v2 = sub_1ABC38D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC38660(uint64_t a1)
{
  v2 = sub_1ABC38D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventLogEntry.Payload.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABAD219C(&qword_1EB4D5AF8, &unk_1ABF4CCC8);
  sub_1ABA7BB64();
  v3 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v20 = v0[2];
  v21 = v7;
  v10 = v0[5];
  v18 = v0[4];
  v19 = v9;
  v16 = v0[6];
  v17 = v10;
  v11 = sub_1ABA90800();
  sub_1ABA93E20(v11, v12);
  v13 = sub_1ABC38D20();

  sub_1ABF252E4();
  v22 = v8;
  sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
  sub_1ABC0D68C(&qword_1EB4D4770, MEMORY[0x1E69E7368], MEMORY[0x1E69E6300]);
  sub_1ABA7BF34();
  sub_1ABF24F84();

  if (!v13)
  {
    v15 = v16;
    v14 = v17;
    LOBYTE(v22) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
    LOBYTE(v22) = 2;
    sub_1ABA90800();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
    v22 = v14;
    v23 = v15;
    sub_1ABB0DBF0(v14, v15);
    sub_1ABC38D74();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABA96210(v22, v23);
  }

  (*(v3 + 8))(v6, v1);
  sub_1ABA7BC90();
}

void EventLogEntry.Payload.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D5B08, &qword_1ABF4CCD8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC38D20();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
    sub_1ABC0D68C(&qword_1EB4D47C8, MEMORY[0x1E69E7390], MEMORY[0x1E69E6330]);
    sub_1ABA9752C();
    sub_1ABF24E64();
    v19 = v20;
    sub_1ABA9752C();
    v17 = sub_1ABF24E14();
    v18 = v6;
    LOBYTE(v20) = 2;
    v7 = sub_1ABF24DB4();
    v9 = v8;
    v16 = v7;
    sub_1ABC38DC8();
    sub_1ABA9752C();
    sub_1ABF24E64();
    v10 = sub_1ABA7BFF0();
    v11(v10);
    *v4 = v19;
    v4[1] = v17;
    v4[2] = v18;
    v4[3] = v16;
    v4[4] = v9;
    v4[5] = v20;
    v4[6] = v21;

    v12 = sub_1ABAA030C();
    sub_1ABB0DBF0(v12, v13);
    sub_1ABA84B54(v2);

    v14 = sub_1ABAA030C();
    sub_1ABA96210(v14, v15);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABC38BEC()
{
  result = qword_1EB4D5AD0;
  if (!qword_1EB4D5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AD0);
  }

  return result;
}

unint64_t sub_1ABC38C40()
{
  result = qword_1EB4D5AD8;
  if (!qword_1EB4D5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AD8);
  }

  return result;
}

unint64_t sub_1ABC38CCC()
{
  result = qword_1EB4D5AE8;
  if (!qword_1EB4D5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5AE8);
  }

  return result;
}

unint64_t sub_1ABC38D20()
{
  result = qword_1EB4D5B00;
  if (!qword_1EB4D5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B00);
  }

  return result;
}

unint64_t sub_1ABC38D74()
{
  result = qword_1EB4D0230;
  if (!qword_1EB4D0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0230);
  }

  return result;
}

unint64_t sub_1ABC38DC8()
{
  result = qword_1EB4D0228;
  if (!qword_1EB4D0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0228);
  }

  return result;
}

uint64_t dispatch thunk of EventLogBackend.sync()()
{
  sub_1ABA7FC9C();
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1ABB385FC;

  return v6(v1, v0);
}

uint64_t sub_1ABC38FEC(uint64_t a1)
{
  result = sub_1ABF21EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC39070(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ABC390A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABC390DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABC39130(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogEntry.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogEntry.EventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABC39364(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABC39410(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC394F0()
{
  result = qword_1EB4D5B10;
  if (!qword_1EB4D5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B10);
  }

  return result;
}

unint64_t sub_1ABC39548()
{
  result = qword_1EB4D5B18;
  if (!qword_1EB4D5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B18);
  }

  return result;
}

unint64_t sub_1ABC395A0()
{
  result = qword_1EB4D5B20;
  if (!qword_1EB4D5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B20);
  }

  return result;
}

unint64_t sub_1ABC395F8()
{
  result = qword_1EB4D5B28;
  if (!qword_1EB4D5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B28);
  }

  return result;
}

unint64_t sub_1ABC39650()
{
  result = qword_1EB4D5B30;
  if (!qword_1EB4D5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B30);
  }

  return result;
}

unint64_t sub_1ABC396A8()
{
  result = qword_1EB4D5B38;
  if (!qword_1EB4D5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B38);
  }

  return result;
}

unint64_t sub_1ABC39700()
{
  result = qword_1EB4D5B40;
  if (!qword_1EB4D5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B40);
  }

  return result;
}

unint64_t sub_1ABC39758()
{
  result = qword_1EB4D5B48;
  if (!qword_1EB4D5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B48);
  }

  return result;
}

unint64_t sub_1ABC397B0()
{
  result = qword_1EB4D5B50;
  if (!qword_1EB4D5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B50);
  }

  return result;
}

unint64_t sub_1ABC39808()
{
  result = qword_1EB4D5B58;
  if (!qword_1EB4D5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B58);
  }

  return result;
}

unint64_t sub_1ABC39860()
{
  result = qword_1EB4D5B60;
  if (!qword_1EB4D5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B60);
  }

  return result;
}

unint64_t sub_1ABC398B8()
{
  result = qword_1EB4D5B68;
  if (!qword_1EB4D5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B68);
  }

  return result;
}

unint64_t sub_1ABC39910()
{
  result = qword_1EB4D5B70;
  if (!qword_1EB4D5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B70);
  }

  return result;
}

unint64_t sub_1ABC39968()
{
  result = qword_1EB4D5B78;
  if (!qword_1EB4D5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B78);
  }

  return result;
}

unint64_t sub_1ABC399C0()
{
  result = qword_1EB4D5B80;
  if (!qword_1EB4D5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B80);
  }

  return result;
}

unint64_t sub_1ABC39A18()
{
  result = qword_1EB4D5B88;
  if (!qword_1EB4D5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B88);
  }

  return result;
}

unint64_t sub_1ABC39A70()
{
  result = qword_1EB4D5B90;
  if (!qword_1EB4D5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B90);
  }

  return result;
}

unint64_t sub_1ABC39AC8()
{
  result = qword_1EB4D5B98;
  if (!qword_1EB4D5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5B98);
  }

  return result;
}

void sub_1ABC39B1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(*(v1 - 8) + 80) + v8 + 8) & ~*(*(v1 - 8) + 80);
  v10 = (v0 + ((*(*(v1 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1ABC35F18(v0[4], v0[5], v0 + v5, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), v0 + v9, *v10, v10[1], v1, v2);
}

void sub_1ABC39C34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v3);
  sub_1ABA81898();
  v7 = (v6 + *(v5 + 80)) & ~*(v5 + 80);
  v9 = v0[4];
  v10 = v0[5];
  v11 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1ABC35680(v9, v10, v0 + v4, v0 + v7, v12, v13, v1, v2);
}

void sub_1ABC39D24()
{
  v1 = sub_1ABF21EB4();
  sub_1ABA7BBD0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = (v0 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + v8);

  sub_1ABC34FB8(v9, v10, v0 + v6, v12, v13, v14);
}

uint64_t sub_1ABC39DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double EventLogFilterManager.__allocating_init(reading:)(uint64_t a1)
{
  v2 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABF217F4();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABF217C4();
  v6 = sub_1ABF21D34();
  v8 = v7;
  sub_1ABC3A83C();
  sub_1ABF217D4();
  (*(v4 + 8))(a1, v2);
  sub_1ABA96210(v6, v8);

  v9 = swift_allocObject();
  result = *&v11;
  *(v9 + 16) = v11;
  return result;
}

void EventLogFilterManager.shouldAllowEvent<A>(ofType:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(a4, a5);
  sub_1ABB130E0();
  v6 = v5;

  if ((v6 & 1) == 0)
  {

    sub_1ABB130E0();
  }
}

uint64_t sub_1ABC3A230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546465776F6C6C61 && a2 == 0xEC00000073657079;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6465776F6C6C61 && a2 == 0xEC00000073656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC3A304(char a1)
{
  if (a1)
  {
    return 0x4E6465776F6C6C61;
  }

  else
  {
    return 0x546465776F6C6C61;
  }
}

uint64_t sub_1ABC3A344(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5BC8, &qword_1ABF4D8A8);
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3A8F0();
  sub_1ABF252E4();
  v16 = a2;
  v15 = 0;
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABC3A944(&qword_1EB4CF7F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  sub_1ABA7F2CC();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1ABA7F2CC();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1ABC3A4CC(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5BC0, &qword_1ABF4D898);
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3A8F0();
  sub_1ABF252C4();
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  v11 = 0;
  sub_1ABC3A944(&unk_1ED86B980, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1ABA7D804();
  v9 = v12;
  v11 = 1;
  sub_1ABA7D804();
  (*(v4 + 8))(v7, v2);
  sub_1ABA84B54(a1);
  return v9;
}

uint64_t sub_1ABC3A6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC3A230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC3A6D4(uint64_t a1)
{
  v2 = sub_1ABC3A8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC3A710(uint64_t a1)
{
  v2 = sub_1ABC3A8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC3A74C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABC3A4CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t EventLogFilterManager.__allocating_init(allowTypePolicies:allowNamePolicies:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EventLogFilterManager.init(allowTypePolicies:allowNamePolicies:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t EventLogFilterManager.deinit()
{

  return v0;
}

uint64_t EventLogFilterManager.__deallocating_deinit()
{
  EventLogFilterManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABC3A83C()
{
  result = qword_1ED86B600;
  if (!qword_1ED86B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B600);
  }

  return result;
}

unint64_t sub_1ABC3A8F0()
{
  result = qword_1ED86B618;
  if (!qword_1ED86B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B618);
  }

  return result;
}

uint64_t sub_1ABC3A944(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogPolicies.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC3AA90()
{
  result = qword_1EB4D5BD0;
  if (!qword_1EB4D5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BD0);
  }

  return result;
}

unint64_t sub_1ABC3AAE8()
{
  result = qword_1ED86B608;
  if (!qword_1ED86B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B608);
  }

  return result;
}

unint64_t sub_1ABC3AB40()
{
  result = qword_1ED86B610;
  if (!qword_1ED86B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B610);
  }

  return result;
}

uint64_t EventViewDateType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABC3AC30()
{
  result = qword_1EB4D5BD8;
  if (!qword_1EB4D5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventViewDateType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

IntelligencePlatform::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 0xD)
  {
    v2 = 13;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABC3AD84@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

void static Exit.exit(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1ED871B40);
  v3 = sub_1ABF237D4();
  v4 = sub_1ABF24684();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1ABA78000, v3, v4, "Exiting with reason: %d", v5, 8u);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
  }

  _exit(v1);
}

unint64_t sub_1ABC3AE90()
{
  result = qword_1EB4D5BE0;
  if (!qword_1EB4D5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABC3B0F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  v8 = sub_1ABAAEA48(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

uint64_t sub_1ABC3B1DC(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABC3B21C()
{
  sub_1ABB0B9E4();

  return swift_deallocClassInstance();
}

uint64_t ExpirableLazyBox.__allocating_init(cleanupAfter:tolerance:clock:initializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ExpirableLazyBox.init(cleanupAfter:tolerance:clock:initializer:)(a1, a2, a3, a4, a5);
  return v10;
}

char *ExpirableLazyBox.init(cleanupAfter:tolerance:clock:initializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  *(v6 + 2) = a4;
  *(v6 + 3) = a5;
  v9 = v8[10];
  sub_1ABA80B40();
  v11 = v10;
  (*(v12 + 16))(&v6[v13], v14, v9);
  v15 = *(*v6 + 136);
  v16 = v8[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1ABF247E4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v6[v15], a2, v18);
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(&v6[*(*v6 + 128)], a1, AssociatedTypeWitness);
  v21 = type metadata accessor for ExpirableLazyBox.State(0, v9, v8[11], v16);
  v27 = sub_1ABC3B1DC(0, 0);
  v22 = sub_1ABC3B0F4(&v27, v21);
  (*(v11 + 8))(a3, v9);
  (*(v19 + 8))(a2, v18);
  (*(v20 + 8))(a1, AssociatedTypeWitness);
  *(v6 + 4) = v22;
  return v6;
}

uint64_t sub_1ABC3B534(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return ExpirableLazyBox.wrappedValue.setter(v3);
}

uint64_t ExpirableLazyBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v10[2] = a1;
  sub_1ABA7F288();
  sub_1ABA7F288();
  v5 = *(v4 + 88);
  sub_1ABA7F288();
  v8 = type metadata accessor for ExpirableLazyBox.State(0, v7, v5, *(v6 + 96));
  sub_1ABA7AEC8(sub_1ABC3B874, v10, v3, v8, MEMORY[0x1E69E7CA8] + 8);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_1ABC3B6D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a3 + 88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v10 = *v9;
  if (*(*v9 + 24))
  {

    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242B4();
  }

  type metadata accessor for ExpirableLazyBox.Box(0, *(v4 + 80), v5, *(v4 + 96));
  (*(v6 + 16))(v8, a2, v5);
  *(v10 + 16) = sub_1ABAAD0D0(v8);

  return sub_1ABA7B2EC(v10);
}

void (*ExpirableLazyBox.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_1ABAFDD10(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  sub_1ABA7D5F0();
  *(v5 + 8) = *(v4 + 88);
  sub_1ABA7BD7C();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = sub_1ABAFDD10(v9);
  v3[4] = sub_1ABAFDD10(v9);
  ExpirableLazyBox.wrappedValue.getter();
  return sub_1ABC3B964;
}

void sub_1ABC3B964(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    ExpirableLazyBox.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ExpirableLazyBox.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *ExpirableLazyBox.deinit()
{
  v1 = *v0;

  sub_1ABA7D5F0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 120)], *(v1 + 80));
  sub_1ABA7D5F0();
  v4 = *(v3 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v4], AssociatedTypeWitness);
  sub_1ABA7D5F0();
  v7 = *(v6 + 136);
  v8 = sub_1ABF247E4();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t ExpirableLazyBox.__deallocating_deinit()
{
  ExpirableLazyBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC3BBC0(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1ABF247E4();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1ABC3BD98(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABC3BE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABC3BE90();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABC3BE90()
{
  result = qword_1EB4D5BE8;
  if (!qword_1EB4D5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BE8);
  }

  return result;
}

uint64_t ExtendedTriple.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ExtendedTriple.predicate.setter(uint64_t a1)
{
  sub_1ABA7E74C(a1);

  result = v6;
  *(v1 + 8) = v6;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t ExtendedTriple.relationshipPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 ExtendedTriple.relationshipPredicate.setter(uint64_t a1)
{
  sub_1ABA7E74C(a1);

  result = v6;
  *(v1 + 56) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t ExtendedTriple.object.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ExtendedTriple.object.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t static ExtendedTriple.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[6];
  v2 = a1[7];
  v4 = a1[8];
  v5 = a1[12];
  v6 = a1[13];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a1[1] == a2[1] && a1[2] == a2[2];
  v11 = a2[12];
  v12 = a2[13];
  if (v10)
  {
    if (v3 == v8)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v13 = sub_1ABF25054();
  result = 0;
  if ((v13 & 1) == 0 || v3 != v8)
  {
    return result;
  }

LABEL_10:
  v15 = v2 == v7 && v4 == v9;
  if (!v15 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v11 && v6 == v12)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABC3C298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC3C44C(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC3C500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC3C298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC3C528(uint64_t a1)
{
  v2 = sub_1ABC3C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC3C564(uint64_t a1)
{
  v2 = sub_1ABC3C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtendedTriple.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5BF0, &qword_1ABF4DCA0);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = *v1;
  v11 = v1[2];
  v12 = v1[3];
  v28 = v1[1];
  v29 = v11;
  v30 = v1[4];
  v36 = *(v1 + 20);
  v13 = v1[7];
  v26 = v1[6];
  v27 = v12;
  v14 = v1[8];
  v23 = v1[9];
  v24 = v1[10];
  v25 = v13;
  v22 = *(v1 + 44);
  v15 = v1[13];
  v20[1] = v1[12];
  v20[2] = v15;
  v21 = v14;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3C89C();
  sub_1ABF252E4();
  v31 = v10;
  v37 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7D598();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v17 = v25;
    v16 = v26;
    v31 = v28;
    v32 = v29;
    v33 = v27;
    v34 = v30;
    v35 = v36;
    v37 = 1;
    sub_1ABAA68CC();

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    v31 = v16;
    v37 = 2;
    sub_1ABC3C8F0();
    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v31 = v17;
    v32 = v21;
    v18 = v24;
    v33 = v23;
    v34 = v24;
    v35 = v22;
    v37 = 3;

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    if (!v18)
    {
      LOBYTE(v31) = 4;
      sub_1ABA7BF34();
      sub_1ABF24F34();
    }
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABC3C89C()
{
  result = qword_1EB4D5BF8;
  if (!qword_1EB4D5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5BF8);
  }

  return result;
}

unint64_t sub_1ABC3C8F0()
{
  result = qword_1EB4DB360;
  if (!qword_1EB4DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB360);
  }

  return result;
}

uint64_t ExtendedTriple.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5C00, &qword_1ABF4DCA8);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC3C89C();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1ABAE8B74();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v11 = v35;
  LOBYTE(__src[0]) = 1;
  sub_1ABAA6FE4();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v32 = v11;
  v31 = v35;
  v33 = v36;
  v12 = v38;
  v30 = v37;
  v49 = v39;
  LOBYTE(__src[0]) = 2;
  sub_1ABC3CD80();
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v29 = v35;
  LOBYTE(__src[0]) = 3;
  sub_1ABA8F3C0();
  sub_1ABA80B50();
  sub_1ABF24E64();
  v13 = v36;
  v27 = v35;
  v26 = v37;
  v28 = v38;
  v25 = v39;
  v50 = 4;
  sub_1ABA80B50();
  v14 = sub_1ABF24E14();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  __src[0] = v32;
  v18 = v31;
  __src[1] = v31;
  v19 = v33;
  __src[2] = v33;
  v20 = v13;
  v24 = v13;
  v21 = v30;
  __src[3] = v30;
  __src[4] = v12;
  LOWORD(__src[5]) = v49;
  __src[6] = v29;
  __src[7] = v27;
  __src[8] = v20;
  __src[9] = v26;
  __src[10] = v28;
  LOWORD(__src[11]) = v25;
  __src[12] = v14;
  __src[13] = v17;
  memcpy(a2, __src, 0x70uLL);
  sub_1ABB345D8(__src, &v35);
  sub_1ABA84B54(a1);
  v35 = v32;
  v36 = v18;
  v37 = v19;
  v38 = v21;
  v39 = v12;
  v40 = v49;
  v41 = v29;
  v42 = v27;
  v43 = v24;
  v44 = v26;
  v45 = v28;
  v46 = v25;
  v47 = v14;
  v48 = v17;
  return sub_1ABB34634(&v35);
}

unint64_t sub_1ABC3CD80()
{
  result = qword_1EB4DB370;
  if (!qword_1EB4DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB370);
  }

  return result;
}

unint64_t sub_1ABC3CDD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1ABC3CE20(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC3CF04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABC3CF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABC3CFC4()
{
  result = qword_1EB4D5C08;
  if (!qword_1EB4D5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C08);
  }

  return result;
}

unint64_t sub_1ABC3D01C()
{
  result = qword_1EB4D5C10;
  if (!qword_1EB4D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C10);
  }

  return result;
}

unint64_t sub_1ABC3D074()
{
  result = qword_1EB4D5C18;
  if (!qword_1EB4D5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C18);
  }

  return result;
}

_BYTE *sub_1ABC3D0C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC3D1C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABC3CDD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1ABC3D1F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABC3CE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABC3D224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC3D50C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1ABC3D270(uint64_t a1)
{
  v2 = sub_1ABC3D560();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1ABC3D2C0()
{
  result = qword_1EB4CF1B0;
  if (!qword_1EB4CF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1B0);
  }

  return result;
}

unint64_t sub_1ABC3D318()
{
  result = qword_1EB4D5C20;
  if (!qword_1EB4D5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C20);
  }

  return result;
}

uint64_t sub_1ABC3D36C(uint64_t a1)
{
  v2 = sub_1ABC3D2C0();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1ABC3D3B8(uint64_t a1)
{
  v2 = sub_1ABC3D2C0();

  return MEMORY[0x1EEE09A88](a1, v2);
}

unint64_t sub_1ABC3D408()
{
  result = qword_1EB4CF1C8;
  if (!qword_1EB4CF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1C8);
  }

  return result;
}

unint64_t sub_1ABC3D460()
{
  result = qword_1EB4CF1C0;
  if (!qword_1EB4CF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1C0);
  }

  return result;
}

unint64_t sub_1ABC3D4B8()
{
  result = qword_1EB4CF1D0;
  if (!qword_1EB4CF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1D0);
  }

  return result;
}

unint64_t sub_1ABC3D50C()
{
  result = qword_1EB4CF1A8;
  if (!qword_1EB4CF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1A8);
  }

  return result;
}

unint64_t sub_1ABC3D560()
{
  result = qword_1EB4CF1D8;
  if (!qword_1EB4CF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1D8);
  }

  return result;
}

__n128 sub_1ABC3D5B8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 8))(&v24);
  v14 = v24;
  v3 = sub_1ABA7BE8C();
  v4(v3);
  v5 = sub_1ABA7BE8C();
  v6(v5);
  v7 = sub_1ABA7BE8C();
  v8(v7);
  v9 = sub_1ABA7BE8C();
  v11 = v10(v9);
  *a2 = v14;
  *(a2 + 8) = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v19;
  result = v15;
  *(a2 + 56) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  return result;
}

BOOL sub_1ABC3D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6(&v14, AssociatedTypeWitness, a5);
  v8 = v14;
  v6(&v13, AssociatedTypeWitness, a5);
  if (v8 < v13)
  {
    return 1;
  }

  v6(&v14, AssociatedTypeWitness, a5);
  v10 = v14;
  v6(&v13, AssociatedTypeWitness, a5);
  if (v10 != v13)
  {
    return 0;
  }

  v11 = *(a5 + 24);
  v11(&v14, AssociatedTypeWitness, a5);
  v12 = v14;
  v11(&v13, AssociatedTypeWitness, a5);
  return v12 < v13;
}

uint64_t Fact.Object.asString.getter(uint64_t a1)
{
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v7;
  }

  (*(v3 + 8))(v7, a1);
  return 0;
}

uint64_t Fact.Object.asEntityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = (v6 - v5);
  (*(v3 + 16))(v6 - v5);
  sub_1ABA7ECFC();
  result = swift_getEnumCaseMultiPayload();
  v9 = result;
  if (result == 2)
  {
    v12 = *v7;
  }

  else
  {
    v10 = sub_1ABA7ECFC();
    result = v11(v10);
    v12 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v9 != 2;
  return result;
}

uint64_t Fact.Object.asSubentity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  sub_1ABA7ECFC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(a1 + 16);
    (*(*(v10 - 8) + 32))(a2, v9, v10);
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v14 = sub_1ABA7ECFC();
    v15(v14);
    v13 = *(a1 + 16);
    v11 = a2;
    v12 = 1;
  }

  return sub_1ABA7B9B4(v11, v12, 1, v13);
}

uint64_t sub_1ABC3DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(*(a2 + 16) - 8) + 16))(a3, a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1ABC3DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  swift_storeEnumTagMultiPayload();
}

uint64_t Fact.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t Fact.object.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Fact.Object(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t sub_1ABC3DDD4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC3DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Fact.Object(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC3DEA4(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = v4 + (((*(v3 + 80) & 0xF8) + 41) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v8 = 8 * v7;
  if (v7 > 3)
  {
    goto LABEL_10;
  }

  v10 = (a2 - 0x7FFFFFFF + ~(-1 << v8)) >> v8;
  if (v10 > 0xFFFE)
  {
    v9 = *(a1 + v7);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v10 <= 0xFE)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
LABEL_5:
    v5 = *(a1 + 1);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v11) ^ 0x80000000;
}

void sub_1ABC3E010(char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 + (((*(v6 + 80) & 0xF8) + 41) & ~(*(v6 + 80) & 0xF8) & 0x1F8) + 1;
  v9 = 8 * v8;
  if (a3 < 0)
  {
    if (v8 <= 3)
    {
      v11 = (a3 - 0x7FFFFFFF + ~(-1 << v9)) >> v9;
      if (v11 > 0xFFFE)
      {
        v10 = 4;
        if (a2 < 0)
        {
LABEL_17:
          v13 = a2 & 0x7FFFFFFF;
          if (v8 < 4)
          {
            v14 = (v13 >> v9) + 1;
            if (v8)
            {
              v15 = a2 & ~(-1 << v9);
              bzero(a1, v8);
              if (v8 == 3)
              {
                *a1 = v15;
                a1[2] = BYTE2(v15);
              }

              else if (v8 == 2)
              {
                *a1 = v15;
              }

              else
              {
                *a1 = v4;
              }
            }
          }

          else
          {
            bzero(a1, v8);
            *a1 = v13;
            v14 = 1;
          }

          switch(v10)
          {
            case 1:
              a1[v8] = v14;
              break;
            case 2:
              *&a1[v8] = v14;
              break;
            case 3:
              goto LABEL_39;
            case 4:
              *&a1[v8] = v14;
              break;
            default:
              return;
          }

          return;
        }
      }

      else
      {
        if (v11 < 0xFF)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }

        if (a2 < 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v10 = 1;
      if (a2 < 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v10 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }
  }

  switch(v10)
  {
    case 1:
      a1[v8] = 0;
      if (a2)
      {
        goto LABEL_29;
      }

      return;
    case 2:
      *&a1[v8] = 0;
      goto LABEL_28;
    case 3:
LABEL_39:
      __break(1u);
      return;
    case 4:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        *(a1 + 1) = (a2 - 1);
      }

      break;
  }
}

uint64_t sub_1ABC3E238(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABC3E2B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
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
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
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
    goto LABEL_22;
  }

LABEL_14:
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1ABC3E3D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
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

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABC3E59C()
{
  result = sub_1ABF23C04();
  qword_1EB4D5C28 = result;
  unk_1EB4D5C30 = v1;
  return result;
}

uint64_t static GDFeatureKey.separator.getter()
{
  if (qword_1EB4D0380 != -1)
  {
    sub_1ABA8F3E4(&qword_1EB4D0380);
  }

  v0 = qword_1EB4D5C28;

  return v0;
}

void __swiftcall GDFeatureKey.init(string:)(GDFeatureKey_optional *__return_ptr retstr, Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = objc_autoreleasePoolPush();
  v13 = countAndFlagsBits;
  v14 = object;
  if (qword_1EB4D0380 != -1)
  {
    sub_1ABA8F3E4(&qword_1EB4D0380);
  }

  v11 = qword_1EB4D5C28;
  v12 = unk_1EB4D5C30;
  sub_1ABAE28EC();
  v5 = sub_1ABF24884();

  objc_autoreleasePoolPop(v4);
  v6 = *(v5 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v5 + 72);
    }

    v8 = sub_1ABF23BD4();

    v9 = sub_1ABF23BD4();

    if (v7)
    {
      v10 = sub_1ABF23BD4();
    }

    else
    {
      v10 = 0;
    }

    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithViewName:v8 featureName:v9 subidentifierName:{v10, v11, v12, v13, v14}];
  }

  else
  {
  }
}

Swift::Bool __swiftcall GDFeatureKey.isSubidentifierOf(parent:)(GDFeatureKey parent)
{
  isa = parent.super.isa;
  sub_1ABC3E97C(parent.super.isa);
  if (v3)
  {

    return 0;
  }

  sub_1ABC3E97C(v1);
  if (!v5)
  {
    return 0;
  }

  v6 = [v1 viewName];
  v7 = sub_1ABF23C04();
  v9 = v8;

  v10 = [(objc_class *)isa viewName];
  v11 = sub_1ABF23C04();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1ABF25054();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [v1 featureName];
  v17 = sub_1ABF23C04();
  v19 = v18;

  v20 = [(objc_class *)isa featureName];
  v21 = sub_1ABF23C04();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

    return 1;
  }

  else
  {
    v25 = sub_1ABF25054();

    return v25 & 1;
  }
}

uint64_t sub_1ABC3E97C(void *a1)
{
  v1 = [a1 subidentifierName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABC3E9F0()
{
  v0 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABB9009C(v0, qword_1EB4CF210);
  sub_1ABA7AA24(v0, qword_1EB4CF210);
  return sub_1ABF22CE4();
}

void sub_1ABC3EA50()
{
  sub_1ABA7BCA8();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABAA4E50(v15, v16, v17, v18, v19, v20, v21, v22, v37);
  v23 = v3[1];
  v38 = *v3;
  v39 = v23;
  v25 = v3[2];
  v24 = v3[3];
  v26 = qword_1EB4CF208;

  if (v26 != -1)
  {
    sub_1ABA7D854(&qword_1EB4CF208);
  }

  v27 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v27, qword_1EB4CF210);
  v28 = sub_1ABF22D14();
  v47 = v28;
  v48 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v46);
  sub_1ABA7F2F8();
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0130];
  v42 = v25;
  v43 = v24;
  v29 = sub_1ABF22424();
  v30 = MEMORY[0x1E699FE60];
  v50 = v29;
  v51 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v49);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v42);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v49);
  v47 = v28;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0130];
  v42 = v38;
  v43 = v39;
  v50 = v29;
  v51 = v30;
  sub_1ABA93DC0(v49);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v42);
  sub_1ABA84B54(v46);
  sub_1ABA8F404();
  sub_1ABAB47C4(v31, &qword_1EB4D50F0, &unk_1ABF3A620, v32);
  sub_1ABF225A4();
  v33 = *(v6 + 8);
  v33(v10, v4);
  sub_1ABA84B54(v49);
  sub_1ABA8E954();
  sub_1ABAB47C4(v34, &qword_1EB4D50F0, &unk_1ABF3A620, v35);
  sub_1ABA9A480();
  sub_1ABF22754();
  v33(v13, v4);
  sub_1ABC3ED38(&unk_1ABF3A620, v40, v41);
  v36 = sub_1ABAA5360();
  (v33)(v36);
  sub_1ABA7BC90();
}

uint64_t sub_1ABC3ED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D5C48, &qword_1ABF4E1A8);
  sub_1ABF22464();
  if (!v3)
  {
    if (v7 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
      sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
      sub_1ABB0DBF0(v6, v7);
      a2 = sub_1ABF246B4();
      sub_1ABAC9310(v6, v7);
      sub_1ABAC9310(v6, v7);
    }
  }

  return a2;
}

void sub_1ABC3EE80()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v38 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v37 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8E270(v6, v7, v8, v9, v10, v11, v12, v13, v35);
  v39 = v14;
  v50 = v15;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854(&qword_1EB4CF208);
  }

  v18 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v18, qword_1EB4CF210);
  v19 = sub_1ABF22D14();
  v20 = MEMORY[0x1E69A0050];
  v45 = v19;
  v46 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v44);
  sub_1ABA7F2F8();
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69A0130];
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0130];
  v40 = v16;
  v41 = v17;
  v23 = sub_1ABF22424();
  v24 = MEMORY[0x1E699FE60];
  v48 = v23;
  v49 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v47);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v40);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v47);
  v45 = v19;
  v46 = v20;
  sub_1ABA93DC0(v44);
  sub_1ABA80B5C();
  v42 = v21;
  v43 = v22;
  v40 = v39;
  v41 = v50;
  v48 = v23;
  v49 = v24;
  sub_1ABA93DC0(v47);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v40);
  sub_1ABA84B54(v44);
  sub_1ABA8F404();
  sub_1ABAB47C4(v25, v26, v27, v28);
  sub_1ABF225A4();
  v29 = *(v37 + 8);
  v30 = sub_1ABA9EE9C();
  v29(v30);
  sub_1ABA84B54(v47);
  v45 = v19;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0130];
  v40 = 0;
  v41 = 0xE000000000000000;
  v48 = v23;
  v49 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v47);
  sub_1ABA9357C();
  sub_1ABF22B04();
  sub_1ABB6EEA4(&v40);
  sub_1ABA94A5C();
  sub_1ABF225A4();
  (v29)(v36, v38);
  sub_1ABA84B54(v47);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  v32 = sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABA9080C(v32, v33, v32);
  v34 = sub_1ABA9EE9C();
  v29(v34);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

void sub_1ABC3F284()
{
  sub_1ABA7BCA8();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  v45 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v46 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA4E50(v16, v17, v18, v19, v20, v21, v22, v23, v42);
  v24 = v3[1];
  v43 = *v3;
  v26 = v3[2];
  v25 = v3[3];
  v27 = v3[4];
  v28 = v3[5];
  v44 = v27;
  v29 = qword_1EB4CF208;

  if (v29 != -1)
  {
    sub_1ABA7D854(&qword_1EB4CF208);
  }

  v30 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v30, qword_1EB4CF210);
  v31 = sub_1ABF22D14();
  v54 = v31;
  v55 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v53);
  sub_1ABA7F2F8();
  v51 = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69A0130];
  v49 = v26;
  v50 = v25;
  v32 = sub_1ABF22424();
  v57 = v32;
  v58 = MEMORY[0x1E699FE60];
  v33 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v56);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v49);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v56);
  v54 = v31;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v51 = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69A0130];
  v49 = v43;
  v50 = v24;
  v57 = v32;
  v58 = v33;
  sub_1ABA93DC0(v56);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v49);
  sub_1ABA84B54(v53);
  sub_1ABA8F404();
  sub_1ABAB47C4(v34, v35, v36, v37);
  sub_1ABF225A4();
  v38 = *(v6 + 8);
  v38(v10, v4);
  sub_1ABA84B54(v56);
  v54 = v31;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v51 = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69A0130];
  v49 = v44;
  v50 = v28;
  v57 = v32;
  v58 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v56);
  sub_1ABA9357C();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v49);
  sub_1ABA94A5C();
  sub_1ABF225A4();
  v38(v45, v4);
  sub_1ABA84B54(v56);
  sub_1ABA8E954();
  sub_1ABAB47C4(v39, &qword_1EB4D50F0, &unk_1ABF3A620, v40);
  sub_1ABA9A480();
  sub_1ABF22754();
  v38(v46, v4);
  sub_1ABC3ED38(v31, v47, v48);
  v41 = sub_1ABAA5360();
  (v38)(v41);
  sub_1ABA7BC90();
}

void sub_1ABC3F664()
{
  sub_1ABA7BCA8();
  v54 = v0;
  v55 = v1;
  v53 = v2;
  v48 = v3;
  v5 = v4;
  v51 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8E270(v13, v14, v15, v16, v17, v18, v19, v20, v45);
  v67 = v21;
  v56 = v22;
  v24 = *(v5 + 16);
  v23 = *(v5 + 24);
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854(&qword_1EB4CF208);
  }

  v25 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v25, qword_1EB4CF210);
  v26 = sub_1ABF22D14();
  v62 = v26;
  v63 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v61);
  sub_1ABA7F2F8();
  v27 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69A0130];
  v59 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69A0130];
  v57 = v24;
  v58 = v23;
  v46 = v23;
  v47 = v24;
  v29 = sub_1ABF22424();
  v30 = MEMORY[0x1E699FE60];
  v65 = v29;
  v66 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v64);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v57);
  sub_1ABA94A5C();
  sub_1ABF22CA4();
  sub_1ABA84B54(v64);
  v62 = v26;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA80B5C();
  v59 = v27;
  v60 = v28;
  v57 = v67;
  v58 = v56;
  v65 = v29;
  v66 = v30;
  sub_1ABA93DC0(v64);

  sub_1ABA83900();
  sub_1ABF22AD4();
  sub_1ABB6EEA4(&v57);
  sub_1ABA84B54(v61);
  sub_1ABA8F404();
  v45 = sub_1ABAB47C4(v31, v32, v33, v34);
  sub_1ABF225A4();
  v35 = *(v50 + 8);
  v35(v10, v51);
  sub_1ABA84B54(v64);
  v57 = v48;
  v62 = v26;
  sub_1ABA84170(MEMORY[0x1E69A0050]);
  sub_1ABA818AC();
  v65 = v29;
  v66 = v30;
  sub_1ABA93DC0(v64);
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7E760();
  sub_1ABAB47C4(v36, v37, &unk_1ABF3A8C0, v38);
  sub_1ABF23EE4();
  sub_1ABA94A5C();
  v39 = v52;
  sub_1ABF225A4();
  v35(v49, v51);
  sub_1ABA84B54(v64);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  *(&v45 - 6) = v39;
  *(&v45 - 5) = v67;
  v41 = v47;
  *(&v45 - 4) = v56;
  *(&v45 - 3) = v41;
  *(&v45 - 2) = v46;
  v42 = sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABA9080C(v42, v43, v42);
  v44 = sub_1ABA9EE9C();
  (v35)(v44);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

void sub_1ABC3FAA4()
{
  sub_1ABA7BCA8();
  v11[2] = v0;
  v12 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  if (qword_1EB4CF208 != -1)
  {
    sub_1ABA7D854(&qword_1EB4CF208);
  }

  v6 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7AA24(v6, qword_1EB4CF210);
  v13[3] = sub_1ABF22D14();
  v13[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v13);
  sub_1ABA818AC();
  v14[3] = sub_1ABF22424();
  v14[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v14);
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7E760();
  sub_1ABAB47C4(v7, v8, &unk_1ABF3A8C0, v9);
  sub_1ABF23EE4();
  sub_1ABA84B54(v13);
  sub_1ABF22CA4();
  sub_1ABA84B54(v14);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  v11[-2] = v5;
  sub_1ABAD219C(&qword_1EB4D5C38, &qword_1ABF4E198);
  sub_1ABF22464();
  (*(v2 + 8))(v5, v12);
  sub_1ABA99430();
  sub_1ABA7BC90();
}

double sub_1ABC3FD24@<D0>(sqlite3_stmt **a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v4 = sub_1ABF222A4();
  if (!v2)
  {
    if (v4)
    {
      sub_1ABB36E48(a2);
    }

    else
    {
      result = 0.0;
      *a2 = xmmword_1ABF4E150;
    }
  }

  return result;
}

uint64_t sub_1ABC3FE08@<X0>(void *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  result = sub_1ABF22294();
  if (!v2)
  {
    v5 = result;
    v8 = MEMORY[0x1E69E7CC8];
    result = sub_1ABAAB7C8(result);
    v6 = result;
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        *a2 = v8;
        return result;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC5AA170](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1ABC3FF7C(&v8);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1ABC3FF7C(uint64_t *a1)
{
  sub_1ABB32E40();
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v5 = v3;
    v6 = v4;
    sub_1ABB32E40();
    v8 = v7;
    v10 = v9;
    sub_1ABB32E40();
    v12 = v11;
    sub_1ABB33898(0x65756C6176, 0xE500000000000000, v14, v15, v16, v17, v18, v19, v25, v13, v27, v30, v32, v33, v34, v35, v36, v37, v38, v8);
    v20 = v28;
    sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
    sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
    v21 = sub_1ABF246B4();
    v32 = v5;
    v33 = v6;
    v34 = v39;
    v35 = v10;
    v36 = v26;
    v37 = v12;
    if (v21)
    {
      v22 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *a1;
      sub_1ABAFB3A0(v22, &v32, isUniquelyReferenced_nonNull_native);
      sub_1ABA96210(v20, v31);

      sub_1ABBA1A84(&v32);
      *a1 = v29;
    }

    else
    {
      v24 = sub_1ABC25BFC();
      sub_1ABA96210(v28, v31);
      sub_1ABBA1A84(&v32);
    }
  }
}

uint64_t sub_1ABC401A4@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  *&v54 = a4;
  *(&v54 + 1) = a5;
  v53 = a3;
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  result = sub_1ABF22294();
  if (!v6)
  {
    v10 = result;
    v46 = a2;
    v11 = 0;
    v51 = result & 0xC000000000000001;
    v52 = sub_1ABAAB7C8(result);
    v50 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x1E69E7CC8];
    v48 = v10;
    v49 = "Box to be nil at this point";
    v45 = a6;
    while (1)
    {
      if (v52 == v11)
      {

        *a6 = v12;
        return result;
      }

      if (v51)
      {
        MEMORY[0x1AC5AA170](v11, v10);
      }

      else
      {
        if (v11 >= *(v50 + 16))
        {
          goto LABEL_26;
        }
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_1ABB32E40();
      v14 = v13;
      v16 = v15;
      sub_1ABB33898(0x65756C6176, 0xE500000000000000, v17, v18, v19, v20, v21, v22, v44, v45, v46, v11 + 1, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1));
      v24 = v55[0];
      v23 = v55[1];
      sub_1ABAFF390(0, &qword_1EB4CF7B8, 0x1E696ACD0);
      sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
      v25 = sub_1ABF246B4();
      *&v56 = v46;
      *(&v56 + 1) = v53;
      v57 = v54;
      *&v58 = v14;
      *(&v58 + 1) = v16;
      if (v25)
      {
        v44 = v25;

        swift_isUniquelyReferenced_nonNull_native();
        v59 = v12;
        v29 = sub_1ABAFF5BC();
        if (__OFADD__(v12[2], (v30 & 1) == 0))
        {
          goto LABEL_27;
        }

        v31 = v29;
        v32 = v30;
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        if (sub_1ABF24C64())
        {
          v33 = sub_1ABAFF5BC();
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_29;
          }

          v31 = v33;
        }

        v12 = v59;
        if (v32)
        {
          v35 = v59[7];
          v36 = *(v35 + 8 * v31);
          *(v35 + 8 * v31) = v44;
          v37 = v44;
        }

        else
        {
          v59[(v31 >> 6) + 8] |= 1 << v31;
          v38 = (v12[6] + 48 * v31);
          v39 = v56;
          v40 = v58;
          v38[1] = v57;
          v38[2] = v40;
          *v38 = v39;
          *(v12[7] + 8 * v31) = v44;
          v41 = v12[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_28;
          }

          v37 = v44;
          v12[2] = v43;
          sub_1ABAFF334(&v56, v55);
        }

        v10 = v48;
        sub_1ABA96210(v24, v23);
        sub_1ABBA1A84(&v56);

        a6 = v45;
        v11 = v47;
      }

      else
      {

        v26 = sub_1ABAFF5BC();
        v28 = v27;
        sub_1ABBA1A84(&v56);
        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v55[0] = v12;
          sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
          sub_1ABF24C64();
          v12 = v55[0];

          sub_1ABBA0480();
          sub_1ABF24C84();

          sub_1ABA96210(v24, v23);
          a6 = v45;
          v11 = v47;
        }

        else
        {

          sub_1ABA96210(v24, v23);
          ++v11;
          a6 = v45;
        }

        v10 = v48;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_29:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t Features.FeatureFlag.rawValue.getter()
{
  Features.FeatureFlag.feature.getter();

  return sub_1ABF24AE4();
}

IntelligencePlatform::Features::FeatureFlag_optional __swiftcall Features.FeatureFlag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = v1;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  v8 = v8 && v7 == object;
  if (v8)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  sub_1ABA8F348(v6);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v12 == object)
  {
    v9 = 1;
    goto LABEL_8;
  }

  sub_1ABA8F348(v11);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 1;
    goto LABEL_9;
  }

  v9 = 2;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v15 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348(v14);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 2;
    goto LABEL_9;
  }

  v9 = 3;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v18 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348(v17);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 3;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v21 == object)
  {
    v9 = 4;
    goto LABEL_8;
  }

  sub_1ABA8F348(v20);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 4;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v24 == object)
  {
    v9 = 5;
    goto LABEL_8;
  }

  sub_1ABA8F348(v23);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 5;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v27 == object)
  {
    v9 = 6;
    goto LABEL_8;
  }

  sub_1ABA8F348(v26);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 6;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v30 == object)
  {
    v9 = 7;
    goto LABEL_8;
  }

  sub_1ABA8F348(v29);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 7;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v33 == object)
  {
    v9 = 8;
    goto LABEL_8;
  }

  sub_1ABA8F348(v32);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 8;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v36 == object)
  {
    v9 = 9;
    goto LABEL_8;
  }

  sub_1ABA8F348(v35);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 9;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v39 == object)
  {
    v9 = 10;
    goto LABEL_8;
  }

  sub_1ABA8F348(v38);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 10;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v42 == object)
  {
    v9 = 11;
    goto LABEL_8;
  }

  sub_1ABA8F348(v41);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 11;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v45 == object)
  {
    v9 = 12;
    goto LABEL_8;
  }

  sub_1ABA8F348(v44);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 12;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v48 == object)
  {
    v9 = 13;
    goto LABEL_8;
  }

  sub_1ABA8F348(v47);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 13;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v51 == object)
  {
    v9 = 14;
    goto LABEL_8;
  }

  sub_1ABA8F348(v50);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 14;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v54 == object)
  {
    v9 = 15;
    goto LABEL_8;
  }

  sub_1ABA8F348(v53);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 15;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v57 == object)
  {
    v9 = 16;
    goto LABEL_8;
  }

  sub_1ABA8F348(v56);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 16;
    goto LABEL_9;
  }

  v9 = 17;
  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v60 == object)
  {
    goto LABEL_8;
  }

  sub_1ABA8F348(v59);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 17;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v63 == object)
  {
    v9 = 18;
    goto LABEL_8;
  }

  sub_1ABA8F348(v62);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 18;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v66 == object)
  {
    v9 = 19;
    goto LABEL_8;
  }

  sub_1ABA8F348(v65);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 19;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v69 == object)
  {
    v9 = 20;
    goto LABEL_8;
  }

  sub_1ABA8F348(v68);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 20;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v72 == object)
  {
    v9 = 21;
    goto LABEL_8;
  }

  sub_1ABA8F348(v71);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 21;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v75 == object)
  {
    v9 = 22;
    goto LABEL_8;
  }

  sub_1ABA8F348(v74);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 22;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v78 == object)
  {
    v9 = 23;
    goto LABEL_8;
  }

  sub_1ABA8F348(v77);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 23;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v81 == object)
  {
    v9 = 24;
    goto LABEL_8;
  }

  sub_1ABA8F348(v80);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 24;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v84 == object)
  {
    v9 = 25;
    goto LABEL_8;
  }

  sub_1ABA8F348(v83);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 25;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v87 == object)
  {
    v9 = 26;
    goto LABEL_8;
  }

  sub_1ABA8F348(v86);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 26;
    goto LABEL_9;
  }

  sub_1ABF24AE4();
  sub_1ABA7D780();
  if (v8 && v90 == object)
  {
    v9 = 27;
    goto LABEL_8;
  }

  sub_1ABA8F348(v89);
  sub_1ABA7F240();
  if (v2)
  {
    v9 = 27;
    goto LABEL_9;
  }

  v92 = sub_1ABF24AE4();
  v9 = 28;
  if (v92 == countAndFlagsBits && v93 == object)
  {
    goto LABEL_8;
  }

  v95 = sub_1ABA8F348(v92);

  if (v95)
  {
    v9 = 28;
  }

  else
  {
    v9 = 29;
  }

LABEL_10:
  *v5 = v9;
  return result;
}

unint64_t sub_1ABC40EDC()
{
  result = qword_1EB4D5C50;
  if (!qword_1EB4D5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C50);
  }

  return result;
}

uint64_t sub_1ABC40F54@<X0>(uint64_t *a1@<X8>)
{
  result = Features.FeatureFlag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABC41030()
{
  result = qword_1EB4D5C58;
  if (!qword_1EB4D5C58)
  {
    sub_1ABAE2850(&unk_1EB4D5C60, &qword_1ABF4E2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features.FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1ABC411E8()
{
  result = qword_1ED86E448;
  if (!qword_1ED86E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86E448);
  }

  return result;
}