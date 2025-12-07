uint64_t sub_10006D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1 & 0xFFFFFFFFFFFFLL, a3);
  result = a4(a2 & 0xFFFFFFFFFFFFLL, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D648(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_100066184(a1, a2, type metadata accessor for ADC1OutputTerminalDescriptor);
  result = sub_100066184(a3, a4, type metadata accessor for ADC1OutputTerminalDescriptor);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D7C0(unsigned int a1, unsigned int a2)
{
  v3 = sub_100066448(a1);
  result = sub_100066448(a2);
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 2);
  for (i = 32; ; i += 40)
  {
    if (v7 == v6)
    {

      return 1;
    }

    if (v6 >= *(v3 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v3[i], v11);
    v9 = *(v5 + 16);
    if (v6 == v9)
    {

      sub_10001E070(v11);
      return 1;
    }

    if (v6++ >= v9)
    {
      goto LABEL_13;
    }

    v13[0] = v11[0];
    v13[1] = v11[1];
    v14 = v12;
    sub_10001EDEC(v5 + i, &v15);
    v10 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v13, &qword_100176840, &qword_100122108);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v8 = a5;
  *&v26[0] = a2;
  WORD4(v26[0]) = a3;
  v10 = *(v26 + 6);
  WORD3(v26[0]) = HIWORD(a5);
  *(&v26[0] + 1) = a6;
  v11 = a5 >> 16;
  v12 = HIDWORD(a5);
  v13 = *(v26 + 6);
  v14 = a6 >> 16;
  v15 = HIDWORD(a6);
  *(v26 + 6) = v10;
  WORD5(v26[0]) = WORD1(a3);
  WORD6(v26[0]) = WORD2(a3);
  v16 = sub_100064D00(a1, *&v26[0], *(&v26[0] + 1), a7);
  LOWORD(v26[0]) = v8;
  WORD1(v26[0]) = v11;
  WORD2(v26[0]) = v12;
  *(v26 + 6) = v13;
  WORD5(v26[0]) = v14;
  WORD6(v26[0]) = v15;
  result = sub_100064D00(a4, *&v26[0], *(&v26[0] + 1), a7);
  v18 = result;
  v19 = 0;
  v20 = *(v16 + 2);
  for (i = 32; ; i += 40)
  {
    if (v20 == v19)
    {

      return 1;
    }

    if (v19 >= *(v16 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v16[i], v24);
    v22 = *(v18 + 16);
    if (v19 == v22)
    {

      sub_10001E070(v24);
      return 1;
    }

    if (v19++ >= v22)
    {
      goto LABEL_13;
    }

    v26[0] = v24[0];
    v26[1] = v24[1];
    v27 = v25;
    sub_10001EDEC(v18 + i, &v28);
    v23 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v26, &qword_100176840, &qword_100122108);
    if ((v23 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DAF8()
{
  v0 = sub_100066724();
  result = sub_100066724();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = a5(a1, a2);
  result = a5(a3, a4);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 16);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v8 + i, v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006DE5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1000670EC(a1, a2, a3);
  result = sub_1000670EC(a4, a5, a6);
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 2);
  for (i = 32; ; i += 40)
  {
    if (v13 == v12)
    {

      return 1;
    }

    if (v12 >= *(v9 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v9[i], v17);
    v15 = *(v11 + 16);
    if (v12 == v15)
    {

      sub_10001E070(v17);
      return 1;
    }

    if (v12++ >= v15)
    {
      goto LABEL_13;
    }

    v19[0] = v17[0];
    v19[1] = v17[1];
    v20 = v18;
    sub_10001EDEC(v11 + i, &v21);
    v16 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v19, &qword_100176840, &qword_100122108);
    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E01C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t (*a5)(void))
{
  v8 = sub_1000676E0(a1, a2, a5);
  result = sub_1000676E0(a3, a4, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E1CC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t (*a7)(void))
{
  v11 = sub_100067CA8(a1, a2, a3, a7);
  result = sub_100067CA8(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1, a3);
  result = a4(a2, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E570(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_100061A70(a1, a2 & 0xFFFFFFFFFFFFLL, a5);
  result = sub_100061A70(a3, a4 & 0xFFFFFFFFFFFFLL, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v11 = sub_100064D00(a1, a2, a3 & 0xFFFFFFFFFFFFLL, a7);
  result = sub_100064D00(a4, a5, a6 & 0xFFFFFFFFFFFFLL, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E868(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v6 = sub_100068000(a1, a2);
  result = sub_100068000(a3, a4);
  v8 = result;
  v9 = 0;
  v10 = *(v6 + 2);
  for (i = 32; ; i += 40)
  {
    if (v10 == v9)
    {

      return 1;
    }

    if (v9 >= *(v6 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v6[i], v14);
    v12 = *(v8 + 16);
    if (v9 == v12)
    {

      sub_10001E070(v14);
      return 1;
    }

    if (v9++ >= v12)
    {
      goto LABEL_13;
    }

    v16[0] = v14[0];
    v16[1] = v14[1];
    v17 = v15;
    sub_10001EDEC(v8 + i, &v18);
    v13 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v16, &qword_100176840, &qword_100122108);
    if ((v13 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006E9F0(uint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a3;
  *(v22 + 4) = __PAIR64__(a2, HIDWORD(a1));
  DWORD1(v22[0]) = HIDWORD(a3);
  BYTE8(v22[0]) = a4;
  v5 = *(v22 + 5);
  v6 = a3 >> 8;
  v7 = a3 >> 16;
  v8 = a3 >> 24;
  v9 = HIDWORD(a3);
  v10 = a4 >> 8;
  v11 = HIWORD(a4);
  LOWORD(v22[0]) = a1;
  BYTE2(v22[0]) = BYTE2(a1);
  BYTE3(v22[0]) = BYTE3(a1);
  BYTE4(v22[0]) = BYTE4(a1);
  *(v22 + 5) = __PAIR64__(a2, HIDWORD(a1)) >> 8;
  v12 = sub_1000676E0(*&v22[0], SDWORD2(v22[0]), type metadata accessor for ADC3ClockSourceDescriptor);
  LOBYTE(v22[0]) = v4;
  BYTE1(v22[0]) = v6;
  BYTE2(v22[0]) = v7;
  BYTE3(v22[0]) = v8;
  BYTE4(v22[0]) = v9;
  *(v22 + 5) = v5;
  BYTE9(v22[0]) = v10;
  WORD5(v22[0]) = v11;
  result = sub_1000676E0(*&v22[0], SDWORD2(v22[0]), type metadata accessor for ADC3ClockSourceDescriptor);
  v14 = result;
  v15 = 0;
  v16 = *(v12 + 2);
  for (i = 32; ; i += 40)
  {
    if (v16 == v15)
    {

      return 1;
    }

    if (v15 >= *(v12 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v12[i], v20);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {

      sub_10001E070(v20);
      return 1;
    }

    if (v15++ >= v18)
    {
      goto LABEL_13;
    }

    v22[0] = v20[0];
    v22[1] = v20[1];
    v23 = v21;
    sub_10001EDEC(v14 + i, &v24);
    v19 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v22, &qword_100176840, &qword_100122108);
    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_1000679BC(a1, a3);
  result = sub_1000679BC(a2, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1 & 0xFFFFFFFFFFFFLL);
  result = a3(a2 & 0xFFFFFFFFFFFFLL);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006EF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1 & 0xFFFFFFFFFFFFFFLL);
  result = a3(a2 & 0xFFFFFFFFFFFFFFLL);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 16);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v5 + i, v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = a6(a1, a2, a5);
  result = a6(a3, a4, a5);
  v12 = result;
  v13 = 0;
  v14 = *(v10 + 16);
  for (i = 32; ; i += 40)
  {
    if (v14 == v13)
    {

      return 1;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v10 + i, v18);
    v16 = *(v12 + 16);
    if (v13 == v16)
    {

      sub_10001E070(v18);
      return 1;
    }

    if (v13++ >= v16)
    {
      goto LABEL_13;
    }

    v20[0] = v18[0];
    v20[1] = v18[1];
    v21 = v19;
    sub_10001EDEC(v12 + i, &v22);
    v17 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v20, &qword_100176840, &qword_100122108);
    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_100065B5C(a1 & 0xFFFFFFFFFFFFFFLL, a3);
  result = sub_100065B5C(a2 & 0xFFFFFFFFFFFFFFLL, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(void))
{
  v11 = sub_100068C70(a1, a2, a3, a7);
  result = sub_100068C70(a4, a5, a6, a7);
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 2);
  for (i = 32; ; i += 40)
  {
    if (v15 == v14)
    {

      return 1;
    }

    if (v14 >= *(v11 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v11[i], v19);
    v17 = *(v13 + 16);
    if (v14 == v17)
    {

      sub_10001E070(v19);
      return 1;
    }

    if (v14++ >= v17)
    {
      goto LABEL_13;
    }

    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_10001EDEC(v13 + i, &v23);
    v18 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v21, &qword_100176840, &qword_100122108);
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F600(unsigned int a1, unsigned int a2, uint64_t (*a3)(void))
{
  v5 = sub_100063DF0(a1, a3);
  result = sub_100063DF0(a2, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F778(int a1, int a2, uint64_t (*a3)(void))
{
  v5 = sub_100068FB0(a1 & 0xFFFFFF, a3);
  result = sub_100068FB0(a2 & 0xFFFFFF, a3);
  v7 = result;
  v8 = 0;
  v9 = *(v5 + 2);
  for (i = 32; ; i += 40)
  {
    if (v9 == v8)
    {

      return 1;
    }

    if (v8 >= *(v5 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v5[i], v13);
    v11 = *(v7 + 16);
    if (v8 == v11)
    {

      sub_10001E070(v13);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_13;
    }

    v15[0] = v13[0];
    v15[1] = v13[1];
    v16 = v14;
    sub_10001EDEC(v7 + i, &v17);
    v12 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v15, &qword_100176840, &qword_100122108);
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1 & 0xFFFFFFFFFFLL, a3);
  result = a4(a2 & 0xFFFFFFFFFFLL, a3);
  v9 = result;
  v10 = 0;
  v11 = *(v7 + 16);
  for (i = 32; ; i += 40)
  {
    if (v11 == v10)
    {

      return 1;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v7 + i, v15);
    v13 = *(v9 + 16);
    if (v10 == v13)
    {

      sub_10001E070(v15);
      return 1;
    }

    if (v10++ >= v13)
    {
      goto LABEL_13;
    }

    v17[0] = v15[0];
    v17[1] = v15[1];
    v18 = v16;
    sub_10001EDEC(v9 + i, &v19);
    v14 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v17, &qword_100176840, &qword_100122108);
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FA78()
{
  v0 = sub_100069558();
  result = sub_100069558();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FBD0()
{
  v0 = sub_100069854();
  result = sub_100069854();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FD28()
{
  v0 = sub_100069B44();
  result = sub_100069B44();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FE80()
{
  v0 = sub_100069E1C();
  result = sub_100069E1C();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006FFD8()
{
  v0 = sub_10006A108();
  result = sub_10006A108();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100070148()
{
  v0 = sub_10006A6F4();
  result = sub_10006A6F4();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000702B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  result = a3();
  v6 = result;
  v7 = 0;
  v8 = *(v4 + 16);
  for (i = 32; ; i += 40)
  {
    if (v8 == v7)
    {

      return 1;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v4 + i, v12);
    v10 = *(v6 + 16);
    if (v7 == v10)
    {

      sub_10001E070(v12);
      return 1;
    }

    if (v7++ >= v10)
    {
      goto LABEL_13;
    }

    v14[0] = v12[0];
    v14[1] = v12[1];
    v15 = v13;
    sub_10001EDEC(v6 + i, &v16);
    v11 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v14, &qword_100176840, &qword_100122108);
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007041C()
{
  v0 = sub_10006ACBC();
  result = sub_10006ACBC();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007059C()
{
  v0 = sub_10006B028();
  result = sub_10006B028();
  v2 = result;
  v3 = 0;
  v4 = *(v0 + 2);
  for (i = 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 1;
    }

    if (v3 >= *(v0 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v0[i], v8);
    v6 = *(v2 + 16);
    if (v3 == v6)
    {

      sub_10001E070(v8);
      return 1;
    }

    if (v3++ >= v6)
    {
      goto LABEL_13;
    }

    v10[0] = v8[0];
    v10[1] = v8[1];
    v11 = v9;
    sub_10001EDEC(v2 + i, &v12);
    v7 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v10, &qword_100176840, &qword_100122108);
    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10007071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *))
{
  v8 = sub_10006B36C(a3, a4, a5);
  result = sub_10006B36C(a3, a4, a5);
  v10 = result;
  v11 = 0;
  v12 = *(v8 + 2);
  for (i = 32; ; i += 40)
  {
    if (v12 == v11)
    {

      return 1;
    }

    if (v11 >= *(v8 + 2))
    {
      break;
    }

    result = sub_10001EDEC(&v8[i], v16);
    v14 = *(v10 + 16);
    if (v11 == v14)
    {

      sub_10001E070(v16);
      return 1;
    }

    if (v11++ >= v14)
    {
      goto LABEL_13;
    }

    v18[0] = v16[0];
    v18[1] = v16[1];
    v19 = v17;
    sub_10001EDEC(v10 + i, &v20);
    v15 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v18, &qword_100176840, &qword_100122108);
    if ((v15 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000708C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  result = a3();
  v6 = result;
  v7 = 0;
  v8 = *(v4 + 16);
  for (i = 32; ; i += 40)
  {
    if (v8 == v7)
    {

      return 1;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    result = sub_10001EDEC(v4 + i, v12);
    v10 = *(v6 + 16);
    if (v7 == v10)
    {

      sub_10001E070(v12);
      return 1;
    }

    if (v7++ >= v10)
    {
      goto LABEL_13;
    }

    v14[0] = v12[0];
    v14[1] = v12[1];
    v15 = v13;
    sub_10001EDEC(v6 + i, &v16);
    v11 = static AnyHashable.== infix(_:_:)();
    result = sub_10000D040(v14, &qword_100176840, &qword_100122108);
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ControlInterface.exceptionList.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 32);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!v3)
        {
          v3 = 1;
        }
      }

      else if (v3 < 2)
      {
        if (v5 == 16)
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = (v10 + 40 * v9);
      v12 = v11[3];
      v13 = v11[4];
      sub_10001EAB8(v11, v12);
      v14 = (*(v13 + 40))(v12, v13);
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = (v14 + 32);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18 == 16 || v17 == 68 || v17 == 67)
            {
              if (!v3)
              {
                v3 = 1;
              }
            }

            else if (v3 < 2)
            {
              if (v17 == 16)
              {
                v3 = 1;
              }

              else
              {
                v3 = 2;
              }
            }

            --v15;
          }

          while (v15);
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return v3;
}

void *sub_100070C8C(char *a1)
{
  if (*(*(v1 + 8) + 16) || (v6 = v1, (v7 = *(v1 + 24)) == 0))
  {
    sub_10000CA2C();
    swift_allocError();
    *v4 = 28;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v3;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlDescriptorData;
  v11 = (v7 + 32);
  v3 = _swiftEmptyArrayStorage;
  v26 = v1;
  while (1)
  {
    while (1)
    {
      v12 = *v11++;
      sub_100058B70(v12, a1, v6);
      if (v2)
      {

        return v3;
      }

      v14 = v13;
      swift_beginAccess();
      v15 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&a1[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v26;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v16 = [v15 bytes];
      if (v16[1] != 1)
      {
LABEL_40:
        sub_10000CA2C();
        swift_allocError();
        *v21 = 37;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0xE000000000000000;
        swift_willThrow();

        return v3;
      }

      v17 = v16[2];
      if (v17 > 6)
      {
        if (v16[2] > 0xDu)
        {
          if (v17 == 14)
          {
            v18 = 83;
          }

          else
          {
            if (v17 != 257)
            {
              goto LABEL_40;
            }

            v18 = 82;
          }
        }

        else if (v17 == 7)
        {
          v18 = 84;
        }

        else
        {
          if (v17 != 11)
          {
            goto LABEL_40;
          }

          v18 = 78;
        }
      }

      else if (v16[2] > 2u)
      {
        if (v17 == 3)
        {
          v18 = 81;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_40;
          }

          v18 = 85;
        }
      }

      else if (v17 == 1)
      {
        v18 = 77;
      }

      else
      {
        if (v17 != 2)
        {
          goto LABEL_40;
        }

        v18 = 80;
      }

      sub_1000A2FA8(v16, v18 << 8, &v24);
      if (v25)
      {
        break;
      }

      sub_10000D040(&v24, &qword_100176880, &qword_100122158);
      if (!--v8)
      {
        return v3;
      }
    }

    result = sub_10000D0B8(&v24, &v22, &qword_100176880, &qword_100122158);
    if (!v23)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000249C8(0, v3[2] + 1, 1, v3);
    }

    v20 = v3[2];
    v19 = v3[3];
    if (v20 >= v19 >> 1)
    {
      v3 = sub_1000249C8((v19 > 1), v20 + 1, 1, v3);
    }

    v3[2] = v20 + 1;
    sub_10000D0A0(&v22, &v3[5 * v20 + 4]);
    sub_10000D040(&v24, &qword_100176880, &qword_100122158);
    v6 = v26;
    if (!--v8)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100071014@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = v4 + 32;
    while (1)
    {
      sub_10001EAFC(v7, &v10);
      v8 = v11;
      v9 = v12;
      sub_10001EAB8(&v10, v11);
      if ((*(v9 + 16))(v8, v9) == v6)
      {
        return sub_10000D0A0(&v10, a2);
      }

      result = sub_10000CE78(&v10);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000710DC(uint64_t a1)
{
  sub_100071014(a1, v22);
  if (v23)
  {
    sub_100001AB4(&qword_100175488, &unk_100122160);
    if (swift_dynamicCast())
    {
LABEL_3:
      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      sub_1000383FC(&v14);
      return *(&v14 + 1);
    }
  }

  else
  {
    sub_10000D040(v22, &qword_100176880, &qword_100122158);
  }

  sub_100071014(a1, &v14);
  if (!*(&v15 + 1))
  {
    v12 = &v14;
LABEL_16:
    sub_10000D040(v12, &qword_100176880, &qword_100122158);
    return 0;
  }

  sub_100001AB4(&qword_100175488, &unk_100122160);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(&v20 + 1);
    v5 = *(v1 + 8);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      while (1)
      {
        sub_10001EAFC(v8, &v14);
        sub_10000D0A0(&v14, v22);
        result = swift_dynamicCast();
        if (result)
        {

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        v10 = __OFADD__(v7, v9);
        v7 += v9;
        if (v10)
        {
          break;
        }

        v8 += 40;
        if (!--v6)
        {
          v11 = v7 > 1;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v11 = 0;
LABEL_18:
    v13 = *(v4 + 16);
    if (v13 != 1 && !v11)
    {

      return 0;
    }

    if (!v13)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    sub_100071014(*(v4 + 32), v22);

    if (v23)
    {
      if (swift_dynamicCast())
      {
        goto LABEL_3;
      }

      return 0;
    }

    v12 = v22;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10007135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v219 = a3;
  v220 = type metadata accessor for LogID(0);
  __chkstk_darwin(v220);
  v223 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001EAFC(a1, &v262);
  v334 = a2;
  v261 = _swiftEmptyArrayStorage;
  v222 = v3;
  if (*(v3 + 4))
  {

    v8 = sub_10009B718(v7);
  }

  else
  {

    v8 = &_swiftEmptySetSingleton;
  }

  v260 = v8;
  sub_10000D0B8(&v262, &v232, &qword_100176888, &qword_100122170);
  if (!*(&v233 + 1))
  {
LABEL_167:
    sub_10000D040(&v232, &qword_100176888, &qword_100122170);

    v197 = v8[2];
    if (v197)
    {
      v198 = sub_1001193F0(v8[2], 0);
      v199 = sub_10011B610(&v232, v198 + 32, v197, v8);
      result = sub_100022644(v232);
      if (v199 != v197)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v200 = v222;

      *(v200 + 4) = v198;
    }

    else
    {
    }

    v201 = v261;
    sub_10000D040(&v262, &qword_100176888, &qword_100122170);
    return v201;
  }

  v205 = "h different Clock Sources";
  v206 = "kipping input source ";
  v211 = "with a circular reference";
  v213 = "pping input source ";
  v208 = "same Clock Source";
  v209 = "ng input source ";
  v207 = "AUASDCore/ADC4Descriptors.swift";
  v212 = xmmword_10011DE90;
  v9 = v223;
LABEL_9:
  sub_10000D040(&v232, &qword_100176888, &qword_100122170);
  sub_10000D0B8(&v262, &v224, &qword_100176888, &qword_100122170);
  if (*(&v225 + 1))
  {
    sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v274 = v234;
      v275 = v235;
      v276 = v236;
      v277 = v237;
      v273[0] = v232;
      v273[1] = v233;
      result = sub_1000702B8(v273, v219, sub_10006A3FC);
      if ((result & 1) == 0)
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v11 = sub_10000A1BC(v220, qword_1001794F0);
        sub_10000A2A4(v11, v9);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v12, qword_100179508);
        sub_100039F58(1, v9, 0xD000000000000017, (v208 | 0x8000000000000000));
        result = sub_10000C9D0(v9);
      }

      v13 = v222[5];
      v269 = v222[4];
      v270 = v13;
      v271 = v222[6];
      v272 = *(v222 + 14);
      v14 = v222[1];
      v265 = *v222;
      v266 = v14;
      v15 = v222[3];
      v267 = v222[2];
      v268 = v15;
      if ((v275 & 1) == 0)
      {
        sub_100071014(*(&v274 + 1), &v224);
        sub_100076AD0(v273);
        if (*(&v225 + 1))
        {
          sub_100001AB4(&qword_100175488, &unk_100122160);
          if ((swift_dynamicCast() & 1) == 0)
          {
            *&v234 = 0;
            v232 = 0u;
            v233 = 0u;
          }
        }

        else
        {
          sub_10000D040(&v224, &qword_100176880, &qword_100122158);
          v232 = 0u;
          v233 = 0u;
          *&v234 = 0;
        }

LABEL_7:
        sub_100076870(&v232, &v262, &qword_100176888, &qword_100122170);
        goto LABEL_8;
      }

      goto LABEL_199;
    }
  }

  else
  {
    sub_10000D040(&v224, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v262, v258, &qword_100176888, &qword_100122170);
  if (v259)
  {
    sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v255 = v245;
      v16 = v247;
      *&v256 = v246;
      v242 = v250;
      v243 = v251;
      v244 = v252;
      v240 = v248;
      v241 = v249;
      v17 = *(v219 + 24);
      if (v247 != v17)
      {
        v18 = v222[5];
        v290 = v222[4];
        v291 = v18;
        v292 = v222[6];
        v293 = *(v222 + 14);
        v19 = v222[1];
        v286 = *v222;
        v287 = v19;
        v20 = v222[3];
        v288 = v222[2];
        v289 = v20;
        v21 = sub_1000710DC(v247);
        if ((v22 & 1) == 0)
        {
          v23 = v21;
          v24 = v222[5];
          v282 = v222[4];
          v283 = v24;
          v284 = v222[6];
          v285 = *(v222 + 14);
          v25 = v222[1];
          v278 = *v222;
          v279 = v25;
          v26 = v222[3];
          v280 = v222[2];
          v281 = v26;
          v27 = sub_1000710DC(v17);
          if ((v28 & 1) == 0)
          {
            if (v23 == v27)
            {
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v29 = sub_10000A1BC(v220, qword_1001794F0);
              sub_10000A2A4(v29, v9);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v30, qword_100179508);
              sub_100039AA0(1, v9, 0xD000000000000051, (v205 | 0x8000000000000000));
              sub_10000C9D0(v9);
              v31 = 67;
            }

            else
            {
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v176 = sub_10000A1BC(v220, qword_1001794F0);
              sub_10000A2A4(v176, v9);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v177 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v177, qword_100179508);
              sub_100039F58(1, v9, 0xD000000000000029, (v206 | 0x8000000000000000));
              sub_10000C9D0(v9);
              v31 = 68;
            }

            sub_10009B498(&v232, v31);
          }
        }
      }

      sub_100001AB4(&qword_1001754C8, &unk_100123910);
      v178 = swift_allocObject();
      v179 = v334;
      v180 = v219;
      v181 = *(v219 + 16);
      v224 = *v219;
      v225 = v181;
      v182 = *(v219 + 48);
      v226 = *(v219 + 32);
      v227 = v182;
      v183 = *(v219 + 80);
      v228 = *(v219 + 64);
      v229 = v183;
      v231 = v256;
      v230 = v255;
      v234 = v226;
      v235 = v227;
      v232 = v224;
      v233 = v225;
      v184 = v256;
      v239 = v256;
      v237 = v183;
      v238 = v255;
      v236 = v228;
      v185 = v228;
      v186 = v255;
      *(v178 + 112) = v183;
      *(v178 + 128) = v186;
      v187 = v232;
      v188 = v233;
      *(v178 + 16) = v212;
      *(v178 + 32) = v187;
      v189 = v234;
      v190 = v235;
      *(v178 + 48) = v188;
      *(v178 + 64) = v189;
      *(v178 + 80) = v190;
      *(v178 + 96) = v185;
      *(v178 + 144) = v184;
      *(v178 + 152) = v16;
      v191 = v244;
      v192 = v243;
      *(v178 + 192) = v242;
      *(v178 + 208) = v192;
      v193 = v241;
      *(v178 + 160) = v240;
      *(v178 + 176) = v193;
      *(v178 + 224) = v191;
      *(v178 + 232) = v179;
      v194 = v261;
      v195 = v261[2];

      sub_1000766B0(v180, &v224);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v196 = *(v194 + 24) >> 1, v196 <= v195))
      {
        result = sub_100024A10(result, v195 + 1, 1, v194);
        v194 = result;
        v196 = *(result + 24) >> 1;
      }

      v9 = v223;
      if (v196 > *(v194 + 16))
      {
        swift_arrayInitWithCopy();

        ++*(v194 + 16);
        v261 = v194;
        sub_10000D040(&v262, &qword_100176888, &qword_100122170);
        v262 = 0u;
        v263 = 0u;
        v264 = 0;
        goto LABEL_8;
      }

      goto LABEL_195;
    }
  }

  else
  {
    sub_10000D040(v258, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v262, v258, &qword_100176888, &qword_100122170);
  if (v259)
  {
    v214 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v226 = v234;
      v227 = v235;
      v228 = v236;
      *&v229 = v237;
      v224 = v232;
      v225 = v233;
      v32 = v334;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v33 = swift_allocObject();
      *(v33 + 16) = v212;
      *(v33 + 56) = &type metadata for MixerUnit;
      *(v33 + 64) = sub_100023394();
      v34 = swift_allocObject();
      *(v33 + 32) = v34;
      v35 = v235;
      *(v34 + 48) = v234;
      *(v34 + 64) = v35;
      *(v34 + 80) = v236;
      *(v34 + 96) = v237;
      v36 = v233;
      *(v34 + 16) = v232;
      *(v34 + 32) = v36;
      v37 = v32[2];

      sub_10002317C(&v224, &v245);
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v37;
      if (!result || (v39 = v32[3] >> 1, v40 = v32, v39 <= v38))
      {
        result = sub_1000249EC(result, v38 + 1, 1, v32);
        v40 = result;
        v39 = *(result + 24) >> 1;
      }

      v210 = v32;
      if (v39 <= *(v40 + 16))
      {
        goto LABEL_196;
      }

      v218 = v40 + 32;
      swift_arrayInitWithCopy();

      ++*(v40 + 16);
      v41 = *(&v227 + 1);

      result = sub_100076A7C(&v224);
      v215 = *(v41 + 16);
      if (v215)
      {
        v42 = 0;
        v43 = *(v40 + 16);
        v216 = v41;
        v217 = v41 + 32;
        v44 = -v43;
        while (1)
        {
          if (v42 >= *(v41 + 16))
          {
            goto LABEL_192;
          }

          v46 = v218;
          v47 = *(v217 + 8 * v42++);
          v48 = -1;
          while (v44 + v48 != -1)
          {
            if (++v48 >= *(v40 + 16))
            {
              __break(1u);
              goto LABEL_185;
            }

            v49 = v46 + 40;
            sub_10001EAFC(v46, &v245);
            v50 = v247;
            v51 = v248;
            sub_10001EAB8(&v245, v247);
            v52 = (*(*(v51 + 8) + 16))(v50);
            sub_10000CE78(&v245);
            v46 = v49;
            if (v52 == v47)
            {
              *&v245 = 0;
              *(&v245 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(66);
              v53._countAndFlagsBits = 0xD000000000000040;
              v53._object = (v211 | 0x8000000000000000);
              String.append(_:)(v53);
              *&v255 = v47;
              v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v54);

              v55 = v245;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v56 = sub_10000A1BC(v220, qword_1001794F0);
              v9 = v223;
              sub_10000A2A4(v56, v223);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v45 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v45, qword_100179508);
              sub_100039F58(1, v9, v55, *(&v55 + 1));

              sub_10000C9D0(v9);
              result = sub_10009B498(&v245, 104);
              goto LABEL_43;
            }
          }

          v57 = v222[5];
          v298 = v222[4];
          v299 = v57;
          v300 = v222[6];
          v301 = *(v222 + 14);
          v58 = v222[1];
          v294 = *v222;
          v295 = v58;
          v59 = v222[3];
          v296 = v222[2];
          v297 = v59;
          sub_100071014(v47, v253);
          if (!v254)
          {
            break;
          }

          sub_100001AB4(&qword_100175488, &unk_100122160);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v257 = 0;
            v255 = 0u;
            v256 = 0u;
LABEL_174:

LABEL_175:
            v201 = v260;
            goto LABEL_182;
          }

          if (!*(&v256 + 1))
          {
            goto LABEL_174;
          }

          sub_10000D0A0(&v255, &v245);
          v60 = v221;
          v61 = sub_10007135C(&v245, v40, v219);
          v221 = v60;
          if (v60)
          {
            goto LABEL_185;
          }

          sub_10007E37C(v61);
          result = sub_10000CE78(&v245);
          v9 = v223;
LABEL_43:
          v41 = v216;
          if (v42 == v215)
          {
            goto LABEL_148;
          }
        }

        sub_10000D040(v253, &qword_100176880, &qword_100122158);
        v255 = 0u;
        v256 = 0u;
        v257 = 0;
        goto LABEL_175;
      }

      goto LABEL_150;
    }
  }

  else
  {
    sub_10000D040(v258, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v262, v258, &qword_100176888, &qword_100122170);
  if (v259)
  {
    v214 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v226 = v234;
      v227 = v235;
      v228 = v236;
      v229 = v237;
      v224 = v232;
      v225 = v233;
      v62 = v334;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v63 = swift_allocObject();
      *(v63 + 16) = v212;
      *(v63 + 56) = &type metadata for ExtensionUnit;
      *(v63 + 64) = sub_1000769D4();
      v64 = swift_allocObject();
      *(v63 + 32) = v64;
      v65 = v235;
      v64[3] = v234;
      v64[4] = v65;
      v66 = v237;
      v64[5] = v236;
      v64[6] = v66;
      v67 = v233;
      v64[1] = v232;
      v64[2] = v67;
      v68 = v62[2];

      sub_10007651C(&v224, &v245);
      result = swift_isUniquelyReferenced_nonNull_native();
      v69 = v68;
      if (!result || (v70 = v62[3] >> 1, v71 = v62, v70 <= v69))
      {
        result = sub_1000249EC(result, v69 + 1, 1, v62);
        v71 = result;
        v70 = *(result + 24) >> 1;
      }

      v210 = v62;
      if (v70 <= *(v71 + 16))
      {
        goto LABEL_197;
      }

      v218 = v71 + 32;
      swift_arrayInitWithCopy();

      ++*(v71 + 16);
      v72 = v227;

      result = sub_100076A28(&v224);
      v217 = *(v72 + 16);
      if (!v217)
      {
LABEL_150:

        v9 = v223;
LABEL_151:
        sub_10000D040(&v262, &qword_100176888, &qword_100122170);
        v262 = 0u;
        v263 = 0u;
        v264 = 0;
        goto LABEL_8;
      }

      v73 = 0;
      v74 = *(v71 + 16);
      v215 = v72;
      v216 = v72 + 32;
      v75 = -v74;
      while (2)
      {
        if (v73 < *(v72 + 16))
        {
          v76 = *(v216 + 8 * v73++);
          v77 = -1;
          v78 = v218;
          while (v75 + v77 != -1)
          {
            if (++v77 >= *(v71 + 16))
            {
              __break(1u);
              goto LABEL_179;
            }

            v79 = v78 + 40;
            sub_10001EAFC(v78, &v245);
            v80 = v247;
            v81 = v248;
            sub_10001EAB8(&v245, v247);
            v82 = (*(*(v81 + 8) + 16))(v80);
            sub_10000CE78(&v245);
            v78 = v79;
            if (v82 == v76)
            {
              *&v245 = 0;
              *(&v245 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(71);
              v83._countAndFlagsBits = 0xD000000000000045;
              v83._object = (v213 | 0x8000000000000000);
              String.append(_:)(v83);
              *&v255 = v76;
              v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v84);

              v85 = v245;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v86 = sub_10000A1BC(v220, qword_1001794F0);
              v9 = v223;
              sub_10000A2A4(v86, v223);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v87 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v87, qword_100179508);
              sub_100039F58(1, v9, v85, *(&v85 + 1));

              sub_10000C9D0(v9);
              result = sub_10009B498(&v245, 104);
              goto LABEL_69;
            }
          }

          v88 = v222[5];
          v306 = v222[4];
          v307 = v88;
          v308 = v222[6];
          v309 = *(v222 + 14);
          v89 = v222[1];
          v302 = *v222;
          v303 = v89;
          v90 = v222[3];
          v304 = v222[2];
          v305 = v90;
          sub_100071014(v76, v253);
          if (v254)
          {
            sub_100001AB4(&qword_100175488, &unk_100122160);
            v91 = swift_dynamicCast();
            v9 = v223;
            if (v91)
            {
              if (*(&v256 + 1))
              {
                sub_10000D0A0(&v255, &v245);
                v92 = v221;
                v93 = sub_10007135C(&v245, v71, v219);
                v221 = v92;
                if (v92)
                {
                  goto LABEL_185;
                }

                sub_10007E37C(v93);
                result = sub_10000CE78(&v245);
LABEL_69:
                v72 = v215;
                if (v73 != v217)
                {
                  continue;
                }

LABEL_148:

                goto LABEL_151;
              }
            }

            else
            {
              v257 = 0;
              v255 = 0u;
              v256 = 0u;
            }
          }

          else
          {
            sub_10000D040(v253, &qword_100176880, &qword_100122158);
            v255 = 0u;
            v256 = 0u;
            v257 = 0;
            v9 = v223;
          }

          result = sub_10000D040(&v255, &qword_100176888, &qword_100122170);
          goto LABEL_69;
        }

        break;
      }

LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }
  }

  else
  {
    sub_10000D040(v258, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v262, v258, &qword_100176888, &qword_100122170);
  if (v259)
  {
    v214 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v226 = v234;
      v227 = v235;
      *&v228 = v236;
      v224 = v232;
      v225 = v233;
      v94 = v334;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v95 = swift_allocObject();
      *(v95 + 16) = v212;
      *(v95 + 56) = &type metadata for SelectorUnit;
      *(v95 + 64) = sub_100026998();
      v96 = swift_allocObject();
      *(v95 + 32) = v96;
      v97 = v235;
      *(v96 + 48) = v234;
      *(v96 + 64) = v97;
      *(v96 + 80) = v236;
      v98 = v233;
      *(v96 + 16) = v232;
      *(v96 + 32) = v98;
      *&v255 = v94;
      v210 = v94;

      sub_1000267DC(&v224, &v245);
      sub_10007E274(v95);
      v99 = v255;
      v100 = v227;

      result = sub_100076980(&v224);
      v215 = *(v100 + 16);
      if (v215)
      {
        v101 = 0;
        v102 = *(v99 + 16);
        v217 = v99 + 32;
        v218 = v100 + 32;
        v103 = -v102;
        v216 = v100;
LABEL_93:
        if (v101 >= *(v100 + 16))
        {
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        result = v217;
        v105 = *(v218 + 8 * v101++);
        v106 = -1;
        while (v103 + v106 != -1)
        {
          if (++v106 >= *(v99 + 16))
          {
            __break(1u);
            goto LABEL_189;
          }

          v107 = result + 40;
          sub_10001EAFC(result, &v245);
          v108 = v247;
          v109 = v248;
          sub_10001EAB8(&v245, v247);
          v110 = (*(*(v109 + 8) + 16))(v108);
          sub_10000CE78(&v245);
          result = v107;
          if (v110 == v105)
          {
            *&v245 = 0;
            *(&v245 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(69);
            v111._countAndFlagsBits = 0xD000000000000043;
            v111._object = (v209 | 0x8000000000000000);
            String.append(_:)(v111);
            *&v255 = v105;
            v112._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v112);

            v113 = v245;
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v114 = sub_10000A1BC(v220, qword_1001794F0);
            v9 = v223;
            sub_10000A2A4(v114, v223);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v104, qword_100179508);
            sub_100039F58(1, v9, v113, *(&v113 + 1));

            sub_10000C9D0(v9);
            result = sub_10009B498(&v245, 104);
LABEL_92:
            v100 = v216;
            if (v101 == v215)
            {
              goto LABEL_154;
            }

            goto LABEL_93;
          }
        }

        v115 = v222[5];
        v314 = v222[4];
        v315 = v115;
        v316 = v222[6];
        v317 = *(v222 + 14);
        v116 = v222[1];
        v310 = *v222;
        v311 = v116;
        v117 = v222[3];
        v312 = v222[2];
        v313 = v117;
        sub_100071014(v105, v253);
        if (!v254)
        {
          goto LABEL_177;
        }

        sub_100001AB4(&qword_100175488, &unk_100122160);
        if (swift_dynamicCast())
        {
          if (!*(&v256 + 1))
          {
            goto LABEL_180;
          }

          sub_10000D0A0(&v255, &v245);
          v118 = v221;
          v119 = sub_10007135C(&v245, v99, v219);
          v221 = v118;
          if (!v118)
          {
            sub_10007E37C(v119);
            result = sub_10000CE78(&v245);
            v9 = v223;
            goto LABEL_92;
          }

LABEL_185:

          sub_10000CE78(&v245);

          v201 = v260;

          goto LABEL_186;
        }

LABEL_179:
        v257 = 0;
        v255 = 0u;
        v256 = 0u;
LABEL_180:

LABEL_181:
        v201 = v260;
LABEL_182:

        sub_10000D040(&v255, &qword_100176888, &qword_100122170);
        sub_10000CA2C();
        v202 = swift_allocError();
        *v203 = 50;
        *(v203 + 8) = 0;
        *(v203 + 16) = 0xE000000000000000;
        v221 = v202;
        swift_willThrow();
LABEL_186:
        sub_10000D040(&v262, &qword_100176888, &qword_100122170);
        return v201;
      }

      goto LABEL_154;
    }
  }

  else
  {
    sub_10000D040(v258, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v262, v258, &qword_100176888, &qword_100122170);
  if (v259)
  {
    v214 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    result = swift_dynamicCast();
    if (result)
    {
      v226 = v234;
      v227 = v235;
      v228 = v236;
      v224 = v232;
      v225 = v233;
      v120 = v334;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v121 = swift_allocObject();
      *(v121 + 16) = v212;
      *(v121 + 56) = &type metadata for ProcessingUnit;
      *(v121 + 64) = sub_1000768D8();
      v122 = swift_allocObject();
      *(v121 + 32) = v122;
      v123 = v235;
      v122[3] = v234;
      v122[4] = v123;
      v122[5] = v236;
      v124 = v233;
      v122[1] = v232;
      v122[2] = v124;
      *&v255 = v120;
      v210 = v120;

      sub_100076430(&v224, &v245);
      sub_10007E274(v121);
      v125 = v255;
      v126 = *(&v227 + 1);

      result = sub_10007692C(&v224);
      v215 = *(v126 + 16);
      if (v215)
      {
        v127 = 0;
        v128 = *(v125 + 16);
        v217 = v125 + 32;
        v218 = v126 + 32;
        v129 = -v128;
        v216 = v126;
LABEL_114:
        if (v127 >= *(v126 + 16))
        {
          goto LABEL_194;
        }

        result = v217;
        v131 = *(v218 + 8 * v127++);
        v132 = -1;
        while (v129 + v132 != -1)
        {
          if (++v132 >= *(v125 + 16))
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v133 = result + 40;
          sub_10001EAFC(result, &v245);
          v134 = v247;
          v135 = v248;
          sub_10001EAB8(&v245, v247);
          v136 = (*(*(v135 + 8) + 16))(v134);
          sub_10000CE78(&v245);
          result = v133;
          if (v136 == v131)
          {
            *&v245 = 0;
            *(&v245 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(66);
            v137._countAndFlagsBits = 0xD000000000000040;
            v137._object = (v211 | 0x8000000000000000);
            String.append(_:)(v137);
            *&v255 = v131;
            v138._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v138);

            v139 = v245;
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v140 = sub_10000A1BC(v220, qword_1001794F0);
            v9 = v223;
            sub_10000A2A4(v140, v223);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v130 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v130, qword_100179508);
            sub_100039F58(1, v9, v139, *(&v139 + 1));

            sub_10000C9D0(v9);
            result = sub_10009B498(&v245, 104);
LABEL_113:
            v126 = v216;
            if (v127 == v215)
            {
              goto LABEL_154;
            }

            goto LABEL_114;
          }
        }

        v141 = v222[5];
        v322 = v222[4];
        v323 = v141;
        v324 = v222[6];
        v325 = *(v222 + 14);
        v142 = v222[1];
        v318 = *v222;
        v319 = v142;
        v143 = v222[3];
        v320 = v222[2];
        v321 = v143;
        sub_100071014(v131, v253);
        if (!v254)
        {
LABEL_177:

          sub_10000D040(v253, &qword_100176880, &qword_100122158);
          v255 = 0u;
          v256 = 0u;
          v257 = 0;
          goto LABEL_181;
        }

        sub_100001AB4(&qword_100175488, &unk_100122160);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_179;
        }

        if (*(&v256 + 1))
        {
          sub_10000D0A0(&v255, &v245);
          v144 = v221;
          v145 = sub_10007135C(&v245, v125, v219);
          v221 = v144;
          if (!v144)
          {
            sub_10007E37C(v145);
            result = sub_10000CE78(&v245);
            v9 = v223;
            goto LABEL_113;
          }

          goto LABEL_185;
        }

        goto LABEL_180;
      }

LABEL_154:

      sub_10000D040(&v262, &qword_100176888, &qword_100122170);
      v262 = 0u;
      v263 = 0u;
      v264 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_10000D040(v258, &qword_100176888, &qword_100122170);
  }

  v146 = v334;
  v218 = *(v334 + 16);
  if (v218)
  {
    v147 = 0;
    v148 = v334 + 32;
    v217 = v334;
    do
    {
      if (v147 >= *(v146 + 16))
      {
        goto LABEL_191;
      }

      sub_10001EAFC(v148, &v232);
      v150 = *(&v233 + 1);
      v149 = v234;
      sub_10001EAB8(&v232, *(&v233 + 1));
      v151 = (*(*(v149 + 8) + 16))(v150);
      v152 = *(&v263 + 1);
      if (*(&v263 + 1))
      {
        v153 = v151;
        v154 = v264;
        v155 = sub_10001EAB8(&v262, *(&v263 + 1));
        v156 = *(v152 - 8);
        __chkstk_darwin(v155);
        v158 = &v204 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v156 + 16))(v158);
        v159 = (*(*(v154 + 8) + 16))(v152);
        (*(v156 + 8))(v158, v152);
        result = sub_10000CE78(&v232);
        if (v153 == v159)
        {
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v160 = sub_10000A1BC(v220, qword_1001794F0);
          v9 = v223;
          sub_10000A2A4(v160, v223);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v161 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v161, qword_100179508);
          sub_100039F58(1, v9, 0xD000000000000029, (v207 | 0x8000000000000000));
          sub_10000C9D0(v9);
          sub_10009B498(&v232, 104);
LABEL_8:
          sub_10000D0B8(&v262, &v232, &qword_100176888, &qword_100122170);
          if (!*(&v233 + 1))
          {
            v8 = v260;
            goto LABEL_167;
          }

          goto LABEL_9;
        }
      }

      else
      {
        result = sub_10000CE78(&v232);
      }

      ++v147;
      v148 += 40;
      v146 = v217;
    }

    while (v218 != v147);
  }

  sub_100001AB4(&qword_1001754D0, &qword_100122190);
  v162 = swift_allocObject();
  *(v162 + 16) = v212;
  result = sub_10000D0B8(&v262, &v232, &qword_100176888, &qword_100122170);
  if (!*(&v233 + 1))
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  sub_10000D0A0(&v232, v162 + 32);
  result = sub_10007E274(v162);
  v163 = v222[5];
  v330 = v222[4];
  v331 = v163;
  v332 = v222[6];
  v333 = *(v222 + 14);
  v164 = v222[1];
  v326 = *v222;
  v327 = v164;
  v165 = v222[3];
  v328 = v222[2];
  v329 = v165;
  v166 = *(&v263 + 1);
  if (!*(&v263 + 1))
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v167 = v264;
  v168 = sub_10001EAB8(&v262, *(&v263 + 1));
  v169 = *(v166 - 8);
  __chkstk_darwin(v168);
  v171 = &v204 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v169 + 16))(v171);
  v172 = (*(v167 + 16))(v166, v167);
  v174 = v173;
  result = (*(v169 + 8))(v171, v166);
  if ((v174 & 1) == 0)
  {
    sub_100071014(v172, &v224);
    if (*(&v225 + 1))
    {
      sub_100001AB4(&qword_100175488, &unk_100122160);
      sub_100001AB4(&qword_1001754D8, &qword_100120F68);
      v175 = swift_dynamicCast();
      v9 = v223;
      if ((v175 & 1) == 0)
      {
        *&v234 = 0;
        v232 = 0u;
        v233 = 0u;
      }
    }

    else
    {
      sub_10000D040(&v224, &qword_100176880, &qword_100122158);
      v232 = 0u;
      v233 = 0u;
      *&v234 = 0;
      v9 = v223;
    }

    goto LABEL_7;
  }

LABEL_202:
  __break(1u);
  return result;
}

uint64_t sub_100073638@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = v4 + 32;
    do
    {
      sub_10001EAFC(v8, v49);
      sub_10000D0A0(v49, v48);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      if (swift_dynamicCast())
      {
        v38 = v45;
        v39 = v46;
        v40 = v47;
        v34 = v41;
        v35 = v42;
        v36 = v43;
        v37 = v44;
        if (((v41 != 257) ^ a1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100024B38(0, *(v7 + 2) + 1, 1, v7);
          }

          v10 = *(v7 + 2);
          v9 = *(v7 + 3);
          if (v10 >= v9 >> 1)
          {
            v7 = sub_100024B38((v9 > 1), v10 + 1, 1, v7);
          }

          *(v7 + 2) = v10 + 1;
          v11 = &v7[104 * v10];
          v12 = v34;
          v13 = v36;
          *(v11 + 3) = v35;
          *(v11 + 4) = v13;
          *(v11 + 2) = v12;
          v14 = v37;
          v15 = v38;
          v16 = v39;
          *(v11 + 16) = v40;
          *(v11 + 6) = v15;
          *(v11 + 7) = v16;
          *(v11 + 5) = v14;
        }

        else
        {
          sub_10007681C(&v34);
        }
      }

      v8 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v7 + 2) == 1)
  {
    v17 = *(v7 + 3);
    v41 = *(v7 + 2);
    v42 = v17;
    v18 = *(v7 + 5);
    v43 = *(v7 + 4);
    v44 = v18;
    v19 = *(v7 + 7);
    v45 = *(v7 + 6);
    v46 = v19;
    v20 = *(v7 + 16);
    v47 = v20;
    v32 = v41;
    v33 = v42;
    v30 = v43;
    v31 = v44;
    v28 = v45;
    v29 = v19;
    sub_1000767C0(&v41, &v34);

    v23 = v28;
    v22 = v29;
    v25 = v30;
    v24 = v31;
    v26 = v32;
    v27 = v33;
  }

  else
  {

    v20 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v24 = 0uLL;
    v23 = 0uLL;
    v22 = 0uLL;
  }

  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v22;
  *(a2 + 96) = v20;
  return result;
}

Swift::Int ControlInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100069B44();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ControlInterface(uint64_t a1)
{
  v2 = v1[5];
  v14 = v1[4];
  v15 = v2;
  v16 = v1[6];
  v17 = *(v1 + 14);
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v4 = v1[3];
  v12 = v1[2];
  v13 = v4;
  v5 = sub_100069B44();
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100073A28(uint64_t a1)
{
  v2 = *(v1 + 80);
  v9[11] = *(v1 + 64);
  v9[12] = v2;
  v9[13] = *(v1 + 96);
  v10 = *(v1 + 112);
  v3 = *(v1 + 16);
  v9[7] = *v1;
  v9[8] = v3;
  v4 = *(v1 + 48);
  v9[9] = *(v1 + 32);
  v9[10] = v4;
  Hasher.init(_seed:)();
  v5 = sub_100069B44();
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

unint64_t sub_100073B64(uint64_t a1)
{
  result = sub_100073B8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100073B8C()
{
  result = qword_100176830;
  if (!qword_100176830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176830);
  }

  return result;
}

unint64_t sub_100073BE4()
{
  result = qword_100176838;
  if (!qword_100176838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176838);
  }

  return result;
}

uint64_t sub_100073C38(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100073C5C(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100073C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100073CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100073D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Mirror();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_100001AB4(&qword_100176858, &unk_100122128);
  v21 = a1;
  v22 = a2;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v19 = a3;
  v20 = a4;
  v16 = sub_10007403C;
  v17 = &v18;
  v13 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
  if (v4)
  {
    v21 = v4;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    swift_willThrowTypedImpl();
  }

  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_100073EDC@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  result = sub_100076178(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100073F0C@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v8, a1, &v7);
  if (v3)
  {
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    result = swift_allocError();
    *v6 = v7;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

unint64_t sub_100073FB0()
{
  result = qword_100176850;
  if (!qword_100176850)
  {
    sub_10001E8F0(&qword_100175CA8, &unk_100124860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176850);
  }

  return result;
}

void *sub_10007403C@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(&v8, *a1, a1[1], a1 + 2);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1000740B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LogID(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_258;
  }

  v12 = *(a1 + 32);
  v10 = a1 + 32;
  v11 = v12;
  v13 = *(v10 + 9);
  if (v13 > 0xF || ((1 << v13) & 0xF3FC) == 0)
  {
    goto LABEL_229;
  }

  if (v11[1] != 4)
  {
    sub_10000CA2C();
    swift_allocError();
    v199 = 63;
LABEL_230:
    *v198 = v199;
    *(v198 + 8) = 0;
    *(v198 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (v11[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v199 = 64;
    goto LABEL_230;
  }

  if (v11[6] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v199 = 65;
    goto LABEL_230;
  }

  v248 = v2;
  v242 = 0;
  v243 = v6;
  v235 = a2;
  v244 = 0;
  v245 = 0;
  v241 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(v10 + 8);
  v234 = v11[7];
  v252 = &_swiftEmptySetSingleton;
  v253 = &_swiftEmptySetSingleton;
  LODWORD(v250) = v17 | (v13 << 8);
  v240 = "Invalid bRefresh of ";
  v236 = "lid for Data EPs";
  v237 = "ontrol Interface";
  v233 = "Invalid Output Terminal";
  *&v246 = v11;
  *(&v246 + 1) = _swiftEmptyArrayStorage;
  v247 = v8;
  v249 = v9;
  while (1)
  {
    if (v16 == v9)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
    }

    v18 = v15;
    v19 = v10 + 16 * v16;
    v20 = *v19;
    v21 = *(v19 + 9);
    v22 = *(v19 + 8) | (v21 << 8);
    if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*v19, v22, v11, v250))
    {
      goto LABEL_12;
    }

    if (v21 > 23)
    {
      break;
    }

    if (v21 > 18)
    {
      if (v21 == 19)
      {
        v241 = v20;
      }

      else
      {
        if (v21 != 20)
        {
          goto LABEL_66;
        }

        v242 = v20;
      }
    }

    else if (v21 == 17)
    {
      if (IOUSBGetEndpointType(v20) == 3)
      {
        if (*v20 != 7 && v234 != 0)
        {
          sub_10009B498(&v268, 33);
        }

        v244 = v20;
      }

      else
      {
        sub_10009B498(&v268, 62);
      }
    }

    else
    {
      if (v21 != 18)
      {
        goto LABEL_66;
      }

      if (IOUSBGetEndpointType(v20) != 3)
      {

        sub_10000CA2C();
        swift_allocError();
        v199 = 62;
        goto LABEL_230;
      }

      if (*(v20 + 7))
      {
        *&v268 = 0;
        *(&v268 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(70);
        v23._countAndFlagsBits = 0xD000000000000014;
        v23._object = (v237 | 0x8000000000000000);
        String.append(_:)(v23);
        LOBYTE(v260) = *(v20 + 7);
        v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v24);

        v25._object = (v240 | 0x8000000000000000);
        v25._countAndFlagsBits = 0xD000000000000030;
        String.append(_:)(v25);
        v26 = v268;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v27 = sub_10000A1BC(v243, qword_1001794F0);
        v8 = v247;
        sub_10000A2A4(v27, v247);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v28, qword_100179508);
        sub_100039F58(1, v8, v26, *(&v26 + 1));

        sub_10000C9D0(v8);
        sub_10009B498(&v268, 35);
      }

      if (*(v20 + 8))
      {
        *&v268 = 0;
        *(&v268 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(74);
        v29._countAndFlagsBits = 0xD000000000000018;
        v29._object = (v236 | 0x8000000000000000);
        String.append(_:)(v29);
        LOBYTE(v260) = *(v20 + 8);
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._object = (v240 | 0x8000000000000000);
        v31._countAndFlagsBits = 0xD000000000000030;
        String.append(_:)(v31);
        v32 = v268;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v33 = sub_10000A1BC(v243, qword_1001794F0);
        v8 = v247;
        sub_10000A2A4(v33, v247);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v34, qword_100179508);
        sub_100039F58(1, v8, v32, *(&v32 + 1));

        sub_10000C9D0(v8);
        sub_10009B498(&v268, 34);
      }

      v244 = v20;
      v11 = v246;
    }

LABEL_12:
    v9 = v249;
LABEL_13:
    v15 = v18;
LABEL_14:
    if (++v16 == v9)
    {
      v200 = v253;
      v201 = v244;
      if (v244)
      {
        v202 = v15;
        v203 = v253[2];
        if (v203)
        {
          v204 = sub_1001193F0(v253[2], 0);
          v205 = sub_10011B610(&v268, v204 + 32, v203, v200);
          sub_100022644(v268);
          if (v205 != v203)
          {
            __break(1u);
LABEL_229:
            sub_10000CA2C();
            swift_allocError();
            v199 = 49;
            goto LABEL_230;
          }
        }

        else
        {

          v204 = _swiftEmptyArrayStorage;
        }

        v211 = v241;
        v210 = v242;
        if (!v204[2])
        {

          v204 = 0;
        }

        v251 = 1;
        v255[0] = 1;
        *&v260 = v201;
        *(&v260 + 1) = v211;
        *&v261 = v210;
        WORD4(v261) = 256;
        LOBYTE(v262) = 0;
        *(&v262 + 1) = 0;
        LOWORD(v263) = 256;
        *(&v263 + 1) = 0;
        *&v264 = 0;
        *(&v264 + 1) = v204;
        *&v268 = v201;
        *(&v268 + 1) = v211;
        v269 = v210;
        LOWORD(v270) = 256;
        LOBYTE(v271) = 0;
        v272 = 0;
        LOWORD(v273) = 256;
        v274 = 0;
        v275 = 0;
        v276 = v204;
        sub_100022594(&v260, v254);
        sub_1000225F0(&v268);
        v249 = *(&v260 + 1);
        v250 = v260;
        v247 = v261;
        v243 = v262;
        v244 = *(&v261 + 1);
        v242 = *(&v262 + 1);
        v209 = *(&v263 + 1);
        v201 = v263;
        v208 = *(&v264 + 1);
        v207 = v264;
      }

      else
      {
        v202 = v15;

        v249 = 0;
        v250 = 0;
        v247 = 0;
        v243 = 0;
        v244 = 0;
        v242 = 0;
        v207 = 0;
        v208 = 0;
        v209 = 1;
      }

      v212 = v252;
      v213 = v252[2];
      if (v213)
      {
        v214 = sub_1001193F0(v252[2], 0);
        v215 = sub_10011B610(&v268, v214 + 32, v213, v212);
        sub_100022644(v268);
        if (v215 == v213)
        {
LABEL_240:
          v216 = v245 & 1;
          if (!v214[2])
          {

            v214 = 0;
          }

          memset(v255, 0, sizeof(v255));
          v256 = 0;
          v257 = 1;
          v258 = 0;
          v259 = 0;
          sub_10000D040(v255, &qword_100176828, &qword_100121FF0);
          v260 = v246;
          LOBYTE(v261) = BYTE4(v245);
          BYTE1(v261) = v216;
          *(&v261 + 1) = v202;
          *&v262 = v214;
          *(&v262 + 1) = v250;
          *&v263 = v249;
          *(&v263 + 1) = v247;
          *&v264 = v244;
          *(&v264 + 1) = v243;
          *&v265 = v242;
          *(&v265 + 1) = v201;
          *&v266 = v209;
          *(&v266 + 1) = v207;
          v267 = v208;
          v268 = v246;
          LOBYTE(v269) = BYTE4(v245);
          BYTE1(v269) = v216;
          v270 = v202;
          v271 = v214;
          v272 = v250;
          v273 = v249;
          v274 = v247;
          v275 = v244;
          v276 = v243;
          v277 = v242;
          v278 = v201;
          v279 = v209;
          v280 = v207;
          v281 = v208;
          sub_100057294(&v260, v254);
          result = sub_1000572F0(&v268);
          v217 = v265;
          v218 = v235;
          *(v235 + 64) = v264;
          *(v218 + 80) = v217;
          *(v218 + 96) = v266;
          *(v218 + 112) = v267;
          v219 = v261;
          *v218 = v260;
          *(v218 + 16) = v219;
          v220 = v263;
          *(v218 + 32) = v262;
          *(v218 + 48) = v220;
          return result;
        }

        __break(1u);
      }

      v214 = _swiftEmptyArrayStorage;
      goto LABEL_240;
    }
  }

  if (v21 <= 44)
  {
    if (v21 == 24)
    {
      if (*(v20 + 3) != 256)
      {
LABEL_243:

        sub_10000CA2C();
        swift_allocError();
        v199 = 66;
        goto LABEL_230;
      }

      goto LABEL_12;
    }

    if (v21 != 32)
    {
      goto LABEL_66;
    }

    if (*(v20 + 3) != 512)
    {
      goto LABEL_243;
    }

    LODWORD(v245) = *(v20 + 8) | v245;
    v35 = *(v20 + 5);
    goto LABEL_65;
  }

  if (v21 == 45)
  {
    v35 = *(v20 + 3);
LABEL_65:
    HIDWORD(v245) = v35;
    goto LABEL_12;
  }

  if (v21 != 75)
  {
LABEL_66:
    v52 = v248;
    sub_1000A2FA8(v20, v22, &v260);
    v248 = v52;
    if (v52)
    {

LABEL_248:
    }

    if (*(&v261 + 1))
    {
      sub_10000D0A0(&v260, &v268);
      sub_10001EAFC(&v268, &v260);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v249;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(&v246 + 1) = sub_1000249C8(0, *(*(&v246 + 1) + 16) + 1, 1, *(&v246 + 1));
      }

      v55 = *(*(&v246 + 1) + 16);
      v54 = *(*(&v246 + 1) + 24);
      if (v55 >= v54 >> 1)
      {
        *(&v246 + 1) = sub_1000249C8((v54 > 1), v55 + 1, 1, *(&v246 + 1));
      }

      sub_10000CE78(&v268);
      v56 = *(&v246 + 1);
      *(*(&v246 + 1) + 16) = v55 + 1;
      sub_10000D0A0(&v260, v56 + 40 * v55 + 32);
      v8 = v247;
    }

    else
    {
      sub_10000D040(&v260, &qword_100176880, &qword_100122158);
      v9 = v249;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v57 = sub_10000A1BC(v243, qword_1001794F0);
      sub_10000A2A4(v57, v8);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v58, qword_100179508);
      sub_100039F58(1, v8, 0xD000000000000030, (v233 | 0x8000000000000000));
      sub_10000C9D0(v8);
      sub_10009B498(&v268, 37);
    }

    goto LABEL_13;
  }

  v36 = sub_1000A60F8(v20, v22);
  if (v37 >> 60 == 15)
  {
    __break(1u);
LABEL_285:
    __DataStorage._length.getter();
LABEL_286:
    __break(1u);
LABEL_287:
    __DataStorage._length.getter();
LABEL_288:
    __break(1u);
LABEL_289:
    __DataStorage._length.getter();
LABEL_290:
    __break(1u);
LABEL_291:
    __DataStorage._length.getter();
LABEL_292:
    __break(1u);
LABEL_293:
    __DataStorage._length.getter();
LABEL_294:
    __break(1u);
LABEL_295:
    __DataStorage._length.getter();
LABEL_296:
    __break(1u);
LABEL_297:
    __DataStorage._length.getter();
LABEL_298:
    __break(1u);
LABEL_299:
    __DataStorage._length.getter();
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __DataStorage._length.getter();
    __break(1u);
LABEL_303:
    __DataStorage._length.getter();
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __DataStorage._length.getter();
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v38 = v36;
  v39 = v37;
  v40 = v37 >> 62;
  v238 = v37;
  v239 = v36;
  if ((v37 >> 62) > 1)
  {
    if (v40 != 2)
    {
      sub_10000CA2C();
      swift_allocError();
      *v223 = 56;
      *(v223 + 8) = 0;
      *(v223 + 16) = 0xE000000000000000;
      swift_willThrow();
      v222 = v38;
      goto LABEL_255;
    }

    v59 = *(v36 + 16);
    v60 = *(v36 + 24);
    v61 = __DataStorage._bytes.getter();
    if (v61)
    {
      v62 = v61;
      v63 = __DataStorage._offset.getter();
      if (__OFSUB__(v59, v63))
      {
        goto LABEL_264;
      }

      v64 = (v59 - v63 + v62);
    }

    else
    {
      v64 = 0;
    }

    v75 = __OFSUB__(v60, v59);
    v76 = v60 - v59;
    if (v75)
    {
      goto LABEL_260;
    }

    v77 = __DataStorage._length.getter();
    if (v77 >= v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = v77;
    }

    if (!v64)
    {

      sub_10000CA2C();
      swift_allocError();
      *v227 = 57;
      *(v227 + 8) = 0;
      *(v227 + 16) = 0xE000000000000000;
      swift_willThrow();
      v225 = v239;
      v226 = v39;
LABEL_252:
      sub_100076B24(v225, v226);
    }

    if (v78 < 4)
    {
LABEL_246:
      sub_10000CA2C();
      swift_allocError();
      *v221 = 56;
      *(v221 + 8) = 0;
      *(v221 + 16) = 0xE000000000000000;
      swift_willThrow();
      v222 = v239;
      goto LABEL_255;
    }

    v79 = sub_1001128D0(v64, 4uLL);
    v81 = v80;
    v82 = v80 >> 62;
    v232 = v79;
    if ((v80 >> 62) > 1)
    {
      if (v82 != 2)
      {
        *&v268 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v83 = v268;
        v170 = *(v268 + 16);
        v169 = *(v268 + 24);
        if (v170 >= v169 >> 1)
        {
          sub_1000470C0((v169 > 1), v170 + 1, 1);
          v83 = v268;
        }

        *(v83 + 16) = v170 + 1;
        *(v83 + 4 * v170 + 32) = 0;
        v86 = v232;
        goto LABEL_185;
      }

      v88 = *(v79 + 16);
      v89 = __DataStorage._bytes.getter();
      if (!v89)
      {
        goto LABEL_293;
      }

      v90 = v89;
      v91 = __DataStorage._offset.getter();
      if (__OFSUB__(v88, v91))
      {
        goto LABEL_269;
      }

      v92 = (v88 - v91 + v90);
      __DataStorage._length.getter();
      if (!v92)
      {
        goto LABEL_294;
      }
    }

    else
    {
      if (!v82)
      {
        *&v268 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v83 = v268;
        v85 = *(v268 + 16);
        v84 = *(v268 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1000470C0((v84 > 1), v85 + 1, 1);
          v83 = v268;
        }

        v86 = v232;
        *(v83 + 16) = v85 + 1;
        v87 = v83 + 4 * v85;
        *(v87 + 32) = v86;
        *(v87 + 34) = BYTE2(v86);
        *(v87 + 35) = BYTE3(v86);
LABEL_185:
        sub_10007676C(v86, v81);
        if (!*(v83 + 16))
        {
          goto LABEL_263;
        }

        v146 = *(v83 + 35);

        v171 = v248;
        sub_1000D5D10((v64 + 4), &v64[v78], 2 * v146);
        v248 = v171;
        if (v171)
        {
LABEL_247:
          sub_100076B24(v239, v238);
          goto LABEL_248;
        }

        v172 = sub_1001128D0(v64 + 4, 2 * v146);
        v149 = v172;
        v151 = v173;
        v174 = v173 >> 62;
        if ((v173 >> 62) <= 1)
        {
          if (v174)
          {
            if (v172 > v172 >> 32)
            {
              goto LABEL_279;
            }

            v194 = __DataStorage._bytes.getter();
            if (!v194)
            {
              goto LABEL_308;
            }

            v195 = v194;
            v196 = __DataStorage._offset.getter();
            if (__OFSUB__(v149, v196))
            {
              goto LABEL_282;
            }

            v156 = (v149 - v196 + v195);
            __DataStorage._length.getter();
            v8 = v247;
            if (!v156)
            {
              goto LABEL_307;
            }

            goto LABEL_217;
          }

LABEL_189:
          *&v268 = v149;
          WORD4(v268) = v151;
          BYTE10(v268) = BYTE2(v151);
          BYTE11(v268) = BYTE3(v151);
          BYTE12(v268) = BYTE4(v151);
          BYTE13(v268) = BYTE5(v151);
LABEL_196:
          v179 = v248;
          v15 = sub_10010A954(&v268, v146);
          v248 = v179;
          sub_10007676C(v149, v151);
          sub_100076B24(v239, v238);
          v11 = v246;
          v8 = v247;
          v9 = v249;
          goto LABEL_14;
        }

        if (v174 == 2)
        {
          v175 = *(v172 + 16);
          v176 = __DataStorage._bytes.getter();
          if (!v176)
          {
            goto LABEL_306;
          }

          v177 = v176;
          v178 = __DataStorage._offset.getter();
          if (__OFSUB__(v175, v178))
          {
            goto LABEL_278;
          }

          v156 = (v175 - v178 + v177);
          __DataStorage._length.getter();
          v8 = v247;
          if (!v156)
          {
            goto LABEL_305;
          }

          goto LABEL_217;
        }

LABEL_195:
        *(&v268 + 6) = 0;
        *&v268 = 0;
        goto LABEL_196;
      }

      v161 = v79;
      if (v79 > v79 >> 32)
      {
        goto LABEL_272;
      }

      v162 = __DataStorage._bytes.getter();
      if (!v162)
      {
        goto LABEL_295;
      }

      v163 = v162;
      v164 = __DataStorage._offset.getter();
      if (__OFSUB__(v161, v164))
      {
        goto LABEL_276;
      }

      v92 = (v161 - v164 + v163);
      __DataStorage._length.getter();
      if (!v92)
      {
        goto LABEL_296;
      }
    }

    *&v268 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v83 = v268;
    v165.i32[0] = *v92;
    v167 = *(v268 + 16);
    v166 = *(v268 + 24);
    if (v167 >= v166 >> 1)
    {
      v231 = v165;
      sub_1000470C0((v166 > 1), v167 + 1, 1);
      v165 = v231;
      v83 = v268;
    }

    v86 = v232;
    v168 = vmovl_u8(v165).u64[0];
    *(v83 + 16) = v167 + 1;
    *(v83 + 4 * v167 + 32) = vuzp1_s8(v168, v168).u32[0];
    goto LABEL_185;
  }

  if (v40)
  {
    v65 = (v36 >> 32) - v36;
    if (v36 >> 32 < v36)
    {
      goto LABEL_259;
    }

    v66 = __DataStorage._bytes.getter();
    if (v66)
    {
      v67 = v66;
      v68 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v68))
      {
        goto LABEL_265;
      }

      v69 = (v38 - v68 + v67);
    }

    else
    {
      v69 = 0;
    }

    v93 = __DataStorage._length.getter();
    if (v93 >= v65)
    {
      v94 = v65;
    }

    else
    {
      v94 = v93;
    }

    if (!v69)
    {

      sub_10000CA2C();
      swift_allocError();
      *v224 = 57;
      *(v224 + 8) = 0;
      *(v224 + 16) = 0xE000000000000000;
      swift_willThrow();
      v226 = v238;
      v225 = v239;
      goto LABEL_252;
    }

    if (v94 < 4)
    {
      sub_10000CA2C();
      swift_allocError();
      *v228 = 56;
      *(v228 + 8) = 0;
      *(v228 + 16) = 0xE000000000000000;
      swift_willThrow();
      v229 = v238;
      v222 = v239;
      goto LABEL_256;
    }

    v95 = sub_1001128D0(v69, 4uLL);
    v97 = v96;
    v98 = v96 >> 62;
    v232 = v95;
    if ((v96 >> 62) > 1)
    {
      if (v98 != 2)
      {
        *&v268 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v99 = v268;
        v145 = *(v268 + 16);
        v144 = *(v268 + 24);
        if (v145 >= v144 >> 1)
        {
          sub_1000470C0((v144 > 1), v145 + 1, 1);
          v99 = v268;
        }

        *(v99 + 16) = v145 + 1;
        *(v99 + 4 * v145 + 32) = 0;
        v102 = v232;
        goto LABEL_161;
      }

      v104 = *(v95 + 16);
      v105 = __DataStorage._bytes.getter();
      if (!v105)
      {
        goto LABEL_289;
      }

      v106 = v105;
      v107 = __DataStorage._offset.getter();
      if (__OFSUB__(v104, v107))
      {
        goto LABEL_270;
      }

      v108 = (v104 - v107 + v106);
      __DataStorage._length.getter();
      if (!v108)
      {
        goto LABEL_290;
      }
    }

    else
    {
      if (!v98)
      {
        *&v268 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v99 = v268;
        v101 = *(v268 + 16);
        v100 = *(v268 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_1000470C0((v100 > 1), v101 + 1, 1);
          v99 = v268;
        }

        v102 = v232;
        *(v99 + 16) = v101 + 1;
        v103 = v99 + 4 * v101;
        *(v103 + 32) = v102;
        *(v103 + 34) = BYTE2(v102);
        *(v103 + 35) = BYTE3(v102);
LABEL_161:
        sub_10007676C(v102, v97);
        if (!*(v99 + 16))
        {
          goto LABEL_262;
        }

        v146 = *(v99 + 35);

        v147 = v248;
        sub_1000D5D10((v69 + 4), &v69[v94], 2 * v146);
        v248 = v147;
        if (v147)
        {
          goto LABEL_247;
        }

        v148 = sub_1001128D0(v69 + 4, 2 * v146);
        v149 = v148;
        v151 = v150;
        v152 = v150 >> 62;
        if ((v150 >> 62) <= 1)
        {
          if (v152)
          {
            if (v148 > v148 >> 32)
            {
              goto LABEL_280;
            }

            v153 = __DataStorage._bytes.getter();
            if (!v153)
            {
              goto LABEL_303;
            }

            v154 = v153;
            v155 = __DataStorage._offset.getter();
            if (__OFSUB__(v149, v155))
            {
              goto LABEL_283;
            }

            v156 = (v149 - v155 + v154);
            __DataStorage._length.getter();
            v8 = v247;
            if (!v156)
            {
              goto LABEL_304;
            }

            goto LABEL_217;
          }

          goto LABEL_189;
        }

        if (v152 == 2)
        {
          v157 = *(v148 + 16);
          v158 = __DataStorage._bytes.getter();
          if (!v158)
          {
            goto LABEL_302;
          }

          v159 = v158;
          v160 = __DataStorage._offset.getter();
          if (__OFSUB__(v157, v160))
          {
            goto LABEL_281;
          }

          v156 = (v157 - v160 + v159);
          __DataStorage._length.getter();
          v8 = v247;
          if (!v156)
          {
            goto LABEL_301;
          }

LABEL_217:
          v197 = v248;
          v15 = sub_10010A954(v156, v146);
          v248 = v197;
          sub_10007676C(v149, v151);
          sub_100076B24(v239, v238);
          v11 = v246;
          v9 = v249;
          goto LABEL_14;
        }

        goto LABEL_195;
      }

      v136 = v95;
      if (v95 > v95 >> 32)
      {
        goto LABEL_271;
      }

      v137 = __DataStorage._bytes.getter();
      if (!v137)
      {
        goto LABEL_291;
      }

      v138 = v137;
      v139 = __DataStorage._offset.getter();
      if (__OFSUB__(v136, v139))
      {
        goto LABEL_275;
      }

      v108 = (v136 - v139 + v138);
      __DataStorage._length.getter();
      if (!v108)
      {
        goto LABEL_292;
      }
    }

    *&v268 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v99 = v268;
    v140.i32[0] = *v108;
    v142 = *(v268 + 16);
    v141 = *(v268 + 24);
    if (v142 >= v141 >> 1)
    {
      v231 = v140;
      sub_1000470C0((v141 > 1), v142 + 1, 1);
      v140 = v231;
      v99 = v268;
    }

    v102 = v232;
    v143 = vmovl_u8(v140).u64[0];
    *(v99 + 16) = v142 + 1;
    *(v99 + 4 * v142 + 32) = vuzp1_s8(v143, v143).u32[0];
    goto LABEL_161;
  }

  *&v268 = v36;
  WORD4(v268) = v37;
  BYTE10(v268) = BYTE2(v37);
  BYTE11(v268) = BYTE3(v37);
  BYTE12(v268) = BYTE4(v37);
  v41 = BYTE6(v37);
  BYTE13(v268) = BYTE5(v37);
  if (BYTE6(v37) < 4uLL)
  {
    goto LABEL_246;
  }

  v42 = sub_1001128D0(&v268, 4uLL);
  v43 = v42;
  v45 = v44;
  v46 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v46 == 2)
    {
      v70 = *(v42 + 16);
      v71 = __DataStorage._bytes.getter();
      if (!v71)
      {
        goto LABEL_285;
      }

      v72 = v71;
      v73 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v73))
      {
        goto LABEL_266;
      }

      v74 = (v70 - v73 + v72);
      __DataStorage._length.getter();
      if (!v74)
      {
        goto LABEL_286;
      }

      goto LABEL_129;
    }

    *&v260 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v47 = v260;
    v118 = *(v260 + 16);
    v117 = *(v260 + 24);
    if (v118 >= v117 >> 1)
    {
      sub_1000470C0((v117 > 1), v118 + 1, 1);
      v47 = v260;
    }

    *(v47 + 16) = v118 + 1;
    *(v47 + 4 * v118 + 32) = 0;
LABEL_135:
    v8 = v247;
  }

  else
  {
    if (!v46)
    {
      *&v260 = _swiftEmptyArrayStorage;
      sub_1000470C0(0, 1, 0);
      v47 = v260;
      v49 = *(v260 + 16);
      v48 = *(v260 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1000470C0((v48 > 1), v49 + 1, 1);
        v47 = v260;
      }

      *(v47 + 16) = v49 + 1;
      v50 = v47 + 4 * v49;
      *(v50 + 32) = v43;
      *(v50 + 34) = BYTE2(v43);
      *(v50 + 35) = BYTE3(v43);
      goto LABEL_135;
    }

    if (v42 > v42 >> 32)
    {
      goto LABEL_267;
    }

    v109 = __DataStorage._bytes.getter();
    if (!v109)
    {
      goto LABEL_287;
    }

    v110 = v109;
    v111 = __DataStorage._offset.getter();
    if (__OFSUB__(v43, v111))
    {
      goto LABEL_268;
    }

    v74 = (v43 - v111 + v110);
    __DataStorage._length.getter();
    if (!v74)
    {
      goto LABEL_288;
    }

LABEL_129:
    *&v260 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v47 = v260;
    v112.i32[0] = *v74;
    v114 = *(v260 + 16);
    v113 = *(v260 + 24);
    v115 = v114 + 1;
    if (v114 >= v113 >> 1)
    {
      v232 = v112;
      sub_1000470C0((v113 > 1), v114 + 1, 1);
      v115 = v114 + 1;
      v112 = v232;
      v47 = v260;
    }

    v8 = v247;
    v116 = vmovl_u8(v112).u64[0];
    *(v47 + 16) = v115;
    *(v47 + 4 * v114 + 32) = vuzp1_s8(v116, v116).u32[0];
  }

  sub_10007676C(v43, v45);
  if (!*(v47 + 16))
  {
    goto LABEL_261;
  }

  v119 = *(v47 + 35);

  v120 = v248;
  sub_1000D5D10(&v268 + 4, &v268 + v41, 2 * v119);
  v248 = v120;
  if (!v120)
  {
    v121 = sub_1001128D0(&v268 + 4, 2 * v119);
    v123 = v122;
    v124 = v122 >> 62;
    if ((v122 >> 62) > 1)
    {
      v11 = v246;
      if (v124 != 2)
      {
        *(&v260 + 6) = 0;
        *&v260 = 0;
        if (!v119)
        {
          goto LABEL_218;
        }

        v231 = v122;
        v232 = v121;
        v254[0] = _swiftEmptyArrayStorage;
        sub_1000470A0(0, v119, 0);
        v15 = v254[0];
        v189 = *(v254[0] + 16);
        v190 = &v260;
        do
        {
          v192 = *v190;
          v190 = (v190 + 2);
          v191 = v192;
          v254[0] = v15;
          v193 = *(v15 + 3);
          if (v189 >= v193 >> 1)
          {
            sub_1000470A0((v193 > 1), v189 + 1, 1);
            v15 = v254[0];
          }

          *(v15 + 2) = v189 + 1;
          v15[v189++ + 16] = v191;
          --v119;
        }

        while (v119);
        goto LABEL_212;
      }

      v232 = v121;
      v130 = *(v121 + 16);
      v131 = __DataStorage._bytes.getter();
      if (!v131)
      {
        goto LABEL_297;
      }

      v132 = v131;
      v133 = __DataStorage._offset.getter();
      if (__OFSUB__(v130, v133))
      {
        goto LABEL_274;
      }

      v134 = (v130 - v133 + v132);
      __DataStorage._length.getter();
      v8 = v247;
      if (!v134)
      {
        goto LABEL_298;
      }

      v135 = v248;
      v15 = sub_10010A954(v134, v119);
      v248 = v135;
    }

    else
    {
      v11 = v246;
      if (!v124)
      {
        *&v260 = v121;
        WORD4(v260) = v122;
        BYTE10(v260) = BYTE2(v122);
        BYTE11(v260) = BYTE3(v122);
        BYTE12(v260) = BYTE4(v122);
        BYTE13(v260) = BYTE5(v122);
        if (v119)
        {
          v231 = v122;
          v232 = v121;
          v254[0] = _swiftEmptyArrayStorage;
          sub_1000470A0(0, v119, 0);
          v15 = v254[0];
          v125 = *(v254[0] + 16);
          v126 = &v260;
          do
          {
            v128 = *v126;
            v126 = (v126 + 2);
            v127 = v128;
            v254[0] = v15;
            v129 = *(v15 + 3);
            if (v125 >= v129 >> 1)
            {
              sub_1000470A0((v129 > 1), v125 + 1, 1);
              v15 = v254[0];
            }

            *(v15 + 2) = v125 + 1;
            v15[v125++ + 16] = v127;
            --v119;
          }

          while (v119);
          goto LABEL_212;
        }

LABEL_218:
        v15 = _swiftEmptyArrayStorage;
LABEL_221:
        sub_10007676C(v121, v123);
        sub_100076B24(v239, v238);
        v9 = v249;
        goto LABEL_14;
      }

      v180 = v121;
      v232 = v121;
      if (v121 > v121 >> 32)
      {
        goto LABEL_273;
      }

      v181 = __DataStorage._bytes.getter();
      if (!v181)
      {
        goto LABEL_299;
      }

      v182 = v181;
      v183 = __DataStorage._offset.getter();
      if (__OFSUB__(v180, v183))
      {
        goto LABEL_277;
      }

      v184 = (v180 - v183 + v182);
      __DataStorage._length.getter();
      v8 = v247;
      if (!v184)
      {
        goto LABEL_300;
      }

      if (v119)
      {
        v231 = v123;
        *&v260 = _swiftEmptyArrayStorage;
        sub_1000470A0(0, v119, 0);
        v15 = v260;
        v185 = *(v260 + 16);
        do
        {
          v187 = *v184++;
          v186 = v187;
          *&v260 = v15;
          v188 = *(v15 + 3);
          if (v185 >= v188 >> 1)
          {
            sub_1000470A0((v188 > 1), v185 + 1, 1);
            v15 = v260;
          }

          *(v15 + 2) = v185 + 1;
          v15[v185++ + 16] = v186;
          --v119;
        }

        while (v119);
LABEL_212:
        v11 = v246;
        v8 = v247;
        v123 = v231;
        v121 = v232;
        goto LABEL_221;
      }

      v15 = _swiftEmptyArrayStorage;
    }

    v121 = v232;
    goto LABEL_221;
  }

  v39 = v238;
  v222 = v239;
LABEL_255:
  v229 = v39;
LABEL_256:
  sub_100076B24(v222, v229);
}

uint64_t sub_100075CCC(char *a1, char a2)
{
  v4 = v2;
  v6 = a1;
  if (*(v2 + 24))
  {
    result = sub_100070C8C(a1);
    if (v3)
    {
      return result;
    }

    v8 = result;
  }

  else
  {
    v8 = *(v2 + 8);
  }

  v9 = *&v6[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v9 && (result = sub_1000AA808(0x16u, v9), (result & 1) != 0))
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v2 + 17);
  }

  v39 = *(v8 + 16);
  if (v39)
  {
    v26 = v6;
    v24 = a2;
    v10 = 0;
    v11 = v8 + 32;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10001EAFC(v11, v27);
      sub_10001EAFC(v27, v31);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      sub_100001AB4(&qword_1001754D8, &qword_100120F68);
      if (swift_dynamicCast())
      {
        sub_10000D0A0(&v28, v32);
        v13 = v33;
        v14 = v34;
        sub_10001EAB8(v32, v33);
        (*(v14 + 24))(&v35, v26, v2, v25, v13, v14);
        if (v3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0u;
        v28 = 0u;
        sub_10000D040(&v28, &qword_100176888, &qword_100122170);
        sub_10001EAFC(v27, v31);
        sub_100001AB4(&qword_100176890, &qword_100122178);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v30 = 0;
          v29 = 0u;
          v28 = 0u;
          sub_10000CE78(v27);
          sub_10000D040(&v28, &qword_100176898, &unk_100122180);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
          goto LABEL_12;
        }

        sub_10000D0A0(&v28, v32);
        v15 = v33;
        v16 = v34;
        sub_10001EAB8(v32, v33);
        (*(v16 + 16))(&v35, v26, v2, v15, v16);
        if (v3)
        {
LABEL_36:

          sub_10000CE78(v27);
          sub_10000CE78(v32);
        }
      }

      sub_10000CE78(v27);
      sub_10000CE78(v32);
      if (*(&v36 + 1))
      {
        sub_10000D0A0(&v35, v38);
        sub_10000D0A0(v38, &v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100024C60(0, v12[2] + 1, 1, v12);
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = sub_100024C60((v17 > 1), v18 + 1, 1, v12);
        }

        v12[2] = v18 + 1;
        result = sub_10000D0A0(&v35, &v12[5 * v18 + 4]);
        goto LABEL_13;
      }

LABEL_12:
      result = sub_10000D040(&v35, &qword_100174FB0, &unk_100120FC0);
LABEL_13:
      ++v10;
      v11 += 40;
      if (v39 == v10)
      {

        v6 = v26;
        v4 = v2;
        a2 = v24;
        goto LABEL_28;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_28:
  if (!*(*v4 + 8))
  {
LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v19 = *&v6[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v19)
  {
LABEL_34:
    v23 = 0;
    goto LABEL_35;
  }

  v20 = sub_1000F8280(*(*v4 + 8));
  if (!v3)
  {
    if (v21)
    {
      v27[0] = v20;
      v27[1] = v21;
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE100000000000000;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_10001EA64();
      v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v23 = v22;

LABEL_35:
      type metadata accessor for ActiveControlInterface();
      swift_allocObject();
      sub_100057294(v4, v27);
      return sub_1000AAB8C(v4, v6, a2 & 1, v12, v19, v23);
    }

    goto LABEL_33;
  }
}

uint64_t sub_100076178(uint64_t a1)
{
  sub_10001E0C4(a1, v3);
  if (swift_dynamicCast())
  {
    return v3[46];
  }

  sub_10000CA2C();
  swift_allocError();
  *v2 = 4;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_100076214()
{

  return _swift_deallocObject(v0, 68, 7);
}

uint64_t sub_1000762A8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100076300(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10007634C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000763E0()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10007648C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000764CC()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10007657C()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000765CC()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100076670()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10007670C()
{

  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_10007676C(*(v0 + 88), v1);
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10007676C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100076870(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001AB4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000768D8()
{
  result = qword_1001768A0;
  if (!qword_1001768A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768A0);
  }

  return result;
}

unint64_t sub_1000769D4()
{
  result = qword_1001768A8;
  if (!qword_1001768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768A8);
  }

  return result;
}

uint64_t sub_100076B24(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10007676C(result, a2);
  }

  return result;
}

uint64_t sub_100076B38()
{

  if (*(v0 + 112) != 1)
  {
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t ActiveEntity.entityID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v6, a1);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveEntity.name.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  (*(a2 + 8))(v17, a1, a2);
  v5 = v18;
  v6 = v19;
  sub_10001EAB8(v17, v18);
  v7 = (*(v6 + 32))(v5, v6);
  if (BYTE2(v7) == 255)
  {
    sub_10000CE78(v17);
    return 0;
  }

  v9 = v7;
  sub_10000CE78(v17);
  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 16))(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      if (*&v13[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
      {
        v14 = sub_1000F8280((v9 & 0x1FFFF));
        if (v15)
        {
          v17[0] = v14;
          v17[1] = v15;
          sub_10001EA64();
          v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          return v16;
        }
      }
    }

    return 0;
  }

  return result;
}

double ClockMultiplier.activate(onDevice:controlInterface:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100076FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *i@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  __chkstk_darwin(v8);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  v12 = *(*(v11 + 8) + 16);
  v86 = *(v11 + 8);
  result = v12(a1);
  if (!result)
  {
    goto LABEL_40;
  }

  v15 = result;
  v16 = v14;
  v83 = v8;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v16);
  v84 = v18;
  v94 = a1;
  v95 = v11;
  v19 = sub_10007D2E8(&v93);
  (*(*(a1 - 8) + 16))(v19, v3, a1);
  v20 = sub_10004F2E8(&v93, ObjectType, v16);
  v88 = 0;
  v21 = v20;
  sub_10000CE78(&v93);
  if (!v21)
  {
    sub_10000CA2C();
    v88 = swift_allocError();
    *v28 = 102;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_35;
  }

  v22 = a1;
  v23 = *(a2 + 16);
  v80 = v22;
  v24 = *(v23() + 16);

  if (v24 != 1)
  {
LABEL_11:
    v78 = v10;
    v79 = i;
    v29 = v4;
    v77[1] = a2 + 16;
    v30 = (v23)(v80, a2);
    v10 = *(v30 + 16);
    v85 = v4;
    v87 = v15;
    if (v10)
    {
      for (i = 0; v10 != i; i = (i + 1))
      {
        if (i >= *(v30 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v31 = *(v30 + 8 * i + 32);
        v29 = v15;
        sub_100052184(v31, ObjectType, v16, &v93);
        if (v94)
        {
          v29 = sub_100001AB4(&qword_100174F60, &qword_100121090);
          v81 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {
            v15 = v90;
            if (*(v90 + 136) == 257)
            {

              *&v93 = 0;
              *(&v93 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(64);
              v51._countAndFlagsBits = active;
              v51._object = v84;
              String.append(_:)(v51);

              v52._countAndFlagsBits = 32;
              v52._object = 0xE100000000000000;
              String.append(_:)(v52);
              v53 = v80;
              swift_getDynamicType();
              v54._countAndFlagsBits = _typeName(_:qualified:)();
              String.append(_:)(v54);

              v55._countAndFlagsBits = 2113568;
              v55._object = 0xE300000000000000;
              String.append(_:)(v55);
              *&v90 = (*(v86 + 48))(v53);
              v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v56);

              v57._countAndFlagsBits = 0xD000000000000034;
              v57._object = 0x800000010012DE00;
              String.append(_:)(v57);
              *&v90 = v31;
              v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v58);

              ObjectType = *(&v93 + 1);
              v26 = v93;
              if (qword_100173CB8 != -1)
              {
                goto LABEL_55;
              }

              goto LABEL_42;
            }

            v15 = v87;
          }
        }

        else
        {
          sub_10000D040(&v93, &qword_100174FB0, &unk_100120FC0);
        }

        v4 = v85;
      }
    }

    v29 = v4;
    v32 = v80;
    v33 = (v23)(v80, a2);
    a1 = v32;
    v34 = v33;
    v35 = *(v33 + 16);
    if (v35)
    {
      v10 = 0;
      i = &qword_100174FB0;
      v36 = &unk_100120FC0;
      while (1)
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_52;
        }

        v37 = *(v34 + 8 * v10 + 32);
        v29 = v87;
        sub_100052184(v37, ObjectType, v16, v89);
        if (!v89[3])
        {
          break;
        }

        v29 = sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          goto LABEL_23;
        }

        if (!*(&v91 + 1))
        {
          goto LABEL_23;
        }

        v81 = v37;
        v38 = v35;
        v39 = i;
        v40 = v36;
        sub_10000D0A0(&v90, &v93);
        v29 = v87;
        v41 = v88;
        v42 = sub_10004F2E8(&v93, ObjectType, v16);
        v88 = v41;
        if (v41)
        {

          sub_10000CE78(&v93);
          goto LABEL_34;
        }

        if (v42)
        {

          *&v90 = 0;
          *(&v90 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(54);
          v63._countAndFlagsBits = active;
          v63._object = v84;
          String.append(_:)(v63);

          v64._countAndFlagsBits = 32;
          v64._object = 0xE100000000000000;
          String.append(_:)(v64);
          swift_getDynamicType();
          v65._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v65);

          v66._countAndFlagsBits = 2113568;
          v66._object = 0xE300000000000000;
          String.append(_:)(v66);
          v89[0] = (*(v86 + 48))(a1);
          v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v67);

          v68._object = 0x800000010012DDD0;
          v68._countAndFlagsBits = 0xD000000000000025;
          String.append(_:)(v68);
          sub_10001EAB8(&v93, v94);
          swift_getDynamicType();
          v69._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v69);

          v70._countAndFlagsBits = 2113568;
          v70._object = 0xE300000000000000;
          String.append(_:)(v70);
          v89[0] = v81;
          v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v71);

          v72 = v90;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v73 = sub_10000A1BC(v83, qword_1001794F0);
          v74 = v78;
          sub_10000A2A4(v73, v78);
          v75 = v79;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v76 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v76, qword_100179508);
          sub_100039AA0(1, v74, v72, *(&v72 + 1));
          swift_unknownObjectRelease();

          sub_10000C9D0(v74);
          return sub_10000D0A0(&v93, v75);
        }

        sub_10000CE78(&v93);
        v36 = v40;
        i = v39;
        v35 = v38;
LABEL_24:
        if (v35 == ++v10)
        {
          goto LABEL_33;
        }
      }

      sub_10000D040(v89, i, v36);
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
LABEL_23:
      sub_10000D040(&v90, &qword_100174F70, &qword_100120FD0);
      goto LABEL_24;
    }

LABEL_33:

    sub_10000CA2C();
    v88 = swift_allocError();
    *v43 = 1;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_34:
    i = v79;
    v10 = v78;
LABEL_35:
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v44._countAndFlagsBits = active;
    v44._object = v84;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0xD00000000000002CLL;
    v45._object = 0x800000010012DDA0;
    String.append(_:)(v45);
    swift_getDynamicType();
    v46._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 8250;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    *&v90 = (*(v86 + 48))(a1);
    v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v48);

    ObjectType = *(&v93 + 1);
    v29 = v93;
    if (qword_100173CB8 != -1)
    {
LABEL_53:
      swift_once();
    }

    v49 = sub_10000A1BC(v83, qword_1001794F0);
    sub_10000A2A4(v49, v10);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v50, qword_100179508);
    sub_100039F58(1, v10, v29, ObjectType);

    swift_unknownObjectRelease();
    result = sub_10000C9D0(v10);
    *i = 0u;
    *(i + 1) = 0u;
    i[4] = 0;
    return result;
  }

  v25 = (v23)(v80, a2);
  if (!*(v25 + 16))
  {

    goto LABEL_11;
  }

  v26 = v25;

  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);

    sub_100052184(v27, ObjectType, v16, &v93);
    swift_unknownObjectRelease();
    if (v94)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_10000D040(&v93, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_40:
    i[4] = 0;
    *i = 0u;
    *(i + 1) = 0u;
    return result;
  }

  __break(1u);
LABEL_55:
  swift_once();
LABEL_42:
  v59 = sub_10000A1BC(v83, qword_1001794F0);
  v60 = v78;
  sub_10000A2A4(v59, v78);
  v61 = v79;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v62, qword_100179508);
  sub_100039AA0(1, v60, v26, ObjectType);

  sub_10000C9D0(v60);
  v61[3] = v81;
  v61[4] = &protocol witness table for ActiveInputTerminal;
  *v61 = v15;
  return swift_unknownObjectRelease();
}

uint64_t sub_100077BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  __chkstk_darwin(v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  v12 = *(*(v11 + 8) + 16);
  v84 = *(v11 + 8);
  result = v12(a1);
  if (!result)
  {
    goto LABEL_41;
  }

  v15 = result;
  v16 = v14;
  v82 = v8;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v16);
  v83 = v18;
  v91 = a1;
  v92 = v11;
  v19 = sub_10007D2E8(&v90);
  (*(*(a1 - 8) + 16))(v19, v3, a1);
  v20 = sub_100056CB0(&v90, ObjectType, v16);
  v85 = 0;
  v21 = v20;
  sub_10000CE78(&v90);
  if (!v21)
  {
    sub_10000CA2C();
    v85 = swift_allocError();
    *v28 = 102;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_36;
  }

  v22 = ObjectType;
  v77 = v10;
  v23 = *(a2 + 16);
  v24 = *(v23(a1, a2) + 16);

  if (v24 != 1)
  {
LABEL_11:
    v80 = v15;
    v76 = a3;
    v29 = v4;
    v75 = a2;
    a3 = v23(a1, a2);
    v10 = *(a3 + 16);
    v79 = a1;
    v78 = v4;
    if (v10)
    {
      for (i = 0; v10 != i; ++i)
      {
        if (i >= *(a3 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v31 = *(a3 + 8 * i + 32);
        v29 = v80;
        sub_100052184(v31, v22, v16, &v90);
        if (v91)
        {
          v29 = sub_100001AB4(&qword_100174F60, &qword_100121090);
          a1 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {

            v16 = v87;
            *&v90 = 0;
            *(&v90 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(51);
            v32._countAndFlagsBits = active;
            v32._object = v83;
            String.append(_:)(v32);

            v33._countAndFlagsBits = 32;
            v33._object = 0xE100000000000000;
            String.append(_:)(v33);
            v34 = v79;
            swift_getDynamicType();
            v35._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v35);

            v36._countAndFlagsBits = 2113568;
            v36._object = 0xE300000000000000;
            String.append(_:)(v36);
            *&v87 = (*(v84 + 48))(v34);
            v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v37);

            v38._countAndFlagsBits = 0xD000000000000027;
            v38._object = 0x800000010012DD70;
            String.append(_:)(v38);
            *&v87 = v31;
            v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v39);

            v23 = *(&v90 + 1);
            v26 = v90;
            if (qword_100173CB8 != -1)
            {
              goto LABEL_52;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_10000D040(&v90, &qword_100174FB0, &unk_100120FC0);
        }

        a1 = v79;
        v4 = v78;
      }
    }

    v29 = v4;
    v44 = v23(a1, v75);
    a3 = *(v44 + 16);
    v45 = v80;
    v10 = v77;
    if (a3)
    {
      v23 = v22;
      v46 = 0;
      v47 = &qword_100174FB0;
      while (1)
      {
        if (v46 >= *(v44 + 16))
        {
          goto LABEL_49;
        }

        v48 = *(v44 + 8 * v46 + 32);
        v29 = v45;
        sub_100052184(v48, v23, v16, v86);
        if (!v86[3])
        {
          break;
        }

        v29 = sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          goto LABEL_25;
        }

        if (!*(&v88 + 1))
        {
          goto LABEL_25;
        }

        v49 = v47;
        sub_10000D0A0(&v87, &v90);
        v29 = v45;
        v50 = v85;
        v51 = sub_100056CB0(&v90, v23, v16);
        v85 = v50;
        if (v50)
        {

          sub_10000CE78(&v90);
          a3 = v76;
          a1 = v79;
          v10 = v77;
          goto LABEL_36;
        }

        if (v51)
        {

          *&v87 = 0;
          *(&v87 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v60._countAndFlagsBits = active;
          v60._object = v83;
          String.append(_:)(v60);

          v61._countAndFlagsBits = 32;
          v61._object = 0xE100000000000000;
          String.append(_:)(v61);
          v62 = v79;
          swift_getDynamicType();
          v63._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v63);

          v64._countAndFlagsBits = 2113568;
          v64._object = 0xE300000000000000;
          String.append(_:)(v64);
          v86[0] = (*(v84 + 48))(v62);
          v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v65);

          v66._object = 0x800000010012DD40;
          v66._countAndFlagsBits = 0xD000000000000023;
          String.append(_:)(v66);
          sub_10001EAB8(&v90, v91);
          swift_getDynamicType();
          v67._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v67);

          v68._countAndFlagsBits = 2113568;
          v68._object = 0xE300000000000000;
          String.append(_:)(v68);
          v86[0] = v48;
          v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v69);

          v70 = v87;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v71 = sub_10000A1BC(v82, qword_1001794F0);
          v72 = v77;
          sub_10000A2A4(v71, v77);
          v73 = v76;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v74, qword_100179508);
          sub_100039AA0(1, v72, v70, *(&v70 + 1));
          swift_unknownObjectRelease();

          sub_10000C9D0(v72);
          return sub_10000D0A0(&v90, v73);
        }

        sub_10000CE78(&v90);
        v47 = v49;
        v10 = v77;
LABEL_26:
        if (a3 == ++v46)
        {
          goto LABEL_35;
        }
      }

      sub_10000D040(v86, v47, &unk_100120FC0);
      v87 = 0u;
      v88 = 0u;
      v89 = 0;
LABEL_25:
      sub_10000D040(&v87, &qword_100174F70, &qword_100120FD0);
      goto LABEL_26;
    }

LABEL_35:

    sub_10000CA2C();
    v85 = swift_allocError();
    *v52 = 1;
    *(v52 + 8) = 0;
    *(v52 + 16) = 0xE000000000000000;
    swift_willThrow();
    a3 = v76;
    a1 = v79;
LABEL_36:
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v53._countAndFlagsBits = active;
    v53._object = v83;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0xD00000000000002BLL;
    v54._object = 0x800000010012DD10;
    String.append(_:)(v54);
    swift_getDynamicType();
    v55._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v55);

    v56._countAndFlagsBits = 8250;
    v56._object = 0xE200000000000000;
    String.append(_:)(v56);
    *&v87 = (*(v84 + 48))(a1);
    v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v57);

    v23 = *(&v90 + 1);
    v29 = v90;
    if (qword_100173CB8 != -1)
    {
LABEL_50:
      swift_once();
    }

    v58 = sub_10000A1BC(v82, qword_1001794F0);
    sub_10000A2A4(v58, v10);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v59, qword_100179508);
    sub_100039F58(1, v10, v29, v23);

    swift_unknownObjectRelease();
    result = sub_10000C9D0(v10);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return result;
  }

  v25 = v23(a1, a2);
  if (!*(v25 + 16))
  {

    goto LABEL_11;
  }

  v26 = v25;

  if (*(v26 + 16))
  {
    v27 = *(v26 + 32);

    sub_100052184(v27, v22, v16, &v90);
    swift_unknownObjectRelease();
    if (v91)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_10000D040(&v90, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_41:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_19:
  v40 = sub_10000A1BC(v82, qword_1001794F0);
  v41 = v77;
  sub_10000A2A4(v40, v77);
  v42 = v76;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v43, qword_100179508);
  sub_100039AA0(1, v41, v26, v23);

  sub_10000C9D0(v41);
  v42[3] = a1;
  v42[4] = &protocol witness table for ActiveInputTerminal;
  *v42 = v16;
  return swift_unknownObjectRelease();
}

uint64_t ActiveDataEntity.nameStringIndex.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = v6;
  v3 = v7;
  sub_10001EAB8(v5, v6);
  LODWORD(v2) = (*(*(v3 + 8) + 32))(v2);
  sub_10000CE78(v5);
  return v2 & 0xFFFFFF;
}

uint64_t ActiveDataEntity.sourceID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveDataEntity.entityID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(*(v3 + 8) + 16))(v2);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveEntity.deviceName.getter(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 16))(a1))
  {
    return 0x6E776F6E6B6E55;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v3);
  swift_unknownObjectRelease();
  return active;
}

uint64_t ActiveEntity.start(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = swift_unknownObjectRetain();
  return v7(v8, a2, a3, a4);
}

void sub_100078A84(AUASDCore::AUAInterruptAttribute_optional a1, Swift::UInt_optional a2, Swift::UInt_optional a3)
{
  a2.is_nil &= 1u;
  a3.is_nil &= 1u;
  ActiveEntity.processInterrupt(attribute:controlSelector:channelNumber:)(a1, a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute_optional attribute, Swift::UInt_optional controlSelector, Swift::UInt_optional channelNumber)
{
  if (attribute.value == AUASDCore_AUAInterruptAttribute_unknownDefault || controlSelector.is_nil || channelNumber.is_nil || !controlSelector.value)
  {
    (*(v3 + 104))();
  }

  else
  {
    (*(v3 + 96))();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processTargetedInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute attribute, Swift::UInt controlSelector, Swift::UInt channelNumber)
{
  v5 = v4;
  v6 = v3;
  v32 = controlSelector;
  v33 = channelNumber;
  v31 = attribute;
  v7 = 0xEE00656369766564;
  v8 = 0x206E776F6E6B6E55;
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x800000010012D860;
  String.append(_:)(v12);
  if ((*(v5 + 16))(v6, v5))
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 16))(ObjectType, v14);
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [v16 boxName];

      if (v17)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v18;
      }
    }
  }

  v19._countAndFlagsBits = v8;
  v19._object = v7;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v20._object = 0x800000010012D880;
  String.append(_:)(v20);
  LOBYTE(v36) = v31;
  _print_unlocked<A, B>(_:_:)();
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x800000010012D8A0;
  String.append(_:)(v21);
  v36 = v32;
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._object = 0x800000010012D8C0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v36 = v33;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25 = v34;
  v26 = v35;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v27, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v28, qword_100179508);
  sub_100039F58(2, v11, v25, v26);

  sub_10000C9D0(v11);
  sub_10000CA2C();
  swift_allocError();
  *v29 = 2;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0xE000000000000000;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processAmbiguousInterrupt()()
{
  v4 = v3;
  v5 = v1;
  v6 = v0;
  v7 = 0xEE00656369766564;
  v8 = 0x206E776F6E6B6E55;
  v42 = type metadata accessor for LogID(0);
  __chkstk_darwin(v42);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v10 = *(v5 + 16);
  v11 = v2;
  v45 = v6;
  v43 = v10;
  if (v10(v6, v5))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 16))(ObjectType, v13);
    swift_unknownObjectRelease();
    if (v15)
    {
      v16 = [v15 boxName];

      if (v16)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v17;
      }
    }
  }

  v18._countAndFlagsBits = v8;
  v18._object = v7;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x800000010012D8E0;
  String.append(_:)(v19);
  v20 = v11;
  v21 = v45;
  v48 = (*(v5 + 48))(v45, v5);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23 = v46;
  v24 = v47;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v42 = sub_10000A1BC(v42, qword_1001794F0);
    v25 = v44;
    sub_10000A2A4(v42, v44);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    v41 = sub_10000A1BC(v26, qword_100179508);
    sub_100039AA0(2, v25, v23, v24);

    sub_10000C9D0(v25);
    if (!v43(v21, v5))
    {
      break;
    }

    v28 = v27;
    v29 = swift_getObjectType();
    v30 = (*(v28 + 16))(v29, v28);
    swift_unknownObjectRelease();
    if (!v30)
    {
      break;
    }

    v31 = [v30 audioDevices];

    if (!v31)
    {
      break;
    }

    sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = &v40;
    __chkstk_darwin(v32);
    *(&v40 - 4) = v21;
    *(&v40 - 3) = v5;
    *(&v40 - 2) = v20;
    v33 = sub_100079504(sub_10007D258, (&v40 - 6), v24);

    v34 = v33;
    v45 = v33[2];
    if (!v45)
    {
LABEL_18:

      return;
    }

    v20 = 0;
    v40 = " - ambiguous interrupt entity: ";
    v35 = v33 + 5;
    v43 = v34;
    while (v20 < *(v34 + 2))
    {
      v37 = *(v35 - 1);
      v38 = *v35;
      v24 = swift_getObjectType();
      v5 = v38 + 24;
      v21 = *(v38 + 24);
      v39 = v37;
      v23 = v39;
      (v21)(v24, v38);
      if (v4)
      {
        v36 = v44;
        sub_10000A2A4(v42, v44);
        v23 = v41;
        sub_100039F58(2, v36, 0xD00000000000001ALL, (v40 | 0x8000000000000000));

        sub_10000C9D0(v36);
        v4 = 0;
      }

      else
      {
      }

      ++v20;
      v35 += 2;
      v34 = v43;
      if (v45 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t ActiveDataEntity.pathName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 56))();
  if (!v5)
  {
    v6 = *(a2 + 24);
    v6(&v10, a1, a2);
    if (v11)
    {
      sub_10000D0A0(&v10, v12);
      v7 = v13;
      v8 = v14;
      sub_10001EAB8(v12, v13);
      v9 = (*(v8 + 72))(v7, v8);
      sub_10000CE78(v12);
      return v9;
    }

    else
    {
      sub_10000D040(&v10, &qword_100174F70, &qword_100120FD0);
      v6(v12, a1, a2);
      sub_10000D040(v12, &qword_100174F70, &qword_100120FD0);
      return 0xD000000000000022;
    }
  }

  return result;
}

void *sub_100079504(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v21 = v5 & 0xFFFFFFFFFFFFFF8;
    v22 = v5 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v21 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v25 = v10;
      a1(&v24, &v25);
      if (v4)
      {

        return v8;
      }

      v4 = v5;

      v12 = v24;
      v13 = *(v24 + 16);
      v14 = v8[2];
      v5 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v5 <= v8[3] >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 <= v5)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        v8 = sub_100024788(isUniquelyReferenced_nonNull_native, v16, 1, v8);
        if (*(v12 + 16))
        {
LABEL_20:
          if ((v8[3] >> 1) - v8[2] < v13)
          {
            goto LABEL_30;
          }

          sub_100001AB4(&qword_100175408, &qword_100122410);
          swift_arrayInitWithCopy();

          v5 = v4;
          v4 = 0;
          v9 = v7 + 1;
          if (v13)
          {
            v17 = v8[2];
            v18 = __OFADD__(v17, v13);
            v19 = v17 + v13;
            if (v18)
            {
              goto LABEL_31;
            }

            v8[2] = v19;
          }

          goto LABEL_5;
        }
      }

      v5 = v4;
      v4 = 0;
      v9 = v7 + 1;
      if (v13)
      {
        goto LABEL_29;
      }

LABEL_5:
      ++v7;
      if (v9 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_10007973C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(a4 + 16))(a3, a4))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10000D040(v18, &qword_100175790, &unk_100121070);
    goto LABEL_6;
  }

  v11 = v10;
  ObjectType = swift_getObjectType();
  v17[3] = a3;
  v17[4] = a4;
  v13 = sub_10007D2E8(v17);
  (*(*(a3 - 8) + 16))(v13, v4, a3);
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v17, a2, ObjectType, v11, v18);
  swift_unknownObjectRelease();
  sub_10000CE78(v17);
  if (!v5)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {
      return LOBYTE(v17[0]) != 0;
    }

LABEL_6:
    sub_10000CA2C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1000798E4(int a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if (result)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15[3] = a4;
    v15[4] = a5;
    v14 = sub_10007D2E8(v15);
    (*(*(a4 - 8) + 16))(v14, v5, a4);
    sub_100053170(a1 & 0xFFFFFF, a2, 0, v15, a3, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_10000CE78(v15);
  }

  return result;
}

id sub_1000799EC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = [*a1 controls];
  if (result)
  {
    v10 = result;
    sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v12);
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = a2;
    v13 = sub_100026584(sub_10007D7C8, v14, v11);

    *a5 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100079AE8(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v10 = v8;
    ObjectType = swift_getObjectType();
    v15 = a2;
    v12 = *(v10 + 8);
    v13 = v7;
    v14 = v12(ObjectType, v10);
    if (v14 != (*(a3 + 48))(v15, a3))
    {

      v13 = 0;
      v10 = 0;
    }

    *a4 = v13;
    a4[1] = v10;
  }
}

uint64_t sub_100079BFC(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 40))();
  v7 = (*(a2 + 16))(a1, a2);
  if (!v7)
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_10000D040(v41, &qword_100175790, &unk_100121070);
    sub_10000CA2C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v9 = v7;
  v10 = v8;
  v11 = (v6 << 8) | 0xD20000;
  ObjectType = swift_getObjectType();
  v40[3] = a1;
  v40[4] = a2;
  v13 = sub_10007D2E8(v40);
  (*(*(a1 - 8) + 16))(v13, v2, a1);
  v2 = v9;
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v11, v40, 0, ObjectType, v10, v41);
  swift_unknownObjectRelease();
  sub_10000CE78(v40);
  if (v3)
  {
    return v2;
  }

  sub_10000D0A0(v41, v43);
  v14 = v44;
  v15 = sub_10001EAB8(v43, v44);
  v16 = v36;
  v17 = *(v14 - 8);
  __chkstk_darwin(v15);
  v45 = v18;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v36 - v19;
  (*(v17 + 16))(v36 - v19);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v21 = swift_getAssociatedTypeWitness(), v39 = v36, v37 = v36, __chkstk_darwin(v21), v38 = v17, swift_getAssociatedConformanceWitness(), v22 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v36[1] = v36, __chkstk_darwin(v22), v17 = v38, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v23 = dispatch thunk of static Comparable.>= infix(_:_:)(), v16 = v39, result = (*(v17 + 8))(v36 - v19, v14), (v23))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
    {
      LODWORD(v41[0]) = -1;
      v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v25)
      {
        if (v26 <= 32)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v39 = v16;
          v37 = v36;
          __chkstk_darwin(AssociatedTypeWitness);
          v38 = v17;
          swift_getAssociatedConformanceWitness();
          v28 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          __chkstk_darwin(v28);
          v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          v17 = v38;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v31 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v17 + 8))(v30, v14);
          if ((v31 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else if (v26 < 33)
      {
LABEL_15:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_16;
      }

      __chkstk_darwin(v26);
      v34 = v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10001E938();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v17 + 8))(v34, v14);
      if (v35)
      {
        __break(1u);
        goto LABEL_15;
      }
    }

LABEL_16:
    v2 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v17 + 8))(v20, v14);
    sub_10000CE78(v43);
    return v2;
  }

  __break(1u);
  return result;
}

double ActiveDataEntity.source.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*(a2 + 8) + 16))())
  {
    v7 = v6;
    (*(a2 + 16))(&v17, a1, a2);
    v8 = *(&v18 + 1);
    v9 = v19;
    sub_10001EAB8(&v17, *(&v18 + 1));
    v10 = (*(v9 + 16))(v8, v9);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    ObjectType = swift_getObjectType();
    sub_10000CE78(&v17);
    sub_100052184(v12, ObjectType, v7, &v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  v16 = v19;
  if (!*(&v18 + 1))
  {
    sub_10000D040(v15, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_11;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t ActiveDataEntity.cluster.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v11, a1);
  sub_10007D278(v11, &v6);
  if (v7)
  {
    sub_10000D0A0(&v6, v8);
    v2 = v9;
    v3 = v10;
    sub_10001EAB8(v8, v9);
    v4 = (*(v3 + 48))(v2, v3);
    sub_10000D040(v11, &qword_100174F70, &qword_100120FD0);
    sub_10000CE78(v8);
  }

  else
  {
    sub_10000D040(v11, &qword_100174F70, &qword_100120FD0);
    sub_10000D040(&v6, &qword_100174F70, &qword_100120FD0);
    return 0;
  }

  return v4;
}

uint64_t ActiveDataEntity.staticEntity.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v8);
  v3 = v9;
  v4 = v10;
  v5 = sub_10001EAB8(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  v6 = sub_10007D2E8(a2);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  return sub_10000CE78(v8);
}

uint64_t sub_10007A560(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v93 = [v1 controlElement];
  v94 = [v1 value];
  v7 = v1[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control + 2];
  v92 = *&v1[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control] | (v7 << 16);
  if (((v7 >> 2) & 0x3C | (v92 >> 6)) == 7)
  {
    v8 = *&v1[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 24];
    v9 = *&v1[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 32];
    sub_10001EAB8(&v1[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity], v8);
    if ((*(v9 + 16))(v8, v9))
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 16))(ObjectType, v11);
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = *&v13[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
        if (v14 && sub_1000AA808(6u, v14))
        {
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v15 = sub_10000A1BC(v4, qword_1001794F0);
          sub_10000A2A4(v15, v6);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v16, qword_100179508);
          sub_100039AA0(2, v6, 0xD00000000000001DLL, 0x800000010012DCF0);
          sub_10000C9D0(v6);
          usleep(0x1388u);
        }
      }
    }
  }

  v17 = 0xEE00656369766564;
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(96);
  v18 = [v1 owner];
  strcpy(v91, "Unknown device");
  v91[15] = -18;
  if (v18)
  {
    v19 = v18;
    type metadata accessor for AUAAudioDevice(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = [v20 deviceName];

      if (v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v23;

        v24 = v22;
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v24 = 0x206E776F6E6B6E55;
LABEL_18:
  v25 = v17;
  String.append(_:)(*&v24);

  v26._countAndFlagsBits = 0xD00000000000001CLL;
  v26._object = 0x800000010012DC70;
  String.append(_:)(v26);
  v27 = &v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity];
  v28 = *&v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 24];
  v29 = *&v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 32];
  sub_10001EAB8(&v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity], v28);
  v99._countAndFlagsBits = (*(v29 + 48))(v28, v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x800000010012DC90;
  String.append(_:)(v31);
  v32 = [v2 objectClass];
  v99._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v99._countAndFlagsBits;
  v35 = *(v99._countAndFlagsBits + 16);
  v34 = *(v99._countAndFlagsBits + 24);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    sub_100046824((v34 > 1), v35 + 1, 1);
    countAndFlagsBits = v99._countAndFlagsBits;
    v34 = *(v99._countAndFlagsBits + 24);
    v36 = v34 >> 1;
  }

  *(countAndFlagsBits + 16) = v37;
  *(countAndFlagsBits + v35 + 32) = HIBYTE(v32);
  v38 = v35 + 2;
  if (v36 <= v37)
  {
    sub_100046824((v34 > 1), v35 + 2, 1);
    countAndFlagsBits = v99._countAndFlagsBits;
    v34 = *(v99._countAndFlagsBits + 24);
    v36 = v34 >> 1;
  }

  v95 = v6;
  *(countAndFlagsBits + 16) = v38;
  *(countAndFlagsBits + v37 + 32) = BYTE2(v32);
  v39 = v35 + 3;
  if (v36 <= v38)
  {
    sub_100046824((v34 > 1), v35 + 3, 1);
  }

  v40 = v4;
  v41 = v99._countAndFlagsBits;
  *(v99._countAndFlagsBits + 16) = v39;
  *(v41 + v38 + 32) = BYTE1(v32);
  v42 = *(v41 + 24);
  if (v39 >= v42 >> 1)
  {
    sub_100046824((v42 > 1), v35 + 4, 1);
    v41 = v99._countAndFlagsBits;
  }

  *(v41 + 16) = v35 + 4;
  *(v41 + v39 + 32) = v32;
  v99._countAndFlagsBits = v41;
  static String.Encoding.ascii.getter();
  v43 = sub_100001AB4(&qword_100175CA8, &unk_100124860);
  v96 = sub_100046844();
  v97 = v43;
  v44 = String.init<A>(bytes:encoding:)();
  v46 = v45;

  v99._countAndFlagsBits = 39;
  v99._object = 0xE100000000000000;
  if (v46)
  {
    v47 = v44;
  }

  else
  {
    v47 = 1061109567;
  }

  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0xE400000000000000;
  }

  v49 = v48;
  String.append(_:)(*&v47);

  v50._countAndFlagsBits = 39;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  String.append(_:)(v99);

  v51._countAndFlagsBits = 0x2065706F6373205DLL;
  v51._object = 0xE90000000000005BLL;
  String.append(_:)(v51);
  v52 = [v2 controlScope];
  v99._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  v53 = v99._countAndFlagsBits;
  v55 = *(v99._countAndFlagsBits + 16);
  v54 = *(v99._countAndFlagsBits + 24);
  v56 = v54 >> 1;
  v57 = v55 + 1;
  if (v54 >> 1 <= v55)
  {
    sub_100046824((v54 > 1), v55 + 1, 1);
    v53 = v99._countAndFlagsBits;
    v54 = *(v99._countAndFlagsBits + 24);
    v56 = v54 >> 1;
  }

  *(v53 + 16) = v57;
  *(v53 + v55 + 32) = HIBYTE(v52);
  v58 = v55 + 2;
  if (v56 <= v57)
  {
    sub_100046824((v54 > 1), v55 + 2, 1);
    v53 = v99._countAndFlagsBits;
    v54 = *(v99._countAndFlagsBits + 24);
    v56 = v54 >> 1;
  }

  v59 = v98 & 1;
  *(v53 + 16) = v58;
  *(v53 + v57 + 32) = BYTE2(v52);
  v60 = v55 + 3;
  if (v56 <= v58)
  {
    sub_100046824((v54 > 1), v55 + 3, 1);
  }

  v61 = v99._countAndFlagsBits;
  *(v99._countAndFlagsBits + 16) = v60;
  *(v61 + v58 + 32) = BYTE1(v52);
  v62 = *(v61 + 24);
  if (v60 >= v62 >> 1)
  {
    sub_100046824((v62 > 1), v55 + 4, 1);
    v61 = v99._countAndFlagsBits;
  }

  *(v61 + 16) = v55 + 4;
  *(v61 + v60 + 32) = v52;
  v99._countAndFlagsBits = v61;
  static String.Encoding.ascii.getter();
  v63 = String.init<A>(bytes:encoding:)();
  v65 = v64;

  v99._countAndFlagsBits = 39;
  v99._object = 0xE100000000000000;
  if (v65)
  {
    v66 = v63;
  }

  else
  {
    v66 = 1061109567;
  }

  if (v65)
  {
    v67 = v65;
  }

  else
  {
    v67 = 0xE400000000000000;
  }

  v68 = v67;
  String.append(_:)(*&v66);

  v69._countAndFlagsBits = 39;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  String.append(_:)(v99);

  v70._object = 0x800000010012DCB0;
  v70._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v70);
  if (v98)
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v98)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  v73 = v94 ^ v98;
  v74 = v72;
  String.append(_:)(*&v71);

  v75._countAndFlagsBits = 8285;
  v75._object = 0xE200000000000000;
  String.append(_:)(v75);
  if (v73)
  {
    v76 = 0x676E69646E6573;
  }

  else
  {
    v76 = 0x646E657320746F6ELL;
  }

  if (v73)
  {
    v77 = 0xE700000000000000;
  }

  else
  {
    v77 = 0xEB00000000676E69;
  }

  v78 = v77;
  String.append(_:)(*&v76);

  v79._countAndFlagsBits = 23328;
  v79._object = 0xE200000000000000;
  String.append(_:)(v79);
  v99._countAndFlagsBits = v59;
  v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v80);

  v81._countAndFlagsBits = 93;
  v81._object = 0xE100000000000000;
  String.append(_:)(v81);
  v82 = v100;
  v83 = v101;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A1BC(v40, qword_1001794F0);
  v85 = v95;
  sub_10000A2A4(v84, v95);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v86, qword_100179508);
  sub_100039AA0(2, v85, v82, v83);

  sub_10000C9D0(v85);
  if (v73)
  {
    v87 = *(v27 + 3);
    v88 = *(v27 + 4);
    sub_10001EAB8(v27, v87);
    sub_1000798E4(v92, v93, v59, v87, v88);
    [v2 setValue:v98 & 1];
  }

  return 1;
}

id sub_10007B308()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v7 = &v0[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity];
  v8 = *&v0[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 24];
  v9 = *(v7 + 4);
  sub_10001EAB8(v7, v8);
  result = sub_10007973C(*&v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control] | (v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control + 2] << 16), *&v2[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_channel], v8, v9);
  if (!v1)
  {
    v72 = result;
    v73 = v3;
    v78 = 0;
    v11 = 0xEE00656369766564;
    v12 = 0x206E776F6E6B6E55;
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v13 = [v2 owner];
    v74 = v5;
    if (v13)
    {
      v14 = v13;
      type metadata accessor for AUAAudioDevice(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = [v15 deviceName];

        if (v16)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v17;
        }
      }

      else
      {
      }
    }

    v18._countAndFlagsBits = v12;
    v18._object = v11;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0xD000000000000020;
    v19._object = 0x800000010012DB80;
    String.append(_:)(v19);
    v20 = *(v7 + 3);
    v21 = *(v7 + 4);
    sub_10001EAB8(v7, v20);
    v75._countAndFlagsBits = (*(v21 + 48))(v20, v21);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD000000000000019;
    v23._object = 0x800000010012DBB0;
    String.append(_:)(v23);
    v24 = [v2 objectClass];
    v75._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_100046824(0, 4, 0);
    countAndFlagsBits = v75._countAndFlagsBits;
    v27 = *(v75._countAndFlagsBits + 16);
    v26 = *(v75._countAndFlagsBits + 24);
    v28 = v26 >> 1;
    v29 = v27 + 1;
    if (v26 >> 1 <= v27)
    {
      sub_100046824((v26 > 1), v27 + 1, 1);
      countAndFlagsBits = v75._countAndFlagsBits;
      v26 = *(v75._countAndFlagsBits + 24);
      v28 = v26 >> 1;
    }

    *(countAndFlagsBits + 16) = v29;
    *(countAndFlagsBits + v27 + 32) = HIBYTE(v24);
    v30 = v27 + 2;
    if (v28 <= v29)
    {
      sub_100046824((v26 > 1), v27 + 2, 1);
      countAndFlagsBits = v75._countAndFlagsBits;
      v26 = *(v75._countAndFlagsBits + 24);
      v28 = v26 >> 1;
    }

    *(countAndFlagsBits + 16) = v30;
    *(countAndFlagsBits + v29 + 32) = BYTE2(v24);
    v31 = v27 + 3;
    if (v28 <= v30)
    {
      sub_100046824((v26 > 1), v27 + 3, 1);
    }

    v32 = v75._countAndFlagsBits;
    *(v75._countAndFlagsBits + 16) = v31;
    *(v32 + v30 + 32) = BYTE1(v24);
    v33 = *(v32 + 24);
    if (v31 >= v33 >> 1)
    {
      sub_100046824((v33 > 1), v27 + 4, 1);
      v32 = v75._countAndFlagsBits;
    }

    *(v32 + 16) = v27 + 4;
    *(v32 + v31 + 32) = v24;
    v75._countAndFlagsBits = v32;
    static String.Encoding.ascii.getter();
    sub_100001AB4(&qword_100175CA8, &unk_100124860);
    sub_100046844();
    v34 = String.init<A>(bytes:encoding:)();
    v36 = v35;

    v75._countAndFlagsBits = 39;
    v75._object = 0xE100000000000000;
    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = 1061109567;
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE400000000000000;
    }

    v39 = v38;
    String.append(_:)(*&v37);

    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    String.append(_:)(v75);

    v41._countAndFlagsBits = 0x2065706F6373205DLL;
    v41._object = 0xE90000000000005BLL;
    String.append(_:)(v41);
    v42 = [v2 controlScope];
    v75._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_100046824(0, 4, 0);
    v43 = v75._countAndFlagsBits;
    v45 = *(v75._countAndFlagsBits + 16);
    v44 = *(v75._countAndFlagsBits + 24);
    v46 = v44 >> 1;
    v47 = v45 + 1;
    if (v44 >> 1 <= v45)
    {
      sub_100046824((v44 > 1), v45 + 1, 1);
      v43 = v75._countAndFlagsBits;
      v44 = *(v75._countAndFlagsBits + 24);
      v46 = v44 >> 1;
    }

    *(v43 + 16) = v47;
    *(v43 + v45 + 32) = HIBYTE(v42);
    v48 = v45 + 2;
    if (v46 <= v47)
    {
      sub_100046824((v44 > 1), v45 + 2, 1);
      v43 = v75._countAndFlagsBits;
      v44 = *(v75._countAndFlagsBits + 24);
      v46 = v44 >> 1;
    }

    *(v43 + 16) = v48;
    *(v43 + v47 + 32) = BYTE2(v42);
    v49 = v45 + 3;
    if (v46 <= v48)
    {
      sub_100046824((v44 > 1), v45 + 3, 1);
    }

    v50 = v75._countAndFlagsBits;
    *(v75._countAndFlagsBits + 16) = v49;
    *(v50 + v48 + 32) = BYTE1(v42);
    v51 = *(v50 + 24);
    if (v49 >= v51 >> 1)
    {
      sub_100046824((v51 > 1), v45 + 4, 1);
      v50 = v75._countAndFlagsBits;
    }

    *(v50 + 16) = v45 + 4;
    *(v50 + v49 + 32) = v42;
    v75._countAndFlagsBits = v50;
    static String.Encoding.ascii.getter();
    v52 = String.init<A>(bytes:encoding:)();
    v54 = v53;

    v75._countAndFlagsBits = 39;
    v75._object = 0xE100000000000000;
    if (v54)
    {
      v55 = v52;
    }

    else
    {
      v55 = 1061109567;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    v57 = v56;
    String.append(_:)(*&v55);

    v58._countAndFlagsBits = 39;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    String.append(_:)(v75);

    v59._countAndFlagsBits = 0x656369766564205DLL;
    v59._object = 0xEE0020746E657320;
    String.append(_:)(v59);
    v60 = v72;
    if (v72)
    {
      v61 = 1702195828;
    }

    else
    {
      v61 = 0x65736C6166;
    }

    if (v72)
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    v63._countAndFlagsBits = v61;
    v63._object = v62;
    String.append(_:)(v63);

    v64._object = 0x800000010012DBD0;
    v64._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v64);
    v65._countAndFlagsBits = v61;
    v65._object = v62;
    String.append(_:)(v65);

    v66 = v76;
    v67 = v77;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v68 = sub_10000A1BC(v73, qword_1001794F0);
    v69 = v74;
    sub_10000A2A4(v68, v74);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v70, qword_100179508);
    sub_100039AA0(2, v69, v66, v67);

    sub_10000C9D0(v69);
    return [v2 setValue:v60 & 1];
  }

  return result;
}

id sub_10007BB00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAEntityBooleanControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007BB44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 32);
  sub_10001EAB8((v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t (*ActiveExtensionUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t sub_10007BCA0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v13[2] = v2[4];
  v13[3] = v4;
  v5 = v2[7];
  v13[4] = v2[6];
  v13[5] = v5;
  v6 = v2[3];
  v13[0] = v2[2];
  v13[1] = v6;
  a2[3] = &type metadata for ExtensionUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = v2[5];
  v7[3] = v2[4];
  v7[4] = v8;
  v9 = v2[7];
  v7[5] = v2[6];
  v7[6] = v9;
  v10 = v2[3];
  v7[1] = v2[2];
  v7[2] = v10;
  return sub_10007651C(v13, &v12);
}

double ActiveExtensionUnit.source.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 80);
  if (*(v3 + 16) != 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    swift_unknownObjectRelease();
    return result;
  }

  v4 = *(v1 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  sub_100052184(v5, ObjectType, v4, v8);
  swift_unknownObjectRelease();
  if (!v8[3])
  {
    sub_10000D040(v8, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_8;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *ActiveExtensionUnit.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveExtensionUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10007BF94@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[7];
  v12[4] = v4[6];
  v12[5] = v7;
  v12[2] = v6;
  v12[3] = v5;
  v8 = v4[3];
  v12[0] = v4[2];
  v12[1] = v8;
  a2[3] = &type metadata for ExtensionUnit;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), v4 + 2, 0x60uLL);
  return sub_10007651C(v12, &v11);
}

uint64_t (*sub_10007C02C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t (*ActiveProcessingUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100026374;
}

uint64_t sub_10007C1A0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v11[2] = v2[4];
  v11[3] = v4;
  v11[4] = v2[6];
  v5 = v2[3];
  v11[0] = v2[2];
  v11[1] = v5;
  a2[3] = &type metadata for ProcessingUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[5];
  v6[3] = v2[4];
  v6[4] = v7;
  v6[5] = v2[6];
  v8 = v2[3];
  v6[1] = v2[2];
  v6[2] = v8;
  return sub_100076430(v11, &v10);
}

uint64_t ActiveProcessingUnit.exceptionList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t ActiveProcessingUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 40))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return 0;
}

void *ActiveProcessingUnit.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveProcessingUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10007C490@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[3];
  v5 = v4[4];
  v7 = v4[6];
  v11[3] = v4[5];
  v11[4] = v7;
  v11[1] = v6;
  v11[2] = v5;
  v11[0] = v4[2];
  a2[3] = &type metadata for ProcessingUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), v4 + 2, 0x50uLL);
  return sub_100076430(v11, &v10);
}

uint64_t (*sub_10007C520(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_10007C5B8()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10007C63C()
{

  sub_100024174(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_10007C6AC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v10[2] = *(v4 + 48);
  v10[3] = v6;
  v11 = *(v4 + 80);
  v10[1] = v5;
  v10[0] = *(v4 + 16);
  a2[3] = &type metadata for SampleRateConverter;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  memmove((v7 + 16), (v4 + 16), 0x48uLL);
  return sub_100076384(v10, v9);
}

uint64_t sub_10007C78C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10007C7F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007C888;
}

void sub_10007C888(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007C90C()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10007C990()
{

  sub_100024174(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_10007CA14@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(v4 + 72);
  a2[3] = &type metadata for EffectUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  *(v7 + 16) = *(v4 + 16);
  *(v7 + 32) = v9;
  *(v7 + 48) = v8;
  *(v7 + 64) = v5;
  *(v7 + 72) = v6;
}

uint64_t sub_10007CAEC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10007CB50(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007CBE8;
}

void sub_10007CBE8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007CC6C()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t ActivePowerDomain.staticPowerDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 26);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t ActivePowerDomain.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActivePowerDomain.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10007CE84;
}

uint64_t ActivePowerDomain.staticEntity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 26);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  a1[3] = &type metadata for PowerDomain;
  a1[4] = sub_10007D494();
  v10 = swift_allocObject();
  *a1 = v10;
  *(v10 + 16) = v3;
  *(v10 + 26) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
}

uint64_t ActivePowerDomain.deinit()
{

  sub_100024174(v0 + 64);
  return v0;
}

uint64_t ActivePowerDomain.__deallocating_deinit()
{

  sub_100024174(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_10007CFC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 26);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 48);
  v10 = *(v3 + 56);
  a1[3] = &type metadata for PowerDomain;
  a1[4] = sub_10007D494();
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v4;
  *(v11 + 26) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
}

uint64_t sub_10007D0BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_10007D120(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007D860;
}

void sub_10007D1B8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007D278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174F70, &qword_100120FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10007D2E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10007D34C()
{
  result = qword_1001768B0;
  if (!qword_1001768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768B0);
  }

  return result;
}

uint64_t sub_10007D3A0()
{

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10007D3F0()
{
  result = qword_1001768B8;
  if (!qword_1001768B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768B8);
  }

  return result;
}

uint64_t sub_10007D444()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_10007D494()
{
  result = qword_1001768C0;
  if (!qword_1001768C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768C0);
  }

  return result;
}

uint64_t sub_10007D4E8()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10007D600()
{
  result = qword_100176D78;
  if (!qword_100176D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D78);
  }

  return result;
}

uint64_t sub_10007D654()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10007D68C()
{
  result = qword_100176D80;
  if (!qword_100176D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D80);
  }

  return result;
}

unint64_t sub_10007D6E0()
{
  result = qword_100176D88;
  if (!qword_100176D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D88);
  }

  return result;
}

uint64_t sub_10007D734()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10007D774()
{
  result = qword_100176D90;
  if (!qword_100176D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D90);
  }

  return result;
}

unint64_t ClockRateRange.asdSampleRateRanges.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  if (!(a1 | a2) || a2 < a1)
  {
    return result;
  }

  if (a2 == a1 || a3 == 1)
  {
LABEL_39:
    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100120A20;
    v19 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a2];
    result = v18;
    *(v18 + 32) = v19;
    return result;
  }

  v23 = _swiftEmptyArrayStorage;
  if (!a3)
  {
    if (a1)
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100120A20;
      *(inited + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a1];
      sub_10007E668(inited, sub_10007EB9C);
    }

    if (a2)
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_100120A20;
      *(v21 + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a2 maximum:a2];
      sub_10007E668(v21, sub_10007EB9C);
    }

    return v23;
  }

  if ((a2 - a1) % a3)
  {
    return result;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = a1 == a2;
  if (a1 >= a2)
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = !__CFADD__(a1, a3);
  if (__CFADD__(a1, a3))
  {
    v7 = 0x8000000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (__CFADD__(a1, a3))
  {
    v11 = -1;
  }

  else
  {
    v11 = a1 + a3;
  }

  while (1)
  {
    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v13 = swift_initStackObject();
    *(v13 + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a1];
    a1 = v9 >> 62;
    if (v9 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_38;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!a1)
      {
        v16 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_31:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_32;
    }

    if (a1)
    {
      goto LABEL_31;
    }

LABEL_32:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_33:
    if (*(v16 + 16) >= *(v16 + 24) >> 1)
    {
      break;
    }

    sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
    swift_arrayInitWithCopy();
    swift_setDeallocating();
    swift_unknownObjectRelease();
    ++*(v16 + 16);
    v23 = v9;
    a1 = v11;
    v10 = v11 == a2;
    if (v11 < a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = !v10;
    if (((v12 | v6) & 1) != 0 || !v8 && v7 == 0x8000000000000000)
    {
      return v23;
    }

    v6 = 1;
    v11 = a1;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

char *sub_10007DC6C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1000242E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[56 * v7 + 32], v6 + 32, 56 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007DD90(void *result)
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

  result = sub_100024788(result, v10, 1, v3);
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

  sub_100001AB4(&qword_100175408, &qword_100122410);
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

void sub_10007DE94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_10002400C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_10007DFA8(uint64_t result)
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

  result = sub_10002400C(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

char *sub_10007E094(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1000247AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[10 * v7 + 32], v6 + 32, 10 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10007E188(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1000248C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v7 + 32], v6 + 32, 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007E274(void *result)
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

  result = sub_1000249EC(result, v10, 1, v3);
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

  sub_100001AB4(&qword_1001754D8, &qword_100120F68);
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

char *sub_10007E37C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_100024A10(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10007E474(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_100024518(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[3 * v7 + 32], v6 + 32, 3 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}