void *sub_10002ED5C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EDD4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10002EE2C(uint64_t a1)
{
  result = sub_10002C1D0(0, a1);
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  v7 = (192 * v4) | 0x20;
  while (1)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;
    v8 = v7 + 192;
    v9 = (v3 + v7);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v26[2] = v9[2];
    v26[3] = v12;
    v26[0] = v10;
    v26[1] = v11;
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[7];
    v26[6] = v9[6];
    v26[7] = v15;
    v26[4] = v13;
    v26[5] = v14;
    v16 = v9[8];
    v17 = v9[9];
    v18 = v9[11];
    v26[10] = v9[10];
    v26[11] = v18;
    v26[8] = v16;
    v26[9] = v17;
    sub_1000289DC(v26, &v25);
    v19 = sub_10002D274(a1);
    v21 = v20;
    result = sub_100028A38(v26);
    v7 = v8;
    if (v21)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100042F3C(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_100042F3C((v22 > 1), v23 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v23 + 1;
      v24 = &v6[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10002EFC4()
{
  result = qword_1000B51E8;
  if (!qword_1000B51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B51E8);
  }

  return result;
}

unint64_t sub_10002F018()
{
  result = qword_1000B5200;
  if (!qword_1000B5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5200);
  }

  return result;
}

unint64_t sub_10002F06C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002F07C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10002F144(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10002F164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5218, &qword_1000914C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10002F1D4@<X0>(unint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 16 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for Parsed(0, a3, a4, a5);
  v8 = *(*(v7 - 8) + 32);

  return v8(a2, a1, v7);
}

uint64_t Argument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for Argument(0, a2, a3, a4);
  sub_10002F35C(a1, v10);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v10, v7, WitnessTable, a5);
  return sub_100002B38(a1);
}

uint64_t sub_10002F35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Argument.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Option.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Parsed(0, v6, a3, a4);
  (*(*(v7 - 8) + 8))(v4, v7);
  (*(*(v6 - 8) + 32))(v4, a1, v6);

  return swift_storeEnumTagMultiPayload();
}

void (*Argument.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Argument.wrappedValue.getter(a2, v10, v11, v12);
  return sub_10002F754;
}

void sub_10002F754(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))((*a1)[4], v6, v7);
    Option.wrappedValue.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    Option.wrappedValue.setter((*a1)[5], *v4, a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_10002F830@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for Parsed(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a1, v4, v6);
}

uint64_t Argument.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v11 = type metadata accessor for Parsed(0, v3, v9, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v12 + 16))(&v17 - v13, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v14, v11);
    return 0xD000000000000016;
  }

  else
  {
    (*(v4 + 32))(v8, v14, v3);
    (*(v4 + 16))(v6, v8, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v8, v3);
    return v16;
  }
}

Swift::Int FlagExclusivity.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t Argument<A>.init(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a5;
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v29 = a8;
  v11 = type metadata accessor for Parsed(0, a6, a3, a4);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v24 - v13);
  v15 = *(a6 - 8);
  v16 = (*(v15 + 80) + 81) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = *(a2 + 16);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a2 + 32);
  *(v18 + 80) = *(a2 + 48);
  (*(v15 + 32))(v18 + v16, v25, a6);
  v20 = v18 + v17;
  v21 = v27;
  *v20 = v26;
  *(v20 + 8) = v21;
  *(v20 + 16) = v28;
  sub_10006A034(sub_100032690, v18, a6, v22, v14);
  return (*(v12 + 32))(v29, v14, v11);
}

uint64_t sub_10002FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v39 = a4;
  v38 = a3;
  v40 = a1;
  v41 = type metadata accessor for Optional();
  v14 = *(v41 - 8);
  __chkstk_darwin();
  v16 = &v37 - v15;
  v19 = type metadata accessor for Bare(0, a9, v17, v18);
  v20 = *(a9 - 8);
  (*(v20 + 16))(v16, a5, a9);
  (*(v20 + 56))(v16, 0, 1, a9);

  v21 = v38;

  v22 = v39;
  sub_10003350C(v39, v42);
  sub_10003357C(a6, a7, v9);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_10005B274(v40, a2, v21, 0, v22, 0, v16, v42, a6, a7, v9, v19, WitnessTable);
  (*(v14 + 8))(v16, v41, v24);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v25 = swift_allocObject();
  v26 = v42[8];
  v27 = v42[10];
  v28 = v42[11];
  v25[11] = v42[9];
  v25[12] = v27;
  v25[13] = v28;
  v29 = v42[4];
  v30 = v42[6];
  v31 = v42[7];
  v25[7] = v42[5];
  v25[8] = v30;
  v25[9] = v31;
  v25[10] = v26;
  v32 = v42[0];
  v33 = v42[1];
  v25[1] = xmmword_10008E640;
  v25[2] = v32;
  v34 = v42[2];
  v35 = v42[3];
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[6] = v29;
  return sub_100072F04(v25);
}

uint64_t Argument<A>.init(help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v14 = type metadata accessor for Parsed(0, a5, a3, a4);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v22 - v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 32);
  *(v18 + 80) = *(a1 + 48);
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = v9;
  sub_10006A034(sub_100032724, v18, a5, v20, v17);
  return (*(v15 + 32))(a7, v17, v14);
}

uint64_t sub_100030124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v37 = a4;
  v38 = a1;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v36 - v16;
  v20 = type metadata accessor for Bare(0, a8, v18, v19);
  (*(*(a8 - 8) + 56))(v17, 1, 1, a8);

  v21 = v37;
  sub_10003350C(v37, v39);
  sub_10003357C(a5, a6, v9);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B274(v38, a2, a3, 0, v21, 0, v17, v39, a5, a6, v9, v20, WitnessTable);
  (*(v15 + 8))(v17, v14, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v39[8];
  v26 = v39[10];
  v27 = v39[11];
  v24[11] = v39[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v39[4];
  v29 = v39[6];
  v30 = v39[7];
  v24[7] = v39[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v39[0];
  v32 = v39[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v39[2];
  v34 = v39[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Argument.init(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a7;
  v29 = a3;
  v31 = a5;
  v30 = a4;
  v27 = a1;
  v32 = a9;
  v12 = type metadata accessor for Parsed(0, a8, a3, a4);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = *(a8 - 8);
  v17 = (*(v16 + 80) + 96) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  v20 = *(a2 + 16);
  *(v19 + 24) = *a2;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a2 + 32);
  *(v19 + 72) = *(a2 + 48);
  v21 = v27;
  v22 = v28;
  *(v19 + 80) = a6;
  *(v19 + 88) = v22;
  (*(v16 + 32))(v19 + v17, v21, a8);
  v23 = v19 + v18;
  v24 = v30;
  *v23 = v29;
  *(v23 + 8) = v24;
  *(v23 + 16) = v31;
  sub_10006A034(sub_100032854, v19, a8, v25, v15);
  return (*(v13 + 32))(v32, v15, v12);
}

uint64_t sub_100030560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v40 = a8;
  v41 = a6;
  v44 = a5;
  v39 = a4;
  v42 = a1;
  v43 = type metadata accessor for Optional();
  v14 = *(v43 - 8);
  __chkstk_darwin();
  v16 = &v38 - v15;
  v19 = type metadata accessor for Bare(0, a11, v17, v18);
  v20 = *(a11 - 8);
  (*(v20 + 16))(v16, a7, a11);
  (*(v20 + 56))(v16, 0, 1, a11);

  v21 = v39;
  sub_10003350C(v39, v45);
  v22 = v40;
  sub_10003357C(v40, a9, a10);
  v23 = v41;

  WitnessTable = swift_getWitnessTable();
  v25 = sub_10005B5C0(v42, a2, a3, 0, v21, 0, v44, v45, v23, v16, v22, a9, a10, v19, WitnessTable);
  (*(v14 + 8))(v16, v43, v25);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v26 = swift_allocObject();
  v27 = v45[8];
  v28 = v45[10];
  v29 = v45[11];
  v26[11] = v45[9];
  v26[12] = v28;
  v26[13] = v29;
  v30 = v45[4];
  v31 = v45[6];
  v32 = v45[7];
  v26[7] = v45[5];
  v26[8] = v31;
  v26[9] = v32;
  v26[10] = v27;
  v33 = v45[0];
  v34 = v45[1];
  v26[1] = xmmword_10008E640;
  v26[2] = v33;
  v35 = v45[2];
  v36 = v45[3];
  v26[3] = v34;
  v26[4] = v35;
  v26[5] = v36;
  v26[6] = v30;
  return sub_100072F04(v26);
}

uint64_t Argument.init(help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v24 = a8;
  v15 = type metadata accessor for Parsed(0, a7, a3, a4);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v23 - v17);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 24) = *a1;
  *(v19 + 16) = a7;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a1 + 32);
  *(v19 + 72) = *(a1 + 48);
  *(v19 + 80) = a5;
  *(v19 + 88) = a6;
  *(v19 + 96) = a2;
  *(v19 + 104) = a3;
  *(v19 + 112) = v11;
  sub_10006A034(sub_1000328F8, v19, a7, v21, v18);
  return (*(v16 + 32))(v24, v18, v15);
}

uint64_t sub_100030980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v40 = a5;
  v37 = a4;
  v38 = a1;
  v39 = type metadata accessor for Optional();
  v15 = *(v39 - 8);
  __chkstk_darwin();
  v17 = &v36 - v16;
  v20 = type metadata accessor for Bare(0, a10, v18, v19);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);

  v21 = v37;
  sub_10003350C(v37, v41);
  sub_10003357C(a7, a8, a9);

  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B5C0(v38, a2, a3, 0, v21, 0, v40, v41, a6, v17, a7, a8, a9, v20, WitnessTable);
  (*(v15 + 8))(v17, v39, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v41[8];
  v26 = v41[10];
  v27 = v41[11];
  v24[11] = v41[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v41[4];
  v29 = v41[6];
  v30 = v41[7];
  v24[7] = v41[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v41[0];
  v32 = v41[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v41[2];
  v34 = v41[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a1;
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v33 = a8;
  v10 = type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed(0, v10, v11, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v28 - v15);
  v17 = *(v10 - 8);
  v18 = (*(v17 + 80) + 81) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v22 = v28;
  v21 = v29;
  *(v20 + 16) = a6;
  *(v20 + 24) = v22;
  v23 = *(a2 + 16);
  *(v20 + 32) = *a2;
  *(v20 + 48) = v23;
  *(v20 + 64) = *(a2 + 32);
  *(v20 + 80) = *(a2 + 48);
  (*(v17 + 32))(v20 + v18, v21, v10);
  v24 = v20 + v19;
  v25 = v31;
  *v24 = v30;
  *(v24 + 8) = v25;
  *(v24 + 16) = v32;
  sub_10006A034(sub_100032AD0, v20, v10, v26, v16);
  return (*(v14 + 32))(v33, v16, v13);
}

uint64_t sub_100030DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v17 = type metadata accessor for Optional();

  sub_10003350C(a4, v31);
  sub_10003357C(a6, a7, v9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, 0, a5, v31, a6, a7, v9, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v31[8];
  v21 = v31[10];
  v22 = v31[11];
  v19[11] = v31[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v31[4];
  v24 = v31[6];
  v25 = v31[7];
  v19[7] = v31[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v31[0];
  v27 = v31[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v31[2];
  v29 = v31[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t sub_100030F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v28 = a9;
  v26 = a4;
  v14 = type metadata accessor for Optional();
  v17 = type metadata accessor for Parsed(0, v14, v15, v16);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (&v25 - v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = *(a1 + 16);
  *(v21 + 32) = *a1;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a1 + 32);
  *(v21 + 80) = *(a1 + 48);
  *(v21 + 88) = a2;
  *(v21 + 96) = a3;
  *(v21 + 104) = v26;
  sub_10006A034(v27, v21, v14, v23, v20);
  return (*(v18 + 32))(v28, v20, v17);
}

uint64_t sub_1000310C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v33 = a1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v33 - v17;
  (*(*(a8 - 8) + 56))(&v33 - v17, 1, 1, a8);

  sub_10003350C(a4, v34);
  sub_10003357C(a5, a6, v9);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_10005B274(v33, a2, a3, 0, a4, 0, v18, v34, a5, a6, v9, v15, WitnessTable);
  (*(v16 + 8))(v18, v15, v20);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v34[8];
  v23 = v34[10];
  v24 = v34[11];
  v21[11] = v34[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v34[4];
  v26 = v34[6];
  v27 = v34[7];
  v21[7] = v34[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v34[0];
  v29 = v34[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v34[2];
  v31 = v34[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v33 = a3;
  v30 = a6;
  v31 = a1;
  v35 = a5;
  v34 = a4;
  v36 = a9;
  v11 = type metadata accessor for Optional();
  v14 = type metadata accessor for Parsed(0, v11, v12, v13);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v29 - v16);
  v18 = *(v11 - 8);
  v19 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  v22 = *(a2 + 16);
  *(v21 + 24) = *a2;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a2 + 32);
  *(v21 + 72) = *(a2 + 48);
  v23 = v31;
  v24 = v32;
  *(v21 + 80) = v30;
  *(v21 + 88) = v24;
  (*(v18 + 32))(v21 + v19, v23, v11);
  v25 = v21 + v20;
  v26 = v34;
  *v25 = v33;
  *(v25 + 8) = v26;
  *(v25 + 16) = v35;
  sub_10006A034(sub_100032D4C, v21, v11, v27, v17);
  return (*(v15 + 32))(v36, v17, v14);
}

uint64_t sub_100031530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v18 = type metadata accessor for Optional();

  sub_10003350C(a4, v33);
  sub_10003357C(a8, a9, a10);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, 0, a5, v33, a6, a7, a8, a9, a10, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v33[8];
  v22 = v33[10];
  v23 = v33[11];
  v20[11] = v33[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v33[4];
  v25 = v33[6];
  v26 = v33[7];
  v20[7] = v33[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v33[0];
  v28 = v33[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v33[2];
  v30 = v33[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t sub_1000316E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a3;
  v28 = a6;
  v29 = a4;
  v30 = a9;
  v14 = type metadata accessor for Optional();
  v17 = type metadata accessor for Parsed(0, v14, v15, v16);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (&v27 - v19);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 24) = *a1;
  *(v21 + 16) = a7;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a1 + 32);
  *(v21 + 72) = *(a1 + 48);
  v23 = v27;
  v24 = v28;
  *(v21 + 80) = a5;
  *(v21 + 88) = v24;
  *(v21 + 96) = a2;
  *(v21 + 104) = v23;
  *(v21 + 112) = v29;
  sub_10006A034(a10, v21, v14, v25, v20);
  return (*(v18 + 32))(v30, v20, v17);
}

uint64_t sub_10003184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v35 = a6;
  v37 = a5;
  v36 = a1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v35 - v17;
  (*(*(a10 - 8) + 56))(&v35 - v17, 1, 1, a10);

  v19 = a4;
  sub_10003350C(a4, v38);
  sub_10003357C(a7, a8, a9);
  v20 = v35;

  WitnessTable = swift_getWitnessTable();
  v22 = sub_10005B5C0(v36, a2, a3, 0, v19, 0, v37, v38, v20, v18, a7, a8, a9, v15, WitnessTable);
  (*(v16 + 8))(v18, v15, v22);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v23 = swift_allocObject();
  v24 = v38[8];
  v25 = v38[10];
  v26 = v38[11];
  v23[11] = v38[9];
  v23[12] = v25;
  v23[13] = v26;
  v27 = v38[4];
  v28 = v38[6];
  v29 = v38[7];
  v23[7] = v38[5];
  v23[8] = v28;
  v23[9] = v29;
  v23[10] = v24;
  v30 = v38[0];
  v31 = v38[1];
  v23[1] = xmmword_10008E640;
  v23[2] = v30;
  v32 = v38[2];
  v33 = v38[3];
  v23[3] = v31;
  v23[4] = v32;
  v23[5] = v33;
  v23[6] = v27;
  return sub_100072F04(v23);
}

uint64_t Argument.init<A>(wrappedValue:parsing:help:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = *(a3 + 16);
  *(v16 + 32) = *a3;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a3 + 32);
  *(v16 + 80) = *(a3 + 48);
  *(v16 + 81) = a2;
  *(v16 + 88) = a1;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  *(v16 + 112) = a6;
  v18 = type metadata accessor for Array();
  sub_10006A034(sub_100032E90, v16, v18, v19, &v26);
  v24 = v26;
  v25 = v27;
  v22 = type metadata accessor for Parsed(0, v18, v20, v21);
  (*(*(v22 - 8) + 32))(&v28, &v24, v22);
  return v28;
}

uint64_t sub_100031BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v17 = type metadata accessor for Array();
  v32 = a6;

  sub_10003350C(a4, v33);
  sub_10003357C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, a5, &v32, v33, a7, a8, a9, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v33[8];
  v21 = v33[10];
  v22 = v33[11];
  v19[11] = v33[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v33[4];
  v24 = v33[6];
  v25 = v33[7];
  v19[7] = v33[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v33[0];
  v27 = v33[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v33[2];
  v29 = v33[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t Argument.init<A>(parsing:help:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  v15 = *(a2 + 16);
  *(v14 + 32) = *a2;
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 32);
  *(v14 + 80) = *(a2 + 48);
  *(v14 + 81) = a1;
  *(v14 + 88) = a3;
  *(v14 + 96) = a4;
  *(v14 + 104) = a5;
  v16 = type metadata accessor for Array();
  sub_10006A034(sub_100032F30, v14, v16, v17, &v24);
  v22 = v24;
  v23 = v25;
  v20 = type metadata accessor for Parsed(0, v16, v18, v19);
  (*(*(v20 - 8) + 32))(&v26, &v22, v20);
  return v26;
}

uint64_t sub_100031E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v12 = a5;
  v17 = type metadata accessor for Array();
  v31 = 0;

  sub_10003350C(a4, v32);
  sub_10003357C(a6, a7, v9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, v12, &v31, v32, a6, a7, v9, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v32[8];
  v21 = v32[10];
  v22 = v32[11];
  v19[11] = v32[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v32[4];
  v24 = v32[6];
  v25 = v32[7];
  v19[7] = v32[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v32[0];
  v27 = v32[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v32[2];
  v29 = v32[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t Argument.init<A>(wrappedValue:parsing:help:completion:transform:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v18 = *(a3 + 16);
  *(v17 + 24) = *a3;
  *(v17 + 16) = a9;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a3 + 32);
  *(v17 + 72) = *(a3 + 48);
  *(v17 + 73) = a2;
  *(v17 + 80) = a7;
  *(v17 + 88) = a8;
  *(v17 + 96) = a1;
  *(v17 + 104) = a4;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  v19 = type metadata accessor for Array();
  sub_10006A034(sub_100032FD8, v17, v19, v20, &v27);
  v25 = v27;
  v26 = v28;
  v23 = type metadata accessor for Parsed(0, v19, v21, v22);
  (*(*(v23 - 8) + 32))(&v29, &v25, v23);
  return v29;
}

uint64_t sub_100032124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v17 = type metadata accessor for Array();
  v34 = a8;

  sub_10003350C(a4, v35);
  sub_10003357C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, a5, a6, v35, a7, &v34, a9, a10, a11, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v35[8];
  v21 = v35[10];
  v22 = v35[11];
  v19[11] = v35[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v35[4];
  v24 = v35[6];
  v25 = v35[7];
  v19[7] = v35[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v35[0];
  v27 = v35[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v35[2];
  v29 = v35[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t Argument.init<A>(parsing:help:completion:transform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = *(a2 + 16);
  *(v16 + 24) = *a2;
  *(v16 + 16) = a8;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a2 + 32);
  *(v16 + 72) = *(a2 + 48);
  *(v16 + 73) = a1;
  *(v16 + 80) = a6;
  *(v16 + 88) = a7;
  *(v16 + 96) = a3;
  *(v16 + 104) = a4;
  *(v16 + 112) = a5;
  v18 = type metadata accessor for Array();
  sub_10006A034(sub_100033088, v16, v18, v19, &v26);
  v24 = v26;
  v25 = v27;
  v22 = type metadata accessor for Parsed(0, v18, v20, v21);
  (*(*(v22 - 8) + 32))(&v28, &v24, v22);
  return v28;
}

uint64_t sub_1000323DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v17 = type metadata accessor for Array();
  v33 = 0;

  sub_10003350C(a4, v34);
  sub_10003357C(a8, a9, a10);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, a5, a6, v34, a7, &v33, a8, a9, a10, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v34[8];
  v21 = v34[10];
  v22 = v34[11];
  v19[11] = v34[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v34[4];
  v24 = v34[6];
  v25 = v34[7];
  v19[7] = v34[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v34[0];
  v27 = v34[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v34[2];
  v29 = v34[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t sub_10003255C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_100032650(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100032650(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return v3;
}

uint64_t sub_100032690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 81) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10002FD38(a1, a2, a3, (v3 + 32), v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_100032758()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 32))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_100032650(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100032854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(v3[2] - 8) + 80) + 96) & ~*(*(v3[2] - 8) + 80);
  v5 = v3 + ((*(*(v3[2] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100030560(a1, a2, a3, v3 + 3, v3[10], v3[11], v3 + v4, *v5, *(v5 + 1), v5[16], v3[2]);
}

uint64_t sub_100032970()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 40))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_100032650(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return _swift_deallocObject(v0, v6 + 17, v3 | 7);
}

uint64_t sub_100032AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 81) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100030DFC(a1, a2, a3, (v3 + 32), v3 + v9, *v10, *(v10 + 8), *(v10 + 16), v7);
}

uint64_t sub_100032BE4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 32))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_100032650(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return _swift_deallocObject(v0, v6 + 17, v3 | 7);
}

uint64_t sub_100032D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100031530(a1, a2, a3, v3 + 3, v3[10], v3[11], v3 + v9, *v10, *(v10 + 1), v10[16], v7);
}

uint64_t sub_100032E28()
{
  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v1);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_100032ED0()
{
  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 88), *(v0 + 96), v1);
  }

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_100032F68()
{
  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v1);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_100033020()
{
  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v1);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_1000330CC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100033110(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100033150()
{
  result = qword_1000B5268[0];
  if (!qword_1000B5268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5268);
  }

  return result;
}

uint64_t sub_1000331AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Parsed(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003321C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
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
    goto LABEL_25;
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

  return (v5 | v10) + 255;
}

void sub_100033334(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

uint64_t sub_10003350C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003357C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100033590(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100033590(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return v3;
}

uint64_t CommandConfiguration._superCommandName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CommandConfiguration._superCommandName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CommandConfiguration.abstract.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandConfiguration.abstract.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*ArgumentHelp.shouldDisplay.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48) == 0;
  return sub_1000337B0;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:shouldDisplay:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, Swift::Bool shouldDisplay)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility.base = !shouldDisplay;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:visibility:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, ArgumentParser::ArgumentVisibility visibility)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility = visibility;
}

uint64_t sub_100033804@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  return result;
}

void __swiftcall ArgumentHelp.init(stringLiteral:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  retstr->abstract._countAndFlagsBits = countAndFlagsBits;
  retstr->abstract._object = object;
  retstr->discussion._countAndFlagsBits = 0;
  retstr->discussion._object = 0xE000000000000000;
  retstr->valueName.value._countAndFlagsBits = 0;
  retstr->valueName.value._object = 0;
  retstr->visibility.base = ArgumentParser_ArgumentVisibility_Representation_default;
}

unint64_t sub_100033894()
{
  result = qword_1000B5300;
  if (!qword_1000B5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5300);
  }

  return result;
}

unint64_t sub_10003390C()
{
  result = qword_1000B5308;
  if (!qword_1000B5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5308);
  }

  return result;
}

unint64_t sub_100033974()
{
  result = qword_1000B5310;
  if (!qword_1000B5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5310);
  }

  return result;
}

uint64_t sub_1000339E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

__n128 sub_100033A28(uint64_t a1, uint64_t a2)
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

uint64_t sub_100033A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100033A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100033B18()
{
  result = qword_1000B5318;
  if (!qword_1000B5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5318);
  }

  return result;
}

unint64_t sub_100033B90()
{
  result = qword_1000B5320;
  if (!qword_1000B5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5320);
  }

  return result;
}

uint64_t sub_100033CB4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 initializeBufferWithCopyOfBuffer for SplitArguments.Index(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100033CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100033D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100033D88(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100033DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034274();
  v5 = sub_1000342C8();

  return Error<>._code.getter(a1, a2, v4, v5);
}

_DWORD *sub_100033E50@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_100033E60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100033ED4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t static CleanExit.helpRequest(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_100002AA0(a1, v1);

  return sub_100034094(v3, v1, v2);
}

uint64_t CleanExit.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x706C65682D2DLL;
  }

  if (a3 != 1)
  {
    return 0xD000000000000018;
  }

  return a1;
}

uint64_t sub_100034024()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_100034094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_100007DE4(v8);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_100002AA0(v8, v9);
  DynamicType = swift_getDynamicType();
  sub_100002B38(v8);
  return DynamicType;
}

unint64_t sub_100034138()
{
  result = qword_1000B5328;
  if (!qword_1000B5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5328);
  }

  return result;
}

uint64_t sub_1000341CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100034218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100034274()
{
  result = qword_1000B5330;
  if (!qword_1000B5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5330);
  }

  return result;
}

unint64_t sub_1000342C8()
{
  result = qword_1000B5338;
  if (!qword_1000B5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5338);
  }

  return result;
}

uint64_t sub_100034328@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a2;
  v26 = a1;
  v23 = *(a3 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20);
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v16, v18, v13);
  v26(v16, v11);
  result = (*(v14 + 8))(v16, v13);
  if (v6)
  {
    return (*(v23 + 32))(v24, v11, a3);
  }

  return result;
}

uint64_t Flag.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for Flag(0, a2, a3, a4);
  sub_10002F35C(a1, v10);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v10, v7, WitnessTable, a5);
  return sub_100002B38(a1);
}

uint64_t Flag.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*Flag.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Flag.wrappedValue.getter(a2, v10, v11, v12);
  return sub_10002F754;
}

uint64_t Flag.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v11 = type metadata accessor for Parsed(0, v3, v9, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v12 + 16))(&v17 - v13, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v14, v11);
    return 0xD000000000000012;
  }

  else
  {
    (*(v4 + 32))(v8, v14, v3);
    (*(v4 + 16))(v6, v8, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v8, v3);
    return v16;
  }
}

Swift::Int FlagInversion.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t (*Flag<A>.init(name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_1000351FC;
}

uint64_t sub_100034CA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t *a7)
{
  v12 = a7[2];
  v13 = a7[3];
  v51 = a7[4];
  v56 = a7[5];
  v14 = *(a7 + 48);
  if (a5)
  {
    v52 = sub_10003A2B8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v15 = 0x656C6261736964;
    v16 = 0xE700000000000000;
  }

  else
  {
    v52 = sub_10003B384(a1, a2, a4);
    v15 = 28526;
    v16 = 0xE200000000000000;
  }

  v54 = sub_10003A2B8(v15, v16, 0, a4, a1, a2, a3);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008E640;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  v18 = a7[1];
  v53 = a1;
  v49 = v13;
  v50 = v12;
  v57 = v14;
  if (v18)
  {
    v19 = *a7;
    v97[0] = *a7;
    v97[1] = v18;
    if (v56)
    {
      sub_100039960(v97, v86);

      v20 = v18;
      v21 = v13;
      v22 = a2;
      v23 = v21;
      v24 = v51;
      v25 = v56;
      v26 = v57;
      goto LABEL_10;
    }

    v48 = a2;
    sub_100039960(v97, v86);

    v26 = v57;
    v20 = v18;
    v23 = v13;
  }

  else
  {
    v48 = a2;
    v26 = 0;
    v19 = 0;
    v12 = 0;
    v20 = 0xE000000000000000;
    v23 = 0xE000000000000000;
  }

  v22 = v48;

  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_10:
  v78 = 1uLL;
  *&v79 = 0;
  *(&v79 + 1) = v17;
  *&v80 = _swiftEmptyArrayStorage;
  BYTE8(v80) = 1;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  *&v82 = v12;
  *(&v82 + 1) = v23;
  *&v83 = v24;
  *(&v83 + 1) = v25;
  LOBYTE(v84) = v26;
  *(&v84 + 1) = 0;
  v85 = 0xE000000000000000;
  v86[0] = 1;
  v86[1] = 0;
  v86[2] = 0;
  v86[3] = v17;
  v86[4] = _swiftEmptyArrayStorage;
  v87 = 1;
  v88 = v19;
  v89 = v20;
  v90 = v12;
  v91 = v23;
  v92 = v24;
  v93 = v25;
  v94 = v26;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_10002F094(&v78, v67);
  sub_10002F0F0(v86);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10008E640;
  *(v27 + 32) = v53;
  *(v27 + 40) = v22;
  *(v27 + 48) = a3;
  v28 = v22;
  if (v18)
  {
    v29 = *a7;
    v98[0] = *a7;
    v98[1] = v18;
    v30 = v56;
    sub_100039960(v98, v67);
    v31 = v49;

    if (v56)
    {

      v32 = v50;
      v33 = v51;
    }

    else
    {
      v33 = 0;
      v30 = 0xE000000000000000;
      v32 = v50;
    }

    v34 = v57;
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v18 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v30 = 0xE000000000000000;
  }

  v59 = 1uLL;
  *&v60 = 0;
  *(&v60 + 1) = v27;
  *&v61 = _swiftEmptyArrayStorage;
  BYTE8(v61) = 0;
  *&v62 = v29;
  *(&v62 + 1) = v18;
  *&v63 = v32;
  *(&v63 + 1) = v31;
  *&v64 = v33;
  *(&v64 + 1) = v30;
  LOBYTE(v65) = v34;
  *(&v65 + 1) = 0;
  v66 = 0xE000000000000000;
  v67[0] = 1;
  v67[1] = 0;
  v67[2] = 0;
  v67[3] = v27;
  v67[4] = _swiftEmptyArrayStorage;
  v68 = 0;
  v69 = v29;
  v70 = v18;
  v71 = v32;
  v72 = v31;
  v73 = v33;
  v74 = v30;
  v75 = v34;
  v76 = 0;
  v77 = 0xE000000000000000;

  sub_10002F094(&v59, v58);
  sub_10002F0F0(v67);
  v35 = swift_allocObject();
  *(v35 + 16) = v53;
  *(v35 + 24) = v28;
  *(v35 + 32) = a3;
  *(v35 + 40) = a6;
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 24) = v53;
  *(v36 + 32) = v28;
  *(v36 + 40) = a3;
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  *(v37 + 24) = v28;
  *(v37 + 32) = a3;
  *(v37 + 40) = a6;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10008F240;
  *(v38 + 32) = v52;
  v39 = v83;
  *(v38 + 104) = v82;
  *(v38 + 120) = v39;
  *(v38 + 136) = v84;
  v40 = v85;
  v41 = v79;
  *(v38 + 40) = v78;
  *(v38 + 56) = v41;
  v42 = v81;
  *(v38 + 72) = v80;
  *(v38 + 88) = v42;
  *(v38 + 160) = 0;
  *(v38 + 168) = 0;
  *(v38 + 152) = v40;
  *(v38 + 176) = 4;
  *(v38 + 184) = sub_100039AD4;
  *(v38 + 192) = v35;
  *(v38 + 200) = 0;
  *(v38 + 208) = sub_100039AB4;
  *(v38 + 216) = v36;
  *(v38 + 224) = v54;
  v43 = v59;
  *(v38 + 248) = v60;
  *(v38 + 232) = v43;
  v44 = v66;
  v45 = v65;
  *(v38 + 312) = v64;
  *(v38 + 328) = v45;
  v46 = v63;
  *(v38 + 280) = v62;
  *(v38 + 296) = v46;
  *(v38 + 264) = v61;
  *(v38 + 352) = 0;
  *(v38 + 360) = 0;
  *(v38 + 344) = v44;
  *(v38 + 368) = 4;
  *(v38 + 376) = sub_100039AEC;
  *(v38 + 384) = v37;
  *(v38 + 392) = 0;
  *(v38 + 400) = String.init(argument:);
  *(v38 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v38);
}

uint64_t (*Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))(uint64_t, uint64_t, uint64_t)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_100039A74;
}

uint64_t (*Flag<A>.init(wrappedValue:name:help:)(char a1, uint64_t a2, uint64_t a3))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = *(a3 + 48);
  return sub_100035320;
}

uint64_t sub_100035330(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t *a8)
{
  v15 = a8[2];
  v14 = a8[3];
  v59 = a8[4];
  v68 = a8[5];
  v70 = *(a8 + 48);
  v62 = a5 != 2;
  if (a6)
  {
    v16 = sub_10003A2B8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v17 = 0x656C6261736964;
    v18 = 0xE700000000000000;
  }

  else
  {
    v16 = sub_10003B384(a1, a2, a4);
    v17 = 28526;
    v18 = 0xE200000000000000;
  }

  v19 = sub_10003A2B8(v17, v18, 0, a4, a1, a2, a3);
  v69 = v14;
  v66 = v19;
  v64 = v16;
  v63 = a5;
  if (a5 == 2 || ((a5 & 1) == 0 ? (v20 = v19) : (v20 = v16), !*(v20 + 2)))
  {
    v61 = 0;
    v60 = 0;
  }

  else
  {
    v21 = *(v20 + 4);
    v22 = *(v20 + 5);
    v23 = v15;
    v24 = v20[48];
    sub_10002BB8C(v21, v22, v24);
    v61 = sub_100068E38(v21, v22, v24);
    v60 = v25;
    v26 = v24;
    v15 = v23;
    sub_100028AE8(v21, v22, v26);
  }

  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10008E640;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  *(v27 + 48) = a3;
  v28 = a8[1];
  v65 = a1;
  v58 = v15;
  if (v28)
  {
    v57 = *a8;
    v110[0] = *a8;
    v110[1] = v28;
    if (v68)
    {
      sub_100039960(v110, v99);

      v29 = v28;
      v30 = v15;
      v31 = a2;
      v32 = v69;
      v33 = v59;
      v34 = v68;
      v35 = v70;
      v36 = v57;
      goto LABEL_17;
    }

    v30 = v15;
    v31 = a2;
    sub_100039960(v110, v99);
    v32 = v69;

    v35 = v70;
    v29 = v28;
    v36 = v57;
  }

  else
  {
    v31 = a2;
    v35 = 0;
    v36 = 0;
    v30 = 0;
    v29 = 0xE000000000000000;
    v32 = 0xE000000000000000;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
LABEL_17:
  *&v91 = v62;
  *(&v91 + 1) = v61;
  *&v92 = v60;
  *(&v92 + 1) = v27;
  *&v93 = _swiftEmptyArrayStorage;
  BYTE8(v93) = 1;
  *&v94 = v36;
  *(&v94 + 1) = v29;
  *&v95 = v30;
  *(&v95 + 1) = v32;
  *&v96 = v33;
  *(&v96 + 1) = v34;
  LOBYTE(v97) = v35;
  *(&v97 + 1) = 0;
  v98 = 0xE000000000000000;
  v99[0] = v62;
  v99[1] = v61;
  v99[2] = v60;
  v99[3] = v27;
  v99[4] = _swiftEmptyArrayStorage;
  v100 = 1;
  v101 = v36;
  v102 = v29;
  v103 = v30;
  v104 = v32;
  v105 = v33;
  v106 = v34;
  v107 = v35;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_10002F094(&v91, v80);
  sub_10002F0F0(v99);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10008E640;
  *(v37 + 32) = v65;
  *(v37 + 40) = v31;
  *(v37 + 48) = a3;
  if (v28)
  {
    v38 = *a8;
    v111[0] = *a8;
    v111[1] = v28;
    v39 = v68;
    sub_100039960(v111, v80);
    v40 = v69;

    if (v68)
    {

      v41 = v58;
      v42 = v59;
    }

    else
    {
      v42 = 0;
      v39 = 0xE000000000000000;
      v41 = v58;
    }

    v43 = v70;
  }

  else
  {
    v38 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v28 = 0xE000000000000000;
    v40 = 0xE000000000000000;
    v39 = 0xE000000000000000;
  }

  v72 = 1uLL;
  *&v73 = 0;
  *(&v73 + 1) = v37;
  *&v74 = _swiftEmptyArrayStorage;
  BYTE8(v74) = 0;
  *&v75 = v38;
  *(&v75 + 1) = v28;
  *&v76 = v41;
  *(&v76 + 1) = v40;
  *&v77 = v42;
  *(&v77 + 1) = v39;
  LOBYTE(v78) = v43;
  *(&v78 + 1) = 0;
  v79 = 0xE000000000000000;
  v80[0] = 1;
  v80[1] = 0;
  v80[2] = 0;
  v80[3] = v37;
  v80[4] = _swiftEmptyArrayStorage;
  v81 = 0;
  v82 = v38;
  v83 = v28;
  v84 = v41;
  v85 = v40;
  v86 = v42;
  v87 = v39;
  v88 = v43;
  v89 = 0;
  v90 = 0xE000000000000000;

  sub_10002F094(&v72, v71);
  sub_10002F0F0(v80);
  v44 = swift_allocObject();
  *(v44 + 16) = v65;
  *(v44 + 24) = v31;
  *(v44 + 32) = a3;
  *(v44 + 40) = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = v63;
  *(v45 + 24) = v65;
  *(v45 + 32) = v31;
  *(v45 + 40) = a3;
  v46 = swift_allocObject();
  *(v46 + 16) = v65;
  *(v46 + 24) = v31;
  *(v46 + 32) = a3;
  *(v46 + 40) = a7;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10008F240;
  *(v47 + 32) = v64;
  v48 = v96;
  *(v47 + 104) = v95;
  *(v47 + 120) = v48;
  *(v47 + 136) = v97;
  v49 = v98;
  v50 = v92;
  *(v47 + 40) = v91;
  *(v47 + 56) = v50;
  v51 = v94;
  *(v47 + 72) = v93;
  *(v47 + 88) = v51;
  *(v47 + 160) = 0;
  *(v47 + 168) = 0;
  *(v47 + 152) = v49;
  *(v47 + 176) = 4;
  *(v47 + 184) = sub_1000398D8;
  *(v47 + 192) = v44;
  *(v47 + 200) = 0;
  *(v47 + 208) = sub_10003990C;
  *(v47 + 216) = v45;
  *(v47 + 224) = v66;
  v52 = v72;
  *(v47 + 248) = v73;
  *(v47 + 232) = v52;
  v53 = v79;
  v54 = v78;
  *(v47 + 312) = v77;
  *(v47 + 328) = v54;
  v55 = v76;
  *(v47 + 280) = v75;
  *(v47 + 296) = v55;
  *(v47 + 264) = v74;
  *(v47 + 352) = 0;
  *(v47 + 360) = 0;
  *(v47 + 344) = v53;
  *(v47 + 368) = 4;
  *(v47 + 376) = sub_100039930;
  *(v47 + 384) = v46;
  *(v47 + 392) = 0;
  *(v47 + 400) = String.init(argument:);
  *(v47 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v47);
}

uint64_t (*Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)(char a1, uint64_t a2, char a3, char a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  *(v10 + 25) = a3 & 1;
  *(v10 + 26) = a4;
  v11 = *(a5 + 16);
  *(v10 + 32) = *a5;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a5 + 32);
  *(v10 + 80) = *(a5 + 48);
  return sub_1000359CC;
}

uint64_t (*Flag<A>.init(name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 2;
  *(v8 + 25) = a2 & 1;
  *(v8 + 26) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_100039A3C;
}

uint64_t sub_100035A64()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t (*Flag<A>.init(name:help:)(uint64_t a1, uint64_t a2))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 72) = *(a2 + 48);
  return sub_100035B98;
}

uint64_t sub_100035B44()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100035BA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a6;
  v8 = type metadata accessor for Parsed(0, a4, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v23 - v10);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v18 = v23;
  v17 = v24;
  *(v16 + 16) = a4;
  *(v16 + 24) = v18;
  (*(v13 + 32))(v16 + v14, v17, v12);
  v19 = v16 + v15;
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = *(a3 + 48);
  *(v19 + 49) = v25;
  sub_10006A034(sub_1000394BC, v16, a4, v21, v11);
  return (*(v9 + 32))(v26, v11, v8);
}

uint64_t sub_100035D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v50 = a6;
  v49 = a5;
  v55 = a4;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = *(AssociatedConformanceWitness + 8);
  v54 = type metadata accessor for EnumeratedSequence();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v40 - v16;
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v60 = a7;
  v61 = a8;
  v46 = a1;
  v62 = a1;
  v63 = a2;
  v47 = a2;
  v48 = a3;
  v64 = a3;
  type metadata accessor for Optional();
  sub_100034328(sub_10003958C, v59, &type metadata for Never, &type metadata for String, v20, v66);
  v41 = v66[0];
  v42 = v66[1];
  v44 = v13;
  dispatch thunk of static CaseIterable.allCases.getter();
  v57 = a7;
  v58 = a8;
  v53 = a8;
  v21 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v45 = AssociatedConformanceWitness;
  v23 = sub_1000446D4(sub_100039A44, v56, AssociatedTypeWitness, v21, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v22);
  v24 = *(v17 + 8);
  v24(v19, AssociatedTypeWitness);
  v25 = *(v23 + 16) + 1;
  v26 = 40;
  do
  {
    if (!--v25)
    {
      break;
    }

    v27 = *(v23 + v26);
    v26 += 56;
  }

  while (!v27);
  v28 = v25 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v29 = v51;
  Sequence.enumerated()();
  v24(v19, AssociatedTypeWitness);
  __chkstk_darwin();
  v30 = v53;
  *(&v40 - 12) = a7;
  *(&v40 - 11) = v30;
  v31 = v47;
  *(&v40 - 10) = v46;
  *(&v40 - 9) = v31;
  *(&v40 - 8) = v48;
  *(&v40 - 7) = v23;
  *(&v40 - 6) = v49;
  *(&v40 - 40) = v28;
  v32 = v41;
  *(&v40 - 4) = v55;
  *(&v40 - 3) = v32;
  *(&v40 - 2) = v42;
  *(&v40 - 8) = v50;
  __chkstk_darwin();
  *(&v40 - 4) = a7;
  *(&v40 - 3) = v33;
  *(&v40 - 2) = sub_100039628;
  *(&v40 - 1) = v34;
  v65 = v45;
  v35 = v54;
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1000446D4(sub_100039A5C, (&v40 - 6), v35, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v37);

  (*(v52 + 8))(v29, v35);
  return sub_100072F04(v38);
}

uint64_t sub_100036214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __chkstk_darwin();
  (*(v14 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v16 = String.init<A>(describing:)();
  v18 = v17;

  v19 = sub_1000681D4(v16, v18, a2, a3);
  v21 = v20;
  v22 = (*(a6 + 24))(a1, a5, a6);
  v23 = sub_10003B384(v19, v21, v22);

  if (*(v23 + 2))
  {
    v24 = *(v23 + 4);
    v25 = *(v23 + 5);
    v26 = v23[48];
    sub_10002BB8C(v24, v25, v26);

    v27 = sub_100068E38(v24, v25, v26);
    v29 = v28;
    result = sub_100028AE8(v24, v25, v26);
  }

  else
  {

    v27 = 0;
    v29 = 0;
  }

  *a7 = v27;
  a7[1] = v29;
  return result;
}

uint64_t sub_100036400@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _OWORD *a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v152 = a8;
  v156 = a3;
  v157 = a6;
  v138 = a9;
  v20 = *(a7 + 8);
  v145 = *a7;
  v139 = v20;
  v21 = *(a7 + 24);
  v135 = *(a7 + 16);
  v130 = v21;
  v22 = *(a7 + 32);
  v124 = *(a7 + 40);
  v125 = v22;
  LODWORD(v123) = *(a7 + 48);
  v23 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v122 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v126 = &v117 - v24;
  v142 = v23;
  v136 = *(v23 - 8);
  __chkstk_darwin();
  v121 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v117 - v26;
  __chkstk_darwin();
  v137 = v27;
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v29;
  v147 = *(v29 + 16);
  v148 = v29 + 16;
  v147(v28, a2, a14);
  v140 = v28;
  v30 = String.init<A>(describing:)();
  v32 = v31;

  v155 = a4;
  v151 = a5;
  v33 = sub_1000681D4(v30, v32, v156, a4);
  v35 = v34;
  v37 = v36;
  v38 = *(a15 + 24);
  v149 = a2;
  v154 = a14;
  v141 = a15;
  result = v38(a2, a14, a15);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v157 + 2) > a1)
  {
    v132 = result;
    v133 = v33;
    v40 = a12;
    v41 = &v157[56 * a1];
    v42 = *(v41 + 4);
    v43 = *(v41 + 5);
    v44 = *(v41 + 6);
    v45 = *(v41 + 7);
    v46 = *(v41 + 8);
    v47 = *(v41 + 9);
    v131 = v42;
    v150 = v43;
    v157 = v44;
    v48 = v41[80];
    v49 = v45;
    v50 = v46;
    v143 = a11;
    v144 = v47;
    v51 = v48;
    if (!v43)
    {
      v127 = v44;
      v128 = v45;
      v52 = v37;
      v53 = v42;
      v54 = v46;
      v55 = v48;
      sub_10002600C(a7, v169, &qword_1000B52F0, qword_100091640);
      v42 = v53;
      v37 = v52;
      v40 = a12;
      v43 = 0;
      v44 = v127;
      v45 = v128;
      v48 = v55;
      v46 = v54;
      v131 = v145;
      v150 = v139;
      v157 = v135;
      v49 = v130;
      v50 = v125;
      v144 = v124;
      v51 = v123;
    }

    v139 = v49;
    v125 = v50;
    LODWORD(v130) = v51;
    v135 = v35;
    v56 = a10;
    v57 = v154;
    v58 = v146;
    v134 = v37;
    v145 = a10;
    if (v152)
    {
      v117 = v40;
      v118 = v42;
      v127 = v44;
      v128 = v45;
      v119 = v48;
      v120 = v46;
      v123 = v47;
      v147(v146, v149, v154);
      v59 = v153;
      (*(v153 + 56))(v58, 0, 1, v57);
      v60 = v57;
      v61 = *(TupleTypeMetadata2 + 48);
      v62 = v58;
      v63 = *(v136 + 16);
      v64 = v126;
      v65 = v142;
      v63(v126, v62, v142);
      v124 = v61;
      v66 = &v64[v61];
      v57 = v60;
      v63(v66, a10, v65);
      v67 = *(v59 + 48);
      if (v67(v64, 1, v60) == 1)
      {
        sub_10003972C(v118, v43, v127, v128, v120, v123);
        v68 = *(v136 + 8);
        v69 = v142;
        v68(v146, v142);
        v70 = v67(&v64[v124], 1, v60);
        v71 = v151;
        v72 = v69;
        v73 = v67;
        if (v70 == 1)
        {
          v68(v64, v72);
          v56 = v145;
          v74 = v157;
          goto LABEL_25;
        }
      }

      else
      {
        v75 = v121;
        v63(v121, v64, v142);
        v76 = v124;
        v73 = v67;
        if (v67(&v64[v124], 1, v57) != 1)
        {
          TupleTypeMetadata2 = v67;
          v109 = v153;
          v110 = &v64[v76];
          v111 = v140;
          (*(v153 + 32))(v140, v110, v57);
          sub_10003972C(v118, v43, v127, v128, v120, v123);
          v112 = dispatch thunk of static Equatable.== infix(_:_:)();
          v57 = v154;
          v113 = v112;
          v114 = *(v109 + 8);
          v114(v111, v154);
          v115 = *(v136 + 8);
          v116 = v142;
          v115(v146, v142);
          v114(v75, v57);
          v73 = TupleTypeMetadata2;
          v115(v126, v116);
          v71 = v151;
          v56 = v145;
          v74 = v157;
          if ((v113 & 1) == 0)
          {
            v143 = 0;
            v40 = 0;
LABEL_14:
            LODWORD(v146) = a13;
            LODWORD(v142) = v73(v56, 1, v57);
            sub_1000021C0(&qword_1000B5210, &unk_100092A40);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_10008E640;
            v78 = v155;
            *(v77 + 32) = v156;
            *(v77 + 40) = v78;
            *(v77 + 48) = v71;
            v79 = v150;
            if (v150)
            {
              v157 = v74;
              v80 = v40;
              v81 = v144;
              if (v144)
              {

                v82 = v139;

                v83 = v79;
                v84 = v82;
                v85 = v81;
                v86 = v131;
                v87 = v125;
                goto LABEL_21;
              }

              v84 = v139;

              v83 = v79;
              v86 = v131;
            }

            else
            {
              v80 = v40;
              v86 = 0;
              v157 = 0;
              v83 = 0xE000000000000000;
              v84 = 0xE000000000000000;
            }

            v87 = 0;
            if (!v79)
            {
              v88 = 0;
              v85 = 0xE000000000000000;
              goto LABEL_23;
            }

            v85 = 0xE000000000000000;
LABEL_21:

            v88 = v130;
LABEL_23:
            *&v170 = v142 != 1;
            *(&v170 + 1) = v143;
            v171 = v80;
            v172 = v77;
            v173 = _swiftEmptyArrayStorage;
            v174 = (v152 & 1) == 0;
            v175 = v86;
            v176 = v83;
            v177 = v157;
            v178 = v84;
            v179 = v87;
            v180 = v85;
            v181 = v88;
            v182 = 0;
            v183 = 0xE000000000000000;
            v158[0] = v170;
            v158[1] = v143;
            v158[2] = v80;
            v158[3] = v77;
            v158[4] = _swiftEmptyArrayStorage;
            v159 = v174;
            v160 = v86;
            v161 = v83;
            v162 = v157;
            v163 = v84;
            v164 = v87;
            v165 = v85;
            v166 = v88;
            v167 = 0;
            v168 = 0xE000000000000000;
            sub_10002F094(&v170, v169);
            sub_10002F0F0(v158);
            v89 = v140;
            v90 = v154;
            v147(v140, v149, v154);
            v91 = v153;
            v92 = (*(v153 + 80) + 56) & ~*(v153 + 80);
            v93 = v92 + v137;
            v94 = swift_allocObject();
            v95 = v141;
            *(v94 + 2) = v90;
            *(v94 + 3) = v95;
            v96 = v155;
            v97 = v156;
            *(v94 + 4) = v156;
            *(v94 + 5) = v96;
            v98 = v151;
            *(v94 + 6) = v151;
            (*(v91 + 32))(&v94[v92], v89, v90);
            v94[v93] = v146;

            sub_100038DAC(v132, v97, v96, v98, v133, v135, &v170, 0, v169, v145, sub_100039A9C, v94, 0, v90);

            sub_10002F0F0(&v170);

            v99 = v169[9];
            v100 = v169[10];
            v101 = v169[7];
            v102 = v138;
            v138[8] = v169[8];
            v102[9] = v99;
            v103 = v169[11];
            v102[10] = v100;
            v102[11] = v103;
            v104 = v169[5];
            v105 = v169[6];
            v106 = v169[3];
            v102[4] = v169[4];
            v102[5] = v104;
            v102[6] = v105;
            v102[7] = v101;
            v107 = v169[1];
            v108 = v169[2];
            *v102 = v169[0];
            v102[1] = v107;
            v102[2] = v108;
            v102[3] = v106;
            return result;
          }

LABEL_25:
          v40 = v117;

          goto LABEL_14;
        }

        sub_10003972C(v118, v43, v127, v128, v120, v123);
        (*(v136 + 8))(v146, v142);
        (*(v153 + 8))(v75, v57);
        v71 = v151;
      }

      (*(v122 + 8))(v64, TupleTypeMetadata2);
      v143 = 0;
      v40 = 0;
      v56 = v145;
    }

    else
    {
      sub_10003972C(v42, v43, v44, v45, v46, v47);
      v73 = *(v153 + 48);

      v71 = v151;
    }

    v74 = v157;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Flag<A>.init(wrappedValue:exclusivity:help:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for Optional();
  __chkstk_darwin();
  v13 = &v16 - v12;
  v14 = *(a4 - 8);
  (*(v14 + 16))(&v16 - v12, a1, a4);
  (*(v14 + 56))(v13, 0, 1, a4);
  sub_100035BA4(v13, a2, a3, a4, a5, a6);
  return (*(v14 + 8))(a1, a4);
}

uint64_t Flag<A>.init(exclusivity:help:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Optional();
  __chkstk_darwin();
  v11 = &v13 - v10;
  (*(*(a3 - 8) + 56))(&v13 - v10, 1, 1, a3);
  return sub_100035BA4(v11, a1, a2, a3, a4, a5);
}

uint64_t Flag.init<A>(exclusivity:help:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed(0, v10, v11, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v21 - v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 80) = *(a2 + 48);
  *(v17 + 81) = a1;
  sub_10006A034(sub_1000375B4, v17, v10, v19, v16);
  return (*(v14 + 32))(a5, v16, v13);
}

uint64_t sub_1000371B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34[1] = *(AssociatedConformanceWitness + 8);
  v44 = type metadata accessor for EnumeratedSequence();
  v42 = *(v44 - 8);
  __chkstk_darwin();
  v39 = v34 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v34 - v13;
  dispatch thunk of static CaseIterable.allCases.getter();
  v46 = a6;
  v47 = a7;
  v43 = a7;
  v15 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v35 = AssociatedConformanceWitness;
  v17 = sub_1000446D4(sub_1000392FC, v45, AssociatedTypeWitness, v15, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v16);
  v18 = *(v12 + 8);
  v18(v14, AssociatedTypeWitness);
  v19 = *(v17 + 16) + 1;
  v20 = 40;
  do
  {
    if (!--v19)
    {
      break;
    }

    v21 = *(v17 + v20);
    v20 += 56;
  }

  while (!v21);
  v22 = v19 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v23 = v39;
  Sequence.enumerated()();
  v18(v14, AssociatedTypeWitness);
  __chkstk_darwin();
  v24 = v43;
  v34[-10] = a6;
  v34[-9] = v24;
  v25 = v37;
  v34[-8] = v36;
  v34[-7] = v25;
  v34[-6] = v38;
  LOBYTE(v34[-5]) = v22;
  v26 = v40;
  v34[-4] = v17;
  v34[-3] = v26;
  LOBYTE(v34[-2]) = v41;
  __chkstk_darwin();
  v34[-4] = a6;
  v34[-3] = v27;
  v34[-2] = sub_100039314;
  v34[-1] = v28;
  v48 = v35;
  v29 = v44;
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1000446D4(sub_100039A5C, &v34[-6], v29, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v31);

  (*(v42 + 8))(v23, v29);
  return sub_100072F04(v32);
}

uint64_t sub_100037568()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 82, 7);
}

uint64_t sub_1000375C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v75 = a7;
  v76 = a1;
  v102 = a6;
  v90 = a9;
  v17 = *a8;
  v18 = a8[1];
  v19 = a8[3];
  v97 = a8[2];
  v98 = v17;
  v96 = v19;
  v20 = a8[5];
  v77 = a8[4];
  v78 = v18;
  v95 = v20;
  v99 = *(a8 + 48);
  v21 = type metadata accessor for Optional();
  v93 = *(v21 - 8);
  v94 = v21;
  __chkstk_darwin();
  v100 = &v75 - v22;
  __chkstk_darwin();
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v25;
  v26 = *(v25 + 16);
  v85 = v25 + 16;
  v86 = v23;
  v84 = v26;
  v26(v24, a2, a11);
  v88 = v24;
  v27 = String.init<A>(describing:)();
  v29 = v28;

  v101 = a3;
  v30 = a3;
  v31 = a4;
  v103 = a5;
  v32 = sub_1000681D4(v27, v29, v30, a4);
  v34 = v33;
  v36 = v35;
  v37 = *(a12 + 24);
  v91 = a2;
  v92 = a12;
  v87 = a11;
  result = v37(a2, a11, a12);
  v39 = result;
  if ((v102 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v75 + 16) > v76)
  {
    v40 = v75 + 56 * v76;
    v41 = *(v40 + 40);
    if (v41)
    {
      LODWORD(v42) = *(v40 + 80);
      v43 = *(v40 + 72);
      v77 = *(v40 + 64);
      v44 = *(v40 + 48);
      v45 = *(v40 + 56);
      v46 = *(v40 + 32);
      v97 = v44;
      v98 = v46;
      v95 = v43;

      v96 = v45;

      goto LABEL_7;
    }

LABEL_6:
    sub_10002600C(a8, v115, &qword_1000B52F0, qword_100091640);
    LODWORD(v42) = v99;
    v41 = v78;
LABEL_7:
    LODWORD(v78) = a10;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10008E640;
    *(v47 + 32) = v101;
    *(v47 + 40) = v31;
    *(v47 + 48) = v103;
    v82 = v36;
    v83 = v34;
    v80 = v39;
    v81 = v32;
    v79 = v31;
    if (v41)
    {
      v99 = v42;
      v42 = v95;
      if (v95)
      {

        v48 = v96;

        v49 = v41;
        v50 = v48;
        v51 = v42;
        v52 = v77;
        LOBYTE(v42) = v99;
        goto LABEL_14;
      }

      v50 = v96;

      v49 = v41;
      LOBYTE(v42) = v99;
    }

    else
    {
      v97 = 0;
      v98 = 0;
      v49 = 0xE000000000000000;
      v50 = 0xE000000000000000;
    }

    v52 = 0;
    if (!v41)
    {
      LOBYTE(v42) = 0;
      v51 = 0xE000000000000000;
      goto LABEL_16;
    }

    v51 = 0xE000000000000000;
LABEL_14:

LABEL_16:
    v116 = 1uLL;
    v117 = 0;
    v118 = v47;
    v119 = _swiftEmptyArrayStorage;
    v120 = (v102 & 1) == 0;
    v121 = v98;
    v122 = v49;
    v123 = v97;
    v124 = v50;
    v125 = v52;
    v126 = v51;
    v127 = v42;
    v128 = 0;
    v129 = 0xE000000000000000;
    v104[0] = 1;
    v104[1] = 0;
    v104[2] = 0;
    v104[3] = v47;
    v104[4] = _swiftEmptyArrayStorage;
    v105 = v120;
    v106 = v98;
    v107 = v49;
    v108 = v97;
    v109 = v50;
    v110 = v52;
    v111 = v51;
    v112 = v42;
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_10002F094(&v116, v115);
    sub_10002F0F0(v104);
    v53 = v89;
    v54 = v87;
    (*(v89 + 56))(v100, 1, 1, v87);
    v55 = v88;
    v84(v88, v91, v54);
    v56 = (*(v53 + 80) + 56) & ~*(v53 + 80);
    v57 = v56 + v86;
    v58 = swift_allocObject();
    v59 = v92;
    *(v58 + 2) = v54;
    *(v58 + 3) = v59;
    v60 = v101;
    v61 = v79;
    *(v58 + 4) = v101;
    *(v58 + 5) = v61;
    v62 = v103;
    *(v58 + 6) = v103;
    (*(v53 + 32))(&v58[v56], v55, v54);
    v58[v57] = v78;

    v74 = v54;
    v63 = v100;
    sub_100038DAC(v80, v60, v61, v62, v81, v83, &v116, 0, v115, v100, sub_100039358, v58, 0, v74);

    sub_10002F0F0(&v116);
    result = (*(v93 + 8))(v63, v94);
    v64 = v115[9];
    v65 = v115[10];
    v66 = v115[7];
    v67 = v90;
    v90[8] = v115[8];
    v67[9] = v64;
    v68 = v115[11];
    v67[10] = v65;
    v67[11] = v68;
    v69 = v115[5];
    v70 = v115[6];
    v71 = v115[3];
    v67[4] = v115[4];
    v67[5] = v69;
    v67[6] = v70;
    v67[7] = v66;
    v72 = v115[1];
    v73 = v115[2];
    *v67 = v115[0];
    v67[1] = v72;
    v67[2] = v73;
    v67[3] = v71;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100037BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = *(a2 + 48);
  *(v8 + 88) = a1;
  v10 = type metadata accessor for Array();
  sub_10006A034(sub_100038914, v8, v10, v11, &v18);
  v16 = v18;
  v17 = v19;
  v14 = type metadata accessor for Parsed(0, v10, v12, v13);
  (*(*(v14 - 8) + 32))(&v20, &v16, v14);
  return v20;
}

uint64_t sub_100037CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34[1] = *(AssociatedConformanceWitness + 8);
  v44 = type metadata accessor for EnumeratedSequence();
  v42 = *(v44 - 8);
  __chkstk_darwin();
  v40 = v34 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v34 - v13;
  dispatch thunk of static CaseIterable.allCases.getter();
  v46 = a6;
  v47 = a7;
  v43 = a7;
  v15 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v35 = AssociatedConformanceWitness;
  v17 = sub_1000446D4(sub_100039A44, v45, AssociatedTypeWitness, v15, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v16);
  v18 = *(v12 + 8);
  v18(v14, AssociatedTypeWitness);
  v19 = *(v17 + 16) + 1;
  v20 = 40;
  do
  {
    if (!--v19)
    {
      break;
    }

    v21 = *(v17 + v20);
    v20 += 56;
  }

  while (!v21);
  v22 = v19 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v23 = v40;
  Sequence.enumerated()();
  v18(v14, AssociatedTypeWitness);
  __chkstk_darwin();
  v24 = v43;
  v34[-10] = a6;
  v34[-9] = v24;
  v25 = v37;
  v34[-8] = v36;
  v34[-7] = v25;
  v26 = v39;
  v34[-6] = v38;
  LOBYTE(v34[-5]) = v22;
  v34[-4] = v17;
  v34[-3] = v26;
  v34[-2] = v41;
  __chkstk_darwin();
  v34[-4] = a6;
  v34[-3] = v27;
  v34[-2] = sub_100038924;
  v34[-1] = v28;
  v48 = v35;
  v29 = v44;
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1000446D4(sub_100038964, &v34[-6], v29, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v31);

  (*(v42 + 8))(v23, v29);
  return sub_100072F04(v32);
}

uint64_t sub_10003805C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a7;
  v69 = a1;
  v93 = a6;
  v80 = a9;
  v17 = *a8;
  v18 = a8[1];
  v19 = a8[3];
  v89 = a8[2];
  v90 = v17;
  v88 = v19;
  v20 = a8[5];
  v70 = a8[4];
  v71 = v18;
  v87 = v20;
  v91 = *(a8 + 48);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v23;
  v24 = *(v23 + 16);
  v78 = v23 + 16;
  v79 = v21;
  v77 = v24;
  (v24)(v22);
  v82 = v22;
  v25 = String.init<A>(describing:)();
  v27 = v26;

  v92 = a3;
  v28 = a3;
  v29 = a5;
  v30 = sub_1000681D4(v25, v27, v28, a4);
  v32 = v31;
  v34 = v33;
  v35 = *(a12 + 24);
  v84 = a11;
  v85 = a2;
  v81 = a12;
  result = v35(a2, a11, a12);
  v83 = result;
  if ((v93 & 1) == 0)
  {
    v37 = v32;
    goto LABEL_7;
  }

  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v68 + 16) > v69)
  {
    v37 = v32;
    v38 = v68 + 56 * v69;
    v39 = *(v38 + 40);
    if (v39)
    {
      LODWORD(v40) = *(v38 + 80);
      v41 = *(v38 + 72);
      v70 = *(v38 + 64);
      v42 = *(v38 + 48);
      v43 = *(v38 + 56);
      v44 = *(v38 + 32);
      v89 = v42;
      v90 = v44;
      v87 = v41;

      v88 = v43;

      goto LABEL_8;
    }

LABEL_7:
    sub_10002600C(a8, v106, &qword_1000B52F0, qword_100091640);
    LODWORD(v40) = v91;
    v39 = v71;
LABEL_8:
    v71 = a10;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10008E640;
    *(v45 + 32) = v92;
    *(v45 + 40) = a4;
    *(v45 + 48) = v29;
    v75 = v37;
    v76 = a4;
    v73 = v30;
    v74 = v34;
    v72 = v29;
    if (v39)
    {
      v91 = v40;
      v40 = v87;
      if (v87)
      {

        v46 = v88;

        v47 = v39;
        v48 = v46;
        v49 = v40;
        v50 = v70;
        LOBYTE(v40) = v91;
        goto LABEL_15;
      }

      v48 = v88;

      v47 = v39;
      LOBYTE(v40) = v91;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v47 = 0xE000000000000000;
      v48 = 0xE000000000000000;
    }

    v50 = 0;
    if (!v39)
    {
      LOBYTE(v40) = 0;
      v49 = 0xE000000000000000;
      goto LABEL_17;
    }

    v49 = 0xE000000000000000;
LABEL_15:

LABEL_17:
    v107 = 1uLL;
    v108 = 0;
    v109 = v45;
    v110 = _swiftEmptyArrayStorage;
    v111 = (v93 & 1) == 0;
    v112 = v90;
    v113 = v47;
    v114 = v89;
    v115 = v48;
    v116 = v50;
    v117 = v49;
    v118 = v40;
    v119 = 0;
    v120 = 0xE000000000000000;
    v95[0] = 1;
    v95[1] = 0;
    v95[2] = 0;
    v95[3] = v45;
    v95[4] = _swiftEmptyArrayStorage;
    v96 = v111;
    v97 = v90;
    v98 = v47;
    v99 = v89;
    v100 = v48;
    v101 = v50;
    v102 = v49;
    v103 = v40;
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_10002F094(&v107, v106);
    sub_10002F0F0(v95);
    v94 = v71;
    v51 = v82;
    v52 = v84;
    v77(v82, v85, v84);
    v53 = v86;
    v54 = (*(v86 + 80) + 56) & ~*(v86 + 80);
    v55 = swift_allocObject();
    v56 = v81;
    *(v55 + 2) = v52;
    *(v55 + 3) = v56;
    v57 = v92;
    v58 = v76;
    *(v55 + 4) = v92;
    *(v55 + 5) = v58;
    v59 = v72;
    *(v55 + 6) = v72;
    (*(v53 + 32))(&v55[v54], v51, v52);
    v60 = type metadata accessor for Array();

    sub_100038DAC(v83, v57, v58, v59, v73, v75, &v107, 0, v106, &v94, sub_100038CB8, v55, 0, v60);

    sub_10002F0F0(&v107);

    v61 = v106[9];
    v62 = v80;
    v80[8] = v106[8];
    v62[9] = v61;
    v63 = v106[11];
    v62[10] = v106[10];
    v62[11] = v63;
    v64 = v106[5];
    v62[4] = v106[4];
    v62[5] = v64;
    v65 = v106[7];
    v62[6] = v106[6];
    v62[7] = v65;
    v66 = v106[1];
    *v62 = v106[0];
    v62[1] = v66;
    v67 = v106[3];
    v62[2] = v106[2];
    v62[3] = v67;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_1000386A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000386DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003871C()
{
  result = qword_1000B5388;
  if (!qword_1000B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5388);
  }

  return result;
}

unint64_t sub_100038774()
{
  result = qword_1000B5390[0];
  if (!qword_1000B5390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5390);
  }

  return result;
}

unint64_t sub_100038814()
{
  result = qword_1000B5418;
  if (!qword_1000B5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5418);
  }

  return result;
}

unint64_t sub_10003886C()
{
  result = qword_1000B5420;
  if (!qword_1000B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5420);
  }

  return result;
}

uint64_t sub_1000388C0()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10003897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  v22 = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v20 - v13;
  v15 = *(a7 - 8);
  __chkstk_darwin();
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11);
  if ((*(v15 + 48))(v14, 1, a7) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v15 + 32))(v17, v14, a7);
  v26[3] = a7;
  v19 = sub_100007DE4(v26);
  (*(v15 + 16))(v19, v17, a7);
  sub_10002600C(v26, v24, &qword_1000B5428, &qword_100093030);
  v23[0] = v20;
  v23[1] = a5;
  v23[2] = v21;
  v24[4] = a1;
  v25 = 1;

  sub_10006AD50(v23);
  sub_100039234(v23);
  (*(v15 + 8))(v17, a7);
  return sub_100039288(v26);
}

uint64_t sub_100038BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100038CB8(uint64_t a1)
{
  v10 = *(v1 + 1);
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1 + ((*(*(v10 - 8) + 80) + 56) & ~*(*(v10 - 8) + 80));
  v8 = Array.init()();
  v12 = v10;
  v13 = v7;
  sub_10006A744(v4, v5, v6, a1, v8, sub_1000392F0, v11, v3);
}

double sub_100038DAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v45 = a8;
  v42 = a6;
  v37 = a5;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v44 = a12;
  v41 = a13;
  v43 = a11;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v36 - v20;
  v42 = sub_10003B384(v37, v42, a1);
  (*(v18 + 16))(v21, a10, v17);
  v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a14;
  (*(v18 + 32))(v23 + v22, v21, v17);
  v24 = (v23 + ((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v39;
  *v24 = v38;
  v24[1] = v25;
  v24[2] = v40;
  v26 = a7[5];
  v51 = a7[4];
  v52 = v26;
  v53 = a7[6];
  v54 = *(a7 + 14);
  v27 = a7[1];
  v47 = *a7;
  v48 = v27;
  v28 = a7[3];
  v49 = a7[2];
  v50 = v28;
  LOBYTE(v21) = v41 & 1;
  LOBYTE(v46[0]) = v41 & 1;

  sub_10002F094(a7, v46);
  v30 = v43;
  v29 = v44;
  sub_10003922C(v43, v44);
  v31 = v52;
  *(a9 + 72) = v51;
  *(a9 + 88) = v31;
  *(a9 + 104) = v53;
  v32 = v48;
  *(a9 + 8) = v47;
  *(a9 + 24) = v32;
  result = *&v49;
  v34 = v50;
  *(a9 + 40) = v49;
  *a9 = v42;
  v35 = v54;
  *(a9 + 56) = v34;
  *(a9 + 120) = v35;
  *(a9 + 128) = 0;
  *(a9 + 136) = 0;
  *(a9 + 144) = 4;
  *(a9 + 145) = v45;
  *(a9 + 150) = v46[63];
  *(a9 + 146) = *&v46[61];
  *(a9 + 152) = v30;
  *(a9 + 160) = v29;
  *(a9 + 168) = v21;
  *(a9 + 169) = *v46;
  *(a9 + 172) = *(&v46[1] + 1);
  *(a9 + 176) = sub_100039170;
  *(a9 + 184) = v23;
  return result;
}

uint64_t sub_100039030()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v5, 1, v1))
  {
    (*(v6 + 8))(v0 + v5, v1);
  }

  return _swift_deallocObject(v0, ((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_100039170(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for Optional() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10003897C(a1, a2, v2 + v7, *v8, v8[1], v8[2], v5);
}

uint64_t sub_100039288(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039370()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  if (*(v0 + v5 + 8))
  {
  }

  return _swift_deallocObject(v0, v5 + 50, v3 | 7);
}

uint64_t sub_1000394BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for Optional() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 49);

  return sub_100035D7C(a1, a2, a3, v3 + v10, v11, v12, v7, v8);
}

double sub_1000395B4@<D0>(uint64_t a1@<X8>)
{
  (*(*(v1 + 24) + 32))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

double sub_100039678@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5(v15, v6, &a1[*(TupleTypeMetadata2 + 48)]);
  v8 = v23;
  a2[8] = v22;
  a2[9] = v8;
  v9 = v25;
  a2[10] = v24;
  a2[11] = v9;
  v10 = v19;
  a2[4] = v18;
  a2[5] = v10;
  v11 = v21;
  a2[6] = v20;
  a2[7] = v11;
  v12 = v15[1];
  *a2 = v15[0];
  a2[1] = v12;
  result = *&v16;
  v14 = v17;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

void sub_10003972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_10003977C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000399BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000399FC()
{

  return _swift_deallocObject(v0, 41, 7);
}

Swift::Int sub_100039B5C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (!(v4 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (v4 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(v4 & 1);
    return Hasher._finalize()();
  }

  if (v3 | v2 || v4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100039CE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a4 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a4 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a4 & 1);
    return;
  }

  if (a3 | a2 || a4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100039D90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a3 & 1);
    return Hasher._finalize()();
  }

  if (a2 | a1 || a3 != 128)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_100039E7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s14ArgumentParser17NameSpecificationV7ElementV4hash4intoys6HasherVz_tF_0();
  return Hasher._finalize()();
}

uint64_t NameSpecification.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003B144();
  v7 = sub_100083748(a2, a3, v6);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t NameSpecification.init(arrayLiteral:)(uint64_t a1)
{
  v1 = sub_10003AD7C(a1);

  return v1;
}

uint64_t sub_100039FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10003AD7C(a1);

  *a2 = v3;
  return result;
}

uint64_t static NameSpecification.customLong(_:withSingleDash:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000021C0(&qword_1000B5438, &qword_100092060);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  *(inited + 16) = xmmword_10008E640;
  *(inited + 40) = a2;
  *(inited + 48) = a3;

  v7 = sub_10003AD7C(inited);
  swift_setDeallocating();
  sub_10003AF24(inited + 32);

  return v7;
}

uint64_t sub_10003A120(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003AD7C(a1);
  sub_10003AF24(a2);

  return v3;
}

uint64_t static NameSpecification.customShort(_:allowingJoined:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000021C0(&qword_1000B5438, &qword_100092060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 | 0x40;

  v7 = sub_10003AD7C(inited);
  swift_setDeallocating();
  sub_10003AF24(inited + 32);

  return v7;
}

uint64_t static NameSpecification.shortAndLong.getter()
{
  v0 = sub_10003AD7C(&off_1000AC218);
  swift_arrayDestroy();

  return v0;
}

char *sub_10003A2B8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 16);
  v8 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v8 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v8;
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = a6;
  v11 = a2;
  v12 = 0;
  result = _swiftEmptyArrayStorage;
  v14 = a4 + 48;
  v55 = a4 + 48;
  do
  {
    v15 = (v14 + 24 * v12);
    for (i = v12; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_48;
      }

      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      if (v19 >> 6 == 1)
      {
        if (a3)
        {
          v56 = result;
          v21 = v19 & 1 | 0x40;
          sub_10003B5D8(v17, v18, v19);
          goto LABEL_38;
        }

        goto LABEL_7;
      }

      if (v19 >> 6 != 2)
      {
        v56 = result;

        v22 = sub_10003A958(a1, v11, v17, v18);
        v23 = v9;
        v25 = v24;
        sub_10003B5E8(v17, v18, v19);
        if (v19)
        {
          v21 = 0x80;
        }

        else
        {
          v21 = 0;
        }

        v17 = v22;
        v18 = v25;
        v9 = v23;
LABEL_37:
        v11 = a2;
        goto LABEL_38;
      }

      if (!(v18 | v17) && v19 == 128)
      {
        v56 = result;

        if (v52)
        {
          String.subscript.getter();

          v26 = Character.uppercased()();

          String.append(_:)(v26);

          sub_100068124(1uLL, a5, v9);

          v27 = static String._fromSubstring(_:)();
          v29 = v28;

          v30._countAndFlagsBits = v27;
          v30._object = v29;
          String.append(_:)(v30);
        }

        v32 = a1;
        v31 = v11;
        v33 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v33 = a1 & 0xFFFFFFFFFFFFLL;
        }

        v49 = v9;
        if (v33)
        {
          if (String.subscript.getter() == 95 && v34 == 0xE100000000000000)
          {

            goto LABEL_31;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
LABEL_31:
            sub_100068124(1uLL, a1, v11);

            v32 = static String._fromSubstring(_:)();
            v31 = v36;
          }
        }

        sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008E640;
        *(inited + 32) = a5;
        v9 = (inited + 32);
        *(inited + 40) = v49;
        v38 = *(a7 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v40 = *(a7 + 24) >> 1, v41 = a7, v40 <= v38))
        {
          v41 = sub_100042F3C(isUniquelyReferenced_nonNull_native, v38 + 1, 1, a7);
          v40 = *(v41 + 3) >> 1;
        }

        if (v40 > *(v41 + 2))
        {
          swift_arrayInitWithCopy();

          ++*(v41 + 2);
          v17 = sub_10004CE4C(45, 0xE100000000000000, v32, v31);
          v18 = v42;

          v21 = 0;
          v9 = v49;
          goto LABEL_37;
        }

LABEL_49:
        __break(1u);
LABEL_50:
        _StringGuts.grow(_:)(54);
        v46._countAndFlagsBits = 0x272079654BLL;
        v46._object = 0xE500000000000000;
        String.append(_:)(v46);
        v47._countAndFlagsBits = a5;
        v47._object = v9;
        String.append(_:)(v47);
        v48._object = 0x8000000100099250;
        v48._countAndFlagsBits = 0xD00000000000002FLL;
        String.append(_:)(v48);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (a3)
      {
        break;
      }

LABEL_7:
      v15 += 24;
      if (v12 == v7)
      {
        return result;
      }
    }

    v56 = result;
    if (!v52)
    {
      goto LABEL_50;
    }

    v17 = String.subscript.getter();
    v18 = v20;
    v21 = 64;
LABEL_38:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v56;
    }

    else
    {
      result = sub_100043274(0, *(v56 + 2) + 1, 1, v56);
    }

    v44 = *(result + 2);
    v43 = *(result + 3);
    if (v44 >= v43 >> 1)
    {
      result = sub_100043274((v43 > 1), v44 + 1, 1, result);
    }

    *(result + 2) = v44 + 1;
    v45 = &result[24 * v44];
    *(v45 + 4) = v17;
    *(v45 + 5) = v18;
    v45[48] = v21;
    v14 = v55;
  }

  while (v12 != v7);
  return result;
}

uint64_t sub_10003A824(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    String.subscript.getter();

    v8 = Character.uppercased()();

    String.append(_:)(v8);

    sub_100068124(1uLL, a3, a4);

    v9 = static String._fromSubstring(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10003A958(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3;
  v45 = a4;
  v40 = 45;
  v41 = 0xE100000000000000;
  sub_100027B90();
  if (StringProtocol.contains<A>(_:)())
  {
    goto LABEL_2;
  }

  v40 = 95;
  v41 = 0xE100000000000000;
  if (StringProtocol.contains<A>(_:)())
  {
    v40 = a1;
    v41 = a2;

    v12 = 95;
    goto LABEL_5;
  }

  sub_10004FE0C(a3, a4);
  if (!v16 || (v17 = Character.isLowercase.getter(), , (v17 & 1) == 0))
  {
LABEL_2:
    v40 = a1;
    v41 = a2;

    v12 = 45;
LABEL_5:
    v13 = 0xE100000000000000;
    String.append(_:)(*&v12);
    v14._countAndFlagsBits = a3;
    v14._object = a4;
    String.append(_:)(v14);
    return v40;
  }

  v18 = HIBYTE(a4) & 0xF;
  v40 = a3;
  v41 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v18 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v42 = 0;
  v43 = v18;

  v19 = String.Iterator.next()();
  result = v19.value._countAndFlagsBits;
  if (!v19.value._object)
  {
LABEL_52:

    goto LABEL_2;
  }

  countAndFlagsBits = v19.value._countAndFlagsBits;
  object = v19.value._object;
  v39 = (v9 + 8);
  while (1)
  {
    v22 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v22)
    {
      break;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v27 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v24 = countAndFlagsBits;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v23 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = _StringObject.sharedUTF8.getter();
        }

        v24 = *v23;
      }

      v25 = v24;
      v26 = (__clz(~v24) - 24) << 16;
      if (v25 < 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 65541;
      }
    }

    v28 = 4 * v22;
    if (4 * v22 == v27 >> 14)
    {
      result = sub_10004F9C0(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_54;
      }

      Unicode.Scalar.properties.getter();
      v29 = Unicode.Scalar.Properties.isUppercase.getter();
      (*v39)(v11, v8);
      if (v29)
      {
        goto LABEL_50;
      }
    }

    if (Character._isUppercased.getter())
    {
      if ((object & 0x1000000000000000) != 0)
      {
        v32 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((object & 0x2000000000000000) != 0)
        {
          v31 = countAndFlagsBits;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v30 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v30 = _StringObject.sharedUTF8.getter();
          }

          v31 = *v30;
        }

        v33 = v31;
        v34 = (__clz(~v31) - 24) << 16;
        if (v33 < 0)
        {
          v32 = v34;
        }

        else
        {
          v32 = 65541;
        }
      }

      if (v28 == v32 >> 14)
      {
        result = sub_10004F9C0(countAndFlagsBits, object);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_55;
        }

        Unicode.Scalar.properties.getter();
        v35 = Unicode.Scalar.Properties.isCased.getter();
        (*v39)(v11, v8);
        if (v35)
        {
          goto LABEL_50;
        }
      }

      if ((Character._isUppercased.getter() & 1) == 0)
      {
LABEL_50:

LABEL_51:

        return sub_10003A824(a1, a2, a3, a4);
      }

      v36 = Character._isLowercased.getter();

      if ((v36 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v37 = String.Iterator.next()();
    result = v37.value._countAndFlagsBits;
    countAndFlagsBits = v37.value._countAndFlagsBits;
    object = v37.value._object;
    if (!v37.value._object)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_10003AD7C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 48;
  v4 = _swiftEmptyArrayStorage;
  v14 = result + 48;
  do
  {
    v15 = v4;
    v5 = (v3 + 24 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      sub_10003B5D8(v8, v7, *v5);
      sub_10003B5D8(v8, v7, v9);
      v10 = sub_100056798(v16, v8, v7, v9);
      sub_10003B5E8(v16[0], v16[1], v17);
      if (v10)
      {
        break;
      }

      result = sub_10003B5E8(v8, v7, v9);
      v5 += 24;
      if (v2 == v1)
      {
        return v15;
      }
    }

    v4 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = v15;
    if ((result & 1) == 0)
    {
      result = sub_10004E7E8(0, v15[2] + 1, 1);
      v4 = v18;
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_10004E7E8((v11 > 1), v12 + 1, 1);
      v4 = v18;
    }

    v4[2] = v12 + 1;
    v13 = &v4[3 * v12];
    v13[4] = v8;
    v13[5] = v7;
    *(v13 + 48) = v9;
    v3 = v14;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_10003AF54(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_6;
    }

    if (a2 | a1 || a3 != 128)
    {
      if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
      {
        goto LABEL_20;
      }
    }

    else if ((a6 & 0xC0) != 0x80 || a5 | a4)
    {
      goto LABEL_20;
    }

    if (a6 == 128)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (a6 >= 0x40u)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (a1 != a4 || a2 != a5)
  {
    v6 = a3;
    v7 = a6;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = a6 ^ a3 ^ 1;
  return v9 & 1;
}

BOOL _s14ArgumentParser17NameSpecificationV7ElementV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a1 == a4 && a2 == a5)
        {
          return (a3 & 1) == (a6 & 1);
        }

        return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((a3 ^ a6) & 1) == 0;
      }
    }

    else
    {
      if (a2 | a1 || a3 != 128)
      {
        if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
        {
          return 0;
        }
      }

      else if ((a6 & 0xC0) != 0x80 || a5 | a4)
      {
        return 0;
      }

      if (a6 == 128)
      {
        return 1;
      }
    }
  }

  else if (a6 < 0x40u)
  {
    if (a1 == a4 && a2 == a5)
    {
      return ((a3 ^ a6) & 1) == 0;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((a3 ^ a6) & 1) == 0;
  }

  return 0;
}

unint64_t sub_10003B144()
{
  result = qword_1000B5430;
  if (!qword_1000B5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5430);
  }

  return result;
}

unint64_t sub_10003B19C()
{
  result = qword_1000B5440;
  if (!qword_1000B5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5440);
  }

  return result;
}

uint64_t sub_10003B200(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10003B234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003B28C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10003B2F0(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_10003B330()
{
  result = qword_1000B5448;
  if (!qword_1000B5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5448);
  }

  return result;
}

char *sub_10003B384(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v28._countAndFlagsBits = a1;
    v28._object = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v27 = v4;
    v5 = (a3 + 48);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (!(v9 >> 6))
      {
        break;
      }

      if (v9 >> 6 == 1)
      {
        v10 = v9 & 1 | 0x40;
LABEL_11:
        v11 = *(v5 - 2);
        v12 = *(v5 - 1);
        goto LABEL_12;
      }

      if (v8 | v7 || v9 != 128)
      {
        if (!v27)
        {
          _StringGuts.grow(_:)(54);
          v25._countAndFlagsBits = 0x272079654BLL;
          v25._object = 0xE500000000000000;
          String.append(_:)(v25);
          String.append(_:)(v28);
          v26._object = 0x8000000100099250;
          v26._countAndFlagsBits = 0xD00000000000002FLL;
          String.append(_:)(v26);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v20 = *v5;
        v21 = *(v5 - 1);
        v22 = *(v5 - 2);
        v11 = String.subscript.getter();
        v12 = v23;
        v10 = 64;
        v7 = v22;
        v8 = v21;
        LOBYTE(v9) = v20;
      }

      else
      {
        v16 = *(v5 - 2);
        v17 = *(v5 - 1);
        v18 = sub_10004CE4C(45, 0xE100000000000000, v28._countAndFlagsBits, v28._object);
        LOBYTE(v9) = 0x80;
        v11 = v18;
        v7 = v16;
        v12 = v19;
        v8 = v17;
        v10 = 0;
      }

LABEL_12:
      sub_10003B5D8(v7, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100043274(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100043274((v13 > 1), v14 + 1, 1, v6);
      }

      v5 += 24;
      *(v6 + 2) = v14 + 1;
      v15 = &v6[24 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      v15[48] = v10;
      if (!--v3)
      {
        return v6;
      }
    }

    if (v9)
    {
      v10 = 0x80;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_11;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003B5D8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_10003B5E8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t Option.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for Option(0, a2, a3, a4);
  sub_10002F35C(a1, v10);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v10, v7, WitnessTable, a5);
  return sub_100002B38(a1);
}

uint64_t Option.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*Option.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Option.wrappedValue.getter(a2, v10, v11, v12);
  return sub_10002F754;
}

uint64_t Option.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v11 = type metadata accessor for Parsed(0, v3, v9, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v12 + 16))(&v17 - v13, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v14, v11);
    return 0xD000000000000014;
  }

  else
  {
    (*(v4 + 32))(v8, v14, v3);
    (*(v4 + 16))(v6, v8, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v8, v3);
    return v16;
  }
}

uint64_t Option<A>.init(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v26 = a2;
  v28 = a1;
  v32 = a9;
  v12 = type metadata accessor for Parsed(0, a8, a3, a4);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v25 - v14);
  v16 = *(a8 - 8);
  v17 = (*(v16 + 80) + 90) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  *(v19 + 24) = a10;
  *(v19 + 32) = v26;
  v20 = *(a4 + 16);
  *(v19 + 40) = *a4;
  *(v19 + 56) = v20;
  *(v19 + 72) = *(a4 + 32);
  *(v19 + 88) = *(a4 + 48);
  *(v19 + 89) = v27;
  (*(v16 + 32))(v19 + v17, v28, a8);
  v21 = v19 + v18;
  v22 = v30;
  *v21 = v29;
  *(v21 + 8) = v22;
  *(v21 + 16) = v31;
  sub_10006A034(sub_10003EB90, v19, a8, v23, v15);
  return (*(v13 + 32))(v32, v15, v12);
}

uint64_t sub_10003BDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v43 = a8;
  v40 = a7;
  v45 = a6;
  v42 = a5;
  v41 = a3;
  v44 = type metadata accessor for Optional();
  v14 = *(v44 - 8);
  __chkstk_darwin();
  v16 = &v39 - v15;
  v19 = type metadata accessor for Bare(0, a11, v17, v18);

  v20 = a1;
  v21 = sub_10003B384(a1, a2, a4);
  v22 = *(a11 - 8);
  (*(v22 + 16))(v16, v40, a11);
  (*(v22 + 56))(v16, 0, 1, a11);
  v23 = v42;
  sub_10003350C(v42, v46);
  v24 = v43;
  sub_10003357C(v43, a9, a10);
  WitnessTable = swift_getWitnessTable();
  v26 = sub_10005B274(v20, a2, v41, v21, v23, v45, v16, v46, v24, a9, a10, v19, WitnessTable);
  (*(v14 + 8))(v16, v44, v26);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v27 = swift_allocObject();
  v28 = v46[8];
  v29 = v46[10];
  v30 = v46[11];
  v27[11] = v46[9];
  v27[12] = v29;
  v27[13] = v30;
  v31 = v46[4];
  v32 = v46[6];
  v33 = v46[7];
  v27[7] = v46[5];
  v27[8] = v32;
  v27[9] = v33;
  v27[10] = v28;
  v34 = v46[0];
  v35 = v46[1];
  v27[1] = xmmword_10008E640;
  v27[2] = v34;
  v36 = v46[2];
  v37 = v46[3];
  v27[3] = v35;
  v27[4] = v36;
  v27[5] = v37;
  v27[6] = v31;
  return sub_100072F04(v27);
}

uint64_t Option<A>.init(wrappedValue:name:parsing:completion:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = a7;
  v23 = a6;
  v17 = *(a8 - 8);
  __chkstk_darwin();
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v20);
  Option<A>.init(wrappedValue:name:parsing:help:completion:)(v19, a2, a3, v22, a4, a5, v23, a8, a9, a10);
  return (*(v17 + 8))(a1, a8);
}

uint64_t Option<A>.init(name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  HIDWORD(v24) = a6;
  v25 = a9;
  v16 = type metadata accessor for Parsed(0, a7, a3, a4);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v24 - v18);
  v20 = swift_allocObject();
  v21 = *(a3 + 16);
  *(v20 + 40) = *a3;
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  *(v20 + 32) = a1;
  *(v20 + 56) = v21;
  *(v20 + 72) = *(a3 + 32);
  *(v20 + 88) = *(a3 + 48);
  *(v20 + 89) = a2;
  *(v20 + 96) = a4;
  *(v20 + 104) = a5;
  *(v20 + 112) = BYTE4(v24);
  sub_10006A034(sub_10003EC34, v20, a7, v22, v19);
  return (*(v17 + 32))(v25, v19, v16);
}

uint64_t sub_10003C34C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v39 = a7;
  v41 = a6;
  v38 = a5;
  v37 = a3;
  v40 = type metadata accessor for Optional();
  v14 = *(v40 - 8);
  __chkstk_darwin();
  v16 = &v37 - v15;
  v19 = type metadata accessor for Bare(0, a10, v17, v18);

  v20 = sub_10003B384(a1, a2, a4);
  (*(*(a10 - 8) + 56))(v16, 1, 1, a10);
  v21 = v38;
  sub_10003350C(v38, v42);
  v22 = v39;
  sub_10003357C(v39, a8, a9);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_10005B274(a1, a2, v37, v20, v21, v41, v16, v42, v22, a8, a9, v19, WitnessTable);
  (*(v14 + 8))(v16, v40, v24);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v25 = swift_allocObject();
  v26 = v42[8];
  v27 = v42[10];
  v28 = v42[11];
  v25[11] = v42[9];
  v25[12] = v27;
  v25[13] = v28;
  v29 = v42[4];
  v30 = v42[6];
  v31 = v42[7];
  v25[7] = v42[5];
  v25[8] = v30;
  v25[9] = v31;
  v25[10] = v26;
  v32 = v42[0];
  v33 = v42[1];
  v25[1] = xmmword_10008E640;
  v25[2] = v32;
  v34 = v42[2];
  v35 = v42[3];
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[6] = v29;
  return sub_100072F04(v25);
}

uint64_t Option.init(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a5;
  v34 = a7;
  v33 = a6;
  v29 = a3;
  v30 = a1;
  v35 = a9;
  v28 = a10;
  v13 = type metadata accessor for Parsed(0, a11, a3, a4);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v28 - v15);
  v17 = *(a11 - 8);
  v18 = (*(v17 + 80) + 104) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a11;
  *(v20 + 24) = a2;
  v21 = *(a4 + 16);
  *(v20 + 32) = *a4;
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a4 + 32);
  *(v20 + 80) = *(a4 + 48);
  *(v20 + 81) = v29;
  v22 = v30;
  v23 = v28;
  *(v20 + 88) = v31;
  *(v20 + 96) = v23;
  (*(v17 + 32))(v20 + v18, v22, a11);
  v24 = v20 + v19;
  v25 = v33;
  *v24 = v32;
  *(v24 + 8) = v25;
  *(v24 + 16) = v34;
  sub_10006A034(sub_10003ED4C, v20, a11, v26, v16);
  return (*(v14 + 32))(v35, v16, v13);
}

uint64_t sub_10003C7D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v47 = a8;
  v50 = a7;
  v49 = a6;
  v46 = a5;
  v43 = a3;
  v45 = a11;
  v44 = a10;
  v48 = type metadata accessor for Optional();
  v16 = *(v48 - 8);
  __chkstk_darwin();
  v18 = &v42 - v17;
  v21 = type metadata accessor for Bare(0, a13, v19, v20);

  v22 = a1;
  v42 = sub_10003B384(a1, a2, a4);
  v23 = *(a13 - 8);
  (*(v23 + 16))(v18, a9, a13);
  (*(v23 + 56))(v18, 0, 1, a13);
  v24 = v46;
  sub_10003350C(v46, v51);
  v25 = v44;
  v26 = v45;
  sub_10003357C(v44, v45, a12);
  v27 = v47;

  WitnessTable = swift_getWitnessTable();
  v29 = sub_10005B5C0(v22, a2, v43, v42, v24, v49, v50, v51, v27, v18, v25, v26, a12, v21, WitnessTable);
  (*(v16 + 8))(v18, v48, v29);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v30 = swift_allocObject();
  v31 = v51[8];
  v32 = v51[10];
  v33 = v51[11];
  v30[11] = v51[9];
  v30[12] = v32;
  v30[13] = v33;
  v34 = v51[4];
  v35 = v51[6];
  v36 = v51[7];
  v30[7] = v51[5];
  v30[8] = v35;
  v30[9] = v36;
  v30[10] = v31;
  v37 = v51[0];
  v38 = v51[1];
  v30[1] = xmmword_10008E640;
  v30[2] = v37;
  v39 = v51[2];
  v40 = v51[3];
  v30[3] = v38;
  v30[4] = v39;
  v30[5] = v40;
  v30[6] = v34;
  return sub_100072F04(v30);
}

uint64_t Option.init(name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a8;
  v27 = a6;
  v28 = a9;
  v16 = type metadata accessor for Parsed(0, a10, a3, a4);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v25 - v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a10;
  *(v20 + 24) = a1;
  v21 = *(a3 + 16);
  *(v20 + 32) = *a3;
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a3 + 32);
  *(v20 + 80) = *(a3 + 48);
  *(v20 + 81) = a2;
  v22 = v26;
  *(v20 + 88) = a7;
  *(v20 + 96) = v22;
  *(v20 + 104) = a4;
  *(v20 + 112) = a5;
  *(v20 + 120) = v27;
  sub_10006A034(sub_10003EDF8, v20, a10, v23, v19);
  return (*(v17 + 32))(v28, v19, v16);
}

uint64_t sub_10003CC4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v44 = a8;
  v47 = a7;
  v46 = a6;
  v43 = a5;
  v41 = a3;
  v40 = a1;
  v42 = a9;
  v45 = type metadata accessor for Optional();
  v15 = *(v45 - 8);
  __chkstk_darwin();
  v17 = &v39 - v16;
  v20 = type metadata accessor for Bare(0, a12, v18, v19);

  v21 = sub_10003B384(a1, a2, a4);
  (*(*(a12 - 8) + 56))(v17, 1, 1, a12);
  v22 = v43;
  sub_10003350C(v43, v48);
  v23 = v42;
  sub_10003357C(v42, a10, a11);
  v24 = v44;

  WitnessTable = swift_getWitnessTable();
  v26 = sub_10005B5C0(v40, a2, v41, v21, v22, v46, v47, v48, v24, v17, v23, a10, a11, v20, WitnessTable);
  (*(v15 + 8))(v17, v45, v26);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v27 = swift_allocObject();
  v28 = v48[8];
  v29 = v48[10];
  v30 = v48[11];
  v27[11] = v48[9];
  v27[12] = v29;
  v27[13] = v30;
  v31 = v48[4];
  v32 = v48[6];
  v33 = v48[7];
  v27[7] = v48[5];
  v27[8] = v32;
  v27[9] = v33;
  v27[10] = v28;
  v34 = v48[0];
  v35 = v48[1];
  v27[1] = xmmword_10008E640;
  v27[2] = v34;
  v36 = v48[2];
  v37 = v48[3];
  v27[3] = v35;
  v27[4] = v36;
  v27[5] = v37;
  v27[6] = v31;
  return sub_100072F04(v27);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a7;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a1;
  v37 = a9;
  v30 = a10;
  v31 = a2;
  v12 = type metadata accessor for Optional();
  v15 = type metadata accessor for Parsed(0, v12, v13, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v30 - v17);
  v19 = *(v12 - 8);
  v20 = (*(v19 + 80) + 90) & ~*(v19 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 16) = a8;
  *(v22 + 24) = v24;
  *(v22 + 32) = v23;
  v25 = *(a4 + 16);
  *(v22 + 40) = *a4;
  *(v22 + 56) = v25;
  *(v22 + 72) = *(a4 + 32);
  *(v22 + 88) = *(a4 + 48);
  *(v22 + 89) = v32;
  (*(v19 + 32))(v22 + v20, v33, v12);
  v26 = v22 + v21;
  v27 = v35;
  *v26 = v34;
  *(v26 + 8) = v27;
  *(v26 + 16) = v36;
  sub_10006A034(sub_10003EFC0, v22, v12, v28, v18);
  return (*(v16 + 32))(v37, v18, v15);
}

uint64_t sub_10003D154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = a6;
  v18 = type metadata accessor for Optional();

  v19 = sub_10003B384(a1, a2, a4);
  sub_10003350C(a5, v34);
  sub_10003357C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v19, a5, v12, a7, v34, a8, a9, a10, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v34[8];
  v23 = v34[10];
  v24 = v34[11];
  v21[11] = v34[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v34[4];
  v26 = v34[6];
  v27 = v34[7];
  v21[7] = v34[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v34[0];
  v29 = v34[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v34[2];
  v31 = v34[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t sub_10003D318@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v32 = a6;
  v30 = a4;
  v31 = a5;
  v33 = a9;
  v29 = a11;
  v16 = type metadata accessor for Optional();
  v19 = type metadata accessor for Parsed(0, v16, v17, v18);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = (&v28 - v21);
  v23 = swift_allocObject();
  v24 = *(a3 + 16);
  *(v23 + 40) = *a3;
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;
  *(v23 + 32) = a1;
  *(v23 + 56) = v24;
  *(v23 + 72) = *(a3 + 32);
  *(v23 + 88) = *(a3 + 48);
  *(v23 + 89) = a2;
  v25 = v31;
  *(v23 + 96) = v30;
  *(v23 + 104) = v25;
  *(v23 + 112) = v32;
  sub_10006A034(v29, v23, v16, v26, v22);
  return (*(v20 + 32))(v33, v22, v19);
}

uint64_t sub_10003D484(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v38 = a7;
  v39 = a6;
  v36 = a5;
  v37 = a3;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - v16;

  v18 = sub_10003B384(a1, a2, a4);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);
  v19 = v36;
  sub_10003350C(v36, v40);
  v20 = v38;
  sub_10003357C(v38, a8, a9);
  WitnessTable = swift_getWitnessTable();
  v22 = sub_10005B274(a1, a2, v37, v18, v19, v39, v17, v40, v20, a8, a9, v14, WitnessTable);
  (*(v15 + 8))(v17, v14, v22);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v23 = swift_allocObject();
  v24 = v40[8];
  v25 = v40[10];
  v26 = v40[11];
  v23[11] = v40[9];
  v23[12] = v25;
  v23[13] = v26;
  v27 = v40[4];
  v28 = v40[6];
  v29 = v40[7];
  v23[7] = v40[5];
  v23[8] = v28;
  v23[9] = v29;
  v23[10] = v24;
  v30 = v40[0];
  v31 = v40[1];
  v23[1] = xmmword_10008E640;
  v23[2] = v30;
  v32 = v40[2];
  v33 = v40[3];
  v23[3] = v31;
  v23[4] = v32;
  v23[5] = v33;
  v23[6] = v27;
  return sub_100072F04(v23);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v36 = a8;
  v37 = a5;
  v39 = a7;
  v38 = a6;
  v34 = a3;
  v35 = a1;
  v40 = a9;
  v32 = a2;
  v33 = a10;
  v12 = type metadata accessor for Optional();
  v15 = type metadata accessor for Parsed(0, v12, v13, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v31 - v17);
  v19 = *(v12 - 8);
  v20 = (*(v19 + 80) + 104) & ~*(v19 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a11;
  *(v22 + 24) = v23;
  v24 = *(a4 + 16);
  *(v22 + 32) = *a4;
  *(v22 + 48) = v24;
  *(v22 + 64) = *(a4 + 32);
  *(v22 + 80) = *(a4 + 48);
  *(v22 + 81) = v34;
  v25 = v35;
  v26 = v33;
  *(v22 + 88) = v36;
  *(v22 + 96) = v26;
  (*(v19 + 32))(v22 + v20, v25, v12);
  v27 = v22 + v21;
  v28 = v38;
  *v27 = v37;
  *(v27 + 8) = v28;
  *(v27 + 16) = v39;
  sub_10006A034(sub_10003F25C, v22, v12, v29, v18);
  return (*(v16 + 32))(v40, v18, v15);
}

uint64_t sub_10003D948(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v19 = type metadata accessor for Optional();

  v20 = sub_10003B384(a1, a2, a4);
  sub_10003350C(a5, v36);
  sub_10003357C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v20, a5, a6, a7, v36, a8, a9, a10, a11, a12, v19, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v22 = swift_allocObject();
  v23 = v36[8];
  v24 = v36[10];
  v25 = v36[11];
  v22[11] = v36[9];
  v22[12] = v24;
  v22[13] = v25;
  v26 = v36[4];
  v27 = v36[6];
  v28 = v36[7];
  v22[7] = v36[5];
  v22[8] = v27;
  v22[9] = v28;
  v22[10] = v23;
  v29 = v36[0];
  v30 = v36[1];
  v22[1] = xmmword_10008E640;
  v22[2] = v29;
  v31 = v36[2];
  v32 = v36[3];
  v22[3] = v30;
  v22[4] = v31;
  v22[5] = v32;
  v22[6] = v26;
  return sub_100072F04(v22);
}

uint64_t sub_10003DB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a5;
  v31 = a8;
  v28 = a4;
  v29 = a7;
  v32 = a6;
  v33 = a9;
  v15 = type metadata accessor for Optional();
  v18 = type metadata accessor for Parsed(0, v15, v16, v17);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = (&v28 - v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a10;
  *(v22 + 24) = a1;
  v23 = *(a3 + 16);
  *(v22 + 32) = *a3;
  *(v22 + 48) = v23;
  *(v22 + 64) = *(a3 + 32);
  *(v22 + 80) = *(a3 + 48);
  *(v22 + 81) = a2;
  v24 = v31;
  *(v22 + 88) = v29;
  *(v22 + 96) = v24;
  v25 = v30;
  *(v22 + 104) = v28;
  *(v22 + 112) = v25;
  *(v22 + 120) = v32;
  sub_10006A034(a12, v22, v15, v26, v21);
  return (*(v19 + 32))(v33, v21, v18);
}

uint64_t sub_10003DC9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v41 = a8;
  v43 = a7;
  v42 = a6;
  v39 = a5;
  v40 = a3;
  v38 = a9;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v37 - v17;

  v19 = a1;
  v37 = sub_10003B384(a1, a2, a4);
  (*(*(a12 - 8) + 56))(v18, 1, 1, a12);
  v20 = v39;
  sub_10003350C(v39, v44);
  v21 = v38;
  sub_10003357C(v38, a10, a11);
  v22 = v41;

  WitnessTable = swift_getWitnessTable();
  v24 = sub_10005B5C0(v19, a2, v40, v37, v20, v42, v43, v44, v22, v18, v21, a10, a11, v15, WitnessTable);
  (*(v16 + 8))(v18, v15, v24);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v25 = swift_allocObject();
  v26 = v44[8];
  v27 = v44[10];
  v28 = v44[11];
  v25[11] = v44[9];
  v25[12] = v27;
  v25[13] = v28;
  v29 = v44[4];
  v30 = v44[6];
  v31 = v44[7];
  v25[7] = v44[5];
  v25[8] = v30;
  v25[9] = v31;
  v25[10] = v26;
  v32 = v44[0];
  v33 = v44[1];
  v25[1] = xmmword_10008E640;
  v25[2] = v32;
  v34 = v44[2];
  v35 = v44[3];
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[6] = v29;
  return sub_100072F04(v25);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v18 = *(a4 + 16);
  *(v17 + 40) = *a4;
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = a2;
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a4 + 32);
  *(v17 + 88) = *(a4 + 48);
  *(v17 + 89) = a3;
  *(v17 + 96) = a1;
  *(v17 + 104) = a5;
  *(v17 + 112) = a6;
  *(v17 + 120) = a7;
  v19 = type metadata accessor for Array();
  sub_10006A034(sub_10003F3B4, v17, v19, v20, &v27);
  v25 = v27;
  v26 = v28;
  v23 = type metadata accessor for Parsed(0, v19, v21, v22);
  (*(*(v23 - 8) + 32))(&v29, &v25, v23);
  return v29;
}

uint64_t sub_10003E08C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v18 = type metadata accessor for Array();

  v19 = sub_10003B384(a1, a2, a4);
  v34 = a7;
  sub_10003350C(a5, v35);
  sub_10003357C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v19, a5, a6, &v34, v35, a8, a9, a10, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v35[8];
  v23 = v35[10];
  v24 = v35[11];
  v21[11] = v35[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v35[4];
  v26 = v35[6];
  v27 = v35[7];
  v21[7] = v35[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v35[0];
  v29 = v35[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v35[2];
  v31 = v35[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t Option.init<A>(name:parsing:help:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 40) = *a3;
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  *(v16 + 32) = a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a3 + 32);
  *(v16 + 88) = *(a3 + 48);
  *(v16 + 89) = a2;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  *(v16 + 112) = a6;
  v18 = type metadata accessor for Array();
  sub_10006A034(sub_10003F464, v16, v18, v19, &v26);
  v24 = v26;
  v25 = v27;
  v22 = type metadata accessor for Parsed(0, v18, v20, v21);
  (*(*(v22 - 8) + 32))(&v28, &v24, v22);
  return v28;
}

uint64_t sub_10003E354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v17 = type metadata accessor for Array();

  v18 = sub_10003B384(a1, a2, a4);
  v33 = 0;
  sub_10003350C(a5, v34);
  sub_10003357C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v18, a5, a6, &v33, v34, a7, a8, a9, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v34[8];
  v22 = v34[10];
  v23 = v34[11];
  v20[11] = v34[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v34[4];
  v25 = v34[6];
  v26 = v34[7];
  v20[7] = v34[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v34[0];
  v28 = v34[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v34[2];
  v30 = v34[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a10;
  *(v17 + 24) = a2;
  v18 = *(a4 + 16);
  *(v17 + 32) = *a4;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a4 + 32);
  *(v17 + 80) = *(a4 + 48);
  *(v17 + 81) = a3;
  *(v17 + 88) = a8;
  *(v17 + 96) = a9;
  *(v17 + 104) = a1;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  *(v17 + 128) = a7;
  v19 = type metadata accessor for Array();
  sub_10006A034(sub_10003F53C, v17, v19, v20, &v28);
  v26 = v28;
  v27 = v29;
  v23 = type metadata accessor for Parsed(0, v19, v21, v22);
  (*(*(v23 - 8) + 32))(&v30, &v26, v23);
  return v30;
}

uint64_t sub_10003E618(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v18 = type metadata accessor for Array();

  v19 = sub_10003B384(a1, a2, a4);
  v36 = a9;
  sub_10003350C(a5, v37);
  sub_10003357C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v19, a5, a6, a7, v37, a8, &v36, a10, a11, a12, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v37[8];
  v23 = v37[10];
  v24 = v37[11];
  v21[11] = v37[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v37[4];
  v26 = v37[6];
  v27 = v37[7];
  v21[7] = v37[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v37[0];
  v29 = v37[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v37[2];
  v31 = v37[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t Option.init<A>(name:parsing:help:completion:transform:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a1;
  v18 = *(a3 + 16);
  *(v17 + 32) = *a3;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a3 + 32);
  *(v17 + 80) = *(a3 + 48);
  *(v17 + 81) = a2;
  *(v17 + 88) = a7;
  *(v17 + 96) = a8;
  *(v17 + 104) = a4;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  v19 = type metadata accessor for Array();
  sub_10006A034(sub_10003F5F8, v17, v19, v20, &v27);
  v25 = v27;
  v26 = v28;
  v23 = type metadata accessor for Parsed(0, v19, v21, v22);
  (*(*(v23 - 8) + 32))(&v29, &v25, v23);
  return v29;
}

uint64_t sub_10003E8F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v18 = type metadata accessor for Array();

  v19 = sub_10003B384(a1, a2, a4);
  v35 = 0;
  sub_10003350C(a5, v36);
  sub_10003357C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v19, a5, a6, a7, v36, a8, &v35, a9, a10, a11, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v36[8];
  v23 = v36[10];
  v24 = v36[11];
  v21[11] = v36[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v36[4];
  v26 = v36[6];
  v27 = v36[7];
  v21[7] = v36[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v36[0];
  v29 = v36[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v36[2];
  v31 = v36[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t sub_10003EA94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_100032650(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_10003EB90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 90) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10003BDD0(a1, a2, a3, *(v3 + 32), (v3 + 40), *(v3 + 89), v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_10003EC4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_100032650(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_10003ED4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 104) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10003C7D4(a1, a2, a3, *(v3 + 24), (v3 + 32), *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v4, *(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16), *(v3 + 16));
}

uint64_t sub_10003EE58()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;

  if (*(v0 + 48))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_100032650(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return _swift_deallocObject(v0, v6 + 17, v3 | 7);
}

uint64_t sub_10003EFC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 90) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10003D154(a1, a2, a3, *(v3 + 32), (v3 + 40), *(v3 + 89), v3 + v9, *v10, *(v10 + 8), *(v10 + 16), v7);
}

uint64_t sub_10003F0EC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;

  if (*(v0 + 40))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_100032650(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return _swift_deallocObject(v0, v6 + 17, v3 | 7);
}

uint64_t sub_10003F25C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10003D948(a1, a2, a3, *(v3 + 24), (v3 + 32), *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16), v7);
}

uint64_t sub_10003F344()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v1);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10003F3FC()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v1);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_10003F4C4()
{

  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 112), *(v0 + 120), v1);
  }

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t sub_10003F588()
{

  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v1);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10003F65C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003F698(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003F6D8()
{
  result = qword_1000B5498;
  if (!qword_1000B5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5498);
  }

  return result;
}

unint64_t sub_10003F730()
{
  result = qword_1000B54A0[0];
  if (!qword_1000B54A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B54A0);
  }

  return result;
}

uint64_t OptionGroup.title.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t OptionGroup.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_10003F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for OptionGroup(0, a3, a4, a5);
  *(a2 + v8[10]) = 0;
  v9 = (a2 + v8[11]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v12 = type metadata accessor for Parsed(0, a3, v10, v11);
  result = (*(*(v12 - 8) + 32))(a2, a1, v12);
  *(a2 + v8[9]) = 0;
  return result;
}

uint64_t OptionGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = v5;
  v47 = a4;
  v45 = a3;
  v46 = type metadata accessor for OptionGroup(0, a2, a3, a5);
  v42 = *(v46 - 8);
  __chkstk_darwin();
  v43 = v39 - v9;
  v39[0] = type metadata accessor for Parsed(0, a2, v10, v11);
  __chkstk_darwin();
  v13 = v39 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v39 - v16;
  v44 = *(a2 - 8);
  __chkstk_darwin();
  v41 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v39 - v19;
  __chkstk_darwin();
  v21 = v39 - v20;
  v65 = a1;
  sub_10002F35C(a1, v56);
  v39[1] = sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    sub_10004FEE8(a2);
    if (!v5)
    {
      v32 = v44;
      (*(v44 + 56))(v17, 0, 1, a2);
      (*(v32 + 32))(v21, v17, a2);
      (*(v32 + 16))(v13, v21, a2);
      swift_storeEnumTagMultiPayload();
      v33 = v13;
      v25 = v45;
      sub_10003F87C(v33, v47, a2, v45, v34);
      (*(v32 + 8))(v21, a2);
      sub_100040178(&v57);
      v22 = v65;
      v23 = v46;
LABEL_10:
      v35 = v41;
      OptionGroup.wrappedValue.getter(v23, v41, v30, v31);
      (*(v25 + 24))(a2, v25);
      Option.wrappedValue.setter(v35, v23, v36, v37);
      return sub_100002B38(v22);
    }

    (*(v44 + 56))(v17, 1, 1, a2);
    sub_100040178(&v57);
    (*(v15 + 8))(v17, v14);
    v6 = 0;
  }

  else
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    sub_10003FFA4(&v48);
  }

  v22 = v65;
  sub_10002F35C(v65, &v57);
  v23 = v46;
  WitnessTable = swift_getWitnessTable();
  v25 = v45;
  v26 = v43;
  sub_10006A178(&v57, v23, WitnessTable, v43);
  if (!v6)
  {
    (*(v42 + 32))(v47, v26, v23);
    sub_10002F35C(v22, v56);
    if (swift_dynamicCast())
    {
      v61 = v52;
      v62 = v53;
      v63 = v54;
      v64 = v55;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v29 = v40;
      OptionGroup.wrappedValue.getter(v23, v40, v27, v28);
      sub_10005007C(v29, a2, a2, v25);
      (*(v44 + 8))(v29, a2);
      sub_100040178(&v57);
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      sub_10003FFA4(&v48);
    }

    goto LABEL_10;
  }

  return sub_100002B38(v22);
}

uint64_t sub_10003FFA4(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5530, &qword_1000924C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OptionGroup.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Parsed(0, v7, a3, a4);
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v5, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v10, v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OptionGroup.init(title:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  type metadata accessor for Parsed(0, a4, a3, a4);
  __chkstk_darwin();
  v13 = (&v21 - v12);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;
  sub_10006A034(sub_100040430, v14, a4, v15, v13);
  sub_10003F87C(v13, a6, a4, a5, v16);
  v18 = type metadata accessor for OptionGroup(0, a4, a5, v17);
  *(a6 + *(v18 + 36)) = v8;
  v19 = (a6 + *(v18 + 44));

  *v19 = a1;
  v19[1] = a2;
  return result;
}

uint64_t sub_1000402EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{

  v14 = sub_10004C130(a6, a7, 2, a1, a2, a3);
  v15 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v15 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v14 + 16); i; i = *(v14 + 16))
    {
      v17 = 0;
      v18 = (v14 + 152);
      while (v17 < i)
      {
        *(v18 - 1) = a4;
        *v18 = a5;

        ++v17;
        i = *(v14 + 16);
        v18 += 24;
        if (v17 >= i)
        {
          return v14;
        }
      }

      __break(1u);
LABEL_11:
      v14 = sub_100058864(v14);
    }
  }

  return v14;
}

uint64_t sub_1000403F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

void (*OptionGroup.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  OptionGroup.wrappedValue.getter(a2, v10, v11, v12);
  return sub_10002F754;
}

uint64_t OptionGroup.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v11 = type metadata accessor for Parsed(0, v3, v9, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v12 + 16))(&v17 - v13, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v14, v11);
    return 0xD000000000000019;
  }

  else
  {
    (*(v4 + 32))(v8, v14, v3);
    (*(v4 + 16))(v6, v8, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v8, v3);
    return v16;
  }
}

uint64_t sub_1000407EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100040830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Parsed(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000408BC(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = ((v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v4 = *(((a1 + v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 8);
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

int *sub_10004099C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  v5 = ((v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
    if (((v4 + 10) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
    *(((result + v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t static AsyncParsableCommand.main(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return _swift_task_switch(sub_100040AF4, 0, 0);
}

uint64_t sub_100040AF4()
{
  v1 = *(v0 + 176);
  v2 = *(*(v0 + 192) + 8);
  *(v0 + 208) = v2;
  static ParsableCommand.parseAsRoot(_:)(v1, v2, v0 + 16);
  sub_10002F35C(v0 + 16, v0 + 96);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  sub_1000021C0(&qword_1000B55F0, &qword_100092590);
  if (swift_dynamicCast())
  {
    sub_100040F6C((v0 + 136), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    sub_100006190(v0 + 56, v3);
    v10 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_100040D70;

    return v10(v3, v4);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100040F04(v0 + 136);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_100006190(v0 + 16, v7);
    (*(v8 + 32))(v7, v8);
    sub_100002B38((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100040D70()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100040E84;
  }

  else
  {
    v2 = sub_1000415F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100040E84()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  swift_errorRetain();
  v4 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v4);
}

uint64_t sub_100040F04(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B55F8, &qword_100092598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100040F6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static AsyncParsableCommand.main()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004102C;

  return static AsyncParsableCommand.main(_:)(0, a1, a2);
}

uint64_t sub_10004102C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static AsyncMainProtocol.main()(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100041140, 0, 0);
}

uint64_t sub_100041140()
{
  *(v0 + 192) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 200) = AssociatedConformanceWitness;
  static ParsableCommand.parseAsRoot(_:)(0, AssociatedConformanceWitness, v0 + 16);
  sub_10002F35C(v0 + 16, v0 + 96);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  sub_1000021C0(&qword_1000B55F0, &qword_100092590);
  if (swift_dynamicCast())
  {
    sub_100040F6C((v0 + 136), v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    sub_100006190(v0 + 56, v2);
    v9 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_100041400;

    return v9(v2, v3);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100040F04(v0 + 136);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_100006190(v0 + 16, v6);
    (*(v7 + 32))(v6, v7);
    sub_100002B38((v0 + 16));
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100041400()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10004157C;
  }

  else
  {
    v2 = sub_100041514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041514()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[1];

  return v1();
}

void sub_10004157C()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[27];
  v4 = v0 + 24;
  v3 = v0[24];
  v2 = v4[1];
  swift_errorRetain();
  v5 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v5);
}

void CommandConfiguration.subcommands.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_19:

    sub_100041744(v4);
    return;
  }

  v3 = (v1 + 48);
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_100043048(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        v11 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v11 < v6)
        {
          goto LABEL_22;
        }

        memcpy(&v4[16 * v11 + 32], (v5 + 32), 16 * v6);

        if (v6)
        {
          v12 = *(v4 + 2);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v4 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_4:
    v3 += 3;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_100041744(uint64_t result)
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

  result = sub_100043048(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_100041830(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100042F3C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041924(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100043C68(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041A18(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100043A20(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041B10(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100043274(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041C08(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100043F98(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041D00(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  if (v6 < a1 || v6 < a2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a2 - a1;
  v4 = *v5;
  v11 = *(*v5 + 2);
  v12 = v11 + a2 - a1;
  if (__OFADD__(v11, a2 - a1))
  {
    goto LABEL_19;
  }

  v14 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v4 + 3) >> 1, v16 < v12))
  {
    if (v11 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v11;
    }

    v4 = sub_100043B48(isUniquelyReferenced_nonNull_native, v17, 1, v4);
    v16 = *(v4 + 3) >> 1;
  }

  v18 = *(v4 + 2);
  v19 = v16 - v18;
  v20 = sub_100044428(&v124, &v4[192 * v18 + 32], v16 - v18, a1, a2, v14, a4);
  if (v20 < v10)
  {
    goto LABEL_20;
  }

  if (v20 >= 1)
  {
    v21 = *(v4 + 2);
    v22 = __OFADD__(v21, v20);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
      goto LABEL_24;
    }

    *(v4 + 2) = v23;
  }

  if (v20 != v19)
  {
LABEL_18:

    *v5 = v4;
    return result;
  }

LABEL_21:
  v19 = *(v4 + 2);
  a4 = v125;
  v14 = v127;
  if (v127 == v125)
  {
    sub_10002F144(&__dst);
    v25 = a4;
    goto LABEL_26;
  }

LABEL_24:
  v26 = v126;
  v27 = sub_1000724B8(v75, v14, v124, a4, v126);
  v29 = v28[2];
  v31 = *v28;
  v30 = v28[1];
  v103 = v28[3];
  v102 = v29;
  v100 = v31;
  v101 = v30;
  v32 = v28[6];
  v34 = v28[4];
  v33 = v28[5];
  v107 = v28[7];
  v106 = v32;
  v104 = v34;
  v105 = v33;
  v35 = v28[10];
  v37 = v28[8];
  v36 = v28[9];
  v111 = v28[11];
  v110 = v35;
  v108 = v37;
  v109 = v36;
  memmove(&__dst, v28, 0xC0uLL);
  sub_1000289DC(&v100, &v88);
  result = (v27)(v75, 0);
  if (v14 >= *(v26 + 16))
  {
    goto LABEL_46;
  }

  v25 = v14 + 1;
  p_dst = &__dst;
  String.init(argument:)(*(&v38 - 1));
LABEL_26:
  v108 = v120;
  v109 = v121;
  v110 = v122;
  v111 = v123;
  v104 = v116;
  v105 = v117;
  v106 = v118;
  v107 = v119;
  v100 = __dst;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  if (sub_10002F07C(&v100) == 1)
  {
LABEL_27:
    v96 = v120;
    v97 = v121;
    v98 = v122;
    v99 = v123;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95 = v119;
    v88 = __dst;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    sub_100002BCC(&v88, &qword_1000B5208, &qword_1000914C0);
    goto LABEL_18;
  }

  while (1)
  {
    v40 = *(v4 + 3);
    v41 = v40 >> 1;
    if ((v40 >> 1) < v19 + 1)
    {
      v4 = sub_100043B48((v40 > 1), v19 + 1, 1, v4);
      v41 = *(v4 + 3) >> 1;
    }

    v84 = v120;
    v85 = v121;
    v86 = v122;
    v87 = v123;
    v80 = v116;
    v81 = v117;
    v82 = v118;
    v83 = v119;
    __src = __dst;
    v77 = v113;
    v78 = v114;
    v79 = v115;
    v96 = v120;
    v97 = v121;
    v98 = v122;
    v99 = v123;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95 = v119;
    v88 = __dst;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    if (sub_10002F07C(&v88) != 1 && v19 < v41)
    {
      break;
    }

LABEL_30:
    *(v4 + 2) = v19;
    v108 = v120;
    v109 = v121;
    v110 = v122;
    v111 = v123;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v100 = __dst;
    v101 = v113;
    v102 = v114;
    v103 = v115;
    if (sub_10002F07C(&v100) == 1)
    {
      goto LABEL_27;
    }
  }

  v58 = v126;
  v59 = v124;
  v42 = v4 + 32;
  while (1)
  {
    v43 = &v42[192 * v19];
    v44 = (v19 + 1);
    while (1)
    {
      v19 = v44;
      v74[8] = v120;
      v74[9] = v121;
      v74[10] = v122;
      v74[11] = v123;
      v74[4] = v116;
      v74[5] = v117;
      v74[6] = v118;
      v74[7] = v119;
      v74[0] = __dst;
      v74[1] = v113;
      v74[2] = v114;
      v74[3] = v115;
      v75[8] = v84;
      v75[9] = v85;
      v75[10] = v86;
      v75[11] = v87;
      v75[4] = v80;
      v75[5] = v81;
      v75[6] = v82;
      v75[7] = v83;
      v75[0] = __src;
      v75[1] = v77;
      v75[2] = v78;
      v75[3] = v79;
      sub_1000289DC(v75, &v62);
      sub_100002BCC(v74, &qword_1000B5208, &qword_1000914C0);
      memmove(v43, &__src, 0xC0uLL);
      if (v25 != a4)
      {
        break;
      }

      sub_10002F144(&v62);
      v120 = v70;
      v121 = v71;
      v122 = v72;
      v123 = v73;
      v116 = v66;
      v117 = v67;
      v118 = v68;
      v119 = v69;
      __dst = v62;
      v113 = v63;
      v114 = v64;
      v115 = v65;
      v84 = v70;
      v85 = v71;
      v86 = v72;
      v87 = v73;
      v80 = v66;
      v81 = v67;
      v82 = v68;
      v83 = v69;
      __src = v62;
      v77 = v63;
      v78 = v64;
      v79 = v65;
      v96 = v70;
      v97 = v71;
      v98 = v72;
      v99 = v73;
      v92 = v66;
      v93 = v67;
      v94 = v68;
      v95 = v69;
      v88 = v62;
      v89 = v63;
      v90 = v64;
      v91 = v65;
      if (sub_10002F07C(&v88) != 1)
      {
        v43 += 192;
        v44 = (v19 + 1);
        if (v19 < v41)
        {
          continue;
        }
      }

      v25 = a4;
      goto LABEL_30;
    }

    v45 = sub_1000724B8(v61, v25, v59, a4, v58);
    v47 = v46[3];
    v49 = *v46;
    v48 = v46[1];
    v64 = v46[2];
    v65 = v47;
    v62 = v49;
    v63 = v48;
    v50 = v46[7];
    v52 = v46[4];
    v51 = v46[5];
    v68 = v46[6];
    v69 = v50;
    v66 = v52;
    v67 = v51;
    v53 = v46[11];
    v55 = v46[8];
    v54 = v46[9];
    v72 = v46[10];
    v73 = v53;
    v70 = v55;
    v71 = v54;
    memmove(&__dst, v46, 0xC0uLL);
    sub_1000289DC(&v62, v60);
    result = (v45)(v61, 0);
    if (v25 >= *(v58 + 16))
    {
      break;
    }

    ++v25;
    v57 = &__dst;
    String.init(argument:)(*(&v56 - 1));
    v84 = v120;
    v85 = v121;
    v86 = v122;
    v87 = v123;
    v80 = v116;
    v81 = v117;
    v82 = v118;
    v83 = v119;
    __src = __dst;
    v77 = v113;
    v78 = v114;
    v79 = v115;
    v96 = v120;
    v97 = v121;
    v98 = v122;
    v99 = v123;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95 = v119;
    v88 = __dst;
    v89 = v113;
    v90 = v114;
    v91 = v115;
    if (sub_10002F07C(&v88) != 1)
    {
      v42 = v4 + 32;
      if (v19 < v41)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000424C8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000436D4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000425BC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000442E0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000021C0(&qword_1000B5610, &qword_1000926A8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CommandConfiguration.usage.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CommandConfiguration.usage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ArgumentInfoV0.valueName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ArgumentInfoV0.valueName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ArgumentInfoV0.defaultValue.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ArgumentInfoV0.defaultValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t CommandConfiguration.subcommands.setter(uint64_t a1)
{

  *(v1 + 112) = _swiftEmptyArrayStorage;

  *(v1 + 104) = a1;
  return result;
}

void (*CommandConfiguration.subcommands.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  *(v3 + 64) = *(v1 + 64);
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = *(v1 + 96);
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  *(v3 + 144) = *(v1 + 144);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  *(v3 + 152) = vextq_s8(*(v3 + 104), *(v3 + 104), 8uLL);
  CommandConfiguration.subcommands.getter();
  *(v4 + 168) = v12;
  return sub_100042964;
}

void sub_100042964(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {

    sub_100002BCC(v2 + 152, &qword_1000B5600, &qword_100092600);
    sub_100002BCC(v2 + 160, &qword_1000B5608, &qword_100092608);
    *(v4 + 104) = v3;
    *(v4 + 112) = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100002BCC(v2 + 152, &qword_1000B5600, &qword_100092600);
    sub_100002BCC(v2 + 160, &qword_1000B5608, &qword_100092608);
    *(v4 + 104) = v3;
    *(v4 + 112) = _swiftEmptyArrayStorage;
  }

  free(v2);
}

uint64_t CommandConfiguration.ungroupedSubcommands.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t CommandConfiguration.groupedSubcommands.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t CommandConfiguration.defaultSubcommand.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

uint64_t CommandConfiguration.helpNames.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t CommandConfiguration.aliases.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

double CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v23 = 0uLL;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  *&v25 = a5;
  *(&v25 + 1) = a6;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v27 = a10;
  LOBYTE(v28) = a11;
  *(&v28 + 1) = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32[0] = a1;
  v32[1] = a2;
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = a5;
  v32[7] = a6;
  v32[8] = a7;
  v32[9] = a8;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v37 = a14;
  v38 = a15;
  sub_10004314C(&v22, v21);
  sub_100027BE4(v32);
  v16 = v29;
  *(a9 + 96) = v28;
  *(a9 + 112) = v16;
  *(a9 + 128) = v30;
  *(a9 + 144) = v31;
  v17 = v25;
  *(a9 + 32) = v24;
  *(a9 + 48) = v17;
  v18 = v27;
  *(a9 + 64) = v26;
  *(a9 + 80) = v18;
  result = *&v22;
  v20 = v23;
  *a9 = v22;
  *(a9 + 16) = v20;
  return result;
}

double CommandConfiguration.init(commandName:_superCommandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, char a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16)
{
  *&v23 = a1;
  *(&v23 + 1) = a2;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  *&v25 = a5;
  *(&v25 + 1) = a6;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v27 = a10;
  v28 = a11;
  LOBYTE(v29) = a12;
  *(&v29 + 1) = a13;
  v30 = a14;
  v31 = a15;
  v32 = a16;
  v33[0] = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v33[4] = a5;
  v33[5] = a6;
  v33[6] = a7;
  v33[7] = a8;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  v38 = a14;
  v39 = a15;
  v40 = a16;
  sub_10004314C(&v23, v22);
  sub_100027BE4(v33);
  v17 = v30;
  *(a9 + 96) = v29;
  *(a9 + 112) = v17;
  *(a9 + 128) = v31;
  *(a9 + 144) = v32;
  v18 = v26;
  *(a9 + 32) = v25;
  *(a9 + 48) = v18;
  v19 = v28;
  *(a9 + 64) = v27;
  *(a9 + 80) = v19;
  result = *&v23;
  v21 = v24;
  *a9 = v23;
  *(a9 + 16) = v21;
  return result;
}

double CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = 0uLL;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  *&v25 = a7;
  *(&v25 + 1) = a8;
  v26 = a10;
  LOBYTE(v27) = a11;
  *(&v27 + 1) = a12;
  *&v28 = _swiftEmptyArrayStorage;
  *(&v28 + 1) = a13;
  v29 = a14;
  v30 = _swiftEmptyArrayStorage;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a3;
  v31[5] = a4;
  v31[6] = a5;
  v31[7] = a6;
  v31[8] = a7;
  v31[9] = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = _swiftEmptyArrayStorage;
  v36 = a13;
  v37 = a14;
  v38 = _swiftEmptyArrayStorage;
  sub_10004314C(&v21, v20);
  sub_100027BE4(v31);
  v15 = v28;
  *(a9 + 96) = v27;
  *(a9 + 112) = v15;
  *(a9 + 128) = v29;
  *(a9 + 144) = v30;
  v16 = v24;
  *(a9 + 32) = v23;
  *(a9 + 48) = v16;
  v17 = v26;
  *(a9 + 64) = v25;
  *(a9 + 80) = v17;
  result = *&v21;
  v19 = v22;
  *a9 = v21;
  *(a9 + 16) = v19;
  return result;
}

double CommandConfiguration.init(commandName:abstract:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = 0uLL;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  v23 = xmmword_100091310;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  *&v25 = a7;
  *(&v25 + 1) = a8;
  LOBYTE(v26) = a10;
  *(&v26 + 1) = a11;
  *&v27 = _swiftEmptyArrayStorage;
  *(&v27 + 1) = a12;
  v28 = a13;
  v29 = _swiftEmptyArrayStorage;
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a3;
  v30[5] = a4;
  v31 = xmmword_100091310;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = _swiftEmptyArrayStorage;
  v39 = a12;
  v40 = a13;
  v41 = _swiftEmptyArrayStorage;
  sub_10004314C(&v20, v19);
  sub_100027BE4(v30);
  v14 = v27;
  *(a9 + 96) = v26;
  *(a9 + 112) = v14;
  *(a9 + 128) = v28;
  *(a9 + 144) = v29;
  v15 = v23;
  *(a9 + 32) = v22;
  *(a9 + 48) = v15;
  v16 = v25;
  *(a9 + 64) = v24;
  *(a9 + 80) = v16;
  result = *&v20;
  v18 = v21;
  *a9 = v20;
  *(a9 + 16) = v18;
  return result;
}

char *sub_100042F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100043048(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

__n128 sub_100043184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000431B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100043274(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5640, &qword_1000926E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043390(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5638, &qword_1000926E0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100043494(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021C0(&qword_1000B5620, &qword_1000926C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000435C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5648, &unk_1000926F0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000436D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5630, &unk_1000926D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000437E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51B0, &qword_100091388);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000438EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000021C0(&qword_1000B5650, &unk_100092700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}