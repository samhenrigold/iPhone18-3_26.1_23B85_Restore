uint64_t sub_1AAF50D68(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[96 * v9] <= a4)
    {
      memmove(a4, __dst, 96 * v9);
    }

    v12 = &v4[96 * v9];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) < *(v4 + 1);
      if (*v6 != *v4)
      {
        v15 = *v4 < *v6;
      }

      if (v15)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 96;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 96;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[96 * v11] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v12 = &v4[96 * v11];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_22:
    v16 = v6 - 96;
    v5 -= 96;
    v17 = v12;
    do
    {
      v18 = *(v17 - 12);
      v17 -= 12;
      v19 = v5 + 96;
      v20 = *(v6 - 12);
      v21 = v20 < v18;
      v22 = *(v17 + 1) < *(v6 - 11);
      if (v18 != v20)
      {
        v22 = v21;
      }

      if (v22)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 96, 0x60uLL);
        }

        if (v12 <= v4 || (v6 -= 96, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v19 != v12)
      {
        memmove(v5, v17, 0x60uLL);
      }

      v5 -= 96;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_35:
  v23 = (v12 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[96 * v23])
  {
    memmove(v6, v4, 96 * v23);
  }

  return 1;
}

double sub_1AAF50FF8()
{

  swift_deallocClassInstance();
  return result;
}

double sub_1AAF51030()
{
  sub_1AAF51104(v0 + OBJC_IVAR____TtC6Charts14SgMeasurements__measurements);
  v1 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
  v2 = sub_1AAF8DCD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAF51104(uint64_t a1)
{
  sub_1AACC6DA0(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAF51190(uint64_t a1, uint64_t a2)
{
  sub_1AACC6DA0(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF51224(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v2, 0);
    result = v8;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AAD1FAF4((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF512E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v2, 0);
    result = v8;
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AAD1FAF4((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF513AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v38[1] = a2;
  v40 = a6;
  sub_1AAF67D3C(255, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
  v10 = sub_1AAF8DF74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v38 - v12;
  sub_1AAF686A4(255, &qword_1ED9AF4E8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  v38[0] = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v38[0]);
  v14 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = *(v14 + 16);
  v41 = a1;
  v18(v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v16);
  v19 = swift_dynamicCast();
  v39 = a3;
  if (v19)
  {
    v20 = v46;
    v21 = v47;
    v22 = v48;

    v23 = sub_1AAF8EA24();
    v25 = v24;
    LODWORD(v38[0]) = v26;
    v28 = v27;

    v29 = v20;
    v30 = v39;
    sub_1AAD04750(v29, v21, v22);

    result = (*(v14 + 8))(v41, a4);
    v32 = v38[0] & 1;
  }

  else
  {

    sub_1AAF8EBE4();

    v46 = a3;
    v33 = sub_1AAF67DA8(&qword_1ED9B11E8, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
    v44 = a5;
    v45 = v33;
    WitnessTable = swift_getWitnessTable();
    sub_1AAF8EB24();
    v35.n128_f64[0] = (*(v11 + 8))(v13, v10);
    v36 = sub_1AAF67E34(v35);
    v42 = WitnessTable;
    v43 = v36;
    swift_getWitnessTable();
    v23 = sub_1AAF8EF44();

    result = (*(v14 + 8))(v41, a4);
    v25 = 0;
    v28 = 0;
    v30 = 0;
    v32 = 0x8000000000000000;
  }

  v37 = v40;
  *v40 = v23;
  v37[1] = v25;
  v37[2] = v32;
  v37[3] = v28;
  v37[4] = v30;
  return result;
}

double sub_1AAF517A0(unint64_t a1)
{
  v2 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0.0;
  switch(a1 >> 60)
  {
    case 1uLL:
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

      sub_1AAF5EA88(v35, v33, v34);
      v26 = v36;

      return v26;
    case 2uLL:
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v50);
      sub_1AAF5D3F8();
      v26 = v37;
      sub_1AAF14C40(v50);
      return v26;
    case 3uLL:
      v27 = swift_projectBox();
      sub_1AACAAD4C(v27, v22, type metadata accessor for SgPoint);
      sub_1AAF54C08();
      v26 = v28;
      v29 = type metadata accessor for SgPoint;
      v30 = v22;
      goto LABEL_20;
    case 4uLL:
      v41 = swift_projectBox();
      sub_1AACAAD4C(v41, v19, type metadata accessor for SgRectangle);
      v26 = v19[1];
      v29 = type metadata accessor for SgRectangle;
      v30 = v19;
      goto LABEL_20;
    case 5uLL:
      v42 = swift_projectBox();
      sub_1AACAAD4C(v42, v16, type metadata accessor for SgSector);
      v43 = vaddvq_f64(vmulq_f64(*(v16 + 24), xmmword_1AAFC7450));
      v26 = v43 * __sincos_stret(((*(v16 + 8) + *(v16 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0).__cosval;
      sub_1AACAADB4(v16, type metadata accessor for SgSector);
      return v26;
    case 6uLL:
      v38 = swift_projectBox();
      sub_1AACAAD4C(v38, v13, type metadata accessor for SgRule);
      if (v13[3] >= v13[1])
      {
        v26 = v13[1];
      }

      else
      {
        v26 = v13[3];
      }

      v29 = type metadata accessor for SgRule;
      v30 = v13;
      goto LABEL_20;
    case 7uLL:
      v46 = swift_projectBox();
      sub_1AACAAD4C(v46, v10, type metadata accessor for SgLine);
      sub_1AAF56CF0();
      v26 = v47;
      v29 = type metadata accessor for SgLine;
      v30 = v10;
      goto LABEL_20;
    case 8uLL:
      v31 = swift_projectBox();
      sub_1AACAAD4C(v31, v7, type metadata accessor for SgArea);
      sub_1AAF58424();
      v26 = v32;
      v29 = type metadata accessor for SgArea;
      v30 = v7;
      goto LABEL_20;
    case 9uLL:
      v44 = swift_projectBox();
      sub_1AACAAD4C(v44, v4, type metadata accessor for SgPath);
      v45 = *(v4 + 24);
      v50[0] = *(v4 + 8);
      v50[1] = v45;
      v51 = v4[40];
      if (sub_1AAF8E8E4())
      {
        v26 = *MEMORY[0x1E695F050];
      }

      else
      {
        sub_1AAF8E874();
        v26 = v48;
      }

      v29 = type metadata accessor for SgPath;
      v30 = v4;
      goto LABEL_20;
    case 0xAuLL:
    case 0xEuLL:
      return *MEMORY[0x1E695F050];
    case 0xBuLL:
    case 0xCuLL:
      return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    case 0xDuLL:
      return v26;
    default:
      v39 = swift_projectBox();
      sub_1AACAAD4C(v39, v25, type metadata accessor for SgGroup);
      sub_1AAF58748();
      v26 = v40;
      v29 = type metadata accessor for SgGroup;
      v30 = v25;
LABEL_20:
      sub_1AACAADB4(v30, v29);
      return v26;
  }
}

uint64_t sub_1AAF51E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AAF67D3C(255, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
  v8 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v9 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v11);
  if (swift_dynamicCast())
  {
    v13 = v33;
    v14 = v34;
    v30 = a1;
    v15 = v35;
    sub_1AAF8ED44();
    v16 = a4;
    v17 = sub_1AAF8E9E4();
    v28 = v18;
    v29 = v19;
    v21 = v20;

    v22 = v13;
    v23 = v17;
    a4 = v16;
    sub_1AAD04750(v22, v14, v15);

    result = (*(v9 + 8))(v30, a2);
    v25 = v28;
    v26 = v29 & 1;
  }

  else
  {
    sub_1AAF8ED44();
    sub_1AAF8EB14();

    v27 = sub_1AAF67DA8(&qword_1ED9B1E88, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
    v31 = a3;
    v32 = v27;
    swift_getWitnessTable();
    v23 = sub_1AAF8EF44();
    result = (*(v9 + 8))(a1, a2);
    v25 = 0;
    v21 = 0;
    v26 = 0x8000000000000000;
  }

  *a4 = v23;
  a4[1] = v25;
  a4[2] = v26;
  a4[3] = v21;
  a4[4] = 0;
  return result;
}

uint64_t sub_1AAF520F4(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  sub_1AACDBA18(v1, &v7, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v8[25] == 255)
  {
    return 0;
  }

  v5 = v7;
  v6[0] = *v8;
  *(v6 + 10) = *&v8[10];
  a1(&v9, &v5);
  if (v2)
  {
    result = sub_1AAE04AA8(&v5);
    __break(1u);
  }

  else
  {
    sub_1AAE04AA8(&v5);
    return v9;
  }

  return result;
}

uint64_t sub_1AAF521C4(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (!*v1)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v16 = *(v1 + 12);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v17[0] = v10;
  v17[1] = v5;
  v17[2] = v12;
  v17[3] = v6;
  v17[4] = v14;
  v17[5] = v4;
  v18 = v16;
  sub_1AAEDA330(v17, v8);
  a1(&v19, &v10);
  v8[4] = v14;
  v8[5] = v15;
  v9 = v16;
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAE45040(v8);
    __break(1u);
  }

  else
  {
    sub_1AAE45040(v8);
    return v19;
  }

  return result;
}

uint64_t sub_1AAF522D8(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  sub_1AACAAD4C(v1, v7, sub_1AACC9CF4);
  if (v8 == 255)
  {
    return 0;
  }

  v5[6] = v7[6];
  v5[7] = v7[7];
  v6 = v8;
  v5[2] = v7[2];
  v5[3] = v7[3];
  v5[4] = v7[4];
  v5[5] = v7[5];
  v5[0] = v7[0];
  v5[1] = v7[1];
  a1(&v9, v5);
  if (v2)
  {
    result = sub_1AAF67B3C(v5, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v5, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    return v9;
  }

  return result;
}

uint64_t sub_1AAF523F8(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (*(v1 + 104) == 255)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15[0] = v4;
  *(v15 + 9) = *(v1 + 89);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v16[0] = v10;
  v16[1] = v5;
  v16[2] = v12;
  v16[3] = v6;
  v16[4] = v14;
  v17[0] = v4;
  *(v17 + 9) = *(v15 + 9);
  sub_1AACDBA18(v16, v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  a1(&v18, &v10);
  v8[4] = v14;
  v9[0] = v15[0];
  *(v9 + 9) = *(v15 + 9);
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAF67B3C(v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    return v18;
  }

  return result;
}

uint64_t sub_1AAF52578(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  v4 = v1[7];
  v31[6] = v1[6];
  v31[7] = v4;
  v32 = *(v1 + 128);
  v5 = v1[3];
  v31[2] = v1[2];
  v31[3] = v5;
  v6 = v1[5];
  v31[4] = v1[4];
  v31[5] = v6;
  v7 = v1[1];
  v31[0] = *v1;
  v31[1] = v7;
  if (sub_1AAD05174(v31) == 1)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v1[7];
  v25 = v1[6];
  v26 = v10;
  v11 = v1[1];
  v12 = v1[3];
  v21 = v1[2];
  v22 = v12;
  v13 = v1[3];
  v14 = v1[5];
  v23 = v1[4];
  v24 = v14;
  v15 = v1[1];
  v19 = *v1;
  v20 = v15;
  v16 = v1[7];
  v28[6] = v25;
  v28[7] = v16;
  v28[2] = v21;
  v28[3] = v13;
  v28[4] = v23;
  v28[5] = v9;
  v27 = *(v1 + 128);
  v29 = *(v1 + 128);
  v28[0] = v19;
  v28[1] = v11;
  sub_1AACDBA18(v28, v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
  a1(&v30, &v19);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  if (v2)
  {
    result = sub_1AAF67B3C(v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    return v30;
  }

  return result;
}

uint64_t sub_1AAF52754(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (*(v1 + 96) == 255)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v16 = *(v1 + 96);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v17[0] = v10;
  v17[1] = v5;
  v17[2] = v12;
  v17[3] = v6;
  v17[4] = v14;
  v17[5] = v4;
  v18 = v16;
  sub_1AACDBA18(v17, v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
  a1(&v19, &v10);
  v8[4] = v14;
  v8[5] = v15;
  v9 = v16;
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAF67B3C(v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
    return v19;
  }

  return result;
}

void sub_1AAF528D0(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  if (a4 != a5)
  {
    v7 = a4;
    if (a5 >= a4)
    {
      v9 = 0;
      while (a5 != v7)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }

        v10[0] = v9;
        v10[1] = v7;
        (a2)(&v11, v10, a3);
        if (v5)
        {

          return;
        }

        ++v7;
        ++v9;
        if (a5 == v7)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1AAF52984(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 96;
    a2(&v9);
    v6 = v8;
    if (v4)
    {

      return;
    }
  }
}

uint64_t sub_1AAF52A00(unsigned __int8 *a1)
{
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AACAAD4C(v8 + v9, v6, type metadata accessor for ChartContentRenderContext.Environment);
  v10 = type metadata accessor for PointsRenderer(0);
  v11 = v10[8];
  sub_1AACAC4BC(v1 + v11, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AACAAD4C(v6, v1 + v11, type metadata accessor for ChartContentRenderContext.Environment);
  (*(v4 + 56))(v1 + v11, 0, 1, v3);

  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  v12 = v1 + v10[9];
  v13 = MEMORY[0x1E69E6720];
  sub_1AACDBA18(v12, &v24, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  LODWORD(v7) = v25[24];
  sub_1AAF67B3C(&v24, qword_1ED9B3000, &type metadata for SgSymbol, v13);
  if (v7 == 255)
  {
    sub_1AACDBA18((v6 + 88), &v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (v23[24] == 255)
    {
      sub_1AAF67B3C(&v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }

    else
    {
      v24 = v22;
      *v25 = *v23;
      *&v25[9] = *&v23[9];
      sub_1AAD9ADE4(&v24, &v22);
      if (v23[24])
      {
        result = sub_1AAF902C4();
        __break(1u);
        return result;
      }

      sub_1AAF50004(&v24);
      sub_1AAF67B3C(v12, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      v14 = *v23;
      *v12 = v22;
      *(v12 + 16) = v14;
      *(v12 + 32) = *&v23[16];
      *(v12 + 40) = 0;
    }
  }

  v15 = *(v6 + 17);
  v16 = *(v6 + 18);
  v17 = v6[152];
  result = sub_1AACAADB4(v6, type metadata accessor for ChartContentRenderContext.Environment);
  v19 = 0x404921FB54442D18;
  if (v17 == 255)
  {
    v20 = 0;
  }

  else
  {
    v19 = v15;
    v20 = v16;
  }

  v21 = v1 + v10[10];
  *v21 = v19;
  *(v21 + 8) = v20;
  *(v21 + 16) = (v17 != 255) & v17;
  return result;
}

double sub_1AAF52D70(unsigned __int8 *a1)
{
  *&v32 = MEMORY[0x1E697F488];
  sub_1AAD0DA28(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1AAF8E244();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  *&v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v13 = *(a1 + 1);
  v14 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AACAAD4C(v13 + v14, v12, type metadata accessor for ChartContentRenderContext.Environment);
  v34 = type metadata accessor for RectanglesRenderer(0);
  v15 = *(v34 + 32);
  sub_1AACAC4BC(v1 + v15, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AACAAD4C(v12, v1 + v15, type metadata accessor for ChartContentRenderContext.Environment);
  (*(v10 + 56))(v1 + v15, 0, 1, v9);

  v16 = v32;
  *(v1 + 40) = v31;
  *(v1 + 48) = v13;
  sub_1AACAC30C(&v12[*(v9 + 44)], v5, &qword_1ED9B5558, v16);
  v17 = *(v7 + 48);
  if (v17(v5, 1, v6) == 1)
  {
    v18 = v33;
    (*(v7 + 104))(v33, *MEMORY[0x1E697F468], v6);
    v19 = v17(v5, 1, v6);
    v20 = v18;
    if (v19 == 1)
    {
      goto LABEL_6;
    }

    sub_1AACAC4BC(v5, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  }

  else
  {
    v18 = v33;
    (*(v7 + 32))(v33, v5, v6);
  }

  v20 = v18;
LABEL_6:
  v21 = v34;
  (*(v7 + 40))(v1 + *(v34 + 40), v20, v6);
  if ((v12[208] & 1) == 0)
  {
    v22 = 0;
    v23 = *(v12 + 11);
    v32 = *(v12 + 12);
LABEL_11:
    v33 = v23;
    goto LABEL_12;
  }

  if ((v12[168] & 1) == 0)
  {
    sub_1AAF8E444();
    v22 = 0;
    *(&v25 + 1) = v24;
    v32 = v25;
    *(&v23 + 1) = v26;
    goto LABEL_11;
  }

  v32 = 0u;
  v33 = 0u;
  v22 = 1;
LABEL_12:
  sub_1AACAADB4(v12, type metadata accessor for ChartContentRenderContext.Environment);
  v27 = v1 + *(v21 + 36);
  v29 = v32;
  result = *&v33;
  *v27 = v33;
  *(v27 + 16) = v29;
  *(v27 + 32) = v22;
  return result;
}

uint64_t sub_1AAF5317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a1;
  v42 = a2;
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PointsRenderer(0);
  sub_1AACAC30C(v5 + v39[8], v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AACAC4BC(v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    goto LABEL_21;
  }

  v43 = a3;
  sub_1AAF67C60(v10, v14, type metadata accessor for ChartContentRenderContext.Environment);
  v15 = v5[6];
  if (!v15)
  {
    while (1)
    {
LABEL_21:
      sub_1AAF902C4();
      __break(1u);
    }
  }

  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v16 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v38 = xmmword_1AAF92AB0;
  *(v18 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v5, v18 + v17, type metadata accessor for PointsRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  *&v49 = a4;

  sub_1AADC94EC(v18);
  v40 = v49;
  v19 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  swift_beginAccess();
  v20 = sub_1AACAAD4C(v15 + v19, &v49, sub_1AACC9CF4);
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1AAF522D8(sub_1AAF67AFC);
  v23 = v22;
  v24 = sub_1AACAADB4(&v49, sub_1AACC9CF4);
  if (v21)
  {
    goto LABEL_14;
  }

  sub_1AACDBA18(v5 + v39[9], &v47, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (BYTE8(v48[1]) == 255)
  {
    sub_1AACDBA18((v14 + 88), &v45, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (BYTE8(v48[1]) != 255)
    {
      sub_1AAF67B3C(&v47, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v45 = v47;
    v46[0] = v48[0];
    *(v46 + 9) = *(v48 + 9);
  }

  if (BYTE8(v46[1]) != 255)
  {
    v49 = v45;
    v50[0] = v46[0];
    *(v50 + 9) = *(v46 + 9);
    sub_1AAD9ADE4(&v49, &v45);
    if ((BYTE8(v46[1]) & 1) == 0)
    {
      v47 = v45;
      v48[0] = v46[0];
      *&v48[1] = *&v46[1];
      sub_1AAD9B194(&v47, v44);
      sub_1AACC7228(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = v38;
      sub_1AAD9B194(v44, v21 + 32);
      v23 = sub_1AAF8F8A4();
      *(v23 + 16) = 1;
      *(v23 + 32) = 0;
      sub_1AAE45A14(v44);
      sub_1AAE45A14(&v47);
      v24 = sub_1AAF50004(&v49);
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  sub_1AAF67B3C(&v45, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (qword_1ED9B0450 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&unk_1ED9C33F0, &v49);
  sub_1AACC7228(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = v38;
  sub_1AAD9B194(&v49, v21 + 32);
  v23 = sub_1AAF8F8A4();
  *(v23 + 16) = 1;
  *(v23 + 32) = 0;
  v24 = sub_1AAE45A14(&v49);
LABEL_14:
  v26 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16);
  v25 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32);
  v49 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  v50[0] = v26;
  v50[1] = v25;
  v28 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64);
  v27 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80);
  v29 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48);
  *(v51 + 9) = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 89);
  v50[3] = v28;
  v51[0] = v27;
  v50[2] = v29;
  MEMORY[0x1EEE9AC00](v24);
  sub_1AACAAD4C(&v49, &v45, sub_1AACCF364);
  v30 = sub_1AAF523F8(sub_1AAF67B1C);
  v32 = v31;
  sub_1AACAADB4(&v49, sub_1AACCF364);
  if (!v30)
  {
    v33 = (v5 + v39[10]);
    if (v33[2])
    {
      v34 = 50.2654825;
    }

    else
    {
      v34 = *v33;
    }

    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = v38;
    *(v30 + 32) = v34;
    v32 = sub_1AAF8F8A4();
    *(v32 + 16) = 1;
    *(v32 + 32) = 0;
  }

  v35 = v5[3];
  v36 = v5[4];
  sub_1AACBB42C(v5, v35);
  *&v45 = v21;
  *(&v45 + 1) = v23;
  *&v46[0] = v30;
  *(&v46[0] + 1) = v32;
  (*(v36 + 24))(v41, v42, v14, v43, v40, &v45, &type metadata for PointElementDrawer, &off_1F1FE70A8, v35, v36);

  return sub_1AACAADB4(v14, type metadata accessor for ChartContentRenderContext.Environment);
}

uint64_t sub_1AAF53A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a1;
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RulesRenderer(0);
  sub_1AACAC30C(v5 + *(v15 + 32), v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AACAC4BC(v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    goto LABEL_10;
  }

  v47 = v14;
  sub_1AAF67C60(v10, v14, type metadata accessor for ChartContentRenderContext.Environment);
  v16 = v5[6];
  if (!v16)
  {
LABEL_10:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v55[0] = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v17 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v19 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v18 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v55[3] = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v55[4] = v17;
  v55[1] = v19;
  v55[2] = v18;
  v21 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v20 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v22 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v56 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v55[6] = v21;
  v55[7] = v20;
  v55[5] = v22;
  MEMORY[0x1EEE9AC00](v16);
  v42[2] = v23;

  sub_1AACAAD4C(v55, &v49, sub_1AACC9D70);
  v24 = sub_1AAF52578(sub_1AAF67C40);
  v26 = v25;
  sub_1AACAADB4(v55, sub_1AACC9D70);
  v45 = a2;
  v46 = a3;
  if (!v24)
  {
    if (*(v47 + 9))
    {
      v27 = *(v47 + 10);
      v28 = (v47 + 48);
      v29 = *(v47 + 8);
      v30 = *(v47 + 9);
      v31 = *(v47 + 14);
      v32 = *(v47 + 15);
    }

    else
    {
      v28 = &v49;
      sub_1AAF8D914();
      v31 = v50;
      v32 = v51;
      v29 = v52;
      v30 = v53;
      v27 = v54;
    }

    v33 = *v28;
    sub_1AACC7228(0, &qword_1ED9AD6C0, MEMORY[0x1E697DD48], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AAF92AB0;
    *(v24 + 32) = v33;
    *(v24 + 40) = v31;
    *(v24 + 44) = v32;
    *(v24 + 48) = v29;
    *(v24 + 56) = v30;
    *(v24 + 64) = v27;

    v26 = sub_1AAF8F8A4();
    *(v26 + 16) = 1;
    *(v26 + 32) = 0;
  }

  v34 = v5[3];
  v35 = v5[4];
  v42[1] = sub_1AACBB42C(v5, v34);
  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v36 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v5, v38 + v37, type metadata accessor for RulesRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  v48[0] = v43;

  sub_1AADC94EC(v38);
  v39 = v48[0];
  v48[0] = v24;
  v48[1] = v26;
  v40 = v47;
  (*(v35 + 24))(v44, v45, v47, v46, v39, v48, &type metadata for RuleElementDrawer, &off_1F1FE7088, v34, v35);

  return sub_1AACAADB4(v40, type metadata accessor for ChartContentRenderContext.Environment);
}

uint64_t sub_1AAF54078(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v36 = type metadata accessor for RectangleElementDrawer(0);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v13 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v2, v15 + v14, type metadata accessor for RectanglesRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AADC94EC(v15);
  v35 = v39;
  v16 = type metadata accessor for RectanglesRenderer(0);
  sub_1AACAC30C(v3 + v16[8], v8, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AACAC4BC(v8, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v17 = v8;
    v18 = v12;
    sub_1AAF67C60(v17, v12, type metadata accessor for ChartContentRenderContext.Environment);
    v19 = v3[3];
    v20 = v3[4];
    v34 = sub_1AACBB42C(v3, v19);
    v21 = v16[9];
    v22 = v16[10];
    v23 = (v3 + v21);
    v24 = *(v3 + v21 + 32);
    v25 = v36;
    v26 = *(v36 + 20);
    v27 = sub_1AAF8E244();
    v28 = *(*(v27 - 8) + 16);
    v29 = *v23;
    v32 = v23[1];
    v33 = v29;
    v28(&v5[v26], v3 + v22, v27);
    v30 = v32;
    *v5 = v33;
    *(v5 + 1) = v30;
    v5[32] = v24;
    (*(v20 + 24))(v37, v38, v18, &unk_1F1FCF5D0, v35, v5, v25, &off_1F1FE7098, v19, v20);

    sub_1AACAADB4(v5, type metadata accessor for RectangleElementDrawer);
    return sub_1AACAADB4(v18, type metadata accessor for ChartContentRenderContext.Environment);
  }

  return result;
}

uint64_t sub_1AAF544F4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v48 = type metadata accessor for RectangleElementDrawer(0);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  *&v46 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for SgVectorized(0) + 32);
  v22 = *(v2 + 8);
  v49 = *(v2 + 16);
  sub_1AACAAD4C(v2 + v21, v20, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF67C60(v20, v6, type metadata accessor for RulesRenderer);
      sub_1AAF53A8C(v50, v51, v49, v22);
      v40 = type metadata accessor for RulesRenderer;
      v41 = v6;
      return sub_1AACAADB4(v41, v40);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1AAF67C60(v20, v9, type metadata accessor for PointsRenderer);
      sub_1AAF5317C(v50, v51, v49, v22);
      v40 = type metadata accessor for PointsRenderer;
      v41 = v9;
      return sub_1AACAADB4(v41, v40);
    }

    sub_1AAF67C60(v20, v17, type metadata accessor for RectanglesRenderer);
    sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
    v24 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1AAF92AB0;
    sub_1AACAAD4C(v17, v26 + v25, type metadata accessor for RectanglesRenderer);
    swift_storeEnumTagMultiPayload();
    v52 = v22;

    sub_1AADC94EC(v26);
    v44 = v52;
    sub_1AACAC30C(&v17[v15[8]], v12, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    if ((*(v13 + 48))(v12, 1, v46) != 1)
    {
      v27 = v45;
      sub_1AAF67C60(v12, v45, type metadata accessor for ChartContentRenderContext.Environment);
      v28 = *(v17 + 3);
      v29 = *(v17 + 4);
      sub_1AACBB42C(v17, v28);
      v30 = v15[10];
      v31 = &v17[v15[9]];
      v32 = v31[32];
      v33 = v48;
      v34 = *(v48 + 20);
      v35 = sub_1AAF8E244();
      v36 = *(*(v35 - 8) + 16);
      v37 = *(v31 + 1);
      v46 = *v31;
      v43 = v37;
      v38 = v47;
      v36(&v47[v34], &v17[v30], v35);
      v39 = v43;
      *v38 = v46;
      *(v38 + 16) = v39;
      *(v38 + 32) = v32;
      (*(v29 + 24))(v50, v51, v27, v49, v44, v38, v33, &off_1F1FE7098, v28, v29);

      sub_1AACAADB4(v38, type metadata accessor for RectangleElementDrawer);
      sub_1AACAADB4(v27, type metadata accessor for ChartContentRenderContext.Environment);
      v40 = type metadata accessor for RectanglesRenderer;
      v41 = v17;
      return sub_1AACAADB4(v41, v40);
    }

    sub_1AACAC4BC(v12, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AAF54C08()
{
  sub_1AAD9ADE4(v0 + 48, v6);
  if (v8 == 1)
  {
  }

  else
  {
    v3 = v6[0];
    v4 = v6[1];
    v5 = v7;
    if (*(v0 + 40) != 1)
    {
      v1 = *(&v4 + 1);
      v2 = v5;
      sub_1AACBB42C(&v3, *(&v4 + 1));
      (*(v2 + 16))(v1, v2);
    }

    sub_1AAE45A14(&v3);
  }
}

uint64_t sub_1AAF54D38(void *a1, void *a2, double *a3)
{
  v64 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1AAD0DA28(0, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_1AAF8DD44();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AAF8DE34();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - v15;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], v5);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = sub_1AAF8DF14();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_1AAF8DED4();
  sub_1AAD9ADE4((a2 + 6), v69);
  if ((v71 & 1) == 0)
  {
    v66 = v69[0];
    v67 = v69[1];
    v68 = v70;
    sub_1AAF54C08();
    sub_1AACBB42C(&v66, *(&v67 + 1));
    sub_1AAF8EDA4();
    type metadata accessor for RenderParams(0);
    (*(v22 + 104))(v24, *MEMORY[0x1E697E7D8], v21);
    v25 = sub_1AAF8DF04();
    (*(v22 + 8))(v24, v21);
    if (v25)
    {
      sub_1AAF8DE84();
      sub_1AAF8E874();
      CGRectGetMidX(v75);
      sub_1AAF8DD04();
    }

    v26 = a2 + *(type metadata accessor for SgPoint(0) + 36);
    memset(v73, 0, sizeof(v73));
    v74 = 1;
    if (*(v26 + 88) == 1.0)
    {
      v27 = type metadata accessor for SgShapeStyle(0);
      sub_1AACAC30C(v26 + *(v27 + 32), v20, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v28 = sub_1AAF8F154();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v20, 1, v28) == 1)
      {
        sub_1AACAC4BC(v20, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      }

      else
      {
        v35 = sub_1AAF2E844();
        (*(v29 + 8))(v20, v28);
        if ((v35 & 0x100000000) == 0)
        {
          sub_1AAF8DEA4();
          sub_1AAF8DEB4();
          v36 = v61;
          sub_1AACACEAC(v26, v73, v61);
          v37 = v60;
          sub_1AAF8DE74();
          sub_1AAF8DDA4();
          v38 = *(v62 + 8);
          v39 = v37;
          v40 = v63;
          v38(v39, v63);
          v38(v36, v40);
          sub_1AAF8DEB4();
LABEL_21:
          sub_1AAD12C10(v72);
          sub_1AAE45A14(&v66);
          return sub_1AAF8DEE4();
        }
      }

      v41 = v61;
      sub_1AACACEAC(v26, v73, v61);
      v42 = v60;
      sub_1AAF8DE74();
      sub_1AAF8DDA4();
      v43 = *(v62 + 8);
      v44 = v42;
      v45 = v63;
      v43(v44, v63);
      v43(v41, v45);
      goto LABEL_21;
    }

    sub_1AAF8DE44();
    sub_1AAF8DE54();
    v31 = type metadata accessor for SgShapeStyle(0);
    v32 = v59;
    sub_1AACAC30C(v26 + *(v31 + 32), v59, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v33 = sub_1AAF8F154();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_1AACAC4BC(v32, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v46 = sub_1AAF2E844();
      (*(v34 + 8))(v32, v33);
      if ((v46 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        v47 = v61;
        sub_1AACACEAC(v26, v73, v61);
        v48 = v60;
        sub_1AAF8DE74();
        sub_1AAF8DDA4();
        v49 = *(v62 + 8);
        v50 = v48;
        v51 = v63;
        v49(v50, v63);
        v49(v47, v51);
        sub_1AAF8DEB4();
LABEL_20:
        sub_1AAF8DE54();
        goto LABEL_21;
      }
    }

    v52 = v61;
    sub_1AACACEAC(v26, v73, v61);
    v53 = v60;
    sub_1AAF8DE74();
    sub_1AAF8DDA4();
    v54 = *(v62 + 8);
    v55 = v53;
    v56 = v63;
    v54(v55, v63);
    v54(v52, v56);
    goto LABEL_20;
  }

  sub_1AAF50004(v69);
  *&v66 = *a2;
  sub_1AAF8DD34();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AACAC4BC(v8, &qword_1ED9B2E80, MEMORY[0x1E697E798]);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for RenderParams(0);
    (*(v22 + 104))(v24, *MEMORY[0x1E697E7D8], v21);
    v30 = sub_1AAF8DF04();
    (*(v22 + 8))(v24, v21);
    if (v30)
    {
      sub_1AAF8DE84();
      sub_1AAF8DD04();
    }

    sub_1AAF8F264();
    sub_1AAF8DD74();
    (*(v10 + 8))(v12, v9);
  }

  return sub_1AAF8DEE4();
}

uint64_t sub_1AAF5587C(uint64_t *a1, double *a2)
{
  v35 = sub_1AAF8DE34();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(type metadata accessor for SgArea(0) + 32);
  v36 = v2;
  sub_1AACAAD4C(v2 + v19, v18, type metadata accessor for SgShapeStyle);
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  if (v18[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v18 + *(v16 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v22 = sub_1AAF8F154();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1AACAC4BC(v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v29 = sub_1AAF2E844();
      (*(v23 + 8))(v12, v22);
      if ((v29 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v18, v37, v9);
        sub_1AAF8DE74();
        sub_1AAF66F70(a1, v6, v36);
        v30 = *(v4 + 8);
        v31 = v35;
        v30(v6, v35);
        v30(v9, v31);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66F70(a1, v6, v36);
    v32 = *(v4 + 8);
    v33 = v35;
    v32(v6, v35);
    v32(v9, v33);
    goto LABEL_12;
  }

  sub_1AACAC30C(v18 + *(v16 + 32), v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v20 = sub_1AAF8F154();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_1AACAC4BC(v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66F70(a1, v6, v36);
    v27 = *(v4 + 8);
    v28 = v35;
    v27(v6, v35);
    v27(v9, v28);
    return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
  }

  v24 = sub_1AAF2E844();
  (*(v21 + 8))(v15, v20);
  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v18, v37, v9);
  sub_1AAF8DE74();
  sub_1AAF66F70(a1, v6, v36);
  v25 = *(v4 + 8);
  v26 = v35;
  v25(v6, v35);
  v25(v9, v26);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
}

uint64_t sub_1AAF55E88(uint64_t *a1, double *a2)
{
  v35 = sub_1AAF8DE34();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(type metadata accessor for SgPath(0) + 24);
  v36 = v2;
  sub_1AACAAD4C(v2 + v19, v18, type metadata accessor for SgShapeStyle);
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  if (v18[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v18 + *(v16 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v22 = sub_1AAF8F154();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1AACAC4BC(v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v29 = sub_1AAF2E844();
      (*(v23 + 8))(v12, v22);
      if ((v29 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v18, v37, v9);
        sub_1AAF8DE74();
        sub_1AAF66D84(a1, v6, v36);
        v30 = *(v4 + 8);
        v31 = v35;
        v30(v6, v35);
        v30(v9, v31);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66D84(a1, v6, v36);
    v32 = *(v4 + 8);
    v33 = v35;
    v32(v6, v35);
    v32(v9, v33);
    goto LABEL_12;
  }

  sub_1AACAC30C(v18 + *(v16 + 32), v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v20 = sub_1AAF8F154();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_1AACAC4BC(v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66D84(a1, v6, v36);
    v27 = *(v4 + 8);
    v28 = v35;
    v27(v6, v35);
    v27(v9, v28);
    return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
  }

  v24 = sub_1AAF2E844();
  (*(v21 + 8))(v15, v20);
  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v18, v37, v9);
  sub_1AAF8DE74();
  sub_1AAF66D84(a1, v6, v36);
  v25 = *(v4 + 8);
  v26 = v35;
  v25(v6, v35);
  v25(v9, v26);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
}

uint64_t sub_1AAF56494(uint64_t *a1, double *a2)
{
  v35 = sub_1AAF8DE34();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(type metadata accessor for SgSector(0) + 48);
  v36 = v2;
  sub_1AACAAD4C(v2 + v19, v18, type metadata accessor for SgShapeStyle);
  memset(v37, 0, sizeof(v37));
  v38 = 1;
  if (v18[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v18 + *(v16 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v22 = sub_1AAF8F154();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1AACAC4BC(v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v29 = sub_1AAF2E844();
      (*(v23 + 8))(v12, v22);
      if ((v29 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v18, v37, v9);
        sub_1AAF8DE74();
        sub_1AAF66A14(a1, v6, v36);
        v30 = *(v4 + 8);
        v31 = v35;
        v30(v6, v35);
        v30(v9, v31);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66A14(a1, v6, v36);
    v32 = *(v4 + 8);
    v33 = v35;
    v32(v6, v35);
    v32(v9, v33);
    goto LABEL_12;
  }

  sub_1AACAC30C(v18 + *(v16 + 32), v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v20 = sub_1AAF8F154();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_1AACAC4BC(v15, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v18, v37, v9);
    sub_1AAF8DE74();
    sub_1AAF66A14(a1, v6, v36);
    v27 = *(v4 + 8);
    v28 = v35;
    v27(v6, v35);
    v27(v9, v28);
    return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
  }

  v24 = sub_1AAF2E844();
  (*(v21 + 8))(v15, v20);
  if ((v24 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v18, v37, v9);
  sub_1AAF8DE74();
  sub_1AAF66A14(a1, v6, v36);
  v25 = *(v4 + 8);
  v26 = v35;
  v25(v6, v35);
  v25(v9, v26);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v18, type metadata accessor for SgShapeStyle);
}

double sub_1AAF56AA0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AAF210C8(*(v1 + 24), *(v1 + 32), *(v1 + 16), v34);
  v4 = *(v1 + 8);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = a1;
    v38 = MEMORY[0x1E69E7CC0];

    sub_1AAD415C4(0, v6, 0);
    v7 = v38;
    v8 = v5 + 32;
    do
    {
      sub_1AAE5EDF4(v8, &v29);
      v9 = v30;
      v10 = v31;
      v12 = (v30 & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000 && (v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      sub_1AAE5EE50(&v29);
      v38 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_1AAD415C4((v13 > 1), v14 + 1, 1);
        v7 = v38;
      }

      v7[2] = v14 + 1;
      v15 = &v7[3 * v14];
      v15[4] = v9;
      v15[5] = v10;
      *(v15 + 48) = v12;
      v8 += 96;
      --v6;
    }

    while (v6);

    a1 = v28;
  }

  v16 = v35;
  v17 = v36;
  sub_1AACB8B34(v34, v35);
  sub_1AAF212E4(v7, v16, v17, v37);

  v18 = *(type metadata accessor for SgLine(0) + 32);
  v19 = v2 + v18;
  if (*(v2 + v18 + 72))
  {
    v20 = *(v19 + 80);
    v21 = (v19 + 48);
    v22 = *(v19 + 64);
    v23 = *(v2 + v18 + 72);
    v24 = *(v19 + 56);
    v25 = *(v19 + 60);
  }

  else
  {
    v21 = &v38;
    sub_1AAF8D914();
    v24 = v39;
    v25 = v40;
    v22 = v41;
    v23 = v42;
    v20 = v43;
  }

  v29 = *v21;
  v30 = __PAIR64__(v25, v24);
  v31 = v22;
  v32 = v23;
  v33 = v20;

  sub_1AAF8E854();
  sub_1AAD12C10(v37);

  sub_1AACB634C(v34);
  result = *&v44;
  v27 = v45;
  *a1 = v44;
  *(a1 + 16) = v27;
  *(a1 + 32) = v46;
  return result;
}

void sub_1AAF56CF0()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1AAD1FAF4(0, v3, 0);
    v4 = v19;
    v5 = v2 + 32;
    do
    {
      sub_1AAE5EDF4(v5, v18);
      v6 = v18[1];
      sub_1AAE5EE50(v18);
      v19 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AAD1FAF4((v7 > 1), v8 + 1, 1);
        v4 = v19;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v6;
      v5 += 96;
      --v3;
    }

    while (v3);
  }

  sub_1AACEC978(v4);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    v11 = *(v1 + 16);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v19 = MEMORY[0x1E69E7CC0];

      sub_1AAD1FAF4(0, v12, 0);
      v13 = v19;
      v14 = v11 + 32;
      do
      {
        sub_1AAE5EDF4(v14, v18);
        v15 = v18[2];
        sub_1AAE5EE50(v18);
        v19 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1AAD1FAF4((v16 > 1), v17 + 1, 1);
          v13 = v19;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v15;
        v14 += 96;
        --v12;
      }

      while (v12);
    }

    sub_1AACEC978(v13);
  }
}

uint64_t sub_1AAF56F10(uint64_t *a1, uint64_t a2, double *a3, double a4, double a5, double a6, double a7)
{
  v13 = MEMORY[0x1E69E6720];
  sub_1AAD0DA28(0, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v61 - v15;
  v16 = sub_1AAF8DD44();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1AAF8DE34();
  v67 = *(v69 - 1);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = (&v61 - v21);
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], v13);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = *(a2 + 8);
  swift_beginAccess();
  v66 = v28;
  v29 = *(v28 + 16);
  v71[2] = a2;

  sub_1AAF52984(MEMORY[0x1E69E7CC0], sub_1AAF67A70, v71, v29);
  v64 = v30;

  sub_1AAF56AA0(v76);
  v31 = a2 + *(type metadata accessor for SgLine(0) + 32);
  *v77 = a4;
  *&v77[1] = a5;
  *&v77[2] = a6;
  *&v77[3] = a7;
  v78 = 0;
  if (*(v31 + 88) != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    v37 = type metadata accessor for SgShapeStyle(0);
    sub_1AACAC30C(v31 + *(v37 + 32), v24, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v38 = sub_1AAF8F154();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v24, 1, v38) == 1)
    {
      sub_1AACAC4BC(v24, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v35 = v66;
    }

    else
    {
      v47 = sub_1AAF2E844();
      (*(v39 + 8))(v24, v38);
      v35 = v66;
      if ((v47 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        v48 = v65;
        sub_1AACACEAC(v31, v77, v65);
        sub_1AAF8DE74();
        sub_1AAF57AF0(a1, v19, v64, v76);
        v49 = *(v67 + 8);
        v50 = v69;
        v49(v19, v69);
        v49(v48, v50);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        goto LABEL_13;
      }
    }

    v51 = v65;
    sub_1AACACEAC(v31, v77, v65);
    sub_1AAF8DE74();
    sub_1AAF57AF0(a1, v19, v64, v76);
    v52 = *(v67 + 8);
    v53 = v69;
    v52(v19, v69);
    v52(v51, v53);
    goto LABEL_12;
  }

  v32 = type metadata accessor for SgShapeStyle(0);
  sub_1AACAC30C(v31 + *(v32 + 32), v27, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v33 = sub_1AAF8F154();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v27, 1, v33) == 1)
  {
    sub_1AACAC4BC(v27, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v35 = v66;
    v36 = v64;
  }

  else
  {
    v40 = sub_1AAF2E844();
    (*(v34 + 8))(v27, v33);
    v35 = v66;
    v36 = v64;
    if ((v40 & 0x100000000) == 0)
    {
      sub_1AAF8DEA4();
      sub_1AAF8DEB4();
      v41 = v65;
      sub_1AACACEAC(v31, v77, v65);
      sub_1AAF8DE74();
      sub_1AAF57AF0(a1, v19, v36, v76);
      v42 = *(v67 + 8);
      v43 = v69;
      v42(v19, v69);
      v42(v41, v43);
      sub_1AAF8DEB4();
      goto LABEL_13;
    }
  }

  v44 = v65;
  sub_1AACACEAC(v31, v77, v65);
  sub_1AAF8DE74();
  sub_1AAF57AF0(a1, v19, v36, v76);
  v45 = *(v67 + 8);
  v46 = v69;
  v45(v19, v69);
  v45(v44, v46);
LABEL_13:

  v65 = v35[2];
  v54 = *(v65 + 2);
  if (v54)
  {
    v69 = a1;
    v55 = v65 + 32;
    v56 = (v62 + 48);
    v66 = (v62 + 8);
    v67 = v62 + 32;

    v57 = v63;
    do
    {
      sub_1AAE5EDF4(v55, v74);
      sub_1AACDBA18(&v75, v72, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      if (v73 == 255)
      {
        sub_1AAE5EE50(v74);
        sub_1AAF67B3C(v72, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      }

      else if (v73)
      {
        sub_1AAF50004(v72);
        v58 = v70;
        v72[0] = v74[0];
        sub_1AAF8DD34();
        if ((*v56)(v58, 1, v57) == 1)
        {
          sub_1AAE5EE50(v74);
          sub_1AACAC4BC(v58, &qword_1ED9B2E80, MEMORY[0x1E697E798]);
        }

        else
        {
          v59 = v68;
          (*v67)(v68, v58, v57);
          sub_1AAF8F264();
          sub_1AAF8DD74();
          (*v66)(v59, v57);
          sub_1AAE5EE50(v74);
        }
      }

      else
      {
        sub_1AAE5EE50(v74);
        sub_1AAF50004(v72);
      }

      v55 += 96;
      --v54;
    }

    while (v54);
  }

  return sub_1AAD12C10(v76);
}

uint64_t sub_1AAF5784C(char **a1, uint64_t a2, uint64_t a3)
{
  sub_1AACDBA18(a2 + 24, &v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (v25 == 255)
  {
    return sub_1AAF67B3C(&v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  }

  if (v25)
  {
    return sub_1AAF50004(&v22);
  }

  v26[0] = v22;
  v26[1] = v23;
  v27 = v24;
  v7 = *(a2 + 88);
  if (v7 != 255)
  {
    v8 = a3 + *(type metadata accessor for SgLine(0) + 32);
    v9 = *(v8 + 48);
    if (!*(v8 + 72))
    {
      v9 = 1.0;
    }

    sub_1AAE3CDD0(&v19, v9);
    if (*(&v20 + 1))
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AAD9B194(v26, &v22);
      if (v7)
      {
        goto LABEL_14;
      }
    }

    v11 = *(&v23 + 1);
    v12 = v24;
    sub_1AACBB42C(&v22, *(&v23 + 1));
    (*(v12 + 16))(v11, v12);
LABEL_14:
    sub_1AACBB42C(&v22, *(&v23 + 1));
    sub_1AAF8EDA4();
    v13 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AAD6B71C(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AAD6B71C((v14 > 1), v15 + 1, 1, v13);
    }

    sub_1AAE45A14(v26);
    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v21;
    v18 = v20;
    *(v16 + 2) = v19;
    *(v16 + 3) = v18;
    v16[64] = v17;
    *a1 = v13;
    v10 = &v22;
    return sub_1AAE45A14(v10);
  }

  v10 = v26;
  return sub_1AAE45A14(v10);
}

void sub_1AAF57AF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v10 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v6 = v5;

    sub_1AAF8DCF4();
    sub_1AAF8DDA4();
    v7 = v6 + 32;
    do
    {
      v8 = *(v7 + 16);
      v11[0] = *v7;
      v11[1] = v8;
      v12 = *(v7 + 32);
      v13[0] = v11[0];
      v13[1] = v8;
      v14 = v12;
      sub_1AAE63550(v13, v9);
      sub_1AAF8DDA4();
      sub_1AAD12C10(v11);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    sub_1AAF8DDA4();
  }
}

void sub_1AAF57C54(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = (v4 + 8);
    do
    {
      v10 = *(v8 + 16);
      v13[0] = *v8;
      v13[1] = v10;
      v14 = *(v8 + 32);
      v15[0] = v13[0];
      v15[1] = v10;
      v16 = v14;
      sub_1AAE63550(v15, v11);
      sub_1AAE3C43C(v12);
      sub_1AAF8ECD4();
      sub_1AAF8DE14();

      sub_1AAF8DDA4();
      sub_1AAD12C10(v12);
      sub_1AAD12C10(v13);
      (*v9)(v6, v3);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AAF57E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAF57F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAF58054(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF58068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF580B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 64) = ~a2;
    }
  }

  return result;
}

void *sub_1AAF58204(void *result, uint64_t a2)
{
  if (a2 < 0xE)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 14)) | 0xE000000000000000;
  }

  return result;
}

double sub_1AAF58258@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF210C8(*(v1 + 24), *(v1 + 32), *(v1 + 16), v22);
  v3 = *(*(v1 + 8) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = a1;
    *&v25[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD415F4(0, v4, 0);
    v5 = *&v25[0];
    v6 = (v3 + 64);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v12 = (*(v6 - 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v11;
      v13 = (*(v6 - 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v12;
      *&v25[0] = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        sub_1AAD415F4((v14 > 1), v15 + 1, 1);
        v5 = *&v25[0];
      }

      v5[2] = v15 + 1;
      v16 = &v5[5 * v15];
      v16[4] = v7;
      v16[5] = v8;
      v16[6] = v9;
      v16[7] = v10;
      *(v16 + 64) = v13;
      v6 += 5;
      --v4;
    }

    while (v4);

    a1 = v21;
  }

  v17 = v23;
  v18 = v24;
  sub_1AACB8B34(v22, v23);
  sub_1AAF214A8(v5, v17, v18, v25);

  sub_1AACB634C(v22);
  result = *v25;
  v20 = v25[1];
  *a1 = v25[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v26;
  return result;
}

void sub_1AAF58424()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

    v4 = (v2 + 56);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v4 - 2);
      v7 = *v4;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AAF9E2B0;
      *(inited + 32) = v6;
      v9 = (inited + 32);
      *(inited + 40) = v7;
      v10 = *(v5 + 2);
      v11 = v10 + 2;
      if (__OFADD__(v10, 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v13 = *(v5 + 3) >> 1, v13 < v11))
      {
        if (v10 <= v11)
        {
          v14 = v10 + 2;
        }

        else
        {
          v14 = v10;
        }

        v5 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        v13 = *(v5 + 3) >> 1;
      }

      v15 = *(v5 + 2);
      if (v13 - v15 < 2)
      {
        goto LABEL_33;
      }

      *&v5[8 * v15 + 32] = *v9;

      v16 = *(v5 + 2);
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_34;
      }

      *(v5 + 2) = v18;
      v4 += 5;
      if (!--v3)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
  sub_1AACEC978(v5);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v21 = *(v1 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

      v23 = (v21 + 64);
      v24 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v25 = *(v23 - 2);
        v26 = *v23;
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1AAF9E2B0;
        *(v27 + 32) = v25;
        v28 = (v27 + 32);
        *(v27 + 40) = v26;
        v29 = *(v24 + 2);
        v30 = v29 + 2;
        if (__OFADD__(v29, 2))
        {
          break;
        }

        v31 = swift_isUniquelyReferenced_nonNull_native();
        if (!v31 || (v32 = *(v24 + 3) >> 1, v32 < v30))
        {
          if (v29 <= v30)
          {
            v33 = v29 + 2;
          }

          else
          {
            v33 = v29;
          }

          v24 = sub_1AAD69810(v31, v33, 1, v24);
          v32 = *(v24 + 3) >> 1;
        }

        v34 = *(v24 + 2);
        if (v32 - v34 < 2)
        {
          goto LABEL_36;
        }

        *&v24[8 * v34 + 32] = *v28;

        v35 = *(v24 + 2);
        v17 = __OFADD__(v35, 2);
        v36 = v35 + 2;
        if (v17)
        {
          goto LABEL_37;
        }

        *(v24 + 2) = v36;
        v23 += 5;
        if (!--v22)
        {

          goto LABEL_30;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_30:
    sub_1AACEC978(v24);
  }
}

void sub_1AAF58748()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v835 = v814 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v841 = v814 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v847 = v814 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v846 = v814 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v838 = v814 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v845 = v814 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v844 = v814 - v14;
  v15 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v834 = v814 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v839 = v814 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v836 = v814 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v848 = (v814 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v843 = v814 - v24;
  v25 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v840 = v814 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v837 = v814 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v850 = (v814 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v842 = v814 - v32;
  v33 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v816 = v814 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v823 = (v814 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v833 = (v814 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v832 = (v814 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v821 = (v814 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v829 = (v814 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v827 = (v814 - v46);
  v856 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v856);
  v855 = v814 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v854 = (v814 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v815 = v814 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v822 = v814 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v831 = v814 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v830 = v814 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v820 = v814 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v828 = v814 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v826 = v814 - v63;
  v64 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v853 = (v814 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = *(v0 + 8);
  v68 = *MEMORY[0x1E695F050];
  v67 = *(MEMORY[0x1E695F050] + 8);
  v70 = *(MEMORY[0x1E695F050] + 16);
  v69 = *(MEMORY[0x1E695F050] + 24);
  v859 = *(v66 + 16);
  if (!v859)
  {
    v866.origin.x = v68;
    v866.origin.y = v67;
    v866.size.width = v70;
    v866.size.height = v69;
    return;
  }

  v71 = 0;
  v860 = 0;
  v857 = v66;
  v858 = v66 + 32;
  v72 = &unk_1AAF9E000;
  v866.size.width = v70;
  v866.size.height = v69;
  v866.origin.x = v68;
  v866.origin.y = v67;
  v873 = v68;
  v874 = v67;
  v875 = v70;
  v876 = v69;
  while (2)
  {
    if (v71 >= *(v66 + 16))
    {
      goto LABEL_470;
    }

    v80 = *(v858 + 8 * v71);
    v864 = v71 + 1;
    v865 = v80;
    v73 = v68;
    v74 = v67;
    v75 = v70;
    v76 = v69;
    switch(v80 >> 60)
    {
      case 1uLL:
        v104 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v884 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v814[2] = v884;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v814[1] = v104;
        sub_1AADC9018(v104);
        v105 = v884;
        v867 = *(v884 + 16);
        if (v867)
        {
          v106 = 0;
          v862 = v884;
          v863 = v884 + 32;
          v76 = v69;
          v75 = v70;
          v872 = v67;
          v73 = v68;
          while (1)
          {
            if (v106 >= *(v105 + 16))
            {
              goto LABEL_469;
            }

            v869 = v76;
            v870 = v73;
            v871 = v75;
            v110 = *(v863 + 8 * v106);
            v868 = v106 + 1;
            v107 = v68;
            v108 = v67;
            v109 = v70;
            switch(v110 >> 60)
            {
              case 1uLL:
                v132 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                *&v884 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v825 = *&v884;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                v824 = *&v132;
                sub_1AADC9018(v132);
                v133 = *&v884;
                v134 = *(v884 + 16);
                if (v134 != 0.0)
                {
                  v135 = 0;
                  *&v136 = v884 + 32;
                  v69 = v876;
                  v109 = v70;
                  v108 = v67;
                  v107 = v68;
                  v849 = *&v884;
                  *&v851 = v884 + 32;
                  v852 = v134;
                  v861 = v110;
                  while (1)
                  {
                    if (v135 >= *(*&v133 + 16))
                    {
                      goto LABEL_461;
                    }

                    v305 = *(*&v136 + 8 * v135++);
                    x = v68;
                    y = v67;
                    width = v70;
                    height = v876;
                    switch(v305 >> 60)
                    {
                      case 1uLL:
                        v322 = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v884 = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v322);
                        v323 = v884;
                        v324 = *(v884 + 16);
                        if (!v324)
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
LABEL_208:

                          v72 = &unk_1AAF9E000;
                          v110 = v861;
                          goto LABEL_150;
                        }

                        v325 = 0;
                        height = v876;
                        width = v875;
                        y = v874;
                        x = v873;
                        while (v325 < *(v323 + 16))
                        {
                          v326 = v325 + 1;
                          v327 = *(v323 + 32 + 8 * v325);

                          v946.origin.x = sub_1AAF517A0(v327);
                          v946.origin.y = v328;
                          v946.size.width = v329;
                          v946.size.height = v330;
                          v923.origin.x = x;
                          v923.origin.y = y;
                          v923.size.width = width;
                          v923.size.height = height;
                          v924 = CGRectUnion(v923, v946);
                          x = v924.origin.x;
                          y = v924.origin.y;
                          width = v924.size.width;
                          height = v924.size.height;

                          v325 = v326;
                          if (v324 == v326)
                          {
                            goto LABEL_208;
                          }
                        }

                        __break(1u);
                        goto LABEL_455;
                      case 2uLL:
                        v331 = v110;
                        sub_1AAD117A0((v305 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                        v332 = *(&v884 + 1);
                        v333 = *(*(&v884 + 1) + 16);

                        if (v333)
                        {
                          v334 = (v332 + 32);
                          height = v876;
                          width = v875;
                          y = v874;
                          x = v873;
                          do
                          {
                            v335 = *v334++;
                            v947.origin.x = sub_1AAF517A0(v335);
                            v947.origin.y = v336;
                            v947.size.width = v337;
                            v947.size.height = v338;
                            v925.origin.x = x;
                            v925.origin.y = y;
                            v925.size.width = width;
                            v925.size.height = height;
                            v926 = CGRectUnion(v925, v947);
                            x = v926.origin.x;
                            y = v926.origin.y;
                            width = v926.size.width;
                            height = v926.size.height;
                            --v333;
                          }

                          while (v333);
                        }

                        else
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
                        }

                        sub_1AAF14C40(&v884);
                        v110 = v331;
                        goto LABEL_151;
                      case 3uLL:
                        v306 = v110;
                        v307 = swift_projectBox();
                        v308 = v826;
                        sub_1AACAAD4C(v307, v826, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v308 + 48, &v884);
                        if (v887)
                        {
                          width = *(&v884 + 1);
                          height = *&v885;

                          v309 = *(v308 + 16);
                          x = *(v308 + 8) - width * 0.5;
                          v310 = v308;
LABEL_192:
                          sub_1AACAADB4(v310, type metadata accessor for SgPoint);
                          y = v309 - height * 0.5;
                          goto LABEL_212;
                        }

                        v888 = v884;
                        v889 = v885;
                        v890 = v886;
                        v379 = *(v308 + 24);
                        v380 = v308;
                        if (*(v308 + 40) == 1)
                        {
                          height = *(v308 + 32);
                          width = *(v308 + 24);

                          sub_1AAE45A14(&v888);
                          v309 = *(v308 + 16);
                          x = *(v308 + 8) - width * 0.5;
                          v310 = v308;
                          goto LABEL_192;
                        }

                        v417 = *(v308 + 16);
                        v818 = *(v308 + 8);
                        v819 = v417;
                        v418 = *(&v889 + 1);
                        v419 = v890;
                        v420 = sqrt(v379);

                        sub_1AACBB42C(&v888, v418);
                        v421 = (*(v419 + 16))(v418, v419);
                        v817 = v422;
                        v424 = v423;
                        v426 = v425;
                        v136 = v851;
                        v134 = v852;
                        sub_1AACAADB4(v380, type metadata accessor for SgPoint);
                        width = v420 * v424;
                        height = v420 * v426;
                        x = v818 + v420 * (v421 + -0.5);
                        y = v819 + v420 * (v817 + -0.5);
                        sub_1AAE45A14(&v888);
LABEL_212:
                        v110 = v306;
                        v133 = v849;
LABEL_152:
                        v921.origin.x = v107;
                        v921.origin.y = v108;
                        v921.size.width = v109;
                        v921.size.height = v69;
                        v945.origin.x = x;
                        v945.origin.y = y;
                        v945.size.width = width;
                        v945.size.height = height;
                        v922 = CGRectUnion(v921, v945);
                        v107 = v922.origin.x;
                        v108 = v922.origin.y;
                        v109 = v922.size.width;
                        v69 = v922.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v135 == *&v134)
                        {
                          goto LABEL_134;
                        }

                        break;
                      case 4uLL:
                        v351 = swift_projectBox();
                        v340 = v854;
                        sub_1AACAAD4C(v351, v854, type metadata accessor for SgRectangle);
                        x = v340[1];
                        y = v340[2];
                        width = v340[3];
                        height = v340[4];

                        v345 = type metadata accessor for SgRectangle;
                        goto LABEL_182;
                      case 5uLL:
                        v354 = swift_projectBox();
                        v355 = v855;
                        sub_1AACAAD4C(v354, v855, type metadata accessor for SgSector);
                        v356 = vaddvq_f64(vmulq_f64(*(v355 + 24), xmmword_1AAFC7450));
                        v357 = __sincos_stret(((*(v355 + 8) + *(v355 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        x = v356 * v357.__cosval;
                        y = v356 * v357.__sinval;
                        v358 = (v355 + *(v856 + 52));
                        v359 = v358[1];
                        width = *v358 + *v358;

                        sub_1AACAADB4(v355, type metadata accessor for SgSector);
                        height = v359 + v359;
                        goto LABEL_152;
                      case 6uLL:
                        v339 = swift_projectBox();
                        v340 = v827;
                        sub_1AACAAD4C(v339, v827, type metadata accessor for SgRule);
                        v341 = v340[1];
                        v342 = v340[2];
                        v343 = v340[3];
                        v344 = v340[4];
                        if (v343 >= v341)
                        {
                          x = v340[1];
                        }

                        else
                        {
                          x = v340[3];
                        }

                        if (v344 >= v342)
                        {
                          y = v340[2];
                        }

                        else
                        {
                          y = v340[4];
                        }

                        width = vabdd_f64(v343, v341);
                        height = vabdd_f64(v344, v342);

                        v345 = type metadata accessor for SgRule;
                        goto LABEL_182;
                      case 7uLL:
                        v368 = swift_projectBox();
                        sub_1AACAAD4C(v368, v842, type metadata accessor for SgLine);
                        swift_beginAccess();

                        v370 = v860;
                        v371 = sub_1AAF51224(v369);

                        MEMORY[0x1EEE9AC00](v372);
                        sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                        v819 = v373;
                        *&v814[-4] = v373;
                        v818 = COERCE_DOUBLE(sub_1AAE840B8());
                        *&v814[-3] = v818;
                        v817 = COERCE_DOUBLE(sub_1AAE971D0());
                        *&v814[-2] = v817;
                        swift_getKeyPath();
                        v374 = COERCE_DOUBLE(sub_1AAF894FC(v371, sub_1AAF68E40));
                        v376 = v375;
                        v378 = v377;
                        v860 = v370;

                        if (v378)
                        {
                          x = v873;
LABEL_196:
                          y = v874;
                          width = v875;
                          height = v876;
                          v110 = v861;
                          v133 = v849;
                          goto LABEL_215;
                        }

                        x = v374;
                        v381 = v376;
                        v382 = v873;
                        if (v374 > v376)
                        {
                          goto LABEL_477;
                        }

                        v384 = v860;
                        v385 = sub_1AAF512E8(v383);

                        MEMORY[0x1EEE9AC00](v386);
                        v387 = v818;
                        *&v814[-4] = v819;
                        *&v814[-3] = v387;
                        *&v814[-2] = v817;
                        swift_getKeyPath();
                        v388 = COERCE_DOUBLE(sub_1AAF894FC(v385, sub_1AAF68E40));
                        v390 = v389;
                        v392 = v391;
                        v860 = v384;

                        if (v392)
                        {
                          x = v382;
                          goto LABEL_196;
                        }

                        y = v388;
                        v110 = v861;
                        v133 = v849;
                        if (v388 > v390)
                        {
                          goto LABEL_482;
                        }

                        width = v381 - x;
                        height = v390 - v388;
LABEL_215:
                        sub_1AACAADB4(v842, type metadata accessor for SgLine);
                        v72 = &unk_1AAF9E000;
LABEL_151:
                        v136 = v851;
                        v134 = v852;
                        goto LABEL_152;
                      case 8uLL:
                        v311 = swift_projectBox();
                        v312 = v843;
                        sub_1AACAAD4C(v311, v843, type metadata accessor for SgArea);
                        v819 = *(v312 + 8);
                        v313 = *(*&v819 + 16);
                        v314 = MEMORY[0x1E69E7CC0];
                        *&v884 = MEMORY[0x1E69E7CC0];
                        v315 = *(v313 + 16);
                        if (v315)
                        {
                          sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                          v316 = (v313 + 56);
                          v317 = v873;
                          do
                          {
                            v318 = *(v316 - 2);
                            v319 = *v316;
                            v316 += 5;
                            v320 = swift_allocObject();
                            *(v320 + 16) = v72[43];
                            *(v320 + 32) = v318;
                            *(v320 + 40) = v319;
                            sub_1AADC8F2C(v320);
                            --v315;
                          }

                          while (v315);

                          v314 = v884;
                        }

                        else
                        {

                          v317 = v873;
                        }

                        MEMORY[0x1EEE9AC00](v321);
                        sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                        v818 = v393;
                        *&v814[-4] = v393;
                        v817 = COERCE_DOUBLE(sub_1AAE840B8());
                        *&v814[-3] = v817;
                        v394 = sub_1AAE971D0();
                        v814[-2] = v394;
                        swift_getKeyPath();
                        v395 = v860;
                        v396 = COERCE_DOUBLE(sub_1AAF894FC(v314, sub_1AAF68E40));
                        v398 = v397;
                        v400 = v399;
                        v860 = v395;

                        x = v317;
                        y = v874;
                        width = v875;
                        height = v876;
                        v110 = v861;
                        if (v400)
                        {
                          goto LABEL_149;
                        }

                        x = v396;
                        v402 = v398;
                        if (v396 > v398)
                        {
                          goto LABEL_478;
                        }

                        v403 = *(*&v819 + 16);
                        v404 = MEMORY[0x1E69E7CC0];
                        *&v884 = MEMORY[0x1E69E7CC0];
                        v405 = *(v403 + 16);
                        if (v405)
                        {
                          sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                          v406 = (v403 + 64);
                          do
                          {
                            v407 = *(v406 - 2);
                            v408 = *v406;
                            v406 += 5;
                            v409 = swift_allocObject();
                            *(v409 + 16) = xmmword_1AAF9E2B0;
                            *(v409 + 32) = v407;
                            *(v409 + 40) = v408;
                            sub_1AADC8F2C(v409);
                            --v405;
                          }

                          while (v405);

                          v404 = v884;
                        }

                        MEMORY[0x1EEE9AC00](v401);
                        v410 = v817;
                        *&v814[-4] = v818;
                        *&v814[-3] = v410;
                        v814[-2] = v394;
                        swift_getKeyPath();
                        v411 = v860;
                        v412 = COERCE_DOUBLE(sub_1AAF894FC(v404, sub_1AAF68E40));
                        v414 = v413;
                        v416 = v415;
                        v860 = v411;

                        if (v416)
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
                          v110 = v861;
                        }

                        else
                        {
                          y = v412;
                          v110 = v861;
                          if (v412 > v414)
                          {
                            goto LABEL_481;
                          }

                          width = v402 - x;
                          height = v414 - v412;
                        }

LABEL_149:
                        sub_1AACAADB4(v843, type metadata accessor for SgArea);
                        v72 = &unk_1AAF9E000;
LABEL_150:
                        v133 = v849;
                        goto LABEL_151;
                      case 9uLL:
                        v360 = swift_projectBox();
                        v361 = v844;
                        sub_1AACAAD4C(v360, v844, type metadata accessor for SgPath);
                        v362 = *(v361 + 24);
                        v892 = *(v361 + 8);
                        v893 = v362;
                        v894 = *(v361 + 40);

                        v363 = sub_1AAF8E8E4();
                        x = v873;
                        y = v874;
                        width = v875;
                        height = v876;
                        if ((v363 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          x = v364;
                          y = v365;
                          width = v366;
                          height = v367;
                        }

                        v352 = type metadata accessor for SgPath;
                        v353 = v844;
                        goto LABEL_187;
                      case 0xAuLL:

                        x = v873;
                        y = v874;
                        width = v875;
                        height = v876;
                        goto LABEL_152;
                      case 0xBuLL:
                      case 0xCuLL:
                        x = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        y = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        width = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        height = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_152;
                      case 0xDuLL:

                        x = 0.0;
                        y = 0.0;
                        width = 0.0;
                        height = 0.0;
                        goto LABEL_152;
                      case 0xEuLL:
                        goto LABEL_152;
                      default:
                        v346 = swift_projectBox();
                        v340 = v853;
                        sub_1AACAAD4C(v346, v853, type metadata accessor for SgGroup);

                        sub_1AAF58748();
                        x = v347;
                        y = v348;
                        width = v349;
                        height = v350;
                        v345 = type metadata accessor for SgGroup;
LABEL_182:
                        v352 = v345;
                        v353 = v340;
LABEL_187:
                        sub_1AACAADB4(v353, v352);
                        goto LABEL_152;
                    }
                  }
                }

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
LABEL_134:

                v66 = v857;
                goto LABEL_27;
              case 2uLL:
                sub_1AAD117A0((v110 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                v137 = *(&v884 + 1);
                v138 = *(*(&v884 + 1) + 16);

                if (v138)
                {
                  v139 = 0;
                  *&v140 = v137 + 32;
                  v69 = v876;
                  v109 = v70;
                  v108 = v67;
                  v107 = v68;
                  *&v852 = v137 + 32;
                  v861 = v110;
                  while (1)
                  {
                    if (v139 >= *(v137 + 16))
                    {
                      goto LABEL_457;
                    }

                    v145 = *(*&v140 + 8 * v139++);
                    v141 = v68;
                    v142 = v67;
                    v143 = v70;
                    v144 = v876;
                    switch(v145 >> 60)
                    {
                      case 1uLL:
                        v158 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v888 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v158);
                        v159 = *(v888 + 16);
                        if (v159)
                        {
                          v160 = (v888 + 32);
                          v144 = v876;
                          v143 = v875;
                          v142 = v874;
                          v141 = v873;
                          do
                          {
                            v161 = *v160++;
                            v943.origin.x = sub_1AAF517A0(v161);
                            v943.origin.y = v162;
                            v943.size.width = v163;
                            v943.size.height = v164;
                            v917.origin.x = v141;
                            v917.origin.y = v142;
                            v917.size.width = v143;
                            v917.size.height = v144;
                            v918 = CGRectUnion(v917, v943);
                            v141 = v918.origin.x;
                            v142 = v918.origin.y;
                            v143 = v918.size.width;
                            v144 = v918.size.height;
                            --v159;
                          }

                          while (v159);
                        }

                        else
                        {
                          v141 = v873;
                          v142 = v874;
                          v143 = v875;
                          v144 = v876;
                        }

                        v110 = v861;
                        v140 = v852;
                        goto LABEL_52;
                      case 2uLL:
                        v165 = v110;
                        sub_1AAD117A0((v145 & 0xFFFFFFFFFFFFFFFLL) + 16, &v888);
                        v166 = *(&v888 + 1);
                        v167 = *(*(&v888 + 1) + 16);

                        if (v167)
                        {
                          v168 = (v166 + 32);
                          v144 = v876;
                          v143 = v875;
                          v142 = v874;
                          v141 = v873;
                          do
                          {
                            v169 = *v168++;
                            v944.origin.x = sub_1AAF517A0(v169);
                            v944.origin.y = v170;
                            v944.size.width = v171;
                            v944.size.height = v172;
                            v919.origin.x = v141;
                            v919.origin.y = v142;
                            v919.size.width = v143;
                            v919.size.height = v144;
                            v920 = CGRectUnion(v919, v944);
                            v141 = v920.origin.x;
                            v142 = v920.origin.y;
                            v143 = v920.size.width;
                            v144 = v920.size.height;
                            --v167;
                          }

                          while (v167);
                        }

                        else
                        {
                          v141 = v873;
                          v142 = v874;
                          v143 = v875;
                          v144 = v876;
                        }

                        sub_1AAF14C40(&v888);
                        v110 = v165;
                        v140 = v852;
                        goto LABEL_52;
                      case 3uLL:
                        v146 = v110;
                        v147 = swift_projectBox();
                        v148 = v828;
                        sub_1AACAAD4C(v147, v828, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v148 + 48, &v888);
                        if (v891)
                        {
                          v143 = *(&v888 + 1);
                          v144 = *&v889;

                          v149 = *(v148 + 16);
                          v141 = *(v148 + 8) - v143 * 0.5;
                          v150 = v148;
LABEL_86:
                          sub_1AACAADB4(v150, type metadata accessor for SgPoint);
                          v142 = v149 - v144 * 0.5;
                          v110 = v146;
                          goto LABEL_52;
                        }

                        v877 = v888;
                        v878 = v889;
                        v879 = v890;
                        v205 = *(v148 + 24);
                        v206 = v148;
                        if (*(v148 + 40) == 1)
                        {
                          v144 = *(v148 + 32);
                          v143 = *(v148 + 24);

                          sub_1AAE45A14(&v877);
                          v149 = *(v148 + 16);
                          v141 = *(v148 + 8) - v143 * 0.5;
                          v150 = v148;
                          goto LABEL_86;
                        }

                        v207 = *(v148 + 16);
                        v849 = *(v148 + 8);
                        v851 = v207;
                        v208 = *(&v878 + 1);
                        v209 = v879;
                        v210 = sqrt(v205);

                        sub_1AACBB42C(&v877, v208);
                        v211 = *(v209 + 16);
                        v212 = v209;
                        v140 = v852;
                        v213 = v211(v208, v212);
                        v825 = v214;
                        v216 = v215;
                        v218 = v217;
                        sub_1AACAADB4(v206, type metadata accessor for SgPoint);
                        v143 = v210 * v216;
                        v144 = v210 * v218;
                        v141 = v849 + v210 * (v213 + -0.5);
                        v142 = v851 + v210 * (v825 + -0.5);
                        sub_1AAE45A14(&v877);
                        v110 = v146;
LABEL_52:
                        v915.origin.x = v107;
                        v915.origin.y = v108;
                        v915.size.width = v109;
                        v915.size.height = v69;
                        v942.origin.x = v141;
                        v942.origin.y = v142;
                        v942.size.width = v143;
                        v942.size.height = v144;
                        v916 = CGRectUnion(v915, v942);
                        v107 = v916.origin.x;
                        v108 = v916.origin.y;
                        v109 = v916.size.width;
                        v69 = v916.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v139 == v138)
                        {
                          goto LABEL_136;
                        }

                        break;
                      case 4uLL:
                        v183 = swift_projectBox();
                        v152 = v854;
                        sub_1AACAAD4C(v183, v854, type metadata accessor for SgRectangle);
                        v141 = v152[1];
                        v142 = v152[2];
                        v143 = v152[3];
                        v144 = v152[4];

                        v157 = type metadata accessor for SgRectangle;
                        goto LABEL_82;
                      case 5uLL:
                        v184 = swift_projectBox();
                        v185 = v855;
                        sub_1AACAAD4C(v184, v855, type metadata accessor for SgSector);
                        v186 = vaddvq_f64(vmulq_f64(*(v185 + 24), xmmword_1AAFC7450));
                        v187 = __sincos_stret(((*(v185 + 8) + *(v185 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v141 = v186 * v187.__cosval;
                        v142 = v186 * v187.__sinval;
                        v188 = (v185 + *(v856 + 52));
                        v189 = v188[1];
                        v143 = *v188 + *v188;

                        sub_1AACAADB4(v185, type metadata accessor for SgSector);
                        v144 = v189 + v189;
                        goto LABEL_52;
                      case 6uLL:
                        v173 = swift_projectBox();
                        v152 = v829;
                        sub_1AACAAD4C(v173, v829, type metadata accessor for SgRule);
                        v174 = v152[1];
                        v175 = v152[2];
                        v176 = v152[3];
                        v177 = v152[4];
                        if (v176 >= v174)
                        {
                          v141 = v152[1];
                        }

                        else
                        {
                          v141 = v152[3];
                        }

                        if (v177 >= v175)
                        {
                          v142 = v152[2];
                        }

                        else
                        {
                          v142 = v152[4];
                        }

                        v143 = vabdd_f64(v176, v174);
                        v144 = vabdd_f64(v177, v175);

                        v157 = type metadata accessor for SgRule;
                        goto LABEL_82;
                      case 7uLL:
                        v200 = swift_projectBox();
                        v152 = v850;
                        sub_1AACAAD4C(v200, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v141 = v201;
                        v142 = v202;
                        v143 = v203;
                        v144 = v204;
                        v157 = type metadata accessor for SgLine;
                        goto LABEL_82;
                      case 8uLL:
                        v151 = swift_projectBox();
                        v152 = v848;
                        sub_1AACAAD4C(v151, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v141 = v153;
                        v142 = v154;
                        v143 = v155;
                        v144 = v156;
                        v157 = type metadata accessor for SgArea;
                        goto LABEL_82;
                      case 9uLL:
                        v190 = swift_projectBox();
                        v191 = v845;
                        sub_1AACAAD4C(v190, v845, type metadata accessor for SgPath);
                        v192 = *(v191 + 24);
                        v895 = *(v191 + 8);
                        v896 = v192;
                        v897 = *(v191 + 40);

                        v193 = sub_1AAF8E8E4();
                        v141 = v873;
                        v142 = v874;
                        v143 = v875;
                        v144 = v876;
                        if ((v193 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v141 = v194;
                          v142 = v195;
                          v143 = v196;
                          v144 = v197;
                        }

                        v198 = type metadata accessor for SgPath;
                        v199 = v845;
                        goto LABEL_83;
                      case 0xAuLL:

                        v141 = v873;
                        v142 = v874;
                        v143 = v875;
                        v144 = v876;
                        goto LABEL_52;
                      case 0xBuLL:
                      case 0xCuLL:
                        v141 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v142 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v143 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v144 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_52;
                      case 0xDuLL:

                        v141 = 0.0;
                        v142 = 0.0;
                        v143 = 0.0;
                        v144 = 0.0;
                        goto LABEL_52;
                      case 0xEuLL:
                        goto LABEL_52;
                      default:
                        v178 = swift_projectBox();
                        v152 = v853;
                        sub_1AACAAD4C(v178, v853, type metadata accessor for SgGroup);

                        sub_1AAF58748();
                        v141 = v179;
                        v142 = v180;
                        v143 = v181;
                        v144 = v182;
                        v157 = type metadata accessor for SgGroup;
LABEL_82:
                        v198 = v157;
                        v199 = v152;
LABEL_83:
                        sub_1AACAADB4(v199, v198);
                        goto LABEL_52;
                    }
                  }
                }

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
LABEL_136:
                sub_1AAF14C40(&v884);
                v66 = v857;
                v72 = &unk_1AAF9E000;
                goto LABEL_27;
              case 3uLL:
                v111 = swift_projectBox();
                v112 = v820;
                sub_1AACAAD4C(v111, v820, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v112 + 48, &v884);
                if (v887)
                {
                  v109 = *(&v884 + 1);
                  v69 = *&v885;

LABEL_117:
                  v260 = *(v112 + 16);
                  v107 = *(v112 + 8) - v109 * 0.5;
                  sub_1AACAADB4(v112, type metadata accessor for SgPoint);
                  v108 = v260 - v69 * 0.5;
                  goto LABEL_27;
                }

                v888 = v884;
                v889 = v885;
                v890 = v886;
                if (*(v112 + 40) == 1)
                {
                  v69 = *(v112 + 32);
                  v109 = *(v112 + 24);

                  sub_1AAE45A14(&v888);
                  goto LABEL_117;
                }

                v427 = *(v112 + 8);
                v428 = *(v112 + 16);
                v429 = *(&v889 + 1);
                v430 = v890;
                v431 = sqrt(*(v112 + 24));

                sub_1AACBB42C(&v888, v429);
                v432 = (*(v430 + 16))(v429, v430);
                v434 = v433;
                v436 = v435;
                v438 = v437;
                sub_1AACAADB4(v112, type metadata accessor for SgPoint);
                v109 = v431 * v436;
                v69 = v431 * v438;
                v107 = v427 + v431 * (v432 + -0.5);
                v67 = v874;
                v439 = v431 * (v434 + -0.5);
                v70 = v875;
                v108 = v428 + v439;
                sub_1AAE45A14(&v888);
LABEL_27:
                v913.origin.x = v870;
                v913.size.width = v871;
                v913.origin.y = v872;
                v913.size.height = v869;
                v941.origin.x = v107;
                v941.origin.y = v108;
                v941.size.width = v109;
                v941.size.height = v69;
                v914 = CGRectUnion(v913, v941);
                v73 = v914.origin.x;
                v872 = v914.origin.y;
                v75 = v914.size.width;
                v76 = v914.size.height;

                v106 = v868;
                v69 = v876;
                v105 = v862;
                if (v868 == v867)
                {
                  goto LABEL_448;
                }

                break;
              case 4uLL:
                v231 = swift_projectBox();
                v220 = v854;
                sub_1AACAAD4C(v231, v854, type metadata accessor for SgRectangle);
                v107 = v220[1];
                v108 = v220[2];
                v109 = v220[3];
                v69 = v220[4];

                v225 = type metadata accessor for SgRectangle;
                goto LABEL_101;
              case 5uLL:
                v234 = swift_projectBox();
                v235 = v855;
                sub_1AACAAD4C(v234, v855, type metadata accessor for SgSector);
                v236 = vaddvq_f64(vmulq_f64(*(v235 + 24), xmmword_1AAFC7450));
                v237 = __sincos_stret(((*(v235 + 8) + *(v235 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v107 = v236 * v237.__cosval;
                v108 = v236 * v237.__sinval;
                v238 = (v235 + *(v856 + 52));
                v239 = v238[1];
                v109 = *v238 + *v238;

                sub_1AACAADB4(v235, type metadata accessor for SgSector);
                v69 = v239 + v239;
                goto LABEL_27;
              case 6uLL:
                v219 = swift_projectBox();
                v220 = v821;
                sub_1AACAAD4C(v219, v821, type metadata accessor for SgRule);
                v221 = v220[1];
                v222 = v220[2];
                v223 = v220[3];
                v224 = v220[4];
                if (v223 >= v221)
                {
                  v107 = v220[1];
                }

                else
                {
                  v107 = v220[3];
                }

                if (v224 >= v222)
                {
                  v108 = v220[2];
                }

                else
                {
                  v108 = v220[4];
                }

                v109 = vabdd_f64(v223, v221);
                v69 = vabdd_f64(v224, v222);

                v225 = type metadata accessor for SgRule;
                goto LABEL_101;
              case 7uLL:
                v248 = swift_projectBox();
                v249 = v837;
                sub_1AACAAD4C(v248, v837, type metadata accessor for SgLine);
                v250 = *(v249 + 8);
                swift_beginAccess();
                v251 = v110;
                v252 = *(v250 + 16);
                v253 = *(v252 + 16);
                v861 = v251;
                if (v253)
                {
                  *&v888 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v253);
                  v254 = v252 + 32;
                  v255 = v888;
                  v69 = v876;
                  do
                  {
                    sub_1AAE5EDF4(v254, &v884);
                    v256 = *(&v884 + 1);
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v255 + 16) + 1, 1);
                      v255 = v888;
                    }

                    v258 = *(v255 + 16);
                    v257 = *(v255 + 24);
                    if (v258 >= v257 >> 1)
                    {
                      sub_1AAD1FAF4((v257 > 1), v258 + 1, 1);
                      v255 = v888;
                    }

                    *(v255 + 16) = v258 + 1;
                    *(v255 + 8 * v258 + 32) = v256;
                    v254 += 96;
                    --v253;
                  }

                  while (v253);
                }

                else
                {

                  v255 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                MEMORY[0x1EEE9AC00](v259);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v852 = v282;
                *&v814[-4] = v282;
                v283 = sub_1AAE840B8();
                v814[-3] = v283;
                v284 = sub_1AAE971D0();
                v814[-2] = v284;
                swift_getKeyPath();
                v285 = v860;
                v286 = COERCE_DOUBLE(sub_1AAF894FC(v255, sub_1AAF68E40));
                v288 = v287;
                v290 = v289;
                v860 = v285;

                v107 = v68;
                v108 = v67;
                v109 = v70;
                if (v290)
                {
                  goto LABEL_222;
                }

                v107 = v286;
                v292 = v288;
                if (v286 > v288)
                {
                  goto LABEL_480;
                }

                v293 = *(v250 + 16);
                v294 = *(v293 + 16);
                if (v294)
                {
                  *&v888 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v294);
                  v295 = v293 + 32;
                  v296 = v888;
                  v69 = v876;
                  v297 = v860;
                  do
                  {
                    sub_1AAE5EDF4(v295, &v884);
                    v298 = v885;
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v296 + 16) + 1, 1);
                      v296 = v888;
                    }

                    v300 = *(v296 + 16);
                    v299 = *(v296 + 24);
                    if (v300 >= v299 >> 1)
                    {
                      sub_1AAD1FAF4((v299 > 1), v300 + 1, 1);
                      v296 = v888;
                    }

                    *(v296 + 16) = v300 + 1;
                    *(v296 + 8 * v300 + 32) = v298;
                    v295 += 96;
                    --v294;
                  }

                  while (v294);
                }

                else
                {
                  v296 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  v297 = v860;
                }

                MEMORY[0x1EEE9AC00](v291);
                *&v814[-4] = v852;
                v814[-3] = v283;
                v814[-2] = v284;
                swift_getKeyPath();
                v440 = COERCE_DOUBLE(sub_1AAF894FC(v296, sub_1AAF68E40));
                v442 = v441;
                v444 = v443;

                v860 = v297;
                if (v444)
                {
                  v107 = v68;
                  v108 = v67;
                  v109 = v70;
                }

                else
                {
                  v108 = v440;
                  if (v440 > v442)
                  {
                    goto LABEL_484;
                  }

                  v109 = v292 - v107;
                  v69 = v442 - v440;
                }

LABEL_222:
                sub_1AACAADB4(v837, type metadata accessor for SgLine);
                v66 = v857;
                v72 = &unk_1AAF9E000;
                goto LABEL_27;
              case 8uLL:
                v113 = swift_projectBox();
                v114 = v836;
                sub_1AACAAD4C(v113, v836, type metadata accessor for SgArea);
                v115 = *(v114 + 8);
                v116 = *(*&v115 + 16);
                v117 = *(v116 + 16);
                v861 = v110;
                if (v117)
                {
                  v852 = v115;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v118 = (v116 + 56);
                  v119 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  do
                  {
                    v120 = *(v118 - 2);
                    v121 = *v118;
                    v122 = swift_allocObject();
                    *(v122 + 32) = v120;
                    v123 = (v122 + 32);
                    *(v122 + 40) = v121;
                    v124 = *(v119 + 2);
                    v125 = v124 + 2;
                    if (__OFADD__(v124, 2))
                    {
                      goto LABEL_462;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (!isUniquelyReferenced_nonNull_native || (v127 = *(v119 + 3) >> 1, v127 < v125))
                    {
                      if (v124 <= v125)
                      {
                        v128 = v124 + 2;
                      }

                      else
                      {
                        v128 = v124;
                      }

                      v119 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v128, 1, v119);
                      v127 = *(v119 + 3) >> 1;
                    }

                    v129 = *(v119 + 2);
                    if (v127 - v129 < 2)
                    {
                      goto LABEL_463;
                    }

                    *&v119[8 * v129 + 32] = *v123;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v130 = *(v119 + 2);
                    v102 = __OFADD__(v130, 2);
                    v131 = v130 + 2;
                    if (v102)
                    {
                      goto LABEL_464;
                    }

                    *(v119 + 2) = v131;
                    v118 += 5;
                    --v117;
                  }

                  while (v117);

                  v66 = v857;
                  v72 = &unk_1AAF9E000;
                  v115 = v852;
                }

                else
                {

                  v119 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                v261 = COERCE_DOUBLE(sub_1AACEC978(v119));
                v263 = v262;
                v265 = v264;

                if (v265)
                {
                  goto LABEL_225;
                }

                v266 = *(*&v115 + 16);
                v267 = *(v266 + 16);
                if (v267)
                {
                  v851 = v261;
                  v852 = v263;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v268 = (v266 + 64);
                  v269 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v270 = *(v268 - 2);
                    v271 = *v268;
                    v272 = swift_allocObject();
                    *(v272 + 32) = v270;
                    v273 = (v272 + 32);
                    *(v272 + 40) = v271;
                    v274 = *(v269 + 2);
                    v275 = v274 + 2;
                    if (__OFADD__(v274, 2))
                    {
                      goto LABEL_474;
                    }

                    v276 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v276 || (v277 = *(v269 + 3) >> 1, v277 < v275))
                    {
                      if (v274 <= v275)
                      {
                        v278 = v274 + 2;
                      }

                      else
                      {
                        v278 = v274;
                      }

                      v269 = sub_1AAD69810(v276, v278, 1, v269);
                      v277 = *(v269 + 3) >> 1;
                    }

                    v279 = *(v269 + 2);
                    if (v277 - v279 < 2)
                    {
                      goto LABEL_475;
                    }

                    *&v269[8 * v279 + 32] = *v273;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v280 = *(v269 + 2);
                    v102 = __OFADD__(v280, 2);
                    v281 = v280 + 2;
                    if (v102)
                    {
                      goto LABEL_476;
                    }

                    *(v269 + 2) = v281;
                    v268 += 5;
                    --v267;
                  }

                  while (v267);

                  v66 = v857;
                  v72 = &unk_1AAF9E000;
                  v261 = v851;
                  v263 = v852;
                }

                else
                {
                  v269 = MEMORY[0x1E69E7CC0];
                }

                v445 = COERCE_DOUBLE(sub_1AACEC978(v269));
                v447 = v446;
                v449 = v448;

                if (v449)
                {
LABEL_225:
                  v107 = v68;
                  v108 = v67;
                  v109 = v70;
                }

                else
                {
                  v107 = v261;
                  v108 = v445;
                  v109 = v263 - v261;
                  v69 = v447 - v445;
                }

                sub_1AACAADB4(v836, type metadata accessor for SgArea);
                goto LABEL_27;
              case 9uLL:
                v240 = swift_projectBox();
                v241 = v838;
                sub_1AACAAD4C(v240, v838, type metadata accessor for SgPath);
                v242 = *(v241 + 24);
                v898 = *(v241 + 8);
                v899 = v242;
                v900 = *(v241 + 40);

                v243 = sub_1AAF8E8E4();
                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
                if ((v243 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v107 = v244;
                  v108 = v245;
                  v109 = v246;
                  v69 = v247;
                }

                v232 = type metadata accessor for SgPath;
                v233 = v838;
                goto LABEL_106;
              case 0xAuLL:

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
                goto LABEL_27;
              case 0xBuLL:
              case 0xCuLL:
                v107 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v108 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v109 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v69 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                goto LABEL_27;
              case 0xDuLL:

                v107 = 0.0;
                v108 = 0.0;
                v109 = 0.0;
                v69 = 0.0;
                goto LABEL_27;
              case 0xEuLL:
                goto LABEL_27;
              default:
                v226 = swift_projectBox();
                v220 = v853;
                sub_1AACAAD4C(v226, v853, type metadata accessor for SgGroup);

                sub_1AAF58748();
                v107 = v227;
                v108 = v228;
                v109 = v229;
                v69 = v230;
                v225 = type metadata accessor for SgGroup;
LABEL_101:
                v232 = v225;
                v233 = v220;
LABEL_106:
                sub_1AACAADB4(v233, v232);
                goto LABEL_27;
            }
          }
        }

        v73 = v68;
        v872 = v67;
        v75 = v70;
        v76 = v69;
LABEL_448:

        v74 = v872;
        goto LABEL_4;
      case 2uLL:
        sub_1AAD117A0((v80 & 0xFFFFFFFFFFFFFFFLL) + 16, &v888);
        v450 = *(&v888 + 1);
        v451 = *(*(&v888 + 1) + 16);

        v863 = v451;
        if (v451)
        {
          v452 = 0;
          v861 = v450;
          v862 = v450 + 32;
          v76 = v69;
          v75 = v70;
          v872 = v67;
          v73 = v68;
          while (1)
          {
            if (v452 >= *(v450 + 16))
            {
              goto LABEL_468;
            }

            v869 = v76;
            v870 = v73;
            v871 = v75;
            v456 = *(v862 + 8 * v452);
            v867 = v452 + 1;
            v868 = v456;
            v453 = v68;
            v454 = v67;
            v455 = v70;
            switch(v456 >> 60)
            {
              case 1uLL:
                v478 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                *&v884 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v851 = *&v884;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                v849 = *&v478;
                sub_1AADC9018(v478);
                v479 = v884;
                v480 = *(v884 + 16);
                if (v480)
                {
                  v481 = 0;
                  *&v482 = v884 + 32;
                  v69 = v876;
                  v455 = v70;
                  v454 = v67;
                  v453 = v68;
                  *&v852 = v884 + 32;
                  while (v481 < *(v479 + 16))
                  {
                    v487 = *(*&v482 + 8 * v481++);
                    v483 = v68;
                    v484 = v67;
                    v485 = v70;
                    v486 = v876;
                    switch(v487 >> 60)
                    {
                      case 1uLL:
                        v497 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v884 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v497);
                        v498 = *(v884 + 16);
                        if (v498)
                        {
                          v499 = (v884 + 32);
                          v486 = v876;
                          v485 = v875;
                          v484 = v874;
                          v483 = v873;
                          do
                          {
                            v500 = *v499++;
                            v950.origin.x = sub_1AAF517A0(v500);
                            v950.origin.y = v501;
                            v950.size.width = v502;
                            v950.size.height = v503;
                            v931.origin.x = v483;
                            v931.origin.y = v484;
                            v931.size.width = v485;
                            v931.size.height = v486;
                            v932 = CGRectUnion(v931, v950);
                            v483 = v932.origin.x;
                            v484 = v932.origin.y;
                            v485 = v932.size.width;
                            v486 = v932.size.height;
                            --v498;
                          }

                          while (v498);
                        }

                        else
                        {
                          v483 = v873;
                          v484 = v874;
                          v485 = v875;
                          v486 = v876;
                        }

                        v66 = v857;
                        v482 = v852;
                        goto LABEL_254;
                      case 2uLL:
                        sub_1AAD117A0((v487 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                        v504 = *(&v884 + 1);
                        v505 = *(*(&v884 + 1) + 16);

                        if (v505)
                        {
                          v506 = (v504 + 32);
                          v486 = v876;
                          v485 = v875;
                          v484 = v874;
                          v483 = v873;
                          do
                          {
                            v507 = *v506++;
                            v951.origin.x = sub_1AAF517A0(v507);
                            v951.origin.y = v508;
                            v951.size.width = v509;
                            v951.size.height = v510;
                            v933.origin.x = v483;
                            v933.origin.y = v484;
                            v933.size.width = v485;
                            v933.size.height = v486;
                            v934 = CGRectUnion(v933, v951);
                            v483 = v934.origin.x;
                            v484 = v934.origin.y;
                            v485 = v934.size.width;
                            v486 = v934.size.height;
                            --v505;
                          }

                          while (v505);
                        }

                        else
                        {
                          v483 = v873;
                          v484 = v874;
                          v485 = v875;
                          v486 = v876;
                        }

                        sub_1AAF14C40(&v884);
                        v482 = v852;
                        goto LABEL_254;
                      case 3uLL:
                        v488 = swift_projectBox();
                        v489 = v830;
                        sub_1AACAAD4C(v488, v830, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v489 + 48, &v884);
                        if (v887)
                        {
                          v485 = *(&v884 + 1);
                          v486 = *&v885;

LABEL_288:
                          v544 = *(v489 + 16);
                          v483 = *(v489 + 8) - v485 * 0.5;
                          sub_1AACAADB4(v489, type metadata accessor for SgPoint);
                          v484 = v544 - v486 * 0.5;
                          goto LABEL_254;
                        }

                        v877 = v884;
                        v878 = v885;
                        v879 = v886;
                        v543 = *(v489 + 24);
                        if (*(v489 + 40) == 1)
                        {
                          v486 = *(v489 + 32);
                          v485 = *(v489 + 24);

                          sub_1AAE45A14(&v877);
                          goto LABEL_288;
                        }

                        v545 = *(v489 + 16);
                        v824 = *(v489 + 8);
                        v825 = v545;
                        v546 = *(&v878 + 1);
                        v547 = v879;
                        v548 = sqrt(v543);

                        sub_1AACBB42C(&v877, v546);
                        v549 = v546;
                        v482 = v852;
                        v550 = (*(v547 + 16))(v549, v547);
                        v819 = v551;
                        v553 = v552;
                        v555 = v554;
                        sub_1AACAADB4(v489, type metadata accessor for SgPoint);
                        v485 = v548 * v553;
                        v486 = v548 * v555;
                        v483 = v824 + v548 * (v550 + -0.5);
                        v484 = v825 + v548 * (v819 + -0.5);
                        sub_1AAE45A14(&v877);
LABEL_254:
                        v929.origin.x = v453;
                        v929.origin.y = v454;
                        v929.size.width = v455;
                        v929.size.height = v69;
                        v949.origin.x = v483;
                        v949.origin.y = v484;
                        v949.size.width = v485;
                        v949.size.height = v486;
                        v930 = CGRectUnion(v929, v949);
                        v453 = v930.origin.x;
                        v454 = v930.origin.y;
                        v455 = v930.size.width;
                        v69 = v930.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v481 == v480)
                        {
                          goto LABEL_380;
                        }

                        break;
                      case 4uLL:
                        v521 = swift_projectBox();
                        v491 = v854;
                        sub_1AACAAD4C(v521, v854, type metadata accessor for SgRectangle);
                        v483 = v491[1];
                        v484 = v491[2];
                        v485 = v491[3];
                        v486 = v491[4];

                        v496 = type metadata accessor for SgRectangle;
                        goto LABEL_284;
                      case 5uLL:
                        v522 = swift_projectBox();
                        v523 = v855;
                        sub_1AACAAD4C(v522, v855, type metadata accessor for SgSector);
                        v524 = vaddvq_f64(vmulq_f64(*(v523 + 24), xmmword_1AAFC7450));
                        v525 = __sincos_stret(((*(v523 + 8) + *(v523 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v483 = v524 * v525.__cosval;
                        v484 = v524 * v525.__sinval;
                        v526 = (v523 + *(v856 + 52));
                        v527 = v526[1];
                        v485 = *v526 + *v526;

                        sub_1AACAADB4(v523, type metadata accessor for SgSector);
                        v486 = v527 + v527;
                        goto LABEL_254;
                      case 6uLL:
                        v511 = swift_projectBox();
                        v491 = v832;
                        sub_1AACAAD4C(v511, v832, type metadata accessor for SgRule);
                        v512 = v491[1];
                        v513 = v491[2];
                        v514 = v491[3];
                        v515 = v491[4];
                        if (v514 >= v512)
                        {
                          v483 = v491[1];
                        }

                        else
                        {
                          v483 = v491[3];
                        }

                        if (v515 >= v513)
                        {
                          v484 = v491[2];
                        }

                        else
                        {
                          v484 = v491[4];
                        }

                        v485 = vabdd_f64(v514, v512);
                        v486 = vabdd_f64(v515, v513);

                        v496 = type metadata accessor for SgRule;
                        goto LABEL_284;
                      case 7uLL:
                        v538 = swift_projectBox();
                        v491 = v850;
                        sub_1AACAAD4C(v538, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v483 = v539;
                        v484 = v540;
                        v485 = v541;
                        v486 = v542;
                        v496 = type metadata accessor for SgLine;
                        goto LABEL_284;
                      case 8uLL:
                        v490 = swift_projectBox();
                        v491 = v848;
                        sub_1AACAAD4C(v490, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v483 = v492;
                        v484 = v493;
                        v485 = v494;
                        v486 = v495;
                        v496 = type metadata accessor for SgArea;
                        goto LABEL_284;
                      case 9uLL:
                        v528 = swift_projectBox();
                        v529 = v846;
                        sub_1AACAAD4C(v528, v846, type metadata accessor for SgPath);
                        v530 = *(v529 + 24);
                        v901 = *(v529 + 8);
                        v902 = v530;
                        v903 = *(v529 + 40);

                        v531 = sub_1AAF8E8E4();
                        v483 = v873;
                        v484 = v874;
                        v485 = v875;
                        v486 = v876;
                        if ((v531 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v483 = v532;
                          v484 = v533;
                          v485 = v534;
                          v486 = v535;
                        }

                        v536 = type metadata accessor for SgPath;
                        v537 = v846;
                        goto LABEL_285;
                      case 0xAuLL:

                        v483 = v873;
                        v484 = v874;
                        v485 = v875;
                        v486 = v876;
                        goto LABEL_254;
                      case 0xBuLL:
                      case 0xCuLL:
                        v483 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v484 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v485 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v486 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_254;
                      case 0xDuLL:

                        v483 = 0.0;
                        v484 = 0.0;
                        v485 = 0.0;
                        v486 = 0.0;
                        goto LABEL_254;
                      case 0xEuLL:
                        goto LABEL_254;
                      default:
                        v516 = swift_projectBox();
                        v491 = v853;
                        sub_1AACAAD4C(v516, v853, type metadata accessor for SgGroup);

                        sub_1AAF58748();
                        v483 = v517;
                        v484 = v518;
                        v485 = v519;
                        v486 = v520;
                        v496 = type metadata accessor for SgGroup;
LABEL_284:
                        v536 = v496;
                        v537 = v491;
LABEL_285:
                        sub_1AACAADB4(v537, v536);
                        goto LABEL_254;
                    }
                  }

LABEL_455:
                  __break(1u);
LABEL_456:
                  __break(1u);
LABEL_457:
                  __break(1u);
LABEL_458:
                  __break(1u);
LABEL_459:
                  __break(1u);
LABEL_460:
                  __break(1u);
LABEL_461:
                  __break(1u);
LABEL_462:
                  __break(1u);
LABEL_463:
                  __break(1u);
LABEL_464:
                  __break(1u);
LABEL_465:
                  __break(1u);
                  goto LABEL_466;
                }

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
LABEL_380:

LABEL_383:
                v72 = &unk_1AAF9E000;
LABEL_231:
                v927.origin.x = v870;
                v927.size.width = v871;
                v927.origin.y = v872;
                v927.size.height = v869;
                v948.origin.x = v453;
                v948.origin.y = v454;
                v948.size.width = v455;
                v948.size.height = v69;
                v928 = CGRectUnion(v927, v948);
                v73 = v928.origin.x;
                v872 = v928.origin.y;
                v75 = v928.size.width;
                v76 = v928.size.height;

                v452 = v867;
                v69 = v876;
                v450 = v861;
                if (v867 == v863)
                {
                  goto LABEL_450;
                }

                break;
              case 2uLL:
                sub_1AAD117A0((v456 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                v556 = *(&v884 + 1);
                v557 = *(*(&v884 + 1) + 16);

                if (v557)
                {
                  v558 = 0;
                  *&v559 = v556 + 32;
                  v69 = v876;
                  v455 = v70;
                  v454 = v67;
                  v453 = v68;
                  *&v852 = v556 + 32;
                  while (1)
                  {
                    if (v558 >= *(v556 + 16))
                    {
                      goto LABEL_456;
                    }

                    v564 = *(*&v559 + 8 * v558++);
                    v560 = v68;
                    v561 = v67;
                    v562 = v70;
                    v563 = v876;
                    switch(v564 >> 60)
                    {
                      case 1uLL:
                        v574 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v877 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v574);
                        v575 = *(v877 + 16);
                        if (v575)
                        {
                          v576 = (v877 + 32);
                          v563 = v876;
                          v562 = v875;
                          v561 = v874;
                          v560 = v873;
                          do
                          {
                            v577 = *v576++;
                            v953.origin.x = sub_1AAF517A0(v577);
                            v953.origin.y = v578;
                            v953.size.width = v579;
                            v953.size.height = v580;
                            v937.origin.x = v560;
                            v937.origin.y = v561;
                            v937.size.width = v562;
                            v937.size.height = v563;
                            v938 = CGRectUnion(v937, v953);
                            v560 = v938.origin.x;
                            v561 = v938.origin.y;
                            v562 = v938.size.width;
                            v563 = v938.size.height;
                            --v575;
                          }

                          while (v575);
                        }

                        else
                        {
                          v560 = v873;
                          v561 = v874;
                          v562 = v875;
                          v563 = v876;
                        }

                        v559 = v852;
                        goto LABEL_297;
                      case 2uLL:
                        sub_1AAD117A0((v564 & 0xFFFFFFFFFFFFFFFLL) + 16, &v877);
                        v581 = *(&v877 + 1);
                        v582 = *(*(&v877 + 1) + 16);

                        if (v582)
                        {
                          v583 = (v581 + 32);
                          v563 = v876;
                          v562 = v875;
                          v561 = v874;
                          v560 = v873;
                          do
                          {
                            v584 = *v583++;
                            v954.origin.x = sub_1AAF517A0(v584);
                            v954.origin.y = v585;
                            v954.size.width = v586;
                            v954.size.height = v587;
                            v939.origin.x = v560;
                            v939.origin.y = v561;
                            v939.size.width = v562;
                            v939.size.height = v563;
                            v940 = CGRectUnion(v939, v954);
                            v560 = v940.origin.x;
                            v561 = v940.origin.y;
                            v562 = v940.size.width;
                            v563 = v940.size.height;
                            --v582;
                          }

                          while (v582);
                        }

                        else
                        {
                          v560 = v873;
                          v561 = v874;
                          v562 = v875;
                          v563 = v876;
                        }

                        sub_1AAF14C40(&v877);
                        goto LABEL_297;
                      case 3uLL:
                        v565 = swift_projectBox();
                        v566 = v831;
                        sub_1AACAAD4C(v565, v831, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v566 + 48, &v877);
                        if (v880)
                        {
                          v562 = *(&v877 + 1);
                          v563 = *&v878;

LABEL_331:
                          v621 = *(v566 + 16);
                          v560 = *(v566 + 8) - v562 * 0.5;
                          sub_1AACAADB4(v566, type metadata accessor for SgPoint);
                          v561 = v621 - v563 * 0.5;
                          goto LABEL_297;
                        }

                        v881 = v877;
                        v882 = v878;
                        v883 = v879;
                        v620 = *(v566 + 24);
                        if (*(v566 + 40) == 1)
                        {
                          v563 = *(v566 + 32);
                          v562 = *(v566 + 24);

                          sub_1AAE45A14(&v881);
                          goto LABEL_331;
                        }

                        v622 = *(v566 + 16);
                        v849 = *(v566 + 8);
                        v851 = v622;
                        v623 = *(&v882 + 1);
                        v624 = v883;
                        v625 = sqrt(v620);

                        sub_1AACBB42C(&v881, v623);
                        v626 = (*(v624 + 16))(v623, v624);
                        v825 = v627;
                        v629 = v628;
                        v631 = v630;
                        sub_1AACAADB4(v566, type metadata accessor for SgPoint);
                        v562 = v625 * v629;
                        v563 = v625 * v631;
                        v560 = v849 + v625 * (v626 + -0.5);
                        v561 = v851 + v625 * (v825 + -0.5);
                        sub_1AAE45A14(&v881);
LABEL_297:
                        v935.origin.x = v453;
                        v935.origin.y = v454;
                        v935.size.width = v455;
                        v935.size.height = v69;
                        v952.origin.x = v560;
                        v952.origin.y = v561;
                        v952.size.width = v562;
                        v952.size.height = v563;
                        v936 = CGRectUnion(v935, v952);
                        v453 = v936.origin.x;
                        v454 = v936.origin.y;
                        v455 = v936.size.width;
                        v69 = v936.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v558 == v557)
                        {
                          goto LABEL_382;
                        }

                        break;
                      case 4uLL:
                        v598 = swift_projectBox();
                        v568 = v854;
                        sub_1AACAAD4C(v598, v854, type metadata accessor for SgRectangle);
                        v560 = v568[1];
                        v561 = v568[2];
                        v562 = v568[3];
                        v563 = v568[4];

                        v573 = type metadata accessor for SgRectangle;
                        goto LABEL_327;
                      case 5uLL:
                        v599 = swift_projectBox();
                        v600 = v855;
                        sub_1AACAAD4C(v599, v855, type metadata accessor for SgSector);
                        v601 = vaddvq_f64(vmulq_f64(*(v600 + 24), xmmword_1AAFC7450));
                        v602 = __sincos_stret(((*(v600 + 8) + *(v600 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v560 = v601 * v602.__cosval;
                        v561 = v601 * v602.__sinval;
                        v603 = (v600 + *(v856 + 52));
                        v604 = v603[1];
                        v562 = *v603 + *v603;

                        sub_1AACAADB4(v600, type metadata accessor for SgSector);
                        v563 = v604 + v604;
                        goto LABEL_297;
                      case 6uLL:
                        v588 = swift_projectBox();
                        v568 = v833;
                        sub_1AACAAD4C(v588, v833, type metadata accessor for SgRule);
                        v589 = v568[1];
                        v590 = v568[2];
                        v591 = v568[3];
                        v592 = v568[4];
                        if (v591 >= v589)
                        {
                          v560 = v568[1];
                        }

                        else
                        {
                          v560 = v568[3];
                        }

                        if (v592 >= v590)
                        {
                          v561 = v568[2];
                        }

                        else
                        {
                          v561 = v568[4];
                        }

                        v562 = vabdd_f64(v591, v589);
                        v563 = vabdd_f64(v592, v590);

                        v573 = type metadata accessor for SgRule;
                        goto LABEL_327;
                      case 7uLL:
                        v615 = swift_projectBox();
                        v568 = v850;
                        sub_1AACAAD4C(v615, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v560 = v616;
                        v561 = v617;
                        v562 = v618;
                        v563 = v619;
                        v573 = type metadata accessor for SgLine;
                        goto LABEL_327;
                      case 8uLL:
                        v567 = swift_projectBox();
                        v568 = v848;
                        sub_1AACAAD4C(v567, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v560 = v569;
                        v561 = v570;
                        v562 = v571;
                        v563 = v572;
                        v573 = type metadata accessor for SgArea;
                        goto LABEL_327;
                      case 9uLL:
                        v605 = swift_projectBox();
                        v606 = v847;
                        sub_1AACAAD4C(v605, v847, type metadata accessor for SgPath);
                        v607 = *(v606 + 24);
                        v904 = *(v606 + 8);
                        v905 = v607;
                        v906 = *(v606 + 40);

                        v608 = sub_1AAF8E8E4();
                        v560 = v873;
                        v561 = v874;
                        v562 = v875;
                        v563 = v876;
                        if ((v608 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v560 = v609;
                          v561 = v610;
                          v562 = v611;
                          v563 = v612;
                        }

                        v613 = type metadata accessor for SgPath;
                        v614 = v847;
                        goto LABEL_328;
                      case 0xAuLL:

                        v560 = v873;
                        v561 = v874;
                        v562 = v875;
                        v563 = v876;
                        goto LABEL_297;
                      case 0xBuLL:
                      case 0xCuLL:
                        v560 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v561 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v562 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v563 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_297;
                      case 0xDuLL:

                        v560 = 0.0;
                        v561 = 0.0;
                        v562 = 0.0;
                        v563 = 0.0;
                        goto LABEL_297;
                      case 0xEuLL:
                        goto LABEL_297;
                      default:
                        v593 = swift_projectBox();
                        v568 = v853;
                        sub_1AACAAD4C(v593, v853, type metadata accessor for SgGroup);

                        sub_1AAF58748();
                        v560 = v594;
                        v561 = v595;
                        v562 = v596;
                        v563 = v597;
                        v573 = type metadata accessor for SgGroup;
LABEL_327:
                        v613 = v573;
                        v614 = v568;
LABEL_328:
                        sub_1AACAADB4(v614, v613);
                        goto LABEL_297;
                    }
                  }
                }

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
LABEL_382:
                sub_1AAF14C40(&v884);
                v66 = v857;
                goto LABEL_383;
              case 3uLL:
                v457 = swift_projectBox();
                v458 = v822;
                sub_1AACAAD4C(v457, v822, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v458 + 48, &v884);
                if (v887)
                {
                  v455 = *(&v884 + 1);
                  v69 = *&v885;

LABEL_362:
                  v672 = *(v458 + 16);
                  v453 = *(v458 + 8) - v455 * 0.5;
                  sub_1AACAADB4(v458, type metadata accessor for SgPoint);
                  v454 = v672 - v69 * 0.5;
                  goto LABEL_231;
                }

                v877 = v884;
                v878 = v885;
                v879 = v886;
                if (*(v458 + 40) == 1)
                {
                  v69 = *(v458 + 32);
                  v455 = *(v458 + 24);

                  sub_1AAE45A14(&v877);
                  goto LABEL_362;
                }

                v712 = *(v458 + 8);
                v713 = *(v458 + 16);
                v714 = *(&v878 + 1);
                v715 = v879;
                v716 = sqrt(*(v458 + 24));

                sub_1AACBB42C(&v877, v714);
                v717 = (*(v715 + 16))(v714, v715);
                v719 = v718;
                v721 = v720;
                v723 = v722;
                sub_1AACAADB4(v458, type metadata accessor for SgPoint);
                v455 = v716 * v721;
                v69 = v716 * v723;
                v453 = v712 + v716 * (v717 + -0.5);
                v67 = v874;
                v724 = v716 * (v719 + -0.5);
                v70 = v875;
                v454 = v713 + v724;
                sub_1AAE45A14(&v877);
                goto LABEL_231;
              case 4uLL:
                v644 = swift_projectBox();
                v633 = v854;
                sub_1AACAAD4C(v644, v854, type metadata accessor for SgRectangle);
                v453 = v633[1];
                v454 = v633[2];
                v455 = v633[3];
                v69 = v633[4];

                v638 = type metadata accessor for SgRectangle;
                goto LABEL_346;
              case 5uLL:
                v647 = swift_projectBox();
                v648 = v855;
                sub_1AACAAD4C(v647, v855, type metadata accessor for SgSector);
                v649 = vaddvq_f64(vmulq_f64(*(v648 + 24), xmmword_1AAFC7450));
                v650 = __sincos_stret(((*(v648 + 8) + *(v648 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v453 = v649 * v650.__cosval;
                v454 = v649 * v650.__sinval;
                v651 = (v648 + *(v856 + 52));
                v652 = v651[1];
                v455 = *v651 + *v651;

                sub_1AACAADB4(v648, type metadata accessor for SgSector);
                v69 = v652 + v652;
                goto LABEL_231;
              case 6uLL:
                v632 = swift_projectBox();
                v633 = v823;
                sub_1AACAAD4C(v632, v823, type metadata accessor for SgRule);
                v634 = v633[1];
                v635 = v633[2];
                v636 = v633[3];
                v637 = v633[4];
                if (v636 >= v634)
                {
                  v453 = v633[1];
                }

                else
                {
                  v453 = v633[3];
                }

                if (v637 >= v635)
                {
                  v454 = v633[2];
                }

                else
                {
                  v454 = v633[4];
                }

                v455 = vabdd_f64(v636, v634);
                v69 = vabdd_f64(v637, v635);

                v638 = type metadata accessor for SgRule;
                goto LABEL_346;
              case 7uLL:
                v661 = swift_projectBox();
                v662 = v840;
                sub_1AACAAD4C(v661, v840, type metadata accessor for SgLine);
                v663 = *(v662 + 8);
                swift_beginAccess();
                v664 = *(v663 + 16);
                v665 = *(v664 + 16);
                if (v665)
                {
                  *&v877 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v665);
                  v666 = v664 + 32;
                  v667 = v877;
                  v69 = v876;
                  do
                  {
                    sub_1AAE5EDF4(v666, &v884);
                    v668 = *(&v884 + 1);
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v667 + 16) + 1, 1);
                      v667 = v877;
                    }

                    v670 = *(v667 + 16);
                    v669 = *(v667 + 24);
                    if (v670 >= v669 >> 1)
                    {
                      sub_1AAD1FAF4((v669 > 1), v670 + 1, 1);
                      v667 = v877;
                    }

                    *(v667 + 16) = v670 + 1;
                    *(v667 + 8 * v670 + 32) = v668;
                    v666 += 96;
                    --v665;
                  }

                  while (v665);
                }

                else
                {

                  v667 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                MEMORY[0x1EEE9AC00](v671);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v852 = v694;
                *&v814[-4] = v694;
                v851 = COERCE_DOUBLE(sub_1AAE840B8());
                *&v814[-3] = v851;
                v695 = sub_1AAE971D0();
                v814[-2] = v695;
                swift_getKeyPath();
                v696 = v860;
                v697 = COERCE_DOUBLE(sub_1AAF894FC(v667, sub_1AAF68E40));
                v699 = v698;
                v701 = v700;
                v860 = v696;

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v66 = v857;
                if (v701)
                {
                  goto LABEL_401;
                }

                v453 = v697;
                v703 = v699;
                if (v697 > v699)
                {
                  goto LABEL_479;
                }

                v704 = *(v663 + 16);
                v705 = *(v704 + 16);
                if (v705)
                {
                  *&v877 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v705);
                  v706 = v704 + 32;
                  v707 = v877;
                  v69 = v876;
                  v708 = v860;
                  do
                  {
                    sub_1AAE5EDF4(v706, &v884);
                    v709 = v885;
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v707 + 16) + 1, 1);
                      v707 = v877;
                    }

                    v711 = *(v707 + 16);
                    v710 = *(v707 + 24);
                    if (v711 >= v710 >> 1)
                    {
                      sub_1AAD1FAF4((v710 > 1), v711 + 1, 1);
                      v707 = v877;
                    }

                    *(v707 + 16) = v711 + 1;
                    *(v707 + 8 * v711 + 32) = v709;
                    v706 += 96;
                    --v705;
                  }

                  while (v705);

                  v66 = v857;
                }

                else
                {
                  v707 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  v708 = v860;
                }

                MEMORY[0x1EEE9AC00](v702);
                v725 = v851;
                *&v814[-4] = v852;
                *&v814[-3] = v725;
                v814[-2] = v695;
                swift_getKeyPath();
                v726 = COERCE_DOUBLE(sub_1AAF894FC(v707, sub_1AAF68E40));
                v728 = v727;
                v730 = v729;
                v860 = v708;

                if (v730)
                {
                  v453 = v68;
                  v454 = v67;
                  v455 = v70;
                }

                else
                {
                  v454 = v726;
                  if (v726 > v728)
                  {
                    goto LABEL_483;
                  }

                  v455 = v703 - v453;
                  v69 = v728 - v726;
                }

LABEL_401:
                sub_1AACAADB4(v840, type metadata accessor for SgLine);
                v72 = &unk_1AAF9E000;
                goto LABEL_231;
              case 8uLL:
                v459 = swift_projectBox();
                v460 = v839;
                sub_1AACAAD4C(v459, v839, type metadata accessor for SgArea);
                v461 = *(v460 + 8);
                v462 = *(*&v461 + 16);
                v463 = *(v462 + 16);
                if (v463)
                {
                  v852 = v461;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v464 = (v462 + 56);
                  v465 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  do
                  {
                    v466 = *(v464 - 2);
                    v467 = *v464;
                    v468 = swift_allocObject();
                    *(v468 + 32) = v466;
                    v469 = (v468 + 32);
                    *(v468 + 40) = v467;
                    v470 = *(v465 + 2);
                    v471 = v470 + 2;
                    if (__OFADD__(v470, 2))
                    {
                      goto LABEL_458;
                    }

                    v472 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v472 || (v473 = *(v465 + 3) >> 1, v473 < v471))
                    {
                      if (v470 <= v471)
                      {
                        v474 = v470 + 2;
                      }

                      else
                      {
                        v474 = v470;
                      }

                      v465 = sub_1AAD69810(v472, v474, 1, v465);
                      v473 = *(v465 + 3) >> 1;
                    }

                    v72 = &unk_1AAF9E000;
                    v475 = *(v465 + 2);
                    if (v473 - v475 < 2)
                    {
                      goto LABEL_459;
                    }

                    *&v465[8 * v475 + 32] = *v469;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v476 = *(v465 + 2);
                    v102 = __OFADD__(v476, 2);
                    v477 = v476 + 2;
                    if (v102)
                    {
                      goto LABEL_460;
                    }

                    *(v465 + 2) = v477;
                    v464 += 5;
                    --v463;
                  }

                  while (v463);

                  v66 = v857;
                  v461 = v852;
                }

                else
                {

                  v465 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                v673 = COERCE_DOUBLE(sub_1AACEC978(v465));
                v675 = v674;
                v677 = v676;

                if (v677)
                {
                  v453 = v68;
                  v454 = v67;
                  v455 = v70;
                }

                else
                {
                  v678 = *(*&v461 + 16);
                  v679 = *(v678 + 16);
                  if (v679)
                  {
                    v851 = v673;
                    v852 = v675;
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v680 = (v678 + 64);
                    v681 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v682 = *(v680 - 2);
                      v683 = *v680;
                      v684 = swift_allocObject();
                      *(v684 + 32) = v682;
                      v685 = (v684 + 32);
                      *(v684 + 40) = v683;
                      v686 = *(v681 + 2);
                      v687 = v686 + 2;
                      if (__OFADD__(v686, 2))
                      {
                        goto LABEL_471;
                      }

                      v688 = swift_isUniquelyReferenced_nonNull_native();
                      if (!v688 || (v689 = *(v681 + 3) >> 1, v689 < v687))
                      {
                        if (v686 <= v687)
                        {
                          v690 = v686 + 2;
                        }

                        else
                        {
                          v690 = v686;
                        }

                        v681 = sub_1AAD69810(v688, v690, 1, v681);
                        v689 = *(v681 + 3) >> 1;
                      }

                      v691 = *(v681 + 2);
                      if (v689 - v691 < 2)
                      {
                        goto LABEL_472;
                      }

                      *&v681[8 * v691 + 32] = *v685;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v692 = *(v681 + 2);
                      v102 = __OFADD__(v692, 2);
                      v693 = v692 + 2;
                      if (v102)
                      {
                        goto LABEL_473;
                      }

                      *(v681 + 2) = v693;
                      v680 += 5;
                      --v679;
                    }

                    while (v679);

                    v66 = v857;
                    v673 = v851;
                    v675 = v852;
                  }

                  else
                  {
                    v681 = MEMORY[0x1E69E7CC0];
                  }

                  v731 = COERCE_DOUBLE(sub_1AACEC978(v681));
                  v733 = v732;
                  v735 = v734;

                  if (v735)
                  {
                    v453 = v68;
                    v454 = v67;
                    v455 = v70;
                  }

                  else
                  {
                    v453 = v673;
                    v454 = v731;
                    v455 = v675 - v673;
                    v69 = v733 - v731;
                  }

                  v72 = &unk_1AAF9E000;
                }

                sub_1AACAADB4(v839, type metadata accessor for SgArea);
                goto LABEL_231;
              case 9uLL:
                v653 = swift_projectBox();
                v654 = v841;
                sub_1AACAAD4C(v653, v841, type metadata accessor for SgPath);
                v655 = *(v654 + 24);
                v907 = *(v654 + 8);
                v908 = v655;
                v909 = *(v654 + 40);

                v656 = sub_1AAF8E8E4();
                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
                if ((v656 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v453 = v657;
                  v454 = v658;
                  v455 = v659;
                  v69 = v660;
                }

                v645 = type metadata accessor for SgPath;
                v646 = v841;
                goto LABEL_351;
              case 0xAuLL:

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
                goto LABEL_231;
              case 0xBuLL:
              case 0xCuLL:
                v453 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v454 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v455 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v69 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                goto LABEL_231;
              case 0xDuLL:

                v453 = 0.0;
                v454 = 0.0;
                v455 = 0.0;
                v69 = 0.0;
                goto LABEL_231;
              case 0xEuLL:
                goto LABEL_231;
              default:
                v639 = swift_projectBox();
                v633 = v853;
                sub_1AACAAD4C(v639, v853, type metadata accessor for SgGroup);

                sub_1AAF58748();
                v453 = v640;
                v454 = v641;
                v455 = v642;
                v69 = v643;
                v638 = type metadata accessor for SgGroup;
LABEL_346:
                v645 = v638;
                v646 = v633;
LABEL_351:
                sub_1AACAADB4(v646, v645);
                goto LABEL_231;
            }
          }
        }

        v73 = v68;
        v872 = v67;
        v75 = v70;
        v76 = v69;
LABEL_450:
        sub_1AAF14C40(&v888);
        v74 = v872;
        goto LABEL_4;
      case 3uLL:
        v82 = swift_projectBox();
        v83 = v815;
        sub_1AACAAD4C(v82, v815, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v83 + 48, &v884);
        if (v887)
        {
          v75 = *(&v884 + 1);
          v84 = *&v885;

LABEL_426:
          v772 = *(v83 + 16);
          v773 = *(v83 + 8) - v75 * 0.5;
          sub_1AACAADB4(v83, type metadata accessor for SgPoint);
          v774 = v84;
          v775 = v84 * 0.5;
          v73 = v773;
          v74 = v772 - v775;
          v76 = v774;
          goto LABEL_4;
        }

        v888 = v884;
        v889 = v885;
        v890 = v886;
        if (*(v83 + 40) == 1)
        {
          v84 = *(v83 + 32);
          v75 = *(v83 + 24);

          sub_1AAE45A14(&v888);
          goto LABEL_426;
        }

        v796 = *(v83 + 8);
        v797 = *(v83 + 16);
        v798 = *(&v889 + 1);
        v799 = v890;
        v800 = sqrt(*(v83 + 24));

        sub_1AACBB42C(&v888, v798);
        v801 = (*(v799 + 16))(v798, v799);
        v803 = v802;
        v805 = v804;
        v807 = v806;
        sub_1AACAADB4(v83, type metadata accessor for SgPoint);
        v75 = v800 * v805;
        v808 = v800 * v807;
        v69 = v876;
        v809 = v801 + -0.5;
        v76 = v808;
        v810 = v796 + v800 * v809;
        v67 = v874;
        v811 = v803 + -0.5;
        v73 = v810;
        v812 = v800 * v811;
        v70 = v875;
        v813 = v797 + v812;
        sub_1AAE45A14(&v888);
        v74 = v813;
        goto LABEL_4;
      case 4uLL:
        v749 = swift_projectBox();
        v737 = v854;
        sub_1AACAAD4C(v749, v854, type metadata accessor for SgRectangle);
        v73 = *(v737 + 8);
        v742 = *(v737 + 16);
        v75 = *(v737 + 24);
        v76 = *(v737 + 32);

        v743 = type metadata accessor for SgRectangle;
        goto LABEL_422;
      case 5uLL:
        v750 = swift_projectBox();
        v751 = v855;
        sub_1AACAAD4C(v750, v855, type metadata accessor for SgSector);
        v752 = vaddvq_f64(vmulq_f64(*(v751 + 24), xmmword_1AAFC7450));
        v753 = __sincos_stret(((*(v751 + 8) + *(v751 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v73 = v752 * v753.__cosval;
        v754 = v752 * v753.__sinval;
        v755 = (v751 + *(v856 + 52));
        v756 = v755[1];
        v75 = *v755 + *v755;

        sub_1AACAADB4(v751, type metadata accessor for SgSector);
        v74 = v754;
        v76 = v756 + v756;
        goto LABEL_4;
      case 6uLL:
        v736 = swift_projectBox();
        v737 = v816;
        sub_1AACAAD4C(v736, v816, type metadata accessor for SgRule);
        v738 = *(v737 + 8);
        v739 = *(v737 + 16);
        v740 = *(v737 + 24);
        v741 = *(v737 + 32);
        if (v740 >= v738)
        {
          v73 = *(v737 + 8);
        }

        else
        {
          v73 = *(v737 + 24);
        }

        if (v741 >= v739)
        {
          v742 = *(v737 + 16);
        }

        else
        {
          v742 = *(v737 + 32);
        }

        v75 = vabdd_f64(v740, v738);
        v76 = vabdd_f64(v741, v739);

        v743 = type metadata accessor for SgRule;
        goto LABEL_422;
      case 7uLL:
        v767 = swift_projectBox();
        v737 = v850;
        sub_1AACAAD4C(v767, v850, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v73 = v768;
        v742 = v769;
        v75 = v770;
        v76 = v771;
        v743 = type metadata accessor for SgLine;
        goto LABEL_422;
      case 8uLL:
        v85 = swift_projectBox();
        v86 = v834;
        sub_1AACAAD4C(v85, v834, type metadata accessor for SgArea);
        v872 = *(v86 + 8);
        v87 = *(*&v872 + 16);
        v88 = *(v87 + 16);
        if (!v88)
        {

          v90 = MEMORY[0x1E69E7CC0];
LABEL_428:
          *&v776 = COERCE_DOUBLE(sub_1AACEC978(v90));
          v778 = v777;
          v780 = v779;

          if (v780)
          {
            v73 = v68;
            v781 = v67;
            v75 = v70;
            v76 = v69;
          }

          else
          {
            v782 = *(*&v872 + 16);
            v783 = MEMORY[0x1E69E7CC0];
            *&v884 = MEMORY[0x1E69E7CC0];
            v784 = *(v782 + 16);
            if (v784)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

              v785 = v72;
              v786 = (v782 + 64);
              do
              {
                v787 = *(v786 - 2);
                v788 = *v786;
                v786 += 5;
                v789 = swift_allocObject();
                *(v789 + 16) = v785[43];
                *(v789 + 32) = v787;
                *(v789 + 40) = v788;
                sub_1AADC8F2C(v789);
                --v784;
              }

              while (v784);

              v783 = v884;
              v72 = v785;
            }

            v790 = *&v776;
            v791 = COERCE_DOUBLE(sub_1AACEC978(v783));
            v793 = v792;
            v795 = v794;

            if (v795)
            {
              v73 = v68;
            }

            else
            {
              v73 = v790;
            }

            if (v795)
            {
              v781 = v67;
            }

            else
            {
              v781 = v791;
            }

            if (v795)
            {
              v75 = v70;
            }

            else
            {
              v75 = v778 - v790;
            }

            if (v795)
            {
              v76 = v69;
            }

            else
            {
              v76 = v793 - v791;
            }
          }

          sub_1AACAADB4(v834, type metadata accessor for SgArea);
          v74 = v781;
LABEL_4:
          v77 = v73;
          v78 = v75;
          v79 = v76;
          v866 = CGRectUnion(v866, *(&v74 - 1));

          v71 = v864;
          if (v864 == v859)
          {
            return;
          }

          continue;
        }

        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

        v89 = (v87 + 56);
        v90 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v91 = *(v89 - 2);
          v92 = *v89;
          v93 = swift_allocObject();
          *(v93 + 32) = v91;
          v94 = (v93 + 32);
          *(v93 + 40) = v92;
          v95 = *(v90 + 2);
          v96 = v95 + 2;
          if (__OFADD__(v95, 2))
          {
            goto LABEL_465;
          }

          v97 = swift_isUniquelyReferenced_nonNull_native();
          if (!v97 || (v98 = *(v90 + 3) >> 1, v98 < v96))
          {
            if (v95 <= v96)
            {
              v99 = v95 + 2;
            }

            else
            {
              v99 = v95;
            }

            v90 = sub_1AAD69810(v97, v99, 1, v90);
            v98 = *(v90 + 3) >> 1;
          }

          v100 = *(v90 + 2);
          if (v98 - v100 < 2)
          {
            break;
          }

          *&v90[8 * v100 + 32] = *v94;
          swift_setDeallocating();
          swift_deallocClassInstance();
          v101 = *(v90 + 2);
          v102 = __OFADD__(v101, 2);
          v103 = v101 + 2;
          if (v102)
          {
            goto LABEL_467;
          }

          *(v90 + 2) = v103;
          v89 += 5;
          if (!--v88)
          {

            v66 = v857;
            v72 = &unk_1AAF9E000;
            goto LABEL_428;
          }
        }

LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
        return;
      case 9uLL:
        v757 = swift_projectBox();
        v758 = v835;
        sub_1AACAAD4C(v757, v835, type metadata accessor for SgPath);
        v759 = *(v758 + 24);
        v910 = *(v758 + 8);
        v911 = v759;
        v912 = *(v758 + 40);

        v760 = sub_1AAF8E8E4();
        v73 = v68;
        v761 = v67;
        v75 = v70;
        v76 = v69;
        if ((v760 & 1) == 0)
        {
          sub_1AAF8E874();
          v73 = v762;
          v75 = v763;
          v76 = v764;
        }

        v765 = type metadata accessor for SgPath;
        v766 = v835;
        v742 = v761;
        goto LABEL_423;
      case 0xAuLL:

        v73 = v68;
        v74 = v67;
        v75 = v70;
        v76 = v69;
        goto LABEL_4;
      case 0xBuLL:
      case 0xCuLL:
        v73 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v81 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v75 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v76 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        v74 = v81;
        goto LABEL_4;
      case 0xDuLL:

        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
        goto LABEL_4;
      case 0xEuLL:
        goto LABEL_4;
      default:
        v744 = swift_projectBox();
        v737 = v853;
        sub_1AACAAD4C(v744, v853, type metadata accessor for SgGroup);

        sub_1AAF58748();
        v73 = v745;
        v742 = v746;
        v75 = v747;
        v76 = v748;
        v743 = type metadata accessor for SgGroup;
LABEL_422:
        v765 = v743;
        v766 = v737;
LABEL_423:
        sub_1AACAADB4(v766, v765);
        v74 = v742;
        goto LABEL_4;
    }
  }
}

double sub_1AAF5D32C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AAD12A5C(*(a2 + 8), &v11);
  v5 = *(v11 + 2);
  if (v5)
  {
    v6 = v12;
    v7 = v11 + 40;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v11 = v8;
      v12 = v9;
      v6(&v13, &v11);
      sub_1AACAAE1C(a1, a3, v13);

      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AAF5D3F8()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v151 = (&v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v147 = (&v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v146 = (&v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 8);
  v20 = *MEMORY[0x1E695F050];
  v21 = *(MEMORY[0x1E695F050] + 8);
  v22 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v24 = *(v19 + 16);
  if (!v24)
  {
    return;
  }

  v25 = 0;
  v26 = v19 + 32;
  height = *(MEMORY[0x1E695F050] + 24);
  width = *(MEMORY[0x1E695F050] + 16);
  y = *(MEMORY[0x1E695F050] + 8);
  x = *MEMORY[0x1E695F050];
  v152 = *(v19 + 16);
  v153 = v19 + 32;
  v144 = v16;
  v145 = v3;
  v142 = v6;
  v143 = v19;
  v157 = v21;
  v158 = v20;
  v155 = v23;
  v156 = v22;
  while (2)
  {
    if (v25 >= *(v19 + 16))
    {
      goto LABEL_69;
    }

    v31 = *(v26 + 8 * v25++);
    switch(*&v31 >> 60)
    {
      case 1:
        v52 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v53 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        sub_1AAF5EA88(v54, v52, v53);
        v20 = v55;
        v21 = v56;
        v22 = v57;
        v23 = v58;
        v26 = v153;

        goto LABEL_4;
      case 2:
        sub_1AAD117A0((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 16, &v159);

        sub_1AAF5D3F8();
        v20 = v59;
        v21 = v60;
        v22 = v61;
        v23 = v62;
        sub_1AAF14C40(&v159);
        goto LABEL_4;
      case 3:
        v32 = swift_projectBox();
        sub_1AACAAD4C(v32, v16, type metadata accessor for SgPoint);
        sub_1AAD9ADE4((v16 + 6), &v159);
        if (v162)
        {
          v22 = *(&v159 + 1);
          v23 = *&v160;

LABEL_44:
          v97 = v16[2];
          v20 = v16[1] - v22 * 0.5;
          sub_1AACAADB4(v16, type metadata accessor for SgPoint);
          v21 = v97 - v23 * 0.5;
          goto LABEL_4;
        }

        v163 = v159;
        v164 = v160;
        v165 = v161;
        v96 = v16[3];
        if (*(v16 + 40) == 1)
        {
          v23 = v16[4];
          v22 = v16[3];

          sub_1AAE45A14(&v163);
          goto LABEL_44;
        }

        v120 = v16[2];
        v141 = v16[1];
        v154 = v120;
        v121 = v19;
        v122 = *(&v164 + 1);
        v123 = v165;
        v124 = sqrt(v96);

        sub_1AACBB42C(&v163, v122);
        v125 = *(v123 + 16);
        v126 = v122;
        v26 = v153;
        v127 = v123;
        v19 = v121;
        v3 = v145;
        v128 = v125(v126, v127);
        v140 = v129;
        v131 = v130;
        v133 = v132;
        sub_1AACAADB4(v16, type metadata accessor for SgPoint);
        v22 = v124 * v131;
        v23 = v124 * v133;
        v20 = v141 + v124 * (v128 + -0.5);
        v21 = v154 + v124 * (v140 + -0.5);
        sub_1AAE45A14(&v163);
        goto LABEL_4;
      case 4:
        v75 = swift_projectBox();
        v64 = v147;
        sub_1AACAAD4C(v75, v147, type metadata accessor for SgRectangle);
        v20 = v64[1];
        v21 = v64[2];
        v22 = v64[3];
        v23 = v64[4];

        v69 = type metadata accessor for SgRectangle;
        goto LABEL_40;
      case 5:
        v76 = swift_projectBox();
        v77 = v148;
        sub_1AACAAD4C(v76, v148, type metadata accessor for SgSector);
        v78 = vaddvq_f64(vmulq_f64(*(v77 + 24), xmmword_1AAFC7450));
        v79 = __sincos_stret(((*(v77 + 8) + *(v77 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v20 = v78 * v79.__cosval;
        v21 = v78 * v79.__sinval;
        v80 = (v77 + *(v149 + 52));
        v81 = v80[1];
        v22 = *v80 + *v80;

        sub_1AACAADB4(v77, type metadata accessor for SgSector);
        v23 = v81 + v81;
        goto LABEL_4;
      case 6:
        v63 = swift_projectBox();
        v64 = v150;
        sub_1AACAAD4C(v63, v150, type metadata accessor for SgRule);
        v65 = v64[1];
        v66 = v64[2];
        v67 = v64[3];
        v68 = v64[4];
        if (v67 >= v65)
        {
          v20 = v64[1];
        }

        else
        {
          v20 = v64[3];
        }

        if (v68 >= v66)
        {
          v21 = v64[2];
        }

        else
        {
          v21 = v64[4];
        }

        v22 = vabdd_f64(v67, v65);
        v23 = vabdd_f64(v68, v66);

        v69 = type metadata accessor for SgRule;
        goto LABEL_40;
      case 7:
        v91 = swift_projectBox();
        v64 = v151;
        sub_1AACAAD4C(v91, v151, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v20 = v92;
        v21 = v93;
        v22 = v94;
        v23 = v95;
        v69 = type metadata accessor for SgLine;
        goto LABEL_40;
      case 8:
        v33 = swift_projectBox();
        sub_1AACAAD4C(v33, v6, type metadata accessor for SgArea);
        v34 = v6[1];
        v35 = *(*&v34 + 16);
        v36 = *(*&v35 + 16);
        if (!v36)
        {

          v38 = MEMORY[0x1E69E7CC0];
LABEL_46:
          v140 = COERCE_DOUBLE(sub_1AACEC978(v38));
          v141 = v98;
          v100 = v99;

          v21 = v157;
          v20 = v158;
          v23 = v155;
          v22 = v156;
          v24 = v152;
          if ((v100 & 1) == 0)
          {
            v101 = *(*&v34 + 16);
            v102 = *(v101 + 16);
            if (v102)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
              v154 = v103;

              v139 = v101;
              v104 = (v101 + 64);
              v105 = MEMORY[0x1E69E7CC0];
              do
              {
                v106 = v25;
                v107 = v31;
                v108 = *(v104 - 2);
                v109 = *v104;
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1AAF9E2B0;
                *(inited + 32) = v108;
                v111 = (inited + 32);
                *(inited + 40) = v109;
                v112 = *(v105 + 2);
                v113 = v112 + 2;
                if (__OFADD__(v112, 2))
                {
                  goto LABEL_70;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (!isUniquelyReferenced_nonNull_native || (v115 = *(v105 + 3) >> 1, v115 < v113))
                {
                  if (v112 <= v113)
                  {
                    v116 = v112 + 2;
                  }

                  else
                  {
                    v116 = v112;
                  }

                  v105 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v116, 1, v105);
                  v115 = *(v105 + 3) >> 1;
                }

                v31 = v107;
                v117 = *(v105 + 2);
                if (v115 - v117 < 2)
                {
                  goto LABEL_71;
                }

                v25 = v106;
                *&v105[8 * v117 + 32] = *v111;

                v118 = *(v105 + 2);
                v50 = __OFADD__(v118, 2);
                v119 = v118 + 2;
                if (v50)
                {
                  goto LABEL_72;
                }

                *(v105 + 2) = v119;
                v104 += 5;
                --v102;
              }

              while (v102);

              v3 = v145;
              v6 = v142;
            }

            else
            {
              v105 = MEMORY[0x1E69E7CC0];
            }

            v134 = COERCE_DOUBLE(sub_1AACEC978(v105));
            v136 = v135;
            v138 = v137;

            v21 = v157;
            v20 = v158;
            v23 = v155;
            v22 = v156;
            v24 = v152;
            v26 = v153;
            if ((v138 & 1) == 0)
            {
              v20 = v140;
              v21 = v134;
              v22 = v141 - v140;
              v23 = v136 - v134;
            }
          }

          sub_1AACAADB4(v6, type metadata accessor for SgArea);
          v19 = v143;
          v16 = v144;
LABEL_4:
          v169.origin.x = x;
          v169.origin.y = y;
          v169.size.width = width;
          v169.size.height = height;
          v171.origin.x = v20;
          v171.origin.y = v21;
          v171.size.width = v22;
          v171.size.height = v23;
          v170 = CGRectUnion(v169, v171);
          x = v170.origin.x;
          y = v170.origin.y;
          width = v170.size.width;
          height = v170.size.height;

          v21 = v157;
          v20 = v158;
          v23 = v155;
          v22 = v156;
          if (v25 == v24)
          {
            return;
          }

          continue;
        }

        v141 = v6[1];
        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
        v154 = v31;

        v140 = v35;
        v37 = (*&v35 + 56);
        v38 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v39 = *(v37 - 2);
          v40 = *v37;
          v41 = swift_initStackObject();
          *(v41 + 32) = v39;
          v42 = (v41 + 32);
          *(v41 + 40) = v40;
          v43 = *(v38 + 2);
          v44 = v43 + 2;
          if (__OFADD__(v43, 2))
          {
            break;
          }

          v45 = swift_isUniquelyReferenced_nonNull_native();
          if (!v45 || (v46 = *(v38 + 3) >> 1, v46 < v44))
          {
            if (v43 <= v44)
            {
              v47 = v43 + 2;
            }

            else
            {
              v47 = v43;
            }

            v38 = sub_1AAD69810(v45, v47, 1, v38);
            v46 = *(v38 + 3) >> 1;
          }

          v48 = *(v38 + 2);
          if (v46 - v48 < 2)
          {
            goto LABEL_67;
          }

          *&v38[8 * v48 + 32] = *v42;
          swift_setDeallocating();
          v49 = *(v38 + 2);
          v50 = __OFADD__(v49, 2);
          v51 = v49 + 2;
          if (v50)
          {
            goto LABEL_68;
          }

          *(v38 + 2) = v51;
          v37 += 5;
          if (!--v36)
          {

            v3 = v145;
            v34 = v141;
            v6 = v142;
            v26 = v153;
            v31 = v154;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      case 9:
        v82 = swift_projectBox();
        sub_1AACAAD4C(v82, v3, type metadata accessor for SgPath);
        v83 = *(v3 + 24);
        v166 = *(v3 + 8);
        v167 = v83;
        v168 = v3[40];

        v84 = sub_1AAF8E8E4();
        v21 = v157;
        v20 = v158;
        v23 = v155;
        v22 = v156;
        if ((v84 & 1) == 0)
        {
          sub_1AAF8E874();
          v20 = v85;
          v21 = v86;
          v22 = v87;
          v23 = v88;
        }

        v89 = type metadata accessor for SgPath;
        v90 = v3;
        goto LABEL_41;
      case 0xALL:

        v21 = v157;
        v20 = v158;
        v23 = v155;
        v22 = v156;
        goto LABEL_4;
      case 0xBLL:
      case 0xCLL:
        v20 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v21 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v22 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v23 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        goto LABEL_4;
      case 0xDLL:

        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        goto LABEL_4;
      case 0xELL:
        goto LABEL_4;
      default:
        v70 = swift_projectBox();
        v64 = v146;
        sub_1AACAAD4C(v70, v146, type metadata accessor for SgGroup);

        sub_1AAF58748();
        v20 = v71;
        v21 = v72;
        v22 = v73;
        v23 = v74;
        v69 = type metadata accessor for SgGroup;
LABEL_40:
        v89 = v69;
        v90 = v64;
LABEL_41:
        sub_1AACAADB4(v90, v89);
        goto LABEL_4;
    }
  }
}

void sub_1AAF5DFF0()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = (&v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  v25 = *(v20 + 16);
  if (v25)
  {
    v26 = 0;
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    v102 = v17;
    v111 = v21;
    v110 = v22;
    v109 = v23;
    v108 = v24;
    while (v26 < *(v20 + 16))
    {
      v40 = *(v20 + 32 + 8 * v26++);
      switch(v40 >> 60)
      {
        case 1uLL:
          v47 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v48 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          sub_1AAF62ADC(v49, v47, v48);
          v21 = v50;
          v22 = v51;
          v23 = v52;
          v24 = v53;
          v17 = v102;

          goto LABEL_12;
        case 2uLL:
          sub_1AAD117A0((v40 & 0xFFFFFFFFFFFFFFFLL) + 16, &v112);

          sub_1AAF5DFF0();
          v21 = v54;
          v22 = v55;
          v23 = v56;
          v24 = v57;
          sub_1AAF14C40(&v112);
          goto LABEL_12;
        case 3uLL:
          v41 = swift_projectBox();
          sub_1AACAAD4C(v41, v17, type metadata accessor for SgPoint);
          sub_1AAD9ADE4((v17 + 6), &v112);
          if (v115)
          {
            v23 = *(&v112 + 1);
            v24 = *&v113;

LABEL_32:
            v81 = v17[2];
            v21 = v17[1] - v23 * 0.5;
            sub_1AACAADB4(v17, type metadata accessor for SgPoint);
            v22 = v81 - v24 * 0.5;
            goto LABEL_12;
          }

          v116 = v112;
          v117 = v113;
          v118 = v114;
          if (*(v17 + 40) == 1)
          {
            v24 = v17[4];
            v23 = v17[3];

            sub_1AAE45A14(&v116);
            goto LABEL_32;
          }

          v82 = v17[3];
          v83 = v17[2];
          v99 = v17[1];
          v100 = v83;
          v101 = v9;
          v84 = v6;
          v85 = v3;
          v86 = *(&v117 + 1);
          v87 = v118;
          v88 = sqrt(v82);

          sub_1AACBB42C(&v116, v86);
          v89 = *(v87 + 16);
          v90 = v86;
          v17 = v102;
          v91 = v87;
          v3 = v85;
          v6 = v84;
          v9 = v101;
          v92 = v89(v90, v91);
          v98 = v93;
          v95 = v94;
          v97 = v96;
          sub_1AACAADB4(v17, type metadata accessor for SgPoint);
          v23 = v88 * v95;
          v24 = v88 * v97;
          v21 = v99 + v88 * (v92 + -0.5);
          v22 = v100 + v88 * (v98 + -0.5);
          sub_1AAE45A14(&v116);
LABEL_12:
          v122.origin.x = x;
          v122.origin.y = y;
          v122.size.width = width;
          v122.size.height = height;
          v124.origin.x = v21;
          v124.origin.y = v22;
          v124.size.width = v23;
          v124.size.height = v24;
          v123 = CGRectUnion(v122, v124);
          x = v123.origin.x;
          y = v123.origin.y;
          width = v123.size.width;
          height = v123.size.height;

          v21 = v111;
          v22 = v110;
          v23 = v109;
          v24 = v108;
          if (v25 == v26)
          {
            return;
          }

          break;
        case 4uLL:
          v62 = swift_projectBox();
          v32 = v104;
          sub_1AACAAD4C(v62, v104, type metadata accessor for SgRectangle);
          v21 = v32[1];
          v22 = v32[2];
          v23 = v32[3];
          v24 = v32[4];

          v37 = type metadata accessor for SgRectangle;
          goto LABEL_10;
        case 5uLL:
          v63 = swift_projectBox();
          v64 = v105;
          sub_1AACAAD4C(v63, v105, type metadata accessor for SgSector);
          v65 = vaddvq_f64(vmulq_f64(*(v64 + 24), xmmword_1AAFC7450));
          v66 = __sincos_stret(((*(v64 + 8) + *(v64 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
          v21 = v65 * v66.__cosval;
          v22 = v65 * v66.__sinval;
          v67 = (v64 + *(v106 + 52));
          v68 = v67[1];
          v23 = *v67 + *v67;

          sub_1AACAADB4(v64, type metadata accessor for SgSector);
          v24 = v68 + v68;
          goto LABEL_12;
        case 6uLL:
          v31 = swift_projectBox();
          v32 = v107;
          sub_1AACAAD4C(v31, v107, type metadata accessor for SgRule);
          v33 = v32[1];
          v34 = v32[2];
          v35 = v32[3];
          v36 = v32[4];
          if (v35 >= v33)
          {
            v21 = v32[1];
          }

          else
          {
            v21 = v32[3];
          }

          if (v36 >= v34)
          {
            v22 = v32[2];
          }

          else
          {
            v22 = v32[4];
          }

          v23 = vabdd_f64(v35, v33);
          v24 = vabdd_f64(v36, v34);

          v37 = type metadata accessor for SgRule;
          goto LABEL_10;
        case 7uLL:
          v76 = swift_projectBox();
          sub_1AACAAD4C(v76, v9, type metadata accessor for SgLine);

          sub_1AAF56CF0();
          v21 = v77;
          v22 = v78;
          v23 = v79;
          v24 = v80;
          v38 = type metadata accessor for SgLine;
          v39 = v9;
          goto LABEL_11;
        case 8uLL:
          v42 = swift_projectBox();
          sub_1AACAAD4C(v42, v6, type metadata accessor for SgArea);

          sub_1AAF58424();
          v21 = v43;
          v22 = v44;
          v23 = v45;
          v24 = v46;
          v38 = type metadata accessor for SgArea;
          v39 = v6;
          goto LABEL_11;
        case 9uLL:
          v69 = swift_projectBox();
          sub_1AACAAD4C(v69, v3, type metadata accessor for SgPath);
          v70 = *(v3 + 24);
          v119 = *(v3 + 8);
          v120 = v70;
          v121 = v3[40];

          v71 = sub_1AAF8E8E4();
          v21 = v111;
          v22 = v110;
          v23 = v109;
          v24 = v108;
          if ((v71 & 1) == 0)
          {
            sub_1AAF8E874();
            v21 = v72;
            v22 = v73;
            v23 = v74;
            v24 = v75;
          }

          v38 = type metadata accessor for SgPath;
          v39 = v3;
          goto LABEL_11;
        case 0xAuLL:
          v23 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
          v24 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v21 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v23;
          v22 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v24;

          goto LABEL_12;
        case 0xBuLL:
        case 0xCuLL:
          v21 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v22 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v23 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v24 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

          goto LABEL_12;
        case 0xDuLL:

          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          goto LABEL_12;
        case 0xEuLL:
          goto LABEL_12;
        default:
          v58 = swift_projectBox();
          v32 = v103;
          sub_1AACAAD4C(v58, v103, type metadata accessor for SgGroup);

          v21 = sub_1AAD05240();
          v22 = v59;
          v23 = v60;
          v24 = v61;
          v37 = type metadata accessor for SgGroup;
LABEL_10:
          v38 = v37;
          v39 = v32;
LABEL_11:
          sub_1AACAADB4(v39, v38);
          goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_1AAF5E9CC(void *a1, uint64_t a2)
{
  sub_1AAD12A5C(*(v2 + 8), &v12);
  v5 = *(v12 + 2);
  if (v5)
  {
    v6 = v13;
    v7 = v12 + 40;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v12 = v8;
      v13 = v9;
      v6(&v11, &v12);
      sub_1AACAAE1C(a1, a2, v11);

      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AAF5EA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v748 = &v737 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v751 = &v737 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v754 = &v737 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v759 = &v737 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v761 = &v737 - v13;
  v14 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v747 = &v737 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v749 = &v737 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v753 = &v737 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v758 = &v737 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v760 = &v737 - v23;
  v24 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v750 = &v737 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v752 = &v737 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v757 = &v737 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v756 = (&v737 - v31);
  v32 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v739 = &v737 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v741 = (&v737 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v743 = (&v737 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v745 = (&v737 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v746 = (&v737 - v41);
  v766 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v766);
  v765 = &v737 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v764 = (&v737 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v738 = &v737 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v740 = &v737 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v742 = &v737 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v744 = &v737 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v755 = &v737 - v54;
  v55 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v763 = (&v737 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v819 = a2;

  sub_1AADC9018(v57);
  v58 = v819;
  v59 = *(MEMORY[0x1E695F050] + 8);
  v805 = *MEMORY[0x1E695F050];
  v804 = v59;
  v60 = *(MEMORY[0x1E695F050] + 24);
  v803 = *(MEMORY[0x1E695F050] + 16);
  v770 = *(v819 + 16);
  if (!v770)
  {
    v786.origin.x = v805;
    v786.origin.y = v804;
    v786.size.width = v803;
    v786.size.height = v60;
LABEL_374:

    return;
  }

  v61 = 0;
  v777 = 0;
  v769 = v819 + 32;
  v62 = &unk_1AAF9E000;
  v786.size.width = v803;
  v786.size.height = v60;
  v786.origin.x = v805;
  v786.origin.y = v804;
  v762 = v819;
  v802 = v60;
  while (2)
  {
    if (v61 >= *(v58 + 16))
    {
      goto LABEL_388;
    }

    v79 = *(v769 + 8 * v61);
    v784 = v61 + 1;
    v69 = v805;
    v75 = v804;
    v77 = v803;
    v76 = v60;
    v790 = v79;
    switch(v79 >> 60)
    {
      case 1uLL:
        v105 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v106 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        sub_1AAF5EA88(v107, v105, v106);
        v69 = v108;
        v70 = v60;
        v71 = v109;
        v72 = v110;
        v73 = v111;

        goto LABEL_11;
      case 2uLL:
        sub_1AAD117A0((v79 & 0xFFFFFFFFFFFFFFFLL) + 16, &v823);
        v112 = *(&v823 + 1);
        v113 = *(*(&v823 + 1) + 16);

        v773 = v113;
        if (v113)
        {
          v114 = 0;
          v771 = v112;
          v772 = v112 + 32;
          v788 = v60;
          v789 = v803;
          v787 = v804;
          v69 = v805;
          while (1)
          {
            if (v114 >= *(v112 + 16))
            {
              goto LABEL_387;
            }

            v122 = *(v772 + 8 * v114);
            v785 = v114 + 1;
            v115 = v805;
            v116 = v804;
            v117 = v803;
            v118 = v60;
            v793 = v69;
            switch(v122 >> 60)
            {
              case 1uLL:
                v146 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v147 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                sub_1AAF5EA88(v148, v146, v147);
                v115 = v149;
                v150 = v60;
                v152 = v151;
                v117 = v153;
                v118 = v154;

                goto LABEL_281;
              case 2uLL:
                sub_1AAD117A0((v122 & 0xFFFFFFFFFFFFFFFLL) + 16, &v816);
                v155 = *(&v816 + 1);
                v156 = *(*(&v816 + 1) + 16);

                v776 = v156;
                if (v156)
                {
                  v157 = 0;
                  v775 = v155 + 32;
                  v118 = v60;
                  v117 = v803;
                  v792 = v804;
                  v115 = v805;
                  v767 = v155;
                  v768 = v122;
                  while (2)
                  {
                    if (v157 < *(v155 + 16))
                    {
                      v175 = *(v775 + 8 * v157);
                      v791 = v157 + 1;
                      v164 = v805;
                      v172 = v804;
                      v166 = v803;
                      v171 = v60;
                      v795 = v115;
                      v796 = v117;
                      v794 = v118;
                      v800 = v175;
                      switch(*&v175 >> 60)
                      {
                        case 1:
                          v193 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v194 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                          sub_1AAF5EA88(v195, v193, v194);
                          v164 = v196;
                          v801 = v197;
                          v166 = v198;
                          v167 = v60;
                          v168 = v69;
                          v169 = v199;

                          goto LABEL_68;
                        case 2:
                          sub_1AAD117A0((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 16, &v813);
                          v200 = *(&v813 + 1);
                          v201 = *(*(&v813 + 1) + 16);

                          v780 = v201;
                          if (v201)
                          {
                            v202 = 0;
                            v778 = v200;
                            v779 = v200 + 32;
                            v797 = v60;
                            v166 = v803;
                            v801 = v804;
                            v164 = v805;
                            while (1)
                            {
                              if (v202 >= *(v200 + 16))
                              {
                                goto LABEL_378;
                              }

                              v207 = *(v779 + 8 * v202++);
                              v203 = v805;
                              v204 = v804;
                              v205 = v803;
                              v206 = v60;
                              *&v799 = v164;
                              *&v798 = v166;
                              v782 = v207;
                              switch(v207 >> 60)
                              {
                                case 1uLL:
                                  v221 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                  v222 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                  sub_1AAF5EA88(v223, v221, v222);
                                  v203 = v224;
                                  v204 = v225;
                                  v205 = v226;
                                  v206 = v227;

                                  goto LABEL_85;
                                case 2uLL:
                                  sub_1AAD117A0((v207 & 0xFFFFFFFFFFFFFFFLL) + 16, &v819);
                                  v228 = *(&v819 + 1);
                                  v229 = *(*(&v819 + 1) + 16);

                                  v783 = v229;
                                  if (v229)
                                  {
                                    v230 = 0;
                                    v781 = v228 + 32;
                                    v206 = v802;
                                    v205 = v803;
                                    v204 = v804;
                                    v203 = v805;
                                    v231 = v228;
                                    v774 = v228;
                                    while (1)
                                    {
                                      if (v230 >= *(v231 + 16))
                                      {
                                        goto LABEL_377;
                                      }

                                      v236 = *(v781 + 8 * v230++);
                                      x = v805;
                                      y = v804;
                                      width = v803;
                                      height = v802;
                                      switch(v236 >> 60)
                                      {
                                        case 1uLL:
                                          v252 = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                          v253 = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                          sub_1AAF5EA88(v254, v252, v253);
                                          x = v255;
                                          y = v256;
                                          width = v257;
                                          height = v258;

                                          v231 = v774;

                                          goto LABEL_100;
                                        case 2uLL:
                                          sub_1AAD117A0((v236 & 0xFFFFFFFFFFFFFFFLL) + 16, &v806);
                                          v259 = *(&v806 + 1);
                                          v260 = *(*(&v806 + 1) + 16);

                                          if (v260)
                                          {
                                            v261 = 0;
                                            height = v802;
                                            width = v803;
                                            y = v804;
                                            x = v805;
                                            while (v261 < *(v259 + 16))
                                            {
                                              v262 = v261 + 1;
                                              v263 = *(v259 + 32 + 8 * v261);

                                              v853.origin.x = sub_1AAF517A0(v263);
                                              v853.origin.y = v264;
                                              v853.size.width = v265;
                                              v853.size.height = v266;
                                              v849.origin.x = x;
                                              v849.origin.y = y;
                                              v849.size.width = width;
                                              v849.size.height = height;
                                              v850 = CGRectUnion(v849, v853);
                                              x = v850.origin.x;
                                              y = v850.origin.y;
                                              width = v850.size.width;
                                              height = v850.size.height;

                                              v261 = v262;
                                              if (v260 == v262)
                                              {
                                                goto LABEL_154;
                                              }
                                            }

LABEL_376:
                                            __break(1u);
LABEL_377:
                                            __break(1u);
LABEL_378:
                                            __break(1u);
LABEL_379:
                                            __break(1u);
                                            goto LABEL_380;
                                          }

                                          x = v805;
                                          y = v804;
                                          width = v803;
                                          height = v802;
LABEL_154:
                                          sub_1AAF14C40(&v806);
LABEL_155:
                                          v155 = v767;
                                          v231 = v774;
LABEL_100:
                                          v847.origin.x = v203;
                                          v847.origin.y = v204;
                                          v847.size.width = v205;
                                          v847.size.height = v206;
                                          v852.origin.x = x;
                                          v852.origin.y = y;
                                          v852.size.width = width;
                                          v852.size.height = height;
                                          v848 = CGRectUnion(v847, v852);
                                          v203 = v848.origin.x;
                                          v204 = v848.origin.y;
                                          v205 = v848.size.width;
                                          v206 = v848.size.height;

                                          v164 = *&v799;
                                          v166 = *&v798;
                                          if (v230 == v783)
                                          {
                                            goto LABEL_196;
                                          }

                                          break;
                                        case 3uLL:
                                          v237 = swift_projectBox();
                                          v238 = v755;
                                          sub_1AACAAD4C(v237, v755, type metadata accessor for SgPoint);
                                          sub_1AAD9ADE4(v238 + 48, &v806);
                                          if (v809)
                                          {
                                            width = *(&v806 + 1);
                                            height = *&v807;

                                            v231 = v774;

                                            x = *(v238 + 8) - width * 0.5;
                                            y = *(v238 + 16) - height * 0.5;
                                            v239 = v238;
                                          }

                                          else
                                          {
                                            v810 = v806;
                                            v811 = v807;
                                            v812 = v808;
                                            v301 = *(v238 + 24);
                                            if (*(v238 + 40) == 1)
                                            {
                                              height = *(v238 + 32);
                                              width = *(v238 + 24);
                                              x = *(v238 + 8) - v301 * 0.5;
                                              y = *(v238 + 16) - height * 0.5;
                                            }

                                            else
                                            {
                                              v321 = *(v238 + 8);
                                              v737 = *(v238 + 16);
                                              v322 = *(&v811 + 1);
                                              v323 = v812;
                                              v324 = sqrt(v301);

                                              sub_1AACBB42C(&v810, v322);
                                              v325 = *(v323 + 16);
                                              v326 = v323;
                                              v155 = v767;
                                              v327 = v325(v322, v326);
                                              v231 = v774;
                                              width = v324 * v328;
                                              height = v324 * v329;
                                              x = v321 + v324 * (v327 + -0.5);
                                              y = v737 + v324 * (v330 + -0.5);
                                            }

                                            sub_1AAE45A14(&v810);
                                            v239 = v755;
                                          }

                                          v300 = type metadata accessor for SgPoint;
                                          goto LABEL_159;
                                        case 4uLL:
                                          v279 = swift_projectBox();
                                          v268 = v764;
                                          sub_1AACAAD4C(v279, v764, type metadata accessor for SgRectangle);
                                          x = v268[1];
                                          y = v268[2];
                                          width = v268[3];
                                          height = v268[4];

                                          v273 = type metadata accessor for SgRectangle;
                                          goto LABEL_132;
                                        case 5uLL:
                                          v280 = swift_projectBox();
                                          v281 = v765;
                                          sub_1AACAAD4C(v280, v765, type metadata accessor for SgSector);
                                          v282 = vaddvq_f64(vmulq_f64(*(v281 + 24), xmmword_1AAFC7450));
                                          v283 = __sincos_stret(((*(v281 + 8) + *(v281 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                          x = v282 * v283.__cosval;
                                          y = v282 * v283.__sinval;
                                          v284 = (v281 + *(v766 + 52));
                                          v285 = v284[1];
                                          width = *v284 + *v284;

                                          v286 = v281;
                                          v231 = v774;
                                          sub_1AACAADB4(v286, type metadata accessor for SgSector);
                                          height = v285 + v285;
                                          goto LABEL_100;
                                        case 6uLL:
                                          v267 = swift_projectBox();
                                          v268 = v746;
                                          sub_1AACAAD4C(v267, v746, type metadata accessor for SgRule);
                                          v269 = v268[1];
                                          v270 = v268[2];
                                          v271 = v268[3];
                                          v272 = v268[4];
                                          if (v271 >= v269)
                                          {
                                            x = v268[1];
                                          }

                                          else
                                          {
                                            x = v268[3];
                                          }

                                          if (v272 >= v270)
                                          {
                                            y = v268[2];
                                          }

                                          else
                                          {
                                            y = v268[4];
                                          }

                                          width = vabdd_f64(v271, v269);
                                          height = vabdd_f64(v272, v270);

                                          v273 = type metadata accessor for SgRule;
                                          goto LABEL_132;
                                        case 7uLL:
                                          v295 = swift_projectBox();
                                          v268 = v756;
                                          sub_1AACAAD4C(v295, v756, type metadata accessor for SgLine);

                                          sub_1AAF56CF0();
                                          x = v296;
                                          y = v297;
                                          width = v298;
                                          height = v299;
                                          v273 = type metadata accessor for SgLine;
                                          goto LABEL_132;
                                        case 8uLL:
                                          v240 = swift_projectBox();
                                          v241 = v760;
                                          sub_1AACAAD4C(v240, v760, type metadata accessor for SgArea);
                                          v242 = *(v241 + 8);
                                          v243 = *(v242 + 16);
                                          v244 = MEMORY[0x1E69E7CC0];
                                          *&v806 = MEMORY[0x1E69E7CC0];
                                          v245 = *(v243 + 16);

                                          if (v245)
                                          {
                                            v246 = 0;
                                            v247 = (v243 + 56);
                                            v248 = v805;
                                            while (v246 < *(v243 + 16))
                                            {
                                              ++v246;
                                              v249 = *v247;
                                              v250 = *(v247 - 2);
                                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                                              v251 = swift_allocObject();
                                              *(v251 + 16) = xmmword_1AAF9E2B0;
                                              *(v251 + 32) = v250;
                                              *(v251 + 40) = v249;
                                              sub_1AADC8F2C(v251);
                                              v247 += 5;
                                              if (v245 == v246)
                                              {
                                                v244 = v806;
                                                v122 = v768;
                                                goto LABEL_136;
                                              }
                                            }

                                            __break(1u);
                                            goto LABEL_376;
                                          }

                                          v248 = v805;
LABEL_136:

                                          *&v302 = COERCE_DOUBLE(sub_1AACEC978(v244));
                                          v304 = v303;
                                          v306 = v305;

                                          if (v306)
                                          {
                                            x = v248;
                                            y = v804;
                                            width = v803;
                                            height = v802;
                                          }

                                          else
                                          {
                                            v307 = *(v242 + 16);
                                            v308 = MEMORY[0x1E69E7CC0];
                                            *&v806 = MEMORY[0x1E69E7CC0];
                                            v309 = *(v307 + 16);

                                            if (v309)
                                            {
                                              v737 = v304;
                                              v310 = 0;
                                              v311 = (v307 + 64);
                                              do
                                              {
                                                if (v310 >= *(v307 + 16))
                                                {
                                                  goto LABEL_386;
                                                }

                                                ++v310;
                                                v312 = *v311;
                                                v313 = *(v311 - 2);
                                                sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                                                v314 = swift_allocObject();
                                                *(v314 + 16) = xmmword_1AAF9E2B0;
                                                *(v314 + 32) = v313;
                                                *(v314 + 40) = v312;
                                                sub_1AADC8F2C(v314);
                                                v311 += 5;
                                              }

                                              while (v309 != v310);
                                              v308 = v806;
                                              v122 = v768;
                                              v304 = v737;
                                            }

                                            x = *&v302;

                                            v315 = COERCE_DOUBLE(sub_1AACEC978(v308));
                                            v317 = v316;
                                            v319 = v318;

                                            v320 = v304 - x;
                                            if (v319)
                                            {
                                              x = v248;
                                              y = v804;
                                            }

                                            else
                                            {
                                              y = v315;
                                            }

                                            if (v319)
                                            {
                                              width = v803;
                                            }

                                            else
                                            {
                                              width = v320;
                                            }

                                            if (v319)
                                            {
                                              height = v802;
                                            }

                                            else
                                            {
                                              height = v317 - v315;
                                            }
                                          }

                                          sub_1AACAADB4(v760, type metadata accessor for SgArea);
                                          goto LABEL_155;
                                        case 9uLL:
                                          v287 = swift_projectBox();
                                          v288 = v761;
                                          sub_1AACAAD4C(v287, v761, type metadata accessor for SgPath);
                                          v289 = *(v288 + 24);
                                          v826 = *(v288 + 8);
                                          v827 = v289;
                                          v828 = *(v288 + 40);

                                          v290 = sub_1AAF8E8E4();
                                          x = v805;
                                          y = v804;
                                          width = v803;
                                          height = v802;
                                          if ((v290 & 1) == 0)
                                          {
                                            sub_1AAF8E874();
                                            x = v291;
                                            y = v292;
                                            width = v293;
                                            height = v294;
                                          }

                                          sub_1AACAADB4(v761, type metadata accessor for SgPath);
                                          v231 = v774;
                                          goto LABEL_100;
                                        case 0xAuLL:

                                          x = v805;
                                          y = v804;
                                          width = v803;
                                          height = v802;
                                          goto LABEL_100;
                                        case 0xBuLL:
                                        case 0xCuLL:
                                          x = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                          y = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                          width = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                          height = *((v236 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                          goto LABEL_100;
                                        case 0xDuLL:

                                          x = 0.0;
                                          y = 0.0;
                                          width = 0.0;
                                          height = 0.0;
                                          goto LABEL_100;
                                        case 0xEuLL:
                                          goto LABEL_100;
                                        default:
                                          v274 = swift_projectBox();
                                          v268 = v763;
                                          sub_1AACAAD4C(v274, v763, type metadata accessor for SgGroup);

                                          sub_1AAF58748();
                                          x = v275;
                                          y = v276;
                                          width = v277;
                                          height = v278;
                                          v273 = type metadata accessor for SgGroup;
LABEL_132:
                                          v300 = v273;
                                          v239 = v268;
                                          v231 = v774;
LABEL_159:
                                          sub_1AACAADB4(v239, v300);
                                          goto LABEL_100;
                                      }
                                    }
                                  }

                                  v203 = v805;
                                  v204 = v804;
                                  v205 = v803;
                                  v206 = v802;
LABEL_196:
                                  sub_1AAF14C40(&v819);
                                  v62 = &unk_1AAF9E000;
                                  goto LABEL_85;
                                case 3uLL:
                                  v208 = swift_projectBox();
                                  v209 = v744;
                                  sub_1AACAAD4C(v208, v744, type metadata accessor for SgPoint);
                                  sub_1AAD9ADE4(v209 + 48, &v819);
                                  if (v822)
                                  {
                                    v205 = *(&v819 + 1);
                                    v206 = *&v820;

LABEL_185:
                                    v371 = *(v209 + 16);
                                    v203 = *(v209 + 8) - v205 * 0.5;
                                    sub_1AACAADB4(v209, type metadata accessor for SgPoint);
                                    v204 = v371 - v206 * 0.5;
                                    goto LABEL_85;
                                  }

                                  v806 = v819;
                                  v807 = v820;
                                  v808 = v821;
                                  if (*(v209 + 40) == 1)
                                  {
                                    v206 = *(v209 + 32);
                                    v205 = *(v209 + 24);

                                    sub_1AAE45A14(&v806);
                                    goto LABEL_185;
                                  }

                                  v413 = *(v209 + 8);
                                  v414 = *(v209 + 16);
                                  v415 = *(&v807 + 1);
                                  v416 = v808;
                                  v417 = sqrt(*(v209 + 24));

                                  sub_1AACBB42C(&v806, v415);
                                  v418 = (*(v416 + 16))(v415, v416);
                                  v420 = v419;
                                  v422 = v421;
                                  v424 = v423;
                                  sub_1AACAADB4(v209, type metadata accessor for SgPoint);
                                  v205 = v417 * v422;
                                  v206 = v417 * v424;
                                  v203 = v413 + v417 * (v418 + -0.5);
                                  v164 = *&v799;
                                  v425 = v417 * (v420 + -0.5);
                                  v166 = *&v798;
                                  v204 = v414 + v425;
                                  sub_1AAE45A14(&v806);
LABEL_85:
                                  v845.origin.x = v164;
                                  v845.origin.y = v801;
                                  v845.size.width = v166;
                                  v845.size.height = v797;
                                  v851.origin.x = v203;
                                  v851.origin.y = v204;
                                  v851.size.width = v205;
                                  v851.size.height = v206;
                                  v846 = CGRectUnion(v845, v851);
                                  v164 = v846.origin.x;
                                  v801 = v846.origin.y;
                                  v166 = v846.size.width;
                                  v797 = v846.size.height;

                                  v60 = v802;
                                  v69 = v793;
                                  v118 = v794;
                                  v115 = v795;
                                  v117 = v796;
                                  v200 = v778;
                                  if (v202 == v780)
                                  {
                                    goto LABEL_245;
                                  }

                                  break;
                                case 4uLL:
                                  v343 = swift_projectBox();
                                  v332 = v764;
                                  sub_1AACAAD4C(v343, v764, type metadata accessor for SgRectangle);
                                  v203 = v332[1];
                                  v204 = v332[2];
                                  v205 = v332[3];
                                  v206 = v332[4];

                                  v337 = type metadata accessor for SgRectangle;
                                  goto LABEL_169;
                                case 5uLL:
                                  v346 = swift_projectBox();
                                  v347 = v765;
                                  sub_1AACAAD4C(v346, v765, type metadata accessor for SgSector);
                                  v348 = vaddvq_f64(vmulq_f64(*(v347 + 24), xmmword_1AAFC7450));
                                  v349 = __sincos_stret(((*(v347 + 8) + *(v347 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                  v203 = v348 * v349.__cosval;
                                  v204 = v348 * v349.__sinval;
                                  v350 = (v347 + *(v766 + 52));
                                  v351 = v350[1];
                                  v205 = *v350 + *v350;

                                  sub_1AACAADB4(v347, type metadata accessor for SgSector);
                                  v206 = v351 + v351;
                                  goto LABEL_85;
                                case 6uLL:
                                  v331 = swift_projectBox();
                                  v332 = v745;
                                  sub_1AACAAD4C(v331, v745, type metadata accessor for SgRule);
                                  v333 = v332[1];
                                  v334 = v332[2];
                                  v335 = v332[3];
                                  v336 = v332[4];
                                  if (v335 >= v333)
                                  {
                                    v203 = v332[1];
                                  }

                                  else
                                  {
                                    v203 = v332[3];
                                  }

                                  if (v336 >= v334)
                                  {
                                    v204 = v332[2];
                                  }

                                  else
                                  {
                                    v204 = v332[4];
                                  }

                                  v205 = vabdd_f64(v335, v333);
                                  v206 = vabdd_f64(v336, v334);

                                  v337 = type metadata accessor for SgRule;
                                  goto LABEL_169;
                                case 7uLL:
                                  v360 = swift_projectBox();
                                  v361 = v757;
                                  sub_1AACAAD4C(v360, v757, type metadata accessor for SgLine);
                                  v362 = *(v361 + 8);
                                  swift_beginAccess();
                                  v363 = *(v362 + 16);
                                  v364 = *(v363 + 16);
                                  if (v364)
                                  {
                                    *&v806 = MEMORY[0x1E69E7CC0];

                                    sub_1AAF67208(v364);
                                    v365 = v363 + 32;
                                    v366 = v806;
                                    v206 = v802;
                                    do
                                    {
                                      sub_1AAE5EDF4(v365, &v819);
                                      v367 = *(&v819 + 1);
                                      sub_1AAE5EE50(&v819);
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_1AAD1FAF4(0, *(v366 + 16) + 1, 1);
                                        v366 = v806;
                                      }

                                      v369 = *(v366 + 16);
                                      v368 = *(v366 + 24);
                                      if (v369 >= v368 >> 1)
                                      {
                                        sub_1AAD1FAF4((v368 > 1), v369 + 1, 1);
                                        v366 = v806;
                                      }

                                      *(v366 + 16) = v369 + 1;
                                      *(v366 + 8 * v369 + 32) = v367;
                                      v365 += 96;
                                      --v364;
                                    }

                                    while (v364);
                                  }

                                  else
                                  {

                                    v366 = MEMORY[0x1E69E7CC0];
                                    v206 = v802;
                                  }

                                  MEMORY[0x1EEE9AC00](v370);
                                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                                  v799 = v395;
                                  *(&v737 - 4) = *&v395;
                                  v396 = sub_1AAE840B8();
                                  *(&v737 - 3) = v396;
                                  *&v798 = COERCE_DOUBLE(sub_1AAE971D0());
                                  *(&v737 - 2) = *&v798;
                                  swift_getKeyPath();
                                  v397 = v777;
                                  v398 = COERCE_DOUBLE(sub_1AAF894FC(v366, sub_1AAF68E40));
                                  v400 = v399;
                                  v402 = v401;
                                  v777 = v397;

                                  v203 = v805;
                                  v204 = v804;
                                  v205 = v803;
                                  if (v402)
                                  {
                                    goto LABEL_217;
                                  }

                                  v203 = v398;
                                  v404 = v400;
                                  if (v398 > v400)
                                  {
                                    goto LABEL_392;
                                  }

                                  v405 = *(v362 + 16);
                                  v406 = *(v405 + 16);
                                  if (v406)
                                  {
                                    *&v806 = MEMORY[0x1E69E7CC0];

                                    sub_1AAF67208(v406);
                                    v407 = v405 + 32;
                                    v408 = v806;
                                    v409 = v799;
                                    do
                                    {
                                      sub_1AAE5EDF4(v407, &v819);
                                      v410 = v820;
                                      sub_1AAE5EE50(&v819);
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_1AAD1FAF4(0, *(v408 + 16) + 1, 1);
                                        v408 = v806;
                                      }

                                      v412 = *(v408 + 16);
                                      v411 = *(v408 + 24);
                                      if (v412 >= v411 >> 1)
                                      {
                                        sub_1AAD1FAF4((v411 > 1), v412 + 1, 1);
                                        v408 = v806;
                                      }

                                      *(v408 + 16) = v412 + 1;
                                      *(v408 + 8 * v412 + 32) = v410;
                                      v407 += 96;
                                      --v406;
                                    }

                                    while (v406);
                                  }

                                  else
                                  {
                                    v408 = MEMORY[0x1E69E7CC0];
                                    v409 = v799;
                                  }

                                  MEMORY[0x1EEE9AC00](v403);
                                  *(&v737 - 4) = v409;
                                  *(&v737 - 3) = v396;
                                  *(&v737 - 2) = *&v798;
                                  swift_getKeyPath();
                                  v426 = v777;
                                  v427 = COERCE_DOUBLE(sub_1AAF894FC(v408, sub_1AAF68E40));
                                  v429 = v428;
                                  v431 = v430;
                                  v777 = v426;

                                  v206 = v802;
                                  if (v431)
                                  {
                                    v203 = v805;
                                    v204 = v804;
                                    v205 = v803;
                                  }

                                  else
                                  {
                                    v204 = v427;
                                    if (v427 > v429)
                                    {
                                      goto LABEL_397;
                                    }

                                    v205 = v404 - v203;
                                    v206 = v429 - v427;
                                  }

LABEL_217:
                                  sub_1AACAADB4(v757, type metadata accessor for SgLine);
                                  v62 = &unk_1AAF9E000;
                                  v122 = v768;
LABEL_218:
                                  v155 = v767;
                                  goto LABEL_85;
                                case 8uLL:
                                  v210 = swift_projectBox();
                                  v211 = v758;
                                  sub_1AACAAD4C(v210, v758, type metadata accessor for SgArea);
                                  v212 = *(v211 + 8);
                                  v213 = *(v212 + 16);
                                  v214 = MEMORY[0x1E69E7CC0];
                                  *&v819 = MEMORY[0x1E69E7CC0];
                                  v215 = *(v213 + 16);
                                  v799 = v212;
                                  if (v215)
                                  {
                                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                                    v216 = (v213 + 56);
                                    v206 = v802;
                                    do
                                    {
                                      v217 = *(v216 - 2);
                                      v218 = *v216;
                                      v216 += 5;
                                      v219 = swift_allocObject();
                                      *(v219 + 16) = v62[43];
                                      *(v219 + 32) = v217;
                                      *(v219 + 40) = v218;
                                      sub_1AADC8F2C(v219);
                                      --v215;
                                    }

                                    while (v215);

                                    v214 = v819;
                                  }

                                  else
                                  {

                                    v206 = v802;
                                  }

                                  MEMORY[0x1EEE9AC00](v220);
                                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                                  v798 = v372;
                                  *(&v737 - 4) = *&v372;
                                  v373 = sub_1AAE840B8();
                                  *(&v737 - 3) = v373;
                                  v374 = sub_1AAE971D0();
                                  *(&v737 - 2) = v374;
                                  swift_getKeyPath();
                                  v375 = v777;
                                  v376 = COERCE_DOUBLE(sub_1AAF894FC(v214, sub_1AAF68E40));
                                  v378 = v377;
                                  v380 = v379;
                                  v777 = v375;

                                  v203 = v805;
                                  v204 = v804;
                                  v205 = v803;
                                  v122 = v768;
                                  if (v380)
                                  {
                                    goto LABEL_211;
                                  }

                                  v203 = v376;
                                  if (v376 > v378)
                                  {
                                    goto LABEL_393;
                                  }

                                  v382 = *(v799 + 16);
                                  v383 = MEMORY[0x1E69E7CC0];
                                  *&v819 = MEMORY[0x1E69E7CC0];
                                  v384 = *(v382 + 16);
                                  if (v384)
                                  {
                                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                                    v385 = (v382 + 64);
                                    do
                                    {
                                      v386 = *(v385 - 2);
                                      v387 = *v385;
                                      v385 += 5;
                                      v388 = swift_allocObject();
                                      *(v388 + 16) = xmmword_1AAF9E2B0;
                                      *(v388 + 32) = v386;
                                      *(v388 + 40) = v387;
                                      sub_1AADC8F2C(v388);
                                      --v384;
                                    }

                                    while (v384);

                                    v383 = v819;
                                  }

                                  MEMORY[0x1EEE9AC00](v381);
                                  *(&v737 - 4) = *&v798;
                                  *(&v737 - 3) = v373;
                                  *(&v737 - 2) = v374;
                                  swift_getKeyPath();
                                  v389 = v777;
                                  v390 = COERCE_DOUBLE(sub_1AAF894FC(v383, sub_1AAF68E40));
                                  v392 = v391;
                                  v394 = v393;
                                  v777 = v389;

                                  v206 = v802;
                                  if (v394)
                                  {
                                    v203 = v805;
                                    v204 = v804;
                                    v205 = v803;
                                    v122 = v768;
                                  }

                                  else
                                  {
                                    v204 = v390;
                                    v122 = v768;
                                    if (v390 > v392)
                                    {
                                      goto LABEL_398;
                                    }

                                    v205 = v378 - v203;
                                    v206 = v392 - v390;
                                  }

LABEL_211:
                                  sub_1AACAADB4(v758, type metadata accessor for SgArea);
                                  v62 = &unk_1AAF9E000;
                                  goto LABEL_218;
                                case 9uLL:
                                  v352 = swift_projectBox();
                                  v353 = v759;
                                  sub_1AACAAD4C(v352, v759, type metadata accessor for SgPath);
                                  v354 = *(v353 + 24);
                                  v829 = *(v353 + 8);
                                  v830 = v354;
                                  v831 = *(v353 + 40);

                                  v355 = sub_1AAF8E8E4();
                                  v203 = v805;
                                  v204 = v804;
                                  v205 = v803;
                                  v206 = v802;
                                  if ((v355 & 1) == 0)
                                  {
                                    sub_1AAF8E874();
                                    v203 = v356;
                                    v204 = v357;
                                    v205 = v358;
                                    v206 = v359;
                                  }

                                  v344 = type metadata accessor for SgPath;
                                  v345 = v759;
                                  goto LABEL_174;
                                case 0xAuLL:

                                  v203 = v805;
                                  v204 = v804;
                                  v205 = v803;
                                  v206 = v802;
                                  goto LABEL_85;
                                case 0xBuLL:
                                case 0xCuLL:
                                  v203 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                  v204 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                  v205 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                  v206 = *((v207 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                  goto LABEL_85;
                                case 0xDuLL:

                                  v203 = 0.0;
                                  v204 = 0.0;
                                  v205 = 0.0;
                                  v206 = 0.0;
                                  goto LABEL_85;
                                case 0xEuLL:
                                  goto LABEL_85;
                                default:
                                  v338 = swift_projectBox();
                                  v332 = v763;
                                  sub_1AACAAD4C(v338, v763, type metadata accessor for SgGroup);

                                  sub_1AAF58748();
                                  v203 = v339;
                                  v204 = v340;
                                  v205 = v341;
                                  v206 = v342;
                                  v337 = type metadata accessor for SgGroup;
LABEL_169:
                                  v344 = v337;
                                  v345 = v332;
LABEL_174:
                                  sub_1AACAADB4(v345, v344);
                                  goto LABEL_85;
                              }
                            }
                          }

                          v164 = v805;
                          v801 = v804;
                          v166 = v803;
                          v797 = v60;
LABEL_245:
                          sub_1AAF14C40(&v813);
                          v58 = v762;
                          v172 = v801;
                          v171 = v797;
                          goto LABEL_69;
                        case 3:
                          v176 = swift_projectBox();
                          v177 = v742;
                          sub_1AACAAD4C(v176, v742, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v177 + 48, &v819);
                          if (v822)
                          {
                            v166 = *(&v819 + 1);
                            v178 = v69;
                            v179 = *&v820;

                            v180 = *(v177 + 16);
                            v164 = *(v177 + 8) - v166 * 0.5;
                            sub_1AACAADB4(v177, type metadata accessor for SgPoint);
                            v171 = v179;
                            v69 = v178;
                            v172 = v180 - v171 * 0.5;
                            v115 = v795;
                            v117 = v796;
                          }

                          else
                          {
                            v813 = v819;
                            v814 = v820;
                            v815 = v821;
                            if (*(v177 + 40) == 1)
                            {
                              v467 = v69;
                              v468 = *(v177 + 32);
                              v166 = *(v177 + 24);

                              sub_1AAE45A14(&v813);
                              v469 = *(v177 + 16);
                              v164 = *(v177 + 8) - v166 * 0.5;
                              sub_1AACAADB4(v177, type metadata accessor for SgPoint);
                              v171 = v468;
                              v69 = v467;
                              v172 = v469 - v171 * 0.5;
                            }

                            else
                            {
                              v513 = *(v177 + 8);
                              v514 = *(v177 + 16);
                              v515 = v122;
                              v516 = *(&v814 + 1);
                              v517 = v815;
                              v518 = sqrt(*(v177 + 24));

                              sub_1AACBB42C(&v813, v516);
                              v519 = v516;
                              v122 = v515;
                              v520 = (*(v517 + 16))(v519, v517);
                              v522 = v521;
                              v524 = v523;
                              v526 = v525;
                              sub_1AACAADB4(v177, type metadata accessor for SgPoint);
                              v527 = v518 * v524;
                              v528 = v793;
                              v118 = v794;
                              v529 = v518 * v526;
                              v164 = v513 + v518 * (v520 + -0.5);
                              v530 = v518 * (v522 + -0.5);
                              v166 = v527;
                              v531 = v514 + v530;
                              v60 = v802;
                              sub_1AAE45A14(&v813);
                              v171 = v529;
                              v69 = v528;
                              v172 = v531;
                            }

                            v115 = v795;
                            v117 = v796;
                          }

                          goto LABEL_69;
                        case 4:
                          v437 = swift_projectBox();
                          v159 = v764;
                          sub_1AACAAD4C(v437, v764, type metadata accessor for SgRectangle);
                          v164 = v159[1];
                          v801 = v159[2];
                          v167 = v60;
                          v168 = v69;
                          v166 = v159[3];
                          v169 = v159[4];

                          v170 = type metadata accessor for SgRectangle;
                          goto LABEL_67;
                        case 5:
                          v438 = swift_projectBox();
                          v439 = v765;
                          sub_1AACAAD4C(v438, v765, type metadata accessor for SgSector);
                          v440 = vaddvq_f64(vmulq_f64(*(v439 + 24), xmmword_1AAFC7450));
                          v441 = __sincos_stret(((*(v439 + 8) + *(v439 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v164 = v440 * v441.__cosval;
                          v442 = v440 * v441.__sinval;
                          v443 = (v439 + *(v766 + 52));
                          v444 = v443[1];
                          v166 = *v443 + *v443;

                          sub_1AACAADB4(v439, type metadata accessor for SgSector);
                          v172 = v442;
                          v171 = v444 + v444;
                          v117 = v796;
                          goto LABEL_69;
                        case 6:
                          v158 = swift_projectBox();
                          v159 = v743;
                          sub_1AACAAD4C(v158, v743, type metadata accessor for SgRule);
                          v160 = v159[1];
                          v161 = v159[2];
                          v162 = v159[3];
                          v163 = v159[4];
                          if (v162 >= v160)
                          {
                            v164 = v159[1];
                          }

                          else
                          {
                            v164 = v159[3];
                          }

                          if (v163 >= v161)
                          {
                            v165 = v159[2];
                          }

                          else
                          {
                            v165 = v159[4];
                          }

                          v801 = v165;
                          v166 = vabdd_f64(v162, v160);
                          v167 = v60;
                          v168 = v69;
                          v169 = vabdd_f64(v163, v161);

                          v170 = type metadata accessor for SgRule;
                          goto LABEL_67;
                        case 7:
                          v455 = swift_projectBox();
                          v456 = v752;
                          sub_1AACAAD4C(v455, v752, type metadata accessor for SgLine);
                          v457 = *(v456 + 8);
                          swift_beginAccess();
                          v458 = *(v457 + 16);
                          v459 = *(v458 + 16);
                          if (v459)
                          {
                            *&v813 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v459);
                            v460 = v458 + 32;
                            v461 = v813;
                            do
                            {
                              sub_1AAE5EDF4(v460, &v819);
                              v462 = *(&v819 + 1);
                              sub_1AAE5EE50(&v819);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v461 + 16) + 1, 1);
                                v461 = v813;
                              }

                              v464 = *(v461 + 16);
                              v463 = *(v461 + 24);
                              if (v464 >= v463 >> 1)
                              {
                                sub_1AAD1FAF4((v463 > 1), v464 + 1, 1);
                                v461 = v813;
                              }

                              *(v461 + 16) = v464 + 1;
                              *(v461 + 8 * v464 + 32) = v462;
                              v460 += 96;
                              --v459;
                            }

                            while (v459);
                            v465 = v122;

                            v117 = v796;
                          }

                          else
                          {
                            v465 = v122;

                            v461 = MEMORY[0x1E69E7CC0];
                          }

                          MEMORY[0x1EEE9AC00](v466);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v801 = v495;
                          *(&v737 - 4) = v495;
                          *&v799 = COERCE_DOUBLE(sub_1AAE840B8());
                          *(&v737 - 3) = *&v799;
                          v496 = sub_1AAE971D0();
                          *(&v737 - 2) = v496;
                          swift_getKeyPath();
                          v497 = v777;
                          v498 = COERCE_DOUBLE(sub_1AAF894FC(v461, sub_1AAF68E40));
                          v500 = v499;
                          v502 = v501;
                          v777 = v497;

                          v164 = v805;
                          v480 = v804;
                          v166 = v803;
                          v481 = v60;
                          v122 = v465;
                          if (v502)
                          {
                            goto LABEL_269;
                          }

                          v164 = v498;
                          v504 = v500;
                          if (v498 > v500)
                          {
                            goto LABEL_395;
                          }

                          v505 = *(v457 + 16);
                          v506 = *(v505 + 16);
                          if (v506)
                          {
                            *&v813 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v506);
                            v507 = v505 + 32;
                            v508 = v813;
                            do
                            {
                              sub_1AAE5EDF4(v507, &v819);
                              v509 = v820;
                              sub_1AAE5EE50(&v819);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v508 + 16) + 1, 1);
                                v508 = v813;
                              }

                              v511 = *(v508 + 16);
                              v510 = *(v508 + 24);
                              if (v511 >= v510 >> 1)
                              {
                                sub_1AAD1FAF4((v510 > 1), v511 + 1, 1);
                                v508 = v813;
                              }

                              *(v508 + 16) = v511 + 1;
                              *(v508 + 8 * v511 + 32) = v509;
                              v507 += 96;
                              --v506;
                            }

                            while (v506);
                            v512 = v465;

                            v115 = v795;
                          }

                          else
                          {
                            v512 = v465;
                            v508 = MEMORY[0x1E69E7CC0];
                          }

                          MEMORY[0x1EEE9AC00](v503);
                          v534 = v799;
                          *(&v737 - 4) = v801;
                          *(&v737 - 3) = v534;
                          *(&v737 - 2) = v496;
                          swift_getKeyPath();
                          v535 = v777;
                          v536 = COERCE_DOUBLE(sub_1AAF894FC(v508, sub_1AAF68E40));
                          v538 = v537;
                          v540 = v539;

                          v777 = v535;
                          if (v540)
                          {
                            v164 = v805;
                            v480 = v804;
                            v166 = v803;
                            v481 = v60;
                            v122 = v512;
                          }

                          else
                          {
                            v480 = v536;
                            if (v536 > v538)
                            {
                              goto LABEL_400;
                            }

                            v122 = v512;
                            v166 = v504 - v164;
                            v481 = v538 - v536;
                          }

                          v117 = v796;
LABEL_269:
                          v532 = type metadata accessor for SgLine;
                          v533 = v752;
LABEL_270:
                          v541 = v480;
                          v542 = v69;
                          v543 = v481;
                          sub_1AACAADB4(v533, v532);
                          v171 = v543;
                          v69 = v542;
                          v60 = v802;
                          v172 = v541;
                          v58 = v762;
                          v62 = &unk_1AAF9E000;
                          v155 = v767;
LABEL_69:
                          v843.origin.x = v115;
                          v843.origin.y = v792;
                          v843.size.width = v117;
                          v843.size.height = v118;
                          v173 = v164;
                          v174 = v166;
                          v844 = CGRectUnion(v843, *(&v172 - 1));
                          v115 = v844.origin.x;
                          v792 = v844.origin.y;
                          v117 = v844.size.width;
                          v118 = v844.size.height;

                          v157 = v791;
                          if (v791 != v776)
                          {
                            continue;
                          }

                          goto LABEL_314;
                        case 8:
                          v181 = swift_projectBox();
                          v182 = v753;
                          sub_1AACAAD4C(v181, v753, type metadata accessor for SgArea);
                          v183 = *(v182 + 8);
                          v184 = *(*&v183 + 16);
                          v185 = MEMORY[0x1E69E7CC0];
                          *&v819 = MEMORY[0x1E69E7CC0];
                          v186 = *(v184 + 16);
                          v801 = v183;
                          if (v186)
                          {
                            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                            v187 = (v184 + 56);
                            v188 = v777;
                            do
                            {
                              v189 = *(v187 - 2);
                              v190 = *v187;
                              v187 += 5;
                              v191 = swift_allocObject();
                              *(v191 + 16) = v62[43];
                              *(v191 + 32) = v189;
                              *(v191 + 40) = v190;
                              sub_1AADC8F2C(v191);
                              --v186;
                            }

                            while (v186);

                            v185 = v819;
                            v115 = v795;
                            v117 = v796;
                          }

                          else
                          {

                            v188 = v777;
                          }

                          MEMORY[0x1EEE9AC00](v192);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v471 = v470;
                          *(&v737 - 4) = v470;
                          v472 = sub_1AAE840B8();
                          *(&v737 - 3) = v472;
                          v473 = sub_1AAE971D0();
                          *(&v737 - 2) = v473;
                          swift_getKeyPath();
                          v474 = COERCE_DOUBLE(sub_1AAF894FC(v185, sub_1AAF68E40));
                          v476 = v475;
                          v478 = v477;
                          v777 = v188;

                          v164 = v805;
                          v480 = v804;
                          v166 = v803;
                          v481 = v60;
                          v122 = v768;
                          if (v478)
                          {
                            goto LABEL_262;
                          }

                          v164 = v474;
                          if (v474 > v476)
                          {
                            goto LABEL_394;
                          }

                          v482 = *(*&v801 + 16);
                          v483 = MEMORY[0x1E69E7CC0];
                          *&v819 = MEMORY[0x1E69E7CC0];
                          v484 = *(v482 + 16);
                          if (v484)
                          {
                            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                            v485 = (v482 + 64);
                            do
                            {
                              v486 = *(v485 - 2);
                              v487 = *v485;
                              v485 += 5;
                              v488 = swift_allocObject();
                              *(v488 + 16) = xmmword_1AAF9E2B0;
                              *(v488 + 32) = v486;
                              *(v488 + 40) = v487;
                              sub_1AADC8F2C(v488);
                              --v484;
                            }

                            while (v484);

                            v483 = v819;
                            v60 = v802;
                            v118 = v794;
                            v115 = v795;
                          }

                          MEMORY[0x1EEE9AC00](v479);
                          *(&v737 - 4) = v471;
                          *(&v737 - 3) = v472;
                          *(&v737 - 2) = v473;
                          swift_getKeyPath();
                          v489 = v777;
                          v490 = COERCE_DOUBLE(sub_1AAF894FC(v483, sub_1AAF68E40));
                          v492 = v491;
                          v494 = v493;

                          v777 = v489;
                          if (v494)
                          {
                            v164 = v805;
                            v480 = v804;
                            v166 = v803;
                            v481 = v60;
                            v122 = v768;
                          }

                          else
                          {
                            v480 = v490;
                            v122 = v768;
                            if (v490 > v492)
                            {
                              goto LABEL_399;
                            }

                            v166 = v476 - v164;
                            v481 = v492 - v490;
                          }

                          v117 = v796;
LABEL_262:
                          v532 = type metadata accessor for SgArea;
                          v533 = v753;
                          goto LABEL_270;
                        case 9:
                          v445 = swift_projectBox();
                          v446 = v754;
                          sub_1AACAAD4C(v445, v754, type metadata accessor for SgPath);
                          v447 = *(v446 + 24);
                          v832 = *(v446 + 8);
                          v833 = v447;
                          v834 = *(v446 + 40);

                          v448 = sub_1AAF8E8E4();
                          v164 = v805;
                          v449 = v804;
                          v166 = v803;
                          v450 = v60;
                          if ((v448 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v164 = v451;
                            v166 = v452;
                          }

                          v453 = v449;
                          v454 = v450;
                          sub_1AACAADB4(v754, type metadata accessor for SgPath);
                          v171 = v454;
                          v172 = v453;
                          v69 = v793;
                          goto LABEL_69;
                        case 0xALL:

                          v164 = v805;
                          v172 = v804;
                          v166 = v803;
                          v171 = v60;
                          goto LABEL_69;
                        case 0xBLL:
                        case 0xCLL:
                          v164 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v801 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v167 = v60;
                          v168 = v69;
                          v166 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v169 = *((*&v175 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_68;
                        case 0xDLL:

                          v164 = 0.0;
                          v172 = 0.0;
                          v166 = 0.0;
                          v171 = 0.0;
                          goto LABEL_69;
                        case 0xELL:
                          goto LABEL_69;
                        default:
                          v432 = swift_projectBox();
                          v159 = v763;
                          sub_1AACAAD4C(v432, v763, type metadata accessor for SgGroup);

                          sub_1AAF58748();
                          v164 = v433;
                          v801 = v434;
                          v166 = v435;
                          v167 = v60;
                          v168 = v69;
                          v169 = v436;
                          v170 = type metadata accessor for SgGroup;
LABEL_67:
                          sub_1AACAADB4(v159, v170);
LABEL_68:
                          v171 = v169;
                          v69 = v168;
                          v60 = v167;
                          v172 = v801;
                          goto LABEL_69;
                      }
                    }

                    goto LABEL_385;
                  }
                }

                v115 = v805;
                v792 = v804;
                v117 = v803;
                v118 = v60;
LABEL_314:
                sub_1AAF14C40(&v816);
                v116 = v792;
                goto LABEL_37;
              case 3uLL:
                v124 = swift_projectBox();
                v125 = v740;
                sub_1AACAAD4C(v124, v740, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v125 + 48, &v819);
                if (v822)
                {
                  v126 = *(&v819 + 1);
                  v118 = *&v820;

LABEL_296:
                  v590 = *(v125 + 16);
                  v591 = v60;
                  v592 = *(v125 + 8) - v126 * 0.5;
                  sub_1AACAADB4(v125, type metadata accessor for SgPoint);
                  v115 = v592;
                  v60 = v591;
                  v116 = v590 - v118 * 0.5;
                  v117 = v126;
                  goto LABEL_37;
                }

                v816 = v819;
                v817 = v820;
                v818 = v821;
                if (*(v125 + 40) == 1)
                {
                  v118 = *(v125 + 32);
                  v126 = *(v125 + 24);

                  sub_1AAE45A14(&v816);
                  goto LABEL_296;
                }

                v635 = *(v125 + 8);
                v636 = *(v125 + 16);
                v637 = *(&v817 + 1);
                v638 = v818;
                v639 = sqrt(*(v125 + 24));

                sub_1AACBB42C(&v816, v637);
                v640 = (*(v638 + 16))(v637, v638);
                v642 = v641;
                v644 = v643;
                v646 = v645;
                sub_1AACAADB4(v125, type metadata accessor for SgPoint);
                v647 = v639 * v644;
                v648 = v802;
                v118 = v639 * v646;
                v69 = v793;
                v649 = v640 + -0.5;
                v117 = v647;
                v650 = v635 + v639 * v649;
                v651 = v642 + -0.5;
                v115 = v650;
                v652 = v636 + v639 * v651;
                sub_1AAE45A14(&v816);
                v116 = v652;
                v60 = v648;
                goto LABEL_37;
              case 4uLL:
                v558 = swift_projectBox();
                v552 = v764;
                sub_1AACAAD4C(v558, v764, type metadata accessor for SgRectangle);
                v150 = v60;
                v115 = *(v552 + 8);
                v152 = *(v552 + 16);
                v117 = *(v552 + 24);
                v118 = *(v552 + 32);

                v557 = type metadata accessor for SgRectangle;
                goto LABEL_280;
              case 5uLL:
                v559 = swift_projectBox();
                v560 = v765;
                sub_1AACAAD4C(v559, v765, type metadata accessor for SgSector);
                v561 = vaddvq_f64(vmulq_f64(*(v560 + 24), xmmword_1AAFC7450));
                v562 = __sincos_stret(((*(v560 + 8) + *(v560 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v115 = v561 * v562.__cosval;
                v563 = v561 * v562.__sinval;
                v564 = (v560 + *(v766 + 52));
                v565 = v564[1];
                v566 = v60;
                v567 = *v564 + *v564;

                sub_1AACAADB4(v560, type metadata accessor for SgSector);
                v116 = v563;
                v118 = v565 + v565;
                v117 = v567;
                v60 = v566;
                goto LABEL_37;
              case 6uLL:
                v544 = swift_projectBox();
                v545 = v741;
                sub_1AACAAD4C(v544, v741, type metadata accessor for SgRule);
                v546 = v545[1];
                v547 = v545[2];
                v548 = v545[3];
                v549 = v545[4];
                if (v548 >= v546)
                {
                  v115 = v545[1];
                }

                else
                {
                  v115 = v545[3];
                }

                if (v549 >= v547)
                {
                  v550 = v545[2];
                }

                else
                {
                  v550 = v545[4];
                }

                v117 = vabdd_f64(v548, v546);
                v118 = vabdd_f64(v549, v547);

                sub_1AACAADB4(v545, type metadata accessor for SgRule);
                v116 = v550;
                goto LABEL_37;
              case 7uLL:
                v577 = swift_projectBox();
                v578 = v750;
                sub_1AACAAD4C(v577, v750, type metadata accessor for SgLine);
                v579 = *(v578 + 8);
                swift_beginAccess();
                v580 = v122;
                v581 = *(v579 + 16);
                v582 = *(v581 + 16);
                v768 = v580;
                if (v582)
                {
                  *&v816 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v582);
                  v583 = v581 + 32;
                  v584 = v816;
                  do
                  {
                    sub_1AAE5EDF4(v583, &v819);
                    v585 = *(&v819 + 1);
                    sub_1AAE5EE50(&v819);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v584 + 16) + 1, 1);
                      v584 = v816;
                    }

                    v587 = *(v584 + 16);
                    v586 = *(v584 + 24);
                    if (v587 >= v586 >> 1)
                    {
                      sub_1AAD1FAF4((v586 > 1), v587 + 1, 1);
                      v584 = v816;
                    }

                    *(v584 + 16) = v587 + 1;
                    *(v584 + 8 * v587 + 32) = v585;
                    v583 += 96;
                    --v582;
                  }

                  while (v582);
                  v588 = v579;
                }

                else
                {
                  v588 = v579;

                  v584 = MEMORY[0x1E69E7CC0];
                }

                MEMORY[0x1EEE9AC00](v589);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v801 = v614;
                *(&v737 - 4) = v614;
                v615 = sub_1AAE840B8();
                *(&v737 - 3) = v615;
                v616 = sub_1AAE971D0();
                *(&v737 - 2) = v616;
                swift_getKeyPath();
                v617 = v777;
                v618 = COERCE_DOUBLE(sub_1AAF894FC(v584, sub_1AAF68E40));
                v620 = v619;
                v622 = v621;
                v777 = v617;

                v115 = v805;
                v624 = v804;
                v117 = v803;
                v118 = v60;
                v58 = v762;
                if (v622)
                {
                  goto LABEL_332;
                }

                v115 = v618;
                v625 = v620;
                if (v618 > v620)
                {
                  goto LABEL_396;
                }

                v626 = *(v588 + 16);
                v627 = *(v626 + 16);
                if (v627)
                {
                  v628 = v60;
                  v629 = v115;
                  *&v816 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v627);
                  v630 = v626 + 32;
                  v631 = v816;
                  do
                  {
                    sub_1AAE5EDF4(v630, &v819);
                    v632 = v820;
                    sub_1AAE5EE50(&v819);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v631 + 16) + 1, 1);
                      v631 = v816;
                    }

                    v634 = *(v631 + 16);
                    v633 = *(v631 + 24);
                    if (v634 >= v633 >> 1)
                    {
                      sub_1AAD1FAF4((v633 > 1), v634 + 1, 1);
                      v631 = v816;
                    }

                    *(v631 + 16) = v634 + 1;
                    *(v631 + 8 * v634 + 32) = v632;
                    v630 += 96;
                    --v627;
                  }

                  while (v627);

                  v58 = v762;
                  v115 = v629;
                  v60 = v628;
                }

                else
                {
                  v631 = MEMORY[0x1E69E7CC0];
                }

                MEMORY[0x1EEE9AC00](v623);
                *(&v737 - 4) = v801;
                *(&v737 - 3) = v615;
                *(&v737 - 2) = v616;
                swift_getKeyPath();
                v653 = v777;
                v654 = COERCE_DOUBLE(sub_1AAF894FC(v631, sub_1AAF68E40));
                v656 = v655;
                v658 = v657;
                v777 = v653;

                if (v658)
                {
                  v115 = v805;
                  v624 = v804;
                  v117 = v803;
                  v118 = v60;
                }

                else
                {
                  v624 = v654;
                  if (v654 > v656)
                  {
                    goto LABEL_401;
                  }

                  v117 = v625 - v115;
                  v118 = v656 - v654;
                }

LABEL_332:
                v659 = v60;
                v660 = v624;
                sub_1AACAADB4(v750, type metadata accessor for SgLine);
                v116 = v660;
                v60 = v659;
                v62 = &unk_1AAF9E000;
                goto LABEL_37;
              case 8uLL:
                v127 = swift_projectBox();
                v128 = v749;
                sub_1AACAAD4C(v127, v749, type metadata accessor for SgArea);
                v129 = *(v128 + 8);
                v130 = *(*&v129 + 16);
                v131 = *(v130 + 16);
                v768 = v122;
                if (v131)
                {
                  v801 = v129;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v132 = (v130 + 56);
                  v133 = MEMORY[0x1E69E7CC0];
                  while (1)
                  {
                    v134 = *(v132 - 2);
                    v135 = *v132;
                    v136 = swift_allocObject();
                    *(v136 + 32) = v134;
                    v137 = (v136 + 32);
                    *(v136 + 40) = v135;
                    v138 = *(v133 + 2);
                    v139 = v138 + 2;
                    if (__OFADD__(v138, 2))
                    {
                      goto LABEL_379;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (!isUniquelyReferenced_nonNull_native || (v141 = *(v133 + 3) >> 1, v141 < v139))
                    {
                      if (v138 <= v139)
                      {
                        v142 = v138 + 2;
                      }

                      else
                      {
                        v142 = v138;
                      }

                      v133 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v142, 1, v133);
                      v141 = *(v133 + 3) >> 1;
                    }

                    v62 = &unk_1AAF9E000;
                    v143 = *(v133 + 2);
                    if (v141 - v143 < 2)
                    {
                      break;
                    }

                    *&v133[8 * v143 + 32] = *v137;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v144 = *(v133 + 2);
                    v103 = __OFADD__(v144, 2);
                    v145 = v144 + 2;
                    if (v103)
                    {
                      goto LABEL_381;
                    }

                    *(v133 + 2) = v145;
                    v132 += 5;
                    if (!--v131)
                    {

                      v58 = v762;
                      v129 = v801;
                      goto LABEL_298;
                    }
                  }

LABEL_380:
                  __break(1u);
LABEL_381:
                  __break(1u);
LABEL_382:
                  __break(1u);
                  goto LABEL_383;
                }

                v133 = MEMORY[0x1E69E7CC0];
LABEL_298:
                v593 = COERCE_DOUBLE(sub_1AACEC978(v133));
                v595 = v594;
                v597 = v596;

                if (v597)
                {
                  v115 = v805;
                  v118 = v60;
                  v576 = v804;
                  v117 = v803;
                }

                else
                {
                  v800 = v593;
                  v801 = v595;
                  v598 = *(*&v129 + 16);
                  v599 = *(v598 + 16);
                  if (v599)
                  {
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v600 = (v598 + 64);
                    v601 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v602 = *(v600 - 2);
                      v603 = *v600;
                      v604 = swift_allocObject();
                      *(v604 + 32) = v602;
                      v605 = (v604 + 32);
                      *(v604 + 40) = v603;
                      v606 = *(v601 + 2);
                      v607 = v606 + 2;
                      if (__OFADD__(v606, 2))
                      {
                        goto LABEL_389;
                      }

                      v608 = swift_isUniquelyReferenced_nonNull_native();
                      if (!v608 || (v609 = *(v601 + 3) >> 1, v609 < v607))
                      {
                        if (v606 <= v607)
                        {
                          v610 = v606 + 2;
                        }

                        else
                        {
                          v610 = v606;
                        }

                        v601 = sub_1AAD69810(v608, v610, 1, v601);
                        v609 = *(v601 + 3) >> 1;
                      }

                      v611 = *(v601 + 2);
                      if (v609 - v611 < 2)
                      {
                        goto LABEL_390;
                      }

                      *&v601[8 * v611 + 32] = *v605;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v612 = *(v601 + 2);
                      v103 = __OFADD__(v612, 2);
                      v613 = v612 + 2;
                      if (v103)
                      {
                        goto LABEL_391;
                      }

                      *(v601 + 2) = v613;
                      v600 += 5;
                      --v599;
                    }

                    while (v599);

                    v58 = v762;
                    v62 = &unk_1AAF9E000;
                  }

                  else
                  {
                    v601 = MEMORY[0x1E69E7CC0];
                  }

                  v661 = COERCE_DOUBLE(sub_1AACEC978(v601));
                  v663 = v662;
                  v665 = v664;

                  if (v665)
                  {
                    v115 = v805;
                    v576 = v804;
                    v117 = v803;
                    v118 = v802;
                  }

                  else
                  {
                    v115 = v800;
                    v117 = v801 - v800;
                    v576 = v661;
                    v118 = v663 - v661;
                  }
                }

                sub_1AACAADB4(v749, type metadata accessor for SgArea);
LABEL_338:
                v116 = v576;
                v60 = v802;
LABEL_37:
                v841.origin.x = v69;
                v841.origin.y = v787;
                v841.size.height = v788;
                v841.size.width = v789;
                v119 = v115;
                v120 = v117;
                v121 = v118;
                v842 = CGRectUnion(v841, *(&v116 - 1));
                v69 = v842.origin.x;
                v787 = v842.origin.y;
                v788 = v842.size.height;
                v789 = v842.size.width;

                v114 = v785;
                v112 = v771;
                if (v785 == v773)
                {
                  goto LABEL_357;
                }

                break;
              case 9uLL:
                v568 = swift_projectBox();
                v569 = v751;
                sub_1AACAAD4C(v568, v751, type metadata accessor for SgPath);
                v570 = *(v569 + 24);
                v835 = *(v569 + 8);
                v836 = v570;
                v837 = *(v569 + 40);

                v571 = sub_1AAF8E8E4();
                v115 = v805;
                v572 = v804;
                v117 = v803;
                v118 = v60;
                if ((v571 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v115 = v573;
                  v117 = v574;
                  v118 = v575;
                }

                v576 = v572;
                sub_1AACAADB4(v751, type metadata accessor for SgPath);
                goto LABEL_338;
              case 0xAuLL:

                v115 = v805;
                v116 = v804;
                v117 = v803;
                v118 = v60;
                goto LABEL_37;
              case 0xBuLL:
              case 0xCuLL:
                v115 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v123 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v117 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v118 = *((v122 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                v116 = v123;
                goto LABEL_37;
              case 0xDuLL:

                v115 = 0.0;
                v116 = 0.0;
                v117 = 0.0;
                v118 = 0.0;
                goto LABEL_37;
              case 0xEuLL:
                goto LABEL_37;
              default:
                v551 = swift_projectBox();
                v552 = v763;
                sub_1AACAAD4C(v551, v763, type metadata accessor for SgGroup);

                sub_1AAF58748();
                v115 = v553;
                v150 = v60;
                v152 = v554;
                v117 = v555;
                v118 = v556;
                v557 = type metadata accessor for SgGroup;
LABEL_280:
                sub_1AACAADB4(v552, v557);
LABEL_281:
                v116 = v152;
                v60 = v150;
                goto LABEL_37;
            }
          }
        }

        v69 = v805;
        v787 = v804;
        v788 = v60;
        v789 = v803;
LABEL_357:
        sub_1AAF14C40(&v823);
        v76 = v788;
        v77 = v789;
        v75 = v787;
        goto LABEL_12;
      case 3uLL:
        v80 = swift_projectBox();
        v81 = v738;
        sub_1AACAAD4C(v80, v738, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v81 + 48, &v819);
        if (v822)
        {
          v82 = v60;
          v83 = *(&v819 + 1);
          v84 = *&v820;

LABEL_348:
          v698 = *(v81 + 16);
          v69 = *(v81 + 8) - v83 * 0.5;
          sub_1AACAADB4(v81, type metadata accessor for SgPoint);
          v76 = v84;
          v77 = v83;
          v60 = v82;
          v75 = v698 - v84 * 0.5;
          goto LABEL_12;
        }

        v823 = v819;
        v824 = v820;
        v825 = v821;
        if (*(v81 + 40) == 1)
        {
          v84 = *(v81 + 32);
          v82 = v60;
          v83 = *(v81 + 24);

          sub_1AAE45A14(&v823);
          goto LABEL_348;
        }

        v715 = *(v81 + 8);
        v716 = *(v81 + 16);
        v717 = *(&v824 + 1);
        v718 = v825;
        v719 = sqrt(*(v81 + 24));

        sub_1AACBB42C(&v823, v717);
        v720 = (*(v718 + 16))(v717, v718);
        v801 = v721;
        v723 = v722;
        v725 = v724;
        sub_1AACAADB4(v81, type metadata accessor for SgPoint);
        v726 = v719 * v723;
        v727 = v802;
        v728 = v719 * v725;
        v69 = v715 + v719 * (v720 + -0.5);
        v729 = v716 + v719 * (v801 + -0.5);
        sub_1AAE45A14(&v823);
        v75 = v729;
        v76 = v728;
        v77 = v726;
        v60 = v727;
        goto LABEL_12;
      case 4uLL:
        v671 = swift_projectBox();
        v64 = v764;
        sub_1AACAAD4C(v671, v764, type metadata accessor for SgRectangle);
        v70 = v60;
        v69 = *(v64 + 8);
        v71 = *(v64 + 16);
        v72 = *(v64 + 24);
        v73 = *(v64 + 32);

        v74 = type metadata accessor for SgRectangle;
        goto LABEL_10;
      case 5uLL:
        v672 = swift_projectBox();
        v673 = v765;
        sub_1AACAAD4C(v672, v765, type metadata accessor for SgSector);
        v674 = vaddvq_f64(vmulq_f64(*(v673 + 24), xmmword_1AAFC7450));
        v675 = __sincos_stret(((*(v673 + 8) + *(v673 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v69 = v674 * v675.__cosval;
        v676 = v60;
        v677 = v674 * v675.__sinval;
        v678 = (v673 + *(v766 + 52));
        v679 = v678[1];
        v680 = *v678 + *v678;

        sub_1AACAADB4(v673, type metadata accessor for SgSector);
        v75 = v677;
        v60 = v676;
        v77 = v680;
        v76 = v679 + v679;
        goto LABEL_12;
      case 6uLL:
        v63 = swift_projectBox();
        v64 = v739;
        sub_1AACAAD4C(v63, v739, type metadata accessor for SgRule);
        v65 = *(v64 + 8);
        v66 = *(v64 + 16);
        v67 = *(v64 + 24);
        v68 = *(v64 + 32);
        if (v67 >= v65)
        {
          v69 = *(v64 + 8);
        }

        else
        {
          v69 = *(v64 + 24);
        }

        v70 = v60;
        if (v68 >= v66)
        {
          v71 = *(v64 + 16);
        }

        else
        {
          v71 = *(v64 + 32);
        }

        v72 = vabdd_f64(v67, v65);
        v73 = vabdd_f64(v68, v66);

        v74 = type metadata accessor for SgRule;
        goto LABEL_10;
      case 7uLL:
        v693 = swift_projectBox();
        v64 = v756;
        sub_1AACAAD4C(v693, v756, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v69 = v694;
        v70 = v60;
        v71 = v695;
        v72 = v696;
        v73 = v697;
        v74 = type metadata accessor for SgLine;
        goto LABEL_10;
      case 8uLL:
        v85 = swift_projectBox();
        v86 = v747;
        sub_1AACAAD4C(v85, v747, type metadata accessor for SgArea);
        v87 = *(v86 + 8);
        v88 = *(*&v87 + 16);
        v89 = *(v88 + 16);
        if (!v89)
        {

          v91 = MEMORY[0x1E69E7CC0];
LABEL_350:
          *&v699 = COERCE_DOUBLE(sub_1AACEC978(v91));
          v701 = v700;
          v703 = v702;

          if (v703)
          {
            v69 = v805;
            v704 = v60;
            v705 = v804;
            v706 = v803;
            v707 = v704;
          }

          else
          {
            v708 = *(*&v87 + 16);
            v709 = MEMORY[0x1E69E7CC0];
            *&v819 = MEMORY[0x1E69E7CC0];
            v710 = *(v708 + 16);
            if (v710)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

              v711 = (v708 + 64);
              do
              {
                v712 = *(v711 - 2);
                v713 = *v711;
                v711 += 5;
                v714 = swift_allocObject();
                *(v714 + 16) = v62[43];
                *(v714 + 32) = v712;
                *(v714 + 40) = v713;
                sub_1AADC8F2C(v714);
                --v710;
              }

              while (v710);
              v707 = v60;

              v709 = v819;
            }

            else
            {
              v707 = v60;
            }

            v730 = *&v699;
            v731 = v701;
            v732 = COERCE_DOUBLE(sub_1AACEC978(v709));
            v734 = v733;
            v736 = v735;

            if (v736)
            {
              v69 = v805;
            }

            else
            {
              v69 = v730;
            }

            if (v736)
            {
              v705 = v804;
            }

            else
            {
              v705 = v732;
            }

            if (v736)
            {
              v706 = v803;
            }

            else
            {
              v706 = v731 - v730;
            }

            if (v736)
            {
              v704 = v707;
            }

            else
            {
              v704 = v734 - v732;
            }
          }

          sub_1AACAADB4(v747, type metadata accessor for SgArea);
          v77 = v706;
          v76 = v704;
          v75 = v705;
          v60 = v707;
LABEL_12:
          v78 = v69;
          v786 = CGRectUnion(v786, *(&v75 - 1));

          v61 = v784;
          if (v784 == v770)
          {
            goto LABEL_374;
          }

          continue;
        }

        v801 = v87;
        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

        v90 = (v88 + 56);
        v91 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v92 = *(v90 - 2);
          v93 = *v90;
          v94 = swift_allocObject();
          *(v94 + 32) = v92;
          v95 = (v94 + 32);
          *(v94 + 40) = v93;
          v96 = *(v91 + 2);
          v97 = v96 + 2;
          if (__OFADD__(v96, 2))
          {
            goto LABEL_382;
          }

          v98 = swift_isUniquelyReferenced_nonNull_native();
          if (!v98 || (v99 = *(v91 + 3) >> 1, v99 < v97))
          {
            if (v96 <= v97)
            {
              v100 = v96 + 2;
            }

            else
            {
              v100 = v96;
            }

            v91 = sub_1AAD69810(v98, v100, 1, v91);
            v99 = *(v91 + 3) >> 1;
          }

          v62 = &unk_1AAF9E000;
          v101 = *(v91 + 2);
          if (v99 - v101 < 2)
          {
            break;
          }

          *&v91[8 * v101 + 32] = *v95;
          swift_setDeallocating();
          swift_deallocClassInstance();
          v102 = *(v91 + 2);
          v103 = __OFADD__(v102, 2);
          v104 = v102 + 2;
          if (v103)
          {
            goto LABEL_384;
          }

          *(v91 + 2) = v104;
          v90 += 5;
          if (!--v89)
          {

            v58 = v762;
            v87 = v801;
            goto LABEL_350;
          }
        }

LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
        return;
      case 9uLL:
        v681 = swift_projectBox();
        v682 = v748;
        sub_1AACAAD4C(v681, v748, type metadata accessor for SgPath);
        v683 = *(v682 + 24);
        v838 = *(v682 + 8);
        v839 = v683;
        v840 = *(v682 + 40);

        v684 = sub_1AAF8E8E4();
        v69 = v805;
        v685 = v804;
        v686 = v803;
        v687 = v60;
        v688 = v60;
        if ((v684 & 1) == 0)
        {
          sub_1AAF8E874();
          v69 = v689;
        }

        v690 = v686;
        v691 = v688;
        v692 = v685;
        sub_1AACAADB4(v748, type metadata accessor for SgPath);
        v75 = v692;
        v76 = v691;
        v77 = v690;
        v60 = v687;
        goto LABEL_12;
      case 0xAuLL:

        v69 = v805;
        v75 = v804;
        v77 = v803;
        v76 = v60;
        goto LABEL_12;
      case 0xBuLL:
      case 0xCuLL:
        v70 = v60;
        v69 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v71 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v72 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v73 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        goto LABEL_11;
      case 0xDuLL:

        v69 = 0.0;
        v75 = 0.0;
        v77 = 0.0;
        v76 = 0.0;
        goto LABEL_12;
      case 0xEuLL:
        goto LABEL_12;
      default:
        v666 = swift_projectBox();
        v64 = v763;
        sub_1AACAAD4C(v666, v763, type metadata accessor for SgGroup);

        sub_1AAF58748();
        v69 = v667;
        v70 = v60;
        v71 = v668;
        v72 = v669;
        v73 = v670;
        v74 = type metadata accessor for SgGroup;
LABEL_10:
        sub_1AACAADB4(v64, v74);
LABEL_11:
        v75 = v71;
        v60 = v70;
        v76 = v73;
        v77 = v72;
        goto LABEL_12;
    }
  }
}

void sub_1AAF62ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v649 = &v638 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v651 = &v638 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v654 = &v638 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v658 = &v638 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v661 = &v638 - v13;
  v14 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v650 = &v638 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v653 = &v638 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v657 = &v638 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v656 = (&v638 - v21);
  v22 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v652 = &v638 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v663 = (&v638 - v25);
  v26 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v641 = (&v638 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v643 = &v638 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v645 = (&v638 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v647 = (&v638 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v648 = (&v638 - v35);
  v667 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v667);
  v666 = &v638 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v665 = (&v638 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v640 = &v638 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v642 = &v638 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v644 = &v638 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v646 = &v638 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v655 = &v638 - v48;
  v49 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v664 = (&v638 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v714 = a2;

  sub_1AADC9018(v51);
  v52 = v714;
  v53 = *(MEMORY[0x1E695F050] + 8);
  v702 = *MEMORY[0x1E695F050];
  v701 = v53;
  v54 = *(MEMORY[0x1E695F050] + 16);
  v700 = *(MEMORY[0x1E695F050] + 24);
  v55 = *(v714 + 16);
  if (!v55)
  {
    v685.origin.x = v702;
    v685.origin.y = v701;
    v685.size.width = v54;
    v685.size.height = v700;
LABEL_374:

    return;
  }

  v56 = 0;
  v668 = 0;
  v672 = v714 + 32;
  v57 = &unk_1AAF9E000;
  v685.size.width = v54;
  v685.size.height = v700;
  v685.origin.x = v702;
  v685.origin.y = v701;
  v662 = v714;
  v691 = v54;
  v670 = v55;
  while (2)
  {
    if (v56 >= *(v52 + 16))
    {
      goto LABEL_383;
    }

    v69 = *(v672 + 8 * v56++);
    v63 = v702;
    v65 = v701;
    v699 = v54;
    v66 = v700;
    switch(v69 >> 60)
    {
      case 1uLL:
        v84 = v56;
        v85 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v86 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        sub_1AAF62ADC(v87, v85, v86);
        v63 = v88;
        v64 = v89;
        v699 = v90;
        v62 = v91;
        v56 = v84;

        goto LABEL_5;
      case 2uLL:
        v639 = v56;
        sub_1AAD117A0((v69 & 0xFFFFFFFFFFFFFFFLL) + 16, &v721);
        v92 = *(&v721 + 1);
        v93 = *(*(&v721 + 1) + 16);

        v674 = v93;
        if (!v93)
        {
          v63 = v702;
          v699 = v54;
          v686 = v701;
          v687 = v700;
LABEL_371:
          sub_1AAF14C40(&v721);
          v65 = v686;
          v66 = v687;
          v56 = v639;
LABEL_6:
          v67 = v63;
          v68 = v699;
          v685 = CGRectUnion(v685, *(&v65 - 1));

          if (v56 == v55)
          {
            goto LABEL_374;
          }

          continue;
        }

        v94 = 0;
        v673 = v92 + 32;
        v699 = v54;
        v686 = v701;
        v687 = v700;
        v63 = v702;
        v671 = v92;
        v669 = v69;
LABEL_19:
        if (v94 >= *(v92 + 16))
        {
          goto LABEL_382;
        }

        v101 = *(v673 + 8 * v94);
        v684 = v94 + 1;
        v95 = v702;
        v96 = v701;
        v97 = v54;
        v98 = v700;
        v693 = v63;
        switch(v101 >> 60)
        {
          case 1uLL:
            v132 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v133 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            sub_1AAF62ADC(v134, v132, v133);
            v95 = v135;
            v136 = v54;
            v138 = v137;
            v97 = v139;
            v141 = v140;
            v92 = v671;

            goto LABEL_282;
          case 2uLL:
            v659 = v101;
            sub_1AAD117A0((v101 & 0xFFFFFFFFFFFFFFFLL) + 16, &v718);
            v142 = *(&v718 + 1);
            v143 = *(*(&v718 + 1) + 16);

            v677 = v143;
            if (!v143)
            {
              v95 = v702;
              v97 = v54;
              v689 = v701;
              v690 = v700;
LABEL_324:
              sub_1AAF14C40(&v718);
              v96 = v689;
              v98 = v690;
              goto LABEL_18;
            }

            v144 = 0;
            v675 = v142;
            v676 = v142 + 32;
            v97 = v54;
            v689 = v701;
            v690 = v700;
            v95 = v702;
            while (2)
            {
              if (v144 < *(v142 + 16))
              {
                v161 = *(v676 + 8 * v144);
                v688 = v144 + 1;
                v151 = v702;
                v158 = v701;
                v159 = v54;
                v157 = v700;
                v694 = v95;
                v692 = v97;
                switch(v161 >> 60)
                {
                  case 1uLL:
                    v180 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v181 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                    sub_1AAF62ADC(v182, v180, v181);
                    v151 = v183;
                    v152 = v184;
                    v153 = v54;
                    v154 = v185;
                    v155 = v186;
                    v92 = v671;

                    goto LABEL_50;
                  case 2uLL:
                    sub_1AAD117A0((v161 & 0xFFFFFFFFFFFFFFFLL) + 16, &v714);
                    v187 = *(&v714 + 1);
                    v188 = *(*(&v714 + 1) + 16);

                    v681 = v188;
                    if (v188)
                    {
                      v189 = 0;
                      v679 = v187;
                      v680 = v187 + 32;
                      v697 = v54;
                      v695 = v700;
                      v696 = v701;
                      v151 = v702;
                      v660 = v161;
                      while (1)
                      {
                        if (v189 >= *(v187 + 16))
                        {
                          goto LABEL_377;
                        }

                        v194 = *(v680 + 8 * v189++);
                        v190 = v702;
                        v191 = v701;
                        v192 = v54;
                        v193 = v700;
                        v698 = v151;
                        switch(v194 >> 60)
                        {
                          case 1uLL:
                            v208 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v209 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                            sub_1AAF62ADC(v210, v208, v209);
                            v190 = v211;
                            v191 = v212;
                            v192 = v213;
                            v193 = v214;
                            v92 = v671;

                            goto LABEL_68;
                          case 2uLL:
                            sub_1AAD117A0((v194 & 0xFFFFFFFFFFFFFFFLL) + 16, &v710);
                            v215 = *(&v710 + 1);
                            v216 = *(*(&v710 + 1) + 16);

                            v683 = v216;
                            if (v216)
                            {
                              v217 = 0;
                              v682 = v215 + 32;
                              v193 = v700;
                              v192 = v54;
                              v191 = v701;
                              v190 = v702;
                              v218 = v215;
                              v678 = v215;
                              while (1)
                              {
                                if (v217 >= *(v218 + 16))
                                {
                                  goto LABEL_376;
                                }

                                v231 = *(v682 + 8 * v217++);
                                x = v702;
                                y = v701;
                                width = v54;
                                height = v700;
                                switch(v231 >> 60)
                                {
                                  case 1uLL:
                                    v236 = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                    v237 = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                    sub_1AAF62ADC(v238, v236, v237);
                                    x = v239;
                                    y = v240;
                                    width = v241;
                                    height = v242;
                                    v92 = v671;

                                    v218 = v678;

                                    goto LABEL_84;
                                  case 2uLL:
                                    sub_1AAD117A0((v231 & 0xFFFFFFFFFFFFFFFLL) + 16, &v703);
                                    v243 = *(&v703 + 1);
                                    v244 = *(*(&v703 + 1) + 16);

                                    if (v244)
                                    {
                                      v245 = 0;
                                      height = v700;
                                      width = v691;
                                      y = v701;
                                      x = v702;
                                      while (v245 < *(v243 + 16))
                                      {
                                        v246 = v245 + 1;
                                        v247 = *(v243 + 32 + 8 * v245);

                                        v751.origin.x = sub_1AAD0FB18(v247);
                                        v751.origin.y = v248;
                                        v751.size.width = v249;
                                        v751.size.height = v250;
                                        v747.origin.x = x;
                                        v747.origin.y = y;
                                        v747.size.width = width;
                                        v747.size.height = height;
                                        v748 = CGRectUnion(v747, v751);
                                        x = v748.origin.x;
                                        y = v748.origin.y;
                                        width = v748.size.width;
                                        height = v748.size.height;

                                        v245 = v246;
                                        if (v244 == v246)
                                        {
                                          goto LABEL_115;
                                        }
                                      }

                                      __break(1u);
LABEL_376:
                                      __break(1u);
LABEL_377:
                                      __break(1u);
LABEL_378:
                                      __break(1u);
                                      goto LABEL_379;
                                    }

                                    x = v702;
                                    y = v701;
                                    width = v691;
                                    height = v700;
LABEL_115:
                                    sub_1AAF14C40(&v703);
                                    v57 = &unk_1AAF9E000;
                                    v69 = v669;
                                    v92 = v671;
LABEL_116:
                                    v218 = v678;
LABEL_84:
                                    v745.origin.x = v190;
                                    v745.origin.y = v191;
                                    v745.size.width = v192;
                                    v745.size.height = v193;
                                    v750.origin.x = x;
                                    v750.origin.y = y;
                                    v750.size.width = width;
                                    v750.size.height = height;
                                    v746 = CGRectUnion(v745, v750);
                                    v190 = v746.origin.x;
                                    v191 = v746.origin.y;
                                    v192 = v746.size.width;
                                    v193 = v746.size.height;

                                    v54 = v691;
                                    v151 = v698;
                                    if (v217 == v683)
                                    {
                                      goto LABEL_148;
                                    }

                                    break;
                                  case 3uLL:
                                    v232 = v69;
                                    v233 = swift_projectBox();
                                    v234 = v655;
                                    sub_1AACAAD4C(v233, v655, type metadata accessor for SgPoint);
                                    sub_1AAD9ADE4(v234 + 48, &v703);
                                    if (v706)
                                    {
                                      width = *(&v703 + 1);
                                      height = *&v704;

                                      v218 = v678;

                                      x = *(v234 + 8) - width * 0.5;
                                      y = *(v234 + 16) - height * 0.5;
                                      v235 = v234;
                                    }

                                    else
                                    {
                                      v707 = v703;
                                      v708 = v704;
                                      v709 = v705;
                                      v281 = *(v234 + 24);
                                      if (*(v234 + 40) == 1)
                                      {
                                        height = *(v234 + 32);
                                        width = *(v234 + 24);

                                        sub_1AAE45A14(&v707);
                                        v235 = v655;
                                        x = *(v655 + 8) - width * 0.5;
                                        y = *(v655 + 16) - height * 0.5;
                                      }

                                      else
                                      {
                                        v282 = *(v234 + 8);
                                        v638 = *(v234 + 16);
                                        v283 = *(&v708 + 1);
                                        v284 = v709;
                                        v285 = sqrt(v281);

                                        sub_1AACBB42C(&v707, v283);
                                        v286 = v283;
                                        v92 = v671;
                                        v287 = (*(v284 + 16))(v286, v284);
                                        v218 = v678;
                                        width = v285 * v288;
                                        height = v285 * v289;
                                        x = v282 + v285 * (v287 + -0.5);
                                        y = v638 + v285 * (v290 + -0.5);
                                        sub_1AAE45A14(&v707);
                                        v235 = v655;
                                      }
                                    }

                                    sub_1AACAADB4(v235, type metadata accessor for SgPoint);
                                    v69 = v232;
                                    v57 = &unk_1AAF9E000;
                                    goto LABEL_84;
                                  case 4uLL:
                                    v260 = swift_projectBox();
                                    v220 = v665;
                                    sub_1AACAAD4C(v260, v665, type metadata accessor for SgRectangle);
                                    x = v220[1];
                                    y = v220[2];
                                    width = v220[3];
                                    height = v220[4];

                                    v229 = type metadata accessor for SgRectangle;
                                    goto LABEL_83;
                                  case 5uLL:
                                    v261 = swift_projectBox();
                                    v262 = v666;
                                    sub_1AACAAD4C(v261, v666, type metadata accessor for SgSector);
                                    v263 = vaddvq_f64(vmulq_f64(*(v262 + 24), xmmword_1AAFC7450));
                                    v264 = __sincos_stret(((*(v262 + 8) + *(v262 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                    x = v263 * v264.__cosval;
                                    y = v263 * v264.__sinval;
                                    v265 = (v262 + *(v667 + 52));
                                    v266 = v265[1];
                                    width = *v265 + *v265;

                                    v267 = v262;
                                    v218 = v678;
                                    sub_1AACAADB4(v267, type metadata accessor for SgSector);
                                    height = v266 + v266;
                                    goto LABEL_84;
                                  case 6uLL:
                                    v251 = swift_projectBox();
                                    v220 = v648;
                                    sub_1AACAAD4C(v251, v648, type metadata accessor for SgRule);
                                    v252 = v220[1];
                                    v253 = v220[2];
                                    v254 = v220[3];
                                    v255 = v220[4];
                                    if (v254 >= v252)
                                    {
                                      x = v220[1];
                                    }

                                    else
                                    {
                                      x = v220[3];
                                    }

                                    if (v255 >= v253)
                                    {
                                      y = v220[2];
                                    }

                                    else
                                    {
                                      y = v220[4];
                                    }

                                    width = vabdd_f64(v254, v252);
                                    height = vabdd_f64(v255, v253);

                                    v229 = type metadata accessor for SgRule;
                                    goto LABEL_83;
                                  case 7uLL:
                                    v276 = swift_projectBox();
                                    v220 = v663;
                                    sub_1AACAAD4C(v276, v663, type metadata accessor for SgLine);

                                    sub_1AAF56CF0();
                                    x = v277;
                                    y = v278;
                                    width = v279;
                                    height = v280;
                                    v229 = type metadata accessor for SgLine;
                                    goto LABEL_83;
                                  case 8uLL:
                                    v219 = swift_projectBox();
                                    v220 = v656;
                                    sub_1AACAAD4C(v219, v656, type metadata accessor for SgArea);

                                    sub_1AAF58424();
                                    x = v221;
                                    y = v223;
                                    width = v225;
                                    height = v227;
                                    v229 = type metadata accessor for SgArea;
                                    goto LABEL_83;
                                  case 9uLL:
                                    v268 = swift_projectBox();
                                    v269 = v661;
                                    sub_1AACAAD4C(v268, v661, type metadata accessor for SgPath);
                                    v270 = *(v269 + 24);
                                    v724 = *(v269 + 8);
                                    v725 = v270;
                                    v726 = *(v269 + 40);

                                    v271 = sub_1AAF8E8E4();
                                    x = v702;
                                    y = v701;
                                    width = v691;
                                    height = v700;
                                    if ((v271 & 1) == 0)
                                    {
                                      sub_1AAF8E874();
                                      x = v272;
                                      y = v273;
                                      width = v274;
                                      height = v275;
                                    }

                                    sub_1AACAADB4(v661, type metadata accessor for SgPath);
                                    goto LABEL_116;
                                  case 0xAuLL:
                                    width = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                                    height = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                                    x = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * width;
                                    y = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * height;

                                    goto LABEL_84;
                                  case 0xBuLL:
                                  case 0xCuLL:
                                    x = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                    y = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                    width = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                    height = *((v231 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                    goto LABEL_84;
                                  case 0xDuLL:

                                    x = 0.0;
                                    y = 0.0;
                                    width = 0.0;
                                    height = 0.0;
                                    goto LABEL_84;
                                  case 0xEuLL:
                                    goto LABEL_84;
                                  default:
                                    v256 = swift_projectBox();
                                    v220 = v664;
                                    sub_1AACAAD4C(v256, v664, type metadata accessor for SgGroup);

                                    x = sub_1AAD05240();
                                    y = v257;
                                    width = v258;
                                    height = v259;
                                    v229 = type metadata accessor for SgGroup;
LABEL_83:
                                    v230 = v220;
                                    v218 = v678;
                                    sub_1AACAADB4(v230, v229);
                                    goto LABEL_84;
                                }
                              }
                            }

                            v190 = v702;
                            v191 = v701;
                            v192 = v54;
                            v193 = v700;
LABEL_148:
                            sub_1AAF14C40(&v710);
                            v55 = v670;
                            goto LABEL_68;
                          case 3uLL:
                            v195 = v69;
                            v196 = swift_projectBox();
                            v197 = v646;
                            sub_1AACAAD4C(v196, v646, type metadata accessor for SgPoint);
                            sub_1AAD9ADE4(v197 + 48, &v710);
                            if (v713)
                            {
                              v192 = *(&v710 + 1);
                              v193 = *&v711;

LABEL_137:
                              v324 = *(v197 + 16);
                              v190 = *(v197 + 8) - v192 * 0.5;
                              sub_1AACAADB4(v197, type metadata accessor for SgPoint);
                              v191 = v324 - v193 * 0.5;
                              v69 = v195;
                              goto LABEL_68;
                            }

                            v703 = v710;
                            v704 = v711;
                            v705 = v712;
                            if (*(v197 + 40) == 1)
                            {
                              v193 = *(v197 + 32);
                              v192 = *(v197 + 24);

                              sub_1AAE45A14(&v703);
                              goto LABEL_137;
                            }

                            v349 = *(v197 + 8);
                            v350 = *(v197 + 16);
                            v351 = *(&v704 + 1);
                            v352 = v705;
                            v353 = sqrt(*(v197 + 24));

                            sub_1AACBB42C(&v703, v351);
                            v354 = *(v352 + 16);
                            v355 = v351;
                            v356 = v352;
                            v55 = v670;
                            v92 = v671;
                            v357 = v354(v355, v356);
                            v359 = v358;
                            v361 = v360;
                            v363 = v362;
                            sub_1AACAADB4(v197, type metadata accessor for SgPoint);
                            v192 = v353 * v361;
                            v193 = v353 * v363;
                            v190 = v349 + v353 * (v357 + -0.5);
                            v364 = v359 + -0.5;
                            v54 = v691;
                            v365 = v353 * v364;
                            v151 = v698;
                            v191 = v350 + v365;
                            sub_1AAE45A14(&v703);
                            v69 = v195;
LABEL_68:
                            v743.origin.x = v151;
                            v743.origin.y = v696;
                            v743.size.width = v697;
                            v743.size.height = v695;
                            v749.origin.x = v190;
                            v749.origin.y = v191;
                            v749.size.width = v192;
                            v749.size.height = v193;
                            v744 = CGRectUnion(v743, v749);
                            v151 = v744.origin.x;
                            v696 = v744.origin.y;
                            v697 = v744.size.width;
                            v695 = v744.size.height;

                            v63 = v693;
                            v95 = v694;
                            v97 = v692;
                            v187 = v679;
                            if (v189 == v681)
                            {
                              goto LABEL_202;
                            }

                            break;
                          case 4uLL:
                            v302 = swift_projectBox();
                            v292 = v665;
                            sub_1AACAAD4C(v302, v665, type metadata accessor for SgRectangle);
                            v190 = v292[1];
                            v191 = v292[2];
                            v192 = v292[3];
                            v193 = v292[4];

                            v297 = type metadata accessor for SgRectangle;
                            goto LABEL_133;
                          case 5uLL:
                            v303 = swift_projectBox();
                            v304 = v666;
                            sub_1AACAAD4C(v303, v666, type metadata accessor for SgSector);
                            v305 = vaddvq_f64(vmulq_f64(*(v304 + 24), xmmword_1AAFC7450));
                            v306 = __sincos_stret(((*(v304 + 8) + *(v304 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                            v190 = v305 * v306.__cosval;
                            v191 = v305 * v306.__sinval;
                            v307 = (v304 + *(v667 + 52));
                            v308 = v307[1];
                            v192 = *v307 + *v307;

                            sub_1AACAADB4(v304, type metadata accessor for SgSector);
                            v193 = v308 + v308;
                            goto LABEL_68;
                          case 6uLL:
                            v291 = swift_projectBox();
                            v292 = v647;
                            sub_1AACAAD4C(v291, v647, type metadata accessor for SgRule);
                            v293 = v292[1];
                            v294 = v292[2];
                            v295 = v292[3];
                            v296 = v292[4];
                            if (v295 >= v293)
                            {
                              v190 = v292[1];
                            }

                            else
                            {
                              v190 = v292[3];
                            }

                            if (v296 >= v294)
                            {
                              v191 = v292[2];
                            }

                            else
                            {
                              v191 = v292[4];
                            }

                            v192 = vabdd_f64(v295, v293);
                            v193 = vabdd_f64(v296, v294);

                            v297 = type metadata accessor for SgRule;
                            goto LABEL_133;
                          case 7uLL:
                            v319 = swift_projectBox();
                            v292 = v663;
                            sub_1AACAAD4C(v319, v663, type metadata accessor for SgLine);

                            sub_1AAF56CF0();
                            v190 = v320;
                            v191 = v321;
                            v192 = v322;
                            v193 = v323;
                            v297 = type metadata accessor for SgLine;
                            goto LABEL_133;
                          case 8uLL:
                            v198 = swift_projectBox();
                            v199 = v657;
                            sub_1AACAAD4C(v198, v657, type metadata accessor for SgArea);
                            v698 = *(v199 + 8);
                            v200 = *(*&v698 + 16);
                            v201 = MEMORY[0x1E69E7CC0];
                            *&v710 = MEMORY[0x1E69E7CC0];
                            v202 = *(v200 + 16);
                            if (v202)
                            {
                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                              v203 = (v200 + 56);
                              do
                              {
                                v204 = *(v203 - 2);
                                v205 = *v203;
                                v203 += 5;
                                v206 = swift_allocObject();
                                *(v206 + 16) = v57[43];
                                *(v206 + 32) = v204;
                                *(v206 + 40) = v205;
                                sub_1AADC8F2C(v206);
                                --v202;
                              }

                              while (v202);

                              v201 = v710;
                            }

                            else
                            {
                            }

                            MEMORY[0x1EEE9AC00](v207);
                            sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                            v683 = v325;
                            *(&v638 - 4) = v325;
                            v682 = sub_1AAE840B8();
                            *(&v638 - 3) = v682;
                            v326 = sub_1AAE971D0();
                            *(&v638 - 2) = v326;
                            swift_getKeyPath();
                            v327 = v668;
                            v328 = COERCE_DOUBLE(sub_1AAF894FC(v201, sub_1AAF68E40));
                            v330 = v329;
                            v332 = v331;
                            v668 = v327;

                            v190 = v702;
                            v191 = v701;
                            v192 = v54;
                            v193 = v700;
                            v69 = v669;
                            if (v332)
                            {
                              goto LABEL_152;
                            }

                            v190 = v328;
                            v334 = v330;
                            if (v328 > v330)
                            {
                              goto LABEL_399;
                            }

                            v335 = *(*&v698 + 16);
                            v336 = MEMORY[0x1E69E7CC0];
                            *&v710 = MEMORY[0x1E69E7CC0];
                            v337 = *(v335 + 16);
                            if (v337)
                            {
                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                              v338 = (v335 + 64);
                              do
                              {
                                v339 = *(v338 - 2);
                                v340 = *v338;
                                v338 += 5;
                                v341 = swift_allocObject();
                                *(v341 + 16) = xmmword_1AAF9E2B0;
                                *(v341 + 32) = v339;
                                *(v341 + 40) = v340;
                                sub_1AADC8F2C(v341);
                                --v337;
                              }

                              while (v337);

                              v336 = v710;
                            }

                            MEMORY[0x1EEE9AC00](v333);
                            v342 = v682;
                            *(&v638 - 4) = v683;
                            *(&v638 - 3) = v342;
                            *(&v638 - 2) = v326;
                            swift_getKeyPath();
                            v343 = v668;
                            v344 = COERCE_DOUBLE(sub_1AAF894FC(v336, sub_1AAF68E40));
                            v346 = v345;
                            v348 = v347;
                            v668 = v343;

                            if (v348)
                            {
                              v190 = v702;
                              v191 = v701;
                              v192 = v54;
                              v193 = v700;
                              v69 = v669;
                            }

                            else
                            {
                              v191 = v344;
                              v69 = v669;
                              if (v344 > v346)
                              {
                                goto LABEL_402;
                              }

                              v192 = v334 - v190;
                              v193 = v346 - v344;
                            }

LABEL_152:
                            sub_1AACAADB4(v657, type metadata accessor for SgArea);
                            v55 = v670;
                            v92 = v671;
                            v57 = &unk_1AAF9E000;
                            goto LABEL_68;
                          case 9uLL:
                            v309 = swift_projectBox();
                            v310 = v658;
                            sub_1AACAAD4C(v309, v658, type metadata accessor for SgPath);
                            v311 = *(v310 + 24);
                            v727 = *(v310 + 8);
                            v728 = v311;
                            v729 = *(v310 + 40);

                            v312 = sub_1AAF8E8E4();
                            v190 = v702;
                            v191 = v701;
                            v192 = v54;
                            v193 = v700;
                            if ((v312 & 1) == 0)
                            {
                              sub_1AAF8E874();
                              v190 = v313;
                              v191 = v314;
                              v192 = v315;
                              v193 = v316;
                            }

                            v317 = type metadata accessor for SgPath;
                            v318 = v658;
                            goto LABEL_134;
                          case 0xAuLL:
                            v192 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                            v193 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                            v190 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v192;
                            v191 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v193;

                            goto LABEL_68;
                          case 0xBuLL:
                          case 0xCuLL:
                            v190 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v191 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                            v192 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                            v193 = *((v194 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                            goto LABEL_68;
                          case 0xDuLL:

                            v190 = 0.0;
                            v191 = 0.0;
                            v192 = 0.0;
                            v193 = 0.0;
                            goto LABEL_68;
                          case 0xEuLL:
                            goto LABEL_68;
                          default:
                            v298 = swift_projectBox();
                            v292 = v664;
                            sub_1AACAAD4C(v298, v664, type metadata accessor for SgGroup);

                            v190 = sub_1AAD05240();
                            v191 = v299;
                            v192 = v300;
                            v193 = v301;
                            v297 = type metadata accessor for SgGroup;
LABEL_133:
                            v317 = v297;
                            v318 = v292;
LABEL_134:
                            sub_1AACAADB4(v318, v317);
                            goto LABEL_68;
                        }
                      }
                    }

                    v151 = v702;
                    v696 = v701;
                    v697 = v54;
                    v695 = v700;
LABEL_202:
                    sub_1AAF14C40(&v714);
                    v52 = v662;
                    v158 = v696;
                    v159 = v697;
                    v157 = v695;
                    goto LABEL_51;
                  case 3uLL:
                    v162 = v69;
                    v163 = swift_projectBox();
                    v164 = v644;
                    sub_1AACAAD4C(v163, v644, type metadata accessor for SgPoint);
                    sub_1AAD9ADE4(v164 + 48, &v714);
                    if (v717)
                    {
                      v165 = v54;
                      v166 = *(&v714 + 1);
                      v167 = *&v715;

                      v168 = *(v164 + 16);
                      v151 = *(v164 + 8) - v166 * 0.5;
                      sub_1AACAADB4(v164, type metadata accessor for SgPoint);
                      v157 = v167;
                      v159 = v166;
                      v54 = v165;
                      v97 = v692;
                      v158 = v168 - v167 * 0.5;
                      v95 = v694;
                      v69 = v162;
                    }

                    else
                    {
                      v710 = v714;
                      v711 = v715;
                      v712 = v716;
                      if (*(v164 + 40) == 1)
                      {
                        v401 = *(v164 + 32);
                        v402 = v54;
                        v403 = *(v164 + 24);

                        sub_1AAE45A14(&v710);
                        v404 = *(v164 + 16);
                        v151 = *(v164 + 8) - v403 * 0.5;
                        sub_1AACAADB4(v164, type metadata accessor for SgPoint);
                        v157 = v401;
                        v159 = v403;
                        v54 = v402;
                        v158 = v404 - v401 * 0.5;
                      }

                      else
                      {
                        v438 = *(v164 + 8);
                        v437 = *(v164 + 16);
                        v439 = *(&v711 + 1);
                        v440 = v712;
                        v441 = sqrt(*(v164 + 24));

                        sub_1AACBB42C(&v710, v439);
                        v442 = *(v440 + 16);
                        v443 = v439;
                        v444 = v440;
                        v55 = v670;
                        v92 = v671;
                        v445 = v442(v443, v444);
                        v447 = v446;
                        v449 = v448;
                        v451 = v450;
                        sub_1AACAADB4(v164, type metadata accessor for SgPoint);
                        v452 = v441 * v449;
                        v63 = v693;
                        v453 = v441 * v451;
                        v454 = v438 + v441 * (v445 + -0.5);
                        v455 = v691;
                        v456 = v441 * (v447 + -0.5);
                        v151 = v454;
                        v457 = v437 + v456;
                        sub_1AAE45A14(&v710);
                        v157 = v453;
                        v158 = v457;
                        v159 = v452;
                        v54 = v455;
                      }

                      v69 = v162;
                      v95 = v694;
                      v97 = v692;
                    }

                    goto LABEL_51;
                  case 4uLL:
                    v370 = swift_projectBox();
                    v146 = v665;
                    sub_1AACAAD4C(v370, v665, type metadata accessor for SgRectangle);
                    v151 = v146[1];
                    v152 = v146[2];
                    v153 = v54;
                    v154 = v146[3];
                    v155 = v146[4];

                    v156 = type metadata accessor for SgRectangle;
                    goto LABEL_49;
                  case 5uLL:
                    v371 = swift_projectBox();
                    v372 = v666;
                    sub_1AACAAD4C(v371, v666, type metadata accessor for SgSector);
                    v373 = vaddvq_f64(vmulq_f64(*(v372 + 24), xmmword_1AAFC7450));
                    v374 = __sincos_stret(((*(v372 + 8) + *(v372 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                    v151 = v373 * v374.__cosval;
                    v375 = v373 * v374.__sinval;
                    v376 = (v372 + *(v667 + 52));
                    v377 = v376[1];
                    v378 = v54;
                    v379 = *v376 + *v376;

                    sub_1AACAADB4(v372, type metadata accessor for SgSector);
                    v158 = v375;
                    v159 = v379;
                    v54 = v378;
                    v157 = v377 + v377;
                    v95 = v694;
                    goto LABEL_51;
                  case 6uLL:
                    v145 = swift_projectBox();
                    v146 = v645;
                    sub_1AACAAD4C(v145, v645, type metadata accessor for SgRule);
                    v147 = v146[1];
                    v148 = v146[2];
                    v149 = v146[3];
                    v150 = v146[4];
                    if (v149 >= v147)
                    {
                      v151 = v146[1];
                    }

                    else
                    {
                      v151 = v146[3];
                    }

                    if (v150 >= v148)
                    {
                      v152 = v146[2];
                    }

                    else
                    {
                      v152 = v146[4];
                    }

                    v153 = v54;
                    v154 = vabdd_f64(v149, v147);
                    v155 = vabdd_f64(v150, v148);

                    v156 = type metadata accessor for SgRule;
                    goto LABEL_49;
                  case 7uLL:
                    v391 = swift_projectBox();
                    v392 = v652;
                    sub_1AACAAD4C(v391, v652, type metadata accessor for SgLine);
                    v393 = *(v392 + 8);
                    swift_beginAccess();
                    v394 = *(v393 + 16);
                    v395 = *(v394 + 16);
                    if (v395)
                    {
                      *&v710 = MEMORY[0x1E69E7CC0];

                      sub_1AAD1FAF4(0, v395, 0);
                      v396 = v710;
                      v397 = v394 + 32;
                      do
                      {
                        sub_1AAE5EDF4(v397, &v714);
                        v398 = *(&v714 + 1);
                        sub_1AAE5EE50(&v714);
                        *&v710 = v396;
                        v400 = *(v396 + 16);
                        v399 = *(v396 + 24);
                        if (v400 >= v399 >> 1)
                        {
                          sub_1AAD1FAF4((v399 > 1), v400 + 1, 1);
                          v396 = v710;
                        }

                        *(v396 + 16) = v400 + 1;
                        *(v396 + 8 * v400 + 32) = v398;
                        v397 += 96;
                        --v395;
                      }

                      while (v395);

                      v55 = v670;
                      v92 = v671;
                      v95 = v694;
                    }

                    else
                    {

                      v396 = MEMORY[0x1E69E7CC0];
                    }

                    v422 = 0;
                    v423 = *(v396 + 16);
                    v424 = 1;
                    v52 = v662;
                    do
                    {
                      if (v423 == v422)
                      {

                        v151 = v702;
                        v420 = v701;
                        v421 = v700;
                        v69 = v669;
                        goto LABEL_265;
                      }

                      v425 = v424;
                      v426 = v396 + 8 * v422++;
                      v151 = *(v426 + 32);
                      v424 = v425 + 1;
                    }

                    while ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    do
                    {
                      if (v423 == v425)
                      {

                        v432 = v151;
                        v431 = MEMORY[0x1E69E7CC0];
                        goto LABEL_252;
                      }

                      v427 = v425 + 1;
                      if (__OFADD__(v425, 1))
                      {
                        goto LABEL_384;
                      }

                      v428 = *(v396 + 8 * v425++ + 32);
                    }

                    while ((*&v428 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    if (v428 >= v151)
                    {
                      v429 = v428;
                    }

                    else
                    {
                      v429 = v151;
                    }

                    if (v428 < v151)
                    {
                      v151 = v428;
                    }

                    v430 = v151;
                    v431 = MEMORY[0x1E69E7CC0];
LABEL_216:
                    v432 = v429;
LABEL_217:
                    v433 = v427 + 1;
                    while (v423 != v427)
                    {
                      if (v427 >= v423)
                      {
                        goto LABEL_387;
                      }

                      if (__OFADD__(v427, 1))
                      {
                        goto LABEL_389;
                      }

                      v434 = v433;
                      v435 = *(v396 + 8 * v427++ + 32);
                      ++v433;
                      if ((*&v435 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        while (v423 != v434)
                        {
                          v427 = v434 + 1;
                          if (__OFADD__(v434, 1))
                          {
                            goto LABEL_396;
                          }

                          v436 = *(v396 + 32 + 8 * v434++);
                          if ((*&v436 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_227;
                          }
                        }

                        v427 = *(v396 + 16);
                        v436 = v435;
LABEL_227:
                        if (v436 >= v435)
                        {
                          v429 = v436;
                        }

                        else
                        {
                          v429 = v435;
                        }

                        if (v436 < v435)
                        {
                          v435 = v436;
                        }

                        if (v435 < v430)
                        {
                          v151 = v435;
                          v430 = v435;
                        }

                        if (v429 < v432)
                        {
                          goto LABEL_217;
                        }

                        goto LABEL_216;
                      }
                    }

                    if (v151 > v432)
                    {
                      goto LABEL_401;
                    }

LABEL_252:
                    v475 = *(v393 + 16);
                    v476 = *(v475 + 16);
                    if (v476)
                    {
                      *&v710 = v431;

                      sub_1AAF67208(v476);
                      v477 = v475 + 32;
                      v478 = v710;
                      do
                      {
                        sub_1AAE5EDF4(v477, &v714);
                        v479 = v715;
                        sub_1AAE5EE50(&v714);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1AAD1FAF4(0, *(v478 + 16) + 1, 1);
                          v478 = v710;
                        }

                        v481 = *(v478 + 16);
                        v480 = *(v478 + 24);
                        if (v481 >= v480 >> 1)
                        {
                          sub_1AAD1FAF4((v480 > 1), v481 + 1, 1);
                          v478 = v710;
                        }

                        *(v478 + 16) = v481 + 1;
                        *(v478 + 8 * v481 + 32) = v479;
                        v477 += 96;
                        --v476;
                      }

                      while (v476);

                      v97 = v692;
                    }

                    else
                    {
                      v478 = v431;
                    }

                    MEMORY[0x1EEE9AC00](v459);
                    sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                    *(&v638 - 4) = v482;
                    *(&v638 - 3) = sub_1AAE840B8();
                    *(&v638 - 2) = sub_1AAE971D0();
                    swift_getKeyPath();
                    v483 = v668;
                    v484 = COERCE_DOUBLE(sub_1AAF894FC(v478, sub_1AAF68E40));
                    v486 = v485;
                    v488 = v487;
                    v668 = v483;

                    if (v488)
                    {
                      v151 = v702;
                      v420 = v701;
                      v421 = v700;
                      v52 = v662;
                      v69 = v669;
                      v55 = v670;
                      v92 = v671;
                      v95 = v694;
                    }

                    else
                    {
                      v69 = v669;
                      if (v484 > v486)
                      {
                        goto LABEL_404;
                      }

                      v54 = v432 - v151;
                      v420 = v484;
                      v421 = v486 - v484;
                      v52 = v662;
                      v55 = v670;
                      v92 = v671;
                      v95 = v694;
                    }

LABEL_265:
                    v473 = type metadata accessor for SgLine;
                    v474 = v652;
LABEL_266:
                    sub_1AACAADB4(v474, v473);
                    v159 = v54;
                    v54 = v691;
                    v158 = v420;
                    v157 = v421;
LABEL_51:
                    v741.origin.x = v95;
                    v741.origin.y = v689;
                    v741.size.height = v690;
                    v741.size.width = v97;
                    v160 = v151;
                    v742 = CGRectUnion(v741, *(&v158 - 1));
                    v95 = v742.origin.x;
                    v689 = v742.origin.y;
                    v690 = v742.size.height;
                    v97 = v742.size.width;

                    v144 = v688;
                    v142 = v675;
                    if (v688 != v677)
                    {
                      continue;
                    }

                    goto LABEL_324;
                  case 8uLL:
                    v169 = swift_projectBox();
                    v170 = v653;
                    sub_1AACAAD4C(v169, v653, type metadata accessor for SgArea);
                    v171 = *(v170 + 8);
                    v172 = *(v171 + 16);
                    v173 = MEMORY[0x1E69E7CC0];
                    *&v714 = MEMORY[0x1E69E7CC0];
                    v174 = *(v172 + 16);
                    if (v174)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v175 = (v172 + 56);
                      do
                      {
                        v176 = *(v175 - 2);
                        v177 = *v175;
                        v175 += 5;
                        v178 = swift_allocObject();
                        *(v178 + 16) = v57[43];
                        *(v178 + 32) = v176;
                        *(v178 + 40) = v177;
                        sub_1AADC8F2C(v178);
                        --v174;
                      }

                      while (v174);

                      v179 = v714;
                      v52 = v662;
                      v55 = v670;
                      v95 = v694;
                      v97 = v692;
                    }

                    else
                    {

                      v179 = v173;
                    }

                    v405 = 0;
                    v406 = *(v179 + 16);
                    v407 = 1;
                    v92 = v671;
                    do
                    {
                      if (v406 == v405)
                      {

                        v151 = v702;
                        v420 = v701;
                        v421 = v700;
                        v69 = v669;
                        goto LABEL_250;
                      }

                      v408 = v407;
                      v409 = v179 + 8 * v405++;
                      v151 = *(v409 + 32);
                      v407 = v408 + 1;
                    }

                    while ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    do
                    {
                      if (v406 == v408)
                      {

                        v415 = v151;
                        v414 = MEMORY[0x1E69E7CC0];
                        goto LABEL_242;
                      }

                      v410 = v408 + 1;
                      if (__OFADD__(v408, 1))
                      {
                        goto LABEL_385;
                      }

                      v411 = *(v179 + 8 * v408++ + 32);
                    }

                    while ((*&v411 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    if (v411 >= v151)
                    {
                      v412 = v411;
                    }

                    else
                    {
                      v412 = v151;
                    }

                    if (v411 < v151)
                    {
                      v151 = v411;
                    }

                    v413 = v151;
                    v414 = MEMORY[0x1E69E7CC0];
LABEL_180:
                    v415 = v412;
LABEL_181:
                    v416 = v410 + 1;
                    while (v406 != v410)
                    {
                      if (v410 >= v406)
                      {
                        goto LABEL_386;
                      }

                      if (__OFADD__(v410, 1))
                      {
                        goto LABEL_388;
                      }

                      v417 = v416;
                      v418 = *(v179 + 8 * v410++ + 32);
                      ++v416;
                      if ((*&v418 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        while (v406 != v417)
                        {
                          v410 = v417 + 1;
                          if (__OFADD__(v417, 1))
                          {
                            goto LABEL_397;
                          }

                          v419 = *(v179 + 32 + 8 * v417++);
                          if ((*&v419 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_191;
                          }
                        }

                        v410 = *(v179 + 16);
                        v419 = v418;
LABEL_191:
                        if (v419 >= v418)
                        {
                          v412 = v419;
                        }

                        else
                        {
                          v412 = v418;
                        }

                        if (v419 < v418)
                        {
                          v418 = v419;
                        }

                        if (v418 < v413)
                        {
                          v151 = v418;
                          v413 = v418;
                        }

                        if (v412 < v415)
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_180;
                      }
                    }

                    if (v151 > v415)
                    {
                      goto LABEL_400;
                    }

LABEL_242:
                    v460 = *(v171 + 16);
                    *&v714 = v414;
                    v461 = *(v460 + 16);
                    if (v461)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v462 = (v460 + 64);
                      do
                      {
                        v463 = *(v462 - 2);
                        v464 = *v462;
                        v462 += 5;
                        v465 = swift_allocObject();
                        *(v465 + 16) = v57[43];
                        *(v465 + 32) = v463;
                        *(v465 + 40) = v464;
                        sub_1AADC8F2C(v465);
                        --v461;
                      }

                      while (v461);

                      v414 = v714;
                      v97 = v692;
                      v63 = v693;
                    }

                    MEMORY[0x1EEE9AC00](v458);
                    sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                    *(&v638 - 4) = v466;
                    *(&v638 - 3) = sub_1AAE840B8();
                    *(&v638 - 2) = sub_1AAE971D0();
                    swift_getKeyPath();
                    v467 = v668;
                    v468 = COERCE_DOUBLE(sub_1AAF894FC(v414, sub_1AAF68E40));
                    v470 = v469;
                    v472 = v471;
                    v668 = v467;

                    if (v472)
                    {
                      v151 = v702;
                      v420 = v701;
                      v421 = v700;
                      v52 = v662;
                      v69 = v669;
                      v55 = v670;
                      v92 = v671;
                      v95 = v694;
                    }

                    else
                    {
                      v69 = v669;
                      if (v468 > v470)
                      {
                        goto LABEL_403;
                      }

                      v54 = v415 - v151;
                      v420 = v468;
                      v421 = v470 - v468;
                      v52 = v662;
                      v55 = v670;
                      v92 = v671;
                      v95 = v694;
                    }

LABEL_250:
                    v473 = type metadata accessor for SgArea;
                    v474 = v653;
                    goto LABEL_266;
                  case 9uLL:
                    v380 = swift_projectBox();
                    v381 = v654;
                    sub_1AACAAD4C(v380, v654, type metadata accessor for SgPath);
                    v382 = *(v381 + 24);
                    v730 = *(v381 + 8);
                    v731 = v382;
                    v732 = *(v381 + 40);

                    v383 = sub_1AAF8E8E4();
                    v151 = v702;
                    v384 = v701;
                    v385 = v54;
                    v386 = v700;
                    if ((v383 & 1) == 0)
                    {
                      sub_1AAF8E874();
                      v151 = v387;
                    }

                    v388 = v385;
                    v389 = v384;
                    v390 = v386;
                    sub_1AACAADB4(v654, type metadata accessor for SgPath);
                    v157 = v390;
                    v158 = v389;
                    v159 = v388;
                    v54 = v691;
                    goto LABEL_51;
                  case 0xAuLL:
                    v153 = v54;
                    v154 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                    v155 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                    v151 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v154;
                    v152 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v155;
                    goto LABEL_57;
                  case 0xBuLL:
                  case 0xCuLL:
                    v151 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v152 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    v153 = v54;
                    v154 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                    v155 = *((v161 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_57:

                    goto LABEL_50;
                  case 0xDuLL:

                    v151 = 0.0;
                    v158 = 0.0;
                    v159 = 0.0;
                    v157 = 0.0;
                    goto LABEL_51;
                  case 0xEuLL:
                    goto LABEL_51;
                  default:
                    v366 = swift_projectBox();
                    v146 = v664;
                    sub_1AACAAD4C(v366, v664, type metadata accessor for SgGroup);

                    v151 = sub_1AAD05240();
                    v152 = v367;
                    v153 = v54;
                    v154 = v368;
                    v155 = v369;
                    v156 = type metadata accessor for SgGroup;
LABEL_49:
                    sub_1AACAADB4(v146, v156);
LABEL_50:
                    v157 = v155;
                    v158 = v152;
                    v159 = v154;
                    v54 = v153;
                    goto LABEL_51;
                }
              }

              goto LABEL_381;
            }

          case 3uLL:
            v105 = v69;
            v106 = swift_projectBox();
            v107 = v642;
            sub_1AACAAD4C(v106, v642, type metadata accessor for SgPoint);
            sub_1AAD9ADE4(v107 + 48, &v714);
            if (v717)
            {
              v108 = *(&v714 + 1);
              v109 = *&v715;

              v110 = *(v107 + 16);
              v111 = *(v107 + 8) - v108 * 0.5;
              sub_1AACAADB4(v107, type metadata accessor for SgPoint);
              v98 = v109;
              v96 = v110 - v109 * 0.5;
              v95 = v111;
              v97 = v108;
              v69 = v105;
            }

            else
            {
              v718 = v714;
              v719 = v715;
              v720 = v716;
              if (*(v107 + 40) == 1)
              {
                v525 = *(v107 + 32);
                v97 = *(v107 + 24);

                sub_1AAE45A14(&v718);
                v526 = *(v107 + 16);
                v527 = *(v107 + 8) - v97 * 0.5;
                sub_1AACAADB4(v107, type metadata accessor for SgPoint);
                v98 = v525;
                v96 = v526 - v525 * 0.5;
                v95 = v527;
              }

              else
              {
                v545 = *(v107 + 8);
                v546 = *(v107 + 16);
                v547 = *(&v719 + 1);
                v548 = v720;
                v549 = sqrt(*(v107 + 24));

                sub_1AACBB42C(&v718, v547);
                v550 = *(v548 + 16);
                v551 = v547;
                v552 = v548;
                v55 = v670;
                v92 = v671;
                v553 = v550(v551, v552);
                v555 = v554;
                v557 = v556;
                v559 = v558;
                sub_1AACAADB4(v107, type metadata accessor for SgPoint);
                v560 = v549 * v557;
                v63 = v693;
                v95 = v545 + v549 * (v553 + -0.5);
                v561 = v691;
                v562 = v555 + -0.5;
                v97 = v560;
                v563 = v546 + v549 * v562;
                sub_1AAE45A14(&v718);
                v96 = v563;
                v54 = v561;
                v98 = v549 * v559;
              }

              v69 = v105;
            }

            goto LABEL_18;
          case 4uLL:
            v500 = swift_projectBox();
            v490 = v665;
            sub_1AACAAD4C(v500, v665, type metadata accessor for SgRectangle);
            v136 = v54;
            v95 = *(v490 + 8);
            v138 = *(v490 + 16);
            v97 = *(v490 + 24);
            v141 = *(v490 + 32);

            v495 = type metadata accessor for SgRectangle;
            goto LABEL_281;
          case 5uLL:
            v501 = swift_projectBox();
            v502 = v666;
            sub_1AACAAD4C(v501, v666, type metadata accessor for SgSector);
            v503 = vaddvq_f64(vmulq_f64(*(v502 + 24), xmmword_1AAFC7450));
            v504 = __sincos_stret(((*(v502 + 8) + *(v502 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
            v505 = v503 * v504.__cosval;
            v506 = v54;
            v507 = v503 * v504.__sinval;
            v508 = (v502 + *(v667 + 52));
            v509 = v508[1];
            v97 = *v508 + *v508;

            sub_1AACAADB4(v502, type metadata accessor for SgSector);
            v96 = v507;
            v54 = v506;
            v98 = v509 + v509;
            v95 = v505;
            goto LABEL_18;
          case 6uLL:
            v489 = swift_projectBox();
            v490 = v643;
            sub_1AACAAD4C(v489, v643, type metadata accessor for SgRule);
            v491 = *(v490 + 8);
            v492 = *(v490 + 16);
            v493 = *(v490 + 24);
            v494 = *(v490 + 32);
            if (v493 >= v491)
            {
              v95 = *(v490 + 8);
            }

            else
            {
              v95 = *(v490 + 24);
            }

            v136 = v54;
            if (v494 >= v492)
            {
              v138 = *(v490 + 16);
            }

            else
            {
              v138 = *(v490 + 32);
            }

            v97 = vabdd_f64(v493, v491);
            v141 = vabdd_f64(v494, v492);

            v495 = type metadata accessor for SgRule;
            goto LABEL_281;
          case 7uLL:
            v520 = swift_projectBox();
            v490 = v663;
            sub_1AACAAD4C(v520, v663, type metadata accessor for SgLine);

            sub_1AAF56CF0();
            v95 = v521;
            v136 = v54;
            v138 = v522;
            v97 = v523;
            v141 = v524;
            v495 = type metadata accessor for SgLine;
            goto LABEL_281;
          case 8uLL:
            v112 = v101;
            v113 = swift_projectBox();
            v114 = v650;
            sub_1AACAAD4C(v113, v650, type metadata accessor for SgArea);
            v698 = *(v114 + 8);
            v115 = *(*&v698 + 16);
            v116 = *(v115 + 16);
            v659 = v112;
            if (!v116)
            {

              v118 = MEMORY[0x1E69E7CC0];
LABEL_287:
              v528 = 0;
              v529 = *(v118 + 2);
              v530 = 1;
              v92 = v671;
              while (v529 != v528)
              {
                v531 = v530;
                v532 = &v118[8 * v528++];
                v533 = *(v532 + 4);
                v530 = v531 + 1;
                if ((*&v533 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  while (v529 != v531)
                  {
                    v534 = v531 + 1;
                    if (__OFADD__(v531, 1))
                    {
                      goto LABEL_390;
                    }

                    v535 = *&v118[8 * v531++ + 32];
                    if ((*&v535 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v535 >= v533)
                      {
                        v536 = v535;
                      }

                      else
                      {
                        v536 = v533;
                      }

                      if (v535 < v533)
                      {
                        v533 = v535;
                      }

                      v694 = v533;
                      v537 = v533;
LABEL_299:
                      v533 = v536;
LABEL_300:
                      v538 = v534 + 1;
                      while (v529 != v534)
                      {
                        if (v534 >= v529)
                        {
                          goto LABEL_391;
                        }

                        if (__OFADD__(v534, 1))
                        {
                          goto LABEL_392;
                        }

                        v539 = v538;
                        v540 = *&v118[8 * v534++ + 32];
                        ++v538;
                        if ((*&v540 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          while (v529 != v539)
                          {
                            v534 = v539 + 1;
                            if (__OFADD__(v539, 1))
                            {
                              goto LABEL_398;
                            }

                            v541 = *&v118[8 * v539++ + 32];
                            if ((*&v541 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              goto LABEL_310;
                            }
                          }

                          v534 = v529;
                          v541 = v540;
LABEL_310:
                          if (v541 >= v540)
                          {
                            v536 = v541;
                          }

                          else
                          {
                            v536 = v540;
                          }

                          if (v541 < v540)
                          {
                            v540 = v541;
                          }

                          v542 = v694;
                          if (v540 < v537)
                          {
                            v542 = v540;
                          }

                          v694 = v542;
                          if (v540 < v537)
                          {
                            v537 = v540;
                          }

                          if (v536 < v533)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_299;
                        }
                      }

                      LOBYTE(v714) = 0;

                      if (v714)
                      {
                        goto LABEL_322;
                      }

LABEL_329:
                      if (v694 > v533)
                      {
                        goto LABEL_405;
                      }

                      v565 = *(*&v698 + 16);
                      v566 = *(v565 + 16);
                      if (v566)
                      {
                        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                        v567 = (v565 + 64);
                        v568 = MEMORY[0x1E69E7CC0];
                        do
                        {
                          v569 = *(v567 - 2);
                          v570 = *v567;
                          v571 = swift_allocObject();
                          *(v571 + 32) = v569;
                          v572 = (v571 + 32);
                          *(v571 + 40) = v570;
                          v573 = *(v568 + 2);
                          v574 = v573 + 2;
                          if (__OFADD__(v573, 2))
                          {
                            goto LABEL_393;
                          }

                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          if (!isUniquelyReferenced_nonNull_native || (v576 = *(v568 + 3) >> 1, v576 < v574))
                          {
                            if (v573 <= v574)
                            {
                              v577 = v573 + 2;
                            }

                            else
                            {
                              v577 = v573;
                            }

                            v568 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v577, 1, v568);
                            v576 = *(v568 + 3) >> 1;
                          }

                          v57 = &unk_1AAF9E000;
                          v63 = v693;
                          v578 = *(v568 + 2);
                          if (v576 - v578 < 2)
                          {
                            goto LABEL_394;
                          }

                          *&v568[8 * v578 + 32] = *v572;
                          swift_setDeallocating();
                          swift_deallocClassInstance();
                          v579 = *(v568 + 2);
                          v130 = __OFADD__(v579, 2);
                          v580 = v579 + 2;
                          if (v130)
                          {
                            goto LABEL_395;
                          }

                          *(v568 + 2) = v580;
                          v567 += 5;
                          --v566;
                        }

                        while (v566);
                      }

                      else
                      {
                        v568 = MEMORY[0x1E69E7CC0];
                      }

                      MEMORY[0x1EEE9AC00](v564);
                      sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                      *(&v638 - 4) = v581;
                      *(&v638 - 3) = sub_1AAE840B8();
                      *(&v638 - 2) = sub_1AAE971D0();
                      swift_getKeyPath();
                      v582 = v668;
                      v583 = COERCE_DOUBLE(sub_1AAF894FC(v568, sub_1AAF68E40));
                      v585 = v584;
                      v587 = v586;
                      v668 = v582;

                      if (v587)
                      {
                        v95 = v702;
                        v97 = v54;
                        v543 = v701;
                        v544 = v700;
                        v52 = v662;
                        v69 = v669;
                        v55 = v670;
                        goto LABEL_348;
                      }

                      v69 = v669;
                      if (v583 > v585)
                      {
                        goto LABEL_406;
                      }

                      v97 = v533 - v694;
                      v95 = v694;
                      v543 = v583;
                      v544 = v585 - v583;
                      v52 = v662;
                      v55 = v670;
LABEL_348:
                      v92 = v671;
LABEL_349:
                      sub_1AACAADB4(v650, type metadata accessor for SgArea);
                      v98 = v544;
                      v96 = v543;
LABEL_350:
                      v54 = v691;
LABEL_18:
                      v739.origin.x = v63;
                      v739.origin.y = v686;
                      v739.size.height = v687;
                      v739.size.width = v699;
                      v99 = v95;
                      v100 = v97;
                      v740 = CGRectUnion(v739, *(&v96 - 1));
                      v63 = v740.origin.x;
                      v686 = v740.origin.y;
                      v687 = v740.size.height;
                      v699 = v740.size.width;

                      v94 = v684;
                      if (v684 == v674)
                      {
                        goto LABEL_371;
                      }

                      goto LABEL_19;
                    }
                  }

                  LOBYTE(v714) = 0;

                  v694 = v533;
                  if ((v714 & 1) == 0)
                  {
                    goto LABEL_329;
                  }

LABEL_322:
                  v95 = v702;
                  v97 = v54;
                  v543 = v701;
                  v544 = v700;
                  goto LABEL_349;
                }
              }

              goto LABEL_322;
            }

            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

            v117 = (v115 + 56);
            v118 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v119 = *(v117 - 2);
              v120 = *v117;
              v121 = swift_allocObject();
              *(v121 + 32) = v119;
              v122 = (v121 + 32);
              *(v121 + 40) = v120;
              v123 = *(v118 + 2);
              v124 = v123 + 2;
              if (__OFADD__(v123, 2))
              {
                goto LABEL_378;
              }

              v125 = swift_isUniquelyReferenced_nonNull_native();
              if (!v125 || (v126 = *(v118 + 3) >> 1, v126 < v124))
              {
                if (v123 <= v124)
                {
                  v127 = v123 + 2;
                }

                else
                {
                  v127 = v123;
                }

                v118 = sub_1AAD69810(v125, v127, 1, v118);
                v126 = *(v118 + 3) >> 1;
              }

              v128 = *(v118 + 2);
              if (v126 - v128 < 2)
              {
                break;
              }

              *&v118[8 * v128 + 32] = *v122;
              swift_setDeallocating();
              swift_deallocClassInstance();
              v129 = *(v118 + 2);
              v130 = __OFADD__(v129, 2);
              v131 = v129 + 2;
              if (v130)
              {
                goto LABEL_380;
              }

              *(v118 + 2) = v131;
              v117 += 5;
              if (!--v116)
              {

                v52 = v662;
                v69 = v669;
                v55 = v670;
                v57 = &unk_1AAF9E000;
                goto LABEL_287;
              }
            }

LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
            break;
          case 9uLL:
            v510 = swift_projectBox();
            v511 = v651;
            sub_1AACAAD4C(v510, v651, type metadata accessor for SgPath);
            v512 = *(v511 + 24);
            v733 = *(v511 + 8);
            v734 = v512;
            v735 = *(v511 + 40);

            v513 = sub_1AAF8E8E4();
            v95 = v702;
            v514 = v701;
            v97 = v54;
            v515 = v700;
            if ((v513 & 1) == 0)
            {
              sub_1AAF8E874();
              v95 = v516;
              v97 = v517;
            }

            v518 = v515;
            v519 = v514;
            sub_1AACAADB4(v651, type metadata accessor for SgPath);
            v96 = v519;
            v98 = v518;
            goto LABEL_350;
          case 0xAuLL:
            v97 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
            v104 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
            v95 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v97;
            v102 = v54;
            v103 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v104;
            goto LABEL_23;
          case 0xBuLL:
          case 0xCuLL:
            v102 = v54;
            v95 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v103 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v97 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v104 = *((v101 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_23:

            v96 = v103;
            v54 = v102;
            v63 = v693;
            v98 = v104;
            goto LABEL_18;
          case 0xDuLL:

            v95 = 0.0;
            v96 = 0.0;
            v97 = 0.0;
            v98 = 0.0;
            goto LABEL_18;
          case 0xEuLL:
            goto LABEL_18;
          default:
            v496 = swift_projectBox();
            v490 = v664;
            sub_1AACAAD4C(v496, v664, type metadata accessor for SgGroup);

            v95 = sub_1AAD05240();
            v136 = v54;
            v138 = v497;
            v97 = v498;
            v141 = v499;
            v495 = type metadata accessor for SgGroup;
LABEL_281:
            sub_1AACAADB4(v490, v495);
LABEL_282:
            v96 = v138;
            v54 = v136;
            v98 = v141;
            goto LABEL_18;
        }

LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
        return;
      case 3uLL:
        v70 = v56;
        v71 = swift_projectBox();
        v72 = v640;
        sub_1AACAAD4C(v71, v640, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v72 + 48, &v714);
        if (v717)
        {
          v73 = *(&v714 + 1);
          v74 = *&v715;

          v699 = v73;
          v75 = v73 * 0.5;
          v76 = *(v72 + 16);
          v63 = *(v72 + 8) - v75;
          sub_1AACAADB4(v72, type metadata accessor for SgPoint);
          v66 = v74;
          v65 = v76 - v74 * 0.5;
        }

        else
        {
          v721 = v714;
          v722 = v715;
          v723 = v716;
          if (*(v72 + 40) == 1)
          {
            v620 = *(v72 + 32);
            v621 = *(v72 + 24);

            sub_1AAE45A14(&v721);
            v699 = v621;
            v622 = v621 * 0.5;
            v623 = *(v72 + 16);
            v63 = *(v72 + 8) - v622;
            sub_1AACAADB4(v72, type metadata accessor for SgPoint);
            v66 = v620;
            v65 = v623 - v620 * 0.5;
          }

          else
          {
            v624 = *(v72 + 8);
            v625 = *(v72 + 16);
            v626 = *(&v722 + 1);
            v627 = v723;
            v628 = sqrt(*(v72 + 24));

            sub_1AACBB42C(&v721, v626);
            v629 = *(v627 + 16);
            v630 = v627;
            v55 = v670;
            v631 = v629(v626, v630);
            v633 = v632;
            v635 = v634;
            v637 = v636;
            sub_1AACAADB4(v72, type metadata accessor for SgPoint);
            v699 = v628 * v635;
            v63 = v624 + v628 * (v631 + -0.5);
            v54 = v691;
            sub_1AAE45A14(&v721);
            v65 = v625 + v628 * (v633 + -0.5);
            v66 = v628 * v637;
          }

          v56 = v70;
        }

        goto LABEL_6;
      case 4uLL:
        v597 = swift_projectBox();
        v78 = v665;
        sub_1AACAAD4C(v597, v665, type metadata accessor for SgRectangle);
        v63 = v78[1];
        v64 = v78[2];
        v62 = v78[4];
        v699 = v78[3];

        v83 = type metadata accessor for SgRectangle;
        goto LABEL_365;
      case 5uLL:
        v598 = swift_projectBox();
        v599 = v666;
        sub_1AACAAD4C(v598, v666, type metadata accessor for SgSector);
        v600 = vaddvq_f64(vmulq_f64(*(v599 + 24), xmmword_1AAFC7450));
        v601 = __sincos_stret(((*(v599 + 8) + *(v599 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v63 = v600 * v601.__cosval;
        v602 = v600 * v601.__sinval;
        v603 = (v599 + *(v667 + 52));
        v604 = v603[1];
        v699 = *v603 + *v603;

        sub_1AACAADB4(v599, type metadata accessor for SgSector);
        v65 = v602;
        v66 = v604 + v604;
        goto LABEL_6;
      case 6uLL:
        v588 = swift_projectBox();
        v78 = v641;
        sub_1AACAAD4C(v588, v641, type metadata accessor for SgRule);
        v589 = v78[1];
        v590 = v78[2];
        v591 = v78[3];
        v592 = v78[4];
        if (v591 >= v589)
        {
          v63 = v78[1];
        }

        else
        {
          v63 = v78[3];
        }

        if (v592 >= v590)
        {
          v64 = v78[2];
        }

        else
        {
          v64 = v78[4];
        }

        v699 = vabdd_f64(v591, v589);
        v62 = vabdd_f64(v592, v590);

        v83 = type metadata accessor for SgRule;
        goto LABEL_365;
      case 7uLL:
        v615 = swift_projectBox();
        v78 = v663;
        sub_1AACAAD4C(v615, v663, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v63 = v616;
        v64 = v617;
        v699 = v618;
        v62 = v619;
        v83 = type metadata accessor for SgLine;
        goto LABEL_365;
      case 8uLL:
        v77 = swift_projectBox();
        v78 = v656;
        sub_1AACAAD4C(v77, v656, type metadata accessor for SgArea);

        sub_1AAF58424();
        v63 = v79;
        v64 = v80;
        v699 = v81;
        v62 = v82;
        v83 = type metadata accessor for SgArea;
        goto LABEL_365;
      case 9uLL:
        v605 = swift_projectBox();
        v606 = v649;
        sub_1AACAAD4C(v605, v649, type metadata accessor for SgPath);
        v607 = *(v606 + 24);
        v736 = *(v606 + 8);
        v737 = v607;
        v738 = *(v606 + 40);

        v608 = sub_1AAF8E8E4();
        v63 = v702;
        v609 = v701;
        v699 = v54;
        v610 = v700;
        if ((v608 & 1) == 0)
        {
          sub_1AAF8E874();
          v63 = v611;
          v699 = v612;
        }

        v613 = type metadata accessor for SgPath;
        v614 = v649;
        v62 = v610;
        v64 = v609;
        goto LABEL_366;
      case 0xAuLL:
        v58 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v59 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v60 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v61 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v62 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v699 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
        v63 = v58 - v60 * v699;
        v64 = v59 - v61 * v62;
        goto LABEL_4;
      case 0xBuLL:
      case 0xCuLL:
        v63 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v64 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v62 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v699 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
LABEL_4:

        goto LABEL_5;
      case 0xDuLL:

        v63 = 0.0;
        v65 = 0.0;
        v699 = 0.0;
        v66 = 0.0;
        goto LABEL_6;
      case 0xEuLL:
        goto LABEL_6;
      default:
        v593 = swift_projectBox();
        v78 = v664;
        sub_1AACAAD4C(v593, v664, type metadata accessor for SgGroup);

        v63 = sub_1AAD05240();
        v64 = v594;
        v699 = v595;
        v62 = v596;
        v83 = type metadata accessor for SgGroup;
LABEL_365:
        v613 = v83;
        v614 = v78;
LABEL_366:
        sub_1AACAADB4(v614, v613);
LABEL_5:
        v65 = v64;
        v66 = v62;
        goto LABEL_6;
    }
  }
}

double sub_1AAF6632C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v17 = *a1;

  sub_1AAF8DCF4();
  sub_1AAD12A5C(a4, &v15);
  v8 = *(v15 + 2);
  if (v8)
  {
    v9 = v16;
    v10 = v15 + 40;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      v15 = v11;
      v16 = v12;
      v9(&v14, &v15);
      sub_1AACAAE1C(&v17, a2, v14);

      --v8;
    }

    while (v8);
  }

  return result;
}

double sub_1AAF6643C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD12A5C(a4, &v13);
  v7 = *(v13 + 2);
  if (v7)
  {
    v8 = v14;
    v9 = v13 + 40;
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 16;
      v13 = v10;
      v14 = v11;
      v8(&v15, &v13);
      sub_1AACAAE1C(a1, a5, v15);

      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1AAF66508(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_1AACBB42C(a2, v5);
  KeyPath = swift_getKeyPath();
  v8 = (*(v6 + 16))(a1, KeyPath, &type metadata for AnyChartSymbolShape, v5, v6);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_1AAF665B4(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 128);
  return swift_endAccess();
}

void sub_1AAF66634(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v13[4] = a1[4];
  v14[0] = v4;
  *(v14 + 9) = *(a1 + 89);
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[3];
  v8 = a2[4];
  sub_1AACBB42C(a2, v7);
  KeyPath = swift_getKeyPath();
  v10 = (*(v8 + 16))(v13, KeyPath, MEMORY[0x1E69E7DE0], v7, v8);
  v12 = v11;

  *a3 = v10;
  a3[1] = v12;
}

uint64_t sub_1AAF666F8(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 184);
  return swift_endAccess();
}

void sub_1AAF66794(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v4;
  v15 = *(a1 + 128);
  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v6 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v6;
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a2[3];
  v9 = a2[4];
  sub_1AACBB42C(a2, v8);
  KeyPath = swift_getKeyPath();
  v11 = (*(v9 + 16))(v14, KeyPath, MEMORY[0x1E697DD48], v8, v9);
  v13 = v12;

  *a3 = v11;
  a3[1] = v13;
}

uint64_t sub_1AAF66860(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 72);
  return swift_endAccess();
}

void *sub_1AAF668E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AAF8DE54();
  result = sub_1AAF8E964();
  v10 = *(a6 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a2 % v10;
  if (v11 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *(a6 + 8 * v11 + 32);
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v13 = __OFSUB__(0, v12);
  v12 = -v12;
  if (!v13)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_6:
      if (v12 < *(a5 + 16))
      {
        v14 = a5 + 40 * v12;
        v15 = *(v14 + 48);
        v17[0] = *(v14 + 32);
        v17[1] = v15;
        v18 = *(v14 + 64);

        sub_1AAF8DDF4();
        sub_1AAD12C10(v16);
        return sub_1AAE15FEC(v17);
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAF66A14(uint64_t *a1, uint64_t a2, double *a3)
{
  v5 = type metadata accessor for SgShapeStyle(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgSector(0);
  sub_1AACAAD4C(a3 + v9[12], v8, type metadata accessor for SgShapeStyle);
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  v14 = (a3 + v9[13]);
  v15 = *v14;
  v16 = v14[1];
  if (*&v8[*(v6 + 44)])
  {
    v39 = a3[1];
    v38 = 270.0;
    v41 = v12;
    v37 = v11;
    __sincos_stret(((v10 + v11) * 0.5 + 270.0) * 3.14159265 / 180.0);
    v40 = v13;
    v42 = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v43);
    v17 = (v39 + v38) * 3.14159265 / 180.0;
    v18 = a3[5];
    v19 = (v37 + v38) * 3.14159265 / 180.0;
    sub_1AAF8E444();
    v21.n128_u64[0] = v20;
    v23.n128_u64[0] = v22;
    v25.f64[0] = v24;
    sub_1AAF4344C(a3 + v9[11], *(a3 + v9[14]), v44, v41, v40, v17, v19, v18, v21, v23, v25, v26, v15, v16);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v44);

    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }

  else
  {
    v27 = (v10 + 270.0) * 3.14159265 / 180.0;
    v28 = a3[5];
    v29 = (v11 + 270.0) * 3.14159265 / 180.0;
    sub_1AAF8E444();
    v31.n128_u64[0] = v30;
    v33.n128_u64[0] = v32;
    v35.f64[0] = v34;
    sub_1AAF4344C(a3 + v9[11], *(a3 + v9[14]), v44, v12, v13, v27, v29, v28, v31, v33, v35, v36, v15, v16);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v44);
    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }
}

void sub_1AAF66D84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SgPath(0);
  sub_1AACAAD4C(a3 + *(v8 + 24), v7, type metadata accessor for SgShapeStyle);
  v9 = *(a3 + 24);
  v12 = *(a3 + 8);
  v13 = v9;
  v14 = *(a3 + 40);
  if ((sub_1AAF8E8E4() & 1) == 0)
  {
    sub_1AAF8E874();
  }

  if (*&v7[*(v5 + 36)])
  {
    v10 = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v11);
    sub_1AAF8DDA4();

    sub_1AACAADB4(v7, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAF8DDA4();
    sub_1AACAADB4(v7, type metadata accessor for SgShapeStyle);
  }
}

void sub_1AAF66F70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SgShapeStyle(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgArea(0);
  sub_1AACAAD4C(a3 + *(v9 + 32), v8, type metadata accessor for SgShapeStyle);
  sub_1AAF58424();
  if (*&v8[*(v6 + 44)])
  {
    v10[1] = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v11);
    sub_1AAF58258(v12);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v12);

    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAF58258(v12);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v12);
    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }
}

uint64_t sub_1AAF671A8@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1AAF8F454();
  *a3 = result & 1;
  return result;
}

char *sub_1AAF67208(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1AAD1FAF4(result, v5, 0);
  }

  return result;
}

void sub_1AAF67280(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1AADAA0A4(v8);
    }

    v82 = v8 + 16;
    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1AAF67808((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v36 = *(v8 + 3);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      v8 = sub_1AAD68568((v36 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v37;
    v38 = v8 + 32;
    v39 = &v8[16 * v5 + 32];
    *v39 = v9;
    *(v39 + 1) = v7;
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[16 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[16 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[16 * v5 - 16];
        v78 = *v77;
        v79 = &v38[16 * v5];
        v80 = *(v79 + 1);
        sub_1AAF67808((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v8 + 2);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        memmove(&v38[16 * v5], v79 + 16, 16 * (v81 - 1 - v5));
        *(v8 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[16 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[16 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1AAF67808(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_1AAF67A0C()
{
  if (!qword_1ED9B2890)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2890);
    }
  }
}

uint64_t sub_1AAF67B3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACC7228(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAF67B98(uint64_t a1, uint64_t a2)
{
  sub_1AACC7228(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF67C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF67CC8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 <= 2)
  {
    if (v1 >= 2)
    {
      v1 = 2;
    }

LABEL_9:
    if (v2 == 3)
    {
LABEL_12:
      v2 = 3;
      return v1 | (v2 << 8);
    }

    if (v2 == 4)
    {
      return v1 | (v2 << 8);
    }

LABEL_11:
    if (v2 == 5)
    {
      goto LABEL_12;
    }

    return v1 | (v2 << 8);
  }

  if (v1 == 3 || v1 != 4)
  {
    v1 = 3;
    goto LABEL_9;
  }

  v1 = 4;
  if (v2 == 3)
  {
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_11;
  }

  return 1028;
}

void sub_1AAF67D3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC7228(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1AAF8E724();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF67DA8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF67D3C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF67E34(__n128 a1)
{
  result = qword_1ED9AF4F0;
  if (!qword_1ED9AF4F0)
  {
    sub_1AAF686A4(255, &qword_1ED9AF4E8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF4F0);
  }

  return result;
}

void sub_1AAF67EF0(uint64_t a1)
{
  sub_1AACC7228(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAF67FC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF6800C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAF68090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAF68154(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAF68204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF6824C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6833C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF68384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 272) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AAF68420(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1AAF68454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 1;
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

uint64_t sub_1AAF684A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = 2 * -a2;
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6852C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AAF68574(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1AAF685C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AAF6860C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1AAF68650()
{
  result = qword_1EB4273F8;
  if (!qword_1EB4273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4273F8);
  }

  return result;
}

void sub_1AAF686A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF686F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v10 = *(a6 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = a2 % v10;
  if (v12 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(a6 + 8 * v12 + 32);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = __OFSUB__(0, v15);
    v15 = -v15;
    if (v16)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }
  }

  if (v15 >= *(a5 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1AAD9B194(a5 + 40 * v15 + 32, v30);
  v30[40] = 0;
  v17 = *(a8 + 16);
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = a2 % v17;
  if (v18 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(a8 + 8 * v18 + 32);
  if ((v19 & 0x8000000000000000) != 0)
  {
    v16 = __OFSUB__(0, v19);
    v19 = -v19;
    if (v16)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  if (v19 >= *(a7 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1AAD9ADE4(v30, &v26);
  if (v29 == 1)
  {
  }

  else
  {
    v23 = v26;
    v24 = v27;
    v20 = v28;
    v25 = v28;
    v21 = *(&v27 + 1);
    sub_1AACBB42C(&v23, *(&v27 + 1));
    (*(v20 + 16))(v21, v20);
    sub_1AAE45A14(&v23);
  }

  sub_1AAD9ADE4(v30, &v26);
  if ((v29 & 1) == 0)
  {
    v23 = v26;
    v24 = v27;
    v25 = v28;
    sub_1AACBB42C(&v23, *(&v27 + 1));
    sub_1AAF8EDA4();
    sub_1AAF8DE54();
    sub_1AAF8DDA4();
    sub_1AAD12C10(v31);
    sub_1AAF50004(v30);
    return sub_1AAE45A14(&v23);
  }

LABEL_28:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

double sub_1AAF689B4(void *a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  if ((*(v9 + 32) & 1) != 0 || (v10 = vdupq_n_s64(0x3CB0000000000000uLL), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_f64(*v9, v10), vcgeq_f64(*(v9 + 16), v10)))) & 1) == 0))
  {
    sub_1AAF8E944();
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAF8E964();
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  v15 = v12;
  v16 = v11;
  sub_1AAF8DE54();
  sub_1AAF8DDA4();
  return sub_1AAD0E508(v16, *(&v16 + 1), v15, *(&v15 + 1), v13);
}

uint64_t getEnumTagSinglePayload for SgAnnotation.OverflowResolution.Strategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SgAnnotation.OverflowResolution.Strategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1AAF68D84()
{
  result = qword_1EB427400;
  if (!qword_1EB427400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427400);
  }

  return result;
}

unint64_t sub_1AAF68DEC()
{
  result = qword_1EB427408;
  if (!qword_1EB427408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427408);
  }

  return result;
}

uint64_t sub_1AAF68E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v4;
      if ((*v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AACEF664(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AACEF664((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v9 = COERCE_DOUBLE(sub_1AADC5DE0(v5));
  v11 = v10;
  v13 = v12;

  if (v13)
  {
  }

  else
  {
    v14 = v9;
    v15 = v11;
    v16 = COERCE_DOUBLE(sub_1AADC5DE0(a2));
    v18 = v17;
    if (v19)
    {
      v18 = v11;
      v16 = v9;
    }

    v20 = *(a2 + 16);
    v21 = v18;
    v22 = v16;
    if (v20)
    {
      v22 = *(a2 + 32);
      v21 = *(a2 + 32 + 8 * v20 - 8);
    }

    if (v16 <= v9)
    {
      v14 = v16;
    }

    if (v18 > v11)
    {
      v15 = v18;
    }

    sub_1AAEF2CE4();
    v23 = swift_allocObject();
    a2 = v23;
    *(v23 + 16) = xmmword_1AAF9E2B0;
    if (v22 >= v21)
    {
      *(v23 + 32) = v15;
      *(v23 + 40) = v14;
    }

    else
    {
      *(v23 + 32) = v14;
      *(v23 + 40) = v15;
    }
  }

  return a2;
}

uint64_t sub_1AAF68FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_1AAD79E08(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AAF6903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, double a8, double a9)
{
  v10 = a3;
  v11 = a9;
  if (!a7)
  {
    v14 = *&a6;
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = *&a2;
      v28 = *&a4;
      v122 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v26, 0);
      v29 = v122;
      v30 = (a1 + 32);
      do
      {
        v31 = *v30;
        v33 = *(v122 + 16);
        v32 = *(v122 + 24);
        v24 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v35 = *v30;
          sub_1AACEF664((v32 > 1), v33 + 1, 1);
          v31 = v35;
        }

        v34 = pow(v31, v14);
        *(v122 + 16) = v24;
        *(v122 + 8 * v33 + 32) = v34;
        ++v30;
        --v26;
      }

      while (v26);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
      v24 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v24)
      {
        goto LABEL_58;
      }

      v27 = *&a2;
      v28 = *&a4;
    }

    v64 = *(v29 + 32);
    v65 = *(v29 + 32 + 8 * v24 - 8);

    if ((v10 & 1) != 0 || (a5 & 1) != 0 || a8 <= 2.22044605e-12 && v11 <= 2.22044605e-12)
    {
      return 0;
    }

    v66 = v28 - v27;
    if (v28 - v27 <= 1.0)
    {
      v88 = v27 - v28;
      if (v27 - v28 <= 1.0)
      {
        return 0;
      }

      v89 = fmin(v88 * 0.99 / (a8 + v11), 1.0);
      v90 = (v64 - v65) / (v88 - (a8 + v11) * v89);
      sub_1AAEF2CE4();
      v69 = swift_allocObject();
      v61 = v69;
      *(v69 + 16) = xmmword_1AAF9E2B0;
      v70 = v64 + v89 * v11 * v90;
      v71 = v65 - v89 * a8 * v90;
    }

    else
    {
      v67 = fmin(v66 * 0.99 / (a8 + v11), 1.0);
      v68 = (v65 - v64) / (v66 - (a8 + v11) * v67);
      sub_1AAEF2CE4();
      v69 = swift_allocObject();
      v61 = v69;
      *(v69 + 16) = xmmword_1AAF9E2B0;
      v70 = v64 - v67 * a8 * v68;
      v71 = v65 + v67 * v11 * v68;
    }

    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    v124 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, 2, 0);
    v84 = v61[2];
    if (!v84)
    {
      goto LABEL_96;
    }

    v11 = 1.0 / v14;
    v91 = *(v61 + 4);
    v85 = v124;
    v24 = *(v124 + 16);
    v92 = *(v124 + 24);
    v10 = v24 + 1;
    if (v24 >= v92 >> 1)
    {
      v117 = *(v61 + 4);
      sub_1AACEF664((v92 > 1), v24 + 1, 1);
      v91 = v117;
      v85 = v124;
    }

    v93 = pow(v91, 1.0 / v14);
    *(v85 + 16) = v10;
    *(v85 + 8 * v24 + 32) = v93;
    if (v61[2] < 2uLL)
    {
      goto LABEL_96;
    }

    v94 = *(v61 + 5);
    v96 = *(v85 + 16);
    v95 = *(v85 + 24);
    if (v96 >= v95 >> 1)
    {
      v118 = *(v61 + 5);
      sub_1AACEF664((v95 > 1), v96 + 1, 1);
      v94 = v118;
    }

    v97 = pow(v94, 1.0 / v14);
    *(v85 + 16) = v96 + 1;
    *(v85 + 8 * v96 + 32) = v97;
LABEL_83:

    return v85;
  }

  if (a7 == 1)
  {
    v14 = *&a6;
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = *&a2;
      v17 = *&a4;
      v121 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v15, 0);
      v18 = v121;
      v19 = (a1 + 32);
      do
      {
        v20 = *v19 * v14;
        if ((*v19 & 0x8000000000000000) != 0)
        {
          v21 = -log(1.0 - v20);
        }

        else
        {
          v21 = log(v20 + 1.0);
        }

        v23 = *(v121 + 16);
        v22 = *(v121 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = v21;
          sub_1AACEF664((v22 > 1), v23 + 1, 1);
          v21 = v25;
        }

        *(v121 + 16) = v24;
        *(v121 + 8 * v23 + 32) = v21;
        ++v19;
        --v15;
      }

      while (v15);
LABEL_36:
      v55 = *(v18 + 32);
      v56 = *(v18 + 32 + 8 * v24 - 8);

      if ((v10 & 1) == 0 && (a5 & 1) == 0 && (a8 > 2.22044605e-12 || v11 > 2.22044605e-12))
      {
        v57 = v17 - v16;
        if (v17 - v16 > 1.0)
        {
          v58 = fmin(v57 * 0.99 / (a8 + v11), 1.0);
          v59 = (v56 - v55) / (v57 - (a8 + v11) * v58);
          sub_1AAEF2CE4();
          v60 = swift_allocObject();
          v61 = v60;
          *(v60 + 16) = xmmword_1AAF9E2B0;
          v62 = v55 - v58 * a8 * v59;
          v63 = v56 + v58 * v11 * v59;
LABEL_62:
          *(v60 + 32) = v62;
          *(v60 + 40) = v63;
          v124 = MEMORY[0x1E69E7CC0];
          sub_1AACEF664(0, 2, 0);
          v84 = v61[2];
          if (!v84)
          {
            goto LABEL_95;
          }

          v85 = v124;
          v86 = *(v61 + 4);
          if ((*&v86 & 0x8000000000000000) != 0)
          {
            v87 = 1.0 - exp(-v86);
          }

          else
          {
            v87 = exp(v86) + -1.0;
          }

          v24 = *(v124 + 16);
          v84 = *(v124 + 24);
          v10 = v24 + 1;
          v11 = v87 / v14;
          if (v24 >= v84 >> 1)
          {
            goto LABEL_97;
          }

          while (1)
          {
            *(v85 + 16) = v10;
            *(v85 + 8 * v24 + 32) = v11;
            v84 = v61[2];
            if (v84 >= 2)
            {
              break;
            }

LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            sub_1AACEF664((v84 > 1), v10, 1);
            v85 = v124;
          }

          v98 = *(v61 + 5);
          if ((*&v98 & 0x8000000000000000) != 0)
          {
            v99 = 1.0 - exp(-v98);
          }

          else
          {
            v99 = exp(v98) + -1.0;
          }

          v101 = *(v85 + 16);
          v100 = *(v85 + 24);
          v102 = v99 / v14;
          if (v101 >= v100 >> 1)
          {
            sub_1AACEF664((v100 > 1), v101 + 1, 1);
          }

          *(v85 + 16) = v101 + 1;
          *(v85 + 8 * v101 + 32) = v102;
          goto LABEL_83;
        }

        v81 = v16 - v17;
        if (v16 - v17 > 1.0)
        {
          v82 = fmin(v81 * 0.99 / (a8 + v11), 1.0);
          v83 = (v55 - v56) / (v81 - (a8 + v11) * v82);
          sub_1AAEF2CE4();
          v60 = swift_allocObject();
          v61 = v60;
          *(v60 + 16) = xmmword_1AAF9E2B0;
          v62 = v55 + v82 * v11 * v83;
          v63 = v56 - v82 * a8 * v83;
          goto LABEL_62;
        }
      }

      return 0;
    }

    v18 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v24)
    {
      v16 = *&a2;
      v17 = *&a4;
      goto LABEL_36;
    }

LABEL_58:

    return 0;
  }

  if (a6 > 2)
  {
    if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a6 >= 2)
  {
    v36 = *(a1 + 16);
    if (v36)
    {
      v37 = *&a2;
      v38 = *&a4;
      v123 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v36, 0);
      v39 = v123;
      v40 = (a1 + 32);
      do
      {
        v41 = log(*v40);
        v43 = *(v123 + 16);
        v42 = *(v123 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v45 = v41;
          sub_1AACEF664((v42 > 1), v43 + 1, 1);
          v41 = v45;
        }

        *(v123 + 16) = v44;
        *(v123 + 8 * v43 + 32) = v41;
        ++v40;
        --v36;
      }

      while (v36);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
      v44 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v44)
      {
        goto LABEL_58;
      }

      v37 = *&a2;
      v38 = *&a4;
    }

    v72 = *(v39 + 32);
    v73 = *(v39 + 32 + 8 * v44 - 8);

    if ((v10 & 1) != 0 || (a5 & 1) != 0 || a8 <= 2.22044605e-12 && v11 <= 2.22044605e-12)
    {
      return 0;
    }

    v74 = v38 - v37;
    if (v38 - v37 <= 1.0)
    {
      v106 = v37 - v38;
      if (v37 - v38 <= 1.0)
      {
        return 0;
      }

      v107 = fmin(v106 * 0.99 / (a8 + v11), 1.0);
      v108 = (v72 - v73) / (v106 - (a8 + v11) * v107);
      sub_1AAEF2CE4();
      v77 = swift_allocObject();
      v78 = v77;
      *(v77 + 16) = xmmword_1AAF9E2B0;
      v79 = v72 + v107 * v11 * v108;
      v80 = v73 - v107 * a8 * v108;
    }

    else
    {
      v75 = fmin(v74 * 0.99 / (a8 + v11), 1.0);
      v76 = (v73 - v72) / (v74 - (a8 + v11) * v75);
      sub_1AAEF2CE4();
      v77 = swift_allocObject();
      v78 = v77;
      *(v77 + 16) = xmmword_1AAF9E2B0;
      v79 = v72 - v75 * a8 * v76;
      v80 = v73 + v75 * v11 * v76;
    }

    *(v77 + 32) = v79;
    *(v77 + 40) = v80;
    v125 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, 2, 0);
    if (!*(v78 + 16))
    {
      goto LABEL_98;
    }

    v110 = exp(*(v78 + 32));
    v111 = v125;
    v44 = *(v125 + 16);
    v109 = *(v125 + 24);
    v10 = v44 + 1;
    if (v44 >= v109 >> 1)
    {
      goto LABEL_99;
    }

    while (1)
    {
      *(v111 + 16) = v10;
      v112 = v111;
      *(v111 + 8 * v44 + 32) = v110;
      if (*(v78 + 16) >= 2uLL)
      {
        break;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      v119 = v110;
      sub_1AACEF664((v109 > 1), v10, 1);
      v110 = v119;
      v111 = v125;
    }

    v113 = exp(*(v78 + 40));
    v114 = v112;
    v116 = *(v112 + 16);
    v115 = *(v112 + 24);
    if (v116 >= v115 >> 1)
    {
      v120 = v113;
      sub_1AACEF664((v115 > 1), v116 + 1, 1);
      v113 = v120;
      v114 = v112;
    }

    *(v114 + 16) = v116 + 1;
    *(v114 + 8 * v116 + 32) = v113;
    v85 = v114;
    goto LABEL_83;
  }

  v46 = *(a1 + 16);
  if (!v46)
  {
    return 0;
  }

  if (a3)
  {
    return 0;
  }

  if (a5)
  {
    return 0;
  }

  v47 = *(a1 + 32);
  v48 = *(a1 + 32 + 8 * v46 - 8);
  if (a8 <= 2.22044605e-12 && a9 <= 2.22044605e-12)
  {
    return 0;
  }

  v49 = *&a4 - *&a2;
  if (*&a4 - *&a2 <= 1.0)
  {
    v103 = *&a2 - *&a4;
    if (*&a2 - *&a4 <= 1.0)
    {
      return 0;
    }

    v104 = fmin(v103 * 0.99 / (a8 + a9), 1.0);
    v105 = (v47 - v48) / (v103 - (a8 + a9) * v104);
    sub_1AAEF2CE4();
    result = swift_allocObject();
    *(result + 16) = xmmword_1AAF9E2B0;
    v53 = v47 + v104 * v11 * v105;
    v54 = v48 - v104 * a8 * v105;
  }

  else
  {
    v50 = fmin(v49 * 0.99 / (a8 + a9), 1.0);
    v51 = (v48 - v47) / (v49 - (a8 + a9) * v50);
    sub_1AAEF2CE4();
    result = swift_allocObject();
    *(result + 16) = xmmword_1AAF9E2B0;
    v53 = v47 - v50 * a8 * v51;
    v54 = v48 + v50 * v11 * v51;
  }

  *(result + 32) = v53;
  *(result + 40) = v54;
  return result;
}

uint64_t sub_1AAF69B10(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF69B80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1AAF69CD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AAF69F00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1AAF69F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AAF69FE4(unint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = a1 >> 60;
  if ((a1 >> 60) - 3 < 0xB)
  {
    v12 = sub_1AACAB6D8(a1);
    if (!sub_1AAF503AC(v12, a2))
    {
      return 0xE000000000000000;
    }

    return a1;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v54 = v8;
      v14 = swift_projectBox();
      sub_1AACE3CA8(v14, v10, type metadata accessor for SgGroup);
      sub_1AACE3CA8(v10, v6, type metadata accessor for SgGroup);
      v15 = *(v6 + 1);
      v16 = *(v15 + 16);
      if (v16)
      {
        v53 = v6;
        v57[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v16, 0);
        v17 = 32;
        v18 = v57[0];
        do
        {
          v19 = *(v15 + v17);

          v20 = sub_1AAF69FE4(v19, a2);

          v57[0] = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1AAD0F6F0((v21 > 1), v22 + 1, 1);
            v18 = v57[0];
          }

          *(v18 + 16) = v22 + 1;
          *(v18 + 8 * v22 + 32) = v20;
          v17 += 8;
          --v16;
        }

        while (v16);
        sub_1AACE40B8(v10, type metadata accessor for SgGroup);

        v6 = v53;
      }

      else
      {
        sub_1AACE40B8(v10, type metadata accessor for SgGroup);

        v18 = MEMORY[0x1E69E7CC0];
      }

      *(v6 + 1) = v18;
      a1 = swift_allocBox();
      sub_1AACE3DD4(v6, v48);
      return a1;
    }

    v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v34 = *(v31 + 16);
    if (v34)
    {
      v57[0] = MEMORY[0x1E69E7CC0];

      sub_1AAD0F6F0(0, v34, 0);
      v35 = 32;
      v36 = v57[0];
      do
      {
        v37 = *(v31 + v35);

        v38 = sub_1AAF69FE4(v37, a2);

        v57[0] = v36;
        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1AAD0F6F0((v39 > 1), v40 + 1, 1);
          v36 = v57[0];
        }

        *(v36 + 16) = v40 + 1;
        *(v36 + 8 * v40 + 32) = v38;
        v35 += 8;
        --v34;
      }

      while (v34);

      v41 = *(v32 + 16);
      if (v41)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
      v41 = *(v32 + 16);
      if (v41)
      {
LABEL_27:
        v57[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v41, 0);
        v42 = 32;
        v43 = v57[0];
        do
        {
          v44 = *(v32 + v42);

          v45 = sub_1AAF69FE4(v44, a2);

          v57[0] = v43;
          v47 = *(v43 + 16);
          v46 = *(v43 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1AAD0F6F0((v46 > 1), v47 + 1, 1);
            v43 = v57[0];
          }

          *(v43 + 16) = v47 + 1;
          *(v43 + 8 * v47 + 32) = v45;
          v42 += 8;
          --v41;
        }

        while (v41);

        goto LABEL_38;
      }
    }

    v43 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v52 = swift_allocObject();
    *(v52 + 16) = v54;
    *(v52 + 24) = v36;
    *(v52 + 32) = v43;
    *(v52 + 40) = v33;
    return v52 | 0x1000000000000000;
  }

  if (v11 == 2)
  {
    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v57);
    sub_1AAD117A0(v57, v56);
    v23 = *(&v56[0] + 1);
    v24 = *(*(&v56[0] + 1) + 16);
    if (v24)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1AAD0F6F0(0, v24, 0);
      v25 = 32;
      v26 = v55;
      do
      {
        v27 = *(v23 + v25);

        v28 = sub_1AAF69FE4(v27, a2);

        v55 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1AAD0F6F0((v29 > 1), v30 + 1, 1);
          v26 = v55;
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + 8 * v30 + 32) = v28;
        v25 += 8;
        --v24;
      }

      while (v24);
      sub_1AAF14C40(v57);
    }

    else
    {
      sub_1AAF14C40(v57);

      v26 = MEMORY[0x1E69E7CC0];
    }

    *(&v56[0] + 1) = v26;
    v49 = swift_allocObject();
    v50 = v56[1];
    *(v49 + 16) = v56[0];
    *(v49 + 32) = v50;
    v51 = v56[3];
    *(v49 + 48) = v56[2];
    *(v49 + 64) = v51;
    return v49 | 0x2000000000000000;
  }

  return a1;
}

void sub_1AAF6A544(unint64_t a1, uint64_t a2, double (*a3)(_OWORD *), uint64_t a4, char **a5, double a6)
{
  v12 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1 >> 60;
  if ((a1 >> 60) > 0xE)
  {
    goto LABEL_22;
  }

  if (((1 << v15) & 0x7BF8) != 0)
  {
    return;
  }

  if (v15 == 2)
  {
    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v55);
    v16 = *(*(&v55[0] + 1) + 16);
    if (v16)
    {
      v17 = (*(&v55[0] + 1) + 32);

      do
      {
        v18 = *v17++;

        sub_1AAF6A544(v18, a2, a3, a4, a5, a6);

        --v16;
      }

      while (v16);
    }

    else
    {
    }

    sub_1AAF14C40(v55);
LABEL_36:

    return;
  }

  if (v15 != 10)
  {
LABEL_22:
    if (!v15)
    {
      v40 = swift_projectBox();
      sub_1AACE3CA8(v40, v14, type metadata accessor for SgGroup);
      v41 = *(v14 + 1);
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = (v41 + 32);

        do
        {
          v44 = *v43++;

          sub_1AAF6A544(v44, a2, a3, a4, a5, a6);

          --v42;
        }

        while (v42);
      }

      else
      {
      }

      sub_1AACE40B8(v14, type metadata accessor for SgGroup);
      goto LABEL_36;
    }

    v45 = a1 & 0xFFFFFFFFFFFFFFFLL;
    v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v46 = *(v45 + 32);
    v48 = *(v47 + 16);
    if (v48)
    {

      v49 = 32;
      do
      {
        v50 = *(v47 + v49);

        sub_1AAF6A544(v50, a2, a3, a4, a5, a6);

        v49 += 8;
        --v48;
      }

      while (v48);

      v51 = *(v46 + 16);
      if (!v51)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v51 = *(v46 + 16);
      if (!v51)
      {
LABEL_40:

        return;
      }
    }

    v52 = 32;
    do
    {
      v53 = *(v46 + v52);

      sub_1AAF6A544(v53, a2, a3, a4, a5, a6);

      v52 += 8;
      --v51;
    }

    while (v51);
    goto LABEL_40;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
  v55[7] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
  v55[8] = v19;
  v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
  v55[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
  v56 = v20;
  v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
  v55[3] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  v55[4] = v21;
  v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
  v55[5] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
  v55[6] = v22;
  v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v55[0] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v55[1] = v23;
  v55[2] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  LOBYTE(v24) = v56;
  if (v56 != 6)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        sub_1AAF902C4();
        __break(1u);
        return;
      }

      v24 = BYTE1(v56);
    }

    if (v24 == 3)
    {

      sub_1AAD1B82C(v55, v54);
      v25 = a3(v55);
      v27 = v26;
      v29 = v28;
      v30 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1AAD6BFDC(0, *(v30 + 2) + 1, 1, v30);
        *a5 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_1AAD6BFDC((v32 > 1), v33 + 1, 1, v30);
        *a5 = v30;
      }

      v34 = v25 / a6;
      *(v30 + 2) = v33 + 1;
      v35 = &v30[16 * v33];
      *(v35 + 4) = v34;
      *(v35 + 5) = -(v29 * v27);
      v36 = *a5;
      v38 = *(*a5 + 2);
      v37 = *(*a5 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AAD6BFDC((v37 > 1), v38 + 1, 1, v36);
        *a5 = v36;
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v27 * (1.0 - v29);
      sub_1AAD1C8F0(v55);
      goto LABEL_36;
    }
  }
}

uint64_t sub_1AAF6AADC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56);
    v14 = *(v3 + 48) + 56 * v12;
    v15 = *(v14 + 32);
    v16 = *v14;
    v17 = *(v14 + 48);
    v34 = *(v14 + 16);
    v35 = v15;
    v33 = v16;
    v36 = v17;
    v18 = (v13 + 16 * v12);
    v19 = *v18;
    v20 = v18[1];
    v30 = v34;
    v31 = v16;
    v22 = *(&v15 + 1);
    v21 = v15;
    sub_1AACDC8C4(&v33, v32);
    v23 = v31 & 0xFF00;
    v24 = v23 == 512;
    if (v23 != 512)
    {
      v37[0] = v31;
      v37[1] = v30;
      v38 = v21;
      v39 = v22;
      v40 = v17;
      v25 = sub_1AACDBD1C(v37);
      v27 = v26;
      result = sub_1AACDC920(v37);
      if (v27)
      {
        v28 = (*(a2 + 56) + 16 * v25);
        if (*v28 == v19 && v28[1] == v20)
        {
          continue;
        }
      }
    }

    return v24;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF6AC84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1AACB6398(*(*(v3 + 48) + v12));
    if (v15)
    {
      result = sub_1AAD7A270(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF6AD90(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    sub_1AACE0A98(*(v3 + 56) + 48 * v12, &v18);
    if (v19 == 255)
    {
      return 1;
    }

    v14 = sub_1AACE1760(v13);
    if ((v15 & 1) == 0)
    {
      sub_1AAD57C94(&v18);
      return 0;
    }

    sub_1AACE0A98(*(a2 + 56) + 48 * v14, v17);
    v16 = sub_1AAF77A14(v17, &v18);
    sub_1AAD57C94(v17);
    result = sub_1AAD57C94(&v18);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1AAF6AF7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6B594(v7, v9);
}

uint64_t sub_1AAF6AFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AACF0744(v7, v9) & 1;
}

uint64_t sub_1AAF6B044(uint64_t a1, unsigned __int8 a2)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a2);
  MEMORY[0x1AC5992C0](a1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B0B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B110()
{
  v1 = *v0;
  MEMORY[0x1AC5992C0](*(v0 + 8));
  return MEMORY[0x1AC5992C0](v1);
}

uint64_t sub_1AAF6B150(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v3);
  MEMORY[0x1AC5992C0](v2);
  return sub_1AAF906F4();
}

double sub_1AAF6B1CC()
{
  v1 = *v0;
  MEMORY[0x1AC5992C0](*(v0 + 8));
  MEMORY[0x1AC5992C0](v1);
  sub_1AAF906B4();
  return result;
}

uint64_t sub_1AAF6B218(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v3);
  MEMORY[0x1AC5992C0](v2);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v2 != v3)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

BOOL sub_1AAF6B2F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        return a6 == 6 && a1 == a4;
      }

      else
      {
        if (a6 == 7)
        {
          if (a2 > 1u)
          {
            if (a2 == 2)
            {
              if (a5 == 2 && a1 == a4)
              {
                return 1;
              }
            }

            else if (a5 == 3 && a1 == a4)
            {
              return 1;
            }
          }

          else if (a2)
          {
            if (a5 == 1 && a1 == a4)
            {
              return 1;
            }
          }

          else if (!a5 && a1 == a4)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      v17 = a6 == 4 && a1 == a4;
      v19 = a6 == 5 && a1 == a4;
      if (a3 == 4)
      {
        return v17;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    v7 = a6 == 2 && a1 == a4;
    v9 = a6 == 3 && a1 == a4;
    if (a3 != 2)
    {
      v7 = v9;
    }

    if (a6)
    {
      v10 = 0;
    }

    else
    {
      v10 = a1 == a4;
    }

    v12 = v10 && a2 == a5;
    v14 = a6 == 1 && a1 == a4;
    if (!a3)
    {
      v14 = v12;
    }

    if (a3 <= 1u)
    {
      return v14;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1AAF6B428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4 == -1)
    {
      if (a8 == -1)
      {
        return 1;
      }
    }

    else if (a8 != -1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          if (a8 != 1)
          {
            return 0;
          }
        }

        else if (a8 != 2)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      if (a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AAF6B4B0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (HIBYTE(a4) > 1u)
  {
    if (HIBYTE(a4) != 2)
    {
      if (HIBYTE(a8) == 3 && a1 == a5 && a2 == a6)
      {
        if (a4 == 255)
        {
          if (a8 == 255)
          {
            return 1;
          }
        }

        else if (a8 != 255)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (a8 == 1 && a3 == a7)
              {
                return 1;
              }
            }

            else if (a8 == 2 && a3 == a7)
            {
              return 1;
            }
          }

          else if (!a8 && a3 == a7)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    return HIBYTE(a8) == 2 && a1 == a5;
  }

  else
  {
    if (HIBYTE(a8))
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 == a5;
    }

    v9 = v8;
    v11 = HIBYTE(a8) == 1 && a1 == a5;
    if (HIBYTE(a4))
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }
}

BOOL sub_1AAF6B594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 8))
  {
    if (v2 != 1)
    {
      if (*&v4 <= 1)
      {
        v2 = 0;
        if (v4 == 0.0)
        {
          if (v3 != 2 || v5 != 0.0)
          {
            return v2;
          }
        }

        else if (v3 != 2 || *&v5 != 1)
        {
          return v2;
        }
      }

      else if (*&v4 == 2)
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 2)
        {
          return v2;
        }
      }

      else if (*&v4 == 3)
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 3)
        {
          return v2;
        }
      }

      else
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 4)
        {
          return v2;
        }
      }

      goto LABEL_11;
    }

    v2 = 0;
    if (v3 != 1)
    {
      return v2;
    }
  }

  else if (*(a2 + 8))
  {
    return v2;
  }

  if (v4 != v5)
  {
    return v2;
  }

LABEL_11:
  v7 = *(a1 + 40);
  v2 = v7 >> 8;
  v8 = *(a2 + 40);
  if (v2 > 0xFE)
  {
    if (v8 >> 8 <= 0xFE)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v9 = v8 >> 8;
  if (v8 >> 8 > 0xFE)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v7 >> 8 > 1)
  {
    if (v2 == 2)
    {
      v2 = 0;
      if (v9 != 2)
      {
        return v2;
      }

      goto LABEL_33;
    }

    if (v9 != 3)
    {
      return 0;
    }

    v2 = 0;
    if (v10 == v11 && *(a1 + 24) == *(a2 + 24))
    {
      if (v7 == 0xFF)
      {
        if (v8 != 0xFF)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v8 == 0xFF)
      {
        return 0;
      }

      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v2 = *(a1 + 40);
      if (*(a1 + 40))
      {
        if (v2 == 1)
        {
          v2 = 0;
          if (*(a2 + 40) != 1)
          {
            return v2;
          }
        }

        else
        {
          v2 = 0;
          if (*(a2 + 40) != 2)
          {
            return v2;
          }
        }
      }

      else if (*(a2 + 40))
      {
        return v2;
      }

      goto LABEL_33;
    }

    return v2;
  }

  if (v2)
  {
    v2 = 0;
    if (v9 == 1)
    {
      goto LABEL_33;
    }

    return v2;
  }

  if (v9)
  {
    return v2;
  }

LABEL_33:
  if (v10 != v11)
  {
    return v2;
  }

LABEL_34:
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12 != 255)
  {
    return v13 != 255 && sub_1AAF6B2F0(*(a1 + 48), *(a1 + 56), v12, *(a2 + 48), *(a2 + 56), v13);
  }

  return v13 == 255;
}

uint64_t sub_1AAF6B7F8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;

      v9 = sub_1AAF6C0D8(sub_1AAF6BCFC, v10);
      goto LABEL_7;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    v8 = sub_1AAF6BCFC;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    v8 = sub_1AAF6C088;
  }

  v9 = sub_1AAF6C0AC(v8, v7);
LABEL_7:
  v11 = v9;

  sub_1AADC6930(a1, a2, a3);

  return v11;
}

void sub_1AAF6B92C(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = a3 >> 5;
  if (v7 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v7 != 6)
      {
        if ((a3 & 0x1Fu) > 1)
        {
          if ((a3 & 0x1F) == 2)
          {
            v24 = swift_allocObject();
            *(v24 + 16) = result;
            *(v24 + 24) = a2;
            sub_1AADC681C(result, a2, 2u);
            sub_1AAF6C210(sub_1AAF6BD14, v24);
          }

          else
          {
            v26 = swift_allocObject();
            *(v26 + 16) = result;
            *(v26 + 24) = a2;
            sub_1AADC681C(result, a2, 3u);
            sub_1AAF6C250(sub_1AAF6BD04, v26);
          }

          sub_1AADC6888(result, a2, a3);
          return;
        }

        if ((a3 & 0x1F) != 0)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = result;
          *(v25 + 24) = a2;
          sub_1AADC681C(result, a2, 1u);
          sub_1AAF6C230(sub_1AAF6BD0C, v25);

          sub_1AADC6888(result, a2, a3);
          return;
        }

        v23 = swift_allocObject();
        *(v23 + 16) = result;
        *(v23 + 24) = a2;
        sub_1AADC681C(result, a2, 0);
        sub_1AAF6C1F0(sub_1AAF6BD1C, v23);

        v21 = result;
LABEL_18:
        sub_1AADC6888(v21, a2, a3);
        return;
      }

      v15 = result;

      sub_1AAF6C408(v18);
    }

    else
    {
      v15 = result;
      if (v7 == 4)
      {

        sub_1AAF6C1D4(v16);
      }

      else
      {

        sub_1AAF6C34C(v20);
      }
    }

LABEL_17:

    sub_1AADC6888(v15, a2, a3);
    v21 = v15;
    goto LABEL_18;
  }

  if ((a3 >> 5) > 1u)
  {
    v15 = result;

    if (v7 == 2)
    {
      sub_1AACC0420(v17);
    }

    else
    {
      sub_1AAF6C1B8(v17);
    }

    goto LABEL_17;
  }

  if (a3 >> 5)
  {
    v15 = result;

    sub_1AAF6C330(v19);
    goto LABEL_17;
  }

  v8 = *(a4 + 16);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
    sub_1AACB4144(0, &qword_1ED9B3D70, MEMORY[0x1E69E7DE0], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v12 = v11;
    v28 = v11;
    v29 = &off_1F1FE4488;
    v27[0] = result;
    swift_beginAccess();
    sub_1AACB8910(v27, v9);
    v13 = *(a4 + 16);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      *(a4 + 16) = v14;
      v28 = v12;
      v29 = &off_1F1FE4488;
      v27[0] = a2;
      sub_1AACB8910(v27, v14);
      swift_endAccess();

      return;
    }
  }

  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for PartialSpec.Values(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpec.Values(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpec.Values(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AAF6BE50()
{
  result = qword_1EB427420;
  if (!qword_1EB427420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427420);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpec.ScaleRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpec.ScaleRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

unint64_t sub_1AAF6BF7C()
{
  result = qword_1EB427428;
  if (!qword_1EB427428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427428);
  }

  return result;
}

uint64_t sub_1AAF6BFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF6C01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAF6C104(uint64_t result, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    *(v5 + 16) = v7;
    v11[3] = a3(0);
    v11[4] = &off_1F1FE4488;
    v11[0] = v10;
    v11[1] = a2;
    swift_beginAccess();
    a4(v10, a2);
    sub_1AACB8910(v11, v7);
    swift_endAccess();
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_1AAF6C270(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *(v5 + 16) = v7;
    sub_1AAF6FB8C(0, a3, a4);
    v11[3] = v10;
    v11[4] = &off_1F1FE4488;
    v11[0] = v9;
    v11[1] = a2;
    swift_beginAccess();

    sub_1AACB8910(v11, v7);
    swift_endAccess();
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_1AAF6C34C(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(v2 + 16) = v4;
    sub_1AACB4194(0, &qword_1EB427450, MEMORY[0x1E697DB90], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v7[3] = v6;
    v7[4] = &off_1F1FE4488;
    v7[0] = v5;
    swift_beginAccess();

    sub_1AACB8910(v7, v4);
    swift_endAccess();
    return *(v2 + 16);
  }

  return result;
}

BOOL sub_1AAF6C424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6CEA0(v7, v9);
}

void sub_1AAF6C490(void *a1@<X8>)
{
  if (qword_1EB422C10 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB432210;
  v3 = *(qword_1EB432210 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1AAF901E4();
    v5 = v2 + 32;
    do
    {
      v5 += 8;

      sub_1AAF8DA44();
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      --v3;
    }

    while (v3);
    v4 = v6;
  }

  *a1 = v4;
}

double sub_1AAF6C5A0@<D0>(void *a1@<X8>)
{
  if (qword_1EB422C18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB432218;

  return result;
}

void sub_1AAF6C610(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*(a1 + 80))
  {
    if (qword_1EB422C30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1ED9AEC20 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
}

void sub_1AAF6C6B8(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 == 2)
  {
    if (qword_1EB422C38 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1ED9B03C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
}

void sub_1AAF6C7C4()
{
  if (*(v0 + 8) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v1 = *v0;
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v2 = v0[2];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v3 = v0[4];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v4 = v0[6];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v4);
  }

  if (*(v0 + 72) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v5 = v0[8];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v5);
  }
}

uint64_t sub_1AAF6C8CC()
{
  sub_1AAF90694();
  sub_1AAF6C7C4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6C910(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF6C7C4();
  return sub_1AAF906F4();
}

BOOL sub_1AAF6C94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6CDCC(v7, v9);
}

uint64_t sub_1AAF6C9A8()
{
  v1 = *v0;
  sub_1AAF906B4();
  if (v1 != 9)
  {
    MEMORY[0x1AC5992C0](v1);
  }

  if (v0[16] == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v2 = *(v0 + 1);
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v2);
  }

  if (v0[32] == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v3 = *(v0 + 3);
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v3);
  }

  return MEMORY[0x1AC5992C0](*(v0 + 5));
}

uint64_t sub_1AAF6CA5C()
{
  sub_1AAF90694();
  sub_1AAF6C9A8();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CAA0(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF6C9A8();
  return sub_1AAF906F4();
}

BOOL sub_1AAF6CADC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1AAF6CD40(v7, v8);
}

uint64_t sub_1AAF6CB24()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v2)
  {
    sub_1AAD7A524(v4, v2);
  }

  sub_1AAD7A434(v4, v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CBAC(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v4)
  {
    sub_1AAD7A524(a1, v4);
  }

  return sub_1AAD7A434(a1, v3);
}

uint64_t sub_1AAF6CC28(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  sub_1AAF90694();
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v3)
  {
    sub_1AAD7A524(v5, v3);
  }

  sub_1AAD7A434(v5, v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CCAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v7 || (sub_1AACF1088(v4, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_8:

  return sub_1AAD798E4(v5, v8);
}

BOOL sub_1AAF6CD40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 9)
  {
    if (v3 != 9)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a2[16];
  if (a1[16])
  {
    if (a2[16])
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

LABEL_11:
  v5 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

BOOL sub_1AAF6CDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

BOOL sub_1AAF6CEA0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  if ((sub_1AACF0AB8(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (sub_1AACF0880(*(a1 + 40), *(a2 + 40)) & 1) != 0 && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 48) ^ *(a2 + 48)) & 0x100) == 0 && *(a1 + 56) == *(a2 + 56))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

void sub_1AAF6CF6C(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = *(a1 + 20);
  v16 = *(a1 + 8);
  if (v16 == 254 || (v17 = *(a1 + 64), v17 == 255))
  {
    v66 = sub_1AAEA7F5C(&v67, a7, 0);
    v18 = 0;
    v24 = 32;
  }

  else
  {
    v18 = a1[7];
    v66 = a1[6];
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (*(a1 + 64) <= 5u)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (*(a1 + 64))
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 64) > 1u)
    {
      v18 = 0;
      v23 = v22;
    }

    if (*(a1 + 64) <= 3u)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v65 = v24;
  v64 = v18;
  v25 = 2;
  if (!a3)
  {
    if (v16 == 254)
    {
      v71 = 0;
    }

    else
    {
      v38 = *a1;
      if (v16 == 255)
      {
        v38 = 0;
      }

      v71 = v38;
      if (v16 == 255)
      {
        v25 = 2;
      }

      else
      {
        v25 = v16;
      }

      v39 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v39 == 3)
        {
          goto LABEL_94;
        }

        if (!v39)
        {
          v30 = v25;

          v35 = 0;
          v36 = 0;
          v13 = 0;
          v14 = 0;
          v37 = 0x8000000000000000;
          goto LABEL_73;
        }

        goto LABEL_90;
      }
    }

    v40 = *(a6 + 16);
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v42 = v25;
    *(a6 + 16) = v41;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v69 = v43;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 2;
    swift_beginAccess();
    sub_1AACB8910(&v67, v41);
    v12 = *(a6 + 16);
    if (__OFADD__(v12, 1))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *(a6 + 16) = v12 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v69 = v44;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v12 + 1);
    swift_endAccess();
    v13 = *(a6 + 16);
LABEL_54:
    v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
    v35 = v12;
    v25 = v42;
    goto LABEL_55;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v71 = 0;
LABEL_37:
      v28 = *(a6 + 16);
      v29 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        v30 = v25;
        *(a6 + 16) = v29;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v69 = v31;
        v70 = &off_1F1FE4488;
        LOBYTE(v67) = 2;
        swift_beginAccess();
        sub_1AACB8910(&v67, v29);
        v32 = *(a6 + 16);
        v33 = v32 + 1;
        if (!__OFADD__(v32, 1))
        {
          *(a6 + 16) = v33;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v69 = v34;
          v70 = &off_1F1FE4488;
          LOBYTE(v67) = 0;
          sub_1AACB8910(&v67, v33);
          swift_endAccess();
          v13 = *(a6 + 16);
          goto LABEL_40;
        }

        goto LABEL_106;
      }

      __break(1u);
      goto LABEL_104;
    }

    v26 = *a1;
    if (v16 == 255)
    {
      v26 = 0;
    }

    v71 = v26;
    if (v16 == 255)
    {
      v25 = 2;
    }

    else
    {
      v25 = v16;
    }

    v27 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      goto LABEL_37;
    }

    if (v27 != 3)
    {
      if (v27 == 1)
      {
        v30 = v25;

        v35 = 0;
        v36 = 0;
        v13 = 0;
        v14 = 0;
        v37 = 0xA000000000000000;
LABEL_73:
        v56 = v66;
        v57 = v65;
LABEL_80:
        *a8 = v71;
        *(a8 + 8) = v30;
        *(a8 + 16) = v12;
        *(a8 + 24) = v35;
        *(a8 + 32) = v36;
        *(a8 + 40) = v13;
        *(a8 + 48) = v37;
        *(a8 + 56) = v14;
        *(a8 + 64) = v56;
        *(a8 + 72) = v64;
        *(a8 + 80) = v57;
        return;
      }

      goto LABEL_97;
    }

    v30 = v25;
    if (v15 == 1)
    {
LABEL_41:
      v12 = a4;
      if ((a5 & 0xFF00) == 0x200 || a5 != 1)
      {
        v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
      }

      v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v36 = 0;
      v37 = 0x2000000000000100;
      goto LABEL_73;
    }

    if (v15 == 255)
    {
LABEL_40:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
      goto LABEL_41;
    }

    __break(1u);
LABEL_94:
    if (v15)
    {
      v42 = v25;
      if (v15 != 255)
      {
        __break(1u);
LABEL_97:
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
        sub_1AAF90284();
        v59 = v67;
        v58 = v68;
        goto LABEL_98;
      }

      goto LABEL_54;
    }

LABEL_102:
    v35 = v12;
LABEL_55:
    v45 = a4;
    if (v25 == 1 || v25 == 2 && v71 == 2)
    {
      v30 = v25;
      v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v46 = 0;
      v47 = 0;
    }

    else
    {
      v30 = v25;
      v46 = (a2 < 9u) & (0x187u >> a2);
      v47 = 2;
    }

    if ((a5 & 0xFF00) == 0x200 || a5)
    {
      v45 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

      sub_1AAEAEF98(v35, v46, v47);
    }

    else
    {
      sub_1AAEAEF98(v35, v46, v47);
    }

    v56 = v66;
    v57 = v65;
    v36 = v46 | (v47 << 8);
    v37 = 256;
    v12 = v45;
    goto LABEL_80;
  }

  if (v16 == 254)
  {
    v71 = 0;
    goto LABEL_65;
  }

  v48 = *a1;
  if (v16 == 255)
  {
    v48 = 0;
  }

  v71 = v48;
  if (v16 == 255)
  {
    v25 = 2;
  }

  else
  {
    v25 = v16;
  }

  v49 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v49 == 3)
    {
      v30 = v25;
      if (v15 == 2)
      {
LABEL_69:
        v12 = a4;
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

        v36 = 0;
        v37 = 0x4000000000000100;
        goto LABEL_73;
      }

      if (v15 != 255)
      {
        __break(1u);
        goto LABEL_102;
      }

LABEL_68:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      goto LABEL_69;
    }

    if (v49 == 2)
    {
      v30 = v25;

      v35 = 0;
      v36 = 0;
      v13 = 0;
      v14 = 0;
      v37 = 0xC000000000000000;
      goto LABEL_73;
    }

LABEL_90:
    v58 = 0x80000001AAFD0590;
    v59 = 0xD00000000000003BLL;
LABEL_98:
    sub_1AAF6F968();
    swift_allocError();
    *v60 = v59;
    v60[1] = v58;
    swift_willThrow();
    sub_1AAD12C64(v66, v64, v65);

    return;
  }

LABEL_65:
  v50 = *(a6 + 16);
  v51 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v30 = v25;
  *(a6 + 16) = v51;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v69 = v52;
  v70 = &off_1F1FE4488;
  LOBYTE(v67) = 2;
  swift_beginAccess();
  sub_1AACB8910(&v67, v51);
  v53 = *(a6 + 16);
  v54 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    *(a6 + 16) = v54;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v69 = v55;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v54);
    swift_endAccess();
    v13 = *(a6 + 16);
    goto LABEL_68;
  }

LABEL_108:
  __break(1u);
}

void sub_1AAF6D8C0(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  LODWORD(v15) = *(a1 + 40);
  v16 = *(a1 + 8);
  v73 = *(a1 + 24);
  if (v16 == 254 || (v17 = *(a1 + 64), v17 == 255))
  {
    if (a7 == 2)
    {
      v68 = sub_1AAEA8034(&v69, sub_1AAF6C490, 0);
      v18 = 0;
      v24 = 96;
    }

    else
    {
      v68 = sub_1AAEA810C(&v69, sub_1AAF6C5A0, 0);
      v18 = 0;
      v24 = -96;
    }
  }

  else
  {
    v18 = *(a1 + 56);
    v68 = *(a1 + 48);
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (*(a1 + 64) <= 5u)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (*(a1 + 64))
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 64) > 1u)
    {
      v18 = 0;
      v23 = v22;
    }

    if (*(a1 + 64) <= 3u)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v67 = v24;
  v66 = v18;
  v25 = 2;
  if (!a3)
  {
    v63 = a5;
    if (v16 == 254)
    {
      v26 = 0;
    }

    else
    {
      if (v16 == 255)
      {
        a5 = 0;
      }

      else
      {
        a5 = *a1;
      }

      if (v16 == 255)
      {
        v25 = 2;
      }

      else
      {
        v25 = v16;
      }

      v39 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v39 == 3)
        {
LABEL_104:
          if (!v15)
          {
            v36 = v13;
LABEL_61:
            v45 = a4;
            if (v25 == 1 || v25 == 2 && a5 == 2)
            {
              v31 = v25;
              v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

              v46 = 0;
              v47 = 0;
            }

            else
            {
              v31 = v25;
              v46 = (a2 < 9u) & (0x187u >> a2);
              v47 = 2;
            }

            if ((v63 & 0xFF00) == 0x200 || v63)
            {
              v45 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

              sub_1AAEAEF98(v36, v46, v47);
            }

            else
            {
              sub_1AAEAEF98(v36, v46, v47);
            }

            v55 = v68;
            v56 = v67;
            v37 = v46 | (v47 << 8);
            v38 = 256;
            v13 = v45;
            v15 = a5;
            goto LABEL_88;
          }

          v42 = v25;
          if (v15 != 255)
          {
            __break(1u);
LABEL_107:
            v69 = 0;
            v70 = 0xE000000000000000;
            sub_1AAF900D4();
            MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
            sub_1AAF90284();
            v59 = v69;
            v58 = v70;
            goto LABEL_108;
          }

LABEL_60:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v36 = v13;
          v25 = v42;
          goto LABEL_61;
        }

        if (!v39)
        {
          v31 = v25;

          v36 = 0;
          v37 = 0;
          v57 = 0;
          v14 = 0;
          v38 = 0x8000000000000000;
          v55 = v68;
          v56 = v67;
          v15 = a5;
          goto LABEL_89;
        }

        goto LABEL_100;
      }

      v26 = a5;
    }

    v40 = *(a6 + 16);
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v42 = v25;
    *(a6 + 16) = v41;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v71 = v43;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 2;
    swift_beginAccess();
    sub_1AACB8910(&v69, v41);
    v13 = *(a6 + 16);
    if (__OFADD__(v13, 1))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    *(a6 + 16) = v13 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v71 = v44;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 0;
    sub_1AACB8910(&v69, v13 + 1);
    swift_endAccess();
    v73 = *(a6 + 16);
    a5 = v26;
    goto LABEL_60;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v15 = 0;
LABEL_41:
      v29 = *(a6 + 16);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        v31 = v25;
        *(a6 + 16) = v30;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v71 = v32;
        v72 = &off_1F1FE4488;
        LOBYTE(v69) = 2;
        swift_beginAccess();
        sub_1AACB8910(&v69, v30);
        v33 = *(a6 + 16);
        v34 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          *(a6 + 16) = v34;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v71 = v35;
          v72 = &off_1F1FE4488;
          LOBYTE(v69) = 0;
          sub_1AACB8910(&v69, v34);
          swift_endAccess();
          v73 = *(a6 + 16);
LABEL_44:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v13 = a4;
          goto LABEL_45;
        }

        goto LABEL_118;
      }

      __break(1u);
      goto LABEL_116;
    }

    if (v16 == 255)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a1;
    }

    if (v16 == 255)
    {
      v25 = 2;
    }

    else
    {
      v25 = v16;
    }

    v28 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      v15 = v27;
      goto LABEL_41;
    }

    if (v28 != 3)
    {
      if (v28 == 1)
      {
        v31 = v25;

        v36 = 0;
        v37 = 0;
        v57 = 0;
        v14 = 0;
        v38 = 0xA000000000000000;
LABEL_99:
        v55 = v68;
        v56 = v67;
        v15 = v27;
        goto LABEL_89;
      }

      goto LABEL_107;
    }

    v31 = v25;
    v60 = v15;
    if (v15 != 1)
    {
      v15 = v27;
      if (v60 == 255)
      {
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_104;
    }

LABEL_112:
    v13 = a4;
    v15 = v27;
LABEL_45:
    if ((a5 & 0xFF00) == 0x200 || a5 != 1)
    {
      v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    }

    v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

    v37 = 0;
    v38 = 0x2000000000000100;
LABEL_81:
    v55 = v68;
    v56 = v67;
LABEL_88:
    v57 = v73;
LABEL_89:
    *a8 = v15;
    *(a8 + 8) = v31;
    *(a8 + 16) = v13;
    *(a8 + 24) = v36;
    *(a8 + 32) = v37;
    *(a8 + 40) = v57;
    *(a8 + 48) = v38;
    *(a8 + 56) = v14;
    *(a8 + 64) = v55;
    *(a8 + 72) = v66;
    *(a8 + 80) = v56;
    return;
  }

  if (v16 == 254)
  {
    v15 = 0;
    goto LABEL_73;
  }

  if (v16 == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = *a1;
  }

  if (v16 == 255)
  {
    LOBYTE(v25) = 2;
  }

  else
  {
    LOBYTE(v25) = v16;
  }

  v48 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v48 == 3)
    {
      v31 = v25;
      v62 = v15;
      if (v15 == 2)
      {
        v13 = a4;
        v15 = v27;
LABEL_77:
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

        v37 = 0;
        v38 = 0x4000000000000100;
        goto LABEL_81;
      }

      v15 = v27;
      if (v62 != 255)
      {
        __break(1u);
        goto LABEL_112;
      }

LABEL_76:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      v13 = a4;
      goto LABEL_77;
    }

    if (v48 == 2)
    {
      v31 = v25;

      v36 = 0;
      v37 = 0;
      v57 = 0;
      v14 = 0;
      v38 = 0xC000000000000000;
      goto LABEL_99;
    }

LABEL_100:
    v58 = 0x80000001AAFD0590;
    v59 = 0xD00000000000003BLL;
LABEL_108:
    sub_1AAF6F968();
    swift_allocError();
    *v61 = v59;
    v61[1] = v58;
    swift_willThrow();
    sub_1AAD12C64(v68, v66, v67);

    return;
  }

  v15 = v27;
LABEL_73:
  v49 = *(a6 + 16);
  v50 = v49 + 1;
  if (__OFADD__(v49, 1))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v31 = v25;
  *(a6 + 16) = v50;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v71 = v51;
  v72 = &off_1F1FE4488;
  LOBYTE(v69) = 2;
  swift_beginAccess();
  sub_1AACB8910(&v69, v50);
  v52 = *(a6 + 16);
  v53 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    *(a6 + 16) = v53;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v71 = v54;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 0;
    sub_1AACB8910(&v69, v53);
    swift_endAccess();
    v73 = *(a6 + 16);
    goto LABEL_76;
  }

LABEL_120:
  __break(1u);
}

void sub_1AAF6E2A8(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a1[2];
  v69 = a1[4];
  v70 = a1[3];
  LODWORD(v15) = *(a1 + 20);
  v16 = *(a1 + 8);
  if (v16 != 254)
  {
    v17 = *(a1 + 64);
    if (v17 != 255)
    {
      v18 = a1[7];
      v81 = a1[6];
      v19 = v18;
      if (v17 == 6)
      {
        v19 = 0;
        v20 = -63;
      }

      else
      {
        v20 = -32;
      }

      if (v17 == 4)
      {
        v21 = -127;
      }

      else
      {
        v21 = -95;
      }

      if (v17 <= 5)
      {
        v19 = 0;
        v20 = v21;
      }

      if (v17 == 2)
      {
        v22 = 65;
      }

      else
      {
        v22 = 97;
      }

      if (v17)
      {
        v18 = 0;
        v23 = 33;
      }

      else
      {
        v23 = 0;
      }

      if (v17 > 1)
      {
        v18 = 0;
        v23 = v22;
      }

      if (v17 <= 3)
      {
        v24 = v23;
      }

      else
      {
        v18 = v19;
        v24 = v20;
      }

LABEL_24:
      v74 = v24;
      v75 = v18;
      v28 = 2;
      if (a3)
      {
        if (a3 == 1)
        {
          if (v16 == 254)
          {
            v15 = 0;
LABEL_40:
            v32 = *(a6 + 16);
            v33 = v32 + 1;
            if (!__OFADD__(v32, 1))
            {
              *(a6 + 16) = v33;
              sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              v79 = v34;
              v80 = &off_1F1FE4488;
              LOBYTE(v77) = 2;
              swift_beginAccess();
              sub_1AACB8910(&v77, v33);
              v35 = *(a6 + 16);
              v36 = v35 + 1;
              if (!__OFADD__(v35, 1))
              {
                *(a6 + 16) = v36;
                sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
                v79 = v37;
                v80 = &off_1F1FE4488;
                LOBYTE(v77) = 0;
                sub_1AACB8910(&v77, v36);
                swift_endAccess();
                v38 = *(a6 + 16);
LABEL_43:
                v39 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
                v14 = a4;
                v40 = a5;
                goto LABEL_44;
              }

              goto LABEL_116;
            }

            __break(1u);
            goto LABEL_114;
          }

          if (v16 == 255)
          {
            v30 = 0;
          }

          else
          {
            v30 = *a1;
          }

          if (v16 == 255)
          {
            v28 = 2;
          }

          else
          {
            v28 = v16;
          }

          v31 = v15 >> 8;
          if (v15 >> 8 > 0xFE)
          {
            v15 = v30;
            goto LABEL_40;
          }

          if (v31 != 3)
          {
            if (v31 == 1)
            {

              v41 = 0;
              v42 = 0;
              v38 = 0;
              v43 = 0xA000000000000000;
LABEL_95:
              v61 = v81;
              v62 = v74;
              v15 = v30;
              v39 = 0;
              goto LABEL_96;
            }

            goto LABEL_104;
          }

          v65 = v15;
          if (v15 != 1)
          {
            v15 = v30;
            v38 = v70;
            if (v65 == 255)
            {
              goto LABEL_43;
            }

            __break(1u);
            goto LABEL_101;
          }

LABEL_109:
          v14 = a4;
          v15 = v30;
          v40 = a5;
          v39 = v69;
          v38 = v70;
LABEL_44:
          if ((v40 & 0xFF00) == 0x200 || v40 != 1)
          {
            v14 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
          }

          v41 = sub_1AAEA7E5C(v76, sub_1AAF7030C, 0);

          v42 = 0;
          v43 = 0x2000000000000100;
LABEL_79:
          v61 = v81;
          v62 = v74;
LABEL_96:
          *a9 = v15;
          *(a9 + 8) = v28;
          *(a9 + 16) = v14;
          *(a9 + 24) = v41;
          *(a9 + 32) = v42;
          *(a9 + 40) = v38;
          *(a9 + 48) = v43;
          *(a9 + 56) = v39;
          *(a9 + 64) = v61;
          *(a9 + 72) = v75;
          *(a9 + 80) = v62;
          return;
        }

        if (v16 == 254)
        {
          v15 = 0;
LABEL_71:
          v54 = *(a6 + 16);
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          *(a6 + 16) = v55;
          sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          v79 = v56;
          v80 = &off_1F1FE4488;
          LOBYTE(v77) = 2;
          swift_beginAccess();
          sub_1AACB8910(&v77, v55);
          v57 = *(a6 + 16);
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          *(a6 + 16) = v58;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v79 = v59;
          v80 = &off_1F1FE4488;
          LOBYTE(v77) = 0;
          sub_1AACB8910(&v77, v58);
          swift_endAccess();
          v38 = *(a6 + 16);
          goto LABEL_74;
        }

        if (v16 == 255)
        {
          v30 = 0;
        }

        else
        {
          v30 = *a1;
        }

        if (v16 == 255)
        {
          LOBYTE(v28) = 2;
        }

        else
        {
          LOBYTE(v28) = v16;
        }

        v53 = v15 >> 8;
        if (v15 >> 8 > 0xFE)
        {
          v15 = v30;
          goto LABEL_71;
        }

        if (v53 == 3)
        {
          v67 = v15;
          if (v15 == 2)
          {
            v14 = a4;
            v15 = v30;
            v60 = a5;
            v39 = v69;
            v38 = v70;
LABEL_75:
            if ((v60 & 0xFF00) == 0x200 || v60 != 2)
            {
              v14 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
            }

            v41 = sub_1AAEA7E5C(v76, sub_1AAF7030C, 0);

            v42 = 0;
            v43 = 0x4000000000000100;
            goto LABEL_79;
          }

          v15 = v30;
          v38 = v70;
          if (v67 != 255)
          {
            __break(1u);
            goto LABEL_109;
          }

LABEL_74:
          v39 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
          v14 = a4;
          v60 = a5;
          goto LABEL_75;
        }

        if (v53 == 2)
        {

          v41 = 0;
          v42 = 0;
          v38 = 0;
          v43 = 0xC000000000000000;
          goto LABEL_95;
        }

LABEL_97:
        v63 = 0x80000001AAFD0590;
        v64 = 0xD00000000000003BLL;
LABEL_105:
        sub_1AAF6F968();
        swift_allocError();
        *v66 = v64;
        v66[1] = v63;
        swift_willThrow();
        sub_1AAD12C64(v81, v75, v74);

        return;
      }

      if (v16 == 254)
      {
        v29 = 0;
      }

      else
      {
        if (v16 == 255)
        {
          v30 = 0;
        }

        else
        {
          v30 = *a1;
        }

        if (v16 == 255)
        {
          v28 = 2;
        }

        else
        {
          v28 = v16;
        }

        v44 = v15 >> 8;
        if (v15 >> 8 <= 0xFE)
        {
          if (v44 == 3)
          {
LABEL_101:
            if (!v15)
            {
              v41 = v14;
              v50 = a4;
              v68 = v30;
              v49 = v69;
              v38 = v70;
              if (v28 == 1)
              {
                goto LABEL_62;
              }

LABEL_60:
              if (v28 != 2 || v68 != 2)
              {
                v51 = (a2 < 9u) & (0x187u >> a2);
                v52 = 2;
LABEL_81:
                if ((a5 & 0xFF00) == 0x200 || a5)
                {
                  v50 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

                  sub_1AAEAEF98(v41, v51, v52);
                }

                else
                {
                  sub_1AAEAEF98(v41, v51, v52);
                }

                v62 = v74;
                v42 = v51 | (v52 << 8);
                v43 = 256;
                v14 = v50;
                v61 = v81;
                v39 = v49;
                v15 = v68;
                goto LABEL_96;
              }

LABEL_62:
              v41 = sub_1AAEA7E5C(v76, sub_1AAF7030C, 0);

              v51 = 0;
              v52 = 0;
              goto LABEL_81;
            }

            v29 = v30;
            v38 = v70;
            if (v15 != 255)
            {
              __break(1u);
LABEL_104:
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_1AAF900D4();
              MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
              v76[0] = a2;
              sub_1AAF90284();
              v64 = v77;
              v63 = v78;
              goto LABEL_105;
            }

LABEL_59:
            v68 = v29;
            v49 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
            v41 = v14;
            v50 = a4;
            if (v28 == 1)
            {
              goto LABEL_62;
            }

            goto LABEL_60;
          }

          if (!v44)
          {

            v41 = 0;
            v42 = 0;
            v38 = 0;
            v43 = 0x8000000000000000;
            goto LABEL_95;
          }

          goto LABEL_97;
        }

        v29 = v30;
      }

      v45 = *(a6 + 16);
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      *(a6 + 16) = v46;
      sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      v79 = v47;
      v80 = &off_1F1FE4488;
      LOBYTE(v77) = 2;
      swift_beginAccess();
      sub_1AACB8910(&v77, v46);
      v14 = *(a6 + 16);
      if (__OFADD__(v14, 1))
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      *(a6 + 16) = v14 + 1;
      sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
      v79 = v48;
      v80 = &off_1F1FE4488;
      LOBYTE(v77) = 0;
      sub_1AACB8910(&v77, v14 + 1);
      swift_endAccess();
      v38 = *(a6 + 16);
      goto LABEL_59;
    }
  }

  if (a7 == 2)
  {
    v25 = swift_allocObject();
    v26 = *(a8 + 48);
    *(v25 + 48) = *(a8 + 32);
    *(v25 + 64) = v26;
    *(v25 + 80) = *(a8 + 64);
    *(v25 + 96) = *(a8 + 80);
    v27 = *(a8 + 16);
    *(v25 + 16) = *a8;
    *(v25 + 32) = v27;
    sub_1AACC135C(a8, &v77);
    v81 = sub_1AAEA8208(v76, sub_1AAF6FB7C, v25);
    v18 = 0;
    v24 = 0x80;
    goto LABEL_24;
  }

LABEL_119:
  sub_1AAF902C4();
  __break(1u);
}

void sub_1AAF6ECE8(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = a1[2];
  v68 = a1[3];
  v14 = a1[4];
  LODWORD(v15) = *(a1 + 20);
  v16 = *(a1 + 8);
  if (v16 == 254 || (v17 = *(a1 + 64), v17 == 255))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a7;
    v78 = sub_1AAEA82E0(&v74, sub_1AAF6FB84, v25);
    v18 = 0;
    v24 = -64;
  }

  else
  {
    v18 = a1[7];
    v78 = a1[6];
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (v17 <= 5)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (v17)
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (v17 > 1)
    {
      v18 = 0;
      v23 = v22;
    }

    if (v17 <= 3)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v73 = v24;
  v72 = v18;
  v26 = 2;
  if (!a3)
  {
    if (v16 == 254)
    {
      v27 = 0;
    }

    else
    {
      v40 = *a1;
      if (v16 == 255)
      {
        v40 = 0;
      }

      v66 = v40;
      if (v16 == 255)
      {
        v26 = 2;
      }

      else
      {
        v26 = v16;
      }

      v41 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v41 == 3)
        {
LABEL_100:
          v63 = v15;
          if (!v15)
          {
            v37 = v13;
            v46 = v68;
            v47 = a4;
            v27 = v66;
LABEL_58:
            v69 = v46;
            if (v26 == 1 || v26 == 2 && v27 == 2)
            {
              v48 = v27;
              v49 = v26;
              v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

              v50 = 0;
              v26 = 0;
            }

            else
            {
              v48 = v27;
              v49 = v26;
              v50 = (a2 < 9u) & (0x187u >> a2);
              v26 = 2;
            }

            if ((a5 & 0xFF00) == 0x200 || a5)
            {
              v47 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

              sub_1AAEAEF98(v37, v50, v26);
            }

            else
            {
              sub_1AAEAEF98(v37, v50, v26);
            }

            v58 = v78;
            v59 = v73;
            v38 = v50 | (v26 << 8);
            v39 = 256;
            v13 = v47;
            LOBYTE(v26) = v49;
            v15 = v48;
            v36 = v69;
            goto LABEL_85;
          }

          v27 = v66;
          v46 = v68;
          if (v63 != 255)
          {
            __break(1u);
LABEL_103:
            v74 = 0;
            v75 = 0xE000000000000000;
            sub_1AAF900D4();
            MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
            sub_1AAF90284();
            v61 = v74;
            v60 = v75;
            goto LABEL_104;
          }

LABEL_57:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v37 = v13;
          v47 = a4;
          goto LABEL_58;
        }

        if (!v41)
        {

          v37 = 0;
          v38 = 0;
          v36 = 0;
          v14 = 0;
          v39 = 0x8000000000000000;
          v58 = v78;
          v59 = v73;
          v15 = v66;
          goto LABEL_85;
        }

        goto LABEL_96;
      }

      v27 = v66;
    }

    v42 = *(a6 + 16);
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    *(a6 + 16) = v43;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v76 = v44;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 2;
    swift_beginAccess();
    sub_1AACB8910(&v74, v43);
    v13 = *(a6 + 16);
    if (__OFADD__(v13, 1))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    *(a6 + 16) = v13 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v76 = v45;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 0;
    sub_1AACB8910(&v74, v13 + 1);
    swift_endAccess();
    v46 = *(a6 + 16);
    goto LABEL_57;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v15 = 0;
LABEL_39:
      v30 = *(a6 + 16);
      v31 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        *(a6 + 16) = v31;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v76 = v32;
        v77 = &off_1F1FE4488;
        LOBYTE(v74) = 2;
        swift_beginAccess();
        sub_1AACB8910(&v74, v31);
        v33 = *(a6 + 16);
        v34 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          *(a6 + 16) = v34;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v76 = v35;
          v77 = &off_1F1FE4488;
          LOBYTE(v74) = 0;
          sub_1AACB8910(&v74, v34);
          swift_endAccess();
          v36 = *(a6 + 16);
LABEL_42:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v13 = a4;
          goto LABEL_43;
        }

        goto LABEL_114;
      }

      __break(1u);
      goto LABEL_112;
    }

    if (v16 == 255)
    {
      v28 = 0;
    }

    else
    {
      v28 = *a1;
    }

    if (v16 == 255)
    {
      v26 = 2;
    }

    else
    {
      v26 = v16;
    }

    v29 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      v15 = v28;
      goto LABEL_39;
    }

    if (v29 != 3)
    {
      if (v29 == 1)
      {

        v37 = 0;
        v38 = 0;
        v36 = 0;
        v14 = 0;
        v39 = 0xA000000000000000;
LABEL_95:
        v58 = v78;
        v59 = v73;
        v15 = v28;
        goto LABEL_85;
      }

      goto LABEL_103;
    }

    v62 = v15;
    if (v15 != 1)
    {
      v15 = v28;
      v36 = v68;
      if (v62 == 255)
      {
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_100;
    }

LABEL_108:
    v36 = v68;
    v13 = a4;
    v15 = v28;
LABEL_43:
    if ((a5 & 0xFF00) == 0x200 || a5 != 1)
    {
      v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    }

    v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

    v38 = 0;
    v39 = 0x2000000000000100;
LABEL_78:
    v58 = v78;
    v59 = v73;
LABEL_85:
    *a8 = v15;
    *(a8 + 8) = v26;
    *(a8 + 16) = v13;
    *(a8 + 24) = v37;
    *(a8 + 32) = v38;
    *(a8 + 40) = v36;
    *(a8 + 48) = v39;
    *(a8 + 56) = v14;
    *(a8 + 64) = v58;
    *(a8 + 72) = v72;
    *(a8 + 80) = v59;
    return;
  }

  if (v16 == 254)
  {
    v15 = 0;
    goto LABEL_70;
  }

  if (v16 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = *a1;
  }

  if (v16 == 255)
  {
    LOBYTE(v26) = 2;
  }

  else
  {
    LOBYTE(v26) = v16;
  }

  v51 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v51 == 3)
    {
      v65 = v15;
      if (v15 == 2)
      {
        v36 = v68;
        v13 = a4;
        v15 = v28;
LABEL_74:
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

        v38 = 0;
        v39 = 0x4000000000000100;
        goto LABEL_78;
      }

      v15 = v28;
      v36 = v68;
      if (v65 != 255)
      {
        __break(1u);
        goto LABEL_108;
      }

LABEL_73:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      v13 = a4;
      goto LABEL_74;
    }

    if (v51 == 2)
    {

      v37 = 0;
      v38 = 0;
      v36 = 0;
      v14 = 0;
      v39 = 0xC000000000000000;
      goto LABEL_95;
    }

LABEL_96:
    v60 = 0x80000001AAFD0590;
    v61 = 0xD00000000000003BLL;
LABEL_104:
    sub_1AAF6F968();
    swift_allocError();
    *v64 = v61;
    v64[1] = v60;
    swift_willThrow();
    sub_1AAD12C64(v78, v72, v73);

    return;
  }

  v15 = v28;
LABEL_70:
  v52 = *(a6 + 16);
  v53 = v52 + 1;
  if (__OFADD__(v52, 1))
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  *(a6 + 16) = v53;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v76 = v54;
  v77 = &off_1F1FE4488;
  LOBYTE(v74) = 2;
  swift_beginAccess();
  sub_1AACB8910(&v74, v53);
  v55 = *(a6 + 16);
  v56 = v55 + 1;
  if (!__OFADD__(v55, 1))
  {
    *(a6 + 16) = v56;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v76 = v57;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 0;
    sub_1AACB8910(&v74, v56);
    swift_endAccess();
    v36 = *(a6 + 16);
    goto LABEL_73;
  }

LABEL_116:
  __break(1u);
}

void sub_1AAF6F6C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AACC3154(MEMORY[0x1E69E7CC0]);
  memset(__src, 0, 40);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4;
  *(a1 + 16) = v6;
  sub_1AACB40E8(0, &qword_1ED9B3D58, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  __dst[3] = v8;
  __dst[4] = &off_1F1FE4488;
  __dst[0] = swift_allocObject();
  sub_1AACB8890(__src, __dst[0] + 16, qword_1ED9B3E60, &type metadata for AnyChartContent);
  swift_beginAccess();
  sub_1AACB8910(__dst, v6);
  swift_endAccess();
  sub_1AACB9168(__src);
  v9 = *(a1 + 16);
  v10 = sub_1AACB91E8(0, 0);
  sub_1AAF6F934(__src);
  memcpy(__dst, __src, 0x102uLL);
  v11 = sub_1AACB92B8(__dst);
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1AACB978C(MEMORY[0x1E69E7CC0]);
  v14 = sub_1AADF88B8(v12);
  v15 = *(a1 + 16);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = v14;
  *(a1 + 16) = v16;
  sub_1AACB40E8(0, &qword_1ED9B3D48, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v18 = v17;
  v25 = v17;
  v26 = &off_1F1FE4488;
  v23 = 0;
  v24 = 1;
  swift_beginAccess();
  sub_1AACB8910(&v23, v16);
  v19 = *(a1 + 16);
  v20 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    *(a1 + 16) = v20;
    v25 = v18;
    v26 = &off_1F1FE4488;
    v23 = 0;
    v24 = 1;
    sub_1AACB8910(&v23, v20);
    swift_endAccess();
    v21 = *(a1 + 16);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = v13;
    *(a2 + 40) = v22;
    *(a2 + 48) = 0;
    *(a2 + 56) = v19;
    *(a2 + 64) = v21;
    *(a2 + 72) = v7;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1AAF6F934(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

unint64_t sub_1AAF6F968()
{
  result = qword_1EB427430;
  if (!qword_1EB427430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427430);
  }

  return result;
}

void sub_1AAF6F9BC(uint64_t a1)
{
  if (!qword_1ED9B0F40)
  {
    sub_1AAF6FAAC(255, &qword_1ED9B0C78, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    v5 = type metadata accessor for ParametersContext.ParameterSignalContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B0F40);
    }
  }
}

void sub_1AAF6FA34(uint64_t a1)
{
  if (!qword_1EB427438)
  {
    sub_1AAF6FAAC(255, &qword_1EB4269A0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
    v5 = type metadata accessor for ParametersContext.ParameterSignalContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB427438);
    }
  }
}

void sub_1AAF6FAAC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAF6FB08(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF6FB08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AACB4194(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AAF6FB8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v8 = type metadata accessor for ParametersContext.ParameterSignalContainer(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAF6FBE0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && a1[48])
  {
    return (*a1 + 247);
  }

  v3 = *a1;
  if (v3 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 10;
  if (v3 < 9)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1AAF6FC34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1AAF6FC94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF6FCB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1AAF6FD54(uint64_t result, char a2)
{
  v2 = *(result + 32) & 0x80000000000003FFLL | ((a2 & 3) << 61);
  *(result + 16) &= 0x3FFuLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1AAF6FD88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF6FDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6FE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 10;
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

uint64_t sub_1AAF6FE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = -a2 << 10;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6FEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF6FF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAF6FFA4()
{
  result = qword_1EB427480;
  if (!qword_1EB427480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427480);
  }

  return result;
}

unint64_t sub_1AAF6FFFC()
{
  result = qword_1EB427488;
  if (!qword_1EB427488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427488);
  }

  return result;
}

unint64_t sub_1AAF70054()
{
  result = qword_1EB427490;
  if (!qword_1EB427490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427490);
  }

  return result;
}

unint64_t sub_1AAF700AC()
{
  result = qword_1EB427498[0];
  if (!qword_1EB427498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427498);
  }

  return result;
}

uint64_t sub_1AAF70100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF7013C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 10;
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

uint64_t sub_1AAF7018C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = -a2 << 10;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF701E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0x3FFLL | (a2 << 63);
  *(result + 16) &= 0x3FFuLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1AAF7021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF70258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
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

uint64_t sub_1AAF702A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAF70314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 4;
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

double sub_1AAF70364(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
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
      *(a1 + 152) = 1;
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
      *a1 = 16 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1AAF703F4(void *result, uint64_t a2)
{
  v2 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v3 = result[18] & 0xFFFFFFFFFFFFFFBLL;
  *result &= 0xFuLL;
  result[9] = v2;
  result[18] = v3 | (a2 << 62);
  return result;
}

uint64_t sub_1AAF70438(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    while (1)
    {
      v5 = v4[7];
      v100 = v4[6];
      v101 = v5;
      v102 = v4[8];
      v103 = *(v4 + 18);
      v6 = v4[3];
      v96 = v4[2];
      v97 = v6;
      v7 = v4[5];
      v98 = v4[4];
      v99 = v7;
      v8 = v4[1];
      v94 = *v4;
      v95 = v8;
      result = sub_1AAED0054(&v94);
      if (result != 1)
      {
        break;
      }

      ++v3;
      v4 = (v4 + 152);
      if (v2 == v3)
      {
        v3 = v2;
        break;
      }
    }

    if (v3 != v2)
    {
      v11 = a1 + 32;
      v12 = a1 + 184;
      v13 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v14 = v3;
        while (1)
        {
          if (v14 >= v2)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          }

          v15 = (v11 + 152 * v14);
          v16 = v15[7];
          v17 = v15[5];
          v90 = v15[6];
          v91 = v16;
          v18 = v15[7];
          v92 = v15[8];
          v19 = v15[3];
          v20 = v15[1];
          v86 = v15[2];
          v87 = v19;
          v21 = v15[3];
          v22 = v15[5];
          v88 = v15[4];
          v89 = v22;
          v23 = v15[1];
          v84 = *v15;
          v85 = v23;
          v100 = v90;
          v101 = v18;
          v102 = v15[8];
          v96 = v86;
          v97 = v21;
          v98 = v88;
          v99 = v17;
          v93 = *(v15 + 18);
          v103 = *(v15 + 18);
          v94 = v84;
          v95 = v20;
          result = sub_1AAED0054(&v94);
          if (result == 1)
          {
            goto LABEL_45;
          }

          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_42;
          }

          if (v2 < v24)
          {
            goto LABEL_43;
          }

          if (v24 < 0)
          {
            goto LABEL_44;
          }

          v3 = v2;
          if (v24 != v2)
          {
            v25 = (v12 + 152 * v14);
            while (1)
            {
              v26 = v25[7];
              v80 = v25[6];
              v81 = v26;
              v82 = v25[8];
              v83 = *(v25 + 18);
              v27 = v25[3];
              v76 = v25[2];
              v77 = v27;
              v28 = v25[5];
              v78 = v25[4];
              v79 = v28;
              v29 = v25[1];
              v74 = *v25;
              v75 = v29;
              if (sub_1AAED0054(&v74) != 1)
              {
                break;
              }

              ++v24;
              v25 = (v25 + 152);
              if (v2 == v24)
              {
                v3 = v2;
                goto LABEL_23;
              }
            }

            v3 = v24;
          }

LABEL_23:
          v70 = v90;
          v71 = v91;
          v72 = v92;
          v66 = v86;
          v67 = v87;
          v68 = v88;
          v69 = v89;
          v64 = v84;
          v65 = v85;
          v80 = v90;
          v81 = v91;
          v82 = v92;
          v76 = v86;
          v77 = v87;
          v78 = v88;
          v79 = v89;
          v73 = v93;
          v83 = v93;
          v74 = v84;
          v75 = v85;
          v30 = sub_1AAF14CF0(&v74);
          v31 = sub_1AACBC764(&v74);
          if (v30)
          {
            break;
          }

          if (*(v31 + 56) >= 2u)
          {
            goto LABEL_35;
          }

LABEL_29:
          v60 = v90;
          v61 = v91;
          v62 = v92;
          v63 = v93;
          v56 = v86;
          v57 = v87;
          v58 = v88;
          v59 = v89;
          v54 = v84;
          v55 = v85;
          sub_1AAD81BF4(&v54, v53);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1AAD6931C(0, *(v13 + 16) + 1, 1, v13);
            v13 = result;
          }

          v34 = *(v13 + 16);
          v33 = *(v13 + 24);
          if (v34 >= v33 >> 1)
          {
            result = sub_1AAD6931C((v33 > 1), v34 + 1, 1, v13);
            v13 = result;
          }

          *(v13 + 16) = v34 + 1;
          v35 = v13 + 152 * v34;
          v36 = v65;
          *(v35 + 32) = v64;
          *(v35 + 48) = v36;
          v37 = v66;
          v38 = v67;
          v39 = v69;
          *(v35 + 96) = v68;
          *(v35 + 112) = v39;
          *(v35 + 64) = v37;
          *(v35 + 80) = v38;
          v40 = v70;
          v41 = v71;
          v42 = v72;
          *(v35 + 176) = v73;
          *(v35 + 144) = v41;
          *(v35 + 160) = v42;
          *(v35 + 128) = v40;
          v14 = v3;
          if (v3 == v2)
          {
            return v10;
          }
        }

        if (v30 == 1)
        {
          v32 = *(v31 + 72);
          if ((v32 & 0x80000000) == 0 && v32 != 2)
          {
            goto LABEL_29;
          }
        }

LABEL_35:
        v60 = v90;
        v61 = v91;
        v62 = v92;
        v63 = v93;
        v56 = v86;
        v57 = v87;
        v58 = v88;
        v59 = v89;
        v54 = v84;
        v55 = v85;
        sub_1AAD81BF4(&v54, v53);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD6931C(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
        }

        v44 = *(v10 + 16);
        v43 = *(v10 + 24);
        if (v44 >= v43 >> 1)
        {
          result = sub_1AAD6931C((v43 > 1), v44 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v44 + 1;
        v45 = v10 + 152 * v44;
        v46 = v65;
        *(v45 + 32) = v64;
        *(v45 + 48) = v46;
        v47 = v66;
        v48 = v67;
        v49 = v69;
        *(v45 + 96) = v68;
        *(v45 + 112) = v49;
        *(v45 + 64) = v47;
        *(v45 + 80) = v48;
        v50 = v70;
        v51 = v71;
        v52 = v72;
        *(v45 + 176) = v73;
        *(v45 + 144) = v51;
        *(v45 + 160) = v52;
        *(v45 + 128) = v50;
        if (v3 == v2)
        {
          return v10;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AAF70898(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v14);
  if (sub_1AAED0054(v14) == 1)
  {
    return (*(a2 + 32))(a1, a2);
  }

  v22 = v14[6];
  v23 = v14[7];
  v24 = v14[8];
  v25 = v15;
  v18 = v14[2];
  v19 = v14[3];
  v20 = v14[4];
  v21 = v14[5];
  v16 = v14[0];
  v17 = v14[1];
  v5 = (*(a2 + 32))(a1, a2);
  sub_1AAF74FFC(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v7 = v22;
  v8 = v24;
  *(inited + 144) = v23;
  *(inited + 160) = v8;
  v9 = v18;
  v10 = v20;
  v11 = v21;
  *(inited + 80) = v19;
  *(inited + 96) = v10;
  *(inited + 112) = v11;
  *(inited + 128) = v7;
  v12 = v16;
  v13 = v17;
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v12;
  *(inited + 176) = v25;
  *(inited + 48) = v13;
  *(inited + 64) = v9;
  sub_1AADC92A4(inited);
  return v5;
}

uint64_t sub_1AAF70A10(double a1)
{
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v1;
  if (((*(v1 + 49) | ((*(v1 + 53) | (*(v1 + 55) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  else
  {
    sub_1AACD7304(*v1, *(v1 + 8), *(v1 + 16) & 1);
  }

  return v3;
}

uint64_t sub_1AAF70BEC(double a1)
{
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *(v1 + 112);
  v15[6] = *(v1 + 96);
  v15[7] = v3;
  v15[8] = *(v1 + 128);
  v16 = *(v1 + 144);
  v4 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v4;
  v5 = *(v1 + 80);
  v15[4] = *(v1 + 64);
  v15[5] = v5;
  v6 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v6;
  v7 = sub_1AAF14CF0(v15);
  v8 = sub_1AACBC764(v15);
  if (v7 > 1)
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  else
  {
    if (v7)
    {
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      LOBYTE(v11) = *(v8 + 32);
    }

    else
    {
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);
    }

    sub_1AACD7304(v9, v10, v11 & 1);

    return v9;
  }
}

uint64_t sub_1AAF70EE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 112);
  v43[6] = *(v2 + 96);
  v43[7] = v4;
  v43[8] = *(v2 + 128);
  v44 = *(v2 + 144);
  v5 = *(v2 + 48);
  v43[2] = *(v2 + 32);
  v43[3] = v5;
  v6 = *(v2 + 80);
  v43[4] = *(v2 + 64);
  v43[5] = v6;
  v7 = *(v2 + 16);
  v43[0] = *v2;
  v43[1] = v7;
  v8 = sub_1AAF14CF0(v43);
  v9 = sub_1AACBC764(v43);
  v10 = *v9;
  v11 = *(v9 + 6);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v28 = *(v9 + 1);
      v30 = *(v9 + 7);
      v29 = *(v9 + 8);
      v31 = v9[72];
      v32 = *(v9 + 10);
      v34 = *(v9 + 15);
      v33 = *(v9 + 16);
      v35 = *(v9 + 17);
      v36 = v9[144];
      MEMORY[0x1AC5992C0](3);
      MEMORY[0x1AC5992C0](v10);
      v37 = 0.0;
      if (v28 != 0.0)
      {
        v37 = v28;
      }

      MEMORY[0x1AC5992F0](*&v37);
      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v11 = 0;
      }

      if (v31 < 0)
      {
        MEMORY[0x1AC5992C0](1);
        MEMORY[0x1AC5992F0](v11);
        if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v30;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x1AC5992F0](v39);
        v31 = v29;
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        MEMORY[0x1AC5992F0](v11);
        sub_1AAF906B4();
        if (v29)
        {
          sub_1AAF8F6C4();
        }
      }

      MEMORY[0x1AC5992C0](v31);
      v40 = 0.0;
      if (v32 != 0.0)
      {
        v40 = v32;
      }

      MEMORY[0x1AC5992F0](*&v40);
      if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v41 = v34;
      }

      else
      {
        v41 = 0;
      }

      if ((v36 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        MEMORY[0x1AC5992F0](v41);
        if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v42 = v33;
        }

        else
        {
          v42 = 0;
        }

        MEMORY[0x1AC5992F0](v42);
        v15 = v35;
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        MEMORY[0x1AC5992F0](v41);
        sub_1AAF906B4();
        if (v35)
        {
          sub_1AAF8F6C4();
        }

        v15 = v36;
      }

      return MEMORY[0x1AC5992C0](v15);
    }

    v16 = *(v9 + 5);
    v17 = v9[56];
    v19 = *(v9 + 14);
    v18 = *(v9 + 15);
    v20 = v9[128];
    MEMORY[0x1AC5992C0](2);
    MEMORY[0x1AC5992C0](v10);
    if (v17 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v16, v11, v17 & 1);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v16, v11, v17);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_9:
        MEMORY[0x1AC5992C0](0);
        return sub_1AAE86E08(a1, v19, v18, v20);
      }
    }

    MEMORY[0x1AC5992C0](1);
    return sub_1AACDC020(a1, v19, v18, v20 & 1);
  }

  if (v8)
  {
    v22 = *(v9 + 1);
    v24 = *(v9 + 7);
    v23 = *(v9 + 8);
    v25 = v9[72];
    v26 = v9[73];
    MEMORY[0x1AC5992C0](1);
    MEMORY[0x1AC5992C0](v10);
    v27 = 0.0;
    if (v22 != 0.0)
    {
      v27 = v22;
    }

    MEMORY[0x1AC5992F0](*&v27);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v11 = 0;
    }

    if (v25 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v11);
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = v24;
      }

      else
      {
        v38 = 0;
      }

      MEMORY[0x1AC5992F0](v38);
      v25 = v23;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v11);
      sub_1AAF906B4();
      if (v23)
      {
        sub_1AAF8F6C4();
      }
    }

    MEMORY[0x1AC5992C0](v25);
    v15 = v26;
  }

  else
  {
    v12 = *(v9 + 5);
    v13 = v9[56];
    v14 = v9[80];
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992C0](v10);
    if (v13 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v12, v11, v13 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v12, v11, v13);
    }

    v15 = v14;
  }

  return MEMORY[0x1AC5992C0](v15);
}

uint64_t sub_1AAF71280(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[6];
  if (((*(a1 + 49) | ((*(a1 + 53) | (*(a1 + 55) << 16)) << 32)) & 0x8000000000000000) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0 || (sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

LABEL_3:

  return sub_1AAF8EA14();
}

uint64_t sub_1AAF7138C()
{
  sub_1AAF90694();
  sub_1AAF70EE0(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF713D0(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF70EE0(v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7140C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1AAF72168(v11, v13) & 1;
}

unint64_t sub_1AAF714A4()
{
  result = qword_1ED9B0F10;
  if (!qword_1ED9B0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F10);
  }

  return result;
}

uint64_t sub_1AAF714F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  v6 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  return sub_1AAF8E224();
}

uint64_t sub_1AAF715F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10)
{
  v10 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  return sub_1AAF8E224();
}

uint64_t sub_1AAF71738(uint64_t a1)
{
  v2 = v1;
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[8];
  if (v6 < 0)
  {
    v9 = v2[7];
    v10 = *v2;
    MEMORY[0x1AC5992C0](1);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC5992F0](v11);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v5 = 0;
    }

    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v5);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1AC5992F0](v12);
      v13 = v9;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v5);
      sub_1AAF906B4();
      if (v9)
      {
        sub_1AAF8F6C4();
      }

      v13 = v6 & 0x7F;
    }

    return MEMORY[0x1AC5992C0](v13);
  }

  else
  {
    v7 = v2[4];
    MEMORY[0x1AC5992C0](0);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);

      return sub_1AACDC020(a1, v7, v5, v4 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);

      return sub_1AAE86E08(a1, v7, v5, v4);
    }
  }
}

uint64_t sub_1AAF71890(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1AC5992C0](*v2);
  v5 = v2[6];
  v4 = v2[7];
  v6 = v2[9];
  if (v6 < 0)
  {
    v9 = v2[8];
    v10 = v2[1];
    MEMORY[0x1AC5992C0](1);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC5992F0](v11);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v5 = 0;
    }

    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v5);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1AC5992F0](v12);
      v13 = v9;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v5);
      sub_1AAF906B4();
      if (v9)
      {
        sub_1AAF8F6C4();
      }

      v13 = v6 & 0x7F;
    }

    return MEMORY[0x1AC5992C0](v13);
  }

  else
  {
    v7 = v2[5];
    MEMORY[0x1AC5992C0](0);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);

      return sub_1AACDC020(a1, v7, v5, v4 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);

      return sub_1AAE86E08(a1, v7, v5, v4);
    }
  }
}

uint64_t sub_1AAF719F0()
{
  sub_1AAF90694();
  sub_1AAF71738(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71A34(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF71738(v2);
  return sub_1AAF906F4();
}

BOOL sub_1AAF71A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF728E0(v7, v9);
}

uint64_t sub_1AAF71ACC()
{
  sub_1AAF90694();
  sub_1AAF71890(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71B10(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF71890(v2);
  return sub_1AAF906F4();
}

BOOL sub_1AAF71B4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v10[2] = *(a1 + 40);
  v10[3] = v4;
  v11 = *(a1 + 9);
  v10[0] = *(a1 + 8);
  v10[1] = v3;
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v12[2] = *(a2 + 40);
  v12[3] = v7;
  v13 = *(a2 + 9);
  v12[0] = *(a2 + 8);
  v12[1] = v6;
  return v2 == v5 && sub_1AAF728E0(v10, v12);
}

uint64_t sub_1AAF71BD0()
{
  v1 = *(v0 + 32);
  sub_1AAF90694();
  sub_1AAD7A698(v3, v1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

double sub_1AAF71C30(uint64_t a1)
{
  sub_1AAD7A698(a1, *(v1 + 32));
  sub_1AAF906B4();
  return result;
}

uint64_t sub_1AAF71C68(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1AAF90694();
  sub_1AAD7A698(v4, v2);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if (sub_1AAD799D0(v2, v4))
  {
    return v3 ^ v5 ^ 1u;
  }

  return 0;
}

void sub_1AAF71D44(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v27 = a1[4];
  v28 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6 = a1[6];
  v7 = a1[8];
  v8 = a1[9];
  v30 = a1[7];
  v31 = v7;
  v32 = v8;
  v29 = v6;
  v9 = v7;
  if ((*(&v8 + 1) & 0x8000000000000000) != 0)
  {
    if ((BYTE8(v8) & 0xFE) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *(&v28 + 1);
    v10 = v29;
    v12 = BYTE8(v29);
    v13 = BYTE8(v31);
    if (SBYTE8(v31) < 0)
    {
      sub_1AAD81924(&v28, v22);
      sub_1AAD04750(v11, v10, v12 & 1);

      v15 = 0;
      goto LABEL_26;
    }

    v14 = *(&v30 + 1);
    if (BYTE8(v31) && BYTE8(v31) != 1)
    {
      sub_1AAD81924(&v28, v22);
      sub_1AAD04750(v11, v10, v12 & 1);

      sub_1AAD0E818(v14, v9, 2);
      v15 = 0;
      goto LABEL_26;
    }

    sub_1AAD81924(&v28, v22);
    sub_1AAD04750(v11, v10, v12 & 1);

    sub_1AAD0E818(v14, v9, v13);
  }

  v16 = v26;
  if ((*(&v27 + 1) & 0x8000000000000000) != 0)
  {
    if ((BYTE8(v27) & 0x80) != 0)
    {
      if ((v27 & 0xFE) == 0)
      {
LABEL_20:
        sub_1AAF748E4();
        v21 = sub_1AAF8FCE4();
LABEL_25:
        v15 = v21;
        goto LABEL_26;
      }
    }

    else
    {
      if (BYTE8(v27) < 2u)
      {
        goto LABEL_20;
      }

      if (v27)
      {
        sub_1AAF748E4();

        v21 = sub_1AAF8FCD4();
        goto LABEL_25;
      }
    }

LABEL_7:
    v15 = 0;
    goto LABEL_26;
  }

  v17 = *(&v23 + 1);
  v33 = v24;
  v18 = BYTE8(v24);
  v19 = *(&v25 + 1);
  if ((BYTE8(v26) & 0x80) != 0)
  {
    sub_1AAF748E4();
    sub_1AAD81924(&v23, v22);
    v15 = sub_1AAF8FCE4();
    sub_1AAD04750(v17, v33, v18 & 1);
  }

  else
  {
    v20 = SBYTE8(v26);
    sub_1AAF748E4();
    if (v20)
    {
      sub_1AAD81924(&v23, v22);
      if (v20 == 1)
      {
        v15 = sub_1AAF8FCE4();
        sub_1AAD04750(v17, v33, v18 & 1);

        sub_1AAD0E818(v19, v16, 1);
      }

      else
      {
        sub_1AACD7C50(v19, v16, 2);
        v15 = sub_1AAF8FCD4();
        sub_1AAD04750(v17, v33, v18 & 1);

        sub_1AAD0E818(v19, v16, 2);
      }
    }

    else
    {
      sub_1AAD81924(&v23, v22);
      v15 = sub_1AAF8FCE4();
      sub_1AAD04750(v17, v33, v18 & 1);

      sub_1AAD0E818(v19, v16, 0);
    }
  }

LABEL_26:
  *a2 = v15;
}

uint64_t sub_1AAF72168(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v109[6] = *(a1 + 96);
  v109[7] = v3;
  v109[8] = *(a1 + 128);
  v110 = *(a1 + 144);
  v4 = *(a1 + 48);
  v109[2] = *(a1 + 32);
  v109[3] = v4;
  v5 = *(a1 + 80);
  v109[4] = *(a1 + 64);
  v109[5] = v5;
  v6 = *(a1 + 16);
  v109[0] = *a1;
  v109[1] = v6;
  v7 = sub_1AAF14CF0(v109);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v22 = sub_1AACBC764(v109);
      v23 = *v22;
      v24 = *(v22 + 5);
      v25 = *(v22 + 6);
      v26 = v22[56];
      v92 = *(v22 + 11);
      v95 = *(v22 + 10);
      v27 = v22[96];
      v87 = *(v22 + 14);
      v89 = *(v22 + 13);
      v86 = *(v22 + 15);
      v85 = v22[128];
      v28 = a2[8];
      v106 = a2[7];
      v107 = v28;
      v108 = *(a2 + 18);
      v29 = a2[6];
      v104 = a2[5];
      v105 = v29;
      v30 = a2[4];
      v102 = a2[3];
      v103 = v30;
      v31 = a2[2];
      v100 = a2[1];
      v101 = v31;
      v99 = *a2;
      if (sub_1AAF14CF0(&v99) != 2)
      {
        goto LABEL_92;
      }

      v32 = sub_1AACBC764(&v99);
      if (v23 != *v32)
      {
        goto LABEL_92;
      }

      v33 = *(v32 + 5);
      v34 = v32[56];
      v77 = *(v32 + 6);
      v78 = *(v32 + 10);
      v83 = *(v32 + 13);
      v84 = *(v32 + 11);
      v82 = *(v32 + 14);
      v81 = *(v32 + 15);
      v79 = v32[128];
      v80 = v32[96];
      if ((sub_1AAF8EA14() & 1) == 0)
      {
        goto LABEL_92;
      }

      if ((v26 & 0x80) != 0)
      {
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        if (v26)
        {
          if ((v34 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else if (v34)
        {
          goto LABEL_92;
        }

        v21 = 0;
        if (v24 != v33)
        {
          return v21 & 1;
        }

        v35 = v25;
        v36 = v77;
      }

      else
      {
        if (v34 < 0)
        {
          goto LABEL_92;
        }

        if (v26)
        {
          if (v26 != 1)
          {
            if (v34 != 2 || (*&v24 != *&v33 || *&v25 != *&v77) && (sub_1AAF904F4() & 1) == 0)
            {
              goto LABEL_92;
            }

LABEL_90:
            v21 = sub_1AAE83A88(v95, v92, v27 & 1, v89, v87, v86, v85, v78, v35, v36, v37, v38, v39, v40, v41, v42, v84, v80 & 1, v83, v82, v81, v79);
            return v21 & 1;
          }

          v21 = 0;
          if (v34 != 1)
          {
            return v21 & 1;
          }
        }

        else
        {
          v21 = 0;
          if (v34)
          {
            return v21 & 1;
          }
        }

        v35 = v24;
        v36 = v33;
      }

      if (v35 != v36)
      {
        return v21 & 1;
      }

      goto LABEL_90;
    }

    v57 = sub_1AACBC764(v109);
    v58 = *v57;
    v59 = *(v57 + 1);
    v60 = *(v57 + 6);
    v62 = *(v57 + 7);
    v61 = *(v57 + 8);
    v63 = v57[72];
    *&v98[32] = *(v57 + 105);
    *&v98[48] = *(v57 + 121);
    *&v98[64] = *(v57 + 137);
    *v98 = *(v57 + 73);
    *&v98[16] = *(v57 + 89);
    v108 = *(a2 + 18);
    v64 = a2[8];
    v106 = a2[7];
    v107 = v64;
    v65 = a2[6];
    v104 = a2[5];
    v105 = v65;
    v66 = a2[4];
    v102 = a2[3];
    v103 = v66;
    v67 = a2[2];
    v100 = a2[1];
    v101 = v67;
    v99 = *a2;
    if (sub_1AAF14CF0(&v99) != 3)
    {
      goto LABEL_92;
    }

    v68 = sub_1AACBC764(&v99);
    v69 = *(v68 + 6);
    *&v97[32] = *(v68 + 105);
    *&v97[48] = *(v68 + 121);
    *&v97[64] = *(v68 + 137);
    *v97 = *(v68 + 73);
    *&v97[16] = *(v68 + 89);
    if (v58 != *v68)
    {
      goto LABEL_92;
    }

    if (v59 != *(v68 + 1))
    {
      goto LABEL_92;
    }

    v70 = *(v68 + 7);
    v71 = *(v68 + 8);
    v72 = v68[72];
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      goto LABEL_92;
    }

    if ((v63 & 0x80) != 0)
    {
      if ((v72 & 0x80) == 0 || v60 != v69 || v62 != v70 || v71 != v61)
      {
        goto LABEL_92;
      }

      goto LABEL_85;
    }

    if ((v72 & 0x80) != 0 || v60 != v69)
    {
      goto LABEL_92;
    }

    if (v61)
    {
      if (!v71)
      {
        goto LABEL_92;
      }

      if (*&v62 != *&v70 || v61 != v71)
      {
        if ((sub_1AAF904F4() & 1) == 0 || v63 != v72)
        {
          goto LABEL_92;
        }

        goto LABEL_85;
      }
    }

    else if (v71)
    {
      goto LABEL_92;
    }

    if (v63 != v72)
    {
      goto LABEL_92;
    }

LABEL_85:
    v111[2] = *&v98[39];
    v111[3] = *&v98[55];
    v112 = v98[71];
    v111[0] = *&v98[7];
    v111[1] = *&v98[23];
    v113[2] = *&v97[39];
    v113[3] = *&v97[55];
    v114 = v97[71];
    v113[0] = *&v97[7];
    v113[1] = *&v97[23];
    v21 = sub_1AAF0A5EC(v111, v113);
    return v21 & 1;
  }

  if (v7)
  {
    v43 = sub_1AACBC764(v109);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[6];
    v48 = v43[7];
    v47 = *(v43 + 8);
    v49 = *(v43 + 72);
    v96 = *(v43 + 73);
    v50 = a2[7];
    v105 = a2[6];
    v106 = v50;
    v107 = a2[8];
    v108 = *(a2 + 18);
    v51 = a2[5];
    v103 = a2[4];
    v104 = v51;
    v52 = a2[3];
    v101 = a2[2];
    v102 = v52;
    v53 = a2[1];
    v99 = *a2;
    v100 = v53;
    if (sub_1AAF14CF0(&v99) != 1)
    {
      goto LABEL_92;
    }

    v54 = sub_1AACBC764(&v99);
    if (v44 != *v54)
    {
      goto LABEL_92;
    }

    if (v45 != v54[1])
    {
      goto LABEL_92;
    }

    v55 = v54[6];
    v90 = v54[7];
    v93 = *(v54 + 8);
    v56 = *(v54 + 72);
    v88 = *(v54 + 73);
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      goto LABEL_92;
    }

    if ((v49 & 0x80) == 0)
    {
      v21 = 0;
      if ((v56 & 0x80) != 0 || v46 != v55)
      {
        return v21 & 1;
      }

      if (v47)
      {
        if (!v93)
        {
          goto LABEL_92;
        }

        if (*&v48 == *&v90 && v47 == v93)
        {
          if (v49 != v56)
          {
            goto LABEL_92;
          }

LABEL_100:
          v21 = v96 == v88;
          return v21 & 1;
        }

        v76 = sub_1AAF904F4();
        v21 = 0;
        if ((v76 & 1) == 0)
        {
          return v21 & 1;
        }
      }

      else
      {
        v21 = 0;
        if (v93)
        {
          return v21 & 1;
        }
      }

      if (v49 != v56)
      {
        return v21 & 1;
      }

      goto LABEL_100;
    }

    if ((v56 & 0x80) == 0)
    {
      goto LABEL_92;
    }

    v21 = 0;
    if (v46 != v55 || v48 != v90 || v93 != v47)
    {
      return v21 & 1;
    }

    goto LABEL_100;
  }

  v8 = sub_1AACBC764(v109);
  v9 = *v8;
  v10 = v8[5];
  v11 = v8[6];
  v12 = *(v8 + 56);
  v13 = *(v8 + 80);
  v14 = a2[7];
  v105 = a2[6];
  v106 = v14;
  v107 = a2[8];
  v108 = *(a2 + 18);
  v15 = a2[5];
  v103 = a2[4];
  v104 = v15;
  v16 = a2[3];
  v101 = a2[2];
  v102 = v16;
  v17 = a2[1];
  v99 = *a2;
  v100 = v17;
  if (sub_1AAF14CF0(&v99))
  {
    goto LABEL_92;
  }

  v18 = sub_1AACBC764(&v99);
  if (v9 != *v18)
  {
    goto LABEL_92;
  }

  v19 = v18[5];
  v91 = v18[6];
  v20 = *(v18 + 56);
  v94 = *(v18 + 80);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    goto LABEL_92;
  }

  if ((v12 & 0x80) != 0)
  {
    if (v20 < 0)
    {
      if (v12)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else if (v20)
      {
        goto LABEL_92;
      }

      v21 = 0;
      if (v10 != v19)
      {
        return v21 & 1;
      }

      v73 = v11;
      v74 = v91;
      goto LABEL_96;
    }

LABEL_92:
    v21 = 0;
    return v21 & 1;
  }

  if (v20 < 0)
  {
    goto LABEL_92;
  }

  if (!v12)
  {
    v21 = 0;
    if (v20)
    {
      return v21 & 1;
    }

    goto LABEL_75;
  }

  if (v12 != 1)
  {
    if (v20 == 2 && (*&v10 == *&v19 && *&v11 == *&v91 || (sub_1AAF904F4() & 1) != 0))
    {
      goto LABEL_97;
    }

    goto LABEL_92;
  }

  v21 = 0;
  if (v20 != 1)
  {
    return v21 & 1;
  }

LABEL_75:
  v73 = v10;
  v74 = v19;
LABEL_96:
  if (v73 == v74)
  {
LABEL_97:
    v21 = v13 == v94;
  }

  return v21 & 1;
}

BOOL sub_1AAF728E0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (v7 < 0)
  {
    v11 = *(a2 + 64);
    if ((v11 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    if (*a2 != v3)
    {
      return 0;
    }

    v13 = *(a1 + 56);
    v15 = *(a2 + 48);
    v14 = *(a2 + 56);
    v16 = *(a2 + 40);
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      return 0;
    }

    if ((v7 & 0x80) != 0)
    {
      return (v11 & 0x80) != 0 && v5 == v16 && v6 == v15 && v14 == v13;
    }

    if ((v11 & 0x80) != 0 || v5 != v16)
    {
      return 0;
    }

    if (v13)
    {
      if (!v14 || (*&v6 != *&v15 || v13 != v14) && (sub_1AAF904F4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    return ((v11 ^ v7) & 0x7F) == 0;
  }

  if ((*(a2 + 64) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 32);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if ((LOBYTE(v6) & 0x80) != 0)
  {
    if ((v9 & 0x80) != 0)
    {
      if (LOBYTE(v6))
      {
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      return v4 == v10 && v5 == v8;
    }

    return 0;
  }

  if ((v9 & 0x80) != 0)
  {
    return 0;
  }

  if (LOBYTE(v6))
  {
    if (LOBYTE(v6) != 1)
    {
      return v9 == 2 && (*&v4 == *&v10 && *&v5 == *&v8 || (sub_1AAF904F4() & 1) != 0);
    }

    if (v9 == 1)
    {
      return v4 == v10;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  return v4 == v10;
}

double sub_1AAF72B20@<D0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[7];
  v77[6] = a2[6];
  v77[7] = v5;
  v77[8] = a2[8];
  v6 = a2[3];
  v77[2] = a2[2];
  v77[3] = v6;
  v7 = a2[5];
  v77[4] = a2[4];
  v77[5] = v7;
  v8 = a2[1];
  v77[0] = *a2;
  v77[1] = v8;
  v9 = sub_1AACDB99C(v77);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v19 = sub_1AACD2C84(v77);
      v43 = *(v19 + 8);
      v44 = *v19;
      LODWORD(v58) = *(v19 + 17);
      *(&v58 + 3) = *(v19 + 20);
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      *v52 = *(v19 + 49);
      v22 = *(v19 + 72);
      *&v52[15] = *(v19 + 64);
      v46 = *(v19 + 24);
      v47 = *(v19 + 80);
      v48 = *(v19 + 16);
      v23 = *(v19 + 48);
      v24 = *(v19 + 88);
      *(&v57 + 3) = *(v19 + 92);
      LODWORD(v57) = *(v19 + 89);
      v26 = *(v19 + 96);
      v25 = *(v19 + 104);
      v45 = *(v19 + 112);
      *&v55[15] = *(v19 + 136);
      *v55 = *(v19 + 121);
      v42 = *(v19 + 120);
      sub_1AACD7304(*v19, v43, v48 & 1);

      sub_1AACD7C50(v20, v21, v23);
      sub_1AACD7304(v22, v47, v24 & 1);

      sub_1AACD7C50(v25, v45, v42);
      sub_1AADC7F60(a2);
      LOBYTE(v59) = a1;
      *(&v59 + 1) = v44;
      *&v60 = v43;
      BYTE8(v60) = v48;
      *(&v60 + 9) = v58;
      HIDWORD(v60) = *(&v58 + 3);
      *&v61 = v46;
      *(&v61 + 1) = v20;
      *v62 = v21;
      v62[8] = v23;
      *&v62[9] = *v52;
      *&v62[24] = *&v52[15];
      *&v63 = v22;
      *(&v63 + 1) = v47;
      LOBYTE(v64) = v24;
      DWORD1(v64) = *(&v57 + 3);
      *(&v64 + 1) = v57;
      *(&v64 + 1) = v26;
      *&v65 = v25;
      *(&v65 + 1) = v45;
      v66[0] = v42;
      *&v66[1] = *v55;
      *&v66[16] = *&v55[15];
      sub_1AAE0C1C0(&v59);
      v73 = v64;
      v74 = v65;
      v75 = *v66;
      v76 = *&v66[16];
      v69 = v61;
      v70 = *v62;
      v27 = *&v62[16];
      v28 = v63;
LABEL_13:
      v71 = v27;
      v72 = v28;
      v67 = v59;
      v68 = v60;
      nullsub_1();
      v84 = v73;
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v80 = v69;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v78 = v67;
      v79 = v68;
      goto LABEL_14;
    }

    if (v9 != 4)
    {
      v29 = sub_1AACD2C84(v77);
      v30 = *v29;
      v31 = *(v29 + 8);
      LODWORD(v56) = *(v29 + 17);
      *(&v56 + 3) = *(v29 + 20);
      v32 = *(v29 + 24);
      v33 = *(v29 + 32);
      v34 = *(v29 + 40);
      *v53 = *(v29 + 49);
      *&v53[15] = *(v29 + 64);
      v49 = *(v29 + 72);
      v35 = *(v29 + 16);
      v36 = *(v29 + 48);
      sub_1AACD7304(*v29, v31, v35 & 1);

      sub_1AACD7C50(v33, v34, v36);
      sub_1AADC7F60(a2);
      LOBYTE(v59) = a1;
      *(&v59 + 1) = v30;
      *&v60 = v31;
      BYTE8(v60) = v35;
      *(&v60 + 9) = v56;
      HIDWORD(v60) = *(&v56 + 3);
      *&v61 = v32;
      *(&v61 + 1) = v33;
      *v62 = v34;
      v62[8] = v36;
      *&v62[9] = *v53;
      *&v62[24] = *&v53[15];
      v18 = v49;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = sub_1AACD2C84(v77);
      v11 = *v10;
      v12 = *(v10 + 8);
      *v54 = *(v10 + 17);
      *&v54[3] = *(v10 + 20);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      *v51 = *(v10 + 49);
      *&v51[15] = *(v10 + 64);
      goto LABEL_9;
    }

    if (v9 != 1)
    {
      v10 = sub_1AACD2C84(v77);
      v11 = *v10;
      v12 = *(v10 + 8);
      *v54 = *(v10 + 17);
      *&v54[3] = *(v10 + 20);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      *v51 = *(v10 + 49);
      *&v51[16] = *(v10 + 65);
LABEL_9:
      v16 = *(v10 + 16);
      v17 = *(v10 + 48);
      sub_1AACD7304(v11, v12, v16 & 1);

      sub_1AACD7C50(v14, v15, v17);
      sub_1AADC7F60(a2);
      LOBYTE(v59) = a1;
      *(&v59 + 1) = v11;
      *&v60 = v12;
      BYTE8(v60) = v16;
      *(&v60 + 9) = *v54;
      HIDWORD(v60) = *&v54[3];
      *&v61 = v13;
      *(&v61 + 1) = v14;
      *v62 = v15;
      v62[8] = v17;
      *&v62[9] = *v51;
      *&v62[24] = *&v51[15];
      v18 = 3;
LABEL_12:
      LOBYTE(v63) = v18;
      sub_1AAE0C0B0(&v59);
      v73 = v64;
      v74 = v65;
      v75 = *v66;
      v76 = *&v66[16];
      v69 = v61;
      v70 = *v62;
      v27 = *&v62[16];
      v28 = v63;
      goto LABEL_13;
    }
  }

  sub_1AACD2C84(v77);
  sub_1AAE2D7EC(&v78);
LABEL_14:
  v37 = v85;
  *(a3 + 96) = v84;
  *(a3 + 112) = v37;
  *(a3 + 128) = v86;
  *(a3 + 144) = v87;
  v38 = v81;
  *(a3 + 32) = v80;
  *(a3 + 48) = v38;
  v39 = v83;
  *(a3 + 64) = v82;
  *(a3 + 80) = v39;
  result = *&v78;
  v41 = v79;
  *a3 = v78;
  *(a3 + 16) = v41;
  return result;
}

uint64_t sub_1AAF72FD4(__int128 *a1, uint64_t a2)
{
  v4 = a1[7];
  v101 = a1[6];
  v102 = v4;
  v103 = a1[8];
  v104 = *(a1 + 18);
  v5 = a1[3];
  v97 = a1[2];
  v98 = v5;
  v6 = a1[5];
  v99 = a1[4];
  v100 = v6;
  v7 = a1[1];
  v95 = *a1;
  v96 = v7;
  v8 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[7];
  v89 = a1[6];
  v90 = v10;
  v91 = a1[8];
  v92 = *(a1 + 18);
  v11 = a1[3];
  v85 = a1[2];
  v86 = v11;
  v12 = a1[5];
  v87 = a1[4];
  v88 = v12;
  v13 = a1[1];
  v83 = *a1;
  v84 = v13;
  if (sub_1AAED0054(&v83) == 1)
  {
    return 0;
  }

  v93[6] = v89;
  v93[7] = v90;
  v93[8] = v91;
  v94 = v92;
  v93[2] = v85;
  v93[3] = v86;
  v93[4] = v87;
  v93[5] = v88;
  v93[0] = v83;
  v93[1] = v84;
  v15 = sub_1AAF14CF0(v93);
  if (v15 <= 1)
  {
    if (v15)
    {
      v30 = sub_1AACBC764(v93);
      v31 = *(v30 + 48);
      v33 = *(v30 + 56);
      v32 = *(v30 + 64);
      v34 = *(v30 + 72);
      if (*(a2 + 16) && (v35 = sub_1AACE1760(*v30), (v36 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v35, &v67);
      }

      else
      {
        v67 = 0u;
        memset(v68, 0, 24);
        BYTE8(v68[1]) = -1;
      }

      sub_1AADDDC34(&v67, &v63);
      if (BYTE8(v64[1]) == 255)
      {
        v65 = 0u;
        memset(v66, 0, 24);
        BYTE8(v66[1]) = 3;
      }

      else
      {
        v65 = v63;
        v66[0] = v64[0];
        *(v66 + 9) = *(v64 + 9);
      }

      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      v75 = v97;
      v76 = v98;
      v77 = v99;
      v78 = v100;
      v73 = v95;
      v74 = v96;
      sub_1AAD81BF4(&v73, &v69);
      if (v34 < 0)
      {
        v47 = sub_1AAF76D68(v31, *&v33);
      }

      else
      {
        v47 = sub_1AAF7681C(v33, v32, v34, v31);
      }
    }

    else
    {
      v16 = sub_1AACBC764(v93);
      v18 = *(v16 + 40);
      v17 = *(v16 + 48);
      v19 = *(v16 + 56);
      if (*(a2 + 16) && (v20 = sub_1AACE1760(*v16), (v21 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v20, &v67);
      }

      else
      {
        v67 = 0u;
        memset(v68, 0, 24);
        BYTE8(v68[1]) = -1;
      }

      sub_1AADDDC34(&v67, &v63);
      if (BYTE8(v64[1]) == 255)
      {
        v65 = 0u;
        memset(v66, 0, 24);
        BYTE8(v66[1]) = 3;
      }

      else
      {
        v65 = v63;
        v66[0] = v64[0];
        *(v66 + 9) = *(v64 + 9);
      }

      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      v75 = v97;
      v76 = v98;
      v77 = v99;
      v78 = v100;
      v73 = v95;
      v74 = v96;
      sub_1AAD81BF4(&v73, &v69);
      if (v19 < 0)
      {
        v47 = sub_1AAF75FD0(v18, v17, v19 & 1);
      }

      else
      {
        v47 = sub_1AAF75A98(v18, v17, v19);
      }
    }

    v53 = v47;
    v54 = v48;
    sub_1AAD57C94(&v65);
    sub_1AAF74930(&v67, qword_1ED9B4010, &type metadata for AnyFormatStyle);
    *&v73 = v53;
    *(&v73 + 1) = v54;
    sub_1AADA6144();
    v55 = sub_1AAF8EA64();
    goto LABEL_64;
  }

  if (v15 != 2)
  {
    v37 = sub_1AACBC764(v93);
    v38 = *v37;
    v39 = *(v37 + 48);
    v40 = *(v37 + 56);
    v41 = *(v37 + 64);
    v42 = *(v37 + 72);
    v43 = *(v37 + 120);
    v60 = *(v37 + 128);
    v62 = *(v37 + 136);
    v44 = *(v37 + 144);
    v73 = v95;
    v74 = v96;
    v77 = v99;
    v78 = v100;
    v79 = v101;
    v80 = v102;
    v82 = v104;
    v81 = v103;
    v75 = v97;
    v76 = v98;
    sub_1AAD81BF4(&v73, &v69);
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    if (*(a2 + 16) && (v45 = sub_1AACE1760(v38), (v46 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v45, &v69);
    }

    else
    {
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v72 = -1;
    }

    sub_1AADDDC34(&v69, &v65);
    if (BYTE8(v66[1]) == 255)
    {
      v67 = 0u;
      memset(v68, 0, 24);
      BYTE8(v68[1]) = 3;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v67 = v65;
      v68[0] = v66[0];
      *(v68 + 9) = *(v66 + 9);
      if ((v42 & 0x80000000) == 0)
      {
LABEL_31:
        sub_1AAF7681C(v40, v41, v42, v39);
LABEL_49:
        sub_1AAD57C94(&v67);
        sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
        sub_1AAF8E1D4();

        sub_1AAF8E1E4();
        if (*(a2 + 16) && (v51 = sub_1AACE1760(v38), (v52 & 1) != 0))
        {
          sub_1AACE0A98(*(a2 + 56) + 48 * v51, &v69);
        }

        else
        {
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v72 = -1;
        }

        sub_1AADDDC34(&v69, &v65);
        if (BYTE8(v66[1]) == 255)
        {
          v67 = 0u;
          memset(v68, 0, 24);
          BYTE8(v68[1]) = 3;
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v67 = v65;
          v68[0] = v66[0];
          *(v68 + 9) = *(v66 + 9);
          if ((v44 & 0x80000000) == 0)
          {
LABEL_55:
            sub_1AAF7681C(v60, v62, v44, v43);
            goto LABEL_63;
          }
        }

        sub_1AAF76D68(v43, *&v60);
        goto LABEL_63;
      }
    }

    sub_1AAF76D68(v39, *&v40);
    goto LABEL_49;
  }

  v22 = sub_1AACBC764(v93);
  v23 = *v22;
  v24 = *(v22 + 40);
  v25 = *(v22 + 48);
  v26 = *(v22 + 56);
  v59 = *(v22 + 112);
  v61 = *(v22 + 120);
  v27 = *(v22 + 128);
  v73 = v95;
  v74 = v96;
  v82 = v104;
  v75 = v97;
  v76 = v98;
  v80 = v102;
  v81 = v103;
  v77 = v99;
  v78 = v100;
  v79 = v101;
  sub_1AAD81BF4(&v73, &v69);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  if (*(a2 + 16) && (v28 = sub_1AACE1760(v23), (v29 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v28, &v69);
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v72 = -1;
  }

  sub_1AADDDC34(&v69, &v65);
  if (BYTE8(v66[1]) == 255)
  {
    v67 = 0u;
    memset(v68, 0, 24);
    BYTE8(v68[1]) = 3;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_36:
    sub_1AAF75FD0(v24, v25, v26 & 1);
    goto LABEL_37;
  }

  v67 = v65;
  v68[0] = v66[0];
  *(v68 + 9) = *(v66 + 9);
  if (v26 < 0)
  {
    goto LABEL_36;
  }

LABEL_24:
  sub_1AAF75A98(v24, v25, v26);
LABEL_37:
  sub_1AAD57C94(&v67);
  sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  sub_1AAF8E1D4();

  sub_1AAF8E1E4();
  if (*(a2 + 16) && (v49 = sub_1AACE1760(v23), (v50 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v49, &v69);
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v72 = -1;
  }

  sub_1AADDDC34(&v69, &v65);
  if (BYTE8(v66[1]) == 255)
  {
    v67 = 0u;
    memset(v68, 0, 24);
    BYTE8(v68[1]) = 3;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_58:
    sub_1AAF75FD0(v59, v61, v27 & 1);
    goto LABEL_63;
  }

  v67 = v65;
  v68[0] = v66[0];
  *(v68 + 9) = *(v66 + 9);
  if (v27 < 0)
  {
    goto LABEL_58;
  }

LABEL_43:
  sub_1AAF75A98(v59, v61, v27);
LABEL_63:
  sub_1AAD57C94(&v67);
  sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  sub_1AAF8E1D4();

  sub_1AAF8E1E4();
  sub_1AAF8E224();
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() bundleForClass_];
  v55 = sub_1AAF8EA44();
LABEL_64:
  v58 = v55;
  sub_1AAF74930(a1, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  return v58;
}

uint64_t sub_1AAF739C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AAD414C0(0, v2, 0);
    v5 = a2;
    v3 = v56;
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 112);
      v8 = *(v6 + 80);
      v42 = *(v6 + 96);
      v43 = v7;
      v9 = *(v6 + 112);
      v44 = *(v6 + 128);
      v10 = *(v6 + 48);
      v11 = *(v6 + 16);
      v38 = *(v6 + 32);
      v39 = v10;
      v12 = *(v6 + 48);
      v13 = *(v6 + 80);
      v40 = *(v6 + 64);
      v41 = v13;
      v14 = *(v6 + 16);
      v37[0] = *v6;
      v37[1] = v14;
      v52 = v42;
      v53 = v9;
      v54 = *(v6 + 128);
      v48 = v38;
      v49 = v12;
      v50 = v40;
      v51 = v8;
      v45 = *(v6 + 144);
      v55 = *(v6 + 144);
      v46 = v37[0];
      v47 = v11;
      nullsub_1();
      v57[6] = v52;
      v57[7] = v53;
      v57[8] = v54;
      v58 = v55;
      v57[2] = v48;
      v57[3] = v49;
      v57[4] = v50;
      v57[5] = v51;
      v57[0] = v46;
      v57[1] = v47;
      sub_1AAD81BF4(v37, v36);
      v15 = sub_1AAF72FD4(v57, v5);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      sub_1AAD81C50(v37);
      v56 = v3;
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1AAD414C0((v22 > 1), v23 + 1, 1);
        v5 = a2;
        v3 = v56;
      }

      *(v3 + 16) = v23 + 1;
      v24 = (v3 + 32 * v23);
      v24[4] = v15;
      v24[5] = v17;
      v24[6] = v19;
      v24[7] = v21;
      v6 += 152;
      --v2;
    }

    while (v2);
  }

  v25 = *(v3 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (v3 + 56);
    while (1)
    {
      v28 = *v27;
      if (*v27)
      {
        break;
      }

      ++v26;
      v27 += 4;
      if (v25 == v26)
      {
        goto LABEL_10;
      }
    }

    v31 = *(v27 - 2);
    v30 = *(v27 - 1);
    v32 = *(v27 - 3);

    sub_1AADA61DC(v32, v31, v30, v28);
    sub_1AAD04750(v32, v31, v30 & 1);

    sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v3, v26);
    v34 = v33;
    swift_bridgeObjectRelease_n();
    return v34;
  }

  else
  {
LABEL_10:

    return 0;
  }
}

void sub_1AAF73C2C(double *a1, char a2, double a3)
{
  v5 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *(a1 + 2);
  if (v6 == 2)
  {
    sub_1AAF75A98(*(a1 + 4), 0, 0);
    sub_1AAF75A98(*(a1 + 5), 0, 0);
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1D4();

    sub_1AAF8E1E4();
    sub_1AAF8E1D4();

    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (v6 == 1)
    {
      sub_1AAF75A98(*(a1 + 4), 0, 0);
      sub_1AADA6144();
      sub_1AAF8EA64();
      return;
    }

    if (v6)
    {
      v12 = a1[4];
      v11 = a1[5];
      v10 = a1 + 4;
      if (v11 < v12)
      {
        v13 = a1[4];
      }

      else
      {
        v13 = a1[5];
      }

      if (v11 < v12)
      {
        v14 = a1[5];
      }

      else
      {
        v14 = a1[4];
      }

      v15 = 2;
      v16 = v14;
      v17 = v13;
      do
      {
        if (v15 >= v6)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          __break(1u);
          __break(1u);
          return;
        }

        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_50;
        }

        v19 = v10[v15];
        v21 = *(a1 + 2);
        v22 = v19;
        if (v20 != v6)
        {
          if (v20 >= v6)
          {
            goto LABEL_51;
          }

          v21 = v15 + 2;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_52;
          }

          v22 = v10[v20];
        }

        if (v22 >= v19)
        {
          v18 = v22;
        }

        else
        {
          v18 = v10[v15];
        }

        if (v22 < v19)
        {
          v19 = v22;
        }

        if (v19 < v16)
        {
          v14 = v19;
          v16 = v19;
        }

        if (v18 >= v17)
        {
          v13 = v18;
          v17 = v18;
        }

        v15 = v21;
      }

      while (v21 != v6);
      sub_1AAF75A98(*&v14, 0, 0);
      sub_1AAF75A98(*&v13, 0, 0);
      if (v14 == v13)
      {

        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1D4();

        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        v23 = swift_getObjCClassFromMetadata();
        v8 = [objc_opt_self() bundleForClass_];
        goto LABEL_48;
      }

      if (a2)
      {
        v24 = &v10[v6];
        if (v14 == v12 && v13 == *(v24 - 1))
        {

          v25 = a1 + 5;
          v26 = 1 - v6;
          do
          {
            if (v26 < 2)
            {
              break;
            }

            v27 = *(v25 - 1);
            v28 = *v25++;
            ++v26;
          }

          while (v27 <= v28);
        }

        else
        {
          if (v13 != v12 || v14 != *(v24 - 1))
          {
            sub_1AAF75A98(*&v12, 0, 0);
            sub_1AAF75A98(*(v24 - 1), 0, 0);
            sub_1AAF8E1F4();
            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E224();
            type metadata accessor for FindClass();
            v33 = swift_getObjCClassFromMetadata();
            v8 = [objc_opt_self() bundleForClass_];
            goto LABEL_48;
          }

          v29 = a1 + 5;
          v30 = 1 - v6;
          do
          {
            if (v30 < 2)
            {
              break;
            }

            v31 = *(v29 - 1);
            v32 = *v29++;
            ++v30;
          }

          while (v32 <= v31);
        }
      }

      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      sub_1AAF8E1D4();

      sub_1AAF8E1E4();
      sub_1AAF8E1D4();

      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      v34 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_1AAF8E214();
      type metadata accessor for FindClass();
      v7 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
    }
  }

LABEL_48:
  v35 = v8;
  sub_1AAF8EA44();
}

id sub_1AAF74684(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v50 = MEMORY[0x1E69E7CC0];
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = a4 + 32;
    do
    {
      v7 = *(v6 + 144);
      v8 = *(v6 + 112);
      v46 = *(v6 + 128);
      v47 = v7;
      v9 = *(v6 + 144);
      v48 = *(v6 + 160);
      v10 = *(v6 + 80);
      v11 = *(v6 + 48);
      v42 = *(v6 + 64);
      v43 = v10;
      v12 = *(v6 + 80);
      v13 = *(v6 + 112);
      v44 = *(v6 + 96);
      v45 = v13;
      v14 = *(v6 + 16);
      v39[0] = *v6;
      v39[1] = v14;
      v15 = *(v6 + 48);
      v17 = *v6;
      v16 = *(v6 + 16);
      v40 = *(v6 + 32);
      v41 = v15;
      v35 = v46;
      v36 = v9;
      v37 = *(v6 + 160);
      v31 = v42;
      v32 = v12;
      v33 = v44;
      v34 = v8;
      v27 = v17;
      v28 = v16;
      v49 = *(v6 + 176);
      v38 = *(v6 + 176);
      v29 = v40;
      v30 = v11;
      sub_1AAEDC834(v39, v24);
      sub_1AAF71D44(&v27, &v26);
      v24[8] = v35;
      v24[9] = v36;
      v24[10] = v37;
      v25 = v38;
      v24[4] = v31;
      v24[5] = v32;
      v24[6] = v33;
      v24[7] = v34;
      v24[0] = v27;
      v24[1] = v28;
      v24[2] = v29;
      v24[3] = v30;
      v18 = sub_1AAEDCEC4(v24);
      if (v26)
      {
        MEMORY[0x1AC598430](v18);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();
      }

      v6 += 184;
      --v5;
    }

    while (v5);
  }

  v19 = objc_allocWithZone(MEMORY[0x1E6959570]);
  v20 = sub_1AAF8F624();
  sub_1AAF748E4();
  v21 = sub_1AAF8F824();

  v22 = [v19 initWithName:v20 isContinuous:a3 & 1 dataPoints:v21];

  return v22;
}

unint64_t sub_1AAF748E4()
{
  result = qword_1ED9B11C8;
  if (!qword_1ED9B11C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B11C8);
  }

  return result;
}

uint64_t sub_1AAF74930(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF74FFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAF749A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v68[6] = *(a1 + 96);
  v68[7] = v3;
  v68[8] = *(a1 + 128);
  v69 = *(a1 + 144);
  v4 = *(a1 + 48);
  v68[2] = *(a1 + 32);
  v68[3] = v4;
  v5 = *(a1 + 80);
  v68[4] = *(a1 + 64);
  v68[5] = v5;
  v6 = *(a1 + 16);
  v68[0] = *a1;
  v68[1] = v6;
  v7 = sub_1AAF14CF0(v68);
  v8 = sub_1AACBC764(v68);
  v9 = *v8;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v11 = *(v8 + 40);
      v10 = *(v8 + 48);
      v12 = *(v8 + 56);
      if (*(a2 + 16) && (v13 = sub_1AACE1760(*v8), (v14 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v13, &v62);
      }

      else
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v65 = -1;
      }

      sub_1AADDDC34(&v62, &v58);
      if (v59[24] == 255)
      {
        v60 = 0u;
        memset(v61, 0, 24);
        v61[24] = 3;
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v60 = v58;
        *v61 = *v59;
        *&v61[9] = *&v59[9];
        if ((v12 & 0x80000000) == 0)
        {
LABEL_19:
          v39 = sub_1AAF75A98(v11, v10, v12);
LABEL_45:
          v50 = v39;
          sub_1AAD57C94(&v60);
          sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
          return v50;
        }
      }

      v39 = sub_1AAF75FD0(v11, v10, v12 & 1);
      goto LABEL_45;
    }

    v23 = *(v8 + 48);
    v25 = *(v8 + 56);
    v24 = *(v8 + 64);
    v26 = *(v8 + 72);
    if (*(a2 + 16) && (v27 = sub_1AACE1760(*v8), (v28 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v27, &v62);
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v65 = -1;
    }

    sub_1AADDDC34(&v62, &v58);
    if (v59[24] == 255)
    {
      v60 = 0u;
      memset(v61, 0, 24);
      v61[24] = 3;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v60 = v58;
      *v61 = *v59;
      *&v61[9] = *&v59[9];
      if ((v26 & 0x80000000) == 0)
      {
LABEL_27:
        v39 = sub_1AAF7681C(v25, v24, v26, v23);
        goto LABEL_45;
      }
    }

    v39 = sub_1AAF76D68(v23, *&v25);
    goto LABEL_45;
  }

  if (v7 != 2)
  {
    v29 = *(v8 + 48);
    v31 = *(v8 + 56);
    v30 = *(v8 + 64);
    v32 = *(v8 + 72);
    v33 = *(v8 + 120);
    v35 = *(v8 + 128);
    v34 = *(v8 + 136);
    v36 = *(v8 + 144);
    v66 = 0;
    v67 = 0xE000000000000000;
    if (*(a2 + 16) && (v37 = sub_1AACE1760(v9), (v38 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v37, &v62);
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v65 = -1;
    }

    sub_1AADDDC34(&v62, &v58);
    if (v59[24] == 255)
    {
      v60 = 0u;
      memset(v61, 0, 24);
      v61[24] = 3;
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v60 = v58;
      *v61 = *v59;
      *&v61[9] = *&v59[9];
      if ((v32 & 0x80000000) == 0)
      {
LABEL_31:
        v42 = sub_1AAF7681C(v31, v30, v32, v29);
LABEL_48:
        v52 = v42;
        v53 = v43;
        sub_1AAD57C94(&v60);
        sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
        MEMORY[0x1AC5982F0](v52, v53);

        MEMORY[0x1AC5982F0](32, 0xE100000000000000);
        if (*(a2 + 16) && (v54 = sub_1AACE1760(v9), (v55 & 1) != 0))
        {
          sub_1AACE0A98(*(a2 + 56) + 48 * v54, &v62);
        }

        else
        {
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v65 = -1;
        }

        sub_1AADDDC34(&v62, &v58);
        if (v59[24] == 255)
        {
          v60 = 0u;
          memset(v61, 0, 24);
          v61[24] = 3;
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v60 = v58;
          *v61 = *v59;
          *&v61[9] = *&v59[9];
          if ((v36 & 0x80000000) == 0)
          {
LABEL_54:
            v48 = sub_1AAF7681C(v35, v34, v36, v33);
            goto LABEL_59;
          }
        }

        v48 = sub_1AAF76D68(v33, *&v35);
        goto LABEL_59;
      }
    }

    v42 = sub_1AAF76D68(v29, *&v31);
    goto LABEL_48;
  }

  v16 = *(v8 + 40);
  v15 = *(v8 + 48);
  v17 = *(v8 + 56);
  v19 = *(v8 + 112);
  v18 = *(v8 + 120);
  v20 = *(v8 + 128);
  v66 = 0;
  v67 = 0xE000000000000000;
  if (*(a2 + 16) && (v21 = sub_1AACE1760(v9), (v22 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v21, &v62);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v65 = -1;
  }

  sub_1AADDDC34(&v62, &v58);
  if (v59[24] == 255)
  {
    v60 = 0u;
    memset(v61, 0, 24);
    v61[24] = 3;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_35:
    v40 = sub_1AAF75FD0(v16, v15, v17 & 1);
    goto LABEL_36;
  }

  v60 = v58;
  *v61 = *v59;
  *&v61[9] = *&v59[9];
  if (v17 < 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v40 = sub_1AAF75A98(v16, v15, v17);
LABEL_36:
  v44 = v40;
  v45 = v41;
  sub_1AAD57C94(&v60);
  sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  MEMORY[0x1AC5982F0](v44, v45);

  MEMORY[0x1AC5982F0](32, 0xE100000000000000);
  if (*(a2 + 16) && (v46 = sub_1AACE1760(v9), (v47 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v46, &v62);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v65 = -1;
  }

  sub_1AADDDC34(&v62, &v58);
  if (v59[24] == 255)
  {
    v60 = 0u;
    memset(v61, 0, 24);
    v61[24] = 3;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_56:
    v48 = sub_1AAF75FD0(v19, v18, v20 & 1);
    goto LABEL_59;
  }

  v60 = v58;
  *v61 = *v59;
  *&v61[9] = *&v59[9];
  if (v20 < 0)
  {
    goto LABEL_56;
  }

LABEL_42:
  v48 = sub_1AAF75A98(v19, v18, v20);
LABEL_59:
  v56 = v48;
  v57 = v49;
  sub_1AAD57C94(&v60);
  sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  MEMORY[0x1AC5982F0](v56, v57);

  return v66;
}

void sub_1AAF74FFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF75058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

double sub_1AAF750A8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF75120(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1AAF75150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF75198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF75200(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[80])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF75244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

__n128 sub_1AAF752AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1AAF752E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF75330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAF753B4()
{
  result = qword_1EB427520;
  if (!qword_1EB427520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427520);
  }

  return result;
}

unint64_t sub_1AAF7540C()
{
  result = qword_1ED9B0F28;
  if (!qword_1ED9B0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F28);
  }

  return result;
}

unint64_t sub_1AAF75464()
{
  result = qword_1ED9B0EF8;
  if (!qword_1ED9B0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0EF8);
  }

  return result;
}

double sub_1AAF754B8@<D0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[4];
  v49[5] = a2[5];
  v49[6] = v6;
  v50[0] = v7;
  *(v50 + 9) = *(a2 + 121);
  v9 = a2[3];
  v49[2] = a2[2];
  v49[3] = v9;
  v49[4] = v8;
  v10 = a2[1];
  v49[0] = *a2;
  v49[1] = v10;
  v11 = sub_1AAE63EF0(v49);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v15 = sub_1AAD357A8(v49);
      *v36 = *v15;
      v16 = v15[3];
      v18 = v15[1];
      v17 = v15[2];
      *&v36[64] = v15[4];
      *&v36[32] = v17;
      *&v36[48] = v16;
      *&v36[16] = v18;
      v20 = v15[6];
      v19 = v15[7];
      v21 = v15[5];
      *&v36[121] = *(v15 + 121);
      *&v36[96] = v20;
      *&v36[112] = v19;
      *&v36[80] = v21;
      sub_1AAE63EFC(v36, &v51);
      sub_1AAE63EFC(&v36[72], &v51);
      sub_1AAE68190(a2);
      *&v37[23] = *&v36[16];
      *&v37[39] = *&v36[32];
      *&v37[55] = *&v36[48];
      v37[71] = v36[64];
      *&v37[7] = *v36;
      *&v35[23] = *&v36[88];
      *&v35[39] = *&v36[104];
      *&v35[55] = *&v36[120];
      *&v35[7] = *&v36[72];
      *&v38[1] = *v37;
      *&v38[49] = *&v37[48];
      *&v38[33] = *&v37[32];
      *&v38[17] = *&v37[16];
      *&v38[73] = *v35;
      *&v38[121] = *&v35[48];
      *&v38[105] = *&v35[32];
      v35[71] = v36[136];
      v38[0] = a1;
      *&v38[65] = *&v37[64];
      *&v38[137] = *&v35[64];
      *&v38[89] = *&v35[16];
      sub_1AAF758DC(v38);
LABEL_12:
      v45 = *&v38[96];
      v46 = *&v38[112];
      v14 = *&v38[128];
      goto LABEL_13;
    }

    if (v11 != 4)
    {
      v22 = sub_1AAD357A8(v49);
      *v36 = *v22;
      v23 = v22[3];
      v25 = v22[1];
      v24 = v22[2];
      *&v36[64] = v22[4];
      *&v36[32] = v24;
      *&v36[48] = v23;
      *&v36[16] = v25;
      v27 = v22[6];
      v26 = v22[7];
      v28 = v22[5];
      *&v36[121] = *(v22 + 121);
      *&v36[96] = v27;
      *&v36[112] = v26;
      *&v36[80] = v28;
      v29 = v36[72];
      sub_1AAE63EFC(v36, &v51);
      sub_1AAE68190(a2);
      *&v37[7] = *v36;
      *&v37[23] = *&v36[16];
      *&v37[39] = *&v36[32];
      *&v37[55] = *&v36[48];
      v37[71] = v36[64];
      *&v38[17] = *&v37[16];
      *&v38[33] = *&v37[32];
      *&v38[49] = *&v37[48];
      v38[0] = a1;
      *&v38[65] = *&v37[64];
      *&v38[1] = *v37;
      v38[73] = v29;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = sub_1AAD357A8(v49);
      *&v36[7] = *v13;
      *&v36[55] = *(v13 + 48);
      v36[71] = *(v13 + 64);
      *&v36[39] = *(v13 + 32);
      *&v36[23] = *(v13 + 16);
      *&v38[1] = *v36;
      *&v38[49] = *&v36[48];
      *&v38[33] = *&v36[32];
      v38[0] = a1;
      *&v38[65] = *&v36[64];
      *&v38[17] = *&v36[16];
      v38[73] = 3;
      sub_1AAEDA174(v38);
      v45 = *&v38[96];
      v14 = *&v38[128];
      v46 = *&v38[112];
LABEL_13:
      v47 = v14;
      v48 = *&v38[144];
      v41 = *&v38[32];
      v42 = *&v38[48];
      v43 = *&v38[64];
      v44 = *&v38[80];
      v39 = *v38;
      v40 = *&v38[16];
      nullsub_1();
      v57 = v45;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v51 = v39;
      v52 = v40;
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      v12 = sub_1AAD357A8(v49);
      *&v36[7] = *v12;
      *&v36[55] = *(v12 + 48);
      v36[71] = *(v12 + 64);
      *&v36[39] = *(v12 + 32);
      *&v36[23] = *(v12 + 16);
      *&v38[1] = *v36;
      *&v38[49] = *&v36[48];
      *&v38[33] = *&v36[32];
      v38[0] = a1;
      *&v38[65] = *&v36[64];
      *&v38[17] = *&v36[16];
      v38[73] = 3;
LABEL_11:
      sub_1AAEDA174(v38);
      goto LABEL_12;
    }
  }

  sub_1AAD357A8(v49);
  sub_1AAE2D7EC(&v51);
LABEL_14:
  v30 = v58;
  *(a3 + 96) = v57;
  *(a3 + 112) = v30;
  *(a3 + 128) = v59;
  *(a3 + 144) = v60;
  v31 = v54;
  *(a3 + 32) = v53;
  *(a3 + 48) = v31;
  v32 = v56;
  *(a3 + 64) = v55;
  *(a3 + 80) = v32;
  result = *&v51;
  v34 = v52;
  *a3 = v51;
  *(a3 + 16) = v34;
  return result;
}

void *sub_1AAF758DC(void *result)
{
  v1 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v2 = result[18] & 0xFFFFFFFFFFFFFFBLL | 0xC000000000000000;
  *result &= 0xFuLL;
  result[9] = v1;
  result[18] = v2;
  return result;
}

uint64_t sub_1AAF75910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 72))
  {
    return (*a1 + 31);
  }

  v3 = (((*(a1 + 64) >> 59) >> 4) | (2 * ((*(a1 + 64) >> 59) & 0xE | (*(a1 + 64) >> 2) & 1))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAF7596C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AAF75A0C()
{
  result = qword_1EB427528;
  if (!qword_1EB427528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427528);
  }

  return result;
}

uint64_t sub_1AAF75A60(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1AAF75A98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CA04();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CA64();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1AAEB36F8(0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v25 = v17;
    v26 = v16;
    sub_1AACE0A98(v4, &v44);
    if (v47 - 1 >= 2)
    {
      if (!v47)
      {
        v41 = v44;
        v42 = v45;
        v27 = v46;
        v43 = v46;
        v40[0] = a1;
        v28 = *(&v45 + 1);
        v29 = sub_1AACBB42C(&v41, *(&v45 + 1));
        v30 = MEMORY[0x1E69E63B0];
        sub_1AAF7743C(v29, v40, MEMORY[0x1E69E63B0], v28, v27);
        a1 = v31;
        sub_1AAF77910(&v41, &qword_1ED9B2790, v30);
        return a1;
      }

      v40[0] = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
      sub_1AAF8F344();
      (*(v25 + 8))(v19, v26);
      return v41;
    }

LABEL_10:
    sub_1AAD57C94(&v44);
    return 0;
  }

  if (a3 == 1)
  {
    sub_1AAF8C844();
    v20 = sub_1AACE0A98(v4, &v44);
    if (v47 <= 1u)
    {
      if (v47)
      {
        v41 = v44;
        v42 = v45;
        v21 = v46;
        v43 = v46;
        v22 = *(&v45 + 1);
        v23 = sub_1AACBB42C(&v41, *(&v45 + 1));
        sub_1AAF7743C(v23, v13, v11, v22, v21);
        a1 = v24;
        (*(v39 + 8))(v13, v11);
        sub_1AAF77810(&v41, sub_1AAF77870);
        return a1;
      }

      goto LABEL_12;
    }

    if (v47 == 2)
    {
LABEL_12:
      sub_1AAD57C94(&v44);
      (*(v39 + 8))(v13, v11);
      return 0;
    }

    MEMORY[0x1AC5952D0](v20);
    sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1AAF8CA44();
    (*(v38 + 8))(v10, v8);
    (*(v39 + 8))(v13, v11);
    return v41;
  }

  sub_1AACE0A98(v4, &v44);
  if (v47 < 2u)
  {
    goto LABEL_10;
  }

  if (v47 == 2)
  {
    v41 = v44;
    v42 = v45;
    v32 = v46;
    v43 = v46;
    v40[0] = a1;
    v40[1] = a2;
    v33 = *(&v45 + 1);
    v34 = sub_1AACBB42C(&v41, *(&v45 + 1));
    v35 = MEMORY[0x1E69E6158];
    sub_1AAF7743C(v34, v40, MEMORY[0x1E69E6158], v33, v32);
    a1 = v36;
    sub_1AAF77910(&v41, &qword_1ED9AEC08, v35);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AAF75FD0(unint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CA04();
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8CA64();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1AAEB36F8(0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1AAF8C844();
    sub_1AAF8C844();
    sub_1AACE0A98(v4, &v76);
    if (v79 <= 1u)
    {
      if (v79)
      {
        v73 = v76;
        v74 = v77;
        v75 = v78;
        sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AAF9E2B0;
        v26 = *(&v74 + 1);
        v27 = v75;
        v28 = sub_1AACBB42C(&v73, *(&v74 + 1));
        v29 = v70;
        sub_1AAF7743C(v28, v18, v70, v26, v27);
        *(inited + 32) = v30;
        *(inited + 40) = v31;
        v32 = *(&v74 + 1);
        v33 = v75;
        v34 = sub_1AACBB42C(&v73, *(&v74 + 1));
        sub_1AAF7743C(v34, v15, v29, v32, v33);
        *(inited + 48) = v35;
        *(inited + 56) = v36;
        v37 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v38 = *(v71 + 8);
        v38(v15, v29);
        v38(v18, v29);
        sub_1AAF77810(&v73, sub_1AAF77870);
        return v37;
      }

      goto LABEL_8;
    }

    if (v79 == 2)
    {
LABEL_8:
      sub_1AAD57C94(&v76);
      v42 = v70;
      v43 = *(v71 + 8);
      v43(v15, v70);
      v43(v18, v42);
      return 0;
    }

    sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_1AAF9E2B0;
    MEMORY[0x1AC5952D0]();
    sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    v58 = v68;
    sub_1AAF8CA44();
    v59 = *(v69 + 8);
    v60 = v59(v11, v58);
    MEMORY[0x1AC5952D0](v60);
    sub_1AAF8CA44();
    v59(v11, v58);
    v61 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    v62 = v70;
    v63 = *(v71 + 8);
    v63(v15, v70);
    v63(v18, v62);
    return v61;
  }

  else
  {
    v40 = v22;
    v71 = a2;
    v41 = v21;
    sub_1AACE0A98(v4, &v76);
    if (v79 - 1 < 2)
    {
      sub_1AAD57C94(&v76);
      return 0;
    }

    if (v79)
    {
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_1AAF9E2B0;
      *&v73 = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
      sub_1AAF8F344();
      v65 = *(v40 + 8);
      v65(v24, v41);
      *&v73 = v71;
      sub_1AAF8CA74();
      sub_1AAF8C794();
      sub_1AAF8F344();
      v65(v24, v41);
      v66 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v66;
    }

    else
    {
      v73 = v76;
      v74 = v77;
      v75 = v78;
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_1AAF9E2B0;
      v72[0] = a1;
      v45 = *(&v74 + 1);
      v46 = v75;
      v47 = sub_1AACBB42C(&v73, *(&v74 + 1));
      v48 = MEMORY[0x1E69E63B0];
      sub_1AAF7743C(v47, v72, MEMORY[0x1E69E63B0], v45, v46);
      *(v44 + 32) = v49;
      *(v44 + 40) = v50;
      v72[0] = v71;
      v51 = *(&v74 + 1);
      v52 = v75;
      v53 = sub_1AACBB42C(&v73, *(&v74 + 1));
      sub_1AAF7743C(v53, v72, v48, v51, v52);
      *(v44 + 48) = v54;
      *(v44 + 56) = v55;
      v56 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1AAF77910(&v73, &qword_1ED9B2790, v48);
      return v56;
    }
  }
}

uint64_t sub_1AAF7681C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v41 = a1;
  v8 = sub_1AAF8CA04();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CA64();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1AAEB36F8(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AAF8C844();
      v20 = sub_1AACE0A98(v4, &v47);
      if (v50 <= 1u)
      {
        if (v50)
        {
          v44 = v47;
          v45 = v48;
          v21 = v49;
          v46 = v49;
          v22 = *(&v48 + 1);
          v23 = sub_1AACBB42C(&v44, *(&v48 + 1));
          sub_1AAF7743C(v23, v13, v11, v22, v21);
          v25 = v24;
          (*(v42 + 8))(v13, v11);
          sub_1AAF77810(&v44, sub_1AAF77870);
          return v25;
        }

        goto LABEL_13;
      }

      if (v50 == 2)
      {
LABEL_13:
        sub_1AAD57C94(&v47);
        (*(v42 + 8))(v13, v11);
        return 0;
      }

      MEMORY[0x1AC5952D0](v20);
      sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
      sub_1AAF8CA44();
      (*(v40 + 8))(v10, v8);
      (*(v42 + 8))(v13, v11);
      return v44;
    }

    if (!a2)
    {
      return 0;
    }

    sub_1AACE0A98(v4, &v47);
    if (v50 < 2u)
    {
LABEL_11:
      sub_1AAD57C94(&v47);
      return 0;
    }

    if (v50 != 2)
    {

      return v41;
    }

    v44 = v47;
    v45 = v48;
    v35 = v49;
    v46 = v49;
    v43[0] = v41;
    v43[1] = a2;
    v36 = *(&v48 + 1);
    v37 = sub_1AACBB42C(&v44, *(&v48 + 1));
    v31 = MEMORY[0x1E69E6158];
    sub_1AAF7743C(v37, v43, MEMORY[0x1E69E6158], v36, v35);
    v33 = v38;
    v34 = &qword_1ED9AEC08;
LABEL_18:
    sub_1AAF77910(&v44, v34, v31);
    return v33;
  }

  v27 = v17;
  sub_1AACE0A98(v4, &v47);
  if (v50 - 1 < 2)
  {
    goto LABEL_11;
  }

  if (!v50)
  {
    v44 = v47;
    v45 = v48;
    v28 = v49;
    v46 = v49;
    *v43 = a4;
    v29 = *(&v48 + 1);
    v30 = sub_1AACBB42C(&v44, *(&v48 + 1));
    v31 = MEMORY[0x1E69E63B0];
    sub_1AAF7743C(v30, v43, MEMORY[0x1E69E63B0], v29, v28);
    v33 = v32;
    v34 = &qword_1ED9B2790;
    goto LABEL_18;
  }

  *v43 = a4;
  sub_1AAF8CA74();
  sub_1AAD46810();
  sub_1AAF8C794();
  sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
  sub_1AAF8F344();
  (*(v16 + 8))(v19, v27);
  return v44;
}

uint64_t sub_1AAF76D68(double a1, double a2)
{
  v5 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AAEB36F8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0A98(v2, v33);
  if (v35 - 1 >= 2)
  {
    if (v35)
    {
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AAF9E2B0;
      *&v30 = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
      sub_1AAF8F344();
      v26 = *(v8 + 8);
      v26(v10, v7);
      *&v30 = a2;
      sub_1AAF8CA74();
      sub_1AAF8C794();
      sub_1AAF8F344();
      v26(v10, v7);
      v27 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v27;
    }

    else
    {
      v30 = v33[0];
      v31 = v33[1];
      v32 = v34;
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1AAF9E2B0;
      v29 = a1;
      v13 = *(&v31 + 1);
      v14 = v32;
      v15 = sub_1AACBB42C(&v30, *(&v31 + 1));
      v16 = MEMORY[0x1E69E63B0];
      sub_1AAF7743C(v15, &v29, MEMORY[0x1E69E63B0], v13, v14);
      *(v12 + 32) = v17;
      *(v12 + 40) = v18;
      v29 = a2;
      v19 = *(&v31 + 1);
      v20 = v32;
      v21 = sub_1AACBB42C(&v30, *(&v31 + 1));
      sub_1AAF7743C(v21, &v29, v16, v19, v20);
      *(v12 + 48) = v22;
      *(v12 + 56) = v23;
      v24 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v12);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1AAF77910(&v30, &qword_1ED9B2790, v16);
      return v24;
    }
  }

  else
  {
    sub_1AAD57C94(v33);
    return 0;
  }
}

unint64_t sub_1AAF77160()
{
  sub_1AAF77D58(0, &qword_1ED9B0280, MEMORY[0x1E69E6158], type metadata accessor for AnyFormatStyle.IdentityFormatStyle);
  qword_1ED9C33D0 = v0;
  result = sub_1AAF77998();
  qword_1ED9C33D8 = result;
  byte_1ED9C33E0 = 2;
  return result;
}

uint64_t sub_1AAF771C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1AACBB42C(a1, v5);

  return sub_1AAF7721C(v7, a2, a3, v5, v6);
}

uint64_t sub_1AAF7721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1AAF8FE74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-v9 - 8];
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AACAEF68(a2, v20);
  sub_1AAF77CF4();
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a4);
    (*(v11 + 32))(v14, v10, a4);
    v17 = sub_1AAF8F5F4();
    (*(v11 + 8))(v14, a4);
  }

  else
  {
    v16(v10, 1, 1, a4);
    (*(v8 + 8))(v10, v7);
    v17 = 0;
  }

  return v17 & 1;
}

void sub_1AAF7743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a2;
  v20[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v20 - v16;
  if (*(*(a3 - 8) + 64) == v8)
  {
    v18 = v14;
    (*(v7 + 16))(v10, v20[0], AssociatedTypeWitness, v15);
    sub_1AAF8C6A4();
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    if (v13 == 16)
    {
      v19 = *(v12 + 8);

      v19(v17, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1AAF77694(_BYTE *a2@<X8>)
{
  v3 = sub_1AAF27900();

  *a2 = v3 & 1;
}

uint64_t sub_1AAF776DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AAF27900();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AAF7770C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AAF77760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AAF77810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAF77870(uint64_t a1)
{
  if (!qword_1ED9B2588[0])
  {
    v2 = sub_1AAF8CA64();
    v5 = type metadata accessor for AnyFormatStyle.Wrapper(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9B2588);
    }
  }
}

uint64_t sub_1AAF778C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AAF77910(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF77D58(0, a2, a3, type metadata accessor for AnyFormatStyle.Wrapper);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAF77998()
{
  result = qword_1ED9B0288[0];
  if (!qword_1ED9B0288[0])
  {
    sub_1AAF77D58(255, &qword_1ED9B0280, MEMORY[0x1E69E6158], type metadata accessor for AnyFormatStyle.IdentityFormatStyle);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0288);
  }

  return result;
}

uint64_t sub_1AAF77A14(uint64_t a1, uint64_t a2)
{
  sub_1AACE0A98(a1, v26);
  sub_1AACE0A98(a2, v28);
  if (v27 <= 1u)
  {
    if (v27)
    {
      sub_1AACE0A98(v26, v23);
      if (v29 != 1)
      {
        sub_1AAF77810(v23, sub_1AAF77870);
        goto LABEL_16;
      }

      v20 = *v28;
      v21 = *&v28[16];
      v22 = *&v28[32];
      v11 = v24;
      v12 = v25;
      v13 = sub_1AACBB42C(v23, v24);
      v14 = sub_1AAF8CA64();
      v9 = sub_1AAF7721C(v13, &v20, v14, v11, v12);
      sub_1AAF77810(&v20, sub_1AAF77870);
      sub_1AAF77810(v23, sub_1AAF77870);
LABEL_19:
      sub_1AAD57C94(v26);
      return v9 & 1;
    }

    sub_1AACE0A98(v26, v23);
    if (v29)
    {
      v3 = &qword_1ED9B2790;
      v4 = MEMORY[0x1E69E63B0];
LABEL_14:
      sub_1AAF77910(v23, v3, v4);
LABEL_16:
      sub_1AAF77810(v26, sub_1AAF77C98);
      v9 = 0;
      return v9 & 1;
    }

    v20 = *v28;
    v21 = *&v28[16];
    v22 = *&v28[32];
    v16 = v24;
    v17 = v25;
    v18 = sub_1AACBB42C(v23, v24);
    v8 = MEMORY[0x1E69E63B0];
    v9 = sub_1AAF7721C(v18, &v20, MEMORY[0x1E69E63B0], v16, v17);
    v10 = &qword_1ED9B2790;
LABEL_18:
    sub_1AAF77910(&v20, v10, v8);
    sub_1AAF77910(v23, v10, v8);
    goto LABEL_19;
  }

  if (v27 == 2)
  {
    sub_1AACE0A98(v26, v23);
    if (v29 != 2)
    {
      v3 = &qword_1ED9AEC08;
      v4 = MEMORY[0x1E69E6158];
      goto LABEL_14;
    }

    v20 = *v28;
    v21 = *&v28[16];
    v22 = *&v28[32];
    v5 = v24;
    v6 = v25;
    v7 = sub_1AACBB42C(v23, v24);
    v8 = MEMORY[0x1E69E6158];
    v9 = sub_1AAF7721C(v7, &v20, MEMORY[0x1E69E6158], v5, v6);
    v10 = &qword_1ED9AEC08;
    goto LABEL_18;
  }

  if (v29 != 3)
  {
    goto LABEL_16;
  }

  v15 = vorrq_s8(*&v28[8], *&v28[24]);
  if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v28)
  {
    goto LABEL_16;
  }

  sub_1AAD57C94(v26);
  v9 = 1;
  return v9 & 1;
}

void sub_1AAF77C98()
{
  if (!qword_1EB427530[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EB427530);
    }
  }
}

unint64_t sub_1AAF77CF4()
{
  result = qword_1ED9B4478;
  if (!qword_1ED9B4478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B4478);
  }

  return result;
}

void sub_1AAF77D58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF77DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF77E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyFormatStyle.IdentityFormatStyle.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1AAF90454();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1AACBB42C(a1, a1[3]);
  sub_1AAF90764();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AAF77FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v55 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v52 - v11;
  v65 = sub_1AAF900F4();
  MEMORY[0x1EEE9AC00](v65);
  v12 = sub_1AAF90364();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v64 = swift_getTupleTypeMetadata2();
  v15 = sub_1AAF8FE74();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v59 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v52 - v18;
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v57 = &v52 - v23;
  MEMORY[0x1AC5983C0](a1, a2, v22);
  v68 = a1;
  v69 = a2;
  v70 = a3;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = KeyPath;
  v26 = a3;

  swift_getWitnessTable();
  sub_1AAF903E4();

  v27 = v64;

  WitnessTable = swift_getWitnessTable();
  v29 = *(*(*(v26 + 16) + 24) + 8);
  sub_1AAF88EEC(v12, WitnessTable, v29, v17);
  (*(v66 + 8))(v14, v12);
  if ((*(*(v27 - 8) + 48))(v17, 1, v27) == 1)
  {
    (*(v60 + 8))(v17, v61);
    v30 = sub_1AAF8F5D4();
    return (*(*(v30 - 8) + 56))(v67, 1, 1, v30);
  }

  else
  {
    v32 = v67;
    v33 = *(v27 + 48);
    v34 = v29;
    v36 = v58;
    v35 = v59;
    v37 = *(v59 + 48);
    v38 = *(v63 + 32);
    v38(v58, v17, AssociatedTypeWitness);
    v38(&v36[v37], &v17[v33], AssociatedTypeWitness);
    v39 = *(v35 + 48);
    v40 = v57;
    v38(v57, v36, AssociatedTypeWitness);
    v41 = &v36[v39];
    v42 = v62;
    v38(v62, v41, AssociatedTypeWitness);
    result = sub_1AAF8F584();
    if (result)
    {
      v66 = v34;
      v43 = v53;
      v38(v53, v40, AssociatedTypeWitness);
      v44 = v55;
      v38(&v43[*(v55 + 48)], v42, AssociatedTypeWitness);
      v45 = v54;
      v46 = v56;
      (*(v54 + 16))(v56, v43, v44);
      v47 = *(v44 + 48);
      v38(v32, v46, AssociatedTypeWitness);
      v48 = *(v63 + 8);
      v48(&v46[v47], AssociatedTypeWitness);
      (*(v45 + 32))(v46, v43, v44);
      v49 = *(v44 + 48);
      v50 = sub_1AAF8F5D4();
      v51 = v67;
      v38(&v67[*(v50 + 36)], &v46[v49], AssociatedTypeWitness);
      v48(v46, AssociatedTypeWitness);
      return (*(*(v50 - 8) + 56))(v51, 0, 1, v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AAF786F0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (**a4)(char *, uint64_t)@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v59 = a5;
  v77 = a1;
  v78 = a2;
  v69 = a6;
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v10;
  v83 = a4;
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v55 - v13;
  v68 = sub_1AAF8FE74();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v55 - v15;
  v17 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v55 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = a3;
  v56 = sub_1AAF8FE74();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v55 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v55 - v30;
  v66 = *(v85 + 56);
  v67 = v85 + 56;
  v66(v69, 1, 1, AssociatedTypeWitness, v29);
  v32 = *(v62 + 56);
  v76 = v24;
  v65 = v62 + 56;
  v64 = v32;
  v32(v31, 1, 1, v24);
  (*(v17 + 16))(v20, v84, v82);
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v23;
  v80 = v21;
  v34 = v56;
  v35 = v31;
  v74 = AssociatedConformanceWitness;
  sub_1AAF8FE94();
  v36 = v85;
  v72 = *(v85 + 48);
  v73 = v85 + 48;
  if (v72(v16, 1, AssociatedTypeWitness) == 1)
  {
LABEL_2:
    (*(v55 + 8))(v79, v80);
    return (*(v57 + 8))(v35, v34);
  }

  v84 = *(v36 + 32);
  v82 = (v57 + 16);
  v81 = (v62 + 48);
  v83 = (v57 + 8);
  v61 = (v62 + 8);
  v85 = v36 + 32;
  v58 = (v36 + 8);
  ++v63;
  v62 += 32;
  v70 = AssociatedTypeWitness;
  v71 = v16;
  v84(v14, v16, AssociatedTypeWitness);
  while (1)
  {
    v41 = v14;
    v77(v14);
    v42 = *v82;
    v43 = v75;
    (*v82)(v75, v35, v34);
    v44 = *v81;
    v45 = v76;
    v46 = (*v81)(v43, 1, v76);
    v47 = *v83;
    (*v83)(v43, v34);
    if (v46 == 1)
    {
LABEL_4:
      v47(v35, v34);
      v38 = v69;
      (*v63)(v69, v68);
      (*v62)(v35, v9, v45);
      v64(v35, 0, 1, v45);
      v14 = v41;
      v39 = v70;
      v84(v38, v41, v70);
      (v66)(v38, 0, 1, v39);
      goto LABEL_5;
    }

    v48 = v60;
    v49 = v35;
    v50 = v35;
    v51 = v34;
    v42(v60, v50, v34);
    result = v44(v48, 1, v45);
    if (result == 1)
    {
      break;
    }

    v52 = v48;
    v53 = sub_1AAF8F564();
    v54 = *v61;
    (*v61)(v52, v45);
    v34 = v51;
    v35 = v49;
    if (v53)
    {
      goto LABEL_4;
    }

    v54(v9, v45);
    v14 = v41;
    v39 = v70;
    (*v58)(v41, v70);
LABEL_5:
    v40 = v71;
    sub_1AAF8FE94();
    if (v72(v40, 1, v39) == 1)
    {
      goto LABEL_2;
    }

    v84(v14, v40, v39);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF78EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a2;
  v46 = a4;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v42 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - v9;
  v10 = swift_getTupleTypeMetadata2();
  v11 = sub_1AAF8FE74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1AAF88EEC(a1, v45, v47, v14);
  if ((*(*(v10 - 8) + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v24 = sub_1AAF8F5D4();
    return (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  }

  else
  {
    v26 = *(v10 + 48);
    v27 = *(v15 + 48);
    v28 = *(v44 + 32);
    v28(v17, v14, AssociatedTypeWitness);
    v28(&v17[v27], &v14[v26], AssociatedTypeWitness);
    v29 = *(v15 + 48);
    v28(v23, v17, AssociatedTypeWitness);
    v28(v20, &v17[v29], AssociatedTypeWitness);
    result = sub_1AAF8F584();
    if (result)
    {
      v30 = v40;
      v28(v40, v23, AssociatedTypeWitness);
      v31 = v42;
      v28(&v30[*(v42 + 48)], v20, AssociatedTypeWitness);
      v32 = v41;
      v33 = v43;
      (*(v41 + 16))(v43, v30, v31);
      v34 = *(v31 + 48);
      v28(v46, v33, AssociatedTypeWitness);
      v35 = *(v44 + 8);
      v35(&v33[v34], AssociatedTypeWitness);
      (*(v32 + 32))(v33, v30, v31);
      v36 = *(v31 + 48);
      v37 = sub_1AAF8F5D4();
      v38 = v46;
      v28(&v46[*(v37 + 36)], &v33[v36], AssociatedTypeWitness);
      v35(v33, AssociatedTypeWitness);
      return (*(*(v37 - 8) + 56))(v38, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AAF79400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = sub_1AAF904A4();
  v82 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v72 - v9;
  v10 = *(a4 + 16);
  v91 = *(*(v10 + 16) + 8);
  v88 = *(v91 + 16);
  v87 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v72 - v11;
  v12 = sub_1AAF8FE74();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v72 - v13;
  v95 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v100 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v72 - v28;
  v80 = v10;
  v83 = *(*(v10 + 24) + 8);
  v29 = sub_1AAF8F5D4();
  v30 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v72 - v34;
  v36 = *(v29 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v98 = v39;
  v99 = &v72 - v40;
  v97 = v41;
  v42 = a1;
  v43 = v29;
  (*(v41 + 16))(v32, v42, v38);
  v44 = *(v36 + 48);
  v45 = v44(v32, 1, v43);
  v96 = a3;
  v90 = v24;
  v94 = *&a2;
  if (v45 == 1)
  {
    v101 = a2;
    v46 = a4;
    v47 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    v49 = v47;
    a4 = v46;
    sub_1AAF77FE4(v49, WitnessTable, v46, v35);
    if (v44(v32, 1, v43) != 1)
    {
      (*(v97 + 8))(v32, v98);
    }
  }

  else
  {
    (*(v36 + 32))(v35, v32, v43);
    (*(v36 + 56))(v35, 0, 1, v43);
  }

  v50 = v44(v35, 1, v43);
  v51 = v100;
  if (v50 == 1)
  {
    v53 = v97;
    v52 = v98;
LABEL_9:
    (*(v53 + 8))(v35, v52);
    return 1;
  }

  v54 = v99;
  (*(v36 + 32))(v99, v35, v43);
  v35 = v92;
  v55 = v96;
  sub_1AAF7B82C(v94, v96, a4, v92);
  v56 = v95;
  if ((*(v95 + 48))(v35, 1, v55) == 1)
  {
    (*(v36 + 8))(v54, v43);
    v53 = v84;
    v52 = v85;
    goto LABEL_9;
  }

  v98 = v43;
  v58 = v93;
  (*(v56 + 32))(v93, v35, v55);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
  v59 = sub_1AAF8F554();
  v60 = *(v56 + 8);
  v60(v51, v55);
  if ((v59 & 1) == 0)
  {
    v60(v58, v55);
    (*(v36 + 8))(v99, v98);
    return 1;
  }

  v97 = v36;
  sub_1AAF902F4();
  sub_1AAF8F384();
  v61 = sub_1AAF8F8D4();
  cbrt(v61);
  v62 = v74;
  sub_1AAF8F374();
  sub_1AAF8FAD4();
  v60(v62, v55);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90544();
  v63 = v73;
  sub_1AAF90494();
  sub_1AAF8FAD4();
  v60(v63, v55);
  v64 = v89;
  sub_1AAF8F434();
  v60(v62, v55);
  v60(v64, v55);
  v65 = v82;
  v66 = v81;
  v67 = v76;
  (*(v82 + 104))(v81, *MEMORY[0x1E69E7040], v76);
  v68 = v77;
  v69 = v100;
  sub_1AAF8F444();
  (*(v65 + 8))(v66, v67);
  v60(v69, v55);
  sub_1AADF2498();
  sub_1AAF902B4();
  if (v102)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1AAF900D4();
    v71 = sub_1AAF907B4();
    MEMORY[0x1AC5982F0](v71);

    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v70 = v101;
    v60(v68, v55);
    v60(v90, v55);
    v60(v93, v55);
    (*(v97 + 8))(v99, v98);
    return v70;
  }

  return result;
}

uint64_t sub_1AAF79F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a2;
  v36 = a1;
  v41 = sub_1AAF8FE74();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v40 = a3;
  v43 = a3;
  sub_1AAF8F914();
  swift_getWitnessTable();
  sub_1AAF8FBF4();
  v21 = *(v12 + 48);
  if (v21(v11, 1, a4) == 1)
  {
    v7[1](v11, v41);
    return 0;
  }

  v35 = v7;
  v34 = *(v12 + 32);
  v34(v20, v11, a4);
  v43 = v40;
  swift_getWitnessTable();
  v22 = v42;
  sub_1AAF8F4F4();
  if (v21(v22, 1, a4) == 1)
  {
    (*(v12 + 8))(v20, a4);
    (*(v35 + 1))(v42, v41);
    return 0;
  }

  v35 = v20;
  v41 = v12;
  v23 = v39;
  v34(v39, v42, a4);
  v24 = v38;
  if (v38 < 2)
  {
    v25 = *(v41 + 8);
    v25(v23, a4);
    v25(v35, a4);
    return 0;
  }

  v28 = v38 - 1;
  result = sub_1AAF8F564();
  if ((result & 1) == 0)
  {
    v26 = 0;
    if (v24 != 2)
    {
      v31 = (v41 + 8);
      while (!__OFADD__(v26, v28))
      {
        sub_1AAF8F944();
        v32 = sub_1AAF8F554();
        result = (*v31)(v15, a4);
        if (v32)
        {
          v28 = (v26 + v28) / 2;
        }

        else
        {
          v26 = (v26 + v28) / 2;
        }

        if (v26 + 1 >= v28)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_27;
    }

LABEL_25:
    v33 = *(v41 + 8);
    v33(v39, a4);
    v33(v35, a4);
    return v26;
  }

  v26 = 0;
  if (v24 == 2)
  {
    goto LABEL_25;
  }

  v29 = (v41 + 8);
  while (!__OFADD__(v26, v28))
  {
    sub_1AAF8F944();
    v30 = sub_1AAF8F564();
    result = (*v29)(v15, a4);
    if (v30)
    {
      v28 = (v26 + v28) / 2;
    }

    else
    {
      v26 = (v26 + v28) / 2;
    }

    if (v26 + 1 >= v28)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AAF7A3D0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF8C54(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_44;
  }

  v5 = 0;
  v6 = a1 + 32;
  v96 = *(a1 + 16);
  v93 = a1 + 32;
  do
  {
    v98 = v3;
    v7 = (v6 + 152 * v5);
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v8 = v7[7];
      v115 = v7[6];
      v116 = v8;
      v117 = v7[8];
      v118 = *(v7 + 18);
      v9 = v7[3];
      v111 = v7[2];
      v112 = v9;
      v10 = v7[5];
      v113 = v7[4];
      v114 = v10;
      v11 = v7[1];
      v109 = *v7;
      v110 = v11;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_46;
      }

      v99 = v5 + 1;
      v12 = v7[7];
      v119[6] = v7[6];
      v119[7] = v12;
      v119[8] = v7[8];
      v120 = *(v7 + 18);
      v13 = v7[3];
      v119[2] = v7[2];
      v119[3] = v13;
      v14 = v7[5];
      v119[4] = v7[4];
      v119[5] = v14;
      v15 = v7[1];
      v119[0] = *v7;
      v119[1] = v15;
      v16 = sub_1AAF14CF0(v119);
      if (v16 > 1)
      {
        v97 = v2;
        if (v16 == 2)
        {
          v23 = sub_1AACBC764(v119);
          v24 = *(v23 + 8);
          v25 = *(v23 + 16);
          v26 = *(v23 + 32);
          v27 = *(v23 + 80);
          v28 = *(v23 + 88);
          v29 = *(v23 + 96);
          v30 = *(v23 + 104);
          v104[0] = *(v23 + 24);
          v31 = v104[0] & 1;
          sub_1AACD7304(v24, v25, v104[0]);

          sub_1AACD7304(v27, v28, v29);
          *&v105 = v24;
          *(&v105 + 1) = v25;
          *&v106 = v31;
          *(&v106 + 1) = v26;
          *&v107 = v27;
          *(&v107 + 1) = v28;
          *&v108 = v29 & 1 | 0x8000000000000000;
          *(&v108 + 1) = v30;
        }

        else
        {
          v37 = sub_1AACBC764(v119);
          v38 = *(v37 + 16);
          v39 = *(v37 + 24);
          v40 = *(v37 + 40);
          v41 = *(v37 + 88);
          v42 = *(v37 + 96);
          v43 = *(v37 + 104);
          v44 = *(v37 + 112);
          v104[0] = *(v37 + 32);
          v45 = v104[0] & 1;
          sub_1AACD7304(v38, v39, v104[0]);

          sub_1AACD7304(v41, v42, v43);
          *&v105 = v38;
          *(&v105 + 1) = v39;
          *&v106 = v45;
          *(&v106 + 1) = v40;
          *&v107 = v41;
          *(&v107 + 1) = v42;
          *&v108 = v43 & 1 | 0x8000000000000000;
          *(&v108 + 1) = v44;
        }

        v4 = v96;
        v2 = v97;
      }

      else
      {
        if (v16)
        {
          v32 = sub_1AACBC764(v119);
          v33 = *(v32 + 16);
          v34 = *(v32 + 24);
          v36 = *(v32 + 40);
          v104[0] = *(v32 + 32);
          v35 = v104[0];
          v22 = v94 & 1;
          sub_1AACD7304(v33, v34, v104[0]);
          *&v105 = v33;
          *(&v105 + 1) = v34;
          LOBYTE(v106) = v35;
          BYTE7(v106) = 0;
          *(&v106 + 5) = 0;
          *(&v106 + 1) = 0;
          *(&v106 + 1) = v36;
          v94 &= 1u;
        }

        else
        {
          v17 = sub_1AACBC764(v119);
          v18 = *(v17 + 8);
          v19 = *(v17 + 16);
          v21 = *(v17 + 32);
          v104[0] = *(v17 + 24);
          v20 = v104[0];
          v22 = v95 & 1;
          sub_1AACD7304(v18, v19, v104[0]);
          *&v105 = v18;
          *(&v105 + 1) = v19;
          LOBYTE(v106) = v20;
          BYTE7(v106) = 0;
          *(&v106 + 5) = 0;
          *(&v106 + 1) = 0;
          *(&v106 + 1) = v21;
          v95 &= 1u;
        }

        *&v108 = v22;
      }

      v121 = v105;
      v122 = v106;
      v123 = v107;
      v124 = v108;
      v3 = v98;
      if (!v98[2])
      {
        break;
      }

      sub_1AAD81BF4(&v109, v104);
      v46 = sub_1AADB0C18(&v121);
      if ((v47 & 1) == 0)
      {
        goto LABEL_29;
      }

      v48 = *(v98[7] + 8 * v46);
      sub_1AAD81BF4(&v109, v104);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = sub_1AADB81E4(v2);
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      if (v48 >= v2[2])
      {
        goto LABEL_48;
      }

      v49 = &v2[9 * v48];
      v52 = v49[12];
      v50 = (v49 + 12);
      v51 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1AAD6931C(0, *(v51 + 2) + 1, 1, v51);
        *v50 = v51;
      }

      v55 = *(v51 + 2);
      v54 = *(v51 + 3);
      if (v55 >= v54 >> 1)
      {
        *v50 = sub_1AAD6931C((v54 > 1), v55 + 1, 1, v51);
      }

      sub_1AAD81C50(&v109);
      v56 = *v50;
      *(v56 + 2) = v55 + 1;
      v57 = &v56[152 * v55];
      v58 = v115;
      v59 = v116;
      v60 = v117;
      *(v57 + 22) = v118;
      *(v57 + 9) = v59;
      *(v57 + 10) = v60;
      *(v57 + 8) = v58;
      v61 = v111;
      v62 = v112;
      v63 = v114;
      *(v57 + 6) = v113;
      *(v57 + 7) = v63;
      *(v57 + 4) = v61;
      *(v57 + 5) = v62;
      v64 = v110;
      *(v57 + 2) = v109;
      *(v57 + 3) = v64;
      sub_1AAD81A30(&v105);
      ++v5;
      v7 = (v7 + 152);
      if (v99 == v4)
      {
        goto LABEL_44;
      }
    }

    sub_1AAD81BF4(&v109, v104);
LABEL_29:
    v65 = v2[2];
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_1AADB0C18(&v121);
    v69 = v98[2];
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_49;
    }

    v73 = v68;
    if (v98[3] < v72)
    {
      sub_1AAD8DBA8(v72, v66);
      v67 = sub_1AADB0C18(&v121);
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_51;
      }

LABEL_34:
      if (v73)
      {
        goto LABEL_35;
      }

LABEL_37:
      v98[(v67 >> 6) + 8] |= 1 << v67;
      v76 = (v98[6] + (v67 << 6));
      v77 = v122;
      *v76 = v121;
      v76[1] = v77;
      v78 = v124;
      v76[2] = v123;
      v76[3] = v78;
      *(v98[7] + 8 * v67) = v65;
      v79 = v98[2];
      v71 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (!v71)
      {
        v98[2] = v80;
        sub_1AAD819D4(&v105, v104);
        goto LABEL_39;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v66)
    {
      goto LABEL_34;
    }

    v75 = v67;
    sub_1AAD97B18();
    v67 = v75;
    if ((v73 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    *(v98[7] + 8 * v67) = v65;
LABEL_39:
    sub_1AAF7C3A0(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    v82 = v115;
    v83 = v117;
    *(v81 + 144) = v116;
    *(v81 + 160) = v83;
    v84 = v111;
    v85 = v113;
    v86 = v114;
    *(v81 + 80) = v112;
    *(v81 + 96) = v85;
    *(v81 + 112) = v86;
    *(v81 + 128) = v82;
    v87 = v109;
    v88 = v110;
    *(v81 + 16) = xmmword_1AAF92AB0;
    *(v81 + 32) = v87;
    *(v81 + 176) = v118;
    *(v81 + 48) = v88;
    *(v81 + 64) = v84;
    v100 = v121;
    v101 = v122;
    v102 = v123;
    v103 = v124;
    sub_1AAD81BF4(&v109, v104);
    sub_1AAD819D4(&v105, v104);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AAD69F50(0, v2[2] + 1, 1, v2);
    }

    v90 = v2[2];
    v89 = v2[3];
    if (v90 >= v89 >> 1)
    {
      v2 = sub_1AAD69F50((v89 > 1), v90 + 1, 1, v2);
    }

    sub_1AAD81C50(&v109);
    v2[2] = v90 + 1;
    v91 = &v2[9 * v90];
    *(v91 + 4) = v102;
    *(v91 + 5) = v103;
    *(v91 + 2) = v100;
    *(v91 + 3) = v101;
    v91[12] = v81;
    sub_1AAD81A30(&v105);
    ++v5;
    v6 = v93;
  }

  while (v99 != v4);
LABEL_44:

  return v2;
}

void *sub_1AAF7AA6C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF9084(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_35:

    return v2;
  }

  v5 = (a1 + 32);
  while (1)
  {
    v77 = v2;
    v9 = v5[9];
    v91 = v5[8];
    v92 = v9;
    v93 = v5[10];
    v94 = *(v5 + 176);
    v10 = v5[5];
    v87 = v5[4];
    v88 = v10;
    v11 = v5[7];
    v89 = v5[6];
    v90 = v11;
    v12 = v5[1];
    v83 = *v5;
    v84 = v12;
    v13 = v5[3];
    v85 = v5[2];
    v86 = v13;
    v14 = v89;
    v15 = BYTE8(v89);
    v16 = v90;
    if ((*(&v92 + 1) & 0x8000000000000000) != 0)
    {
      v19 = *(&v90 + 1);
      v20 = (*(&v89 + 9) << 8) | ((*(&v89 + 13) | (HIBYTE(v89) << 16)) << 40) | BYTE8(v89);
      sub_1AACD7304(v89, v20, v90 & 1);
      v17 = v14;
      v14 = v20;
      v15 = v16;
      v18 = v19;
    }

    else
    {
      v17 = *(&v88 + 1);
      v18 = (*(&v90 + 1) << 8) | ((*(&v90 + 5) | (BYTE7(v90) << 16)) << 40) | v90;
      sub_1AACD7304(*(&v88 + 1), v89, BYTE8(v89) & 1);
    }

    v79 = v15;
    v80 = v18;

    v21 = v93;
    v22 = v94;
    v81 = v17;
    *&v95 = v17;
    *(&v95 + 1) = v14;
    v96[0] = v15 & 1;
    *&v96[8] = v18;
    *&v96[16] = v93;
    v96[24] = v94;
    v76 = v4;
    if (!v3[2])
    {
      break;
    }

    sub_1AAEDC834(&v83, v82);

    v23 = sub_1AADB0DBC(&v95);
    v2 = v77;
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = *(v3[7] + 8 * v23);
    sub_1AAEDC834(&v83, v82);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v2 = sub_1AADB8220(v77);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    if (v25 >= v2[2])
    {
      goto LABEL_39;
    }

    v26 = &v2[7 * v25];
    v29 = v26[10];
    v27 = (v26 + 10);
    v28 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v29;
    v78 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1AAD6A38C(0, *(v28 + 2) + 1, 1, v28);
      *v27 = v28;
    }

    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    if (v32 >= v31 >> 1)
    {
      *v27 = sub_1AAD6A38C((v31 > 1), v32 + 1, 1, v28);
    }

    sub_1AAEDCEC4(&v83);
    v33 = *v27;
    *(v33 + 2) = v32 + 1;
    v34 = &v33[184 * v32];
    v35 = v91;
    v36 = v92;
    v37 = v93;
    v34[208] = v94;
    *(v34 + 11) = v36;
    *(v34 + 12) = v37;
    *(v34 + 10) = v35;
    v38 = v87;
    v39 = v88;
    v40 = v90;
    *(v34 + 8) = v89;
    *(v34 + 9) = v40;
    *(v34 + 6) = v38;
    *(v34 + 7) = v39;
    v41 = v83;
    v42 = v84;
    v43 = v86;
    *(v34 + 4) = v85;
    *(v34 + 5) = v43;
    *(v34 + 2) = v41;
    *(v34 + 3) = v42;
    v2 = v78;
    v8 = v79;
    v7 = v17;
LABEL_4:
    sub_1AAD04750(v7, v14, v8 & 1);

    v5 = (v5 + 184);
    v4 = v76 - 1;
    if (v76 == 1)
    {
      goto LABEL_35;
    }
  }

  sub_1AAEDC834(&v83, v82);

  v2 = v77;
LABEL_19:
  v75 = v22;
  v44 = v2[2];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v3;
  v46 = sub_1AADB0DBC(&v95);
  v48 = v3[2];
  v49 = (v47 & 1) == 0;
  v50 = __OFADD__(v48, v49);
  v51 = v48 + v49;
  if (!v50)
  {
    v52 = v47;
    if (v3[3] >= v51)
    {
      if ((v45 & 1) == 0)
      {
        v56 = v2;
        v57 = v46;
        sub_1AAD9806C();
        v46 = v57;
        v2 = v56;
        v54 = v17;
        v3 = v82[0];
        if (v52)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1AAD8E73C(v51, v45);
      v46 = sub_1AADB0DBC(&v95);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_40;
      }
    }

    v54 = v17;
    v3 = v82[0];
    if (v52)
    {
LABEL_25:
      *(v3[7] + 8 * v46) = v44;
      v55 = v79;
LABEL_29:
      sub_1AAF7C3A0(0, &qword_1ED9B0C18, &type metadata for AccessibilityChartDataPoint, MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      v63 = v91;
      v64 = v93;
      *(v62 + 176) = v92;
      *(v62 + 192) = v64;
      v65 = v87;
      v66 = v89;
      v67 = v90;
      *(v62 + 112) = v88;
      *(v62 + 128) = v66;
      *(v62 + 144) = v67;
      *(v62 + 160) = v63;
      v68 = v83;
      v69 = v84;
      *(v62 + 16) = xmmword_1AAF92AB0;
      *(v62 + 32) = v68;
      v70 = v85;
      v71 = v86;
      *(v62 + 48) = v69;
      *(v62 + 64) = v70;
      *(v62 + 208) = v94;
      *(v62 + 80) = v71;
      *(v62 + 96) = v65;
      sub_1AAEDC834(&v83, v82);

      sub_1AACD7304(v54, v14, v55 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AAD6A604(0, v2[2] + 1, 1, v2);
      }

      v73 = v2[2];
      v72 = v2[3];
      if (v73 >= v72 >> 1)
      {
        v2 = sub_1AAD6A604((v72 > 1), v73 + 1, 1, v2);
      }

      sub_1AAEDCEC4(&v83);
      v2[2] = v73 + 1;
      v6 = &v2[7 * v73];
      v7 = v81;
      v6[4] = v81;
      v6[5] = v14;
      v8 = v79;
      *(v6 + 48) = v79 & 1;
      v6[7] = v80;
      v6[8] = v21;
      *(v6 + 72) = v75;
      v6[10] = v62;
      goto LABEL_4;
    }

LABEL_27:
    v3[(v46 >> 6) + 8] |= 1 << v46;
    v58 = (v3[6] + 48 * v46);
    v59 = *v96;
    *v58 = v95;
    v58[1] = v59;
    *(v58 + 25) = *&v96[9];
    *(v3[7] + 8 * v46) = v44;
    v60 = v3[2];
    v50 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v50)
    {
      goto LABEL_37;
    }

    v3[2] = v61;

    v55 = v79;
    sub_1AACD7304(v54, v14, v79 & 1);

    goto LABEL_29;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAF7AFE4(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __Sum[1] = *MEMORY[0x1E69E9840];
  v58 = *(a3 + 16);
  v7 = *(*(v58 + 16) + 8);
  v56 = a3;
  v57 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v31 = *(*&a1 + 16);
    v32 = 0.0;
    if (v31 >= 2)
    {
      __Sum[0] = NAN;
      __SumOfSquares[0] = NAN;
      vDSP_sve_svesqD((*&a1 + 32), 1, __Sum, __SumOfSquares, v31);
      v32 = (__SumOfSquares[0] - __Sum[0] * (__Sum[0] / v31)) / (v31 - 1);
    }

    *a4 = v32;
    *(a4 + 8) = v31 < 2;
  }

  else if (a2 == MEMORY[0x1E69E6448])
  {
    v33 = *(*&a1 + 16);
    v34 = 0.0;
    if (v33 >= 2)
    {
      LODWORD(__Sum[0]) = 2143289344;
      LODWORD(__SumOfSquares[0]) = 2143289344;
      vDSP_sve_svesq((*&a1 + 32), 1, __Sum, __SumOfSquares, v33);
      v34 = (*__SumOfSquares - (*__Sum * (*__Sum / v33))) / (v33 - 1);
    }

    *a4 = v34;
    *(a4 + 4) = v33 < 2;
  }

  else
  {
    v50 = v23;
    v51 = &v47 - v25;
    v52 = v28;
    v53 = v26;
    v54 = v27;
    v55 = v24;
    v29 = sub_1AAF8F8D4();
    if (v29 >= 2)
    {
      __Sum[0] = a1;
      v49 = v29;
      swift_getAssociatedConformanceWitness();
      v48 = a4;
      sub_1AAF90554();
      sub_1AAF904C4();
      sub_1AAF90554();
      sub_1AAF904C4();
      v35 = v50;
      v36 = *(v50 + 48);
      v37 = *(v55 + 32);
      v37(v12, v54, a2);
      v38 = (v37)(&v12[v36], v19, a2);
      v47 = &v47;
      MEMORY[0x1EEE9AC00](v38);
      v39 = v56;
      *(&v47 - 2) = a2;
      *(&v47 - 1) = v39;
      sub_1AAF8F914();
      swift_getWitnessTable();
      sub_1AAF8F7B4();
      v40 = *(v35 + 48);
      v41 = v51;
      v37(v51, v15, a2);
      v42 = v52;
      v37(v52, &v15[v40], a2);
      sub_1AAF8F464();
      v43 = v41;
      sub_1AAF8F434();
      v44 = *(v55 + 8);
      v44(v19, a2);
      v45 = v53;
      sub_1AAF8FAD4();
      sub_1AAF902F4();
      v44(v45, a2);
      sub_1AAF8F464();
      v46 = v48;
      sub_1AAF8F434();
      v44(v45, a2);
      v44(v19, a2);
      v44(v54, a2);
      v44(v42, a2);
      v44(v43, a2);
      (*(v55 + 56))(v46, 0, 1, a2);
    }

    else
    {
      v30 = *(v55 + 56);

      v30(a4, 1, 1, a2);
    }
  }
}

uint64_t sub_1AAF7B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF90304();
  sub_1AAF8FAD4();
  swift_getTupleTypeMetadata2();
  sub_1AAF90304();
  return (*(v4 + 8))(v6, a3);
}

void sub_1AAF7B82C(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __Sum[2] = *MEMORY[0x1E69E9840];
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &__Sum[-1] - v10;
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v17 = *(*&a1 + 16);
    v18 = 0.0;
    if (v17 >= 2)
    {
      __SumOfSquares = NAN;
      __Sum[0] = NAN;
      vDSP_sve_svesqD((*&a1 + 32), 1, __Sum, &__SumOfSquares, v17);
      v18 = sqrt((__SumOfSquares - __Sum[0] * (__Sum[0] / v17)) / (v17 - 1));
    }

    *a4 = v18;
    *(a4 + 8) = v17 < 2;
  }

  else if (a2 == MEMORY[0x1E69E6448])
  {
    v19 = *(*&a1 + 16);
    v20 = 0.0;
    if (v19 >= 2)
    {
      LODWORD(__Sum[0]) = 2143289344;
      LODWORD(__SumOfSquares) = 2143289344;
      vDSP_sve_svesq((*&a1 + 32), 1, __Sum, &__SumOfSquares, v19);
      v20 = sqrtf((*&__SumOfSquares - (*__Sum * (*__Sum / v19))) / (v19 - 1));
    }

    *a4 = v20;
    *(a4 + 4) = v19 < 2;
  }

  else
  {
    sub_1AAF7AFE4(a1, a2, a3, v11);
    MEMORY[0x1EEE9AC00](v12);
    v13 = *(a3 + 16);
    *(&__SumOfSquares - 2) = a2;
    *(&__SumOfSquares - 1) = v13;
    MEMORY[0x1EEE9AC00](v14);
    *(&__SumOfSquares - 4) = a2;
    *(&__SumOfSquares - 3) = a3;
    *(&__SumOfSquares - 2) = sub_1AAF7BF00;
    *(&__SumOfSquares - 1) = v15;
    sub_1AACD90D0(sub_1AAF7BF08, (&__SumOfSquares - 6), MEMORY[0x1E69E73E0], a2, v16, a4);
    (*(v9 + 8))(v11, v8);
  }
}

void *sub_1AAF7BAE0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1AADF8DC0(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = 0;
  v8 = a1 + 32;
  v41 = a1 + 32;
  v42 = *(a1 + 16);
  do
  {
    v9 = (v8 + 608 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v6)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      memcpy(__dst, v9, 0x260uLL);
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      memcpy(v44, v9, sizeof(v44));
      sub_1AAF14AE0(__dst, v43);
      swift_getAtKeyPath();
      v11 = v43[0];
      if (!v5[2])
      {
        break;
      }

      sub_1AADB0C78(v43[0]);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = *(v5[7] + 8 * v12);
      sub_1AAF14AE0(__dst, v44);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = sub_1AADB81F8(v3);
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      if (v14 >= v3[2])
      {
        goto LABEL_38;
      }

      v15 = &v3[2 * v14];
      v18 = v15[5];
      v16 = (v15 + 5);
      v17 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1AAD6A24C(0, *(v17 + 2) + 1, 1, v17);
        *v16 = v17;
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        *v16 = sub_1AAD6A24C((v20 > 1), v21 + 1, 1, v17);
      }

      sub_1AAF14B3C(__dst);
      v22 = *v16;
      *(v22 + 2) = v21 + 1;
      memcpy(&v22[608 * v21 + 32], __dst, 0x260uLL);

      ++v10;
      v9 += 608;
      v6 = v42;
      if (v7 == v42)
      {
        goto LABEL_34;
      }
    }

    v23 = v3[2];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v5;
    sub_1AADB0C78(v11);
    v27 = v5[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_39;
    }

    v31 = v26;
    if (v5[3] < v30)
    {
      sub_1AAD8DEBC(v30, v24);
      sub_1AADB0C78(v11);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_41;
      }

LABEL_24:
      v5 = v44[0];
      if (v31)
      {
        goto LABEL_25;
      }

LABEL_27:
      v5[(v25 >> 6) + 8] |= 1 << v25;
      *(v5[6] + 8 * v25) = v11;
      *(v5[7] + 8 * v25) = v23;
      v34 = v5[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v29)
      {
        v5[2] = v35;

        goto LABEL_29;
      }

LABEL_40:
      __break(1u);
LABEL_41:

      sub_1AAF7C3A0(0, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v24)
    {
      goto LABEL_24;
    }

    v33 = v25;
    sub_1AAD97CCC();
    v25 = v33;
    v5 = v44[0];
    if ((v31 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(v5[7] + 8 * v25) = v23;
LABEL_29:
    sub_1AAF7C3A0(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AAF92AB0;
    memcpy((v36 + 32), __dst, 0x260uLL);
    sub_1AAF14AE0(__dst, v44);

    v8 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AAD6A228(0, v3[2] + 1, 1, v3);
    }

    v38 = v3[2];
    v37 = v3[3];
    if (v38 >= v37 >> 1)
    {
      v3 = sub_1AAD6A228((v37 > 1), v38 + 1, 1, v3);
    }

    sub_1AAF14B3C(__dst);
    v3[2] = v38 + 1;
    v39 = &v3[2 * v38];
    v39[4] = v11;
    v39[5] = v36;
  }

  while (v7 != v6);
LABEL_34:

  return v3;
}

void *sub_1AAF7BF80(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1AADF8DC0(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = 0;
  v8 = a1 + 32;
  v41 = a1 + 32;
  v42 = *(a1 + 16);
  do
  {
    v9 = (v8 + 600 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v6)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      memcpy(__dst, v9, 0x251uLL);
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      memcpy(v44, v9, 0x251uLL);
      sub_1AAECFFF8(__dst, v43);
      swift_getAtKeyPath();
      v11 = v43[0];
      if (!v5[2])
      {
        break;
      }

      sub_1AADB0C78(v43[0]);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = *(v5[7] + 8 * v12);
      sub_1AAECFFF8(__dst, v44);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = sub_1AADB8270(v3);
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      if (v14 >= v3[2])
      {
        goto LABEL_38;
      }

      v15 = &v3[2 * v14];
      v18 = v15[5];
      v16 = (v15 + 5);
      v17 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1AAD6AD20(0, *(v17 + 2) + 1, 1, v17);
        *v16 = v17;
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        *v16 = sub_1AAD6AD20((v20 > 1), v21 + 1, 1, v17);
      }

      sub_1AAF209D4(__dst);
      v22 = *v16;
      *(v22 + 2) = v21 + 1;
      memcpy(&v22[600 * v21 + 32], __dst, 0x251uLL);

      ++v10;
      v9 += 600;
      v6 = v42;
      if (v7 == v42)
      {
        goto LABEL_34;
      }
    }

    v23 = v3[2];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v5;
    sub_1AADB0C78(v11);
    v27 = v5[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_39;
    }

    v31 = v26;
    if (v5[3] < v30)
    {
      sub_1AAD8DEBC(v30, v24);
      sub_1AADB0C78(v11);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_41;
      }

LABEL_24:
      v5 = v44[0];
      if (v31)
      {
        goto LABEL_25;
      }

LABEL_27:
      v5[(v25 >> 6) + 8] |= 1 << v25;
      *(v5[6] + 8 * v25) = v11;
      *(v5[7] + 8 * v25) = v23;
      v34 = v5[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v29)
      {
        v5[2] = v35;

        goto LABEL_29;
      }

LABEL_40:
      __break(1u);
LABEL_41:

      sub_1AAF7C3A0(0, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v24)
    {
      goto LABEL_24;
    }

    v33 = v25;
    sub_1AAD97CCC();
    v25 = v33;
    v5 = v44[0];
    if ((v31 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(v5[7] + 8 * v25) = v23;
LABEL_29:
    sub_1AAF7C3A0(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AAF92AB0;
    memcpy((v36 + 32), __dst, 0x251uLL);
    sub_1AAECFFF8(__dst, v44);

    v8 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AAD6ABA8(0, v3[2] + 1, 1, v3);
    }

    v38 = v3[2];
    v37 = v3[3];
    if (v38 >= v37 >> 1)
    {
      v3 = sub_1AAD6ABA8((v37 > 1), v38 + 1, 1, v3);
    }

    sub_1AAF209D4(__dst);
    v3[2] = v38 + 1;
    v39 = &v3[2 * v38];
    v39[4] = v11;
    v39[5] = v36;
  }

  while (v7 != v6);
LABEL_34:

  return v3;
}

void sub_1AAF7C3A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF7C458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v26 = a1[3];
  v2 = sub_1AAF8FE74();
  v3 = sub_1AAF8FE74();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = AssociatedTypeWitness;
  sub_1AAF8FE94();
  v23 = *(v6 + 48);
  if (v23(v5, 1, v2) == 1)
  {
LABEL_5:
    (*(v19 + 8))(v5, v20);
    return (*(*(v26 - 8) + 56))(v21, 1, 1);
  }

  else
  {
    v14 = *(v6 + 32);
    v22 = v26 - 8;
    while (1)
    {
      v14(v12, v5, v2);
      v14(v9, v12, v2);
      v15 = *(v26 - 8);
      if ((*(v15 + 48))(v9, 1) != 1)
      {
        break;
      }

      (*(v6 + 8))(v9, v2);
      sub_1AAF8FE94();
      if (v23(v5, 1, v2) == 1)
      {
        goto LABEL_5;
      }
    }

    v17 = v21;
    v18 = v26;
    (*(v15 + 32))(v21, v9, v26);
    return (*(v15 + 56))(v17, 0, 1, v18);
  }
}

uint64_t sub_1AAF7C7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v2, v4, v10);
  sub_1AAF8F744();
  return (*(v9 + 32))(a2, v12, AssociatedTypeWitness);
}

uint64_t sub_1AAF7C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF7C7C0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AAF7C9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF7E48C(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_1AAF7CA20@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  sub_1AAF8FBA4();
  return (*(v4 + 32))(a2, v6, AssociatedTypeWitness);
}

uint64_t sub_1AAF7CB1C@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[3];
  v5 = sub_1AAF8FE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = sub_1AAF8FC84();
  (*(v6 + 16))(v8);
  v9(v12, 0);
  v10 = *(v4 - 8);
  result = (*(v10 + 48))(v8, 1, v4);
  if (result != 1)
  {
    return (*(v10 + 32))(a3, v8, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF7CC98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v57 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v43 - v8;
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1AAF902A4();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - v11;
  v12 = sub_1AAF8FE74();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v43 - v13;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v43 - v20;
  v21 = a2[3];
  v22 = type metadata accessor for CompactedCollection.Index(0, v6, v21, v5);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v48 = a2;
  v26 = v5;
  v27 = v59;
  v61 = v3;
  sub_1AAF7CA20(&v43 - v24);
  v60 = v6;
  v29 = sub_1AAF7E1B8(v27, v25, v6, v28, v26);
  result = (*(v23 + 8))(v25, v22);
  if (v29)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AAF8FB44();
  result = sub_1AAF8F5F4();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v49 = v14;
  v31 = v50;
  (*(v14 + 16))(v50, v62, v9);
  v32 = v53;
  swift_getWitnessTable();
  v33 = v54;
  v34 = v60;
  v35 = sub_1AAF8FC44();
  MEMORY[0x1EEE9AC00](v35);
  *(&v43 - 4) = v34;
  *(&v43 - 3) = v21;
  *(&v43 - 2) = v26;
  v59 = v26;
  v36 = v56;
  swift_getAssociatedConformanceWitness();
  v37 = v51;
  sub_1AAF8FBC4();
  v38 = v49;
  (*(v55 + 8))(v33, v36);
  (*(v52 + 8))(v31, v32);
  if ((*(v38 + 48))(v37, 1, v9) == 1)
  {
    (*(v45 + 8))(v37, v46);
    sub_1AAF7CA20(v57);
    return (*(v38 + 8))(v62, v9);
  }

  else
  {
    (*(v38 + 8))(v62, v9);
    v39 = *(v38 + 32);
    v40 = v44;
    v39(v44, v37, v9);
    v41 = v47;
    v39(v47, v40, v9);
    v42 = swift_getAssociatedTypeWitness();
    return (*(*(v42 - 8) + 32))(v57, v41, v42);
  }
}

uint64_t sub_1AAF7D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 44);
  v6 = type metadata accessor for CompactedCollection.Index(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

void (*sub_1AAF7D34C(void *a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AAF7D3D4(v6, a2, a3);
  return sub_1AAD9E48C;
}

void (*sub_1AAF7D3D4(void *a1, uint64_t a2, void *a3))(void *a1)
{
  v5 = a3[3];
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_1AAF7CB1C(a3, v8);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF7D4A8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CompactedCollection.Index(255, a1[2], a1[3], a1[4]);
  v4 = sub_1AAF8FE74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t sub_1AAF7D53C(uint64_t a1, void *a2, double a3)
{
  v5 = type metadata accessor for CompactedCollection.Index(0, a2[2], a2[3], a2[4]);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  (*(v6 + 32))(&v11 - v8, a1, v5, v7);
  sub_1AAF7CC98(v9, a2, a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AAF7D638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 - 8);
  (*(v10 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = *(sub_1AAF90294() + 36);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for CompactedCollection.Index(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  (*(*(v7 - 8) + 16))(a2 + v5, v2 + v6, v7);
  v8 = *(v10 + 8);

  return v8(v2, a1);
}

uint64_t sub_1AAF7D774(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF7D7C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1AAD9EC60(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1AAF7D854@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a2;
  v75 = a1;
  v73 = a4;
  v68 = a3;
  v7 = *(a3 + 8);
  v8 = *(a2 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v70 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v55 - v10;
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v55 - v14;
  v66 = *(v6 + 3);
  v74 = type metadata accessor for CompactedCollection.Index(0, v8, v66, v7);
  v15 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v55 - v16;
  swift_getAssociatedConformanceWitness();
  v77 = sub_1AAF8FCA4();
  v65 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v55 - v18;
  v56 = sub_1AAF8FE74();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v62 = &v55 - v19;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v55 - v24;
  v25 = *(v6 + 11);
  v78 = v5;
  v26 = &v5[v25];
  v27 = v75;
  v71 = v8;
  v72 = v7;
  if (sub_1AAF7E1B8(v75, v26, v8, v28, v7))
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v15 + 16))(v17, &v78[v25], v74);
  if ((sub_1AAF8F584() & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29 = v20;
  v30 = *(v20 + 32);
  v31 = v58;
  v30(v58, v17, v11);
  v32 = TupleTypeMetadata2;
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v29;
  v57 = v29;
  (*(v29 + 16))(&v31[v33], v27, v11);
  v35 = v63;
  v36 = v61;
  (*(v63 + 16))(v61, v31, v32);
  v37 = *(v32 + 48);
  v30(v76, v36, v11);
  v38 = *(v34 + 8);
  v38(&v36[v37], v11);
  (*(v35 + 32))(v36, v31, v32);
  v39 = *(v32 + 48);
  v40 = v76;
  v41 = &v76[*(v77 + 36)];
  v75 = v30;
  v30(v41, &v36[v39], v11);
  v38(v36, v11);
  v42 = v67;
  v43 = v40;
  v44 = v71;
  v45 = sub_1AAF8FC74();
  v78 = &v55;
  MEMORY[0x1EEE9AC00](v45);
  v46 = v66;
  *(&v55 - 4) = v44;
  *(&v55 - 3) = v46;
  v53 = v68;
  v47 = v70;
  swift_getAssociatedConformanceWitness();
  v6 = v62;
  sub_1AAF8F534();
  (*(v69 + 8))(v42, v47);
  (*(v65 + 8))(v43, v77);
  if ((*(v57 + 48))(v6, 1, v11) != 1)
  {
    v48 = v60;
    v49 = v75;
    v75(v60, v6, v11);
    v50 = v64;
    v49(v64, v48, v11);
    v51 = swift_getAssociatedTypeWitness();
    return (*(*(v51 - 8) + 32))(v73, v50, v51);
  }

LABEL_7:
  (*(v55 + 8))(v6, v56);
  v54 = 0;
  v53 = 125;
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF7E004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for CompactedCollection.Index(0, *(a2 + 16), *(a2 + 24), *(v6 + 8));
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v13 - v10);
  (*(v8 + 32))(&v13 - v10, a1, v7, v9);
  sub_1AAF7D854(v11, a2, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AAF7E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AAF8F564() & 1;
}

uint64_t sub_1AAF7E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AAF8F5F4() & 1;
}

uint64_t sub_1AAF7E250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_1AAF8F484();
}

uint64_t sub_1AAF7E2BC(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  swift_getAssociatedTypeWitness();
  sub_1AAF8F484();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AAF90694();
  sub_1AAF7E250(v6, a2, v4);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_getAssociatedTypeWitness();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF7E610(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
LABEL_23:
    v14 = *(v7 + 48);

    return v14(a1);
  }

  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v8 + (v9 | v13) + 1;
}

void sub_1AAF7E7AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
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

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_1AAF7E9D4(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for CompactedCollection.Index(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAF7EA64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1AAF7ECE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = (v14 & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v14] & ~v13);
    if (v11 >= a2)
    {
      v28 = *(v10 + 56);

      v28(v23, a2);
    }

    else
    {
      if (v15 <= 3)
      {
        v24 = ~(-1 << (8 * v15));
      }

      else
      {
        v24 = -1;
      }

      if (v15)
      {
        v25 = v24 & (~v11 + a2);
        if (v15 <= 3)
        {
          v26 = v15;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v15);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

void sub_1AAF7F0D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADB816C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAF7FD68();
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1AAF7F220(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1AAF7F220(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1AADAA0A4(v8);
    }

    v79 = v8 + 16;
    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1AAF300D8((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v33 = *(v8 + 3);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      v8 = sub_1AAD68568((v33 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = v8 + 32;
    v36 = &v8[16 * v5 + 32];
    *v36 = v9;
    *(v36 + 1) = v7;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[16 * v34];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[16 * v34];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v5 - 16];
        v75 = *v74;
        v76 = &v35[16 * v5];
        v77 = *(v76 + 1);
        sub_1AAF300D8((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *(v8 + 2);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v5], v76 + 16, 16 * (v78 - 1 - v5));
        *(v8 + 2) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

unint64_t sub_1AAF7F798(unint64_t result)
{
  if (result)
  {
    v2 = *v1;
    v3 = *v1 - 0x61C8864680B583EBLL;
    *v1 = v3;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v5 = v4 ^ (v4 >> 31);
    v6 = v5 * result;
    v7 = (v5 * result) >> 64;
    if (v6 < result)
    {
      v8 = -result % result;
      if (v8 > v6)
      {
        v9 = v2 + 0x3C6EF372FE94F82ALL;
        do
        {
          v3 -= 0x61C8864680B583EBLL;
          v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
          v11 = v10 ^ (v10 >> 31);
          v9 -= 0x61C8864680B583EBLL;
        }

        while (v8 > v11 * result);
        v7 = (v11 * result) >> 64;
        *v1 = v3;
      }
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AAF7F860(char a1, char a2, uint64_t a3, char a4, double (*a5)(double), double a6, double a7)
{
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v56 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = a5(v23);
    v25 = a5(v12 + v23);
    v26 = (v25 - a5(v23 - v12)) / (v12 + v12);
    v27 = COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v27)
    {
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AAD690CC(0, *(v56 + 2) + 1, 1, v56);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v56 = v28;
      if (v30 >= v29 >> 1)
      {
        v56 = sub_1AAD690CC((v29 > 1), v30 + 1, 1, v28);
      }

      *(v56 + 2) = v30 + 1;
      v14 = &v56[16 * v30];
      *(v14 + 4) = v24;
      *(v14 + 5) = v26;
    }

    ++v11;
  }

  while (v11 != 200);
  v57 = v56;
  if (*(v56 + 2) <= 1uLL)
  {

    return;
  }

  sub_1AAF7F0D4(&v57);
  v31 = *(v57 + 2);
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = a7;
  v33 = a6;
  v34 = v31 - 1;
  if (v31 == 1)
  {
LABEL_36:

    if (a1)
    {
      if (v32 <= 0.0 || v33 >= 0.0)
      {
        v40 = a2;
        if (v32 <= 0.0 || v33 < 0.0 || v33 >= v32 * 0.5)
        {
          if (v32 <= 0.0 && v33 < 0.0 && v33 * 0.5 < v32)
          {
            v32 = -v33;
          }
        }

        else
        {
          v33 = -v32;
        }

LABEL_44:
        if ((v40 & 1) == 0)
        {
LABEL_60:
          v46 = v33 > v32;
          if (v33 >= v32)
          {
            return;
          }

          goto LABEL_61;
        }

        v41 = (v32 - v33) / v7;
        if (v41 > 0.1 && v41 < 1.2)
        {
          if (a4)
          {
            if (v33 == 0.0)
            {
              goto LABEL_64;
            }

LABEL_58:
            if (v32 != 0.0)
            {
              v49 = (v32 + v33) * 0.5;
              v50 = v49 - v7 * 0.5;
              v51 = v49 + v7 * 0.5;
              v46 = v50 > v51;
              if (v50 >= v51)
              {
                return;
              }

              goto LABEL_61;
            }

            v33 = -v7;
            goto LABEL_60;
          }
        }

        else if (a4)
        {
          v43 = (v32 - v33) * 0.05;
          v44 = v33 - v43;
          v45 = v32 + v43;
          v46 = v44 > v45;
          if (v44 >= v45)
          {
            return;
          }

LABEL_61:
          if (v46)
          {
            goto LABEL_82;
          }

          return;
        }

        v7 = v7 / *&a3;
        if (v33 == 0.0)
        {
LABEL_64:
          v46 = v33 > v7;
          if (v33 >= v7)
          {
            return;
          }

          goto LABEL_61;
        }

        goto LABEL_58;
      }

      if (fabs(v32 / (v32 - v33) + -0.5) < 0.15)
      {
        if (v32 < -v33)
        {
          v32 = -v33;
        }

        v33 = -v32;
      }
    }

    v40 = a2;
    goto LABEL_44;
  }

  v35 = 0;
  v36 = v57 + 32;
  v37 = (v57 + 32);
  while (1)
  {
    v33 = *v37;
    v32 = *&v36[16 * v34];
    v38 = (v32 - *v37) / v7;
    if (v38 > 100000000.0)
    {
      ++v35;
LABEL_31:
      --v34;
      goto LABEL_32;
    }

    if (v35 >= v31)
    {
      goto LABEL_79;
    }

    v39 = &v36[16 * v34];
    if (fabs(*&v36[16 * v35 + 8]) / v38 <= 10.0)
    {
      if (fabs(*(v39 + 1)) / v38 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v35;
    if (fabs(*(v39 + 1)) / v38 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v35 >= v31)
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_78;
    }

    v37 = &v36[16 * v35];
    if (v35 >= v34)
    {
      v32 = a7;
      v33 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_1AAF7FD68()
{
  if (!qword_1EB423038)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423038);
    }
  }
}

double sub_1AAF7FDC8(int64x2_t a1, int64x2_t a2, int64x2_t a3)
{
  v3 = vsubq_f64(vzip1q_s64(a1, a3), vdupq_lane_s64(a2.i64[0], 0));
  v4 = vsubq_f64(vzip2q_s64(a1, a3), vdupq_laneq_s64(a2, 1));
  v5 = vmulq_laneq_f64(v4, v4, 1);
  v6 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vmulq_f64(v4, v4)));
  v7 = vmulq_f64(vzip1q_s64(v3, v6), vzip2q_s64(v3, v6));
  *&result = *&vdivq_f64(vaddq_f64(v7, v5), vdupq_laneq_s64(v7, 1));
  return result;
}

void sub_1AAF7FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double (*a8)(void), double a9, int8x16_t a10, double a11, int64x2_t a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18)
{
  swift_beginAccess();
  v28 = sub_1AAF7F798(0x20000000000001uLL);
  v29 = vcvtd_n_f64_u64(v28, 0x35uLL) * 0.06 + 0.22;
  if (v28 == 0x20000000000000)
  {
    v29 = 0.28;
  }

  v30 = a11 - a9;
  v198 = (a11 - a9) * v29 + a9;
  v31 = a8();
  v32.n128_f64[0] = v198;
  v181 = v31;
  v32.n128_f64[1] = v31;
  v196 = v32;
  swift_beginAccess();
  v33 = sub_1AAF7F798(0x20000000000001uLL);
  v34 = vcvtd_n_f64_u64(v33, 0x35uLL) * 0.06 + 0.47;
  if (v33 == 0x20000000000000)
  {
    v34 = 0.53;
  }

  v200 = v30 * v34 + a9;
  v35 = a8();
  v36.n128_f64[0] = v200;
  v182 = v35;
  v36.n128_f64[1] = v35;
  v205 = v36;
  swift_beginAccess();
  v37 = sub_1AAF7F798(0x20000000000001uLL);
  v38 = vcvtd_n_f64_u64(v37, 0x35uLL) * 0.06 + 0.72;
  if (v37 == 0x20000000000000)
  {
    v38 = 0.78;
  }

  v204 = v30 * v38 + a9;
  v39 = a8();
  v40 = a10;
  v41 = v39;
  *v42.i64 = v204;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v44 = vnegq_f64(v43);
  v45 = vdupq_n_s64(0x7FF0000000000000uLL);
  v46 = vcgtq_s64(v45, vandq_s8(a10, v44));
  v47 = vandq_s8(vdupq_laneq_s64(v46, 1), v46).u64[0];
  v176 = v41;
  if (v47 < 0)
  {
    v50 = v196;
    v51 = vcgtq_s64(v45, vandq_s8(v196, v44));
    if ((vandq_s8(vdupq_laneq_s64(v51, 1), v51).u64[0] & 0x8000000000000000) != 0 && (v52.f64[0] = NAN, v52.f64[1] = NAN, v53 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v205, vnegq_f64(v52))), (vandq_s8(vdupq_laneq_s64(v53, 1), v53).u64[0] & 0x8000000000000000) != 0) && ((v54 = sqrt((*&a10.i64[1] - v181) * (*&a10.i64[1] - v181) + (*a10.i64 - v198) * (*a10.i64 - v198)), v55 = sqrt((v182 - v181) * (v182 - v181) + (v200 - v198) * (v200 - v198)), fabs(((*&a10.i64[1] - v181) * (v182 - v181) + (*a10.i64 - v198) * (v200 - v198)) / (v54 * v55) + 1.0) < a13) ? (v56 = v54 < a14) : (v56 = 0), v56 ? (v57 = v55 < a14) : (v57 = 0), v57))
    {
      v178 = v45;
      v180 = v44;
      swift_beginAccess();
      v98 = sub_1AAF7F798(0x20000000000001uLL);
      v99 = vcvtd_n_f64_u64(v98, 0x35uLL) * 0.06 + 0.22;
      if (v98 == 0x20000000000000)
      {
        v99 = 0.28;
      }

      v186 = v30 * v99 + a9;
      v100 = a8();
      *v101.i64 = v186;
      *&v101.i64[1] = v100;
      v102.f64[0] = NAN;
      v102.f64[1] = NAN;
      v103 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v101, vnegq_f64(v102)));
      if ((vandq_s8(vdupq_laneq_s64(v103, 1), v103).u64[0] & 0x8000000000000000) != 0)
      {
        v161 = sub_1AAF7FDC8(a10, v101, v205);
        v40 = a10;
        v164 = v163 < a14;
        v49 = a13;
        if (fabs(v161 + 1.0) >= a13 || v162 >= a14)
        {
          v164 = 0;
        }

        v185 = v164;
        v48 = a16;
        v50 = v196;
        *v42.i64 = v204;
        v41 = v176;
      }

      else
      {
        v185 = 0;
        v48 = a16;
        v49 = a13;
        v50 = v196;
        *v42.i64 = v204;
        v41 = v176;
        v40 = a10;
      }

      v45 = v178;
      v44 = v180;
    }

    else
    {
      v185 = 0;
      v48 = a16;
      v49 = a13;
    }
  }

  else
  {
    v185 = 0;
    v48 = a16;
    v49 = a13;
    v50 = v196;
  }

  *&v42.i64[1] = v41;
  v58 = vcgtq_s64(v45, vandq_s8(v50, v44));
  v59 = vandq_s8(vdupq_laneq_s64(v58, 1), v58).u64[0];
  v60 = a12;
  v197 = v42;
  if (v59 < 0 && (v61.f64[0] = NAN, v61.f64[1] = NAN, v62 = vnegq_f64(v61), v63 = vdupq_n_s64(0x7FF0000000000000uLL), v64 = vcgtq_s64(v63, vandq_s8(v205, v62)), (vandq_s8(vdupq_laneq_s64(v64, 1), v64).u64[0] & 0x8000000000000000) != 0) && (v65 = vcgtq_s64(v63, vandq_s8(v42, v62)), (vandq_s8(vdupq_laneq_s64(v65, 1), v65).u64[0] & 0x8000000000000000) != 0) && ((v66 = sqrt((v181 - v182) * (v181 - v182) + (v198 - v200) * (v198 - v200)), v67 = sqrt((v41 - v182) * (v41 - v182) + (v204 - v200) * (v204 - v200)), fabs(((v181 - v182) * (v41 - v182) + (v198 - v200) * (v204 - v200)) / (v66 * v67) + 1.0) < v49) ? (v68 = v66 < a14) : (v68 = 0), v68 ? (v69 = v67 < a14) : (v69 = 0), v69))
  {
    swift_beginAccess();
    v104 = sub_1AAF7F798(0x20000000000001uLL);
    v105 = vcvtd_n_f64_u64(v104, 0x35uLL) * 0.06 + 0.47;
    if (v104 == 0x20000000000000)
    {
      v105 = 0.53;
    }

    v194 = v30 * v105 + a9;
    v106 = a8();
    *v107.i64 = v194;
    *&v107.i64[1] = v106;
    v108.f64[0] = NAN;
    v108.f64[1] = NAN;
    v109 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v107, vnegq_f64(v108)));
    if ((vandq_s8(vdupq_laneq_s64(v109, 1), v109).u64[0] & 0x8000000000000000) != 0)
    {
      v166 = sub_1AAF7FDC8(v196, v107, v197);
      v50 = v196;
      v42 = v197;
      v169 = v168 < a14;
      if (fabs(v166 + 1.0) >= v49 || v167 >= a14)
      {
        v169 = 0;
      }

      v187 = v169;
      v70 = a15;
      v60 = a12;
    }

    else
    {
      v187 = 0;
      v70 = a15;
      v60 = a12;
      v50 = v196;
      v42 = v197;
    }

    v41 = v176;
    v40 = a10;
  }

  else
  {
    v187 = 0;
    v70 = a15;
  }

  v71.f64[0] = NAN;
  v71.f64[1] = NAN;
  v72 = vnegq_f64(v71);
  v73 = vdupq_n_s64(0x7FF0000000000000uLL);
  v74 = vcgtq_s64(v73, vandq_s8(v205, v72));
  v75 = vandq_s8(vdupq_laneq_s64(v74, 1), v74).u64[0];
  v193 = v75;
  if ((v75 & 0x8000000000000000) != 0 && (v76 = vcgtq_s64(v73, vandq_s8(v42, v72)), (vandq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0] & 0x8000000000000000) != 0) && (v77.f64[0] = NAN, v77.f64[1] = NAN, v78 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v60, vnegq_f64(v77))), (vandq_s8(vdupq_laneq_s64(v78, 1), v78).u64[0] & 0x8000000000000000) != 0) && ((v79 = vdupq_lane_s64(v60.i64[0], 0), v79.f64[0] = v200, *&v80.f64[1] = v60.i64[1], v80.f64[0] = v182, v81 = vsubq_f64(v79, vdupq_lane_s64(*&v204, 0)), v82 = vsubq_f64(v80, vdupq_lane_s64(*&v41, 0)), v80.f64[0] = vaddq_f64(vmulq_laneq_f64(v82, v82, 1), vmulq_laneq_f64(v81, v81, 1)).f64[0], v83 = vsqrtq_f64(vaddq_f64(vmulq_f64(v82, v82), vmulq_f64(v81, v81))), fabs(v80.f64[0] / vmuld_lane_f64(v83.f64[0], v83, 1) + 1.0) < v49) ? (v84 = v83.f64[0] < a14) : (v84 = 0), v84 ? (v85 = v83.f64[1] < a14) : (v85 = 0), v85))
  {
    v184 = v73;
    v203 = v72;
    swift_beginAccess();
    v110 = sub_1AAF7F798(0x20000000000001uLL);
    v111 = vcvtd_n_f64_u64(v110, 0x35uLL) * 0.06 + 0.72;
    if (v110 == 0x20000000000000)
    {
      v111 = 0.78;
    }

    v191 = v30 * v111 + a9;
    v112 = a8();
    *v113.i64 = v191;
    *&v113.i64[1] = v112;
    v114.f64[0] = NAN;
    v114.f64[1] = NAN;
    v115 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v113, vnegq_f64(v114)));
    if ((vandq_s8(vdupq_laneq_s64(v115, 1), v115).u64[0] & 0x8000000000000000) != 0)
    {
      v171 = sub_1AAF7FDC8(v205, v113, a12);
      v60 = a12;
      v174 = v173 < a14;
      if (fabs(v171 + 1.0) >= v49 || v172 >= a14)
      {
        v174 = 0;
      }

      v188 = v174;
    }

    else
    {
      v188 = 0;
      v60 = a12;
    }

    v50 = v196;
    v42 = v197;
    v75 = v193;
    v40 = a10;
    v72 = v203;
    v73 = v184;
  }

  else
  {
    v188 = 0;
  }

  v86 = vcgtq_s64(v73, vandq_s8(v42, v72));
  v87 = vcgtq_s64(v73, vandq_s8(v60, v72));
  v88 = vmovn_s64(vcltzq_s64(vandq_s8(vzip1q_s64(v87, v86), vzip2q_s64(v87, v86))));
  v202 = a4;
  v89 = v88;
  if (v47 < 0)
  {
    if ((v59 & 0x8000000000000000) == 0)
    {
      if ((v75 & 0x8000000000000000) == 0)
      {
        if (v88.i8[4])
        {
          if (a1 >= a3)
          {
            if (a1 < a4)
            {
              v179 = 0;
              v93 = v185;
              if (a1 < a5)
              {
                v93 = 0;
              }

              v183 = 1;
              v177 = 1;
              if (v93)
              {
                goto LABEL_154;
              }

              goto LABEL_153;
            }

            if (a1 >= a5)
            {
              v179 = 0;
              v95 = a9 == v70;
LABEL_180:
              v116 = !v95;
              v183 = 1;
              if ((v116 | v185))
              {
                v177 = 1;
              }

              else
              {
                v177 = 1;
                if (v187)
                {
                  goto LABEL_199;
                }
              }

LABEL_154:
              swift_beginAccess();
              v96 = *(a6 + 16);
              if (sub_1AAE63884(v96))
              {

                sub_1AADD923C();
                v97 = *(*(a6 + 24) + 16);
                sub_1AADD92E0(v97);
                sub_1AAF0AC40(v97, v96);
                nullsub_1();
              }

              *(a6 + 16) = MEMORY[0x1E69E7CC0];
              swift_endAccess();

              goto LABEL_211;
            }
          }

          goto LABEL_53;
        }

        if (a1 >= a3)
        {
          if (a1 < a4)
          {
            v177 = 0;
            v179 = 0;
            v94 = v185;
            if (a1 < a5)
            {
              v94 = 0;
            }

            v183 = v88.i32[0];
            if (v94)
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (a1 >= a5)
          {
            v91 = a9 == v70;
LABEL_75:
            v92 = !v91;
            v177 = 0;
            if ((v92 | v185))
            {
              v183 = v88.i32[0];
              v179 = 0;
            }

            else
            {
              v183 = v88.i32[0];
              v179 = 0;
              if (v187)
              {
                goto LABEL_199;
              }
            }

            goto LABEL_154;
          }
        }

        goto LABEL_95;
      }

      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 < a3)
        {
          goto LABEL_131;
        }

        if (a1 < a4)
        {
          if (!v185)
          {
            goto LABEL_131;
          }

          goto LABEL_126;
        }

LABEL_129:
        if (a1 >= a5)
        {
          if (a9 != v70 || v185)
          {
            goto LABEL_259;
          }
        }

        else
        {
          if (v47 < 0 != v59 < 0)
          {
            goto LABEL_131;
          }

          if (a9 != v70 || v185)
          {
            goto LABEL_259;
          }
        }

        if (!v187)
        {
          goto LABEL_259;
        }

        v177 = 1;
        v183 = v88.i32[0];
LABEL_198:
        v179 = 1;
        goto LABEL_199;
      }

      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 >= a4)
      {
LABEL_84:
        if (a1 >= a5 || v47 < 0 == v59 < 0)
        {
          v183 = 1;
          if (a9 == v70 && !v185)
          {
            v177 = 1;
            v179 = 1;
            if (v187)
            {
              goto LABEL_199;
            }

            goto LABEL_154;
          }

LABEL_283:
          v177 = 1;
          v179 = 1;
          goto LABEL_154;
        }

        goto LABEL_116;
      }

      goto LABEL_92;
    }

    if ((v75 & 0x8000000000000000) == 0)
    {
      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 >= a3)
        {
          if (a1 >= a4)
          {
            goto LABEL_149;
          }

          if (v185)
          {
LABEL_120:
            if (a1 < a5 && v47 < 0 != v59 < 0)
            {
              goto LABEL_151;
            }

LABEL_176:
            v177 = 0;
            v179 = 1;
            v183 = v88.i32[0];
            if ((a7 & 1) == 0)
            {
              goto LABEL_192;
            }

LABEL_203:
            swift_beginAccess();
            v120 = *(a6 + 16);
            if (sub_1AAE63884(v120) > 1)
            {
              v121 = sub_1AAE63884(v120);
              v122 = v121 - 2;
              if (__OFSUB__(v121, 2))
              {
LABEL_286:
                __break(1u);
                goto LABEL_287;
              }

              sub_1AAE9BFE8(v121 - 2, 1, v120);
              v123 = v120 + 32;
              v190 = *(v120 + 32 + 16 * v122);
              v124 = sub_1AAE63884(v120);
              v125 = v124 - 1;
              if (__OFSUB__(v124, 1))
              {
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

              sub_1AAE9BFE8(v124 - 1, 1, v120);
              v126 = *(v123 + 16 * v125);
              v127 = v198 - v126.f64[0];
              v128 = v181 - *(v123 + 16 * v125 + 8);
              v129 = vsubq_f64(v190, v126);
              if (fabs((v127 * v129.f64[0] + vmuld_lane_f64(v128, v129, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v129, v129))) * sqrt(v127 * v127 + v128 * v128)) + 1.0) > a17)
              {
                swift_beginAccess();
                if (sub_1AAE63884(v120))
                {

                  sub_1AADD923C();
                  v130 = *(*(a6 + 24) + 16);
                  sub_1AADD92E0(v130);
                  sub_1AAF0AC40(v130, v120);
                  nullsub_1();
                }

                *(a6 + 16) = MEMORY[0x1E69E7CC0];
                swift_endAccess();
              }
            }

            swift_beginAccess();
            sub_1AADD9224();
            v131 = *(*(a6 + 16) + 16);
            sub_1AADD92C8(v131);
            sub_1AAF0AC28(v131, v196);
            nullsub_1();
            swift_endAccess();
LABEL_211:
            a4 = v202;
            if (a1 < a3)
            {
              goto LABEL_217;
            }

            goto LABEL_212;
          }
        }

LABEL_151:
        v177 = 0;
        v179 = 1;
        goto LABEL_152;
      }

LABEL_67:
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 < a4)
      {
        if (!v185 || a1 < a5 && v47 < 0 != v59 < 0)
        {
          goto LABEL_116;
        }

        goto LABEL_147;
      }

LABEL_114:
      if (a1 < a5 && v47 < 0 != v59 < 0)
      {
        goto LABEL_116;
      }

      if (a9 == v70 && !v185 && v187)
      {
        v183 = 1;
        v177 = 1;
        goto LABEL_198;
      }

LABEL_147:
      v183 = 1;
      v177 = 1;
      goto LABEL_191;
    }

    if (v88.i8[4])
    {
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 < a4)
      {
        if (v185)
        {
          goto LABEL_106;
        }

        goto LABEL_116;
      }

      goto LABEL_114;
    }

LABEL_110:
    if (a1 < a3)
    {
      goto LABEL_131;
    }

    if (a1 < a4)
    {
      if (!v185)
      {
        goto LABEL_131;
      }

      goto LABEL_126;
    }

    goto LABEL_129;
  }

  if (v59 < 0)
  {
    if ((v75 & 0x8000000000000000) == 0)
    {
      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 >= a3)
        {
          if (a1 < a4)
          {
            if (!v185)
            {
              goto LABEL_151;
            }

            goto LABEL_120;
          }

LABEL_149:
          if (a1 < a5 && v47 < 0 != v59 < 0)
          {
            goto LABEL_151;
          }

          if (a9 == v70 && !v185 && v187)
          {
            v177 = 0;
            v179 = 1;
            v183 = v88.i32[0];
            goto LABEL_199;
          }

          goto LABEL_176;
        }

        goto LABEL_151;
      }

      goto LABEL_67;
    }

    if (v88.i8[4])
    {
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 >= a4)
      {
        goto LABEL_114;
      }

LABEL_92:
      if (v185)
      {
        goto LABEL_106;
      }

      goto LABEL_116;
    }

    goto LABEL_110;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
    if (v88.i8[4])
    {
      if (a1 >= a3)
      {
        if (a1 < a4)
        {
          if (!v185)
          {
            v90 = a9 == v70 && v187;
            v183 = 1;
            v177 = 1;
            goto LABEL_100;
          }

LABEL_106:
          if (a1 >= a5 || v47 < 0 == v59 < 0)
          {
            if ((v59 & 0x8000000000000000) == 0)
            {
              v183 = 1;
              goto LABEL_283;
            }

            goto LABEL_147;
          }

          goto LABEL_116;
        }

        goto LABEL_84;
      }

LABEL_116:
      v183 = 1;
      v177 = 1;
LABEL_132:
      v179 = 1;
      goto LABEL_153;
    }

    if (a1 < a3)
    {
      goto LABEL_131;
    }

    if (a1 < a4)
    {
      if (!v185)
      {
        v90 = a9 == v70 && v187;
        v177 = 1;
        v183 = v88.i32[0];
LABEL_100:
        v179 = 1;
        if (v90)
        {
          goto LABEL_199;
        }

        goto LABEL_154;
      }

LABEL_126:
      if (a1 >= a5)
      {
        if ((v59 & 0x8000000000000000) == 0)
        {
LABEL_260:
          v177 = 1;
          v183 = v88.i32[0];
          v179 = 1;
          goto LABEL_154;
        }

LABEL_190:
        v177 = 1;
        v183 = v88.i32[0];
LABEL_191:
        v179 = 1;
        if ((a7 & 1) == 0)
        {
          goto LABEL_192;
        }

        goto LABEL_203;
      }

      if (v47 < 0 == v59 < 0)
      {
LABEL_259:
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_190;
      }

LABEL_131:
      v177 = 1;
      v183 = v88.i32[0];
      goto LABEL_132;
    }

    goto LABEL_129;
  }

  if ((v88.i8[4] & 1) == 0)
  {
    if (a1 >= a3)
    {
      v91 = a9 == v70;
      goto LABEL_75;
    }

LABEL_95:
    v177 = 0;
    v179 = 0;
LABEL_152:
    v183 = v88.i32[0];
LABEL_153:
    sub_1AAF7FE10(a1 + 1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v40, v198, v50, v49, a14, v70, v48, a17, a18);
    if (v59 < 0)
    {
      goto LABEL_202;
    }

    goto LABEL_154;
  }

  if (a1 < a3)
  {
LABEL_53:
    v179 = 0;
    v183 = 1;
    v177 = 1;
    goto LABEL_153;
  }

  if (a1 >= a4)
  {
    v179 = 0;
    v95 = a9 == v70;
    goto LABEL_180;
  }

  v179 = 0;
  v183 = 1;
  v177 = 1;
  if (((a9 == v70) & ~v185 & v187) == 0)
  {
    goto LABEL_154;
  }

LABEL_199:
  swift_beginAccess();
  v118 = *(a6 + 16);
  if (sub_1AAE63884(v118))
  {

    sub_1AADD923C();
    v119 = *(*(a6 + 24) + 16);
    sub_1AADD92E0(v119);
    sub_1AAF0AC40(v119, v118);
    nullsub_1();
  }

  *(a6 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  a4 = v202;
  if ((v59 & 0x8000000000000000) == 0)
  {
    goto LABEL_154;
  }

LABEL_202:
  if (a7)
  {
    goto LABEL_203;
  }

LABEL_192:
  swift_beginAccess();
  sub_1AADD9224();
  v117 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v117);
  sub_1AAF0AC28(v117, v196);
  nullsub_1();
  swift_endAccess();
  if (a1 < a3)
  {
    goto LABEL_217;
  }

LABEL_212:
  if (a1 < a4 && (!v185 || !v187) && v179 == 1 || a1 < a5 && v59 < 0 != v193 < 0)
  {
LABEL_217:
    sub_1AAF7FE10(a1 + 1, a2, a3, a4, a5, a6, a7 & 1, a8, v198, v196, v200, v205, v49, a14, v70, v48, a17, a18);
    v132 = v193;
    if (v193 < 0)
    {
      goto LABEL_218;
    }

LABEL_228:
    swift_beginAccess();
    v145 = *(a6 + 16);
    if (sub_1AAE63884(v145))
    {

      sub_1AADD923C();
      v146 = *(*(a6 + 24) + 16);
      sub_1AADD92E0(v146);
      sub_1AAF0AC40(v146, v145);
      nullsub_1();
    }

    *(a6 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_231;
  }

  v132 = v193;
  if ((v193 & 0x8000000000000000) == 0)
  {
    goto LABEL_228;
  }

LABEL_218:
  if (a7)
  {
    swift_beginAccess();
    v133 = *(a6 + 16);
    if (sub_1AAE63884(v133) >= 2)
    {
      v134 = sub_1AAE63884(v133);
      v135 = v134 - 2;
      if (__OFSUB__(v134, 2))
      {
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      sub_1AAE9BFE8(v134 - 2, 1, v133);
      v136 = v133 + 32;
      v199 = *(v133 + 32 + 16 * v135);
      v137 = sub_1AAE63884(v133);
      v138 = v137 - 1;
      if (__OFSUB__(v137, 1))
      {
LABEL_289:
        __break(1u);
        return;
      }

      sub_1AAE9BFE8(v137 - 1, 1, v133);
      v139 = *(v136 + 16 * v138);
      v140 = v200 - v139.f64[0];
      v141 = v182 - *(v136 + 16 * v138 + 8);
      v142 = vsubq_f64(v199, v139);
      if (fabs((v140 * v142.f64[0] + vmuld_lane_f64(v141, v142, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v142, v142))) * sqrt(v140 * v140 + v141 * v141)) + 1.0) > a17)
      {
        swift_beginAccess();
        if (sub_1AAE63884(v133))
        {

          sub_1AADD923C();
          v143 = *(*(a6 + 24) + 16);
          sub_1AADD92E0(v143);
          sub_1AAF0AC40(v143, v133);
          nullsub_1();
        }

        *(a6 + 16) = MEMORY[0x1E69E7CC0];
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  sub_1AADD9224();
  v144 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v144);
  sub_1AAF0AC28(v144, v205);
  nullsub_1();
  swift_endAccess();
LABEL_231:
  if (a1 < a3 || a1 < v202 && (!v187 || !v188) && v177 == 1 || a1 < a5 && (((v132 < 0) ^ v89.i32[1]) & 1) != 0)
  {
    sub_1AAF7FE10(a1 + 1, a2, a3, v202, a5, a6, a7 & 1, a8, v200, v205, v204, v197, v49, a14, v70, v48, a17, a18);
  }

  if ((v89.i8[4] & 1) == 0)
  {
    swift_beginAccess();
    v158 = *(a6 + 16);
    if (sub_1AAE63884(v158))
    {

      sub_1AADD923C();
      v159 = *(*(a6 + 24) + 16);
      sub_1AADD92E0(v159);
      sub_1AAF0AC40(v159, v158);
      nullsub_1();
    }

    *(a6 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_252;
  }

  if (a7)
  {
    swift_beginAccess();
    v147 = *(a6 + 16);
    if (sub_1AAE63884(v147) >= 2)
    {
      v148 = sub_1AAE63884(v147);
      v149 = v148 - 2;
      if (__OFSUB__(v148, 2))
      {
        __break(1u);
      }

      else
      {
        sub_1AAE9BFE8(v148 - 2, 1, v147);
        v150 = v147 + 32;
        v206 = *(v147 + 32 + 16 * v149);
        v151 = sub_1AAE63884(v147);
        v152 = v151 - 1;
        if (!__OFSUB__(v151, 1))
        {
          sub_1AAE9BFE8(v151 - 1, 1, v147);
          v153 = *(v150 + 16 * v152);
          v154 = v204 - v153.f64[0];
          v155 = v176 - *(v150 + 16 * v152 + 8);
          v156 = vsubq_f64(v206, v153);
          if (fabs((v154 * v156.f64[0] + vmuld_lane_f64(v155, v156, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v156, v156))) * sqrt(v154 * v154 + v155 * v155)) + 1.0) > a17)
          {
            swift_beginAccess();
            if (sub_1AAE63884(v147))
            {

              sub_1AADD923C();
              v157 = *(*(a6 + 24) + 16);
              sub_1AADD92E0(v157);
              sub_1AAF0AC40(v157, v147);
              nullsub_1();
            }

            *(a6 + 16) = MEMORY[0x1E69E7CC0];
            swift_endAccess();
          }

          goto LABEL_251;
        }
      }

      __break(1u);
      goto LABEL_286;
    }
  }

LABEL_251:
  swift_beginAccess();
  sub_1AADD9224();
  v160 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v160);
  sub_1AAF0AC28(v160, v197);
  nullsub_1();
  swift_endAccess();
LABEL_252:
  if (a1 < a3 || a1 < v202 && !v188 && ((v183 ^ 1) & 1) == 0 || a1 < a5 && ((v89.i32[0] ^ v89.i32[1]) & 1) != 0)
  {
    sub_1AAF7FE10(a1 + 1, a2, a3, v202, a5, a6, a7 & 1, a8, v204, v197, a11, a12, v49, a14, v70, v48, a17, a18);
  }
}

void *sub_1AAF81604(uint64_t a1, uint64_t a2, char a3, double (*a4)(void), char *a5, __n128 a6, __n128 a7)
{
  v52 = a1;
  v58 = a6;
  v59 = a7;
  v11 = sub_1AAF8D7E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9C36C8;
  sub_1AAF8FE04();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v53 = *(v12 + 8);
  v54 = v12 + 8;
  v53(v14, v11);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v18 = v16 + 16;
  *(v16 + 24) = v17;
  v55 = swift_allocObject();
  *(v55 + 16) = 0x78ABBF7B5AEAE776;
  v19 = (a2 + 4);
  if (__OFADD__(a2, 4))
  {
    __break(1u);
LABEL_41:
    v19 = sub_1AAD6958C(0, v19[2] + 1, 1, v19);
    goto LABEL_35;
  }

  v20 = (a4)(v58);
  v21.i64[0] = v58.n128_u64[0];
  *&v21.i64[1] = v20;
  v56 = v21;
  v22.f64[0] = (a4)(v59);
  v23.i64[0] = v59.n128_u64[0];
  v51 = v22;
  v23.i64[1] = *&v22.f64[0];
  v57 = v23;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v24 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v56, vnegq_f64(v22)));
  if ((vandq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0)
  {
    v50 = v11;
    swift_beginAccess();
    v25 = sub_1AAD6945C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1AAD6945C((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    *&v25[16 * v27 + 32] = v56;
    *v18 = v25;
    swift_endAccess();
    v11 = v50;
  }

  else
  {
    swift_beginAccess();
    *v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAF7FE10(1, v55, v52, a2, a2 + 4, v16, a3 & 1, a4, v58.n128_f64[0], v56, v59.n128_f64[0], v57, 0.00137046525, 20.0, v58.n128_f64[0], v59.n128_f64[0], 0.190983006, a5);
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v57, vnegq_f64(v28)));
  if ((vandq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0)
  {
    a4 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      swift_beginAccess();
      a5 = *v18;
      v34 = (*v18 + 16);
      if (*v34 >= 2uLL)
      {
        v35 = 2 * *v34;
        v36 = *&v34[v35];
        v37 = vsubq_f64(*&a5[v35 * 8], v36);
        if (fabs(((v59.n128_f64[0] - v36.f64[0]) * v37.f64[0] + vmuld_lane_f64(v51.f64[0] - *&v34[v35 + 1], v37, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v37, v37))) * sqrt((v59.n128_f64[0] - v36.f64[0]) * (v59.n128_f64[0] - v36.f64[0]) + (v51.f64[0] - *&v34[v35 + 1]) * (v51.f64[0] - *&v34[v35 + 1]))) + 1.0) > 0.190983006)
        {
          swift_beginAccess();
          v38 = *(v16 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1AAD6958C(0, v38[2] + 1, 1, v38);
          }

          v40 = v38[2];
          v39 = v38[3];
          if (v40 >= v39 >> 1)
          {
            v38 = sub_1AAD6958C((v39 > 1), v40 + 1, 1, v38);
          }

          v38[2] = v40 + 1;
          v38[v40 + 4] = a5;

          *(v16 + 16) = a4;
          *(v16 + 24) = v38;
          swift_endAccess();
          a5 = a4;
        }
      }

      swift_beginAccess();
    }

    else
    {
      swift_beginAccess();
      a5 = *v18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_1AAD6945C(0, *(a5 + 2) + 1, 1, a5);
    }

    v42 = *(a5 + 2);
    v41 = *(a5 + 3);
    v43 = v57;
    if (v42 >= v41 >> 1)
    {
      v48 = sub_1AAD6945C((v41 > 1), v42 + 1, 1, a5);
      v43 = v57;
      a5 = v48;
    }

    *(a5 + 2) = v42 + 1;
    *&a5[16 * v42 + 32] = v43;
    *v18 = a5;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v30 = *v18;
    a4 = MEMORY[0x1E69E7CC0];
    if (*(*v18 + 16))
    {
      v31 = *(v16 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AAD6958C(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1AAD6958C((v32 > 1), v33 + 1, 1, v31);
      }

      v31[2] = v33 + 1;
      v31[v33 + 4] = v30;

      *(v16 + 24) = v31;
    }

    else
    {
    }

    *v18 = a4;
    swift_endAccess();
    a5 = a4;
  }

  swift_beginAccess();
  if (!*(a5 + 2))
  {

    v19 = *(v16 + 24);
    goto LABEL_39;
  }

  v19 = *(v16 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v45 = v19[2];
  v44 = v19[3];
  if (v45 >= v44 >> 1)
  {
    v19 = sub_1AAD6958C((v44 > 1), v45 + 1, 1, v19);
  }

  v19[2] = v45 + 1;
  v19[v45 + 4] = a5;

  *(v16 + 24) = v19;
LABEL_39:
  *(v16 + 16) = a4;
  swift_endAccess();

  v46 = qword_1ED9C36C8;
  sub_1AAF8FDF4();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v53(v14, v11);
  return v19;
}

uint64_t sub_1AAF81D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double (*a8)(double), double a9, int8x16_t a10, double a11, int8x16_t a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, double a21, double a22, uint64_t a23, unsigned __int8 a24, double a25, double a26)
{
  swift_beginAccess();
  v31 = sub_1AAF7F798(0x20000000000001uLL);
  v32 = vcvtd_n_f64_u64(v31, 0x35uLL) * 0.06 + 0.22;
  if (v31 == 0x20000000000000)
  {
    v32 = 0.28;
  }

  v208 = a11;
  v33 = a11 - a9;
  v34 = (a11 - a9) * v32 + a9;
  swift_retain_n();
  v215 = v34;
  v35.n128_f64[0] = sub_1AAE62928(a8, v34, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v227 = v35;
  swift_beginAccess();
  v36 = sub_1AAF7F798(0x20000000000001uLL);
  v37 = vcvtd_n_f64_u64(v36, 0x35uLL) * 0.06 + 0.47;
  if (v36 == 0x20000000000000)
  {
    v37 = 0.53;
  }

  v216 = v33 * v37 + a9;
  v38.n128_f64[0] = sub_1AAE62928(a8, v216, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v230 = v38;
  swift_beginAccess();
  v226 = a2;
  v39 = a18;
  v40 = sub_1AAF7F798(0x20000000000001uLL);
  v41 = vcvtd_n_f64_u64(v40, 0x35uLL) * 0.06 + 0.72;
  if (v40 == 0x20000000000000)
  {
    v41 = 0.78;
  }

  v42 = v33;
  v211 = v33 * v41 + a9;
  v212 = a9;
  v43.f64[0] = sub_1AAE62928(a8, v211, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v44 = v43;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v45 = vnegq_f64(v43);
  v46 = vdupq_n_s64(0x7FF0000000000000uLL);
  v47 = vcgtq_s64(v46, vandq_s8(a10, v45));
  v48 = vandq_s8(vdupq_laneq_s64(v47, 1), v47).u64[0];
  v224 = v44;
  if (v48 < 0)
  {
    v55 = vcgtq_s64(v46, vandq_s8(v227, v45));
    v50 = a5;
    v52 = a3;
    v54 = v227;
    if ((vandq_s8(vdupq_laneq_s64(v55, 1), v55).u64[0] & 0x8000000000000000) != 0)
    {
      v56.f64[0] = NAN;
      v56.f64[1] = NAN;
      v53 = v230;
      v57 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v230, vnegq_f64(v56)));
      if ((vandq_s8(vdupq_laneq_s64(v57, 1), v57).u64[0] & 0x8000000000000000) != 0 && ((v58 = vsubq_f64(a10, v227), v59 = vsubq_f64(v230, v227), v60 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v58, v58), vmulq_f64(v59, v59))), fabs(vaddvq_f64(vmulq_f64(v58, v59)) / vmuld_lane_f64(v60.f64[0], v60, 1) + 1.0) < a13) ? (v61 = v60.f64[0] < a14) : (v61 = 0), v61 ? (v62 = v60.f64[1] < a14) : (v62 = 0), v62))
      {
        v199 = v46;
        v204 = v45;
        swift_beginAccess();
        v39 = a18;
        v114 = sub_1AAF7F798(0x20000000000001uLL);
        v115 = vcvtd_n_f64_u64(v114, 0x35uLL) * 0.06 + 0.22;
        if (v114 == 0x20000000000000)
        {
          v115 = 0.28;
        }

        v116.f64[0] = sub_1AAE62928(a8, v33 * v115 + a9, a21, a22, a25, a26, a18, a19, a20, a23, a24);
        v117 = v116;
        v116.f64[0] = NAN;
        v116.f64[1] = NAN;
        v118 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v117, vnegq_f64(v116)));
        if ((vandq_s8(vdupq_laneq_s64(v118, 1), v118).u64[0] & 0x8000000000000000) != 0)
        {
          v131 = sub_1AAF7FDC8(a10, v117, v230);
          v53 = v230;
          v51 = a14;
          v49 = fabs(v131 + 1.0) < a13 && v132 < a14 && v133 < a14;
          v44 = v224;
        }

        else
        {
          v49 = 0;
          v51 = a14;
          v44 = v224;
          v53 = v230;
        }

        v54 = v227;
        v45 = v204;
        v46 = v199;
      }

      else
      {
        v49 = 0;
        v51 = a14;
      }
    }

    else
    {
      v49 = 0;
      v51 = a14;
      v53 = v230;
    }
  }

  else
  {
    v49 = 0;
    v50 = a5;
    v51 = a14;
    v52 = a3;
    v53 = v230;
    v54 = v227;
  }

  v63 = vcgtq_s64(v46, vandq_s8(v54, v45));
  v222 = vandq_s8(vdupq_laneq_s64(v63, 1), v63).u64[0];
  if ((v222 & 0x8000000000000000) == 0 || (v64.f64[0] = NAN, v64.f64[1] = NAN, v65 = vnegq_f64(v64), v66 = vdupq_n_s64(0x7FF0000000000000uLL), v67 = vcgtq_s64(v66, vandq_s8(v53, v65)), (vandq_s8(vdupq_laneq_s64(v67, 1), v67).u64[0] & 0x8000000000000000) == 0))
  {
    v207 = 0;
    v68 = v226;
    v69 = a6;
    v70 = a21;
    v71 = a22;
    v72 = a8;
    goto LABEL_23;
  }

  v91 = vcgtq_s64(v66, vandq_s8(v44, v65));
  v68 = v226;
  v72 = a8;
  if ((vandq_s8(vdupq_laneq_s64(v91, 1), v91).u64[0] & 0x8000000000000000) == 0)
  {
    v207 = 0;
    v69 = a6;
LABEL_100:
    v70 = a21;
    v71 = a22;
    goto LABEL_23;
  }

  v96 = vsubq_f64(v54, v53);
  v97 = vsubq_f64(v44, v53);
  v98 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v96, v96), vmulq_f64(v97, v97)));
  v100 = fabs(vaddvq_f64(vmulq_f64(v96, v97)) / vmuld_lane_f64(v98.f64[0], v98, 1) + 1.0) < a13 && v98.f64[0] < v51 && v98.f64[1] < v51;
  v69 = a6;
  if (!v100)
  {
    v207 = 0;
    goto LABEL_100;
  }

  swift_beginAccess();
  v119 = sub_1AAF7F798(0x20000000000001uLL);
  v120 = vcvtd_n_f64_u64(v119, 0x35uLL) * 0.06 + 0.47;
  if (v119 == 0x20000000000000)
  {
    v120 = 0.53;
  }

  v70 = a21;
  v71 = a22;
  v121.f64[0] = sub_1AAE62928(a8, v42 * v120 + a9, a21, a22, a25, a26, v39, a19, a20, a23, a24);
  v122 = v121;
  v121.f64[0] = NAN;
  v121.f64[1] = NAN;
  v123 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v122, vnegq_f64(v121)));
  if ((vandq_s8(vdupq_laneq_s64(v123, 1), v123).u64[0] & 0x8000000000000000) != 0)
  {
    v135 = sub_1AAF7FDC8(v227, v122, v224);
    v44 = v224;
    v138 = v137 < v51;
    if (fabs(v135 + 1.0) >= a13 || v136 >= v51)
    {
      v138 = 0;
    }

    v207 = v138;
  }

  else
  {
    v207 = 0;
    v44 = v224;
  }

  v53 = v230;
LABEL_23:
  v73.f64[0] = NAN;
  v73.f64[1] = NAN;
  v74 = vnegq_f64(v73);
  v75 = vdupq_n_s64(0x7FF0000000000000uLL);
  v76 = vcgtq_s64(v75, vandq_s8(v53, v74));
  v77 = vandq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0];
  v78 = a12;
  v214 = v77;
  v203 = v49;
  if ((v77 & 0x8000000000000000) == 0 || (v79 = vcgtq_s64(v75, vandq_s8(v44, v74)), (vandq_s8(vdupq_laneq_s64(v79, 1), v79).u64[0] & 0x8000000000000000) == 0))
  {
    v210 = 0;
    v80 = a15;
    v81 = a19;
    v82 = a1;
    v83 = a25;
LABEL_26:
    v84 = a26;
    goto LABEL_27;
  }

  v92.f64[0] = NAN;
  v92.f64[1] = NAN;
  v93 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(a12, vnegq_f64(v92)));
  v81 = a19;
  v83 = a25;
  if ((vandq_s8(vdupq_laneq_s64(v93, 1), v93).u64[0] & 0x8000000000000000) == 0)
  {
    v210 = 0;
    v80 = a15;
    v82 = a1;
    goto LABEL_26;
  }

  v101 = vsubq_f64(v53, v44);
  v102 = vsubq_f64(a12, v44);
  v103 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v101, v101), vmulq_f64(v102, v102)));
  v105 = fabs(vaddvq_f64(vmulq_f64(v101, v102)) / vmuld_lane_f64(v103.f64[0], v103, 1) + 1.0) < a13 && v103.f64[0] < v51 && v103.f64[1] < v51;
  v82 = a1;
  v84 = a26;
  if (v105)
  {
    v200 = v75;
    v206 = v74;
    swift_beginAccess();
    v124 = sub_1AAF7F798(0x20000000000001uLL);
    v125 = vcvtd_n_f64_u64(v124, 0x35uLL) * 0.06 + 0.72;
    if (v124 == 0x20000000000000)
    {
      v125 = 0.78;
    }

    v126.f64[0] = sub_1AAE62928(v72, v42 * v125 + a9, v70, v71, a25, a26, v39, a19, a20, a23, a24);
    v127 = v126;
    v126.f64[0] = NAN;
    v126.f64[1] = NAN;
    v128 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v127, vnegq_f64(v126)));
    if ((vandq_s8(vdupq_laneq_s64(v128, 1), v128).u64[0] & 0x8000000000000000) != 0)
    {
      v140 = sub_1AAF7FDC8(v230, v127, a12);
      v78 = a12;
      v143 = v142 < v51;
      if (fabs(v140 + 1.0) >= a13 || v141 >= v51)
      {
        v143 = 0;
      }

      v210 = v143;
      v80 = a15;
    }

    else
    {
      v210 = 0;
      v80 = a15;
      v78 = a12;
    }

    v44 = v224;
    v77 = v214;
    v74 = v206;
    v75 = v200;
  }

  else
  {
    v210 = 0;
    v80 = a15;
  }

LABEL_27:
  v85 = vcgtq_s64(v75, vandq_s8(v44, v74));
  v86 = vcgtq_s64(v75, vandq_s8(v78, v74));
  v87 = vmovn_s64(vcltzq_s64(vandq_s8(vzip1q_s64(v86, v85), vzip2q_s64(v86, v85))));
  v88 = v87;
  if (v48 < 0)
  {
    if ((v222 & 0x8000000000000000) == 0)
    {
      if ((v77 & 0x8000000000000000) == 0)
      {
        if (v87.i8[4])
        {
          v89 = a4;
          if (v82 >= v52)
          {
            if (v82 < a4)
            {
              v202 = 0;
              v111 = v82 >= v50 && v49;
              v205 = 1;
              v201 = 1;
              if (v111)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            }

            if (v82 >= v50)
            {
              v202 = 0;
              v113 = v212 == v80;
              goto LABEL_184;
            }
          }

          goto LABEL_39;
        }

        v89 = a4;
        if (v82 >= v52)
        {
          if (v82 < a4)
          {
            v201 = 0;
            v202 = 0;
            v112 = v82 >= v50 && v49;
            v205 = v87.i32[0];
            if (v112)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }

          if (v82 >= v50)
          {
            v94 = v212 == v80;
LABEL_65:
            v95 = !v94;
            v201 = 0;
            if ((v95 | v49))
            {
              v205 = v87.i32[0];
              v202 = 0;
            }

            else
            {
              v205 = v87.i32[0];
              v202 = 0;
              if (v207)
              {
                goto LABEL_250;
              }
            }

            goto LABEL_131;
          }
        }

        goto LABEL_85;
      }

      if (v87.i8[4])
      {
        if (v82 < v52)
        {
          goto LABEL_123;
        }

        if (v82 >= a4)
        {
LABEL_74:
          if (v82 >= v50 || v48 < 0 == v222 < 0)
          {
            v205 = 1;
            v89 = a4;
            if (v212 == v80 && !v49)
            {
              v201 = 1;
              v202 = 1;
              if (v207)
              {
                goto LABEL_250;
              }

              goto LABEL_131;
            }

LABEL_246:
            v201 = 1;
            v202 = 1;
            goto LABEL_131;
          }

          goto LABEL_123;
        }

        goto LABEL_82;
      }

      if (v82 < v52)
      {
        goto LABEL_127;
      }

      if (v82 < a4)
      {
        if (!v49)
        {
          goto LABEL_127;
        }

        goto LABEL_171;
      }

LABEL_174:
      if (v82 >= v50)
      {
        if (v212 != v80)
        {
LABEL_204:
          v89 = a4;
LABEL_205:
          if (v222 < 0)
          {
            v201 = 1;
            v205 = v87.i32[0];
            v202 = 1;
            goto LABEL_253;
          }

          goto LABEL_206;
        }

        v89 = a4;
        v110 = v211;
        if (!v49)
        {
          if (v207)
          {
            v201 = 1;
            v205 = v87.i32[0];
            v202 = 1;
            goto LABEL_250;
          }

          goto LABEL_205;
        }

        if ((v222 & 0x8000000000000000) == 0)
        {
LABEL_206:
          v201 = 1;
          v205 = v87.i32[0];
          v202 = 1;
          goto LABEL_131;
        }

        v201 = 1;
        v205 = v87.i32[0];
      }

      else
      {
        if (v48 < 0 != v222 < 0)
        {
          goto LABEL_176;
        }

        v129 = v87.i32[0];
        if (v212 != v80)
        {
          goto LABEL_212;
        }

        v110 = v211;
        if (!v49)
        {
          v89 = a4;
          if (v207)
          {
            v201 = 1;
            v205 = v87.i32[0];
            v202 = 1;
            goto LABEL_250;
          }

          goto LABEL_213;
        }

        v89 = a4;
        if ((v222 & 0x8000000000000000) == 0)
        {
LABEL_214:
          v201 = 1;
          v205 = v129;
          v202 = 1;
          goto LABEL_131;
        }

        v201 = 1;
        v205 = v87.i32[0];
      }

      goto LABEL_203;
    }

    if ((v77 & 0x8000000000000000) == 0)
    {
      if ((v87.i8[4] & 1) == 0)
      {
        if (v82 < v52)
        {
          goto LABEL_125;
        }

        if (v82 < a4)
        {
          if (v49)
          {
            goto LABEL_163;
          }

          goto LABEL_125;
        }

LABEL_166:
        if (v82 >= v50)
        {
          if (v212 != v80)
          {
            goto LABEL_197;
          }

          v89 = a4;
          v110 = v211;
          if (!v49 && v207)
          {
            v201 = 0;
            v202 = 1;
            v205 = v87.i32[0];
            goto LABEL_250;
          }

          v201 = 0;
          v202 = 1;
          v205 = v87.i32[0];
        }

        else
        {
          if (v48 < 0 != v222 < 0)
          {
LABEL_168:
            v201 = 0;
            v202 = 1;
            v205 = v87.i32[0];
            goto LABEL_129;
          }

          v89 = a4;
          if (v212 != v80)
          {
            v201 = 0;
            v202 = 1;
            v205 = v87.i32[0];
            goto LABEL_253;
          }

          v110 = v211;
          if (!v49 && v207)
          {
            v201 = 0;
            v202 = 1;
            v205 = v87.i32[0];
            goto LABEL_250;
          }

          v201 = 0;
          v202 = 1;
          v205 = v87.i32[0];
        }

LABEL_263:
        if (a7)
        {
          goto LABEL_254;
        }

LABEL_264:
        swift_beginAccess();
        sub_1AADD9224();
        v164 = *(*(v69 + 16) + 16);
        sub_1AADD92C8(v164);
        v165 = v164;
        v89 = a4;
        sub_1AAF0AC28(v165, v227);
        nullsub_1();
        swift_endAccess();
        goto LABEL_265;
      }

LABEL_57:
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 < a4)
      {
        if (!v49 || v82 < v50 && v48 < 0 != v222 < 0)
        {
          goto LABEL_123;
        }

LABEL_181:
        v205 = 1;
        v201 = 1;
        v202 = 1;
        v89 = a4;
        goto LABEL_253;
      }

LABEL_121:
      if (v82 >= v50)
      {
        if (v212 != v80)
        {
          goto LABEL_181;
        }

        v89 = a4;
      }

      else
      {
        if (v48 < 0 != v222 < 0)
        {
          goto LABEL_123;
        }

        v89 = a4;
        if (v212 != v80)
        {
          goto LABEL_211;
        }
      }

      v110 = v211;
      if (!v49 && v207)
      {
        v205 = 1;
        v201 = 1;
        v202 = 1;
        goto LABEL_250;
      }

      v205 = 1;
      v201 = 1;
LABEL_203:
      v202 = 1;
      goto LABEL_263;
    }

    if (v87.i8[4])
    {
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 < a4)
      {
        if (v49)
        {
          goto LABEL_113;
        }

        goto LABEL_123;
      }

      goto LABEL_121;
    }

LABEL_117:
    if (v82 < v52)
    {
      goto LABEL_127;
    }

    if (v82 < a4)
    {
      if (!v49)
      {
        goto LABEL_127;
      }

LABEL_171:
      if (v82 < v50)
      {
        if (v48 < 0 == v222 < 0)
        {
          v129 = v87.i32[0];
LABEL_212:
          v89 = a4;
LABEL_213:
          if (v222 < 0)
          {
            v201 = 1;
            v205 = v129;
            v202 = 1;
            goto LABEL_253;
          }

          goto LABEL_214;
        }

LABEL_176:
        v201 = 1;
        v205 = v87.i32[0];
        goto LABEL_128;
      }

      goto LABEL_204;
    }

    goto LABEL_174;
  }

  if (v222 < 0)
  {
    if ((v77 & 0x8000000000000000) == 0)
    {
      if ((v87.i8[4] & 1) == 0)
      {
        if (v82 < v52)
        {
          goto LABEL_125;
        }

        if (v82 < a4)
        {
          if (v49)
          {
LABEL_163:
            if (v82 < v50)
            {
              if (v48 < 0 == v222 < 0)
              {
                v201 = 0;
                v202 = 1;
                v205 = v87.i32[0];
                v89 = a4;
                goto LABEL_253;
              }

              goto LABEL_168;
            }

LABEL_197:
            v201 = 0;
            v202 = 1;
            v205 = v87.i32[0];
            v89 = a4;
            goto LABEL_253;
          }

LABEL_125:
          v201 = 0;
          v202 = 1;
          v205 = v87.i32[0];
LABEL_129:
          v89 = a4;
LABEL_130:

          sub_1AAF81D60(v82 + 1, v68, v52, v89, v50, v69, a7 & 1, v72, v212, a10, v215, v227, a13, v51, v80, a16, a17, v39, v81, a20, v70, v71, a23, a24, v83, v84);

          if (v222 < 0)
          {
            goto LABEL_253;
          }

          goto LABEL_131;
        }

        goto LABEL_166;
      }

      goto LABEL_57;
    }

    if (v87.i8[4])
    {
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 >= a4)
      {
        goto LABEL_121;
      }

LABEL_82:
      if (v49)
      {
        goto LABEL_113;
      }

      goto LABEL_123;
    }

    goto LABEL_117;
  }

  if ((v77 & 0x8000000000000000) == 0)
  {
    if (v87.i8[4])
    {
      v89 = a4;
      if (v82 >= v52)
      {
        if (v82 < a4)
        {
          v202 = 0;
          v205 = 1;
          v201 = 1;
          if (((v212 == v80) & ~v49 & v207) != 0)
          {
            goto LABEL_250;
          }

LABEL_131:
          v106 = v50;
          swift_beginAccess();
          v107 = *(v69 + 16);
          if (sub_1AAE63884(v107))
          {

            sub_1AADD923C();
            v108 = *(*(v69 + 24) + 16);
            sub_1AADD92E0(v108);
            v109 = v108;
            v89 = a4;
            sub_1AAF0AC40(v109, v107);
            nullsub_1();
          }

          *(v69 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();

          v50 = v106;
          v68 = v226;
          v110 = v211;
          goto LABEL_265;
        }

        v202 = 0;
        v113 = v212 == v80;
LABEL_184:
        v130 = !v113;
        v205 = 1;
        if ((v130 | v49))
        {
          v201 = 1;
        }

        else
        {
          v201 = 1;
          if (v207)
          {
            goto LABEL_250;
          }
        }

        goto LABEL_131;
      }

LABEL_39:
      v202 = 0;
      v205 = 1;
      v201 = 1;
      goto LABEL_130;
    }

    v89 = a4;
    if (v82 >= v52)
    {
      v94 = v212 == v80;
      goto LABEL_65;
    }

LABEL_85:
    v201 = 0;
    v202 = 0;
    v205 = v87.i32[0];
    goto LABEL_130;
  }

  if (v87.i8[4])
  {
    if (v82 >= v52)
    {
      if (v82 < a4)
      {
        if (!v49)
        {
          v90 = v212 == v80 && v207;
          v205 = 1;
          v201 = 1;
          goto LABEL_90;
        }

LABEL_113:
        if (v82 >= v50 || v48 < 0 == v222 < 0)
        {
          v89 = a4;
          if ((v222 & 0x8000000000000000) == 0)
          {
            v205 = 1;
            goto LABEL_246;
          }

LABEL_211:
          v205 = 1;
          v201 = 1;
          v202 = 1;
          goto LABEL_253;
        }

        goto LABEL_123;
      }

      goto LABEL_74;
    }

LABEL_123:
    v205 = 1;
    v201 = 1;
LABEL_128:
    v202 = 1;
    goto LABEL_129;
  }

  if (v82 < v52)
  {
LABEL_127:
    v201 = 1;
    v205 = v87.i32[0];
    goto LABEL_128;
  }

  if (v82 >= a4)
  {
    goto LABEL_174;
  }

  if (v49)
  {
    goto LABEL_171;
  }

  v90 = v212 == v80 && v207;
  v201 = 1;
  v205 = v87.i32[0];
LABEL_90:
  v202 = 1;
  v89 = a4;
  if (!v90)
  {
    goto LABEL_131;
  }

LABEL_250:
  v145 = v50;
  swift_beginAccess();
  v146 = *(v69 + 16);
  if (sub_1AAE63884(v146))
  {

    sub_1AADD923C();
    v147 = *(*(v69 + 24) + 16);
    sub_1AADD92E0(v147);
    v148 = v147;
    v89 = a4;
    sub_1AAF0AC40(v148, v146);
    nullsub_1();
  }

  *(v69 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  v50 = v145;
  v68 = v226;
  if ((v222 & 0x8000000000000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_253:
  v110 = v211;
  if ((a7 & 1) == 0)
  {
    goto LABEL_264;
  }

LABEL_254:
  v149 = v50;
  swift_beginAccess();
  v150 = *(v69 + 16);
  if (sub_1AAE63884(v150) > 1)
  {
    result = sub_1AAE63884(v150);
    v152 = result - 2;
    if (__OFSUB__(result, 2))
    {
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

    sub_1AAE9BFE8(result - 2, 1, v150);
    v218 = *(v150 + 32 + 16 * v152);
    result = sub_1AAE63884(v150);
    v153 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_317:
      __break(1u);
      goto LABEL_318;
    }

    sub_1AAE9BFE8(result - 1, 1, v150);
    v154 = *(v150 + 32 + 16 * v153);
    v155 = vsubq_f64(v218, v154);
    v156 = vsubq_f64(v227, v154);
    v157 = vmulq_f64(v155, v156);
    v158 = vzip1q_s64(v155, v156);
    v159 = vzip2q_s64(v155, v156);
    v160 = vsqrtq_f64(vaddq_f64(vmulq_f64(v158, v158), vmulq_f64(v159, v159)));
    v149 = a5;
    v82 = a1;
    if (fabs(vdivq_f64(vaddq_f64(v157, vdupq_laneq_s64(v157, 1)), vmulq_laneq_f64(v160, v160, 1)).f64[0] + 1.0) > a17)
    {
      swift_beginAccess();
      if (sub_1AAE63884(v150))
      {

        sub_1AADD923C();
        v161 = *(*(v69 + 24) + 16);
        sub_1AADD92E0(v161);
        v162 = v161;
        v89 = a4;
        sub_1AAF0AC40(v162, v150);
        nullsub_1();
      }

      *(v69 + 16) = MEMORY[0x1E69E7CC0];
      swift_endAccess();
    }
  }

  swift_beginAccess();
  sub_1AADD9224();
  v163 = *(*(v69 + 16) + 16);
  sub_1AADD92C8(v163);
  sub_1AAF0AC28(v163, v227);
  nullsub_1();
  swift_endAccess();
  v50 = v149;
  v68 = v226;
LABEL_265:
  if (v82 < v52 || v82 < v89 && (!v203 || !v207) && v202 == 1 || v82 < v50 && v222 < 0 != v214 < 0)
  {

    sub_1AAF81D60(v82 + 1, v68, v52, v89, v50, v69, a7 & 1, v72, v215, v227, v216, v230, a13, v51, v80, a16, a17, v39, v81, a20, v70, v71, a23, a24, v83, v84);
  }

  v166 = v50;
  if (v214 < 0)
  {
    if (a7)
    {
      swift_beginAccess();
      v170 = *(v69 + 16);
      if (sub_1AAE63884(v170) >= 2)
      {
        result = sub_1AAE63884(v170);
        v171 = result - 2;
        if (__OFSUB__(result, 2))
        {
LABEL_318:
          __break(1u);
          goto LABEL_319;
        }

        sub_1AAE9BFE8(result - 2, 1, v170);
        v228 = *(v170 + 32 + 16 * v171);
        result = sub_1AAE63884(v170);
        v172 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_319:
          __break(1u);
          return result;
        }

        sub_1AAE9BFE8(result - 1, 1, v170);
        v173 = *(v170 + 32 + 16 * v172);
        v174 = vsubq_f64(v228, v173);
        v175 = vsubq_f64(v230, v173);
        v176 = vmulq_f64(v174, v175);
        v177 = vzip1q_s64(v174, v175);
        v178 = vzip2q_s64(v174, v175);
        v179 = vsqrtq_f64(vaddq_f64(vmulq_f64(v177, v177), vmulq_f64(v178, v178)));
        v166 = a5;
        v82 = a1;
        if (fabs(vdivq_f64(vaddq_f64(v176, vdupq_laneq_s64(v176, 1)), vmulq_laneq_f64(v179, v179, 1)).f64[0] + 1.0) > a17)
        {
          swift_beginAccess();
          if (sub_1AAE63884(v170))
          {

            sub_1AADD923C();
            v180 = *(*(v69 + 24) + 16);
            sub_1AADD92E0(v180);
            v181 = v180;
            v89 = a4;
            sub_1AAF0AC40(v181, v170);
            nullsub_1();
          }

          *(v69 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();
        }
      }
    }

    swift_beginAccess();
    sub_1AADD9224();
    v182 = *(*(v69 + 16) + 16);
    sub_1AADD92C8(v182);
    sub_1AAF0AC28(v182, v230);
    nullsub_1();
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v167 = *(v69 + 16);
    if (sub_1AAE63884(v167))
    {

      sub_1AADD923C();
      v168 = *(*(v69 + 24) + 16);
      sub_1AADD92E0(v168);
      v169 = v168;
      v89 = a4;
      sub_1AAF0AC40(v169, v167);
      nullsub_1();
    }

    *(v69 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();
  }

  if (v82 < v52 || v82 < v89 && (!v207 || !v210) && v201 == 1 || v82 < v166 && (((v214 < 0) ^ v88.i32[1]) & 1) != 0)
  {

    sub_1AAF81D60(v82 + 1, v226, v52, v89, v166, v69, a7 & 1, v72, v216, v230, v110, v224, a13, v51, v80, a16, a17, v39, v81, a20, v70, v71, a23, a24, v83, v84);
  }

  if ((v88.i8[4] & 1) == 0)
  {
    swift_beginAccess();
    v195 = *(v69 + 16);
    if (sub_1AAE63884(v195))
    {

      sub_1AADD923C();
      v196 = *(*(v69 + 24) + 16);
      sub_1AADD92E0(v196);
      v197 = v196;
      v89 = a4;
      sub_1AAF0AC40(v197, v195);
      nullsub_1();
    }

    *(v69 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_306;
  }

  if (a7)
  {
    swift_beginAccess();
    v183 = *(v69 + 16);
    if (sub_1AAE63884(v183) >= 2)
    {
      result = sub_1AAE63884(v183);
      v184 = result - 2;
      if (__OFSUB__(result, 2))
      {
        __break(1u);
      }

      else
      {
        sub_1AAE9BFE8(result - 2, 1, v183);
        v231 = *(v183 + 32 + 16 * v184);
        result = sub_1AAE63884(v183);
        v185 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          sub_1AAE9BFE8(result - 1, 1, v183);
          v186 = *(v183 + 32 + 16 * v185);
          v187 = vsubq_f64(v231, v186);
          v188 = vsubq_f64(v224, v186);
          v189 = vmulq_f64(v187, v188);
          v190 = vzip1q_s64(v187, v188);
          v191 = vzip2q_s64(v187, v188);
          v192 = vsqrtq_f64(vaddq_f64(vmulq_f64(v190, v190), vmulq_f64(v191, v191)));
          v89 = a4;
          if (fabs(vdivq_f64(vaddq_f64(v189, vdupq_laneq_s64(v189, 1)), vmulq_laneq_f64(v192, v192, 1)).f64[0] + 1.0) > a17)
          {
            swift_beginAccess();
            if (sub_1AAE63884(v183))
            {

              sub_1AADD923C();
              v193 = *(*(v69 + 24) + 16);
              sub_1AADD92E0(v193);
              v194 = v193;
              v89 = a4;
              sub_1AAF0AC40(v194, v183);
              nullsub_1();
            }

            *(v69 + 16) = MEMORY[0x1E69E7CC0];
            swift_endAccess();
          }

          goto LABEL_305;
        }
      }

      __break(1u);
      goto LABEL_316;
    }
  }

LABEL_305:
  swift_beginAccess();
  sub_1AADD9224();
  v198 = *(*(v69 + 16) + 16);
  sub_1AADD92C8(v198);
  sub_1AAF0AC28(v198, v224);
  nullsub_1();
  swift_endAccess();
LABEL_306:
  if (a1 < v52 || a1 < v89 && !v210 && ((v205 ^ 1) & 1) == 0 || a1 < a5 && ((v88.i32[0] ^ v88.i32[1]) & 1) != 0)
  {

    sub_1AAF81D60(a1 + 1, v226, v52, v89, a5, v69, a7 & 1, v72, v110, v224, v208, a12, a13, v51, v80, a16, a17, v39, v81, a20, v70, v71, a23, a24, v83, v84);
  }
}

void *sub_1AAF83960(uint64_t a1, uint64_t a2, int a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, char a15)
{
  v87 = a8;
  v19 = a7;
  v94 = a3;
  v88 = a1;
  v26 = sub_1AAF8D7E4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = qword_1ED9B59F0;
  v96 = a5;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1ED9C36C8;
  sub_1AAF8FE04();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v32 = *(v27 + 8);
  v89 = v29;
  v33 = v26;
  v92 = v27 + 8;
  v91 = v32;
  v32(v29, v26);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  v36 = v34 + 16;
  *(v34 + 24) = v35;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x78ABBF7B5AEAE776;
  if (__OFADD__(a2, 4))
  {
    __break(1u);
LABEL_41:
    a6 = sub_1AAD6958C(0, a6[2] + 1, 1, a6);
    goto LABEL_35;
  }

  v85 = a2 + 4;
  v86 = a2;
  v37 = a4;
  v38 = (a4)(a9);
  v40 = v39;
  v41 = a6;
  v42 = a6;
  v43 = v19;
  *v44.i64 = sub_1AAF424D8(v42, v19, v38, a11, a12);
  v97 = v44;
  v45 = v87;
  v46 = sub_1AAF424D8(v87, a15, v40, a13, a14);
  v47.i64[0] = v97.i64[0];
  *&v47.i64[1] = v46;
  v97 = v47;
  v48 = v37(a10);
  v50 = v49;
  *&v51 = sub_1AAF424D8(v41, v43, v48, a11, a12);
  *v93 = v51;
  v52.f64[0] = sub_1AAF424D8(v45, a15, v50, a13, a14);
  *v53.i64 = v93[0];
  v84 = v52;
  v53.i64[1] = *&v52.f64[0];
  v95 = v53;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  v54 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v97, vnegq_f64(v52)));
  if ((vandq_s8(vdupq_laneq_s64(v54, 1), v54).u64[0] & 0x8000000000000000) != 0)
  {
    v83 = v26;
    swift_beginAccess();
    v55 = sub_1AAD6945C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1AAD6945C((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    *&v55[16 * v57 + 32] = v97;
    *v36 = v55;
    swift_endAccess();
    v33 = v83;
  }

  else
  {
    swift_beginAccess();
    *v36 = MEMORY[0x1E69E7CC0];
  }

  v58 = v96;

  v81 = v41;
  v59 = v94;
  sub_1AAF81D60(1, v90, v88, v86, v85, v34, v94 & 1, v37, a9, v97, a10, v95, 0.00137046525, 20.0, a9, a10, 0.190983006, v58, v81, v43, a11, a12, v45, a15, a13, a14);

  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  v61 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v95, vnegq_f64(v60)));
  if ((vandq_s8(vdupq_laneq_s64(v61, 1), v61).u64[0] & 0x8000000000000000) != 0)
  {
    v26 = v89;
    if (v59)
    {
      swift_beginAccess();
      a4 = *v36;
      v66 = (*v36 + 16);
      if (*v66 >= 2uLL)
      {
        v67 = 2 * *v66;
        v68 = *&v66[v67];
        v69 = vsubq_f64(*&a4[v67 * 8], v68);
        if (fabs(((v93[0] - v68.f64[0]) * v69.f64[0] + vmuld_lane_f64(v84.f64[0] - *&v66[v67 + 1], v69, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v69, v69))) * sqrt((v93[0] - v68.f64[0]) * (v93[0] - v68.f64[0]) + (v84.f64[0] - *&v66[v67 + 1]) * (v84.f64[0] - *&v66[v67 + 1]))) + 1.0) > 0.190983006)
        {
          swift_beginAccess();
          v70 = *(v34 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1AAD6958C(0, v70[2] + 1, 1, v70);
          }

          v72 = v70[2];
          v71 = v70[3];
          if (v72 >= v71 >> 1)
          {
            v70 = sub_1AAD6958C((v71 > 1), v72 + 1, 1, v70);
          }

          v70[2] = v72 + 1;
          v70[v72 + 4] = a4;

          *(v34 + 24) = v70;
          a4 = MEMORY[0x1E69E7CC0];
          *(v34 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();
        }
      }

      swift_beginAccess();
    }

    else
    {
      swift_beginAccess();
      a4 = *v36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = sub_1AAD6945C(0, *(a4 + 2) + 1, 1, a4);
    }

    v74 = *(a4 + 2);
    v73 = *(a4 + 3);
    v75 = v95;
    if (v74 >= v73 >> 1)
    {
      v80 = sub_1AAD6945C((v73 > 1), v74 + 1, 1, a4);
      v75 = v95;
      a4 = v80;
    }

    *(a4 + 2) = v74 + 1;
    *&a4[16 * v74 + 32] = v75;
  }

  else
  {
    swift_beginAccess();
    v62 = *v36;
    v26 = v89;
    if (*(*v36 + 16))
    {
      v63 = *(v34 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1AAD6958C(0, v63[2] + 1, 1, v63);
      }

      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        v63 = sub_1AAD6958C((v64 > 1), v65 + 1, 1, v63);
      }

      v63[2] = v65 + 1;
      v63[v65 + 4] = v62;

      *(v34 + 24) = v63;
    }

    else
    {
    }

    a4 = MEMORY[0x1E69E7CC0];
  }

  *v36 = a4;
  swift_endAccess();
  swift_beginAccess();
  if (!*(a4 + 2))
  {

    a6 = *(v34 + 24);
    goto LABEL_39;
  }

  a6 = *(v34 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v77 = a6[2];
  v76 = a6[3];
  if (v77 >= v76 >> 1)
  {
    a6 = sub_1AAD6958C((v76 > 1), v77 + 1, 1, a6);
  }

  a6[2] = v77 + 1;
  a6[v77 + 4] = a4;

  *(v34 + 24) = a6;
LABEL_39:
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  v78 = qword_1ED9C36C8;
  sub_1AAF8FDF4();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v91(v26, v33);

  return a6;
}

void sub_1AAF84258(char a1, char a2, uint64_t a3, char a4, double (*a5)(double), double a6, double a7)
{
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v56 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = a5(v23);
    v25 = a5(v12 + v23);
    v26 = (v25 - a5(v23 - v12)) / (v12 + v12);
    v27 = COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v27)
    {
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AAD690CC(0, *(v56 + 2) + 1, 1, v56);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v56 = v28;
      if (v30 >= v29 >> 1)
      {
        v56 = sub_1AAD690CC((v29 > 1), v30 + 1, 1, v28);
      }

      *(v56 + 2) = v30 + 1;
      v14 = &v56[16 * v30];
      *(v14 + 4) = v24;
      *(v14 + 5) = v26;
    }

    ++v11;
  }

  while (v11 != 200);
  v57 = v56;
  if (*(v56 + 2) <= 1uLL)
  {

    return;
  }

  sub_1AAF7F0D4(&v57);
  v31 = *(v57 + 2);
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = a7;
  v33 = a6;
  v34 = v31 - 1;
  if (v31 == 1)
  {
LABEL_36:

    if (a1)
    {
      if (v32 <= 0.0 || v33 >= 0.0)
      {
        v40 = a2;
        if (v32 <= 0.0 || v33 < 0.0 || v33 >= v32 * 0.5)
        {
          if (v32 <= 0.0 && v33 < 0.0 && v33 * 0.5 < v32)
          {
            v32 = -v33;
          }
        }

        else
        {
          v33 = -v32;
        }

LABEL_44:
        if ((v40 & 1) == 0)
        {
          goto LABEL_63;
        }

        v41 = (v32 - v33) / v7;
        if (v41 > 0.1 && v41 < 1.2)
        {
          if (a4)
          {
            if (v33 == 0.0)
            {
LABEL_62:
              v32 = v7;
LABEL_63:
              v46 = v33 > v32;
              if (v33 >= v32)
              {
                return;
              }

              goto LABEL_64;
            }

LABEL_58:
            if (v32 == 0.0)
            {
              v46 = -v7 > v32;
              if (-v7 >= v32)
              {
                return;
              }
            }

            else
            {
              v49 = (v32 + v33) * 0.5;
              v50 = v49 - v7 * 0.5;
              v51 = v49 + v7 * 0.5;
              v46 = v50 > v51;
              if (v50 >= v51)
              {
                return;
              }
            }

            goto LABEL_64;
          }
        }

        else if (a4)
        {
          v43 = (v32 - v33) * 0.05;
          v44 = v33 - v43;
          v45 = v32 + v43;
          v46 = v44 > v45;
          if (v44 >= v45)
          {
            return;
          }

LABEL_64:
          if (v46)
          {
            goto LABEL_82;
          }

          return;
        }

        v7 = v7 / *&a3;
        if (v33 == 0.0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (fabs(v32 / (v32 - v33) + -0.5) < 0.15)
      {
        if (v32 < -v33)
        {
          v32 = -v33;
        }

        v33 = -v32;
      }
    }

    v40 = a2;
    goto LABEL_44;
  }

  v35 = 0;
  v36 = v57 + 32;
  v37 = (v57 + 32);
  while (1)
  {
    v33 = *v37;
    v32 = *&v36[16 * v34];
    v38 = (v32 - *v37) / v7;
    if (v38 > 100000000.0)
    {
      ++v35;
LABEL_31:
      --v34;
      goto LABEL_32;
    }

    if (v35 >= v31)
    {
      goto LABEL_79;
    }

    v39 = &v36[16 * v34];
    if (fabs(*&v36[16 * v35 + 8]) / v38 <= 10.0)
    {
      if (fabs(*(v39 + 1)) / v38 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v35;
    if (fabs(*(v39 + 1)) / v38 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v35 >= v31)
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_78;
    }

    v37 = &v36[16 * v35];
    if (v35 >= v34)
    {
      v32 = a7;
      v33 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_1AAF84760(char a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, double), double a6, double a7)
{
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v62 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = (a5)(v23);
    v26 = v25;
    v27 = v25;
    v28 = a5(v24, v12 + v23);
    v30 = v29;
    a5(v28, v23 - v12);
    v32 = (v30 - v31) / (v12 + v12);
    v33 = COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v33)
    {
      v34 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AAD690CC(0, *(v62 + 2) + 1, 1, v62);
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      v62 = v34;
      if (v36 >= v35 >> 1)
      {
        v62 = sub_1AAD690CC((v35 > 1), v36 + 1, 1, v34);
      }

      *(v62 + 2) = v36 + 1;
      v14 = &v62[16 * v36];
      *(v14 + 4) = v26;
      *(v14 + 5) = v32;
    }

    ++v11;
  }

  while (v11 != 200);
  v63 = v62;
  if (*(v62 + 2) <= 1uLL)
  {

    return;
  }

  sub_1AAF7F0D4(&v63);
  v37 = *(v63 + 2);
  if (!v37)
  {
    goto LABEL_81;
  }

  v38 = a7;
  v39 = a6;
  v40 = v37 - 1;
  if (v37 == 1)
  {
LABEL_36:

    if (a1)
    {
      if (v38 <= 0.0 || v39 >= 0.0)
      {
        v46 = a2;
        if (v38 <= 0.0 || v39 < 0.0 || v39 >= v38 * 0.5)
        {
          if (v38 <= 0.0 && v39 < 0.0 && v39 * 0.5 < v38)
          {
            v38 = -v39;
          }
        }

        else
        {
          v39 = -v38;
        }

LABEL_44:
        if ((v46 & 1) == 0)
        {
          goto LABEL_63;
        }

        v47 = (v38 - v39) / v7;
        if (v47 > 0.1 && v47 < 1.2)
        {
          if (a4)
          {
            if (v39 == 0.0)
            {
LABEL_62:
              v38 = v7;
LABEL_63:
              v52 = v39 > v38;
              if (v39 >= v38)
              {
                return;
              }

              goto LABEL_64;
            }

LABEL_58:
            if (v38 == 0.0)
            {
              v52 = -v7 > v38;
              if (-v7 >= v38)
              {
                return;
              }
            }

            else
            {
              v55 = (v38 + v39) * 0.5;
              v56 = v55 - v7 * 0.5;
              v57 = v55 + v7 * 0.5;
              v52 = v56 > v57;
              if (v56 >= v57)
              {
                return;
              }
            }

            goto LABEL_64;
          }
        }

        else if (a4)
        {
          v49 = (v38 - v39) * 0.05;
          v50 = v39 - v49;
          v51 = v38 + v49;
          v52 = v50 > v51;
          if (v50 >= v51)
          {
            return;
          }

LABEL_64:
          if (v52)
          {
            goto LABEL_82;
          }

          return;
        }

        v7 = v7 / *&a3;
        if (v39 == 0.0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (fabs(v38 / (v38 - v39) + -0.5) < 0.15)
      {
        if (v38 < -v39)
        {
          v38 = -v39;
        }

        v39 = -v38;
      }
    }

    v46 = a2;
    goto LABEL_44;
  }

  v41 = 0;
  v42 = v63 + 32;
  v43 = (v63 + 32);
  while (1)
  {
    v39 = *v43;
    v38 = *&v42[16 * v40];
    v44 = (v38 - *v43) / v7;
    if (v44 > 100000000.0)
    {
      ++v41;
LABEL_31:
      --v40;
      goto LABEL_32;
    }

    if (v41 >= v37)
    {
      goto LABEL_79;
    }

    v45 = &v42[16 * v40];
    if (fabs(*&v42[16 * v41 + 8]) / v44 <= 10.0)
    {
      if (fabs(*(v45 + 1)) / v44 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v41;
    if (fabs(*(v45 + 1)) / v44 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v41 >= v37)
    {
      break;
    }

    if (v40 >= v37)
    {
      goto LABEL_78;
    }

    v43 = &v42[16 * v41];
    if (v41 >= v40)
    {
      v38 = a7;
      v39 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1AAF84C68(double (*a1)(double), double a2)
{
  v4 = 0;
  v5 = a2 + a2;
  v6 = a2 * 3.0;
  while (1)
  {
    v7 = *(&unk_1F1FCEEA8 + v4 + 32);
    v8 = a1(v7 + a2);
    if (vabdd_f64(v8, a1(v7)) >= 0.000001)
    {
      break;
    }

    v9 = a1(v7 + v5);
    if (vabdd_f64(v9, a1(v7)) >= 0.000001)
    {
      break;
    }

    v10 = a1(v7 + v6);
    if (vabdd_f64(v10, a1(v7)) >= 0.000001)
    {
      break;
    }

    v11 = a1(v7 + a2 * 4.0);
    if (vabdd_f64(v11, a1(v7)) >= 0.000001)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AAF84DA0(double (*a1)(double), double a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 - 1;
  if (__OFSUB__(a5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v5;
  __x = a3 / a2;
  v24 = pow(a3 / a2, 2.0 / v5);
  if (a5 < 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v10 = pow(__x, i / v25) * a2;
      v11 = v10 / v24;
      v12 = v24 * v10;
      if (v10 / v24 > v24 * v10)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = a1(v11 + 0.292048924);
      v14 = a1(0.292048924);
      if (vabdd_f64(v13, v14) >= 1.0e-10)
      {
        v15 = a1(v12 + 0.292048924);
        v16 = a1(0.292048924);
        if (vabdd_f64(v15, v16) >= 1.0e-10)
        {
          v17 = v13 - v14;
          if (v17 * (v15 - v16) >= 0.0)
          {
            continue;
          }

          v18 = 40;
          while (1)
          {
            v19 = (v12 + v11) * 0.5;
            v20 = a1(v19 + 0.292048924);
            v21 = a1(0.292048924);
            if (vabdd_f64(v20, v21) < 1.0e-10)
            {
              break;
            }

            v22 = v20 - v21;
            v23 = v17 * v22 < 0.0;
            if (v17 * v22 < 0.0)
            {
              v12 = (v12 + v11) * 0.5;
            }

            else
            {
              v17 = v22;
            }

            if (!v23)
            {
              v11 = v19;
            }

            if (!--v18)
            {
              goto LABEL_5;
            }
          }

          v11 = (v12 + v11) * 0.5;
        }

        else
        {
          v11 = v12;
        }
      }

      if ((sub_1AAF84C68(a1, v11) & 1) != 0 && (sub_1AAF84C68(a1, v11 * 0.5) & 1) == 0)
      {
        return;
      }

LABEL_5:
      ;
    }
  }
}

void sub_1AAF84F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 2 || v2 != *(a2 + 16))
  {
    goto LABEL_62;
  }

  if (v2 < 4)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_11:
    v8 = v2 - v4;
    v9 = (a1 + 8 * v4 + 32);
    do
    {
      v10 = *v9++;
      v5 = v5 + v10;
      --v8;
    }

    while (v8);
    goto LABEL_13;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = (a1 + 48);
  v5 = 0.0;
  v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
    v6 += 4;
    v7 -= 4;
  }

  while (v7);
  if (v2 != v4)
  {
    goto LABEL_11;
  }

LABEL_13:
  v11 = v2;
  if (v2 > 3)
  {
    v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (a2 + 48);
    v13 = 0.0;
    v15 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
      v14 += 4;
      v15 -= 4;
    }

    while (v15);
    if (v2 == v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
  }

  v16 = v2 - v12;
  v17 = (a2 + 8 * v12 + 32);
  do
  {
    v18 = *v17++;
    v13 = v13 + v18;
    --v16;
  }

  while (v16);
LABEL_20:
  v19 = (a1 + 32);
  v20 = (a2 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v22 = v5 / v11;
  sub_1AACEF664(0, v2, 0);
  v23 = 0;
  v24 = v68;
  v25 = *(v68 + 16);
  v26 = v25;
  do
  {
    v27 = v19[v23];
    v69 = v24;
    v28 = *(v24 + 24);
    v29 = v26 + 1;
    if (v26 >= v28 >> 1)
    {
      sub_1AACEF664((v28 > 1), v26 + 1, 1);
      v24 = v69;
    }

    ++v23;
    *(v24 + 16) = v29;
    *(v24 + 8 * v26++ + 32) = (v27 - v22) * (v27 - v22);
  }

  while (v2 != v23);
  v30 = v2 + v25;
  if (v2 + v25 <= 3)
  {
    v31 = 0;
    v32 = 0.0;
LABEL_29:
    v35 = v29 - v31;
    v36 = (v24 + 8 * v31 + 32);
    do
    {
      v37 = *v36++;
      v32 = v32 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_31;
  }

  v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v24 + 48);
  v32 = 0.0;
  v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_29;
  }

LABEL_31:

  v38 = v13 / v11;
  sub_1AACEF664(0, v2, 0);
  v39 = 0;
  v40 = v21;
  while (v2 != v39)
  {
    v41 = v19[v39];
    v42 = v20[v39];
    v70 = v40;
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1AACEF664((v43 > 1), v44 + 1, 1);
      v40 = v70;
    }

    ++v39;
    *(v40 + 16) = v44 + 1;
    *(v40 + 8 * v44 + 32) = (v41 - v22) * (v42 - v38);
    if (v2 == v39)
    {
      v45 = *(v40 + 16);
      if (v45)
      {
        if (v45 <= 3)
        {
          v46 = 0;
          v47 = 0.0;
          goto LABEL_43;
        }

        v46 = v45 & 0x7FFFFFFFFFFFFFFCLL;
        v48 = (v40 + 48);
        v47 = 0.0;
        v49 = v45 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = v47 + *(v48 - 2) + *(v48 - 1) + *v48 + v48[1];
          v48 += 4;
          v49 -= 4;
        }

        while (v49);
        if (v45 != v46)
        {
LABEL_43:
          v50 = v45 - v46;
          v51 = (v40 + 8 * v46 + 32);
          do
          {
            v52 = *v51++;
            v47 = v47 + v52;
            --v50;
          }

          while (v50);
        }
      }

      else
      {
        v47 = 0.0;
      }

      v53 = v47 / v32;
      v54 = v38 - v22 * v53;
      sub_1AACEF664(0, v2, 0);
      v55 = v21;
      do
      {
        if (!v2)
        {
          goto LABEL_61;
        }

        v56 = *v19;
        v57 = *v20;
        v71 = v55;
        v59 = *(v55 + 16);
        v58 = *(v55 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1AACEF664((v58 > 1), v59 + 1, 1);
          v55 = v71;
        }

        *(v55 + 16) = v59 + 1;
        *(v55 + 8 * v59 + 32) = (v57 - v53 * v56 - v54) * (v57 - v53 * v56 - v54);
        ++v20;
        ++v19;
        --v2;
      }

      while (v2);
      v60 = *(v55 + 16);
      if (v60)
      {
        if (v60 <= 3)
        {
          v61 = 0;
          v62 = 0.0;
          goto LABEL_57;
        }

        v61 = v60 & 0x7FFFFFFFFFFFFFFCLL;
        v63 = (v55 + 48);
        v62 = 0.0;
        v64 = v60 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v62 + *(v63 - 2) + *(v63 - 1) + *v63 + v63[1];
          v63 += 4;
          v64 -= 4;
        }

        while (v64);
        if (v60 != v61)
        {
LABEL_57:
          v65 = v60 - v61;
          v66 = (v55 + 8 * v61 + 32);
          do
          {
            v67 = *v66++;
            v62 = v62 + v67;
            --v65;
          }

          while (v65);
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_1AAF8545C(double (*a1)(void))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v69 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v14 = v1();
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v69;
      }

      else
      {
        v15 = sub_1AAD67B50(0, *(v69 + 16) + 1, 1, v69);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1AAD67B50((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v69 = v15;
      *&v15[8 * v17 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_1AAD67B50((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      *&v3[8 * v19 + 32] = v14;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v69 + 16) < 0x14uLL || (sub_1AAF84F9C(v69, v3), v74 = v21, v22 > 0.001))
  {

LABEL_24:

    return;
  }

  v23 = v20;
  v24 = 0;
  v68 = 1;
  v25 = 1;
LABEL_27:
  if (v25)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24 - 1;
  }

  v71 = __exp10(v26);
  v27 = 0;
  v70 = v26;
  while (2)
  {
    v28 = 5;
    if (v27 > 5)
    {
      v28 = v27;
    }

    v72 = v28;
    while (1)
    {
      if (v27 == v72)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v29 = v71 * *(&unk_1F1FCEEE8 + v27 + 4);
      v30 = v29 * 0.7;
      v31 = v29 * 0.9;
      if (v29 * 0.7 > v29 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v31 - v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v32 = 0;
      v73 = v27 + 1;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v35 = v4 - 0x61C8864680B583EBLL;
        v36 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v37 = (0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31);
        if (0x20000000000001 * v37 >= 0x1FFFFFFFFFF801)
        {
          v41 = (v37 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v38 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v35 -= 0x61C8864680B583EBLL;
            v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27));
            v40 = v39 ^ (v39 >> 31);
            v38 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v40 < 0x1FFFFFFFFFF801);
          v41 = (v40 * 0x20000000000001uLL) >> 64;
        }

        v4 = v35;
        v42 = v30 + (v31 - v30) * vcvtd_n_f64_u64(v41, 0x35uLL);
        if (v41 == 0x20000000000000)
        {
          v43 = v31;
        }

        else
        {
          v43 = v42;
        }

        v44 = (v1)(v43);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v45 = v23 + v74 * v43;
          v34 = vabdd_f64(v45, v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v45) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v33 = sub_1AAD67B50(0, *(v33 + 2) + 1, 1, v33);
            }

            v48 = *(v33 + 2);
            v50 = *(v33 + 3);
            v49 = v48 + 1;
            if (v48 >= v50 >> 1)
            {
              v33 = sub_1AAD67B50((v50 > 1), v48 + 1, 1, v33);
            }

            v34 = v34 / v45;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v33 = sub_1AAD67B50(0, *(v33 + 2) + 1, 1, v33);
            }

            v48 = *(v33 + 2);
            v47 = *(v33 + 3);
            v49 = v48 + 1;
            if (v48 >= v47 >> 1)
            {
              v33 = sub_1AAD67B50((v47 > 1), v48 + 1, 1, v33);
            }
          }

          *(v33 + 2) = v49;
          *&v33[8 * v48 + 32] = v34;
          v1 = a1;
        }

        ++v32;
      }

      while (v32 != 100);
      if (*(v33 + 2) >= 0x32uLL)
      {
        break;
      }

      v27 = v73;
      v24 = v70;
      if (v73 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AADB8144(v33);
    }

    v51 = *(v33 + 2);
    v78[0] = (v33 + 32);
    v78[1] = v51;
    v52 = sub_1AAF90464();
    if (v52 >= v51)
    {
      if (v51 < 2)
      {
        goto LABEL_69;
      }

      v60 = -1;
      v57 = v33 + 32;
      v61 = v33 + 32;
      for (i = 1; i != v51; ++i)
      {
        v63 = *&v33[8 * i + 32];
        v64 = v60;
        v65 = v61;
        do
        {
          v66 = *v65;
          if (v63 >= *v65)
          {
            break;
          }

          *v65 = v63;
          v65[1] = v66;
          --v65;
        }

        while (!__CFADD__(v64++, 1));
        v61 += 8;
        --v60;
      }
    }

    else
    {
      v53 = v52;
      v54 = (v51 >> 1);
      v55 = MEMORY[0x1E69E7CC0];
      if (v51 >= 2)
      {
        v55 = sub_1AAF8F8A4();
        v54 = (v51 >> 1);
        *(v55 + 16) = v51 >> 1;
      }

      v76[0] = (v55 + 32);
      v76[1] = v54;
      v56 = v55;
      sub_1AADA0140(v76, v77, v78, v53);
      *(v56 + 16) = 0;

LABEL_69:
      v57 = v33 + 32;
    }

    v58 = *(v33 + 2);
    if (!v58)
    {
      goto LABEL_87;
    }

    v59 = *&v57[(4 * v58) & 0xFFFFFFFFFFFFFFF8];

    if ((v68 & (v59 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v59 <= 0.005)
    {
      v68 = 0;
      v27 = v73;
      v24 = v70;
      if (v73 != 5)
      {
        continue;
      }

      v68 = 0;
LABEL_26:
      v25 = 0;
      if (v24 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

void sub_1AAF85BB0(double (*a1)(double))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v72 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v14 = v1(-v13);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v72;
      }

      else
      {
        v15 = sub_1AAD67B50(0, *(v72 + 16) + 1, 1, v72);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1AAD67B50((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v72 = v15;
      *&v15[8 * v17 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_1AAD67B50((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      *&v3[8 * v19 + 32] = v14;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v72 + 16) <= 0x13uLL || (sub_1AAF84F9C(v72, v3), v76 = v21, v22 > 0.001))
  {

LABEL_24:

    return;
  }

  v23 = v20;
  v24 = 0;
  v70 = 1;
  v25 = 1;
LABEL_27:
  v26 = v24 - 1;
  v27 = (v25 & 1) == 0;
  v28 = 4;
  if (v27)
  {
    v28 = v26;
  }

  v71 = v28;
  v73 = __exp10(v28);
  v29 = 0;
  while (2)
  {
    v30 = 5;
    if (v29 > 5)
    {
      v30 = v29;
    }

    v74 = v30;
    while (1)
    {
      if (v29 == v74)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v31 = v73 * *(&unk_1F1FCEF30 + v29 + 4);
      v32 = v31 * 0.7;
      v33 = v31 * 0.9;
      if (v31 * 0.7 > v31 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v33 - v32)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v34 = 0;
      v75 = v29 + 1;
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v37 = v4 - 0x61C8864680B583EBLL;
        v38 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v39 = (0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31);
        if (0x20000000000001 * v39 >= 0x1FFFFFFFFFF801)
        {
          v43 = (v39 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v40 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v37 -= 0x61C8864680B583EBLL;
            v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
            v42 = v41 ^ (v41 >> 31);
            v40 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v42 < 0x1FFFFFFFFFF801);
          v43 = (v42 * 0x20000000000001uLL) >> 64;
        }

        v4 = v37;
        v44 = v32 + (v33 - v32) * vcvtd_n_f64_u64(v43, 0x35uLL);
        if (v43 == 0x20000000000000)
        {
          v45 = v33;
        }

        else
        {
          v45 = v44;
        }

        v46 = v1(-v45);
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v47 = v23 + v76 * v45;
          v36 = vabdd_f64(v47, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v47) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_1AAD67B50(0, *(v35 + 2) + 1, 1, v35);
            }

            v50 = *(v35 + 2);
            v52 = *(v35 + 3);
            v51 = v50 + 1;
            if (v50 >= v52 >> 1)
            {
              v35 = sub_1AAD67B50((v52 > 1), v50 + 1, 1, v35);
            }

            v36 = v36 / v47;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_1AAD67B50(0, *(v35 + 2) + 1, 1, v35);
            }

            v50 = *(v35 + 2);
            v49 = *(v35 + 3);
            v51 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              v35 = sub_1AAD67B50((v49 > 1), v50 + 1, 1, v35);
            }
          }

          *(v35 + 2) = v51;
          *&v35[8 * v50 + 32] = v36;
          v1 = a1;
        }

        ++v34;
      }

      while (v34 != 100);
      if (*(v35 + 2) > 0x31uLL)
      {
        break;
      }

      v29 = v75;
      if (v75 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AADB8144(v35);
    }

    v53 = *(v35 + 2);
    v80[0] = (v35 + 32);
    v80[1] = v53;
    v54 = sub_1AAF90464();
    if (v54 >= v53)
    {
      if (v53 < 2)
      {
        goto LABEL_69;
      }

      v62 = -1;
      v59 = v35 + 32;
      v63 = v35 + 32;
      for (i = 1; i != v53; ++i)
      {
        v65 = *&v35[8 * i + 32];
        v66 = v62;
        v67 = v63;
        do
        {
          v68 = *v67;
          if (v65 >= *v67)
          {
            break;
          }

          *v67 = v65;
          v67[1] = v68;
          --v67;
        }

        while (!__CFADD__(v66++, 1));
        v63 += 8;
        --v62;
      }
    }

    else
    {
      v55 = v54;
      v56 = (v53 >> 1);
      v57 = MEMORY[0x1E69E7CC0];
      if (v53 >= 2)
      {
        v57 = sub_1AAF8F8A4();
        v56 = (v53 >> 1);
        *(v57 + 16) = v53 >> 1;
      }

      v78[0] = (v57 + 32);
      v78[1] = v56;
      v58 = v57;
      sub_1AADA0140(v78, v79, v80, v55);
      *(v58 + 16) = 0;

LABEL_69:
      v59 = v35 + 32;
    }

    v60 = *(v35 + 2);
    if (!v60)
    {
      goto LABEL_87;
    }

    v61 = *&v59[(4 * v60) & 0xFFFFFFFFFFFFFFF8];

    if ((v70 & (v61 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v61 <= 0.005)
    {
      v70 = 0;
      v29 = v75;
      if (v75 != 5)
      {
        continue;
      }

      v70 = 0;
LABEL_26:
      v25 = 0;
      v24 = v71;
      if (v71 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

void sub_1AAF86304(double (*a1)(__n128), __n128 a2, double a3)
{
  v3 = a3 - a2.n128_f64[0];
  if (COERCE__INT64(fabs(a3 - a2.n128_f64[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v5 = a2.n128_f64[0];
    v7 = 0;
    v8 = 0;
    v9 = 0x78ABBF7B5AEAE776;
    while (1)
    {
      v10 = v9 - 0x61C8864680B583EBLL;
      v11 = 0xBF58476D1CE4E5B9 * ((v9 - 0x61C8864680B583EBLL) ^ ((v9 - 0x61C8864680B583EBLL) >> 30));
      v12 = (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31);
      if (0x20000000000001 * v12 >= 0x1FFFFFFFFFF801)
      {
        v16 = (v12 * 0x20000000000001uLL) >> 64;
      }

      else
      {
        v13 = v9 + 0x3C6EF372FE94F82ALL;
        do
        {
          v10 -= 0x61C8864680B583EBLL;
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
          v15 = v14 ^ (v14 >> 31);
          v13 -= 0x61C8864680B583EBLL;
        }

        while (0x20000000000001 * v15 < 0x1FFFFFFFFFF801);
        v16 = (v15 * 0x20000000000001uLL) >> 64;
      }

      v9 = v10;
      a2.n128_f64[0] = v3 * vcvtd_n_f64_u64(v16, 0x35uLL) + v5;
      if (v16 == 0x20000000000000)
      {
        a2.n128_f64[0] = a3;
      }

      if ((COERCE_UNSIGNED_INT64(a1(a2)) & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && __OFADD__(v7++, 1))
      {
        break;
      }

      if (++v8 == 100)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AAF864AC(double (*a1)(__n128), __n128 a2)
{
  a2.n128_u64[0] = 0xC0F86A0000000000;
  sub_1AAF86304(a1, a2, 100000.0);
  if (v3.n128_f64[0] <= 0.1)
  {
    if (*&qword_1F1FCEF98 < 0.0)
    {
      goto LABEL_17;
    }

    v3.n128_f64[0] = -*&qword_1F1FCEF98;
    sub_1AAF86304(a1, v3, *&qword_1F1FCEF98);
    if (v4.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFA0 < 0.0)
    {
      goto LABEL_17;
    }

    v4.n128_f64[0] = -*&qword_1F1FCEFA0;
    sub_1AAF86304(a1, v4, *&qword_1F1FCEFA0);
    if (v5.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFA8 < 0.0)
    {
      goto LABEL_17;
    }

    v5.n128_f64[0] = -*&qword_1F1FCEFA8;
    sub_1AAF86304(a1, v5, *&qword_1F1FCEFA8);
    if (v6.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFB0 < 0.0)
    {
      goto LABEL_17;
    }

    v6.n128_f64[0] = -*&qword_1F1FCEFB0;
    sub_1AAF86304(a1, v6, *&qword_1F1FCEFB0);
    if (v7.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFB8 < 0.0)
    {
      goto LABEL_17;
    }

    v7.n128_f64[0] = -*&qword_1F1FCEFB8;
    sub_1AAF86304(a1, v7, *&qword_1F1FCEFB8);
    if (v8.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFC0 < 0.0)
    {
      goto LABEL_17;
    }

    v8.n128_f64[0] = -*&qword_1F1FCEFC0;
    sub_1AAF86304(a1, v8, *&qword_1F1FCEFC0);
    if (v9.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFC8 < 0.0)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v9.n128_f64[0] = -*&qword_1F1FCEFC8;
    sub_1AAF86304(a1, v9, *&qword_1F1FCEFC8);
  }
}

uint64_t sub_1AAF86680(uint64_t (*a1)(uint64_t, double), double a2)
{
  v4 = 0;
  v5 = a2 + a2;
  v6 = a2 * 3.0;
  while (1)
  {
    v7 = *(&unk_1F1FCEFD0 + v4 + 32);
    v8 = (a1)(v7 + a2);
    v10 = v9;
    v11 = a1(v8, v7);
    if (vabdd_f64(v10, v12) >= 0.000001)
    {
      break;
    }

    v13 = a1(v11, v7 + v5);
    v15 = v14;
    v16 = a1(v13, v7);
    if (vabdd_f64(v15, v17) >= 0.000001)
    {
      break;
    }

    v18 = a1(v16, v7 + v6);
    v20 = v19;
    v21 = a1(v18, v7);
    if (vabdd_f64(v20, v22) >= 0.000001)
    {
      break;
    }

    v23 = a1(v21, v7 + a2 * 4.0);
    v25 = v24;
    a1(v23, v7);
    if (vabdd_f64(v25, v26) >= 0.000001)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AAF867B8(void (*a1)(void))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v73 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v1();
    v15 = v14;
    if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v73;
      }

      else
      {
        v16 = sub_1AAD67B50(0, *(v73 + 16) + 1, 1, v73);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1AAD67B50((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v73 = v16;
      *&v16[8 * v18 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v20 = *(v3 + 2);
      v19 = *(v3 + 3);
      if (v20 >= v19 >> 1)
      {
        v3 = sub_1AAD67B50((v19 > 1), v20 + 1, 1, v3);
      }

      *(v3 + 2) = v20 + 1;
      *&v3[8 * v20 + 32] = v15;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v73 + 16) <= 0x13uLL || (sub_1AAF84F9C(v73, v3), v77 = v22, v23 > 0.001))
  {

LABEL_24:

    return;
  }

  v24 = v21;
  v25 = 0;
  v71 = 1;
  v26 = 1;
LABEL_27:
  v27 = v25 - 1;
  v28 = (v26 & 1) == 0;
  v29 = 4;
  if (v28)
  {
    v29 = v27;
  }

  v72 = v29;
  v74 = __exp10(v29);
  v30 = 0;
  while (2)
  {
    v31 = 5;
    if (v30 > 5)
    {
      v31 = v30;
    }

    v75 = v31;
    while (1)
    {
      if (v30 == v75)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v32 = v74 * *(&unk_1F1FCF010 + v30 + 4);
      v33 = v32 * 0.7;
      v34 = v32 * 0.9;
      if (v32 * 0.7 > v32 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v34 - v33)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v35 = 0;
      v76 = v30 + 1;
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = v4 - 0x61C8864680B583EBLL;
        v39 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v40 = (0x94D049BB133111EBLL * (v39 ^ (v39 >> 27))) ^ ((0x94D049BB133111EBLL * (v39 ^ (v39 >> 27))) >> 31);
        if (0x20000000000001 * v40 >= 0x1FFFFFFFFFF801)
        {
          v44 = (v40 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v41 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v38 -= 0x61C8864680B583EBLL;
            v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
            v43 = v42 ^ (v42 >> 31);
            v41 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v43 < 0x1FFFFFFFFFF801);
          v44 = (v43 * 0x20000000000001uLL) >> 64;
        }

        v4 = v38;
        v45 = v33 + (v34 - v33) * vcvtd_n_f64_u64(v44, 0x35uLL);
        if (v44 == 0x20000000000000)
        {
          v46 = v34;
        }

        else
        {
          v46 = v45;
        }

        (v1)(v46);
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v48 = v24 + v77 * v46;
          v37 = vabdd_f64(v48, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v48) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_1AAD67B50(0, *(v36 + 2) + 1, 1, v36);
            }

            v51 = *(v36 + 2);
            v53 = *(v36 + 3);
            v52 = v51 + 1;
            if (v51 >= v53 >> 1)
            {
              v36 = sub_1AAD67B50((v53 > 1), v51 + 1, 1, v36);
            }

            v37 = v37 / v48;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_1AAD67B50(0, *(v36 + 2) + 1, 1, v36);
            }

            v51 = *(v36 + 2);
            v50 = *(v36 + 3);
            v52 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v36 = sub_1AAD67B50((v50 > 1), v51 + 1, 1, v36);
            }
          }

          *(v36 + 2) = v52;
          *&v36[8 * v51 + 32] = v37;
          v1 = a1;
        }

        ++v35;
      }

      while (v35 != 100);
      if (*(v36 + 2) > 0x31uLL)
      {
        break;
      }

      v30 = v76;
      if (v76 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1AADB8144(v36);
    }

    v54 = *(v36 + 2);
    v81[0] = (v36 + 32);
    v81[1] = v54;
    v55 = sub_1AAF90464();
    if (v55 >= v54)
    {
      if (v54 < 2)
      {
        goto LABEL_69;
      }

      v63 = -1;
      v60 = v36 + 32;
      v64 = v36 + 32;
      for (i = 1; i != v54; ++i)
      {
        v66 = *&v36[8 * i + 32];
        v67 = v63;
        v68 = v64;
        do
        {
          v69 = *v68;
          if (v66 >= *v68)
          {
            break;
          }

          *v68 = v66;
          v68[1] = v69;
          --v68;
        }

        while (!__CFADD__(v67++, 1));
        v64 += 8;
        --v63;
      }
    }

    else
    {
      v56 = v55;
      v57 = (v54 >> 1);
      v58 = MEMORY[0x1E69E7CC0];
      if (v54 >= 2)
      {
        v58 = sub_1AAF8F8A4();
        v57 = (v54 >> 1);
        *(v58 + 16) = v54 >> 1;
      }

      v79[0] = (v58 + 32);
      v79[1] = v57;
      v59 = v58;
      sub_1AADA0140(v79, v80, v81, v56);
      *(v59 + 16) = 0;

LABEL_69:
      v60 = v36 + 32;
    }

    v61 = *(v36 + 2);
    if (!v61)
    {
      goto LABEL_87;
    }

    v62 = *&v60[(4 * v61) & 0xFFFFFFFFFFFFFFF8];

    if ((v71 & (v62 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v62 <= 0.005)
    {
      v71 = 0;
      v30 = v76;
      if (v76 != 5)
      {
        continue;
      }

      v71 = 0;
LABEL_26:
      v26 = 0;
      v25 = v72;
      if (v72 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

uint64_t (*sub_1AAF86F08(uint64_t (*result)(__n128), __n128 a2, double a3))(__n128)
{
  v3 = a3 - a2.n128_f64[0];
  if (COERCE__INT64(fabs(a3 - a2.n128_f64[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = a2.n128_f64[0];
    v7 = 0;
    v8 = 0;
    v9 = 0x78ABBF7B5AEAE776;
    while (1)
    {
      v10 = v9 - 0x61C8864680B583EBLL;
      v11 = 0xBF58476D1CE4E5B9 * ((v9 - 0x61C8864680B583EBLL) ^ ((v9 - 0x61C8864680B583EBLL) >> 30));
      v12 = (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31);
      if (0x20000000000001 * v12 >= 0x1FFFFFFFFFF801)
      {
        v16 = (v12 * 0x20000000000001uLL) >> 64;
      }

      else
      {
        v13 = v9 + 0x3C6EF372FE94F82ALL;
        do
        {
          v10 -= 0x61C8864680B583EBLL;
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
          v15 = v14 ^ (v14 >> 31);
          v13 -= 0x61C8864680B583EBLL;
        }

        while (0x20000000000001 * v15 < 0x1FFFFFFFFFF801);
        v16 = (v15 * 0x20000000000001uLL) >> 64;
      }

      v9 = v10;
      a2.n128_f64[0] = v3 * vcvtd_n_f64_u64(v16, 0x35uLL) + v6;
      if (v16 == 0x20000000000000)
      {
        a2.n128_f64[0] = a3;
      }

      result = v4(a2);
      if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && __OFADD__(v7++, 1))
      {
        break;
      }

      if (++v8 == 100)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF870B8()
{
  sub_1AAF90694();
  MEMORY[0x1AC5992F0](*v0);
  sub_1AAF90014();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF87144(uint64_t a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992F0](*v1);
  sub_1AAF90014();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF87194(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1AC598C20);
  }

  return 0;
}

uint64_t sub_1AAF87224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  v8 = sub_1AAF8FC84();
  v10 = v9;
  v11 = swift_getAssociatedTypeWitness();
  (*(*(v11 - 8) + 16))(a2, v10, v11);
  return v8(&v13, 0);
}

void (*sub_1AAF87388(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_1AAF875DC(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(AssociatedTypeWitness - 8) + 16))(v14);
  (*(*(v10 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v10);
  return sub_1AAF87564;
}

void sub_1AAF87564(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1AAF875DC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_1AAF87224(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF87728@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1AAF8FE74();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1AAF877BC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  sub_1AAF87344(v8, a2);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1AAF878C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_1AAF90294();
  sub_1AAF8720C(a1);
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_1AAF879C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF87A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1AAD9EC60(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1AAF87AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v6 + 32))(&v11 - v8, a1, AssociatedTypeWitness, v7);
  sub_1AAF87AA0(v9, a2);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

double sub_1AAF87D70(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v26 = a4;
  v16 = sub_1AAF8DF14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  MinX = CGRectGetMinX(v27);
  (*(v17 + 104))(v19, *MEMORY[0x1E697E7D8], v16);
  v21 = sub_1AAF8DF04();
  (*(v17 + 8))(v19, v16);
  if (v21)
  {
    v22 = a5;
  }

  else
  {
    v22 = a3;
  }

  v25 = MinX - v22;
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  v24[1] = CGRectGetMinY(v28) - a2;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxX(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetMinX(v30);
  v31.origin.x = a6;
  v31.origin.y = a7;
  v31.size.width = a8;
  v31.size.height = a9;
  CGRectGetMaxY(v31);
  v32.origin.x = a6;
  v32.origin.y = a7;
  v32.size.width = a8;
  v32.size.height = a9;
  CGRectGetMinY(v32);
  return v25;
}

uint64_t sub_1AAF87F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1AACEF664((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF88038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AAD41488(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1AAD41488((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_1AAD6E644();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_1AACBB198(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AAF88134(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1B4();
  sub_1AAF8E1E4();
  sub_1AAF8E1D4();
  sub_1AAF8E1E4();
  sub_1AAF8E224();
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  return sub_1AAF8EA44();
}

uint64_t sub_1AAF882B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1AAF8F624();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = sub_1AAF8F634();
  if (*(a3 + 16))
  {
    sub_1AAF88038(a3);
    v8 = sub_1AAF8F644();
  }

  return v8;
}

unint64_t sub_1AAF88430(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD00000000000005CLL;
    v6 = 0xD0000000000000D8;
    if (a1 != 10)
    {
      v6 = 0xD000000000000044;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000049;
    if (a1 == 7)
    {
      v7 = 0xD00000000000004BLL;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000047;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000046;
    v2 = 0xD00000000000007BLL;
    if (a1 != 4)
    {
      v2 = 0xD000000000000030;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000004FLL;
    if (a1 == 1)
    {
      v3 = 0xD00000000000006ALL;
    }

    if (!a1)
    {
      v3 = 0xD00000000000007ALL;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

double sub_1AAF885A0(uint64_t a1)
{
  if (qword_1EB422C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1AAD7B1A0(&v6, a1);
  swift_endAccess();
  if (v2)
  {
    sub_1AAF886C4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AAF92AB0;
    v5 = sub_1AAF88430(a1);
    MEMORY[0x1AC5982F0](v5);

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0x203A737472616843;
    *(v4 + 40) = 0xE800000000000000;
    sub_1AAF90674();
  }

  return result;
}

void sub_1AAF886C4()
{
  if (!qword_1EB424C30)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424C30);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExternalWarning(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AAF8886C()
{
  result = qword_1EB427838[0];
  if (!qword_1EB427838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427838);
  }

  return result;
}

uint64_t sub_1AAF888C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF888FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AAF88944(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1AAF889A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (v8 <= v5)
  {
    v13 = *(v4 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_29;
  }

  v15 = v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_9;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) == -1)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 1;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      return v13 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v22 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
  if (v5 == v13)
  {
    return (*(v4 + 48))(v22);
  }

  v24 = (v22 + v10 + v11) & ~v11;
  if (v8 == v13)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *(v24 + v12);
  if (v25 < 2)
  {
    return 0;
  }

  return ((v25 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_1AAF88BE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  v15 = v13 + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v13 + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      *(v26 + v13) = a2 + 1;
    }
  }
}

uint64_t sub_1AAF88EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1AAF89730(sub_1AAF8A288, &v6, v7, a4);
}

uint64_t sub_1AAF88F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8CA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v56 - v14;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v16;
  if (*(a1 + 16))
  {
    v19 = *(v5 + 16);
    v20 = *(v5 + 80);
    v66 = *(a1 + 16);
    v21 = a1 + ((v20 + 32) & ~v20);
    v22 = v19;
    (v19)(&v56 - v16, v21, v4, v17);
    if (v66 == 1)
    {
      sub_1AAF8A2FC(0);
      v23 = v22;
      v25 = v24;
      v26 = v18;
      v27 = *(v24 + 48);
      v23(a2, v26, v4);
      (*(v5 + 32))(a2 + v27, v26, v4);
      return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
    }

    else
    {
      v57 = a2;
      v30 = *(v5 + 72);
      v65 = v21;
      v62 = v30;
      v31 = v61;
      v22(v61, (v21 + v30), v4);
      v32 = sub_1AACD6CE8();
      v60 = v18;
      v67 = v32;
      result = sub_1AAF8F564();
      v63 = v22;
      v64 = v5 + 16;
      if (result)
      {
        v33 = *(v5 + 32);
        v35 = v59;
        v34 = v60;
        v33(v59, v60, v4);
        v33(v34, v31, v4);
        result = (v33)(v31, v35, v4);
        v22 = v63;
      }

      v58 = v5;
      v37 = v65;
      v36 = v66;
      if (v66 == 2)
      {
LABEL_8:
        sub_1AAF8A2FC(0);
        v39 = v38;
        v40 = *(v38 + 48);
        v41 = v57;
        v42 = *(v58 + 32);
        v42(v57, v60, v4);
        v42(v41 + v40, v61, v4);
        return (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
      }

      else
      {
        v43 = (v58 + 32);
        v44 = (v58 + 8);
        v45 = 2;
        while (v45 < v36)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_26;
          }

          result = (v22)(v10, v37 + v45 * v62, v4);
          v45 = v66;
          if (v46 == v66)
          {
            v47 = v7;
            v48 = v10;
          }

          else
          {
            if (v46 >= v66)
            {
              goto LABEL_27;
            }

            v45 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              goto LABEL_28;
            }

            v48 = (v65 + v46 * v62);
            v47 = v7;
          }

          v22(v47, v48, v4);
          v49 = sub_1AAF8F564();
          v50 = v60;
          if (v49)
          {
            v51 = *v43;
            v52 = v59;
            (*v43)(v59, v10, v4);
            v51(v10, v7, v4);
            v51(v7, v52, v4);
            v22 = v63;
          }

          if (sub_1AAF8F564())
          {
            (*v44)(v50, v4);
            v22(v50, v10, v4);
          }

          v53 = v61;
          v54 = sub_1AAF8F564();
          v55 = *v44;
          (*v44)(v10, v4);
          if (v54)
          {
            result = (v55)(v7, v4);
          }

          else
          {
            v55(v53, v4);
            result = (*v43)(v53, v7, v4);
          }

          v37 = v65;
          v36 = v66;
          v22 = v63;
          if (v45 == v66)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }
    }
  }

  else
  {
    sub_1AAF8A2FC(0);
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  return result;
}

uint64_t sub_1AAF894FC(uint64_t a1, uint64_t (*a2)(double *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  for (i = (a1 + 40); ; ++i)
  {
    v8 = v5 + 1;
    v9 = *(i - 1);
    v23 = v9;
    result = a2(&v23);
    if (result)
    {
      break;
    }

    ++v5;
    if (v2 == v8)
    {
      return 0;
    }
  }

  if (v2 - 1 == v5)
  {
    return *&v9;
  }

  while (1)
  {
    if (v8 >= v2)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_47;
    }

    v12 = *i;
    v23 = *i;
    result = a2(&v23);
    if (result)
    {
      break;
    }

    ++v8;
    ++i;
    if (v11 == v2)
    {
      return *&v9;
    }
  }

  if (v12 >= v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= v9)
  {
    v12 = v9;
  }

  if (v11 != v2)
  {
    v15 = a1 + 40;
    v14 = v12;
LABEL_20:
    v16 = v13;
LABEL_21:
    v17 = v11 + 1;
    v18 = (v15 + 8 * v11);
    while (v11 < v2)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_49;
      }

      v20 = *(v6 + 8 * v11);
      v23 = v20;
      result = a2(&v23);
      if (result)
      {
        v11 = v2;
        v21 = v20;
        if (v19 != v2)
        {
          while (v17 < v2)
          {
            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_51;
            }

            v21 = *v18;
            v23 = *v18;
            result = a2(&v23);
            if (result)
            {
              goto LABEL_33;
            }

            ++v17;
            ++v18;
            if (v11 == v2)
            {
              v11 = v2;
              v21 = v20;
              goto LABEL_33;
            }
          }

          goto LABEL_50;
        }

LABEL_33:
        if (v21 >= v20)
        {
          v13 = v21;
        }

        else
        {
          v13 = v20;
        }

        if (v21 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        if (v22 < v12)
        {
          v14 = v22;
          v12 = v22;
        }

        if (v13 >= v16)
        {
          if (v11 != v2)
          {
            goto LABEL_20;
          }
        }

        else if (v11 != v2)
        {
          goto LABEL_21;
        }

        return *&v14;
      }

      ++v11;
      ++v17;
      ++v18;
      if (v19 == v2)
      {
        return *&v14;
      }
    }

    goto LABEL_48;
  }

  v14 = v12;
  return *&v14;
}

uint64_t sub_1AAF89730@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v96 = a2;
  v99 = a1;
  v106 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = sub_1AAF8FE74();
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v85 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  v107 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v85 - v22;
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v85 - v30;
  (*(v23 + 16))(v26, v102, a3, v29);
  v32 = v107;
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AAF8FE94();
  v35 = v32 + 48;
  v34 = *(v32 + 48);
  if (v34(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 8))(v31, v27);
    (*(v100 + 8))(v14, v104);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v106, 1, 1, TupleTypeMetadata2);
  }

  v97 = v28;
  v38 = AssociatedConformanceWitness;
  v40 = *(v32 + 32);
  v39 = (v32 + 32);
  v41 = v105;
  v93 = v40;
  v40(v105, v14, AssociatedTypeWitness);
  v42 = v103;
  v102 = v34;
  v89 = v38;
  sub_1AAF8FE94();
  v43 = v102(v42, 1, AssociatedTypeWitness);
  v44 = v41;
  v45 = AssociatedTypeWitness;
  if (v43 == 1)
  {
    (*(v97 + 8))(v31, v27);
    (*(v100 + 8))(v103, v104);
    v46 = swift_getTupleTypeMetadata2();
    v47 = *(v46 + 48);
    v48 = v106;
    (*(v107 + 16))(v106, v41, AssociatedTypeWitness);
    v93(v48 + v47, v41, AssociatedTypeWitness);
    v49 = *(*(v46 - 8) + 56);
    v50 = v48;
    return v49(v50, 0, 1, v46);
  }

  v51 = v107;
  v90 = v31;
  v91 = v27;
  v52 = v101;
  v93(v101, v103, AssociatedTypeWitness);
  v53 = v108;
  v54 = v99(v52, v44);
  v55 = v44;
  v108 = v53;
  v56 = v106;
  if (v53)
  {
    v57 = *(v51 + 8);
    v57(v52, v45);
    v57(v55, v45);
    return (*(v97 + 8))(v90, v91);
  }

  else
  {
    v88 = v35;
    if (v54)
    {
      sub_1AAF90594();
    }

    v103 = v39;
    v58 = v94;
    sub_1AAF8FE94();
    if (v102(v58, 1, v45) == 1)
    {
      v60 = v90;
      v59 = v91;
LABEL_12:
      (*(v97 + 8))(v60, v59);
      (*(v100 + 8))(v58, v104);
      v46 = swift_getTupleTypeMetadata2();
      v61 = *(v46 + 48);
      v62 = v93;
      v93(v56, v105, v45);
      v62(v56 + v61, v101, v45);
      v49 = *(*(v46 - 8) + 56);
      v50 = v56;
      return v49(v50, 0, 1, v46);
    }

    v86 = (v51 + 16);
    v85 = (v100 + 8);
    v87 = (v51 + 8);
    v107 = v45;
    while (1)
    {
      v64 = v58;
      v65 = v93;
      v93(v98, v64, v45);
      v66 = v95;
      sub_1AAF8FE94();
      v67 = v102;
      if (v102(v66, 1, v45) == 1)
      {
        v68 = v92;
        v69 = v98;
        (*v86)(v92, v98, v45);
        v70 = v67(v66, 1, v45);
        v71 = v97;
        v72 = v99;
        v73 = v87;
        if (v70 != 1)
        {
          (*v85)(v95, v104);
        }
      }

      else
      {
        v68 = v92;
        v65(v92, v66, v45);
        v71 = v97;
        v69 = v98;
        v72 = v99;
        v73 = v87;
      }

      v74 = v108;
      v75 = v72(v68, v69);
      if (v74)
      {
        break;
      }

      v76 = v107;
      if (v75)
      {
        sub_1AAF90594();
      }

      v77 = v105;
      if (v72(v69, v105))
      {
        (*v73)(v77, v76);
        (*v86)(v77, v69, v76);
        v72 = v99;
      }

      v78 = v72(v68, v101);
      v108 = 0;
      v79 = v78;
      v80 = *v73;
      v45 = v107;
      (*v73)(v69, v107);
      if (v79)
      {
        v80(v68, v45);
      }

      else
      {
        v81 = v101;
        v80(v101, v45);
        v65(v81, v68, v45);
      }

      v60 = v90;
      v59 = v91;
      v58 = v94;
      sub_1AAF8FE94();
      v63 = v102(v58, 1, v45);
      v56 = v106;
      if (v63 == 1)
      {
        goto LABEL_12;
      }
    }

    v82 = *v73;
    v83 = v68;
    v84 = v107;
    (*v73)(v83, v107);
    v82(v69, v84);
    v82(v101, v84);
    v82(v105, v84);
    return (*(v71 + 8))(v90, v91);
  }
}

void sub_1AAF8A2FC(uint64_t a1)
{
  if (!qword_1EB424CD0)
  {
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424CD0);
    }
  }
}

void sub_1AAF8A364(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v7 = a3 >> 1;
    while (v5 >= 1)
    {
      v8 = v5;
      v5 = v5 >> 1;
      v9 = v7 - v5;
      if (__OFADD__(v7, -v5))
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        goto LABEL_15;
      }

      if (v10 < a2 || v10 >= v4)
      {
        goto LABEL_16;
      }

      v12 = *(a1 + 8 * v10);

      v13 = a4(v10, v12);

      if ((v13 & 1) == 0)
      {
        v5 = v8 + ~v5;
        v7 = v10;
      }
    }
  }
}

unint64_t sub_1AAF8A454(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(a3 + 8 * result + 32);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return sub_1AAF8F944();
  }

  v5 = __OFSUB__(0, v4);
  result = -v4;
  if (!v5)
  {
    return sub_1AAF8F944();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1AAF8A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    return;
  }

  v11 = sub_1AAF8F8D4();
  (*(v6 + 16))(v8, a1, v5);
  sub_1AAF8F914();
  sub_1AAF8F8E4();
  if (__OFSUB__(0, v11))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v3[1];
  ++v3;
  v5 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_9:
    v5 = sub_1AACF04D8(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_1AACF04D8((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[8 * v14];
  *(v15 + 32) = -v11;
  *v3 = v5;
  sub_1AADC9038(v10, v11, v15);
}

uint64_t sub_1AAF8A640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAF8A634(a1, *(v2 + 8));
  *a2 = result;
  return result;
}

void (*sub_1AAF8A66C(uint64_t **a1, unint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1AAF8A6F8(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_1AAD9E48C;
}

void (*sub_1AAF8A6F8(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v10 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v10;
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  a1[2] = v11;
  sub_1AAF8A454(a2, a3, a4, a5);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF8A7D4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1AAF8FB04();
}

__n128 sub_1AAF8A840@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AAF8A850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF8A8A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1AAD9EC60(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_1AAF8A908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAF444(a3, a3);
  v6 = *(a3 - 8);
  swift_allocObject();
  v7 = sub_1AAF8F854();
  (*(v6 + 16))(v8, a1, a3);
  result = sub_1AAE935DC(v7, a3);
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v10 = result;
    v11 = sub_1AAF8F8A4();
    *(v11 + 16) = a2;
    bzero((v11 + 32), 8 * a2);
    return v10;
  }

  return result;
}

uint64_t sub_1AAF8AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AAF8ABA8(void *a1)
{
  if (*a1 == 512)
  {
    sub_1AADCF1A0();
    if (!v1)
    {
      __break(1u);
    }
  }
}

void sub_1AAF8AC14(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8, char **a9)
{
  v15 = a1;
  sub_1AAF8ABA8(a1);
  if (v18)
  {
    v19 = v16;
    v44 = v17;
    sub_1AADCF1A0();
    if (!v20)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v21 = v20;
    sub_1AADCF1A0();
    if (!v22)
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v21 == v22)
    {
      if (a3)
      {
        v23 = *(a2 + 4 * a3);
        v24 = __OFADD__(a4, v23);
        a4 += v23;
        v15 = v44;
        if (v24)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        a2 = v19;
      }

      else
      {
        a2 = v19;
        v15 = v44;
      }

      sub_1AAF8AC14(*v15, a2, 0, a4, a5, a6, a7, a8, a9);
      v15 = v15[1];
      sub_1AAF8ABA8(v15);
      if (v27)
      {
        v28 = v25;
        v29 = v26;
        while (1)
        {
          sub_1AADCF1A0();
          if (!v30)
          {
            goto LABEL_27;
          }

          v31 = v30;
          sub_1AADCF1A0();
          if (!v32)
          {
            goto LABEL_28;
          }

          if (v31 == v32)
          {
            v33 = *(a2 + 8);
            v24 = __OFADD__(a4, v33);
            a4 += v33;
            if (v24)
            {
              goto LABEL_23;
            }

            a2 = v28;
            sub_1AAF8AC14(*v29, v28, 0, a4, a5, a6, a7, a8, a9);
            v15 = *(v29 + 8);
            sub_1AAF8ABA8(v15);
            v28 = v34;
            v29 = v35;
            if (v36)
            {
              continue;
            }
          }

          break;
        }
      }

      a3 = 2;
    }
  }

  v37 = (a2 + 4 * a3);
  v38 = *v37;
  a6 = &a4[v38];
  if (__OFADD__(a4, v38))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v37[1];
  a5 = &a4[v39];
  if (__OFADD__(a4, v39))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  a4 = *a9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a9 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    a4 = sub_1AAD68B38(0, *(a4 + 2) + 1, 1, a4);
    *a9 = a4;
  }

  v42 = *(a4 + 2);
  v41 = *(a4 + 3);
  if (v42 >= v41 >> 1)
  {
    a4 = sub_1AAD68B38((v41 > 1), v42 + 1, 1, a4);
    *a9 = a4;
  }

  *(a4 + 2) = v42 + 1;
  v43 = &a4[24 * v42];
  *(v43 + 4) = v15;
  *(v43 + 5) = a6;
  *(v43 + 6) = a5;
}

uint64_t sub_1AAF8AE4C(uint64_t a1)
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

void sub_1AAF8AEF0(void *a1)
{
  sub_1AACB634C(a1);

  JUMPOUT(0x1AC59A0D0);
}

double sub_1AAF8AF54(uint64_t a1)
{

  swift_deallocClassInstance();
  return result;
}

void sub_1AAF8AFB0(uint64_t a1)
{
  sub_1AAF900D4();
  type metadata accessor for ThreadSpecific(0, a1, v2, v3);
  sub_1AAF907B4();

  MEMORY[0x1AC5982F0](0xD000000000000020, 0x80000001AAFD0E00);
  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAF8B0C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF8B104(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAF8B104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAD45974();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

float64_t sub_1AAF8B168(double a1, float64x2_t a2, float64x2_t a3)
{
  if ((vmovn_s64(vceqq_f64(a2, a3)).u8[0] & 1) == 0)
  {
    a2 = vsubq_f64(a2, a3);
    *&a2.f64[0] = *&vaddq_f64(vmulq_n_f64(a2, (a1 - a3.f64[0]) / a2.f64[0]), a3);
  }

  return a2.f64[0];
}

uint64_t sub_1AAF8B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v13, a1, v11);
  a5(v13, a2, a3, a4);
  return (*(v10 + 8))(v13, a3);
}

double sub_1AAF8B350@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAF8B35C(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAF8B368@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1AAF8B374(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

double sub_1AAF8B380@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1AAF8B38C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

double sub_1AAF8B398@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_1AAF8B3A4(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t sub_1AAF8B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF90044();
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_1AAF8B474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v29 = &v27 - v19;
  v20 = v8[2];
  v20(v16, v18);
  (v20)(v13, a2, a3);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v28 = a5;
    if (result)
    {
      v23 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v32 = v31 + v30;
        sub_1AAF90064();
        ++v23;
      }

      while (v22 != v23);
    }

    v24 = v8[1];
    v24(v13, a3);
    v24(v16, a3);
    v25 = v8[4];
    v26 = v29;
    v25(v29, v10, a3);
    return (v25)(v28, v26, a3);
  }

  return result;
}

uint64_t sub_1AAF8B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v29 = &v27 - v19;
  v20 = v8[2];
  v20(v16, v18);
  (v20)(v13, a2, a3);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v28 = a5;
    if (result)
    {
      v23 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v32 = v31 - v30;
        sub_1AAF90064();
        ++v23;
      }

      while (v22 != v23);
    }

    v24 = v8[1];
    v24(v13, a3);
    v24(v16, a3);
    v25 = v8[4];
    v26 = v29;
    v25(v29, v10, a3);
    return (v25)(v28, v26, a3);
  }

  return result;
}

uint64_t sub_1AAF8B93C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v17 = *(v4 + 16);
  v17(v12, v1, v3, v14);
  (v17)(v9, v1, v3);
  v18 = *(a1 + 24);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v26 = v18;
    v27 = v16;
    if (result)
    {
      v21 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v30 = v29 * v28;
        sub_1AAF90064();
        ++v21;
      }

      while (v20 != v21);
    }

    v22 = *(v4 + 8);
    v22(v9, v3);
    v22(v12, v3);
    v23 = v27;
    (*(v4 + 32))(v27, v6, v3);
    v24 = sub_1AAF8C148();
    sub_1AAF8BBB4(v26, v24, &v30);
    return (v22)(v23, v3);
  }

  return result;
}

uint64_t sub_1AAF8BBB4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - v9;
  v11 = *(*(*(a3 + 16) + 8) + 8);
  sub_1AAF90314();
  v21 = a4;
  sub_1AAF90154();
  v19 = *(v8 + 8);
  v19(v10, AssociatedTypeWitness);
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v20 = v11;
    v14 = v19;
    if (result)
    {
      v15 = v6;
      result = 0;
      do
      {
        v16 = result + 1;
        v17 = v15;
        sub_1AAF90054();
        sub_1AAF90304();
        v14(v10, AssociatedTypeWitness);
        v15 = v17;
        result = v16;
      }

      while (v13 != v16);
    }
  }

  return result;
}

uint64_t sub_1AAF8BD7C(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v26 = v5;
  v27 = *(v5 + 32);
  v27(&v25 - v16, v2, v4, v15);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  v25 = v2;
  if (result)
  {
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v30 = a2;
      sub_1AAF90064();
      v20 = v21;
    }

    while (v19 != v21);
  }

  (v27)(v13, v10, v4);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    goto LABEL_11;
  }

  v22 = result;
  if (result)
  {
    v23 = 0;
    do
    {
      sub_1AAF90054();
      sub_1AAF90054();
      v30 = v29 * v28;
      sub_1AAF90064();
      ++v23;
    }

    while (v22 != v23);
  }

  v24 = *(v26 + 8);
  v24(v13, v4);
  v24(v17, v4);
  return (v27)(v25, v7, v4);
}

unint64_t sub_1AAF8C148()
{
  result = qword_1EB4278C8;
  if (!qword_1EB4278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4278C8);
  }

  return result;
}

uint64_t sub_1AAF8C1AC(int a1, int a2, int a3, int a4)
{
  if (qword_1ED9B6D38 == -1)
  {
    if (qword_1ED9B6D40)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1AAF8C674();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1ED9B6D40)
    {
      return _availability_version_check();
    }
  }

  if (qword_1ED9B6D30 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1AAF8C68C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1ED9B6D20 < v11;
    if (dword_1ED9B6D20 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1ED9B6D24 > a3)
      {
        return 1;
      }

      if (dword_1ED9B6D24 >= a3)
      {
        return dword_1ED9B6D28 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1ED9B6D20 < a2;
  if (dword_1ED9B6D20 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1AAF8C340(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ED9B6D40;
  if (qword_1ED9B6D40)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1ED9B6D40 = MEMORY[0x1EEE9AC60];
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
                          v14 = MEMORY[0x1AC5998D0](v13);
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
                                          sscanf(v28, "%d.%d.%d", &dword_1ED9B6D20, &dword_1ED9B6D24, &dword_1ED9B6D28);
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

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}